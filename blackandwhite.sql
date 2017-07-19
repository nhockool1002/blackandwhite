-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 19, 2017 lúc 11:40 AM
-- Phiên bản máy phục vụ: 10.1.25-MariaDB
-- Phiên bản PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
(3, 'CÁC HỌC THUYẾT TÂM LÝ NHÂN CÁCH', 2, 'Trống', 0, 'Cachocthuyettamlynhancach-NguyenThoSinh.png', '<iframe src=\"https://docs.google.com/document/d/1aXkrpWW8Pn0jFrZ5ig9t_LBZzOBBVf7iwoyq4YHTpy0/pub?embedded=true\"></iframe>', 'Trong các chuyên ngành Tâm lý học có ở ta, tâm lý học nhân cách là chuyên ngành non trẻ nhất. Mà chẳng phải chỉ ở ta mới như vậy, như chính trong nội dung cuốn sách này cũng cho ta thấy, đó cũng là tình trạng chung của tâm lý học thế giới.', 1, 1, 0),
(4, 'CÁC THỰC NGHIỆM TRONG TÂM LÝ HỌC XÃ HỘI', 3, 'Trống', 0, 'dadas.png', '<iframe src=\"https://docs.google.com/document/d/1twnugoKJRA9Ph-9SYUX_NA4H-YU1es38caL4G0IvDGE/pub?embedded=true\"></iframe>', 'Trong hơn một thể kỉ qua, đã có nhiều thực nghiệm trong tâm lí học xã hội được tiến hành. Những thực nghiệm này không chỉ góp phần xây dựng cơ sở lí luận cho tâm lí học xã hội, mà nó còn giải quyết những vấn đề tâm lí nảy sinh trong đời sống xã hội thuộc các lĩnh vực khác nhau.', 1, 1, 0);

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
(1, 'Công ty MẮT BÃO tuyển vị trí nhân viên chăm sóc khách hàng và nhân viên nhắc phí', '1. NHÂN VIÊN CHĂM SÓC KHÁCH HÀNG Địa chỉ làm việc: Hoàng Hoa Thám, P.13, Q. Tân Bình, Tp. HCM Thời gian làm việc: Xoay ca (1 ca 8 tiếng, toàn thời gian), cụ thể: - 7h-16h, 8h-17h, 9h-18h, 10h-19h....', '1. NHÂN VIÊN CHĂM SÓC KHÁCH HÀNG\r\nĐịa chỉ làm việc: Hoàng Hoa Thám, P.13, Q. Tân Bình, Tp. HCM\r\nThời gian làm việc: Xoay ca (1 ca 8 tiếng, toàn thời gian), cụ thể:\r\n- 7h-16h, 8h-17h, 9h-18h, 10h-19h, 11h-20h, 12h00 – 21h00\r\n- Nghỉ 1 ngày trong tuần theo sự sắp xếp của Trưởng bộ phận\r\nMô tả công việc:\r\n- Nhận cuộc gọi, giải đáp thắc mắc từ khách hàng\r\n- Nhận đơn đặt hàng, yêu cầu hủy đơn hàng của khách\r\n- Giải đáp cho khách hàng về quy định đổi trả\r\nYêu cầu công việc:\r\n- Giọng nói rõ ràng, dễ nghe (không nói lắp, ngọng)\r\n- Chăm chỉ, siêng năng, có thể làm việc xoay ca\r\n- Sử dụng vi tính văn phòng\r\n- Ưu tiên ứng viên có kinh nghiệm trong lĩnh vực chăm sóc khách hàng, tổng đài viên\r\n- Tốt nghiệp THPT (điều kiện phụ)\r\nMức lương: Thu nhập 5.000.000 – 6.000.000 VNĐ/tháng\r\n2. NHÂN VIÊN NHẮC PHÍ\r\nĐịa chỉ làm việc: Cộng Hòa, Q. Tân Bình, Tp. HCM\r\nThời gian làm việc:\r\nLàm giờ hành chính (07h30 – 17h30)\r\nNghỉ ngẫu nhiên 01 ngày trong tuần theo sự sắp xếp của trưởng nhóm\r\nMô tả công việc:\r\n- Gọi điện nhắc nhở khách hàng thanh khoản toán phí trễ hạn\r\n- Cung cấp thông tin cho khách hàng về khoản phí của họ\r\n- Hướng dẫn cách thức thanh toán phù hợp cho khách hàng\r\n- Tạo dựng mối quan hệ đáng tin cậy, bền vững với khách hàng trễ hạn trả phí\r\nYêu cầu công việc:\r\n- Giọng nói rõ ràng, dễ nghe (không nói lắp, ngọng)\r\n- Chăm chỉ, siêng năng, có thể làm việc xoay ca\r\n- Giao tiếp tốt, siêng năng, trung thực\r\n- Sử dụng vi tính văn phòng\r\n- Ưu tiên ứng viên có kinh nghiệm trong lĩnh vực kinh doanh, tư vấn tài chính, telesales, chăm sóc khách hàng\r\n- Tốt nghiệp THPT trở lên\r\nMức lương: 7.000.000 – 10.000.000 VNĐ/tháng (Lương cơ bản + Thưởng)\r\nThông tin chung cho các vị trí:\r\nMôi trường làm việc: Di chuyển bằng thang máy hoặc làm dưới trệt\r\nQuyền lợi nhân viên:\r\n- BHYT, BHTN theo quy định nhà nước\r\n- Thưởng KPI, thâm niên\r\n- Thưởng các ngày lễ tết, sinh nhật, cưới...\r\n- Tham gia khóa đào tạo về nghiệp vụ, kỹ năng CSKH\r\n- Tham gia các hoạt động ngoại khóa của công ty tổ chức\r\nHồ sơ: \r\nCông chứng không quá 06 tháng\r\nĐơn xin việc\r\nSơ yếu lý lịch + 2 ảnh 3x4\r\nKhám sức khỏe, CMND, hộ khẩu photo công chứng\r\nHạn tuyển dụng: Tuyển thường xuyên\r\nThông tin liên hệ tuyển dụng:\r\nBộ phận Việc làm - Trung tâm Khuyết tật và Phát triển (DRD)\r\nĐ/c: 311K8 Đường số 7, Khu nhà tái định cư Thủ Thiêm, Phường An Phú, Quận 2, Tp. HCM\r\nSĐT: 016 999 88 336 hoặc (028) 62 67 99 22 nhánh 113 hoặc 114 găp Tú Quyên hoặc Phan Thị Rát\r\nEmail: vieclam@drdvietnam.com\r\nChú ý: Để được hỗ trợ thông tin tốt nhất, các bạn nên đặt câu hỏi trực tiếp trên trang website của DRD tại địa chỉ: drdvietnam.org. Chúng tôi không hỗ trợ trả lời trên các website chia sẻ thông tin khác.');

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
-- Chỉ mục cho bảng `recruite`
--
ALTER TABLE `recruite`
  ADD PRIMARY KEY (`rid`);

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
-- AUTO_INCREMENT cho bảng `recruite`
--
ALTER TABLE `recruite`
  MODIFY `rid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
