<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Thêm Tác Giả Mới <small class="text-muted">[Add New Author]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i> Thêm Tác Giả Mới
                    </li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- /.row -->
        <div class="catlist">
          <div class="row">
            <div class="col-sm-6">
              <p class="cat-title">Danh sách tác giả</p>
              <table class="table">
      <thead>
        <tr>
          <th>ID Tác giả</th>
          <th>Tên Tác giả</th>
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
        </tr>
        <?php
          }
        ?>
      </tbody>
    </table>
            </div>
            <div class="col-sm-6">
              <p class="cat-title">Thêm Tác giả</p>
              <br>
              <div class="row">
                <div class="col-sm-3">
                  <p class="newcatname">Nhập tên tác giả :</p>
                </div>
                <div class="col-sm-6">
                <input type="text" name="" class="form-controls" size="40" id="addauthor-name">
                </div>
                <div class="col-sm-3" id="checkname">
                </div>
              </div>
              <div class="row">
                <div class="col-sm-5">

                </div>
                <div class="col-sm-7">
                  <button type="button" class="btn btn-primary" id="addauthor-button">Thêm</button>
                </div>
              </div>
              <br>
              <div class="row">
                <div class="col-sm-12 text-sm-center">
                  <div class="alert alert-info" role="alert" id="addauthor-status">
                    <strong>Nhập các thông tin cho tác giả mới</strong>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <hr>
        <!-- /.row -->

        <!-- /.row -->


        <!-- /.row -->

    </div>
    <!-- /.container-fluid -->

</div>
