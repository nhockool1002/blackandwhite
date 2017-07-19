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
    ?>
    <!-- AJAX Get Info Category -->
    <script type="text/javascript">
    $(document).ready(function() { // Vì js này nằm trên đoạn html, nên phải đợi ready rồi mới add event click vào
      $(".updatecat").click(function() {
      var id = $(this).data('id');
      console.log(id);
      $.get("function/getcat.php",{id : id},function(data){
        var obj = JSON.parse(data);
        $("#catid-edit").val(obj.catid);
        $("#catname-edit").val(obj.catname);
        $("#catname-none-edit").val(obj.catnameseo);
        $("#cat-status").html("Điền dữ liệu mới vào Form và nhấn lưu lại");
        $("#cat-status").css("color","red");
        $("#cat-status").css("text-align","center");
        $("#cat-status").css("font-weight","bold");
        $("#kqCATID").html("Dữ liệu này không thể thay đổi");
        $("#kqCATID").css("color","red");
        $("#kqCATID").css("text-align","left");
        $("#kqCATID").css("font-weight","bold");
      })
      });
    })
    </script>
    <!-- AJAX Get Info Author -->
    <script type="text/javascript">
    $(document).ready(function() { // Vì js này nằm trên đoạn html, nên phải đợi ready rồi mới add event click vào
      $(".updateau").click(function() {
      var id = $(this).data('id');
      console.log(id);
      $.get("function/getau.php",{id : id},function(data){
        var obj = JSON.parse(data);
        $("#auid-edit").val(obj.authorid);
        console.log(obj);
        $("#auname-edit").val(obj.authorname);
        $("#au-status").html("Điền dữ liệu mới vào Form và nhấn lưu lại");
        $("#au-status").css("color","red");
        $("#au-status").css("text-align","center");
        $("#au-status").css("font-weight","bold");
        $("#kqAUID").html("Dữ liệu này không thể thay đổi");
        $("#kqAUID").css("color","red");
        $("#kqAUID").css("text-align","left");
        $("#kqAUID").css("font-weight","bold");
      })
      });
    })
    </script>
    <!-- AJAX Edit Category -->
    <script type="text/javascript">
      $(document).ready(function(){
        $("#cat-update").click(function(){
          var id = $("#catid-edit").val();
          var name = $("#catname-edit").val();
          var nonename = $("#catname-none-edit").val();
          $.get("function/update-cat.php",{id : id, name : name, nonename : nonename},function(data){
            if(data == 1){
              $("#cat-status").html("Changed");
              $("#cat-status").css("color","green");
              $("#cat-status").css("text-align","center");
              $("#cat-status").css("font-weight","bold");
              setTimeout(function(){
                         window.location = 'index.php?page=danh-sach-danh-muc';
                    }, 50);
            }
            else{
              $("#cat-status").html("SML");
              $("#cat-status").css("color","red");
              $("#cat-status").css("text-align","center");
              $("#cat-status").css("font-weight","bold");
            }
          });
        });
      });

    </script>
    <!-- AJAX Edit Author -->
    <script type="text/javascript">
      $(document).ready(function(){
        $("#au-update").click(function(){
          var id = $("#auid-edit").val();
          var name = $("#auname-edit").val();
          $.get("function/update-author.php",{id : id, name : name},function(data){
            if(data == 1){
              $("#au-status").html("Changed");
              $("#au-status").css("color","green");
              $("#au-status").css("text-align","center");
              $("#au-status").css("font-weight","bold");
              setTimeout(function(){
                         window.location = 'index.php?page=danh-sach-tac-gia';
                    }, 50);
            }
            else{
              $("#au-status").html("SML");
              $("#au-status").css("color","red");
              $("#au-status").css("text-align","center");
              $("#au-status").css("font-weight","bold");
            }
          });
        });
      });

    </script>
    <!-- AJAX Delete Book -->
<script type="text/javascript">
$(document).ready(function() { // Vì js này nằm trên đoạn html, nên phải đợi ready rồi mới add event click vào
  $(".delbook").click(function() {
  var id = $(this).data('id');
  var answer = confirm ("Bạn có chắc chắn muốn xóa sách này không ?");
    if (answer)
    {
      $.get("function/delbook.php",{id : id},function(data){
          if (data==1) {
            setTimeout(function(){
                       window.location = 'index.php?page=danh-sach-sach';
                  }, 0);
          }
          else alert("Không xóa được sách !");
      });
    }
  });
})
</script>
    <!-- AJAX Delete Atuhor -->
<script type="text/javascript">
$(document).ready(function() { // Vì js này nằm trên đoạn html, nên phải đợi ready rồi mới add event click vào
  $(".delau").click(function() {
  var id = $(this).data('id');
  var answer = confirm ("Bạn có chắc chắn muốn xóa tác giả này không ?");
    if (answer)
    {
      $.get("function/delau.php",{id : id},function(data){
          if (data==1) {
            setTimeout(function(){
                       window.location = 'index.php?page=danh-sach-tac-gia';
                  }, 0);
          }
          else alert("Không xóa được tác giả !");
      });
    }
  });
})
</script>
    <!-- AJAX Delete Category -->
<script type="text/javascript">
$(document).ready(function() { // Vì js này nằm trên đoạn html, nên phải đợi ready rồi mới add event click vào
  $(".delcat").click(function() {
  var id = $(this).data('id');
  var answer = confirm ("Bạn có chắc chắn muốn xóa danh mục này không ?");
    if (answer)
    {
      $.get("function/delcat.php",{id : id},function(data){
          if (data==1) {
            setTimeout(function(){
                       window.location = 'index.php?page=danh-sach-danh-muc';
                  }, 0);
          }
          else alert("Không xóa được danh mục !");
      });
    }
  });
})
</script>
<!-- AJAX Delete Recruite -->
<script type="text/javascript">
$(document).ready(function() { // Vì js này nằm trên đoạn html, nên phải đợi ready rồi mới add event click vào
$(".deltd").click(function() {
var id = $(this).data('id');
var answer = confirm ("Bạn có chắc chắn muốn xóa tin này không ?");
if (answer)
{
  $.get("function/deltd.php",{id : id},function(data){
      if (data==1) {
        setTimeout(function(){
                   window.location = 'index.php?page=quan-li-tuyen-dung';
              }, 0);
      }
      else alert("Không xóa được tin !");
  });
}
});
})
</script>
<!-- AJAX CHECK NAME CATEGORY -->
<script>
    $(document).ready(function() {
      $("#addcat-name").blur(function() {
        var catname = $(this).val()
        $.get("function/checkcatname.php",{catname : catname},function(data){
          if(data ==1){
            $("#checkname").html("Đã tồn tại");
          }else {
            $("#checkname").html("Hợp lệ");
          }
        });
      });
    });
</script>
<!-- AJAX Add Author -->
<script>
    $(document).ready(function() {
      $("#addauthor-button").click(function() {
        var addauthorname = $("#addauthor-name").val();
        console.log(addauthorname);
        $.get("function/addnewauthor.php",{addauthorname : addauthorname},function(data){
          if (data == 1) {
            $("#addauthor-status").html("Có dữ liệu bị trùng vui lòng kiểm tra lại");
            $("#addauthor-status").css("font-weight","bold");
          }
          else {
            $("#addauthor-status").html("Đã thêm danh mục mới");
            $("#addauthor-status").css("font-weight","bold");
            setTimeout(function(){
                       window.location = 'index.php?page=them-tac-gia';
                  }, 50);
          }
        });
      });
    });
</script>
<!-- AJAX Add Category -->
<script>
    $(document).ready(function() {
      $("#addcat-button").click(function() {
        var addcatname = $("#addcat-name").val();
        var addcatnoname = $("#addcat-noname").val();
        console.log(addcatname);
        console.log(addcatnoname);
        $.get("function/addnewcat.php",{addcatname : addcatname, addcatnoname : addcatnoname},function(data){
          if (data == 1) {
            $("#addcat-status").html("Có dữ liệu bị trùng vui lòng kiểm tra lại");
            $("#addcat-status").css("font-weight","bold");
          }
          else {
            $("#addcat-status").html("Đã thêm danh mục mới");
            $("#addcat-status").css("font-weight","bold");
            setTimeout(function(){
                       window.location = 'index.php?page=them-danh-muc';
                  }, 50);
          }
        });
      });
    });
</script>
<script>
    $(document).ready(function() {
      $("#addcat-noname").blur(function() {
        var noname = $(this).val()
        $.get("function/checknoname.php",{noname : noname},function(data){
          if(data ==1){
            $("#checknoname").html("Đã tồn tại");
          }else {
            $("#checknoname").html("Hợp lệ");
          }
        });
      });
    });
</script>
  </head>
  <body>

    <div id="wrapper"> <!-- START WRAPPER -->
      <?php
      include("inc/navigation.php");
      if(isset($_GET['page'])){
        $id = $_GET['page'];
      }
      else $id = "";
      switch ($id) {
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
