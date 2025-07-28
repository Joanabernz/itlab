<?php
$username = $_POST['username'];
$password = $_POST['password'];
 
$conn = new mysqli('localhost', 'root', 'root', 'itlab');

$sql = "Select password from users where username = ?";

$stmt = $conn->prepare($sql);
$stmt-> bind_param("s", $username);
$stmt-> execute();
$stmt-> store_result();

if ($stmt->num_rows > 0){
    $STMT->bind_result ($hashed);
    $stmt->fetch();


    if (password_verify($password, $hashed)){
        echo "Login Success ";

    }else {
        echo "Wrong Password";
    }
    } else {
        echo "User not Found";
    }
?>