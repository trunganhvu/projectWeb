<?php
    
    define('DOC_ROOT', $_SERVER['DOCUMENT_ROOT'] . '/PhpProject1/');
    define('DS', DIRECTORY_SEPARATOR);
    define('INCLUDES', DOC_ROOT . 'includes' . DS );
    
    define('MYSQL_DIR', DOC_ROOT .'httpsdoc'. DS . 'mysql' . DS );
    
    define('MODELS_DIR', DOC_ROOT .'httpsdoc'. DS .'mysql' . DS . 'models' . DS);
    require_once MYSQL_DIR . 'db_connect.php';
?>