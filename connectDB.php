<?php
    $host = 'slamdata_db'; 
    $dbname = 'slamdata'; 
    $username = 'slamuser'; 
    $password = 'slampassword';

    try {
        $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 

        $pdo->exec("SET FOREIGN_KEY_CHECKS = 1");
    } catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }
?>
