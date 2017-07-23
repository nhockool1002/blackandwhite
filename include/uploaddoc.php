
<div class="col-sm-10">
    <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
    <center><div class="nav-link active" href="#"><span>Upload Tài Liệu</span></div></center>
  </nav>
  <?php if(isset($_SESSION['bawuser'])) { ?>
  <div class="row showcases">
    <div class="col-sm-12 text-sm-center">
      <p>Vui lòng đọc rõ các điều khoản trước khi tiến hanh upload.</p>
      <p><font color="red" style="font-weight:bold;">- Tại liệu là định dạng văn bản (PDF,DOCX,DOC,PPT ..)</p></font>
      <p><font color="red" style="font-weight:bold;">- Cung cấp thêm nguồn của tài liệu nếu có.</p></font>
      <p><font color="red" style="font-weight:bold;">- Tài liệu bản quyền cần phải xem xét</p></font>
      <p><font color="red" style="font-weight:bold;">- Tài liệu phải chờ ADMIN xem xét mới quyết định có upload lên hay không.</p></font>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-12">
      <hr>
      <form method=post>
        <fieldset class="form-group">
          <legend>FORM UPLOAD</legend>
          <table>
            <tr>
            <td><p>Tên tài liệu :</p></td>
            <td><input type="text" name="name" value=""></td>
            </tr>
            <tr>
            <td><p>Mô tả tài liệu :</p></td>
            <td><textarea name="des" rows="3" cols="40"></textarea></td>
            </tr>
            <tr>
            <td><p>Liên kết tải :</p></td>
            <td><input type="text" name="link" value=""></td>
            </tr>
          </table>
          <small><font color="blue" style="font-weight:bold;">*Chúng tôi không cho phép việc upload trực tiếp lên "Black and White" vì vấn đê bảo mật cũng như bản quyền, tài liệu của quý bạn đọc vui lòng upload lên
          Google Drive, One Drive, Fshare, 4Share hoặc bất kỳ một hosting nào và để link lại trên đây, đội ngũ admin sẽ kiểm tra tài liệu và upload lên trang chủ. Xin chân thành cảm ơn đóng góp của bạn</font></small>
        </fieldset>
        <button type="submit" class="btn btn-primary" name="submit-btn">Submit</button>
      </form>
      <hr>
      <?php
      if(isset($_POST["submit-btn"])){
          $name = $_POST['name'];
          $des = $_POST['des'];
          $link = $_POST['link'];
          $stt = 0;

          $user = $_SESSION['bawuser'];
          $obj = new Db();
          $sqluser = "SELECT * FROM users WHERE username = '$user'";
          $row = $obj->select1($sqluser);
          $iduser = $row['userid'];



          $ins = new Db();
          $sql = "INSERT INTO `memup`(`name`, `des`, `link`, `iduser`, `stt`) VALUES ('$name','$des','$link','$iduser','$stt')";
          $ins->select($sql);

          echo "<b><font color='green'> - Sách đã được gửi cho admin, vui lòng chờ duyệt</font></b>";
          // header( "Refresh:2; url=index.php");
        }
      ?>
      <hr>
    </div>
  </div>
</div>

<?php }
else echo "Chức năng này yêu cầu phải đăng nhập"; ?>
