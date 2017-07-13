<?php
  include ("../../config/config.php");
  include ROOT."/function/func.php";
  spl_autoload_register("loadClass");
  $obj = new Db();

  $noname = $_GET['noname'];
  $sql = "SELECT * FROM category WHERE catnamseo = '$noname'";

  $obj->select($sql);
  $count = $obj->getRowCount();
  echo $count;
?>
