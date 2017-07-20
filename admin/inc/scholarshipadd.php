<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Thêm học bỗng mới <small class="text-muted">[Add New Scholarship]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i>   Thêm học bỗng mới
                    </li>
                </ol>
            </div>
        </div>
        <hr />
        <!-- /.row -->
        <form method="post" enctype="multipart/form-data" id="formaddsach">

            <label for="tdhb">Tiêu đê học bổng</label>  <label class="label label-warning"> * Important</label><br>
            <input type="text" class="form-control" id="tdhb" name="tdhb" placeholder="Nhập tiêu đề">
            <br>
            <br>
            <label for="mthb">Mô tả học bổng</label>  <label class="label label-warning"> * Important</label><br>
            <textarea name="mthb" rows="4" cols="80" placeholder="Mô tả học bỗng"></textarea>
            <br>
            <br>
            <label for="ndhb">Nội dung học bổng</label>  <label class="label label-warning"> * Important</label><br>
            <small class="text-muted"><font color="red"><b>Vui lòng soạn theo cú pháp HTML để hiển thị hiệu ứng, màu sắc -
              Vui lòng xem <a href="index.php?page=huong-dan-dang-tin-tuyen-dung">Hướng dẫn</a> để hiểu rõ cách thức</b></font></small><br>
            <textarea name="ndhb" rows="8" cols="80" placeholder="Nội dung học bỗng"></textarea>
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
            $stit = $_POST['tdhb'];
            $sdes = $_POST['mthb'];
            $sct = $_POST['ndhb'];


            $ins = new Db();
            $sql = "INSERT INTO `scholarship`(`stit`,`sdes`,`sct`)
                    VALUES ('$stit','$sdes' ,'$sct')";
            $ins->select($sql);

            echo "<b><font color='green'> - Học bỗng đã được thêm thành công</font></b>";
            header( "Refresh:2; url=index.php?page=quan-li-hoc-bong");
          }
        ?>
        <!-- /.row -->

        <!-- /.row -->


        <!-- /.row -->

    </div>
    <!-- /.container-fluid -->

</div>
