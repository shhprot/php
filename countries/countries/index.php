<?php
require_once("link.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
    <h1>Countries</h1>
    <?php
$countries = [
    ['country' => 'Россия', 'capital' => 'Москва', 'population' => 146000000],
    ['country' => 'Германия', 'capital' => 'Берлин', 'population' => 83000000],
    ['country' => 'Франция', 'capital' => 'Париж', 'population' => 67000000],
    ['country' => 'Италия', 'capital' => 'Рим', 'population' => 60000000],
    ['country' => 'Япония', 'capital' => 'Токио', 'population' => 126000000],
    ['country' => 'Канада', 'capital' => 'Оттава', 'population' => 38000000],
    ['country' => 'Бразилия', 'capital' => 'Бразилиа', 'population' => 213000000],
    ['country' => 'Индия', 'capital' => 'Нью-Дели', 'population' => 1380000000],
    ['country' => 'Китай', 'capital' => 'Пекин', 'population' => 1400000000],
    ['country' => 'США', 'capital' => 'Вашингтон', 'population' => 331000000],
    ['country' => 'Мексика', 'capital' => 'Мехико', 'population' => 126000000],
    ['country' => 'Испания', 'capital' => 'Мадрид', 'population' => 47000000],
    ['country' => 'Великобритания', 'capital' => 'Лондон', 'population' => 67000000],
    ['country' => 'ЮАР', 'capital' => 'Претория', 'population' => 59000000],
    ['country' => 'Австралия', 'capital' => 'Канберра', 'population' => 26000000]
];
$res = $link->query("SELECT * FROM `countries`");
if($res -> num_rows <= 0){
    
foreach($countries as $countries){
    $country = $countries['country'];
    $country_hash = password_hash($country, PASSWORD_DEFAULT);
    $capital = $countries['capital'];
    $capital_hash = password_hash($capital, PASSWORD_DEFAULT);
    $people = $countries['population'];
    $link -> query("INSERT INTO `countries`(`countries`, `countries-hash`, `capital`, `capital-hash`, `people`) VALUES ('$country','$country_hash',' $capital','$capital_hash','$people')");
}
}
    ?>

    <table border="1px"> 
        <tr>
            <td>Страна</td>
            <td>Хэш</td>
            <td>Столица</td>
            <td>Хэш столицы </td>
            <td>Население</td>
        </tr>
    <?php
    $res = $res->fetch_all(MYSQLI_ASSOC);
foreach($res as $countr){
echo"
<tr>
<td>".$countr['countries']."</td>
<td>".$countr['countries-hash']."</td>
<td>".$countr['capital']."</td>
<td>".$countr['capital-hash']."</td>
<td>".$countr['people']."</td>
</tr>";
}
    ?>
</table>
</body>
</html>

