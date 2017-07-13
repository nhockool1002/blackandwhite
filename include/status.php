<div class="container">
  <div class="row">
    <div class="col-sm-12 text-sm-center">
      <?php if (!isset($_SESSION['bawuser'])) { ?>
      <div class="alert alert-danger" role="alert">
        <strong>Chưa đăng nhập!</strong> - Hãy nhấn <a href="index.php?page=dang-nhap" class="alert-link">vào đây</a> để đến trang đăng nhập hoặc <a href="index.php?page=dang-ky" class="alert-link">vào đây</a> để đăng ký .
      </div>
      <?php } else{ ?>
        <div class="alert alert-info" role="alert">
          Xin chào, <strong><?php echo $_SESSION['bawuser']; ?></strong> - Hãy nhấn <a href="index.php?page=dang-xuat" class="alert-link">vào đây</a> để đăng xuất.
        </div>
        <?php } ?>
    </div>
  </div>
</div>
