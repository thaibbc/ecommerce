-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 20, 2024 lúc 03:05 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerce_php_5_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute`
--

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute`
--

INSERT INTO `attribute` (`id`, `name`, `display_name`) VALUES
(20, 'rom', 'Dung lượng'),
(21, 'ram', 'Ram'),
(23, 'color', 'Màu sắc'),
(32, 'pin', 'Dung lượng pin'),
(34, 'size', 'Size'),
(35, 'SizeNumber', 'Size Number');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `attribute_id`, `value_name`) VALUES
(16, 20, '64GB'),
(17, 20, ' 256GB'),
(18, 20, ' 512GB'),
(19, 21, '4GB'),
(20, 21, ' 8GB'),
(21, 21, ' 16GB'),
(22, 23, 'Màu trắng ngà'),
(23, 23, ' Màu xanh lá'),
(24, 23, ' Màu hồng'),
(25, 23, ' Màu tím'),
(26, 23, 'Titan xanh'),
(27, 23, ' Titan đen'),
(28, 23, ' Titan tự nhiên'),
(29, 23, ' Titan trắng'),
(30, 20, '1TB'),
(31, 20, ' 2TB'),
(32, 21, '32GB'),
(33, 21, ' 64GB'),
(34, 21, ' 128GB'),
(35, 21, ' 2GB'),
(36, 21, ' 1GB'),
(37, 21, ' 512MB'),
(38, 21, '16GB'),
(39, 23, 'Màu xám'),
(40, 23, ' Màu bạc'),
(41, 23, ' Màu xanh dương'),
(42, 23, 'Màu vàng nhạt'),
(43, 23, 'Màu đen'),
(44, 23, 'Màu trắng'),
(45, 32, '10000 mAh'),
(46, 32, '5000 mAh'),
(47, 32, ' 3000 mAh'),
(48, 32, ' 2000 mAh'),
(49, 32, ' 20000 mAh'),
(50, 21, '3TB'),
(51, 21, '4TB'),
(54, 53, 'mau xanh'),
(55, 53, ' mau do'),
(56, 53, 'mau xnah'),
(60, 34, 'SX'),
(61, 34, ' S'),
(62, 34, ' M'),
(63, 34, ' L'),
(65, 35, '25'),
(66, 35, '26'),
(67, 35, '27'),
(68, 35, '28'),
(69, 35, '29'),
(70, 35, '30'),
(71, 34, 'XL'),
(72, 23, 'Màu nâu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `title`, `description`, `name`, `thumb`, `create_at`, `update_at`) VALUES
(2, 'Bộ sưu tập thời trang mới', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do', 'Ưu đãi khuyến mại', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1704808789/uploads_ecommerce_php_5_1/alhabnktvtup2pximsc3.jpg', '2024-01-09 15:00:16', '2024-01-09 15:00:16'),
(3, 'Bộ tai nghe thuyền', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do', 'Ưu đãi khuyến mại', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1704808826/uploads_ecommerce_php_5_1/fogdmultf6p5kyj1zrsh.jpg', '2024-01-09 15:00:16', '2024-01-09 15:00:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`, `thumb`, `status`, `create_at`, `update_at`) VALUES
(1, 'Puma', '', 1, '2024-01-05 12:33:55', '2024-01-05 12:33:55'),
(2, 'Adidas', '', 1, '2024-01-05 12:33:55', '2024-01-05 12:33:55'),
(4, 'Gucci', '', 1, '2024-01-05 19:45:33', '2024-01-05 19:45:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `image`, `name`, `status`, `create_at`, `update_at`) VALUES
(1, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1704866415/uploads_ecommerce_php_5_1/phpAD45_xlzj7u.png', 'Quần áo', 1, '2024-01-06 15:27:24', '2024-01-06 15:27:24'),
(38, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1704866439/uploads_ecommerce_php_5_1/php10E2_xf71oy.png', 'Giày dép', 1, '2024-01-07 15:47:21', '2024-01-07 15:47:21'),
(39, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1704866464/uploads_ecommerce_php_5_1/php6E93_bixcwq.png', 'Túi sách', 1, '2024-01-07 15:47:38', '2024-01-07 15:47:38'),
(40, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1704866483/uploads_ecommerce_php_5_1/phpBCF3_i0b9bf.png', 'Nước hoa ', 1, '2024-01-10 13:01:39', '2024-01-10 13:01:39'),
(41, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1704866498/uploads_ecommerce_php_5_1/phpF5F6_pcvaut.png', 'Trang điểm', 1, '2024-01-10 13:01:53', '2024-01-10 13:01:53'),
(42, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1704866510/uploads_ecommerce_php_5_1/php2498_picwd7.png', 'Kính mắt', 1, '2024-01-10 13:02:05', '2024-01-10 13:02:05'),
(43, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1704866526/uploads_ecommerce_php_5_1/php64EE_kic7ia.png', 'Trang sức', 1, '2024-01-10 13:02:21', '2024-01-10 13:02:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_help`
--

CREATE TABLE `contact_help` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `question` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact_help`
--

INSERT INTO `contact_help` (`id`, `firstname`, `lastname`, `email`, `phone`, `question`, `create_at`, `update_at`) VALUES
(1, 'VŨ', 'TÂN', 'vungoctan.vnt63@gmail.com', '+84332225690', 'ưdwawdawd', '2024-01-08 15:40:48', '2024-01-08 15:40:48'),
(2, 'VŨ', 'TÂN', 'vungoctan.vnt63@gmail.com', '+84332225690', 'fawfawfwaf', '2024-01-08 15:41:14', '2024-01-08 15:41:14'),
(3, 'VŨ', 'TÂN', 'vungoctan.vnt63@gmail.com', '0332225690', 'ădawdwadwa', '2024-03-20 18:00:32', '2024-03-20 18:00:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `title` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  `min_amount` int(11) NOT NULL,
  `expired` datetime NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `coupon`
--

INSERT INTO `coupon` (`id`, `code`, `thumb`, `title`, `value`, `min_amount`, `expired`, `quantity`, `status`, `create_at`, `update_at`) VALUES
(1, 'WINTER23', 'https://kachabazar-store-nine.vercel.app/_next/image?url=https%3A%2F%2Fi.ibb.co%2FwBBYm7j%2Fins4.jpg&w=128&q=75', 'Winter Gift Voucher Áp dụng mọi ngành hàng siêu hấ', '10%', 500000, '2023-11-30 20:00:26', 10, 0, '2024-01-07 14:09:26', '2024-01-07 14:09:26'),
(5, 'CK8830', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1702025851/uploads_WEB2041_Ecommerce/php2B5B_x86ku1.jpg', 'Mã giảm giá hấp dẫn: Tiết kiệm ngay 20% cho mọi mu', '20%', 20000000, '2024-01-16 15:57:00', 20, 1, '2024-01-07 14:09:26', '2024-01-07 14:09:26'),
(6, 'C93345K', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1702025939/uploads_WEB2041_Ecommerce/php8231_ofwhzi.png', 'Mã giảm giá mùa đông áp dụng cho mọi ngành hàng', '500000', 10000000, '2024-03-29 15:58:00', 20, 1, '2024-01-07 14:09:26', '2024-01-07 14:09:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images_product`
--

CREATE TABLE `images_product` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `images_product`
--

INSERT INTO `images_product` (`id`, `image`, `prod_id`) VALUES
(5, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857179/uploads_ecommerce_php_5_1/php7588_kiefhr.png', 105),
(6, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857185/uploads_ecommerce_php_5_1/php7589_zsh3sd.png', 105),
(7, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857202/uploads_ecommerce_php_5_1/php7599_ixhcpx.png', 105),
(8, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857207/uploads_ecommerce_php_5_1/php75AA_cixjyx.png', 105),
(9, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857219/uploads_ecommerce_php_5_1/php75BB_he4zl1.png', 105),
(10, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857484/uploads_ecommerce_php_5_1/php5740_yompww.png', 104),
(11, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857492/uploads_ecommerce_php_5_1/php5750_puesx5.png', 104),
(12, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857496/uploads_ecommerce_php_5_1/php5751_n99aix.png', 104),
(13, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857504/uploads_ecommerce_php_5_1/php5752_is0oan.png', 104),
(14, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857715/uploads_ecommerce_php_5_1/phpA7F6_ohdhxf.png', 103),
(15, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857725/uploads_ecommerce_php_5_1/phpA7F7_hzciuj.png', 103),
(16, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857729/uploads_ecommerce_php_5_1/phpA808_ssv8wx.png', 103),
(17, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857736/uploads_ecommerce_php_5_1/phpA809_kgg9u5.png', 103),
(18, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857906/uploads_ecommerce_php_5_1/phpC51A_cbzhl0.png', 102),
(19, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857912/uploads_ecommerce_php_5_1/phpC52A_eieseb.png', 102),
(20, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857918/uploads_ecommerce_php_5_1/phpC53B_qd5ylp.png', 102),
(21, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858028/uploads_ecommerce_php_5_1/phpB092_kqzony.png', 101),
(22, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858032/uploads_ecommerce_php_5_1/phpB093_otpiwl.png', 101),
(23, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858039/uploads_ecommerce_php_5_1/phpB094_r1k0b7.png', 101),
(24, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858179/uploads_ecommerce_php_5_1/phpFAB5_jsr0yo.png', 100),
(25, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858185/uploads_ecommerce_php_5_1/phpFAB6_z6fczg.png', 100),
(26, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858189/uploads_ecommerce_php_5_1/phpFAC7_fjil91.png', 100),
(27, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858193/uploads_ecommerce_php_5_1/phpFAC8_weylyn.png', 100),
(28, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858350/uploads_ecommerce_php_5_1/php84C0_rfnxir.png', 99),
(29, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858358/uploads_ecommerce_php_5_1/php84C1_rq3woh.png', 99),
(30, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858361/uploads_ecommerce_php_5_1/php84C2_hwhrs2.png', 99),
(31, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858491/uploads_ecommerce_php_5_1/phpA989_osmrar.png', 97),
(32, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858496/uploads_ecommerce_php_5_1/phpA98A_h3fyda.png', 97),
(33, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858508/uploads_ecommerce_php_5_1/phpA98B_hfc84r.png', 97),
(34, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858702/uploads_ecommerce_php_5_1/phpE9F3_pzd0ia.png', 96),
(35, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858707/uploads_ecommerce_php_5_1/phpE9F4_l376am.png', 96),
(36, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858715/uploads_ecommerce_php_5_1/phpE9F5_wei2v4.png', 96),
(37, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858833/uploads_ecommerce_php_5_1/phpF1EC_os1mdo.png', 94),
(38, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858837/uploads_ecommerce_php_5_1/phpF1FD_lczrj1.png', 94),
(39, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858846/uploads_ecommerce_php_5_1/phpF1FE_faljdl.png', 94),
(40, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858963/uploads_ecommerce_php_5_1/phpEA55_g0suwo.png', 90),
(41, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858981/uploads_ecommerce_php_5_1/phpEA56_kvhx7i.png', 90),
(42, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858990/uploads_ecommerce_php_5_1/phpEA57_tgpcyz.png', 90),
(43, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859178/uploads_ecommerce_php_5_1/php21D5_hxijpn.png', 89),
(44, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859185/uploads_ecommerce_php_5_1/php21D6_kmhfjd.png', 89),
(45, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859207/uploads_ecommerce_php_5_1/php21D7_cbyog8.png', 89),
(46, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859328/uploads_ecommerce_php_5_1/php7455_b2zlom.png', 88),
(47, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859334/uploads_ecommerce_php_5_1/php7456_oxnygx.png', 88),
(48, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859344/uploads_ecommerce_php_5_1/php7467_d4msfj.png', 88),
(49, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859521/uploads_ecommerce_php_5_1/php6055_etifgq.png', 87),
(50, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859530/uploads_ecommerce_php_5_1/php6076_vdkvex.png', 87),
(51, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859540/uploads_ecommerce_php_5_1/php6077_vn1d6h.png', 87),
(52, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859709/uploads_ecommerce_php_5_1/php4021_ewmfyt.png', 86),
(53, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859717/uploads_ecommerce_php_5_1/php4031_edjr0o.png', 86),
(54, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859724/uploads_ecommerce_php_5_1/php4042_qrpwbt.png', 86),
(55, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859832/uploads_ecommerce_php_5_1/php15_tknbsd.png', 85),
(56, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859839/uploads_ecommerce_php_5_1/php35_wys494.png', 85),
(57, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859842/uploads_ecommerce_php_5_1/php36_nzbhjb.png', 85),
(58, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859993/uploads_ecommerce_php_5_1/php9913_yijoij.png', 84),
(59, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710860000/uploads_ecommerce_php_5_1/php9924_rnnyvp.png', 84),
(60, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710860004/uploads_ecommerce_php_5_1/php9925_zjb2pi.png', 84),
(61, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710860127/uploads_ecommerce_php_5_1/phpB10A_idz5fh.png', 83),
(62, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710860131/uploads_ecommerce_php_5_1/phpB11B_zoev9p.png', 83),
(63, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710860135/uploads_ecommerce_php_5_1/phpB12B_wxcakf.png', 83),
(64, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710860142/uploads_ecommerce_php_5_1/phpB13C_p7dunl.png', 83);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `view` smallint(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `user_id`, `title`, `content`, `thumb`, `slug`, `view`, `status`, `create_at`, `update_at`) VALUES
(1, 4, 'Poco C65 - điện thoại bộ nhớ 256 GB giá 3 triệu đồng', '<p>C65 có cấu hình tốt, màn hình lớn 6,74 inch so với tầm giá nhưng chất lượng camera và loa ngoài chưa tốt.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4520-1699960658.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Az8CLAOOjo-A9LsnPKEw3g 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4520-1699960658.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=NwCcNk2AiOMNDovTGZZcQw 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4520-1699960658.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Az8CLAOOjo-A9LsnPKEw3g\" alt=\"\"></picture></p><p>Poco C65 là điện thoại giá rẻ mới nhất từ thương hiệu con của Xiaomi với điểm mạnh truyền thống là cấu hình so với các đối thủ cùng phân khúc. Đây là model rẻ nhất trang bị bộ nhớ 256 GB, RAM 8 GB với giá 3 triệu đồng, gấp đôi các đối thủ. Ngoài ra, máy còn một lựa chọn khác là bộ nhớ 128 GB, RAM 6 GB giá 2,75 triệu đồng.</p><p>Sản phẩm có giá tốt một phần nhờ chiến lược chỉ bán trực tuyến thay vì đưa cả vào hệ thống bán lẻ lớn như các hãng điện thoại thường làm. Đây có thể coi là bản nâng cấp nhẹ của Redmi 12C và có thông số phần cứng, kiểu dáng gần giống Redmi 13C cũng chuẩn bị bán ra tại Việt Nam.</p><p>Sau hơn một năm trầm lắng, phân khúc điện thoại tầm giá 3 triệu đồng sôi động trở lại khi có sự góp mặt của nhiều model trong nửa cuối 2023. Ngoài Samsung Galaxy A14, đa số các model còn lại đều từ các thương hiệu Trung Quốc như Infinix Hot 30, Tecno Spark 10 Pro, Realme C51 hay Oppo A18.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4581-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zsfGOzF4bI7tVuRsQD-7mA 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4581-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=CKizsuJzENrv0h73bDspmg 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4581-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zsfGOzF4bI7tVuRsQD-7mA\" alt=\"\"></picture></p><p>Máy có màn hình lớn 6,74 inch, tấm nền IPS và ưu điểm tần số quét 90 Hz tốt so với mức giá. Tuy nhiên, độ phân giải màn hình chỉ là HD+ (720 x 1.600 pixel) nên độ sắc nét chưa cao, có thể quan sát kỹ răng cưa viền chi tiết bằng mắt thường. Bù lại, màu sắc được cân chỉnh tốt, khá rực rỡ và cho phép chọn các tông màu ấm, lạnh. Độ sáng màn hình chỉ đạt 450 nit (độ sáng điểm 600 nit) nên khá khó sử dụng ngoài trời khi có nắng chiếu trực tiếp, hiển thị bóng.</p><p>C65 cũng chuyển sang thiết kế cạnh vuông vức, đi kèm viền màn hình nhô lên khỏi cạnh máy khiến trải nghiệm cầm không thực sự thoải mái, hơi cấn tay. Do khung bằng nhựa, máy có trọng lượng nhẹ, chỉ 192 gram nên có thể sử dụng lâu ít gây mỏi.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4545-1699960660.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9X7VsPlnCTZQ5yfDA0C2iQ 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4545-1699960660.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=L1-cfuv129qYTOEOcyHizA 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4545-1699960660.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9X7VsPlnCTZQ5yfDA0C2iQ\" alt=\"\"></picture></p><p>Mặt sau được hoàn thiện tốt với bề mặt nhám nhẹ chống bám vân tay gần giống chất lượng gương mờ dù thực tế chỉ bằng nhựa thông thường. Máy có điểm nhấn logo Poco và cụm camera có ống kính lớn giống dòng Redmi 13C.</p><p>Chip xử lý Mediatek MT6769Z Helio G85 cho điểm hiệu năng khá tốt so với tầm giá, khoảng 280.000 điểm với AnTuTu Benchmark. Điểm nhấn của máy nằm ở bộ nhớ với chuẩn tốc độ đọc, ghi eMMC 5.1.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4538-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=BNGGtor4r9pL3vYk317VVw 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4538-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=pmpCnc2vDghZjGFBGHRNMQ 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4538-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=BNGGtor4r9pL3vYk317VVw\" alt=\"\"></picture></p><p>C65 có độ mỏng ấn tượng 8,1 mm so với mức 8,7-9,4 mm của các đối thủ cùng phân khúc dù sở hữu viên pin 5.000 mAh. Máy cũng có cảm biến vân tay một chạm đặt trên nút nguồn ở cạnh phải. Điện thoại mới của Poco chạy hệ điều hành Android 13 với bộ giao diện MIUI 14 rút gọn. Máy có ba màu để lựa chọn là xanh, đen và tím.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4537-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=f7F6gd0RX4ma6MdDFlcYhQ 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4537-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=rxGuA0ySu6gghrdiyWmNnA 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4537-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=f7F6gd0RX4ma6MdDFlcYhQ\" alt=\"\"></picture></p><p>C65 vẫn giữ đầy đủ cổng kết nối, bao gồm cả giắc cắm tai nghe 3,5 mm trên đỉnh máy. Cổng USB-C phía dưới chỉ là chuẩn 2.0 và hỗ trợ sạc nhanh tối đa có dây là 18 W (chuẩn PD). Nhược điểm của máy nằm ở hệ thống loa ngoài với một loa bên dưới thay vì stereo. Ngoài ra, âm thanh cho cảm giác hơi rè khi đặt mức chỉnh khoảng trên 60%</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4568-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_LywNGOWvi0QRC5JSRtbRg 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4568-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=p9RjsUxB1V5s4DyazTd59A 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4568-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_LywNGOWvi0QRC5JSRtbRg\" alt=\"\"></picture></p><p>Cụm camera phía sau lớn hơn cả các mẫu điện thoại cao cấp gồm một camera chính độ phân giải 50 megapixel, f/1.8, lấy nét PDAF nhưng góc hơi hẹp là 28 mm (tiêu chuẩn thường là 24 mm), một ống kính macro đo độ sâu trường ảnh 2 megapixel và đèn flash LED. Máy có thể quay video độ phân giải Full HD tốc độ 30 hình/giây.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4593-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_smNc-wbUeomg5ss8Ib-VA 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4593-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=0yUJqY2v_q-lYyfgL3Xjvw 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4593-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_smNc-wbUeomg5ss8Ib-VA\" alt=\"\"></picture></p><p>Độ phân giải cao nhưng chất lượng chụp ảnh chưa tương xứng khi không khác biệt so với các đối thủ với thông số kém hơn. Ảnh chụp ổn ở điều kiện ngoài trời, đủ sáng nhưng độ chi tiết giảm nhiều với môi trường ánh sáng yếu. So với model giá rẻ \"hot\" nhất trước đây của Xiaomi là Redmi 12C, Poco C65 nhỉnh hơn ở khả năng cân bằng trắng, xử lý HDR nhưng chất lượng tổng thể không nâng cấp đáng kể.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4576-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=E6sWoDe5KPmUjbFHi-kl1Q 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4576-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=HtWMJk8AOOYmDv9kcsvo0g 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4576-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=E6sWoDe5KPmUjbFHi-kl1Q\" alt=\"\"></picture></p><p>&nbsp;</p><p>Phụ kiện có bộ sạc, cáp USB-C nhưng không có tai nghe và ốp silicon trong suốt. C65 hỗ trợ sạc nhanh tối đa 18 W nhưng củ sạc đi kèm có công suất chỉ 10 W.</p>', 'https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4520-1699960658.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Az8CLAOOjo-A9LsnPKEw3g', 'poco-c65---dien-thoai-bo-nho-256-gb-gia-3-trieu-dong-6572de0bf08f1', 39, 1, '2023-11-15 20:53:51', '2023-11-15 20:53:51'),
(2, 9, 'Google xác nhận trả tiền tỷ cho Apple để mặc định công cụ tìm kiếm', '<p>Sundar Pichai, CEO Google, thừa nhận hãng chia sẻ cho Apple 36% doanh thu có được từ việc đặt công cụ tìm kiếm mặc định trên trình duyệt Safari.</p><p>Ngày 14/11, trong buổi làm chứng liên quan đến <a href=\"https://vnexpress.net/nha-san-xuat-game-fortnite-kien-apple-google-4146591.html\">vụ kiện</a> giữa Google và Epic Games về vấn đề độc quyền trên Google Play, nhà sản xuất game đứng sau trò chơi <i>Fortnite</i>, một nhân chứng đề cập con số 36% doanh thu từ tìm kiếm thông qua Safari mà Apple được hưởng.</p><p>Luật sư của Epic Games hỏi Pichai điều này có chính xác không. CEO Google đáp: \"Đúng vậy!\".</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Mqf_2wSVeutdhFBRweTIyA 1x, https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=FT829C6TEaTCcf4P9MQfbg 1.5x, https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=AfArnaNhcdEf08katKZJ3g 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Mqf_2wSVeutdhFBRweTIyA\" alt=\"CEO Alphabet Sundar Pichai. Ảnh: Reuters\"></picture></p><p>CEO Alphabet Sundar Pichai. Ảnh: <i>Reuters</i></p><p>Luật sư tiếp tục hỏi Pichai tại sao hãng trả cho Samsung, đối tác phần cứng lớn nhất về Android, số tiền chưa bằng một nửa so với cho Apple. CEO Google nói ông không nắm rõ một cách chắc chắn, nhưng điều này \"có thể\" xảy ra.</p><p>\"Nó giống như việc vận chuyển táo với cam vậy\", Pichai nói. \"Với các giao dịch, đôi khi bạn phải trả tiền khác nhau cho các hãng vận chuyển\".</p><p>Đại diện pháp luật của Epic Games sau đó hỏi Pichai về số tiền chính xác mà họ trả cho Apple. Pichai nói \"hơn 10 tỷ USD\". Luật sư cho rằng ông trả lời không chính xác, con số thực tế phải là 18 tỷ USD.</p><p>Google, Samsung và Apple không đưa ra bình luận.</p><p>Alphabet hiện đối mặt với nhiều cuộc chiến pháp lý liên quan đến hành vi độc quyền công cụ tìm kiếm và kho ứng dụng. Hai vụ kiện với Bộ Tư pháp Mỹ (DOJ) và Epic Games đang diễn ra đồng thời. Hồi tháng 9, trong phiên tòa liên quan đến vụ kiện do Bộ Tư pháp Mỹ là nguyên đơn, các công tố viên cho biết Google nắm 90% thị phần tìm kiếm trực tuyến. Ưu thế đó có được một phần nhờ <a href=\"https://vnexpress.net/chu-de/google-1539\">Google</a> bắt tay với Apple trong thương vụ đã kéo dài 18 năm.</p><p>Một số nguồn tin cho biết Google chi 9,5 tỷ USD vào năm 2018, 11 tỷ USD năm 2020 và 15 tỷ USD năm 2021 để là công cụ tìm kiếm mặc định trên sản phẩm của Apple. Còn theo <a href=\"https://vnexpress.net/apple-co-the-mat-hang-ty-usd-neu-google-thua-kien-4663756.html\">thống kê mới nhất</a> được DOJ đưa ra hồi tháng 10, con số này là 18-20 tỷ USD.</p><p>Theo <i>Washington Post</i>, nếu Google bị chứng minh vi phạm pháp luật trong vụ kiện với DOJ, tòa án có quyền ra lệnh thay đổi điều khoản hoặc hủy bỏ hợp đồng của công ty với Apple. Hiện Liên minh châu Âu cũng đề nghị các thiết bị phải cài đặt \"giao diện lựa chọn\" ngay từ đầu để người dùng truy cập những công cụ tìm kiếm ngoài Google.</p>', 'https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=680&h=0&q=100&dpr=1&fit=crop&s=Mqf_2wSVeutdhFBRweTIyA', 'google-xac-nhan-tra-tien-ty-cho-apple-de-mac-dinh-cong-cu-tim-kiem-655df3d2882b0', 13, 1, '2023-11-15 20:53:51', '2023-11-15 20:53:51'),
(5, 4, 'Cuộc đua độ sáng màn hình không hồi kết: OnePlus ra mắt smartphone có màn hình sáng 4500 nits cao nhất thế giới', '<p>OnePlus mới đây đã giới thiệu mẫu flagship mới nhất có tên OnePlus 12. Máy có ưu điểm về hiệu năng mạnh mẽ, màn hình độ sáng cao và sạc nhanh 100W, mức giá khởi điểm chỉ từ khoảng hơn 14 triệu đồng.</p><p>&nbsp;</p><p><img src=\"https://genk.mediacdn.vn/thumb_w/640/139269124445442048/2023/12/7/006ruxyjgy1hkj529x04mj31kw11xauw-1701934879448-170193487962356397422.jpg\" alt=\"Cuộc đua độ sáng màn hình không hồi kết: OnePlus ra mắt smartphone có màn hình sáng 4500 nits cao nhất thế giới- Ảnh 1.\"></p><p>&nbsp;</p><p>Ngôn ngữ thiết kế của OnePlus 12 khá quen thuộc. Máy có mặt lưng hoàn thiện từ kính, cong 2 cạnh viền, khung viền hoàn thiện từ kim loại. Ở mặt trước, OnePlus 12 trang bị màn hình 6,82 inch LTPO AMOLED với độ phân giải QHD+, tần số quét 1-120Hz. Màn hình này do BOE sản xuất, được quảng cáo là có thể đạt độ sáng lên tới 4500 nits, cao nhất trên thế giới. Trước đó, Redmi K70 series phá vỡ kỷ lục của Xiaomi 14 với màn hình 4000 nits, tuy nhiên danh hiệu smartphone có màn hình sáng nhất giờ đây đã thuộc về OnePlus 12.<br>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://genk.mediacdn.vn/thumb_w/640/139269124445442048/2023/12/7/006ruxyjgy1hkj529l1z7j31kw11xtii-1701934886444-17019348865981913026044.jpg\" alt=\"Cuộc đua độ sáng màn hình không hồi kết: OnePlus ra mắt smartphone có màn hình sáng 4500 nits cao nhất thế giới- Ảnh 2.\"></p><p>&nbsp;</p><p>Ở mặt lưng, OnePlus 12 trang bị hệt hống 3 camera chính gồm góc rộng 50MP, góc siêu rộng 48MP và tele 3X 64MP. Cụm camera này được tinh chỉnh bởi Hasselblad tương tự như các smartphone OPPO cao cấp.<br>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://genk.mediacdn.vn/thumb_w/640/139269124445442048/2023/12/7/006ruxyjgy1hkj529z5edj31kw11xhdt-1701934872998-1701934873618866890869.jpg\" alt=\"Cuộc đua độ sáng màn hình không hồi kết: OnePlus ra mắt smartphone có màn hình sáng 4500 nits cao nhất thế giới- Ảnh 3.\"></p><p>&nbsp;</p><p>Về hiệu năng, OnePlus 12 trang bị chip Snapdragon 8 Gen 3, máy có RAM lên tới 24GB, bộ nhớ lưu trữ lên tới 1TB. Viên pin của máy có dung lượng 5400mAh, hỗ trợ sạc nhanh 100W có dây và 50W không dây. Máy chạy trên nền tảng ColorOS 14.0 dựa trên Android 14.<br>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://genk.mediacdn.vn/thumb_w/640/139269124445442048/2023/12/7/006ruxyjgy1hkj529kd2tj31kw11xai2-1701934902816-17019349029551998457206.jpg\" alt=\"Cuộc đua độ sáng màn hình không hồi kết: OnePlus ra mắt smartphone có màn hình sáng 4500 nits cao nhất thế giới- Ảnh 4.\"></p><p>&nbsp;</p><p>Về giá bán, OnePlus 12 lên kệ tại thị trường Trung Quốc với giá khởi điểm từ 4299 tệ, tương đương khoảng 14,6 triệu đồng. Phiên bản cao cấp nhất 24GB/1TB có giá 5799 tệ, tương đương 19,8 triệu đồng.</p>', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1702026567/uploads_WEB2041_Ecommerce/php16F5_fdtjcv.webp', 'cuoc-dua-do-sang-man-hinh-khong-hoi-ket-oneplus-ra-mat-smartphone-co-man-hinh-sang-4500-nits-cao-nhat-the-gioi-659a584553471', 32, 1, '2023-12-08 16:09:30', '2023-12-08 16:09:30'),
(6, 4, 'Thay đổi trong thiết kế của Galaxy S24 Ultra', '<p>Smartphone cao cấp nhất dòng Galaxy S24 được cho là sẽ mỏng hơn, khay cắm bút S Pen, loa ngoài và nút bấm được thiết kế lại.</p><p>Trang công nghệ <i>PhoneArena </i>đăng một số hình ảnh nguyên mẫu của <a href=\"https://vnexpress.net/chu-de/samsung-galaxy-s24-ultra-6858\">Galaxy S24 Ultra</a> và so sánh với S23 Ultra hiện tại. Hai model có thiết kế giống nhau, nhưng Samsung đã tinh chỉnh nhiều chi tiết để tạo ra sự khác biệt, cải thiện trải nghiệm của người dùng.</p><p>Điểm cải tiến đầu tiên là bút S Pen trên S24 Ultra có phần đuôi phẳng, khi gắn vào sẽ ngang bằng với đế máy thay vì lồi lên như ở S23 Ultra. Nhờ đó khi sử dụng, phần tay để đỡ máy sẽ không bị còn bị cấn.</p><p><img src=\"https://i1-sohoa.vnecdn.net/2023/12/07/S24-Ultra-vs-S23-Ultra-leak-jp-1133-9558-1701962234.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=BPinmllLeswNh04OgUIIRg\" alt=\"Samsung Galaxy S23 Ultra (màu đen) và Galaxy S24 Ultra. Ảnh: PhoneArena\"></p><p>Galaxy S23 Ultra (màu đen) và nguyên mẫy được cho là Galaxy S24 Ultra. Ảnh: <i>PhoneArena</i></p><p>Loa ngoài cũng được điều chỉnh, không còn thiết kế khoét nhiều lỗ mà chuyển thành đường cắt nhỏ gọn và đẹp mắt. Cổng USB-C và khay cắm sim vẫn giữ nguyên như trước.</p><p>Khung viền của S24 Ultra dày và ít bo cong hơn, nhưng độ dày tổng thể lại giảm từ 8,9 xuống 8,6 mm do thiết bị mới sử dụng màn hình phẳng. Hai nút bấm cứng là nút nguồn và âm lượng cũng có kích thước lớn hơn thế hệ trước. Trong khi đó, pin vẫn duy trì dung lượng 5.000 mAh.</p><p>Khi nhìn qua ảnh khó xác định vật liệu khung sườn, nhưng theo \"chuyên gia tin đồn\" Ice Universe, Galaxy S24 Ultra chắc chắn được trang bị khung bằng hợp kim titanium với độ bền cao hơn và tạo cảm giác cầm mượt hơn.</p><p><img src=\"https://i1-sohoa.vnecdn.net/2023/12/07/S24-Ultra-vs-S23-Ultra-leak-2-1948-4760-1701962234.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kaLASnY9dQ6_w4WLP7rDfg\" alt=\"Samsung Galaxy S23 Ultra (màu đen) và Galaxy S24 Ultra. Ảnh: PhoneArena\"></p><p>Galaxy S23 Ultra (đen) và Galaxy S24 Ultra. Ảnh: <i>PhoneArena</i></p><p>Về cấu hình, Galaxy S24 Ultra sẽ sử dụng chip xử lý mới nhất của Qualcomm là Snapdragon 8 Gen 3, còn điểm nâng cấp nổi bật trên hệ thống camera sau là ống kính tiềm vọng 50 megapixel với khả năng zoom quang 5x, thay cho ống tiềm vọng 10 megapixel hỗ trợ zoom quang 10x trên S23 Ultra.</p><p>Samsung dự kiến công dòng <a href=\"https://vnexpress.net/chu-de/samsung-galaxy-s24-6857\">Galaxy S24</a> với ba phiên bản S24, S24+ và S24 Ultra vào ngày 17/1 tại Mỹ.</p>', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1702026628/uploads_WEB2041_Ecommerce/php703_ezyvzj.jpg', 'thay-doi-trong-thiet-ke-cua-galaxy-s24-ultra-659a583ec4d37', 14, 1, '2023-12-08 16:10:31', '2023-12-08 16:10:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_code` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `order_status_id` int(11) NOT NULL DEFAULT 1,
  `total_money` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `user_id`, `fullname`, `phone`, `address`, `note`, `order_date`, `order_status_id`, `total_money`, `coupon_id`) VALUES
(3, 'EQdXo1700735589', 9, 'Trần Văn B', '0332225678', 'tanvnwdwdwd', '', '2023-11-23 17:33:09', 5, 250360000, 0),
(4, 'zbnbJ1700735682', 9, 'Trần Văn B', '0332225678', 'tanvnwdwdwd', '', '2023-10-23 17:35:26', 4, 147750000, 0),
(5, 'nXe9V1700742943', 4, 'tân', '0223339904', 'Dong anh HA NOI', '', '2023-11-23 19:35:43', 4, 133770000, 0),
(6, 'DF2Q91700743034', 4, 'tân ', '0332228859', 'Dong anh HA NOI', '', '2023-11-23 19:37:14', 4, 18861000, 0),
(7, 'Ujfhw1700924705', 10, 'tan c', '0990006780', 'Hà Nội', '', '2023-11-25 22:05:50', 5, 11270000, 0),
(8, 'cnz5M1700968091', 10, 'tan c', '0990006780', 'Hà Nội', '', '2023-11-26 10:10:33', 3, 7680000, 0),
(9, '5ZFhw1700968352', 10, 'tan c', '0990006780', 'Hà Nội 2', '', '2023-11-26 10:13:25', 3, 50980000, 0),
(10, 'ZRdR61701012945', 4, 'tân', '0333949402', 'Dong anh HA NOI', '', '2023-11-26 22:35:45', 4, 78560000, 1),
(11, 'EobYE1701436932', 4, 'Tân', '0332225690', 'Dong anh HA NOI', '', '2023-12-01 20:24:41', 4, 12960000, 0),
(12, 'fw5rB1701572590', 10, 'tan c', '0990006780', 'Hà nội', '', '2023-12-03 10:03:10', 5, 89800000, 0),
(13, 'mXoks1701572798', 10, 'tan c', '0990006780', 'Hà nội', '', '2023-12-03 10:06:38', 4, 75390000, 0),
(14, 'kdzPu1701745192', 10, 'tan c', '0990006780', 'Thanh hoá', '', '2023-12-05 10:01:06', 3, 2190000, 0),
(15, 'KLKxC1701872429', 10, 'tan c', '0990006780', 'Đông anh hà nội', '', '2023-12-06 21:20:29', 5, 808553647, 0),
(16, 'uZtQS1702047431', 4, 'Tân', '0332225690', 'Dong anh HA NOI', '', '2023-12-08 21:57:46', 4, 19976000, 5),
(17, '7GB5U1702089133', 9, 'Trần Văn B', '0332225678', 'Việt trì, Phú thọ', '', '2023-12-09 09:32:13', 4, 268470000, 0),
(18, 'eHb9f1702092444', 9, 'Trần Văn B', '0332229409', 'Việt trì, Phú thọ', '', '2023-12-09 10:27:48', 4, 27176000, 5),
(19, '4qdPd1702783078', 4, 'Tân ', '0992788902', 'Ha Noiu', '', '2023-12-17 10:17:58', 3, 126540000, 0),
(20, 'WfHlV1703253067', 34, 'Tan', '0993338590', 'Ha Noi', 'Giao nhanh giup toi', '2023-12-22 20:51:58', 4, 42380000, 6),
(21, 'vjOK91703592291', 35, 'Tan', '0332225690', 'Ha noi', 'Giao nhnah giup minh', '2023-12-26 19:05:15', 4, 22376000, 5),
(22, '4OKzP1704721438', 4, 'Tân (admin)', '0993346890', 'Dong anh HA NOI', '', '2024-01-08 20:43:58', 4, 34770000, 0),
(23, 'hjoqg1704888866', 4, 'Tân (admin)', '0993346890', 'Dong anh HA NOI', '', '2024-01-10 19:14:26', 4, 11770000, 0),
(24, 'qn90g1710932204', 39, 'VŨ NGỌC TÂN', '0332225690', 'Dong anh HA NOI', 'Giao n hanh', '2024-03-20 17:57:56', 4, 7680000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_variant_id`, `price`, `quantity`, `total_money`) VALUES
(3, 2, 12, 35690000, 1, 35690000),
(4, 2, 13, 34890000, 2, 69780000),
(5, 2, 11, 5690000, 1, 5690000),
(6, 2, 9, 7990000, 2, 15980000),
(7, 3, 12, 35690000, 2, 71380000),
(8, 3, 1, 44900000, 2, 89800000),
(9, 3, 2, 44590000, 2, 89180000),
(10, 4, 2, 44590000, 3, 133770000),
(11, 4, 9, 7990000, 1, 7990000),
(12, 4, 8, 5990000, 1, 5990000),
(13, 5, 2, 44590000, 3, 133770000),
(14, 6, 32, 9990000, 1, 9990000),
(15, 6, 26, 3690000, 1, 3690000),
(16, 6, 29, 5181000, 1, 5181000),
(17, 7, 25, 3590000, 1, 3590000),
(18, 7, 26, 3690000, 1, 3690000),
(19, 7, 28, 3990000, 1, 3990000),
(20, 8, 26, 3690000, 1, 3690000),
(21, 8, 28, 3990000, 1, 3990000),
(22, 9, 18, 25990000, 1, 25990000),
(23, 9, 21, 24990000, 1, 24990000),
(24, 10, 28, 3990000, 1, 3990000),
(25, 10, 21, 24990000, 3, 74970000),
(26, 11, 25, 3590000, 3, 10770000),
(27, 11, 33, 2190000, 1, 2190000),
(28, 12, 1, 44900000, 2, 89800000),
(29, 13, 25, 3590000, 21, 75390000),
(30, 14, 33, 2190000, 1, 2190000),
(31, 15, 42, 23490000, 33, 775170000),
(32, 15, 15, 21990000, 3, 65970000),
(33, 16, 28, 3990000, 2, 7980000),
(34, 16, 75, 16990000, 1, 16990000),
(35, 17, 1, 44900000, 3, 134700000),
(36, 17, 2, 44590000, 3, 133770000),
(37, 18, 61, 11990000, 1, 11990000),
(38, 18, 63, 10990000, 2, 21980000),
(39, 19, 25, 3590000, 1, 3590000),
(40, 19, 14, 22990000, 2, 45980000),
(41, 19, 21, 24990000, 1, 24990000),
(42, 19, 18, 25990000, 2, 51980000),
(43, 20, 13, 34890000, 1, 34890000),
(44, 20, 72, 7990000, 1, 7990000),
(45, 21, 8, 5990000, 1, 5990000),
(46, 21, 60, 10990000, 2, 21980000),
(47, 22, 24, 11590000, 3, 34770000),
(48, 23, 27, 3190000, 1, 3190000),
(49, 23, 74, 4290000, 2, 8580000),
(50, 24, 101, 5290000, 1, 5290000),
(51, 24, 96, 2390000, 1, 2390000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `description`) VALUES
(1, 'Chờ xác nhận', 'Chờ xác nhận từ người bán'),
(2, 'Đang chuẩn bị', 'Chuẩn bị giao hàng'),
(3, 'Đang giao hàng', 'Đang giao hàng'),
(4, 'Đã giao hàng', 'Giao hàng hoàn tất'),
(5, 'Đã huỷ', 'Huỷ giao hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_transaction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`id`, `order_id`, `payment_method_id`, `payment_transaction_id`) VALUES
(1, 1, 1, 0),
(2, 2, 2, 1),
(3, 3, 1, 0),
(4, 4, 2, 2),
(5, 5, 1, 0),
(6, 6, 1, 0),
(7, 7, 2, 3),
(8, 8, 3, 4),
(9, 9, 3, 5),
(10, 10, 1, 0),
(11, 11, 2, 6),
(12, 12, 1, 0),
(13, 13, 1, 0),
(14, 14, 3, 7),
(15, 15, 1, 0),
(16, 16, 2, 8),
(17, 17, 1, 0),
(18, 18, 2, 9),
(19, 19, 1, 0),
(20, 20, 2, 10),
(21, 21, 2, 11),
(22, 22, 1, 0),
(23, 23, 1, 0),
(24, 24, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payment_method`
--

INSERT INTO `payment_method` (`id`, `name`, `display_name`, `description`, `thumb`, `status`) VALUES
(1, 'cash_on_delivery', 'Thanh toán khi nhận hàng', 'Thanh toán bằng tiền mặt khi giao hàng.', 'https://phuhungthinh.com/wp-content/uploads/2022/08/thanh-toan.png', 1),
(2, 'vnpay', 'VNPAY', 'Thanh toán qua VNPAY, bạn có thể thanh toán bằng thẻ tín dụng nếu bạn không có tài khoản VNPAY.', 'https://vnpay.vn/s1/statics.vnpay.vn/2023/6/0oxhzjmxbksr1686814746087.png', 1),
(3, 'momo', 'MOMO', 'Thanh toán qua MOMO, bạn có thể thanh toán bằng thẻ tín dụng nếu bạn không có tài khoản MOMO.', 'https://developers.momo.vn/v3/assets/images/icon-52bd5808cecdb1970e1aeec3c31a3ee1.png', 1),
(4, 'onepay', 'ONEPAY', 'Thanh toán qua ONEPAY, bạn có thể thanh toán bằng thẻ tín dụng nếu bạn không có tài khoản ONEPAY.', 'https://play-lh.googleusercontent.com/mvedVCbQg6ADKUYYraVLOlmOfOy2Rz66kEPvbmxt5xZ2TTa90Go9jBD2dJrwWmEo5g8', 0),
(6, 'thu nghiem', 'Thử nghiệm', 'ưdwdwdwdw', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700730034/uploads_WEB2041_Ecommerce/php2420_ww14or.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` int(11) NOT NULL,
  `bankCode` varchar(50) NOT NULL,
  `bankTranNo` varchar(50) NOT NULL,
  `cardType` varchar(50) NOT NULL,
  `payDate` bigint(11) NOT NULL,
  `transactionNo` varchar(50) NOT NULL,
  `secureHash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payment_transactions`
--

INSERT INTO `payment_transactions` (`id`, `bankCode`, `bankTranNo`, `cardType`, `payDate`, `transactionNo`, `secureHash`) VALUES
(1, 'NCB', 'VNP14349002', 'ATM', 20240320175655, '14349002', '649fd91481722d57a091c4c370f726fc8e1424ea743c5f65190bcd0930fb41aa413436cf943b1486cf5ca3b7deb26844e78d1b94697bda0ab8602e98f23e5718');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` smallint(6) NOT NULL DEFAULT 0,
  `isVariant` tinyint(4) NOT NULL DEFAULT 0,
  `sold` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `thumb` text NOT NULL,
  `totalRatings` float NOT NULL DEFAULT 0,
  `totalUserRatings` mediumint(9) NOT NULL DEFAULT 0,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `cate_id` int(11) NOT NULL,
  `slug` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `view` mediumint(9) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `title`, `brand_id`, `price`, `discount`, `isVariant`, `sold`, `quantity`, `thumb`, `totalRatings`, `totalUserRatings`, `short_description`, `description`, `cate_id`, `slug`, `status`, `view`, `create_at`, `update_at`) VALUES
(83, 'Street Life Men\'s Letter Printed Weaved Shorts Suitable For Spring And Summer', 1, 34990000, 0, 1, 9, 190, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710860124/uploads_ecommerce_php_5_1/phpB109_u1vxpu.png', 4.33, 3, 'Color:	Blue\r\nStyle:	Casual\r\nPattern Type:	Graphic, Letter\r\nDetails:	Drawstring, Pocket\r\nType:	Track Shorts\r\nClosure Type:	Drawstring Waist\r\nWaist Line:	Natural\r\nLength:	Short\r\nFit Type:	Loose\r\nFabric:	Slight Stretch\r\nMaterial:	Woven Fabric\r\nComposition:	100% Polyester\r\nCare Instructions:	Machine wash or professional dry clean\r\nSheer:	No', '<p>CMIN</p><p>US Size</p><figure class=\"table\"><table><tbody><tr><td><strong>Size</strong></td><td><strong>US</strong></td><td><strong>Hip Size</strong></td><td><strong>Inseam</strong></td><td><strong>Thigh</strong></td><td><strong>Waist Size</strong></td></tr><tr><td><strong>S</strong></td><td>36</td><td>106</td><td>14.6</td><td>65.8</td><td>74-101</td></tr><tr><td><strong>M</strong></td><td>38</td><td>110</td><td>15</td><td>68</td><td>78-105</td></tr><tr><td><strong>L</strong></td><td>40</td><td>115</td><td>15.4</td><td>70.7</td><td>83-110</td></tr><tr><td><strong>XL</strong></td><td>42</td><td>120</td><td>15.8</td><td>73.4</td><td>88-115</td></tr><tr><td><strong>XXL</strong></td><td>44</td><td>125</td><td>16.2</td><td>76.1</td><td>93-120</td></tr></tbody></table></figure><p>*This data was obtained from manually measuring the product, it may be off by 1-2 CM.</p><p>View more size information</p><p><br>&nbsp;</p>', 1, 'street-life-mens-letter-printed-weaved-shorts-suitable-for-spring-and-summer-65f9a78cbe0f5', 1, 389, '2023-11-20 21:28:01', '2023-12-09 09:33:59'),
(84, 'Anime Men\'s Printed T-shirt', 1, 5181000, 6, 1, 1, 223, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859989/uploads_ecommerce_php_5_1/php9912_ihxk5n.png', 5, 1, 'Color:	Black\r\nStyle:	Street\r\nPattern Type:	Animal, Letter\r\nNeckline:	Round Neck\r\nSleeve Length:	Short Sleeve\r\nSleeve Type:	Drop Shoulder\r\nLength:	Regular\r\nFit Type:	Regular Fit\r\nFeatures:	Breathable, Soft\r\nFabric:	Medium Stretch\r\nMaterial:	Fabric\r\nComposition:	100% Polyester\r\nCare Instructions:	Machine wash or professional dry clean\r\nPockets:	No\r\nLined For Added Warmth:	No\r\nSheer:	No', '<p>CMIN</p><p>US Size</p><figure class=\"table\"><table><tbody><tr><td><strong>Size</strong></td><td><strong>US</strong></td><td><strong>Bust</strong></td><td><strong>Cuff</strong></td><td><strong>Length</strong></td><td><strong>Shoulder</strong></td><td><strong>Sleeve Length</strong></td></tr><tr><td><strong>S</strong></td><td>36</td><td>104</td><td>33.8</td><td>69</td><td>44.5</td><td>22</td></tr><tr><td><strong>M</strong></td><td>38</td><td>108</td><td>35</td><td>71</td><td>46</td><td>22.5</td></tr><tr><td><strong>L</strong></td><td>40</td><td>113</td><td>36.5</td><td>73</td><td>47.8</td><td>23</td></tr><tr><td><strong>XL</strong></td><td>42</td><td>118</td><td>38</td><td>75</td><td>49.6</td><td>23.5</td></tr><tr><td><strong>XXL</strong></td><td>44</td><td>123</td><td>39.5</td><td>77</td><td>51.4</td><td>24</td></tr></tbody></table></figure>', 1, 'anime-mens-printed-t-shirt-65f9a750df065', 1, 58, '2023-11-20 21:34:44', '2023-12-05 10:08:16'),
(85, 'Fairycore Ladies\' Mushroom & Vine Embroidery Suspenders Mid-length Skirt', 4, 6990000, 9, 1, 1, 34, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859816/uploads_ecommerce_php_5_1/php14_m021f2.png', 5, 1, 'Color:	Apricot\r\nStyle:	Casual\r\nPattern Type:	Floral\r\nDetails:	Embroidery, Criss Cross, Pocket\r\nWaist Line:	Natural\r\nLength:	Long\r\nFit Type:	Loose\r\nType:	Pinafore\r\nFabric:	Non-Stretch\r\nMaterial:	Fabric\r\nComposition:	100% Polyester\r\nCare Instructions:	Machine wash or professional dry clean\r\nSheer:	No', '<p>CMIN</p><p>US Size</p><figure class=\"table\"><table><tbody><tr><td><strong>Size</strong></td><td><strong>US</strong></td><td><strong>Hip Size</strong></td><td><strong>Length</strong></td><td><strong>Waist Size</strong></td></tr><tr><td><strong>S</strong></td><td>4</td><td>100</td><td>80</td><td>70</td></tr><tr><td><strong>M</strong></td><td>6</td><td>104</td><td>81</td><td>74</td></tr><tr><td><strong>L</strong></td><td>8/10</td><td>110</td><td>82.5</td><td>80</td></tr></tbody></table></figure><p>*This data was obtained from manually measuring the product, it may be off by 1-2 CM.</p>', 1, 'fairycore-ladies-mushroom-vine-embroidery-suspenders-mid-length-skirt-65f9a6cc05f5b', 1, 22, '2023-11-20 21:47:25', '2023-12-05 10:07:42'),
(86, 'The Powerpuff Girls | ROMWE Plus Size Cartoon Printed Racerback Bra & Panty Set', 1, 34569000, 5, 1, 1, 190, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859702/uploads_ecommerce_php_5_1/php4020_nkao2g.png', 4, 1, 'Color:	Multicolor\r\nBra Type:	Bralettes\r\nPanty Type:	Boyshorts\r\nRise:	Mid Rise\r\nDetails:	Cut Out\r\nWires:	Wireless\r\nFabric:	Slight Stretch\r\nTops Material:	Polyester\r\nPants Material:	Knitted Fabric\r\nTops & Pants Composition:	90% Polyester, 10% Elastane\r\nCare Instructions:	Hand wash,do not dry clean', '<h2>Shipping To United States</h2><p><strong>Delivery</strong></p><p>1/3</p><p>Express Shipping:$19.99 ,FREE on orders $159.00+</p><p>Estimated to be delivered on <strong>26/03/2024 - 28/03/2024</strong>.</p><p>&nbsp;80.94%&nbsp;are&nbsp;≤&nbsp;<strong>7</strong>&nbsp;days</p><p>Standard Shipping:$3.99 ,FREE on orders $29.00+</p><p>Estimated to be delivered on <strong>29/03/2024 - 31/03/2024</strong>.</p><p>&nbsp;75.56%&nbsp;are&nbsp;≤&nbsp;<strong>10</strong>&nbsp;days</p><p>Economic Shipping:$3.99 ,FREE on orders $19.00+</p><p>Estimated to be delivered on <strong>01/04/2024 - 06/04/2024</strong>.</p><p>&nbsp;84.98%&nbsp;are&nbsp;≤&nbsp;<strong>12</strong>&nbsp;days</p><p>&nbsp;</p><p><strong>Return Policy</strong></p><p>&nbsp;</p><p>Return and exchange goods are not supported.</p><h2>Description</h2><p>Color:</p><p>Multicolor</p><p>Bra Type:</p><p>Bralettes</p><p>Panty Type:</p><p>Boyshorts</p><p>Rise:</p><p>Mid Rise</p><p>Details:</p><p>Cut Out</p><p>Wires:</p><p>Wireless</p><p>Fabric:</p><p>Slight Stretch</p><p>Tops Material:</p><p>Polyester</p><p>Pants Material:</p><p>Knitted Fabric</p><p>Tops &amp; Pants Composition:</p><p>90% Polyester, 10% Elastane</p><p>Care Instructions:</p><p>Hand wash,do not dry clean</p><h2>Size &amp; Fit</h2><p><strong>Product Measurements</strong></p><p>&nbsp;</p><p>CMIN</p><p>US Size</p><figure class=\"table\"><table><tbody><tr><td><strong>Size</strong></td><td><strong>US</strong></td><td><strong>Length</strong></td><td><strong>Underbust</strong></td></tr><tr><td><strong>1XL</strong></td><td>14</td><td>32</td><td>78-114</td></tr><tr><td><strong>2XL</strong></td><td>16</td><td>33</td><td>84-120</td></tr><tr><td><strong>3XL</strong></td><td>18</td><td>34</td><td>90-126</td></tr></tbody></table></figure><p>*This data was obtained from manually measuring the product, it may be off by 1-2 CM.</p>', 1, 'the-powerpuff-girls-romwe-plus-size-cartoon-printed-racerback-bra-panty-set-65f9a5e69e570', 1, 39, '2023-11-20 22:07:16', '2023-12-05 10:08:01'),
(87, 'Goth 2023 New Arrival Women\'s Loafers, British Style Slip-On Flat Shoes For Women, Black', 2, 22990000, 0, 1, 0, 222, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859516/uploads_ecommerce_php_5_1/php6054_tngiza.png', 5, 1, 'Color:	Black\r\nUpper Material:	PU Leather\r\nLining Material:	PU Leather\r\nInsole Material:	PU Leather\r\nOutsole Material:	Rubber', '<p>CMIN</p><p>US Size</p><figure class=\"table\"><table><tbody><tr><td><strong>Size</strong></td><td><strong>US</strong></td><td><strong>Ball Girth</strong></td><td><strong>Foot Length</strong></td><td><strong>Heel Height</strong></td></tr><tr><td><strong>CN35</strong></td><td>US5.5</td><td>20.6</td><td>22</td><td>2</td></tr><tr><td><strong>CN36</strong></td><td>US6</td><td>20.95</td><td>22.5</td><td>2</td></tr><tr><td><strong>CN37</strong></td><td>US6.5</td><td>21.3</td><td>23</td><td>2</td></tr><tr><td><strong>CN38</strong></td><td>US7</td><td>21.65</td><td>23.5</td><td>2</td></tr><tr><td><strong>CN39</strong></td><td>US7.5</td><td>22</td><td>24</td><td>2</td></tr><tr><td><strong>CN40</strong></td><td>US8</td><td>22.35</td><td>24.5</td><td>2</td></tr></tbody></table></figure>', 38, 'goth-2023-new-arrival-womens-loafers-british-style-slip-on-flat-shoes-for-women-black-65f9a52a467da', 1, 37, '2023-11-20 22:12:28', '2024-01-09 15:16:22'),
(88, 'Chocolate Brown Solid Color Boots With Buckle Decor, Side Zipper, Lace-up Closure And Cap Toe', 1, 10990000, 7, 1, 3, 222, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859324/uploads_ecommerce_php_5_1/php7454_nsx249.png', 0, 0, 'Closure Type:	Side zipper, Lace-up\r\nType:	Combat Boots\r\nColor:	Chocolate Brown\r\nPattern Type:	Plain\r\nHeel Height:	Low Heel (4.5cm/1.8inch)\r\nToe:	Round Toe\r\nDetails:	Buckle\r\nHeels:	Flatform\r\nBoots Height Type:	Ankle Boots\r\nStyle:	Fashionable\r\nUpper Material:	PU Leather\r\nLining Material:	Fabric\r\nInsole Material:	Fabric\r\nOutsole Material:	Rubber', '<p>CMIN</p><p>US Size</p><figure class=\"table\"><table><tbody><tr><td><strong>Size</strong></td><td><strong>US</strong></td><td><strong>Ball Girth</strong></td><td><strong>Foot Length</strong></td><td><strong>Heel Height</strong></td><td><strong>Shaft Height</strong></td></tr><tr><td><strong>CN35</strong></td><td>US5.5</td><td>20.45</td><td>22</td><td>4.5</td><td>12</td></tr><tr><td><strong>CN36</strong></td><td>US6</td><td>20.8</td><td>22.5</td><td>4.5</td><td>12</td></tr><tr><td><strong>CN37</strong></td><td>US6.5</td><td>21.15</td><td>23</td><td>4.5</td><td>12</td></tr><tr><td><strong>CN38</strong></td><td>US7</td><td>21.5</td><td>23.5</td><td>4.5</td><td>12</td></tr><tr><td><strong>CN39</strong></td><td>US7.5</td><td>21.85</td><td>24</td><td>4.5</td><td>12</td></tr><tr><td><strong>CN40</strong></td><td>US8</td><td>22.2</td><td>24.5</td><td>4.5</td><td>12</td></tr><tr><td><strong>CN41</strong></td><td>US8.5</td><td>22.55</td><td>25</td><td>4.5</td><td>12</td></tr><tr><td><strong>CN42</strong></td><td>US9.5</td><td>22.9</td><td>25.5</td><td>4.5</td><td>12</td></tr></tbody></table></figure>', 38, 'chocolate-brown-solid-color-boots-with-buckle-decor-side-zipper-lace-up-closure-and-cap-toe-65f9a4f524e3d', 1, 12, '2023-11-20 22:25:02', '2023-11-20 22:25:02'),
(89, 'Goth Women\'s 2024 New Arrivals Dark Punk Lace-Up Platform Wedge Heel Knight Boots For Spring/Autumn', 2, 25990000, 6, 1, 3, 334, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710859170/uploads_ecommerce_php_5_1/php21D4_pqteoi.png', 1, 1, 'Closure Type:	Buckle\r\nType:	Booties\r\nColor:	Black\r\nPattern Type:	Plain\r\nHeel Height:	High Heel (8.5cm/3.3inch)\r\nToe:	Round Toe\r\nHeels:	Platform\r\nBoots Height Type:	Mid Calf Boots\r\nStyle:	Fashionable\r\nUpper Material:	PU Leather\r\nLining Material:	Polyester\r\nInsole Material:	Polyester\r\nOutsole Material:	PUR', '<p>CMIN</p><p>US Size</p><figure class=\"table\"><table><tbody><tr><td><strong>Size</strong></td><td><strong>US</strong></td><td><strong>Ball Girth</strong></td><td><strong>Foot Length</strong></td><td><strong>Heel Height</strong></td><td><strong>Shaft Height</strong></td></tr><tr><td><strong>CN36</strong></td><td>US6</td><td>21.35</td><td>22.5</td><td>8.5</td><td>18</td></tr><tr><td><strong>CN37</strong></td><td>US6.5</td><td>21.7</td><td>23</td><td>8.5</td><td>18</td></tr><tr><td><strong>CN38</strong></td><td>US7</td><td>22.05</td><td>23.5</td><td>8.5</td><td>18</td></tr><tr><td><strong>CN39</strong></td><td>US7.5</td><td>22.4</td><td>24</td><td>8.5</td><td>18</td></tr><tr><td><strong>CN40</strong></td><td>US8</td><td>22.75</td><td>24.5</td><td>8.5</td><td>18</td></tr><tr><td><strong>CN41</strong></td><td>US8.5</td><td>23.1</td><td>25</td><td>8.5</td><td>18</td></tr><tr><td><strong>CN42</strong></td><td>US9.5</td><td>23.45</td><td>25.5</td><td>8.5</td><td>18</td></tr></tbody></table></figure><p>*This data was obtained from manually measuring the product, it may be off by 1-2 CM.</p>', 38, 'goth-womens-2024-new-arrivals-dark-punk-lace-up-platform-wedge-heel-knight-boots-for-springautumn-65f9a3d293556', 1, 69, '2023-11-20 22:32:42', '2023-12-05 10:08:29'),
(90, '1pc Plain Square Makeup Bag Black Friday', 1, 3690000, 8, 1, 28, 356, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858959/uploads_ecommerce_php_5_1/phpEA44_jn6wh5.png', 5, 1, 'Color:	Pink\r\nType:	Square Case\r\nPower Supply:	None\r\nBatteries Included:	No\r\nComposition:	100% Polyester\r\nMaterial:	Polyester', '<p>CMIN</p><figure class=\"table\"><table><tbody><tr><td><strong>Height</strong></td><td><strong>Length</strong></td><td><strong>Width</strong></td></tr><tr><td><strong>10</strong></td><td>18</td><td>11</td></tr></tbody></table></figure><p>*This data was obtained from manually measuring the product, it may be off by 1-2 CM.</p>', 39, '1pc-plain-square-makeup-bag-black-friday-65f9a2ffbcf4d', 1, 254, '2023-11-20 22:50:07', '2023-12-05 10:08:58'),
(94, 'Goth 1pc Moon & Cat Pattern Square Makeup Bag', 1, 5690000, 0, 1, 0, 90, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858830/uploads_ecommerce_php_5_1/phpF1EB_iaux2h.png', 0, 0, 'Color:	Multicolor\r\nType:	Roundtop Pouch\r\nPower Supply:	None\r\nComposition:	100% Polyester\r\nMaterial:	Polyester', '<p>CMIN</p><figure class=\"table\"><table><tbody><tr><td><strong>Height</strong></td><td><strong>Length</strong></td><td><strong>Width</strong></td></tr><tr><td><strong>10</strong></td><td>18</td><td>8</td></tr></tbody></table></figure><p>*This data was obtained from manually measuring the product, it may be off by 1-2 CM.</p>', 39, 'goth-1pc-moon-cat-pattern-square-makeup-bag-65f9a2cadcf4e', 1, 7, '2023-12-01 18:10:50', '2023-12-01 18:10:50'),
(96, 'Grunge Punk Buckle Decor Baker Boy Cap', 1, 13890000, 0, 1, 0, 34, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858696/uploads_ecommerce_php_5_1/phpE9E2_sqvqjl.png', 0, 0, 'Color:	Black\r\nDetails:	Rivet\r\nStyle:	Casual, Party\r\nMaterial:	Fabric\r\nComposition:	100% Polyester\r\nOccasion:	None', '<p>CMIN</p><figure class=\"table\"><table><tbody><tr><td><strong>Size</strong></td><td><strong>Crown</strong></td></tr><tr><td><strong>one-size</strong></td><td>57</td></tr></tbody></table></figure>', 41, 'grunge-punk-buckle-decor-baker-boy-cap-65f9a1f9881dd', 1, 0, '2023-12-01 18:18:18', '2023-12-01 18:18:18'),
(97, 'Butterfly Pendant Glasses Chain', 1, 22990000, 0, 1, 0, 23, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858487/uploads_ecommerce_php_5_1/phpA988_k245an.png', 0, 0, 'Color:	Multicolor\r\nMaterial:	Iron\r\nType:	Glasses Chain', '<figure class=\"table\"><table><tbody><tr><td><strong>Height</strong></td><td><strong>Length</strong></td></tr><tr><td><strong>75</strong></td><td>75</td></tr></tbody></table></figure><p>*This data was obtained from manually measuring the product, it may be off by 1-2 CM.</p>', 42, 'butterfly-pendant-glasses-chain-65f9a1246e862', 1, 10, '2023-12-01 18:22:08', '2023-12-01 18:22:08'),
(99, 'Fairycore Fashionable Women\'S Eyeglasses Suitable For Daily Match', 2, 500000, 0, 1, 0, 23, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858343/uploads_ecommerce_php_5_1/php84BF_hej9ki.png', 0, 0, 'WARNING: Fashion Glasses. Not to be worn outside to protect the eyes against strong sunlight. Not designed or intended for use in play by children\r\nLens Color:	Baby Pink\r\nShape:	Geometric\r\nFrame Material:	Copper\r\nLens Material:	PC\r\nMaterial:	PC', '<figure class=\"table\"><table><tbody><tr><td><strong>Style Type</strong></td><td><strong>Bridge</strong></td><td><strong>Lens Height</strong></td><td><strong>Lens Width</strong></td><td><strong>Temple Length</strong></td></tr><tr><td><strong>A</strong></td><td>2</td><td>5</td><td>6</td><td>15</td></tr></tbody></table></figure>', 42, 'fairycore-fashionable-womens-eyeglasses-suitable-for-daily-match-65f9a0ec50f88', 1, 4, '2023-12-08 14:52:35', '2023-12-08 14:52:35'),
(100, 'Grunge Punk Ladies\' Large Frame Wraparound Geometric Decor Fashion Sunglasses', 2, 990000, 0, 1, 0, 345, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858176/uploads_ecommerce_php_5_1/phpFAB4_cny9lw.png', 0, 0, 'WARNING: Fashion Glasses. Not to be worn outside to protect the eyes against strong sunlight. Not designed or intended for use in play by children\r\nLens Color:	Grey\r\nShape:	Oversized\r\nFrame Material:	Plastic\r\nLens Material:	PC\r\nMaterial:	PC', '<figure class=\"table\"><table><tbody><tr><td><strong>Bridge</strong></td><td><strong>Lens Height</strong></td><td><strong>Lens Width</strong></td><td><strong>Temple Length</strong></td></tr><tr><td><strong>1.9</strong></td><td>5</td><td>7.6</td><td>11.7</td></tr></tbody></table></figure>', 42, 'grunge-punk-ladies-large-frame-wraparound-geometric-decor-fashion-sunglasses-65f99ff1900f9', 1, 0, '2023-12-08 15:01:59', '2023-12-08 15:01:59'),
(101, 'Figure Charm Necklace', 4, 6290000, 0, 1, 1, 245, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710858026/uploads_ecommerce_php_5_1/phpB082_kizza8.png', 0, 0, 'Gender:	Women\r\nColor:	Multicolor\r\nMaterial:	Zinc Alloy', '<figure class=\"table\"><table><tbody><tr><td><strong>Size</strong></td><td><strong>Length</strong></td></tr><tr><td><strong>one-size</strong></td><td>45-50</td></tr></tbody></table></figure>', 43, 'figure-charm-necklace-65f99f5b7bac4', 1, 3, '2023-12-08 15:11:31', '2023-12-08 15:43:40'),
(102, '2pcs Rhinestone Decor Choker', 4, 9190000, 0, 1, 0, 345, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857900/uploads_ecommerce_php_5_1/phpC519_dokspe.png', 0, 0, 'Color:	Silver\r\nGender:	Women\r\nMaterial:	Iron Alloy\r\nDetails:	Rhinestone\r\nStyle:	Glamorous', '<figure class=\"table\"><table><tbody><tr><td><strong>Size</strong></td><td><strong>Length</strong></td></tr><tr><td><strong>one-size</strong></td><td>38.5</td></tr></tbody></table></figure>', 43, '2pcs-rhinestone-decor-choker-65f99eddb0f94', 1, 1, '2023-12-08 15:16:19', '2023-12-08 15:19:03'),
(103, 'Fairycore 3pcs Vintage Stone Pendant Necklace Set', 4, 2640000, 0, 1, 1, 367, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857698/uploads_ecommerce_php_5_1/phpA7F5_sff7gr.png', 5, 1, 'Color:	Green\r\nGender:	Women\r\nMaterial:	Iron Alloy', '<figure class=\"table\"><table><tbody><tr><td><strong>Size</strong></td><td><strong>Length</strong></td></tr><tr><td><strong>one-size</strong></td><td>34-72</td></tr></tbody></table></figure>', 43, 'fairycore-3pcs-vintage-stone-pendant-necklace-set-65f99e119fc0e', 1, 6, '2023-12-08 15:18:53', '2024-03-20 17:59:30'),
(104, 'Fairycore Women\'s Floral Print Backless Criss Cross Dress', 2, 3890000, 0, 1, 0, 245, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857479/uploads_ecommerce_php_5_1/php573F_sx1bni.png', 0, 0, 'Color:	Black\r\nStyle:	Sexy\r\nPattern Type:	Floral\r\nDetails:	Backless, Criss Cross, Draped\r\nNeckline:	Spaghetti Strap\r\nSleeve Length:	Sleeveless\r\nType:	Cami\r\nWaist Line:	Natural\r\nHem Shaped:	Pencil, Mermaid\r\nLength:	Mini\r\nFit Type:	Regular Fit\r\nFabric:	Non-Stretch\r\nMaterial:	Fabric\r\nComposition:	100% Polyester\r\nCare Instructions:	Machine wash or professional dry clean\r\nSheer:	No', '<figure class=\"table\"><table><tbody><tr><td><strong>Size</strong></td><td><strong>US</strong></td><td><strong>Bust</strong></td><td><strong>Hip Size</strong></td><td><strong>Length</strong></td><td><strong>Straps Length</strong></td><td><strong>Waist Size</strong></td></tr><tr><td><strong>XS</strong></td><td>2</td><td>72-90</td><td>80</td><td>123</td><td>36.4</td><td>64</td></tr><tr><td><strong>S</strong></td><td>4</td><td>76-94</td><td>84</td><td>125</td><td>37</td><td>68</td></tr><tr><td><strong>M</strong></td><td>6</td><td>80-98</td><td>88</td><td>127</td><td>37.6</td><td>72</td></tr><tr><td><strong>L</strong></td><td>8/10</td><td>86-104</td><td>94</td><td>129</td><td>38.4</td><td>78</td></tr><tr><td><strong>XL</strong></td><td>12</td><td>92-110</td><td>100</td><td>131</td><td>39.2</td><td>84</td></tr></tbody></table></figure>', 1, 'fairycore-womens-floral-print-backless-criss-cross-dress-65f99d3864827', 1, 5, '2023-12-08 15:22:22', '2023-12-08 15:22:41'),
(105, 'Street Life Men\'s Frayed Hem Denim Shorts With Pockets', 1, 11490000, 0, 1, 5, 356, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1710857166/uploads_ecommerce_php_5_1/php7587_yaf7a8.png', 5, 1, 'Color:\r\n\r\nBlue\r\n\r\nPattern Type:\r\n\r\nPlain\r\n\r\nDetails:\r\n\r\nButton, Pocket, Zipper\r\n\r\nType:\r\n\r\nWide Leg\r\n\r\nClosure Type:\r\n\r\nZipper Fly\r\n\r\nWaist Line:\r\n\r\nNatural\r\n\r\nLength:\r\n\r\nShort\r\n\r\nFit Type:\r\n\r\nLoose\r\n\r\nFabric:\r\n\r\nNon-Stretch\r\n\r\nMaterial:\r\n\r\nDenim\r\n\r\nComposition:\r\n\r\n68% Cotton, 16% Polyester, 14% Viscose, 2% Modal\r\n\r\nCare Instructions:\r\n\r\nMachine wash, do not dry clean\r\n\r\nSheer:\r\n\r\nNo', '<p>CMIN</p><figure class=\"table\"><table><tbody><tr><td><strong>Size</strong></td><td><strong>Hip Size</strong></td><td><strong>Inseam</strong></td><td><strong>Thigh</strong></td><td><strong>Waist Size</strong></td></tr><tr><td><strong>28</strong></td><td>101</td><td>22.8</td><td>65.4</td><td>76</td></tr><tr><td><strong>30</strong></td><td>106</td><td>23.4</td><td>68.2</td><td>81</td></tr><tr><td><strong>32</strong></td><td>111</td><td>24</td><td>71</td><td>86</td></tr><tr><td><strong>34</strong></td><td>116</td><td>24.6</td><td>73.8</td><td>91</td></tr><tr><td><strong>36</strong></td><td>121</td><td>25.2</td><td>76.6</td><td>96</td></tr></tbody></table></figure>', 1, 'street-life-mens-frayed-hem-denim-shorts-with-pockets-65f99c45d0916', 1, 11, '2023-12-08 15:27:15', '2023-12-26 19:06:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` smallint(6) NOT NULL DEFAULT 0,
  `discount` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_variants`
--

INSERT INTO `product_variants` (`id`, `prod_id`, `price`, `quantity`, `discount`) VALUES
(30, 91, 10890000, 34, 0),
(31, 91, 10890000, 23, 8),
(32, 91, 9990000, 88, 0),
(33, 92, 2190000, 230, 22),
(44, 98, 500000, 33, 0),
(45, 98, 450000, 34, 10),
(47, 92, 2340000, 367, 0),
(66, 107, 16990000, 443, 6),
(67, 107, 17990000, 332, 0),
(68, 107, 15990000, 321, 0),
(69, 107, 14990000, 44, 0),
(75, 110, 16990000, 334, 0),
(76, 110, 15990000, 0, 0),
(77, 111, 40000000, 23, 0),
(78, 111, 30000000, 34, 25),
(79, 111, 30000000, 78, 0),
(80, 112, 30000000, 33, 0),
(81, 112, 36000000, 45, 0),
(89, 105, 2000000, 457, 0),
(90, 105, 2100000, 2565, 0),
(91, 105, 2100000, 569, 5),
(93, 104, 2300000, 1801, 4),
(94, 104, 2300000, 4899, 8),
(95, 103, 2390000, 452, 0),
(96, 103, 2390000, 21465, 0),
(97, 104, 2100000, 233, 0),
(98, 103, 2190000, 2332, 0),
(99, 102, 7190000, 2221, 22),
(100, 102, 8190000, 1212, 0),
(101, 101, 5290000, 2221, 0),
(102, 101, 6090000, 2112, 3),
(103, 100, 940000, 2323, 0),
(104, 100, 690000, 2332, 0),
(105, 100, 990000, 1221, 0),
(106, 99, 490000, 1212, 0),
(107, 99, 500000, 1123, 0),
(108, 97, 21990000, 1132, 0),
(109, 97, 20990000, 1111, 9),
(110, 96, 13490000, 1134, 3),
(111, 96, 12890000, 0, 7),
(112, 94, 5390000, 2121, 5),
(113, 94, 5690000, 1123, 0),
(114, 90, 3190000, 0, 14),
(115, 90, 3290000, 2212, 11),
(116, 90, 3690000, 11323, 0),
(117, 89, 25490000, 1123, 2),
(118, 89, 22990000, 2234, 12),
(119, 89, 23990000, 2246, 8),
(120, 89, 25190000, 2213, 3),
(121, 88, 10340000, 0, 6),
(122, 88, 10945000, 2234, 0),
(123, 88, 10440000, 1123, 5),
(124, 88, 10940000, 2234, 0),
(125, 87, 21190000, 2223, 8),
(126, 87, 22290000, 2211, 3),
(127, 87, 22190000, 3223, 3),
(128, 87, 21990000, 3232, 4),
(129, 86, 31569000, 2223, 9),
(130, 86, 33569000, 122, 3),
(131, 86, 34211000, 211, 1),
(132, 85, 5990000, 222, 14),
(133, 85, 4990000, 1123, 29),
(134, 85, 6110000, 1123, 13),
(135, 84, 5081000, 222, 2),
(136, 84, 5001000, 0, 3),
(137, 84, 5000000, 2332, 3),
(138, 83, 31990000, 221, 9),
(139, 83, 32990000, 2213, 6),
(140, 83, 33990000, 1123, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `supplier_id`, `create_at`, `update_at`) VALUES
(2, 1, '2024-01-07 09:18:20', '2024-03-20 17:45:33'),
(3, 3, '2024-03-20 17:36:38', '2024-03-20 18:01:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `purchase_order_details`
--

CREATE TABLE `purchase_order_details` (
  `id` int(11) NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `purchase_order_details`
--

INSERT INTO `purchase_order_details` (`id`, `purchase_order_id`, `prod_name`, `quantity`, `price`, `create_at`, `update_at`) VALUES
(1, 2, 'Điện thoại iPhone 15 Pro Max 256GB ( 1TB,  Titan tự nhiên )', 4, 500000, '2024-01-07 09:18:20', '2024-01-07 09:18:20'),
(2, 2, 'Điện thoại iPhone 15 Pro Max 256GB ( 1TB,  Titan tự nhiên )', 1, 500000, '2024-01-07 09:19:08', '2024-01-07 09:19:08'),
(3, 2, 'Máy tính bảng Samsung Galaxy Tab A9+ 5G  (  512GB, Màu xám )', 2, 2222222, '2024-01-07 09:42:49', '2024-01-07 09:42:49'),
(4, 2, 'Điện thoại iPhone 15 Plus 512GB (  512GB,  Màu hồng )', 9, 500000, '2024-01-07 09:43:50', '2024-01-07 09:43:50'),
(5, 2, 'Máy tính siêu nhân new 2 ( 64GB, 4GB )', 222, 500000, '2024-01-07 09:48:46', '2024-01-07 09:48:46'),
(6, 2, 'Máy tính bảng Samsung Galaxy Tab A9+ 5G  (  512GB, Màu xám )', 4, 500000, '2024-01-07 10:54:19', '2024-01-07 10:54:19'),
(7, 2, 'Fairycore Women\'s Floral Print Backless Criss Cross Dress ( 28, Màu đen )', 4567, 230000, '2024-03-19 22:01:22', '2024-03-19 22:01:22'),
(8, 2, 'Fairycore Women\'s Floral Print Backless Criss Cross Dress ( 27, Màu đen )', 567, 500000, '2024-03-19 22:01:35', '2024-03-19 22:01:35'),
(9, 2, 'Fairycore Women\'s Floral Print Backless Criss Cross Dress ( 26, Màu đen )', 567, 500000, '2024-03-19 22:01:42', '2024-03-19 22:01:42'),
(10, 2, 'Fairycore Women\'s Floral Print Backless Criss Cross Dress ( 26, Màu đen )', 334, 500000, '2024-03-19 22:01:50', '2024-03-19 22:01:50'),
(11, 2, 'Street Life Men\'s Frayed Hem Denim Shorts With Pockets (  m,  Màu xanh dương )', 334, 500000, '2024-03-19 22:01:56', '2024-03-19 22:01:56'),
(12, 2, 'Street Life Men\'s Frayed Hem Denim Shorts With Pockets (  Màu xanh dương,  s )', 334, 700000, '2024-03-19 22:02:07', '2024-03-19 22:02:07'),
(13, 2, 'Street Life Men\'s Frayed Hem Denim Shorts With Pockets ( sx,  Màu xanh dương )', 334, 400000, '2024-03-19 22:02:15', '2024-03-19 22:02:15'),
(14, 3, 'Street Life Men\'s Frayed Hem Denim Shorts With Pockets (  Màu xanh dương, SX )', 123, 500000, '2024-03-20 17:36:38', '2024-03-20 17:36:38'),
(15, 2, 'Street Life Men\'s Frayed Hem Denim Shorts With Pockets (  Màu xanh dương,  S )', 2231, 500000, '2024-03-20 17:36:49', '2024-03-20 17:36:49'),
(16, 2, 'Street Life Men\'s Frayed Hem Denim Shorts With Pockets (  Màu xanh dương,  M )', 123, 230000, '2024-03-20 17:36:56', '2024-03-20 17:36:56'),
(17, 2, 'Fairycore Women\'s Floral Print Backless Criss Cross Dress ( Màu đen, 27 )', 1234, 500000, '2024-03-20 17:37:02', '2024-03-20 17:37:02'),
(18, 2, 'Fairycore Women\'s Floral Print Backless Criss Cross Dress ( 28, Màu đen )', 332, 500000, '2024-03-20 17:37:09', '2024-03-20 17:37:09'),
(19, 2, 'Fairycore 3pcs Vintage Stone Pendant Necklace Set ( Màu đen, 26 )', 231, 500000, '2024-03-20 17:37:15', '2024-03-20 17:37:15'),
(20, 2, 'Fairycore 3pcs Vintage Stone Pendant Necklace Set ( Màu đen, 27 )', 233, 230000, '2024-03-20 17:37:25', '2024-03-20 17:37:25'),
(21, 2, 'Fairycore Women\'s Floral Print Backless Criss Cross Dress ( Màu đen, 25 )', 233, 400001, '2024-03-20 17:37:33', '2024-03-20 17:37:33'),
(22, 2, 'Fairycore 3pcs Vintage Stone Pendant Necklace Set ( Màu đen, 30 )', 2332, 500000, '2024-03-20 17:37:39', '2024-03-20 17:37:39'),
(23, 2, 'Anime Men\'s Printed T-shirt ( Màu trắng,  L )', 2332, 500000, '2024-03-20 17:37:48', '2024-03-20 17:37:48'),
(24, 3, 'Anime Men\'s Printed T-shirt ( Màu trắng,  S )', 222, 900000, '2024-03-20 17:38:26', '2024-03-20 17:38:26'),
(25, 2, 'Figure Charm Necklace ( Màu vàng nhạt, 25 )', 2222, 500000, '2024-03-20 17:38:35', '2024-03-20 17:38:35'),
(26, 2, 'Figure Charm Necklace ( 26, Màu vàng nhạt )', 2112, 230000, '2024-03-20 17:38:42', '2024-03-20 17:38:42'),
(27, 2, 'Grunge Punk Ladies\' Large Frame Wraparound Geometric Decor Fashion Sunglasses ( Màu xám )', 2323, 500000, '2024-03-20 17:38:48', '2024-03-20 17:38:48'),
(28, 2, 'Grunge Punk Ladies\' Large Frame Wraparound Geometric Decor Fashion Sunglasses (  Màu bạc )', 2332, 500000, '2024-03-20 17:38:52', '2024-03-20 17:38:52'),
(29, 2, 'Grunge Punk Ladies\' Large Frame Wraparound Geometric Decor Fashion Sunglasses ( Màu đen )', 1221, 400000, '2024-03-20 17:39:00', '2024-03-20 17:39:00'),
(30, 2, 'Fairycore Fashionable Women\'S Eyeglasses Suitable For Daily Match (  Màu hồng )', 1212, 500000, '2024-03-20 17:39:06', '2024-03-20 17:39:06'),
(31, 2, 'Fairycore Fashionable Women\'S Eyeglasses Suitable For Daily Match ( Màu xám )', 1123, 500000, '2024-03-20 17:39:12', '2024-03-20 17:39:12'),
(32, 2, 'Butterfly Pendant Glasses Chain ( Màu trắng ngà, 25 )', 1132, 500000, '2024-03-20 17:39:17', '2024-03-20 17:39:17'),
(33, 2, 'Butterfly Pendant Glasses Chain (  Màu hồng, 26 )', 1111, 500000, '2024-03-20 17:39:24', '2024-03-20 17:39:24'),
(34, 2, 'Grunge Punk Buckle Decor Baker Boy Cap (  Màu hồng )', 1134, 500000, '2024-03-20 17:39:30', '2024-03-20 17:39:30'),
(35, 2, '1pc Plain Square Makeup Bag Black Friday ( Màu đen )', 2212, 500000, '2024-03-20 17:39:37', '2024-03-20 17:39:37'),
(36, 2, '1pc Plain Square Makeup Bag Black Friday ( Màu trắng )', 11323, 500000, '2024-03-20 17:39:43', '2024-03-20 17:39:43'),
(37, 2, 'Goth Women\'s 2024 New Arrivals Dark Punk Lace-Up Platform Wedge Heel Knight Boots For Spring/Autumn ( 25, Màu đen )', 1123, 500000, '2024-03-20 17:39:49', '2024-03-20 17:39:49'),
(38, 2, 'Goth Women\'s 2024 New Arrivals Dark Punk Lace-Up Platform Wedge Heel Knight Boots For Spring/Autumn ( 26, Màu đen )', 2234, 230000, '2024-03-20 17:40:00', '2024-03-20 17:40:00'),
(39, 2, 'Goth Women\'s 2024 New Arrivals Dark Punk Lace-Up Platform Wedge Heel Knight Boots For Spring/Autumn ( 27, Màu đen )', 1123, 500000, '2024-03-20 17:40:07', '2024-03-20 17:40:07'),
(40, 2, 'Goth Women\'s 2024 New Arrivals Dark Punk Lace-Up Platform Wedge Heel Knight Boots For Spring/Autumn ( 27, Màu đen )', 1123, 500000, '2024-03-20 17:40:14', '2024-03-20 17:40:14'),
(41, 2, 'Goth Women\'s 2024 New Arrivals Dark Punk Lace-Up Platform Wedge Heel Knight Boots For Spring/Autumn ( 28, Màu đen )', 2213, 400003, '2024-03-20 17:40:21', '2024-03-20 17:40:21'),
(42, 2, 'Chocolate Brown Solid Color Boots With Buckle Decor, Side Zipper, Lace-up Closure And Cap Toe ( 28, Màu nâu )', 2234, 500000, '2024-03-20 17:40:30', '2024-03-20 17:40:30'),
(43, 2, 'Chocolate Brown Solid Color Boots With Buckle Decor, Side Zipper, Lace-up Closure And Cap Toe ( 29, Màu nâu )', 1123, 230000, '2024-03-20 17:40:41', '2024-03-20 17:40:41'),
(44, 2, 'Chocolate Brown Solid Color Boots With Buckle Decor, Side Zipper, Lace-up Closure And Cap Toe ( 30, Màu nâu )', 2234, 523111, '2024-03-20 17:40:56', '2024-03-20 17:40:56'),
(45, 2, 'Goth 2023 New Arrival Women\'s Loafers, British Style Slip-On Flat Shoes For Women, Black ( 26, Màu đen )', 2223, 500000, '2024-03-20 17:41:06', '2024-03-20 17:41:06'),
(46, 2, 'Goth 2023 New Arrival Women\'s Loafers, British Style Slip-On Flat Shoes For Women, Black ( Màu đen, 27 )', 2211, 500000, '2024-03-20 17:41:13', '2024-03-20 17:41:13'),
(47, 2, 'Goth 2023 New Arrival Women\'s Loafers, British Style Slip-On Flat Shoes For Women, Black ( 28, Màu đen )', 3223, 500000, '2024-03-20 17:41:19', '2024-03-20 17:41:19'),
(48, 2, 'Goth 2023 New Arrival Women\'s Loafers, British Style Slip-On Flat Shoes For Women, Black ( 29, Màu đen )', 3232, 1121111, '2024-03-20 17:41:29', '2024-03-20 17:41:29'),
(49, 2, 'Fairycore Ladies\' Mushroom & Vine Embroidery Suspenders Mid-length Skirt ( Màu vàng nhạt, SX )', 222, 112333, '2024-03-20 17:41:43', '2024-03-20 17:41:43'),
(50, 2, 'Fairycore Ladies\' Mushroom & Vine Embroidery Suspenders Mid-length Skirt ( Màu vàng nhạt,  L )', 1123, 500000, '2024-03-20 17:41:50', '2024-03-20 17:41:50'),
(51, 2, 'Fairycore Ladies\' Mushroom & Vine Embroidery Suspenders Mid-length Skirt ( Màu vàng nhạt, XL )', 1123, 500000, '2024-03-20 17:41:57', '2024-03-20 17:41:57'),
(52, 3, 'The Powerpuff Girls | ROMWE Plus Size Cartoon Printed Racerback Bra & Panty Set (  Màu hồng, SX )', 2223, 500000, '2024-03-20 17:42:52', '2024-03-20 17:42:52'),
(53, 2, 'The Powerpuff Girls | ROMWE Plus Size Cartoon Printed Racerback Bra & Panty Set (  Màu hồng,  S )', 122, 500000, '2024-03-20 17:43:03', '2024-03-20 17:43:03'),
(54, 2, 'The Powerpuff Girls | ROMWE Plus Size Cartoon Printed Racerback Bra & Panty Set (  Màu hồng,  M )', 211, 400002, '2024-03-20 17:43:10', '2024-03-20 17:43:10'),
(55, 3, 'Street Life Men\'s Letter Printed Weaved Shorts Suitable For Spring And Summer (  Màu xanh dương,  S )', 221, 500000, '2024-03-20 17:43:35', '2024-03-20 17:43:35'),
(56, 2, 'Street Life Men\'s Letter Printed Weaved Shorts Suitable For Spring And Summer (  Màu xanh dương,  M )', 2213, 500000, '2024-03-20 17:43:41', '2024-03-20 17:43:41'),
(57, 2, 'Street Life Men\'s Letter Printed Weaved Shorts Suitable For Spring And Summer (  Màu xanh dương, XL )', 1123, 400000, '2024-03-20 17:43:48', '2024-03-20 17:43:48'),
(58, 3, 'Fairycore 3pcs Vintage Stone Pendant Necklace Set ( Màu đen, 26 )', 221, 333111, '2024-03-20 17:44:07', '2024-03-20 17:44:07'),
(59, 2, 'Fairycore 3pcs Vintage Stone Pendant Necklace Set ( Màu đen, 27 )', 21233, 500000, '2024-03-20 17:44:20', '2024-03-20 17:44:20'),
(60, 3, '2pcs Rhinestone Decor Choker ( Màu vàng nhạt,  S, 25 )', 2221, 230000, '2024-03-20 17:44:48', '2024-03-20 17:44:48'),
(61, 3, '2pcs Rhinestone Decor Choker ( Màu vàng nhạt,  S, 26 )', 1212, 400000, '2024-03-20 17:44:55', '2024-03-20 17:44:55'),
(62, 3, 'Goth 1pc Moon & Cat Pattern Square Makeup Bag (  Màu hồng )', 2121, 400000, '2024-03-20 17:45:18', '2024-03-20 17:45:18'),
(63, 2, 'Goth 1pc Moon & Cat Pattern Square Makeup Bag ( Màu xám )', 1123, 500000, '2024-03-20 17:45:33', '2024-03-20 17:45:33'),
(64, 3, 'Street Life Men\'s Frayed Hem Denim Shorts With Pockets (  Màu xanh dương,  M )', 112, 500000, '2024-03-20 18:01:56', '2024-03-20 18:01:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `prod_id`, `user_id`, `star`, `comment`, `status`, `create_at`, `update_at`) VALUES
(2, 83, 4, 4, 'San pham that su chat luong', 1, '2023-11-23 14:58:53', '2023-12-06 20:30:05'),
(3, 83, 25, 4, 'Người dùng không để lại cảm nghĩ.', 1, '2023-11-23 15:03:49', '2023-11-23 15:27:00'),
(4, 92, 4, 5, 'Sản phẩm đỉnh thựt sự không thể tin nổi <3333', 1, '2023-12-01 20:36:40', '2023-12-01 20:37:08'),
(5, 85, 25, 5, 'Sản phẩm xịn', 1, '2023-12-05 10:07:41', '2023-12-05 10:07:41'),
(6, 86, 26, 4, 'Sản phẩm tốt nhỉ', 1, '2023-12-05 10:08:01', '2023-12-05 10:08:01'),
(7, 84, 28, 5, 'Sản phẩm đẹp hết nước chấm', 1, '2023-12-05 10:08:16', '2023-12-05 10:08:16'),
(8, 89, 27, 1, 'Sản phẩm cũ quá tệ', 1, '2023-12-05 10:08:29', '2023-12-05 10:08:29'),
(9, 90, 29, 5, 'Sản phẩm nhiều lượt mua', 1, '2023-12-05 10:08:56', '2023-12-05 10:08:58'),
(10, 110, 30, 1, 'Sản phẩm tồi quá', 1, '2023-12-08 22:01:34', '2023-12-08 22:01:55'),
(11, 83, 9, 5, 'Sản phẩm rất tốt', 1, '2023-12-09 09:33:59', '2023-12-09 09:33:59'),
(12, 108, 34, 5, 'San  pham rat sin', 1, '2023-12-22 20:53:04', '2023-12-22 20:53:04'),
(13, 105, 35, 5, 'San pham chat luong cao', 1, '2023-12-26 19:06:31', '2023-12-26 19:06:31'),
(14, 114, 10, 4, 'Hay lam', 1, '2024-01-09 15:22:02', '2024-01-09 15:22:02'),
(15, 87, 4, 5, 'Hay ma', 1, '2024-01-09 15:22:02', '2024-01-09 15:22:02'),
(16, 109, 4, 3, 'test comment', 1, '2024-01-10 19:13:30', '2024-01-10 19:13:30'),
(17, 103, 39, 5, 'Sản phẩm rất tốt', 1, '2024-03-20 17:59:30', '2024-03-20 17:59:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Người quản trị'),
(2, 'seller', 'Người bán hàng'),
(3, 'customer', 'Khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_custom`
--

CREATE TABLE `store_custom` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `open_time` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `store_custom`
--

INSERT INTO `store_custom` (`id`, `name`, `phone`, `email`, `address`, `logo`, `open_time`, `create_at`, `update_at`) VALUES
(1, 'Ekka Shop', '0332225690', 'admin@gmail.com', 'Tầng 1 siêu thị Winmart Nhật Tân,\r\nNg. 689 Đ. Lạc Long Quân, Phú Thượng, Tây Hồ, Hà Nội', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1704866112/uploads_ecommerce_php_5_1/php103C_r0kveo.png', 'Thứ hai đến thứ 7: 9am - 10pm | Chủ nhật: 10am - 6pm ', '2023-11-22 20:10:13', '2023-11-22 20:10:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `email`, `address`, `create_at`, `update_at`) VALUES
(1, 'VŨ NGỌC TÂN 2', '+84332225690', 'vungoctan3@gmail.comm', 'Dong anh HA NOI 2', '2024-01-06 20:42:21', '2024-01-06 20:42:21'),
(3, 'HUng van nguyen', '0223334902', 'hungvannguyen@gmail.cpm', 'Hà nọi hà nồng', '2024-01-07 09:50:27', '2024-01-07 09:50:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg',
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `isBlock` tinyint(4) NOT NULL DEFAULT 0,
  `role_id` tinyint(4) NOT NULL DEFAULT 3,
  `accessToken` text NOT NULL,
  `refreshToken` varchar(500) NOT NULL,
  `create_At` datetime NOT NULL DEFAULT current_timestamp(),
  `update_At` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `password`, `avatar`, `address`, `phone`, `isBlock`, `role_id`, `accessToken`, `refreshToken`, `create_At`, `update_At`) VALUES
(4, 'Phúc (admin)', 'admin@gmail.com', '$2y$10$kz/Xzp/xNuEXzX.4BkCjzOGtUEMsvmd8hwWqyJ119ZdI9tjbtqnP6', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', 'Dong anh HA NOI', '0993346890', 0, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo0LCJyb2xlX2lkIjoxLCJmdWxsbmFtZSI6IlRcdTAwZTJuIChhZG1pbikiLCJhdmF0YXIiOiJodHRwczpcL1wvdDQuZnRjZG4ubmV0XC9qcGdcLzA1XC80OVwvOThcLzM5XC8zNjBfRl81NDk5ODM5NzBfYlJDa1lmazBQNlBQNWZLYk1oWk1JYjA3bUNKNmVzWEwuanBnIiwiaXNCbG9jayI6MCwiZXhwIjoxNzEwOTQzMzk1fQ.le5eRr0TCDxwzBrON69ISbmONas00sy74K9oZgGX0rM', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWZyZXNoVG9rZW4iOjQsImV4cCI6MTcxMTU0MDk5NX0.0EeYmYe_tNuIsptTtYuoe9T3g_P5Rd7id7FlvtzbyEw', '2023-10-02 08:15:37', '2024-03-20 19:03:15'),
(9, 'Trần Văn B', 'tranvanb@gmail.com', '$2y$10$zZczTvtUBq3oGMNhz0vph.dV7OAgz0r51T.56g9GURE9vZnRg3sam', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700472991/uploads_WEB2041_Ecommerce/phpADF_qwzk6l.jpg', 'Việt trì, Phú thọ', '0332225678', 0, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo5LCJyb2xlX2lkIjozLCJmdWxsbmFtZSI6IlRyXHUxZWE3biBWXHUwMTAzbiBCIiwiYXZhdGFyIjoiaHR0cHM6XC9cL3Jlcy5jbG91ZGluYXJ5LmNvbVwvZGZna2trY29jXC9pbWFnZVwvdXBsb2FkXC92MTcwMDQ3Mjk5MVwvdXBsb2Fkc19XRUIyMDQxX0Vjb21tZXJjZVwvcGhwQURGX3F3ems2bC5qcGciLCJpc0Jsb2NrIjowLCJleHAiOjE3MDIwOTY1ODN9.TrS6opnRK664lGp5-2mSFUbQxk39i9KpgHNb3kugk_0', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWZyZXNoVG9rZW4iOjksImV4cCI6MTcwMjY5NDE4M30.P9kYZ5ns5KtOFOQ1jJzoQLrnWyktzBl4g0ExktUXDR4', '2023-10-02 19:26:25', '2023-12-09 09:36:23'),
(10, 'tan c', 'tanc@fpt.edu.vn', '$2y$10$Qtu1Pelsaj8mi4AIxnVziurp53xeH7VuV0tJSCC1aBuua4.Ld5FCC', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '0990006780', 0, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMCwicm9sZV9pZCI6MywiZnVsbG5hbWUiOiJ0YW4gYyIsImF2YXRhciI6Imh0dHBzOlwvXC90NC5mdGNkbi5uZXRcL2pwZ1wvMDVcLzQ5XC85OFwvMzlcLzM2MF9GXzU0OTk4Mzk3MF9iUkNrWWZrMFA2UFA1ZktiTWhaTUliMDdtQ0o2ZXNYTC5qcGciLCJpc0Jsb2NrIjowLCJleHAiOjE3MDE4Nzk1MzR9.cO9B9tiQ5cqIMvmpwS01lLEVBl8YVv7Fza3a6WuwO2g', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWZyZXNoVG9rZW4iOjEwLCJleHAiOjE3MDI0NzcxMzR9.P2zdNg0HJkRySMiMPtoWud1zt6Rj9Y36MkHZfeqLQJw', '2023-10-06 20:46:35', '2023-12-06 21:18:54'),
(24, ' Tân (seller)', 'seller@gmail.com', '$2y$10$6uO.PhPLoZ58CU7n4C5NVO49w6K.sWF4Ki94kj.RJXvq7s1i0HILq', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '0993334859', 0, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyNCwicm9sZV9pZCI6MiwiZnVsbG5hbWUiOiJWXHUwMTY5IE5nXHUxZWNkYyBUXHUwMGUybiAoc2VsbGVyKSIsImF2YXRhciI6Imh0dHBzOlwvXC90NC5mdGNkbi5uZXRcL2pwZ1wvMDVcLzQ5XC85OFwvMzlcLzM2MF9GXzU0OTk4Mzk3MF9iUkNrWWZrMFA2UFA1ZktiTWhaTUliMDdtQ0o2ZXNYTC5qcGciLCJpc0Jsb2NrIjowLCJleHAiOjE3MDE4NzY5NDJ9.APSYd99yPCmkXRWR1vB4p7Pig-ZlxFFQpExbFnxMz48', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWZyZXNoVG9rZW4iOjI0LCJleHAiOjE3MDI0NzQ1NDJ9.Cs6Y3ZNbn0c9IvbHTqtIFcMMAEtt_iiJzetJW7FGTIo', '2023-11-21 16:57:39', '2023-12-06 20:35:42'),
(25, 'Tran Van E', 'tranvane@gmail.com', '$2y$10$CRCZd4az1iD2h.LC5tN/2uQPB1nGnrnlUX0Ik4mBvfm6B6wYbi6c.', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '0332225670', 0, 3, '', '', '2023-11-21 17:16:37', '2023-12-06 20:44:28'),
(27, 'Tran Van D', 'tranvand@gmail.com', '$2y$10$p4.DIhuWHvWuckdPcdgny.0jOSKOcrQ5oaVgQ23rChW0RmQmexxhm', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2023-12-06 20:43:18', '2023-12-06 20:43:18'),
(28, 'Tran Van A', 'tranvana@gmail.com', '$2y$10$sV0z5asIX4CIK8LTMfZ6SOU.M9D0cgENqrmT2gRAR/3XJRSvm5sVa', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2023-12-06 20:43:47', '2023-12-06 20:43:47'),
(29, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '$2y$10$zay92B3AqYqDWuI8gPptnOm17QmbntsXXzCfNG0bGl29bbfKEY/A6', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2023-12-06 20:45:03', '2023-12-06 20:45:03'),
(30, 'Nguyen Van B', 'nguyenvanb@gmail.com', '$2y$10$HPF93P/Hhx4hiJ6bxCsTXeUHEg3e0qS7VY5wJ1MizBAuGgYM4TGce', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2023-12-06 20:45:33', '2023-12-06 20:45:33'),
(31, 'Nguyễn Văn C', 'nguyenvanc@gmail.com', '$2y$10$.v8BrlRF6cF.dOfVfGkqluPxarzCTGwDr.0Jw8tj.nsYhuPl.g3tW', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2023-12-06 20:46:12', '2023-12-06 20:46:12'),
(32, 'Nguyên Văn E', 'nguyenvane@gmail.com', '$2y$10$XMyOYhwuMLEM/4JLJahsrek1l5aqqO2xbi8r/QKWVXfYtZPbcmfFW', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2023-12-06 20:46:36', '2023-12-06 20:46:36'),
(35, 'Tan', 'vung@gmail.com', '$2y$10$8fnmtdF/6EjSSrcMDWteEe2WyPGRpaqd3ZEVGe90Q0ZBLxCYTwka2', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', 'Ha tay', '0993332890', 0, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozNSwicm9sZV9pZCI6MywiZnVsbG5hbWUiOiJUYW4iLCJhdmF0YXIiOiJodHRwczpcL1wvdDQuZnRjZG4ubmV0XC9qcGdcLzA1XC80OVwvOThcLzM5XC8zNjBfRl81NDk5ODM5NzBfYlJDa1lmazBQNlBQNWZLYk1oWk1JYjA3bUNKNmVzWEwuanBnIiwiaXNCbG9jayI6MCwiZXhwIjoxNzAzNTk5MzMxfQ.ati8IS36V2U-ekvN2b-b7Yuv4x314zvQm1Bj1EVZpBI', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWZyZXNoVG9rZW4iOjM1LCJleHAiOjE3MDQxOTY5MzF9.e3ybxa4zvjEJJFQuvS6Zq4jT2lVyRi_7rSmdTZqMaGw', '2023-12-26 19:02:01', '2023-12-26 19:13:13'),
(37, 'VŨ NGỌC TÂN', 'vungoctan222@gmail.com', '$2y$10$EYPbqTq3.aVdMEb9nx/8Zut9hzTbJ8qYK6fC74Lf9ca2Yyc/V7vI.', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozNywicm9sZV9pZCI6MywiZnVsbG5hbWUiOiJWXHUwMTY4IE5HXHUxZWNjQyBUXHUwMGMyTiIsImF2YXRhciI6Imh0dHBzOlwvXC90NC5mdGNkbi5uZXRcL2pwZ1wvMDVcLzQ5XC85OFwvMzlcLzM2MF9GXzU0OTk4Mzk3MF9iUkNrWWZrMFA2UFA1ZktiTWhaTUliMDdtQ0o2ZXNYTC5qcGciLCJpc0Jsb2NrIjowLCJleHAiOjE3MDQ3MDUyNTN9.c1hnAFpqJ4q-RBjSiti99SJ--7C13IobY-ZqNOhIzOs', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWZyZXNoVG9rZW4iOjM3LCJleHAiOjE3MDUzMDI4NTN9._Aqf160DIHCsrhSf5x71leKWOaAtHZVyM02T7KiB1Pk', '2024-01-08 14:13:52', '2024-01-08 14:14:13'),
(38, 'VŨ NGỌC TÂN', 'vungoctan.v22@gmail.com', '$2y$10$D1ENbp3n.KCp3sXy/63ejeEtjoKGnDo21xwY5v8ohe8lfI1HRROIK', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2024-01-08 14:22:25', '2024-01-08 14:28:48'),
(39, 'Vũ Ngọc Tân', 'vungoctan.vnt63@gmail.com', '$2y$10$p5rxXXEjJT2ybfhVNeHTJua/v4JQuo0rprLmHF8ClOTEqea42CJXy', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozOSwicm9sZV9pZCI6MywiZnVsbG5hbWUiOiJWXHUwMTY5IE5nXHUxZWNkYyBUXHUwMGUybiIsImF2YXRhciI6Imh0dHBzOlwvXC90NC5mdGNkbi5uZXRcL2pwZ1wvMDVcLzQ5XC85OFwvMzlcLzM2MF9GXzU0OTk4Mzk3MF9iUkNrWWZrMFA2UFA1ZktiTWhaTUliMDdtQ0o2ZXNYTC5qcGciLCJpc0Jsb2NrIjowLCJleHAiOjE3MTA5MzkyNDR9.H0yZBiXShqJp58SJhwS7fHhDuOT5lb8oPQ0Od8_9z7M', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWZyZXNoVG9rZW4iOjM5LCJleHAiOjE3MTE1MzY4NDR9.j9ui4hasv1X1Hm2xl7SkDDN7c6htUW3O0AyDl7EDDl4', '2024-03-20 17:53:54', '2024-03-20 17:54:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `variants_value`
--

CREATE TABLE `variants_value` (
  `id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `variants_value`
--

INSERT INTO `variants_value` (`id`, `product_variant_id`, `attribute_id`, `attribute_value_id`) VALUES
(80, 30, 20, 18),
(81, 30, 21, 21),
(82, 30, 23, 40),
(83, 31, 20, 18),
(84, 31, 21, 20),
(85, 31, 23, 40),
(86, 32, 20, 17),
(87, 32, 21, 21),
(88, 32, 23, 39),
(89, 33, 23, 43),
(109, 44, 23, 43),
(110, 44, 32, 45),
(111, 45, 23, 44),
(112, 45, 32, 45),
(114, 47, 23, 44),
(137, 66, 20, 18),
(138, 66, 21, 21),
(139, 66, 23, 44),
(140, 67, 20, 18),
(141, 67, 21, 21),
(142, 67, 23, 43),
(143, 68, 20, 17),
(144, 68, 21, 21),
(145, 68, 23, 43),
(146, 69, 20, 17),
(147, 69, 21, 20),
(148, 69, 23, 43),
(160, 75, 23, 43),
(161, 76, 23, 44),
(162, 77, 20, 17),
(163, 77, 21, 20),
(164, 77, 23, 28),
(165, 78, 20, 17),
(166, 78, 21, 21),
(167, 78, 23, 29),
(168, 79, 20, 18),
(169, 79, 23, 24),
(170, 80, 20, 17),
(171, 80, 21, 20),
(172, 80, 23, 44),
(173, 81, 20, 18),
(174, 81, 21, 20),
(175, 81, 23, 43),
(191, 89, 23, 41),
(192, 89, 34, 60),
(193, 90, 23, 41),
(194, 90, 34, 61),
(195, 91, 23, 41),
(196, 91, 34, 62),
(199, 93, 23, 43),
(200, 93, 35, 67),
(201, 94, 23, 43),
(202, 94, 35, 68),
(203, 95, 23, 43),
(204, 95, 35, 66),
(205, 96, 23, 43),
(206, 96, 35, 67),
(207, 97, 23, 43),
(208, 97, 35, 65),
(209, 98, 23, 43),
(210, 98, 35, 70),
(211, 99, 23, 42),
(212, 99, 34, 61),
(213, 99, 35, 65),
(214, 100, 23, 42),
(215, 100, 34, 61),
(216, 100, 35, 66),
(217, 101, 23, 42),
(218, 101, 35, 65),
(219, 102, 23, 42),
(220, 102, 35, 66),
(221, 103, 23, 39),
(222, 104, 23, 40),
(223, 105, 23, 43),
(224, 106, 23, 24),
(225, 107, 23, 39),
(226, 108, 23, 22),
(227, 108, 35, 65),
(228, 109, 23, 24),
(229, 109, 35, 66),
(230, 110, 23, 24),
(231, 111, 23, 43),
(232, 112, 23, 24),
(233, 113, 23, 39),
(234, 114, 23, 24),
(235, 115, 23, 43),
(236, 116, 23, 44),
(237, 117, 23, 43),
(238, 117, 35, 65),
(239, 118, 23, 43),
(240, 118, 35, 66),
(241, 119, 23, 43),
(242, 119, 35, 67),
(243, 120, 23, 43),
(244, 120, 35, 68),
(245, 121, 23, 72),
(246, 121, 35, 65),
(247, 122, 23, 72),
(248, 122, 35, 68),
(249, 123, 23, 72),
(250, 123, 35, 69),
(251, 124, 23, 72),
(252, 124, 35, 70),
(253, 125, 23, 43),
(254, 125, 35, 66),
(255, 126, 23, 43),
(256, 126, 35, 67),
(257, 127, 23, 43),
(258, 127, 35, 68),
(259, 128, 23, 43),
(260, 128, 35, 69),
(261, 129, 23, 24),
(262, 129, 34, 60),
(263, 130, 23, 24),
(264, 130, 34, 61),
(265, 131, 23, 24),
(266, 131, 34, 62),
(267, 132, 23, 42),
(268, 132, 34, 60),
(269, 133, 23, 42),
(270, 133, 34, 63),
(271, 134, 23, 42),
(272, 134, 34, 71),
(273, 135, 23, 44),
(274, 135, 34, 61),
(275, 136, 23, 44),
(276, 136, 34, 62),
(277, 137, 23, 44),
(278, 137, 34, 63),
(279, 138, 23, 41),
(280, 138, 34, 61),
(281, 139, 23, 41),
(282, 139, 34, 62),
(283, 140, 23, 41),
(284, 140, 34, 71);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `create_at`, `update_at`) VALUES
(1, 4, '2024-01-09 16:19:11', '2024-01-09 16:19:11'),
(2, 39, '2024-03-20 17:55:06', '2024-03-20 17:55:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist_item`
--

CREATE TABLE `wishlist_item` (
  `id` int(11) NOT NULL,
  `wishlist_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist_item`
--

INSERT INTO `wishlist_item` (`id`, `wishlist_id`, `product_variant_id`) VALUES
(4, 1, 26),
(5, 1, 27),
(8, 2, 106),
(9, 2, 107);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`product_variant_id`),
  ADD KEY `prod_id_2` (`product_variant_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `product_variant_id` (`product_variant_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact_help`
--
ALTER TABLE `contact_help`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Chỉ mục cho bảng `images_product`
--
ALTER TABLE `images_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_variant_id` (`product_variant_id`),
  ADD KEY `product_id` (`product_variant_id`),
  ADD KEY `product_variant_id_2` (`product_variant_id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_method_id` (`payment_method_id`,`payment_transaction_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Chỉ mục cho bảng `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`,`user_id`),
  ADD KEY `prod_id_2` (`prod_id`,`user_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `store_custom`
--
ALTER TABLE `store_custom`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`phone`),
  ADD KEY `email_2` (`email`,`phone`),
  ADD KEY `email_3` (`email`,`phone`);

--
-- Chỉ mục cho bảng `variants_value`
--
ALTER TABLE `variants_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variant_id` (`product_variant_id`,`attribute_id`,`attribute_value_id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `contact_help`
--
ALTER TABLE `contact_help`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `images_product`
--
ALTER TABLE `images_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `store_custom`
--
ALTER TABLE `store_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `variants_value`
--
ALTER TABLE `variants_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wishlist_item`
--
ALTER TABLE `wishlist_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
