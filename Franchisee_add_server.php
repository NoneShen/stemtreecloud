<?php
require_once 'functions.php';

if(empty($_POST['First_name'])){
    die('Name is empty');
}

$First_name=$_POST['First_name'];
$Last_name=$_POST['Last_name'];
$Franchisee_email_address=$_POST['Franchisee_email_address'];
$Mobile=$_POST['Mobile'];

$conn=connectDb();

mysqli_query($conn,"INSERT INTO franchisee_information(First_name,Last_name,Franchisee_email_address,Mobile) VALUES ('$First_name','$Last_name','$Franchisee_email_address','$Mobile')");

if(mysqli_errno()){
    echo mysqli_errno();
}else{
    header("Location:Franchisee_list.php");
}