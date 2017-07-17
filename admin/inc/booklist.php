<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Danh Sách Sách <small class="text-muted">[Books List]</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-star"></i> Danh Sách Sách
                    </li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- /.row -->
        <div class="catlist">
          <div class="row">
            <div class="col-sm-12">
              <p class="cat-title">Danh Sách Sách</p>
              <table class="table">
      <thead>
        <tr>
          <th style="width: 80px;">ID Sách</th>
          <th>Tên sách</th>
          <th>Tác giả</th>
          <th>Thể loại</th>
          <th>Xóa</th>
          <th>Sửa</th>
        </tr>
      </thead>
      <tbody>
        <?php
          $sql = "SELECT * FROM `books` INNER JOIN `author` ON books.author = author.authorid INNER JOIN `category` ON books.catid = category.catid";
          $rows = $obj->select($sql);
          foreach ($rows as $row) {
        ?>
        <tr class="danger">
          <td class="success"><?php echo $row["bookid"]; ?></td>
          <td><?php echo $row["bookname"]; ?></td>
          <td><?php echo $row["authorname"]; ?></td>
          <td><?php echo $row["catname"]; ?></td>
          <td><a class="btn btn-primary" href="index.php?page=sua-sach&id=<?php echo $row['bookid']; ?>" role="button">Sửa</a></td>
          <td><button class="btn btn-danger delbook"  data-id="<?php echo $row["bookid"]; ?>" name="button" id="del-cat-<?php echo $row["bookid"]; ?>">Xóa</button></td>
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
