<div class="col-sm-2 menu-left">
  <ul class="nav nav-pills nav-stacked">
    <li class="nav-item">
      <div href="#" class="nav-link active category">Danh mục sách</div>
    </li>
    <?php
    $sql = "SELECT * FROM category";
    $obj = new Db();
    $rows = $obj->select($sql);
    foreach ($rows as $row) {

    ?>
    <li class="nav-item">
       <a href="index.php?danh-muc=<?php echo $row['catnameseo']; ?>&id=<?php echo $row['catid']; ?>" class="nav-link"><span class="glyphicon glyphicon-th"></span>⏏ <?php echo $row['catname']; ?></a>
    </li>
    <?php } ?>
  </ul>
</div>
