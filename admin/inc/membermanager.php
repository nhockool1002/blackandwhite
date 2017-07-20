<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Danh Sách Thành viên <small class="text-muted">[Members List]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i>   Danh Sách Thành viên
                    </li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- /.row -->
        <div class="catlist">
          <div class="row">
            <div class="col-sm-12">
              <p class="cat-title"> Danh Sách Thành viên</p>
              <table class="table">
      <thead>
        <tr>
          <th style="width: 80px;">ID</th>
          <th>Username</th>
          <th>Email</th>
          <th>Xóa</th>
          <th>Sửa</th>
        </tr>
      </thead>
      <tbody>
        <?php
          $sql = "SELECT * FROM `users`";
          $rows = $obj->select($sql);
          foreach ($rows as $row) {
        ?>
        <tr class="danger">
          <td class="success"><?php echo $row["userid"]; ?></td>
          <td><?php echo $row["username"]; ?></td>
          <td><?php echo $row["email"]; ?></td>
          <td><a class="btn btn-primary" href="index.php?page=sua-thanh-vien&id=<?php echo $row['userid']; ?>" role="button">Sửa</a></td>
          <td><button class="btn btn-danger deltv"  data-id="<?php echo $row["userid"]; ?>" name="button" id="del-cat-<?php echo $row["userid"]; ?>">Xóa</button></td>
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
