<?php
require_once ('link.php');
if (!empty($_POST['password']) and !empty($_POST['login'])) {
    $login = htmlspecialchars( $_POST['login']);
    $query = "SELECT * FROM `user` WHERE `login` = '$login' ";
    $res = mysqli_query($link, $query);
    $user = mysqli_fetch_assoc($res);
   
    if(!empty($user))
if(password_verify($_POST['password'], $user['password'])){
    $_SESSION['auth'] = true;
    $_SESSION['login'] = $_POST;    
    header("Location: admin.php");
}else{

}

    if (!empty($user) ) {
        $_SESSION['auth'] = true;
        header("Location: admin.php");
        
        
    } else {
        echo "<h1>Неверный логин или пароль!</h1>";
        echo "<a href='index.php'>Вернуться назад</a>";
    }
    

    
}else{
    header("Location: index.php");
}


