<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Thêm thành viên mới <small class="text-muted">[Add New Members]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i>   Thêm thành viên mới
                    </li>
                </ol>
            </div>
        </div>
        <hr />
        <!-- /.row -->
        <form method="post" enctype="multipart/form-data" id="formaddsach">

            <label for="username">Username</label>  <label class="label label-warning"> * Important</label><br>
            <input type="text" class="form-control" id="username" name="username" placeholder="Nhập Username">
            <br>
            <br>
            <label for="pass">Password</label>  <label class="label label-warning"> * Important</label><br>
            <input type="text" class="form-control" id="pass" name="pass" placeholder="Nhập password">
            <small style="color:red;font-weight:bolder;">Mật khẩu sẽ HIỂN THỊ ra cho người quản trị nhập chính xác, sau đó sẽ được mã hóa MD5HASHCODE</small>
            <br>
            <br>
            <label for="email">Email</label>  <label class="label label-warning"> * Important</label><br>
            <input type="email" class="form-control" id="email" name="email" placeholder="Nhập email">
            <br>
            <br>
          <button type="submit" class="btn btn-primary" id="submit-btn" name="submit-btn">Thêm</button>
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
            $pass = md5($_POST['pass']);
            $email = $_POST['email'];


            $ins = new Db();
            $sql = "INSERT INTO `users`(`username`,`password`,`email`)
                    VALUES ('$username','$pass' ,'$email')";
            $ins->select($sql);

            echo "<b><font color='green'> - Thanh viên đã được thêm thành công</font></b>";
            header( "Refresh:2; url=index.php?page=quan-li-thanh-vien");
          }
        ?>
        <!-- /.row -->

        <!-- /.row -->


        <!-- /.row -->

    </div>
    <!-- /.container-fluid -->

</div>
