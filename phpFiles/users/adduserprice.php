<?php
    session_set_cookie_params(99999999,"/");
    session_start();
    require '../connection.php';

    $userid = $_GET["userid"];
    $itemid = $_GET["itemid"];
    $new_price = $_GET["new_price"];



    $query = "INSERT INTO item_last_price (id,userid, itemid, new_price) VALUES (NULL, $userid, $itemid,'$new_price')";

    $result = mysqli_query($conn, $query);

    if($result){
        echo json_encode(array('success' => 1));
    }
    else 
        echo  json_encode(array('success' => 0));
?>