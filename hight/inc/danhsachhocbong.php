<p style="text-align:center; font-weight:bolder;"> Học bỗng</p>
<ul>
  <?php
    $sql="SELECT * FROM scholarship ORDER BY sid ASC LIMIT 0,5";
    $obj = new Db();
    $rows = $obj->select($sql);

    foreach ($rows as $row) {
  ?>
    <li><p class="itemmenuchinh"><a href="index.php?page=hocbong&id=<?php echo $row['sid']; ?>"><?php echo $row['stit']; ?></a></p></li>
    <?php } ?>
</ul>
