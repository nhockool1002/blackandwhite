<?php
$id = $_GET['idbook'];
$sql = "SELECT * FROM books WHERE bookid = '$id'";
$obj = new Db();
$row = $obj->select1($sql);
?>

<div class="col-sm-10">
    <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
    <center><div class="nav-link active" href="#"><span><?php echo $row['bookname']; ?></span></div></center>
  </nav>
  <div class="row showcases text-sm-center">
    <div class="col-sm-12 text-sm-center">
      <?php echo $row['link']; ?>
      <br>
      <a href="<?php echo $row['download']; ?>"><img src="http://hocnuahocmai.net/uploads/news/2017_01/download-1.png" alt="" width="250px"></a>
    </div>
  </div>
</div>
