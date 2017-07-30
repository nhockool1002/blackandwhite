<p style="text-align:center; font-weight:bolder;"> Đăng ký</p>
<div style="margin-left:2em;">
<form method=post>
  <fieldset class="form-group">
    <label for="exampleInputEmail1" class="form">Username:</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Username" name="username">
  </fieldset>
  <fieldset class="form-group">
    <label for="exampleInputPassword1" class="form">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="pass">
  </fieldset>
  <fieldset class="form-group">
    <label for="exampleInputPassword1" class="form">Nhập lại Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="repass">
  </fieldset>
  <fieldset class="form-group">
    <label for="exampleInputPassword1" class="form">Email</label>
    <input type="email" class="form-control" id="exampleInputPassword1" placeholder="Email" name="email">
  </fieldset>
  <fieldset class="form-group">
    <label for="exampleInputEmail1" class="form"><b>Bạn hãy nhập vào ô dưới đây cụm từ ‘BLACKANDWHITE’ theo  chữ viết của người khiếm thị (VD: ‘HI BA’ được viết như sau: 12524121)</b></label>
    <input type="text" class="form-control" name="qt" id="qt" placeholder="Your Answer">
    <small style="color:red;">Nếu bạn không biết câu trả lời có thể nhập bất kỳ một ký tự.</small>
  </fieldset>
  <fieldset>
    <iframe style="width:100%; height:150px;" src="https://docs.google.com/document/d/e/2PACX-1vTefCn5TzSI-WIi_HPYHd3zLG6SlK7twrHvo7h0S_enGj-U7qIsOf25MduxOqFzPW6utE1lJrYEThmj/pub?embedded=true"></iframe>
    <center><input type="checkbox" value="Bike" name="dkhoan">Đồng ý điều khoản</center>
  </fieldset>
  <button type="submit" class="btn btn-primary" name="submit">Đăng ký</button>
</form>

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
