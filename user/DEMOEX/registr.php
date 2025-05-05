<?php
error_reporting(E_ALL);
require_once('link.php');
print_r($_POST);
	if (!empty($_POST['login']) and !empty($_POST['name']) and !empty($_POST['email']) and !empty($_POST['password'])) {
		$login = $_POST['login'];
		$name = $_POST['name'];
		$email = $_POST['email'];
		$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
		
		$query = "INSERT INTO `user`( `login`, `name`, `email`, `password` ) VALUES ('$login', '$name', '$email','$password')";
		mysqli_query($link, $query);
		$_SESSION['auth'] = true;
		$_SESSION['login'] = $login;
        header("Location: admin.php");
	}
?>