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
    <link rel="icon" href="../img/logo.png" type="image/x-icon"/>
<link rel="shortcut icon" href="../img/logo.png" type="image/x-icon"/>
  </head>
  <body onselectstart="return false" oncontextmenu="return false">
      <script>$(function(){if(window._userdata&&_userdata.page_desktop)window.location=_userdata.page_desktop});jQuery(document).ready(function($){var $ctsearch=$('#ct-search'),$ctsearchinput=$ctsearch.find('input.ct-search-input'),$body=$('html,body'),openSearch=function(){$ctsearch.data('open',true).addClass('ct-search-open');$ctsearchinput.focus();return false},closeSearch=function(){$ctsearch.data('open',false).removeClass('ct-search-open')};$ctsearchinput.on('click',function(e){e.stopPropagation();$ctsearch.data('open',true)});$ctsearch.on('click',function(e){e.stopPropagation();if(!$ctsearch.data('open')){openSearch();$body.off('click').on('click',function(e){closeSearch()})}else{if($ctsearchinput.val()===''){closeSearch();return false}}})});$(function(){$("img").on("error",function(){$(this).attr({alt:this.src,src:""})})});shortcut={all_shortcuts:{},add:function(a,b,c){var d={type:"keydown",propagate:!1,disable_in_input:!1,target:document,keycode:!1};if(c)for(var e in d)"undefined"==typeof c[e]&&(c[e]=d[e]);else c=d;d=c.target,"string"==typeof c.target&&(d=document.getElementById(c.target)),a=a.toLowerCase(),e=function(d){d=d||window.event;if(c.disable_in_input){var e;d.target?e=d.target:d.srcElement&&(e=d.srcElement),3==e.nodeType&&(e=e.parentNode);if("INPUT"==e.tagName||"TEXTAREA"==e.tagName)return}d.keyCode?code=d.keyCode:d.which&&(code=d.which),e=String.fromCharCode(code).toLowerCase(),188==code&&(e=","),190==code&&(e=".");var f=a.split("+"),g=0,h={"`":"~",1:"!",2:"@",3:"#",4:"$",5:"%",6:"^",7:"&",8:"*",9:"(",0:")","-":"_","=":"+",";":":","'":'"',",":"<",".":">","/":"?","":"|"},i={esc:27,escape:27,tab:9,space:32,"return":13,enter:13,backspace:8,scrolllock:145,scroll_lock:145,scroll:145,capslock:20,caps_lock:20,caps:20,numlock:144,num_lock:144,num:144,pause:19,"break":19,insert:45,home:36,"delete":46,end:35,pageup:33,page_up:33,pu:33,pagedown:34,page_down:34,pd:34,left:37,up:38,right:39,down:40,f1:112,f2:113,f3:114,f4:115,f5:116,f6:117,f7:118,f8:119,f9:120,f10:121,f11:122,f12:123},j=!1,l=!1,m=!1,n=!1,o=!1,p=!1,q=!1,r=!1;d.ctrlKey&&(n=!0),d.shiftKey&&(l=!0),d.altKey&&(p=!0),d.metaKey&&(r=!0);for(var s=0;k=f[s],s<f.length;s++)"ctrl"==k||"control"==k?(g++,m=!0):"shift"==k?(g++,j=!0):"alt"==k?(g++,o=!0):"meta"==k?(g++,q=!0):1<k.length?i[k]==code&&g++:c.keycode?c.keycode==code&&g++:e==k?g++:h[e]&&d.shiftKey&&(e=h[e],e==k&&g++);if(g==f.length&&n==m&&l==j&&p==o&&r==q&&(b(d),!c.propagate))return d.cancelBubble=!0,d.returnValue=!1,d.stopPropagation&&(d.stopPropagation(),d.preventDefault()),!1},this.all_shortcuts[a]={callback:e,target:d,event:c.type},d.addEventListener?d.addEventListener(c.type,e,!1):d.attachEvent?d.attachEvent("on"+c.type,e):d["on"+c.type]=e},remove:function(a){var a=a.toLowerCase(),b=this.all_shortcuts[a];delete this.all_shortcuts[a];if(b){var a=b.event,c=b.target,b=b.callback;c.detachEvent?c.detachEvent("on"+a,b):c.removeEventListener?c.removeEventListener(a,b,!1):c["on"+a]=!1}}},shortcut.add("Ctrl+U",function(){}),shortcut.add("Ctrl+S",function(){}),shortcut.add("Ctrl+Shift+I",function(){}),shortcut.add("Ctrl+Shift+J",function(){}),shortcut.add("Ctrl+Shift+K",function(){}),shortcut.add("Ctrl+K",function(){}),shortcut.add("F12",function(){}),shortcut.add("Ctrl+U",function(){});</script>
    <div class="fontset">
    <section>
      <div id="giaodientiepcan" class="binhthuong">
        <header>
          <div class="chucnangtop">
            <p class="tieudechucnangtop"><a href="http://blackandwhitelibrary.org">Giao diện chuẩn</a> <span class="font12">(Phím tắt <u>alt + 0</u>)<span class="cach"></span>
            <a class='increaseFont' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title=''>Tăng kích cỡ chữ </a><span class="font12">(Phím tắt  <u>alt+w</u>)</span><span class="cach"></span>
            <a class='resetFont' style='cursor: pointer; cursor: hand;font-size: 0.9em;'>Đặt lại cỡ chữ chuẩn </a><span class="font12">(Phím tắt  <u>alt+r</u>)</span><span class="cach"></span>
            <a class='decreaseFont' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title=''>Giảm kích cỡ chữ </a><span class="font12">(Phím tắt  <u>alt+e</u>)</span><span class="cach"></span><br>

            <a class='tieudechucnangtoptieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title='' href="http://blackandwhitelibrary.org/aplus">Chế độ bình thường</a><span class="font12">(Phím tắt  <u>alt+q</u>)</span><span class="cach"></span>
            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' href="http://blackandwhitelibrary.org/night">Chế độ ban đêm </a><span class="font12">(Phím tắt  <u>alt+z</u>)</span><span class="cach"></span>
            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title='' href="http://blackandwhitelibrary.org/hight">Chế độ tương phản cao</a><span class="font12">(Phím tắt  <u>alt+x</u>)</span><span class="cach"></span><br>
            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title='' href="index.php?page=timkiemtukhoa#noidung">Tìm kiếm theo từ khóa</a><span class="cach"></span>
            <?php
              if(isset($_SESSION['bawuser'])){
            ?>
            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title='' href="index.php?page=dangxuat#noidung">Đăng xuất</a><span class="cach"></span>
            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title='' href="index.php?page=doi-mat-khau#noidung">Đổi mật khẩu</a><span class="cach"></span>
            <?php }else{ ?>
            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title='' href="index.php?page=dangky#noidung">Đăng ký</a><span class="cach"></span>

            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title='' href="index.php?page=dangnhap#noidung">Đăng nhập</a><span class="cach"></span>
            <a class='tieudechucnangtop' style='cursor: pointer; cursor: hand;font-size: 0.9em;' title='' href="index.php?page=quen-mat-khau#noidung">Quên mật khẩu</a><span class="cach"></span>
            <?php } ?>
          </p>
          </div>
          <section><p class="vitrihientai">BLACK AND WHITE</p></section>
        </header>
        <?php
          if(isset($_SESSION['bawuser'])){
            $user = $_SESSION['bawuser'];
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
            <li><p class="itemmenuchinh"><a href="index.php?page=tailieunoibat">Tài liệu nỗi bật</a></p></li>
          <?php
            // if(isset($_GET['page'])){
            //   if($_GET['page'] == 'tailieu'){
                $sql="SELECT * FROM category ORDER BY catid ASC LIMIT 0,5";
                $obj = new Db();
                $rows = $obj->select($sql);
                foreach ($rows as $row) {

          ?>
            <li><p class="itemmenuchinh"><a href="index.php?page=viewcat&id=<?php echo $row['catid']; ?>"><?php echo $row['catname']; ?></a></p></li>
            <?php }  ?>
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
          case 'doi-mat-khau':
          require_once("inc/doimatkhau.php");
          break;
          case 'quen-mat-khau':
          require_once("inc/quenmatkhau.php");
          break;
            case 'tailieunoibat':
            require_once("inc/tailieunoibat.php");
            break;
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
