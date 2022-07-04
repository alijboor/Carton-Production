<?php
    session_set_cookie_params(99999999,"/");
    session_start();
    require '../connection.php';
    
    $item = $_GET["items"];
    $name = $_GET["name"];
    $userid = $_GET["userid"];
    $note = $_GET["note"];
    

    $query = "INSERT INTO orders (orderid,userid, custName, note1, status, itemsdetail, orderdate) VALUES (NULL, $userid, '$name','$note',0, '$item', now())";
    $result = mysqli_query($conn, $query);

    if($result){
        echo json_encode(array('success' => 1));
    }
?>