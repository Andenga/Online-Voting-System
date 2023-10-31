<?php
$con = new mysqli("localhost", "root", "", "votingsystem");

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
} 

?>