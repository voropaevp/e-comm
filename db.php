<?php

$servername = "remotemysql.com";
$username = "PXel8AOzx0";
$password = "MEzR2ryeDh";
$db = "PXel8AOzx0";

// Create connection
$con = mysqli_connect($servername, $username, $password,$db, '3306');
//$con = mysqli_connect('remotemysql.com', 'oeOIZTGN6X', 'SEZXQjCoW0', 'oeOIZTGN6X', '3306');

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


?>
