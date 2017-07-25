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
          <fieldset class="form-group">
            <label for="exampleInputEmail1">Nhập lại mật khẩu :</label>
            <input type="password" class="form-control" name="repass" id="repass" placeholder="Enter confirm password">
          </fieldset>
          <fieldset class="form-group">
            <label for="exampleInputEmail1">Email :</label>
            <input type="email" class="form-control" name="email" id="email" placeholder="Enter email">
          </fieldset>
          <fieldset class="form-group">
            <label for="exampleInputEmail1"><b>Bạn hãy nhập vào ô dưới đây cụm từ ‘BLACKANDWHITE’ theo  chữ viết của người khiếm thị (VD: ‘HI BA’ được viết như sau: 12524121)</b></label>
            <input type="text" class="form-control" name="qt" id="qt" placeholder="Your Answer">
            <small style="color:red;">Nếu bạn không biết câu trả lời có thể bỏ qua.</small>
          </fieldset>
          <fieldset>
            <iframe style="width:100%; height:150px;" src="https://docs.google.com/document/d/e/2PACX-1vTefCn5TzSI-WIi_HPYHd3zLG6SlK7twrHvo7h0S_enGj-U7qIsOf25MduxOqFzPW6utE1lJrYEThmj/pub?embedded=true"></iframe>
            <input type="checkbox" value="Bike" name="dkhoan">Đồng ý điều khoản
          </fieldset>
          <button type="submit" class="btn btn-primary" name="submit">Submit</button>
          <button type="reset" class="btn btn-danger">Reset</button>
        </form> <br>
        <?php
          if(isset($_POST['submit'])){
            $username = $_POST['username'];
            $pass = md5($_POST['pass']);
            $repass = md5($_POST['repass']);
            $email = $_POST['email'];
            if($_POST['qt'] == '121231141311345145245612524234515'){
              $confirm = 1;
            }
            else $confirm = 0;

            $obj = new Db();
            $sql = "SELECT * FROM users WHERE username = '$username'";
            $obj->select($sql);
            $count = $obj->getRowCount();

            $obj = new Db();
            $sql = "SELECT * FROM users WHERE email = '$email'";
            $obj->select($sql);
            $counte = $obj->getRowCount();

            if($username == "" || $pass == "" || $repass == "" || $email == ""){
              echo "Không để trống bất kỳ trường nào."."<br>";
            }

            elseif($pass != $repass){
              echo "Mật khẩu và mật khẩu xác nhận không giống nhau."."<br>";
            }

            elseif($count == 1){
              echo "Tên tài khoản này đã được đăng ký"."<br>";
            }


            elseif($counte == 1){
              echo "Email này đã được đăng ký"."<br>";
            }

            elseif(!isset($_POST['dkhoan'])){
              echo "Chưa đồng ý điều khoản"."<br>";
            }


            else{
            $obj = new Db();
            $sql = "INSERT INTO `users`(`username`, `password`, `email`,`confirm`)
                    VALUES ('$username','$pass','$email','$confirm')";
            $obj->select($sql);
            echo "Đăng ký thành công"."<br>";
            header( "Refresh:0; url=index.php");
            $_SESSION['bawuser'] = $username;
          }}
        ?>
      </div>
    </div>
  </div>
</div>
