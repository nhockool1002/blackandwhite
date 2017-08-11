-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 11, 2017 at 08:56 AM
-- Server version: 5.6.36-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blackand_baw`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `authorid` int(100) NOT NULL,
  `authorname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`authorid`, `authorname`) VALUES
(2, 'ThS. Nguyễn Thơ Sinh'),
(3, 'PGS. TS. Trần Thị Minh Đức'),
(4, 'A.R.  LURIA'),
(5, 'Đang cập nhật'),
(6, 'Mai Huy Bích'),
(7, 'Trần Hữu Quang'),
(8, 'ThS. Tạ Minh'),
(9, 'Daniel Goleman'),
(10, 'TRẦN HIỆP'),
(11, 'ThS. LÊ THỊ MỸ HIỀN'),
(12, 'ThS. Lê Chí An'),
(13, 'TS. TRẦN THỊ KIM XUYẾN'),
(14, 'Nguyễn Hữu Nhân'),
(15, 'TS. ĐÀO DUY THANH'),
(16, 'LÊ NGỌC HÙNG'),
(17, 'Lê Hải Thanh'),
(18, 'TS. Đoàn Nam Hương'),
(19, 'TS. Đỗ Nguyên Phương'),
(20, 'GASTON BOUTHOUL'),
(21, 'ĐÀO THỊ OANH'),
(22, 'Nguyễn Thị Oanh'),
(23, 'Ths. LÝ MINH TIÊN'),
(24, 'PTS. Nguyễn Văn Nhận'),
(25, 'Phan Trọng Ngọ'),
(26, 'Trần Thị Thúy Vinh'),
(27, 'ThS. Trương Thị Xuân Huệ'),
(28, 'NGUYỄN QUANG UẨN'),
(29, 'TS. HUỲNH VĂN SƠN'),
(30, 'TS. THÁI TRÍ DŨNG'),
(31, 'P6S.TS LÊ THỊ HOA'),
(32, 'NGUYỄN NGỌC BÍCH'),
(33, 'PGS. TS. Bùi Ngọc Oánh'),
(34, 'NGUYỄN HỮU THỤ'),
(35, 'GUSTAVE LE BON'),
(36, 'NGUYỄN THỊ NHƯ MAI'),
(37, 'Dương Thị Diệu Hoa'),
(38, 'ThS. LÊ HOÀNG THẾ HUY'),
(39, 'TS. NGUYỄN VĂN TUẤN'),
(40, 'ERICH FROMM'),
(41, 'B.R. Hergenhahn'),
(42, 'ThS. VŨ MỘNG ĐÓA'),
(43, 'TS. LÊ THỊ MINH HÀ'),
(44, 'NGUYỄN BÍCH THỦY'),
(45, 'Tân Việt'),
(46, 'Nguyễn Thanh Tuấn – Tháng Vu Lan'),
(47, 'Trần Quốc Vượng'),
(48, 'GS.TS. NGUYỄN VĂN ĐÍNH - PGS. TS. TRẦN THỊ MINH HOÀ'),
(49, 'Vương Tuyển'),
(50, 'G.B.SANSOM'),
(51, 'MINH ĐƯỜNG'),
(52, 'VƯƠNG TÚ TRUNG'),
(53, 'TRIỀU SƠN'),
(54, 'ĐOÀN HUY OÁNH'),
(55, 'JANA S. MARZANO - DEBRA J. PICKERING'),
(56, 'PGS.TS Phạm Viết Vượng'),
(57, 'DƯƠNG THIỆU TỐNG'),
(58, 'PGS.TS. NGUYỄN VĂN KHÔI'),
(59, 'NSƯT. TS. Đặng Huỳnh Mai'),
(60, 'FUKUZAWA YUKICHI'),
(61, 'NGUYỄN ĐĂNG TIẾN'),
(62, 'TRẦN KIỂM'),
(63, 'TRẦN THỊ MINH HẰNG'),
(64, 'Trần Thị Tuyết Oanh'),
(65, 'Đinh Văn Vang'),
(66, 'NGUYỄN THỊ BÍCH HỒNG - VÕ VĂN NAM'),
(67, 'PHAN TRỌNG BÁU'),
(68, 'TS. TRẦN THỊ HUƠNG'),
(69, 'GS. NGUYỄN VĂN LÊ'),
(70, 'LƯU KHÁNH THƠ'),
(71, 'DƯƠNG QUẢNG HÀM'),
(72, 'Đinh Gia Khánh – Bùi Duy Tân – Mai Cao Chương'),
(73, 'Đoàn Lê Giang – Phan Mạnh Hùng'),
(74, 'TRẦN ĐỒNG MINH'),
(75, 'HỒ XUÂN HƯƠNG'),
(76, 'Hương Giang'),
(77, 'LÊ MINH'),
(78, 'LÊ BÁ HÁN'),
(79, 'ALBERTO MORAVIA'),
(80, 'TRẦN THỊ PHƯƠNG PHƯƠNG'),
(81, 'Bùi Minh Toán - Lê A - Đỗ Việt Hùng'),
(82, 'NGUYỄN ĐỨC DÂN'),
(83, 'Nguyễn Huệ Chi'),
(84, 'HÀ MINH ĐỨC'),
(85, 'KIỀU VĂN'),
(86, 'TRẦN ĐÌNH SỬ'),
(87, 'EDMOND DE AMICIS'),
(88, 'NGUYỄN VĂN TÙNG'),
(89, 'BẢO NINH'),
(90, 'Lê Tiến Dũng'),
(91, 'HỒ CHÍ MINH'),
(92, 'NHẬT CHIÊU'),
(93, 'NGUYỄN ĐĂNG MẠNH'),
(94, 'MAI HƯƠNG'),
(95, 'TRẦN ÍCH NGUYÊN'),
(96, 'VŨ THANH VIỆT'),
(97, 'ALESSANDRO BARICCO'),
(98, 'Bùi Văn Nguyên – Nguyễn Ngọc Côn – Nguyễn Nghĩa Dân – Lý Hữu Tấn – Hoàng Tiến Tựu – Đỗ Bình Trị – Lê Trí Viễn'),
(99, 'Lê Trí Viễn – Phan Côn – Đặng Thanh Lê – Phạm Văn Luận – Lê Hoài Nam'),
(100, 'Nguyễn Nhật Ánh'),
(101, 'GS. Vũ Ngọc Khánh'),
(102, 'Lữ Huy Nguyên'),
(103, 'Hoàng Dũng - Bùi Mạnh Hùng'),
(104, 'TS. Nguyễn Thị Ngọc Điệp'),
(105, 'Nguyễn Thị Ly Kha'),
(106, 'THU HÀ'),
(107, 'Mai Ngọc Chừ - Vũ Đức Nghiệu - Hoàng Trọng Phiến'),
(108, 'Đinh Lê Thư – Nguyễn Văn Huệ'),
(109, 'Nguyễn Ngọc Tư'),
(110, 'Ths. Nguyễn Thị Minh Phượng - Ths. Phạm Thị Thúy'),
(111, 'Bùi Văn Nguyên - Hà Minh Đức'),
(112, 'PHAN TẤN TÀI'),
(113, 'VŨ QUẦN PHƯƠNG'),
(114, 'Lê Thị Hoài Nam'),
(115, 'CHU VĂN SƠN'),
(116, 'LUIGI PIRANDELLO'),
(117, 'Sưu tầm'),
(118, 'Tô Hoài'),
(119, 'Vũ Đình Giang'),
(120, 'Ái Dung'),
(121, 'Phương Trinh'),
(122, 'Stefan zweig'),
(123, 'Lâm Viên'),
(124, 'Quỳnh Dao'),
(125, 'Đỗ Hải Yến'),
(126, 'Hà Thanh Phúc'),
(127, 'Nguyễn Thị Thảo An'),
(128, 'Ernest Hemingway'),
(129, 'Bùi Hiển'),
(130, 'Bondar Aleksandr'),
(131, 'Phan Hồn Nhiên'),
(132, 'Hoàng Dược Thảo'),
(133, 'Y Ban'),
(134, 'Du Tử Lê'),
(135, 'Đồng Sa Băng'),
(136, 'Khái Hưng'),
(137, 'Jarson Dark'),
(138, 'Honoré de Balzac'),
(139, 'Cẩm Nang Nghề Nghiệp');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(100) NOT NULL,
  `bookname` varchar(255) NOT NULL,
  `author` int(100) NOT NULL,
  `nxb` varchar(255) DEFAULT NULL,
  `year` int(100) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `download` varchar(255) DEFAULT NULL,
  `des` text NOT NULL,
  `catid` int(10) NOT NULL,
  `spec` tinyint(1) NOT NULL,
  `credits` tinyint(1) NOT NULL COMMENT 'bản quyền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `bookname`, `author`, `nxb`, `year`, `filename`, `link`, `download`, `des`, `catid`, `spec`, `credits`) VALUES
(3, 'Các học thuyết tâm lý nhân cách', 2, 'Trống', 0, 'Cachocthuyettamlynhancach-NguyenThoSinh.png', '<iframe src=\"https://docs.google.com/document/d/1aXkrpWW8Pn0jFrZ5ig9t_LBZzOBBVf7iwoyq4YHTpy0/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tTUZ2aTZzUDFkaXM/view?usp=sharing', 'Trong các chuyên ngành Tâm lý học có ở ta, tâm lý học nhân cách là chuyên ngành non trẻ nhất. ', 1, 1, 1),
(4, 'Các thực nghiệm trong tâm lý học xã hội', 3, 'Trống', 0, 'dadas.png', '<iframe src=\"https://docs.google.com/document/d/1twnugoKJRA9Ph-9SYUX_NA4H-YU1es38caL4G0IvDGE/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tUnRaWjNyc05nd1U/view?usp=sharing', 'Trong hơn một thể kỉ qua, đã có nhiều thực nghiệm trong tâm lí học xã hội được tiến hành. ', 1, 1, 1),
(5, 'Cơ sở tâm lý học thần kinh', 4, 'Trống', 0, 'cosotamlyhoc.PNG', '<iframe src=\"https://docs.google.com/document/d/1lmejfpZgGJhEQjMMJT97T0sIFM91gWve90VD3NyWx20/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tZDRMamtWWEdlYXc/view?usp=sharing', 'Tâm lý học thần kinh là một ngành khoa học còn non trẻ; và tất nhiên các lĩnh vực chuyên ngành còn chưa được biên soạn như nhau; ', 1, 1, 1),
(7, 'Xã hội học về dư luận xã hội', 5, 'trống', 0, 'xahoihocveduluanxahoi.PNG', '<iframe src=\"https://docs.google.com/document/d/1VUIYYb0iQ2_DuXzdYIR7fXo72B8rFXDTuaxGlEpqKjo/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tenFGMU9zYnVEWVk/view?usp=sharing', 'Trong CHIẾN LƯỢC PHÁT TRIỂN THÔNG TIN ĐẾN NĂM 2010，được ban hành kèm theo Quyết định số 219 2005/QĐ-TTg ngày 09 tháng 9 năm 2005 của Thủ tướng Chính phủ', 6, 1, 1),
(8, 'Xã hộI học gia đình', 6, 'trống', 0, 'xahoihocgiadinh.PNG', '<iframe src=\"https://docs.google.com/document/d/1PVuryCmtIPJFblI8wtCCVWPCDM8kqjXwjzCejnTfIUM/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tU3pMVE5FRkMwLUk/view?usp=sharing', '“Gần đây trong xã hội ta rất nhiều người bàn bạc về vấn đề gia đình, ở\r\nnông thôn vấn đề gia đình,', 6, 1, 1),
(9, 'Xã hộI học báo chí', 7, 'Nhà Xuất Bản Trẻ; Thời Báo Kinh Tế Sài Gòn; Trung Tâm Kinh Tê Châu Á - Thái Bình Duơng', 0, 'xahoihocbaochi.PNG', '<iframe src=\"https://docs.google.com/document/d/1hLGFABJl2mekEreYTRmZMoDWWoM58ezKMfU8J7sQgqk/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tSGdvVWs0QTlmd0U/view?usp=sharing', 'Có những tác giả như McLuhan từng đưa ra quan điểm lạc  quan về vai trò của các phương tiện truyền thông đại chúng', 6, 1, 1),
(10, 'Giáo trình xã hộI học đạI cương', 8, 'trống', 0, 'xahoihocdaicuong.PNG', '<iframe src=\"https://docs.google.com/document/d/1Rxgxkc3LXOy44l569f2rsL-pZVHxCLJhftrYIGpBMKE/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tS3d5Q1F5al8yTFU/view?usp=sharing', 'Xã hội học là một khoa học nghiên cứu về xã hội, về hệ thống các mối\r\nquan hệ xã hội của con người.', 6, 1, 1),
(11, 'Trí tuệ xã hộI', 9, 'trống', 0, 'trituexahoi.PNG', '<iframe src=\"https://docs.google.com/document/d/10wXDfRjFKbbjAMV_3uJOurXcapDO3h7L0kk-zt9SmpI/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tdFhKU3dIMkNkZXM/view?usp=sharing', 'Trí thông minh chưa bao giờ thôi hết bí ẩn với con người và liên tục mở ra những điều mới mẻ,', 6, 0, 1),
(12, 'Tâm lý học xã hộI những vấn đề lý luận', 10, 'trống', 0, 'tamlyhocxahoi.PNG', '<iframe src=\"https://docs.google.com/document/d/1U1Dv79-qqelyeZ0VxkOjQRGki7nIMEhxzpsogGnO4vs/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tcjJoVUVwQjJscW8/view?usp=sharing', 'Tâm lí học xã hội ra đời tính đến nay mới được hơn một thế kỉ rưỡi. Tuy nhiên, do nhu cầu của thực tiễn, nó phát triển khá nhanh', 6, 0, 1),
(13, 'TàI liệu hướng dẫn học tập phát triển cộng đồng', 11, 'trống', 0, 'tailieuhuongdanhoctapphattriencongdong.PNG', '<iframe src=\"https://docs.google.com/document/d/1u7xGuQbrj8qvR0Zd_eFUF3gAPNhnkvtK2D3O6uPQNzY/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tMS05UGdGYzU2NHM/view?usp=sharing', 'Môn học sẽ giúp sinh viên liên hệ với thực tế qua các hoạt động tại các địa phương, và các dự án phát triển cộng đồng đang được thực hiện ở nhiều nơi,', 6, 0, 1),
(14, 'TàI liệu hướng dẫn học tập công tác xã hộI nhập môn', 12, 'trống', 0, 'congtacxahoinhapmon.PNG', '<iframe src=\"https://docs.google.com/document/d/1z6SvIlj-kuBzR-s1KQF81w3gMWjTHem6L41tRBnwy58/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tRWp2U0RTeEE1Ums/view?usp=sharing', 'Công tác xã hội nhập môn là môn học khởi đầu bắt buộc đối với sinh viên theo học ngành Công tác Xã hội và ngành Xã hội học tại Khoa Xã hội học, Đại học Mở-Bán công TP. Hồ Chí Minh', 6, 0, 1),
(15, 'Phương pháp nghiên cứu xã hộI học', 13, 'trống', 0, 'phuongphapnghiencuuxahoihoc.PNG', '<iframe src=\"https://docs.google.com/document/d/1CafpZGTNn92Mvwg3980bStSGY9mo71qiAOGDUdap4Y4/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tZDNuOEtzNFIyUVk/view?usp=sharing', 'Khoa học là phương pháp phát triển khối lượng kiến thức thông qua việc sử dụng những kĩ thuật lôgic và khách quan. Mục tiêu của phương pháp là tri thức khoa học.', 6, 0, 1),
(16, 'Phát triển cộng đồng', 14, 'trống', 0, 'phattriencongdong.PNG', '<iframe src=\"https://docs.google.com/document/d/1N__DLNfureXO08SF6zwdrfE-nOWKqCxvy7-yWDYGb3M/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tTEdOM0dhU3UyUjA/view?usp=sharing', 'Phát triển cộng đồng là một lĩnh vực khoa học lý luận và thực tiễn, tuy đã có từ những năm 1940 ở trên thế giới nhưng ở Việt Nam vẫn còn là điều mới mẻ.', 6, 0, 1),
(17, 'Nhập môn xã hộI học', 13, 'Nhà Xuất Bản Đại Học Quốc Gia TP.Hồ Chí Minh', 0, 'nhapmonxahoihoc.PNG', '<iframe src=\"https://docs.google.com/document/d/1uOOBo-jWeH2mPNM9v8ZEOUVbzKRCGSfmd6qYrIrx1pQ/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tNERSOGt5TVlfUEE/view?usp=sharing', 'Cùng với thời gian, cùng với sự phát triển của các phương pháp và cách tiếp cận trong nghiên cứu xã hội học, ngày càng có nhiều công trình có giá trị được xuất bản.', 6, 0, 1),
(18, 'Mỹ học đạI cương', 15, 'trống', 0, 'myhocdaicuong.PNG', '<iframe src=\"https://docs.google.com/document/d/1z8s264WVMVhPLb6lbTWrmkT96Bb0D7vbnXj8A3egits/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tTUg2OFVWdExUOXM/view?usp=sharing', 'Mỹ học đại cương là một trong những môn học cơ bản trong chương trình đào tạo của nhóm ngành khoa học xã hội - nhân văn ở các trường đại học, cao đẳng', 6, 1, 1),
(19, 'Lý thuyết trong xã hộI học', 5, 'trống', 0, 'lythuyettrongxahoi.PNG', '<iframe src=\"https://docs.google.com/document/d/1dZmEqtw6JEaey5v-HmqeMFxL-XL6E5dxw2nbBPpmJaE/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tUEVEUVY1Z2pBT1k/view?usp=sharing', 'Lý thuyết thể hiện mối quan hệ giữa các khái niệm hay nói cách khác lý thuyết là sự giải thích tại sao và làm thế nào để một hiện tượng xuất hiện.', 6, 0, 1),
(20, 'Lịch sử và lý thuyết xã hộI học', 16, 'trống', 0, 'lichsuvalythuyetxahoihoc.PNG', '<iframe src=\"https://docs.google.com/document/d/1nDBFDXKu0OKT-eyZe5305wEC-OaQN18EYNObRNOHyWk/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tZm8ySVRCUlpoYzQ/view?usp=sharing', 'Hiện nay nhu cầu tìm hiểu lý luận xã hội học rất lớn, ngay cả khi một số cuốn sách về lịch sử xã hội học và lý thuyết xã hội học hiện đại của tác giả nước ngoài đã được dịch và xuất bản bằng tiếng Việt.', 6, 0, 1),
(21, 'Công tác xã hộI vớI ngườI khuyết tật', 5, 'trống', 0, 'congtacxahoivoinguoikhuyettat.PNG', '<iframe src=\"https://docs.google.com/document/d/1tn96jDuj7hOp_WjdEX8F7DGCN16eSMUlOo2d1_lt_6M/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tNlRXOV9zS0dSRmc/view?usp=sharing', 'Cuộc sống này không có ai là hoàn hảo cũng không đảm bảo tương lai cho chúng ta được (người khuyết tật). Nếu không may không thể nói, không thể nghe, không thể nhìn, không thể vận động được...', 6, 0, 1),
(22, 'Công tác xã hộI đạI cương', 17, 'trống', 0, 'congtacxahoidaicuong.PNG', '<iframe src=\"https://docs.google.com/document/d/1CyDmG7NsSnBfanWyBgIPTzfVn_esOZ3AN_6nsj7mJVU/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tYUQtYnZyMmdFX1E/view?usp=sharing', 'Sứ mạng của công tác xã hội là thúc đẩy sự tiến bộ xã hội, gịải phóng con người, vì vậy, nó là một khoa học, một nghề nghiệp mang đậm chủ nghĩa nhân văn, là nhu cầu tất yếu của thế giới hiện đại', 6, 0, 1),
(23, 'Chuyên đề chính sách xã hộI', 18, 'trống', 2007, 'chuyendechinhsachxahoi.PNG', '<iframe src=\"https://docs.google.com/document/d/1sh1G0wd7GJnXjCcnJUP-4b60HXGItsWvPwvZY_bx26c/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tRmlRazQ4Wk9SUVE/view?usp=sharing', 'Thuật ngữ chính sách xã hội xuất hiện trong đời sống khoa học xã hội và khoa học quản lý ở nước ta chưa lâu, vào khoảng thời gian chuyển tiếp của thập niên 70 sang thập niên 80', 6, 0, 1),
(24, 'Giáo trình chủ nghĩa xã hộI khoa học', 19, 'trống', 0, 'giaotrinhchunghiaxahoikhoahoc.PNG', '<iframe src=\"https://docs.google.com/document/d/1OhiVvaawycM2P6mkF7n5Dv7sMH9vI15m0M4TzqetBg0/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tVVJHdEhhRnUyZFk/view?usp=sharing', 'Cuốn sách quán triệt tinh thần cơ bản nội dung và phương pháp biên soạn Giáo trình chủ nghĩa xã hội khoa học của Hội đồng Trung ương chỉ đạo biên soạn giáo trình quốc gia các bộ môn khoa học Mác-Lênin, tư tưởng Hồ Chí Minh', 6, 0, 1),
(25, 'Chính sách xã hộI', 18, 'trống', 2007, 'chinhsachxahoi.PNG', '<iframe src=\"https://docs.google.com/document/d/1qIn4nonhR34mjmmC4Ylpd308XiJN-jr3uAglMcCOdSg/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tVTVWRmNsWXVjUk0/view?usp=sharing', 'Khái niệm chính sách xã hội có nguồn gốc địa lý và lịch sử tương đối lâu đời từ truyền thống khoa học xã hội Tây  u thế kỷ XIX.', 6, 0, 1),
(26, 'Các cấu trúc xã hộI học', 20, 'trống', 0, 'caccautrucxahoihoc.PNG', '<iframe src=\"https://docs.google.com/document/d/10vg4qIskjK3-z1DHyN5e34pykkzrM5FxXVeqS8cfNqU/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tbkYyS3J6VnA5Ujg/view?usp=sharing', 'Tạp chí Văn hóa Nghệ thuật là cơ quan nghiên cứu, lý luận và thông tin của Bộ Văn hóa, Thể thao và Du lịch.', 6, 1, 1),
(27, 'Vấn đề nhân cách trong tâm lý học ngày nay', 21, 'trống', 0, 'vandenhancachtrongtamlyhocngaynay.PNG', '<iframe src=\"https://docs.google.com/document/d/1QlnInDEE6LSj6Fy24fm-Iw5jcJNVlaNhyIJ4evgeAj8/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tS2doSmtDRnk0NHM/view?usp=sharing', '', 1, 1, 1),
(28, 'Tư vấn tâm lý học đường', 22, 'trống', 0, 'tuvantamlyhocduong.PNG', '<iframe src=\"https://docs.google.com/document/d/1RDsD9VfSPfaBeHqpMCDkj37VfdMnJeOQ1KogGzfz2nY/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tMDV6UG9aOW02aVU/view?usp=sharing', '', 1, 1, 1),
(29, 'Thống kê ứng dụng trong khoa học xã hộI và tâm lý - giáo dục', 23, 'trống', 0, 'thongkeungdung.PNG', '<iframe src=\"https://docs.google.com/document/d/1blgtXDmnSqGYglxYpU9kyzzlTexVUQNE31Fs78zTpJE/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tVEYxZS1pSDJ6d3c/view?usp=sharing', '', 1, 1, 1),
(30, 'Tâm lý học y học', 24, 'trống', 0, 'tamlyhocyhoc.PNG', '<iframe src=\"https://docs.google.com/document/d/1bhU-L_7qmgZp9t87_0cIWwNTh1-rwfYeSBfCbXt3664/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tLTVxVmdiQ0VZRXM/view?usp=sharing', '', 1, 0, 1),
(31, 'Tâm lý học trí tuệ', 25, 'trống', 0, 'tamlyhoctritue.PNG', '<iframe src=\"https://docs.google.com/document/d/1mGYqTwRZGZO6KW3hHc1U26rhT-NlAo8yXiaq28hf2ec/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7taFRXUGM3dzUwdTQ/view?usp=sharing', '', 1, 0, 1),
(32, 'Tâm lý học trẻ em', 26, 'trống', 0, 'tamlyhoctreem.PNG', '<iframe src=\"https://docs.google.com/document/d/1dGhP5wqHHfDb3Zep9kc_cKmeMUN-orgvKABLvorR42c/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tWUtBZDFMLVZobUU/view?usp=sharing', '', 1, 0, 1),
(33, 'Tâm lý học chẩn đoán trẻ khuyết tật', 27, 'trống', 0, 'tamlyhocchandoantrekhuyettat.PNG', '<iframe src=\"https://docs.google.com/document/d/1H8zrWRtfuRJ0nGvJhVeaLZ2XrB_dbFLZniBE1QpuuU0/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tUzhQeDJoZzY3ajQ/view?usp=sharing', '', 1, 0, 1),
(34, 'Tâm lý học đạI cương', 28, 'trống', 0, 'tamlyhocdaicuong.PNG', '<iframe src=\"https://docs.google.com/document/d/1GAZjyKcFIPtWGahqkXo4OuKMzNUddDnT0UVS2pZtvQ8/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tVmc4RUdtU2NraEk/view?usp=sharing', '', 1, 0, 1),
(35, 'Giáo trình tâm lí học sáng tạo', 29, 'trống', 0, 'tamlyhocsangtao.PNG', '<iframe src=\"https://docs.google.com/document/d/12bdqLyzWkOuWg3nnIjfTWUYsmxplaUgfV8MRrCvAV2o/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tZVRFbEx1RmVMeE0/view?usp=sharing', '', 1, 0, 1),
(36, 'Tâm lý học quản trị kinh doanh', 30, 'trống', 0, 'tamlyhocquantrikinhdoanh.PNG', '<iframe src=\"https://docs.google.com/document/d/1Sk1pqEib6YsddtIY5l2sjKinfolh18o4eHTh3YUK-WA/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tbVpnRmhLWDE4ejA/view?usp=sharing', '', 1, 0, 1),
(37, 'Tâm lý học quản lý', 31, 'trống', 0, 'tamlyhocquanly.PNG', '<iframe src=\"https://docs.google.com/document/d/14QJzDrO4PjShVbqHBxFojFFX2PExp5PUX7_mpTgSIbk/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tTE9JNmE5UUZHcEk/view?usp=sharing', '', 1, 0, 1),
(38, 'Tâm lý học nhân cách một số vấn đề lý luận', 32, 'trống', 0, 'tamlyhocnhancach.PNG', '<iframe src=\"https://docs.google.com/document/d/1lJvVqqv1BwkaZ58FCjB1PU5l-fQ8pDQBstQy6ROYXqA/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tY0NNTWxmcXlaUk0/view?usp=sharing', '', 1, 0, 1),
(39, 'Tâm lý học giớI tính và giáo dục giớI tính', 33, 'trống', 0, 'tamlyhocgioitinh.PNG', '<iframe src=\"https://docs.google.com/document/d/1NDRxSuUpKS6kYRLkIXiMjcrvJ4PbF98wGlmAMflE5dY/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tM2hEckFOblZucXM/view?usp=sharing', '', 1, 0, 1),
(40, 'Tâm lý học giao tiếp - ứng xử', 29, 'trống', 0, 'tamlyhocgiaotiep.PNG', '<iframe src=\"https://docs.google.com/document/d/1qmyLwkrg1T_BVRa8srXO_BmXsZfGKig6nyML7_-KdWY/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tODExcGxtWnNQV0k/view?usp=sharing', '', 1, 0, 1),
(41, 'Tâm lý học du lịch', 34, 'trống', 0, 'tamlyhocdulich.PNG', '<iframe src=\"https://docs.google.com/document/d/1Uc01RtP6uXHsG6cJrRr7hHmYjp-rKQY4u-HY9qoXfKQ/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tMVJ1SFMzc1pGeFE/view?usp=sharing', '', 1, 0, 1),
(42, 'Tâm lý học đám đông', 35, 'trống', 0, 'tamlyhocdamdong.PNG', '<iframe src=\"https://docs.google.com/document/d/12pRX_eqFj--2qh8k82M7TQjLo4hS9RY9HdkGcD-UzZ4/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tdjROdkZ1eE1ZVDQ/view?usp=sharing', '', 1, 0, 1),
(43, 'Tâm bệnh học trẻ em lứa tuổI mầm non', 36, 'trống', 0, 'tambenhhoctreem.PNG', '<iframe src=\"https://docs.google.com/document/d/1pLPQn2idYn_ERHOflbpihsBDljkv0rbTwwK7cMJn2VI/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tbFY4UnFzNXVObTQ/view?usp=sharing', '', 1, 0, 1),
(44, 'Tâm lý học phát triển', 37, 'trống', 0, 'tamlyhocphattrien.PNG', '<iframe src=\"https://docs.google.com/document/d/144asV_WJ6E-5DyniXsvyprRd4wLFld36DLEjH2yX2f4/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tYmxDVFZBZHBwYXM/view?usp=sharing', '', 1, 0, 1),
(45, 'TàI liệu tâm bệnh học', 38, 'trống', 0, 'tailieutambenhhoc.PNG', '<iframe src=\"https://docs.google.com/document/d/1kKa-guPaQxMKoIwopZgRED6E-D31hVQ9vX7aWULnXew/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tNGZsbjhGV0V2Zmc/view?usp=sharing', '', 1, 0, 1),
(46, 'Phương pháp nghiên cứu khoa học giáo dục', 39, 'trống', 0, 'phuongphapnghiencuukhoahocgiaoduc.PNG', '<iframe src=\"https://docs.google.com/document/d/1iApG2A2ndA14saVsk3BjWBA-1zkRlKnYZ6Oyzs7wajg/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tSWRTZEVLS2FHTTQ/view?usp=sharing', '', 1, 0, 1),
(47, 'Sinh lý hoạt động thần kinh', 5, 'trống', 0, 'sinhlythankinh.PNG', '<iframe src=\"https://docs.google.com/document/d/1DIEFXbx_S2pq5jz5CjNjrOgyMEoxK7fRqccp_OAzSIA/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7taURxSkllMUpMU0E/view?usp=sharing', '', 1, 0, 1),
(48, 'Phân tâm học tôn giáo', 40, 'trống', 0, 'phantamhoctongiao.PNG', '<iframe src=\"https://docs.google.com/document/d/1kRzAGEWSkAwBXMGP4Y-uxEFyvnwdIqTW_ZJsbiW25ls/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7taFNJYXRrVWdjT1k/view?usp=sharing', '', 1, 0, 1),
(49, 'Nhập môn tâm lý học phát triển', 29, 'trống', 0, 'nhapmontamlyhocphattrien.PNG', '<iframe src=\"https://docs.google.com/document/d/1wGlN4fRBcCDdOmHbdkG5TvePUTILRfM9moR8MRh_3dw/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tN2dBQWdQOFA4TTg/view?usp=sharing', '', 1, 0, 1),
(50, 'Nhập môn lịch sử tâm lý học', 41, 'trống', 0, 'nhapmonlichsutamlyhoc.PNG', '<iframe src=\"https://docs.google.com/document/d/1jmLCGrO3dSrD5t0DOSy_pe9RMTFxRNh1ZjhEMyZbeMw/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tMjVRQmtGQmRmRUE/view?usp=sharing', '', 1, 0, 1),
(51, 'Logic học', 5, 'trống', 0, 'logichoc.PNG', '<iframe src=\"https://docs.google.com/document/d/1j_FzHIFnbz-1NC2MX_YsHP4y8unpBsWxUpERGmV60Ps/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tZFh4amplOWFBOGc/view?usp=sharing', '', 1, 0, 1),
(52, 'Tâm lý học lứa tuổi và Tâm lý học sư phạm', 23, 'Nhà xuất bản Đại học Sư Phạm TPHCM', 0, 'tamlyhocluatuoivatamlyhocsupham.PNG', '<iframe src=\"https://docs.google.com/document/d/19DE6NhicvkpBWHuACuwBVy4tTxKQ9UP2n9yRGI8UsvI/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tbkZ2SEhHVHpjNGM/view?usp=sharing', '', 1, 0, 1),
(53, 'Giáo trình tâm lý học xã hộI', 42, 'trống', 0, 'tamlyhocxahoi.PNG', '<iframe src=\"https://docs.google.com/document/d/1letRqsrs9ccxQ-B15DwB8WHm_IA5Ne8oeLyu0bSZWr0/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tcWpOdnI3d0Z0T0k/view?usp=sharing', '', 1, 0, 1),
(54, 'ĐạI cương tâm lý trị liệu', 43, 'Nhà xuất bản Đại học Sư Phạm TPHCM', 0, 'daicuongtamlytrilieu.PNG', '<iframe src=\"https://docs.google.com/document/d/1RR-pGfzuUwH4rLx5A7Bd0z4Pbr0f5zUbA5cBrCmCazw/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tSXBCT0lIRVVzXzg/view?usp=sharing', '', 1, 0, 1),
(55, 'Tâm lý học trẻ em lứa tuổI mầm non từ lọt lòng đến 6 tuổI', 44, 'trống', 0, 'tamlyhoctreemtulotlongden6tuoi.PNG', '<iframe src=\"https://docs.google.com/document/d/16-n6sSF6dWycxO216R31rLTKikxgOEaIwxMngU6ImGQ/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7taW9lVFpZNmZfVlE/view?usp=sharing', '', 1, 0, 1),
(57, 'Văn hóa và sự phát triển tâm lý', 29, 'trống', 0, 'caijido.PNG', '<iframe src=\"https://docs.google.com/document/d/15bJvbUt3DQDLj8TG_m9oANUl2H2nemoz_DQd4kNhAZ4/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tX2NwMVlDS3JWUGs/view?usp=sharing', '', 7, 1, 1),
(58, 'Một trăm đIều nên biết về phong tục việt nam', 45, 'Văn hóa dân tộc', 2001, '1.PNG', '<iframe src=\"https://docs.google.com/document/d/1OVMklVJvttXfIgyGbb_raKhGBvmyGVSWwS0gVRi0pt0/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7teEVxb3psbFFRUkk/view?usp=sharing', '', 7, 1, 1),
(59, '123 dieu nen biet ve phong tuc viet nam', 46, 'Không rõ', 0, '2.PNG', '<iframe src=\"https://docs.google.com/document/d/1rYSlEf1Os8xfjuul5Mos5dPWaJP4m_l1QhnWLXQkjLA/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tUWZQRmg4aGlnblE/view?usp=sharing', '', 7, 1, 1),
(60, 'Cơ sở văn hoá việt nam', 47, 'Nhà xuất bản giáo dục', 0, '3.PNG', '<iframe src=\"https://docs.google.com/document/d/1PtTrgb_8j1BTRXv6cNWeEdc_VeGJ6A-5NtlMejHgqAc/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tYUJzeVJwbHczaWc/view?usp=sharing', '', 7, 1, 1),
(61, 'Giáo trình Kinh tế du lịch', 48, 'Nhà xuất bản đạI học kinh tế quốc dân ', 0, '4.PNG', '<iframe src=\"https://docs.google.com/document/d/10P2slC5GFu1K3LbpLyLF7ncP-EmwmVfthNhHv1psFAQ/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tcmZISEtKMVNZYzg/view?usp=sharing', '', 7, 1, 1),
(62, 'Lễ hộI dân gian việt nam', 49, 'Nhà xuất bản văn hóa dân tộc', 2009, '5.PNG', '<iframe src=\"https://docs.google.com/document/d/1eRuopR7X_PSCVlhrqnGiL7NsRqn3kOwVU5VQYcwzUQE/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tWTdkMEhBZmVsR2s/view?usp=sharing', '', 7, 1, 1),
(63, 'Lược sử văn hóa nhật bản tập 2', 50, 'Nhà xuất bản khoa học xã hội', 0, '6.PNG', '<iframe src=\"https://docs.google.com/document/d/1Ac3yTff6lFHv_MoTiT3IAU7KNz_OXY4b0-EaJ0Iw-F8/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tMkxFR1dIQWJpUHc/view?usp=sharing', '', 7, 1, 1),
(64, '100 đIều nên biết  Về phong tục việt nam', 51, '', 0, '7.PNG', '<iframe src=\"https://docs.google.com/document/d/1v4MxP65itHQ8N0rMj33SoyTqAOMfc0uWDivVg7hYdNM/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tclpqMTlNQ0wxbkU/view?usp=sharing', '', 7, 1, 1),
(65, ' Phong tục nghi lễ văn hóa xưa và nay Hôn nhân – chúc thọ - chúc mừng – tang lễ', 52, '2009', 0, '8.PNG', '<iframe src=\"https://docs.google.com/document/d/1KupWg1Kjiwv3RhKJr17N6QzcQ9PQIynhE--fF4BDmZg/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7teGhjT3VucE01SjQ/view?usp=sharing', '', 7, 1, 1),
(66, 'Phong tục dân gian kiêng kỵ', 53, 'NHÀ XUẤT BẢN THỜI ĐẠI', 2011, '9.PNG', '<iframe src=\"https://docs.google.com/document/d/1eirYre6z-A9IsZ0osArxHqMeC--E8sWDVi_Wp6fdOVE/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7taEl1QUp3cDFoSXc/view?usp=sharing', '', 7, 1, 1),
(67, 'Văn hoá giao thông  Trong môI trường học đường', 29, 'NHÀ XUẤT BẢN ĐẠI HỌC SƯ PHẠM ', 2012, '10.PNG', '<iframe src=\"https://docs.google.com/document/d/1Ci34RS7txzUjcvWD4VVMnMpYPVx04pWEwVO9wYE0650/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tdWtNU3RJcHQ2aG8/view?usp=sharing', '', 7, 1, 1),
(68, 'Văn hóa và sự phát triển tâm lý', 29, 'NHÀ XUẤT BẢN ĐẠI HỌC SƯ PHẠM TP. HỒ CHÍ MINH', 2010, '11.PNG', '<iframe src=\"https://docs.google.com/document/d/1i731xEQTGjTzYcV4Hew6Dmeqy5i5ERLJV2BKLCMHd1Y/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tX2NwMVlDS3JWUGs/view?usp=sharing', '', 7, 1, 1),
(69, 'PhốI hợp các lực lượng giáo dục trong và ngoàI nhà trường', 5, 'trống', 0, 'phoihopcaclucluonggiaoductrongvangoainhatruong.PNG', '<iframe src=\"https://docs.google.com/document/d/1MTcb3J4lp0URFJ6dbv-tvU65I1VwJi3jKN3hrk1pb0w/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tcnBrMG1uNmQ4Tnc/view?usp=sharing', '', 5, 0, 1),
(70, 'TàI liệu giáo dục an toàn giao thông', 5, 'trống', 0, 'tailieugiaoducantoangiaothong.PNG', '<iframe src=\"https://docs.google.com/document/d/1qzKD86IvDecpsIn3AjEXApQjxym6l_31tlq9pcHt4q8/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tZWNzUi04bHlVZlU/view?usp=sharing', '', 5, 0, 1),
(71, 'TàI liệu bàI giảng phương pháp nghiên cứu khoa học giáo dục', 39, 'trống', 0, 'phuongphapnghiencuukhoahocgiaoduc.PNG', '<iframe src=\"https://docs.google.com/document/d/1YA2Bh4D0MdYGexXpvqUGcUd7d_hseA112gIWyFcPVrY/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tMUxFS2R4bDNQelk/view?usp=sharing', '', 5, 0, 1),
(72, 'Sơ lược lịch sử giáo dục', 54, 'trống', 0, 'soluoclichsugiaoduc.PNG', '<iframe src=\"https://docs.google.com/document/d/1gOb0VLym4fzGG45-rTkngF43lSTQzMJGYcKZoMfiWvA/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tRjJ2d1VhTjRieUE/view?usp=sharing', '', 5, 0, 1),
(73, 'Quản lí hiệu quả lớp học', 55, '', 0, 'quanlyhieuqualophoc.PNG', '<iframe src=\"https://docs.google.com/document/d/1Mpgkh7-4P00U-b_Q54dr3RwUZk0CrCv7OTbTQnYHUII/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tTF82MlhhM0duNFE/view?usp=sharing', '', 5, 0, 1),
(75, 'Quản lý hành chánh nhà nước và quản lý ngành giáo dục đào tạo', 56, 'trống', 0, 'quanlyhanhchinhnhanuoc.PNG', '<iframe src=\"https://docs.google.com/document/d/1cESp3EkPJQIm9hgsGguwtmmSr-KHtHZ0bdHl_xP1bZE/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tVHpTLWNnUkVrOWs/view?usp=sharing', '', 5, 0, 1),
(76, 'Quản lí giáo dục hoà nhập', 5, 'trống', 0, 'quanlygiaoduchoanhap.PNG', '<iframe src=\"https://docs.google.com/document/d/1IRMpRGxDjchW0r0v41VEb4m-qJisIWIvlUQ0rSBF8zs/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tUGpFMGEwek80bDg/view?usp=sharing', '', 5, 0, 1),
(77, 'Nghiên cứu khoa học giáo dục và tâm lý', 57, 'trống', 0, 'phuongphapnghiencuukhoahocgiaoducvatamly.PNG', '<iframe src=\"https://docs.google.com/document/d/1GQPqao4enKRIL-GuMeNiSo7sIYTPw8HjKyqBVYRU6JY/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tc1pUVThCNnRjdTg/view?usp=sharing', '', 5, 0, 1),
(78, 'Phát triển chương trình giáo dục', 58, 'Nhà xuất bản Đại học Sư Phạm TPHCM', 0, 'phattrienchuongtrinhgiaoduc.PNG', '<iframe src=\"https://docs.google.com/document/d/1Hn7ml-78xlT_QLTGFQYDool9Di-qzBxmCZRqMwZ9zEA/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tM1VkR21WVjc5Ymc/view?usp=sharing', '', 5, 0, 1),
(79, 'Những yếu tố góp phần xây dựng nên nhân cách', 5, 'trống', 0, 'nhungyeutogopphanxaydungnennhancach.PNG', '<iframe src=\"https://docs.google.com/document/d/1x4helAr1_DpisayV_sVE1XSiLcE_kpZ6U8V-N-Jwvzw/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tQ1ZwdnhRWFhodlU/view?usp=sharing', '', 5, 0, 1),
(81, 'Những tình huống trong thực tiễn quản lý giáo dục', 59, 'trống', 0, 'nhungtinhhuongtrongthuctienquanlygiaoduc.PNG', '<iframe src=\"https://docs.google.com/document/d/1ZQ4ivL-wB9bpvAURdQKe7jC6kjXFR7WuILEcLaoTRcU/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tenJxV1Qxc0NvbzQ/view?usp=sharing', '', 5, 0, 1),
(82, 'Lí luận về quản lý', 5, 'trống', 0, 'liluanvequanly.PNG', '<iframe src=\"https://docs.google.com/document/d/1FHTI0TOnnvdQIHDE9Kf-YC_G8X1xreuTd08xOw182B4/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tbzhKQ3RqM2dJRm8/view?usp=sharing', '', 5, 0, 1),
(83, 'Lịch sử tư tưởng trong giáo dục', 60, 'trống', 0, 'lichsututuongtronggiaoduc.PNG', '<iframe src=\"https://docs.google.com/document/d/1G27JS4m3PjUl_PR97GdgB2ZSWDBCoSS8bGJb9HYFIZc/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tN1cyTUhLaHJrbHc/view?usp=sharing', '', 5, 0, 1),
(84, 'Lịch sử giáo dục việt nam trước cách mạng tháng 8-1945', 61, 'trống', 0, 'lichsugiaoducvietnamtruoccmtt1945.PNG', '<iframe src=\"https://docs.google.com/document/d/1Xym7DgRaHSUZVI9oKWkSspaYwecYIogsYYTYw79jXlo/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tb3BudmNpd05pQlE/view?usp=sharing', '', 5, 0, 1),
(85, 'Khoa học quản lí giáo dục', 62, 'trống', 0, 'khoahocquanlygiaoduc.PNG', '<iframe src=\"https://docs.google.com/document/d/1vGXbJBu9BF87uNrF-_IPlRc7ENfr-dl3jyJNFCVeVLc/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7takJTUUpWRDM5ZWs/view?usp=sharing', '', 5, 0, 1),
(86, 'Hiểu rõ hơn về khuyết tật học tập', 5, 'trống', 0, 'hieurohonvekhuyettathoctap.PNG', '<iframe src=\"https://docs.google.com/document/d/1jhKkM6ZYWRM2vEo-AKppqE5VNIvoGE6QpIndkvH8XxI/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tbUQ0M05xSmN1RXM/view?usp=sharing', '', 5, 0, 1),
(87, 'Giáo trình tâm lý học quản lý', 63, 'trống', 0, 'giaotrinhtamlyhocquanly.PNG', '<iframe src=\"https://docs.google.com/document/d/1RzaF9tvpm2Ktfq8dgDuX1uzqTOGiI5OyZlu1n-xRs3U/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tYXRJaEoyb3MtSGc/view?usp=sharing', '', 5, 0, 1),
(88, 'Giáo trình giáo dục học - tập 2', 64, 'trống', 0, 'giaotrinhgiaoduchoc-tap2.PNG', '<iframe src=\"https://docs.google.com/document/d/1sX51MWr8R5xhONsDoplrY-M-LUg_JgOqLn6xPWHiaxk/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tVFJfVDJRd1hZNWc/view?usp=sharing', '', 5, 0, 1),
(89, 'Giáo trình giáo dục học - tập 1', 64, 'trống', 0, 'giaotrinhgiaoduchoc-tap1.PNG', '<iframe src=\"https://docs.google.com/document/d/1uHUYpqW329fo-wMBcl9kIctB2YAnSh8uSI4Pbdbvuj0/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tYmJOWXhKMUtVRFU/view?usp=sharing', '', 5, 0, 1),
(90, 'Giáo trình giáo dục học mầm non', 65, 'trống', 0, 'giaotrinhgiaoduchocmamnon.PNG', '<iframe src=\"https://docs.google.com/document/d/1ab6TH_n43wS24z71BzCUalLr3bwj2X54ZEeKjM6x8XA/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tQjhsVjlkRl85V3c/view?usp=sharing', '', 5, 0, 1),
(91, 'Giáo dục học đạI cương', 66, 'trống', 0, 'giaoduchocdaicuong.PNG', '<iframe src=\"https://docs.google.com/document/d/1H6Ddes5rP8sz7ofguGlP93LVoUEWxlT2DP9CKL2ugJE/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tNHQ2bElCazEwbU0/view?usp=sharing', '', 5, 0, 1),
(92, 'Giáo dục Việt Nam thờI cận dạI', 67, 'trống', 0, 'giaoducvietnamthoicandai.PNG', '<iframe src=\"https://docs.google.com/document/d/1n21h_EBcsIiYI97yKlBBqxnQgpj8XCqKFnUabIoFGdg/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tcFk5YndkYTJ6Yjg/view?usp=sharing', '', 5, 0, 1),
(93, 'Giáo dục học phổ thông', 68, 'trống', 0, 'giaoduchocphothong.PNG', '<iframe src=\"https://docs.google.com/document/d/1jPiSnb7OV9r8s5zDiWVbDiztOeFMLsEdXf1eOMp2sTA/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tMFNCNGR4SzBkUnc/view?usp=sharing', '', 5, 0, 1),
(94, 'Chuyên đề quản lý trường học (tập 2)', 69, 'Nhà xuất bản Giáo Dục', 0, 'chuyendequanlytruonghoc-tap2.PNG', '<iframe src=\"https://docs.google.com/document/d/1SGel8qXQP1-Gm-oEQe9r-usts2SR5N296SypyrO8ut4/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tMVBGQkpYMjFnZjA/view?usp=sharing', '', 5, 0, 1),
(95, 'Xuân Diệu về tác giả và tác phẩm', 70, '', 0, 'xuandieuvetacgiavatacpham.PNG', '<iframe src=\"https://docs.google.com/document/d/1aaOaZ-R7L57QSkP-SjCGVNppn25MTlJOK_rwObiQSh4/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tTVNQV1Y2aG9YdXc/view?usp=sharing', '', 8, 0, 1),
(96, 'Việt Nam văn học sử yếu', 71, 'trống', 0, 'vietnamvanhocsuyeu.PNG', '<iframe src=\"https://docs.google.com/document/d/143UR569QOEpDWBawFHNBdEx8OOyCFzH3uKYG9e2vnV0/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tOEx5d1JfbDFYQ28/view?usp=sharing', '', 8, 0, 1),
(97, 'Văn học Việt Nam thế kỷ thứ X – nửa đầu thế kỷ thứ XVIII (tập 1)', 72, '', 0, 'vanhocvietnamtap1.PNG', '<iframe src=\"https://docs.google.com/document/d/1zpJVJHLJxAYspQQR8Gbxo7xHOAHtM9jjnhbwh2WhxFs/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tNVBnemlQY0ZrbTA/view?usp=sharing', '', 8, 0, 1),
(98, 'Văn học Việt Nam đầu thế kỷ XX – 1932', 73, '', 0, 'vanhocvietnamdautheky20-1932.PNG', '<iframe src=\"https://docs.google.com/document/d/1Pk9ZXiTiSuKDj9T80m7rUVENB2bBRMUBXZ4ieKSPzt8/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tdEdZTFh3TDVkYTg/view?usp=sharing', '', 8, 0, 1),
(99, 'Văn học từ những góc nhìn riêng', 74, '', 0, 'vanhoctunhunggocnhinrieng.PNG', '<iframe src=\"https://docs.google.com/document/d/1nT2ub2pQLOGrqhizqXzteor27OgWBOzI55sw7KL-C44/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tRzZBR2pNenZJU1E/view?usp=sharing', '', 8, 0, 1),
(100, 'Tuyển tập Nam Cao', 5, '', 0, 'truyentapnamcao.PNG', '<iframe src=\"https://docs.google.com/document/d/1S6emDFPr594LCMP4bCM4NnuWo46K2g_qDLcGKxBQmbs/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tWVdKZnVtUEJ2U2M/view?usp=sharing', '', 8, 0, 1),
(101, 'Tuyển tập Hồ Xuân Hương', 75, '', 0, 'tuyentaphoxuanhuong.PNG', '<iframe src=\"https://docs.google.com/document/d/18PrWU-oXG7dEm6kA1atcUYu-NsucHGvOuNmrJ60n-ag/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tWmQ3UzVfa0h6S3M/view?usp=sharing', '', 8, 0, 1),
(102, 'Tục ngữ - ca dao chọn lọc', 76, '', 0, 'tucngucadaochonloc.PNG', '<iframe src=\"https://docs.google.com/document/d/1HvQzXQIG1DrUc2RmIQY0VDpvTbDcClkkv8KyHp8yqt8/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tak5XNDBhWm84Z3c/view?usp=sharing', '', 8, 0, 1),
(103, 'Tục ngữ', 5, '', 0, 'tucngu.PNG', '<iframe src=\"https://docs.google.com/document/d/1Q04nSHgdpwuPlLV9oPItQuhkg6h81hQTziPn50Dtkw0/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tUjlYVDBob3RUYWs/view?usp=sharing', '', 8, 0, 1),
(104, 'Truyện ngắn tuyển chọn - Nguyễn Công Hoan', 77, '', 0, 'truyenngantuyenchon.PNG', '<iframe src=\"https://docs.google.com/document/d/1_8yGbDBbooiEP8F9ci0hzL0ET-DzboN9Orz4qVGxCMQ/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7td1ZSckZjSmRma00/view?usp=sharing', '', 8, 0, 1),
(105, 'Truyện ngắn Moroavia', 5, '', 0, 'truyennganmoroavia.PNG', '<iframe src=\"https://docs.google.com/document/d/1hvfryGf65TgliWGDzra_Sf_8XIjt4CLTn_4PvL-7Plo/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tYXZBQWxReERXZDg/view?usp=sharing', '', 8, 0, 1),
(106, 'Phân tích truyện An Dương Vương và Mị Châu – Trọng Thủy', 5, '', 0, 'anduongvuongvamichautrongthuy.PNG', '<iframe src=\"https://docs.google.com/document/d/1ShmCEMO42_2ErY9sLXghc2HooUdvtAJVLP_lj_-3nvY/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tN1JteW1yMDEtcDA/view?usp=sharing', '', 8, 0, 1),
(107, 'Tinh hoa thơ mớI thẩm bình và suy ngẫm', 78, '', 0, 'tinhhoathomoithambinhvasuyngam.PNG', '<iframe src=\"https://docs.google.com/document/d/13mUoJIWI5MO2JNtq81SsTq7pV2xPzDCYs6Riys402vY/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tdDRQZTJiazdGQm8/view?usp=sharing', '', 8, 0, 1),
(108, 'Tiểu thuyết những tham vọng sụp đổ', 79, '', 0, 'tieuthuyetnhungthamvongsupdo.PNG', '<iframe src=\"https://docs.google.com/document/d/1dMHTFHAYfDFslwb-7-T7Y9EVrqdzWTk_IOkZ8ILvBJc/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tSktVUnZMckstQzQ/view?usp=sharing', '', 8, 0, 1),
(109, 'Tiểu thuyết hiện thực Nga thế kỷ XIX', 80, '', 0, 'tieuthuyethienthucngatheky19.PNG', '<iframe src=\"https://docs.google.com/document/d/1V4STKy2uTmZhW90fG0DaCQEGf-U-ql9GDuMDOjqJcBE/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tUVJJLW9QSzZ2WHM/view?usp=sharing', '', 8, 0, 1),
(110, 'Tiếng việt thực hành', 81, 'Nhà xuất bản Giáo Dục', 0, 'tiengvietthuchanh.PNG', '<iframe src=\"https://docs.google.com/document/d/1S9Yx1DSuKf5gJLpPnGPqGBnry47-BgjL5sDimrJ0brA/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tOHh1WFpiT1VRSDA/view?usp=sharing', '', 8, 0, 1),
(111, 'Tiếng việt (dùng cho đạI học đạI cương)', 82, 'Nhà xuất bản Giáo Dục', 0, 'tiengvietdungchodaihocdaicuong.PNG', '<iframe src=\"https://docs.google.com/document/d/11PHaFvDCV5UeyBgJ0eVCJwHL5MU66dbxGn2MGI7qTKo/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tZ3FkcGpTS0pPUVU/view?usp=sharing', '', 8, 0, 1),
(112, 'Thi hào Nguyễn Khuyến - Đời và Thơ', 83, '', 0, 'thihaonguyenkhuyendoivatho.PNG', '<iframe src=\"https://docs.google.com/document/d/1o9yNmtmhV7cL796uktfFfg88Dg-Jx_8fgAQsksbofRI/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tZlFRUHFCenNxdVU/view?usp=sharing', '', 8, 0, 1),
(113, 'Thơ và mấy vấn đề trong thơ Việt Nam hiện đạI', 84, '', 0, 'thovamayvandetrongthovietnamhiendai.PNG', '<iframe src=\"https://docs.google.com/document/d/1a_5xt9FXDEFrTaY7LzbFW8AZifqBF27876c86JdGptw/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tLVhxOHlkNWh4cGc/view?usp=sharing', '', 8, 0, 1),
(114, 'Thơ tình Nguyễn Bính', 85, '', 0, 'thotinhnguyenbinh.PNG', '<iframe src=\"https://docs.google.com/document/d/1i441hmtna1rfwWSW98OpgKVslY38DFo5SmtKIYbKjjw/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tQ2Vpa0QzOGMxc1E/view?usp=sharing', '', 8, 0, 1),
(115, 'Thơ học trò', 5, '', 0, 'thohoctro.PNG', '<iframe src=\"https://docs.google.com/document/d/1WJyewIb941OUMDYO_iAMwMQv_0RW4_vuYuJ4QhXw7Is/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tdDZhVHFGZV9KOHc/view?usp=sharing', '', 8, 0, 1),
(116, 'Thi pháp Truyện Kiều', 86, '', 0, 'thiphaptruyenkieu.PNG', '<iframe src=\"https://docs.google.com/document/d/1rjSLwmEw3BDRlzDQkGlQT6XRVDlukOSwWdTDMuV2_bI/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tVk42Q1BfWWpaOWM/view?usp=sharing', '', 8, 0, 1),
(117, 'Tâm hồn cao thượng', 87, '', 0, 'tamhoncaothuong.PNG', '<iframe src=\"https://docs.google.com/document/d/16bOX06nm-E1rGjzDuHlhyC7ppMafCWiS75F_0LOXP0g/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tSEFQaFN1b2YzVm8/view?usp=sharing', '', 8, 0, 1),
(118, 'Tấm Cám', 5, '', 0, 'tamcam.PNG', '<iframe src=\"https://docs.google.com/document/d/1nWVd_LAYvS5UzjMOARvYWr8TKulrn6fXkLJ5n1mkoZQ/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tOGxqSTNMVnNrN28/view?usp=sharing', '', 8, 0, 1),
(119, 'Tác gia văn xuôI Việt Nam hiện đạI từ sau 1945', 5, '', 0, 'tavgiavanxuoivietnamhiendaitusau1945.PNG', '<iframe src=\"https://docs.google.com/document/d/1letzrIDgX5k0NZVueYclPqRAMEs1qt7n7R2tqBNRFhg/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tN0M0c0N5UWlqMTQ/view?usp=sharing', '', 8, 0, 1),
(120, 'Phân tích tác phẩm Nam Cao trong nhà trường', 88, '', 0, 'phantichtacphamnamcaotrongnhatruong.PNG', '<iframe src=\"https://docs.google.com/document/d/1hn7AOpbX4EboVZHu8xbriNmXY9HBT280sNe7qbHDNkU/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tblo1QmtnLWd1RGM/view?usp=sharing', '', 8, 0, 1),
(121, 'NỗI buồn chiến tranh', 89, '', 0, 'noibuonchientranh.PNG', '<iframe src=\"https://docs.google.com/document/d/1J-wrIyswt2S8ttZAaxLuD9Jovz1E4GRa1DpsmTRI040/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tdTVLcXN3d3hWdkk/view?usp=sharing', '', 8, 0, 1),
(122, 'Những vần thơ hay', 5, '', 0, 'nhungvanthohay.PNG', '<iframe src=\"https://docs.google.com/document/d/1GER9-uY24QYA2l1nAKx6dHI5fUp5WtBTI8i3w9F5thw/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tYVhkcm9PYkU2UEU/view?usp=sharing', '', 8, 0, 1),
(123, 'Những cách tân nghệ thuật trong thơ Xuân Diệu giai đoạn 1932 - 1945', 90, '', 0, 'nhungcachtannghethuattrongthoxuandieu.PNG', '<iframe src=\"https://docs.google.com/document/d/11E-c9zpBDnYlU8EOQ1XV296_9z3hkCY8KblIQ8iBQAQ/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tRVNWWVZVamtpdnM/view?usp=sharing', '', 8, 0, 1),
(124, 'Nhật ký trong tù', 91, '', 0, 'nhatkytrongtu.PNG', '<iframe src=\"https://docs.google.com/document/d/1dDWFBi_dXgdEYPaaBiveuMSATFo8P_lBZnRODGGuGH0/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tdnVxN1VzcmtzbEU/view?usp=sharing', '', 8, 0, 1),
(125, 'Nhật Bản trong chiếc gương soi', 92, '', 0, 'nhatbantrongchiecguongsoi.PNG', '<iframe src=\"https://docs.google.com/document/d/1lc9JsXKSvdywQQ3i3wQIF6ssnu-8blrN-P3QDR6DsOE/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tY0stTGF0UDdhSVU/view?usp=sharing', '', 8, 0, 1),
(126, 'Nhà văn Việt Nam hiện đạI chân dung và phong cách', 93, '', 0, 'nhavanvietnamhiendaichandungvaphongcach.PNG', '<iframe src=\"https://docs.google.com/document/d/1CMPgg7lbOQivSjEFtCD8J3lwvcLSICmfJIPnt5fVIQI/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7teW9OaG1lT1FEZlU/view?usp=sharing', '', 8, 0, 1),
(127, 'Ngô Tất Tố một tàI năng lớn đa dạng', 94, '', 0, 'ngotattomottainanglondadang.PNG', '<iframe src=\"https://docs.google.com/document/d/1egwOrrncawrgNWeFdtqUFrroJaMgUhHf2QZ02wPpQao/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tZVU2c3dCb09xbmM/view?usp=sharing', '', 8, 0, 1),
(128, 'Nghiên cứu so sánh tiễn đăng tân thoạI & truyền kỳ mạn lục', 95, '', 0, 'nghiencuusosanh.PNG', '<iframe src=\"https://docs.google.com/document/d/1Id_n-vZQD6lQat-HEHeRgRqOhyoEiEUV5iQgzEckto0/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tc0VqckV3ejZvLTg/view?usp=sharing', '', 8, 0, 1),
(129, 'Nguyễn công hoan cây bút hiện thực xuất sắc', 96, '', 0, 'nguyenconghoancaybuthienthucxuatsac.PNG', '<iframe src=\"https://docs.google.com/document/d/1poeWPINnnPLJHkPyc2Fu9D1IykshmUlrs8KDX0b7eSA/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tbUJOazg5V2FHQUU/view?usp=sharing', '', 8, 0, 1),
(130, 'Lí luận văn học', 84, '', 0, 'liluanvanhoc.PNG', '<iframe src=\"https://docs.google.com/document/d/1e1OgK3aRJJGDjlYjzpPzShqwjNoQ8VfdWiCerkLjjqA/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tVnVSMXNZMlo2YnM/view?usp=sharing', '', 8, 0, 1),
(131, 'Mấy vấn đề thi pháp văn học trung đạI Việt Nam', 86, '', 0, 'mayvandethiphap.PNG', '<iframe src=\"https://docs.google.com/document/d/1E5TNwMjC-QhGzquSjuYQkB0SCQcG1z-v4XC8JYZiuac/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tVUpIekJMZnpDZTA/view?usp=sharing', '', 8, 0, 1),
(132, 'Lụa', 97, '', 0, 'lua.PNG', '<iframe src=\"https://docs.google.com/document/d/160cZmxHP8m-nht2ELEfV4NITEP76xpJYJhuweDAnXkI/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tQWVFSTRYZEZOSzg/view?usp=sharing', '', 8, 0, 1),
(133, 'Lịch sử văn học Việt Nam - tập 1', 98, '', 0, 'lichsuvanhocvietnamtap1.PNG', '<iframe src=\"https://docs.google.com/document/d/1tTZhSelhKc0_PaTqh0_v0TJ6V_Qw0vpyezy4Zl3Tbvo/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tdFZxb2xlaC1zbVE/view?usp=sharing', '', 8, 0, 1),
(134, 'Lịch sử văn học Việt Nam - tập 3', 99, '', 0, 'lichsuvanhocvietnamtap3.PNG', '<iframe src=\"https://docs.google.com/document/d/1a31NH1HcBq58c4I2ik0eW1g5HVZFyVgKneHar3bdTwg/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tY010OUozSm1ONXM/view?usp=sharing', '', 8, 0, 1),
(135, 'Lá nằm trong lá', 100, '', 0, 'lanamtrongla.PNG', '<iframe src=\"https://docs.google.com/document/d/1jOa9XbWuwEbz-FfqVlZDws52Llzs5ieEeCHvSi4dBvI/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tREZVODVnOUtXc28/view?usp=sharing', '', 8, 0, 1),
(136, 'Kho tàng về các ông trạng Việt Nam', 101, '', 0, 'khotanvecacongtrangvietnam.PNG', '<iframe src=\"https://docs.google.com/document/d/1jHjeFvrFOhiRaHSHiuDxwT6bbtOjyPZvn1ef-qIZuSo/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tUXl3RmxMdHIzcFk/view?usp=sharing', '', 8, 0, 1),
(137, 'Hồ Xuân Hương thơ và đờI', 102, '', 0, 'hoxuanhuongthovadoi.PNG', '<iframe src=\"https://docs.google.com/document/d/1NJSTfuRe8nly2eqLB4uKU09uIyctQfJRKP2ABiUFUZY/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tcXd1MmRlaGxFaVE/view?usp=sharing', '', 8, 0, 1),
(138, 'Giáo trình dẫn luận ngôn ngữ học', 103, '', 0, 'giaotrinhdanluanngonnguhoc.PNG', '<iframe src=\"https://docs.google.com/document/d/1iOesxpZslJvmnzWXHeUVK4vMh-mHVVaNLzABxAJaORU/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tRU16TEZrZ05nNlU/view?usp=sharing', '', 8, 0, 1),
(139, 'Đặc trưng thẩm mĩ văn học dân gian', 104, '', 0, 'dactrungthammivanhocdangian.PNG', '<iframe src=\"https://docs.google.com/document/d/10RDZHP7XjosLKUn9yqXi4lAiW83sZFwGaoFY5mgEo8c/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tUThnd2RuYy1Xc1U/view?usp=sharing', '', 8, 0, 1),
(140, 'Dùng từ viết câu và soạn thảo văn bản', 105, 'Nhà xuất bản Giáo Dục', 0, 'dungtuvietcauvasoanthaovanban.PNG', '<iframe src=\"https://docs.google.com/document/d/10x9bnMzS6WtJ65kCSdJaNpnNZOa9yLaXubwVWx9g9zo/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tcWtlS09wZXBLdE0/view?usp=sharing', '', 8, 0, 1),
(141, 'Danh nữ trong truyền thuyết và lịch sử Việt Nam', 106, '', 0, 'danhnutrongtruyenthuyet.PNG', '<iframe src=\"https://docs.google.com/document/d/1XTldWX2ex0toMaBcMNTVy837VJSaNm9hE-0DPYEz644/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7taHNBcndKcmhZbFU/view?usp=sharing', '', 8, 0, 1),
(142, 'Con quáI vật', 79, '', 0, 'conquaivat.PNG', '<iframe src=\"https://docs.google.com/document/d/13oRluuETjdOonmbka1E_RodAo32z4s-80R82k_I2IKg/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tRmd4RXdKVkJ0ZmM/view?usp=sharing', '', 8, 0, 1),
(143, 'Cơ sở ngôn ngữ học và tiếng việt', 107, '', 0, 'cosongonnguhocvatiengviet.PNG', '<iframe src=\"https://docs.google.com/document/d/11AT6sAJYhN5SM2sfCbDKUgriSma3BTD1cXomHN1eUm0/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tTjZLalhNQndFQk0/view?usp=sharing', '', 8, 0, 1),
(144, 'Cơ cấu ngữ âm tiếng việt', 108, '', 0, 'cocaunguamtiengviet.PNG', '<iframe src=\"https://docs.google.com/document/d/1TB9i98yFngHuHfO-_-qwfnY3sg9NDu8aVvFLTILMods/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tUDYwa0ZheU03dzA/view?usp=sharing', '', 8, 0, 1),
(145, 'Cánh đồng bất tận những truyện hay và mớI nhất', 109, '', 0, 'canhdongbattan.PNG', '<iframe src=\"https://docs.google.com/document/d/1DRKbNwB0esjn0FfvJyu2v11qEgn92AGz-RhYXrGCJQM/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tYUdVNkFLejQ3UGM/view?usp=sharing', '', 8, 0, 1),
(146, 'Cẩm nang phương pháp sư phạm', 110, '', 0, 'camnangphuongphapsupham.PNG', '<iframe src=\"https://docs.google.com/document/d/12rTGIbjR7FI7p3XS7-XOPkal7I47RdI6t7yRCY1UKt0/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tV1d6dTdBbU9icEE/view?usp=sharing', '', 8, 0, 1),
(147, ' Thơ ca Việt Nam hình thức và thể loạI', 111, '', 0, 'thocavietnam.PNG', '<iframe src=\"https://docs.google.com/document/d/1B7EdnroD_fvgFKFFYu9dYy9oksTs3_l44QerjA_sqJs/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tRXFpSzdDVUg0TkE/view?usp=sharing', '', 8, 0, 1),
(148, 'Ca dao miền nam', 112, '', 0, 'cadaomiennam.PNG', '<iframe src=\"https://docs.google.com/document/d/1O9Wm96KsuDAM63Qgz1k-O5NqArz8pSOinHCbmKZIZGg/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tdmFINERyWFU2QVU/view?usp=sharing', '', 8, 0, 1),
(149, 'Ca dao dân ca', 5, '', 0, 'cadaodanca.PNG', '<iframe src=\"https://docs.google.com/document/d/11ZFbC0okRFunMXudiLjSc1zZVorQL60Obng98XsDA70/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tM0VLb3JWV05lWFk/view?usp=sharing', '', 8, 0, 1),
(150, 'Bình thơ từ 100 bàI thơ hay thế kỷ XX - tập II', 113, '', 0, 'binhtho.PNG', '<iframe src=\"https://docs.google.com/document/d/1X69PWoUbt0f9At-eRSADisricUTyqD5DJrlFK-2nIXY/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tSHpkNUg2VllZb28/view?usp=sharing', '', 8, 0, 1),
(151, 'Văn học thiếu nhi Việt Nam', 114, '', 0, 'vanhocthieunhivietnam.PNG', '<iframe src=\"https://docs.google.com/document/d/1XuHtGuyxO_GJ_lX0JdY6wDZUJbgd071TsUXGC_ITM70/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tM05qZG5iYWI3VDQ/view?usp=sharing', '', 8, 0, 1),
(152, 'Ba lô màu xanh', 100, '', 0, 'balomauxanh.PNG', '<iframe src=\"https://docs.google.com/document/d/1WqfqgejBCz3FyXbMW6_wvTVOmIR__rXfioRirBWvcL4/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7teWI1VVo0WWU0SWs/view?usp=sharing', '', 8, 0, 1),
(153, 'Ba đỉnh cao thơ mới: Xuân Diệu - Nguyễn Bính - Hàn Mặc Tử', 115, '', 0, '3dinhcaothomoi.PNG', '<iframe src=\"https://docs.google.com/document/d/1ooLVOnQH4iGge_FYS-TVKKjyCgYNuNbePVb-1ftJfBU/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tdVA4VGlRWVRLSWs/view?usp=sharing', '', 8, 0, 1),
(154, 'Anh chồng của vợ tôI', 116, '', 0, 'anhchongcuavotoi.PNG', '<iframe src=\"https://docs.google.com/document/d/11glYxMkcQ4QstZ12oHL0R19cl_F3hkmUPqB0dQqbouM/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tRVFvVDdmNl9qZUU/view?usp=sharing', '', 8, 0, 1),
(155, '5 truyện thật ngắn', 117, 'Không', 0, '1.PNG', '<iframe src=\"https://docs.google.com/document/d/1QNcB_OmJv29mCEOZfoWH43MwmBKikG0nzRaw_UkYxoU/pub?embedded=true\"></iframe>', 'https://drive.google.com/file/d/0BwXx8GXrek7tYnBUN05HMzAwcU0/view?usp=sharing', '', 12, 0, 0),
(156, '7.1947', 118, 'http://vnthuquan.net/', 0, '2.PNG', '<iframe src=\"https://docs.google.com/document/d/1EpIdr-dGoWnNsrtQEPU-L4mfatgqNK6dDSm14P9swJw/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(157, '16 mét vuông', 119, 'http://vnthuquan.net/', 0, '3.PNG', '<iframe src=\"https://docs.google.com/document/d/1SJVOfJvIR69jTI9z82dw8qTR_I3ToynIY2NMwVqTmOg/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(158, '17 năm và 17 ngày', 120, 'http://vnthuquan.net/', 0, '4.PNG', '<iframe src=\"https://docs.google.com/document/d/1J7uLTUemYn0aNlN6NF1eojlwKOKJMmydFU2MR7ANWwo/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(159, '18 tầng tháp', 121, 'Sưu tầm', 2015, '5.PNG', '<iframe src=\"https://docs.google.com/document/d/1ksB6GheyOtpyrVEOZOGWQAXdTI7pMe7tQEHBMKjxbSw/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0);
INSERT INTO `books` (`bookid`, `bookname`, `author`, `nxb`, `year`, `filename`, `link`, `download`, `des`, `catid`, `spec`, `credits`) VALUES
(161, '24 giờ trong đờI một ngườI đàn bà', 122, 'http://vnthuquan.net/', 2016, '6.PNG', '<iframe src=\"https://docs.google.com/document/d/1-Zij3K1pSpfAYUJ6FgOZVVNRxQTtkrDA8Lk_hHHWuis/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(162, '27 án oan trong các triều đạI trung quốc', 123, 'http://vnthuquan.net/', 0, '7.PNG', '<iframe src=\"https://docs.google.com/document/d/14uxMql0ha0Oev_chiiXwhblIOOFDs1KwX4VnBLG8kBg/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(163, '27 bước chân là lên thiên đường', 124, 'http://vnthuquan.net/', 2015, '8.PNG', '<iframe src=\"https://docs.google.com/document/d/1jw_H4dxSujxboZW9e8lW8gNv3YB-XD6WHkL-sK1O8i0/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(164, '32 - 26', 125, 'http://vnthuquan.net/', 0, '9.PNG', '<iframe src=\"https://docs.google.com/document/d/1iMeIeMn1DyL6Z1S5wtba4QCQj6BNDn4-x4ZcTnWNF9E/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(165, '48 giờ yêu nhau', 126, 'http://vnthuquan.net/', 0, '10.PNG', 'https://docs.google.com/document/d/1eA92z8axyxoFeeU7ykTWbDSXjiQjjuQDT7cNUaLfcww/edit', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(166, '726256-b526', 127, 'http://vnthuquan.net/', 0, '11.PNG', '<iframe src=\"https://docs.google.com/document/d/1NlMMid35PzhEGzZhWKz-3GNNvMpUl_yEYbHzlf75Vhs/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(167, 'A clean, well-lighted place', 128, 'http://vnthuquan.net/', 2015, '12.PNG', '<iframe src=\"https://docs.google.com/document/d/1KJo4LGtjcPGNMPtyutEjXzAVNHHGqMwqL-dbMWXiYv0/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(168, 'Á đạI gia', 117, 'http://vnthuquan.net/', 0, '13.PNG', '<iframe src=\"https://docs.google.com/document/d/10ejRhf3DvKHa0_IaBUtXrguJhz7dywDhW4Kkh4L98lM/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(169, 'À! Chuyện của bao', 117, 'http://vnthuquan.net/', 0, '14.PNG', '<iframe src=\"https://docs.google.com/document/d/1eLYGKzRgcfAI81NVcDpX2pFzEgcUtDLIKxiEEqiLAIk/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(170, 'Ác cảm', 129, 'http://vnthuquan.net/', 2015, '15.PNG', '<iframe src=\"https://docs.google.com/document/d/1Epo7XjzpPLld1gmXVF8PgQrKRL8n0vvahBKlAmRPS6g/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(171, 'Ác giả ác báo', 130, 'http://vnthuquan.net/', 2015, '16.PNG', '<iframe src=\"https://docs.google.com/document/d/1EULUeMsiST21A3exAA2cVPVWSJ3bB63akMi4oUf8qtg/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(172, 'Afica', 131, 'http://vnthuquan.net/', 2015, '17.PNG', '<iframe src=\"https://docs.google.com/document/d/1YczC7B1191P9jMD5P5UPs6aggcnvaoP_--wzNIB3yK4/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(173, 'ÁI ân', 132, 'http://vnthuquan.net/', 0, '18.PNG', '<iframe src=\"https://docs.google.com/document/d/1xJoNvkSWuCPFjWT2Maxd2NHHdoq67PiYmHIPVKgTBg4/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(174, 'Ai biểu xấu', 109, 'http://vnthuquan.net/', 2015, '19.PNG', '<iframe src=\"https://docs.google.com/document/d/1dxBLDpFdvzIRWoNbgZTnvDpX6x-zDctKIA8CUIbAnLY/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(175, 'Ai chọn dùm tôi', 133, 'http://vnthuquan.net/', 2015, '20.PNG', '<iframe src=\"https://docs.google.com/document/d/1n8wd9Do1lqfQMgo_kQFAyKunZ3dqIvPEINUJvCUWfLE/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(176, 'Ai di truyền gene cho ta', 134, 'http://vnthuquan.net/', 2016, '21.PNG', '<iframe src=\"https://docs.google.com/document/d/1eKQpiYpUyQqibW47GgJpU44ocvKOQXZUIHu484CgmfM/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(177, 'Ai giết ngườI', 117, 'http://vnthuquan.net/', 0, '22.PNG', '<iframe src=\"https://docs.google.com/document/d/1x0sXjhhF21r0Di3X3Uo-TVCkKCowUC9qB51AfFDpZ3E/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(178, 'Ai khổ hơn ai', 117, '', 0, '23.PNG', '<iframe src=\"https://docs.google.com/document/d/1cyi_a41jBMpJPgs12U34noLZPlXqQefp9af757Gs2bs/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(179, 'Ai làm .... TôI .... Nghèo!', 117, '', 0, '24.PNG', '<iframe src=\"https://docs.google.com/document/d/1W-C2SiGQRZD2GfexvFUdiu6ZUL4FeZXx9Cblfvn7kLo/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(181, 'Ai mang hột nút đI rồI', 135, 'http://vnthuquan.net/', 2015, '26.PNG', '<iframe src=\"https://docs.google.com/document/d/101ZAuqF7l-6AEJ-aghqhTuGhVY2kJ0wY9ZR7JvRD1iE/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(182, 'Ai mua hành tôI', 136, 'http://vnthuquan.net/', 2015, '27.PNG', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '<iframe src=\"https://docs.google.com/document/d/1V8tVkTb2ROvF2C0fgDywfuVTnW_yNM2KbMOm-H3Qb6M/pub?embedded=true\"></iframe>', '', 12, 0, 0),
(183, 'Ai ngườI vô tộI?', 117, 'http://vnthuquan.net/', 0, '28.PNG', '<iframe src=\"https://docs.google.com/document/d/1u2VXuszvLLkCi1Of3d4VVSlv2TFX-Vdsvq97N9w6QpY/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(184, 'Ai phảI', 117, 'http://vnthuquan.net/', 0, '29.PNG', '<iframe src=\"https://docs.google.com/document/d/1xlGLkuPxvSsKa8NvUl64Q6F7eaZYWbyUh4UdVGWIeRk/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(185, 'Con gáI quỷ Medusa ', 137, 'http://vnthuquan.net/', 2017, '30.PNG', '<iframe src=\"https://docs.google.com/document/d/1SlwwZTGctSPNf90tS6TCmMwdFaUmDu57nFvy3n9oBp4/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(186, 'Để tỏa sáng trong buổI phỏng vấn', 117, 'http://vnthuquan.net/', 0, '31.PNG', '<iframe src=\"https://docs.google.com/document/d/1iufyFabXuDn-q-xSXpNCBsODUH02kfIty06CJdtHRWg/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(187, 'Đời khổ', 117, 'http://vnthuquan.net/', 0, '32.PNG', '<iframe src=\"https://docs.google.com/document/d/1xTCcUaGGRQOUh5rZsbYcHVeNhihTTqXiYkXOHo4NKOU/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(188, 'Miếng gia lừa', 138, 'http://vnthuquan.net/', 0, '33.PNG', '<iframe src=\"https://docs.google.com/document/d/1tbF2fKnsgnncqnWzo8ONgE3KG2813NHdqA_9IoVoHYs/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(189, 'Những nhườI thợ cửI', 118, 'isach.info', 0, '34.PNG', '<iframe src=\"https://docs.google.com/document/d/1wno9yUSWOTyy68PYPxoqORhwxDsp4iFixh9Q93_OPNk/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0),
(190, 'Tạo ấn tượng để thành công', 139, 'http://vnthuquan.net/', 0, '35.PNG', '<iframe src=\"https://docs.google.com/document/d/1-TVzS0NUTpxd6beiPTvi8j5MSmlK68kClbvMIV9sZBg/pub?embedded=true\"></iframe>', 'https://drive.google.com/drive/folders/0BwXx8GXrek7tYjdRdWlRcVVKaU0', '', 12, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(10) NOT NULL,
  `catname` varchar(200) NOT NULL,
  `catnameseo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `catname`, `catnameseo`) VALUES
(1, 'Tâm lý học', 'tam-ly-hoc'),
(5, 'Quản lý giáo dục', 'quan-ly-giao-duc'),
(6, 'Xã hội học', 'xa-hoi-hoc'),
(7, 'Văn hóa - Du lịch', 'van-hoa-du-lich'),
(8, 'Văn học', 'van-hoc'),
(9, 'Sinh học', 'sinh-hoc'),
(10, 'Giáo dục đặc biệt', 'giao-duc-dac-biet'),
(11, 'Kế toán tài chính', 'ketoantaichinh'),
(12, 'Truyện', 'truyen');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `ip_address` varchar(32) NOT NULL,
  `last_visit` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`ip_address`, `last_visit`) VALUES
('112.197.16.246', '2017-08-10 13:27:52'),
('173.252.86.197', '2017-08-10 13:28:26'),
('54.248.153.153', '2017-08-10 13:28:31'),
('123.21.147.34', '2017-08-10 13:28:33'),
('112.197.16.246', '2017-08-10 13:29:28'),
('115.78.6.7', '2017-08-10 13:32:16'),
('123.21.147.34', '2017-08-10 13:32:40'),
('123.21.147.34', '2017-08-10 13:35:44'),
('14.187.240.121', '2017-08-10 13:40:28'),
('123.21.147.34', '2017-08-10 13:41:11'),
('123.21.147.34', '2017-08-10 13:46:50'),
('123.21.147.34', '2017-08-10 13:51:46'),
('123.21.147.34', '2017-08-10 13:53:17'),
('123.21.147.34', '2017-08-10 13:56:03'),
('123.21.147.34', '2017-08-10 14:00:58'),
('123.21.147.34', '2017-08-10 14:06:17'),
('112.197.14.130', '2017-08-10 14:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `link`
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
-- Table structure for table `memup`
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
-- Dumping data for table `memup`
--

INSERT INTO `memup` (`id`, `name`, `des`, `link`, `iduser`, `stt`) VALUES
(3, 'test', 'test', 'test', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `recruite`
--

CREATE TABLE `recruite` (
  `rid` int(100) NOT NULL,
  `rtit` varchar(255) NOT NULL,
  `rdes` text NOT NULL,
  `rct` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recruite`
--

INSERT INTO `recruite` (`rid`, `rtit`, `rdes`, `rct`) VALUES
(1, 'Công ty MẮT BÃO tuyển vị trí nhân viên chăm sóc khách hàng và nhân viên nhắc phí', '1. NHÂN VIÊN CHĂM SÓC KHÁCH HÀNG Địa chỉ làm việc: Hoàng Hoa Thám, P.13, Q. Tân Bình, Tp. HCM Thời gian làm việc: Xoay ca (1 ca 8 tiếng, toàn thời gian), cụ thể: - 7h-16h, 8h-17h, 9h-18h, 10h-19h....', '<p class=\"sizeable\"><strong>1. NH&Acirc;N VI&Ecirc;N CHĂM S&Oacute;C KH&Aacute;CH H&Agrave;NG</strong></p>\n<p class=\"sizeable\"><strong>Địa chỉ l&agrave;m việc:</strong>&nbsp;Ho&agrave;ng Hoa Th&aacute;m, P.13, Q. T&acirc;n B&igrave;nh, Tp. HCM</p>\n<p class=\"sizeable\"><strong>Thời gian l&agrave;m việc</strong>: Xoay ca (1 ca 8 tiếng, to&agrave;n thời gian), cụ thể:</p>\n<p class=\"sizeable\">- 7h-16h, 8h-17h, 9h-18h, 10h-19h, 11h-20h, 12h00 &ndash; 21h00</p>\n<p class=\"sizeable\">- Nghỉ 1 ng&agrave;y trong tuần theo sự sắp xếp của Trưởng bộ phận</p>\n<p class=\"sizeable\"><strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>\n<p class=\"sizeable\">- Nhận cuộc gọi, giải đ&aacute;p thắc mắc từ kh&aacute;ch h&agrave;ng</p>\n<p class=\"sizeable\">- Nhận đơn đặt h&agrave;ng, y&ecirc;u cầu hủy đơn h&agrave;ng của kh&aacute;ch</p>\n<p class=\"sizeable\">- Giải đ&aacute;p cho kh&aacute;ch h&agrave;ng về quy định đổi trả</p>\n<p class=\"sizeable\"><strong>Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\n<p class=\"sizeable\">- Giọng n&oacute;i r&otilde; r&agrave;ng, dễ nghe (kh&ocirc;ng n&oacute;i lắp, ngọng)</p>\n<p class=\"sizeable\">- Chăm chỉ, si&ecirc;ng năng, c&oacute; thể l&agrave;m việc xoay ca</p>\n<p class=\"sizeable\">- Sử dụng vi t&iacute;nh văn ph&ograve;ng</p>\n<p class=\"sizeable\">- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực chăm s&oacute;c kh&aacute;ch h&agrave;ng, tổng đ&agrave;i vi&ecirc;n</p>\n<p class=\"sizeable\">- Tốt nghiệp THPT (điều kiện phụ)</p>\n<p class=\"sizeable\"><strong>Mức lương:</strong>&nbsp;Thu nhập 5.000.000 &ndash; 6.000.000 VNĐ/th&aacute;ng</p>\n<p class=\"sizeable\"><strong>2. NH&Acirc;N VI&Ecirc;N NHẮC PH&Iacute;</strong></p>\n<p class=\"sizeable\"><strong>Địa chỉ l&agrave;m việc:</strong>&nbsp;Cộng H&ograve;a, Q. T&acirc;n B&igrave;nh, Tp. HCM</p>\n<p class=\"sizeable\"><strong>Thời gian l&agrave;m việc:</strong></p>\n<p class=\"sizeable\">L&agrave;m giờ h&agrave;nh ch&iacute;nh (07h30 &ndash; 17h30)</p>\n<p class=\"sizeable\">Nghỉ ngẫu nhi&ecirc;n 01 ng&agrave;y trong tuần theo sự sắp xếp của trưởng nh&oacute;m</p>\n<p class=\"sizeable\"><strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>\n<p class=\"sizeable\">- Gọi điện nhắc nhở kh&aacute;ch h&agrave;ng thanh khoản to&aacute;n ph&iacute; trễ hạn</p>\n<p class=\"sizeable\">- Cung cấp th&ocirc;ng tin cho kh&aacute;ch h&agrave;ng về khoản ph&iacute; của họ</p>\n<p class=\"sizeable\">- Hướng dẫn c&aacute;ch thức thanh to&aacute;n ph&ugrave; hợp cho kh&aacute;ch h&agrave;ng</p>\n<p class=\"sizeable\">- Tạo dựng mối quan hệ đ&aacute;ng tin cậy, bền vững với kh&aacute;ch h&agrave;ng trễ hạn trả ph&iacute;</p>\n<p class=\"sizeable\"><strong>Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\n<p class=\"sizeable\">- Giọng n&oacute;i r&otilde; r&agrave;ng, dễ nghe (kh&ocirc;ng n&oacute;i lắp, ngọng)</p>\n<p class=\"sizeable\">- Chăm chỉ, si&ecirc;ng năng, c&oacute; thể l&agrave;m việc xoay ca</p>\n<p class=\"sizeable\">- Giao tiếp tốt, si&ecirc;ng năng, trung thực</p>\n<p class=\"sizeable\">- Sử dụng vi t&iacute;nh văn ph&ograve;ng</p>\n<p class=\"sizeable\">- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực kinh doanh, tư vấn t&agrave;i ch&iacute;nh, telesales, chăm s&oacute;c kh&aacute;ch h&agrave;ng</p>\n<p class=\"sizeable\">- Tốt nghiệp THPT trở l&ecirc;n</p>\n<p class=\"sizeable\"><strong>Mức lương:</strong>&nbsp;7.000.000 &ndash; 10.000.000 VNĐ/th&aacute;ng (Lương cơ bản + Thưởng)</p>\n<p class=\"sizeable\"><strong>Th&ocirc;ng tin chung cho c&aacute;c vị tr&iacute;:</strong></p>\n<p class=\"sizeable\"><strong>M&ocirc;i trường l&agrave;m việc:</strong>&nbsp;Di chuyển bằng thang m&aacute;y hoặc l&agrave;m dưới trệt</p>\n<p class=\"sizeable\"><strong>Quyền lợi nh&acirc;n vi&ecirc;n:</strong></p>\n<p class=\"sizeable\">- BHYT, BHTN theo quy định nh&agrave; nước</p>\n<p class=\"sizeable\">- Thưởng KPI, th&acirc;m ni&ecirc;n</p>\n<p class=\"sizeable\">- Thưởng c&aacute;c ng&agrave;y lễ tết, sinh nhật, cưới...</p>\n<p class=\"sizeable\">- Tham gia kh&oacute;a đ&agrave;o tạo về nghiệp vụ, kỹ năng CSKH</p>\n<p class=\"sizeable\">- Tham gia c&aacute;c hoạt động ngoại kh&oacute;a của c&ocirc;ng ty tổ chức</p>\n<p class=\"sizeable\"><strong>Hồ sơ:&nbsp;</strong></p>\n<p class=\"sizeable\">C&ocirc;ng chứng kh&ocirc;ng qu&aacute; 06 th&aacute;ng</p>\n<p class=\"sizeable\">Đơn xin việc</p>\n<p class=\"sizeable\">Sơ yếu l&yacute; lịch + 2 ảnh 3x4</p>\n<p class=\"sizeable\">Kh&aacute;m sức khỏe, CMND, hộ khẩu photo c&ocirc;ng chứng</p>\n<p class=\"sizeable\"><strong>Hạn tuyển dụng:</strong>&nbsp;Tuyển thường xuy&ecirc;n</p>\n<p class=\"sizeable\"><strong>Th&ocirc;ng tin li&ecirc;n hệ tuyển dụng:</strong></p>\n<p class=\"sizeable\"><em><strong>Bộ phận Việc l&agrave;m - Trung t&acirc;m Khuyết tật v&agrave; Ph&aacute;t triển (DRD)</strong></em><br />Đ/c: 311K8 Đường số 7, Khu nh&agrave; t&aacute;i định cư Thủ Thi&ecirc;m, Phường An Ph&uacute;, Quận 2, Tp. HCM<br />SĐT: 016 999 88 336 hoặc (028) 62 67 99 22 nh&aacute;nh 113 hoặc 114 găp T&uacute; Quy&ecirc;n hoặc Phan Thị R&aacute;t<br />Email:&nbsp;<a class=\"sizeable\" href=\"mailto:vieclam@drdvietnam.com\">vieclam@drdvietnam.com</a></p>\n<p class=\"sizeable\"><strong>Ch&uacute; &yacute;:</strong>&nbsp;Để được hỗ trợ th&ocirc;ng tin tốt nhất, c&aacute;c bạn n&ecirc;n đặt c&acirc;u hỏi trực tiếp tr&ecirc;n trang website của DRD tại địa chỉ:&nbsp;<a class=\"sizeable\" href=\"http://www.drdvietnam.org/\">drdvietnam.org</a>.&nbsp;Ch&uacute;ng t&ocirc;i kh&ocirc;ng hỗ trợ trả lời tr&ecirc;n c&aacute;c website chia sẻ th&ocirc;ng tin kh&aacute;c.</p>'),
(2, 'Công ty TNHH Minh Phúc tuyển dụng vị trí Nhân viên chăm sóc khách hàng và Nhân viên Telesale sữa Vinamilk/Abbott tại Tp. HCM', '1. Nhân viên chăm sóc khách hàng cho các nhà mạng viễn thông di động\r\nThời gian làm việc:\r\nCa hành chính: (8h00 – 17h30)\r\nCa xoay: Ca sáng (7h – 14h30), ca chiều (14h30 – 22h), ca đêm (22h00 – 7h00, trung bình 1 ca/tuần)....', '<p class=\"sizeable\"><strong>1. Nhân viên chăm sóc khách hàng cho các nhà mạng viễn thông di động</strong></p>\r\n<p class=\"sizeable\"><strong>Thời gian làm việc:</strong></p>\r\n<p class=\"sizeable\">Ca hành chính: (8h00 – 17h30)</p>\r\n<p class=\"sizeable\">Ca xoay: Ca sáng (7h – 14h30), ca chiều (14h30 – 22h), ca đêm (22h00 – 7h00, trung bình 1 ca/tuần)</p>\r\n<p class=\"sizeable\">Ca Part time (8h00 – 14h00; 14h00 – 20h00; 15h00 – 21h00; 18h00 – 00h; 7h00 – 12h00; 12h00 – 17h00; 17h00 – 23h00)</p>\r\n<p class=\"sizeable\"><strong>Nơi làm việc: </strong>Trần văn Dư, phường 13, quận Tân Bình, TP. HCM</p>\r\n<p class=\"sizeable\"><strong>Mô tả công việc:</strong> Tư vấn, giải đáp thắc mắc và chia sẻ thông tin qua điện thoại cho các khách hàng đang sử dụng một trong ba nhà mạng viễn thông Vina, Mobi, Viettel</p>\r\n<p class=\"sizeable\"><strong>Yêu cầu tuyển dụng:</strong></p>\r\n<p class=\"sizeable\">Trình độ THPT hoặc Trung cấp trở lên, nếu là sinh viên thì có xác nhận của nhà trường</p>\r\n<p class=\"sizeable\">Độ tuổi: 18 – 30</p>\r\n<p class=\"sizeable\">Nam/nữ giọng nói dễ nghe, phát âm to rõ ràng, không nói tiếng địa phương</p>\r\n<p class=\"sizeable\">Biết sử dụng tin học căn bản word, exel</p>\r\n<p class=\"sizeable\">Đi lại lên cầu thang được</p>\r\n<p class=\"sizeable\">Phải tham gia khóa đào tạo kỹ năng và nghiệp vụ từ 3 đến 4 tuần vào giờ hành chính, hỗ trợ 50 ngàn/ngày đào tạo</p>\r\n<p class=\"sizeable\"><strong>Mức lương dao động:</strong> từ 4.500.000 – 6.000.000/tháng</p>\r\n<p class=\"sizeable\"><strong>2. Nhân viên Tele-Check – Talesale ngành sữa dinh dưỡng</strong></p>\r\n<p class=\"sizeable\"><strong>Thời gian làm việc:</strong> 8h00 – 17h00, 8h30 – 17h30 từ thứ 2 đến thứ 7</p>\r\n<p class=\"sizeable\"><strong>Nơi làm việc:</strong></p>\r\n<p class=\"sizeable\">Văn phòng 1: Trần văn Dư, P. 13, Q. Tân Bình, TP. HCM</p>\r\n<p class=\"sizeable\">Văn phòng 2: Nguyễn Kiệm, P.3, Q. Gò Vấp</p>\r\n<p class=\"sizeable\"><strong>Mô tả công việc:</strong></p>\r\n<p class=\"sizeable\">Gọi điện thọai cho khách hàng theo danh bạ Công ty cung cấp</p>\r\n<p class=\"sizeable\">Xác nhận dòng sữa khách hàng đang sử dụng/ tư vấn bán hàng về các mặt hàng sữa dinh dưỡng (Vinamilk/Abbott)</p>\r\n<p class=\"sizeable\"><strong>Yêu cầu tuyển dụng:</strong></p>\r\n<p class=\"sizeable\">Tối thiểu Trung cấp, nếu là sinh viên thì có xác nhận của nhà trường</p>\r\n<p class=\"sizeable\">Độ tuổi: 18 – 30</p>\r\n<p class=\"sizeable\">Nam/Nữ, giọng nói dễ nghe, phát âm chuẩn (không ngọng, lắp, giọng địa phương), ưu tiên có kinh nghiệm tư vấn và bán hàng</p>\r\n<p class=\"sizeable\">Tin học căn bản word, excel</p>\r\n<p class=\"sizeable\">Yêu thích công việc, làm việc được trong môi trường áp lực cao</p>\r\n<p class=\"sizeable\">Đi lại lên cầu thang được</p>\r\n<p class=\"sizeable\"><strong>Mức lương:</strong></p>\r\n<p class=\"sizeable\">Lương cơ bản : 4.500.000 – 6.000.000 đồng/tháng</p>\r\n<p class=\"sizeable\">Thưởng hoàn thành công việc KPI: 300.000 – 500.000 đồng/ tháng</p>\r\n<p class=\"sizeable\">Thưởng doanh số: Nếu làm vị trí Telesales (Từ 1.00000 – 3.000.000 đồng)</p>\r\n<p class=\"sizeable\"><strong>Thông tin chung cho các vị trí:</strong></p>\r\n<p class=\"sizeable\"><strong>Quyền lợi:</strong></p>\r\n<p class=\"sizeable\">Được đào tạo và cấp chứng chỉ Nghề Bán hàng qua điện thoại sau 5 tháng làm việc (Hoàn toàn miễn phí)</p>\r\n<p class=\"sizeable\">Là nơi tốt nhất để các bạn sinh viên rèn luyện kỹ năng giao tiếp, xử lý tình huống, trải nghiệm môi trường làm việc thật, nhiều áp lực và năng động</p>\r\n<p class=\"sizeable\">Được tham gia BHXH - BHYT, các chế độ phúc lợi khác của công ty</p>\r\n<p class=\"sizeable\"><strong>Môi trường làm việc:</strong> Làm việc trên lầu, di chuyển bằng thang máy. Làm việc nơi cố định, không di chuyển ra ngoài thị trường</p>\r\n<p class=\"sizeable\"><strong>Hồ sơ:</strong> Công chứng không quá 06 tháng</p>\r\n<p class=\"sizeable\">Đơn xin việc</p>\r\n<p class=\"sizeable\">Sơ yếu lý lịch + 2 ảnh 3x4</p>\r\n<p class=\"sizeable\">Khám sức khỏe, CMND, hộ khẩu</p>\r\n<p class=\"sizeable\"><strong>Hạn tuyển dụng:</strong> Hàng tháng</p>\r\n<p class=\"sizeable\"><strong>Thông tin liên hệ tuyển dụng:</strong></p>\r\n<p class=\"sizeable\"><strong><em>Bộ phận Việc làm - Trung tâm Khuyết tật và Phát triển (DRD).</em></strong><br />Đ/c: 311K8 Đường số 7, Khu nhà tái định cư Thủ Thiêm, Phường An Phú, Quận 2, Tp. HCM<br />SĐT: 016 999 88 336 hoặc (028) 62 67 99 22 nhánh 113 hoặc 114 găp Tú Quyên hoặc Phan Thị Rát<br />Email: <a class=\"sizeable\" href=\"mailto:vieclam@drdvietnam.com\">vieclam@drdvietnam.com</a></p>\r\n<p class=\"sizeable\"><strong>Chú ý:</strong></p>\r\n<p class=\"sizeable\">- Chi nhánh Công ty Minh Phúc ở Đà Nẵng đang tuyển <strong>Nhân viên chăm sóc khách hàng</strong> và <strong>Nhân viên nhập liệu</strong>. Người tìm việc muốn làm ở đây vui lòng liên hệ Bộ phận việc làm DRD với thông tin liên hệ bên trên để biết thêm thông tin chi tiết. </p>\r\n<p class=\"sizeable\">- Để được hỗ trợ thông tin tốt nhất, các bạn nên đặt câu hỏi trực tiếp trên trang website của DRD tại địa chỉ: <a class=\"sizeable\" href=\"http://www.drdvietnam.org/\">drdvietnam.org</a>. Chúng tôi không hỗ trợ trả lời trên các website chia sẻ thông tin khác.</p>'),
(3, 'Công ty AN LỘC PHÚC tuyển dụng nhân viên lắp ráp mô hình kiến trúc và họa viên kiến trúc', 'Địa chỉ làm việc: Bình Quới, Phường 28, Quận Bình Thạnh, TP. HCM\r\nThời gian làm việc: Từ thứ 2 đến thứ 7\r\nSáng: 7h30 – 11h30\r\nChiều: 13h – 17h....', '<p class=\"sizeable\"><strong>Địa chỉ l&agrave;m việc:</strong>&nbsp;B&igrave;nh Quới, Phường 28, Quận B&igrave;nh Thạnh, TP. HCM</p>\r\n<p class=\"sizeable\"><strong>Thời gian l&agrave;m việc:&nbsp;</strong>Từ thứ 2 đến thứ 7</p>\r\n<p class=\"sizeable\">S&aacute;ng: 7h30 &ndash; 11h30</p>\r\n<p class=\"sizeable\">Chiều: 13h &ndash; 17h</p>\r\n<p class=\"sizeable\"><strong>1. Vị tr&iacute;:</strong>&nbsp;Lắp r&aacute;p m&ocirc; h&igrave;nh kiến tr&uacute;c</p>\r\n<p class=\"sizeable\"><strong>Số lượng:</strong>&nbsp;4 người (nam/nữ)</p>\r\n<p class=\"sizeable\"><strong>M&ocirc; tả c&ocirc;ng việc:</strong>&nbsp;D&aacute;n keo, lắp r&aacute;p m&ocirc; h&igrave;nh c&acirc;y cảnh, nh&agrave; ở, nội thất&hellip;</p>\r\n<p class=\"sizeable\"><strong>Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\r\n<p class=\"sizeable\">Hai tay khỏe, mắt tốt hoặc khiếm th&iacute;nh</p>\r\n<p class=\"sizeable\">Y&ecirc;u th&iacute;ch c&ocirc;ng việc</p>\r\n<p class=\"sizeable\">Chăm chỉ, cẩn thận, chịu kh&oacute;</p>\r\n<p class=\"sizeable\"><strong>Mức lương:</strong></p>\r\n<p class=\"sizeable\">Ch&iacute;nh thức: Từ 4 &ndash; 8 triệu/th&aacute;ng</p>\r\n<p class=\"sizeable\">Thử việc: 3,5 triệu/th&aacute;ng</p>\r\n<p class=\"sizeable\"><strong>Thời gian thử việc:</strong>&nbsp;1 th&aacute;ng</p>\r\n<p class=\"sizeable\"><strong>2. Vị tr&iacute;:</strong>&nbsp;Họa vi&ecirc;n kiến tr&uacute;c</p>\r\n<p class=\"sizeable\"><strong>Số lượng:</strong>&nbsp;02 người (nam/nữ)</p>\r\n<p class=\"sizeable\"><strong>M&ocirc; tả c&ocirc;ng việc:</strong>&nbsp;Dựa v&agrave;o bản vẽ chuy&ecirc;n ng&agrave;nh từ b&ecirc;n thiết kế để gia c&ocirc;ng lại bản vẽ</p>\r\n<p class=\"sizeable\"><strong>Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\r\n<p class=\"sizeable\">Kiến thức nền về s&aacute;ng t&aacute;c kiến tr&uacute;c tốt, nắm vững c&aacute;c cấu tạo kh&ocirc;ng gian kiến tr&uacute;c cơ bản v&agrave; đọc hiểu bản vẽ</p>\r\n<p class=\"sizeable\">Th&agrave;nh thạo c&aacute;c phần mềm chuy&ecirc;n ng&agrave;nh: AutoCad, 3DMax, Photoshop&hellip;</p>\r\n<p class=\"sizeable\">Sử dụng tốt c&aacute;c phần mềm tin học văn ph&ograve;ng</p>\r\n<p class=\"sizeable\">Tr&igrave;nh độ tối thiểu: Trung cấp, Cao đẳng, Đại học</p>\r\n<p class=\"sizeable\"><strong>Mức lương:</strong></p>\r\n<p class=\"sizeable\">Ch&iacute;nh thức: Thỏa thuận t&ugrave;y v&agrave;o năng lực</p>\r\n<p class=\"sizeable\">Thử việc: 3,5 triệu/th&aacute;ng</p>\r\n<p class=\"sizeable\"><strong>Thời gian thử việc</strong>: 1 th&aacute;ng</p>\r\n<p class=\"sizeable\"><strong>Th&ocirc;ng tin chung cho hai vị tr&iacute;:</strong></p>\r\n<p class=\"sizeable\">C&aacute;c chế độ v&agrave; quyền lợi kh&aacute;c:</p>\r\n<p class=\"sizeable\">Hưởng lương v&agrave; phụ cấp theo chế độ của c&ocirc;ng ty v&agrave; theo thỏa thuận</p>\r\n<p class=\"sizeable\">C&oacute; cơ hội thăng tiến</p>\r\n<p class=\"sizeable\">Cơ hội huấn luyện: Được đ&agrave;o tạo theo qui định của c&ocirc;ng ty</p>\r\n<p class=\"sizeable\"><strong>Y&ecirc;u cầu hồ sơ:</strong></p>\r\n<p class=\"sizeable\">Đơn xin việc l&agrave;m</p>\r\n<p class=\"sizeable\">Sơ yếu l&yacute; lịch</p>\r\n<p class=\"sizeable\">Bản sao hộ khẩu, CMND v&agrave; c&aacute;c bằng cấp c&oacute; li&ecirc;n quan</p>\r\n<p class=\"sizeable\">Giấy kh&aacute;m sức khỏe</p>\r\n<p class=\"sizeable\"><strong>M&ocirc;i trường l&agrave;m việc:&nbsp;</strong>Thuận tiện cho người khuyết tật di chuyển xe lăn, nạng nẹp</p>\r\n<p class=\"sizeable\"><strong>Lưu &yacute;:</strong></p>\r\n<p class=\"sizeable\">C&oacute; hỗ trợ chỗ ở: Nam th&igrave; ở tại c&ocirc;ng ty, nữ th&igrave; ở trọ b&ecirc;n ngo&agrave;i c&ocirc;ng ty c&aacute;ch 50m</p>\r\n<p class=\"sizeable\">Ăn uống: Tự lo (Kế b&ecirc;n c&ocirc;ng ty c&oacute; qu&aacute;n cơm b&igrave;nh d&acirc;n)</p>\r\n<p class=\"sizeable\">Xe bu&yacute;t: Kế b&ecirc;n c&ocirc;ng ty l&agrave; bến xe bu&yacute;t số 44 đi từ Bến Th&agrave;nh đến B&igrave;nh Quới</p>\r\n<p class=\"sizeable\"><strong>Hạn tuyển dụng:</strong>&nbsp;28/07/2017</p>\r\n<p class=\"sizeable\"><strong>Th&ocirc;ng tin li&ecirc;n hệ tuyển dụng:</strong></p>\r\n<p class=\"sizeable\"><em><strong>Bộ phận Việc l&agrave;m - Trung t&acirc;m Khuyết tật v&agrave; Ph&aacute;t triển (DRD)</strong></em><br />Đ/c: 311K8 Đường số 7, Khu nh&agrave; t&aacute;i định cư Thủ Thi&ecirc;m, Phường An Ph&uacute;, Quận 2, Tp. HCM<br />SĐT: 016 999 88 336 hoặc (028) 62 67 99 22 nh&aacute;nh 113 hoặc 114 găp T&uacute; Quy&ecirc;n hoặc Phan Thị R&aacute;t<br />Email:&nbsp;<a class=\"sizeable\">vieclam@drdvietnam.com</a></p>\r\n<p class=\"sizeable\"><iframe src=\"https://www.youtube.com/embed/K2YSR5nQ4X0?ecver=1\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></p>\r\n<p class=\"sizeable\"><strong>Ch&uacute; &yacute;:</strong>&nbsp;Để được hỗ trợ th&ocirc;ng tin tốt nhất, c&aacute;c bạn n&ecirc;n đặt c&acirc;u hỏi trực tiếp tr&ecirc;n trang website của DRD tại địa chỉ:&nbsp;<a class=\"sizeable\" href=\"http://www.drdvietnam.org/\">drdvietnam.org</a>.&nbsp;Ch&uacute;ng t&ocirc;i kh&ocirc;ng hỗ trợ trả lời tr&ecirc;n c&aacute;c website chia sẻ th&ocirc;ng tin kh&aacute;c.</p>'),
(4, 'Công ty Trường Minh tuyển Tổng đài viên Chăm sóc khách hàng Mobifone/Vinaphone làm việc tại Tp. HCM, Tp. Đà Nẵng và Hà Nội', 'Địa chỉ làm việc: \r\nChi nhánh Hà Nội: Tòa nhà MECO COMPLEX Ngõ 102 Trường Chinh, Phương Mai, Đống Đa\r\nChi nhánh Đà Nẵng: Đường số 2, KCN An Đồn, Q. Sơn Trà\r\nChi nhánh Hồ Chí Minh: Đường Lê Trung Nghĩa, P. 13, Q. Tân Bình ...', '<p class=\"sizeable\"><strong>Địa chỉ l&agrave;m việc:&nbsp;</strong></p>\r\n<p class=\"sizeable\"><em><strong>Chi nh&aacute;nh H&agrave; Nội:</strong></em>&nbsp;T&ograve;a nh&agrave; MECO COMPLEX Ng&otilde; 102 Trường Chinh, Phương Mai, Đống Đa</p>\r\n<p class=\"sizeable\"><em><strong>Chi nh&aacute;nh&nbsp;Đ&agrave; Nẵng:</strong></em>&nbsp;Đường số 2, KCN An Đồn, Q. Sơn Tr&agrave;</p>\r\n<p class=\"sizeable\"><em><strong>Chi nh&aacute;nh&nbsp;Hồ Ch&iacute; Minh:</strong></em>&nbsp;Đường L&ecirc; Trung Nghĩa, P. 13, Q. T&acirc;n B&igrave;nh&nbsp;</p>\r\n<p class=\"sizeable\"><strong>Thời gian l&agrave;m việc:</strong>&nbsp;Theo ca (t&ugrave;y v&agrave;o t&igrave;nh trạng khuyết tật v&agrave; phương tiện đi lại sẽ sắp xếp linh động thời gian ph&ugrave; hợp)</p>\r\n<p class=\"sizeable\"><em><strong>To&agrave;n thời gian:</strong></em>&nbsp;Xoay ca linh động 7 tiếng rưỡi, 6 ca/1 tuần, 1 ca đ&ecirc;m/th&aacute;ng</p>\r\n<p class=\"sizeable\"><em><strong>B&aacute;n thời gian:</strong>&nbsp;</em>7h - 12h; 9h - 14h; 17h - 22h, 18h00 - 23h00&hellip;</p>\r\n<p class=\"sizeable\"><strong>Số lượng:&nbsp;</strong>Li&ecirc;n tục</p>\r\n<p class=\"sizeable\"><strong>M&ocirc; tả c&ocirc;ng việc:</strong>&nbsp;Nghe cuộc gọi từ kh&aacute;ch h&agrave;ng sử dụng mạng Mobifone/Vinaphone, giải đ&aacute;p thắc mắc về c&aacute;c dịch vụ của nh&agrave; mạng tr&ecirc;n</p>\r\n<p class=\"sizeable\"><strong>Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>\r\n<p class=\"sizeable\"><strong>Dạng khuyết tật:</strong>&nbsp;Vận động</p>\r\n<p class=\"sizeable\"><strong>Về tr&igrave;nh độ:</strong></p>\r\n<p class=\"sizeable\">Kh&ocirc;ng y&ecirc;u cầu đối với mạng Vinaphone</p>\r\n<p class=\"sizeable\">Tốt nghiệp THPT trở l&ecirc;n đối với mạng Mobifone</p>\r\n<p class=\"sizeable\"><strong>Kỹ năng:</strong>&nbsp;Chỉ cần sử dụng được m&aacute;y t&iacute;nh, giọng n&oacute;i dễ nghe, kh&ocirc;ng n&oacute;i ngọng, n&oacute;i lắp</p>\r\n<p class=\"sizeable\"><strong>Th&aacute;i độ:</strong>&nbsp;Hiền l&agrave;nh, th&acirc;n thiện, chu đ&aacute;o, ki&ecirc;n nhẫn, c&oacute; tinh thần học hỏi, y&ecirc;u th&iacute;ch c&ocirc;ng việc</p>\r\n<p class=\"sizeable\"><strong>Mức lương:</strong></p>\r\n<p class=\"sizeable\"><em><strong>To&agrave;n thời gian:</strong></em></p>\r\n<p class=\"sizeable\">Thử việc: Từ 3 &ndash; 4 triệu/th&aacute;ng (khoảng 2 th&aacute;ng, c&oacute; thể sớm hơn t&ugrave;y v&agrave;o khả năng)</p>\r\n<p class=\"sizeable\">Ch&iacute;nh thức: Từ 4 - 8 triệu/th&aacute;ng (thưởng theo năng suất)</p>\r\n<p class=\"sizeable\"><em><strong>B&aacute;n thời gian:</strong>&nbsp;</em>Theo chỉ ti&ecirc;u (trung b&igrave;nh 2 &ndash; 3,5 triệu/th&aacute;ng)</p>\r\n<p class=\"sizeable\"><strong>Quyền lợi kh&aacute;c:</strong>&nbsp;Nghỉ 1 ng&agrave;y/ tuần. C&oacute; chế độ BHYT nếu l&agrave;m to&agrave;n thời gian. Phụ cấp ca đ&ecirc;m, thưởng Tết/lễ. Được cấp chứng nhận kỹ năng Chăm s&oacute;c kh&aacute;ch h&agrave;ng</p>\r\n<p class=\"sizeable\"><strong>M&ocirc;i trường l&agrave;m việc:</strong>&nbsp;V&ocirc; c&ugrave;ng thuận tiện. L&agrave;m việc trong văn ph&ograve;ng m&aacute;y lạnh tại lầu 2</p>\r\n<p class=\"sizeable\"><strong>Lưu &yacute;:</strong></p>\r\n<p class=\"sizeable\">Thời gian đầu c&ocirc;ng ty dạy nghiệp vụ miễn ph&iacute; trong khoảng 1 th&aacute;ng. C&ocirc;ng ty c&oacute; hỗ trợ tiền cơm l&agrave; 30.000/ng&agrave;y</p>\r\n<p class=\"sizeable\">Việc ăn/uống/ở tự lo</p>\r\n<p class=\"sizeable\"><strong>Hạn tuyển dụng:&nbsp;</strong>Tuyển thường xuy&ecirc;n</p>\r\n<p class=\"sizeable\"><strong>Th&ocirc;ng tin li&ecirc;n hệ tuyển dụng cho ứng vi&ecirc;n muốn ứng tuyển ở Tp. Đ&agrave; Nẵng:</strong></p>\r\n<p class=\"sizeable\"><em><strong>Hội Người khuyết tật Tp. Đ&agrave; Nẵng</strong></em></p>\r\n<p class=\"sizeable\">Đ/c: Số 66 Điện Biện Phủ, P. Ch&iacute;nh Gi&aacute;n, Q. Thanh Kh&ecirc;, Tp. Đ&agrave; Nẵng</p>\r\n<p class=\"sizeable\">SĐT: (0236) 36 51 57 15 hoặc 0904 106 601 (chị Đặng Hương Giang)</p>\r\n<p class=\"sizeable\">Email: danggiangvn@gmail.com</p>\r\n<p class=\"sizeable\"><strong>Th&ocirc;ng tin li&ecirc;n hệ tuyển dụng cho ứng vi&ecirc;n muốn ứng tuyển ở Tp. HCM v&agrave; H&agrave; Nội:</strong></p>\r\n<p class=\"sizeable\"><em><strong>Bộ phận Việc l&agrave;m - Trung t&acirc;m Khuyết tật v&agrave; Ph&aacute;t triển (DRD)</strong></em><br />Đ/c: 311K8 Đường số 7, Khu nh&agrave; t&aacute;i định cư Thủ Thi&ecirc;m, Phường An Ph&uacute;, Quận 2, Tp. HCM<br />SĐT: 016 999 88 336 hoặc (028) 62 67 99 22 nh&aacute;nh 113 hoặc 114 găp T&uacute; Quy&ecirc;n hoặc Phan Thị R&aacute;t<br />Email:&nbsp;<a class=\"sizeable\" href=\"mailto:vieclam@drdvietnam.com\">vieclam@drdvietnam.com</a></p>\r\n<p class=\"sizeable\"><strong>Ch&uacute; &yacute;:</strong>&nbsp;Để được hỗ trợ th&ocirc;ng tin tốt nhất, c&aacute;c bạn n&ecirc;n đặt c&acirc;u hỏi trực tiếp tr&ecirc;n trang website của DRD tại địa chỉ:&nbsp;<a class=\"sizeable\" href=\"http://www.drdvietnam.org/\">drdvietnam.org</a>.&nbsp;Ch&uacute;ng t&ocirc;i kh&ocirc;ng hỗ trợ trả lời tr&ecirc;n c&aacute;c website chia sẻ th&ocirc;ng tin kh&aacute;c.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `sid` int(100) NOT NULL,
  `stit` varchar(255) NOT NULL,
  `sdes` text NOT NULL,
  `sct` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`sid`, `stit`, `sdes`, `sct`) VALUES
(1, 'Học bổng “Người bạn đồng hành” dành cho sinh viên khuyết tật', '1. Mục đích chương trình\r\nChuơng trình Học bổng Người bạn đồng hành tạo thêm điều kiện học tập và phát triển cho sinh viên khuyết tật, đồng thời giúp các em ý thức được quyền lợi và trách nhiệm của mình trong xã hội.....', '<div id=\"noidungcopy\" class=\"gioithieu font13\">\r\n<p class=\"sizeable\"><strong><em>Giới thiệu về học bổng “Người bạn đồng hành” </em></strong><strong><em>dành cho</em></strong></p>\r\n<p class=\"sizeable\"><strong><em>sinh viên khuyết tật</em></strong></p>\r\n<p class=\"sizeable\"><strong>1. Mục đích chương trình</strong></p>\r\n<p class=\"sizeable\">Chuơng trình Học bổng Người bạn đồng hành tạo thêm điều kiện học tập và phát triển cho sinh viên khuyết tật, đồng thời giúp các em ý thức được quyền lợi và trách nhiệm của mình trong xã hội.</p>\r\n<p class=\"sizeable\">DRD tin rằng khi có được cơ hội học tập, người khuyết tật (NKT) sẽ:</p>\r\n<p class=\"sizeable\">- Biết cách cư xử chuẩn mực và hoàn thiện nhân cách.</p>\r\n<p class=\"sizeable\">- Mở rộng tầm nhìn, có kỹ năng sống, tự tin hơn vào năng lực cá nhân.</p>\r\n<p class=\"sizeable\">- Có cơ hội tự khẳng định mình, từ đó góp phần thay đổi cách nhìn chung của cộng đồng đối với khả năng của NKT.</p>\r\n<p class=\"sizeable\">- Tìm được việc làm phù hợp với khả năng, ổn định cuộc sống bản thân, phụ giúp gia đình, giúp ích cho cộng đồng và đóng góp phần vào sự phát triển chung của đất nuớc.</p>\r\n<p class=\"sizeable\"><strong>2. Tác động của chương trình</strong></p>\r\n<p class=\"sizeable\">- Sinh viên khuyết tật nhận học bổng đồng thời có được cơ hội để hiểu thêm triết lý sống “mình vì mọi người, mọi người vì mình”, được trang bị thêm kiến thức về lĩnh vực khuyết tật và kỹ năng sống thông qua những buổi sinh hoạt với DRD. Sau khi sinh viên ra trường, DRD sẽ giúp sinh viên tiếp cận với các cơ hội việc làm thông qua mạng lưới mà DRD vẫn đang phát triển.</p>\r\n<p class=\"sizeable\">- Ngoài ra, sinh viên khuyết tật còn được thử sức với vai trò tham gia tổ chức các chương trình chia sẻ kỹ năng cho các bạn sinh viên khuyết tật khác góp phần nâng cao sự tự tin và năng lực hòa nhập xã hội</p>\r\n<p class=\"sizeable\"><strong>3. Đối tượng nhận học bổng</strong></p>\r\n<p class=\"sizeable\">- <em><strong>Sinh viên khuyết tật</strong></em> đang theo học tại các trường <em><strong>Đại học, Cao đẳng trên địa bàn TP. HCM</strong></em>.</p>\r\n<p class=\"sizeable\">- Học lực từ 6,5 trở lên (đối với sinh viên năm 2 trở lên) và điểm học bạ từ 7,0 trở lên (đối với sinh viên năm 1).</p>\r\n<p class=\"sizeable\">- Đồng ý để DRD đưa thông tin cá nhân liên quan lên mục Học bổng DRD trên trang web DRD.</p>\r\n<p class=\"sizeable\"><strong>4. Tiêu chí lựa chọn</strong></p>\r\n<p class=\"sizeable\">- Gặp khó khăn về tài chính.</p>\r\n<p class=\"sizeable\">- Có kế hoạch, mục tiêu học tập rõ ràng.</p>\r\n<p class=\"sizeable\">- Có tinh thần cộng đồng/ biết vì người khác.</p>\r\n<p class=\"sizeable\"><em><strong>Ưu tiên:</strong></em> Nữ, vùng sâu vùng xa, dân tộc thiểu số.</p>\r\n<p class=\"sizeable\"><strong>5. Mức học bổng</strong></p>\r\n<p class=\"sizeable\">Trợ cấp hàng tháng: Có 2 mức hỗ trợ cho từng trường hợp của sinh viên khuyết tật:</p>\r\n<p class=\"sizeable\">1 triệu đồng và 500 ngàn đồng.</p>\r\n<p class=\"sizeable\"><strong>6. Thời gian nộp hồ sơ</strong></p>\r\n<p class=\"sizeable\">Mỗi năm, DRD có 2 đợt nhận hồ sơ và xét học bổng:</p>\r\n<p class=\"sizeable\">- Đợt 1: Từ 1/4 đến 30/5 nhận. 30/6 hạn thông báo kết quả</p>\r\n<p class=\"sizeable\">- Đợt 2: Từ 1/10 đến 30/11 nhận. 30/12 hạn thông báo kết quả</p>\r\n<p class=\"sizeable\"><strong>7. Xét duy trì</strong></p>\r\n<p class=\"sizeable\">Đối với những sinh viên khuyết tật đã được nhận học bổng, ở những năm sau đó, các bạn không cần làm lại hồ sơ. Tuy nhiên, sinh viên phải gửi bảng điểm ngay khi có kết quả của từng học kỳ để chương trình xét quyết định tiếp tục trao học bổng hoặc dừng.</p>\r\n<p class=\"sizeable\"><strong>8. Yêu cầu khi nhận học bổng</strong></p>\r\n<p class=\"sizeable\">- Gửi báo cáo đều đặn (3 tháng/lần).</p>\r\n<p class=\"sizeable\">- Thái độ hợp tác và giữ liên hệ với nhóm học bổng thường xuyên.</p>\r\n<p class=\"sizeable\">- Tham gia (có thể lựa chọn) các hoạt động thể hiện tinh thần, trách nhiệm xã hội: dạy kèm cho trẻ khuyết tật, tham gia tổ chức các sự kiện, hỗ trợ các bạn sinh viên khuyết tật khác…</p>\r\n<p class=\"sizeable\"><strong>9. Hồ sơ bao gồm</strong></p>\r\n<p class=\"sizeable\">- Đơn xét Học bổng người bàn đồng hành, gồm: Thông tin cá nhân và hoàn cảnh gia đình, qua một trong hai cách sau:</p>\r\n<p class=\"sizeable\">o Hoàn thành mẫu đính kèm (<a class=\"sizeable\" href=\"http://www.drdvietnam.org/images/hinh%20tin/2017/03/DRD_Mau_don_xin_Hoc_bong_NBDH.docx\">>> Tải mẫu đơn tại đây</a>)</p>\r\n<p class=\"sizeable\">o Link đăng ký: <a class=\"sizeable\" href=\"http://www.google.com/url?q=http%3A%2F%2Fbit.ly%2Fhocbongnguoibandonghanh&sa=D&sntz=1&usg=AFQjCNFl8gu0QHRk7Bmtbp8U8FIM1fB2Vw\">http://bit.ly/hocbongnguoibandonghanh</a></p>\r\n<p class=\"sizeable\">- Bảng điểm kết quả học tập tổng hợp các học kỳ có dấu mộc nhà trường (đối với sinh viên năm 2 trở lên).</p>\r\n<p class=\"sizeable\">- Photo học bạ Trung học phổ thông và giấy báo trúng tuyển (đối với sinh viên năm 1 nếu chưa có bảng điểm).</p>\r\n<p class=\"sizeable\">- Photo giấy chứng nhận hộ cận nghèo, hộ nghèo hoặc giấy xác nhận gia đình khó khăn về kinh tế (nếu có).</p>\r\n<p class=\"sizeable\">- Một tấm ảnh toàn thân, nhìn rõ mặt và dạng khuyết tật.</p>\r\n<p class=\"sizeable\"><strong>10. Thông tin liên hệ</strong></p>\r\n<p class=\"sizeable\"><em><strong>Người phụ trách:</strong></em> Phan Thị Rát</p>\r\n<p class=\"sizeable\"><em><strong>Số điện thoại:</strong> </em>08 6267 9911 (nhánh 114) hoặc: 0126 459 8210</p>\r\n<p class=\"sizeable\">Hình thức nộp hồ sơ</p>\r\n<p class=\"sizeable\">Vui lòng gửi qua email hoặc bưu điện:</p>\r\n<p class=\"sizeable\">Email: <a class=\"sizeable\" href=\"mailto:ratphan@drdvietnam.com\">ratphan@drdvietnam.com</a></p>\r\n<p class=\"sizeable\">Địa chỉ: 311K8 Khu nhà tái định cư Thủ Thiêm, P. An Phú, Q. 2, Tp. HCM</p>\r\n<p class=\"sizeable\"><em><strong>Để thuận tiện và tiết kiệm thời gian, chi phí cho các bạn sinh viên, chúng tôi khuyến khích gửi bằng email và đăng ký thông tin qua link đăng ký trên.</strong></em></p>\r\n</div>'),
(3, 'Học bổng Ngân hàng Tokyo Mitsubishi UFJ', 'Căn cứ Quỹ học bổng tài trợ của Ngân hàng Tokyo Mitsubishi UFJ, Trường thông báo chương trình học bổng tài trợ dành cho sinh viên năm 2017 như sau: \r\nA.	Số lượng – Trị giá:\r\n-	Số lượng: 10 suất\r\n-	Trị giá: 340 USD/suất/năm.\r\n', '<h1 style=\"text-align: center;\"><strong>THÔNG BÁO</strong></h1>\r\n<h2 style=\"text-align: center;\"><strong>Học bổng Ngân hàng Tokyo Mitsubishi UFJ</strong></h2>\r\n<p>Căn cứ Quỹ học bổng tài trợ của Ngân hàng Tokyo Mitsubishi UFJ, Trường thông báo chương trình học bổng tài trợ dành cho sinh viên <span style=\"color: #ff0000;\">năm 2017</span> như sau:</p>\r\n<p>A.<strong>Số lượng – Trị giá:</strong></p>\r\n<ul>\r\n<li>Số lượng: 10 suất</li>\r\n<li>Trị giá: 340 USD/suất/năm.</li>\r\n</ul>\r\n<p>B.<strong>Đối tượng – Tiêu chuẩn:</strong></p>\r\n<p><strong>1.Đối tượng</strong></p>\r\n<ul>\r\n<li><span style=\"color: #ff0000;\"><strong>Sinh viên khóa 40, 41 và 42.</strong></span></li>\r\n<li>Sinh viên chưa được nhận bất cứ một học bổng từ tổ chức hoặc cá nhân nào cho đến thời điểm được giới thiệu cho Quỹ học bổng Tokyo Mitsubishi UFJ..</li>\r\n<li><strong>Sinh viên đã nhận học bổng Tokyo Mitsubishi UFJ các năm học trước.</strong></li>\r\n<li>Hoàn cảnh gia đình nghèo, khó khăn, có nỗ lực vươn lên trong học tập.</li>\r\n<li>Tích cực tham gia các hoạt động xã hội, đóng góp cho cộng đồng, các hoạt động tình nguyện.</li>\r\n</ul>\r\n<p><strong>2.Tiêu chuẩn</strong></p>\r\n<ul>\r\n<li>Điểm TBC học tập năm học <span style=\"color: #ff0000;\">2016 – 2017</span> <strong>từ 3.2 trở lên</strong>; Tất cả các học phần đăng kí phải ở mức đạt.</li>\r\n<li>Điểm rèn luyện từ 80 trở lên (loại tốt).</li>\r\n</ul>\r\n<p>C.<strong>Thời gian – Địa điểm nộp hồ sơ:</strong></p>\r\n<ul>\r\n<li>Thời gian nộp hồ sơ<strong>:</strong> <span style=\"color: #ff0000;\"><strong>đến hết ngày 15/9/2017.</strong></span></li>\r\n<li>Địa điểm nộp hồ sơ: P.CTCT&HSSV, A.110 (nộp cho Cô Dung)</li>\r\n</ul>\r\n<p>D.<strong>Hồ sơ học bổng bao gồm:</strong></p>\r\n<ul>\r\n<li>Đơn xin học bổng (theo mẫu)</li>\r\n<li>Bảng điểm cả năm học <span style=\"color: #ff0000;\">2016 – 2017</span> (do Phòng Đào tạo cấp);</li>\r\n<li>Giấy chứng nhận, bản sao các giấy tờ chứng minh hoàn cảnh gia đình khó khăn, bằng khen, giấy khen, các thành tích hoạt động (nếu có).</li>\r\n</ul>\r\n<p>Văn bản chính thức : <strong><span style=\"color: #ff0000;\"><a style=\"color: #ff0000; text-decoration: underline;\" href=\"https://drive.google.com/file/d/0BxUxph61yGjqOUZRS01TdnkwWHc/view?usp=sharing\">XEM TẠI ĐÂY</a></span></strong></p>'),
(4, 'Tiêu đề', 'Mổ tả', '<p class=\"the-article-summary cms-desc\">&nbsp;<span style=\"color: #ff0000;\">Việc thay đổi c&aacute;ch t&iacute;nh điểm chuẩn ở những tổ hợp x&eacute;t tuyển c&oacute; m&ocirc;n ch&iacute;nh của ĐH Sư phạm TP.HCM khiến th&iacute; sinh từ đỗ th&agrave;nh trượt.</span></p>\r\n<div class=\"the-article-body cms-body\"><span style=\"color: #00ff00;\">Sau khi ĐH Sư phạm TP.HCM c&ocirc;ng bố điểm chuẩn ch&iacute;nh thức hệ đại học ch&iacute;nh quy năm 2017 v&agrave; danh s&aacute;ch tr&uacute;ng tuyển, nhiều người cho rằng c&aacute;ch t&iacute;nh điểm tr&uacute;ng tuyển mới của trường khiến th&iacute; sinh thiệt th&ograve;i.</span>\r\n<h3>Từ đỗ th&agrave;nh trượt</h3>\r\n<p><span style=\"color: #ffff00;\">Phản &aacute;nh với&nbsp;<em>Zing.vn</em>, th&iacute; sinh P.V.T. cho biết trong kỳ thi THPT quốc gia 2017, em đăng k&yacute; nguyện vọng 1 v&agrave;o ng&agrave;nh Sư phạm Tiếng Anh của ĐH Sư phạm TP.HCM, điểm thi như sau: To&aacute;n 8,2; Ngữ văn 6,75; Tiếng Anh 10. Theo đề &aacute;n của trường c&ocirc;ng bố rộng r&atilde;i trước kỳ thi, Sư phạm Tiếng Anh l&agrave; ng&agrave;nh c&oacute; m&ocirc;n ch&iacute;nh l&agrave; Tiếng Anh.</span></p>\r\n<p><strong>Th&iacute; sinh n&agrave;y cho biết mọi năm, điểm chuẩn ng&agrave;nh Sư phạm Tiếng Anh vẫn nh&acirc;n hệ số m&ocirc;n ngoại ngữ, do đ&oacute; &aacute;p dụng c&ocirc;ng thức t&iacute;nh điểm chuẩn ở những tổ hợp c&oacute; m&ocirc;n ch&iacute;nh như sau: Điểm x&eacute;t tuyển = (điểm m&ocirc;n ch&iacute;nh * 2 + điểm 2 m&ocirc;n c&ograve;n lại) * 3/4 (+ điểm ưu ti&ecirc;n nếu c&oacute; * 3/4).</strong></p>\r\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `confirm` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `email`, `confirm`) VALUES
(1, 'admin', '6ac66b5cb3d198e4587a747c13ac3c9d', 'admin@blackandwhite.org', 1),
(2, 'support', 'fc7f6bae545704a1ab737f3ad0b8d656', 'support@blackandwhite.org', 1),
(3, 'bientap1', '202cb962ac59075b964b07152d234b70', 'bientap@blackandwhite.org', 1),
(5, 'nhockool100', '6ac66b5cb3d198e4587a747c13ac3c9d', 'kangtadragon@gmail.com', 1),
(6, 'testing1', '6ac66b5cb3d198e4587a747c13ac3c9d', 'testing@mgial.com', 0),
(7, 'Nguyễn Ngọc Hiệp', '628f30925cdab1e29b0d8a36bf574557', 'ng.hiep227@gmail.com', 1),
(8, 'vivian', 'e10adc3949ba59abbe56e057f20f883e', 'vannguyen.vn12@gmail.com', 1),
(9, 'huutoan71294', '01863fdc36af35cef9cba99b998ac94b', 'huutoan71294@gmail.com', 0),
(10, 'Thanh Ha Le', '10c461b513d117d1501e3ab343c1c895', 'hathanhle1602@gmail.com', 0),
(11, 'Lê Thanh Hà ', '3b60ab1dda0bc049bf1cc397b7e172fe', 'sussanle_95@yahoo.com', 1),
(12, 'Khaiphongphu89', 'c62781b282213590539f7c877a185eca', 'phonglangtu1988@gmail.com', 0),
(13, 'Vòng Quang Kỳ', 'da295244f059251b4c3bb8b50dc4fe34', 'quangky8196@gmail.com', 0),
(14, 'perainnguyen', 'f9dd51f7931c25efdd5866ceaad458eb', 'perainlovelydoll@gmail.com', 0),
(15, 'vanthanh88', '22137fb66ded241824715c4449d8e8ba', 'vanthanh20288@gmail.com', 0),
(16, 'Thuong', 'adb04734ec66bd46036fed8f8372ea87', 'hoaithuong300490@gmail.com', 0),
(17, 'djueng', '92dae7157d85f6307c7e2182d46e6187', 'djruengnay@gmail.com', 0),
(18, 'thanhvinh', '2c21080bb60226f87f984acf7561d647', 'thanhvinh1994@gmail.com', 1),
(19, 'nongthatsau', '029d46aa57db4c3e83359de7dabc7030', 'thatsaunong@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`authorid`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`),
  ADD KEY `author` (`author`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memup`
--
ALTER TABLE `memup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`);

--
-- Indexes for table `recruite`
--
ALTER TABLE `recruite`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `authorid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `memup`
--
ALTER TABLE `memup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `recruite`
--
ALTER TABLE `recruite`
  MODIFY `rid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `sid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`author`) REFERENCES `author` (`authorid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `memup`
--
ALTER TABLE `memup`
  ADD CONSTRAINT `memup_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
