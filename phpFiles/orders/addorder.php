<?php
    session_set_cookie_params(99999999,"/");
    session_start();
    require '../connection.php';
    
    $item = $_POST["items"];
    $name = $_POST["name"];
    $userid = $_POST["userid"];
    $note = $_POST["note"];
    $target_dir = "../../files/";
    // $id = $_POST["userid"];
    $filename = $_FILES['file']['name'];
    // Location
    // file extension

    $query = "INSERT INTO orders (orderid,userid, custName, note1, status, itemsdetail, orderdate) VALUES (NULL, $userid, '$name','$note',0, '$item', now())";
    $result = mysqli_query($conn, $query);
    $last_id = $conn->insert_id;
    $location = '../../files/'.$last_id  . '.pdf';

    $file_extension = pathinfo($location, PATHINFO_EXTENSION);
    $file_extension = strtolower($file_extension);
    $valid_ext = array("pdf","doc","docx","jpg","png","jpeg");

    $response = 0;
    if(in_array($file_extension,$valid_ext)){
       // Upload file
       if($result){
            if(move_uploaded_file($_FILES['file']['tmp_name'],$location)){
                $response = 1;
            } 
        }
    }

    echo $response;
    exit;    
?>