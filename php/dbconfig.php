<?php
//Connection's Parameters
$server = "localhost:3306"; //[MODIFY THIS LINE based on your environment!!!]
$database = "phping"; 
$userName = "root"; //[MODIFY THIS LINE based on your environment!!!]
$password = ""; //[MODIFY THIS LINE based on your environment!!!]
$conn = mysqli_connect($server, $userName, $password, $database);
date_default_timezone_set("Asia/Jakarta");

//Connection
session_start();