<?php
session_set_cookie_params(99999999,"/");
session_start();
require '../connection.php';
$arrlist = [];

$res_orderdet=mysqli_query($conn, "SELECT type,price FROM items");
while($res= mysqli_fetch_assoc($res_orderdet)){
    array_push($arrlist, array($res["type"],abs($res["price"])));
}
echo json_encode($arrlist);
?>