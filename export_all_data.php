<?php
require_once 'app/Bridge.php';

global $config;
$dbConfig = $config['database'];
$conn = new mysqli($dbConfig['host'], $dbConfig['user'], $dbConfig['pass'], $dbConfig['dbname']);

if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

header('Content-Type: text/plain; charset=utf-8');
echo "HỆ THỐNG DỮ LIỆU CỬA HÀNG (CÔNG KHAI):\n";
echo "=======================================\n\n";

// 1. Lấy danh sách Ngành hàng
echo "--- CÁC NGÀNH HÀNG KINH DOANH ---\n";
$sqlCate = "SELECT name FROM category WHERE status = 1";
$resCate = $conn->query($sqlCate);
while($row = $resCate->fetch_assoc()) {
    echo "- " . $row['name'] . "\n";
}
echo "\n";

// 2. Lấy danh sách Thương hiệu
echo "--- CÁC THƯƠNG HIỆU ĐỐI TÁC ---\n";
$sqlBrand = "SELECT name FROM brand WHERE status = 1";
$resBrand = $conn->query($sqlBrand);
while($row = $resBrand->fetch_assoc()) {
    echo "- " . $row['name'] . "\n";
}
echo "\n";

// 3. Lấy danh sách Sản phẩm
echo "--- DANH SÁCH SẢN PHẨM ---\n";
$sqlProd = "SELECT p.title, p.price, p.short_description, c.name as category_name 
            FROM product p 
            LEFT JOIN category c ON p.cate_id = c.id 
            WHERE p.status = 1";
$resProd = $conn->query($sqlProd);
while($row = $resProd->fetch_assoc()) {
    echo "[Sản phẩm]: " . $row["title"] . "\n";
    echo "  + Loại: " . $row["category_name"] . "\n";
    echo "  + Giá: " . number_format($row["price"]) . " VNĐ\n";
    echo "  + Mô tả: " . strip_tags($row["short_description"]) . "\n";
    echo "--------------------------\n";
}
echo "\n";

// 4. Lấy danh sách Bài viết/Tin tức
echo "--- CÁC BÀI VIẾT & TIN TỨC ---\n";
$sqlNews = "SELECT title, content FROM news WHERE status = 1";
$resNews = $conn->query($sqlNews);
while($row = $resNews->fetch_assoc()) {
    echo "[Bài viết]: " . $row["title"] . "\n";
    echo "  + Nội dung: " . mb_substr(strip_tags($row["content"]), 0, 500) . "...\n";
    echo "--------------------------\n";
}

$conn->close();
?>
