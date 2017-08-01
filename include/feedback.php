<div class="col-sm-10">
    <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
    <center><div class="nav-link active" href="#"><span>Sách</span></div></center>
  </nav>
  <div class="row showcases">
    <div class="col-sm-12 text-sm-center">
      <form method="post">
        Email: <input name="email" type="text"><br>
        Message:<br>
          <textarea name="message" rows="15" cols="40"></textarea><br>
            <input name="btn_submit" type="submit">
        </form>
        <?php
          if(isset($_POST['btn_submit'])){
            $to = "hotrodichvuweb@gmail.com";  
            $subject = "Contact Us";
            $email = $_REQUEST['email'] ;
            $message = $_REQUEST['message'] ;
            $headers = "From: $email";  $sent = mail($to, $subject, $message, $headers) ;
            if($sent)  {
                print "Gửi mail thành công";
              } else  {
                print "Có lỗi khi gửi mail";
              }
            }
?>
    </div>
  </div>
</div>
