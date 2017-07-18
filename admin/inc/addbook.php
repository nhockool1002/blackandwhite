<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Thêm Sách Mới <small class="text-muted">[Add New Book]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i> Thêm Sách Mới
                    </li>
                </ol>
            </div>
        </div>
        <hr />
        <!-- /.row -->
        <form method="post" enctype="multipart/form-data" id="formaddsach">

            <label for="pdname">Tên sách </label>  <label class="label label-warning"> * Important</label>
            <input type="text" class="form-control" id="pdname" placeholder="Nhập tên sách" name="bookname">
            <small class="text-muted">Tên sản phẩm sẽ hiển thị cho khách hàng lựa chọn</small>
            <br>
            <br>
            <label for="pdname">Mô tả sách </label>  <label class="label label-warning"> * Important</label>
            <textarea name="bookdes" rows="4" cols="80" class="form-control"></textarea>
            <small class="text-muted">*Đoạn ngắn hiển thị cho người dùng xem</small>
            <br>
            <br>
            <label for="pdcat">Chọn tác giả</label>  <label class="label label-warning"> * Important</label>
            <select class="form-control" id="pdcat" name="bookauthor">
              <option value="0" selected="selected">--- Chọn tác giả </option>
              <?php
                $obj = new Db();
                $sql = "SELECT * FROM author";
                $rows = $obj->select($sql);
                foreach ($rows as $row) {
              ?>
              <option value="<?php echo $row['authorid']; ?>"><?php echo $row['authorid']." - ".$row['authorname']; ?></option>
              <?php
            }
              ?>
            </select>
            <br>

            <label for="pdcat">Chọn danh mục</label>  <label class="label label-warning"> * Important</label>
            <select class="form-control" id="pdcat" name="bookcat">
              <option value="0" selected="selected">--- Chọn danh mục </option>
              <?php
                $obj = new Db();
                $sql = "SELECT * FROM category";
                $rows = $obj->select($sql);
                foreach ($rows as $row) {
              ?>
              <option value="<?php echo $row['catid']; ?>"><?php echo $row['catid']." - ".$row['catname']; ?></option>
              <?php
            }
              ?>
            </select>
            <br>

            <label for="pdprice">Nhà xuất bản</label>  <label class="label label-warning"> * Important</label>
            <input type="text" class="form-control" id="bookpublish" placeholder="Nhập tên nhà xuất bản" name="bookpublish">
            <br>

            <label for="pdprice">Năm xuất bản (Tái bản)</label>  <label class="label label-warning"> * Important</label>
            <input type="text" class="form-control" id="bookyear" placeholder="Nhập năm xuất bản (hoặc tái xuất bản))" name="bookyear">
            <br>

            <label for="pdimg">Hình đại diện</label>
            <input type="file" class="form-control-file" id="pdimg" name="bookimg">
            <small class="text-muted"><font color="red"><b>*Vui lòng chọn hình cho chính xác, vì hình ảnh của tài liệu là mục không thể thay đổi, nếu upload sai hình vui lòng liên hệ admin.</b></font></small>
            <br>
            <br>
            <label for="pdprice">Liên kết hiển thị dữ liệu</label>  <label class="label label-warning"> * Important</label>
            <input type="text" class="form-control" id="pdprice" placeholder="Nhập giá sản phẩm" name="booklink">
            <small class="text-muted">*Liên kết [iframe] được publish từ Google Docs</small>
            <br>
            <br>
            <label>Sách nổi bật</label>
            <select class="form-control" id="pddvt" name="bookspecial">
              <option value="0" selected="selected">-- Không </option>
              <option value="1">-- Có </option>
            </select>
            <br>
            <br>
            <label><font color="red"><b><label>SÁCH BẢN QUYỀN</b></font></label>
            <select class="form-control" id="pddvt" name="bookcredit">
              <option value="0" selected="selected">-- Không </option>
              <option value="1">-- Có </option>
            </select>
            </label>
            <br>
            <br>
          <center>
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
            $bookname = $_POST['bookname'];
            $bookdes = $_POST['bookdes'];
            $bookauthor = $_POST['bookauthor'];
            $bookcat = $_POST['bookcat'];
            $bookpublish = $_POST['bookpublish'];
            $bookyear = $_POST['bookyear'];
            $bookimg = $_FILES['bookimg']['name'];
            $booklink = $_POST['booklink'];
            $bookspecial = $_POST['bookspecial'];
            $bookcredit = $_POST['bookcredit'];

            $target = ROOT."/upload/".$bookimg;
            $ins = new Db();
            $sql = "INSERT INTO `books`(`bookname`,`des`, `author`, `catid`, `nxb`, `year`,`filename`,`link`, `spec`, `credits`)
                    VALUES ('$bookname','$bookdes' ,'$bookauthor' ,'$bookcat','$bookpublish','$bookyear', '$bookimg','$booklink','$bookspecial','$bookcredit')";
            $ins->select($sql);
            move_uploaded_file($_FILES['bookimg']['tmp_name'],$target);

            echo $target." <b><font color='green'> - Sách đã được thêm thành công</font></b>";
            header( "Refresh:2; url=index.php?page=danh-sach-sach");
          }
        ?>
        <!-- /.row -->

        <!-- /.row -->


        <!-- /.row -->

    </div>
    <!-- /.container-fluid -->

</div>
