<?php

$conn = mysqli_connect("localhost", "root", "", "itlab");


if (!$conn) {
    die("Connection failed");
}


$username = $_POST['username'];
$password = $_POST['password'];

$sql = "SELECT * FROM admin WHERE username='$username' AND password='$password'";
$result = mysqli_query($conn, $sql);


if (mysqli_num_rows($result) > 0) {
    echo "Login successful!";
} else {
    echo "Login failed!";
}


mysqli_close($conn);
?>