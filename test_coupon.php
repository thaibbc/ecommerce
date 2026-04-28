<?php
require 'configs/database.php';
$db = new mysqli($config['database']['host'], $config['database']['user'], $config['database']['password'] ?? '', $config['database']['db']);
$res = $db->query('SELECT * FROM coupon');
$data = $res->fetch_all(MYSQLI_ASSOC);
echo json_encode($data);
