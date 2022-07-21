<?php
session_set_cookie_params(99999999,"/");
session_start();
require '../connection.php';
$arrlist = [];

$users=mysqli_query($conn, "SELECT * FROM useraccount");
while($res= mysqli_fetch_assoc($users)){
    array_push($arrlist, array($res["id"],$res["username"],$res["role"]));
}
echo json_encode($arrlist);
?>