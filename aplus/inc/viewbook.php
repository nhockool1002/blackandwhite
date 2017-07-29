<?php
  if(isset($_GET['id'])){
    $id = $_GET['id'];
    $sql = "SELECT * FROM `books` WHERE bookid='$id'";
    $obj = new Db();
    $row = $obj->select1($sql);


?>
<center>
<p style="text-align:center; font-weight:bolder;"> Sách</p>

  <?php
    echo $row['link'];
  ?>
</center>
<?php
} ?>
