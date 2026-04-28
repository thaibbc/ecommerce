<?php

class ChatbotApi extends Controller
{
    private $res;
    
    public function __construct()
    {
        $this->res = new Response();
    }

    public function ask()
    {
        global $config;
        $apiKey = $config['chatBot']['geminiApiKey'] ?? '';

        if (empty($apiKey)) {
            echo $this->res->dataApi(500, 'Thiếu API Key', ['reply' => 'Hệ thống chưa được cấu hình API Key.']);
            return;
        }

        $message = $_POST['message'] ?? '';
        if (empty($message)) {
            echo $this->res->dataApi(400, 'Thiếu tin nhắn', ['reply' => 'Bạn muốn hỏi gì?']);
            return;
        }

        // Lấy Context (Dữ liệu cửa hàng)
        $context = $this->getShopContext();

        // Chuẩn bị payload gửi lên Gemini
        $url = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-flash-latest:generateContent?key=' . $apiKey;
        
        $payload = [
            "system_instruction" => [
                "parts" => [
                    [
                        "text" => "Bạn là một trợ lý ảo tư vấn bán hàng chuyên nghiệp. Dưới đây là dữ liệu cửa hàng. Khi khách hỏi mua hàng, hãy giới thiệu sản phẩm phù hợp. ĐỂ HIỂN THỊ SẢN PHẨM, bạn BẮT BUỘC phải copy nguyên văn chuỗi [PRODUCT_CARD|id|slug|tên|giá|ảnh] của sản phẩm đó vào câu trả lời. ĐỂ HIỂN THỊ MÃ GIẢM GIÁ (Voucher), BẮT BUỘC dùng chuỗi [VOUCHER_CARD|mã|tiêu đề|giá trị|ảnh|tối thiểu]. Không thay đổi nội dung bên trong dấu ngoặc vuông.\n\n" . $context
                    ]
                ]
            ],
            "contents" => [
                [
                    "role" => "user",
                    "parts" => [
                        ["text" => $message]
                    ]
                ]
            ],
            "generationConfig" => [
                "temperature" => 0.7,
                "maxOutputTokens" => 800
            ]
        ];

        // Gửi request bằng cURL có cơ chế tự thử lại (retry) khi bị nghẽn
        $maxRetries = 2;
        $retryDelay = 2; // Giây

        for ($i = 0; $i <= $maxRetries; $i++) {
            $ch = curl_init($url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json']);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($payload));
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            
            $response = curl_exec($ch);
            $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            curl_close($ch);

            // Nếu thành công hoặc lỗi không phải quá tải (503) / rate limit (429) thì dừng lại
            if ($httpCode == 200 || ($httpCode != 503 && $httpCode != 429 && $httpCode != 500) || $i == $maxRetries) {
                break;
            }
            sleep($retryDelay);
        }

        if ($httpCode == 200 && $response) {
            $responseData = json_decode($response, true);
            $reply = $responseData['candidates'][0]['content']['parts'][0]['text'] ?? 'Xin lỗi, tôi chưa hiểu ý bạn.';
            echo $this->res->dataApi(200, 'Thành công', ['reply' => $reply]);
        } else {
            $curlError = curl_error($ch);
            error_log("Gemini API Error: HTTP " . $httpCode . " Response: " . $response . " cURL Error: " . $curlError);
            $errorMsg = 'Lỗi API: ' . ($response ? json_decode($response)->error->message : ($curlError ?: 'Unknown error'));
            echo $this->res->dataApi(500, 'Lỗi API', ['reply' => $errorMsg]);
        }
    }

    private function getShopContext()
    {
        global $dbConfig;
        $conn = new mysqli($dbConfig['host'], $dbConfig['user'], $dbConfig['password'] ?? '', $dbConfig['db']);

        if ($conn->connect_error) {
            return "Dữ liệu đang được cập nhật.";
        }

        $context = "THÔNG TIN CỬA HÀNG:\n";
        
        // Lấy danh mục
        $sqlCate = "SELECT name FROM category WHERE status = 1";
        $resCate = $conn->query($sqlCate);
        $categories = [];
        if($resCate) {
            while($row = $resCate->fetch_assoc()) $categories[] = $row['name'];
        }
        $context .= "Danh mục: " . implode(", ", $categories) . "\n\n";

        // Lấy sản phẩm
        $context .= "\nDANH SÁCH SẢN PHẨM (Mỗi sản phẩm có dạng [PRODUCT_CARD|id|slug|tên|giá|ảnh]):\n";
        $sqlProd = "SELECT p.id, p.slug, p.thumb, p.title, p.price, p.short_description, c.name as category_name 
                    FROM product p 
                    LEFT JOIN category c ON p.cate_id = c.id 
                    WHERE p.status = 1 LIMIT 100"; // Giới hạn để tránh context quá dài
        $resProd = $conn->query($sqlProd);
        if($resProd) {
            while($row = $resProd->fetch_assoc()) {
                $context .= "- [PRODUCT_CARD|" . $row['id'] . "|" . $row['slug'] . "|" . $row['title'] . "|" . $row['price'] . "|" . $row['thumb'] . "] - Mô tả: " . strip_tags($row['short_description']) . "\n";
            }
        }

        // Lấy mã giảm giá (Voucher)
        $context .= "\nDANH SÁCH MÃ GIẢM GIÁ (VOUCHER) ĐANG CÔNG KHAI (Mỗi mã dùng cấu trúc [VOUCHER_CARD|mã|tiêu đề|giá trị|ảnh|tối thiểu]):\n";
        $sqlCoupon = "SELECT code, title, value, min_amount, thumb FROM coupon WHERE status = 1 AND expired > NOW()";
        $resCoupon = $conn->query($sqlCoupon);
        if($resCoupon && $resCoupon->num_rows > 0) {
            while($row = $resCoupon->fetch_assoc()) {
                $context .= "- [VOUCHER_CARD|" . $row['code'] . "|" . $row['title'] . "|" . $row['value'] . "|" . $row['thumb'] . "|" . $row['min_amount'] . "]\n";
            }
        } else {
            $context .= "Hiện tại không có mã giảm giá nào công khai.\n";
        }

        $conn->close();
        return $context;
    }
}
