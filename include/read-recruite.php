<?php
$idtd = $_GET["idtd"];
$sql = "SELECT * FROM recruite WHERE rid = '$idtd'";
$obj = new Db();
$row = $obj->select1($sql);
?>

<div class="col-sm-10">
    <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
    <center><div class="nav-link active" href="#"><span><?php echo $row['rtit']; ?></span></div></center>
  </nav>
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
          <?php echo $row['rct']; ?>
      </div>

    </div>
  </div>
</div>
