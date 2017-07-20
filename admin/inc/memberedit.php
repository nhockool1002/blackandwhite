<?php
  $id = $_GET['id'];
  $sql1 = "SELECT * FROM `users` WHERE userid = '$id'";
  $obj1 = new Db();
  $row = $obj1->select1($sql1);
  $username = $row['username'];
  $email = $row['email'];

?>

<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Sửa thành viên <small class="text-muted">[Edit Member]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i>     Sửa thành viên
                    </li>
                </ol>
            </div>
        </div>
        <hr />
        <!-- /.row -->
        <form method="post" enctype="multipart/form-data" id="formaddsach">

            <label for="username">Username</label>  <label class="label label-warning"> * Important</label><br>
            <input type="text" class="form-control" id="username" name="username" placeholder="Nhập tiêu đề" value="<?php echo $username; ?>">
            <br>
            <br>
            <label for="pass">Password</label>  <label class="label label-warning"> * Important</label><br>
            <input type="text" class="form-control" id="pass" name="pass" placeholder="Nhập password" value="1451JMCMFDKJSF6565948REIOWPCODFE">
            <small style="color:red;font-weight:bolder;">Để bảo mật, phía trên là một đoạn mã random, nếu thay đổi mật khẩu thì nhập đoạn mới, nếu không vui lòng không chỉnh sửa đoạn trên.</small>
            <br>
            <br>
            <label for="email">Email</label>  <label class="label label-warning"> * Important</label><br>
            <input type="text" class="form-control" id="email" name="email" placeholder="Nhập email" value="<?php echo $email; ?>">
            <br>
            <br>
          <button type="submit" class="btn btn-primary" id="submit-btn" name="submit-btn">SỬa</button>
          <button type="reset" class="btn btn-danger">Xóa</button>
        </center>
        </form>
        <hr>
        <div class="error" id="error">

        </div>
        <hr>
        <!-- /.row -->
        <?php
        if(isset($_POST["submit-btn"])){
            $username= $_POST['username'];
            if($_POST['pass'] == "1451JMCMFDKJSF6565948REIOWPCODFE"){
              $pass = $row['password'];
            }
            else{
            $pass = md5($_POST['pass']);
            }
            $email = $_POST['email'];


            $ins = new Db();
            $sql = "UPDATE `users`
                    SET `username`='$username',
                        `password`='$pass',
                        `email`='$email'
                    WHERE userid = '$id'";
            $ins->select($sql);

            echo " <b><font color='green'> - Thông tin đã được sửa thành công</font></b>";
            header( "Refresh:2; url=index.php?page=quan-li-thanh-vien");
          }
        ?>
        <!-- /.row -->

        <!-- /.row -->


        <!-- /.row -->

    </div>
    <!-- /.container-fluid -->

</div>
