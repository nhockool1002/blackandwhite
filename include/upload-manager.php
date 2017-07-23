
<div class="col-sm-10">
    <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
    <center><div class="nav-link active" href="#"><span>QUản lý tài liệu</span></div></center>
  </nav>
  <?php if(isset($_SESSION['bawuser'])) { ?>
  <div class="row showcases">
    <div class="col-sm-12 text-sm-center">
      <hr>
      <p>Danh sách các tài liệu đã được tải lên</p>
      <center><table border="1px">
        <?php
            $name = $_SESSION['bawuser'];
            $sql = "SELECT * FROM users WHERE username='$name'";
            $obj = new Db();
            $row = $obj->select1($sql);
            $id = $row['userid'];

            $get = "SELECT * FROM memup WHERE iduser='$id'";
            $newobj = new Db();
            $rows = $obj->select($get);
            foreach ($rows as $row) {
        ?>
        <tr>
          <td width='200px'><?php echo $row['name']; ?></td>
          <td width='400px'><?php echo $row['des']; ?></td>
          <td width='250px'><?php echo $row['link']; ?></td>
          <td><?php if($row['stt'] ==0){
                    echo "<b><font color='red'><b>Đang chờ duyệt</b></font>";
                  } else{
                    echo "<b><font color='green'><b>Đã duyệt</b></font>";
                  } ?></td>
        </tr>
        <?php } ?>
      </table></center>
    </div>
  </div>
</div>

<?php }
else echo "Chức năng này yêu cầu phải đăng nhập"; ?>
