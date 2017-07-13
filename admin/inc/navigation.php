<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="../index.php">Black and White - Admin Control Panel</a>
    </div>
    <!-- Top Menu Items -->
    <ul class="nav navbar-right top-nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
            <ul class="dropdown-menu message-dropdown">
                <li class="message-preview">
                    <a href="#">
                        <div class="media">
                            <span class="pull-left">
                                <img class="media-object" src="http://placehold.it/50x50" alt="">
                            </span>
                            <div class="media-body">
                                <h5 class="media-heading"><strong>John Smith</strong>
                                </h5>
                                <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                <p>Lorem ipsum dolor sit amet, consectetur...</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="message-preview">
                    <a href="#">
                        <div class="media">
                            <span class="pull-left">
                                <img class="media-object" src="http://placehold.it/50x50" alt="">
                            </span>
                            <div class="media-body">
                                <h5 class="media-heading"><strong>John Smith</strong>
                                </h5>
                                <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                <p>Lorem ipsum dolor sit amet, consectetur...</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="message-preview">
                    <a href="#">
                        <div class="media">
                            <span class="pull-left">
                                <img class="media-object" src="http://placehold.it/50x50" alt="">
                            </span>
                            <div class="media-body">
                                <h5 class="media-heading"><strong>John Smith</strong>
                                </h5>
                                <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                <p>Lorem ipsum dolor sit amet, consectetur...</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="message-footer">
                    <a href="#">Read All New Messages</a>
                </li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
            <ul class="dropdown-menu alert-dropdown">
                <li>
                    <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                </li>
                <li>
                    <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                </li>
                <li>
                    <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                </li>
                <li>
                    <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                </li>
                <li>
                    <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                </li>
                <li>
                    <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">View All</a>
                </li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>
              <?php
                if(isset($_SESSION['user'])){
                   echo $_SESSION['user'];
                 }
                else {
                  echo "Rỗng";
                }
              ?>
                <b class="caret"></b></a>
            <ul class="dropdown-menu user-mana">
                <li>
                    <div href="#"><i class="fa fa-fw fa-user"></i> Profile</div>
                </li>
                <li>
                    <div href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</div>
                </li>
                <li>
                    <div href="#"><i class="fa fa-fw fa-gear"></i> Settings</div>
                </li>
                <li class="divider"></li>
                <li>
                    <div href="#" id="adminpanellogout"><i class="fa fa-fw fa-power-off"></i> Log Out</div>
                </li>
            </ul>
        </li>
    </ul>
    <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav">
            <li class="active">
                <a href="index.php"><i class="fa fa-fw fa-dashboard"></i> Trang chủ</a>
            </li>
            <li>
                <a href="javascript:;" data-toggle="collapse" data-target="#demo2"><i class="glyphicon glyphicon-certificate"></i> Quản lý Sách <i class="fa fa-fw fa-caret-down"></i></a>
                <ul id="demo2" class="collapse">
                    <li>
                        <a href="index.php?page=catlist"><i class="glyphicon glyphicon-share"></i> Danh sách Sách</a>
                    </li>
                    <li>
                        <a href="index.php?page=addcat"><i class="glyphicon glyphicon-share"></i> Thêm sách mới</a>
                    </li>
                    <li>
                        <a href="index.php?page=statcat"><i class="glyphicon glyphicon-share"></i> Thông kê sách</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;" data-toggle="collapse" data-target="#demo1"><i class="glyphicon glyphicon-send"></i> Quản lý Danh mục <i class="fa fa-fw fa-caret-down"></i></a>
                <ul id="demo1" class="collapse">
                    <li>
                        <a href="index.php?page=danh-sach-danh-muc"><i class="glyphicon glyphicon-share"></i> Danh sách Danh mục</a>
                    </li>
                    <li>
                        <a href="index.php?page=them-danh-muc"><i class="glyphicon glyphicon-share"></i> Thêm Danh mục mới</a>
                    </li>
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-share"></i> Thông kê Danh mục</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;" data-toggle="collapse" data-target="#demo8"><i class="glyphicon glyphicon-cloud"></i> Quản lý Thành viên <i class="fa fa-fw fa-caret-down"></i></a>
                <ul id="demo8" class="collapse">
                    <li>
                        <a href="index.php?page=discountlist"><i class="glyphicon glyphicon-share"></i> Danh sách Thành viên </a>
                    </li>
                    <li>
                        <a href="index.php?page=adddiscount"><i class="glyphicon glyphicon-share"></i> Thêm Thành viên mới</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="	glyphicon glyphicon-flash"></i> Quản lý Liên kết<i class="fa fa-fw fa-caret-down"></i></a>
                <ul id="demo" class="collapse">
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-share"></i> Facebook</a>
                    </li>
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-share"></i> Youtube</a>
                    </li>
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-share"></i> Twitter</a>
                    </li>
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-share"></i> Skype</a>
                    </li>
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-share"></i> RSS</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;" data-toggle="collapse" data-target="#demo4"><i class="glyphicon glyphicon-fire"></i> Quản lý Góp ý <i class="fa fa-fw fa-caret-down"></i></a>
                <ul id="demo4" class="collapse">
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-share"></i> Danh sách Góp ý</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;" data-toggle="collapse" data-target="#demo5"><i class="glyphicon glyphicon-screenshot"></i> Quản lý Upload <i class="fa fa-fw fa-caret-down"></i></a>
                <ul id="demo5" class="collapse">
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-share"></i> Tài liệu chờ Duyệt</a>
                    </li>
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-share"></i> Tài liệu đã Duyệt</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- /.navbar-collapse -->
</nav>