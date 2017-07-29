<p style="text-align:center; font-weight:bolder;"> Thư viện</p>
<ul>
  <?php
    $sql="SELECT * FROM books ORDER BY bookid ASC LIMIT 0,5";
    $obj = new Db();
    $rows = $obj->select($sql);

    foreach ($rows as $row) {
  ?>
    <li><p class="itemmenuchinh"><a href="index.php?page=viewbook&id=<?php echo $row['bookid']; ?>"><?php echo $row['bookname']; ?></a></p></li>
    <?php } ?>
</ul>
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
