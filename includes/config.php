<?php
    require_once 'connection.php';

    $db_host= '127.0.0.1';
    $db_user='root';
    $db_password= '';
    $db_name= 'blog';

    $connection= new Connection($db_host, $db_user, $db_password, $db_name);
    $connection->Connect();
    $db= $connection;

    define('APP_NAME', 'PHP API REST LAB');
?>