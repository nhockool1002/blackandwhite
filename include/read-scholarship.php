<?php
$idhb = $_GET["idhb"];
$sql = "SELECT * FROM scholarship WHERE sid = '$idhb'";
$obj = new Db();
$row = $obj->select1($sql);
?>

<div class="col-sm-10">
    <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
    <center><div class="nav-link active" href="#"><span><?php echo $row['stit']; ?></span></div></center>
  </nav>
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
          <?php echo $row['sct']; ?>
      </div>

    </div>
  </div>
</div>
