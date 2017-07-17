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
  </head>
  <body>
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
  </body>
</html>
<?php ob_end_flush(); ?>
