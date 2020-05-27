<?php
require_once 'functions.php';

if(empty($_GET['Franchisee_id'])){
    die('id is empty');
}

$Franchisee_id=intval($_GET['Franchisee_id']);

$conn=connectDb();

mysqli_query($conn,"DELETE FROM franchisee_information WHERE Franchisee_id = $Franchisee_id");

if(mysqli_errno()){
    echo mysqli_errno();
}else{
    header("Location:Franchisee_list.php");
}