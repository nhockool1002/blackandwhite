<p style="text-align:center; font-weight:bolder;"> Từ khóa theo tên sách A-Z</p>
<ul>
  <?php
    $sql="SELECT * FROM books ORDER BY bookname ASC";
    $obj = new Db();
    $rows = $obj->select($sql);

    foreach ($rows as $row) {
  ?>
    <li><p class="itemmenuchinh"><a href="index.php?page=viewbook&id=<?php echo $row['bookid']; ?>"><?php echo $row['bookname']; ?></a></p></li>
    <?php } ?>
</ul>
