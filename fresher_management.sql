-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 05, 2021 at 07:37 PM
-- Server version: 8.0.25
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fresher_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_07_26_023345_create_users_table', 1),
(2, '2021_07_26_032355_create_timesheets_table', 2),
(3, '2021_07_26_065043_create_permission_tables', 3),
(4, '2021_07_29_085438_create_reports_table', 4),
(5, '2021_08_02_014838_create_requests_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(4, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 32),
(2, 'App\\Models\\User', 37),
(3, 'App\\Models\\User', 38);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 18),
(7, 'App\\Models\\User', 19),
(8, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(7, 'App\\Models\\User', 22),
(12, 'App\\Models\\User', 25),
(12, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 27),
(2, 'App\\Models\\User', 28),
(7, 'App\\Models\\User', 29),
(7, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 31),
(7, 'App\\Models\\User', 32),
(7, 'App\\Models\\User', 33),
(12, 'App\\Models\\User', 34),
(12, 'App\\Models\\User', 35),
(12, 'App\\Models\\User', 36),
(8, 'App\\Models\\User', 37),
(7, 'App\\Models\\User', 38);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Fresher management', 'web', '2021-07-26 00:16:23', '2021-07-26 00:16:23'),
(3, 'Timesheet management', 'web', '2021-07-26 00:16:23', '2021-07-26 00:16:23'),
(4, 'Report management', 'web', '2021-07-26 00:16:23', '2021-07-26 00:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today_plan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `actual` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomorrow_plan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issues` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `today_plan`, `actual`, `tomorrow_plan`, `issues`, `action`, `note`, `created_at`, `updated_at`) VALUES
(1, '1', '-Make CRUD\r\n-Make', '-Make CR', '-Make UD', 'No issues', 'sefl study', 'no', '2021-07-29 09:22:42', NULL),
(2, '9', '-Make CRUD', '-Make CR', '-Make UD', 'No issues', 'sefl study', 'no', '2021-07-29 09:22:42', NULL),
(3, '9', '-Make CRUD', '-Make CR', '-Make UD', 'No issues', 'sefl study', 'no', '2021-06-29 09:22:42', NULL),
(4, '9', '-Make CRUD', '-Make CR', '-Make UD', 'No issues', 'sefl study', 'no', '2021-07-28 09:22:42', NULL),
(5, '14', '-Make CRUD', '-Make CR', '-Make UD', 'No issues', 'sefl study', 'no', '2021-07-29 09:22:42', NULL),
(6, '1', '-Make CRUD', '-Make CR', '-Make UD', 'No issues', 'sefl study', 'no', '2021-07-19 00:22:42', NULL),
(7, '1', '-Make CRUD', '-Make CR', '-Make UD', 'No issues', 'sefl study', 'no', '2021-06-10 00:22:42', NULL),
(9, '1', 'This is today plan', 'this is actual', 'this is tomorrow plan', 'this is issues', 'this is action', 'this is note', '2021-07-30 10:55:35', '2021-07-30 06:55:35'),
(14, '1', 'd', 'd', 'd', 'd', 'd', 'd', '2021-08-02 03:43:39', '2021-08-02 03:43:39'),
(15, '1', '1', '2', '3', '4', '5', '6', '2021-08-05 20:51:55', '2021-08-05 20:51:55'),
(20, '1', 'Fig all bugs', 'no idea', 'continues', 'alots', 'well do it', 'none', '2021-08-08 18:39:51', '2021-08-08 18:39:51'),
(21, '6', '1', '2', '3', '4', '5', '6', '2021-07-08 20:51:55', '2021-08-05 20:51:55'),
(23, '1', '1', '1', '1', '1', '1', '1', '2021-08-11 13:37:35', '2021-08-11 13:37:35'),
(24, '1', 'ew', 'ew', 'ưew', 'dư', 'ew', 'ưqdw', '2021-08-12 06:53:45', '2021-08-12 06:53:45'),
(26, '1', 'This is tp GRDSGTF', 'this is actual', 'this is tp', 'this is i', 'this is a', 'this is n', '2021-08-12 23:58:58', '2021-08-12 19:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `absence_date` datetime NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `user_id`, `absence_date`, `reason`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '2021-08-02 00:00:00', 'no reason', 'Morning', 'Approve', '2021-08-01 20:37:49', '2021-08-02 05:02:56'),
(3, '2', '2021-08-11 00:00:00', 'no reasonfgref', 'Morning', 'Approve', '2021-08-01 20:37:49', '2021-08-01 20:37:49'),
(5, '1', '2021-07-28 00:00:00', 'check out', 'Full', 'Reject', '2021-08-02 00:49:13', '2021-08-02 05:03:32'),
(6, '1', '2021-07-30 00:00:00', 'check out oki', 'Full', 'Approve', '2021-08-01 23:49:13', '2021-08-08 22:03:27'),
(7, '1', '2021-07-01 00:00:00', 'no reason', 'Morning', 'Approve', '2021-08-01 20:37:49', '2021-08-02 05:02:56'),
(8, '1', '2021-08-02 00:00:00', 'no reason', 'Afternoon', 'Reject', '2021-08-01 20:37:49', '2021-08-05 23:48:02'),
(9, '1', '2021-07-01 00:00:00', 'no reason', 'Morning', 'Reject', '2021-08-01 20:37:49', '2021-08-12 19:15:24'),
(10, '1', '2021-08-06 00:00:00', NULL, 'Full', 'Approve', '2021-08-06 03:06:56', '2021-08-06 03:07:38'),
(12, '1', '2021-08-09 00:00:00', 'no reasonfgref', 'Morning', 'Approve', '2021-08-01 20:37:49', '2021-08-01 20:37:49'),
(14, '1', '2021-06-09 00:00:00', 'y56y', 'Morning', 'Approve', '2021-08-08 19:16:47', '2021-08-08 19:16:47'),
(16, '1', '2021-07-28 00:00:00', 'fgrda', 'Morning late', 'Approve', '2021-08-08 21:59:07', '2021-08-08 22:04:08'),
(24, '1', '2021-08-21 00:00:00', 'ggrefs', 'Morning', 'Pending', '2021-08-09 00:53:56', '2021-08-09 00:53:56'),
(25, '1', '2021-09-04 00:00:00', 'getrsg', 'Morning', 'Pending', '2021-08-09 00:57:51', '2021-08-09 00:57:51'),
(29, '1', '2021-08-28 00:00:00', 'rtgw', 'Leave early', 'Pending', '2021-08-09 01:17:24', '2021-08-09 01:17:24'),
(30, '1', '2021-08-19 00:00:00', 'gkiu', 'Morning', 'Pending', '2021-08-09 20:12:50', '2021-08-09 20:12:50');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super_Admin', 'web', '2021-07-26 00:16:23', '2021-07-26 00:16:23'),
(2, 'fresher', 'web', '2021-07-26 20:45:58', '2021-07-26 20:45:58'),
(7, 'Fresher manager', 'web', '2021-08-05 02:57:28', '2021-08-10 08:21:55'),
(8, 'Timesheet Manager', 'web', '2021-08-05 23:48:32', '2021-08-05 23:48:32'),
(9, 'Report manager', 'web', '2021-08-07 00:14:06', '2021-08-07 00:14:06'),
(12, 'admin_default', 'web', '2021-08-07 00:14:06', '2021-08-07 00:14:06'),
(23, 'role2', 'web', '2021-08-12 20:26:42', '2021-08-12 20:26:42'),
(24, 'fresher1', 'web', '2021-08-13 01:31:05', '2021-08-13 01:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 7),
(3, 8),
(4, 9),
(3, 23),
(2, 24),
(3, 24);

-- --------------------------------------------------------

--
-- Table structure for table `timesheets`
--

CREATE TABLE `timesheets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_in` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_out` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timesheets`
--

INSERT INTO `timesheets` (`id`, `user_id`, `user_name`, `time_in`, `time_out`) VALUES
(1, 1, 'Nguyen Thi Thủy', '2021-07-02 02:31:50', '2021-07-02 11:31:50'),
(2, 1, 'Nguyen Thi Thủy', '2021-07-15 00:31:50', '2021-07-15 11:31:50'),
(3, 2, 'Nguyen Van A', '2021-07-15 00:31:50', '2021-07-15 11:31:50'),
(4, 2, 'Nguyen Van A', '2021-06-09 02:31:50', '2021-06-09 11:31:50'),
(5, 1, 'Nguyen Thi Thủy', '2021-08-03 00:31:50', '2021-08-03 11:31:50'),
(6, 1, 'Nguyen Thi Thủy', '2021-08-05 03:31:50', '2021-08-01 09:30:50'),
(7, 1, 'Nguyen Thi Thủy', '2021-08-04 03:31:50', '2021-08-04 11:00:50'),
(8, 1, 'Nguyen Thi Thủy', '2021-08-09 03:31:50', '2021-08-09 03:31:50'),
(9, 1, 'Nguyen Thi Thủy', '2021-08-06 03:31:50', '2021-08-06 03:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `part` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `dob`, `part`, `class`, `img`, `provider_id`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Thi Thủy', 'nguyenthithuy066@gmail.com', '74', '2021-08-12', 'PHP', 'F1', '/img/120210813090942.jpg', NULL, '$2y$10$21OTuzqQ6ZpaUXU5nH2b4uyH/hn8zWHvY.R37ViZk1egNAutWL4t.', NULL, 'Active', '2021-07-25 19:55:50', '2021-08-12 19:10:20'),
(2, 'Nguyen Van A', 'anv@vmodev.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2021-07-08 09:04:14', NULL),
(3, 'Tran Thi Linh', 'linhtt@vmodev.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2021-08-10 07:41:41', NULL),
(4, 'superadmin', 'anhntv@vmodev.com', NULL, NULL, NULL, NULL, '/img/420210813141057.jpg', NULL, '$2y$10$xiTyE0JMCDX/8uWaoS3aju3dJ9ynmTtNNm7McgyeK.SBChM4fAmIW', NULL, 'Active', '2021-07-25 23:46:34', '2021-08-13 07:10:57'),
(6, 'Nguyễn Hoàng Chí Bảo', 'Alice@gmail.com', '0987654321', '2021-07-13', 'PHP', 'F9', '/img/620210810115012.jpg', NULL, '$2y$10$ckmJzvcAmpjqAhlfUxPD8OOExvnWiBrpUYX6yx5xFkXyKP8KviV1e', NULL, 'Active', '2021-07-26 20:37:31', '2021-08-10 04:50:12'),
(7, 'Nguyễn Trung Hiếu', 'hieunt@vmodev.com', '0987547978', NULL, 'IOS', 'F9', NULL, NULL, '$2y$10$smB.9rxWeSii1F5A69AHteIEyw1PyBsp.hIVjF07syiyKe0dnd55e', NULL, 'Active', '2021-07-26 20:45:57', '2021-07-27 02:29:09'),
(8, 'Nguyen Khanh Linh', 'linhnk@vmodev.com', '0878734245', NULL, 'ML', 'F8', NULL, NULL, '$2y$10$oUJAEXFir3.K8A4nleWrIedvRJtDO.Cc5D/c51zECT.hqy8E6B0fu', NULL, 'Inactive', '2021-07-26 23:57:46', '2021-08-07 01:30:32'),
(9, 'Bui Van Cong', 'congbv@vmodev.com', '67345345675', NULL, 'Global', 'F7', NULL, NULL, '$2y$10$60g1uz/CA2SjvF8jQNgcD.g8kxcuR1.T9.OTEnl1fhw5mjGEed/n6', NULL, 'Active', '2021-07-27 02:30:34', '2021-07-27 02:30:34'),
(10, 'Nguyễn Thị Hoàn', 'yennth@vmodev.com', '87766543', '2021-07-01', 'Android', 'F8', NULL, NULL, '$2y$10$UWSoxFudpkzUuSin12ZVaumMeVy6RZwUsk5.N1XGHm4ykFsJru54i', NULL, 'Active', '2021-07-27 19:33:41', '2021-07-28 06:15:49'),
(11, 'Đỗ Hoàng Nam', 'namdh@vmodev.com', '965443', '2021-07-01', 'IOS', 'F9', NULL, NULL, '$2y$10$DYqob6CdnrmdmaXM8o90BuCn6eRRZoeDrVJAodZB7WTq2hAurZcNW', NULL, 'Inactive', '2021-07-27 19:39:17', '2021-08-12 19:01:04'),
(12, 'Hoang Cong Vinh', 'vinhhc@vmodev.com', '67565', '2021-07-01', 'PHP', 'F9', '/img/1220210729154126.jpg', NULL, '$2y$10$c9i5Hu47mTqaZGcfxFqr9.2Pxg1WKLXoUHUytRcSWmu4apj7YM.B.', NULL, 'Active', '2021-07-27 20:00:24', '2021-07-29 08:41:26'),
(13, 'Truong Anh Tuan', 'tuanta@vmodev.com', '5446546', '2021-07-01', 'JAVA', 'F8', NULL, NULL, '$2y$10$YzYrZ8qlZ2RklqDyIMKI6OLIMzY37/a67E/oVBY4rLxJRGOV37JK6', NULL, 'Active', '2021-07-27 20:04:15', '2021-07-27 20:04:15'),
(14, 'Đỗ Thanh Hoa', 'hoadt@vmodev.com', '546547654', '2021-07-01', 'ML', 'F9', NULL, NULL, '$2y$10$Rq2kTaioyP7Ew0qmXzQEMu9h/ry/.5bxaUrd5CXO/O4CVceoECoPm', NULL, 'Active', '2021-07-27 20:10:22', '2021-07-27 20:10:22'),
(16, 'hoa thi hong', 'thih@vmodev.com', '64354', '2021-07-15', 'PHP', 'F8', NULL, NULL, '$2y$10$ybvN1vkL.OuxLekcT9lvnuasNMGIDZgt3QK.1hDXa8iWhppwtN2i6', NULL, 'Active', '2021-07-28 02:14:52', '2021-07-28 06:05:21'),
(18, 'de', 'de@vmodev.com', '43', '2021-07-22', 'ded', 'dede', NULL, NULL, '$2y$10$nzqbzqixMOalYf0H9pj6v.hkXGkIKHuAPtqFr1cLbd1Iv1liDqDE.', NULL, 'Inactive', '2021-08-02 03:17:30', '2021-08-04 02:47:35'),
(19, 'Trần Thị Huyền', 'huyentt@vmodev.com', '5646546', '2021-07-17', 'PHP', NULL, '/img/1920210812195408.jpg', NULL, '$2y$10$BqzQO.LBWb4oDE1cPxLXjOxBG7OBrgKqrusT4a8CTzLpvwfwGNW26', NULL, 'Active', '2021-08-06 01:14:43', '2021-08-12 12:54:08'),
(20, 'vân anh', 'anhv@vmodev.com', '5443', '2021-07-01', 'JAVA', NULL, NULL, NULL, '$2y$10$tGawxAayVkFAdkA.5Hhhnu815jFCVtAYpI30t2llzr/fuPxEn8ecS', NULL, 'Inactive', '2021-08-06 02:56:07', '2021-08-12 18:54:34'),
(21, 'Dinh Huong Ly', 'lydh@vmodev.com', '5643', '2021-07-01', 'IOS', 'F8', NULL, NULL, '$2y$10$QlVY3OmK63YaAsZ6vYXNLu3i/jLu9B.Ewi4.4Qk.J0dS2/F2zlmey', NULL, 'Inactive', '2021-08-08 01:01:11', '2021-08-09 03:26:13'),
(22, 'Nguyen Huu Hoang', 'hoangnh@vmodev.com', '4545', '2021-07-01', 'PHP', NULL, NULL, NULL, '$2y$10$5wT4q1FZC9jL29Ib4XVBx.08PVJs5YUKhr.B4zIiLkVEaHtamGndy', NULL, 'Active', '2021-08-08 01:32:12', '2021-08-08 01:53:08'),
(29, 'Bui Van Cong', 'congbui@vmodev.com', '7657354', '2021-08-20', 'PHP', NULL, NULL, NULL, '$2y$10$tTanYrEYM6w3oUqAqOZ06uYf3xkhePFjsq5WjuDZutsmX6kFVdFEq', NULL, 'Inactive', '2021-08-10 07:30:34', '2021-08-10 07:32:06'),
(30, 'Bui Van Cong', 'buicong@gmail.com', '5245645', '2021-07-01', 'ANDROID', NULL, NULL, NULL, '$2y$10$VYEETXNkxoeX22h5/3wXaOOhnC/7bFYw.j9lYTiSu4731Hm46SZgO', NULL, 'Active', '2021-08-10 07:47:49', '2021-08-10 07:47:49'),
(31, 'huyen thi trang', 'huyentrang@vmodev.com', '345', '2021-07-01', 'PHP', 'F9', '/img/3120210810225705.jpg', NULL, '$2y$10$qn4aO6YjRpKhQGQ0F/kKKuY.bmoATdbmLfM2iV5dYOMSjRysIY96.', NULL, 'Active', '2021-08-10 15:56:51', '2021-08-10 08:59:25'),
(32, 'trinh thi lan', 'lantrinh@gmail.com', '546546', '2021-07-01', 'PHP', NULL, NULL, NULL, '$2y$10$Plt0E5anDwfLLCOj4qQfEukZGGl4AfE1zDRLmvjFBpSxsFzcSGBn6', NULL, 'Inactive', '2021-08-10 20:10:48', '2021-08-10 20:11:39'),
(33, 'huyen thi linh', 'llinh@gmail.com', '4365654', '2021-08-13', 'PHP', NULL, NULL, NULL, '$2y$10$xDxZWTu..zQd/nOvIRmB5uWv39DjFmtrw5RAGM49p3UlNX4h854li', NULL, 'Inactive', '2021-08-10 20:12:11', '2021-08-12 18:45:13'),
(34, 'admin moi', 'adms@gmail.com', '565', '2021-08-14', 'PHP', NULL, '/img/3420210811105448.jpg', NULL, '$2y$10$PZWEfuCVsrOLUNrS2n34K.lURSKKu2D/zp7bE.AYIdjjWssx1U9qi', NULL, 'Inactive', '2021-08-11 03:54:23', '2021-08-12 18:51:31'),
(35, 'vân anh', 'Alice@gmail.co', '876', '2021-08-21', 'PHP', NULL, '/img/3520210811114209.jpg', NULL, '$2y$10$gNht/terrjWiVE1/V297K.2iW9Mk4jmR24lkvlW/fxWqTV8KBk0gy', NULL, 'Active', '2021-08-11 04:41:51', '2021-08-11 04:42:09'),
(36, 'nguyen van b', 'nguyenb@vmodev.com', '45654', '2021-07-01', 'PHP', NULL, '/img/20210813071801.jpg', NULL, '$2y$10$Ik0qNuP.5nXaVZPE11LZdeJN/AHejDYyeUE.rOpFsLACAIx9OM3Le', NULL, 'Active', '2021-08-13 00:18:01', '2021-08-13 00:18:01'),
(37, 'hoang thi duyen', 'hoangduyen@vmodev.com', '5646', '2021-08-14', 'JAVA', NULL, '/img/20210813085655.jpg', NULL, '$2y$10$SP7cAxblACJ.3Bj3ZTG4BuerKMqdOM.ctKFS/ilMrn00th1CELc.W', NULL, 'Active', '2021-08-13 01:56:55', '2021-08-13 01:56:55'),
(38, 'test admin', 'Alice111@gmail.com', '675344', '2021-08-13', 'PHP', NULL, '/img/20210813152939.jpg', NULL, '$2y$10$fALZxyGCitSmAPMzzCeF/OFFAsXtv7f3E6ppo9Nl//8A2ma2wisVe', NULL, 'Active', '2021-08-13 08:29:39', '2021-08-13 08:29:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
