<!DOCTYPE html>
<html>
<head>
<title>My Shop</title>

<style>
body {
    font-family: Arial;
    background: #f4f6f8;
}

.container {
    width: 90%;
    margin: 40px auto;
    background: white;
    padding: 20px;
    border-radius: 6px;
}

h2 {
    margin-bottom: 10px;
}

.btn {
    padding: 8px 14px;
    text-decoration: none;
    border-radius: 4px;
    color: white;
    font-size: 14px;
}

.btn-primary { background: #007bff; }
.btn-danger { background: #dc3545; }
.btn-success { background: #28a745; }

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 15px;
}

th, td {
    border: 1px solid #ccc;
    padding: 10px;
}

th {
    background: #eee;
}
</style>

</head>
<body>

<div class="container">
<h2>List Of Clients</h2>

<a class="btn btn-success" href="create.php">New Client</a>

<table>
<thead>
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Address</th>
<th>Created At</th>
<th>Action</th>
</tr>
</thead>

<tbody>

<?php
$conn = new mysqli("localhost","root","","crud");

$sql="SELECT * FROM clients";
$result=$conn->query($sql);

while($row=$result->fetch_assoc()){
echo "
<tr>
<td>{$row['id']}</td>
<td>{$row['name']}</td>
<td>{$row['email']}</td>
<td>{$row['phone']}</td>
<td>{$row['address']}</td>
<td>{$row['created_at']}</td>
<td>
<a class='btn btn-primary' href='edit.php?id={$row['id']}'>Edit</a>
<a class='btn btn-danger' href='delete.php?id={$row['id']}'>Delete</a>
</td>
</tr>
";
}
?>

</tbody>
</table>

</div>
</body>
</html>
