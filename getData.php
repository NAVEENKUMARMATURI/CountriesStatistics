<?php
    error_reporting(E_ALL & ~E_NOTICE);
    $sqlquery=$_REQUEST['query'];
    $mydb = new PDO('mysql:host=localhost;dbname=id21175710_myamazonia','id21175710_12615911amazonia','Naveen@123');
    $stmt=$mydb->prepare($sqlquery);
    $stmt->execute();
    if($stmt -> rowCount() == 0)
        echo "Not Found";
    else{
        $result = $stmt -> fetchAll();
        echo json_encode($result);
    }
?>