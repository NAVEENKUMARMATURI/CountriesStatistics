<?php
    error_reporting(E_ALL & ~E_NOTICE);
    $typeOfQuery = $_REQUEST['typeOfQuery'];
    $originalcountryname = $_REQUEST['originalcountryname'];
    $countryname = $_REQUEST['countryname'];
    $agreecode = $_REQUEST['agreecode'];
    $mydb = new PDO('mysql:host=localhost;dbname=id21175710_myamazonia','id21175710_12615911amazonia','Naveen@123');
    
    if($typeOfQuery == "update"){
        $stmt = $mydb -> prepare("delete from countryagreement where countryname = :originalcountryname");
        $stmt -> bindParam(":originalcountryname",$originalcountryname);
        $stmt -> execute();
    }
    $stmt = $mydb -> prepare("insert into countryagreement(countryname, agreecode) values (:countryname, :agreecode)");
    $stmt -> bindParam(":countryname",$countryname);
    $stmt -> bindParam(":agreecode",$agreecode);
    $stmt -> execute();
    if($typeOfQuery == "update")
        echo "Trades for Country ".$countryname." updated successfully!!!";
    else
        echo "Trades for Country ".$countryname." inserted!!!";
?>