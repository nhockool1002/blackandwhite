<?php
$sql = "SELECT * FROM recruite";
$obj = new Db();
$rows = $obj->select($sql);
?>

<div class="col-sm-10">
    <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
    <center><div class="nav-link active" href="#"><span>Tin tuyển dụng</span></div></center>
  </nav>
  <div class="container">
    <div class="row">
      <?php
        foreach ($rows as $row) {
      ?>
      <div class="col-sm-4">
          <div class="col-sm-12 tieudetd">
            <?php echo $row['rtit']; ?>
          </div>
          <div class="col-sm-12 ndtuyendung">
            <?php echo $row['rdes']; ?>
          </div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
