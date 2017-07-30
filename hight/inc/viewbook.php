
<?php
  if(isset($_SESSION['baw'])){
    $user = $_SESSION['baw'];
    $check = "SELECT * FROM users WHERE username='$user' AND confirm = 1";
    $obj = new Db();
    $obj->select($check);
    $dem = $obj->getRowCount();
    if($dem == 1){
?>

<?php
  if(isset($_GET['id'])){
    $id = $_GET['id'];
    $sql = "SELECT * FROM `books` WHERE bookid='$id'";
    $obj = new Db();
    $row = $obj->select1($sql);


?>
<center>
<p style="text-align:center; font-weight:bolder;"> Sách</p>

  <?php
    echo $row['link'];
  ?>
</center>
<?php
}

}else{
  ?>
  <center><font color="red"><b>Bạn không có quyền xem sách tại trang dành cho người khiếm thị . Bạn sẽ được chuyển qua giao diện người bình thường để xem sách<b></font></center>
  <?php header( "Refresh:5; url=../index.php"); ?>
  <?php
}
} ?>
