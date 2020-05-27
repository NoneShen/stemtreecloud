<?php
require_once 'functions.php';

if(empty($_POST['Franchisee_id'])){
    die('id is empty');
}


$Franchisee_id=intval($_POST['Franchisee_id']);
$First_name=$_POST['First_name'];
$Last_name=$_POST['Last_name'];
$Franchisee_email_address=$_POST['Franchisee_email_address'];
$Mobile=$_POST['Mobile'];

$conn=connectDb();

mysqli_query($conn,"UPDATE franchisee_information SET First_name='$First_name', Last_name='$Last_name', Franchisee_email_address='$Franchisee_email_address', Mobile='$Mobile' WHERE Franchisee_id=$Franchisee_id");

if(mysqli_errno()){
    echo mysqli_errno();
}else{
    header("Location:Franchisee_list.php");
}