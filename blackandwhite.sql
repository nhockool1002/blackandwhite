-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 24, 2017 lúc 01:46 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blackandwhite`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `author`
--

CREATE TABLE `author` (
  `authorid` int(100) NOT NULL,
  `authorname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `author`
--

INSERT INTO `author` (`authorid`, `authorname`) VALUES
(2, 'ThS. Nguyễn Thơ Sinh'),
(3, 'PGS. TS. Trần Thị Minh Đức');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `bookid` int(100) NOT NULL,
  `bookname` varchar(255) NOT NULL,
  `author` int(100) NOT NULL,
  `nxb` varchar(255) DEFAULT NULL,
  `year` int(100) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `des` text NOT NULL,
  `catid` int(10) NOT NULL,
  `spec` tinyint(1) NOT NULL,
  `credits` tinyint(1) NOT NULL COMMENT 'bản quyền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`bookid`, `bookname`, `author`, `nxb`, `year`, `filename`, `link`, `des`, `catid`, `spec`, `credits`) VALUES
(3, 'Các học thuyết tâm lý nhân cách', 2, 'Trống', 0, 'Cachocthuyettamlynhancach-NguyenThoSinh.png', '<iframe src=\"https://docs.google.com/document/d/1aXkrpWW8Pn0jFrZ5ig9t_LBZzOBBVf7iwoyq4YHTpy0/pub?embedded=true\"></iframe>', 'Trong các chuyên ngành Tâm lý học có ở ta, tâm lý học nhân cách là chuyên ngành non trẻ nhất. ', 1, 1, 0),
(4, 'Các thực nghiệm trong tâm lý học xã hội', 3, 'Trống', 0, 'dadas.png', '<iframe src=\"https://docs.google.com/document/d/1twnugoKJRA9Ph-9SYUX_NA4H-YU1es38caL4G0IvDGE/pub?embedded=true\"></iframe>', 'Trong hơn một thể kỉ qua, đã có nhiều thực nghiệm trong tâm lí học xã hội được tiến hành. ', 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `catid` int(10) NOT NULL,
  `catname` varchar(200) NOT NULL,
  `catnameseo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`catid`, `catname`, `catnameseo`) VALUES
(1, 'Tâm lý', 'tam-ly'),
(2, 'Nước ngoài', 'nuoc-ngoai'),
(3, 'Toán học', 'toan-hoc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `link`
--

INSERT INTO `link` (`id`, `name`, `url`) VALUES
(1, 'facebook', 'https://www.facebook.com/godfather.1995'),
(2, 'youtube', 'https://www.youtube.com/channel/UCginJHE0MRB9npdKPK8uSIA'),
(3, 'skype', ''),
(4, 'twitter', ''),
(5, 'rss', ''),
(6, 'link1', ''),
(7, 'link2', ''),
(8, 'link3', ''),
(9, 'link4', ''),
(10, 'link5', ''),
(11, 'link6', ''),
(12, 'link7', ''),
(13, 'link8', ''),
(14, 'link9', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `memup`
--

CREATE TABLE `memup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `des` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `stt` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `memup`
--

INSERT INTO `memup` (`id`, `name`, `des`, `link`, `iduser`, `stt`) VALUES
(3, 'test', 'test', 'test', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruite`
--

CREATE TABLE `recruite` (
  `rid` int(100) NOT NULL,
  `rtit` varchar(255) NOT NULL,
  `rdes` text NOT NULL,
  `rct` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `recruite`
--

INSERT INTO `recruite` (`rid`, `rtit`, `rdes`, `rct`) VALUES
(1, 'Công ty MẮT BÃO tuyển vị trí nhân viên chăm sóc khách hàng và nhân viên nhắc phí', '1. NHÂN VIÊN CHĂM SÓC KHÁCH HÀNG Địa chỉ làm việc: Hoàng Hoa Thám, P.13, Q. Tân Bình, Tp. HCM Thời gian làm việc: Xoay ca (1 ca 8 tiếng, toàn thời gian), cụ thể: - 7h-16h, 8h-17h, 9h-18h, 10h-19h....', '<p class=\"sizeable\"><strong>1. NH&Acirc;N VI&Ecirc;N CHĂM S&Oacute;C KH&Aacute;CH H&Agrave;NG</strong></p>\n<p class=\"sizeable\"><strong>Địa chỉ l&agrave;m việc:</strong>&nbsp;Ho&agrave;ng Hoa Th&aacute;m, P.13, Q. T&acirc;n B&igrave;nh, Tp. HCM</p>\n<p class=\"sizeable\"><strong>Thời gian l&agrave;m việc</strong>: Xoay ca (1 ca 8 tiếng, to&agrave;n thời gian), cụ thể:</p>\n<p class=\"sizeable\">- 7h-16h, 8h-17h, 9h-18h, 10h-19h, 11h-20h, 12h00 &ndash; 21h00</p>\n<p class=\"sizeable\">- Nghỉ 1 ng&agrave;y trong tuần theo sự sắp xếp của Trưởng bộ phận</p>\n<p class=\"sizeable\"><strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>\n<p class=\"sizeable\">- Nhận cuộc gọi, giải đ&aacute;p thắc mắc từ kh&aacute;ch h&agrave;ng</p>\n<p class=\"sizeable\">- Nhận đơn đặt h&agrave;ng, y&ecirc;u cầu hủy đơn h&agrave;ng của kh&aacute;ch</p>\n<p class=\"sizeable\">- Giải đ&aacute;p cho kh&aacute;ch h&agrave;ng về quy định đổi trả</p>\n<p class=\"sizeable\"><strong>Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\n<p class=\"sizeable\">- Giọng n&oacute;i r&otilde; r&agrave;ng, dễ nghe (kh&ocirc;ng n&oacute;i lắp, ngọng)</p>\n<p class=\"sizeable\">- Chăm chỉ, si&ecirc;ng năng, c&oacute; thể l&agrave;m việc xoay ca</p>\n<p class=\"sizeable\">- Sử dụng vi t&iacute;nh văn ph&ograve;ng</p>\n<p class=\"sizeable\">- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực chăm s&oacute;c kh&aacute;ch h&agrave;ng, tổng đ&agrave;i vi&ecirc;n</p>\n<p class=\"sizeable\">- Tốt nghiệp THPT (điều kiện phụ)</p>\n<p class=\"sizeable\"><strong>Mức lương:</strong>&nbsp;Thu nhập 5.000.000 &ndash; 6.000.000 VNĐ/th&aacute;ng</p>\n<p class=\"sizeable\"><strong>2. NH&Acirc;N VI&Ecirc;N NHẮC PH&Iacute;</strong></p>\n<p class=\"sizeable\"><strong>Địa chỉ l&agrave;m việc:</strong>&nbsp;Cộng H&ograve;a, Q. T&acirc;n B&igrave;nh, Tp. HCM</p>\n<p class=\"sizeable\"><strong>Thời gian l&agrave;m việc:</strong></p>\n<p class=\"sizeable\">L&agrave;m giờ h&agrave;nh ch&iacute;nh (07h30 &ndash; 17h30)</p>\n<p class=\"sizeable\">Nghỉ ngẫu nhi&ecirc;n 01 ng&agrave;y trong tuần theo sự sắp xếp của trưởng nh&oacute;m</p>\n<p class=\"sizeable\"><strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>\n<p class=\"sizeable\">- Gọi điện nhắc nhở kh&aacute;ch h&agrave;ng thanh khoản to&aacute;n ph&iacute; trễ hạn</p>\n<p class=\"sizeable\">- Cung cấp th&ocirc;ng tin cho kh&aacute;ch h&agrave;ng về khoản ph&iacute; của họ</p>\n<p class=\"sizeable\">- Hướng dẫn c&aacute;ch thức thanh to&aacute;n ph&ugrave; hợp cho kh&aacute;ch h&agrave;ng</p>\n<p class=\"sizeable\">- Tạo dựng mối quan hệ đ&aacute;ng tin cậy, bền vững với kh&aacute;ch h&agrave;ng trễ hạn trả ph&iacute;</p>\n<p class=\"sizeable\"><strong>Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\n<p class=\"sizeable\">- Giọng n&oacute;i r&otilde; r&agrave;ng, dễ nghe (kh&ocirc;ng n&oacute;i lắp, ngọng)</p>\n<p class=\"sizeable\">- Chăm chỉ, si&ecirc;ng năng, c&oacute; thể l&agrave;m việc xoay ca</p>\n<p class=\"sizeable\">- Giao tiếp tốt, si&ecirc;ng năng, trung thực</p>\n<p class=\"sizeable\">- Sử dụng vi t&iacute;nh văn ph&ograve;ng</p>\n<p class=\"sizeable\">- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực kinh doanh, tư vấn t&agrave;i ch&iacute;nh, telesales, chăm s&oacute;c kh&aacute;ch h&agrave;ng</p>\n<p class=\"sizeable\">- Tốt nghiệp THPT trở l&ecirc;n</p>\n<p class=\"sizeable\"><strong>Mức lương:</strong>&nbsp;7.000.000 &ndash; 10.000.000 VNĐ/th&aacute;ng (Lương cơ bản + Thưởng)</p>\n<p class=\"sizeable\"><strong>Th&ocirc;ng tin chung cho c&aacute;c vị tr&iacute;:</strong></p>\n<p class=\"sizeable\"><strong>M&ocirc;i trường l&agrave;m việc:</strong>&nbsp;Di chuyển bằng thang m&aacute;y hoặc l&agrave;m dưới trệt</p>\n<p class=\"sizeable\"><strong>Quyền lợi nh&acirc;n vi&ecirc;n:</strong></p>\n<p class=\"sizeable\">- BHYT, BHTN theo quy định nh&agrave; nước</p>\n<p class=\"sizeable\">- Thưởng KPI, th&acirc;m ni&ecirc;n</p>\n<p class=\"sizeable\">- Thưởng c&aacute;c ng&agrave;y lễ tết, sinh nhật, cưới...</p>\n<p class=\"sizeable\">- Tham gia kh&oacute;a đ&agrave;o tạo về nghiệp vụ, kỹ năng CSKH</p>\n<p class=\"sizeable\">- Tham gia c&aacute;c hoạt động ngoại kh&oacute;a của c&ocirc;ng ty tổ chức</p>\n<p class=\"sizeable\"><strong>Hồ sơ:&nbsp;</strong></p>\n<p class=\"sizeable\">C&ocirc;ng chứng kh&ocirc;ng qu&aacute; 06 th&aacute;ng</p>\n<p class=\"sizeable\">Đơn xin việc</p>\n<p class=\"sizeable\">Sơ yếu l&yacute; lịch + 2 ảnh 3x4</p>\n<p class=\"sizeable\">Kh&aacute;m sức khỏe, CMND, hộ khẩu photo c&ocirc;ng chứng</p>\n<p class=\"sizeable\"><strong>Hạn tuyển dụng:</strong>&nbsp;Tuyển thường xuy&ecirc;n</p>\n<p class=\"sizeable\"><strong>Th&ocirc;ng tin li&ecirc;n hệ tuyển dụng:</strong></p>\n<p class=\"sizeable\"><em><strong>Bộ phận Việc l&agrave;m - Trung t&acirc;m Khuyết tật v&agrave; Ph&aacute;t triển (DRD)</strong></em><br />Đ/c: 311K8 Đường số 7, Khu nh&agrave; t&aacute;i định cư Thủ Thi&ecirc;m, Phường An Ph&uacute;, Quận 2, Tp. HCM<br />SĐT: 016 999 88 336 hoặc (028) 62 67 99 22 nh&aacute;nh 113 hoặc 114 găp T&uacute; Quy&ecirc;n hoặc Phan Thị R&aacute;t<br />Email:&nbsp;<a class=\"sizeable\" href=\"mailto:vieclam@drdvietnam.com\">vieclam@drdvietnam.com</a></p>\n<p class=\"sizeable\"><strong>Ch&uacute; &yacute;:</strong>&nbsp;Để được hỗ trợ th&ocirc;ng tin tốt nhất, c&aacute;c bạn n&ecirc;n đặt c&acirc;u hỏi trực tiếp tr&ecirc;n trang website của DRD tại địa chỉ:&nbsp;<a class=\"sizeable\" href=\"http://www.drdvietnam.org/\">drdvietnam.org</a>.&nbsp;Ch&uacute;ng t&ocirc;i kh&ocirc;ng hỗ trợ trả lời tr&ecirc;n c&aacute;c website chia sẻ th&ocirc;ng tin kh&aacute;c.</p>'),
(2, 'Công ty TNHH Minh Phúc tuyển dụng vị trí Nhân viên chăm sóc khách hàng và Nhân viên Telesale sữa Vinamilk/Abbott tại Tp. HCM', '1. Nhân viên chăm sóc khách hàng cho các nhà mạng viễn thông di động\r\nThời gian làm việc:\r\nCa hành chính: (8h00 – 17h30)\r\nCa xoay: Ca sáng (7h – 14h30), ca chiều (14h30 – 22h), ca đêm (22h00 – 7h00, trung bình 1 ca/tuần)....', '<p class=\"sizeable\"><strong>1. Nhân viên chăm sóc khách hàng cho các nhà mạng viễn thông di động</strong></p>\r\n<p class=\"sizeable\"><strong>Thời gian làm việc:</strong></p>\r\n<p class=\"sizeable\">Ca hành chính: (8h00 – 17h30)</p>\r\n<p class=\"sizeable\">Ca xoay: Ca sáng (7h – 14h30), ca chiều (14h30 – 22h), ca đêm (22h00 – 7h00, trung bình 1 ca/tuần)</p>\r\n<p class=\"sizeable\">Ca Part time (8h00 – 14h00; 14h00 – 20h00; 15h00 – 21h00; 18h00 – 00h; 7h00 – 12h00; 12h00 – 17h00; 17h00 – 23h00)</p>\r\n<p class=\"sizeable\"><strong>Nơi làm việc: </strong>Trần văn Dư, phường 13, quận Tân Bình, TP. HCM</p>\r\n<p class=\"sizeable\"><strong>Mô tả công việc:</strong> Tư vấn, giải đáp thắc mắc và chia sẻ thông tin qua điện thoại cho các khách hàng đang sử dụng một trong ba nhà mạng viễn thông Vina, Mobi, Viettel</p>\r\n<p class=\"sizeable\"><strong>Yêu cầu tuyển dụng:</strong></p>\r\n<p class=\"sizeable\">Trình độ THPT hoặc Trung cấp trở lên, nếu là sinh viên thì có xác nhận của nhà trường</p>\r\n<p class=\"sizeable\">Độ tuổi: 18 – 30</p>\r\n<p class=\"sizeable\">Nam/nữ giọng nói dễ nghe, phát âm to rõ ràng, không nói tiếng địa phương</p>\r\n<p class=\"sizeable\">Biết sử dụng tin học căn bản word, exel</p>\r\n<p class=\"sizeable\">Đi lại lên cầu thang được</p>\r\n<p class=\"sizeable\">Phải tham gia khóa đào tạo kỹ năng và nghiệp vụ từ 3 đến 4 tuần vào giờ hành chính, hỗ trợ 50 ngàn/ngày đào tạo</p>\r\n<p class=\"sizeable\"><strong>Mức lương dao động:</strong> từ 4.500.000 – 6.000.000/tháng</p>\r\n<p class=\"sizeable\"><strong>2. Nhân viên Tele-Check – Talesale ngành sữa dinh dưỡng</strong></p>\r\n<p class=\"sizeable\"><strong>Thời gian làm việc:</strong> 8h00 – 17h00, 8h30 – 17h30 từ thứ 2 đến thứ 7</p>\r\n<p class=\"sizeable\"><strong>Nơi làm việc:</strong></p>\r\n<p class=\"sizeable\">Văn phòng 1: Trần văn Dư, P. 13, Q. Tân Bình, TP. HCM</p>\r\n<p class=\"sizeable\">Văn phòng 2: Nguyễn Kiệm, P.3, Q. Gò Vấp</p>\r\n<p class=\"sizeable\"><strong>Mô tả công việc:</strong></p>\r\n<p class=\"sizeable\">Gọi điện thọai cho khách hàng theo danh bạ Công ty cung cấp</p>\r\n<p class=\"sizeable\">Xác nhận dòng sữa khách hàng đang sử dụng/ tư vấn bán hàng về các mặt hàng sữa dinh dưỡng (Vinamilk/Abbott)</p>\r\n<p class=\"sizeable\"><strong>Yêu cầu tuyển dụng:</strong></p>\r\n<p class=\"sizeable\">Tối thiểu Trung cấp, nếu là sinh viên thì có xác nhận của nhà trường</p>\r\n<p class=\"sizeable\">Độ tuổi: 18 – 30</p>\r\n<p class=\"sizeable\">Nam/Nữ, giọng nói dễ nghe, phát âm chuẩn (không ngọng, lắp, giọng địa phương), ưu tiên có kinh nghiệm tư vấn và bán hàng</p>\r\n<p class=\"sizeable\">Tin học căn bản word, excel</p>\r\n<p class=\"sizeable\">Yêu thích công việc, làm việc được trong môi trường áp lực cao</p>\r\n<p class=\"sizeable\">Đi lại lên cầu thang được</p>\r\n<p class=\"sizeable\"><strong>Mức lương:</strong></p>\r\n<p class=\"sizeable\">Lương cơ bản : 4.500.000 – 6.000.000 đồng/tháng</p>\r\n<p class=\"sizeable\">Thưởng hoàn thành công việc KPI: 300.000 – 500.000 đồng/ tháng</p>\r\n<p class=\"sizeable\">Thưởng doanh số: Nếu làm vị trí Telesales (Từ 1.00000 – 3.000.000 đồng)</p>\r\n<p class=\"sizeable\"><strong>Thông tin chung cho các vị trí:</strong></p>\r\n<p class=\"sizeable\"><strong>Quyền lợi:</strong></p>\r\n<p class=\"sizeable\">Được đào tạo và cấp chứng chỉ Nghề Bán hàng qua điện thoại sau 5 tháng làm việc (Hoàn toàn miễn phí)</p>\r\n<p class=\"sizeable\">Là nơi tốt nhất để các bạn sinh viên rèn luyện kỹ năng giao tiếp, xử lý tình huống, trải nghiệm môi trường làm việc thật, nhiều áp lực và năng động</p>\r\n<p class=\"sizeable\">Được tham gia BHXH - BHYT, các chế độ phúc lợi khác của công ty</p>\r\n<p class=\"sizeable\"><strong>Môi trường làm việc:</strong> Làm việc trên lầu, di chuyển bằng thang máy. Làm việc nơi cố định, không di chuyển ra ngoài thị trường</p>\r\n<p class=\"sizeable\"><strong>Hồ sơ:</strong> Công chứng không quá 06 tháng</p>\r\n<p class=\"sizeable\">Đơn xin việc</p>\r\n<p class=\"sizeable\">Sơ yếu lý lịch + 2 ảnh 3x4</p>\r\n<p class=\"sizeable\">Khám sức khỏe, CMND, hộ khẩu</p>\r\n<p class=\"sizeable\"><strong>Hạn tuyển dụng:</strong> Hàng tháng</p>\r\n<p class=\"sizeable\"><strong>Thông tin liên hệ tuyển dụng:</strong></p>\r\n<p class=\"sizeable\"><strong><em>Bộ phận Việc làm - Trung tâm Khuyết tật và Phát triển (DRD).</em></strong><br />Đ/c: 311K8 Đường số 7, Khu nhà tái định cư Thủ Thiêm, Phường An Phú, Quận 2, Tp. HCM<br />SĐT: 016 999 88 336 hoặc (028) 62 67 99 22 nhánh 113 hoặc 114 găp Tú Quyên hoặc Phan Thị Rát<br />Email: <a class=\"sizeable\" href=\"mailto:vieclam@drdvietnam.com\">vieclam@drdvietnam.com</a></p>\r\n<p class=\"sizeable\"><strong>Chú ý:</strong></p>\r\n<p class=\"sizeable\">- Chi nhánh Công ty Minh Phúc ở Đà Nẵng đang tuyển <strong>Nhân viên chăm sóc khách hàng</strong> và <strong>Nhân viên nhập liệu</strong>. Người tìm việc muốn làm ở đây vui lòng liên hệ Bộ phận việc làm DRD với thông tin liên hệ bên trên để biết thêm thông tin chi tiết. </p>\r\n<p class=\"sizeable\">- Để được hỗ trợ thông tin tốt nhất, các bạn nên đặt câu hỏi trực tiếp trên trang website của DRD tại địa chỉ: <a class=\"sizeable\" href=\"http://www.drdvietnam.org/\">drdvietnam.org</a>. Chúng tôi không hỗ trợ trả lời trên các website chia sẻ thông tin khác.</p>'),
(3, 'Công ty AN LỘC PHÚC tuyển dụng nhân viên lắp ráp mô hình kiến trúc và họa viên kiến trúc', 'Địa chỉ làm việc: Bình Quới, Phường 28, Quận Bình Thạnh, TP. HCM\r\nThời gian làm việc: Từ thứ 2 đến thứ 7\r\nSáng: 7h30 – 11h30\r\nChiều: 13h – 17h....', '<p class=\"sizeable\"><strong>Địa chỉ l&agrave;m việc:</strong>&nbsp;B&igrave;nh Quới, Phường 28, Quận B&igrave;nh Thạnh, TP. HCM</p>\r\n<p class=\"sizeable\"><strong>Thời gian l&agrave;m việc:&nbsp;</strong>Từ thứ 2 đến thứ 7</p>\r\n<p class=\"sizeable\">S&aacute;ng: 7h30 &ndash; 11h30</p>\r\n<p class=\"sizeable\">Chiều: 13h &ndash; 17h</p>\r\n<p class=\"sizeable\"><strong>1. Vị tr&iacute;:</strong>&nbsp;Lắp r&aacute;p m&ocirc; h&igrave;nh kiến tr&uacute;c</p>\r\n<p class=\"sizeable\"><strong>Số lượng:</strong>&nbsp;4 người (nam/nữ)</p>\r\n<p class=\"sizeable\"><strong>M&ocirc; tả c&ocirc;ng việc:</strong>&nbsp;D&aacute;n keo, lắp r&aacute;p m&ocirc; h&igrave;nh c&acirc;y cảnh, nh&agrave; ở, nội thất&hellip;</p>\r\n<p class=\"sizeable\"><strong>Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\r\n<p class=\"sizeable\">Hai tay khỏe, mắt tốt hoặc khiếm th&iacute;nh</p>\r\n<p class=\"sizeable\">Y&ecirc;u th&iacute;ch c&ocirc;ng việc</p>\r\n<p class=\"sizeable\">Chăm chỉ, cẩn thận, chịu kh&oacute;</p>\r\n<p class=\"sizeable\"><strong>Mức lương:</strong></p>\r\n<p class=\"sizeable\">Ch&iacute;nh thức: Từ 4 &ndash; 8 triệu/th&aacute;ng</p>\r\n<p class=\"sizeable\">Thử việc: 3,5 triệu/th&aacute;ng</p>\r\n<p class=\"sizeable\"><strong>Thời gian thử việc:</strong>&nbsp;1 th&aacute;ng</p>\r\n<p class=\"sizeable\"><strong>2. Vị tr&iacute;:</strong>&nbsp;Họa vi&ecirc;n kiến tr&uacute;c</p>\r\n<p class=\"sizeable\"><strong>Số lượng:</strong>&nbsp;02 người (nam/nữ)</p>\r\n<p class=\"sizeable\"><strong>M&ocirc; tả c&ocirc;ng việc:</strong>&nbsp;Dựa v&agrave;o bản vẽ chuy&ecirc;n ng&agrave;nh từ b&ecirc;n thiết kế để gia c&ocirc;ng lại bản vẽ</p>\r\n<p class=\"sizeable\"><strong>Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\r\n<p class=\"sizeable\">Kiến thức nền về s&aacute;ng t&aacute;c kiến tr&uacute;c tốt, nắm vững c&aacute;c cấu tạo kh&ocirc;ng gian kiến tr&uacute;c cơ bản v&agrave; đọc hiểu bản vẽ</p>\r\n<p class=\"sizeable\">Th&agrave;nh thạo c&aacute;c phần mềm chuy&ecirc;n ng&agrave;nh: AutoCad, 3DMax, Photoshop&hellip;</p>\r\n<p class=\"sizeable\">Sử dụng tốt c&aacute;c phần mềm tin học văn ph&ograve;ng</p>\r\n<p class=\"sizeable\">Tr&igrave;nh độ tối thiểu: Trung cấp, Cao đẳng, Đại học</p>\r\n<p class=\"sizeable\"><strong>Mức lương:</strong></p>\r\n<p class=\"sizeable\">Ch&iacute;nh thức: Thỏa thuận t&ugrave;y v&agrave;o năng lực</p>\r\n<p class=\"sizeable\">Thử việc: 3,5 triệu/th&aacute;ng</p>\r\n<p class=\"sizeable\"><strong>Thời gian thử việc</strong>: 1 th&aacute;ng</p>\r\n<p class=\"sizeable\"><strong>Th&ocirc;ng tin chung cho hai vị tr&iacute;:</strong></p>\r\n<p class=\"sizeable\">C&aacute;c chế độ v&agrave; quyền lợi kh&aacute;c:</p>\r\n<p class=\"sizeable\">Hưởng lương v&agrave; phụ cấp theo chế độ của c&ocirc;ng ty v&agrave; theo thỏa thuận</p>\r\n<p class=\"sizeable\">C&oacute; cơ hội thăng tiến</p>\r\n<p class=\"sizeable\">Cơ hội huấn luyện: Được đ&agrave;o tạo theo qui định của c&ocirc;ng ty</p>\r\n<p class=\"sizeable\"><strong>Y&ecirc;u cầu hồ sơ:</strong></p>\r\n<p class=\"sizeable\">Đơn xin việc l&agrave;m</p>\r\n<p class=\"sizeable\">Sơ yếu l&yacute; lịch</p>\r\n<p class=\"sizeable\">Bản sao hộ khẩu, CMND v&agrave; c&aacute;c bằng cấp c&oacute; li&ecirc;n quan</p>\r\n<p class=\"sizeable\">Giấy kh&aacute;m sức khỏe</p>\r\n<p class=\"sizeable\"><strong>M&ocirc;i trường l&agrave;m việc:&nbsp;</strong>Thuận tiện cho người khuyết tật di chuyển xe lăn, nạng nẹp</p>\r\n<p class=\"sizeable\"><strong>Lưu &yacute;:</strong></p>\r\n<p class=\"sizeable\">C&oacute; hỗ trợ chỗ ở: Nam th&igrave; ở tại c&ocirc;ng ty, nữ th&igrave; ở trọ b&ecirc;n ngo&agrave;i c&ocirc;ng ty c&aacute;ch 50m</p>\r\n<p class=\"sizeable\">Ăn uống: Tự lo (Kế b&ecirc;n c&ocirc;ng ty c&oacute; qu&aacute;n cơm b&igrave;nh d&acirc;n)</p>\r\n<p class=\"sizeable\">Xe bu&yacute;t: Kế b&ecirc;n c&ocirc;ng ty l&agrave; bến xe bu&yacute;t số 44 đi từ Bến Th&agrave;nh đến B&igrave;nh Quới</p>\r\n<p class=\"sizeable\"><strong>Hạn tuyển dụng:</strong>&nbsp;28/07/2017</p>\r\n<p class=\"sizeable\"><strong>Th&ocirc;ng tin li&ecirc;n hệ tuyển dụng:</strong></p>\r\n<p class=\"sizeable\"><em><strong>Bộ phận Việc l&agrave;m - Trung t&acirc;m Khuyết tật v&agrave; Ph&aacute;t triển (DRD)</strong></em><br />Đ/c: 311K8 Đường số 7, Khu nh&agrave; t&aacute;i định cư Thủ Thi&ecirc;m, Phường An Ph&uacute;, Quận 2, Tp. HCM<br />SĐT: 016 999 88 336 hoặc (028) 62 67 99 22 nh&aacute;nh 113 hoặc 114 găp T&uacute; Quy&ecirc;n hoặc Phan Thị R&aacute;t<br />Email:&nbsp;<a class=\"sizeable\">vieclam@drdvietnam.com</a></p>\r\n<p class=\"sizeable\"><iframe src=\"https://www.youtube.com/embed/K2YSR5nQ4X0?ecver=1\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></p>\r\n<p class=\"sizeable\"><strong>Ch&uacute; &yacute;:</strong>&nbsp;Để được hỗ trợ th&ocirc;ng tin tốt nhất, c&aacute;c bạn n&ecirc;n đặt c&acirc;u hỏi trực tiếp tr&ecirc;n trang website của DRD tại địa chỉ:&nbsp;<a class=\"sizeable\" href=\"http://www.drdvietnam.org/\">drdvietnam.org</a>.&nbsp;Ch&uacute;ng t&ocirc;i kh&ocirc;ng hỗ trợ trả lời tr&ecirc;n c&aacute;c website chia sẻ th&ocirc;ng tin kh&aacute;c.</p>'),
(4, 'Công ty Trường Minh tuyển Tổng đài viên Chăm sóc khách hàng Mobifone/Vinaphone làm việc tại Tp. HCM, Tp. Đà Nẵng và Hà Nội', 'Địa chỉ làm việc: \r\nChi nhánh Hà Nội: Tòa nhà MECO COMPLEX Ngõ 102 Trường Chinh, Phương Mai, Đống Đa\r\nChi nhánh Đà Nẵng: Đường số 2, KCN An Đồn, Q. Sơn Trà\r\nChi nhánh Hồ Chí Minh: Đường Lê Trung Nghĩa, P. 13, Q. Tân Bình ...', '<p class=\"sizeable\"><strong>Địa chỉ l&agrave;m việc:&nbsp;</strong></p>\r\n<p class=\"sizeable\"><em><strong>Chi nh&aacute;nh H&agrave; Nội:</strong></em>&nbsp;T&ograve;a nh&agrave; MECO COMPLEX Ng&otilde; 102 Trường Chinh, Phương Mai, Đống Đa</p>\r\n<p class=\"sizeable\"><em><strong>Chi nh&aacute;nh&nbsp;Đ&agrave; Nẵng:</strong></em>&nbsp;Đường số 2, KCN An Đồn, Q. Sơn Tr&agrave;</p>\r\n<p class=\"sizeable\"><em><strong>Chi nh&aacute;nh&nbsp;Hồ Ch&iacute; Minh:</strong></em>&nbsp;Đường L&ecirc; Trung Nghĩa, P. 13, Q. T&acirc;n B&igrave;nh&nbsp;</p>\r\n<p class=\"sizeable\"><strong>Thời gian l&agrave;m việc:</strong>&nbsp;Theo ca (t&ugrave;y v&agrave;o t&igrave;nh trạng khuyết tật v&agrave; phương tiện đi lại sẽ sắp xếp linh động thời gian ph&ugrave; hợp)</p>\r\n<p class=\"sizeable\"><em><strong>To&agrave;n thời gian:</strong></em>&nbsp;Xoay ca linh động 7 tiếng rưỡi, 6 ca/1 tuần, 1 ca đ&ecirc;m/th&aacute;ng</p>\r\n<p class=\"sizeable\"><em><strong>B&aacute;n thời gian:</strong>&nbsp;</em>7h - 12h; 9h - 14h; 17h - 22h, 18h00 - 23h00&hellip;</p>\r\n<p class=\"sizeable\"><strong>Số lượng:&nbsp;</strong>Li&ecirc;n tục</p>\r\n<p class=\"sizeable\"><strong>M&ocirc; tả c&ocirc;ng việc:</strong>&nbsp;Nghe cuộc gọi từ kh&aacute;ch h&agrave;ng sử dụng mạng Mobifone/Vinaphone, giải đ&aacute;p thắc mắc về c&aacute;c dịch vụ của nh&agrave; mạng tr&ecirc;n</p>\r\n<p class=\"sizeable\"><strong>Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\r\n<p class=\"sizeable\"><strong>Dạng khuyết tật:</strong>&nbsp;Vận động</p>\r\n<p class=\"sizeable\"><strong>Về tr&igrave;nh độ:</strong></p>\r\n<p class=\"sizeable\">Kh&ocirc;ng y&ecirc;u cầu đối với mạng Vinaphone</p>\r\n<p class=\"sizeable\">Tốt nghiệp THPT trở l&ecirc;n đối với mạng Mobifone</p>\r\n<p class=\"sizeable\"><strong>Kỹ năng:</strong>&nbsp;Chỉ cần sử dụng được m&aacute;y t&iacute;nh, giọng n&oacute;i dễ nghe, kh&ocirc;ng n&oacute;i ngọng, n&oacute;i lắp</p>\r\n<p class=\"sizeable\"><strong>Th&aacute;i độ:</strong>&nbsp;Hiền l&agrave;nh, th&acirc;n thiện, chu đ&aacute;o, ki&ecirc;n nhẫn, c&oacute; tinh thần học hỏi, y&ecirc;u th&iacute;ch c&ocirc;ng việc</p>\r\n<p class=\"sizeable\"><strong>Mức lương:</strong></p>\r\n<p class=\"sizeable\"><em><strong>To&agrave;n thời gian:</strong></em></p>\r\n<p class=\"sizeable\">Thử việc: Từ 3 &ndash; 4 triệu/th&aacute;ng (khoảng 2 th&aacute;ng, c&oacute; thể sớm hơn t&ugrave;y v&agrave;o khả năng)</p>\r\n<p class=\"sizeable\">Ch&iacute;nh thức: Từ 4 - 8 triệu/th&aacute;ng (thưởng theo năng suất)</p>\r\n<p class=\"sizeable\"><em><strong>B&aacute;n thời gian:</strong>&nbsp;</em>Theo chỉ ti&ecirc;u (trung b&igrave;nh 2 &ndash; 3,5 triệu/th&aacute;ng)</p>\r\n<p class=\"sizeable\"><strong>Quyền lợi kh&aacute;c:</strong>&nbsp;Nghỉ 1 ng&agrave;y/ tuần. C&oacute; chế độ BHYT nếu l&agrave;m to&agrave;n thời gian. Phụ cấp ca đ&ecirc;m, thưởng Tết/lễ. Được cấp chứng nhận kỹ năng Chăm s&oacute;c kh&aacute;ch h&agrave;ng</p>\r\n<p class=\"sizeable\"><strong>M&ocirc;i trường l&agrave;m việc:</strong>&nbsp;V&ocirc; c&ugrave;ng thuận tiện. L&agrave;m việc trong văn ph&ograve;ng m&aacute;y lạnh tại lầu 2</p>\r\n<p class=\"sizeable\"><strong>Lưu &yacute;:</strong></p>\r\n<p class=\"sizeable\">Thời gian đầu c&ocirc;ng ty dạy nghiệp vụ miễn ph&iacute; trong khoảng 1 th&aacute;ng. C&ocirc;ng ty c&oacute; hỗ trợ tiền cơm l&agrave; 30.000/ng&agrave;y</p>\r\n<p class=\"sizeable\">Việc ăn/uống/ở tự lo</p>\r\n<p class=\"sizeable\"><strong>Hạn tuyển dụng:&nbsp;</strong>Tuyển thường xuy&ecirc;n</p>\r\n<p class=\"sizeable\"><strong>Th&ocirc;ng tin li&ecirc;n hệ tuyển dụng cho ứng vi&ecirc;n muốn ứng tuyển ở Tp. Đ&agrave; Nẵng:</strong></p>\r\n<p class=\"sizeable\"><em><strong>Hội Người khuyết tật Tp. Đ&agrave; Nẵng</strong></em></p>\r\n<p class=\"sizeable\">Đ/c: Số 66 Điện Biện Phủ, P. Ch&iacute;nh Gi&aacute;n, Q. Thanh Kh&ecirc;, Tp. Đ&agrave; Nẵng</p>\r\n<p class=\"sizeable\">SĐT: (0236) 36 51 57 15 hoặc 0904 106 601 (chị Đặng Hương Giang)</p>\r\n<p class=\"sizeable\">Email: danggiangvn@gmail.com</p>\r\n<p class=\"sizeable\"><strong>Th&ocirc;ng tin li&ecirc;n hệ tuyển dụng cho ứng vi&ecirc;n muốn ứng tuyển ở Tp. HCM v&agrave; H&agrave; Nội:</strong></p>\r\n<p class=\"sizeable\"><em><strong>Bộ phận Việc l&agrave;m - Trung t&acirc;m Khuyết tật v&agrave; Ph&aacute;t triển (DRD)</strong></em><br />Đ/c: 311K8 Đường số 7, Khu nh&agrave; t&aacute;i định cư Thủ Thi&ecirc;m, Phường An Ph&uacute;, Quận 2, Tp. HCM<br />SĐT: 016 999 88 336 hoặc (028) 62 67 99 22 nh&aacute;nh 113 hoặc 114 găp T&uacute; Quy&ecirc;n hoặc Phan Thị R&aacute;t<br />Email:&nbsp;<a class=\"sizeable\" href=\"mailto:vieclam@drdvietnam.com\">vieclam@drdvietnam.com</a></p>\r\n<p class=\"sizeable\"><strong>Ch&uacute; &yacute;:</strong>&nbsp;Để được hỗ trợ th&ocirc;ng tin tốt nhất, c&aacute;c bạn n&ecirc;n đặt c&acirc;u hỏi trực tiếp tr&ecirc;n trang website của DRD tại địa chỉ:&nbsp;<a class=\"sizeable\" href=\"http://www.drdvietnam.org/\">drdvietnam.org</a>.&nbsp;Ch&uacute;ng t&ocirc;i kh&ocirc;ng hỗ trợ trả lời tr&ecirc;n c&aacute;c website chia sẻ th&ocirc;ng tin kh&aacute;c.</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `scholarship`
--

CREATE TABLE `scholarship` (
  `sid` int(100) NOT NULL,
  `stit` varchar(255) NOT NULL,
  `sdes` text NOT NULL,
  `sct` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `scholarship`
--

INSERT INTO `scholarship` (`sid`, `stit`, `sdes`, `sct`) VALUES
(1, 'Học bổng “Người bạn đồng hành” dành cho sinh viên khuyết tật', '1. Mục đích chương trình\r\nChuơng trình Học bổng Người bạn đồng hành tạo thêm điều kiện học tập và phát triển cho sinh viên khuyết tật, đồng thời giúp các em ý thức được quyền lợi và trách nhiệm của mình trong xã hội.....', '<div id=\"noidungcopy\" class=\"gioithieu font13\">\r\n<p class=\"sizeable\"><strong><em>Giới thiệu về học bổng “Người bạn đồng hành” </em></strong><strong><em>dành cho</em></strong></p>\r\n<p class=\"sizeable\"><strong><em>sinh viên khuyết tật</em></strong></p>\r\n<p class=\"sizeable\"><strong>1. Mục đích chương trình</strong></p>\r\n<p class=\"sizeable\">Chuơng trình Học bổng Người bạn đồng hành tạo thêm điều kiện học tập và phát triển cho sinh viên khuyết tật, đồng thời giúp các em ý thức được quyền lợi và trách nhiệm của mình trong xã hội.</p>\r\n<p class=\"sizeable\">DRD tin rằng khi có được cơ hội học tập, người khuyết tật (NKT) sẽ:</p>\r\n<p class=\"sizeable\">- Biết cách cư xử chuẩn mực và hoàn thiện nhân cách.</p>\r\n<p class=\"sizeable\">- Mở rộng tầm nhìn, có kỹ năng sống, tự tin hơn vào năng lực cá nhân.</p>\r\n<p class=\"sizeable\">- Có cơ hội tự khẳng định mình, từ đó góp phần thay đổi cách nhìn chung của cộng đồng đối với khả năng của NKT.</p>\r\n<p class=\"sizeable\">- Tìm được việc làm phù hợp với khả năng, ổn định cuộc sống bản thân, phụ giúp gia đình, giúp ích cho cộng đồng và đóng góp phần vào sự phát triển chung của đất nuớc.</p>\r\n<p class=\"sizeable\"><strong>2. Tác động của chương trình</strong></p>\r\n<p class=\"sizeable\">- Sinh viên khuyết tật nhận học bổng đồng thời có được cơ hội để hiểu thêm triết lý sống “mình vì mọi người, mọi người vì mình”, được trang bị thêm kiến thức về lĩnh vực khuyết tật và kỹ năng sống thông qua những buổi sinh hoạt với DRD. Sau khi sinh viên ra trường, DRD sẽ giúp sinh viên tiếp cận với các cơ hội việc làm thông qua mạng lưới mà DRD vẫn đang phát triển.</p>\r\n<p class=\"sizeable\">- Ngoài ra, sinh viên khuyết tật còn được thử sức với vai trò tham gia tổ chức các chương trình chia sẻ kỹ năng cho các bạn sinh viên khuyết tật khác góp phần nâng cao sự tự tin và năng lực hòa nhập xã hội</p>\r\n<p class=\"sizeable\"><strong>3. Đối tượng nhận học bổng</strong></p>\r\n<p class=\"sizeable\">- <em><strong>Sinh viên khuyết tật</strong></em> đang theo học tại các trường <em><strong>Đại học, Cao đẳng trên địa bàn TP. HCM</strong></em>.</p>\r\n<p class=\"sizeable\">- Học lực từ 6,5 trở lên (đối với sinh viên năm 2 trở lên) và điểm học bạ từ 7,0 trở lên (đối với sinh viên năm 1).</p>\r\n<p class=\"sizeable\">- Đồng ý để DRD đưa thông tin cá nhân liên quan lên mục Học bổng DRD trên trang web DRD.</p>\r\n<p class=\"sizeable\"><strong>4. Tiêu chí lựa chọn</strong></p>\r\n<p class=\"sizeable\">- Gặp khó khăn về tài chính.</p>\r\n<p class=\"sizeable\">- Có kế hoạch, mục tiêu học tập rõ ràng.</p>\r\n<p class=\"sizeable\">- Có tinh thần cộng đồng/ biết vì người khác.</p>\r\n<p class=\"sizeable\"><em><strong>Ưu tiên:</strong></em> Nữ, vùng sâu vùng xa, dân tộc thiểu số.</p>\r\n<p class=\"sizeable\"><strong>5. Mức học bổng</strong></p>\r\n<p class=\"sizeable\">Trợ cấp hàng tháng: Có 2 mức hỗ trợ cho từng trường hợp của sinh viên khuyết tật:</p>\r\n<p class=\"sizeable\">1 triệu đồng và 500 ngàn đồng.</p>\r\n<p class=\"sizeable\"><strong>6. Thời gian nộp hồ sơ</strong></p>\r\n<p class=\"sizeable\">Mỗi năm, DRD có 2 đợt nhận hồ sơ và xét học bổng:</p>\r\n<p class=\"sizeable\">- Đợt 1: Từ 1/4 đến 30/5 nhận. 30/6 hạn thông báo kết quả</p>\r\n<p class=\"sizeable\">- Đợt 2: Từ 1/10 đến 30/11 nhận. 30/12 hạn thông báo kết quả</p>\r\n<p class=\"sizeable\"><strong>7. Xét duy trì</strong></p>\r\n<p class=\"sizeable\">Đối với những sinh viên khuyết tật đã được nhận học bổng, ở những năm sau đó, các bạn không cần làm lại hồ sơ. Tuy nhiên, sinh viên phải gửi bảng điểm ngay khi có kết quả của từng học kỳ để chương trình xét quyết định tiếp tục trao học bổng hoặc dừng.</p>\r\n<p class=\"sizeable\"><strong>8. Yêu cầu khi nhận học bổng</strong></p>\r\n<p class=\"sizeable\">- Gửi báo cáo đều đặn (3 tháng/lần).</p>\r\n<p class=\"sizeable\">- Thái độ hợp tác và giữ liên hệ với nhóm học bổng thường xuyên.</p>\r\n<p class=\"sizeable\">- Tham gia (có thể lựa chọn) các hoạt động thể hiện tinh thần, trách nhiệm xã hội: dạy kèm cho trẻ khuyết tật, tham gia tổ chức các sự kiện, hỗ trợ các bạn sinh viên khuyết tật khác…</p>\r\n<p class=\"sizeable\"><strong>9. Hồ sơ bao gồm</strong></p>\r\n<p class=\"sizeable\">- Đơn xét Học bổng người bàn đồng hành, gồm: Thông tin cá nhân và hoàn cảnh gia đình, qua một trong hai cách sau:</p>\r\n<p class=\"sizeable\">o Hoàn thành mẫu đính kèm (<a class=\"sizeable\" href=\"http://www.drdvietnam.org/images/hinh%20tin/2017/03/DRD_Mau_don_xin_Hoc_bong_NBDH.docx\">>> Tải mẫu đơn tại đây</a>)</p>\r\n<p class=\"sizeable\">o Link đăng ký: <a class=\"sizeable\" href=\"http://www.google.com/url?q=http%3A%2F%2Fbit.ly%2Fhocbongnguoibandonghanh&sa=D&sntz=1&usg=AFQjCNFl8gu0QHRk7Bmtbp8U8FIM1fB2Vw\">http://bit.ly/hocbongnguoibandonghanh</a></p>\r\n<p class=\"sizeable\">- Bảng điểm kết quả học tập tổng hợp các học kỳ có dấu mộc nhà trường (đối với sinh viên năm 2 trở lên).</p>\r\n<p class=\"sizeable\">- Photo học bạ Trung học phổ thông và giấy báo trúng tuyển (đối với sinh viên năm 1 nếu chưa có bảng điểm).</p>\r\n<p class=\"sizeable\">- Photo giấy chứng nhận hộ cận nghèo, hộ nghèo hoặc giấy xác nhận gia đình khó khăn về kinh tế (nếu có).</p>\r\n<p class=\"sizeable\">- Một tấm ảnh toàn thân, nhìn rõ mặt và dạng khuyết tật.</p>\r\n<p class=\"sizeable\"><strong>10. Thông tin liên hệ</strong></p>\r\n<p class=\"sizeable\"><em><strong>Người phụ trách:</strong></em> Phan Thị Rát</p>\r\n<p class=\"sizeable\"><em><strong>Số điện thoại:</strong> </em>08 6267 9911 (nhánh 114) hoặc: 0126 459 8210</p>\r\n<p class=\"sizeable\">Hình thức nộp hồ sơ</p>\r\n<p class=\"sizeable\">Vui lòng gửi qua email hoặc bưu điện:</p>\r\n<p class=\"sizeable\">Email: <a class=\"sizeable\" href=\"mailto:ratphan@drdvietnam.com\">ratphan@drdvietnam.com</a></p>\r\n<p class=\"sizeable\">Địa chỉ: 311K8 Khu nhà tái định cư Thủ Thiêm, P. An Phú, Q. 2, Tp. HCM</p>\r\n<p class=\"sizeable\"><em><strong>Để thuận tiện và tiết kiệm thời gian, chi phí cho các bạn sinh viên, chúng tôi khuyến khích gửi bằng email và đăng ký thông tin qua link đăng ký trên.</strong></em></p>\r\n</div>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `userid` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `email`) VALUES
(1, 'admin', '6ac66b5cb3d198e4587a747c13ac3c9d', 'admin@blackandwhite.org'),
(2, 'support', 'fc7f6bae545704a1ab737f3ad0b8d656', 'support@blackandwhite.org'),
(3, 'bientap1', '202cb962ac59075b964b07152d234b70', 'bientap@blackandwhite.org');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`authorid`);

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`),
  ADD KEY `author` (`author`),
  ADD KEY `catid` (`catid`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Chỉ mục cho bảng `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `memup`
--
ALTER TABLE `memup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`);

--
-- Chỉ mục cho bảng `recruite`
--
ALTER TABLE `recruite`
  ADD PRIMARY KEY (`rid`);

--
-- Chỉ mục cho bảng `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`sid`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `author`
--
ALTER TABLE `author`
  MODIFY `authorid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `memup`
--
ALTER TABLE `memup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `recruite`
--
ALTER TABLE `recruite`
  MODIFY `rid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `sid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`author`) REFERENCES `author` (`authorid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `memup`
--
ALTER TABLE `memup`
  ADD CONSTRAINT `memup_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
