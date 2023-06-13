-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 19, 2022 lúc 05:39 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sweelee`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_posts`
--

CREATE TABLE `category_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_products`
--

CREATE TABLE `category_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_products`
--

INSERT INTO `category_products` (`id`, `name`, `slug`, `parent_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Guitar', 'guitar', 0, NULL, NULL, NULL),
(2, 'Taylor', 'taylor', 1, NULL, '2022-12-12 09:06:58', '2022-12-12 09:06:58'),
(3, 'Yamaha', 'yamaha', 1, NULL, '2022-12-12 09:07:12', '2022-12-12 09:07:12'),
(4, 'Ukulele', 'ukulele', 0, NULL, '2022-12-12 09:07:47', '2022-12-12 09:07:47'),
(5, 'Takamine', 'takamine', 1, NULL, '2022-12-12 09:08:17', '2022-12-12 09:08:17'),
(6, 'Phụ kiện', 'phu-kien', 0, NULL, '2022-12-12 09:08:43', '2022-12-12 09:08:43'),
(7, 'Fender', 'fender', 1, NULL, '2022-12-12 17:07:48', '2022-12-12 17:07:48'),
(8, 'Deviser', 'deviser', 4, NULL, '2022-12-12 17:29:48', '2022-12-12 17:29:48'),
(9, 'Chard', 'chard', 4, NULL, '2022-12-12 18:01:40', '2022-12-12 18:01:40'),
(10, 'Dây đàn', 'day-dan', 6, NULL, '2022-12-12 18:15:57', '2022-12-12 18:15:57'),
(11, 'Capo', 'capo', 6, NULL, '2022-12-12 18:16:19', '2022-12-12 18:16:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `created_at`, `updated_at`) VALUES
(1, 'đặng thành công', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-12 16:27:45', '2022-12-12 16:27:45'),
(2, 'đặng thành công', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-12 16:29:28', '2022-12-12 16:29:28'),
(3, 'đặng thành công', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-12 16:30:51', '2022-12-12 16:30:51'),
(4, 'đặng thành công', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-12 16:42:05', '2022-12-12 16:42:05'),
(5, 'đặng thành công', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-12 16:46:01', '2022-12-12 16:46:01'),
(6, 'đặng thành công', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-12 16:53:28', '2022-12-12 16:53:28'),
(7, 'đặng thành công', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-12 16:54:04', '2022-12-12 16:54:04'),
(8, 'Công DT', '0964592802', 'Hà Nam', 'congthanhdang199x@gmail.com', '2022-12-12 22:44:18', '2022-12-12 22:44:18'),
(9, 'Hoàng Văn Huy', '0964592802', '18 phố Viên-Bắc Từ Liêm-Hà Nội', 'congthanhdang199x@gmail.com', '2022-12-12 22:47:19', '2022-12-12 22:47:19'),
(10, 'Lã Phương Nam', '0904859599', 'Hà Nam', 'congthanhdang199x@gmail.com', '2022-12-18 06:55:41', '2022-12-18 06:55:41'),
(11, 'đặng thành công', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-18 06:59:10', '2022-12-18 06:59:10'),
(12, 'Lưu Quang Đức', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-18 07:00:36', '2022-12-18 07:00:36'),
(24, 'cong user', '0964592802', 'Nghệ An', 'congthanhdang1999@gmail.com', '2022-12-19 03:17:07', '2022-12-19 03:17:07'),
(25, 'cong user', '0964592802', 'Nghệ An', 'congthanhdang1999@gmail.com', '2022-12-19 03:20:57', '2022-12-19 03:20:57'),
(32, 'cong user', '0964592802', 'Nghệ An', 'congthanhdang1999@gmail.com', '2022-12-19 03:36:26', '2022-12-19 03:36:26'),
(33, 'cong user', '0964592802', 'Nghệ An', 'congthanhdang1999@gmail.com', '2022-12-19 07:44:09', '2022-12-19 07:44:09'),
(62, 'Phạm Văn An', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-19 08:47:06', '2022-12-19 08:47:06'),
(67, 'Phạm Văn An', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-19 08:52:50', '2022-12-19 08:52:50'),
(70, 'Phạm Văn An', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-19 08:55:33', '2022-12-19 08:55:33'),
(71, 'Công DT', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-19 08:56:50', '2022-12-19 08:56:50'),
(72, 'Công DT', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-19 08:58:59', '2022-12-19 08:58:59'),
(74, 'Công DT', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-19 09:08:24', '2022-12-19 09:08:24'),
(75, 'cong user', '0964592802', 'Nghệ An', 'congthanhdang1999@gmail.com', '2022-12-19 09:09:54', '2022-12-19 09:09:54'),
(77, 'đặng thành công', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-19 09:18:29', '2022-12-19 09:18:29'),
(82, 'đặng thành công', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-19 09:29:08', '2022-12-19 09:29:08'),
(83, 'đặng thành công', '0964592802', 'nghệ an', 'congthanhdang199x@gmail.com', '2022-12-19 09:32:31', '2022-12-19 09:32:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_orders`
--

CREATE TABLE `detail_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_orders`
--

INSERT INTO `detail_orders` (`id`, `name`, `price`, `quantity`, `product_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'Taylor 114e', '7000000', 2, 4, 1, '2022-12-12 16:27:45', '2022-12-12 16:27:45'),
(2, 'Taylor 114ce', '9000000', 1, 5, 1, '2022-12-12 16:27:45', '2022-12-12 16:27:45'),
(3, 'Taylor 114e', '7000000', 2, 4, 2, '2022-12-12 16:29:28', '2022-12-12 16:29:28'),
(4, 'Taylor 114ce', '9000000', 1, 5, 2, '2022-12-12 16:29:28', '2022-12-12 16:29:28'),
(5, 'Taylor 114e', '7000000', 2, 4, 3, '2022-12-12 16:30:51', '2022-12-12 16:30:51'),
(6, 'Taylor 114ce', '9000000', 1, 5, 3, '2022-12-12 16:30:51', '2022-12-12 16:30:51'),
(7, 'Taylor 114e', '7000000', 2, 4, 4, '2022-12-12 16:42:05', '2022-12-12 16:42:05'),
(8, 'Taylor 114ce', '9000000', 1, 5, 4, '2022-12-12 16:42:05', '2022-12-12 16:42:05'),
(9, 'Taylor 114e', '7000000', 2, 4, 5, '2022-12-12 16:46:01', '2022-12-12 16:46:01'),
(10, 'Taylor 114ce', '9000000', 1, 5, 5, '2022-12-12 16:46:01', '2022-12-12 16:46:01'),
(11, 'Taylor 114ce', '9000000', 2, 5, 6, '2022-12-12 16:53:28', '2022-12-12 16:53:28'),
(12, 'Taylor 114e', '7000000', 1, 4, 6, '2022-12-12 16:53:28', '2022-12-12 16:53:28'),
(13, 'Taylor 114ce', '9000000', 2, 5, 7, '2022-12-12 16:54:04', '2022-12-12 16:54:04'),
(14, 'Taylor 114e', '7000000', 1, 4, 7, '2022-12-12 16:54:04', '2022-12-12 16:54:04'),
(15, 'Elixir 4230', '360000', 5, 24, 8, '2022-12-12 22:44:18', '2022-12-12 22:44:18'),
(16, 'Elixir 4230', '360000', 5, 24, 9, '2022-12-12 22:47:19', '2022-12-12 22:47:19'),
(17, 'Deviser UK-21-30', '700000', 1, 9, 10, '2022-12-18 06:55:41', '2022-12-18 06:55:41'),
(18, 'Deviser UK-21-30', '700000', 1, 10, 10, '2022-12-18 06:55:41', '2022-12-18 06:55:41'),
(19, 'Deviser UK-21-30', '700000', 1, 9, 11, '2022-12-18 06:59:10', '2022-12-18 06:59:10'),
(20, 'CHARD U-24H', '1150000', 1, 17, 11, '2022-12-18 06:59:10', '2022-12-18 06:59:10'),
(21, 'Deviser UK-21-30', '700000', 1, 9, 12, '2022-12-18 07:00:36', '2022-12-18 07:00:36'),
(22, 'Deviser UK-21-30', '700000', 2, 10, 12, '2022-12-18 07:00:36', '2022-12-18 07:00:36'),
(23, 'CHARD U-24H', '1150000', 1, 16, 13, '2022-12-19 03:17:07', '2022-12-19 03:17:07'),
(24, 'CHARD CHARD U-24D', '1150000', 1, 15, 14, '2022-12-19 03:20:57', '2022-12-19 03:20:57'),
(29, 'Deviser UK-21-30', '700000', 3, 9, 38, '2022-12-19 08:47:07', '2022-12-19 08:47:07'),
(31, 'Deviser UK-21-30', '700000', 3, 9, 43, '2022-12-19 08:52:50', '2022-12-19 08:52:50'),
(34, 'Deviser UK-21-30', '700000', 3, 9, 46, '2022-12-19 08:55:33', '2022-12-19 08:55:33'),
(35, 'Deviser UK-21-30', '700000', 3, 9, 47, '2022-12-19 08:56:50', '2022-12-19 08:56:50'),
(36, 'Takamine GD10 NS', '5700000', 1, 11, 47, '2022-12-19 08:56:50', '2022-12-19 08:56:50'),
(37, 'Deviser UK-21-30', '700000', 3, 9, 48, '2022-12-19 08:58:59', '2022-12-19 08:58:59'),
(38, 'Takamine GD10 NS', '5700000', 1, 11, 48, '2022-12-19 08:58:59', '2022-12-19 08:58:59'),
(40, 'Deviser UK-21-30', '700000', 3, 9, 50, '2022-12-19 09:08:24', '2022-12-19 09:08:24'),
(41, 'Takamine GD10 NS', '5700000', 1, 11, 50, '2022-12-19 09:08:24', '2022-12-19 09:08:24'),
(42, 'Deviser UK-21-30', '700000', 3, 9, 51, '2022-12-19 09:09:54', '2022-12-19 09:09:54'),
(43, 'Takamine GD10 NS', '5700000', 1, 11, 51, '2022-12-19 09:09:54', '2022-12-19 09:09:54'),
(44, 'Takamine GD10 NS', '5700000', 1, 11, 53, '2022-12-19 09:18:29', '2022-12-19 09:18:29'),
(45, 'name vui vui', '100000', 2, 15, 58, '2022-12-19 09:29:08', '2022-12-19 09:29:08'),
(46, 'Takamine GD10 NS', '5700000', 1, 11, 60, '2022-12-19 09:32:31', '2022-12-19 09:32:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `informations`
--

CREATE TABLE `informations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `informations`
--

INSERT INTO `informations` (`id`, `phone`, `address`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '0964592802', 'Nghệ An', 1, 2, NULL, '2022-12-19 08:09:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_09_27_140128_create_category_products_table', 1),
(5, '2022_10_03_072658_create_products_table', 1),
(6, '2022_10_03_075146_create_product_images_table', 1),
(7, '2022_10_05_194122_create_category_posts_table', 1),
(8, '2022_10_05_205254_create_posts_table', 1),
(9, '2022_10_07_202043_create_slider_table', 1),
(10, '2022_10_08_091639_create_roles_table', 1),
(11, '2022_10_08_091857_create_role_user_table', 1),
(12, '2022_10_08_092025_create_permission_role_table', 1),
(13, '2022_10_08_092247_create_permissions_table', 1),
(14, '2022_10_11_095007_create_customers_table', 1),
(15, '2022_10_11_095042_create_orders_table', 1),
(16, '2022_10_18_163432_create_detail_order_table', 1),
(17, '2022_11_29_164230_create_information_table', 1),
(18, '2022_12_18_220820_add_collumn_user_id_to_order_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `customer_id`, `total`, `status`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
(1, 'VN-FW2TL', 1, '23000000', 0, '2022-12-12 16:27:45', '2022-12-12 16:27:45', NULL, 0),
(2, 'VN-5M52H', 2, '23000000', 0, '2022-12-12 16:29:28', '2022-12-12 16:29:28', NULL, 0),
(3, 'VN-BJ6NO', 3, '23000000', 0, '2022-12-12 16:30:51', '2022-12-12 16:30:51', NULL, 0),
(4, 'VN-WVGMO', 4, '23000000', 0, '2022-12-12 16:42:05', '2022-12-12 23:00:21', '2022-12-12 23:00:21', 0),
(5, 'VN-4UOJU', 5, '23000000', 2, '2022-12-12 16:46:01', '2022-12-12 20:12:25', NULL, 0),
(6, 'VN-H49XP', 6, '25000000', 2, '2022-12-12 16:53:28', '2022-12-12 16:56:33', NULL, 0),
(7, 'VN-MSGDK', 7, '25000000', 2, '2022-12-12 16:54:04', '2022-12-12 16:55:21', NULL, 0),
(8, 'VN-4GDZW', 8, '1800000', 0, '2022-12-12 22:44:18', '2022-12-12 22:44:18', NULL, 0),
(9, 'VN-5IT8T', 9, '1800000', 0, '2022-12-12 22:47:19', '2022-12-12 23:03:05', '2022-12-12 23:03:05', 0),
(10, 'VN-OD1HI', 10, '1400000', 0, '2022-12-18 06:55:41', '2022-12-18 06:55:41', NULL, 0),
(11, 'VN-3LMUK', 11, '1850000', 0, '2022-12-18 06:59:10', '2022-12-18 06:59:10', NULL, 0),
(12, 'VN-FTF14', 12, '2100000', 0, '2022-12-18 07:00:36', '2022-12-18 07:00:36', NULL, 0),
(13, 'VN-9SXGM', 24, '1150000', 0, '2022-12-19 03:17:07', '2022-12-19 03:17:07', NULL, 2),
(14, 'VN-CK7RD', 25, '1150000', 0, '2022-12-19 03:20:57', '2022-12-19 03:20:57', NULL, 2),
(21, 'VN-NDC6N', 32, '1400000', 0, '2022-12-19 03:36:26', '2022-12-19 03:36:26', NULL, 2),
(38, 'VN-19E9U', 62, '2100000', 0, '2022-12-19 08:47:07', '2022-12-19 08:47:07', NULL, NULL),
(43, 'VN-6EXAQ', 67, '2100000', 0, '2022-12-19 08:52:50', '2022-12-19 08:52:50', NULL, NULL),
(46, 'VN-LPPVS', 70, '2100000', 0, '2022-12-19 08:55:33', '2022-12-19 08:55:33', NULL, NULL),
(47, 'VN-WOKNG', 71, '7800000', 0, '2022-12-19 08:56:50', '2022-12-19 08:56:50', NULL, NULL),
(48, 'VN-FM9KG', 72, '7800000', 0, '2022-12-19 08:58:59', '2022-12-19 08:58:59', NULL, NULL),
(50, 'VN-HDFKN', 74, '7800000', 0, '2022-12-19 09:08:24', '2022-12-19 09:08:24', NULL, NULL),
(51, 'VN-YVMGJ', 75, '7800000', 2, '2022-12-19 09:09:54', '2022-12-19 09:13:48', NULL, 2),
(53, 'VN-CSE3R', 77, '5700000', 0, '2022-12-19 09:18:29', '2022-12-19 09:18:29', NULL, NULL),
(58, 'VN-G9HJC', 82, '5700000', 0, '2022-12-19 09:29:08', '2022-12-19 09:29:08', NULL, NULL),
(59, 'VN-LG1FJ', 83, '5700000', 0, '2022-12-19 09:32:31', '2022-12-19 09:32:31', NULL, NULL),
(60, 'VN-LG1FJ', 83, '5700000', 0, '2022-12-19 09:32:31', '2022-12-19 09:32:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `feature_image_name`, `feature_image_path`, `price`, `sale_price`, `short_desc`, `description`, `status`, `user_id`, `category_product_id`, `quantity`, `created_at`, `updated_at`, `video`, `deleted_at`) VALUES
(4, 'Taylor 114e', 'taylor-114e', 'Taylor-114E-400x400-400x400.jpg', '/storage/product/1/ezHGP51bjyc6ktqqCNNQ.jpg', '9000000', '7000000', '<p>Tặng k&egrave;m kho&aacute; học guitar đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<p>Đ&agrave;n guitar Taylor 114CE c&oacute; d&aacute;ng Grand Auditorium. L&agrave; d&aacute;ng đ&agrave;n phổ biến v&agrave; linh hoạt nhất của Taylor. Grand Auditorium c&oacute; k&iacute;ch thước cỡ trung với tỷ lệ tinh tế, nhỏ hơn Dreadnought v&agrave; lớn hơn Grand Concert.</p>\r\n<ul>\r\n<li>Th&iacute;ch hợp với mọi mục đ&iacute;ch chơi đ&agrave;n từ mới tập đến biểu diễn s&acirc;n khấu.</li>\r\n<li>Đ&agrave;n Taylor 114CE c&oacute; tone c&acirc;n bằng, &acirc;m lượng v&agrave; tiếng pass lớn, đặc biệt th&iacute;ch hợp để chơi thể loại fingerstyle.</li>\r\n<li>Thiết kế Venetian cutaway tạo d&aacute;ng đ&agrave;n Guitar Acoustic mềm mại cuốn h&uacute;t</li>\r\n<li>L&agrave; kiểu đ&agrave;n Grand Auditorium đa năng nổi tiếng rực n&eacute;t &acirc;m thanh nguy&ecirc;n bản</li>\r\n<li>Bộ khuếch đại sống động ph&ugrave; hợp với nghệ sĩ tự do lẫn mixers chuy&ecirc;n nghiệp</li>\r\n<li>T&uacute;i gig k&egrave;m theo để bạn c&oacute; thể x&aacute;ch v&agrave; vận chuyển đ&agrave;n dễ d&agrave;ng</li>\r\n<li>Lớp UV đặc biệt gi&uacute;p bảo vệ đ&agrave;n khỏi t&aacute;c hại của m&ocirc;i trường v&agrave; giữ n&oacute; lu&ocirc;n mới</li>\r\n<li>Thanh giằng kiểu bậc thang l&agrave; b&iacute; quyết tạo n&ecirc;n sắc &acirc;m độc đ&aacute;o của nh&agrave; Taylor</li>\r\n<li>Độ phản hồi tuyệt vời c&ugrave;ng với &acirc;m trầm mạnh mẽ l&agrave; điểm ấn tượng nhất về &acirc;m thanh của n&oacute;</li>\r\n<li>Mặt b&ecirc;n v&agrave; mặt sau l&agrave; gỗ Sapele &eacute;p xếp lớp vừa tạo độ bền vừa mang lại chất lượng &acirc;m thanh ho&agrave;n hảo</li>\r\n<li>Về phần body đ&agrave;n, Taylor sử dụng chất liệu Sitka Spruce vốn l&agrave; tonewood ưu ti&ecirc;n h&agrave;ng đầu của h&atilde;ng</li>\r\n<li>Đ&agrave;n guitar Taylor 114CE th&iacute;ch hợp để chơi pick playing, fingerpicking, heavy strumming, chords v&agrave; hơn thế nữa</li>\r\n</ul>', 0, 1, 2, 12, '2022-12-12 09:50:18', '2022-12-12 23:00:21', '/storage/product/1/qX094wO77PtBZYyaMMKx.webm', NULL),
(5, 'Taylor 114ce', 'taylor-114ce', 'taylor-114ce-01.jpg', '/storage/product/1/3hM515kI4TiVP13LoCbq.jpg', '11000000', '9000000', '<p>Tặng k&egrave;m kho&aacute; học guitar đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<p>Đ&agrave;n guitar Taylor 114CE c&oacute; d&aacute;ng Grand Auditorium. L&agrave; d&aacute;ng đ&agrave;n phổ biến v&agrave; linh hoạt nhất của Taylor. Grand Auditorium c&oacute; k&iacute;ch thước cỡ trung với tỷ lệ tinh tế, nhỏ hơn Dreadnought v&agrave; lớn hơn Grand Concert.</p>\r\n<ul>\r\n<li>Th&iacute;ch hợp với mọi mục đ&iacute;ch chơi đ&agrave;n từ mới tập đến biểu diễn s&acirc;n khấu.</li>\r\n<li>Đ&agrave;n Taylor 114CE c&oacute; tone c&acirc;n bằng, &acirc;m lượng v&agrave; tiếng pass lớn, đặc biệt th&iacute;ch hợp để chơi thể loại fingerstyle.</li>\r\n<li>Thiết kế Venetian cutaway tạo d&aacute;ng đ&agrave;n Guitar Acoustic mềm mại cuốn h&uacute;t</li>\r\n<li>L&agrave; kiểu đ&agrave;n Grand Auditorium đa năng nổi tiếng rực n&eacute;t &acirc;m thanh nguy&ecirc;n bản</li>\r\n<li>Bộ khuếch đại sống động ph&ugrave; hợp với nghệ sĩ tự do lẫn mixers chuy&ecirc;n nghiệp</li>\r\n<li>T&uacute;i gig k&egrave;m theo để bạn c&oacute; thể x&aacute;ch v&agrave; vận chuyển đ&agrave;n dễ d&agrave;ng</li>\r\n<li>Lớp UV đặc biệt gi&uacute;p bảo vệ đ&agrave;n khỏi t&aacute;c hại của m&ocirc;i trường v&agrave; giữ n&oacute; lu&ocirc;n mới</li>\r\n<li>Thanh giằng kiểu bậc thang l&agrave; b&iacute; quyết tạo n&ecirc;n sắc &acirc;m độc đ&aacute;o của nh&agrave; Taylor</li>\r\n<li>Độ phản hồi tuyệt vời c&ugrave;ng với &acirc;m trầm mạnh mẽ l&agrave; điểm ấn tượng nhất về &acirc;m thanh của n&oacute;</li>\r\n<li>Mặt b&ecirc;n v&agrave; mặt sau l&agrave; gỗ Sapele &eacute;p xếp lớp vừa tạo độ bền vừa mang lại chất lượng &acirc;m thanh ho&agrave;n hảo</li>\r\n<li>Về phần body đ&agrave;n, Taylor sử dụng chất liệu Sitka Spruce vốn l&agrave; tonewood ưu ti&ecirc;n h&agrave;ng đầu của h&atilde;ng</li>\r\n</ul>\r\n<p>Đ&agrave;n guitar Taylor 114CE th&iacute;ch hợp để chơi pick playing, fingerpicking, heavy strumming, chords v&agrave; hơn thế nữa</p>\r\n<h2><strong>C&acirc;y đ&agrave;n d&aacute;ng Grand Auditorium</strong></h2>\r\n<p><img src=\"https://vietthuong.vn/image/catalog/taylor/taylor-114ce-01.jpg\" alt=\"\" /></p>\r\n<p>Đ&agrave;n guitar Taylor 114CE c&oacute; d&aacute;ng Grand Auditorium, l&agrave; d&aacute;ng đ&agrave;n phổ biến v&agrave; linh hoạt nhất của Taylor. Grand Auditorium c&oacute; k&iacute;ch thước cỡ trung với tỷ lệ tinh tế, nhỏ hơn Dreadnought v&agrave; lớn hơn Grand Concert, th&iacute;ch hợp với mọi mục đ&iacute;ch chơi đ&agrave;n từ mới tập đến biểu diễn s&acirc;n khấu. Đ&agrave;n c&oacute; tone c&acirc;n bằng, &acirc;m lượng v&agrave; tiếng pass lớn, đặc biệt th&iacute;ch hợp để chơi thể loại fingerstyle.</p>\r\n<h2><strong>Venetian CutawayCutaways</strong></h2>\r\n<p>Venetian cutaway được biết đến với c&aacute;c đường cong mềm mại. Thiết kế cutaway n&agrave;y mang đến cho Taylor 114CE một vẻ ngo&agrave;i lạ mắt, c&aacute; t&iacute;nh.</p>\r\n<p><img src=\"https://vietthuong.vn/upload/content/images/Taylor/taylor-114ce-01.jpg\" alt=\"\" /></p>\r\n<h2><strong>Mặt trước&nbsp;đ&agrave;n l&agrave;m bằng gỗ Sitka Spruce</strong></h2>\r\n<p>Gỗ sitka Spruce c&oacute; độ bền v&agrave; độ dẻo dai cao n&ecirc;n thường được sử dụng rất phổ biến để l&agrave;m soundboard đ&agrave;n. Đặc t&iacute;nh của gỗ Sitka Spruce l&agrave; rất cứng v&agrave; nhẹ, ch&iacute;nh v&igrave; vậy đ&acirc;y cũng l&agrave; loại gỗ c&oacute; tốc độ truyền &acirc;m thanh, độ vang rất cao, giai điệu rất r&otilde; r&agrave;ng v&agrave; đầy đủ, c&oacute; thể chơi rất nhiều phong c&aacute;ch kh&aacute;c nhau.</p>\r\n<h2><strong>Th&acirc;n đ&agrave;n l&agrave;m bằng gỗ Walnut</strong></h2>\r\n<p>Th&acirc;n đ&agrave;n guitar Taylor 114CE l&agrave;m bằng gỗ Walnut cho &acirc;m thanh cực kỳ đặc trưng, c&acirc;n bằng. N&oacute; mang &acirc;m sắc thanh mạnh với tần &acirc;m thấp chắc, tần trung mượt m&agrave; v&agrave; tần cao r&otilde; n&eacute;t.&nbsp;</p>\r\n<h2><strong>Thiết bị điện tử Expression System&reg; 2</strong></h2>\r\n<p>Khi nhắc đến Taylor Guitar, ch&uacute;ng ta kh&ocirc;ng thể kh&ocirc;ng kể đến hệ thống Expression Pick-up System được s&aacute;ng chế độc quyền bởi Taylor. Hệ thống Pick-up n&agrave;y c&ograve;n được gọi l&agrave; bộ cảm biến. N&oacute; thu lại to&agrave;n bộ dao động một c&aacute;ch ch&acirc;n thật nhất khi ch&uacute;ng ta thể hiện cảm x&uacute;c của m&igrave;nh tr&ecirc;n Guitar th&ugrave;ng Taylor trước khi đưa ra hệ thống loa ngo&agrave;i (speaker). Taylor quan điểm rằng, &acirc;m thanh ph&aacute;t ra từ Taylor Guitar qua hệ thống Pick-Up đến Speaker sphải l&agrave; &acirc;m thanh trung thực v&agrave; tự nhi&ecirc;n nhất.</p>\r\n<p><img src=\"https://vietthuong.vn/upload/content/images/Taylor/taylor-114ce-02.jpg\" alt=\"\" /></p>\r\n<h2><strong>Lớp bảo vệ UV</strong></h2>\r\n<p>Kết cấu UV th&acirc;n thiện với m&ocirc;i trường của Taylor gi&uacute;p bảo vệ c&acirc;y đ&agrave;n guitar của bạn v&agrave; giữ cho n&oacute; lu&ocirc;n mới v&agrave; tr&ocirc;ng thật tuyệt vời.</p>\r\n<p><img src=\"https://vietthuong.vn/image/catalog/taylor/taylor-114ce-02.jpg\" alt=\"\" /></p>', 0, 1, 2, 8, '2022-12-12 15:53:39', '2022-12-12 23:00:21', '/storage/product/1/cYAUEhpa5VAFdOXRA8zW.webm', NULL),
(6, 'Fender FSR V3 CD60', 'fender-fsr-v3-cd60', 'fender-fsr-v3-cd60-chy-wn-01-400x400.jpg', '/storage/product/1/O0ovq4F0DrZ87rRfXMsg.jpg', '4500000', '3900000', '<p>Tặng k&egrave;m kho&aacute; học guitar đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<h2><strong>CD-60 l&agrave; một trong những m&ocirc; h&igrave;nh phổ biến nhất của Fender v&agrave; l&yacute; tưởng cho những người chơi đang t&igrave;m kiếm một c&acirc;y đ&agrave;n d&aacute;ng dreadnought chất lượng cao gi&aacute; cả phải chăng với giai điệu c&ugrave;ng khả năng chơi tuyệt vời.&nbsp;</strong></h2>\r\n<h2><img src=\"https://vietthuong.vn/upload/content/images/Fender/fender-fsr-v3-cd60-mah-wn-09.jpg\" alt=\"\" /></h2>\r\n<p><br />Với gỗ gụ (Mahogany) chất lượng, cần đ&agrave;n dễ chơi với Fingerboard cuộn, CD-60 ho&agrave;n hảo cho việc chơi ở lửa trại hoặc qu&aacute;n c&agrave; ph&ecirc; &mdash; bất cứ nơi n&agrave;o bạn muốn &acirc;m thanh Fender cổ điển.</p>\r\n<p><img src=\"https://vietthuong.vn/image/catalog/fender/fender-fsr-v3-cd60-mah-wn-05.jpg\" alt=\"\" /></p>', 1, 1, 7, 7, '2022-12-12 17:16:19', '2022-12-12 17:16:19', '/storage/product/1/ID8swXiuQ8YlgZIgf2oF.mp4', NULL),
(7, 'FENDER FSR CD-60S', 'fender-fsr-cd-60s', 'tanglewoodguitars-twbbsde-01-400x400.jpg', '/storage/product/1/XAazOSWSserFoQxDYy68.jpg', '9000000', '7500000', '<p>Tặng k&egrave;m kho&aacute; học guitar đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<p>&nbsp;l&agrave; một mẫu đ&agrave;n ho&agrave;n to&agrave;n mới mẻ vừa được h&atilde;ng fender cho ra mắt trong thời gian vừa qua, với ngoại h&igrave;nh bắt mắt c&ugrave;ng m&agrave;u đen nh&aacute;m tinh tế cộng th&ecirc;m đường viền trắng tạo th&agrave;nh điểm nhấn rất tinh tế, c&ugrave;ng với đường khuyết cắt g&oacute;c gi&uacute;p người chơi c&oacute; thể chơi được những note đ&agrave;n tr&ecirc;n ngăn cao, ngo&agrave;i ra đ&agrave;n c&ograve;n được t&iacute;ch hợp hệ thống EQ (equalizer) để c&aacute;c bạn c&oacute; thể chơi ra loa lớn, d&agrave;n &acirc;m thanh lớn hơn, c&aacute;c sự kiện &acirc;m nhạc ở trường lớp, hội trại, picnic&hellip; Dựa v&agrave;o th&agrave;nh c&ocirc;ng to&agrave;n cầu của d&ograve;ng nhạc cụ Crossroad của họ, đội ngũ thiết kế của Tanglewood đ&atilde; tạo ra c&aacute;c loại đ&agrave;n guitar ho&agrave;n to&agrave;n mới, lấy cảm hứng từ c&aacute;c c&acirc;y guitar của Mỹ thời kỳ 1940-1950 với chữ k&yacute; của nh&agrave; thiết kế <a href=\"https://amnhacvietthanh.vn/dan-guitar\">guitar</a>&nbsp;h&agrave;ng đầu Michael Sanden được đội ngũ chuy&ecirc;n nghiệp của Tanglewood ho&agrave;n thiện.</p>\r\n<p><img class=\"alignnone size-full wp-image-15296\" title=\"Đ&agrave;n guitar Tanglewood TWBB SFCE 2\" src=\"https://amnhacvietthanh.vn/wp-content/uploads/2018/04/dan-guitar-acoustic-tanglewood-twbb-sfce.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://amnhacvietthanh.vn/wp-content/uploads/2018/04/dan-guitar-acoustic-tanglewood-twbb-sfce.jpg 800w, https://amnhacvietthanh.vn/wp-content/uploads/2018/04/dan-guitar-acoustic-tanglewood-twbb-sfce-500x500.jpg 500w, https://amnhacvietthanh.vn/wp-content/uploads/2018/04/dan-guitar-acoustic-tanglewood-twbb-sfce-300x300.jpg 300w, https://amnhacvietthanh.vn/wp-content/uploads/2018/04/dan-guitar-acoustic-tanglewood-twbb-sfce-600x600.jpg 600w, https://amnhacvietthanh.vn/wp-content/uploads/2018/04/dan-guitar-acoustic-tanglewood-twbb-sfce-400x400.jpg 400w\" alt=\"dan guitar acoustic tanglewood twbb sfce\" width=\"800\" height=\"800\" /></p>\r\n<p><strong>Đặc điểm nổi bật của đ&agrave;n guitar Acoustic&nbsp;Tanglewood TWBB SFCE</strong></p>\r\n<p><strong>&Acirc;m Thanh Trầm Ấm</strong></p>\r\n<p>Được thiết kế bằng gỗ gụ mahogany mang lại &acirc;m thanh rộng hơn về tần số trầm cho đến tần số cao, cộng th&ecirc;m một điểm đặc trưng của d&aacute;ng đ&agrave;n Super Folk Cutaway n&agrave;y về sự linh hoạt, dễ &ocirc;m hơn khi chơi đ&agrave;n v&agrave; kh&ocirc;ng bị giới hạn ở c&aacute;c nốt đ&agrave;n tr&ecirc;n ngăn cao, ph&ugrave; hợp cho c&aacute;c bạn thường ngh&ecirc;u ngao ca h&aacute;t ngo&agrave;i đường phố, c&ocirc;ng vi&ecirc;n, những bạn th&iacute;ch sự gọn g&agrave;ng về kiểu d&aacute;ng. Đ&agrave;n Guitar Acoustic Tanglewood TWBB SFCE kết cấu ho&agrave;n to&agrave;n bằng gỗ gụ mahogany mang lại sự ấm &aacute;p v&agrave; cộng hưởng đầy đủ, cho bạn những giai điệu hấp dẫn, tinh tế v&agrave; sắc sảo.</p>\r\n<p>Với một th&acirc;n h&igrave;nh thon gọn như vậy, c&oacute; rất nhiều kh&ocirc;ng gian để đ&agrave;n cung cấp cho bạn sự b&ugrave;ng nổ, chiều s&acirc;u v&agrave; sự phong ph&uacute;. V&igrave; vậy, nếu bạn chơi hoặc tạo ra sản phẩm &acirc;m nhạc với đồng nghiệp hoặc c&aacute;c buổi luyện tập &acirc;m nhạc bạn sẽ kh&ocirc;ng phải lo lắng về &acirc;m thanh của n&oacute; v&igrave; n&oacute; đều cung cấp đầy đủ cho bạn từ &acirc;m thanh mộc cho đến &acirc;m thanh chơi ra loa ngo&agrave;i cũng vậy.</p>\r\n<p><img class=\"alignnone size-full wp-image-15300\" title=\"Đ&agrave;n guitar Tanglewood TWBB SFCE 3\" src=\"https://amnhacvietthanh.vn/wp-content/uploads/2018/04/eq-dan-guitar-acoustic-tanglewood-twbb-sfce.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://amnhacvietthanh.vn/wp-content/uploads/2018/04/eq-dan-guitar-acoustic-tanglewood-twbb-sfce.jpg 800w, https://amnhacvietthanh.vn/wp-content/uploads/2018/04/eq-dan-guitar-acoustic-tanglewood-twbb-sfce-500x500.jpg 500w, https://amnhacvietthanh.vn/wp-content/uploads/2018/04/eq-dan-guitar-acoustic-tanglewood-twbb-sfce-300x300.jpg 300w, https://amnhacvietthanh.vn/wp-content/uploads/2018/04/eq-dan-guitar-acoustic-tanglewood-twbb-sfce-600x600.jpg 600w, https://amnhacvietthanh.vn/wp-content/uploads/2018/04/eq-dan-guitar-acoustic-tanglewood-twbb-sfce-400x400.jpg 400w\" alt=\"eq dan guitar acoustic tanglewood twbb sfce\" width=\"800\" height=\"800\" /></p>\r\n<p>Hệ thống EQ Tanglewood Premium Plus ch&iacute;nh h&atilde;ng, được t&iacute;ch hợp chức năng tuning gi&uacute;p bạn c&oacute; thể chỉnh tất cả 6 d&acirc;y về mức chuẩn nhất với m&agrave;n h&igrave;nh hiển thị r&otilde; n&eacute;t, gồm 2 m&agrave;u sắc: xanh dương v&agrave; xanh l&aacute;. Ngo&agrave;i ra c&ograve;n c&oacute; EQ 4 băng tần bao gồm c&aacute;c n&uacute;t điều chỉnh &acirc;m sắc cho &acirc;m trầm Bass, &acirc;m trung Middle, &acirc;m bổng Treble v&agrave; độ s&aacute;ng Presence, c&oacute; sẵn n&uacute;m điều chỉnh &acirc;m lượng cộng th&ecirc;m n&uacute;t Phase đổi chiều t&iacute;n hiệu &acirc;m thanh, sử dụng trong trường hợp đ&agrave;n bị h&uacute; v&agrave; c&aacute;c &acirc;m thanh kh&ocirc;ng muốn. Với hệ thống EQ n&agrave;y n&oacute; sẽ gi&uacute;p bạn c&oacute; thể truyền tải &acirc;m nhạc đến với mọi người một c&aacute;ch r&otilde; r&agrave;ng, đầy đủ hơn. Bạn ho&agrave;n to&agrave;n c&oacute; thể can thiệp bằng c&aacute;ch căn chỉnh c&aacute;c tần số &acirc;m thanh khi ph&aacute;t ra loa vừa &yacute; v&agrave; sở th&iacute;ch của m&igrave;nh nhất, như vậy bạn đ&atilde; c&oacute; thể tr&igrave;nh diễn &acirc;m nhạc ho&agrave;n hảo nhất c&oacute; thể.</p>\r\n<p><img class=\"alignnone size-full wp-image-15297\" title=\"Đ&agrave;n guitar Tanglewood TWBB SFCE 4\" src=\"https://amnhacvietthanh.vn/wp-content/uploads/2018/04/guitar-acoustic-tanglewood-twbb-sfce.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://amnhacvietthanh.vn/wp-content/uploads/2018/04/guitar-acoustic-tanglewood-twbb-sfce.jpg 800w, https://amnhacvietthanh.vn/wp-content/uploads/2018/04/guitar-acoustic-tanglewood-twbb-sfce-500x500.jpg 500w, https://amnhacvietthanh.vn/wp-content/uploads/2018/04/guitar-acoustic-tanglewood-twbb-sfce-300x300.jpg 300w, https://amnhacvietthanh.vn/wp-content/uploads/2018/04/guitar-acoustic-tanglewood-twbb-sfce-600x600.jpg 600w, https://amnhacvietthanh.vn/wp-content/uploads/2018/04/guitar-acoustic-tanglewood-twbb-sfce-400x400.jpg 400w\" alt=\"guitar acoustic tanglewood twbb sfce\" width=\"800\" height=\"800\" /></p>', 1, 1, 7, 10, '2022-12-12 17:24:14', '2022-12-12 17:24:14', '/storage/product/1/anwoRpxxwbnLQes62LNB.mp4', NULL),
(8, 'Taylor 314ce', 'taylor-314ce', 'taylor-310ce-01-400x400.jpg', '/storage/product/1/nDaZBEkuwAElqSpd8w4X.jpg', '11000000', '9000000', '<p>Tặng k&egrave;m kho&aacute; học guitar đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<p>Đ&agrave;n guitar Taylor 114CE c&oacute; d&aacute;ng Grand Auditorium. L&agrave; d&aacute;ng đ&agrave;n phổ biến v&agrave; linh hoạt nhất của Taylor. Grand Auditorium c&oacute; k&iacute;ch thước cỡ trung với tỷ lệ tinh tế, nhỏ hơn Dreadnought v&agrave; lớn hơn Grand Concert.</p>\r\n<ul>\r\n<li>Th&iacute;ch hợp với mọi mục đ&iacute;ch chơi đ&agrave;n từ mới tập đến biểu diễn s&acirc;n khấu.</li>\r\n<li>Đ&agrave;n Taylor 114CE c&oacute; tone c&acirc;n bằng, &acirc;m lượng v&agrave; tiếng pass lớn, đặc biệt th&iacute;ch hợp để chơi thể loại fingerstyle.</li>\r\n<li>Thiết kế Venetian cutaway tạo d&aacute;ng đ&agrave;n Guitar Acoustic mềm mại cuốn h&uacute;t</li>\r\n<li>L&agrave; kiểu đ&agrave;n Grand Auditorium đa năng nổi tiếng rực n&eacute;t &acirc;m thanh nguy&ecirc;n bản</li>\r\n<li>Bộ khuếch đại sống động ph&ugrave; hợp với nghệ sĩ tự do lẫn mixers chuy&ecirc;n nghiệp</li>\r\n<li>T&uacute;i gig k&egrave;m theo để bạn c&oacute; thể x&aacute;ch v&agrave; vận chuyển đ&agrave;n dễ d&agrave;ng</li>\r\n<li>Lớp UV đặc biệt gi&uacute;p bảo vệ đ&agrave;n khỏi t&aacute;c hại của m&ocirc;i trường v&agrave; giữ n&oacute; lu&ocirc;n mới</li>\r\n<li>Thanh giằng kiểu bậc thang l&agrave; b&iacute; quyết tạo n&ecirc;n sắc &acirc;m độc đ&aacute;o của nh&agrave; Taylor</li>\r\n<li>Độ phản hồi tuyệt vời c&ugrave;ng với &acirc;m trầm mạnh mẽ l&agrave; điểm ấn tượng nhất về &acirc;m thanh của n&oacute;</li>\r\n<li>Mặt b&ecirc;n v&agrave; mặt sau l&agrave; gỗ Sapele &eacute;p xếp lớp vừa tạo độ bền vừa mang lại chất lượng &acirc;m thanh ho&agrave;n hảo</li>\r\n<li>Về phần body đ&agrave;n, Taylor sử dụng chất liệu Sitka Spruce vốn l&agrave; tonewood ưu ti&ecirc;n h&agrave;ng đầu của h&atilde;ng</li>\r\n</ul>\r\n<p>Đ&agrave;n guitar Taylor 114CE th&iacute;ch hợp để chơi pick playing, fingerpicking, heavy strumming, chords v&agrave; hơn thế nữa</p>', 1, 1, 2, 5, '2022-12-12 17:26:22', '2022-12-12 17:26:22', '/storage/product/1/2uy9oBwGgoTFHI53xFJv.mp4', NULL),
(9, 'Deviser UK-21-30', 'deviser-uk-21-30', 'dan-ukulele-kalat-mau-cam.jpg', '/storage/product/1/2d3CKIcdCCQ0IupN5iZZ.jpg', '900000', '700000', '<p>Tặng k&egrave;m kho&aacute; học guitar đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<h2><strong>Thiết kế đẹp mắt</strong></h2>\r\n<p><strong><img src=\"https://vietthuongshop.vn/upload/content/images/roland/Nuvo/Deviser/Ukulele-Deviser-UK-21-30-1.jpg\" alt=\"Thiết kế của Ukulele Deviser UK-21-30\" /></strong></p>\r\n<p>Đ&agrave;n Ukulele Deviser Uk-21-30 được thương hiệu Deviser tạo ra một thiết kế rất đẹp mắt, với &nbsp;sự trau chuốt trong từng chi tiết thiết kế. Th&ugrave;ng đ&agrave;n v&agrave; cần đ&agrave;n đều c&oacute; th&ecirc;m chỉ viềm trắng nhỏ tr&ocirc;ng rất nổi bật, điều n&agrave;y đ&atilde; tạo được điểm nhấn cho những c&acirc;y đ&agrave;n. Điều n&agrave;y đ&atilde; l&agrave;m cho c&acirc;y đ&agrave;n trở n&ecirc;n nổi bật hơn trong thị trường đ&agrave;n ukulele.</p>\r\n<h2><strong>Tạo ra sự kh&aacute;c biệt</strong></h2>\r\n<p>Sản phẩm Ukulele Deviser UK-21-30 c&ograve;n tạo ra sự kh&aacute;c biệt ở bộ kh&oacute;a đ&uacute;c đi k&egrave;m, đ&acirc;y l&agrave; một thiết kế kh&aacute;c bi&ecirc;t ho&agrave;n to&agrave;n so với những c&acirc;y đ&agrave;n ukulele kh&aacute;c tr&ecirc;n thị trường. Điều n&agrave;y đủ thấy được đẳng cấp v&agrave; tầm cao của thương hiệu Deviser.</p>\r\n<h2><strong>Sự lựa chọn ho&agrave;n hảo cho người mới tập chơi</strong></h2>\r\n<p><strong><img src=\"https://vietthuongshop.vn/upload/content/images/roland/Nuvo/Deviser/Ukulele-Deviser-UK-21-30-2.jpg\" alt=\"Ukulele Deviser UK-21-30\" /></strong></p>\r\n<p>Đ&agrave;n Ukulele Soprano Deviser UK-21-20 c&oacute; k&iacute;ch thước chiều d&agrave;i 53cm (21inch), k&iacute;ch thước n&agrave;y được xem l&agrave; sự lựa chọn ho&agrave;n hảo cho những người c&oacute; b&agrave;n tay nhỏ, những người mới tập chơi v&agrave; đặc biệt l&agrave; trẻ em.</p>\r\n<p>&Acirc;m thanh của đ&agrave;n ph&ugrave; hợp với những giọng nữ c&oacute; &acirc;m vực cao, c&oacute; thể n&oacute;i l&agrave; &acirc;m vực cao nhất trong tất cả c&aacute;c loại giọng.</p>\r\n<h2><strong>Mức gi&aacute; hợp l&yacute;</strong></h2>\r\n<p>Đ&agrave;n Ukulele Deviser UK-21-30 c&oacute; một mức gi&aacute; kh&aacute; hợp l&yacute; cho người y&ecirc;u nhạc, mức gi&aacute; n&agrave;y ho&agrave;n to&agrave;n nằm trong khả năng chi trả của đại đa số người y&ecirc;u nhạc. V&igrave; vậy, những người y&ecirc;u th&iacute;ch đ&agrave;n ukulele hoặc muốn thử sức m&igrave;nh với nhạc cụ n&agrave;y th&igrave; ho&agrave;n to&agrave;n c&oacute; thể lựa chọn Ukulele Deviser UK-21-30 để sử dụng. Chắc chắn sản phẩm sẽ đem lại ho bạn những trải nghiệm tốt nhất trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n<h2><strong>Thiết kế gọn nhẹ</strong></h2>\r\n<p>Đ&acirc;y l&agrave; một trong những đặc điểm nổi bật của d&ograve;ng đ&agrave;n ukulele, thiết kế của sản phẩm rất gọn nhẹ, so với d&ograve;ng đ&agrave;n guitar, trọng lượng cũng như k&iacute;ch thước của Ukulele Deviser UK-21-30 nhỏ gọn, nhẹ nh&agrave;ng hơn rất nhiều. Điều n&agrave;y sẽ gi&uacute;p người y&ecirc;u nhạc dễ d&agrave;ng hơn khi sử dụng v&agrave; ho&agrave;n to&agrave;n c&oacute; thể mang theo b&ecirc;n m&igrave;nh để sử dụng khi cần. Mọi nơi bạn đến nếu bạn muốn ho&agrave;n to&agrave;n c&oacute; thể tạo ra &acirc;m nhạc bằng &acirc;m thanh của đ&agrave;n Ukulele Deviser UK-21-30.</p>\r\n<h2><strong>Sản phẩm của một thương hiệu c&oacute; uy t&iacute;n</strong></h2>\r\n<p><strong><img src=\"https://vietthuongshop.vn/upload/content/images/roland/Nuvo/Deviser/Ukulele-Deviser-UK-21-30-3.jpg\" alt=\"Ukulele Deviser UK-21-30 của thương hiệu nổi tiếng \" /></strong></p>\r\n<p>Ukulele Deviser UK-21-30 l&agrave; sản phẩm được thiết kế v&agrave; sản xuất bởi Deviser, đ&acirc;y l&agrave; một thương hiệu nổi tiếng trong sản xuất đ&agrave;n ukulele gi&aacute; rẻ m&agrave; vẫn đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu trong sử dụng. Thương hiệu n&agrave;y đ&atilde; v&agrave; đang nhận được niềm tin của rất nhiều người y&ecirc;u nhạc kh&ocirc;ng chỉ tại Việt Nam, m&agrave; c&ograve;n tại nhiều nước tr&ecirc;n thế giới.</p>', 0, 1, 8, -1, '2022-12-12 17:31:10', '2022-12-19 08:55:33', NULL, NULL),
(10, 'Deviser UK-21-30', 'deviser-uk-21-30', 'dan-ukulele-kalat-mau-xanh.jpg', '/storage/product/1/u3yjSjqiHOJid0rOrmUl.jpg', '900000', '700000', '<p>Tặng k&egrave;m kho&aacute; học guitar đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<h2><strong>Thiết kế đẹp mắt</strong></h2>\r\n<p><strong><img src=\"https://vietthuongshop.vn/upload/content/images/roland/Nuvo/Deviser/Ukulele-Deviser-UK-21-30-1.jpg\" alt=\"Thiết kế của Ukulele Deviser UK-21-30\" /></strong></p>\r\n<p>Đ&agrave;n Ukulele Deviser Uk-21-30 được thương hiệu Deviser tạo ra một thiết kế rất đẹp mắt, với &nbsp;sự trau chuốt trong từng chi tiết thiết kế. Th&ugrave;ng đ&agrave;n v&agrave; cần đ&agrave;n đều c&oacute; th&ecirc;m chỉ viềm trắng nhỏ tr&ocirc;ng rất nổi bật, điều n&agrave;y đ&atilde; tạo được điểm nhấn cho những c&acirc;y đ&agrave;n. Điều n&agrave;y đ&atilde; l&agrave;m cho c&acirc;y đ&agrave;n trở n&ecirc;n nổi bật hơn trong thị trường đ&agrave;n ukulele.</p>\r\n<h2><strong>Tạo ra sự kh&aacute;c biệt</strong></h2>\r\n<p>Sản phẩm Ukulele Deviser UK-21-30 c&ograve;n tạo ra sự kh&aacute;c biệt ở bộ kh&oacute;a đ&uacute;c đi k&egrave;m, đ&acirc;y l&agrave; một thiết kế kh&aacute;c bi&ecirc;t ho&agrave;n to&agrave;n so với những c&acirc;y đ&agrave;n ukulele kh&aacute;c tr&ecirc;n thị trường. Điều n&agrave;y đủ thấy được đẳng cấp v&agrave; tầm cao của thương hiệu Deviser.</p>\r\n<h2><strong>Sự lựa chọn ho&agrave;n hảo cho người mới tập chơi</strong></h2>\r\n<p><strong><img src=\"https://vietthuongshop.vn/upload/content/images/roland/Nuvo/Deviser/Ukulele-Deviser-UK-21-30-2.jpg\" alt=\"Ukulele Deviser UK-21-30\" /></strong></p>\r\n<p>Đ&agrave;n Ukulele Soprano Deviser UK-21-20 c&oacute; k&iacute;ch thước chiều d&agrave;i 53cm (21inch), k&iacute;ch thước n&agrave;y được xem l&agrave; sự lựa chọn ho&agrave;n hảo cho những người c&oacute; b&agrave;n tay nhỏ, những người mới tập chơi v&agrave; đặc biệt l&agrave; trẻ em.</p>\r\n<p>&Acirc;m thanh của đ&agrave;n ph&ugrave; hợp với những giọng nữ c&oacute; &acirc;m vực cao, c&oacute; thể n&oacute;i l&agrave; &acirc;m vực cao nhất trong tất cả c&aacute;c loại giọng.</p>\r\n<h2><strong>Mức gi&aacute; hợp l&yacute;</strong></h2>\r\n<p>Đ&agrave;n Ukulele Deviser UK-21-30 c&oacute; một mức gi&aacute; kh&aacute; hợp l&yacute; cho người y&ecirc;u nhạc, mức gi&aacute; n&agrave;y ho&agrave;n to&agrave;n nằm trong khả năng chi trả của đại đa số người y&ecirc;u nhạc. V&igrave; vậy, những người y&ecirc;u th&iacute;ch đ&agrave;n ukulele hoặc muốn thử sức m&igrave;nh với nhạc cụ n&agrave;y th&igrave; ho&agrave;n to&agrave;n c&oacute; thể lựa chọn Ukulele Deviser UK-21-30 để sử dụng. Chắc chắn sản phẩm sẽ đem lại ho bạn những trải nghiệm tốt nhất trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n<h2><strong>Thiết kế gọn nhẹ</strong></h2>\r\n<p>Đ&acirc;y l&agrave; một trong những đặc điểm nổi bật của d&ograve;ng đ&agrave;n ukulele, thiết kế của sản phẩm rất gọn nhẹ, so với d&ograve;ng đ&agrave;n guitar, trọng lượng cũng như k&iacute;ch thước của Ukulele Deviser UK-21-30 nhỏ gọn, nhẹ nh&agrave;ng hơn rất nhiều. Điều n&agrave;y sẽ gi&uacute;p người y&ecirc;u nhạc dễ d&agrave;ng hơn khi sử dụng v&agrave; ho&agrave;n to&agrave;n c&oacute; thể mang theo b&ecirc;n m&igrave;nh để sử dụng khi cần. Mọi nơi bạn đến nếu bạn muốn ho&agrave;n to&agrave;n c&oacute; thể tạo ra &acirc;m nhạc bằng &acirc;m thanh của đ&agrave;n Ukulele Deviser UK-21-30.</p>\r\n<h2><strong>Sản phẩm của một thương hiệu c&oacute; uy t&iacute;n</strong></h2>\r\n<p><strong><img src=\"https://vietthuongshop.vn/upload/content/images/roland/Nuvo/Deviser/Ukulele-Deviser-UK-21-30-3.jpg\" alt=\"Ukulele Deviser UK-21-30 của thương hiệu nổi tiếng \" /></strong></p>\r\n<p>Ukulele Deviser UK-21-30 l&agrave; sản phẩm được thiết kế v&agrave; sản xuất bởi Deviser, đ&acirc;y l&agrave; một thương hiệu nổi tiếng trong sản xuất đ&agrave;n ukulele gi&aacute; rẻ m&agrave; vẫn đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu trong sử dụng. Thương hiệu n&agrave;y đ&atilde; v&agrave; đang nhận được niềm tin của rất nhiều người y&ecirc;u nhạc kh&ocirc;ng chỉ tại Việt Nam, m&agrave; c&ograve;n tại nhiều nước tr&ecirc;n thế giới.</p>', 0, 1, 8, 12, '2022-12-12 17:32:31', '2022-12-18 07:00:36', NULL, NULL),
(11, 'Takamine GD10 NS', 'takamine-gd10-ns', 'takamine-gd10-ns-01-400x400.jpg', '/storage/product/1/I61Vbwpv5uQ7AqrItMOf.jpg', '6000000', '5700000', '<p>Tặng k&egrave;m kho&aacute; học guitar đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<h2><strong>Đ&agrave;n Guitar Takamine GD10 NS được thiết kế d&aacute;ng Dreadnought truyền thống. Thiết kế th&ugrave;ng đ&agrave;n lớn cho &acirc;m thanh mạnh mẽ, mang đến những trải nghiệm tuyệt vời cho người chơi.</strong></h2>\r\n<h2>&nbsp;</h2>\r\n<h3><strong>Thiết kế d&aacute;ng Dreadnought</strong></h3>\r\n<p>Takamine GD10 nổi bật với thiết kế d&aacute;ng Dreadnought truyền thống. Đ&acirc;y l&agrave; d&aacute;ng đ&agrave;n quen thuộc, được sử dụng phổ biến nhất trong nửa thế kỷ trước. Takamine GD10 c&oacute; th&ugrave;ng đ&agrave;n lớn cho &acirc;m thanh mạnh mẽ, mang đến những trải nghiệm tuyệt vời cho người chơi.</p>\r\n<p>Nếu bạn đang t&igrave;m kiếm một c&acirc;y đ&agrave;n c&oacute; chất lượng &acirc;m thanh tốt, mẫu m&atilde; đẹp mắt, gi&aacute; phải chăng, Takmine GD10 sẵn s&agrave;ng đ&aacute;p ứng c&aacute;c nhu cầu của bạn.</p>\r\n<p><img src=\"https://vietthuong.vn/image/catalog/takamine/takamine-gd10-ns-01.jpg\" alt=\"\" /></p>\r\n<h3><strong>Mặt trước được l&agrave;m bằng gỗ Spruce</strong></h3>\r\n<p>Đ&agrave;n Guitar Takamine GD10 c&oacute; mặt trước được l&agrave;m bằng gỗ Spruce. Đ&acirc;y l&agrave; loại gỗ c&oacute; độ bền v&agrave; độ dẻo dai cao, được sử dụng rất phổ biến để l&agrave;m đầu đ&agrave;n. Đặc t&iacute;nh của gỗ Spruce l&agrave; rất cứng v&agrave; nhẹ, c&oacute; tốc độ truyền &acirc;m thanh, độ vang rất cao, giai điệu rất r&otilde; r&agrave;ng v&agrave; đầy đủ. Đặc biệt GD10 c&oacute; độ ng&acirc;n l&acirc;u trong th&ugrave;ng đ&agrave;n, phản ứng tốt với bất kỳ phong c&aacute;ch chơi acoustic n&agrave;o, từ hard strumming đếm fast flatpicking hay delicate fingerpicking.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Mặt sau v&agrave; hai b&ecirc;n h&ocirc;ng được l&agrave;m bằng gỗ Mahogany</strong></h3>\r\n<p>C&aacute;c loại gỗ Mahogany c&oacute; thể được t&igrave;m thấy ở Trung Mỹ v&agrave; v&ugrave;ng Caribbean. Mahogany được sử dụng để l&agrave;m đầu đ&agrave;n , hoặc được sử dụng để l&agrave;m lưng v&agrave; 2 b&ecirc;n của đ&agrave;n Guitar. Loại gỗ n&agrave;y c&oacute; trọng lượng nhẹ hơn gỗ hồng mộc, Koa, nhưng &acirc;m thanh rất r&otilde; r&agrave;ng với trebles chuẩn v&agrave; tầm trung. &Acirc;m thanh ấm v&agrave; hợp với nhạc fingerpickers, blues.</p>\r\n<p>C&oacute; thể n&oacute;i Takamine GD10 mặt trước gỗ spruce tuyển chọn kết hợp với mặt sau v&agrave; h&ocirc;ng gỗ Mahogany cho &acirc;m thanh d&agrave;y, đầy đủ v&agrave; c&acirc;n bằng. Đ&acirc;y được xem như sự kết hợp chất liệu gỗ ho&agrave;n hảo cho cấu tr&uacute;c của một c&acirc;y guitar chất lượng, được ứng dụng ở rất nhiều d&ograve;ng guitar cao cấp đắt tiền tr&ecirc;n thế giới.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Cấu tr&uacute;c cần đ&agrave;n mỏng</strong></h3>\r\n<p>Takamine GD10 c&oacute; cần đ&agrave;n mỏng, cho cảm gi&aacute;c chơi mượt m&agrave;. Cần đ&agrave;n được l&agrave;m bằng gỗ mahogany với lớp sơn satin v&agrave; mặt ph&iacute;m gỗ avangkol b&aacute;n k&iacute;nh 12&rdquo; gi&uacute;p tối ưu h&oacute;a lối chơi v&agrave; cho bạn cảm gi&aacute;c v&ocirc; c&ugrave;ng thoải m&aacute;i.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>C&aacute;c t&iacute;nh năng kh&aacute;c</strong></h3>\r\n<p>Đ&agrave;n Guitar Takamine GD10 bao gồm c&aacute;c t&iacute;nh năng kh&aacute;c như: một ngựa đ&agrave;n pin-less ovangkol cho việc thay d&acirc;y đ&agrave;n dễ d&agrave;ng hơn, nut v&agrave; xương ngựa đ&agrave;n bằng nhựa tổng hợp, pearloid dot inlays, bộ chỉnh &acirc;m chrome die-cast v&agrave; một m&agrave;u sắc đơn giản m&agrave; kh&ocirc;ng k&eacute;m phần thu h&uacute;t Natural satin.</p>', 0, 1, 5, 7, '2022-12-12 17:37:41', '2022-12-12 17:37:41', '/storage/product/1/3OCLSRVCzSiOStuEf1PO.mp4', NULL),
(12, 'Taylor Academy A10', 'taylor-academy-a10', 'taylor-academy-12e-01.jpg', '/storage/product/1/GWd5K1DgiTo65QCeFvln.jpg', '9000000', '700000', '<p>Tặng k&egrave;m kho&aacute; học guitar đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<p>Taylor Academy 10 l&agrave; chiếc đ&agrave;n c&oacute; được tất cả c&aacute;c t&iacute;nh năng tuyệt vời của một chiếc dreanought cao cấp trong seri Academy của Taylor. Taylor Academy A10 l&agrave; chiếc guitar acoustic l&yacute; tưởng gi&uacute;p bạn n&acirc;ng cao kỹ thuật chơi v&agrave; ph&aacute;t triển như một nghệ sĩ thực thụ.</p>\r\n<h2><strong>C&acirc;y đ&agrave;n d&aacute;ng&nbsp;Dreadnought</strong></h2>\r\n<p><img src=\"https://vietthuong.vn/upload/content/images/Tuvan/Taylor-Academy-A10.jpg\" alt=\"\" /></p>\r\n<p>Đ&agrave;n guitar Taylor Academy 10 c&oacute; d&aacute;ng Dreadnought của Taylor, l&agrave; d&aacute;ng đ&agrave;n được những người y&ecirc;u th&iacute;ch &acirc;m nhạc mạnh mẽ v&agrave; tr&agrave;n đầy cảm x&uacute;c rất ưa chuộng. &nbsp;D&ograve;ng Dreadnought tạo ra c&acirc;y guitar c&oacute; &acirc;m s&acirc;u hơn c&aacute;c c&acirc;y cổ điển, hay n&oacute;i c&aacute;ch kh&aacute;c l&agrave; tiếng bass được thể hiện r&otilde; rệt hơn cả. Th&ugrave;ng đ&agrave;n lớn , tạo &acirc;m lượng gần như vang nhất trong tất cả c&aacute;c d&aacute;ng đ&agrave;n . Đ&agrave;n ph&ugrave; hợp với đ&aacute;nh ngo&agrave;i trời trong c&aacute;c buổi du ngoạn hoặc chơi đệm h&aacute;t.&nbsp;&nbsp;</p>\r\n<h2><strong>Non-cutaway</strong></h2>\r\n<p>L&agrave; một thiết kế kh&ocirc;ng cắt, Taylor Academy 10 mang đến vẻ ngo&agrave;i đơn giản, đối xứng của một c&acirc;y guitar acoustic truyền thống.</p>\r\n<h2><strong>Thiết kế độc đ&aacute;o kết hợp với mức gi&aacute; phải chăng</strong></h2>\r\n<p>Ch&uacute; &yacute; đến c&aacute;c chi tiết l&agrave; nền tảng ch&iacute;nh m&agrave; nh&agrave; sản xuất nghĩ đến khi seri Academy được thiết kế theo phong c&aacute;ch đặc trưng của Taylor, vừa đảm bảo &acirc;m thanh tinh tế m&agrave; vẫn sở hữu gi&aacute; cả phải chăng. Những chuy&ecirc;n gia l&agrave;m đ&agrave;n ở Taylor đ&atilde; cố gắng để n&acirc;ng cao sự thoải m&aacute;i v&agrave; khả năng chơi m&agrave; kh&ocirc;ng l&agrave;m ảnh hưởng đến chất lượng &acirc;m thanh.</p>\r\n<h2><strong>Th&acirc;n đ&agrave;n nhỏ gọn dễ chịu th&iacute;ch hợp với lối chơi strumming hay flatpicking</strong></h2>\r\n<p>Với d&aacute;ng đ&agrave;n Dreadnought nhỏ gọn v&agrave; tiện lợi, Academy 10 mang đến những phản hồi linh hoạt, cực k&igrave; th&iacute;ch hợp với lối chơi strumming hay flatpicking. Th&acirc;n đ&agrave;n c&oacute; một thắt eo thon gọn thoải m&aacute;i, một đệm tay được t&iacute;ch hợp mang đến cảm gi&aacute;c dễ chịu v&agrave; gi&uacute;p giảm mệt mỏi, kết hợp với chiều d&agrave;i gam ngắn v&agrave; bộ d&acirc;y đ&agrave;n s&aacute;ng mang đến cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.</p>\r\n<p>Một t&iacute;nh năng s&aacute;ng tạo nữa của d&ograve;ng Academy l&agrave; bộ phận tay vịn được t&iacute;ch hợp trong th&acirc;n đ&agrave;n để giảm mệt mỏi khi chơi l&acirc;u.</p>\r\n<h2><strong>Gỗ V&acirc;n Sam Sitka nguy&ecirc;n miếng ở mặt trước mang đến &acirc;m thanh linh hoạt v&agrave; độ vang lớn</strong></h2>\r\n<p>Mặt trước của Academy 10 l&agrave; một lựa chọn gỗ y&ecirc;u th&iacute;ch khi thiết kế th&ugrave;ng đ&agrave;n &ndash; gỗ Sitka nguy&ecirc;n miếng mang đến những tiếng vang r&otilde; r&agrave;ng, sắc n&eacute;t.</p>\r\n<h2><strong>Mặt sau v&agrave; hai b&ecirc;n h&ocirc;ng được l&agrave;m bằng c&aacute;c lớp gỗ sapele mang đến một khung đ&agrave;n chắc chắn</strong></h2>\r\n<p>Mặt sau v&agrave; h&ocirc;ng đ&agrave;n được l&agrave;m bằng c&aacute;c lớp gỗ sapele, tạo cho Academy 10 một h&igrave;nh thức b&oacute;ng bẩy trong một th&acirc;n đ&agrave;n chắc chắn. D&aacute;ng đ&agrave;n Dreadnought kết hợp với chất liệu gỗ cao cấp mang đến một t&ocirc;ng &acirc;m trầm ấm ở những qu&atilde;ng thấp v&agrave; những &acirc;m treble tươi s&aacute;ng với những phản hồi hết sức tuyệt vời, gi&uacute;p Academy c&oacute; được những &acirc;m thanh acoustic v&ocirc; c&ugrave;ng c&acirc;n bằng với độ sắc n&eacute;t cực cao.</p>\r\n<p><img src=\"https://www.taylorguitars.com/sites/default/files/styles/guitar_detail_horizontal/public/responsive-guitar-detail/Taylor-A10-bk-2017.png?itok=jhQppr_p\" alt=\"\" /></p>\r\n<h2><strong>Cần đ&agrave;n sapele mỏng độc đ&aacute;o của Taylor với chiều d&agrave;i gam ngắn (24-7/8 inch)</strong></h2>\r\n<p>Academy 10 được thiết kế với cần đ&agrave;n bằng gỗ sapele mảnh khảnh với độ d&agrave;i gam ngắn hơn so với ti&ecirc;u chuẩn (24-7/8 inch) mang đến cảm gi&aacute;c thoải m&aacute;i khi chơi.</p>\r\n<h2><strong>B&agrave;n ph&iacute;m bằng gỗ mun được trang tr&iacute; với c&aacute;c nốt họa tiết acrylic &Yacute; 4mm</strong></h2>\r\n<p>20 ph&iacute;m đ&agrave;n bằng gỗ mun cung cấp một bề mặt chơi bắt mắt b&ecirc;n dưới c&aacute;c ng&oacute;n tay. C&aacute;c ph&iacute;m đ&agrave;n cũng được trang tr&iacute; với c&aacute;c nốt họa tiết acrylic &Yacute; 4mm c&ugrave;ng với hệ thống d&acirc;y đ&agrave;n m&agrave;u s&aacute;ng cho bạn chơi kiểu bend d&acirc;y dễ d&agrave;ng hơn.</p>\r\n<h2><strong>Phần cứng</strong></h2>\r\n<p>Bộ chỉnh d&acirc;y bằng cr&ocirc;m chắc chắn được gắn chặt v&agrave;o đầu đ&agrave;n cho khả năng hoạt động tuyệt vời c&ugrave;ng với lược đ&agrave;n Nubone v&agrave; lưng ngựa đ&agrave;n Micarta cho khả năng giữ d&acirc;y v&agrave; ngữ điệu ch&iacute;nh x&aacute;c.</p>\r\n<h2><strong>Bao đ&agrave;n đi k&egrave;m</strong></h2>\r\n<p>Chiếc guitar n&agrave;y cũng được trang bị một t&uacute;i gig gọn nhẹ để bảo vệ đ&agrave;n khỏi va đập v&agrave; bụi bẩn.</p>', 1, 1, 2, 7, '2022-12-12 17:53:50', '2022-12-12 17:53:50', '/storage/product/1/S6AhrwpKnVm3sYRHewn3.mp4', NULL),
(13, 'Takamine GD51CE', 'takamine-gd51ce', 'Takamine-TH90-1-400x400-400x400.jpg', '/storage/product/1/nFYslzkhTUFY6pint133.jpg', '9000000', '8900000', '<p>Tặng k&egrave;m kho&aacute; học guitar đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<h3><strong>D&aacute;ng đ&agrave;n Classic Cutaway</strong></h3>\r\n<h3>&nbsp;</h3>\r\n<p><strong><img src=\"https://vietthuongshop.vn/upload/content/images/Takamine-TH90-2.jpg\" alt=\"\" /></strong></p>\r\n<p>Đ&agrave;n Guitar Takamine TH90 được thiết kế thảo phong c&aacute;ch Classic Cutaway cổ điển. C&acirc;y đ&agrave;n ra đời l&agrave; một minh chứng ti&ecirc;u biểu cho nghệ thuật Luthier, mang đến cho người chơi &acirc;m thanh ho&agrave;n hảo.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Mặt trước được l&agrave;m bằng gỗ V&acirc;n sam</strong></h3>\r\n<p>Đ&agrave;n Guitar Takamine TH90 c&oacute; mặt đ&agrave;n được l&agrave;m bằng gỗ V&acirc;n Sam. Đ&acirc;y l&agrave; loại gỗ c&oacute; độ bền v&agrave; độ dẻo dai cao, được sử dụng rất phổ biến để l&agrave;m đầu đ&agrave;n.</p>\r\n<p>Đặc t&iacute;nh của gỗ Spruce l&agrave; rất cứng v&agrave; nhẹ, n&ecirc;n c&oacute; tốc độ truyền &acirc;m thanh, độ vang rất cao, giai điệu rất r&otilde; r&agrave;ng v&agrave; đầy đủ. Gỗ cho độ ng&acirc;n l&acirc;u trong th&ugrave;ng đ&agrave;n, phản ứng tốt với bất kỳ phong c&aacute;ch chơi acoustic n&agrave;o, từ hard strumming đếm fast flatpicking hay delicate fingerpicking.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Mặt sau v&agrave; hai b&ecirc;n h&ocirc;ng được l&agrave;m bằng gỗ Hồng mộc</strong></h3>\r\n<h3>&nbsp;</h3>\r\n<p><strong><img src=\"https://vietthuongshop.vn/upload/content/images/Takamine-TH90-3.jpg\" alt=\"\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<p>Mặt sau v&agrave; hai b&ecirc;n h&ocirc;ng Takamine TH90 được l&agrave;m bằng gỗ hồng mộc mang đến những &acirc;m thanh d&agrave;y v&agrave; lớn. Đặc t&iacute;nh của gỗ Hồng mộc l&agrave; c&oacute; tốc độ truyền &acirc;m thanh cao, với một loạt c&aacute;c &acirc;m bội.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Cần đ&agrave;n được l&agrave;m bằng gỗ Gụ</strong></h3>\r\n<p>Cần đ&agrave;n được l&agrave;m bằng gỗ Gụ. Đ&acirc;y l&agrave; loại gỗ bền với thời gian, kh&ocirc;ng bị cong v&ecirc;nh hay nứt nẻ.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Mặt ph&iacute;m đ&agrave;n được l&agrave;m bằng gỗ Hồng mộc</strong></h3>\r\n<p>Mặt ph&iacute;m đ&agrave;n được l&agrave;m bằng gỗ hồng mộc mang đến cảm gi&aacute;c ch&acirc;n thật, dễ chịu khi chơi.</p>', 1, 1, 5, 5, '2022-12-12 17:59:30', '2022-12-12 17:59:30', NULL, NULL),
(14, 'CHARD WD-24THX-S', 'chard-wd-24thx-s', 'dan-ukulele-chard-u-24y_3967.jpg', '/storage/product/1/64GoEz9JHNIt7TUWH9Fk.jpg', '1125000', '1000000', '<p>Tặng k&egrave;m kho&aacute; học guitar đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<h3>Cấu tạo của đ&agrave;n&nbsp;<a href=\"https://nhaccutiendat.vn/ukulele-concert/dan-ukulele-chard-wd-24thx-s.html\">Chard WD-24THX-S</a>&nbsp;bao gồm</h3>\r\n<ul>\r\n<li>- Mặt Top l&agrave; Gỗ Gụ&nbsp;SOLID NGUY&Ecirc;N TẤM&nbsp;cao cấp, một loại gỗ v&ocirc; c&ugrave;ng qu&yacute; hiếm v&agrave; chất lượng,&nbsp;cho &acirc;m thanh s&aacute;ng lấp l&aacute;nh, cộng hưởng &acirc;m thanh tốt, tầm trung mạnh mẽ.&nbsp;Đặc biệt sau khi vỡ tiếng, độ vang&nbsp;của đ&agrave;n sẽ tốt&nbsp;hơn, &acirc;m thanh r&otilde; r&agrave;ng&nbsp;v&agrave; kh&aacute; ấm.​</li>\r\n</ul>\r\n<p><img src=\"https://nhaccutiendat.vn/upload/img/dan-ukulele-chard-wd-24thx-s_5278.jpg?width=1000&amp;height=1000&amp;quality=100\" alt=\"Ukulele CHARD WD-24THX-S gia re\" /></p>\r\n<ul>\r\n<li>- Mặt lưng v&agrave; h&ocirc;ng&nbsp;l&agrave; Gỗ Gụ, mật độ cao, cứng thiết kế đặc biệt chắc chắn cho kết cấu khung đ&agrave;n c&oacute; độ bền cao</li>\r\n</ul>\r\n<p><img src=\"https://nhaccutiendat.vn/upload/img/dan-ukulele-chard-wd-24thx-s_4336.jpg?width=1000&amp;height=1000&amp;quality=100\" alt=\"Ukulele CHARD WD-24THX-S gia re\" /></p>\r\n<ul>\r\n<li>- D&aacute;ng đầy cho khả năng khuếch đại &acirc;m thanh tốt hơn, đồng thời cũng cho cảm gi&aacute;c rất chắc tay &amp; gi&uacute;p tăng sự thoải m&aacute;i khi chơi.</li>\r\n</ul>', 1, 1, 9, 10, '2022-12-12 18:04:06', '2022-12-12 18:04:06', NULL, NULL),
(15, 'CHARD CHARD U-24D', 'chard-chard-u-24d', 'dan-ukulele-tokado-uk-23-mau-cam_5916.jpg', '/storage/product/1/6RqHS0PV2iMzGrs87gDz.jpg', '1300000', '1150000', '<p>Tặng k&egrave;m kho&aacute; học guitar đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<h3>Cấu tạo của đ&agrave;n&nbsp;<a href=\"https://nhaccutiendat.vn/ukulele-concert/dan-ukulele-chard-wd-24thx-s.html\">Chard WD-24THX-S</a>&nbsp;bao gồm</h3>\r\n<ul>\r\n<li>- Mặt Top l&agrave; Gỗ Gụ&nbsp;SOLID NGUY&Ecirc;N TẤM&nbsp;cao cấp, một loại gỗ v&ocirc; c&ugrave;ng qu&yacute; hiếm v&agrave; chất lượng,&nbsp;cho &acirc;m thanh s&aacute;ng lấp l&aacute;nh, cộng hưởng &acirc;m thanh tốt, tầm trung mạnh mẽ.&nbsp;Đặc biệt sau khi vỡ tiếng, độ vang&nbsp;của đ&agrave;n sẽ tốt&nbsp;hơn, &acirc;m thanh r&otilde; r&agrave;ng&nbsp;v&agrave; kh&aacute; ấm.​</li>\r\n</ul>\r\n<p><img src=\"https://nhaccutiendat.vn/upload/img/dan-ukulele-chard-wd-24thx-s_5278.jpg?width=1000&amp;height=1000&amp;quality=100\" alt=\"Ukulele CHARD WD-24THX-S gia re\" /></p>\r\n<ul>\r\n<li>- Mặt lưng v&agrave; h&ocirc;ng&nbsp;l&agrave; Gỗ Gụ, mật độ cao, cứng thiết kế đặc biệt chắc chắn cho kết cấu khung đ&agrave;n c&oacute; độ bền cao</li>\r\n</ul>\r\n<p><img src=\"https://nhaccutiendat.vn/upload/img/dan-ukulele-chard-wd-24thx-s_4336.jpg?width=1000&amp;height=1000&amp;quality=100\" alt=\"Ukulele CHARD WD-24THX-S gia re\" /></p>\r\n<ul>\r\n<li>- D&aacute;ng đầy cho khả năng khuếch đại &acirc;m thanh tốt hơn, đồng thời cũng cho cảm gi&aacute;c rất chắc tay &amp; gi&uacute;p tăng sự thoải m&aacute;i khi chơi.</li>\r\n</ul>', 1, 1, 9, 9, '2022-12-12 18:06:13', '2022-12-19 03:20:57', NULL, NULL),
(16, 'CHARD U-24H', 'chard-u-24h', 'dan-ukulele-chard-u-24i_5908.jpg', '/storage/product/1/1aHWae9WTkvrLiWUfLTs.jpg', '1200000', '1150000', '<p>Tặng k&egrave;m kho&aacute; học ukulele đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<h3>Cấu tạo của đ&agrave;n&nbsp;<a href=\"https://nhaccutiendat.vn/ukulele-concert/dan-ukulele-chard-wd-24thx-s.html\">Chard WD-24THX-S</a>&nbsp;bao gồm</h3>\r\n<ul>\r\n<li>- Mặt Top l&agrave; Gỗ Gụ&nbsp;SOLID NGUY&Ecirc;N TẤM&nbsp;cao cấp, một loại gỗ v&ocirc; c&ugrave;ng qu&yacute; hiếm v&agrave; chất lượng,&nbsp;cho &acirc;m thanh s&aacute;ng lấp l&aacute;nh, cộng hưởng &acirc;m thanh tốt, tầm trung mạnh mẽ.&nbsp;Đặc biệt sau khi vỡ tiếng, độ vang&nbsp;của đ&agrave;n sẽ tốt&nbsp;hơn, &acirc;m thanh r&otilde; r&agrave;ng&nbsp;v&agrave; kh&aacute; ấm.​</li>\r\n</ul>\r\n<p><img src=\"https://nhaccutiendat.vn/upload/img/dan-ukulele-chard-wd-24thx-s_5278.jpg?width=1000&amp;height=1000&amp;quality=100\" alt=\"Ukulele CHARD WD-24THX-S gia re\" /></p>\r\n<ul>\r\n<li>- Mặt lưng v&agrave; h&ocirc;ng&nbsp;l&agrave; Gỗ Gụ, mật độ cao, cứng thiết kế đặc biệt chắc chắn cho kết cấu khung đ&agrave;n c&oacute; độ bền cao</li>\r\n</ul>\r\n<p><img src=\"https://nhaccutiendat.vn/upload/img/dan-ukulele-chard-wd-24thx-s_4336.jpg?width=1000&amp;height=1000&amp;quality=100\" alt=\"Ukulele CHARD WD-24THX-S gia re\" /></p>\r\n<ul>\r\n<li>- D&aacute;ng đầy cho khả năng khuếch đại &acirc;m thanh tốt hơn, đồng thời cũng cho cảm gi&aacute;c rất chắc tay &amp; gi&uacute;p tăng sự thoải m&aacute;i khi chơi.</li>\r\n</ul>', 1, 1, 9, 6, '2022-12-12 18:10:20', '2022-12-19 03:17:07', NULL, NULL),
(17, 'CHARD U-24H', 'chard-u-24h', 'dan-ukulele-chard-u-24g_5017.jpg', '/storage/product/1/wg3cDCqbg0ZzAUiSbpzP.jpg', '1200000', '1150000', '<p>Tặng k&egrave;m kho&aacute; học ukulele đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<h3>Cấu tạo của đ&agrave;n&nbsp;<a href=\"https://nhaccutiendat.vn/ukulele-concert/dan-ukulele-chard-wd-24thx-s.html\">Chard WD-24THX-S</a>&nbsp;bao gồm</h3>\r\n<ul>\r\n<li>- Mặt Top l&agrave; Gỗ Gụ&nbsp;SOLID NGUY&Ecirc;N TẤM&nbsp;cao cấp, một loại gỗ v&ocirc; c&ugrave;ng qu&yacute; hiếm v&agrave; chất lượng,&nbsp;cho &acirc;m thanh s&aacute;ng lấp l&aacute;nh, cộng hưởng &acirc;m thanh tốt, tầm trung mạnh mẽ.&nbsp;Đặc biệt sau khi vỡ tiếng, độ vang&nbsp;của đ&agrave;n sẽ tốt&nbsp;hơn, &acirc;m thanh r&otilde; r&agrave;ng&nbsp;v&agrave; kh&aacute; ấm.​</li>\r\n</ul>\r\n<p><img src=\"https://nhaccutiendat.vn/upload/img/dan-ukulele-chard-wd-24thx-s_5278.jpg?width=1000&amp;height=1000&amp;quality=100\" alt=\"Ukulele CHARD WD-24THX-S gia re\" /></p>\r\n<ul>\r\n<li>- Mặt lưng v&agrave; h&ocirc;ng&nbsp;l&agrave; Gỗ Gụ, mật độ cao, cứng thiết kế đặc biệt chắc chắn cho kết cấu khung đ&agrave;n c&oacute; độ bền cao</li>\r\n</ul>\r\n<p><img src=\"https://nhaccutiendat.vn/upload/img/dan-ukulele-chard-wd-24thx-s_4336.jpg?width=1000&amp;height=1000&amp;quality=100\" alt=\"Ukulele CHARD WD-24THX-S gia re\" /></p>\r\n<ul>\r\n<li>- D&aacute;ng đầy cho khả năng khuếch đại &acirc;m thanh tốt hơn, đồng thời cũng cho cảm gi&aacute;c rất chắc tay &amp; gi&uacute;p tăng sự thoải m&aacute;i khi chơi.</li>\r\n</ul>', 1, 1, 9, 6, '2022-12-12 18:10:34', '2022-12-18 06:59:10', NULL, NULL),
(18, 'CHARD U-25D', 'chard-u-25d', 'dan-ukulele-tokado-uk-23-mau-den_2011.jpg', '/storage/product/1/Ae25J5mHQhrUIfMuRs7s.jpg', '1400000', '1350000', '<p>Tặng k&egrave;m kho&aacute; học ukulele đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<h3>Cấu tạo của đ&agrave;n&nbsp;<a href=\"https://nhaccutiendat.vn/ukulele-concert/dan-ukulele-chard-wd-24thx-s.html\">Chard WD-24THX-S</a>&nbsp;bao gồm</h3>\r\n<ul>\r\n<li>- Mặt Top l&agrave; Gỗ Gụ&nbsp;SOLID NGUY&Ecirc;N TẤM&nbsp;cao cấp, một loại gỗ v&ocirc; c&ugrave;ng qu&yacute; hiếm v&agrave; chất lượng,&nbsp;cho &acirc;m thanh s&aacute;ng lấp l&aacute;nh, cộng hưởng &acirc;m thanh tốt, tầm trung mạnh mẽ.&nbsp;Đặc biệt sau khi vỡ tiếng, độ vang&nbsp;của đ&agrave;n sẽ tốt&nbsp;hơn, &acirc;m thanh r&otilde; r&agrave;ng&nbsp;v&agrave; kh&aacute; ấm.​</li>\r\n</ul>\r\n<p><img src=\"https://nhaccutiendat.vn/upload/img/dan-ukulele-chard-wd-24thx-s_5278.jpg?width=1000&amp;height=1000&amp;quality=100\" alt=\"Ukulele CHARD WD-24THX-S gia re\" /></p>\r\n<ul>\r\n<li>- Mặt lưng v&agrave; h&ocirc;ng&nbsp;l&agrave; Gỗ Gụ, mật độ cao, cứng thiết kế đặc biệt chắc chắn cho kết cấu khung đ&agrave;n c&oacute; độ bền cao</li>\r\n</ul>\r\n<p><img src=\"https://nhaccutiendat.vn/upload/img/dan-ukulele-chard-wd-24thx-s_4336.jpg?width=1000&amp;height=1000&amp;quality=100\" alt=\"Ukulele CHARD WD-24THX-S gia re\" /></p>\r\n<ul>\r\n<li>- D&aacute;ng đầy cho khả năng khuếch đại &acirc;m thanh tốt hơn, đồng thời cũng cho cảm gi&aacute;c rất chắc tay &amp; gi&uacute;p tăng sự thoải m&aacute;i khi chơi.</li>\r\n</ul>', 1, 1, 9, 7, '2022-12-12 18:11:44', '2022-12-12 18:11:44', NULL, NULL);
INSERT INTO `products` (`id`, `name`, `slug`, `feature_image_name`, `feature_image_path`, `price`, `sale_price`, `short_desc`, `description`, `status`, `user_id`, `category_product_id`, `quantity`, `created_at`, `updated_at`, `video`, `deleted_at`) VALUES
(19, 'Deviser U-25D', 'deviser-u-25d', 'dan-ukulele-sqoe-sq-uk-2420c_9017.jpg', '/storage/product/1/I4VqlJdX8DOpHkaKwd6q.jpg', '1400000', '1350000', '<p>Tặng k&egrave;m kho&aacute; học ukulele đệm h&aacute;t cơ bản online</p>\r\n<p>Tặng k&egrave;m bao da 3 lớp + pick A100 + Capo B601</p>\r\n<p>Tặng Voucher mua d&acirc;y đ&agrave;n Elixir tại SWEELEE với gi&aacute; 300.000đ</p>', '<h3>Cấu tạo của đ&agrave;n&nbsp;<a href=\"https://nhaccutiendat.vn/ukulele-concert/dan-ukulele-chard-wd-24thx-s.html\">Chard WD-24THX-S</a>&nbsp;bao gồm</h3>\r\n<ul>\r\n<li>- Mặt Top l&agrave; Gỗ Gụ&nbsp;SOLID NGUY&Ecirc;N TẤM&nbsp;cao cấp, một loại gỗ v&ocirc; c&ugrave;ng qu&yacute; hiếm v&agrave; chất lượng,&nbsp;cho &acirc;m thanh s&aacute;ng lấp l&aacute;nh, cộng hưởng &acirc;m thanh tốt, tầm trung mạnh mẽ.&nbsp;Đặc biệt sau khi vỡ tiếng, độ vang&nbsp;của đ&agrave;n sẽ tốt&nbsp;hơn, &acirc;m thanh r&otilde; r&agrave;ng&nbsp;v&agrave; kh&aacute; ấm.​</li>\r\n</ul>\r\n<p><img src=\"https://nhaccutiendat.vn/upload/img/dan-ukulele-chard-wd-24thx-s_5278.jpg?width=1000&amp;height=1000&amp;quality=100\" alt=\"Ukulele CHARD WD-24THX-S gia re\" /></p>\r\n<ul>\r\n<li>- Mặt lưng v&agrave; h&ocirc;ng&nbsp;l&agrave; Gỗ Gụ, mật độ cao, cứng thiết kế đặc biệt chắc chắn cho kết cấu khung đ&agrave;n c&oacute; độ bền cao</li>\r\n</ul>\r\n<p><img src=\"https://nhaccutiendat.vn/upload/img/dan-ukulele-chard-wd-24thx-s_4336.jpg?width=1000&amp;height=1000&amp;quality=100\" alt=\"Ukulele CHARD WD-24THX-S gia re\" /></p>\r\n<ul>\r\n<li>- D&aacute;ng đầy cho khả năng khuếch đại &acirc;m thanh tốt hơn, đồng thời cũng cho cảm gi&aacute;c rất chắc tay &amp; gi&uacute;p tăng sự thoải m&aacute;i khi chơi.</li>\r\n</ul>', 1, 1, 9, 7, '2022-12-12 18:15:05', '2022-12-12 18:15:05', NULL, NULL),
(20, 'Elixir 14077', 'elixir-14077', 'elixir-bass-4-day-nanoweb-400x400.jpg', '/storage/product/1/rSoqduzP6Xo7UD2opu6O.jpg', '370000', '350000', '<p>Cam kết sản phẩm ch&iacute;nh h&atilde;ng</p>\r\n<p>Bảo h&agrave;nh lỗi 1 đổi 1 trong 30 ng&agrave;y đầu</p>\r\n<p>&nbsp;</p>', '<ul>\r\n<li>D&acirc;y đ&agrave;n guitar bass điện được l&agrave;m bằng d&acirc;y quấn th&eacute;p mạ niken</li>\r\n<li>Ph&aacute;t ra&nbsp;&acirc;m thanh đầy đặn, phong ph&uacute; với độ r&otilde; n&eacute;t đ&aacute;ng kinh ngạc với&nbsp;dải trung trầm nặng</li>\r\n<li>Lớp phủ NANOWEB si&ecirc;u mỏng, được thiết kế d&agrave;nh ri&ecirc;ng cho guitar bass, mang lại cảm gi&aacute;c mượt m&agrave;, tự nhi&ecirc;n v&agrave;&nbsp;tăng cường độ b&aacute;m</li>\r\n<li>C&ocirc;ng nghệ lớp phủ được cấp bằng s&aacute;ng chế chống lại sự ăn m&ograve;n, k&eacute;o d&agrave;i tuổi thọ &acirc;m sắc hơn bất kỳ d&acirc;y c&oacute; phủ hoặc kh&ocirc;ng phủ của thương hiệu n&agrave;o kh&aacute;c</li>\r\n</ul>', 1, 1, 10, 49, '2022-12-12 18:19:23', '2022-12-19 07:44:09', NULL, NULL),
(21, 'Elixir 24599', 'elixir-24599', 'elixir-16552-400x400.jpg', '/storage/product/1/Iy5CWbchLJBKURZ8H4A4.jpg', '470000', '450000', '<p>Cam kết sản phẩm ch&iacute;nh h&atilde;ng</p>\r\n<p>Bảo h&agrave;nh lỗi 1 đổi 1 trong 30 ng&agrave;y đầu</p>\r\n<p>&nbsp;</p>', '<ul>\r\n<li>D&acirc;y đ&agrave;n guitar bass điện được l&agrave;m bằng d&acirc;y quấn th&eacute;p mạ niken</li>\r\n<li>Ph&aacute;t ra&nbsp;&acirc;m thanh đầy đặn, phong ph&uacute; với độ r&otilde; n&eacute;t đ&aacute;ng kinh ngạc với&nbsp;dải trung trầm nặng</li>\r\n<li>Lớp phủ NANOWEB si&ecirc;u mỏng, được thiết kế d&agrave;nh ri&ecirc;ng cho guitar bass, mang lại cảm gi&aacute;c mượt m&agrave;, tự nhi&ecirc;n v&agrave;&nbsp;tăng cường độ b&aacute;m</li>\r\n<li>C&ocirc;ng nghệ lớp phủ được cấp bằng s&aacute;ng chế chống lại sự ăn m&ograve;n, k&eacute;o d&agrave;i tuổi thọ &acirc;m sắc hơn bất kỳ d&acirc;y c&oacute; phủ hoặc kh&ocirc;ng phủ của thương hiệu n&agrave;o kh&aacute;c</li>\r\n</ul>', 1, 1, 10, 13, '2022-12-12 18:19:52', '2022-12-19 07:44:09', NULL, NULL),
(22, 'Dadadio Xtab', 'dadadio-xtab', 'daddario-xtapb1253-400x400.jpg', '/storage/product/1/6I82q7JT0FnxPJXs9afp.jpg', '270000', '230000', '<p>Cam kết sản phẩm ch&iacute;nh h&atilde;ng</p>\r\n<p>Bảo h&agrave;nh lỗi 1 đổi 1 trong 30 ng&agrave;y đầu</p>\r\n<p>&nbsp;</p>', '<ul>\r\n<li>D&acirc;y đ&agrave;n guitar bass điện được l&agrave;m bằng d&acirc;y quấn th&eacute;p mạ niken</li>\r\n<li>Ph&aacute;t ra&nbsp;&acirc;m thanh đầy đặn, phong ph&uacute; với độ r&otilde; n&eacute;t đ&aacute;ng kinh ngạc với&nbsp;dải trung trầm nặng</li>\r\n<li>Lớp phủ NANOWEB si&ecirc;u mỏng, được thiết kế d&agrave;nh ri&ecirc;ng cho guitar bass, mang lại cảm gi&aacute;c mượt m&agrave;, tự nhi&ecirc;n v&agrave;&nbsp;tăng cường độ b&aacute;m</li>\r\n<li>C&ocirc;ng nghệ lớp phủ được cấp bằng s&aacute;ng chế chống lại sự ăn m&ograve;n, k&eacute;o d&agrave;i tuổi thọ &acirc;m sắc hơn bất kỳ d&acirc;y c&oacute; phủ hoặc kh&ocirc;ng phủ của thương hiệu n&agrave;o kh&aacute;c</li>\r\n</ul>', 1, 1, 10, 15, '2022-12-12 18:21:08', '2022-12-12 18:21:08', NULL, NULL),
(23, 'Dadadio Xsab', 'dadadio-xsab', 'daddario-xsapb1152-450x471.jpg', '/storage/product/1/tV5AiMvgXFXfT88tpZdu.jpg', '290000', '260000', '<p>Cam kết sản phẩm ch&iacute;nh h&atilde;ng</p>\r\n<p>Bảo h&agrave;nh lỗi 1 đổi 1 trong 30 ng&agrave;y đầu</p>\r\n<p>&nbsp;</p>', '<ul>\r\n<li>D&acirc;y đ&agrave;n guitar bass điện được l&agrave;m bằng d&acirc;y quấn th&eacute;p mạ niken</li>\r\n<li>Ph&aacute;t ra&nbsp;&acirc;m thanh đầy đặn, phong ph&uacute; với độ r&otilde; n&eacute;t đ&aacute;ng kinh ngạc với&nbsp;dải trung trầm nặng</li>\r\n<li>Lớp phủ NANOWEB si&ecirc;u mỏng, được thiết kế d&agrave;nh ri&ecirc;ng cho guitar bass, mang lại cảm gi&aacute;c mượt m&agrave;, tự nhi&ecirc;n v&agrave;&nbsp;tăng cường độ b&aacute;m</li>\r\n<li>C&ocirc;ng nghệ lớp phủ được cấp bằng s&aacute;ng chế chống lại sự ăn m&ograve;n, k&eacute;o d&agrave;i tuổi thọ &acirc;m sắc hơn bất kỳ d&acirc;y c&oacute; phủ hoặc kh&ocirc;ng phủ của thương hiệu n&agrave;o kh&aacute;c</li>\r\n</ul>', 1, 1, 10, 15, '2022-12-12 18:22:45', '2022-12-12 18:22:45', NULL, NULL),
(24, 'Elixir 4230', 'elixir-4230', 'elixir-acoustic-guitar-strings-11002-extra-light.jpg', '/storage/product/1/nnGCHBBkMD40aKbnv9Yl.jpg', '390000', '360000', '<p>Cam kết sản phẩm ch&iacute;nh h&atilde;ng</p>\r\n<p>Bảo h&agrave;nh lỗi 1 đổi 1 trong 30 ng&agrave;y đầu</p>\r\n<p>&nbsp;</p>', '<ul>\r\n<li>D&acirc;y đ&agrave;n guitar bass điện được l&agrave;m bằng d&acirc;y quấn th&eacute;p mạ niken</li>\r\n<li>Ph&aacute;t ra&nbsp;&acirc;m thanh đầy đặn, phong ph&uacute; với độ r&otilde; n&eacute;t đ&aacute;ng kinh ngạc với&nbsp;dải trung trầm nặng</li>\r\n<li>Lớp phủ NANOWEB si&ecirc;u mỏng, được thiết kế d&agrave;nh ri&ecirc;ng cho guitar bass, mang lại cảm gi&aacute;c mượt m&agrave;, tự nhi&ecirc;n v&agrave;&nbsp;tăng cường độ b&aacute;m</li>\r\n<li>C&ocirc;ng nghệ lớp phủ được cấp bằng s&aacute;ng chế chống lại sự ăn m&ograve;n, k&eacute;o d&agrave;i tuổi thọ &acirc;m sắc hơn bất kỳ d&acirc;y c&oacute; phủ hoặc kh&ocirc;ng phủ của thương hiệu n&agrave;o kh&aacute;c</li>\r\n</ul>', 1, 1, 10, 10, '2022-12-12 18:24:23', '2022-12-12 23:03:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `image_name`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, '/storage/product/1/4dm1iTlFJ9Nfl1TMtqn4.jpg', 'Taylor-114E-2.jpg', 4, '2022-12-12 09:50:18', '2022-12-12 09:50:18', NULL),
(5, '/storage/product/1/MTkOLfIjVhAbqVE6UJLw.jpg', 'Taylor-114E-3.jpg', 4, '2022-12-12 09:50:18', '2022-12-12 09:50:18', NULL),
(7, '/storage/product/1/ilBpcYYogPUgvkoeoocf.jpg', 'taylor-114ce-01.jpg', 5, '2022-12-12 15:53:39', '2022-12-12 15:53:39', NULL),
(8, '/storage/product/1/Y5ZAp5m3Z3RrGXv7nP2y.jpg', 'taylor-114ce-02.jpg', 5, '2022-12-12 15:53:39', '2022-12-12 15:53:39', NULL),
(9, '/storage/product/1/DaoBAsVjHcjRDWR7FeZN.jpg', 'fender-fsr-cd-60s-flm-ext-sb-wn-05.jpg', 6, '2022-12-12 17:16:19', '2022-12-12 17:16:19', NULL),
(10, '/storage/product/1/t1GwxtNvAlPXod86Ijq1.jpg', 'fender-fsr-v3-cd60-chy-wn-02.jpg', 6, '2022-12-12 17:16:19', '2022-12-12 17:16:19', NULL),
(11, '/storage/product/1/3hev4AWKtQJG31A6s9IR.jpg', 'fender-fsr-v3-cd60-chy-wn-03.jpg', 6, '2022-12-12 17:16:19', '2022-12-12 17:16:19', NULL),
(12, '/storage/product/1/JiyjlHiTqQUtocaQOq7i.jpg', 'fender-fsr-v3-cd60-chy-wn-04.jpg', 6, '2022-12-12 17:16:19', '2022-12-12 17:16:19', NULL),
(13, '/storage/product/1/CUnlMW1diN08mZm21MXr.jpg', 'tanglewoodguitars-twbbsde-01-400x400.jpg', 7, '2022-12-12 17:24:14', '2022-12-12 17:24:14', NULL),
(14, '/storage/product/1/Wegqa9xj3sHJaaL1oCxf.jpg', 'tanglewoodguitars-twbbsde-02.jpg', 7, '2022-12-12 17:24:14', '2022-12-12 17:24:14', NULL),
(15, '/storage/product/1/8yFjrwhRuMSijrTEI34F.jpg', 'tanglewood-twcrdce-400x400.jpg', 7, '2022-12-12 17:24:14', '2022-12-12 17:24:14', NULL),
(16, '/storage/product/1/zr8QBZEz6ZyKp3xrVhgX.jpg', 'taylor-310ce-01-400x400.jpg', 8, '2022-12-12 17:26:22', '2022-12-12 17:26:22', NULL),
(17, '/storage/product/1/aY6eJZU1VlkAqP2wp7O6.jpg', 'taylor-academy-12e-03.jpg', 8, '2022-12-12 17:26:22', '2022-12-12 17:26:22', NULL),
(18, '/storage/product/1/yzI84UV7kleFbLpgvz90.jpg', 'dan-ukulele-kalat-mau-cam_2465.jpg', 9, '2022-12-12 17:31:10', '2022-12-12 17:31:10', NULL),
(19, '/storage/product/1/yRHu4VNycg9ep4gGUDWc.jpg', 'dan-ukulele-kalat-mau-cam_2927.jpg', 9, '2022-12-12 17:31:10', '2022-12-12 17:31:10', NULL),
(20, '/storage/product/1/Os88fl2n07Hu3RefYx5O.jpg', 'dan-ukulele-kalat-mau-cam_4647.jpg', 9, '2022-12-12 17:31:10', '2022-12-12 17:31:10', NULL),
(21, '/storage/product/1/r6oEcy4Ma69LVfsS3pj3.jpg', 'dan-ukulele-kalat-mau-xanh_2414.jpg', 10, '2022-12-12 17:32:31', '2022-12-12 17:32:31', NULL),
(22, '/storage/product/1/bz5rTs2f1XaXNTMDWicS.jpg', 'dan-ukulele-kalat-mau-xanh_4071.jpg', 10, '2022-12-12 17:32:31', '2022-12-12 17:32:31', NULL),
(23, '/storage/product/1/L4glE1WdhKzdvKjfyIyM.jpg', 'dan-ukulele-kalat-mau-xanh_5849.jpg', 10, '2022-12-12 17:32:31', '2022-12-12 17:32:31', NULL),
(24, '/storage/product/1/NUeqoH37gjNacqYA5dQV.jpg', 'dan-ukulele-tokado-uk-23-mau-den_1580.jpg', 10, '2022-12-12 17:32:31', '2022-12-12 17:32:31', NULL),
(25, '/storage/product/1/fTpN5UTCkpLmAofu4NXl.jpg', 'takamine-gd10-ns-01-400x400.jpg', 11, '2022-12-12 17:37:41', '2022-12-12 17:37:41', NULL),
(26, '/storage/product/1/cumCaJVsK8dFT1dyqgRL.jpg', 'taylor-academy-12e-01.jpg', 12, '2022-12-12 17:53:50', '2022-12-12 17:53:50', NULL),
(27, '/storage/product/1/ola1zZavMkxmHn4ssECE.jpg', 'taylor-academy-12e-02.jpg', 12, '2022-12-12 17:53:50', '2022-12-12 17:53:50', NULL),
(28, '/storage/product/1/IpI6l3vI7J5D8cKfmylF.jpg', 'taylor-academy-12e-03.jpg', 12, '2022-12-12 17:53:50', '2022-12-12 17:53:50', NULL),
(29, '/storage/product/1/0NW1q4slQJ62QjHWEvXX.jpg', 'dan-ukulele-chard-u-24y_8759.jpg', 14, '2022-12-12 18:04:06', '2022-12-12 18:04:06', NULL),
(30, '/storage/product/1/IbJ6F1QFybxqHhKPGov6.jpg', 'dan-ukulele-chard-u-24y_9080.jpg', 14, '2022-12-12 18:04:06', '2022-12-12 18:04:06', NULL),
(31, '/storage/product/1/UewBhCP5p5Wh18iJHwB9.jpg', 'dan-ukulele-chard-uk-24m.jpg', 15, '2022-12-12 18:06:13', '2022-12-12 18:06:13', NULL),
(32, '/storage/product/1/zguc2mRVko4uc9ZS4A0c.jpg', 'dan-ukulele-chard-uk-24m_8927.jpg', 15, '2022-12-12 18:06:13', '2022-12-12 18:06:13', NULL),
(33, '/storage/product/1/jIgvTHRDICJJwMqxl6bG.jpg', 'dan-ukulele-kalat-mau-cam_4647.jpg', 15, '2022-12-12 18:06:13', '2022-12-12 18:06:13', NULL),
(34, '/storage/product/1/wM3WAMNCm45d8CsKsn8c.png', 'dan-ukulele-tokado-uk-23-mau-cam.png', 15, '2022-12-12 18:06:13', '2022-12-12 18:06:13', NULL),
(35, '/storage/product/1/OhhQqaqM9ZfkK2gPDh7k.png', 'dan-ukulele-tokado-uk-23-mau-cam_9735.png', 15, '2022-12-12 18:06:13', '2022-12-12 18:06:13', NULL),
(36, '/storage/product/1/dydZX30cP6hoz6khlkEx.jpg', 'dan-ukulele-chard-u-24d_3148.jpg', 16, '2022-12-12 18:10:20', '2022-12-12 18:10:20', NULL),
(37, '/storage/product/1/5HC4rANWSKKgbaH3t1ST.jpg', 'dan-ukulele-chard-u-24h_6623.jpg', 16, '2022-12-12 18:10:20', '2022-12-12 18:10:20', NULL),
(38, '/storage/product/1/seOQ0LZcS9YoG4udzMht.jpg', 'dan-ukulele-chard-u-24h_7124.jpg', 16, '2022-12-12 18:10:20', '2022-12-12 18:10:20', NULL),
(39, '/storage/product/1/aRPNGyAbvB54NUyfPRZn.jpg', 'dan-ukulele-chard-u-24d_3148.jpg', 17, '2022-12-12 18:10:34', '2022-12-12 18:10:34', NULL),
(40, '/storage/product/1/TLGo6eEBGeIC0GzDwQBT.jpg', 'dan-ukulele-chard-u-24h_6623.jpg', 17, '2022-12-12 18:10:34', '2022-12-12 18:10:34', NULL),
(41, '/storage/product/1/XEIDzHtqMkwviZNhdRCM.jpg', 'dan-ukulele-chard-u-24h_7124.jpg', 17, '2022-12-12 18:10:34', '2022-12-12 18:10:34', NULL),
(42, '/storage/product/1/tvwKBuVolShfgOW29aOP.jpg', 'dan-ukulele-tokado-uk-23-mau-den.jpg', 18, '2022-12-12 18:11:44', '2022-12-12 18:11:44', NULL),
(43, '/storage/product/1/DOcOuaVSDljXDOvq1Cwu.jpg', 'dan-ukulele-tokado-uk-23-mau-den_2011.jpg', 18, '2022-12-12 18:11:44', '2022-12-12 18:11:44', NULL),
(44, '/storage/product/1/LDIgooTqvWJoyY7aaiM8.jpg', 'dan-ukulele-tokado-uk-23-mau-den_5103.jpg', 18, '2022-12-12 18:11:44', '2022-12-12 18:11:44', NULL),
(45, '/storage/product/1/3nYZv965s4IVBSc1nwEM.jpg', 'dan-ukulele-tokado-uk-23-mau-den_6821.jpg', 18, '2022-12-12 18:11:44', '2022-12-12 18:11:44', NULL),
(46, '/storage/product/1/rZiw99n2G7l1zk1xbKpv.jpg', 'dan-ukulele-sqoe-sq-uk-2420c_4498.jpg', 19, '2022-12-12 18:15:05', '2022-12-12 18:15:05', NULL),
(47, '/storage/product/1/V21Zs9LhnWDBBDAAgtsF.jpg', 'dan-ukulele-sqoe-sq-uk-2420c_7727.jpg', 19, '2022-12-12 18:15:05', '2022-12-12 18:15:05', NULL),
(48, '/storage/product/1/LMkn5RHGD1UH7g5msb13.jpg', 'dan-ukulele-sqoe-sq-uk-2420c_9013 - Copy.jpg', 19, '2022-12-12 18:15:05', '2022-12-12 18:15:05', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Quản trị hệ thống', NULL, NULL),
(2, 'content', 'Chỉnh sửa nội dung', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `image_path`, `image_name`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '/storage/product/1/F7ujVTqrwHiKPVs48TG5.jpg', 'casiotone-banner-1-1.jpg', 1, '2022-12-12 16:57:28', '2022-12-12 16:57:28', NULL),
(2, '/storage/product/1/ccPBAcQVjfL1Kr2wMUWW.png', 'sliderA.png', 1, '2022-12-12 16:57:34', '2022-12-12 16:57:34', NULL),
(3, '/storage/product/1/5Xw03zoKBgNGma0BMnGy.jpg', 'VT_Website_e845_1920_500.jpg', 1, '2022-12-12 16:57:38', '2022-12-12 16:57:38', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'congthanhdang', 'congthanhdang199x@gmail.com', '2022-12-12 09:00:44', '$2y$10$VaBmjUUh0oIH2yJkZtR0HeRkK5ZDMjoQvo3MbELWncrQjRi5pxnM.', NULL, NULL, '2022-12-12 09:00:26', '2022-12-12 09:00:44'),
(2, 'cong user', 'congthanhdang1999@gmail.com', '2022-12-12 23:31:01', '$2y$10$uGHTQjQ4ATQuMm9HLZ8TmO.3.f7tdmRVyVXoLcbaepD.JLNqFIX0C', NULL, NULL, '2022-12-12 23:29:55', '2022-12-12 23:31:01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_orders`
--
ALTER TABLE `detail_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_orders_product_id_foreign` (`product_id`),
  ADD KEY `detail_orders_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `informations_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_post_id_foreign` (`category_post_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_product_id_foreign` (`category_product_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category_products`
--
ALTER TABLE `category_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `detail_orders`
--
ALTER TABLE `detail_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `informations`
--
ALTER TABLE `informations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `detail_orders`
--
ALTER TABLE `detail_orders`
  ADD CONSTRAINT `detail_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `informations`
--
ALTER TABLE `informations`
  ADD CONSTRAINT `informations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_post_id_foreign` FOREIGN KEY (`category_post_id`) REFERENCES `category_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_product_id_foreign` FOREIGN KEY (`category_product_id`) REFERENCES `category_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `slider`
--
ALTER TABLE `slider`
  ADD CONSTRAINT `slider_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
