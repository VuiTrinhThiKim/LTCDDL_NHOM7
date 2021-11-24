-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 06:29 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thejkworld_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` tinyint(4) NOT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `email`, `password`, `first_name`, `last_name`, `dob`, `gender`, `avatar`, `phone`, `address`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'vui_trinh', 'vui.trinhtk@gmail.com', '$2y$10$dOmLFYOF1smLfEpm94yfKuzwCvWvJk0yauuBaxIOrXhwaiiKmtLsW', 'Dzui', 'Trinh', '2000-12-18', 1, 'JK World-14.png', '0928090577', 'Địa chỉ nhà của admin', 1, '2021-07-31 09:03:08', '2021-09-22 21:10:10'),
(2, 'tester2021', 'mail@gmail.com', '$2y$10$/LU.drCs3DdoGtYf/1hVHeRW.xJKqFvlpRRFmYrMRPfP6DMOEObWK', 'Vui', 'Trinh', '2000-12-18', 0, 'image-88.png', '0265789541', '7 lo O duong Bui Huu Dien nha', 2, '2021-09-22 01:24:57', '2021-10-18 01:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `brand_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_slug`, `brand_description`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Chờ cập nhật', 'cho-cap-nhat', 'Chờ cập nhật thông tin brand', 0, '2021-08-21 03:24:52', '2021-10-17 23:36:14'),
(2, 'Đông Lâm Xã', 'dong-lam-xa', 'Brand DongLin Team', 1, '2021-08-21 04:03:49', '2021-10-17 23:36:09'),
(3, 'Cáo và Thỏ', 'cao-va-tho', 'Brand chân váy JK', 1, NULL, '2021-08-20 20:17:08'),
(5, 'Cửu Vĩ Miêu', 'cuu-vi-mieu', 'Brand chân váy JK\r\nMèo 7 đuôi', 1, '2021-08-20 19:19:16', '2021-08-20 20:41:10'),
(6, 'SNBL', 'snbl', 'Brand hàng cao cấp', 1, '2021-08-20 19:46:26', '2021-08-20 19:46:26'),
(7, 'Thố Ca', 'tho-ca', 'Brand JK Thố Ca nha', 0, '2021-09-21 02:50:36', '2021-09-21 02:50:36'),
(8, 'Tiền Thế', 'tien-the', 'Brand JK Tiền Thế', 0, '2021-09-21 02:50:11', '2021-09-21 02:50:11'),
(9, 'Công Tước', 'cong-tuoc', 'Brand Công Tước giá >450k', 0, '2021-09-21 02:49:49', '2021-09-21 02:49:49'),
(10, 'Miki', 'miki', 'Brand JK giá rẻ', 1, '2021-08-20 21:34:32', '2021-08-20 21:34:32'),
(11, 'slug brand nhé', 'slug-brand-nhe', 'Thương hiệu cần slug nha', 1, '2021-09-20 04:09:27', '2021-09-20 22:19:58'),
(12, 'Lạc Tâm', 'lac-tam', 'Brand áo blouse', 1, NULL, NULL),
(13, 'Đông Lâm Xã 2', 'dong-lam-xa-2', 'Brand Đông Lâm Xã 2', 0, '2021-09-21 02:46:47', '2021-09-21 02:46:47'),
(14, 'Thần Khí', 'than-khi', 'Brand Thần Khí - JK', 0, '2021-09-21 02:47:15', '2021-09-21 02:47:15'),
(15, 'Hồng Hoan', 'hong-hoan', 'Brand Hong Xian JK', 0, '2021-09-21 02:47:36', '2021-09-21 02:47:36'),
(16, 'KZ JK', 'kz-jk', 'Brand KZ JK nữ nha', 0, '2021-09-21 02:49:26', '2021-09-21 02:49:26'),
(1013, 'Chân Tham', 'chan-tham', 'Brand JK Chân Tham', 1, '2021-09-22 00:24:27', '2021-09-23 05:22:36'),
(1014, 'Hoành Văn', 'hoanh-van', 'Brand JK mới, giá rẻ', 0, '2021-09-23 04:53:09', '2021-09-23 04:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_slug`, `category_description`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Chờ cập nhật', 'cho-cap-nhat', 'Chờ cập nhật category', 0, NULL, '2021-10-18 03:02:53'),
(2, 'Chân Váy JK Cao Cấp', 'chan-vay-jk-cao-cap', 'Giá trên 400k nha', 1, NULL, '2021-10-18 02:08:24'),
(3, 'Chân Váy JK', 'chan-vay-jk', 'Giá dưới 300.000VND', 1, '2021-09-01 12:09:17', '2021-10-17 23:37:10'),
(4, 'Seifuku Cao Cấp', 'seifuku-cao-cap', 'Seifuku Cao Cấp', 0, NULL, '2021-10-17 23:36:40'),
(6, 'Áo Blouse', 'ao-blouse', 'Áo blouse là áo sơ mi', 1, NULL, '2021-10-17 23:37:07'),
(18, 'Danh muc mau', 'danh-muc-mau', 'THong tin danh muc mau', 0, '2021-10-15 20:05:11', '2021-10-15 20:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `username`, `email`, `email_verified_at`, `password`, `first_name`, `last_name`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vui_trinh', 'vui_trinh@gmail.com', NULL, '$2y$10$gCNWnPofj.NNH5EcR4.A1ea1todxNNuiKeFaxwmNW78pxwXAeSof.', 'Vui', 'Trinh', '0928090577', NULL, '2021-08-26 01:41:00', '2021-08-26 01:41:00'),
(3, 'vui_trinh2', 'emlaaine456@gmail.com', NULL, '$2y$10$2dspsETaMlIMhvSg2ysDUuMHmbtlpV4ML04b2FPWiOzoTtjDtj9tW', 'Vui', 'Trinh', '0123456789', NULL, '2021-08-26 01:47:13', '2021-08-26 01:47:13'),
(5, 'kimvui', 'vui.trinhtk@gmail.com', NULL, '$2y$10$AWLwqAXvhuZyxDEqffQ6LeTgzoI2A5cz9Qn2XXYlREjRlCDS9Akti', 'Vui', 'Trinh', '0147852369', NULL, '2021-08-30 03:38:39', '2021-08-30 03:38:39'),
(6, 'vuivui', 'vui.trinhtk1@gmail.com', NULL, '$2y$10$HDA1vtAhL7yJeVImoqkKr.mOKZc5TY9XK37uIP6fJbTx5MXRA021K', 'Vui', 'Trinh', '0159874632', NULL, '2021-08-30 04:15:22', '2021-08-30 04:15:22'),
(7, 'test', 'vui@gmail.com', NULL, '$2y$10$NLtQFilwgcV/BjmN6PvyBO/f9SV.FU7OIguIYDhN4Qn5p9Beqyg2O', 'Vui', 'Trinh', '9876543210', NULL, '2021-08-30 04:40:30', '2021-08-30 04:40:30'),
(8, 'tester', 'test@gmail.com', NULL, '$2y$10$AC9jOJI34JQiKs.CpsSW2e84eDeGgivShKqHsDE7KWH2GnmK0FMQC', 'Vui', 'Trinh', '0123987654', NULL, '2021-08-30 05:07:23', '2021-08-30 05:07:23'),
(9, 'tester2021', 'tester2021@gmail.com', NULL, '$2y$10$CNFA6xzujjYFQYZ1XmighOztbPEk3tM1L.Mhq/cJlRn9rwNK8W/jO', 'Vui', 'Trinh', '0259874568', NULL, '2021-09-21 00:31:32', '2021-09-21 00:31:32'),
(11, 'kimdzui', 'email@gmail.com', NULL, '$2y$10$6FOsKHpErZMLLoxI/41L.OZhFqp6fKOb730TT3qJsFyFK6nFUmcGe', 'Vui', 'Kim', '0987654334', NULL, '2021-10-15 19:57:45', '2021-10-15 19:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_08_31_100201_create_orders_table', 6),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_09_050015_create_categories_table', 1),
(17, '2021_08_17_061559_create_brands_table', 2),
(18, '2021_08_17_085208_create_products_table', 2),
(41, '2021_08_26_071041_create_customers_table', 3),
(46, '2021_08_26_090709_create_shipping_table', 4),
(47, '2021_08_31_081456_create_payment_table', 5),
(48, '2021_08_31_100201_create_orders_table', 6),
(50, '2021_08_23_041620_create_roles_table', 7),
(51, '2021_08_11_075241_create_admin_table', 8),
(55, '2021_09_13_100616_create_posts_table', 9),
(56, '2021_09_13_105828_create_rates_table', 10),
(57, '2021_10_26_115327_create_status_table', 10),
(59, '2021_08_31_100311_create_order_details_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `order_note` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_total` int(11) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `order_paid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_note`, `order_total`, `status_id`, `order_paid`, `created_at`, `updated_at`) VALUES
(2, 9, 13, 2, 'giao giờ hành chính', 700000, 2, 700000, '2021-08-31 03:56:49', '2021-08-31 03:56:49'),
(9, 9, 8, 1, NULL, 780000, 1, 0, '2021-10-14 07:14:49', '2021-10-14 07:14:49'),
(10, 9, 8, 1, NULL, 260000, 1, 0, '2021-10-26 06:37:52', '2021-10-26 06:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `orderdetail_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sale_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`orderdetail_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sale_qty`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 'Chân Váy JK Miki', '220000', 2, '2021-08-31 03:56:49', '2021-08-31 03:56:49'),
(2, 2, 1, 'Nhất Nguyệt JK - Đông Lâm Xã', '260000', 1, '2021-08-31 03:56:49', '2021-08-31 03:56:49'),
(3, 9, 1, 'Nhất Nguyệt JK - Đông Lâm Xã', '260000', 1, '2021-10-14 07:14:49', '2021-10-14 07:14:49'),
(4, 9, 2, 'Nhị Nguyệt JK - Đông Lâm Xã', '260000', 1, '2021-10-14 07:14:49', '2021-10-14 07:14:49'),
(5, 9, 3, 'Tam Nguyệt JK - Đông Lâm Xã', '260000', 1, '2021-10-14 07:14:49', '2021-10-14 07:14:49'),
(7, 10, 2, 'Nhị Nguyệt JK - Đông Lâm Xã', '260000', 1, '2021-10-26 06:37:52', '2021-10-26 06:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'Thanh toán khi nhận hàng', 1, '2021-08-31 10:25:43', '2021-08-31 10:25:43'),
(2, 'Thanh toán bằng thẻ ATM', 1, '2021-08-31 10:25:43', '2021-08-31 10:25:43'),
(3, 'Thanh toán bằng thẻ ghi nợ nội địa', 0, '2021-08-31 10:26:43', '2021-08-31 10:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `post_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` int(11) NOT NULL,
  `price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` float NOT NULL,
  `product_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_slug`, `product_description`, `content`, `product_qty`, `price`, `weight`, `product_image`, `category_id`, `brand_id`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'Nhất Nguyệt JK - Đông Lâm Xã', 'nhat-nguyet-jk-dong-lam-xa', 'Mô tả sản phẩm', '<p>Chitiet</p>', 8, '260000', 0.5, 'nhat-nguyet-86.jpg', 3, 2, 0, NULL, '2021-10-18 00:21:54'),
(2, 'Nhị Nguyệt JK - Đông Lâm Xã', 'nhi-nguyet-jk-dong-lam-xa', 'Mô tả', '<p>Chi tiết</p>', 5, '260000', 0.7, 'nhi-nguyet-80.jpg', 3, 2, 1, NULL, '2021-08-20 21:04:56'),
(3, 'Tam Nguyệt JK - Đông Lâm Xã', 'tam-nguyet-jk-dong-lam-xa', 'Tam Nguyệt JK - Brand Đông Lâm Xã', '<p><strong><img alt=\"heart\" src=\"http://localhost/TheJKWorld/public/backend/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />C&oacute; box<img alt=\"heart\" src=\"http://localhost/TheJKWorld/public/backend/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /></strong></p>\r\n\r\n<p><strong>Độ d&agrave;i:</strong> 45cm</p>\r\n\r\n<p><strong>K&iacute;ch thước:</strong>&nbsp;XS-S-M-L-XL</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:right\"><span style=\"font-size:18px\"><em><strong>Laravel 8</strong></em></span></p>', 9, '260000', 0.6, 'tam-nguyet-79.jpg', 3, 2, 1, NULL, '2021-08-22 20:40:25'),
(4, 'Tứ Nguyệt JK - Đông Lâm Xã', 'tu-nguyet-jk-dong-lam-xa', 'Tứ Nguyệt JK', '<p><em><strong>Tứ Nguyệt JK - Đ&ocirc;ng L&acirc;m X&atilde;</strong></em></p>\r\n\r\n<p><em><strong>Tứ Nguyệt JK - Đ&ocirc;ng L&acirc;m X&atilde;</strong></em></p>\r\n\r\n<p>&nbsp;</p>', 10, '260000', 0.8, 'tu-nguyet-93.jpg', 3, 12, 1, NULL, '2021-10-17 22:42:34'),
(5, 'Chân Váy JK Miki', 'chan-vay-jk-miki', 'Mô tả', '<p>👄 Brand: Miki 👄<br />\r\nM&agrave;u n&agrave;y nom giống brand Mi&ecirc;u Cửu Vĩ nhưng c&aacute;i của Mi&ecirc;u Cửu Vĩ order về thấy c&oacute; th&ecirc;m tone &aacute;nh hồng d&ograve;m hịn hơn ch&uacute;t. C&aacute;i n&agrave;y th&igrave; thuần sắc xanh, với rẻ hơn. M&agrave;u dễ mặc, nhiều bling.&nbsp;<br />\r\n<br />\r\n👄220k: v&aacute;y + nơ + m&oacute;c<br />\r\n👄Size XS-S-M-L-XL-XXL</p>', 0, '220000', 0.7, 'jk-miki-6.jpg', 1, 12, 1, '2021-08-20 21:38:34', '2021-10-17 22:42:41'),
(6, 'Lục Nguyệt JK - Đông Lâm Xã', 'luc-nguyet-jk-dong-lam-xa', 'Lục Nguyệt JK - Đông Lâm Xã', '<p><em><strong>Lục Nguyệt JK - Đ&ocirc;ng L&acirc;m X&atilde;</strong></em></p>\r\n\r\n<p><em><strong>Lục Nguyệt JK - Đ&ocirc;ng L&acirc;m X&atilde;</strong></em></p>\r\n\r\n<p><em><strong>Lục Nguyệt JK - Đ&ocirc;ng L&acirc;m X&atilde;</strong></em></p>', 1, '260000', 0.7, 'luc-nguyet-102.jpg', 2, 2, 1, '2021-08-24 01:31:57', '2021-10-17 22:42:37'),
(112, 'Sản phẩm mẫu', 'san-pham-mau', 'Mô tả sản phẩm mẫu', '<p>Sản phẩm mầu Sản phẩm mẫu</p>\r\n\r\n<p><strong>Sản phẩm mầu Sản phẩm mẫu</strong></p>\r\n\r\n<p><em>Sản phẩm mầu Sản phẩm mẫu</em></p>', 10, '250000', 0.5, 'la-50.jpg', 1, 1, 1, '2021-10-15 07:13:48', '2021-10-17 22:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `rate_id` bigint(20) UNSIGNED NOT NULL,
  `rate_star` int(11) NOT NULL,
  `rate_content` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '2021-09-01 08:46:09', '2021-09-01 08:46:09'),
(2, 'Staff', '2021-09-01 08:46:09', '2021-09-01 08:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_phone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `customer_name`, `customer_id`, `customer_phone`, `customer_email`, `shipping_address`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Vui Trịnh', 8, '0147852369', 'vui.trinhtk@gmail.com', '7 lô o', 0, '2021-08-30 23:12:08', '2021-08-30 23:12:08'),
(2, 'Vui Trinh', 9, '01234098765', 'vui.trinhtk@gmail.com', 'Dia chi', 0, '2021-10-01 08:53:03', '2021-10-01 08:53:03'),
(7, 'Vui Trịnh', 8, '0147852369', 'vui.trinhtk@gmail.com', '7 lô o', 0, '2021-08-30 23:18:09', '2021-08-30 23:18:09'),
(8, 'Vui Trịnh', 9, '0147852369', 'vui.trinhtk@gmail.com', '7 lô O đường Bùi Hữu Diên, phường An Lạc A, quận Bình Tân, TP.HCM', 1, '2021-08-31 02:50:40', '2021-08-31 02:50:40'),
(9, 'Kim VUi', 9, '0806746737', 'vui.trinhtk@gmail.com', '97 Võ Văn Tần', 0, '2021-10-14 07:26:57', '2021-10-14 07:26:57'),
(10, 'Vui Nè', 1, '0987098765', 'vui.trinhtk@gmail.com', '718B Kinh Dương Vương, phường 13, quận 6, TP. HCM', 0, '2021-10-15 02:22:34', '2021-10-15 02:22:34'),
(11, 'Bá Sủ', 1, '0987432156', 'vui.trinhtk@gmail.com', '777 Võ Văn Kiệt', 0, '2021-10-15 03:55:34', '2021-10-15 03:55:34'),
(12, 'ssxssss', 1, '0682874434', 'vui.trinhtk@gmail.com', '754 Cô Giang', 1, '2021-10-15 04:05:01', '2021-10-15 04:05:01'),
(13, 'Nguyễn Ngọc', 9, '09876543234', 'vui.trinhtk@gmail.com', '97 Võ Văn Tần, phường 6, quận 3, TP. HCM', 0, '2021-10-15 08:04:03', '2021-10-15 08:04:03'),
(14, 'Nhu Quynh', 9, '0987643216', 'nhuquynh@gmail.com', '7 lo O Nguyen Trong Tri', 0, '2021-10-15 20:09:52', '2021-10-15 20:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `status_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`, `created_at`, `updated_at`) VALUES
(1, 'Chờ xử lí', '2021-10-01 13:51:52', '2021-10-01 13:51:52'),
(2, 'Đã xác nhận', '2021-10-01 13:51:54', '2021-10-01 13:51:54'),
(3, 'Đã hoàn thành', '2021-10-01 12:19:47', '2021-10-01 12:19:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role_id_foreign` (`role_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`),
  ADD KEY `orders_status_id_foreign` (`status_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`orderdetail_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `posts_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `rates_customer_id_foreign` (`customer_id`),
  ADD KEY `rates_order_id_foreign` (`order_id`),
  ADD KEY `rates_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `shipping_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `orderdetail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shipping` (`shipping_id`),
  ADD CONSTRAINT `orders_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
