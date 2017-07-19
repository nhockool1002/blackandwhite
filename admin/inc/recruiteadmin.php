<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Danh Sách Tin Tuyển Dụng <small class="text-muted">[Recruitment List]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i> Danh Sách Tin Tuyển Dụng
                    </li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- /.row -->
        <div class="catlist">
          <div class="row">
            <div class="col-sm-12">
              <p class="cat-title">Danh Sách Tin Tuyển Dụng</p>
              <table class="table">
      <thead>
        <tr>
          <th style="width: 80px;">ID Tin</th>
          <th>Tiêu đề</th>
          <th>Mổ ta</th>
          <th>Xóa</th>
          <th>Sửa</th>
        </tr>
      </thead>
      <tbody>
        <?php
          $sql = "SELECT * FROM `recruite`";
          $rows = $obj->select($sql);
          foreach ($rows as $row) {
        ?>
        <tr class="danger">
          <td class="success"><?php echo $row["rid"]; ?></td>
          <td><?php echo $row["rtit"]; ?></td>
          <td><?php echo $row["rdes"]; ?></td>
          <td><a class="btn btn-primary" href="index.php?page=sua-tin-tuyen-dung&id=<?php echo $row['rid']; ?>" role="button">Sửa</a></td>
          <td><button class="btn btn-danger deltd"  data-id="<?php echo $row["rid"]; ?>" name="button" id="del-cat-<?php echo $row["rid"]; ?>">Xóa</button></td>
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


        <!-- /.row -->


        <!-- /.row -->

    </div>
    <!-- /.container-fluid -->

</div>
