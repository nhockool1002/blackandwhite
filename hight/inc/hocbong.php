<?php
  if(isset($_GET['id'])){
    $id = $_GET['id'];
    $sql = "SELECT * FROM `scholarship` WHERE sid='$id'";
    $obj = new Db();
    $row = $obj->select1($sql);


?>
<div style="margin-left:5em;">
<p style="text-align:center; font-weight:bolder;"> <?php
  echo $row['stit'];
?></p>

  <?php
    echo $row['sct'];
  ?>
</div>
<?php
} ?>
