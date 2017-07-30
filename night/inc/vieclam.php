<?php
  if(isset($_GET['id'])){
    $id = $_GET['id'];
    $sql = "SELECT * FROM `recruite` WHERE rid='$id'";
    $obj = new Db();
    $row = $obj->select1($sql);


?>
<div style="margin-left:2em;">
<p style="text-align:center; font-weight:bolder;"> <?php
  echo $row['rtit'];
?></p>

  <?php
    echo $row['rct'];
  ?>
</div>
<?php
} ?>
