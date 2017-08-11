<p style="text-align:center; font-weight:bolder;"> Tài liệu nổi bật</p>
<ul>
  <?php
    $sql="SELECT * FROM books WHERE spec = 1";
    $obj = new Db();
    $rows = $obj->select($sql);

    foreach ($rows as $row) {
  ?>
    <li><p class="itemmenuchinh"><a href="index.php?page=viewbook&id=<?php echo $row['bookid']; ?>"><?php echo $row['bookname']; ?></a></p></li>
    <?php } ?>
</ul>
