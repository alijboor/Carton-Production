<?php
    $servername = "127.0.0.1";
    $username = "root";
    $password = "AlMamounPass123";
    $dbname = "cartoncompany";

    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) { 
        echo "error";
        die("Connection failed: " . $conn->connect_error);
    }
    $conn-> set_charset("utf8");
?>