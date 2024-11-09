<?php
    $host = 'localhost';  // database host
    $dbname = 'slamdata'; // databse name
    $username = 'root'; 
    $password = 'root';

    try {
        // Connecting to the MySQL database with PDO
        $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Active les erreurs PDO en cas de problème

        $pdo->exec("SET FOREIGN_KEY_CHECKS = 1");
    } catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }
?>
