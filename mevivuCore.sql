-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 20, 2024 lúc 02:38 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `frameworkcty7`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `username`, `fullname`, `email`, `phone`, `birthday`, `gender`, `avatar`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'admin@gmail.com', '0707070444', NULL, NULL, NULL, NULL, NULL, '$2y$10$f1MtOh1lCdmM/oJthl1iC.ZmRU51mZDVve5lh2O5laRdraiaqd5ly', '1Ud9HWPrfkrIiT8YpvULkrncAxX644o2dnoc8tLY9Wt4WUN34hd2TojAr1RD', NULL, '2024-04-11 18:28:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(4) NOT NULL DEFAULT 0,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes_variations`
--

CREATE TABLE `attributes_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(4) NOT NULL DEFAULT 0,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_lft` int(11) NOT NULL,
  `_rgt` int(11) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_13_150644_create_admins_table', 1),
(6, '2023_03_17_143537_create_categories_table', 1),
(7, '2023_03_17_143657_create_products_table', 1),
(8, '2023_03_17_143800_create_products_categories_table', 1),
(9, '2023_03_20_231706_create_attributes_table', 1),
(10, '2023_03_20_231755_create_attributes_variations_table', 1),
(11, '2023_03_20_231853_create_products_attributes_table', 1),
(12, '2023_03_20_231905_create_products_variations_table', 1),
(13, '2023_03_21_092232_create_products_attributes_variations_table', 1),
(14, '2023_03_21_092738_create_products_variations_variations_table', 1),
(15, '2023_03_28_100344_create_settings_table', 1),
(16, '2023_03_31_154809_create_shopping_cart_table', 1),
(17, '2023_03_31_160747_create_orders_table', 1),
(18, '2023_03_31_163032_create_order_details_table', 1),
(19, '2023_04_05_153656_create_order_earning_point_table', 1),
(20, '2023_04_07_112815_create_sliders_table', 1),
(21, '2023_04_07_113415_create_slider_items_table', 1),
(22, '2023_04_18_101242_create_posts_table', 1),
(23, '2023_04_18_110026_create_posts_categories_table', 1),
(24, '2023_04_18_110124_create_posts_posts_categories_table', 1),
(32, '2024_04_07_164122_create_permission_tables', 2),
(37, '2024_04_16_021615_create_modules_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AppModelsAdmin',
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'AppModelsAdmin', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `modules`
--

INSERT INTO `modules` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Quản lý Bài viết', '<p>Quản l&yacute; c&aacute;c B&agrave;i viết trong hệ thống</p>', 2, '2024-04-20 12:09:12', '2024-04-20 12:09:12'),
(2, 'QL Chuyên mục Bài viết', '<p>Quản l&yacute; Chuy&ecirc;n mục B&agrave;i viết</p>', 2, '2024-04-20 12:13:26', '2024-04-20 12:15:06'),
(3, 'Quản lý Vai trò', '<p>Quản l&yacute; Vai tr&ograve; tr&ecirc;n hệ thống</p>', 2, '2024-04-20 12:17:13', '2024-04-20 12:17:13'),
(4, 'Quản lý Admin', '<p>Quản l&yacute; c&aacute;c quản trị vi&ecirc;n trong Hệ thống v&agrave; Ph&acirc;n vai tr&ograve; cho c&aacute;c Admin</p>', 2, '2024-04-20 12:19:45', '2024-04-20 12:33:41'),
(5, 'Quản lý Thành viên', '<p>Quản l&yacute; Th&agrave;nh vi&ecirc;n</p>', 2, '2024-04-20 12:21:06', '2024-04-20 12:21:06'),
(6, 'Quản lý Sản phẩm', '<p>Quản l&yacute; c&aacute;c th&ocirc;ng tin Sản phẩm của hệ thống</p>', 2, '2024-04-20 12:25:01', '2024-04-20 12:25:01'),
(7, 'QL Thuộc tính Sản phẩm', '<p>QL Thuộc t&iacute;nh Sản phẩm</p>', 2, '2024-04-20 12:27:03', '2024-04-20 12:27:03'),
(8, 'QL Danh mục Sản phẩm', '<p>Quản l&yacute; Danh mục Sản phẩm</p>', 2, '2024-04-20 12:29:31', '2024-04-20 12:29:31'),
(9, 'Quản lý Đơn hàng', '<p>Quản l&yacute; Đơn h&agrave;ng</p>', 2, '2024-04-20 12:30:34', '2024-04-20 12:30:34'),
(10, 'Quản lý Slider', '<p>Quản l&yacute; Slider c&aacute;c h&igrave;nh ảnh chạy qua lại ở trang Web b&ecirc;n ngo&agrave;i</p>', 2, '2024-04-20 12:31:33', '2024-04-20 12:32:32'),
(11, 'Quản lý Slider Items', '<p>Quản l&yacute; c&aacute;c H&igrave;nh ảnh b&ecirc;n trong một Slider</p>', 2, '2024-04-20 12:34:22', '2024-04-20 12:34:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` double NOT NULL,
  `shipping_method` tinyint(4) DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discount` double NOT NULL,
  `total` double NOT NULL,
  `payment_method` tinyint(4) NOT NULL,
  `payment_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_earning_point`
--

CREATE TABLE `order_earning_point` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `point` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `name`, `guard_name`, `module_id`, `created_at`, `updated_at`) VALUES
(1, 'Đọc tài liệu API', 'readAPIDoc', 'admin', NULL, '2024-04-13 16:37:50', '2024-04-13 16:37:50'),
(2, 'Xem Bài viết', 'viewPost', 'admin', 1, '2024-04-13 16:39:42', '2024-04-20 12:09:22'),
(3, 'Thêm Bài viết', 'createPost', 'admin', 1, '2024-04-13 16:41:02', '2024-04-20 12:09:29'),
(4, 'Sửa Bài viết', 'updatePost', 'admin', 1, '2024-04-13 16:41:29', '2024-04-20 12:09:37'),
(5, 'Xóa Bài viết', 'deletePost', 'admin', 1, '2024-04-13 16:41:45', '2024-04-20 12:09:45'),
(6, 'Xem Vai Trò', 'viewRole', 'admin', 3, '2024-04-13 17:40:49', '2024-04-20 12:17:23'),
(7, 'Thêm Vai Trò', 'createRole', 'admin', 3, '2024-04-13 17:41:28', '2024-04-20 12:17:31'),
(8, 'Sửa Vai Trò', 'updateRole', 'admin', 3, '2024-04-13 17:42:07', '2024-04-20 12:17:40'),
(9, 'Xóa Vai Trò', 'deleteRole', 'admin', 3, '2024-04-13 17:42:52', '2024-04-20 12:17:47'),
(10, 'Xem Chuyên mục Bài viết', 'viewPostCategory', 'admin', 2, '2024-04-13 18:02:03', '2024-04-20 12:13:56'),
(11, 'Thêm Chuyên mục Bài viết', 'createPostCategory', 'admin', 2, '2024-04-13 18:02:40', '2024-04-20 12:14:08'),
(12, 'Sửa Chuyên mục Bài viết', 'updatePostCategory', 'admin', 2, '2024-04-13 18:03:03', '2024-04-20 12:14:16'),
(13, 'Xóa Chuyên mục Bài viết', 'deletePostCategory', 'admin', 2, '2024-04-13 18:03:59', '2024-04-20 12:14:24'),
(14, 'Xem Admin', 'viewAdmin', 'admin', 4, '2024-04-13 18:50:55', '2024-04-20 12:19:56'),
(15, 'Thêm Admin', 'createAdmin', 'admin', 4, '2024-04-13 18:51:39', '2024-04-20 12:20:04'),
(16, 'Sửa Admin', 'updateAdmin', 'admin', 4, '2024-04-13 18:51:59', '2024-04-20 12:20:12'),
(17, 'Xóa Admin', 'deleteAdmin', 'admin', 4, '2024-04-13 18:52:17', '2024-04-20 12:20:19'),
(18, 'Xem Thành viên', 'viewUser', 'admin', 5, '2024-04-13 18:55:15', '2024-04-20 12:21:19'),
(19, 'Thêm Thành viên', 'createUser', 'admin', 5, '2024-04-13 18:55:42', '2024-04-20 12:21:29'),
(20, 'Sửa Thành viên', 'updateUser', 'admin', 5, '2024-04-13 18:58:15', '2024-04-20 12:21:42'),
(21, 'Xóa Thành viên', 'deleteUser', 'admin', 5, '2024-04-13 18:58:57', '2024-04-20 12:21:53'),
(22, 'Xem Đơn hàng', 'viewOrder', 'admin', 9, '2024-04-13 19:02:32', '2024-04-20 12:30:46'),
(23, 'Thêm Đơn hàng', 'createOrder', 'admin', 9, '2024-04-13 19:02:58', '2024-04-20 12:30:54'),
(24, 'Sửa Đơn hàng', 'updateOrder', 'admin', 9, '2024-04-13 19:03:10', '2024-04-20 12:31:01'),
(25, 'Xóa Đơn hàng', 'deleteOrder', 'admin', 9, '2024-04-13 19:03:20', '2024-04-20 12:31:08'),
(26, 'Xem Sản phẩm', 'viewProduct', 'admin', 6, '2024-04-13 19:06:36', '2024-04-20 12:25:15'),
(27, 'Thêm Sản phẩm', 'createProduct', 'admin', 6, '2024-04-13 19:06:47', '2024-04-20 12:25:24'),
(28, 'Sửa Sản phẩm', 'updateProduct', 'admin', 6, '2024-04-13 19:07:01', '2024-04-20 12:25:33'),
(29, 'Xóa Sản phẩm', 'deleteProduct', 'admin', 6, '2024-04-13 19:08:08', '2024-04-20 12:25:40'),
(30, 'Xem Thuộc tính Sản phẩm', 'viewProductAttribute', 'admin', 7, '2024-04-13 19:10:43', '2024-04-20 12:28:06'),
(31, 'Thêm Thuộc tính Sản phẩm', 'createProductAttribute', 'admin', 7, '2024-04-13 19:12:07', '2024-04-20 12:28:19'),
(32, 'Sửa Thuộc tính Sản phẩm', 'updateProductAttribute', 'admin', 7, '2024-04-13 19:12:38', '2024-04-20 12:28:26'),
(33, 'Xóa Thuộc tính Sản phẩm', 'deleteProductAttribute', 'admin', 7, '2024-04-13 19:12:56', '2024-04-20 12:28:59'),
(34, 'Xem Danh mục Sản phẩm', 'viewProductCategory', 'admin', 8, '2024-04-13 19:15:04', '2024-04-20 12:29:37'),
(35, 'Thêm Danh mục Sản phẩm', 'createProductCategory', 'admin', 8, '2024-04-13 19:16:55', '2024-04-20 12:29:46'),
(36, 'Sửa Danh mục Sản phẩm', 'updateProductCategory', 'admin', 8, '2024-04-13 19:19:48', '2024-04-20 12:30:00'),
(37, 'Xóa Danh mục Sản phẩm', 'deleteProductCategory', 'admin', 8, '2024-04-13 19:20:06', '2024-04-20 12:30:07'),
(38, 'Xem Slider', 'viewSlider', 'admin', 10, '2024-04-13 19:21:21', '2024-04-20 12:31:41'),
(39, 'Thêm Slider', 'createSlider', 'admin', 10, '2024-04-13 19:21:49', '2024-04-20 12:31:50'),
(40, 'Sửa Slider', 'updateSlider', 'admin', 10, '2024-04-13 19:22:01', '2024-04-20 12:31:58'),
(41, 'Xóa Slider', 'deleteSlider', 'admin', 10, '2024-04-13 19:22:31', '2024-04-20 12:32:08'),
(42, 'Xem Slider Item', 'viewSliderItem', 'admin', 11, '2024-04-13 19:28:13', '2024-04-20 12:34:39'),
(43, 'Thêm Slider Item', 'createSliderItem', 'admin', 11, '2024-04-13 19:29:04', '2024-04-20 12:34:48'),
(44, 'Sửa Slider Item', 'updateSliderItem', 'admin', 11, '2024-04-13 19:29:59', '2024-04-20 12:34:55'),
(45, 'Xóa Slider Item', 'deleteSliderItem', 'admin', 11, '2024-04-13 19:30:23', '2024-04-20 12:35:02'),
(46, 'Cài đặt chung', 'settingGeneral', 'admin', NULL, '2024-04-13 19:33:23', '2024-04-13 19:33:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth-token-topzone', '003a0117b3133dcb6dff65dffaf83e1f5ffb98970c019f5d09fa68668c7ffb62', '[\"*\"]', NULL, NULL, '2023-03-27 04:22:47', '2023-03-27 04:22:47'),
(2, 'App\\Models\\User', 1, 'auth-token-topzone', 'dd347a6563ae79ead9a4b68c05a861582a2523a6f963830073345869124d34d0', '[\"*\"]', '2023-03-29 03:31:21', NULL, '2023-03-27 04:24:00', '2023-03-29 03:31:21'),
(3, 'App\\Models\\User', 1, 'auth-token-topzone', '45ed31879b7e175c12a4697cda1ab4be3ca18a430bbc8d189a7f83b12a82f17c', '[\"*\"]', NULL, NULL, '2023-03-28 04:19:30', '2023-03-28 04:19:30'),
(4, 'App\\Models\\User', 2, 'auth-token-topzone', '0bf818ac1a02a90a94b45556e0a811523ff69dc164f0e32e4aae5097319f0044', '[\"*\"]', '2023-03-28 09:40:52', NULL, '2023-03-28 09:39:56', '2023-03-28 09:40:52'),
(5, 'App\\Models\\User', 2, 'auth-token-topzone', '0fefc839deff1958184cc7c3280f984c3dd6c10af20819c69515a54458bec08c', '[\"*\"]', '2023-03-28 10:18:49', NULL, '2023-03-28 10:18:31', '2023-03-28 10:18:49'),
(6, 'App\\Models\\User', 2, 'auth-token-topzone', 'f4b526b6e4545a24c9edab9a82f623a7a099bdf639299b17b7742b80538b22b2', '[\"*\"]', NULL, NULL, '2023-03-29 03:34:46', '2023-03-29 03:34:46'),
(7, 'App\\Models\\User', 1, 'auth-token-topzone', '62d1c5563bbefae98d321ce096eda9f380126f627a7c1dcbad21d3466722372d', '[\"*\"]', '2023-03-30 06:16:28', NULL, '2023-03-29 03:35:12', '2023-03-30 06:16:28'),
(8, 'App\\Models\\User', 2, 'auth-token-topzone', '1ddcc9e4a8409258c137eb11ff583855cac6f5e3e2a2a45c5633bcfee2e271cf', '[\"*\"]', '2023-10-09 03:44:57', NULL, '2023-03-29 04:50:53', '2023-10-09 03:44:57'),
(9, 'App\\Models\\User', 1, 'auth-token-topzone', '322b24d5cdd37c22032a8e845a4a9e56788ee9e0d0f74c147058681ea96469a6', '[\"*\"]', NULL, NULL, '2023-03-29 10:14:22', '2023-03-29 10:14:22'),
(10, 'App\\Models\\User', 1, 'auth-token-topzone', 'ee25ceb6587f09ac1e8ec6d4305d5fc1b2a87cb48921748592826a193c15c2a1', '[\"*\"]', NULL, NULL, '2023-03-29 10:18:59', '2023-03-29 10:18:59'),
(11, 'App\\Models\\User', 1, 'auth-token-topzone', 'b1ef56387c1db9effa201068197f62be76cfdfd7492a51aa48fcb5e9c69fb402', '[\"*\"]', NULL, NULL, '2023-03-29 10:19:45', '2023-03-29 10:19:45'),
(12, 'App\\Models\\User', 1, 'auth-token-topzone', '3f9b7a5d29eea0285bffe9d5cb60407470341b2e6a9815cfe17817afb278399b', '[\"*\"]', NULL, NULL, '2023-03-29 10:19:48', '2023-03-29 10:19:48'),
(13, 'App\\Models\\User', 1, 'auth-token-topzone', '67d5cb35791a01652643d4c2e0f8d147670c972d514111c81e20601440aa6153', '[\"*\"]', NULL, NULL, '2023-03-29 10:29:53', '2023-03-29 10:29:53'),
(14, 'App\\Models\\User', 1, 'auth-token-topzone', 'e7cb2c94767a9dee356e3e0793abe777db8053d942d26f92ddf2d380b0bdebe6', '[\"*\"]', '2023-03-29 10:32:52', NULL, '2023-03-29 10:30:59', '2023-03-29 10:32:52'),
(15, 'App\\Models\\User', 1, 'auth-token-topzone', 'ffe43779eec85c2c1952be97b9cf7060ca6e688d45f6e10d71fc99e6109fa594', '[\"*\"]', '2023-04-05 07:42:47', NULL, '2023-03-29 10:33:48', '2023-04-05 07:42:47'),
(16, 'App\\Models\\User', 1, 'auth-token-topzone', '241306d1d94a82149d10b544d4a1e6b9658d7463758e4a4b0aa23cb498ee37c0', '[\"*\"]', '2023-03-30 10:05:37', NULL, '2023-03-30 06:17:38', '2023-03-30 10:05:37'),
(17, 'App\\Models\\User', 1, 'auth-token-topzone', '1c1f0eaabbf1ee5b792ac400a098fcfc0330412fdece366c9e359e6a7797b3de', '[\"*\"]', '2023-04-05 10:27:51', NULL, '2023-03-30 10:06:14', '2023-04-05 10:27:51'),
(18, 'App\\Models\\User', 6, 'auth-token-topzone', 'b4b4f943e599adcb637113b226afa861cd7133e8c48bb5c88e5dcc8effd3a3b8', '[\"*\"]', NULL, NULL, '2023-04-04 04:26:31', '2023-04-04 04:26:31'),
(19, 'App\\Models\\User', 6, 'auth-token-topzone', 'dfa2abb6e1f8a2c896d402088387976798fdb9847cd1ea33b8ec67927ec783fd', '[\"*\"]', NULL, NULL, '2023-04-04 04:29:27', '2023-04-04 04:29:27'),
(20, 'App\\Models\\User', 6, 'auth-token-topzone', '68a27bd75f497dad454a905c2fc88f0eb71560eefd0292fff98a64710d690fb4', '[\"*\"]', NULL, NULL, '2023-04-04 04:39:32', '2023-04-04 04:39:32'),
(21, 'App\\Models\\User', 6, 'auth-token-topzone', 'bf020797b3c5361ced0a83a5af9254e9ec9332190beb80ee3f09a133122207e9', '[\"*\"]', NULL, NULL, '2023-04-04 04:40:59', '2023-04-04 04:40:59'),
(22, 'App\\Models\\User', 6, 'auth-token-topzone', '8269e4b612fbe59eb4888e5dbc0fc44e5bf7f78dec0a96d649fe45685f7cac3a', '[\"*\"]', NULL, NULL, '2023-04-04 04:56:03', '2023-04-04 04:56:03'),
(23, 'App\\Models\\User', 7, 'auth-token-topzone', 'd59209e82424969b493d963b32e56c6dbf07cc6dc52e76718a3a500416cf29aa', '[\"*\"]', NULL, NULL, '2023-04-04 09:30:43', '2023-04-04 09:30:43'),
(24, 'App\\Models\\User', 7, 'auth-token-topzone', 'd04e3aa131c31f9de7674924bd0cd56f8a92d2623d8f54ec73b1992ee4425cac', '[\"*\"]', NULL, NULL, '2023-04-04 09:34:37', '2023-04-04 09:34:37'),
(25, 'App\\Models\\User', 7, 'auth-token-topzone', '5d654caa58b8527961dda610caa1e813966caa786b9ef23d890a8c8239c7873d', '[\"*\"]', NULL, NULL, '2023-04-04 09:38:45', '2023-04-04 09:38:45'),
(26, 'App\\Models\\User', 7, 'auth-token-topzone', '13ded00eae0d006223419dbae9c4f171e30ff7aac1eb6049f36fb92dcee780d8', '[\"*\"]', NULL, NULL, '2023-04-04 10:16:13', '2023-04-04 10:16:13'),
(27, 'App\\Models\\User', 7, 'auth-token-topzone', '40acecad69b0f652d85df69c92aa46b825f180a450b32b2520fb8f0df2d38ced', '[\"*\"]', NULL, NULL, '2023-04-04 10:24:34', '2023-04-04 10:24:34'),
(28, 'App\\Models\\User', 7, 'auth-token-topzone', 'b5fa8361c56ebc29163274a785759bf0cc9d2578d30b5095311502d6d6f3bbde', '[\"*\"]', NULL, NULL, '2023-04-04 10:28:26', '2023-04-04 10:28:26'),
(29, 'App\\Models\\User', 7, 'auth-token-topzone', 'c1ab217d7197fd8f75ce6890b6a7bb753feec70f1920b491496f168a11e11dfd', '[\"*\"]', NULL, NULL, '2023-04-04 10:28:29', '2023-04-04 10:28:29'),
(30, 'App\\Models\\User', 7, 'auth-token-topzone', 'df9da8646113479af50c67e00b3c9f1d80409735ac43302089e880e9956d1839', '[\"*\"]', NULL, NULL, '2023-04-04 10:28:42', '2023-04-04 10:28:42'),
(31, 'App\\Models\\User', 7, 'auth-token-topzone', '6c2cd1d2d35096415befc0954cd7190b8f19ae84a952d8ead92be7d78f4bf985', '[\"*\"]', NULL, NULL, '2023-04-04 10:28:47', '2023-04-04 10:28:47'),
(32, 'App\\Models\\User', 7, 'auth-token-topzone', 'c0e8f472ef37e4be27cea4dbdf67700f101de2d81059d6d7e30314885185e7e3', '[\"*\"]', NULL, NULL, '2023-04-04 10:33:31', '2023-04-04 10:33:31'),
(33, 'App\\Models\\User', 7, 'auth-token-topzone', 'bf028baf5dbf7faf15a19cd6da861f7a7157f170fa1863848f1e8e80006cfefe', '[\"*\"]', NULL, NULL, '2023-04-05 03:04:15', '2023-04-05 03:04:15'),
(34, 'App\\Models\\User', 7, 'auth-token-topzone', '142780868b9674d73e2a3b9f181604c2c7649d36454126ef5130ec2cd17d063e', '[\"*\"]', NULL, NULL, '2023-04-05 03:09:50', '2023-04-05 03:09:50'),
(35, 'App\\Models\\User', 7, 'auth-token-topzone', '141d77544f26c7771763bcf0f1d01b33dbdc53500a321af1c924973052d48fdd', '[\"*\"]', NULL, NULL, '2023-04-05 03:10:42', '2023-04-05 03:10:42'),
(36, 'App\\Models\\User', 7, 'auth-token-topzone', '0465e38b4332e549b98c345bd2efe520895e83688168deaa0bd1bf3bff69d3f4', '[\"*\"]', NULL, NULL, '2023-04-05 03:10:44', '2023-04-05 03:10:44'),
(37, 'App\\Models\\User', 7, 'auth-token-topzone', '967796d22511f8c98772dd511b4352181fd62cd0636d1abbe26752b8c0afad6f', '[\"*\"]', NULL, NULL, '2023-04-05 03:15:32', '2023-04-05 03:15:32'),
(38, 'App\\Models\\User', 7, 'auth-token-topzone', '75d1746e884da418f1844d12a18bea077f57ce23c48caa5302a2d0bea65cd1c9', '[\"*\"]', NULL, NULL, '2023-04-05 03:17:42', '2023-04-05 03:17:42'),
(39, 'App\\Models\\User', 7, 'auth-token-topzone', '7f4e6193fb4e98f4c78ff0684f38d5faea2d3f3204b04f5f224289b7c742d67b', '[\"*\"]', NULL, NULL, '2023-04-05 03:17:44', '2023-04-05 03:17:44'),
(40, 'App\\Models\\User', 7, 'auth-token-topzone', 'a06c500dd6f0599fdc519fe98d52e1540212fc7dce02b770a029660698088ff1', '[\"*\"]', NULL, NULL, '2023-04-05 03:17:59', '2023-04-05 03:17:59'),
(41, 'App\\Models\\User', 7, 'auth-token-topzone', '9ab2e33d753643ac5ad43b3d2c167c64dd428cad891e382822081d850fb8d5db', '[\"*\"]', NULL, NULL, '2023-04-05 03:20:18', '2023-04-05 03:20:18'),
(42, 'App\\Models\\User', 7, 'auth-token-topzone', '5f187fe364639096545d0ce4407244bb81209b4980c490d0038cb255e45c0c1c', '[\"*\"]', NULL, NULL, '2023-04-05 03:20:20', '2023-04-05 03:20:20'),
(43, 'App\\Models\\User', 7, 'auth-token-topzone', 'b04faaab51f18b00cc722c22bc09689e6f507dbe1dfddb80c31ae2a090a1785f', '[\"*\"]', NULL, NULL, '2023-04-05 03:24:48', '2023-04-05 03:24:48'),
(44, 'App\\Models\\User', 7, 'auth-token-topzone', '4770e2c3f20ef3df166baae0a0823dac612187062473a3650fd211a7987a3153', '[\"*\"]', NULL, NULL, '2023-04-05 03:26:37', '2023-04-05 03:26:37'),
(45, 'App\\Models\\User', 7, 'auth-token-topzone', '69791b1a465cc6101cfcfcd1be5f1b219b60b61be021fdf4d8363771106fca86', '[\"*\"]', NULL, NULL, '2023-04-05 03:28:54', '2023-04-05 03:28:54'),
(46, 'App\\Models\\User', 7, 'auth-token-topzone', 'feb82ff90b33bddfdacf14f01e3644e57249ec8a1ff934bb53ec1e42fc3514a8', '[\"*\"]', NULL, NULL, '2023-04-05 03:34:43', '2023-04-05 03:34:43'),
(47, 'App\\Models\\User', 7, 'auth-token-topzone', '395389d2f09a9e9aa5045298b37c16c98f3985cc9dac47a7f7cbd5a5cfa4de5a', '[\"*\"]', NULL, NULL, '2023-04-05 03:38:59', '2023-04-05 03:38:59'),
(48, 'App\\Models\\User', 7, 'auth-token-topzone', '4b439117a16c3f0ff59574cecac0e9ae960a8567128f6fdf21c81d0af04ea52a', '[\"*\"]', NULL, NULL, '2023-04-05 03:44:52', '2023-04-05 03:44:52'),
(49, 'App\\Models\\User', 7, 'auth-token-topzone', 'b36cfedf49df2d17fa8f88a551b11cb8eaf29418b0425a77801a4e2a627a0c4b', '[\"*\"]', NULL, NULL, '2023-04-05 03:54:46', '2023-04-05 03:54:46'),
(50, 'App\\Models\\User', 7, 'auth-token-topzone', '9d1d135ad4f6c2111de5e76f97dada6a447136ce71bd7a4053688ec5b45e8885', '[\"*\"]', NULL, NULL, '2023-04-05 03:56:37', '2023-04-05 03:56:37'),
(51, 'App\\Models\\User', 7, 'auth-token-topzone', 'fa1e8b1322a2ee456ad5f967d80673982d83f907ade811df3c5e8d12ae294fe2', '[\"*\"]', NULL, NULL, '2023-04-05 03:58:04', '2023-04-05 03:58:04'),
(52, 'App\\Models\\User', 7, 'auth-token-topzone', '9b6f607f39aff1545cdc7ea71d4bd92f3f8a6ff6a04daf5bb1fd15992db2bd57', '[\"*\"]', NULL, NULL, '2023-04-05 04:12:51', '2023-04-05 04:12:51'),
(53, 'App\\Models\\User', 7, 'auth-token-topzone', '4d670d50fb99d4a42daf1cd0cd3799fea93821cfbfb41b6a2d63d96c8e254f23', '[\"*\"]', NULL, NULL, '2023-04-05 04:14:00', '2023-04-05 04:14:00'),
(54, 'App\\Models\\User', 7, 'auth-token-topzone', '24c6c62185635b717a611ce6a5e6c1fcb6eaa637137986fb2a4613e69f279480', '[\"*\"]', NULL, NULL, '2023-04-05 04:15:08', '2023-04-05 04:15:08'),
(55, 'App\\Models\\User', 7, 'auth-token-topzone', '60e1a907ed4709e22cda7ac9058dbcb2d6ec29d6223e44a6a1ce594e9ebbde5a', '[\"*\"]', NULL, NULL, '2023-04-05 04:16:06', '2023-04-05 04:16:06'),
(56, 'App\\Models\\User', 7, 'auth-token-topzone', '269eef770fe53227faeb504db861ff24085420034b3bbb1732c4260ea866fcff', '[\"*\"]', NULL, NULL, '2023-04-05 04:17:06', '2023-04-05 04:17:06'),
(57, 'App\\Models\\User', 7, 'auth-token-topzone', '723a3d9b356553698416b349d6d3a8323ac302256402c674b5e36ca945a153fc', '[\"*\"]', NULL, NULL, '2023-04-05 04:17:39', '2023-04-05 04:17:39'),
(58, 'App\\Models\\User', 7, 'auth-token-topzone', '026e5d4b18017c858509be58239de64e94b60c4c03aebe2461f1e32b814839fa', '[\"*\"]', NULL, NULL, '2023-04-05 04:22:09', '2023-04-05 04:22:09'),
(59, 'App\\Models\\User', 7, 'auth-token-topzone', '0c5cd23cefc1668f9512f9f4a4a2aad826ce5bc3fec5758d4b37e26291482581', '[\"*\"]', NULL, NULL, '2023-04-05 06:31:25', '2023-04-05 06:31:25'),
(60, 'App\\Models\\User', 7, 'auth-token-topzone', '36c94bc5dc89e3c58aac48713d2793bc1edd203ff291f4d7e031146d395411bb', '[\"*\"]', NULL, NULL, '2023-04-05 06:32:57', '2023-04-05 06:32:57'),
(61, 'App\\Models\\User', 7, 'auth-token-topzone', '19c30638e5e568abb388ae62e1695dae5689710250d4dfa2cf49f8d11aa44f22', '[\"*\"]', NULL, NULL, '2023-04-05 06:39:41', '2023-04-05 06:39:41'),
(62, 'App\\Models\\User', 7, 'auth-token-topzone', '13f765cec8309a6a100d4f23e33a561abdff1a067e02980436619267888ea5bf', '[\"*\"]', NULL, NULL, '2023-04-05 06:40:57', '2023-04-05 06:40:57'),
(63, 'App\\Models\\User', 7, 'auth-token-topzone', 'fdcfebf6947dd1606f8ff2b332d828bbfee290b668bc2c4bf17897ed8562461f', '[\"*\"]', NULL, NULL, '2023-04-05 06:41:35', '2023-04-05 06:41:35'),
(64, 'App\\Models\\User', 7, 'auth-token-topzone', 'e7b5d1adea49562e5ab0c0267edb88af2e5de1434461b88a14e40e7593ca8301', '[\"*\"]', NULL, NULL, '2023-04-05 06:49:39', '2023-04-05 06:49:39'),
(65, 'App\\Models\\User', 7, 'auth-token-topzone', '722caead91f2c5fe92f091b3df6312cdb61c3bcc9f4bc2bb76f44e4e794659b5', '[\"*\"]', NULL, NULL, '2023-04-05 07:06:48', '2023-04-05 07:06:48'),
(66, 'App\\Models\\User', 7, 'auth-token-topzone', 'b5237d17813c924e417bff0b7c53a3a1bc3dc64b8aa3b6cf7f39fb5a7d3b16a6', '[\"*\"]', NULL, NULL, '2023-04-05 08:02:24', '2023-04-05 08:02:24'),
(67, 'App\\Models\\User', 7, 'auth-token-topzone', '1ce311163c90cd728235775d1189b46dd1a2f1855bb4f2bb273788be6f353444', '[\"*\"]', NULL, NULL, '2023-04-05 08:15:52', '2023-04-05 08:15:52'),
(68, 'App\\Models\\User', 7, 'auth-token-topzone', 'c83ee56a62c80dc49b7fee318e333bf29f08fe93c64e4d68499c9bba61d98d5d', '[\"*\"]', '2023-04-21 07:53:41', NULL, '2023-04-05 09:07:28', '2023-04-21 07:53:41'),
(69, 'App\\Models\\User', 1, 'auth-token-topzone', 'bb43be491e1b63a16d8af4a23797983a695c14e2a99b5481fbb4d49aad97e726', '[\"*\"]', '2023-04-10 09:54:24', NULL, '2023-04-05 10:29:31', '2023-04-10 09:54:24'),
(70, 'App\\Models\\User', 7, 'auth-token-topzone', '64fdc08da7755fcec0970412845b113ce7dbd9310aeace5441d1fa688515ff78', '[\"*\"]', '2023-04-07 03:32:27', NULL, '2023-04-06 04:03:07', '2023-04-07 03:32:27'),
(71, 'App\\Models\\User', 7, 'auth-token-topzone', '8e6dcba5b3b2061e969e0586d82f04925511f88ce9b4f049bde886eb47f893a9', '[\"*\"]', '2023-04-06 07:14:34', NULL, '2023-04-06 07:05:44', '2023-04-06 07:14:34'),
(72, 'App\\Models\\User', 7, 'auth-token-topzone', '987f2cb23e6f68cc91911471c341d53d3f127b62f74f2bec4de21140e28da61f', '[\"*\"]', '2023-04-07 09:49:22', NULL, '2023-04-06 07:14:55', '2023-04-07 09:49:22'),
(73, 'App\\Models\\User', 7, 'auth-token-topzone', 'd25543d149d2862d5ada70137618bdd3faa615204fe5cbab8e636f481f357300', '[\"*\"]', '2023-04-07 06:55:06', NULL, '2023-04-07 03:32:57', '2023-04-07 06:55:06'),
(74, 'App\\Models\\User', 7, 'auth-token-topzone', '1fbe180e66cb0962b2aedb92ec6d838bb6e807d5b3dfe55f713b298b45e7ee2d', '[\"*\"]', '2023-04-14 09:51:28', NULL, '2023-04-07 06:56:16', '2023-04-14 09:51:28'),
(75, 'App\\Models\\User', 1, 'auth-token-topzone', '709bfadff3116f0ef2bec67fea7f9dbf84f9711822b4beee185adddf0665cb35', '[\"*\"]', '2023-04-12 08:41:54', NULL, '2023-04-10 09:55:44', '2023-04-12 08:41:54'),
(76, 'App\\Models\\User', 1, 'auth-token-topzone', '38993b1957889069dc54dbd65e784bc846e93f8156923c0c5b2fec392532a254', '[\"*\"]', '2023-04-18 07:30:31', NULL, '2023-04-12 08:47:12', '2023-04-18 07:30:31'),
(77, 'App\\Models\\User', 7, 'auth-token-topzone', '89953208012aba0abc4f807d2b9164fea1c00084cfa1f6f191288ad0d3b808e8', '[\"*\"]', '2023-04-14 08:31:26', NULL, '2023-04-14 08:31:20', '2023-04-14 08:31:26'),
(78, 'App\\Models\\User', 7, 'auth-token-topzone', '86121db90c4034c050553416b237b1eea184dd679d9f736d7717107015b22f08', '[\"*\"]', '2023-04-19 03:25:40', NULL, '2023-04-14 10:00:07', '2023-04-19 03:25:40'),
(79, 'App\\Models\\User', 1, 'auth-token-topzone', '332221987992a30cd78a37214e669f95e985200e22cc49fbd3888f3017e28279', '[\"*\"]', '2023-04-18 08:38:12', NULL, '2023-04-18 07:33:30', '2023-04-18 08:38:12'),
(80, 'App\\Models\\User', 7, 'auth-token-topzone', '7c9b4ebbe9e5c9b0291d430f698e7175bed35b05dc2d11e30c5689907ce7373e', '[\"*\"]', '2023-04-18 09:45:52', NULL, '2023-04-18 07:34:16', '2023-04-18 09:45:52'),
(81, 'App\\Models\\User', 1, 'auth-token-topzone', '0bd103352b47dbea78f246bbe962bada2c751d226f62751498b9eb92d4fe44b7', '[\"*\"]', '2023-04-18 09:05:17', NULL, '2023-04-18 08:40:00', '2023-04-18 09:05:17'),
(82, 'App\\Models\\User', 7, 'auth-token-topzone', '69b279ad4dbb8b905b5250e971291faf2788c0dc01077bfe71a47b1994057b29', '[\"*\"]', '2023-04-19 03:28:50', NULL, '2023-04-19 03:28:43', '2023-04-19 03:28:50'),
(83, 'App\\Models\\User', 7, 'auth-token-topzone', 'e6d43418e95fbaab793b96a5624c76e855540f1c58a74d76c3b78b9efa00ff58', '[\"*\"]', '2023-04-19 03:32:35', NULL, '2023-04-19 03:32:34', '2023-04-19 03:32:35'),
(84, 'App\\Models\\User', 7, 'auth-token-topzone', 'b7917dcb9792c94605462d0b7228ca21ff59e17d816e3b927a06862abd5ea3d2', '[\"*\"]', '2023-04-19 03:36:30', NULL, '2023-04-19 03:36:30', '2023-04-19 03:36:30'),
(85, 'App\\Models\\User', 7, 'auth-token-topzone', '2e86793ed09fa20f618f17ffe9e89fd5ed52e22643a4549916b29d6533857427', '[\"*\"]', '2023-04-19 03:43:21', NULL, '2023-04-19 03:38:55', '2023-04-19 03:43:21'),
(86, 'App\\Models\\User', 7, 'auth-token-topzone', 'b6021399d3d8f45d131b130566e68be63bdb3250383d77875f8732c598097243', '[\"*\"]', '2023-04-19 03:43:39', NULL, '2023-04-19 03:43:35', '2023-04-19 03:43:39'),
(87, 'App\\Models\\User', 7, 'auth-token-topzone', '4ca1704af4f083c514da29bfaf28768b7ea2c17adc523e01cb1170ed4cccd7b4', '[\"*\"]', '2023-04-19 04:13:15', NULL, '2023-04-19 03:55:54', '2023-04-19 04:13:15'),
(88, 'App\\Models\\User', 1, 'auth-token-topzone', 'd416b08d8d006e1989812a65146418d21f73aed6237cef45a5cbd62dcb5c5f1c', '[\"*\"]', '2023-05-11 09:19:34', NULL, '2023-04-19 04:11:46', '2023-05-11 09:19:34'),
(89, 'App\\Models\\User', 7, 'auth-token-topzone', '72355557246d1c550c808e4d0b23501be32cfa638e50020b7156be5312ec5f19', '[\"*\"]', '2023-04-19 04:25:03', NULL, '2023-04-19 04:25:03', '2023-04-19 04:25:03'),
(90, 'App\\Models\\User', 7, 'auth-token-topzone', 'c5cbc0cb1f50dd7e9dfe542cd09a87cfa8739f40fcdc16e154f7a752571654cd', '[\"*\"]', '2023-04-19 04:25:47', NULL, '2023-04-19 04:25:47', '2023-04-19 04:25:47'),
(91, 'App\\Models\\User', 7, 'auth-token-topzone', '07cd099baf688146233ee454d1d6430266e7e474a35d22589ddacecd02924d0d', '[\"*\"]', '2023-04-19 04:26:33', NULL, '2023-04-19 04:26:32', '2023-04-19 04:26:33'),
(92, 'App\\Models\\User', 7, 'auth-token-topzone', 'de4d50ab111b8fa0d424ff378378e89656baafb9a169d1d85475c77b3b15accb', '[\"*\"]', '2023-04-19 04:26:58', NULL, '2023-04-19 04:26:57', '2023-04-19 04:26:58'),
(93, 'App\\Models\\User', 7, 'auth-token-topzone', 'fcfb6788d979abaa90e36c09bd10bd1b6813b2f822dca4a8bf7332e523690082', '[\"*\"]', '2023-04-19 04:27:45', NULL, '2023-04-19 04:27:45', '2023-04-19 04:27:45'),
(94, 'App\\Models\\User', 7, 'auth-token-topzone', '8009bd9751a51925dd847bf0e49333a75e729767d64e6b9761d9394766e0ff22', '[\"*\"]', '2023-04-19 04:29:14', NULL, '2023-04-19 04:29:05', '2023-04-19 04:29:14'),
(95, 'App\\Models\\User', 7, 'auth-token-topzone', '7bf3d58b150cbe077cfabd23306c50d92836560fa5ff2d8967a57f66f72bc585', '[\"*\"]', '2023-04-19 07:07:27', NULL, '2023-04-19 06:04:23', '2023-04-19 07:07:27'),
(96, 'App\\Models\\User', 7, 'auth-token-topzone', '74712d748d50913c62fc58b279c3f8dc2e919503c6175af73b692795462cd1ab', '[\"*\"]', '2023-04-19 07:11:47', NULL, '2023-04-19 07:09:55', '2023-04-19 07:11:47'),
(97, 'App\\Models\\User', 7, 'auth-token-topzone', '83a763f13e39fd0ae440af1eb8063e822c1d3c34371dda4c1ca45cdffc208fce', '[\"*\"]', '2023-04-19 07:34:38', NULL, '2023-04-19 07:31:31', '2023-04-19 07:34:38'),
(98, 'App\\Models\\User', 7, 'auth-token-topzone', '2b77bf2d767c31e93018f2ef251ea7935e2940d0a00e2d65df9121039c537e60', '[\"*\"]', '2023-04-19 07:37:06', NULL, '2023-04-19 07:37:06', '2023-04-19 07:37:06'),
(99, 'App\\Models\\User', 7, 'auth-token-topzone', 'fb203d7db62847744c59d537f58d0f760eeda00bf06f4b9ee700eb134d9a30ce', '[\"*\"]', '2023-04-19 07:40:16', NULL, '2023-04-19 07:38:55', '2023-04-19 07:40:16'),
(100, 'App\\Models\\User', 1, 'auth-token-topzone', '41e55aa1384ce7b3af19e4a9c50b13107fb8b54f1495332250e3bf9150b20a11', '[\"*\"]', '2023-04-19 07:47:21', NULL, '2023-04-19 07:43:30', '2023-04-19 07:47:21'),
(101, 'App\\Models\\User', 7, 'auth-token-topzone', '4b8b6d3de95400c2a9d607586194cca0e6c7acc72a5b240cd822a6f1b0ec9191', '[\"*\"]', '2023-04-19 09:43:28', NULL, '2023-04-19 07:48:42', '2023-04-19 09:43:28'),
(102, 'App\\Models\\User', 7, 'auth-token-topzone', 'bc167d63691487fdf224ce279b6bd7c4ce233944009938922f8c772c1021753b', '[\"*\"]', '2023-04-19 09:54:12', NULL, '2023-04-19 07:50:56', '2023-04-19 09:54:12'),
(103, 'App\\Models\\User', 7, 'auth-token-topzone', 'b2fc45dfd60d63d760bd6418e17b9b77a6754ae378e80d18f0b37b1741e2ef1f', '[\"*\"]', '2023-04-21 04:10:53', NULL, '2023-04-21 04:10:21', '2023-04-21 04:10:53'),
(104, 'App\\Models\\User', 7, 'auth-token-topzone', '38c39adeca3b283dc0e52c1f397ae4bc8518f1812c7d844d0ebfa142bb5be710', '[\"*\"]', '2023-04-21 06:25:54', NULL, '2023-04-21 04:11:04', '2023-04-21 06:25:54'),
(105, 'App\\Models\\User', 7, 'auth-token-topzone', '01f65f42dfe796b510111cfb81f91d277d8f73a261f315937689795f9d839238', '[\"*\"]', '2023-04-21 07:52:48', NULL, '2023-04-21 06:07:22', '2023-04-21 07:52:48'),
(106, 'App\\Models\\User', 7, 'auth-token-topzone', 'e394606dd44dff81ab5aa831d7c00f243366ee58f90dc0ca74171b45026e8416', '[\"*\"]', '2023-04-21 08:12:20', NULL, '2023-04-21 07:52:07', '2023-04-21 08:12:20'),
(107, 'App\\Models\\User', 7, 'auth-token-topzone', 'a21d2799a47f68903d24ca11e606d8972369ed1b58b92ce1b24c836d3431c849', '[\"*\"]', NULL, NULL, '2023-04-21 07:53:03', '2023-04-21 07:53:03'),
(108, 'App\\Models\\User', 7, 'auth-token-topzone', '9ca6ba951053a33c27f11deb71762ac278e6393e4aafd0e28ee19bacf58efe5b', '[\"*\"]', '2023-04-21 09:55:13', NULL, '2023-04-21 07:53:19', '2023-04-21 09:55:13'),
(109, 'App\\Models\\User', 7, 'auth-token-topzone', '56e1f3294c13a5128b4851c8ebf94dc9e7203d08d22b41353dcf7b98f765dbb3', '[\"*\"]', '2023-04-21 08:20:51', NULL, '2023-04-21 08:13:58', '2023-04-21 08:20:51'),
(110, 'App\\Models\\User', 7, 'auth-token-topzone', 'dc2f5476fdc2a5c373133e5983625aa0e5495338b294e68d28b4b887fc5d30dd', '[\"*\"]', '2023-04-21 08:50:05', NULL, '2023-04-21 08:21:28', '2023-04-21 08:50:05'),
(111, 'App\\Models\\User', 7, 'auth-token-topzone', '3bdc36c8a0b318142ad175fef2134d28fcd996159ee0d9d8dc8e33b95bdebc2e', '[\"*\"]', '2023-04-21 08:42:57', NULL, '2023-04-21 08:41:45', '2023-04-21 08:42:57'),
(112, 'App\\Models\\User', 7, 'auth-token-topzone', 'df1ea811a3367b299299101a2b34946b8d6fe6394b3a2f7008ac6e2f9854636d', '[\"*\"]', '2023-04-21 08:45:19', NULL, '2023-04-21 08:43:10', '2023-04-21 08:45:19'),
(113, 'App\\Models\\User', 7, 'auth-token-topzone', '7710cf141ffd261940c7a0bdc4a9773ab60fa5d9d99af0eb8b36e26a52c6e2cc', '[\"*\"]', '2023-04-21 08:47:14', NULL, '2023-04-21 08:45:43', '2023-04-21 08:47:14'),
(114, 'App\\Models\\User', 7, 'auth-token-topzone', '3433400d1382d39b7fda4b353355e642f6f6912cb48e75b11fc55ef6ba89a856', '[\"*\"]', '2023-04-21 08:49:03', NULL, '2023-04-21 08:49:02', '2023-04-21 08:49:03'),
(115, 'App\\Models\\User', 7, 'auth-token-topzone', '6ec3fbbe5d23d23bab60793cf139f1998219b04239e6db113c569fb7e336bdbc', '[\"*\"]', '2023-04-21 09:57:06', NULL, '2023-04-21 08:53:22', '2023-04-21 09:57:06'),
(116, 'App\\Models\\User', 7, 'auth-token-topzone', '3d238cfce953ef07b6c50143c011fdf1e8aee92aca34df709be3bc853b2f31df', '[\"*\"]', '2023-04-21 09:56:10', NULL, '2023-04-21 09:55:43', '2023-04-21 09:56:10'),
(117, 'App\\Models\\User', 7, 'auth-token-topzone', '994a14e2ec8265e7f505ee7c242b78457ea3c94ff3b4c29ec31786e900fc41f8', '[\"*\"]', '2023-04-21 10:04:20', NULL, '2023-04-21 09:56:26', '2023-04-21 10:04:20'),
(118, 'App\\Models\\User', 7, 'auth-token-topzone', 'd95ef8682c9fc3afb5aed50fd5e973d808c34feac366e9cc353c9037dbe92a6d', '[\"*\"]', '2023-04-21 09:59:15', NULL, '2023-04-21 09:57:24', '2023-04-21 09:59:15'),
(119, 'App\\Models\\User', 7, 'auth-token-topzone', '61040f9a7e77d6937eb768b4e6b4c830211b20be4d377fb9999652ca08359b7c', '[\"*\"]', '2023-04-21 10:00:39', NULL, '2023-04-21 09:59:34', '2023-04-21 10:00:39'),
(120, 'App\\Models\\User', 7, 'auth-token-topzone', '2f1b21f684b64405d3cd04f1293f7c304bee17252696e17dacda147f229d60b8', '[\"*\"]', '2023-04-26 10:22:00', NULL, '2023-04-24 07:23:23', '2023-04-26 10:22:00'),
(121, 'App\\Models\\User', 7, 'auth-token-topzone', '68cbf737e3e0da6a0a23726f197a40f436f45505fed14bfde2304e5a12947fa6', '[\"*\"]', '2023-04-26 02:59:52', NULL, '2023-04-24 08:24:54', '2023-04-26 02:59:52'),
(122, 'App\\Models\\User', 7, 'auth-token-topzone', 'ef782f5e6cdfaa9993ca9c18a721cbff011637a80893c8c8673549cd3b6e2774', '[\"*\"]', '2023-04-24 08:26:53', NULL, '2023-04-24 08:26:15', '2023-04-24 08:26:53'),
(123, 'App\\Models\\User', 1, 'auth-token-topzone', '23ff0514fecaa27822aae2509ebba34426edce2475f91b7c0b89e3943aa82d0a', '[\"*\"]', '2023-06-08 09:54:07', NULL, '2023-06-08 09:50:55', '2023-06-08 09:54:07'),
(124, 'App\\Models\\User', 2, 'auth-token-topzone', '68e9e07584406ee9f6616e2c52e653a41d88604f0e9291351f31bce5ea75ff0a', '[\"*\"]', '2023-06-16 03:52:11', NULL, '2023-06-16 03:50:50', '2023-06-16 03:52:11'),
(125, 'App\\Models\\User', 2, 'auth-token-topzone', '83cc52efc1015bfdb6ef2f0773e012635b079a6f0c534240af617e33cedb9db8', '[\"*\"]', '2023-06-16 06:47:59', NULL, '2023-06-16 06:47:59', '2023-06-16 06:47:59'),
(126, 'App\\Models\\User', 2, 'auth-token-topzone', 'c161ac505fc9cb3df3f56805e9d6ee315e4f51772ba30ac448c9c3afa69b3993', '[\"*\"]', '2023-06-16 07:02:35', NULL, '2023-06-16 07:02:34', '2023-06-16 07:02:35'),
(127, 'App\\Models\\User', 2, 'auth-token-topzone', 'c8c3cd67ebb63520ee820bb09f29571ce13ea28b8d6b7192c80b0f5378e9d5e1', '[\"*\"]', '2023-06-27 07:41:06', NULL, '2023-06-27 07:38:50', '2023-06-27 07:41:06'),
(128, 'App\\Models\\User', 7, 'auth-token-topzone', '16ae8b5dcc4b2628e8bae2ebf644c22f008959b3f21399ed597e10119609969a', '[\"*\"]', '2023-08-08 04:58:08', NULL, '2023-06-27 09:24:23', '2023-08-08 04:58:08'),
(129, 'App\\Models\\User', 7, 'auth-token-topzone', '0a6503ac5617df01196e43a9481ca63e5787f87878b835796e08f4f4183eefa1', '[\"*\"]', '2023-07-25 10:31:25', NULL, '2023-07-17 10:22:10', '2023-07-25 10:31:25'),
(130, 'App\\Models\\User', 7, 'auth-token-topzone', '6d03e5291110d3e34411d2939192d89b2253a471bc49926f8aeaa6ce651cf3b3', '[\"*\"]', '2023-08-08 05:06:23', NULL, '2023-08-08 03:00:13', '2023-08-08 05:06:23'),
(131, 'App\\Models\\User', 1, 'auth-token-topzone', 'db27fea605b0da8d1995e5f86c242043658a6eef70b5986979e3c7a41bf8f6e0', '[\"*\"]', '2023-09-30 08:49:03', NULL, '2023-09-30 08:48:34', '2023-09-30 08:49:03'),
(132, 'App\\Models\\User', 1, 'auth-token-topzone', 'dbdfc551cdc4cb463878c7044f729e0cbe73b624b784d555e3e82fab4dd012a8', '[\"*\"]', '2023-09-30 08:50:36', NULL, '2023-09-30 08:49:16', '2023-09-30 08:50:36'),
(133, 'App\\Models\\User', 7, 'auth-token-topzone', '4eb12d3eed0a84c86f5d3b9e7881df1128335be5250a1620f06ab191417786f8', '[\"*\"]', '2023-10-11 08:04:36', NULL, '2023-10-09 03:35:08', '2023-10-11 08:04:36'),
(134, 'App\\Models\\User', 7, 'auth-token-topzone', 'eed0cf657112d32f70f7540d601c7c3d84edb89ce141860054536347d69ef9e8', '[\"*\"]', '2023-10-11 08:02:27', NULL, '2023-10-09 03:45:38', '2023-10-11 08:02:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `post_type` tinyint(4) NOT NULL,
  `posted_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts_categories`
--

CREATE TABLE `posts_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_lft` int(11) NOT NULL,
  `_rgt` int(11) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts_posts_categories`
--

CREATE TABLE `posts_posts_categories` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `promotion_price` double DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_stock` tinyint(1) NOT NULL DEFAULT 0,
  `qty` int(11) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_user_discount` tinyint(1) NOT NULL DEFAULT 0,
  `is_earning_point` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `informations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `position` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes_variations`
--

CREATE TABLE `products_attributes_variations` (
  `product_attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_variation_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_categories`
--

CREATE TABLE `products_categories` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_variations`
--

CREATE TABLE `products_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `promotion_price` double DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL DEFAULT 1,
  `decs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_variations_variations`
--

CREATE TABLE `products_variations_variations` (
  `product_variation_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_variation_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `title`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superAdmin', 'admin', '2024-04-13 16:42:49', '2024-04-13 16:42:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plain_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_input` tinyint(4) DEFAULT NULL,
  `type_data` tinyint(4) DEFAULT NULL,
  `group` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_name`, `plain_value`, `type_input`, `type_data`, `group`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Tên site', 'Topzone', 1, NULL, 1, NULL, NULL),
(2, 'site_logo', 'Logo', '/public/assets/images/logo.png', 7, NULL, 1, NULL, NULL),
(3, 'email', 'Email', 'mevivu@gmail.com', 3, NULL, 1, NULL, NULL),
(4, 'holine', 'Số điện thoại', '0999999999', 4, NULL, 1, NULL, NULL),
(5, 'user_vip_default', 'Thành viên mặc định (%)', '0', 2, NULL, 2, NULL, NULL),
(6, 'user_vip_bronze', 'Thành viên đồng (%)', '1', 2, NULL, 2, NULL, NULL),
(7, 'user_vip_silver', 'Thành viên bạc (%)', '2', 2, NULL, 2, NULL, NULL),
(8, 'user_vip_gold', 'Thành viên vàng (%)', '3', 2, NULL, 2, NULL, NULL),
(9, 'user_vip_diamond', 'Thành viên kim cương (%)', '4', 2, NULL, 2, NULL, NULL),
(10, 'quantity_product_up_bronze', 'Nâng cấp thành viên đồng (SP)', '1', 2, NULL, 3, NULL, NULL),
(11, 'quantity_product_up_silver', 'Nâng cấp thành viên bạc (SP)', '2', 2, NULL, 3, NULL, NULL),
(12, 'quantity_product_up_gold', 'Nâng cấp thành viên vàng (SP)', '5', 2, NULL, 3, NULL, NULL),
(13, 'quantity_product_up_diamond', 'Nâng cấp thành viên kim cương (SP)', '10', 2, NULL, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plain_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider_items`
--

CREATE TABLE `slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(4) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `token_get_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `roles` tinyint(4) NOT NULL,
  `vip` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `code`, `username`, `fullname`, `email`, `phone`, `address`, `avatar`, `gender`, `email_verified_at`, `token_get_password`, `password`, `active`, `status`, `roles`, `vip`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'U8B75C1679890922', '0335828494', 'Kyosima', 'btvu282@gmail.com', '0335828494', NULL, NULL, 1, NULL, 'd587b32d-0441-4add-9884-21d26ef79cb8-1680060854', '$2y$10$3ntdoVgUjIBLlZVEs/CRHuK6ojKcjWbNOxz/XjxwFYQg.H7wCcIW2', 1, 1, 1, 1, NULL, '2023-03-27 04:22:03', '2023-04-20 08:07:01'),
(2, 'U58C8B1679996382', '0999999999', 'Nguyễn Thanh Long', 'example@gmail.com', '0999999999', NULL, NULL, 1, NULL, NULL, '$2y$10$w/IFB0xXqMLQYU8EzCurC.lWqIMRAT.yth1VxeEaRsyh98mk3lp4i', 1, 1, 1, 4, NULL, '2023-03-28 09:39:42', '2023-09-25 06:07:57'),
(3, 'UA09921680060796', '0335828491', 'Massi', 'abhcn@gmail.com', '0335828491', NULL, NULL, 1, NULL, NULL, '$2y$10$ba7ryxLPov26wSWZmetSjeSwLsoEuiwI2fMBFtBjzr/4iAUloeZvC', 1, 1, 1, 1, NULL, '2023-03-29 03:33:16', '2023-03-29 03:33:16'),
(7, 'UDD8061680600491', '0835221114', 'Thinh Nguyen 54', 'thinhnguyen01165@gmail.com', '0835221114', 'Thinh', NULL, 1, NULL, NULL, '$2y$10$BJwuPhSFQx5hvgW45.LFrubhDC4G5dUzoAjwNzhxuyobX20s/8zV6', 1, 1, 1, 3, NULL, '2023-04-04 09:28:11', '2023-04-21 09:10:36'),
(8, 'UD8F1D1681888369', '0835331114', 'Tuan Tran', 'tuantran@gmail.com', '0835331114', NULL, NULL, 1, NULL, NULL, '$2y$10$s7urK/kcl/5.bgSdmSgLPuVPQ.EIlCxnkfyymGI1g6/QZbuu0CP5y', 1, 1, 1, 1, NULL, '2023-04-19 07:12:49', '2023-04-19 07:12:49'),
(9, 'UC9EA01681888971', '0835222114', 'adsasfsf', 'abc@gmail.com', '0835222114', NULL, NULL, 1, NULL, NULL, '$2a$12$rHyOIg/NSqAF2qVVYXPFhOGUK81fkrODWBiPPNP.CKFyKRe3lGhWa', 1, 1, 1, 1, NULL, '2023-04-19 07:22:51', '2023-04-19 07:22:51'),
(10, 'U64ACC1681889122', '0835222514', 'Thinh Nguyen', 'thinhnguyen013@gmail.com', '0835222514', NULL, NULL, 1, NULL, NULL, '$2y$10$wr4f4oUk.XiLGSRWG3a6WObqZcr48Dy7FPuCi063h7hNAmKUBgvk2', 1, 1, 1, 1, NULL, '2023-04-19 07:25:22', '2023-04-19 07:25:22'),
(11, 'UB61291681889255', '0914256666', 'Chinh Hung', 'chinhhung@gmail.com', '0914256666', NULL, NULL, 1, NULL, NULL, '$2y$10$kbuTnZnT5eeAjkhWo9X5Sefw7hUmyuEB9eJDhUSjnXmAF89KKYin.', 1, 1, 1, 1, NULL, '2023-04-19 07:27:35', '2023-04-19 07:27:35'),
(12, 'U89C2B1681889289', '0914252666', 'Chinh Hung', 'chinhhung123@gmail.com', '0914252666', NULL, NULL, 1, NULL, NULL, '$2y$10$Gi5rxnp/QRgaAK6fNaZTw.7QrKqUmJ6FShx4GAvLWA0SQlGXYLElq', 1, 1, 1, 2, NULL, '2023-04-19 07:28:09', '2023-08-13 05:15:59');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attributes_variations`
--
ALTER TABLE `attributes_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_variations_attribute_id_foreign` (`attribute_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `order_earning_point`
--
ALTER TABLE `order_earning_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_earning_point_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  ADD KEY `module_id` (`module_id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `posts_categories`
--
ALTER TABLE `posts_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_categories_slug_unique` (`slug`),
  ADD KEY `posts_categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `posts_posts_categories`
--
ALTER TABLE `posts_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`),
  ADD KEY `posts_posts_categories_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_product_id_foreign` (`product_id`),
  ADD KEY `products_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Chỉ mục cho bảng `products_attributes_variations`
--
ALTER TABLE `products_attributes_variations`
  ADD PRIMARY KEY (`product_attribute_id`,`attribute_variation_id`),
  ADD KEY `products_attributes_variations_attribute_variation_id_foreign` (`attribute_variation_id`);

--
-- Chỉ mục cho bảng `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `products_categories_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `products_variations`
--
ALTER TABLE `products_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_variations_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `products_variations_variations`
--
ALTER TABLE `products_variations_variations`
  ADD PRIMARY KEY (`product_variation_id`,`attribute_variation_id`),
  ADD KEY `products_variations_variations_attribute_variation_id_foreign` (`attribute_variation_id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_setting_key_unique` (`setting_key`);

--
-- Chỉ mục cho bảng `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shopping_cart_user_id_foreign` (`user_id`),
  ADD KEY `shopping_cart_product_id_foreign` (`product_id`),
  ADD KEY `shopping_cart_product_variation_id_foreign` (`product_variation_id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider_items`
--
ALTER TABLE `slider_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_items_slider_id_foreign` (`slider_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `attributes_variations`
--
ALTER TABLE `attributes_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_earning_point`
--
ALTER TABLE `order_earning_point`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts_categories`
--
ALTER TABLE `posts_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products_variations`
--
ALTER TABLE `products_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slider_items`
--
ALTER TABLE `slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attributes_variations`
--
ALTER TABLE `attributes_variations`
  ADD CONSTRAINT `attributes_variations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_earning_point`
--
ALTER TABLE `order_earning_point`
  ADD CONSTRAINT `order_earning_point_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `posts_categories`
--
ALTER TABLE `posts_categories`
  ADD CONSTRAINT `posts_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `posts_categories` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `posts_posts_categories`
--
ALTER TABLE `posts_posts_categories`
  ADD CONSTRAINT `posts_posts_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `posts_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_posts_categories_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD CONSTRAINT `products_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products_attributes_variations`
--
ALTER TABLE `products_attributes_variations`
  ADD CONSTRAINT `products_attributes_variations_attribute_variation_id_foreign` FOREIGN KEY (`attribute_variation_id`) REFERENCES `attributes_variations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_attributes_variations_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `products_attributes` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products_categories`
--
ALTER TABLE `products_categories`
  ADD CONSTRAINT `products_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products_variations`
--
ALTER TABLE `products_variations`
  ADD CONSTRAINT `products_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products_variations_variations`
--
ALTER TABLE `products_variations_variations`
  ADD CONSTRAINT `products_variations_variations_attribute_variation_id_foreign` FOREIGN KEY (`attribute_variation_id`) REFERENCES `attributes_variations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_variations_variations_product_variation_id_foreign` FOREIGN KEY (`product_variation_id`) REFERENCES `products_variations` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shopping_cart_product_variation_id_foreign` FOREIGN KEY (`product_variation_id`) REFERENCES `products_variations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shopping_cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `slider_items`
--
ALTER TABLE `slider_items`
  ADD CONSTRAINT `slider_items_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
