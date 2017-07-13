<?php
include ("../../config/config.php");
include ROOT."/function/func.php";
spl_autoload_register("loadClass");
$obj = new Db();

$id = $_GET['id'];
$name = $_GET['name'];
$nonename = $_GET['nonename'];

$sql = "UPDATE `category` SET `catname`='$name',`catnameseo`='$nonename' WHERE catid = '$id'";
$obj->select($sql);
$count = $obj->getRowCount();
echo $count;
 ?>
