<?php
// The singleton pattern (Mẫu này giúp chỉ kết nối database 1 lần duy nhất)

class Connection
{
    // public $conn;
    private static $instance = null;

    private function __construct($dbConfig)
    {
        try {
            if (empty($dbConfig)) {
                throw new Exception("Database configuration is missing.");
            }
            $host = $dbConfig['host'] ?? 'localhost';
            $db = $dbConfig['db'] ?? '';
            $user = $dbConfig['user'] ?? 'root';
            $pass = $dbConfig['password'] ?? '';
            
            $dsn = "mysql:host=$host;dbname=$db;charset=utf8";

            $options = [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            ];

            $conn = new PDO($dsn, $user, $pass, $options);
            self::$instance = $conn;
        } catch (\Throwable $e) {
            $mess = $e->getMessage();
            $file = $e->getFile();
            $line = $e->getLine();
            
            error_log("Connection failed: $mess in $file on line $line");

            if (App::$app) {
                App::$app->loadError('database', [
                    'message' => "Connection failed: $mess", 
                    'line' => $line, 
                    'file' => $file
                ]);
            } else {
                if (!headers_sent()) {
                    header('Content-Type: application/json');
                }
                echo json_encode(['error' => "Connection failed: $mess"]);
            }
            die();
        }
    }

    public static function getInstance($dbConfig)
    {
        if (self::$instance == null) {
            new Connection($dbConfig);
        }

        return self::$instance;
    }
}
