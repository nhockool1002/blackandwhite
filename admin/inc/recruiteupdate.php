<?php
  $id = $_GET['id'];
  $sql1 = "SELECT * FROM `recruite` WHERE rid = '$id'";
  $obj1 = new Db();
  $row = $obj1->select1($sql1);
  $rtit = $row['rtit'];
  $rdes = $row['rdes'];
  $rct = $row['rct'];

?>

<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Sửa tin tuyển dụng <small class="text-muted">[Edit Recruitment]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i>   Sửa tin tuyển dụng
                    </li>
                </ol>
            </div>
        </div>
        <hr />
        <!-- /.row -->
        <form method="post" enctype="multipart/form-data" id="formaddsach">

            <label for="tdtd">Tiêu đê tuyển dụng</label>  <label class="label label-warning"> * Important</label><br>
            <input type="text" class="form-control" id="tdtd" name="tdtd" value="<?php echo $row['rtit']; ?>">
            <br>
            <br>
            <label for="destd">Mô tả tuyển dụng</label>  <label class="label label-warning"> * Important</label><br>
            <textarea name="destd" rows="4" cols="80"><?php echo $row['rdes']; ?></textarea>
            <br>
            <br>
            <label for="cttd">Nội dung tuyển dụng</label>  <label class="label label-warning"> * Important</label><br>
            <small class="text-muted"><font color="red"><b>Vui lòng soạn theo cú pháp HTML để hiển thị hiệu ứng, màu sắc -
              Vui lòng xem <a href="index.php?page=huong-dan-dang-tin-tuyen-dung">Hướng dẫn</a> để hiểu rõ cách thức</b></font></small><br>
            <textarea name="cttd" rows="8" cols="80"><?php echo $row['rct']; ?></textarea>
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
            $rtit= $_POST['tdtd'];
            $rdes = $_POST['destd'];
            $rct = $_POST['cttd'];


            $ins = new Db();
            $sql = "UPDATE `recruite`
                    SET `rtit`='$rtit',
                        `rdes`='$rdes',
                        `rct`='$rct'
                    WHERE rid = '$id'";
            $ins->select($sql);

            echo " <b><font color='green'> - Tin đã được sửa thành công</font></b>";
            header( "Refresh:2; url=index.php?page=quan-li-tuyen-dung");
          }
        ?>
        <!-- /.row -->

        <!-- /.row -->


        <!-- /.row -->

    </div>
    <!-- /.container-fluid -->

</div>
