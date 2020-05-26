<?php


require_once 'config.php';


function connectDb(){
    $conn= mysqli_connect(MYSQL_HOST,MYSQL_USR,MYSQL_PW);

    if(!$conn){
        die('can not connect db');
    }
    mysqli_select_db($conn,'');
    mysqli_query($conn,"set names 'UTF8'");
    return $conn;
}
