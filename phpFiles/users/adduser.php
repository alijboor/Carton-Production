<?php
    session_set_cookie_params(99999999,"/");
    session_start();
    require '../connection.php';

    $username = $_POST["username"];
    $role = $_POST["role"];
    $pass = $_POST["pass"];



    $query = "INSERT INTO useraccount (id,email, username, role, pass) VALUES (NULL, 'sss', '$username', '$role','$pass')";

    $result = mysqli_query($conn, $query);

    if($result){
        echo json_encode(array('success' => 1));
    }
    else 
        echo  json_encode(array('success' => 0));
?>