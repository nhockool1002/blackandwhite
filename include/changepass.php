<div class="col-sm-10 text-sm-center">
    <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
    <center><div class="nav-link active" href="#"><span>Đổi mật khẩu</span></div></center>
  </nav>
  <div class="container">
    <div class="row">
    <div class="col-sm-12 text-sm-center">
      <form method="post">
        <span class="label label-default">Mật khẩu hiện tại :</span>
        <input class="form-control" type="text" name="cpass"><br>
        <span class="label label-default">Mật khẩu mới :</span>
        <input class="form-control" type="text" name="passs"><br>
        <span class="label label-default">Nhập lại mật khẩu mới :</span><br>
        <input class="form-control" type="text" name="repasss"><br>
        <button type="submit" name="doipass" class="btn btn-success">Phục hồi</button>
      </form>
      <div>
      <?php
        if(isset($_POST['doipass'])){
          $username = $_SESSION['bawuser'];
          $cpass = md5($_POST['cpass']);
          $passs = md5($_POST['passs']);
          $repasss = md5($_POST['repasss']);
          $checpassword ="SELECT * FROM users WHERE username = '$username' AND password='$cpass'";
          $obj = new Db();
          $obj->select($checpassword);
          $count = $obj->getRowCount();

          if($cpass == "" || $passs == "" || $repasss == ""){
              echo "<center><b>Không để trống bất kỳ trường nào.</center></b>"."<br>";
            }
          elseif($count == 0){
              echo "<center><b>Mật khẩu sai</center></b>"."<br>";
            }
          elseif($passs != $repasss){
              echo "<center><b>Mật khẩu và mật khẩu xác nhận không giống nhau.</center></b>"."<br>";
            }
          else{
            $update = "UPDATE `users` 
                        SET `password`='$passs'
                        WHERE username = '$username'";
            $obj->select($update);
            echo "<center><b>Thay đổi thành công</center></b>"."<br>";
            header( "Refresh:2; url=index.php");
          }

        } 
      ?>
      </div>
      </div>
    </div>
  </div>
</div>
