<?php
    error_reporting(E_ALL & ~E_NOTICE);
    $typeOfQuery = $_REQUEST['typeOfQuery'];
    $originalcountryname = $_REQUEST['originalcountryname'];
    $countryname = $_REQUEST['countryname'];
    $population = $_REQUEST['population'];
    $landarea = $_REQUEST['landarea'];
    $continentcode = $_REQUEST['continentcode'];
    $mydb = new PDO('mysql:host=localhost;dbname=id21175710_myamazonia','id21175710_12615911amazonia','Naveen@123');
    
    if($typeOfQuery == "update"){
        $stmt = $mydb -> prepare("select countryname, population, landarea, continentcode from countries where countryname = :originalcountryname");
        $stmt -> bindParam(":originalcountryname",$originalcountryname);
        $stmt -> execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        if(strlen($countryname)==0)
            $countryname = $result['countryname'];
        if(strlen($population)==0)
            $population = $result['population'];
        if(strlen($landarea)==0)
            $landarea = $result['landarea'];
        if(strlen($continentcode)==0)
            $continentcode = $result['continentcode'];
        $stmt = $mydb -> prepare("delete from countries where countryname = :originalcountryname");
        $stmt -> bindParam(":originalcountryname",$originalcountryname);
        $stmt -> execute();
    }
    $stmt = $mydb -> prepare("insert into countries (countryname, population, landarea, continentcode) values (:countryname, :population, :landarea, :continentcode)");
    $stmt -> bindParam(":countryname",$countryname);
    $stmt -> bindParam(":population",$population);
    $stmt -> bindParam(":landarea",$landarea);
    $stmt -> bindParam(":continentcode",$continentcode);
    $stmt -> execute();
    if($typeOfQuery == "update")
        echo "Country ".$countryname." updated successfully!!!";
    else
        echo "Country ".$countryname." inserted!!!";
?>