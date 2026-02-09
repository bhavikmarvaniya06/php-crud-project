<?php
$conn=new mysqli("localhost","root","","crud");

$id=$_GET['id'];

$conn->query("DELETE FROM clients WHERE id=$id");

header("Location:index.php");
?>
