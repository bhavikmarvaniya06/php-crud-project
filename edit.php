<?php
$conn=new mysqli("localhost","root","","crud");

$id=$_GET['id'];

$data=$conn->query("SELECT * FROM clients WHERE id=$id");
$row=$data->fetch_assoc();

if(isset($_POST['update'])){
$name=$_POST['name'];
$email=$_POST['email'];
$phone=$_POST['phone'];
$address=$_POST['address'];

$conn->query("UPDATE clients SET 
name='$name',
email='$email',
phone='$phone',
address='$address'
WHERE id=$id");

header("Location:index.php");
}
?>

<h2>Edit Client</h2>

<form method="post">

<input type="text" name="name" value="<?php echo $row['name']; ?>"><br><br>

<input type="email" name="email" value="<?php echo $row['email']; ?>"><br><br>

<input type="text" name="phone" value="<?php echo $row['phone']; ?>"><br><br>

<textarea name="address"><?php echo $row['address']; ?></textarea><br><br>

<button name="update">Update</button>

</form>
