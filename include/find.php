<?php

  if(isset($_POST['submit'])){
    $string = $_POST['getvalue'];

?>
<div class="col-sm-10">
    <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
    <center><div class="nav-link active" href="#"><span>Sách</span></div></center>
  </nav>
  <?php
    $sql="SELECT * FROM `books` INNER JOIN `author` ON books.author = author.authorid INNER JOIN category ON books.catid = category.catid WHERE authorname like '%$string%' AND credits=0";
    $ob = new Db();
    $rows = $ob->select($sql);
    $num1 = $ob->getRowCount();
  ?>
  <hr>
  <p style="font-weight:bold;color:green;">Tìm kiếm sách theo tác giả : Có <?php echo $num1; ?> kết quả</p>
  <hr>
  <table>
    <tr>
      <td style="font-weight:bold;width:100px;">STT</td>
      <td style="font-weight:bold;width:500px;">Tên sách</td>
      <td style="font-weight:bold;width:200px;">Tác giả</td>
      <td style="font-weight:bold;width:200px;">Danh mục</td>
      <td style="font-weight:bold;">Xem</td>
    </tr>
    <?php $i = 1;
    foreach ($rows as $key => $row) {
        
    ?>
    <tr>
      <td style="width:100px;"><?php echo $i++; ?></td>
      <td style="width:500px;"><?php echo $row['bookname']; ?></td>
      <td style="width:200px;"><?php echo $row['authorname']; ?></td>
      <td style="width:200px;"><?php echo $row['catname']; ?></td>
      <td><a href="index.php?page=xem-sach&idbook=<?php echo $row['bookid']; ?>">[Xem]</a></td>
    </tr>
    <?php $i++; } ?>
  </table>
  <?php
    $sql="SELECT * FROM `books` INNER JOIN `author` ON books.author = author.authorid INNER JOIN category ON books.catid = category.catid WHERE bookname like '%$string%' AND credits=0";
    $ob = new Db();
    $rows = $ob->select($sql);
    $num1 = $ob->getRowCount();
  ?>
  <hr>
  <p style="font-weight:bold;color:green;">Tìm kiếm sách theo từ khóa : Có <?php echo $num1; ?> kết quả</p></p>
  <hr>
  <table>
    <tr>
      <td style="font-weight:bold;width:100px;">STT</td>
      <td style="font-weight:bold;width:500px;">Tên sách</td>
      <td style="font-weight:bold;width:200px;">Tác giả</td>
      <td style="font-weight:bold;width:200px;">Danh mục</td>
      <td style="font-weight:bold;">Xem</td>
    </tr>
    <?php $i = 1;
    foreach ($rows as $key => $row) {
        
    ?>
    <tr>
      <td style="width:100px;"><?php echo $i++; ?></td>
      <td style="width:500px;"><?php echo $row['bookname']; ?></td>
      <td style="width:200px;"><?php echo $row['authorname']; ?></td>
      <td style="width:200px;"><?php echo $row['catname']; ?></td>
      <td><a href="index.php?page=xem-sach&idbook=<?php echo $row['bookid'] ?>">[Xem]</a></td>
    </tr>
    <?php $i = $i++; } ?>
  </table>
</div>

<?php } else{
  echo "Please input keyword for find !";
} ?>
