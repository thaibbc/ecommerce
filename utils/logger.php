<?php
class Logger {
    public static function log($message, $type = 'info', $context = []) {
        $logDir = __DIR__ . '/../logs';
        if (!is_dir($logDir)) {
            mkdir($logDir, 0777, true);
        }
        $date = date('Y-m-d');
        $logFile = $logDir . '/payment_' . $date . '.log';
        $timestamp = date('Y-m-d H:i:s');
        
        $contextStr = !empty($context) ? ' | Context: ' . json_encode($context, JSON_UNESCAPED_UNICODE) : '';
        $logEntry = "[$timestamp] [$type] $message$contextStr" . PHP_EOL;
        
        file_put_contents($logFile, $logEntry, FILE_APPEND);
    }
}
