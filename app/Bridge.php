<?php
define('_DIR_ROOT', __DIR__);
//set lai gio VN
date_default_timezone_set('Asia/Ho_Chi_Minh');
ini_set('display_errors', 0);
error_reporting(0);


//Handle http root
if ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == 'on') || 
    (!empty($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https')) {
    $host = $_SERVER['HTTP_HOST'];
    if (strpos($host, ':') === false && $_SERVER['SERVER_PORT'] != 443 && empty($_SERVER['HTTP_X_FORWARDED_PROTO'])) {
        $host .= ':' . $_SERVER['SERVER_PORT'];
    }
    $web_root = 'https://' . $host;
} else {
    $host = $_SERVER['HTTP_HOST'];
    if (strpos($host, ':') === false && $_SERVER['SERVER_PORT'] != 80) {
        $host .= ':' . $_SERVER['SERVER_PORT'];
    }
    $web_root = 'http://' . $host;
}
$folder = str_replace(strtolower($_SERVER['DOCUMENT_ROOT']), '', strtolower(str_replace('\\', '/', _DIR_ROOT)));
$folder = str_replace('/app', '', $folder); // Remove /app from the end of _DIR_ROOT to get project root
$web_root .= $folder;
define('_WEB_ROOT', $web_root);

//session init;
require_once './app/core/Session.php';
require_once './app/core/Cookie.php';
Session::init();

// Load thu vien
require_once dirname(__DIR__) . '/vendor/autoload.php';


//AutoloadFile config 
require_once __DIR__ . '/../configs/database.php';
require_once __DIR__ . '/../configs/app.php';
require_once __DIR__ . '/../configs/bank.php';
require_once __DIR__ . '/../configs/chatBot.php';
require_once __DIR__ . '/../configs/cloudinary.php';
require_once __DIR__ . '/../configs/phpMailer.php';
require_once __DIR__ . '/../configs/routes.php';

error_log('Configs loaded, database config: ' . (isset($config['database']) ? json_encode($config['database']) : 'not set'));

// Load service provider class
require_once __DIR__ . '/core/dataShare/ServiceProvider.php';
require_once __DIR__ . '/core/dataShare/ViewShare.php'; //Load view Share

//Middleware
require_once __DIR__ . '/core/Middlewares.php';
require_once __DIR__ . '/middlewares/JWT.php';

//Route
require_once __DIR__ . '/core/Route.php';

//Check valid and connect database
if (!empty($config['database'])) {
    global $dbConfig;
    $dbConfig = array_filter($config['database']);
    error_log('dbConfig set: ' . json_encode($dbConfig));
}

require_once __DIR__ . '/core/database/Connection.php';
require_once __DIR__ . '/core/database/QueryBuilder.php';
require_once __DIR__ . '/core/database/Database.php';
require_once __DIR__ . '/core/database/DBShare.php';
require_once __DIR__ . '/core/database/BaseModel.php'; // Load basemodel


require_once __DIR__ . '/core/App.php'; //Load App
require_once './app/core/Controller.php'; // Load controller
require_once './app/core/Request.php'; // Load Request
require_once './app/core/Response.php'; // Load Response



//AutoloadFile utils
$directoryUtils = './utils';
if (is_dir($directoryUtils)) {
    $files = scandir($directoryUtils);
    foreach ($files as $file) {
        if (is_file($directoryUtils . '/' . $file)) {
            require_once($directoryUtils . '/' . $file);
        }
    }
}
