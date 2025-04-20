<?php
$link = new mysqli('localhost','root','','aaaaaaavtopark');
$data = $link->query("SELECT *, `routes`.`id` AS 'routeid' FROM `routes`
JOIN `drivers` ON `drivers`.`id` = `routes`.`fio_driver_drivers`
JOIN `CARS` ON `CARS`.`id`=`routes`.`gos_number_trucks`
JOIN `product` ON `product`.`id`=`routes`.`tovar_tovars`
JOIN `mark` ON `mark`.`id` = `CARS`.`mark_mark`
JOIN `TO` ON `TO`.`fio_driver_drivers` = `drivers`.`id`
JOIN `clients` ON `clients`.id = `product`.`sender`
JOIN `license` ON `license`.`id` = `drivers`.`category_categories`
JOIN `service` ON `service`.`id` = `TO`.`service_services`");
echo "<table border=1px>
 <tr>
<th>№</th>
 <th>Госномер</th>
 <th>Марка</th>
 <th>Модель</th>
 <th>Водитель ФИО</th>
 <th>Категория</th>
 <th>Маршрут</th>
<th>Груз</th>
<th>Вес КГ</th>
<th>Отправитель</th>
<th>Телефон Отправителя</th>
<th>Получатель</th>
<th>Телефон получателя</th>
<th>Последнее ТО (вид работ)</th>
<th>Дата ТО</th>
<th>СТО</th>
<th>Стоимость ТО</th>
 </tr>";
 foreach($data as $table){
    $sender = $table['sender'];
    $reciever = $link->query("SELECT * FROM `product` 
JOIN `clients` ON `clients`.`id` = `product`.`reciever`
WHERE `sender` = '$sender'");
$reciever = $reciever->fetch_assoc();
    echo "<tr>
        <td>".$table['routeid']."</td>
        <td>".$table['gos_number']."</td>
        <td>".$table['mark']."</td>
        <td>".$table['model']."</td>
        <td>".$table['fio']."</td>
        <td>".$table['category']."</td>
        <td>".$table['route']."</td>
        <td>".$table['tovar']."</td>
        <td>".$table['weight']."</td>
        <td>".$table['name_company']."</td>
        <td>".$table['tel']."</td>
        <td>".$reciever['name_company']."</td>
        <td>".$reciever['tel']."</td>
        <td>".$table['type_work']."</td>
        <td>".$table['date_TO']."</td>
        <td>".$table['service']."</td>
        <td>".$table['price']."</td>
    </tr>";
 }