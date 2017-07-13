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
        </div></div>
    </div>
    <!-- END MENU PRIMARY -->
    <hr>
    <p class="display-4 text-sm-center">Sách nổi bật</p>
    <hr>
    <div class="container-fluid">
      <div class="row">
          <div class="col-sm-12 text-sm-center newbook">
            <div class="card-deck-wrapper">
              <div class="card-deck">
                <div class="card">
                  <img class="card-img-top" src="book/1.jpg" alt="Card image cap">
                  <div class="card-block">
                    <h4 class="card-title">Đối thoại với nhà báo</h4>
                    <p class="card-text"><small class="text-muted">Tác giá : Duy Khanh</small></p>
                    <p class="card-text">Con người sinh ra không phải để tan biến đi như một hạt cát vô danh. Họ sinh ra để in dấu lại trên mặt đất, in dấu lại trong trái tim người khác.</p>
                  </div>
                </div>
                <div class="card">
                  <img class="card-img-top" src="book/2.jpg" alt="Card image cap">
                  <div class="card-block">
                    <h4 class="card-title">Đừng hoang tưởng về biển lớn</h4>
                    <p class="card-text"><small class="text-muted">Tác giá : Alan Phan</small></p>
                    <p class="card-text">Đừng che dấu tình yêu và sự dịu dàng của mình cho đến khi bạn lìa đời. Hãy làm cuộc đời bạn tràn đầy sự ngọt ngào. Hãy nói những lời thân thương khi bạn còn nghe được và tim bạn còn rung động.</p>
                  </div>
                </div>
                <div class="card">
                  <img class="card-img-top" src="book/3.jpg" alt="Card image cap">
                  <div class="card-block">
                    <h4 class="card-title">7 thói quen bạn trẻ thanh đạt</h4>
                    <p class="card-text"><small class="text-muted">Tác giá : Sean Covey</small></p>
                    <p class="card-text">Sự chân thành là điều tốt đẹp nhất bạn có thể đem trao tặng một người. Sự thật, lòng tin cậy, tình bạn và tình yêu đều tùy thuộc vào điều đó cả.</p>
                  </div>
                </div>
                <div class="card">
                  <img class="card-img-top" src="book/4.jpg" alt="Card image cap">
                  <div class="card-block">
                    <h4 class="card-title">Chat với tình địch</h4>
                    <p class="card-text"><small class="text-muted">Tác giá : Cấn Vân Khánh</small></p>
                    <p class="card-text">Không thể nào sống mà không mắc sai lầm, trừ khi bạn cẩn trọng đến mức tối đa, nhưng như thế thì vô hình bạn đã mắc sai lầm rồi đấy.</p>
                  </div>
                </div>
                <div class="card">
                  <img class="card-img-top" src="book/5.jpg" alt="Card image cap">
                  <div class="card-block">
                    <h4 class="card-title">Double Shot</h4>
                    <p class="card-text"><small class="text-muted">Tác giá : Anna Bludy</small></p>
                    <p class="card-text">Đôi khi bạn không cần phải có mục tiêu trong cuộc sống, đại loại là những mục tiêu to lớn, bạn chỉ cần biết điều mà bạn phải làm kế tiếp là gì mà thôi.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    <hr>
    <!-- LEFT MENU -->
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-12">
          <div class="row">
            <div class="col-sm-2 menu-left">
              <ul class="nav nav-pills nav-stacked">
                <li class="nav-item">
                  <div href="#" class="nav-link active category">Danh mục sách</div>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link"><span class="glyphicon glyphicon-th"></span>⏏ Tâm Lý</a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link"><span class="glyphicon glyphicon-th"></span>⏏ Tin học</a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link"><span class="glyphicon glyphicon-th"></span>⏏ Văn học</a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link"><span class="glyphicon glyphicon-th"></span>⏏ Toán học</a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link"><span class="glyphicon glyphicon-th"></span>⏏ Đời sống</a>
                </li>
              </ul>

            </div>
            <div class="col-sm-10">
                <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
                <center><div class="nav-link active" href="#"><span>Sách</span></div></center>
              </nav>
              <div class="row showcases">
                <div class="col-sm-12 text-sm-center">
                  <div class="card-deck-wrapper">
                    <div class="card-deck">
                      <div class="card col-sm-3 bookoject">
                        <img class="card-img-top" src="book/1.jpg" alt="Card image cap">
                        <div class="card-block">
                          <h4 class="card-title">Đối thoại với nhà báo</h4>
                          <p class="card-text"><small class="text-muted">Tác giá : Duy Khanh</small></p>
                        </div>
                      </div>
                      <div class="card col-sm-3 bookoject">
                        <img class="card-img-top" src="book/2.jpg" alt="Card image cap">
                        <div class="card-block">
                          <h4 class="card-title">Đừng hoang tưởng về biển lớn</h4>
                          <p class="card-text"><small class="text-muted">Tác giá : Alan Phan</small></p>
                        </div>
                      </div>
                      <div class="card col-sm-3 bookoject">
                        <img class="card-img-top" src="book/3.jpg" alt="Card image cap">
                        <div class="card-block">
                          <h4 class="card-title">7 thói quen bạn trẻ thanh đạt</h4>
                          <p class="card-text"><small class="text-muted">Tác giá : Sean Covey</small></p>
                        </div>
                      </div>
                      <div class="card col-sm-3 bookoject">
                        <img class="card-img-top" src="book/4.jpg" alt="Card image cap">
                        <div class="card-block">
                          <h4 class="card-title">Chat với tình địch</h4>
                          <p class="card-text"><small class="text-muted">Tác giá : Cấn Vân Khánh</small></p>
                        </div>
                      </div>
                      <div class="card col-sm-3 bookoject">
                        <img class="card-img-top" src="book/1.jpg" alt="Card image cap">
                        <div class="card-block">
                          <h4 class="card-title">Đối thoại với nhà báo</h4>
                          <p class="card-text"><small class="text-muted">Tác giá : Duy Khanh</small></p>
                        </div>
                      </div>
                      <div class="card col-sm-3 bookoject">
                        <img class="card-img-top" src="book/1.jpg" alt="Card image cap">
                        <div class="card-block">
                          <h4 class="card-title">Đối thoại với nhà báo</h4>
                          <p class="card-text"><small class="text-muted">Tác giá : Duy Khanh</small></p>
                        </div>
                      </div>
                      <div class="card col-sm-3 bookoject">
                        <img class="card-img-top" src="book/1.jpg" alt="Card image cap">
                        <div class="card-block">
                          <h4 class="card-title">Đối thoại với nhà báo</h4>
                          <p class="card-text"><small class="text-muted">Tác giá : Duy Khanh</small></p>
                        </div>
                      </div>
                      <div class="card col-sm-3 bookoject">
                        <img class="card-img-top" src="book/2.jpg" alt="Card image cap">
                        <div class="card-block">
                          <h4 class="card-title">Đừng hoang tưởng về biển lớn</h4>
                          <p class="card-text"><small class="text-muted">Tác giá : Alan Phan</small></p>
                        </div>
                      </div>
                      <div class="card col-sm-3 bookoject">
                        <img class="card-img-top" src="book/3.jpg" alt="Card image cap">
                        <div class="card-block">
                          <h4 class="card-title">7 thói quen bạn trẻ thanh đạt</h4>
                          <p class="card-text"><small class="text-muted">Tác giá : Sean Covey</small></p>
                        </div>
                      </div>
                      <div class="card col-sm-3 bookoject">
                        <img class="card-img-top" src="book/2.jpg" alt="Card image cap">
                        <div class="card-block">
                          <h4 class="card-title">Đừng hoang tưởng về biển lớn</h4>
                          <p class="card-text"><small class="text-muted">Tác giá : Alan Phan</small></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
    <hr>
    <!-- FOOTER -->
    <footer>
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-6 footerleft ">
        <div class="logofooter text=sm=center"><center><img src="img/ntt.png" width="100px"></center></div>
        <p><i class="fa fa-map-pin"></i> C918 chung cư Tân Phước P7 Q11, TPHCM</p>
        <p><i class="fa fa-phone"></i> Phone : 0985990677</p>
        <p><i class="fa fa-envelope"></i> E-mail : blackandwhitelibrary@gmail.com</p>

      </div>
      <div class="col-md-2 col-sm-6 paddingtop-bottom">
        <h6 class="heading7">Liên kết</h6>
        <ul class="footer-ul">
          <li><a href="#"> Career</a></li>
          <li><a href="#"> Privacy Policy</a></li>
          <li><a href="#"> Terms & Conditions</a></li>
          <li><a href="#"> Client Gateway</a></li>
          <li><a href="#"> Ranking</a></li>
          <li><a href="#"> Case Studies</a></li>
          <li><a href="#"> Frequently Ask Questions</a></li>
        </ul>
      </div>
      <div class="col-md-3 col-sm-6 paddingtop-bottom">
        <h6 class="heading7">Sách mới nhất</h6>
        <div class="post">
          <p>Đối thoại với nhà báo <span>Tháng 7, 2017</span></p>
          <p>Đừng hoang tưởng về biển lớn <span>Tháng 3, 2015</span></p>
          <p>7 thói quen bạn trẻ thanh đạt <span>Tháng 2, 2012</span></p>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 paddingtop-bottom">
        <div class="fb-page" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-height="300" data-small-header="false" style="margin-bottom:15px;" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
          <div class="fb-xfbml-parse-ignore">
            <a href="#" class="fa fa-facebook"></a>
            <a href="#" class="fa fa-twitter"></a>
            <a href="#" class="fa fa-youtube"></a>
            <a href="#" class="fa fa-skype"></a>
            <a href="#" class="fa fa-rss"></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
<!--footer start from here-->

<div class="copyright">
  <div class="container">
    <div class="col-md-6">
      <p>© 2017 - BlackAndWhite Project Design by Nguyễn Minh Nhựt</p>
    </div>
    <div class="col-md-6">
      <ul class="bottom_ul">
        <li><a href="#">webenlance.com</a></li>
        <li><a href="#">About us</a></li>
        <li><a href="#">Blog</a></li>
        <li><a href="#">Faq's</a></li>
        <li><a href="#">Contact us</a></li>
        <li><a href="#">Site Map</a></li>
      </ul>
    </div>
  </div>
</div>
  </body>
</html>
