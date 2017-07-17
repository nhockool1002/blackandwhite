<?php
  include ("../../config/config.php");
  include ROOT."/function/func.php";
  spl_autoload_register("loadClass");
  $obj = new Db();

  $id = $_GET['id'];
  $sql = "DELETE FROM `books` WHERE bookid ='$id'";
  $obj->select($sql);
  $count = $obj->getRowCount();
  echo $count;
?>
