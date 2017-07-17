<?php
  $id = $_GET['id'];
  $sql1 = "SELECT * FROM `books` INNER JOIN `author` ON books.author = author.authorid INNER JOIN `category` ON books.catid = category.catid WHERE bookid = '$id'";
  $obj1 = new Db();
  $row = $obj1->select1($sql1);
  $bookname = $row['bookname'];
  $bookauthor = $row['author'];
  $bookdes = $row['des'];
  $bookcat = $row['catid'];
  $bookimg = $row['filename'];
  $bookpublish = $row['nxb'];
  $bookyear = $row['year'];
  $booklink = $row['link'];
  $bookspecial = $row['spec'];
?>

<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Sửa sách <small class="text-muted">[Edit Book]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i> Sửa sách
                    </li>
                </ol>
            </div>
        </div>
        <hr />
        <!-- /.row -->
        <form method="post" enctype="multipart/form-data" id="formaddsach">

            <label for="pdname">Tên sách </label>  <label class="label label-warning"> * Important</label>
            <input type="text" class="form-control" id="pdname" placeholder="Nhập tên sách" name="bookname" value="<?php echo $row['bookname']; ?>">
            <small class="text-muted">Tên sản phẩm sẽ hiển thị cho khách hàng lựa chọn</small>
            <br>
            <br>
            <label for="pdname">Mô tả sách </label>  <label class="label label-warning"> * Important</label>
            <textarea name="bookdes" rows="4" cols="80" class="form-control"><?php echo $row['des']; ?></textarea>
            <small class="text-muted">*Đoạn ngắn hiển thị cho người dùng xem</small>
            <br>
            <br>
            <label for="pdcat">Chọn tác giả</label>  <label class="label label-warning"> * Important</label>
            <select class="form-control" id="pdcat" name="bookauthor">
              <option value="0">--- Chọn tác giả </option>
              <?php
                $obj = new Db();
                $sql = "SELECT * FROM author";
                $rows = $obj->select($sql);
                foreach ($rows as $row) {
              ?>
              <option value="<?php echo $row['authorid']; ?>" <?php if($row['authorid'] == $bookauthor) echo "selected='selected'"; ?>><?php echo $row['authorid']." - ".$row['authorname']; ?></option>
              <?php
            }
              ?>
            </select>
            <br>

            <label for="pdcat">Chọn danh mục</label>  <label class="label label-warning"> * Important</label>
            <select class="form-control" id="pdcat" name="bookcat">
              <option value="0">--- Chọn danh mục </option>
              <?php
                $obj = new Db();
                $sql = "SELECT * FROM category";
                $rows = $obj->select($sql);
                foreach ($rows as $row) {
              ?>
              <option value="<?php echo $row['catid']; ?>"<?php if($row['catid'] == $bookcat) echo "selected='selected'"; ?>><?php echo $row['catid']." - ".$row['catname']; ?></option>
              <?php
            }
              ?>
            </select>
            <br>

            <label for="pdprice">Nhà xuất bản</label>  <label class="label label-warning"> * Important</label>
            <input type="text" class="form-control" id="bookpublish" placeholder="Nhập tên nhà xuất bản" name="bookpublish" value="<?php echo $bookpublish; ?>">
            <br>

            <label for="pdprice">Năm xuất bản (Tái bản)</label>  <label class="label label-warning"> * Important</label>
            <input type="text" class="form-control" id="bookyear" placeholder="Nhập năm xuất bản (hoặc tái xuất bản))" name="bookyear" value="<?php echo $bookyear; ?>">
            <br>

            <label for="pdprice">Liên kết hiển thị dữ liệu</label>  <label class="label label-warning"> * Important</label>
            <input type="text" class="form-control" id="pdprice" placeholder="Nhập giá sản phẩm" name="booklink" value='<?php echo $booklink; ?>'>
            <small class="text-muted">*Liên kết [iframe] được publish từ Google Docs</small>
            <br>
            <br>
            <label>Sách nổi bật</label>
            <select class="form-control" id="pddvt" name="bookspecial">
              <option value="0" <?php if($bookspecial == 0) echo "selected='selected'" ?>>-- Không </option>
              <option value="1" <?php if($bookspecial == 1) echo "selected='selected'" ?>>-- Có </option>
            </select>
            <br>
            <br>
          <center>
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
            $bookname = $_POST['bookname'];
            $bookdes = $_POST['bookdes'];
            $bookauthor = $_POST['bookauthor'];
            $bookcat = $_POST['bookcat'];
            $bookpublish = $_POST['bookpublish'];
            $bookyear = $_POST['bookyear'];
            $booklink = $_POST['booklink'];
            $bookspecial = $_POST['bookspecial'];


            $ins = new Db();
            $sql = "UPDATE `books`
                    SET `bookname`='$bookname',
                        `author`='$bookauthor',
                        `nxb`='$bookpublish',
                        `year`='$bookyear',
                        `link`='$booklink',
                        `des`='$bookdes',
                        `catid`='$bookcat',
                        `spec`='$bookspecial'
                    WHERE bookid = '$id'";
            $ins->select($sql);

            echo $target." <b><font color='green'> - Sách đã được sửa thành công</font></b>";
            header( "Refresh:2; url=index.php?page=danh-sach-sach");
          }
        ?>
        <!-- /.row -->

        <!-- /.row -->


        <!-- /.row -->

    </div>
    <!-- /.container-fluid -->

</div>
