
<!DOCTYPE html>
<html>
<head>
<base href="http://www.drdvietnam.org/"  />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DRD Việt Nam - Trung Tâm Khuyết Tật và Phát Triển</title>
<link rel="stylesheet" href="css/style.css">
<!--[if lt IE 9]>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
<link href="images/favico.ico" rel="shortcut icon" type="image/x-icon" />
<script src="js/jquery-1.8.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="admin/css/colorbox.css" media="screen" />
<script type="text/javascript" src="admin/js/jquery.colorbox.js"></script>
<script type="text/javascript" src="js/greyscale.js"></script>
<script type="text/javascript" src="js/expancer.js"></script>
<script type="text/javascript" src="js/mousetrap.min.js"></script>
<!--
<script type="text/javascript" src="http://www.trungtamtinhoc.edu.vn/api/snowstorm.js"></script>
<script type="text/javascript" src="js/hoa-mai-roi.js"></script>
-->
<script>
			$(document).ready(function(){
				//Examples of how to assign the ColorBox event to elements
				if ($(window).width() > 700) {
					$(".inlinee").colorbox({inline:true, width:"30%", height:"20%"});
				}
				else {
					if($(window).width()<700 && $(window).width()>500) {
						$(".inlinee").colorbox({inline:true, width:"400px", height:"20%"});
					}
					else {
						$(".inlinee").colorbox({inline:true, width:"220px", height:"20%"});
					}
				}

			});
		</script>
<script>
$(document).ready(function(){
//ID, class and tag element that font size is adjustable in this array
//Put in html or body if you want the font of the entire page adjustable
var section = new Array('div.fontset','.section2');
section = section.join(',');
// Reset Font Size
var originalFontSize = $(section).css('font-size');
$(".resetFont").click(function(){
$(section).css('font-size', originalFontSize);
});
// Increase Font Size
$(".increaseFont").click(function(){
var currentFontSize = $(section).css('font-size');
var currentFontSizeNum = parseFloat(currentFontSize, 10);
var newFontSize = currentFontSizeNum*1.2;
$(section).css('font-size', newFontSize);
return false;
});
// Decrease Font Size
$(".decreaseFont").click(function(){
var currentFontSize = $(section).css('font-size');
var currentFontSizeNum = parseFloat(currentFontSize, 10);
var newFontSize = currentFontSizeNum*0.8;
$(section).css('font-size', newFontSize);
return false;
});
	// nhan 1 phim
	// phim tat header
		Mousetrap.bind('alt+0', function() {window.location.assign("http://www.drdvietnam.org/highvisibility");}, 'keyup');
				Mousetrap.bind('alt+1', function() {window.location.assign("http://www.drdvietnam.org/language.php?set=en");}, 'keyup');
			Mousetrap.bind('alt+w', function() {
		var currentFontSize = $(section).css('font-size');
		var currentFontSizeNum = parseFloat(currentFontSize, 10);
		var newFontSize = currentFontSizeNum*1.2;
		$(section).css('font-size', newFontSize);
		return false;
	});
	Mousetrap.bind('alt+r', function() {
		$(section).css('font-size', originalFontSize);
	});
	Mousetrap.bind('alt+e', function() {
		var currentFontSize = $(section).css('font-size');
		var currentFontSizeNum = parseFloat(currentFontSize, 10);
		var newFontSize = currentFontSizeNum*0.8;
		$(section).css('font-size', newFontSize);
		return false;
	});
	Mousetrap.bind('alt+q', function() {window.location.assign("http://www.drdvietnam.org/accessibility/danh-sach-ung-ho.html#noidungnoidung");}, 'keyup');
	Mousetrap.bind('alt+i', function() {window.location.assign("http://www.drdvietnam.org/accessibility/dang-nhap.html#noidungnoidung");}, 'keyup');
	Mousetrap.bind('alt+u', function() {window.location.assign("http://www.drdvietnam.org/accessibility/dang-ky.html#noidungnoidung");}, 'keyup');

	Mousetrap.bind('alt+a', function() {window.location.assign("http://www.drdvietnam.org/accessibility/#noidungnoidung");}, 'keyup');
	Mousetrap.bind('alt+j', function() {window.location.assign("http://www.drdvietnam.org/accessibility/drd.html#noidungnoidung");}, 'keyup');
	Mousetrap.bind('alt+l', function() {window.location.assign("http://www.drdvietnam.org/accessibility/linh-vuc-hoat-dong.html#noidungnoidung");}, 'keyup');
	Mousetrap.bind('alt+c', function() {window.location.assign("http://www.drdvietnam.org/accessibility/hoi-quan.html#noidungnoidung");}, 'keyup');
	Mousetrap.bind('alt+n', function() {window.location.assign("http://www.drdvietnam.org/accessibility/thu-vien-thong-tin.html#noidungnoidung");}, 'keyup');
	Mousetrap.bind('alt+m', function() {window.location.assign("http://www.drdvietnam.org/accessibility/video.html#noidungnoidung");}, 'keyup');
	Mousetrap.bind('alt+p', function() {window.location.assign("http://www.drdvietnam.org/accessibility/chinh-sach-phap-luat.html#noidungnoidung");}, 'keyup');
	Mousetrap.bind('alt+y', function() {window.location.assign("http://www.drdvietnam.org/accessibility/dien-dan.html#noidungnoidung");}, 'keyup');

	Mousetrap.bind('6', function() {window.location.assign("/accessibility/#menutoptop");}, 'keyup');
	Mousetrap.bind('7', function() {window.location.assign("/accessibility/#menumainmain");}, 'keyup');
	Mousetrap.bind('8', function() {window.location.assign("/accessibility/#gotop");}, 'keyup');
	Mousetrap.bind('9', function() {window.location.assign("/accessibility/#noidungnoidung");}, 'keyup');
	//Mousetrap.bind('alt+9', function() {$('html, body').animate({scrollTop: $("#noidungnoidung").offset().top}, 2000);}, 'keyup');
	//Mousetrap.bind('alt+9', function() {$(document).scrollTo('#noidungnoidung');}, 'keyup');
});
</script>
<script type="text/javascript">
	function setLocation(ev){
		window.location.assign(ev);
	}
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-50073537-1', 'drdvietnam.org');
  ga('send', 'pageview');

</script>
</head>
<body class="normal" style="overflow-x: hidden;">
<script>
  (function() {
    var cx = '004167217340609662241:rz4rgq9n_-m';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
        '//www.google.com/cse/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
  })();
</script><div id="gotop"></div>
<div class="fontset">
<section>
	<div id="giaodientiepcan" class="normal">
    	<header>
        	<div id="tcheader">
                <p class="gdtc"><a href="http://www.drdvietnam.org/">Giao diện chuẩn</a> <span class="font12">(Phím tắt  <u>alt+0</u>)</span><span class="cach"></span></p>
                <p class="gdtp"><a href="highvisibility/" title="Giao diện này phù hợp với người khuyết tật về mắt">Tương phản cao</a> <span class="font12">(Phím tắt  <u>alt+0</u>)</span><span class="cach"></span></p>
                <p class="gdtc"><a href="nightmode/" title="Chế độ này phù hợp với máy tính bảng và các thiết bị cầm tay vì tiết kiệm pin và các đoạn văn được hiển thị với phông nền tối, chữ sáng">Chế độ ban đêm</a> <span class="font12">(Phím tắt  <u>alt+0</u>)</span><span class="cach"></span></p>
        <p class="resize"><a class='increaseFont' style='cursor: pointer; cursor: hand;' title=''>Tăng kích cỡ chữ </a><span class="font12">(Phím tắt  alt+w)</span><span class="cach"></span>
        <a class='resetFont' style='cursor: pointer; cursor: hand;'>Đặt lại cỡ chữ chuẩn </a><span class="font12">(Phím tắt  alt+r)</span><span class="cach"></span>
    <a class='decreaseFont' style='cursor: pointer; cursor: hand;' title=''>Giảm kích cỡ chữ </a><span class="font12">(Phím tắt  alt+e)</span><span class="cach"></span></p>
    <p><a href="accessibility/huong-dan-su-dung.html#noidungnoidung">Hướng dẫn truy cập</a></p>
    <p class="dsuh"><a href="http://www.drdvietnam.org/accessibility/danh-sach-ung-ho.html#noidungnoidung"><span>Danh sách ủng hộ</span></a> <span class="font12">(Phím tắt  alt+q)</span><span class="cach"></span></p>

    	<p class="ngonngu"><a href="http://www.drdvietnam.org/language.php?set=vn" title="">Tiếng Việt </a><span class="font12">(Phím tắt  alt+1)</span><span class="cach"></span>
        <a href="http://www.drdvietnam.org/language.php?set=en" title="">English </a><span class="font12">(Phím tắt  alt+1)</span><span class="cach"></span></p>
        <p class="slr"><a href="http://www.drdvietnam.org/accessibility/tim-kiem.html#noidungnoidung">Tìm kiếm</a><span class="cach"></span></p>
        <p class="slr"><a href="http://www.drdvietnam.org/accessibility/tim-kiem-theo-tu-khoa.html#noidungnoidung">Tìm theo từ khóa</a><span class="cach"></span></p>

        <p class="slr"><a href="http://www.drdvietnam.org/accessibility/dang-nhap.html#noidungnoidung" title="Phím tắt  alt+i">Đăng nhập</a><span class="cach"></span></p>
        <p class="slr"><a href="http://www.drdvietnam.org/accessibility/dang-ky.html#noidungnoidung" title="Phím tắt  alt+u">Đăng ký</a></p>
        			</div>
		<section><p class="vitrihientai">Bạn đang ở: Trang chủ</p></section>
        </header>
        <p class="mntop" id="menutoptop"><span>Menu top</span> <span class="font16">( Phím tắt  <u>6</u> )</span></p>
            <nav class="menutopp">
            	<ul>
                	<li><a class="dangxem" href="http://www.drdvietnam.org/accessibility/#noidungnoidung">Trang chủ</a> <span class="padl5">(Phím tắt  <u>alt+a</u>)</span></li>
                    <li><a class="" href="http://www.drdvietnam.org/accessibility/drd.html#noidungnoidung">Giới thiệu</a> <span class="padl5">(Phím tắt  <u>alt+j</u>)</span></li>
                    <li><a class="" href="http://www.drdvietnam.org/accessibility/linh-vuc-hoat-dong.html#noidungnoidung">Lĩnh vực hoạt động</a> <span class="padl5">(Phím tắt  <u>alt+l</u>)</span></li>
                    <li><a class="" href="http://www.drdvietnam.org/accessibility/hoi-quan.html#noidungnoidung">Hội quán Đời Rất Đẹp</a> <span class="padl5">(Phím tắt  <u>alt+c</u>)</span></li>
                    <li><a class="" href="accessibility/thu-vien-thong-tin.html#noidungnoidung">Tin tức</a> <span class="padl5">(Phím tắt  <u>alt+n</u>)</span></li>
                    <li><a class="" href="http://www.drdvietnam.org/accessibility/video.html#noidungnoidung">Thư viện</a> <span class="padl5">(Phím tắt  <u>alt+m</u>)</span></li>
                    <li><a class="" href="http://www.drdvietnam.org/accessibility/chinh-sach-phap-luat.html#noidungnoidung">Chính sách và pháp luật</a> <span class="padl5">(Phím tắt  <u>alt+p</u>)</span></li>
                    <li><a class="" href="http://www.drdvietnam.org/accessibility/dien-dan.html#noidungnoidung">Diễn đàn</a> <span class="padl5">(Phím tắt  <u>alt+y</u>)</span></li>
                    <li class="gotop"><a href="http://www.drdvietnam.org/accessibility/#gotop" class="font14">Lên trên</a></li>
                </ul>
            </nav>
            <!--<div style="display:none;">
                        	<div id="searchgoogle" class="searchgo"><gcse:searchbox></gcse:searchbox>
<div style="visibility:hidden"><gcse:searchresults refinementStyle="link"></gcse:searchresults></div>
                        </div>
            </div>--><link type="text/css" rel="stylesheet" href="admin/css/colorbox.css" media="screen" />
<script type="text/javascript" src="admin/js/jquery.colorbox.js"></script>
<script>
			$(document).ready(function(){
				//Examples of how to assign the ColorBox event to elements
				$(".inlineee").colorbox({inline:true, Maxwidth:"50%", Maxheight:"90%"});

			});
		</script>
        <p class="mntop" id="menumainmain"><span>Menu Chính</span> <span class="font16">( Phím tắt  <u>7</u> )</span></p>
            <nav class="menutopp">
            	<ul>
                	                    <li class="gotop"><a href="http://www.drdvietnam.org/accessibility/#gotop" class="font14">Lên trên</a></li>
                </ul>
            </nav>
<p class="mntop" id="noidungnoidung"><span>Nội dung</span> <span class="font16">( Phím tắt  <u>9</u> )</span></p>
            <section>
            <!-- start noidung -->
            	<div class="contenttiepcan">
                	<p class="tdmuc">Lĩnh vực hoạt động</p>
                                    	<p class="tungttt"><a href="accessibility/viec-lam-tin-hoat-dong/18122-cong-ty-co-phan-dich-vu-thuong-mai-truong-minh-tao-dieu-kien-cho-lao-dong-khuyet-tat.html#noidungnoidung">Công ty Cổ phần Dịch vụ Thương Mại Trường Minh tạo điều kiện cho lao động khuyết tật </a></p>
                                    	<p class="tungttt"><a href="accessibility/tin-tuyen-dung/17940-thu-vien-sach-noi-tuyen-nhan-vien-ky-thuat-phong-thu.html#noidungnoidung">Thư viện sách nói tuyển nhân viên kỹ thuật phòng thu</a></p>
                                    	<p class="tungttt"><a href="accessibility/tin-tuyen-dung/18120-cong-ty-mat-bao-tuyen-vi-tri-nhan-vien-cham-soc-khach-hang-va-nhan-vien-nhac-phi.html#noidungnoidung">Công ty MẮT BÃO tuyển vị trí nhân viên chăm sóc khách hàng và nhân viên nhắc phí</a></p>
                                    	<p class="tungttt"><a href="accessibility/tin-tuyen-dung/18106-cong-ty-tnhh-minh-phuc-tuyen-dung-vi-tri-nhan-vien-cham-soc-khach-hang-va-nhan-vien-telesale-sua-vinamilk-abbott-tai-tp-hcm.html#noidungnoidung">Công ty TNHH Minh Phúc tuyển dụng vị trí Nhân viên chăm sóc khách hàng và Nhân viên Telesale sữa Vinamilk/Abbott tại Tp. HCM</a></p>
                                    	<p class="tungttt"><a href="accessibility/tin-tuyen-dung/18105-cong-ty-an-loc-phuc-tuyen-dung-nhan-vien-lap-rap-mo-hinh-kien-truc-va-hoa-vien-kien-truc.html#noidungnoidung">Công ty AN LỘC PHÚC tuyển dụng nhân viên lắp ráp mô hình kiến trúc và họa viên kiến trúc</a></p>
                                        <p class="tdmuc">Hội quán Đời Rất Đẹp</p>
                                    	<p class="tungttt"><a href="accessibility/hoat-dong-khac/18096-chuyen-de--“ban-hieu-gi-ve-ung-thu-vu”.html#noidungnoidung">Chuyên đề: “Bạn hiểu gì về ung thứ vú?”</a></p>
                                    	<p class="tungttt"><a href="accessibility/hoat-dong-khac/18072-dai-dien-drd-tham-gia-khoa-tap-huan-quan-ly-du-an-dua-vao-ket-qua.html#noidungnoidung">Đại diện DRD tham gia khóa tập huấn quản lý dự án dựa vào kết quả</a></p>
                                    	<p class="tungttt"><a href="accessibility/hoat-dong-khac/18051-thong-bao-“trao-tang-xe-lan-cho-tre-em-khuyet-tat-thuoc-khu-vuc-tphcm”.html#noidungnoidung">Thông báo “trao tặng xe lăn cho trẻ em khuyết tật thuộc khu vực Tp.HCM”</a></p>
                                    	<p class="tungttt"><a href="accessibility/hoat-dong-khac/18018-drd-tham-gia-hoi-cho-cong-dong.html#noidungnoidung">DRD tham gia hội chợ cộng đồng</a></p>
                                    	<p class="tungttt"><a href="accessibility/hoat-dong-khac/18013-phat-dong-lien-hoan-ve-dep-vang-trang-khuyet-nam-2017.html#noidungnoidung">Phát động Liên hoan "Vẻ đẹp Vầng Trăng Khuyết" năm 2017</a></p>
                                        <p class="tdmuc">Tin tức</p>
                                        	<p class="tungttt"><a href="accessibility/tin-bon-phuong/18130-theo-duoi-giac-mo-bang-niem-tin-va-y-chi.html#noidungnoidung">Theo đuổi giấc mơ bằng niềm tin và ý chí</a></p>
                                        	<p class="tungttt"><a href="accessibility/tin-bon-phuong/18129-thiet-bi-tinh-vi-giup-nguoi-khiem-thinh-khiem-thi-co-the-va-nghe-thay.html#noidungnoidung">Thiết bị tinh vi giúp người khiếm thính, khiếm thị có thể và nghe thấy</a></p>
                                        	<p class="tungttt"><a href="accessibility/guong-dien-hinh/18128-co-gai-khuyet-tat-va-chuyen-luon-co-bao-cao-su-phong-than.html#noidungnoidung">Cô gái khuyết tật và chuyện luôn có bao cao su phòng thân</a></p>
                                        	<p class="tungttt"><a href="accessibility/tin-hoat-dong/18122-cong-ty-co-phan-dich-vu-thuong-mai-truong-minh-tao-dieu-kien-cho-lao-dong-khuyet-tat.html#noidungnoidung">Công ty Cổ phần Dịch vụ Thương Mại Trường Minh tạo điều kiện cho lao động khuyết tật </a></p>
                                        	<p class="tungttt"><a href="accessibility/tin-bon-phuong/18121-ung-dung-seeing-ai-cua-microsoft-ho-tro-nguoi-khiem-thi.html#noidungnoidung">Ứng dụng Seeing AI của Microsoft hỗ trợ người khiếm thị</a></p>
                                        <p class="tdmuc">Thư viện</p>
                                    	<p class="tungttt"><a href="accessibility/tai-lieu/ky-nang-tim-viec/758-de-duoc-nha-tuyen-dung-chu-y.html#noidungnoidung">Để được nhà tuyển dụng chú ý </a></p>
                                    	<p class="tungttt"><a href="accessibility/tai-lieu/ky-nang-tim-viec/757-meo-tao-cv-thu-hut-nha-tuyen-dung.html#noidungnoidung">Mẹo tạo CV thu hút nhà tuyển dụng </a></p>
                                    	<p class="tungttt"><a href="accessibility/tai-lieu/ky-nang-tim-viec/756-chuan-bi-gi-cho-cuoc-phong-van.html#noidungnoidung">Chuẩn bị gì cho cuộc phỏng vấn? </a></p>
                                    	<p class="tungttt"><a href="accessibility/tai-lieu/ky-nang-tim-viec/755-meo-tranh-“am-u”-trong-khi-phong-van.html#noidungnoidung">Mẹo tránh “ậm ừ” trong khi phỏng vấn </a></p>
                                    	<p class="tungttt"><a href="accessibility/tai-lieu/ky-nang-tim-viec/754-5-buoc-de-co-luong-cao.html#noidungnoidung">5 bước để có lương cao </a></p>
                                        <p class="tdmuc">Chính sách và pháp luật</p>
                                        	<p class="tungttt"><a href="accessibility/van-ban-luat-cac-linh-vuc-khac/18038-phap-lenh-26-2005-uu-dai-nguoi-co-cong-voi-cach-mang.html#noidungnoidung">Pháp lệnh 26/2005 Ưu đãi người có công với cách mạng</a></p>
                                        	<p class="tungttt"><a href="accessibility/van-ban-luat-cac-linh-vuc-khac/18037-phap-lenh-04-2012-sua-doi-bo-sung-mot-so-dieu-phap-lenh-uu-dai-nguoi-co-cong-cach-mang.html#noidungnoidung">Pháp lệnh 04/2012 Sửa đổi, bổ sung một số điều Pháp lệnh Ưu đãi Người có công cách mạng</a></p>
                                        	<p class="tungttt"><a href="accessibility/van-ban-luat-cac-linh-vuc-khac/18036-nghi-dinh-85-2016-ndcp-quy-dinh-ve-co-che-quan-ly-hoc-phi-doi-voi--co-so-giao-duc-quoc-dan-va-chinh-sach-mien-giam-hoc-phi-ho-tro-chi-phi-hoc-tap-tu-20152016-den-nam-hoc-20202021.html#noidungnoidung">Nghị định 85/2016/NĐ-CP Quy định về cơ chế, quản lý học phí đối với  cơ sở giáo dục quốc dân và chính sách miễn giảm học phí hỗ trợ chi phí học tập từ 2015-2016 đến năm học 2020-2021</a></p>
                                        	<p class="tungttt"><a href="accessibility/van-ban-luat-cac-linh-vuc-khac/18035-thong-tu-34-2011-ttbldtbxh-bo-sung-diem-c-khoan-2-muc-ii--thong-tu-so-27-2007-ttbldtbxh-ngay-30-11-2007.html#noidungnoidung">Thông tư 34/2011/TT-BLĐTBXH Bổ sung Điểm c khoản 2 mục II  thông tư số 27/2007/TT-BLĐTBXH ngày 30/11/2007 </a></p>
                                        	<p class="tungttt"><a href="accessibility/van-ban-luat-cac-linh-vuc-khac/18034-thong-tu-27-2007-ttbldtbxh-huong-dan-quy-trinh-thu-tuc-vay-von-theo--quyet-dinh-157-2007-qdttg-ve-tin-dung-doi-voi-hoc-sinh-sinh-vien.html#noidungnoidung">Thông tư 27/2007/TT-BLĐTBXH Hướng dẫn quy trình thủ tục vay vốn theo  Quyết định 157/2007/QĐ-TTg Về tín đụng đối với học sinh sinh viên</a></p>
                                        <p class="tdmuc">Diễn đàn</p>
                                        	<p class="tungttt"><a href="accessibility/chu-de-khac/17677-tong-thong-obama-\bat-mi\-con-duong-tro-thanh-lanh-dao-my-voi-ban-tre-viet.html#noidungnoidung">Tổng thống Obama "bật mí" con đường trở thành lãnh đạo Mỹ với bạn trẻ Việt</a></p>
                                        	<p class="tungttt"><a href="accessibility/chu-de-khac/16962-nen-cap-bang-lai-xe-so-tu-dong-cho-nguoi-khuyet-tat-viet-nam.html#noidungnoidung">Nên cấp bằng lái xe số tự động cho người khuyết tật Việt Nam</a></p>
                                        	<p class="tungttt"><a href="accessibility/chu-de-khac/16699-tinh-yeu-tan-vỡ-boi-la-nguoi-khuyet-tat.html#noidungnoidung">Tình yêu tan vỡ bởi là người khuyết tật</a></p>
                                        	<p class="tungttt"><a href="accessibility/chu-de-khac/16679-nguoi-khuyet-tat-lai-o-to.html#noidungnoidung">Người khuyết tật lái ô tô</a></p>
                                        	<p class="tungttt"><a href="accessibility/chu-de-khac/16408-do-hoa-xay-dung.html#noidungnoidung">Đồ Họa Xây Dựng</a></p>
                                    </div>
            <!-- end noidung -->
            </section><section>
            	<footer>
                	<div class="footer">
                    	<div class="doitac">

                        	<a href="http://www.fordfound.org/regions/vietnam/overview" target="_blank"><img src="images/doitacdrd/f.png" alt="AP" title="Ford Foundation"></a>
                                                        <img src="images/doitacdrd/armcharm.png" alt="amcham vietnam" title="amcham vietnam">

                        	<a href="http://www.atlanticphilanthropies.org/" target="_blank"><img src="images/doitacdrd/atlantic.png" alt="The Atlantic Philantropies" title="The Atlantic Philantropies"></a>

                        	<a href="http://www.irishaid.gov.ie/" target="_blank"><img src="images/doitacdrd/irish.png" alt="Irish Aid" title="Irish Aid"></a>

                        	<a href="http://www.nippon-foundation.or.jp/eng/" target="_blank"><img src="images/doitacdrd/nippon.png" alt="Nippon" title="Nippon"></a>

                        	<a href="http://www.invescohcm.com.vn/Quatrinhhinhthanh.html" target="_blank"><img src="images/doitacdrd/invesco.png" alt="Invesco" title="Invesco"></a>

                        	<a href="http://www.humancare1986.jp/english.html" target="_blank"><img src="images/doitacdrd/hcare.png" alt="HumanCare" title="HumanCare"></a>

                        	<a href="http://www.koica.go.kr/english/main.html" target="_blank"><img src="images/doitacdrd/logokoica.jpg" alt="Koica" title="Koica"></a>

                        	<a href="http://www.ableforum.com/" target="_blank"><img src="images/doitacdrd/hq.png" alt="Ableforum" title="Ableforum"></a>
                                                        <img src="images/doitacdrd/dpi.png" alt="Khuyết tật" title="Khuyết tật">

                        	<a href="http://australia.gov.au/" target="_blank"><img src="images/doitacdrd/ausaid.png" alt="Australia Goverment" title="Australia Goverment"></a>
                                                        <img src="images/doitacdrd/vusta.png" alt="Vusta" title="Vusta">

                        	<a href="http://www.pavietnam.vn" target="_blank"><img src="images/doitacdrd/PAvietnam.jpg" alt="Logo PAVietNam" title="PA Việt Nam"></a>

                        	<a href="http://eqvn.net/" target="_blank"><img src="images/doitacdrd/eqvn.jpg" alt="Học vien EQVN" title="Học vien EQVN"></a>

                        	<a href="https://www.usaid.gov/vi/vietnam" target="_blank"><img src="images/doitacdrd/USAID.jpg" alt="logo tổ chức USAID" title="USAID"></a>

                        	<a href="http://moveability.icrc.org/" target="_blank"><img src="images/doitacdrd/ICRC.jpg" alt=" Quỹ ICRC MoveAbility" title=" Quỹ ICRC MoveAbility"></a>

                        	<a href="http://tamnguyenviet.vn/voi-ca-tam-tinh/" target="_blank"><img src="images/doitacdrd/Tamnguyenviet01.jpg" alt="" title="Tâm nguyện Việt"></a>
                                                        <p class="clr"></p>
                        </div>
                        <div class="copyright"><p style="text-align: left;float: left;"><img src="images/icon_dien_thoai.png" alt="Điện thoại" style="margin:5px 5px 0 0;height:15px;" />028 6267 9911 - <img src="images/icon_email.png" alt="Email" style="margin:5px 5px 0 0;height:15px;" /><a href="mailto:info@drdvietnam.com" style="color: #fff;;">info@drdvietnam.com</a></p><p style="float: right;">&copy; Power by DRD Vietnam. All right reserved.</p><p class="clr"></p></div>
                    </div>
                </footer>
            </section>


	</div>
</section>
</div>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/58340a557bb7bf7f521ddde8/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
</body>
</html>
