<?php
require_once("cfg.php");
require_once("auth.php");
$data = $link->query("SELECT * , `book` . `id` as `book_id` FROM `book`
JOIN `genres` ON `genres` . `id` = `book` . `genre`
JOIN `uses` ON `uses` . `id` = `book` . `reader_name`
JOIN `authors` ON `authors` . `id` = `book` . `autor_name`
JOIN `papers` ON `papers` . `id` = `book` . `book_name`");
$data = $data->fetch_all(MYSQLI_ASSOC);
echo "<table border=1px>
<tr>
<th>id</th>
<th>book name</th>
<th>author name</th>
<th>genre</th>
<th>reader</th>
<th>issue date</th>
<th>status  </th>
</tr>";
foreach($data as $table) {
if($table['return_date'] != null || $table['date_of_issue'] == null){
    $get = "вернули";
}else{
    $get = "не вернули";
    echo "<tr>
<td>".$table['book_id']."</td>
<td>".$table['paper_name']."</td>
<td>".$table['authors']."</td>
<td>".$table['genres']."</td>
<td>".$table['reader_name']."</td>
<td>".$table['date_of_issue']."</td>
<td>".$get."</td>
</tr>";
}
}








?>





