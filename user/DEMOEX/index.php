<?php
require_once 'link.php';
?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Главная</title>
    <link rel="stylesheet" href="">
</head>
<body>
<div class="login">
    <h1>Авторизация</h1>
<form action="auth.php" method="POST">
    <input type="login"  name="login" placeholder="login" required>
    <input type="password"  name="password" placeholder="password" required>
    <input type="submit" value="Отправить" >
</form>
</div>

<div class="registration">
    <h1>Регистрация</h1>
<form action="registr.php" method="POST">
    <input type="login"  name="login" placeholder="login" required>
    <input type="password"  name="password" placeholder="password" required>
    <input type="submit" value="Отправить" >
</form>
</div>

</body>
</html>
