<div class="col-sm-10 text-sm-center">
    <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
    <center><div class="nav-link active" href="#"><span>Đăng ký</span></div></center>
  </nav>
  <div class="container">
    <div class="row">
      <div class="col-sm-8 push-sm-2">
        <form method="post">
          <fieldset class="form-group">
            <label for="exampleInputEmail1">Tên đăng nhập :</label>
            <input type="text" class="form-control" name="username" id="username" placeholder="Enter username">
          </fieldset>
          <fieldset class="form-group">
            <label for="exampleInputEmail1">Mật khẩu :</label>
            <input type="password" class="form-control" name="pass" id="pass" placeholder="Enter password">
          </fieldset>
          <button type="submit" class="btn btn-primary" name="submit">Login</button>
          <button type="reset" class="btn btn-danger">Reset</button>
        </form> <br>
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
            header( "Refresh:1; url=index.php");
            $_SESSION['bawuser'] = $username;
          }
          }
        ?>
      </div>
    </div>
  </div>
</div>
