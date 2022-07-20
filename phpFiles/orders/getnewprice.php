<?php
session_set_cookie_params(99999999,"/");
session_start();
require '../connection.php';
$arrlist = [];

$res_orderdet=mysqli_query($conn, "SELECT * FROM item_last_price");
while($res= mysqli_fetch_assoc($res_orderdet)){
    array_push($arrlist, array($res["userid"],$res["itemid"],abs($res["new_price"])));
}
echo json_encode($arrlist);
?>