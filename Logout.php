<?php
session_start();
$conn = mysqli_connect('localhost', 'root', '', 'voting_system.sql');

  echo "<script> window.open('Login.php','_self') </script>";

session_destroy();
?>