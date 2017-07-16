<?php
include ("../../config/config.php");
include ROOT."/function/func.php";
spl_autoload_register("loadClass");
$obj = new Db();

$addauthorname = $_GET['addauthorname'];

$sql = "SELECT * FROM author WHERE authorname = '$addauthorname'";
$obj->select($sql);
$count = $obj->getRowCount();


if($count == 1){
  echo "1";
}
else {
  $obj1 = new Db();
  $sql1 = "INSERT INTO `author`(`authorname`) VALUES ('$addauthorname')";
  $obj1->select($sql1);
  echo 0;
}
?>
