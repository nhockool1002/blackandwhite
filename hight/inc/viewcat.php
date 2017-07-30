<?php
  if(isset($_GET['id'])){
    $id = $_GET['id'];
    $sql = "SELECT * FROM `books` INNER JOIN `category` ON books.catid = category.catid WHERE books.catid='$id'";
    $obj = new Db();
    $rows = $obj->select($sql);


?>
<p style="text-align:center; font-weight:bolder;"> Sách</p>
<ul>
  <?php
    foreach ($rows as $row) {
  ?>
    <li><p class="itemmenuchinh"><a href="index.php?page=viewbook&id=<?php echo $row['bookid']; ?>"><?php echo $row['bookname']; ?></a></p></li>
    <?php } ?>
</ul>

<?php
} ?>
