<p style="text-align:center; font-weight:bolder;"> Tuyển dụng</p>
<ul>
  <?php
    $sql="SELECT * FROM recruite ORDER BY rid ASC LIMIT 0,5";
    $obj = new Db();
    $rows = $obj->select($sql);

    foreach ($rows as $row) {
  ?>
    <li><p class="itemmenuchinh"><a href="index.php?page=vieclam&id=<?php echo $row['rid']; ?>"><?php echo $row['rtit']; ?></a></p></li>
    <?php } ?>
</ul>
