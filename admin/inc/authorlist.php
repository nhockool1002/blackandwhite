<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Danh Sách Tác Giả <small class="text-muted">[Author List]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i> Danh Sách Tác Giả
                    </li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- /.row -->
        <div class="catlist">
          <div class="row">
            <div class="col-sm-12">
              <p class="cat-title">Danh Sách Tác Giả</p>
              <table class="table">
      <thead>
        <tr>
          <th>ID Tác giả</th>
          <th>Tên mục</th>
          <th>Xóa</th>
          <th>Sửa</th>

        </tr>
      </thead>
      <tbody>
        <?php
          $sql = "SELECT * FROM author";
          $rows = $obj->select($sql);
          foreach ($rows as $row) {
        ?>
        <tr class="danger">
          <td class="success"><?php echo $row["authorid"]; ?></td>
          <td><?php echo $row["authorname"]; ?></td>
          <td><button class="btn btn-primary updateau"  data-id="<?php echo $row["authorid"]; ?>" name="button" id="edit-cat-<?php echo $row["authorid"]; ?>">Sửa</button></td>
          <td><button class="btn btn-danger delau"  data-id="<?php echo $row["authorid"]; ?>" name="button" id="del-cat-<?php echo $row["authorid"]; ?>">Xóa</button></td>

        </tr>
        <?php
          }
        ?>
      </tbody>
    </table>
            </div>

          </div>
        </div>
        <hr>
        <!-- /.row -->
        <div class="row">
          <div class="col-sm-12">
            <p class="cat-title">Sửa Tác Giả</p>
            <table class="table">
    <tbody>
      <tr class="primary">
        <td class="success" width="36%">ID :</td>
        <td class="success" width="34%"><input type="text" name="" class="form-controls" size="40" id="auid-edit" disabled></td>
        <td class="success" id="kqAUID" width="30%"></td>
      </tr>
      <tr class="primary">
        <td class="success">Tên tác giả :</td>
        <td class="success"><input type="text" name="" class="form-controls" size="40" id="auname-edit"></td>
        <td class="success" width="30%"></td>
      </tr>
      <tr class="primary">
        <td class="success" colspan="3" id="au-status" style="text-align: center;">Vui lòng chọn tác giả cần sửa</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align:center;">
          <div class="btn btn-warning" href="#" role="button" id="au-update" onclick="return confirmAction()">Lưu lại</div>
        </td>
      </tr>
    </tbody>
  </table>
          </div>
        </div>

        <!-- /.row -->


        <!-- /.row -->

    </div>
    <!-- /.container-fluid -->

</div>
