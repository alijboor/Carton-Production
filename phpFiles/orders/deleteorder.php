<?php
    session_set_cookie_params(99999999,"/");
    session_start();
    require '../connection.php';
    $arrlist = [];
    $id = $_GET['id'];

    $res_orderdet=mysqli_query($conn, "UPDATE orders SET status= -1 WHERE orderid =$id ");
    $result = mysqli_query($conn, $query);
    if ($result){
	    echo json_encode(array('success' => 1));
    };
?>