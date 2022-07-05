<?php
    session_set_cookie_params(99999999,"/");
    session_start();
    require '../connection.php';

    $orderid = $_GET["id"];
    $state = $_GET["status"];


    $query = "UPDATE orders SET status='$state' WHERE orderid=$orderid";

    $result = mysqli_query($conn, $query);

    if($result){
        echo json_encode(array('success' => 1));
    }
    else 
        echo  json_encode(array('success' => 0));
?>