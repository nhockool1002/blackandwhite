<?php
$id = $_GET['id'];

$sql ="UPDATE `memup` SET `stt`=1 WHERE id ='$id'";
$obj = new Db();
$obj->select($sql);
header( "Refresh:0; url=index.php?page=tai-lieu-cho-duyet");
?>
