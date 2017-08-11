<?php
ob_start();
session_start(); ?>
<!DOCTYPE html>
<html>
  <head>
    <?php
    require_once("include/connect.php");
    require_once("include/header.php");
    ?>

    <style media="screen">
    #fixNav{
    width: 100%;
    height: 35px;
    background-color: #000;
    display: none;
    box-shadow: 0px 2px 2px rgba(0,0,0,0.5); /*Đổ bóng cho menu*/
    position: fixed; /*Cho menu cố định 1 vị trí với top và left*/
    top: 0; /*Nằm trên cùng*/
    left: 0; /*Nằm sát bên trái*/
    z-index: 100000; /*Hiển thị lớp trên cùng*/
  }
  #fixNav ul{
    margin: 0;
    padding: 0;
  }
  #fixNav ul li{
    list-style:none inside;
    width: auto;
    float: left;
    line-height: 35px; /*Cho text canh giữa menu*/
    color: #fff;
    padding: 0;
    margin-right:10px;
    position: relative;
  }
  #fixNav ul li a{
    text-transform: uppercase;
    white-space: nowrap; /*Cho chữ trong menu không bị wrap*/
    padding: 0 10px;
    color: #fff;
    display: block;
    font-size: 0.8em;
    text-decoration: none;
  }
  /*CSS Style cho Submenu*/
  #fixNav ul li ul {
    position: absolute;
    width: auto;
    display: none;
    background-color: #252525;
    border-bottom: 3px solid #0082bb;
    padding-left: 5px;
  }

  #fixNav ul li ul li{
    display: block;
    padding:0;
    margin: 0;
    float: none; /*Bỏ float cho li cấp thứ 2*/
  }
  /* Hover cho submenu */
  #fixNav ul li:hover {
    /* Hover thì li sẽ đổi màu*/
    background-color: #252525;
  }
  #fixNav ul li:hover ul{
    /*Display ra submenu*/
    display: block;
  }

    </style>
    <script type="text/javascript">
    $(document).ready(function($) {
        //selector đến menu cần làm việc
        var TopFixMenu = $("#fixNav");
        // dùng sự kiện cuộn chuột để bắt thông tin đã cuộn được chiều dài là bao nhiêu.
        $(window).scroll(function(){
          // Nếu cuộn được hơn 150px rồi
      if($(this).scrollTop()>150){
        // Tiến hành show menu ra
      TopFixMenu.show();
      }else{
        // Ngược lại, nhỏ hơn 150px thì hide menu đi.
          TopFixMenu.hide();
      }}
  )
})
    </script>
  </head>
  <body>
    <div class="aplus">
      <a href="aplus/"><img src="http://sv1.upsieutoc.com/2017/08/07/20668503_900137976792213_1418625872_n.png" width="70px" height="30px"> Giao diện tiếp cận người khiếm thị</a>
    </div>
    <?php if(isset($_SESSION['bawuser'])) { ?>

    <nav id="fixNav">
  <ul>
    <li>BLACKANDWHITE</li>
    <li><a href="index.php?page=upload">Tải lên</a></li>
    <li>
      <a href="#">Tài liệu</a>
      <ul class="sub-menu">
        <li><a href="index.php?page=upload-manager">Quản lí tài liệu</a></li>
     </ul>
    </li>
    <li><a href="index.php?page=gop-y">Góp ý</a></li>
    <li><a href="index.php?page=doi-mat-khau">Đổi mật khẩu</a></li>
    <li><a href="index.php?page=dang-xuat">Log Out</a></li>
    <?php if(isset($_SESSION['bawuser']) && $_SESSION['bawuser'] == 'admin') {?>
      <li><a href="admin/">AdminCP</a></li>
      <?php } ?>
  </ul>
</nav>

<?php } ?>
    <?php
    require_once("include/banner.php");
    require_once("include/menuprimary.php");
    require_once("include/status.php");
    if(!isset($_GET['page'])){
      require_once("include/favorite.php");
    }
    ?>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-12">
          <div class="row">
            <?php
            require_once("include/leftmenu.php");
            if(isset($_GET['page'])){
              $id = $_GET['page'];
            }
            else $id = "";

            switch ($id) {
              case 'doi-mat-khau':
                require_once("include/changepass.php");
                break;
              case 'quen-mat-khau':
                require_once("include/forgotpass.php");
                break;
              case 'gop-y':
                require_once("include/feedback.php");
                break;
              case 'nha-tai-tro':
                require_once("include/donor.php");
                break;
              case 'lien-he':
                require_once("include/contact.php");
                break;
              case 'tim-kiem':
                require_once("include/find.php");
                break;
              case 'upload-manager':
                require_once("include/upload-manager.php");
                break;
              case 'upload':
                require_once("include/uploaddoc.php");
                break;
              case 'xem-tin-hoc-bong':
                require_once("include/read-scholarship.php");
                break;
              case 'tin-hoc-bong':
                require_once("include/scholarship.php");
                break;
              case 'xem-tin-tuyen-dung':
                require_once("include/read-recruite.php");
                break;
              case 'tin-tuyen-dung':
                require_once("include/recruite.php");
                break;
              case 'xem-sach':
                require_once("include/viewbook.php");
                break;
              case 'gioi-thieu':
                require_once("include/introduce.php");
                break;
              case 'dang-ky':
                  require_once("include/register.php");
                  break;
              case 'dang-xuat':
                  require_once("include/logout.php");
                  break;
              case 'dang-nhap':
                  require_once("include/login.php");
                  break;
              default:
                require_once("include/content.php");
                break;
            }
            ?>
          </div>
        </div>
      </div>
    </div>
    <hr>
    <!-- FOOTER -->
    <?php
    require_once("include/footer.php");
    ?>
    <div style="text-align:center;">  <a href="http://www.hitwebcounter.com" target="_blank">
<img src="http://hitwebcounter.com/counter/counter.php?page=6743426&style=0025&nbdigits=9&type=page&initCount=215" title="good hits" Alt="good hits"   border="0" >
</a>   </div>
  </body>

</html>
<?php ob_end_flush(); ?>
