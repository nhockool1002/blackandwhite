<p style="text-align:center; font-weight:bolder;"> Quên mật khẩu</p>
<div class="container">
  <div class="row">
  <div class="col-sm-12 text-sm-center">
    <form method="post">
      <span class="label label-default">Tên tài khoản :</span><br>
      <input class="form-control" type="text" name="username"><br>
      <span class="label label-default">Nhập email :</span><br>
      <input class="form-control" type="email" name="email"><br>
      <span class="label label-default">Mật khẩu mới :</span>
      <input class="form-control" type="text" name="pass"><br>
      <span class="label label-default">Nhập lại mật khẩu mới :</span><br>
      <input class="form-control" type="text" name="repass"><br>
      <button type="submit" name="phuchoi" class="btn btn-success">Phục hồi</button>
    </form>
    <div>
    <?php
      if(isset($_POST['phuchoi'])){
        $username = $_POST['username'];
        $email = $_POST['email'];
        $pass = md5($_POST['pass']);
        $repass = md5($_POST['repass']);
        $checkusername ="SELECT * FROM users WHERE username = '$username'";
        $obj = new Db();
        $obj->select($checkusername);
        $count = $obj->getRowCount();

        $checkemail ="SELECT * FROM users WHERE username = '$username' AND email = '$email'";
        $obj = new Db();
        $obj->select($checkemail);
        $count1 = $obj->getRowCount();
        if($username == "" || $pass == "" || $repass == "" || $email == ""){
            echo "<center><b>Không để trống bất kỳ trường nào.</center></b>"."<br>";
          }
        elseif($pass != $repass){
            echo "<center><b>Mật khẩu và mật khẩu xác nhận không giống nhau.</center></b>"."<br>";
          }
        elseif($count == 0){
            echo "<center><b>Tài khoản này không tồn tại</center></b>"."<br>";
          }
        elseif($count1 == 0){
            echo "<center><b>Email không đúng</center></b>"."<br>";
          }
        else{
          $update = "UPDATE `users`
                      SET `password`='$pass'
                      WHERE username = '$username' AND email = '$email'";
          $obj->select($update);
          echo "<center><b>Thay đổi thành công</center></b>"."<br>";
          header( "Refresh:2; url=index.php?page=dangnhap");
        }

      }
    ?>
    </div>
    </div>
  </div>
</div>
