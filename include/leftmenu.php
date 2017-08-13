
<div class="col-sm-2 menu-left">
  <div class="row">
    <div class="col-sm-12">
      <div class="" style="width:100%; border:2px solid black;height:250px;text-align:center;line-height:20px;">
        <?php if(!isset($_SESSION['bawuser'])) { ?>
        <p>Đăng nhập</p>
        <form method="post">
        <p style="margin-bottom:-3px;">Tài khoản</p>
        <input type="text" name="username" size='15'>
        <p style="margin-bottom:-3px;">Mật khẩu</p>
        <input type="password" name="pass" size='15'>
        <p style="margin-top:-5px;"></p>
        <button type="submit" class="btn btn-primary btn-xs" name="submit">Đăng nhập</button>
        <p style="margin-top:-5px;"></p>
        <a href="index.php?page=dang-ky"><button type="button" class="btn btn-primary btn-xs">Đăng ký</button></a><br>
        <a href="index.php?page=quen-mat-khau">Quên mật khẩu</a>
      </form>
      <?php }else{ ?>
        <p>Thông tin tài khoản</p>
        <p style="color:blue;">Xin chào, <b><?php echo $_SESSION['bawuser']; ?></b> chúc bạn một ngày vui vẻ !</p>
        <p>Chọn chuyên mục để xem sach</p>
        <img src="http://blackandwhitelibrary.org/img/arrow.png" style="width:50%;height:80px;">
        <?php } ?>
        <?php
          if(isset($_POST['submit'])){
            $username = $_POST['username'];
            $pass = md5($_POST['pass']);

            $obj = new Db();
            $sql = "SELECT * FROM users WHERE username = '$username' AND password='$pass'";
            $obj->select($sql);
            $count = $obj->getRowCount();

            if($count == 0){
            echo "Đăng nhập không thành công, vui lòng thử lại"."<br>";
            }
            else{
            echo "Đăng nhập thành công"."<br>";
            $_SESSION['bawuser'] = $username;
            $sql ="SELECT * FROM users WHERE username = '$username'";
          $obj = new Db();
          $row = $obj->select1($sql);
          if($row['confirm'] == 1){
              header( "Refresh:0; url=aplus");
            }
            
          }
          }
        ?>
      </div>
    </div>
  </div>
  <br>
  <div class="row">
    <div class="col-sm-12">
      <ul class="nav nav-pills nav-stacked">
        <li class="nav-item">
          <div href="#" class="nav-link active category">Danh mục sách</div>
        </li>
        <?php
        $sql = "SELECT * FROM category";
        $obj = new Db();
        $rows = $obj->select($sql);
        foreach ($rows as $row) {

        ?>
        <li class="nav-item">
           <a href="index.php?danh-muc=<?php echo $row['catnameseo']; ?>&id=<?php echo $row['catid']; ?>" class="nav-link"><span class="glyphicon glyphicon-th"></span>⏏ <?php echo $row['catname']; ?></a>
        </li>
        <?php } ?>
      </ul>
    </div>
  </div>
</div>
