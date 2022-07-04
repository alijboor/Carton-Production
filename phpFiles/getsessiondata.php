<?php
    session_start();
    if(empty($_SESSION['username'])){
        echo json_encode(array('error' => 1));
    }
    else{
        echo json_encode(array('error' => 0,'username' => $_SESSION['username'],'userid' => $_SESSION['userid'],'role' => $_SESSION['role']));
    }
?>
