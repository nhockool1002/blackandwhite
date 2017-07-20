<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Danh Sách Học Bỗng <small class="text-muted">[Scholar List]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i>   Danh Sách Học Bỗng
                    </li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- /.row -->
        <div class="catlist">
          <div class="row">
            <div class="col-sm-12">
              <p class="cat-title"> Danh Sách Học Bỗng</p>
              <table class="table">
      <thead>
        <tr>
          <th style="width: 80px;">ID Tin</th>
          <th>Tiêu đề</th>
          <th>Mổ tả</th>
          <th>Xóa</th>
          <th>Sửa</th>
        </tr>
      </thead>
      <tbody>
        <?php
          $sql = "SELECT * FROM `scholarship`";
          $rows = $obj->select($sql);
          foreach ($rows as $row) {
        ?>
        <tr class="danger">
          <td class="success"><?php echo $row["sid"]; ?></td>
          <td><?php echo $row["stit"]; ?></td>
          <td><?php echo $row["sdes"]; ?></td>
          <td><a class="btn btn-primary" href="index.php?page=sua-tin-hoc-bong&id=<?php echo $row['sid']; ?>" role="button">Sửa</a></td>
          <td><button class="btn btn-danger delhb"  data-id="<?php echo $row["sid"]; ?>" name="button" id="del-cat-<?php echo $row["sid"]; ?>">Xóa</button></td>
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
