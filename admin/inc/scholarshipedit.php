<?php
  $id = $_GET['id'];
  $sql1 = "SELECT * FROM `scholarship` WHERE sid = '$id'";
  $obj1 = new Db();
  $row = $obj1->select1($sql1);
  $rtit = $row['stit'];
  $rdes = $row['sdes'];
  $rct = $row['sct'];

?>

<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Sửa tin học bổng <small class="text-muted">[Edit Scholarship]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i>   Sửa tin học bổng
                    </li>
                </ol>
            </div>
        </div>
        <hr />
        <!-- /.row -->
        <form method="post" enctype="multipart/form-data" id="formaddsach">

            <label for="tdhb">Tiêu đê học bỗng</label>  <label class="label label-warning"> * Important</label><br>
            <input type="text" class="form-control" id="tdhb" name="tdhb" value="<?php echo $row['stit']; ?>">
            <br>
            <br>
            <label for="mthb">Mô tả học bỗng</label>  <label class="label label-warning"> * Important</label><br>
            <textarea name="mthb" rows="4" cols="80"><?php echo $row['sdes']; ?></textarea>
            <br>
            <br>
            <label for="ndhb">Nội dung học bỗng</label>  <label class="label label-warning"> * Important</label><br>
            <small class="text-muted"><font color="red"><b>Vui lòng soạn theo cú pháp HTML để hiển thị hiệu ứng, màu sắc -
              Vui lòng xem <a href="index.php?page=huong-dan-dang-tin-hoc-bong">Hướng dẫn</a> để hiểu rõ cách thức</b></font></small><br>
            <textarea name="ndhb" rows="8" cols="80"><?php echo $row['sct']; ?></textarea>
            <br>
            <br>
          <button type="submit" class="btn btn-primary" id="submit-btn" name="submit-btn">Sửa</button>
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
            $stit= $_POST['tdhb'];
            $sdes = $_POST['mthb'];
            $sct = $_POST['ndhb'];


            $ins = new Db();
            $sql = "UPDATE `scholarship`
                    SET `stit`='$stit',
                        `sdes`='$sdes',
                        `sct`='$sct'
                    WHERE sid = '$id'";
            $ins->select($sql);

            echo " <b><font color='green'> - Tin đã được sửa thành công</font></b>";
            header( "Refresh:2; url=index.php?page=quan-li-hoc-bong");
          }
        ?>
        <!-- /.row -->

        <!-- /.row -->


        <!-- /.row -->

    </div>
    <!-- /.container-fluid -->

</div>
