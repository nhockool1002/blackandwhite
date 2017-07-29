<?php
  ob_start();
  session_start();

  include ("../config/config.php");
  include ROOT."/function/func.php";
  spl_autoload_register("loadClass");
  $obj = new Db();
?>
<!DOCTYPE html>
<html>
  <head>
    <?php
      include("inc/header.php");
      include("function/function.php");
    ?>
  </head>
  <body>
    <?php if(isset($_SESSION['bawuser'])){ ?>
    <div id="wrapper"> <!-- START WRAPPER -->
      <?php
      include("inc/navigation.php");
      if(isset($_GET['page'])){
        $id = $_GET['page'];
      }
      else $id = "";
      switch ($id) {
        case 'huong-dan-them-sach':
          include("inc/addbooktuts.php");
          break;
        case 'duyet-tai-lieu':
          include("inc/docapproval.php");
          break;
        case 'tai-lieu-cho-duyet':
          include("inc/docwaiting.php");
          break;
        case 'sua-thanh-vien':
          include("inc/memberedit.php");
          break;
        case 'them-thanh-vien':
          include("inc/memberadd.php");
          break;
        case 'quan-li-thanh-vien':
          include("inc/membermanager.php");
          break;

        case 'them-tin-hoc-bong':
          include("inc/scholarshipadd.php");
          break;
        case 'sua-tin-hoc-bong':
          include("inc/scholarshipedit.php");
          break;
        case 'quan-li-hoc-bong':
          include("inc/scholarshipad.php");
          break;


        case 'them-tin-tuyen-dung':
          include("inc/recruiteadd.php");
          break;
        case 'sua-tin-tuyen-dung':
          include("inc/recruiteupdate.php");
          break;
        case 'quan-li-tuyen-dung':
          include("inc/recruiteadmin.php");
          break;
        case 'sua-sach':
          include("inc/updatebook.php");
          break;
        case 'danh-sach-sach':
          include("inc/booklist.php");
          break;
        case 'them-sach':
          include("inc/addbook.php");
          break;
        case 'danh-sach-tac-gia':
          include("inc/authorlist.php");
          break;
        case 'them-tac-gia':
          include("inc/addauthor.php");
          break;
        case 'danh-sach-danh-muc':
          include("inc/catlist.php");
          break;
        case 'them-danh-muc':
          include("inc/addcat.php");
          break;
        default:
          include("inc/home.php");
          break;
      }

      ?>
    </div> <!-- END WRAPPER -->
  </body>
</html>

<?php }
else echo "<div class='alert alert-danger' role='alert'>
  <strong>Please Login With Admin Account for do somthing!</strong>- Click <a href='../index.php?page=dang-nhap' class='alert-link'>HERE</a> to go to login page .
</div>" ?>
