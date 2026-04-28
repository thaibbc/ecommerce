<?php
require_once 'app/Bridge.php';

global $config;
$dbConfig = $config['database'];
$conn = new mysqli($dbConfig['host'], $dbConfig['user'], $dbConfig['pass'], $dbConfig['dbname']);

if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

$sql = "SELECT p.title, p.price, p.short_description, c.name as category_name 
        FROM product p 
        LEFT JOIN category c ON p.cate_id = c.id 
        WHERE p.status = 1";

$result = $conn->query($sql);

header('Content-Type: text/plain; charset=utf-8');

if ($result->num_rows > 0) {
    echo "DANH SÁCH SẢN PHẨM CỦA CỬA HÀNG:\n\n";
    while($row = $result->fetch_assoc()) {
        echo "Sản phẩm: " . $row["title"] . "\n";
        echo "Loại: " . $row["category_name"] . "\n";
        echo "Giá: " . number_format($row["price"]) . " VNĐ\n";
        echo "Mô tả: " . strip_tags($row["short_description"]) . "\n";
        echo "-----------------------------------\n";
    }
} else {
    echo "Không có sản phẩm nào.";
}
$conn->close();
?>
