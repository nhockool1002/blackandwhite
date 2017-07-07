<!DOCTYPE html>
<html>
  <head>
    <?php
    require_once("include/connect.php");
    require_once("include/header.php");
    ?>
  </head>
  <body>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-2 push-1-sm logo">
          <img src="img/logo.png" alt="" height="200px">
        </div>
        <div class="col-sm-10">
          <div class="row banner">
            <div class="col-sm-12">
              <img src="img/banner.png" alt="">
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- END header -->
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-12">
          <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary">
            <ul class="nav navbar-nav">
              <li class="nav-item active firstitem">
                <a class="nav-link first-item" href="index.php">Trang chủ<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link first-item" href="index.php">Giới thiệu<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link first-item" href="index.php">Hướng dẫn<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link first-item" href="index.php">Tài liệu<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link first-item" href="index.php">Hổ trợ-Kết nối<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link first-item" href="index.php">Liên hệ<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link first-item" href="index.php">Tài khoản<span class="sr-only">(current)</span></a>
              </li>
              <form class="form-inline text-sm-right searchbox">
                  <input class="form-control" type="text" placeholder="Search" style="width:300px;">
              </form>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </body>
</html>
