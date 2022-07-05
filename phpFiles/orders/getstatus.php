<?php
    session_set_cookie_params(99999999,"/");
    session_start();
    require '../connection.php';
    $arrlist = [];

    $result=mysqli_query($conn, "SELECT * FROM status");
    while($res= mysqli_fetch_assoc($result)){
        array_push($arrlist, array($res["statusName"],$res["status"]));
    }
    echo json_encode($arrlist);
?>