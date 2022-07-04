<?php
session_set_cookie_params(99999999,"/");
session_start();
require '../connection.php';
$arrlist = [];

$res_orderdet=mysqli_query($conn, "SELECT * FROM orders ORDER BY orderdate DESC");
while($res= mysqli_fetch_assoc($res_orderdet)){
    array_push($arrlist, array($res["orderid"],$res["userid"],$res["custName"],$res["note1"],$res["note2"],$res["status"],$res["itemsdetail"],$res["orderdate"]));
}
echo json_encode($arrlist);
?>