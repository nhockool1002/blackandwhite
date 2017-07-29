<p style="text-align:center; font-weight:bolder;"> Tài liệu</p>
<ul>
  <?php
    $sql="SELECT * FROM books";
    $obj = new Db();
    $rows = $obj->select($sql);

    foreach ($rows as $row) {
  ?>
    <li><p class="itemmenuchinh"><a href="index.php?page=viewbook&id=<?php echo $row['bookid']; ?>"><?php echo $row['bookname']; ?></a></p></li>
    <?php } ?>
</ul>
