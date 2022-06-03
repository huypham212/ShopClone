-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 19, 2021 lúc 09:43 AM
-- Phiên bản máy phục vụ: 5.7.35
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `muareclo_shopclone`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `api_domains`
--

CREATE TABLE `api_domains` (
  `id` int(11) NOT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `api_domains`
--

INSERT INTO `api_domains` (`id`, `domain`, `username`, `password`, `time`) VALUES
(7, 'https://muarefb.com', 'wvan3011', 'Vv12345678', '2021-10-19 04:51:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backups`
--

CREATE TABLE `backups` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `stk` text NOT NULL,
  `name` text NOT NULL,
  `bank_name` text NOT NULL,
  `chi_nhanh` text NOT NULL,
  `logo` text,
  `ghichu` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `bank`
--

INSERT INTO `bank` (`id`, `stk`, `name`, `bank_name`, `chi_nhanh`, `logo`, `ghichu`) VALUES
(12, '0888773603', 'MOMO', 'NGUYEN THAI VAN', '', 'https://upload.wikimedia.org/wikipedia/vi/f/fe/MoMo_Logo.png', 'MOMO AUTO\r\nnạp không lên tiền vui lòng liên hệ:\r\nhttps://www.facebook.com/wvan3011\r\nhttps://www.facebook.com/jbnguyen0611'),
(15, '19034219054011', 'Techcombank', 'NGUYEN THAI VAN', '', 'https://upload.wikimedia.org/wikipedia/vi/7/7c/Techcombank_logo.png', 'TECHCOMBANK AUTO\r\n\r\nnạp không lên tiền vui lòng liên hệ:\r\nhttps://www.facebook.com/wvan3011\r\nhttps://www.facebook.com/jbnguyen0611'),
(16, '0171003482009', 'Vietcombank', 'NGUYEN THAI VAN', '', 'https://brasol.vn/public/uploads/1521190030-brasol.vn-logo-vietcombank-logo-vietcombank.jpg', 'VIETCOMBANK KHÔNG AUTO xin nhấn mạnh là KHÔNG AUTO nên là quý dị muốn nạp hình thức này hoặc hình thức khác vui lòng inbox cho em\r\n\r\nhttps://www.facebook.com/wvan3011\r\nhttps://www.facebook.com/jbnguyen0611'),
(17, '0888773603', 'Zalo Pay', 'NGUYỄN THÁI VĂN', '', 'https://i0.wp.com/i.imgur.com/ap7ckjE.png?resize=493%2C158&amp;ssl=1', 'ZALOPAY AUTO\r\n\r\nnạp không lên tiền vui lòng liên hệ:\r\nhttps://www.facebook.com/wvan3011\r\nhttps://www.facebook.com/jbnguyen0611');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_auto`
--

CREATE TABLE `bank_auto` (
  `id` int(11) NOT NULL,
  `tid` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci,
  `amount` int(11) DEFAULT '0',
  `cusum_balance` int(11) DEFAULT '0',
  `time` datetime DEFAULT NULL,
  `bank_sub_acc_id` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `username` varchar(32) NOT NULL,
  `loaithe` varchar(32) NOT NULL,
  `menhgia` int(11) NOT NULL,
  `thucnhan` int(11) DEFAULT '0',
  `seri` text NOT NULL,
  `pin` text NOT NULL,
  `createdate` datetime NOT NULL,
  `status` varchar(32) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `stt` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `display` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyentien`
--

CREATE TABLE `chuyentien` (
  `id` int(11) NOT NULL,
  `nguoinhan` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `nguoichuyen` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `lydo` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_momo`
--

CREATE TABLE `config_momo` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `dichvu` blob,
  `gia` int(11) DEFAULT NULL,
  `loai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `mota` longblob,
  `display` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `capnhat` datetime DEFAULT NULL,
  `mua_toi_da` int(11) DEFAULT NULL,
  `quocgia` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `mua_toi_thieu` int(11) DEFAULT '1',
  `luuy` longblob,
  `stt` int(11) NOT NULL,
  `check_live` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT 'OFF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `sotientruoc` int(11) DEFAULT NULL,
  `sotienthaydoi` int(11) DEFAULT NULL,
  `sotiensau` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `noidung` text COLLATE utf8_vietnamese_ci,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giftcode`
--

CREATE TABLE `giftcode` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `sotien` int(11) NOT NULL DEFAULT '0',
  `ghichu` text COLLATE utf8_vietnamese_ci,
  `capnhat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hide_category_api`
--

CREATE TABLE `hide_category_api` (
  `id` int(11) NOT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hide_product_api`
--

CREATE TABLE `hide_product_api` (
  `id` int(11) NOT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lang`
--

CREATE TABLE `lang` (
  `id` int(11) NOT NULL,
  `vn` text COLLATE utf8_vietnamese_ci,
  `en` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `lang`
--

INSERT INTO `lang` (`id`, `vn`, `en`) VALUES
(1, 'Đăng Nhập', 'Login'),
(2, 'Đăng Ký', 'Register'),
(3, 'Thông Tin', 'Profile'),
(4, 'Đăng Nhập hoặc Đăng Ký', 'Login or Register'),
(5, 'Tên đăng nhập', 'Username'),
(6, 'Mật khẩu', 'Password'),
(7, 'Nhập tên đăng nhập', 'Enter your username'),
(8, 'Nhập mật khẩu', 'Enter password'),
(9, 'Đang xử lý', 'Processing'),
(10, 'Vui lòng nhập tên đăng nhập', 'Please enter your username'),
(11, 'Vui lòng nhập mật khẩu', 'Please enter a password'),
(12, 'Tên đăng nhập không tồn tại', 'Username does not exist'),
(13, 'Mật khẩu đăng nhập không chính xác', 'Login password is incorrect'),
(14, 'Tài khoản đã bị khóa', 'The account is locked'),
(15, 'Vui lòng nhập định dạng tài khoản hợp lệ', 'Please enter a valid account format'),
(16, 'Tài khoản phải từ 5 đến 64 ký tự', 'Account must be between 5 and 64 characters'),
(17, 'Tên đăng nhập đã tồn tại!', 'Username available!'),
(18, 'Vui lòng đặt mật khẩu trên 3 ký tự', 'Please set a password above 3 characters'),
(19, 'Bạn đã đạt giới hạn tạo tài khoản', 'You have reached your account creation limit'),
(20, 'Tạo tài khoản thành công', 'Account successfully created'),
(21, 'Vui lòng kiểm tra cấu hình cơ sở dữ liệu', 'Please check the database configuration'),
(22, 'Vui lòng nhập địa chỉ email', 'Please enter your email address'),
(23, 'Vui lòng nhập địa chỉ email hợp lệ', 'Please enter a valid email address'),
(24, 'Địa chỉ email không tồn tại trong hệ thống', 'Email address does not exist in the system'),
(25, 'XÁC NHẬN KHÔI PHỤC MẬT KHẨU', 'CONFIRMED PASSWORD RECOVERY'),
(26, 'Có ai đó vừa yêu cầu khôi phục lại mật khẩu bằng Email này, nếu là bạn vui lòng nhập mã xác minh phía dưới để xác minh tài khoản', 'Someone has just requested to recover password by this email, if you are, please enter the verification code below to verify the account.'),
(27, 'Chúng tôi đã gửi mã xác minh vào địa chỉ Email của bạn', 'We have sent a verification code to your Email address'),
(28, 'Vui lòng nhập mật khẩu mới', 'Please enter a new password'),
(29, 'Vui lòng xác minh lại mật khẩu', 'Please verify your password'),
(30, 'Tổng nạp', 'Total Balance'),
(31, 'Số dư hiện tại', 'Credit Available'),
(32, 'Số tiền đã sử dụng', 'Amount used'),
(33, 'Nạp tiền ngay', 'Pay Now'),
(34, 'Lịch sử dòng tiền', 'Cash flow history'),
(35, 'THỐNG KÊ CHI TIẾT', 'DETAILED STATISTICS'),
(36, 'Lịch Sử Giao Dịch', 'Transaction history'),
(37, 'Nạp Tiền', 'Recharge'),
(38, 'THÔNG TIN', 'INFORMATION'),
(39, 'Đang hoạt động', 'Online'),
(40, 'Trạng Thái', 'Status'),
(41, 'Giảm', 'Discount'),
(42, 'GIAO DỊCH GẦN ĐÂY', 'RECENT TRANSACTIONS'),
(43, 'Trang Chủ', 'Home'),
(45, 'Số lượng', 'Amount'),
(46, 'Thanh toán', 'Pay'),
(47, 'XEM NGAY', 'VIEW NOW'),
(48, 'TẢI VỀ', 'DOWNLOAD'),
(49, 'CHỌN ĐỊNH DẠNG TẢI VỀ', 'CHOOSE DOWNLOAD FORMAT'),
(50, 'CHI TIẾT ĐƠN HÀNG', 'ORDER DETAILS'),
(51, 'Thời Gian', 'Time'),
(52, 'Loại', 'Type'),
(53, 'Mã Giao Dich', 'Transaction id'),
(54, 'LƯU Ý', 'Note'),
(55, 'Sao chép', 'Copy'),
(56, 'Tải Backup', 'Download Backup'),
(57, 'Dòng tiền', 'Cash flow'),
(58, 'Lịch sử nạp tiền', 'Deposit history'),
(59, 'Chủ tài khoản', 'Recipient\'s name'),
(60, 'Nội dung chuyển tiền', 'Money transfer content'),
(61, 'Số tài khoản', 'Payout account number'),
(62, 'Ngân hàng', 'Bank'),
(63, 'Đăng Xuất', 'Logout'),
(64, 'Thành viên', 'Member'),
(65, 'Đại lý', 'Agency'),
(66, 'Địa chỉ Email', 'Email address'),
(67, 'Số điện thoại', 'Number phone'),
(68, 'Họ và Tên', 'Full name'),
(69, 'Thời gian đăng ký', 'Registration period'),
(70, 'Mật khẩu mới', 'New password'),
(71, 'Nhập lại mật khẩu mới', 'Confirm  new password'),
(72, 'Thông tin được mã hóa khi đưa lên máy chủ của chúng tôi', 'Information is encrypted when posted on our servers'),
(73, 'LƯU THÔNG TIN', 'SAVE INFORMATION'),
(74, 'Đơn giá', 'Unit price'),
(75, 'Số tiền cần thanh toán', 'Amount to be paid'),
(76, 'Đóng', 'Close'),
(77, 'Tên sản phẩm', 'Product\'s name'),
(78, 'Hiện có', 'Available'),
(79, 'Thao tác', 'Control'),
(80, 'Lưu thành công', 'Save successfully'),
(81, 'Đang xử lý giao dịch', 'Processing the transaction'),
(82, 'Loại này đã hết hàng', 'This type is out of stock'),
(83, 'Mua Ngay', 'Buy Now'),
(84, 'Hết hàng', 'Out of stock'),
(85, 'Quốc gia', 'Countries'),
(86, 'Vui lòng đăng nhập để thực hiện giao dịch', 'Please log in to make a transaction'),
(87, 'Dịch vụ không hợp lệ', 'Invalid service'),
(88, 'Dịch vụ này không khả dụng', 'This service is not available'),
(89, 'Số lượng mua không phù hợp', 'Purchase quantity does not match'),
(90, 'Số lượng tối đa 1 lần là', 'The maximum number of times is'),
(91, 'Số lượng trong hệ thống không đủ', 'The quantity in the system is not enough'),
(92, 'Số dư không đủ vui lòng nạp thêm', 'Insufficient balance, please recharge'),
(93, 'Tài khoản của bạn đã bị chấm dứt vì sử dụng BUG', 'Your account has been terminated for using BUG'),
(94, 'Giao dịch thành công!', 'Successful transaction!'),
(95, 'Thất Bại', 'Error'),
(96, 'Thành Công', 'Success'),
(97, 'Cảnh Báo', 'Warning'),
(98, 'DANH SÁCH TÀI KHOẢN', 'LIST OF ACCOUNTS'),
(99, ' Bảo hành', 'Policy'),
(100, 'LỊCH SỬ NẠP TIỀN', 'MONEY DEPOSIT HISTORY'),
(101, 'Công Cụ', 'Tool'),
(102, 'NẠP TIỀN', 'RECHARGE'),
(103, 'Số lượng tối thiểu', 'Minimum quantity'),
(104, 'Top Nạp Tiền', 'Deposit Rankings'),
(105, 'BẢNG XẾP HẠNG NẠP TIỀN', 'RANKING OF MONEY'),
(106, 'THÀNH VIÊN', 'MEMBER'),
(107, 'TỔNG TIỀN NẠP', 'TOTAL DEPOSIT'),
(108, 'XẾP HẠNG', 'RANK'),
(109, 'CÔNG CỤ LẤY MÃ 2FA', 'TOOL GET CODE 2FA'),
(110, 'Vui lòng nhập Secret Key', 'Please enter Secret Key'),
(111, 'ĐANG XỬ LÝ', 'PROCESSING'),
(112, 'CHÚNG TÔI CUNG CẤP', 'WE OFFER'),
(113, 'Có những tài khoản Facebook còn khá trẻ nếu bạn cần trong thời gian ngắn, trên trang web của chúng tôi', 'There are Facebook accounts, that are quite young if you need them for a short time, on our website'),
(114, 'TÀI KHOẢN ĐANG BÁN', 'ACCOUNT IS SELLING'),
(115, 'Công ty chúng tôi đã có một thời gian dài trên thị trường tài khoản xã hội số lượng lớn và tài khoản internet công cộng. Chúng tôi đang cung cấp cho khách hàng các tài khoản số lượng lớn an toàn trên tất cả các loại mạng và cổng thông tin công cộng', 'Our company has been for a while on the market of bulk social accounts and public internet recourses. We are offering our customers secure bulk accounts on all kinds of public networks and portals'),
(116, 'Xem thêm', 'Learn more'),
(117, 'Nhà cung cấp tài khoản marketing hàng đầu', 'Top marketing account provider'),
(118, 'Chúng tôi cung cấp những tài khoản mạng xã hội chất lượng nhất', 'We provide top quality social media accounts'),
(119, 'Sản phẩm', 'Product'),
(120, 'Trang chủ', 'Home'),
(121, 'Dịch vụ', 'Services'),
(122, 'Quên mật khẩu', 'Forgot password'),
(123, 'Nhập OTP', 'Enter OTP'),
(124, 'Nhập lại mật khẩu', 'Verify password'),
(125, 'Đổi mật khẩu', 'Change Password'),
(126, 'sản phẩm trong nhóm này', 'products in this group'),
(127, 'Đối tác của chúng tôi', 'Partner'),
(128, 'Dịch vụ', 'Services'),
(129, 'Mua Dịch vụ', 'Services'),
(130, 'Liên Hệ', 'Contact'),
(131, 'Đăng ký tài khoản', 'Register an account'),
(132, 'Nhập lại mật khẩu', 'Enter the password'),
(133, 'Vui lòng nhập lại mật khẩu', 'Please re-enter your password'),
(134, 'Nhập lại mật khẩu không chính xác', 'Re-enter incorrect password'),
(135, 'Nhập địa chỉ Email', 'Enter your email address'),
(136, 'Vui lòng nhập địa chỉ Email', 'Please enter your email address'),
(137, 'Xác minh ngay', 'Verify Now'),
(138, 'Cập nhật số điện thoại để được mời tham gia zalo', 'Update phone number'),
(139, 'Nhập số điện thoại liên hệ', 'Enter contact phone number'),
(140, 'ĐÃ BÁN', 'SOLD'),
(141, 'Kiếm Tiền', 'Referral'),
(142, 'Giới thiệu khách hàng sử dụng dịch vụ của chúng tôi nhận ngay hoa hồng', 'Refer customers to use our services and receive commissions'),
(143, 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.', 'Copy this address and share with your friends.'),
(144, 'ĐIỀU KIỆN', 'CONDITION'),
(145, 'Những tài khoản được hệ thống xác định là tài khoản sao chép của các tài khoản khác sẽ không    được dùng để tính hoa hồng.', 'Accounts that are identified by the system as duplicate accounts of other accounts will not\r\n    used to calculate the commission.'),
(146, 'Hoa hồng chỉ được tính khi người dùng mua tài nguyên trên web.', 'Commissions are calculated only when the user purchases resources on the web.'),
(147, 'Việc xác định xem ai là người giới thiệu của một người dùng phụ thuộc hoàn toàn vào link giới    thiệu. Nếu một người dùng nhấp vào nhiều link ref khác nhau thì chỉ có link ref cuối cùng họ    nhấp vào trước khi tạo tài khoản là có hiệu lực.', 'Determining who a users referrer is depends entirely on the referral link\r\n    introduce. If a user clicks on many different ref links, only the last ref link they have\r\n    click before creating an account to take effect.'),
(148, 'BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU', 'FRIENDS RECOMMENDED BY YOU'),
(149, 'TÊN ĐĂNG NHẬP', 'USERNAME'),
(150, 'THỜI GIAN THAM GIA', 'CREATEDATE'),
(151, 'HOA HỒNG BẠN NHẬN ĐƯỢC', 'PROFITS YOU GET'),
(152, 'Tích Hợp API', 'API Documents'),
(153, 'THAO TÁC', 'ACTION'),
(154, 'SẮP XẾP DẠNG BOX', 'BOX'),
(155, 'SẮP XẾP DẠNG LIST', 'LIST'),
(156, 'Mã xác minh', 'Verification code'),
(157, 'Nhập mã xác minh', 'Enter verification code');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `content` text COLLATE utf8_vietnamese_ci,
  `createdate` datetime DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `logs`
--

INSERT INTO `logs` (`id`, `username`, `content`, `createdate`, `time`) VALUES
(5671, 'wvan3011', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 Edg/94.0.992.50 IP 171.225.249.44)', '2021-10-19 04:51:22', '1634593882'),
(5672, 'jbnguyen0611', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 IP 171.225.249.80)', '2021-10-19 08:38:14', '1634607494'),
(5673, 'sinhnguyen2', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 IP 113.166.115.33)', '2021-10-19 08:39:39', '1634607579'),
(5674, 'buichung123', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 IP 103.172.234.146)', '2021-10-19 09:06:37', '1634609197'),
(5675, 'ngocn2k3', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 IP 27.66.32.198)', '2021-10-19 09:17:56', '1634609876'),
(5676, 'sinhnguyen', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 IP 113.166.115.33)', '2021-10-19 09:25:58', '1634610358'),
(5677, 'acquy', 'Thực hiện đăng nhập (Mozilla/5.0 (Linux; Android 10; M2010J19CG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36 IP 2405:4800:6b0c:1df:adcb:1a08:f8ba:6be1)', '2021-10-19 09:35:51', '1634610951'),
(5678, 'sinhnguyen2', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 IP 113.166.115.33)', '2021-10-19 09:58:19', '1634612299'),
(5679, 'quocnam', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 6.1; rv:89.0) Gecko/20100101 Firefox/89.0 IP 123.16.141.133)', '2021-10-19 10:15:27', '1634613327'),
(5680, 'xclone1', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 IP 42.113.192.236)', '2021-10-19 10:24:13', '1634613853'),
(5681, 'nickffcom', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/98.0.168 Chrome/92.0.4515.168 Safari/537.36 IP 1.53.7.37)', '2021-10-19 10:44:20', '1634615060'),
(5682, 'khanhuda1801', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 IP 14.224.129.94)', '2021-10-19 11:04:31', '1634616271'),
(5683, 'phulatrum122', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 Edg/94.0.992.50 IP 171.226.34.66)', '2021-10-19 11:13:06', '1634616786'),
(5684, 'quangdaija2', 'Thực hiện đăng nhập (Mozilla/5.0 (Linux; Android 11; CPH2159) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.166 Mobile Safari/537.36 OPR/65.1.3381.61266 IP 2402:800:fb0f:6e9a:d77:b2a4:e288:bdb1)', '2021-10-19 11:44:50', '1634618690'),
(5685, 'quangdaija2', 'Thao tác đổi địa chỉ Email  thành quangdaija2@gmail.com', '2021-10-19 11:45:22', '1634618722'),
(5686, 'quocnam', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 IP 123.16.141.133)', '2021-10-19 13:05:55', '1634623555'),
(5687, 'sinhnguyen2', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 IP 113.166.115.33)', '2021-10-19 13:08:14', '1634623694'),
(5688, 'hungdvintel', 'Thực hiện đăng nhập (Mozilla/5.0 (Linux; Android 10; Redmi Note 8 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36 IP 42.114.34.27)', '2021-10-19 13:21:56', '1634624516');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `id` int(11) NOT NULL,
  `request_id` varchar(64) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `tranId` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci,
  `partnerId` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci,
  `partnerName` text CHARACTER SET utf16 COLLATE utf16_vietnamese_ci,
  `amount` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci,
  `comment` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `time` datetime DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT 'xuly'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `name`, `value`) VALUES
(1, 'tenweb', 'Shop Clone  Giá Rẻ, Uy Tín. Author: https://muarefb.com'),
(2, 'mota', 'Shop Clone  Uy Tín , chất lượng , giá rẻ nhất trên thị trường chính sách bảo hành hợp lý và nhân viên tư vấn rất nhiệt tình. Author: https://muarefb.com'),
(3, 'tukhoa', 'shop clone, clone shop, mua clone, web bán clone giá rẻ, sellclone, clone gia re, clone viet, mua tai khoan, taikhoan fb, shop nick fb, via fb, shop via, via gia re,shopaccount, acc free fire, cidms, nguyenphaman, pham ky phu, acc , mua , ban, account, thoimmo , ttmmo , shop account , azure , linode '),
(4, 'logo', 'https://imgur.com/FrnZJqM.png'),
(5, 'email', 'muarefb@gmail.com'),
(6, 'pass_email', 'Vv12345678'),
(7, 'luuy_naptien', '<ul>\r\n	<li>Hệ thống xử lý 5s 1 thẻ.</li>\r\n	<li>Vui lòng gửi đúng mệnh giá, sai mệnh giá thực nhận mệnh giá bé nhất.</li>\r\n	<li>Mệnh giá 10k, 20k, 30k tính thêm 3% phí.</li><li><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px;\">- Sai mệnh giá -50% </p></li><li><div><br></div></li>\r\n</ul>\r\n'),
(10, 'luuy_napbank', 'test'),
(11, 'noidung_naptien', 'fbre'),
(12, 'thongbao', ' <h5 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: Inter, sans-serif; color: rgb(0, 0, 0); padding: 0px;\"><span style=\"font-weight: bolder;\">Nhóm Zalo hỗ trợ mọi thắc mắc và trao đổi kinh nghiệm nuôi nick:<font color=\"#031e23\"> </font><font color=\"#9c00ff\"><a href=\"https://zalo.me/g/osbbpv946\" target=\"_blank\">tại đây</a></font></span></h5><h5 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: Inter, sans-serif; color: rgb(0, 0, 0); padding: 0px;\"></h5><h5 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Liên hệ:   Zalo  :  <a href=\"https://zalo.me/0987328249\" target=\"_blank\">Nguyễn Nhất Sinh</a><br>                 FB    :  <a href=\"https://www.facebook.com/NNHATSINH12A\" target=\"_blank\">Nguyễn Nhất Sinh</a> </h5><h5 source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" padding:=\"\" 0px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: \" rgb(33,=\"\" 37,=\"\" 41);\"=\"\"><font face=\"Segoe UI, SegoeuiPc, San Francisco, Helvetica Neue, Helvetica, Lucida Grande, Roboto, Ubuntu, Tahoma, Microsoft Sans Serif, Arial, sans-serif\"><font style=\"\"><span style=\"font-size: 15px; white-space: pre-wrap;\">-Hàng đã mua vui lòng không được trả lại. Vì vậy nên mua ít sử dụng Ok rồi hãy mua nhiều hơn.\r\n-Bạn Yên Tâm mua hàng tại Shop, Tài khoản đã được Check Live 100% mới xuống tay khách.\r\n-Đơn hàng đã mua sẽ tự động xoá sau 7 ngày.</span></font></font></h5><h5 source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" padding:=\"\" 0px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: \" rgb(33,=\"\" 37,=\"\" 41);\"=\"\"><span style=\"background-color: rgb(255, 255, 0);\">➡️Gói ưu đãi khi nạp tiền tại <a href=\"Muareclone.com\" target=\"_blank\" style=\"\">Muareclone.com</a> :</span></h5><h5 source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" padding:=\"\" 0px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: \" rgb(33,=\"\" 37,=\"\" 41);\"=\"\"><font face=\"Segoe UI, SegoeuiPc, San Francisco, Helvetica Neue, Helvetica, Lucida Grande, Roboto, Ubuntu, Tahoma, Microsoft Sans Serif, Arial, sans-serif\"><font style=\"\"><font color=\"#001a33\"><span style=\"font-size: 15px; white-space: pre-wrap;\">-Nạp lần đầu trên  \"100.000\"  sẽ được tặng  5%  vào tài khoản Shop.\r\n-Nạp lần đầu trên  \"500.000\"  sẽ được tặng  7%  vào tài khoản Shop.\r\n-Nạp lần đầu trên \"1.000.000\" sẽ được tặng 10%  vào tài khoản Shop.</span></font></font></font></h5><h5 source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" padding:=\"\" 0px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: \" rgb(33,=\"\" 37,=\"\" 41);\"=\"\"><span style=\"font-family: inherit; font-size: 1.25rem; background-color: rgb(255, 255, 0);\">➡️Chiết khấu cho CTV:</span><br></h5><h5 source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" padding:=\"\" 0px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: \" rgb(33,=\"\" 37,=\"\" 41);\"=\"\"><font face=\"Segoe UI, SegoeuiPc, San Francisco, Helvetica Neue, Helvetica, Lucida Grande, Roboto, Ubuntu, Tahoma, Microsoft Sans Serif, Arial, sans-serif\"><font style=\"\"><font color=\"#001a33\"><span style=\"font-size: 15px; white-space: pre-wrap;\">-Tổng nạp đạt 1.000.000 giảm giá  1%  khi mua tài khoản.\r\n-Tổng nạp đạt 2.000.000 giảm giá  3%  khi mua tài khoản.\r\n-</span></font></font></font><font color=\"#001a33\" face=\"Segoe UI, SegoeuiPc, San Francisco, Helvetica Neue, Helvetica, Lucida Grande, Roboto, Ubuntu, Tahoma, Microsoft Sans Serif, Arial, sans-serif\"><span style=\"font-size: 15px; white-space: pre-wrap;\">Tổng nạp đạt 3.000.000 giảm giá  4%  khi mua tài khoản.\r\n-Tổng nạp đạt 4.000.000 giảm giá  6%  khi mua tài khoản.\r\n-Tổng nạp đạt 5.000.000 giảm giá  7%  khi mua tài khoản.\r\n-Tổng nạp đạt 8.000.000 giảm giá  10%  khi mua tài khoản.</span></font></h5><h5 source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" padding:=\"\" 0px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: \" rgb(33,=\"\" 37,=\"\" 41);\"=\"\"><font face=\"Segoe UI, SegoeuiPc, San Francisco, Helvetica Neue, Helvetica, Lucida Grande, Roboto, Ubuntu, Tahoma, Microsoft Sans Serif, Arial, sans-serif\"><span style=\"font-size: 15px; white-space: pre-wrap; background-color: rgb(255, 255, 0);\">➡️ Nạp tiền bằng Thẻ cào liên hệ <a href=\"https://www.facebook.com/NNHATSINH12A\" target=\"_blank\" style=\"\">Fanpage </a> để được hỗ trợ.</span></font></h5><h5 source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" padding:=\"\" 0px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: \" rgb(33,=\"\" 37,=\"\" 41);\"=\"\"><span style=\"background-color: rgb(255, 255, 0);\"><font face=\"Segoe UI, SegoeuiPc, San Francisco, Helvetica Neue, Helvetica, Lucida Grande, Roboto, Ubuntu, Tahoma, Microsoft Sans Serif, Arial, sans-serif\" style=\"font-size: 1.25rem;\"><span style=\"font-size: 15px; white-space: pre-wrap;\">⏩</span></font><span style=\"font-family: inherit; font-size: 1.25rem;\">TIPS Shop : Sau khi mua hàng vào lịch sử giao dịch nhấn nút tải về tất cả một lần cho nhanh nha</span></span></h5><h5 source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" padding:=\"\" 0px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: \" rgb(33,=\"\" 37,=\"\" 41);\"=\"\"><span style=\"background-color: rgb(0, 255, 0);\"><b style=\"\">⏩Muốn nhận quy trình nuôi nick bao chuẩn thì liên hệ zalo hoặc vào nhóm mình ghim nha các sếp !</b><br></span><br></h5>'),
(13, 'anhbia', 'https://imgur.com/FrnZJqM.png'),
(14, 'favicon', 'https://i.imgur.com/xXVzRgv.png'),
(15, 'ck_daily', '10'),
(16, 'doanhthu_daily', '11'),
(17, 'baotri', 'ON'),
(18, 'chinhsach', '<div><b>ĐIỀU KHOẢN :</b></div><ul><li><b>Tất cả tài nguyên trên website chỉ phục vụ với mục đích QUẢNG CÁO</b></li><li><b>Tất cả hành vi sử dụng vi phạm nào trái pháp luật Việt Nam, chúng tôi đều không chịu bất cứ trách nhiệm nào !</b></li></ul>'),
(19, 'api_bank', '1416EBB7-F6BF-635B-18FA-8FA25409F231'),
(20, 'api_momo', '787BD0B9-24DB-96CB-D422-4227C022182D'),
(21, 'theme', ''),
(22, 'api_card', 'VmfFxAoaqKzYwjdLZSiksWBUhDPurybXQIglCJtcRGNHpvEnTeOM'),
(23, 'ck_card', '30'),
(24, 'theme_color', '#f137bf'),
(25, 'theme_home', '0'),
(26, 'stt_giao_dich_gan_day', 'ON'),
(27, 'status_demo', 'OFF'),
(28, 'chinhsach_baohanh', '<p><b>    BẢO HÀNH :</b></p><ul><li>Login lần đầu thất bại do Sai UID, Sai mật khẩu, Sai mã 2FA, Đămg nhập không được do tài khoản.</li><li>Cứ gặp những vấn đề trên là được đổi 1 :1 hoặc Cộng lại tiền cho khách.</li><li>Không nên dùng các tool crack tránh Keylog Botnet bị đổi pass - mất thông tin</li><li>Hàng đã mua vui lòng không được trả lại. Vì vậy nên mua ít sử dụng Ok rồi hãy mua nhiều hơn.</li><li>Bên mình không bảo hành các vấn đề login die tài khoản ( vì khi Xuất ra đã được check live 100% ) Còn die lúc login rất nhiều nguyên nhân như : Do IP xấu do thiết bị  do login không đúng cách. Mua tài khoản trên Website  1 tài khoản cũng bán . Nạp 1000đ cũng được . Nên Khách hàng dùng tới đâu mua tới đó không nên mua nhiều . Ai chắc chắn ổn hãy mua SLL.</li><li>Khách hàng muốn chắc chắn hơn thì có thể đổi Pass - thay đổi mail - Xoá SDT.</li><li>Đường Link đổi Pass đỡ checkpoint: https://www.facebook.com/hacked</li></ul>'),
(29, 'sdt_momo', '0888773603'),
(30, 'name_momo', 'NGUYEN THAI VAN'),
(31, 'tk_tsr', ''),
(32, 'mk_tsr', ''),
(33, 'mk2_tsr', ''),
(34, 'luuy_tsr', '<p>Nạp tiền qua thesieure.com cộng tiền ngay.</p><p>Chuyển tiền nhập đúng nội dung chuyển tiền sau đó COPY mã giao dịch tại THESIEURE.COM và nhập vào ô trên.</p>'),
(36, 'fanpage', 'https://www.facebook.com/muarefb'),
(43, 'stt_giaodichao', 'OFF'),
(44, 'files', ''),
(45, 'btnSaveOption', ''),
(46, 'right_panel', 'ON'),
(47, 'contact', '<p><b style=\"background-color: rgb(255, 255, 0);\">Nhấp vào đường dẩn để liên hệ AD  : <a href=\"https://www.facebook.com/NNHATSINH12A\" target=\"_blank\">facebook.com</a> (Nguyễn Nhất Sinh )</b></p><p><b style=\"\"><span style=\"background-color: rgb(255, 255, 0);\">Hoặc liên hệ Zalo : 0987328249 ( Nguyễn Nhất Sinh ) </span></b></p><p><b style=\"background-color: rgb(255, 255, 0);\"><br></b></p><p><b><br></b></p><p><b><br></b></p><p><br></p>'),
(48, 'TypePassword', 'md5'),
(49, 'time_delete', '604800'),
(50, 'script', '<!-- Messenger Plugin chat Code -->\r\n    <div id=\"fb-root\"></div>\r\n\r\n    <!-- Your Plugin chat code -->\r\n    <div id=\"fb-customer-chat\" class=\"fb-customerchat\">\r\n    </div>\r\n\r\n    <script>\r\n      var chatbox = document.getElementById(\'fb-customer-chat\');\r\n      chatbox.setAttribute(\"page_id\", \"111237944560753\");\r\n      chatbox.setAttribute(\"attribution\", \"biz_inbox\");\r\n\r\n      window.fbAsyncInit = function() {\r\n        FB.init({\r\n          xfbml            : true,\r\n          version          : \'v11.0\'\r\n        });\r\n      };\r\n\r\n      (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n      }(document, \'script\', \'facebook-jssdk\'));\r\n    </script>'),
(51, 'check_time_cron', '1634318356'),
(52, 'mk_bank', 'Vv0000'),
(53, 'stk_bank', '19034219054011'),
(54, 'type_bank', 'Techcombank'),
(55, 'check_time_cron_bank', '1634318347'),
(56, 'type_buy', 'LIST'),
(57, 'recharge_min', '0'),
(58, 'display_list_login', 'ON'),
(59, 'display_sold', 'OFF'),
(60, 'status_cron_momo', 'ON'),
(61, 'status_cron_bank', 'ON'),
(62, 'status_ref', 'ON'),
(63, 'ck_ref', '7'),
(64, 'status_top_nap', 'ON'),
(65, 'status_zalopay', 'ON'),
(66, 'token_zalopay', '86EDCB52-95C3-BE3C-895F-95F505D658DD'),
(67, 'sdt_zalopay', '0888773603'),
(68, 'name_zalopay', 'NGUYEN THAI VAN'),
(69, 'api_domain', ''),
(70, 'api_username', ''),
(71, 'api_password', ''),
(72, 'api_ck', '30'),
(73, 'api_status', 'ON'),
(74, 'list_domain', ''),
(75, 'momo_note', 'MOMO AUTO tầm 30s-2p nên quý dị cứ bình tĩnh chờ tiền nhảy nha, nếu quá 10p mà tiền vẫn chưa lên thì vui lòng inbox  vô messenger cho em ở ngay dưới góc phải nha quý dị. Hoặc link FB: https://www.facebook.com/wvan3011\r\nhttps://www.facebook.com/jbnguyen0611\r\n(Ưu tiên inbox cho Thế Quyền vì Thái Văn ngủ rồi)'),
(76, 'zalopay_note', 'ZALOPAY AUTO tầm 30s-2p nên quý dị cứ bình tĩnh chờ tiền nhảy nha, nếu quá 10p mà tiền vẫn chưa lên thì vui lòng inbox  vô messenger cho em ở ngay dưới góc phải nha quý dị. Hoặc link FB: https://www.facebook.com/wvan3011\r\nhttps://www.facebook.com/jbnguyen0611'),
(77, 'license_key', ''),
(78, 'license_status', ''),
(79, 'license_productname', ''),
(80, 'license_nextduedate', ''),
(81, 'license_registeredname', ''),
(82, 'darkmode', 'dark'),
(83, 'session_login', '86400'),
(84, 'status_capchat', 'OFF');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `seller` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `dichvu` blob,
  `soluong` int(11) DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `loai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `id_dichvu` int(11) DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `min` int(11) NOT NULL DEFAULT '0',
  `bonus` float NOT NULL DEFAULT '0',
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `promotion`
--

INSERT INTO `promotion` (`id`, `min`, `bonus`, `createdate`) VALUES
(2, 5000000, 5, '2021-10-02 08:47:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `dichvu` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `taikhoan` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `lydo` text COLLATE utf8_vietnamese_ci,
  `thoigian` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `trangthai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ghichu` text COLLATE utf8_vietnamese_ci,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `shop` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ruttien`
--

CREATE TABLE `ruttien` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ngan_hang` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `stk` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chu_tai_khoan` text COLLATE utf8_vietnamese_ci,
  `sotien` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `trangthai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ghichu` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `dichvu` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chitiet` longtext COLLATE utf8_vietnamese_ci,
  `trangthai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `lydo` text COLLATE utf8_vietnamese_ci,
  `khieunai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigianmua` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thesieure`
--

CREATE TABLE `thesieure` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `magiaodich` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `noidung` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `token` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `banned` int(11) NOT NULL DEFAULT '0',
  `reason_banned` text COLLATE utf8_vietnamese_ci,
  `createdate` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ref_money` int(11) DEFAULT '0',
  `daily` int(11) DEFAULT '0',
  `otp` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `UserAgent` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chietkhau` float DEFAULT '0',
  `time` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chitieu` int(11) NOT NULL DEFAULT '0',
  `total_money` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `used_money` int(11) DEFAULT '0',
  `money` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `debit_amount` int(11) DEFAULT '0',
  `time_session` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `token`, `level`, `banned`, `reason_banned`, `createdate`, `email`, `ref`, `ref_money`, `daily`, `otp`, `ip`, `UserAgent`, `device`, `chietkhau`, `time`, `chitieu`, `total_money`, `phone`, `fullname`, `used_money`, `money`, `debit_amount`, `time_session`) VALUES
(1, 'admin', '4a46fa4f961486f5d9375e0048184089', 'euZECSyHkTDLKVcdmoNzAwfhqvjRFJxXgMaUYbnQItWisBOPrGlp', 'admin', 0, '', '2021-07-06 16:05:28', '', NULL, 0, 0, '', '171.225.249.44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 Edg/94.0.992.50', NULL, 0, '1625562328', 0, 0, '', 'Nguyễn Thái Văn', 0, '0', 0, 1634617096),
(2, 'wvan3011', '4a46fa4f961486f5d9375e0048184089', 'euZECSyHkTDLKVcdmoNzAwfhqvjRFJxXgMaUYbnQItWisBOPrGlp', 'admin', 0, '', '2021-07-06 16:05:28', 'wvan3011@gmail.com', NULL, 0, 0, '', '171.225.249.44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 Edg/94.0.992.50', NULL, 0, '1625562328', 0, 0, '0888773603', 'Nguyễn Thái Văn', 0, '0', 0, 1634617096),
(3, 'jbnguyen0611', '25b65b88ef9d5f025b3b991108f4dc9d', 'nvFZLItNpgHOWsDkxCBPfjSyueqEUwQdXAmVobRcGYlzJhiMTKar', 'admin', 0, '', '2021-07-07 00:49:00', '', NULL, 0, 0, '', '171.225.249.80', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, 0, '1625593740', 0, 1000, '0352227715', NULL, 0, '0', 0, 1634612176);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `zalo_pay`
--

CREATE TABLE `zalo_pay` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `transid` varchar(255) DEFAULT NULL,
  `description` text,
  `amount` int(11) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `api_domains`
--
ALTER TABLE `api_domains`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `chuyentien`
--
ALTER TABLE `chuyentien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `config_momo`
--
ALTER TABLE `config_momo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `hide_category_api`
--
ALTER TABLE `hide_category_api`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hide_product_api`
--
ALTER TABLE `hide_product_api`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ruttien`
--
ALTER TABLE `ruttien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `thesieure`
--
ALTER TABLE `thesieure`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `zalo_pay`
--
ALTER TABLE `zalo_pay`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `api_domains`
--
ALTER TABLE `api_domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `chuyentien`
--
ALTER TABLE `chuyentien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config_momo`
--
ALTER TABLE `config_momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1723;

--
-- AUTO_INCREMENT cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hide_category_api`
--
ALTER TABLE `hide_category_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hide_product_api`
--
ALTER TABLE `hide_product_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `lang`
--
ALTER TABLE `lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT cho bảng `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5689;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1147;

--
-- AUTO_INCREMENT cho bảng `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ruttien`
--
ALTER TABLE `ruttien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18910;

--
-- AUTO_INCREMENT cho bảng `thesieure`
--
ALTER TABLE `thesieure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT cho bảng `zalo_pay`
--
ALTER TABLE `zalo_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
