<?php include ("../config/config.php");
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
            <a class='decreaseFont' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title=''>Giảm kích cỡ chữ </a><span class="font12">(Phím tắt  <u>alt+e</u>)</span><span class="cach"></span></p>
          </div>
          <section><p class="vitrihientai">Bạn đang ở: Trang chủ</p></section>
        </header>
        <a name="menuchinh"></a>
        <div class="menuchinh" id="menuchinh">Menu Chính (Phím tắt <u>6</u>)</div>
        <ul>
          <li><p class="itemmenuchinh"><a href="index.php?page=trangchu">Trang chủ (Phím tắt <u>alt+a</u>)</a></p></li>
          <li><p class="itemmenuchinh"><a href="index.php?page=gioithieu">Giới thiệu (Phím tắt <u>alt+j</u>)</a></p></li>
          <li><p class="itemmenuchinh"><a href="index.php?page=tailieu">Tài liệu (Phím tắt <u>alt+l</u>)</a></p></li>
          <li><p class="itemmenuchinh"><a href="index.php?page=vieclam">Tìm kiếm việc làm (Phím tắt <u>alt+c</u>)</a></p></li>
          <li><p class="itemmenuchinh"><a href="index.php?page=hocbong">Học bỗng (Phím tắt <u>alt+n</u>)</a></p></li>
          <li><p class="itemmenuchinh"><a href="index.php?page=nhataitro">Nhà tài trợ (Phím tắt <u>alt+m</u>)</a></p></li>
          <li><p class="itemmenuchinh"><a href="index.php?page=lienhe">Liên hệ (Phím tắt <u>alt+p</u>)</a></p></li>
        </ul>
        <a name="menuchinhchinh"></a>
        <div class="menuchinh" id="menuchinh">Menu chính (Phím tắt <u>7</u>)</div>
        <p style="text-align:center; font-weight:bolder;"> Tác giả</p>
        <ul>
          <?php
            if(isset($_GET['page'])){
              if($_GET['page'] == 'tailieu'){
                $sql="SELECT * FROM author ORDER BY authorid ASC LIMIT 0,5";
                $obj = new Db();
                $rows = $obj->select($sql);
                foreach ($rows as $row) {

          ?>
            <li><p class="itemmenuchinh"><a href="index.php?page=viewauthor&id=<?php echo $row['authorid']; ?>"><?php echo $row['authorname']; ?></a></p></li>
            <?php }}}  ?>
        </ul>
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
          case 'gioithieu':
            require_once("inc/intro.php");
            break;

          default:
            require_once("inc/content.php");
            break;
        }
        ?>
      </div>
  </section>
    </div>
  </body>
</html>
