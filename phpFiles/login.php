<?php
    session_start();

    require 'connection.php';


    $username = $_POST['email'];
    $password = $_POST['password'];

    $safe_username=mysqli_real_escape_string($conn,$username);
    $safe_pass=mysqli_real_escape_string($conn, $password);

    $query = "SELECT * FROM useraccount WHERE username ='$safe_username' AND pass=$safe_pass;";
    $result = mysqli_query($conn, $query);

    $user = mysqli_fetch_assoc($result);

    if ($user){
        $_SESSION['userid'] = $user['id'];
        $_SESSION['username'] = $username;
        $_SESSION['role'] = $user['role'];
        echo $_SESSION['username'];
        header("location:../html/orders/orders.html");
    }
    else{
        header("location:../html/login.html?error=1");
    }
?>
