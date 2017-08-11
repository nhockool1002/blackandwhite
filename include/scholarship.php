<?php
$sql = "SELECT * FROM scholarship ORDER BY sid DESC";
$obj = new Db();
$rows = $obj->select($sql);
?>

<div class="col-sm-10">
    <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
    <center><div class="nav-link active" href="#"><span>Tin học bổng</span></div></center>
  </nav>
  <div class="container">
    <div class="row">
      <?php
        foreach ($rows as $row) {
      ?>
      <div class="col-sm-4">
          <div class="col-sm-12 tieudetd">
            <a href="index.php?page=xem-tin-hoc-bong&idhb=<?php echo $row['sid']; ?>"><?php echo $row['stit']; ?></a>
          </div>
          <div class="col-sm-12 ndtuyendung">
            <?php echo $row['sdes']; ?>
          </div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
