<?php
require_once('link.php');

	if (!empty($_POST['login']) and !empty($_POST['password'])) {
		$login = $_POST['login'];
		$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
		
		$query = "INSERT INTO `user`( `login`, `password`) VALUES ('$login','$password')";
		mysqli_query($link, $query);
        header("Location: admin.php");
	}
?>