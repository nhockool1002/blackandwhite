<?php
include ("../../config/config.php");
include ROOT."/function/func.php";
spl_autoload_register("loadClass");
$obj = new Db();

$id = $_GET['id'];
$name = $_GET['name'];

$sql = "UPDATE `author` SET `authorname`='$name' WHERE authorid = '$id'";
$obj->select($sql);
$count = $obj->getRowCount();
echo $count;
 ?>
