<?php
$conn=new mysqli("localhost","root","","crud");

if(isset($_POST['submit'])){
$name=$_POST['name'];
$email=$_POST['email'];
$phone=$_POST['phone'];
$address=$_POST['address'];

$sql="INSERT INTO clients(name,email,phone,address)
VALUES('$name','$email','$phone','$address')";

$conn->query($sql);
header("Location:index.php");
}
?>

<h2>Add Client</h2>

<form method="post">

Name:<br>
<input type="text" name="name"><br><br>

Email:<br>
<input type="email" name="email"><br><br>

Phone:<br>
<input type="text" name="phone"><br><br>

Address:<br>
<textarea name="address"></textarea><br><br>

<button name="submit">Save</button>

</form>
