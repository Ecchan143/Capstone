<?php
$servername="localhost";
$username="root";
$password="";
$dbname="e_estimate";

$conn=new mysqli($servername,$username,$password,$dbname); 
if (!$conn){
    echo "not connected";
}
