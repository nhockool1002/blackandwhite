<p style="text-align:center; font-weight:bolder;"> Đăng Xuất</p>
<div style="margin-left:2em;">
  <?php if(isset($_SESSION['baw'])) {
    unset($_SESSION['baw']);
    echo "<center><b>Xin chào và hẹn gặp lại</b></center>";
    header( "Refresh:1; url=index.php");
  }
  ?>
</div>
