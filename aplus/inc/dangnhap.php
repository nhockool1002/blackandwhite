<p style="text-align:center; font-weight:bolder;"> Đăng nhập</p>
<div style="margin-left:2em;">
<form method=post>
  <fieldset class="form-group">
    <label for="exampleInputEmail1">Username:</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Username" name="username">
  </fieldset>
  <fieldset class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">
  </fieldset>
  <button type="submit" class="btn btn-primary" name="submit">Đăng nhập</button>
</form>
</div>

<?php
  if(isset($_POST['submit'])){
    $user = $_POST['username'];
    $pass = md5($_POST['password']);

    $sql = "SELECT * FROM users WHERE username = '$user' AND password = '$pass'";
    $obj = new Db();
    $obj->select($sql);

    $count = $obj->getRowCount();

    if($count == 1){
      $check = "SELECT * FROM users WHERE username='$user' AND confirm = 1";
      $obj = new Db();
      $obj->select($check);
      $dem = $obj->getRowCount();
      if($dem == 1){
        $_SESSION['baw'] = $user;
        echo "<center><b>Đăng nhập thành công !</b></center>";
        header( "Refresh:2; url=index.php");
      }
      else{
        $_SESSION['baw'] = $user;
        echo "<center><b>Bạn đăng nhập thành công - Nhưng không phải là người khiếm thị chúng tôi sẽ di chuyển bạn ra giao diện GUI</b></center>";
        header( "Refresh:1; url=../index.php");
      }
    }
    else{
      echo "<center><b>Đăng nhập sai vui lòng kiểm tra</b></center>";
    }
  }
?>
