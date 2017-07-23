<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Tài liệu chờ duyệt <small class="text-muted">[Document Awaiting Approval]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i> Tài liệu chờ duyệt
                    </li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- /.row -->
        <div class="catlist">
          <div class="row">
            <div class="col-sm-12">
              <p class="cat-title">Tài liệu chờ duyệt</p>
              <table class="table">
                <div class="alert alert-danger" role="alert">
                  Khi nhấn vào DUYỆT trạng thái tài liệu của thành viên sẽ chuyển thành đã duyệt, nhưng tài liệu chỉ xuất hiện khi admin upload tài liệu lên.
                </div>
      <thead>
        <tr>
          <th style="width: 80px;">ID</th>
          <th>Tên sách</th>
          <th>Mô tả</th>
          <th>Liên kết</th>
          <th>Username</th>
          <th>Duyệt</th>
        </tr>
      </thead>
      <tbody>
        <?php
          $sql = "SELECT * FROM `memup` INNER JOIN `users` ON memup.iduser = users.userid";
          $rows = $obj->select($sql);
          foreach ($rows as $row) {
        ?>
        <tr class="danger">
          <td class="success"><?php echo $row["id"]; ?></td>
          <td><?php echo $row["name"]; ?></td>
          <td><?php echo $row["des"]; ?></td>
          <td><?php echo $row["link"]; ?></td>
          <td><?php echo $row["username"]; ?></td>
          <?php if($row['stt'] == 0 ) { ?><td><a class="btn btn-primary" href="index.php?page=duyet-tai-lieu&id=<?php echo $row['id']; ?>" role="button">Duyệt</a></td><?php } else echo "<td>Done</td>"; ?>
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
