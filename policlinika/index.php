<?php
$link = new mysqli('localhost','root','','paliklinika');
$data = $link->query("SELECT `pacients`.`pacients`, `drnames`.`dr_name`, `speciality`.`speciality` , `uslugi`.`usluga` , `usluga`.`price` , `appointment`.`appointment_date` , `appointment`.`appointment_time` 
FROM `appointment` 
JOIN `pacients` ON `pacients`.`id` = `appointment`.`pacient_name`
JOIN `drnames` ON `drnames`.`id` = `appointment`.`doctor_name`
JOIN `doctors` ON `doctors`.`id` = `appointment`.`doctor_name`
JOIN `speciality` ON `speciality`.`id` = `doctors`.`speciality`
JOIN `usluga` ON `usluga`.`id` = `appointment`.`usluga`
JOIN `uslugi` ON `uslugi`.`id` = `usluga`.`id` 

WHERE 1;");
echo "<table border=1px>
<tr>
<th>фио пациента</th>
 <th>фио врача</th>
 <th>специальность</th>
 <th>услуга</th>
 <th>стоимость</th>
 <th>дата</th>
<th>время</th>
 </tr>";
while ($row = mysqli_fetch_assoc($data)){
    echo "<tr>
        <td>".$row['pacients']."</td>
        <td>".$row['dr_name']."</td>
        <td>".$row['speciality']."</td>
        <td>".$row['usluga']."</td>
        <td>".$row['price']."</td>
        <td>".$row['appointment_date']."</td>
        <td>".$row['appointment_time']."</td>
    </tr>";
 }

?>