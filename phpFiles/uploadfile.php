<?php
    session_set_cookie_params(99999999,"/");
    session_start();
    header('Content-Type: text/html; charset=utf-8');

    require 'connection.php';

    $target_dir = "../files/";
    $id = $_POST["userid"];


    $filename = $_FILES['file']['name'];

    // Location
    $location = '../files/'.$id  . '.pdf';
 
    // file extension
    $file_extension = pathinfo($location, PATHINFO_EXTENSION);
    $file_extension = strtolower($file_extension);
 
    // $target_file = $target_dir . $id  . '.pdf';
    // Valid extensions
    $valid_ext = array("pdf","doc","docx","jpg","png","jpeg");
 
    $response = 0;
    if(in_array($file_extension,$valid_ext)){
       // Upload file
       if(move_uploaded_file($_FILES['file']['tmp_name'],$location)){
          $response = 1;
       } 
    }
 
    echo $response;
    exit;
 ?>


