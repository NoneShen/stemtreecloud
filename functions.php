<?php


require_once 'config.php';


function connectDb(){
    $conn= mysqli_connect(MYSQL_HOST,MYSQL_USR,MYSQL_PW);

    if(!$conn){
        die('can not connect db');
    }
    mysqli_select_db($conn,'stemtree_test');
    return $conn;
}