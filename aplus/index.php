<?php
session_start();
ob_start();
include ("../config/config.php");
include ROOT."/function/func.php";
spl_autoload_register("loadClass");
$obj = new Db(); ?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Black and White</title>
    <link
          rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
          integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
          crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <script
          src="http://code.jquery.com/jquery-3.2.1.js"
          integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
          crossorigin="anonymous">
    </script>
    <script src="js/keyboard.js" charset="utf-8"></script>
    <script src="js/function.js" charset="utf-8"></script>
  </head>
  <body>
    <div class="fontset">
    <section>
      <div id="giaodientiepcan" class="binhthuong">
        <header>
          <div class="chucnangtop">
            <p class="tieudechucnangtop"><a href="http://blackandwhitelibrary.org">Giao diện chuẩn</a> <span class="font12">(Phím tắt <u>alt + 0</u>)<span class="cach"></span>
            <a class='increaseFont' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title=''>Tăng kích cỡ chữ </a><span class="font12">(Phím tắt  <u>alt+w</u>)</span><span class="cach"></span>
            <a class='resetFont' style='cursor: pointer; cursor: hand;font-size: 0.9em;'>Đặt lại cỡ chữ chuẩn </a><span class="font12">(Phím tắt  <u>alt+r</u>)</span><span class="cach"></span>
            <a class='decreaseFont' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title=''>Giảm kích cỡ chữ </a><span class="font12">(Phím tắt  <u>alt+e</u>)</span><span class="cach"></span><br>

            <a class='tieudechucnangtoptieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title=''>Chế độ bình thường</a><span class="font12">(Phím tắt  <u>alt+q</u>)</span><span class="cach"></span>
            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;'>Chế độ ban đêm </a><span class="font12">(Phím tắt  <u>alt+z</u>)</span><span class="cach"></span>
            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title=''>Chế độ tương phản cao</a><span class="font12">(Phím tắt  <u>alt+x</u>)</span><span class="cach"></span><br>
            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title='' href="index.php?page=timkiemtukhoa#noidung">Tìm kiếm theo từ khóa</a><span class="cach"></span>
            <?php
              if(isset($_SESSION['baw'])){
            ?>
            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title='' href="index.php?page=dangxuat#noidung">Đăng xuất</a><span class="cach"></span>
            <?php }else{ ?>
            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title='' href="index.php?page=dangky#noidung">Đăng ký</a><span class="cach"></span>

            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title='' href="index.php?page=dangnhap#noidung">Đăng nhập</a><span class="cach"></span>
            <?php } ?>
          </p>
          </div>
          <section><p class="vitrihientai">BLACK AND WHITE</p></section>
        </header>
        <?php
          if(isset($_SESSION['baw'])){
            $user = $_SESSION['baw'];
            $check = "SELECT * FROM users WHERE username='$user' AND confirm = 1";
            $obj = new Db();
            $obj->select($check);
            $dem = $obj->getRowCount();
            if($dem == 1){
            ?>
              <div class="alert alert-info text-sm-center" role="alert">
                <strong>Xin chào <?php echo $user; ?>,</strong> chúc bạn vui vẻ khi tham gia Black And White.
              </div>
              <?php
            }else{

              ?>

              <div class="alert alert-warning text-sm-center" role="alert">
                <strong>Xin chào <?php echo $user; ?>,</strong> bạn không phải người khiếm thị nên sẽ không xem được sách tại giao diện này, bạn xem được sách ở giao diện Bình Thường.
              </div>
              <?php
            }
          }else{
            ?>
            <div class="alert alert-danger text-sm-center" role="alert">
              <strong>Bạn chưa đăng nhập</strong>
            </div>
            <?php
          }
        ?>
        <a name="menuchinh"></a>
        <div class="menuchinh" id="menuchinh">Menu Chính (Phím tắt <u>6</u>)</div>
        <ul>
          <li><p class="itemmenuchinh"><a href="index.php?page=trangchu">Trang chủ (Phím tắt <u>alt+a</u>)</a></p></li>
          <li><p class="itemmenuchinh"><a href="index.php?page=gioithieu">Giới thiệu (Phím tắt <u>alt+j</u>)</a></p></li>
          <li><p class="itemmenuchinh"><a href="index.php?page=tailieu">Tài liệu (Phím tắt <u>alt+l</u>)</a></p></li>
          <li><p class="itemmenuchinh"><a href="index.php?page=danhsachvieclam">Tìm kiếm việc làm (Phím tắt <u>alt+c</u>)</a></p></li>
          <li><p class="itemmenuchinh"><a href="index.php?page=danhsachhocbong">Học bỗng (Phím tắt <u>alt+n</u>)</a></p></li>
          <li><p class="itemmenuchinh"><a href="index.php?page=nhataitro">Nhà tài trợ (Phím tắt <u>alt+m</u>)</a></p></li>
          <li><p class="itemmenuchinh"><a href="index.php?page=lienhe">Liên hệ (Phím tắt <u>alt+p</u>)</a></p></li>
        </ul>
        <a name="menuchinhchinh"></a>
        <div class="menuchinh" id="menuchinh">Menu Phụ (Phím tắt <u>7</u>)</div>
        <p style="text-align:center; font-weight:bolder;"> Danh mục</p>
        <ul>
          <?php
            if(isset($_GET['page'])){
              if($_GET['page'] == 'tailieu'){
                $sql="SELECT * FROM category ORDER BY catid ASC LIMIT 0,5";
                $obj = new Db();
                $rows = $obj->select($sql);
                foreach ($rows as $row) {

          ?>
            <li><p class="itemmenuchinh"><a href="index.php?page=viewcat&id=<?php echo $row['catid']; ?>"><?php echo $row['catname']; ?></a></p></li>
            <?php }}}  ?>
        </ul>

        <!-- Phân nội dung  -->
        <a name="noidung"></a>
        <div class="menuchinh" id="menuchinh">Nội dung (Phím tắt <u>9</u>)</div>
        <?php
        if(isset($_GET['page'])){
          $page = $_GET['page'];
        }
        else $page = "";
        switch ($page) {
          case 'dangxuat':
            require_once("inc/dangxuat.php");
            break;
          case 'dangky':
            require_once("inc/dangky.php");
            break;
          case 'dangnhap':
            require_once("inc/dangnhap.php");
            break;
          case 'timkiemtukhoa':
            require_once("inc/timkiemtukhoa.php");
            break;
          case 'lienhe':
            require_once("inc/lienhe.php");
            break;
          case 'nhataitro':
            require_once("inc/nhataitro.php");
            break;
          case 'hocbong':
            require_once("inc/hocbong.php");
            break;
          case 'danhsachhocbong':
            require_once("inc/danhsachhocbong.php");
            break;
          case 'tailieu':
            require_once("inc/tailieu.php");
            break;
          case 'gioithieu':
            require_once("inc/intro.php");
            break;
          case 'viewcat':
            require_once("inc/viewcat.php");
            break;
          case 'vieclam':
            require_once("inc/vieclam.php");
            break;
          case 'danhsachvieclam':
            require_once("inc/danhsachvieclam.php");
            break;
          case 'viewbook':
            require_once("inc/viewbook.php");
            break;
          default:
            require_once("inc/content.php");
            break;
        }
        ?>
      </div>
      <br>
      <br>
      <br>
      <footer>
        <div class="footer" style="background-color:grey; height:3em; font-size:1.5em;text-align:center">
            <p style="color:white;">BLACK AND WHITE PROJECT</p>
        </div>
      </footer>
  </section>
    </div>
  </body>
</html>

<?php ob_end_flush(); ?>
