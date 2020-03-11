-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 10, 2020 at 02:21 PM
-- Server version: 10.2.30-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u462853651_hoteleo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` enum('M','F','O') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 2 COMMENT 'admin=0,staff=1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `first_name`, `last_name`, `phone`, `address`, `sex`, `picture`, `status`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 'admin', '01811903004', 'admin', 'M', NULL, 1, '$2y$10$X5FPacYdtzSGvoucUa5.1OUZNvpZDt.38z6vXD8wwNtAOTkyBRBBO', 'PvSkToa88vI3SKofz8OaJnRBPdXP423g4inADtF5vi7crsNyHHRyRLdPChSQ', 0, NULL, '2020-02-18 01:45:22'),
(2, 'ghdfgh', 'rowjat@gmail.com', 'dghdfgh', 'fghfghf', '01811903004', 'sdgsdfg', 'F', 'pic_1562045360.png', 1, '$2y$10$d60Mv0HwSoNISNaqhSAVh.ZvJsVTANpa9qiJ18spva0azoq1OQHES', 'Qm5lEtptwgqEIrttHHUriz4BBFtIXG6zuDwQP7tJ3eh2cBQqKgRCsw7IVN28', 1, '2019-07-01 23:03:37', '2019-07-02 00:25:48'),
(3, 'ganesh', 'ganesh@gmail.com', 'Ganesh', 'Kundapura', '7975503096', 'Kundapura', 'M', NULL, 1, '$2y$10$FybgYorjGr2g67k.NRRvW.NayhPCD8jm7S/Wf50dUT8aed8WYXNGS', '2NZTZ9LTlaF3sfNBrPt1F48vN8Pbg0kK3jTaw9o8R4HNsi4sQNEmwZ2FSbyS', 1, '2020-02-19 09:44:32', '2020-02-19 09:44:32'),
(4, 'sanjeev', 'sanjeev@gmail.com', 'sanjeev', 'kundapura', '8789799889', 'kundapura', 'M', NULL, 1, '$2y$10$C/DR9HKZeWVAKWxBnj4T.eRgXcxGtkJrvP3DOwyLSaThDgo5ihsoK', 'uYyDepiSR0soxJjFBoyFDa8oB6C9A8GnHfM28Owfh76qscSqwv02uFbhzc1o', 1, '2020-02-19 19:43:07', '2020-02-19 19:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applied_coupon_codes`
--

CREATE TABLE `applied_coupon_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reservation_id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `coupon_type` enum('PERCENTAGE','FIXED') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_rate` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applied_coupon_codes`
--

INSERT INTO `applied_coupon_codes` (`id`, `reservation_id`, `coupon_id`, `user_id`, `date`, `status`, `coupon_type`, `coupon_rate`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 2, '2020-02-18', 1, 'FIXED', 250.00, '2020-02-18 10:32:59', '2020-02-18 10:32:59'),
(2, 8, 1, 2, '2020-02-18', 1, 'FIXED', 250.00, '2020-02-18 10:42:06', '2020-02-18 10:42:06'),
(3, 9, 1, 3, '2020-02-18', 1, 'FIXED', 250.00, '2020-02-18 12:48:09', '2020-02-18 12:48:09'),
(4, 10, 1, 3, '2020-02-18', 1, 'FIXED', 550.00, '2020-02-18 15:26:28', '2020-02-18 15:26:28'),
(5, 16, 1, 4, '2020-02-18', 1, 'FIXED', 499.00, '2020-02-18 20:57:50', '2020-02-18 20:57:50'),
(6, 18, 1, 4, '2020-02-19', 1, 'FIXED', 499.00, '2020-02-19 15:38:50', '2020-02-19 15:38:50'),
(7, 23, 1, 3, '2020-02-21', 1, 'FIXED', 550.00, '2020-02-21 19:45:58', '2020-02-21 19:45:58'),
(8, 24, 1, 16, '2020-02-22', 1, 'FIXED', 300.00, '2020-02-22 23:20:51', '2020-02-22 23:20:51'),
(9, 25, 1, 17, '2020-02-22', 1, 'FIXED', 350.00, '2020-02-22 23:40:04', '2020-02-22 23:40:04'),
(10, 26, 1, 18, '2020-02-23', 1, 'FIXED', 400.00, '2020-02-23 17:04:35', '2020-02-23 17:04:35'),
(11, 33, 1, 3, '2020-02-25', 1, 'FIXED', 550.00, '2020-02-25 18:31:02', '2020-02-25 18:31:02'),
(12, 34, 1, 19, '2020-02-26', 1, 'FIXED', 200.00, '2020-02-26 09:12:50', '2020-02-26 09:12:50'),
(13, 35, 1, 21, '2020-02-26', 1, 'FIXED', 200.00, '2020-02-26 23:42:38', '2020-02-26 23:42:38'),
(14, 36, 1, 22, '2020-02-26', 1, 'FIXED', 100.00, '2020-02-26 23:46:29', '2020-02-26 23:46:29'),
(15, 38, 1, 24, '2020-02-27', 1, 'FIXED', 600.00, '2020-02-27 22:43:42', '2020-02-27 22:43:42'),
(16, 39, 1, 24, '2020-02-29', 1, 'FIXED', 500.00, '2020-02-29 10:37:03', '2020-02-29 10:37:03'),
(17, 40, 1, 24, '2020-02-29', 1, 'FIXED', 549.00, '2020-02-29 10:39:55', '2020-02-29 10:39:55'),
(18, 49, 1, 4, '2020-03-02', 1, 'FIXED', 499.00, '2020-03-02 21:18:31', '2020-03-02 21:18:31'),
(19, 50, 1, 28, '2020-03-02', 1, 'FIXED', 300.00, '2020-03-02 21:24:37', '2020-03-02 21:24:37'),
(20, 53, 1, 29, '2020-03-04', 1, 'FIXED', 499.00, '2020-03-04 18:24:19', '2020-03-04 18:24:19'),
(21, 54, 1, 30, '2020-03-05', 1, 'FIXED', 500.00, '2020-03-05 09:09:05', '2020-03-05 09:09:05'),
(22, 55, 1, 29, '2020-03-05', 1, 'FIXED', 499.00, '2020-03-05 23:58:33', '2020-03-05 23:58:33'),
(23, 56, 1, 3, '2020-03-06', 1, 'FIXED', 550.00, '2020-03-06 19:36:40', '2020-03-06 19:36:40'),
(24, 57, 1, 29, '2020-03-07', 1, 'FIXED', 399.00, '2020-03-07 10:05:41', '2020-03-07 10:05:41'),
(25, 58, 1, 31, '2020-03-07', 1, 'FIXED', 400.00, '2020-03-07 11:50:06', '2020-03-07 11:50:06'),
(26, 59, 1, 32, '2020-03-07', 1, 'FIXED', 250.00, '2020-03-07 14:02:38', '2020-03-07 14:02:38'),
(27, 60, 1, 32, '2020-03-07', 1, 'FIXED', 250.00, '2020-03-07 14:04:59', '2020-03-07 14:04:59'),
(28, 67, 1, 33, '2020-03-07', 1, 'FIXED', 649.00, '2020-03-07 21:56:00', '2020-03-07 21:56:00'),
(29, 68, 1, 34, '2020-03-08', 1, 'FIXED', 499.00, '2020-03-08 07:07:37', '2020-03-08 07:07:37'),
(30, 76, 1, 42, '2020-03-08', 1, 'FIXED', 600.00, '2020-03-08 21:36:40', '2020-03-08 21:36:40'),
(31, 77, 1, 43, '2020-03-09', 1, 'FIXED', 349.00, '2020-03-09 07:38:42', '2020-03-09 07:38:42'),
(32, 78, 1, 44, '2020-03-09', 1, 'FIXED', 499.00, '2020-03-09 18:38:24', '2020-03-09 18:38:24'),
(33, 79, 1, 4, '2020-03-09', 1, 'FIXED', 299.00, '2020-03-09 19:49:19', '2020-03-09 19:49:19'),
(34, 80, 1, 45, '2020-03-09', 1, 'FIXED', 499.00, '2020-03-09 22:20:56', '2020-03-09 22:20:56'),
(35, 81, 1, 46, '2020-03-09', 1, 'FIXED', 499.00, '2020-03-09 22:21:40', '2020-03-09 22:21:40'),
(36, 82, 1, 47, '2020-03-09', 1, 'FIXED', 399.00, '2020-03-09 22:23:04', '2020-03-09 22:23:04'),
(37, 83, 1, 48, '2020-03-10', 1, 'FIXED', 499.00, '2020-03-10 12:30:45', '2020-03-10 12:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tourist Attraction', 1, '2020-02-25 12:26:19', '2020-02-25 12:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_masters`
--

CREATE TABLE `coupon_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `offer_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_start_time` datetime NOT NULL,
  `period_end_time` datetime NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('PERCENTAGE','FIXED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PERCENTAGE',
  `value` double(8,2) NOT NULL DEFAULT 0.00,
  `min_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `max_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `limit_per_user` int(11) NOT NULL DEFAULT 0,
  `limit_per_coupon` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_masters`
--

INSERT INTO `coupon_masters` (`id`, `offer_title`, `description`, `image`, `period_start_time`, `period_end_time`, `code`, `type`, `value`, `min_amount`, `max_amount`, `limit_per_user`, `limit_per_coupon`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Offer', '<br>', '1555151626.png', '2020-03-10 11:00:00', '2020-03-11 11:00:00', 'DIS', 'FIXED', 499.00, 100.00, 300000.00, 1000000, 1000, 1, NULL, '2019-04-13 04:33:47', '2020-03-10 12:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_pivot_include_room_type`
--

CREATE TABLE `coupon_pivot_include_room_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_pivot_include_room_type`
--

INSERT INTO `coupon_pivot_include_room_type` (`id`, `coupon_id`, `room_type_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_pivot_paid_service`
--

CREATE TABLE `coupon_pivot_paid_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `paid_service_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_pivot_paid_service`
--

INSERT INTO `coupon_pivot_paid_service` (`id`, `coupon_id`, `paid_service_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `name`, `amount`, `created_at`, `updated_at`) VALUES
(8, 'Given To Ramesh Sir', 100, '2020-03-03 11:15:45', '2020-03-03 11:15:45'),
(9, 'Food Expense For Manager', 100, '2020-03-03 11:17:55', '2020-03-03 11:17:55'),
(10, 'Food Expense For Manager', 100, '2020-03-03 13:44:04', '2020-03-03 13:44:04'),
(11, 'Diesel 30 ltr (66.66*30)', 2000, '2020-03-03 13:45:02', '2020-03-03 13:45:02'),
(13, 'Copper Stripe For Elevator Earthing & Hole Cutting', 230, '2020-03-03 13:47:32', '2020-03-03 13:47:32'),
(14, 'Labour Charge For Chamber Work & Cleaning', 600, '2020-03-03 18:15:14', '2020-03-03 18:15:14'),
(15, 'Fast Net Cable Feb-2020 Bill Balance Amount', 885, '2020-03-03 18:26:47', '2020-03-03 18:26:47'),
(16, 'Advance Amount (Santhosh)', 1000, '2020-03-03 19:13:46', '2020-03-03 19:13:46'),
(18, 'manager food expense', 100, '2020-03-04 09:21:44', '2020-03-04 09:21:44'),
(19, 'bright laundry', 1126, '2020-03-04 09:23:44', '2020-03-04 09:23:44'),
(20, 'manager food expense 2nd march', 100, '2020-03-04 09:24:20', '2020-03-04 09:24:20'),
(21, 'Food Expense For Manager', 100, '2020-03-04 18:32:26', '2020-03-04 18:32:26'),
(22, 'News Paper 29-02-2020 (Srinivas Shenoy)', 450, '2020-03-06 09:37:39', '2020-03-06 09:37:39'),
(23, 'Printer Ink Refilling (06.03.2020)', 200, '2020-03-07 10:12:16', '2020-03-07 10:12:16'),
(24, 'Advance Amount (Santhosh)', 10000, '2020-03-07 10:15:21', '2020-03-07 10:15:21'),
(25, 'Monthly Maintenance Charges To Mr. Rajesh Plumber (Feb-2020)', 3000, '2020-03-07 14:38:32', '2020-03-07 14:38:32'),
(26, 'Agarbathi, Oil For Pooja & Milk, Biscuit', 131, '2020-03-07 18:12:13', '2020-03-07 18:12:13'),
(27, 'Given To Mr. Sharath Karvi (Municipality)', 20000, '2020-03-08 10:42:28', '2020-03-08 10:42:28'),
(29, 'Food Expense For Manager', 100, '2020-03-08 17:54:06', '2020-03-08 17:54:06'),
(30, 'Phenol (C.K. Enterprises)', 200, '2020-03-08 17:56:05', '2020-03-08 17:56:05'),
(32, 'Mosquito Repellent (Good Night 09.03.20220)', 85, '2020-03-10 10:55:59', '2020-03-10 10:55:59'),
(33, 'Milk 1/2 & BISCUIT', 31, '2020-03-10 19:31:55', '2020-03-10 19:31:55'),
(34, 'Highlighter + printing stricker', 70, '2020-03-10 19:32:47', '2020-03-10 19:32:47'),
(35, 'Food Expense For Manager', 100, '2020-03-10 19:33:19', '2020-03-10 19:33:19'),
(36, 'salary of  (FEB-2020)', 7000, '2020-03-10 19:34:05', '2020-03-10 19:34:05'),
(37, 'Salary advance (Feb 2020) (Santhosh)', 3000, '2020-03-10 19:35:28', '2020-03-10 19:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `name`, `number`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1st Floor', 1, NULL, 1, NULL, '2020-02-18 07:25:43', '2020-02-18 08:50:10'),
(2, '2nd Floor', 2, NULL, 1, NULL, '2020-02-18 08:50:29', '2020-02-18 08:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(11) NOT NULL,
  `main_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minamo` double(8,2) NOT NULL DEFAULT 0.00,
  `maxamo` double(8,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` double(8,2) NOT NULL DEFAULT 0.00,
  `percent_charge` double(8,2) NOT NULL DEFAULT 0.00,
  `rate` double(8,2) NOT NULL DEFAULT 0.00,
  `val1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_online` tinyint(1) NOT NULL DEFAULT 0,
  `is_offline` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `main_name`, `name`, `minamo`, `maxamo`, `fixed_charge`, `percent_charge`, `rate`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `status`, `is_online`, `is_offline`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 'Cash', 0.00, 0.00, 0.00, 0.00, 80.00, 'Please confirm your Booking by Calling 091485 08738', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, '2020-02-18 22:43:22'),
(2, 'Bank', 'Bank', 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, '2020-02-18 22:45:00'),
(101, 'PayPal', 'Paypal', 0.00, 0.00, 0.00, 0.00, 79.00, 'rexrifat636@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:24:14'),
(102, 'PerfectMoney', 'PerfectMoney', 0.00, 0.00, 0.00, 0.00, 80.00, 'U5376900', 'G079qn4Q7XATZBqyoCkBteGRg', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:24:18'),
(103, 'Stripe', 'Stripe', 0.00, 0.00, 0.00, 0.00, 80.00, 'sk_test_aat3tzBCCXXBkS4sxY3M8A1B', 'pk_test_AU3G7doZ1sbdpJLj0NaozPBu', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:24:24'),
(104, 'Skrill', 'Skrill', 0.00, 0.00, 0.00, 0.00, 80.00, 'merchant@skrill', 'TheSoftKing', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:24:36'),
(105, 'PayTM', 'PayTM', 0.00, 0.00, 0.00, 0.00, 79.00, 'PoojaE46324372286132', 'JAKMX9PVoj208dMq', 'WEB_STAGINGb', 'Retail', 'WEB', 'https://pguat.paytm.com/oltp-web/processTransaction', 'https://pguat.paytm.com/paytmchecksum/paytmCallback.jsp', 0, 1, 0, NULL, '2019-07-01 06:42:42'),
(106, 'Payeer', 'Payeer', 1.00, 100.00, 1.00, 1.00, 1.00, '627881897', 'Admin727096', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:24:41'),
(107, 'PayStack', 'PayStack', 0.00, 0.00, 0.00, 0.00, 80.00, 'pk_test_c1775454cc81a5ad2d6a31d0b0471585d44c4dcb', 'sk_test_22327c329aa7ea76448cfe279aa1e5d583d306fa', NULL, NULL, NULL, NULL, '0.0028', 0, 1, 0, NULL, '2020-02-18 22:24:47'),
(108, 'VoguePay', 'VoguePay', 1.00, 100.00, 1.00, 1.00, 1.00, 'demo', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:24:52'),
(501, 'Blockchain.info', 'BitCoin', 1.00, 20000.00, 1.00, 0.50, 80.00, '3965f52f-ec19-43af-90ed-d613dc60657eSSS', 'xpub6DREmHywjNizvs9b4hhNekcjFjvL4rshJjnrHHgtLNCSbhhx5jKFRgqdmXAecLAddEPudDZY4xoDbV1NVHSCeDp1S7NumPCNNjbxB7sGasY0000', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:25:00'),
(502, 'block.io - BTC', 'BitCoin', 1.00, 99999.00, 1.00, 0.50, 80.00, '1658-8015-2e5e-9afb', '09876softk', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:25:04'),
(503, 'block.io - LTC', 'LiteCoin', 100.00, 10000.00, 0.40, 1.00, 80.00, 'cb91-a5bc-69d7-1c27', '09876softk', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:25:12'),
(504, 'block.io - DOGE', 'DogeCoin', 1.00, 50000.00, 0.51, 2.52, 80.00, '2daf-d165-2135-5951', '09876softk', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:25:18'),
(505, 'CoinPayment - BTC', 'BitCoin', 1.00, 50000.00, 0.51, 2.52, 80.00, '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:25:25'),
(506, 'CoinPayment - ETH', 'Etherium', 1.00, 50000.00, 0.51, 2.52, 79.00, '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:25:31'),
(507, 'CoinPayment - BCH', 'Bitcoin Cash', 1.00, 50000.00, 0.51, 2.52, 80.00, '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:25:47'),
(508, 'CoinPayment - DASH', 'DASH', 1.00, 50000.00, 0.51, 2.52, 80.00, '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:25:52'),
(509, 'CoinPayment - DOGE', 'DOGE', 1.00, 50000.00, 0.51, 2.52, 80.00, '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:25:57'),
(510, 'CoinPayment - LTC', 'LTC', 1.00, 50000.00, 0.51, 2.52, 80.00, '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2019-07-01 06:00:53'),
(512, 'CoinGate', 'CoinGate', 10.00, 1000.00, 5.00, 5.00, 80.00, 'Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:25:36'),
(513, 'CoinPayment-ALL', 'Coin Payment', 10.00, 1000.00, 5.00, 5.00, 80.00, 'db1d9f12444e65c921604e289a281c56', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2020-02-18 22:25:41'),
(514, 'Pay At Front Desk', 'Pay At Front Desk', 0.00, 0.00, 0.00, 0.00, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2020-02-18 22:56:30', '2020-02-19 19:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'CURRENCY',
  `cur_sym` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'CURRENCY SYMBOL',
  `en` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'EMAIL NOTIFICATION',
  `mn` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'SMS NOTIFICATION',
  `sender_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_in_time` time DEFAULT NULL,
  `check_out_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `title`, `name`, `email`, `phone`, `address`, `color`, `cur`, `cur_sym`, `en`, `mn`, `sender_email`, `email_message`, `sms_api`, `check_in_time`, `check_out_time`, `created_at`, `updated_at`) VALUES
(1, 'White House Inn', NULL, 'contact@whitehouseinn.in', '091485 08738,9148508737', 'veenu complex, Kundapura Main Rd, opp. canara bank, Kundapura, Karnataka 576201 GSTTIN:29AFRPP7885A1ZQ', '2ecc71', 'Rupee', '₹', 1, 0, 'do-not-reply@thesoftking.com', '<br><br>\r\n	<div class=\"contents\" style=\"max-width: 600px; margin: 0 auto; border: 2px solid #000036;\">\r\n\r\n<div class=\"header\" style=\"background-color: #000036; padding: 15px; text-align: center;\">\r\n	<div class=\"logo\" style=\"width: 260px;text-align: center; margin: 0 auto;\">\r\n		<img src=\"https://i.imgur.com/4NN55uD.png\" alt=\"THESOFTKING\" style=\"width: 100%;\">\r\n	</div>\r\n</div>\r\n\r\n<div class=\"mailtext\" style=\"padding: 30px 15px; background-color: #f0f8ff; font-family: \'Open Sans\', sans-serif; font-size: 16px; line-height: 26px;\">\r\n\r\nHi {{name}},\r\n<br><br>\r\n{{message}}\r\n<br><br>\r\n<br><br>\r\n</div>\r\n\r\n<div class=\"footer\" style=\"background-color: #000036; padding: 15px; text-align: center;\">\r\n<a href=\"https://thesoftking.com/\" style=\"	background-color: #2ecc71;\r\n	padding: 10px 0;\r\n	margin: 10px;\r\n	display: inline-block;\r\n	width: 100px;\r\n	text-transform: uppercase;\r\n	text-decoration: none;\r\n	color: #ffff;\r\n	font-weight: 600;\r\n	border-radius: 4px;\">Website</a>\r\n<a href=\"https://thesoftking.com/products\" style=\"	background-color: #2ecc71;\r\n	padding: 10px 0;\r\n	margin: 10px;\r\n	display: inline-block;\r\n	width: 100px;\r\n	text-transform: uppercase;\r\n	text-decoration: none;\r\n	color: #ffff;\r\n	font-weight: 600;\r\n	border-radius: 4px;\">Products</a>\r\n<a href=\"https://thesoftking.com/contact\" style=\"	background-color: #2ecc71;\r\n	padding: 10px 0;\r\n	margin: 10px;\r\n	display: inline-block;\r\n	width: 100px;\r\n	text-transform: uppercase;\r\n	text-decoration: none;\r\n	color: #ffff;\r\n	font-weight: 600;\r\n	border-radius: 4px;\">Contact</a>\r\n</div>\r\n\r\n\r\n<div class=\"footer\" style=\"background-color: #000036; padding: 15px; text-align: center; border-top: 1px solid rgba(255, 255, 255, 0.2);\">\r\n\r\n<strong style=\"color: #fff;\">© 2011 - 2019 THESOFTKING. All Rights Reserved.</strong>\r\n<p style=\"color: #ddd;\">TheSoftKing is not partnered with any other \r\ncompany or person. We work as a team and do not have any reseller, \r\ndistributor or partner!</p>\r\n\r\n\r\n</div>\r\n\r\n	</div>\r\n<br><br>', 'https://api.infobip.com/api/v3/sendsms/plain?user=****&password=*****&sender=E-Wallet&SMSText={{message}}&GSM={{number}}&type=longSMS', '12:00:00', '11:00:00', '2019-04-13 03:30:44', '2020-03-09 00:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_17_074545_create_admins_table', 1),
(4, '2018_11_17_092751_create_general_settings_table', 1),
(9, '2019_01_27_061424_create_amenities_table', 1),
(10, '2019_01_27_084925_create_room_types_table', 1),
(11, '2019_01_27_090232_create_room_type_pivot_amenity_table', 1),
(12, '2019_01_27_090546_create_room_type_images_table', 1),
(13, '2019_01_28_054237_create_floors_table', 1),
(14, '2019_01_28_060201_create_rooms_table', 1),
(15, '2019_01_28_065513_create_paid_services_table', 1),
(17, '2019_01_28_084852_create_coupon_masters_table', 1),
(18, '2019_01_28_090032_create_coupon_pivot_include_room_type_table', 1),
(19, '2019_01_28_090142_create_coupon_pivot_paid_service_table', 1),
(20, '2019_01_28_105730_create_regular_prices_table', 1),
(21, '2019_01_28_105847_create_special_prices_table', 1),
(22, '2019_01_31_060024_create_tax_managers_table', 1),
(23, '2019_01_31_081436_create_reservations_table', 1),
(24, '2019_01_31_084426_create_reservation_nights_table', 1),
(25, '2019_01_31_084503_create_reservation_taxes_table', 1),
(26, '2019_01_31_084603_create_reservation_paid_services_table', 1),
(27, '2019_01_31_085704_create_applied_coupon_codes_table', 1),
(28, '2019_02_05_100910_create_gateways_table', 1),
(30, '2019_02_05_121238_create_payments_table', 1),
(33, '2019_03_14_095400_create_transactions_table', 2),
(37, '2019_01_17_144645_create_web_settings_table', 3),
(38, '2019_04_21_062847_create_web_our_teams_table', 4),
(39, '2019_04_21_075544_create_web_galleries_table', 5),
(40, '2019_04_21_080514_create_web_gallery_categories_table', 5),
(43, '2019_04_21_095729_create_web_our_client_feedbacks_table', 6),
(44, '2019_04_21_095847_create_web_counter_sections_table', 6),
(45, '2019_01_19_150430_create_web_faqs_table', 7),
(48, '2019_04_23_062708_create_web_socials_table', 8),
(49, '2019_07_02_112313_create_web_facilities_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `paid_services`
--

CREATE TABLE `paid_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paid_services`
--

INSERT INTO `paid_services` (`id`, `icon`, `title`, `price`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'BED', 'Extra Bed', 300.00, 1, NULL, '2020-02-18 09:42:04', '2020-02-27 07:59:59'),
(2, 'EXTRA PERSON', 'Room Service', 300.00, 1, NULL, '2020-02-18 09:42:56', '2020-02-18 22:18:57'),
(3, 'Laundry Service', 'Laundry Service', 300.00, 1, NULL, '2020-02-18 22:19:29', '2020-02-18 22:19:29'),
(4, 'Parking', 'Parking', 0.00, 1, NULL, '2020-02-18 22:22:08', '2020-02-18 22:22:08'),
(5, 'Online booking', 'Online Booking', 318.00, 1, NULL, '2020-02-25 14:19:08', '2020-03-02 11:19:04'),
(6, 'AC', 'AIR-CONDITION', 300.00, 1, NULL, '2020-02-26 11:55:55', '2020-03-05 20:20:41'),
(7, 'ROOD UPGRADE', 'ROOM UP GRADATION', 300.00, 1, NULL, '2020-02-29 17:48:19', '2020-02-29 17:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `gateway_id` int(10) UNSIGNED NOT NULL,
  `reservetion_id` int(11) DEFAULT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `usd_amo` double(8,2) NOT NULL DEFAULT 0.00,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `type` enum('online','offline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'online',
  `try` tinyint(1) NOT NULL DEFAULT 0,
  `btc_amo` double(8,2) NOT NULL DEFAULT 0.00,
  `btc_wallet` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `gateway_id`, `reservetion_id`, `amount`, `usd_amo`, `trx`, `status`, `type`, `try`, `btc_amo`, `btc_wallet`, `created_at`, `updated_at`) VALUES
(1, 2, 508, NULL, 1009.00, 12.61, '1581998540-3482', 0, 'online', 0, 0.00, 0.00, '2020-02-18 09:32:20', '2020-02-18 09:32:20'),
(2, 4, 1, 16, 500.00, 0.00, '1582039706-8740', 1, 'offline', 0, 0.00, 0.00, '2020-02-18 20:58:26', '2020-02-18 20:58:26'),
(3, 7, 1, NULL, 999.00, 12.49, '1582045888-8469', 0, 'online', 0, 0.00, 0.00, '2020-02-18 22:41:28', '2020-02-18 22:41:28'),
(4, 7, 1, NULL, 999.00, 12.49, '1582046053-6520', 0, 'online', 0, 0.00, 0.00, '2020-02-18 22:44:13', '2020-02-18 22:44:13'),
(5, 7, 1, NULL, 999.00, 12.49, '1582046077-5558', 0, 'online', 0, 0.00, 0.00, '2020-02-18 22:44:37', '2020-02-18 22:44:37'),
(6, 8, 1, 17, 999.00, 0.00, '1582046512-7145', 1, 'offline', 0, 0.00, 0.00, '2020-02-18 22:51:52', '2020-02-18 22:51:52'),
(7, 9, 1, NULL, 999.00, 12.49, '1582046586-5944', 0, 'online', 0, 0.00, 0.00, '2020-02-18 22:53:06', '2020-02-18 22:53:06'),
(8, 9, 514, NULL, 999.00, 12.49, '1582046821-7619', 0, 'online', 0, 0.00, 0.00, '2020-02-18 22:57:01', '2020-02-18 22:57:01'),
(9, 3, 1, 10, 750.00, 0.00, '1582076880-2070', 1, 'offline', 0, 0.00, 0.00, '2020-02-19 07:18:00', '2020-02-19 07:18:00'),
(10, 11, 1, NULL, 999.00, 12.49, '1582083254-6302', 0, 'online', 0, 0.00, 0.00, '2020-02-19 09:04:14', '2020-02-19 09:04:14'),
(11, 4, 1, 18, 500.00, 0.00, '1582106952-2764', 1, 'offline', 0, 0.00, 0.00, '2020-02-19 15:39:12', '2020-02-19 15:39:12'),
(12, 12, 1, NULL, 1998.00, 24.98, '1582122144-6972', 0, 'online', 0, 0.00, 0.00, '2020-02-19 19:52:24', '2020-02-19 19:52:24'),
(13, 13, 514, NULL, 8800.00, 110.00, '1582122264-6795', 0, 'online', 0, 0.00, 0.00, '2020-02-19 19:54:24', '2020-02-19 19:54:24'),
(14, 14, 1, NULL, 999.00, 12.49, '1582122951-8281', 0, 'online', 0, 0.00, 0.00, '2020-02-19 20:05:51', '2020-02-19 20:05:51'),
(15, 15, 1, 21, 1300.00, 0.00, '1582135809-9873', 1, 'offline', 0, 0.00, 0.00, '2020-02-19 23:40:09', '2020-02-19 23:40:09'),
(16, 3, 1, 23, 750.00, 0.00, '1582335542-4245', 1, 'offline', 0, 0.00, 0.00, '2020-02-22 07:09:02', '2020-02-22 07:09:02'),
(17, 16, 1, 24, 1000.00, 0.00, '1582393869-8068', 1, 'offline', 0, 0.00, 0.00, '2020-02-22 23:21:09', '2020-02-22 23:21:09'),
(18, 17, 1, 25, 750.00, 0.00, '1582395011-9907', 1, 'offline', 0, 0.00, 0.00, '2020-02-22 23:40:11', '2020-02-22 23:40:11'),
(19, 18, 1, 26, 1600.00, 0.00, '1582457687-5397', 1, 'offline', 0, 0.00, 0.00, '2020-02-23 17:04:47', '2020-02-23 17:04:47'),
(20, 19, 1, 27, 1200.00, 0.00, '1582612596-9431', 1, 'offline', 0, 0.00, 0.00, '2020-02-25 12:06:36', '2020-02-25 12:06:36'),
(21, 3, 1, 33, 750.00, 0.00, '1582687896-9918', 1, 'offline', 0, 0.00, 0.00, '2020-02-26 09:01:36', '2020-02-26 09:01:36'),
(22, 19, 1, 34, 1000.00, 0.00, '1582688580-3547', 1, 'offline', 0, 0.00, 0.00, '2020-02-26 09:13:00', '2020-02-26 09:13:00'),
(23, 19, 1, 34, 200.00, 0.00, '1582698405-2286', 1, 'offline', 0, 0.00, 0.00, '2020-02-26 11:56:45', '2020-02-26 11:56:45'),
(24, 21, 1, 35, 1100.00, 0.00, '1582740767-8885', 1, 'offline', 0, 0.00, 0.00, '2020-02-26 23:42:47', '2020-02-26 23:42:47'),
(25, 22, 1, 36, 1300.00, 0.00, '1582770405-4740', 1, 'offline', 0, 0.00, 0.00, '2020-02-27 07:56:45', '2020-02-27 07:56:45'),
(26, 23, 1, 37, 1300.00, 0.00, '1582787961-1916', 1, 'offline', 0, 0.00, 0.00, '2020-02-27 12:49:21', '2020-02-27 12:49:21'),
(29, 24, 1, 39, 700.00, 0.00, '1582952840-4240', 1, 'offline', 0, 0.00, 0.00, '2020-02-29 10:37:20', '2020-02-29 10:37:20'),
(30, 24, 1, 40, 450.00, 0.00, '1582953016-5337', 1, 'offline', 0, 0.00, 0.00, '2020-02-29 10:40:16', '2020-02-29 10:40:16'),
(31, 25, 1, 41, 999.00, 0.00, '1582975678-1622', 1, 'offline', 0, 0.00, 0.00, '2020-02-29 16:57:58', '2020-02-29 16:57:58'),
(32, 25, 1, 41, 300.00, 0.00, '1582978754-5552', 1, 'offline', 0, 0.00, 0.00, '2020-02-29 17:49:14', '2020-02-29 17:49:14'),
(33, 4, 1, 49, 500.00, 0.00, '1583164122-4525', 1, 'offline', 0, 0.00, 0.00, '2020-03-02 21:18:42', '2020-03-02 21:18:42'),
(34, 28, 1, 50, 900.00, 0.00, '1583164493-5813', 1, 'offline', 0, 0.00, 0.00, '2020-03-02 21:24:53', '2020-03-02 21:24:53'),
(35, 28, 1, 50, 200.00, 0.00, '1583296486-9689', 1, 'offline', 0, 0.00, 0.00, '2020-03-04 10:04:46', '2020-03-04 10:04:46'),
(36, 4, 1, 49, 200.00, 0.00, '1583296508-9908', 1, 'offline', 0, 0.00, 0.00, '2020-03-04 10:05:09', '2020-03-04 10:05:09'),
(37, 29, 1, 53, 500.00, 0.00, '1583326525-6683', 1, 'offline', 0, 0.00, 0.00, '2020-03-04 18:25:25', '2020-03-04 18:25:25'),
(38, 30, 1, 54, 800.00, 0.00, '1583416223-9763', 1, 'offline', 0, 0.00, 0.00, '2020-03-05 19:20:23', '2020-03-05 19:20:23'),
(39, 29, 1, 55, 500.00, 0.00, '1583432922-2289', 1, 'offline', 0, 0.00, 0.00, '2020-03-05 23:58:42', '2020-03-05 23:58:42'),
(40, 3, 1, 56, 750.00, 0.00, '1583552109-6543', 1, 'offline', 0, 0.00, 0.00, '2020-03-07 09:05:09', '2020-03-07 09:05:09'),
(41, 29, 1, 57, 600.00, 0.00, '1583555851-3009', 1, 'offline', 0, 0.00, 0.00, '2020-03-07 10:07:31', '2020-03-07 10:07:31'),
(42, 31, 1, 58, 800.00, 0.00, '1583562015-9239', 1, 'offline', 0, 0.00, 0.00, '2020-03-07 11:50:15', '2020-03-07 11:50:15'),
(43, 32, 2, 59, 750.00, 0.00, '1583570032-3945', 1, 'offline', 0, 0.00, 0.00, '2020-03-07 14:03:52', '2020-03-07 14:03:52'),
(44, 32, 2, 60, 750.00, 0.00, '1583570112-1766', 1, 'offline', 0, 0.00, 0.00, '2020-03-07 14:05:12', '2020-03-07 14:05:12'),
(45, 32, 2, 61, 750.00, 0.00, '1583570608-9568', 1, 'offline', 0, 0.00, 0.00, '2020-03-07 14:13:28', '2020-03-07 14:13:28'),
(46, 32, 2, 62, 750.00, 0.00, '1583570676-7619', 1, 'offline', 0, 0.00, 0.00, '2020-03-07 14:14:36', '2020-03-07 14:14:36'),
(47, 32, 2, 63, 750.00, 0.00, '1583570749-1832', 1, 'offline', 0, 0.00, 0.00, '2020-03-07 14:15:49', '2020-03-07 14:15:49'),
(48, 32, 2, 64, 750.00, 0.00, '1583570815-9104', 1, 'offline', 0, 0.00, 0.00, '2020-03-07 14:16:55', '2020-03-07 14:16:55'),
(49, 32, 2, 65, 750.00, 0.00, '1583570878-5366', 1, 'offline', 0, 0.00, 0.00, '2020-03-07 14:17:58', '2020-03-07 14:17:58'),
(50, 32, 2, 66, 750.00, 0.00, '1583570985-1722', 1, 'offline', 0, 0.00, 0.00, '2020-03-07 14:19:45', '2020-03-07 14:19:45'),
(51, 34, 1, 68, 1500.00, 0.00, '1583631466-9844', 1, 'offline', 0, 0.00, 0.00, '2020-03-08 07:07:46', '2020-03-08 07:07:46'),
(52, 33, 1, 67, 950.00, 0.00, '1583631985-2038', 1, 'offline', 0, 0.00, 0.00, '2020-03-08 07:16:25', '2020-03-08 07:16:25'),
(53, 42, 1, 76, 999.00, 0.00, '1583683611-6164', 1, 'offline', 0, 0.00, 0.00, '2020-03-08 21:36:51', '2020-03-08 21:36:51'),
(54, 43, 1, 77, 650.00, 0.00, '1583719732-5674', 1, 'offline', 0, 0.00, 0.00, '2020-03-09 07:38:52', '2020-03-09 07:38:52'),
(55, 44, 1, 78, 500.00, 0.00, '1583759321-7826', 1, 'offline', 0, 0.00, 0.00, '2020-03-09 18:38:41', '2020-03-09 18:38:41'),
(56, 4, 1, 79, 700.00, 0.00, '1583763570-5498', 1, 'offline', 0, 0.00, 0.00, '2020-03-09 19:49:30', '2020-03-09 19:49:30'),
(57, 45, 1, 80, 1500.00, 0.00, '1583806184-8546', 1, 'offline', 0, 0.00, 0.00, '2020-03-10 07:39:44', '2020-03-10 07:39:44'),
(58, 46, 1, 81, 1500.00, 0.00, '1583806209-4909', 1, 'offline', 0, 0.00, 0.00, '2020-03-10 07:40:09', '2020-03-10 07:40:09'),
(59, 47, 1, 82, 600.00, 0.00, '1583806232-9908', 1, 'offline', 0, 0.00, 0.00, '2020-03-10 07:40:32', '2020-03-10 07:40:32'),
(60, 48, 1, 83, 500.00, 0.00, '1583823665-5579', 1, 'offline', 0, 0.00, 0.00, '2020-03-10 12:31:05', '2020-03-10 12:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `hit` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `title`, `image`, `thumb`, `details`, `status`, `hit`, `created_at`, `updated_at`) VALUES
(2, 1, 'Sri Mookambika Temple Kollur', 'post_1582697343.jpg', 'post_thumb1582697343.jpg', 'As per the ancient Scriptures and inscriptions,along with other proofs found in the locality,it is clear that kollur Mookambika Temple has been a abode of Devi Shakthis worship for centuries.In an ancient Inscription found here,the source of the shakthi has been described.Shree Mookambika Devi in the form of Linga Adishakthi,the creator and protector of all forms of life.<span style=\"font-size: 1rem;\">Many of the local Kings have given lots of donations to this Temple.Prominent among them are the kings of the Keladi Dynasty.They have been offering a variety of worships to the Goddess.Prominent Kings of the keladi Dynasty,Sankanna Nayaka and Shivappa Nayaka had renovated the temple and gave donations for the maintainence of the temple.The kings of the keladi Nayak Dynasty had belived that the Goddess is the symbol of victory.As such whenever they would win a war or drive away thier enemies they were devoting the victory and celebrating.</span><div><div><br></div><div><br></div></div>', 1, 14, '2020-02-26 11:39:03', '2020-03-05 17:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `regular_prices`
--

CREATE TABLE `regular_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `day_1` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_1_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `day_2` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_2_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `day_3` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_3_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `day_4` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_4_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `day_5` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_5_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `day_6` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_6_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `day_7` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_7_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regular_prices`
--

INSERT INTO `regular_prices` (`id`, `room_type_id`, `day_1`, `day_1_amount`, `day_2`, `day_2_amount`, `day_3`, `day_3_amount`, `day_4`, `day_4_amount`, `day_5`, `day_5_amount`, `day_6`, `day_6_amount`, `day_7`, `day_7_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'ADD', 0.00, 'ADD', 0.00, 'ADD', 0.00, 'ADD', 0.00, 'ADD', 0.00, 'ADD', 0.00, 'ADD', 0.00, '2019-04-13 04:02:51', '2020-02-18 10:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online` tinyint(1) DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(10) UNSIGNED NOT NULL,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `adults` int(11) NOT NULL DEFAULT 1,
  `kids` int(11) NOT NULL DEFAULT 0,
  `extra_bed` int(11) NOT NULL DEFAULT 0,
  `extra_bed_charge` float NOT NULL DEFAULT 0,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `number_of_room` int(11) NOT NULL DEFAULT 1,
  `status` enum('PENDING','CANCEL','SUCCESS','ONLINE_PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `uid`, `online`, `date`, `user_id`, `room_type_id`, `adults`, `kids`, `extra_bed`, `extra_bed_charge`, `check_in`, `check_out`, `number_of_room`, `status`, `created_at`, `updated_at`) VALUES
(1, '8332-1581990982', 0, '2020-02-18 03:25:29', 1, 1, 2, 0, 0, 0, '2020-02-18', '2020-02-21', 1, 'CANCEL', '2020-02-18 07:26:22', '2020-02-18 08:55:29'),
(2, '8212-1581991255', 0, '2020-02-18 03:25:21', 1, 1, 2, 0, 0, 0, '2020-02-22', '2020-02-26', 1, 'CANCEL', '2020-02-18 07:30:55', '2020-02-18 08:55:21'),
(3, '1927-1581996393', 0, '2020-02-18 03:26:50', 1, 1, 1, 0, 0, 0, '2020-02-18', '2020-02-18', 1, 'CANCEL', '2020-02-18 08:56:33', '2020-02-18 08:56:50'),
(4, '6595-1581998837', 0, '2020-02-18 04:07:36', 1, 1, 1, 0, 0, 0, '2020-02-18', '2020-02-19', 1, 'CANCEL', '2020-02-18 09:37:17', '2020-02-18 09:37:36'),
(5, '3781-1581999395', 0, '2020-02-18 04:16:49', 2, 1, 2, 0, 0, 0, '2020-02-18', '2020-02-18', 1, 'CANCEL', '2020-02-18 09:46:35', '2020-02-18 09:46:49'),
(6, '1943-1581999879', 0, '2020-02-18 04:46:36', 2, 1, 2, 0, 0, 0, '2020-02-18', '2020-02-18', 1, 'CANCEL', '2020-02-18 09:54:39', '2020-02-18 10:16:36'),
(7, '2275-1582002179', 0, '2020-02-18 05:03:09', 2, 1, 1, 0, 0, 0, '2020-02-18', '2020-02-18', 1, 'CANCEL', '2020-02-18 10:32:59', '2020-02-18 10:33:09'),
(8, '6415-1582002726', 0, '2020-02-18 05:12:35', 2, 1, 1, 0, 0, 0, '2020-02-18', '2020-02-18', 1, 'CANCEL', '2020-02-18 10:42:06', '2020-02-18 10:42:35'),
(9, '7606-1582010289', 0, '2020-02-18 09:50:06', 3, 1, 1, 0, 0, 0, '2020-02-18', '2020-02-18', 1, 'CANCEL', '2020-02-18 12:48:09', '2020-02-18 15:20:06'),
(10, '4958-1582019788', 0, '2020-02-18 13:46:16', 3, 3, 1, 0, 0, 0, '2020-02-18', '2020-02-18', 1, 'SUCCESS', '2020-02-18 15:26:28', '2020-02-18 19:16:16'),
(11, '6830-1582034351', 0, '2020-02-18 14:01:29', 1, 3, 1, 0, 0, 0, '2020-02-18', '2020-02-21', 1, 'CANCEL', '2020-02-18 19:29:11', '2020-02-18 19:31:29'),
(12, '6140-1582035750', 0, '2020-02-18 14:22:51', 2, 1, 1, 0, 0, 0, '2020-02-18', '2020-02-18', 1, 'CANCEL', '2020-02-18 19:52:30', '2020-02-18 19:52:51'),
(13, '9488-1582038060', 0, '2020-02-18 16:16:45', 1, 1, 1, 0, 0, 0, '2020-02-18', '2020-02-21', 1, 'CANCEL', '2020-02-18 20:31:00', '2020-02-18 21:46:45'),
(14, '5265-1582038319', 0, '2020-02-18 15:12:51', 1, 1, 1, 0, 0, 0, '2020-02-18', '2020-02-21', 1, 'CANCEL', '2020-02-18 20:35:19', '2020-02-18 20:42:51'),
(15, '6989-1582038699', 0, '2020-02-18 15:12:42', 1, 1, 1, 0, 0, 0, '2020-02-27', '2020-02-29', 1, 'CANCEL', '2020-02-18 20:41:39', '2020-02-18 20:42:42'),
(16, '5870-1582039670', 0, '2020-02-18 20:57:50', 4, 1, 1, 0, 0, 0, '2020-02-18', '2020-02-18', 1, 'SUCCESS', '2020-02-18 20:57:50', '2020-02-18 20:57:50'),
(17, '9443-1582046485', 0, '2020-02-18 22:51:25', 8, 1, 1, 0, 0, 0, '2020-02-18', '2020-02-18', 1, 'SUCCESS', '2020-02-18 22:51:25', '2020-02-18 22:51:25'),
(18, '5806-1582106930', 0, '2020-02-19 15:38:50', 4, 1, 1, 0, 0, 0, '2020-02-19', '2020-02-19', 1, 'SUCCESS', '2020-02-19 15:38:50', '2020-02-19 15:38:50'),
(19, '1808-1582122077', 0, '2020-02-19 14:22:00', 1, 1, 2, 0, 0, 0, '2020-02-19', '2020-02-22', 1, 'CANCEL', '2020-02-19 19:51:17', '2020-02-19 19:52:00'),
(20, '5957-1582122372', 0, '2020-02-19 14:34:35', 2, 1, 1, 0, 0, 0, '2020-02-19', '2020-02-20', 1, 'CANCEL', '2020-02-19 19:56:12', '2020-02-19 20:04:35'),
(21, '5614-1582135795', 0, '2020-02-19 23:39:55', 15, 3, 2, 0, 0, 0, '2020-02-19', '2020-02-19', 1, 'SUCCESS', '2020-02-19 23:39:55', '2020-02-19 23:39:55'),
(22, '6295-1582294338', 0, '2020-02-21 14:17:41', 1, 1, 1, 0, 0, 0, '2020-02-21', '2020-02-25', 1, 'CANCEL', '2020-02-21 19:42:18', '2020-02-21 19:47:41'),
(23, '6993-1582294558', 0, '2020-02-21 19:45:58', 3, 3, 1, 0, 0, 0, '2020-02-21', '2020-02-22', 1, 'SUCCESS', '2020-02-21 19:45:58', '2020-02-21 19:45:58'),
(24, '3906-1582393851', 0, '2020-02-22 23:20:51', 16, 3, 2, 0, 0, 0, '2020-02-22', '2020-02-23', 1, 'SUCCESS', '2020-02-22 23:20:51', '2020-02-22 23:20:51'),
(25, '5320-1582395004', 0, '2020-02-22 23:40:04', 17, 2, 2, 0, 0, 0, '2020-02-22', '2020-02-23', 1, 'SUCCESS', '2020-02-22 23:40:04', '2020-02-22 23:40:04'),
(26, '8080-1582457675', 0, '2020-02-23 17:04:35', 18, 4, 2, 2, 0, 0, '2020-02-23', '2020-02-24', 1, 'SUCCESS', '2020-02-23 17:04:35', '2020-02-23 17:04:35'),
(27, '2711-1582612577', 0, '2020-02-25 12:06:17', 19, 2, 1, 0, 0, 0, '2020-02-25', '2020-02-26', 1, 'SUCCESS', '2020-02-25 12:06:17', '2020-02-25 12:06:17'),
(28, '8990-1582620721', 0, '2020-02-25 08:53:34', 20, 1, 1, 0, 0, 0, '2020-06-07', '2020-06-08', 1, 'PENDING', '2020-02-25 14:22:01', '2020-02-25 14:23:34'),
(29, '9991-1582620879', 0, '2020-02-25 08:54:43', 20, 1, 2, 0, 0, 0, '2020-06-07', '2020-06-08', 1, 'PENDING', '2020-02-25 14:24:39', '2020-02-25 14:24:43'),
(30, '6358-1582621038', 0, '2020-02-25 08:57:22', 20, 2, 2, 0, 0, 0, '2020-06-07', '2020-06-08', 1, 'PENDING', '2020-02-25 14:27:18', '2020-02-25 14:27:22'),
(31, '9596-1582621266', 0, '2020-02-25 09:01:10', 20, 2, 2, 0, 0, 0, '2020-06-07', '2020-06-08', 1, 'PENDING', '2020-02-25 14:31:06', '2020-02-25 14:31:10'),
(32, '7405-1582621473', 0, '2020-02-25 09:04:39', 20, 3, 2, 0, 0, 0, '2020-06-07', '2020-06-08', 1, 'PENDING', '2020-02-25 14:34:33', '2020-02-25 14:34:39'),
(33, '8739-1582635662', 0, '2020-02-25 18:31:02', 3, 3, 1, 0, 0, 0, '2020-02-25', '2020-02-26', 1, 'SUCCESS', '2020-02-25 18:31:02', '2020-02-25 18:31:02'),
(34, '2631-1582688570', 0, '2020-02-26 06:23:38', 19, 2, 1, 0, 0, 0, '2020-02-26', '2020-02-27', 1, 'SUCCESS', '2020-02-26 09:12:50', '2020-02-26 11:53:38'),
(35, '8270-1582740758', 0, '2020-02-26 23:42:38', 21, 3, 2, 0, 0, 0, '2020-02-26', '2020-02-27', 1, 'SUCCESS', '2020-02-26 23:42:38', '2020-02-26 23:42:38'),
(36, '6328-1582740989', 0, '2020-02-26 23:46:29', 22, 3, 2, 0, 0, 0, '2020-02-26', '2020-02-27', 1, 'SUCCESS', '2020-02-26 23:46:29', '2020-02-26 23:46:29'),
(37, '2828-1582787951', 0, '2020-02-27 12:49:11', 23, 3, 1, 0, 0, 0, '2020-02-27', '2020-02-28', 1, 'SUCCESS', '2020-02-27 12:49:11', '2020-02-27 12:49:11'),
(38, '2109-1582823622', 0, '2020-02-29 04:44:54', 24, 3, 2, 0, 0, 0, '2020-02-27', '2020-02-28', 1, 'CANCEL', '2020-02-27 22:43:42', '2020-02-29 10:14:54'),
(39, '9442-1582952823', 0, '2020-02-29 10:37:03', 24, 2, 2, 0, 0, 0, '2020-02-29', '2020-03-01', 1, 'SUCCESS', '2020-02-29 10:37:03', '2020-02-29 10:37:03'),
(40, '5245-1582952995', 0, '2020-02-29 10:39:55', 24, 1, 2, 0, 0, 0, '2020-02-29', '2020-03-01', 1, 'SUCCESS', '2020-02-29 10:39:55', '2020-02-29 10:39:55'),
(41, '5775-1582975659', 0, '2020-02-29 16:57:39', 25, 1, 2, 0, 0, 0, '2020-02-29', '2020-03-01', 1, 'SUCCESS', '2020-02-29 16:57:39', '2020-02-29 16:57:39'),
(42, '7840-1583127136', 0, '2020-03-02 05:40:57', 26, 2, 3, 0, 0, 0, '2020-04-17', '2020-04-19', 1, 'CANCEL', '2020-03-02 11:02:16', '2020-03-02 11:10:57'),
(43, '2244-1583127287', 0, '2020-03-02 05:40:50', 26, 2, 3, 0, 0, 0, '2020-04-17', '2020-04-19', 1, 'CANCEL', '2020-03-02 11:04:47', '2020-03-02 11:10:50'),
(44, '6814-1583127393', 0, '2020-03-02 05:36:36', 26, 1, 2, 0, 0, 0, '2020-04-17', '2020-04-19', 1, 'PENDING', '2020-03-02 11:06:33', '2020-03-02 11:06:36'),
(45, '8733-1583127694', 0, '2020-03-02 05:42:54', 26, 2, 3, 0, 0, 0, '2020-04-17', '2020-04-19', 1, 'CANCEL', '2020-03-02 11:11:34', '2020-03-02 11:12:54'),
(46, '5651-1583127805', 0, '2020-03-02 05:43:29', 26, 2, 3, 0, 0, 0, '2020-04-17', '2020-04-19', 1, 'PENDING', '2020-03-02 11:13:25', '2020-03-02 11:13:29'),
(47, '6457-1583127864', 0, '2020-03-02 05:44:29', 26, 2, 3, 0, 0, 0, '2020-04-17', '2020-04-19', 1, 'PENDING', '2020-03-02 11:14:24', '2020-03-02 11:14:29'),
(48, '7965-1583128081', 0, '2020-03-06 03:02:17', 27, 1, 1, 0, 0, 0, '2020-03-06', '2020-03-08', 1, 'CANCEL', '2020-03-02 11:18:01', '2020-03-06 08:32:17'),
(49, '5802-1583164111', 0, '2020-03-02 21:18:31', 4, 1, 1, 0, 0, 0, '2020-03-02', '2020-03-03', 1, 'SUCCESS', '2020-03-02 21:18:31', '2020-03-02 21:18:31'),
(50, '7975-1583164477', 0, '2020-03-02 21:24:37', 28, 2, 2, 0, 0, 0, '2020-03-02', '2020-03-03', 1, 'SUCCESS', '2020-03-02 21:24:37', '2020-03-02 21:24:37'),
(51, '3080-1583166451', 0, '2020-03-02 16:27:43', 1, 1, 1, 0, 0, 0, '2020-03-02', '2020-03-03', 1, 'CANCEL', '2020-03-02 21:57:31', '2020-03-02 21:57:43'),
(52, '2964-1583166713', 0, '2020-03-02 16:32:35', 1, 1, 1, 0, 0, 0, '2020-03-02', '2020-03-04', 1, 'CANCEL', '2020-03-02 22:01:53', '2020-03-02 22:02:35'),
(53, '6066-1583326459', 0, '2020-03-04 18:24:19', 29, 1, 1, 0, 0, 0, '2020-03-04', '2020-03-05', 1, 'SUCCESS', '2020-03-04 18:24:19', '2020-03-04 18:24:19'),
(54, '2042-1583379545', 0, '2020-03-05 09:09:05', 30, 3, 1, 0, 0, 0, '2020-03-05', '2020-03-06', 1, 'SUCCESS', '2020-03-05 09:09:05', '2020-03-05 09:09:05'),
(55, '9536-1583432913', 0, '2020-03-05 23:58:33', 29, 1, 1, 0, 0, 0, '2020-03-05', '2020-03-06', 1, 'SUCCESS', '2020-03-05 23:58:33', '2020-03-05 23:58:33'),
(56, '3353-1583503600', 0, '2020-03-06 19:36:40', 3, 3, 1, 0, 0, 0, '2020-03-06', '2020-03-07', 1, 'SUCCESS', '2020-03-06 19:36:40', '2020-03-06 19:36:40'),
(57, '9741-1583555741', 0, '2020-03-07 10:05:41', 29, 1, 1, 0, 0, 0, '2020-03-07', '2020-03-08', 1, 'SUCCESS', '2020-03-07 10:05:41', '2020-03-07 10:05:41'),
(58, '1374-1583562006', 0, '2020-03-07 11:50:06', 31, 2, 1, 0, 0, 0, '2020-03-07', '2020-03-08', 1, 'SUCCESS', '2020-03-07 11:50:06', '2020-03-07 11:50:06'),
(59, '3343-1583569958', 0, '2020-03-07 14:02:38', 32, 4, 4, 2, 0, 0, '2020-04-25', '2020-04-26', 1, 'SUCCESS', '2020-03-07 14:02:38', '2020-03-07 14:02:38'),
(60, '3039-1583570099', 0, '2020-03-07 14:04:59', 32, 4, 4, 2, 0, 0, '2020-04-25', '2020-04-26', 1, 'SUCCESS', '2020-03-07 14:04:59', '2020-03-07 14:04:59'),
(61, '4922-1583570598', 0, '2020-03-07 14:13:18', 32, 3, 2, 0, 0, 0, '2020-04-25', '2020-04-26', 1, 'SUCCESS', '2020-03-07 14:13:18', '2020-03-07 14:13:18'),
(62, '1596-1583570667', 0, '2020-03-07 14:14:27', 32, 3, 2, 0, 0, 0, '2020-04-25', '2020-04-26', 1, 'SUCCESS', '2020-03-07 14:14:27', '2020-03-07 14:14:27'),
(63, '3149-1583570740', 0, '2020-03-07 14:15:40', 32, 2, 2, 0, 0, 0, '2020-04-25', '2020-04-26', 1, 'SUCCESS', '2020-03-07 14:15:40', '2020-03-07 14:15:40'),
(64, '5645-1583570807', 0, '2020-03-07 14:16:47', 32, 2, 2, 0, 0, 0, '2020-04-25', '2020-04-26', 1, 'SUCCESS', '2020-03-07 14:16:47', '2020-03-07 14:16:47'),
(65, '3687-1583570869', 0, '2020-03-07 14:17:49', 32, 2, 2, 0, 0, 0, '2020-04-25', '2020-04-26', 1, 'SUCCESS', '2020-03-07 14:17:49', '2020-03-07 14:17:49'),
(66, '5957-1583570977', 0, '2020-03-07 14:19:37', 32, 2, 2, 0, 0, 0, '2020-04-25', '2020-04-26', 1, 'SUCCESS', '2020-03-07 14:19:37', '2020-03-07 14:19:37'),
(67, '1491-1583598360', 0, '2020-03-07 21:56:00', 33, 3, 2, 0, 0, 0, '2020-03-07', '2020-03-08', 1, 'SUCCESS', '2020-03-07 21:56:00', '2020-03-07 21:56:00'),
(68, '6737-1583631457', 0, '2020-03-08 07:07:37', 34, 4, 4, 0, 0, 0, '2020-03-08', '2020-03-09', 1, 'SUCCESS', '2020-03-08 07:07:37', '2020-03-08 07:07:37'),
(69, '2043-1583647317', 0, '2020-03-08 06:02:16', 2, 1, 2, 0, 0, 0, '2020-03-17', '2020-03-18', 1, 'CANCEL', '2020-03-08 11:31:57', '2020-03-08 11:32:16'),
(70, '1230-1583647652', 0, '2020-03-08 06:07:40', 1, 1, 1, 0, 0, 0, '2020-03-08', '2020-03-10', 1, 'CANCEL', '2020-03-08 11:37:32', '2020-03-08 11:37:40'),
(71, '1755-1583647865', 0, '2020-03-08 06:11:53', 1, 2, 1, 0, 0, 0, '2020-03-08', '2020-03-09', 1, 'CANCEL', '2020-03-08 11:41:05', '2020-03-08 11:41:53'),
(72, '2011-1583648666', 0, '2020-03-08 06:24:32', 2, 1, 1, 0, 0, 0, '2020-03-08', '2020-03-09', 1, 'CANCEL', '2020-03-08 11:54:26', '2020-03-08 11:54:32'),
(73, '4537-1583649149', 0, '2020-03-08 06:32:53', 1, 1, 1, 0, 0, 0, '2020-03-08', '2020-03-10', 1, 'CANCEL', '2020-03-08 12:02:29', '2020-03-08 12:02:53'),
(74, '5121-1583650310', 0, '2020-03-08 06:51:56', 1, 1, 1, 0, 0, 0, '2020-03-08', '2020-03-11', 1, 'CANCEL', '2020-03-08 12:21:50', '2020-03-08 12:21:56'),
(75, '4468-1583680436', 0, '2020-03-08 15:14:05', 1, 1, 1, 0, 0, 0, '2020-03-09', '2020-03-10', 1, 'CANCEL', '2020-03-08 20:43:56', '2020-03-08 20:44:05'),
(76, '5524-1583683600', 0, '2020-03-08 21:36:40', 42, 3, 2, 0, 0, 0, '2020-03-08', '2020-03-09', 1, 'SUCCESS', '2020-03-08 21:36:40', '2020-03-08 21:36:40'),
(77, '1333-1583719722', 0, '2020-03-09 07:38:42', 43, 1, 2, 0, 0, 0, '2020-03-09', '2020-03-10', 1, 'SUCCESS', '2020-03-09 07:38:42', '2020-03-09 07:38:42'),
(78, '8244-1583759304', 0, '2020-03-09 18:38:24', 44, 1, 1, 0, 0, 0, '2020-03-09', '2020-03-10', 1, 'SUCCESS', '2020-03-09 18:38:24', '2020-03-09 18:38:24'),
(79, '4911-1583763559', 0, '2020-03-09 19:49:19', 4, 1, 1, 0, 0, 0, '2020-03-09', '2020-03-10', 1, 'SUCCESS', '2020-03-09 19:49:19', '2020-03-09 19:49:19'),
(80, '1623-1583772656', 0, '2020-03-09 22:20:56', 45, 4, 4, 0, 0, 0, '2020-03-09', '2020-03-10', 1, 'SUCCESS', '2020-03-09 22:20:56', '2020-03-09 22:20:56'),
(81, '8560-1583772700', 0, '2020-03-09 22:21:40', 46, 4, 6, 0, 0, 0, '2020-03-09', '2020-03-10', 2, 'SUCCESS', '2020-03-09 22:21:40', '2020-03-09 22:21:40'),
(82, '1965-1583772784', 0, '2020-03-09 22:23:04', 47, 1, 1, 0, 0, 0, '2020-03-09', '2020-03-10', 1, 'SUCCESS', '2020-03-09 22:23:04', '2020-03-09 22:23:04'),
(83, '4461-1583823645', 0, '2020-03-10 12:30:45', 48, 1, 2, 0, 0, 0, '2020-03-10', '2020-03-11', 1, 'SUCCESS', '2020-03-10 12:30:45', '2020-03-10 12:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_nights`
--

CREATE TABLE `reservation_nights` (
  `id` int(10) UNSIGNED NOT NULL,
  `reservation_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `price` double(18,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation_nights`
--

INSERT INTO `reservation_nights` (`id`, `reservation_id`, `room_id`, `date`, `check_in`, `check_out`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-02-18', '2020-02-18 13:30:00', '2020-02-19 12:00:00', 10.00, '2020-02-18 07:26:22', '2020-02-18 07:26:22'),
(2, 1, 1, '2020-02-19', '2020-02-19 13:30:00', '2020-02-20 12:00:00', 10.00, '2020-02-18 07:26:22', '2020-02-18 07:26:22'),
(3, 1, 1, '2020-02-20', '2020-02-20 13:30:00', '2020-02-21 12:00:00', 10.00, '2020-02-18 07:26:22', '2020-02-18 07:26:22'),
(4, 1, 1, '2020-02-21', '2020-02-21 13:30:00', '2020-02-22 12:00:00', 10.00, '2020-02-18 07:26:22', '2020-02-18 07:26:22'),
(5, 2, 1, '2020-02-22', '2020-02-22 13:30:00', '2020-02-23 12:00:00', 10.00, '2020-02-18 07:30:55', '2020-02-18 07:30:55'),
(6, 2, 1, '2020-02-23', '2020-02-23 13:30:00', '2020-02-24 12:00:00', -10.00, '2020-02-18 07:30:55', '2020-02-18 07:30:55'),
(7, 2, 1, '2020-02-24', '2020-02-24 13:30:00', '2020-02-25 12:00:00', 10.00, '2020-02-18 07:30:55', '2020-02-18 07:30:55'),
(8, 2, 1, '2020-02-25', '2020-02-25 13:30:00', '2020-02-26 12:00:00', 10.00, '2020-02-18 07:30:55', '2020-02-18 07:30:55'),
(9, 2, 1, '2020-02-26', '2020-02-26 13:30:00', '2020-02-27 12:00:00', 10.00, '2020-02-18 07:30:55', '2020-02-18 07:30:55'),
(10, 3, 1, '2020-02-18', '2020-02-18 13:30:00', '2020-02-19 12:00:00', 1009.00, '2020-02-18 08:56:33', '2020-02-18 08:56:33'),
(11, 4, 1, '2020-02-18', '2020-02-18 12:00:00', '2020-02-19 11:00:00', 1009.00, '2020-02-18 09:37:17', '2020-02-18 09:37:17'),
(12, 4, 1, '2020-02-19', '2020-02-19 12:00:00', '2020-02-20 11:00:00', 1009.00, '2020-02-18 09:37:17', '2020-02-18 09:37:17'),
(13, 5, 1, '2020-02-18', '2020-02-18 12:00:00', '2020-02-19 11:00:00', 1009.00, '2020-02-18 09:46:35', '2020-02-18 09:46:35'),
(14, 6, 1, '2020-02-18', '2020-02-18 12:00:00', '2020-02-19 11:00:00', 999.00, '2020-02-18 09:54:39', '2020-02-18 09:54:39'),
(15, 7, 1, '2020-02-18', '2020-02-18 12:00:00', '2020-02-19 11:00:00', 999.00, '2020-02-18 10:32:59', '2020-02-18 10:32:59'),
(16, 8, 1, '2020-02-18', '2020-02-18 12:00:00', '2020-02-19 11:00:00', 999.00, '2020-02-18 10:42:06', '2020-02-18 10:42:06'),
(18, 10, 10, '2020-02-18', '2020-02-18 12:00:00', '2020-02-19 11:00:00', 1300.00, '2020-02-18 15:26:28', '2020-02-18 15:26:28'),
(19, 11, 9, '2020-02-18', '2020-02-18 12:00:00', '2020-02-19 11:00:00', 1300.00, '2020-02-18 19:29:11', '2020-02-18 19:29:11'),
(20, 11, 9, '2020-02-19', '2020-02-19 12:00:00', '2020-02-20 11:00:00', 1300.00, '2020-02-18 19:29:11', '2020-02-18 19:29:11'),
(21, 11, 9, '2020-02-20', '2020-02-20 12:00:00', '2020-02-21 11:00:00', 1300.00, '2020-02-18 19:29:11', '2020-02-18 19:29:11'),
(22, 11, 9, '2020-02-21', '2020-02-21 12:00:00', '2020-02-22 11:00:00', 1300.00, '2020-02-18 19:29:11', '2020-02-18 19:29:11'),
(23, 12, 1, '2020-02-18', '2020-02-18 12:00:00', '2020-02-19 11:00:00', 999.00, '2020-02-18 19:52:30', '2020-02-18 19:52:30'),
(24, 13, 1, '2020-02-18', '2020-02-18 12:00:00', '2020-02-19 11:00:00', 999.00, '2020-02-18 20:31:00', '2020-02-18 20:31:00'),
(25, 13, 1, '2020-02-19', '2020-02-19 12:00:00', '2020-02-20 11:00:00', 999.00, '2020-02-18 20:31:00', '2020-02-18 20:31:00'),
(26, 13, 1, '2020-02-20', '2020-02-20 12:00:00', '2020-02-21 11:00:00', 999.00, '2020-02-18 20:31:00', '2020-02-18 20:31:00'),
(27, 13, 1, '2020-02-21', '2020-02-21 12:00:00', '2020-02-22 11:00:00', 999.00, '2020-02-18 20:31:00', '2020-02-18 20:31:00'),
(28, 14, 2, '2020-02-18', '2020-02-18 12:00:00', '2020-02-19 11:00:00', 999.00, '2020-02-18 20:35:19', '2020-02-18 20:35:19'),
(29, 14, 2, '2020-02-19', '2020-02-19 12:00:00', '2020-02-20 11:00:00', 999.00, '2020-02-18 20:35:19', '2020-02-18 20:35:19'),
(30, 14, 2, '2020-02-20', '2020-02-20 12:00:00', '2020-02-21 11:00:00', 999.00, '2020-02-18 20:35:19', '2020-02-18 20:35:19'),
(31, 14, 2, '2020-02-21', '2020-02-21 12:00:00', '2020-02-22 11:00:00', 999.00, '2020-02-18 20:35:19', '2020-02-18 20:35:19'),
(32, 15, 1, '2020-02-27', '2020-02-27 12:00:00', '2020-02-28 11:00:00', 999.00, '2020-02-18 20:41:39', '2020-02-18 20:41:39'),
(33, 15, 1, '2020-02-28', '2020-02-28 12:00:00', '2020-02-29 11:00:00', 999.00, '2020-02-18 20:41:39', '2020-02-18 20:41:39'),
(34, 15, 1, '2020-02-29', '2020-02-29 12:00:00', '2020-03-01 11:00:00', 999.00, '2020-02-18 20:41:39', '2020-02-18 20:41:39'),
(35, 16, 2, '2020-02-18', '2020-02-18 12:00:00', '2020-02-19 11:00:00', 999.00, '2020-02-18 20:57:50', '2020-02-18 20:57:50'),
(36, 17, 1, '2020-02-18', '2020-02-18 12:00:00', '2020-02-19 11:00:00', 999.00, '2020-02-18 22:51:25', '2020-02-18 22:51:25'),
(37, 18, 2, '2020-02-19', '2020-02-19 12:00:00', '2020-02-20 11:00:00', 999.00, '2020-02-19 15:38:50', '2020-02-19 15:38:50'),
(38, 19, 1, '2020-02-19', '2020-02-19 12:00:00', '2020-02-20 11:00:00', 999.00, '2020-02-19 19:51:17', '2020-02-19 19:51:17'),
(39, 19, 1, '2020-02-20', '2020-02-20 12:00:00', '2020-02-21 11:00:00', 999.00, '2020-02-19 19:51:17', '2020-02-19 19:51:17'),
(40, 19, 1, '2020-02-21', '2020-02-21 12:00:00', '2020-02-22 11:00:00', 999.00, '2020-02-19 19:51:17', '2020-02-19 19:51:17'),
(41, 19, 1, '2020-02-22', '2020-02-22 12:00:00', '2020-02-23 11:00:00', 999.00, '2020-02-19 19:51:17', '2020-02-19 19:51:17'),
(42, 20, 1, '2020-02-19', '2020-02-19 12:00:00', '2020-02-20 11:00:00', 999.00, '2020-02-19 19:56:12', '2020-02-19 19:56:12'),
(43, 20, 1, '2020-02-20', '2020-02-20 12:00:00', '2020-02-21 11:00:00', 999.00, '2020-02-19 19:56:12', '2020-02-19 19:56:12'),
(44, 21, 12, '2020-02-19', '2020-02-19 12:00:00', '2020-02-20 11:00:00', 1300.00, '2020-02-19 23:39:55', '2020-02-19 23:39:55'),
(45, 22, 1, '2020-02-21', '2020-02-21 12:00:00', '2020-02-22 11:00:00', 999.00, '2020-02-21 19:42:18', '2020-02-21 19:42:18'),
(46, 22, 1, '2020-02-22', '2020-02-22 12:00:00', '2020-02-23 11:00:00', 999.00, '2020-02-21 19:42:18', '2020-02-21 19:42:18'),
(47, 22, 1, '2020-02-23', '2020-02-23 12:00:00', '2020-02-24 11:00:00', 999.00, '2020-02-21 19:42:18', '2020-02-21 19:42:18'),
(48, 22, 1, '2020-02-24', '2020-02-24 12:00:00', '2020-02-25 11:00:00', 999.00, '2020-02-21 19:42:18', '2020-02-21 19:42:18'),
(49, 23, 10, '2020-02-21', '2020-02-21 12:00:00', '2020-02-22 11:00:00', 1300.00, '2020-02-21 19:45:58', '2020-02-21 19:45:58'),
(50, 24, 9, '2020-02-22', '2020-02-22 12:00:00', '2020-02-23 11:00:00', 1300.00, '2020-02-22 23:20:51', '2020-02-22 23:20:51'),
(51, 25, 5, '2020-02-22', '2020-02-22 12:00:00', '2020-02-23 11:00:00', 1100.00, '2020-02-22 23:40:04', '2020-02-22 23:40:04'),
(52, 26, 18, '2020-02-23', '2020-02-23 12:00:00', '2020-02-24 11:00:00', 2000.00, '2020-02-23 17:04:35', '2020-02-23 17:04:35'),
(53, 27, 5, '2020-02-25', '2020-02-25 12:00:00', '2020-02-26 11:00:00', 1200.00, '2020-02-25 12:06:17', '2020-02-25 12:06:17'),
(54, 28, 1, '2020-06-07', '2020-06-07 12:00:00', '2020-06-08 11:00:00', 999.00, '2020-02-25 14:22:01', '2020-02-25 14:22:01'),
(55, 29, 2, '2020-06-07', '2020-06-07 12:00:00', '2020-06-08 11:00:00', 999.00, '2020-02-25 14:24:39', '2020-02-25 14:24:39'),
(56, 30, 5, '2020-06-07', '2020-06-07 12:00:00', '2020-06-08 11:00:00', 1200.00, '2020-02-25 14:27:18', '2020-02-25 14:27:18'),
(57, 31, 6, '2020-06-07', '2020-06-07 12:00:00', '2020-06-08 11:00:00', 1200.00, '2020-02-25 14:31:06', '2020-02-25 14:31:06'),
(58, 32, 9, '2020-06-07', '2020-06-07 12:00:00', '2020-06-08 11:00:00', 1300.00, '2020-02-25 14:34:33', '2020-02-25 14:34:33'),
(59, 33, 10, '2020-02-25', '2020-02-25 12:00:00', '2020-02-26 11:00:00', 1300.00, '2020-02-25 18:31:02', '2020-02-25 18:31:02'),
(60, 34, 5, '2020-02-26', '2020-02-26 12:00:00', '2020-02-27 11:00:00', 1200.00, '2020-02-26 09:12:50', '2020-02-26 09:12:50'),
(61, 35, 10, '2020-02-26', '2020-02-26 12:00:00', '2020-02-27 11:00:00', 1300.00, '2020-02-26 23:42:38', '2020-02-26 23:42:38'),
(62, 36, 9, '2020-02-26', '2020-02-26 12:00:00', '2020-02-27 11:00:00', 1300.00, '2020-02-26 23:46:29', '2020-02-26 23:46:29'),
(63, 37, 17, '2020-02-27', '2020-02-27 12:00:00', '2020-02-28 11:00:00', 1300.00, '2020-02-27 12:49:11', '2020-02-27 12:49:11'),
(65, 39, 5, '2020-02-29', '2020-02-29 12:00:00', '2020-03-01 11:00:00', 1200.00, '2020-02-29 10:37:03', '2020-02-29 10:37:03'),
(66, 40, 1, '2020-02-29', '2020-02-29 12:00:00', '2020-03-01 11:00:00', 999.00, '2020-02-29 10:39:55', '2020-02-29 10:39:55'),
(67, 41, 2, '2020-02-29', '2020-02-29 12:00:00', '2020-03-01 11:00:00', 999.00, '2020-02-29 16:57:39', '2020-02-29 16:57:39'),
(68, 42, 5, '2020-04-17', '2020-04-17 12:00:00', '2020-04-18 11:00:00', 1200.00, '2020-03-02 11:02:16', '2020-03-02 11:02:16'),
(69, 42, 5, '2020-04-18', '2020-04-18 12:00:00', '2020-04-19 11:00:00', 1200.00, '2020-03-02 11:02:16', '2020-03-02 11:02:16'),
(70, 43, 6, '2020-04-17', '2020-04-17 12:00:00', '2020-04-18 11:00:00', 1200.00, '2020-03-02 11:04:47', '2020-03-02 11:04:47'),
(71, 43, 6, '2020-04-18', '2020-04-18 12:00:00', '2020-04-19 11:00:00', 1200.00, '2020-03-02 11:04:47', '2020-03-02 11:04:47'),
(72, 44, 1, '2020-04-17', '2020-04-17 12:00:00', '2020-04-18 11:00:00', 999.00, '2020-03-02 11:06:33', '2020-03-02 11:06:33'),
(73, 44, 1, '2020-04-18', '2020-04-18 12:00:00', '2020-04-19 11:00:00', 999.00, '2020-03-02 11:06:33', '2020-03-02 11:06:33'),
(74, 45, 5, '2020-04-17', '2020-04-17 12:00:00', '2020-04-18 11:00:00', 1200.00, '2020-03-02 11:11:34', '2020-03-02 11:11:34'),
(75, 45, 5, '2020-04-18', '2020-04-18 12:00:00', '2020-04-19 11:00:00', 1200.00, '2020-03-02 11:11:34', '2020-03-02 11:11:34'),
(76, 46, 5, '2020-04-17', '2020-04-17 12:00:00', '2020-04-18 11:00:00', 1200.00, '2020-03-02 11:13:25', '2020-03-02 11:13:25'),
(77, 46, 5, '2020-04-18', '2020-04-18 12:00:00', '2020-04-19 11:00:00', 1200.00, '2020-03-02 11:13:25', '2020-03-02 11:13:25'),
(78, 47, 6, '2020-04-17', '2020-04-17 12:00:00', '2020-04-18 11:00:00', 1200.00, '2020-03-02 11:14:24', '2020-03-02 11:14:24'),
(79, 47, 6, '2020-04-18', '2020-04-18 12:00:00', '2020-04-19 11:00:00', 1200.00, '2020-03-02 11:14:24', '2020-03-02 11:14:24'),
(80, 48, 1, '2020-03-06', '2020-03-06 12:00:00', '2020-03-07 11:00:00', 999.00, '2020-03-02 11:18:01', '2020-03-02 11:18:01'),
(81, 48, 1, '2020-03-07', '2020-03-07 12:00:00', '2020-03-08 11:00:00', 999.00, '2020-03-02 11:18:01', '2020-03-02 11:18:01'),
(82, 49, 1, '2020-03-02', '2020-03-02 12:00:00', '2020-03-03 11:00:00', 999.00, '2020-03-02 21:18:31', '2020-03-02 21:18:31'),
(83, 50, 6, '2020-03-02', '2020-03-02 12:00:00', '2020-03-03 11:00:00', 1200.00, '2020-03-02 21:24:37', '2020-03-02 21:24:37'),
(84, 51, 2, '2020-03-02', '2020-03-02 12:00:00', '2020-03-03 11:00:00', 999.00, '2020-03-02 21:57:31', '2020-03-02 21:57:31'),
(85, 52, 2, '2020-03-02', '2020-03-02 12:00:00', '2020-03-03 11:00:00', 999.00, '2020-03-02 22:01:53', '2020-03-02 22:01:53'),
(86, 52, 1, '2020-03-03', '2020-03-03 12:00:00', '2020-03-04 11:00:00', 999.00, '2020-03-02 22:01:53', '2020-03-02 22:01:53'),
(87, 53, 1, '2020-03-04', '2020-03-04 12:00:00', '2020-03-05 11:00:00', 999.00, '2020-03-04 18:24:19', '2020-03-04 18:24:19'),
(88, 54, 9, '2020-03-05', '2020-03-05 12:00:00', '2020-03-06 11:00:00', 1300.00, '2020-03-05 09:09:05', '2020-03-05 09:09:05'),
(89, 55, 1, '2020-03-05', '2020-03-05 12:00:00', '2020-03-06 11:00:00', 999.00, '2020-03-05 23:58:33', '2020-03-05 23:58:33'),
(90, 56, 9, '2020-03-06', '2020-03-06 12:00:00', '2020-03-07 11:00:00', 1300.00, '2020-03-06 19:36:40', '2020-03-06 19:36:40'),
(91, 57, 1, '2020-03-07', '2020-03-07 12:00:00', '2020-03-08 11:00:00', 999.00, '2020-03-07 10:05:41', '2020-03-07 10:05:41'),
(92, 58, 5, '2020-03-07', '2020-03-07 12:00:00', '2020-03-08 11:00:00', 1200.00, '2020-03-07 11:50:06', '2020-03-07 11:50:06'),
(93, 59, 18, '2020-04-25', '2020-04-25 12:00:00', '2020-04-26 11:00:00', 2000.00, '2020-03-07 14:02:38', '2020-03-07 14:02:38'),
(94, 60, 19, '2020-04-25', '2020-04-25 12:00:00', '2020-04-26 11:00:00', 2000.00, '2020-03-07 14:04:59', '2020-03-07 14:04:59'),
(95, 61, 13, '2020-04-25', '2020-04-25 12:00:00', '2020-04-26 11:00:00', 1750.00, '2020-03-07 14:13:18', '2020-03-07 14:13:18'),
(96, 62, 14, '2020-04-25', '2020-04-25 12:00:00', '2020-04-26 11:00:00', 1750.00, '2020-03-07 14:14:27', '2020-03-07 14:14:27'),
(97, 63, 6, '2020-04-25', '2020-04-25 12:00:00', '2020-04-26 11:00:00', 1750.00, '2020-03-07 14:15:40', '2020-03-07 14:15:40'),
(98, 64, 7, '2020-04-25', '2020-04-25 12:00:00', '2020-04-26 11:00:00', 1750.00, '2020-03-07 14:16:47', '2020-03-07 14:16:47'),
(99, 65, 8, '2020-04-25', '2020-04-25 12:00:00', '2020-04-26 11:00:00', 1750.00, '2020-03-07 14:17:49', '2020-03-07 14:17:49'),
(100, 66, 20, '2020-04-25', '2020-04-25 12:00:00', '2020-04-26 11:00:00', 1750.00, '2020-03-07 14:19:37', '2020-03-07 14:19:37'),
(101, 67, 10, '2020-03-07', '2020-03-07 12:00:00', '2020-03-08 11:00:00', 1599.00, '2020-03-07 21:56:00', '2020-03-07 21:56:00'),
(102, 68, 18, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 1999.00, '2020-03-08 07:07:37', '2020-03-08 07:07:37'),
(103, 69, 1, '2020-03-17', '2020-03-17 12:00:00', '2020-03-18 11:00:00', 999.00, '2020-03-08 11:31:57', '2020-03-08 11:31:57'),
(104, 69, 2, '2020-03-17', '2020-03-17 12:00:00', '2020-03-18 11:00:00', 999.00, '2020-03-08 11:31:57', '2020-03-08 11:31:57'),
(105, 69, 3, '2020-03-17', '2020-03-17 12:00:00', '2020-03-18 11:00:00', 999.00, '2020-03-08 11:31:57', '2020-03-08 11:31:57'),
(106, 69, 4, '2020-03-17', '2020-03-17 12:00:00', '2020-03-18 11:00:00', 999.00, '2020-03-08 11:31:57', '2020-03-08 11:31:57'),
(107, 70, 1, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 999.00, '2020-03-08 11:37:32', '2020-03-08 11:37:32'),
(108, 70, 2, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 999.00, '2020-03-08 11:37:32', '2020-03-08 11:37:32'),
(109, 70, 3, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 999.00, '2020-03-08 11:37:32', '2020-03-08 11:37:32'),
(110, 70, 1, '2020-03-09', '2020-03-09 12:00:00', '2020-03-10 11:00:00', 999.00, '2020-03-08 11:37:32', '2020-03-08 11:37:32'),
(111, 70, 2, '2020-03-09', '2020-03-09 12:00:00', '2020-03-10 11:00:00', 999.00, '2020-03-08 11:37:32', '2020-03-08 11:37:32'),
(112, 70, 3, '2020-03-09', '2020-03-09 12:00:00', '2020-03-10 11:00:00', 999.00, '2020-03-08 11:37:32', '2020-03-08 11:37:32'),
(113, 71, 5, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 1299.00, '2020-03-08 11:41:05', '2020-03-08 11:41:05'),
(114, 71, 8, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 1299.00, '2020-03-08 11:41:05', '2020-03-08 11:41:05'),
(115, 72, 1, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 999.00, '2020-03-08 11:54:26', '2020-03-08 11:54:26'),
(116, 72, 2, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 999.00, '2020-03-08 11:54:26', '2020-03-08 11:54:26'),
(117, 72, 3, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 999.00, '2020-03-08 11:54:26', '2020-03-08 11:54:26'),
(118, 72, 4, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 999.00, '2020-03-08 11:54:26', '2020-03-08 11:54:26'),
(119, 73, 1, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 999.00, '2020-03-08 12:02:29', '2020-03-08 12:02:29'),
(120, 73, 2, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 999.00, '2020-03-08 12:02:29', '2020-03-08 12:02:29'),
(121, 73, 1, '2020-03-09', '2020-03-09 12:00:00', '2020-03-10 11:00:00', 999.00, '2020-03-08 12:02:29', '2020-03-08 12:02:29'),
(122, 74, 1, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 999.00, '2020-03-08 12:21:50', '2020-03-08 12:21:50'),
(123, 74, 1, '2020-03-09', '2020-03-09 12:00:00', '2020-03-10 11:00:00', 999.00, '2020-03-08 12:21:50', '2020-03-08 12:21:50'),
(125, 75, 1, '2020-03-09', '2020-03-09 12:00:00', '2020-03-10 11:00:00', 999.00, '2020-03-08 20:43:56', '2020-03-08 20:43:56'),
(126, 76, 10, '2020-03-08', '2020-03-08 12:00:00', '2020-03-09 11:00:00', 1599.00, '2020-03-08 21:36:40', '2020-03-08 21:36:40'),
(127, 77, 1, '2020-03-09', '2020-03-09 12:00:00', '2020-03-10 11:00:00', 999.00, '2020-03-09 07:38:42', '2020-03-09 07:38:42'),
(128, 78, 2, '2020-03-09', '2020-03-09 12:00:00', '2020-03-10 11:00:00', 999.00, '2020-03-09 18:38:24', '2020-03-09 18:38:24'),
(129, 79, 3, '2020-03-09', '2020-03-09 12:00:00', '2020-03-10 11:00:00', 999.00, '2020-03-09 19:49:19', '2020-03-09 19:49:19'),
(130, 80, 18, '2020-03-09', '2020-03-09 12:00:00', '2020-03-10 11:00:00', 1999.00, '2020-03-09 22:20:56', '2020-03-09 22:20:56'),
(131, 81, 19, '2020-03-09', '2020-03-09 12:00:00', '2020-03-10 11:00:00', 1999.00, '2020-03-09 22:21:40', '2020-03-09 22:21:40'),
(132, 82, 4, '2020-03-09', '2020-03-09 12:00:00', '2020-03-10 11:00:00', 999.00, '2020-03-09 22:23:04', '2020-03-09 22:23:04'),
(133, 83, 3, '2020-03-10', '2020-03-10 12:00:00', '2020-03-11 11:00:00', 999.00, '2020-03-10 12:30:45', '2020-03-10 12:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_paid_services`
--

CREATE TABLE `reservation_paid_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `reservation_id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `pad_service_id` int(10) UNSIGNED NOT NULL,
  `value` double(18,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `price` double(18,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation_paid_services`
--

INSERT INTO `reservation_paid_services` (`id`, `reservation_id`, `date`, `pad_service_id`, `value`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 30, '2020-02-25', 5, 333.00, 1, 333.00, '2020-02-25 14:29:04', '2020-02-25 14:29:04'),
(2, 31, '2020-02-25', 5, 333.00, 1, 333.00, '2020-02-25 14:31:16', '2020-02-25 14:31:16'),
(3, 32, '2020-02-25', 5, 1118.00, 1, 1118.00, '2020-02-25 14:35:40', '2020-02-25 14:35:40'),
(4, 34, '2020-02-26', 6, 200.00, 1, 200.00, '2020-02-26 11:56:28', '2020-02-26 11:56:28'),
(5, 36, '2020-02-27', 1, 100.00, 1, 100.00, '2020-02-27 07:59:38', '2020-02-27 07:59:38'),
(7, 41, '2020-02-29', 7, 300.00, 1, 300.00, '2020-02-29 17:49:02', '2020-02-29 17:49:02'),
(8, 42, '2020-03-02', 5, 1564.00, 1, 1564.00, '2020-03-02 11:02:48', '2020-03-02 11:02:48'),
(9, 43, '2020-03-02', 5, 1564.00, 1, 1564.00, '2020-03-02 11:04:58', '2020-03-02 11:04:58'),
(10, 43, '2020-03-02', 5, 1181.00, 1, 1181.00, '2020-03-02 11:12:17', '2020-03-02 11:12:17'),
(11, 46, '2020-03-02', 5, 1181.00, 1, 1181.00, '2020-03-02 11:13:43', '2020-03-02 11:13:43'),
(12, 47, '2020-03-02', 5, 1181.00, 1, 1181.00, '2020-03-02 11:14:40', '2020-03-02 11:14:40'),
(13, 48, '2020-03-02', 5, 318.00, 1, 318.00, '2020-03-02 11:19:14', '2020-03-02 11:19:14'),
(14, 49, '2020-03-02', 6, 200.00, 1, 200.00, '2020-03-02 23:58:26', '2020-03-02 23:58:26'),
(15, 50, '2020-03-02', 6, 200.00, 1, 200.00, '2020-03-02 23:58:53', '2020-03-02 23:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_taxes`
--

CREATE TABLE `reservation_taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reservation_id` int(10) UNSIGNED NOT NULL,
  `tax_id` int(10) UNSIGNED NOT NULL,
  `type` enum('PERCENTAGE','FIXED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) NOT NULL DEFAULT 0.00,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `floor_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_type_id`, `floor_id`, `image`, `number`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 104, 1, NULL, '2020-02-18 07:25:55', '2020-02-18 08:51:31'),
(2, 1, 2, NULL, 205, 1, NULL, '2020-02-18 08:51:48', '2020-02-19 15:37:26'),
(3, 1, 2, NULL, 209, 1, NULL, '2020-02-18 08:51:58', '2020-02-18 08:51:58'),
(4, 1, 2, NULL, 211, 1, NULL, '2020-02-18 08:52:07', '2020-02-18 08:52:07'),
(5, 2, 1, NULL, 105, 1, NULL, '2020-02-18 08:52:16', '2020-03-07 18:17:58'),
(6, 2, 2, NULL, 202, 1, NULL, '2020-02-18 08:52:28', '2020-02-18 08:52:28'),
(7, 2, 2, NULL, 204, 1, NULL, '2020-02-18 08:52:43', '2020-02-18 08:52:43'),
(8, 2, 2, NULL, 207, 1, NULL, '2020-02-18 08:52:51', '2020-02-18 08:52:51'),
(9, 3, 1, NULL, 101, 1, NULL, '2020-02-18 08:53:08', '2020-02-29 17:44:48'),
(10, 3, 1, NULL, 102, 1, NULL, '2020-02-18 08:53:23', '2020-03-07 18:18:12'),
(11, 3, 2, NULL, 111, 0, NULL, '2020-02-18 08:53:32', '2020-02-18 15:34:43'),
(12, 3, 1, NULL, 106, 1, NULL, '2020-02-18 08:53:41', '2020-02-18 08:53:41'),
(13, 3, 2, NULL, 208, 1, NULL, '2020-02-18 08:53:54', '2020-02-18 08:53:54'),
(14, 3, 2, NULL, 210, 1, NULL, '2020-02-18 08:54:06', '2020-02-18 08:54:06'),
(15, 3, 2, NULL, 212, 1, NULL, '2020-02-18 08:54:17', '2020-02-18 08:54:17'),
(16, 3, 2, NULL, 214, 1, NULL, '2020-02-18 08:54:26', '2020-02-18 08:54:26'),
(17, 3, 2, NULL, 215, 1, NULL, '2020-02-18 08:54:37', '2020-03-07 18:18:40'),
(18, 4, 2, NULL, 201, 1, NULL, '2020-02-18 08:54:55', '2020-02-18 08:54:55'),
(19, 4, 2, NULL, 206, 1, NULL, '2020-02-18 08:55:04', '2020-02-18 08:55:04'),
(20, 2, 2, NULL, 203, 1, NULL, '2020-02-18 09:43:29', '2020-02-18 09:43:29'),
(21, 3, 1, NULL, 103, 1, NULL, '2020-02-18 15:34:56', '2020-02-29 17:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `higher_capacity` int(11) NOT NULL DEFAULT 0,
  `kids_capacity` int(11) NOT NULL DEFAULT 0,
  `base_price` double(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `title`, `slug`, `short_code`, `description`, `short_description`, `higher_capacity`, `kids_capacity`, `base_price`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Superior Room', 'superior-room', 'SR', 'ssdsd', NULL, 2, 2, 999.00, 1, NULL, '2020-02-18 07:25:29', '2020-02-18 08:47:11'),
(2, 'Deluxe Room', 'deluxe-room', 'DR', '<br>', NULL, 3, 2, 1299.00, 1, NULL, '2020-02-18 08:47:55', '2020-03-07 18:16:12'),
(3, 'Standard Deluxe Room', 'standard-deluxe-room', 'SDR', '<br>', NULL, 2, 2, 1599.00, 1, NULL, '2020-02-18 08:48:27', '2020-03-07 18:15:47'),
(4, 'Super Deluxe Room', 'super-deluxe-room', 'SD', '<br>', NULL, 4, 4, 1999.00, 1, NULL, '2020-02-18 08:48:51', '2020-03-07 18:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `room_type_images`
--

CREATE TABLE `room_type_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_type_images`
--

INSERT INTO `room_type_images` (`id`, `image`, `room_type_id`, `featured`, `created_at`, `updated_at`) VALUES
(1, '1582044341_1.jpg', 1, 1, '2020-02-18 22:15:41', '2020-02-18 22:15:41'),
(2, '1582044379_2.jpg', 2, 1, '2020-02-18 22:16:20', '2020-02-18 22:16:20'),
(3, '1582044411_3.jpg', 3, 1, '2020-02-18 22:16:51', '2020-02-18 22:16:51'),
(4, '1582044427_4.jpg', 4, 1, '2020-02-18 22:17:08', '2020-02-18 22:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `room_type_pivot_amenity`
--

CREATE TABLE `room_type_pivot_amenity` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `amenity_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `special_prices`
--

CREATE TABLE `special_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `day_1` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_1_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `day_2` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_2_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `day_3` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_3_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `day_4` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_4_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `day_5` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_5_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `day_6` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_6_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `day_7` enum('ADD','LESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_7_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `special_prices`
--

INSERT INTO `special_prices` (`id`, `room_type_id`, `title`, `start_time`, `end_time`, `day_1`, `day_1_amount`, `day_2`, `day_2_amount`, `day_3`, `day_3_amount`, `day_4`, `day_4_amount`, `day_5`, `day_5_amount`, `day_6`, `day_6_amount`, `day_7`, `day_7_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Consectetur Adipisicing Elit', '2019-04-20 06:42:00', '2019-04-23 06:42:00', 'ADD', 0.00, 'ADD', 0.00, 'ADD', 0.00, 'ADD', 0.00, 'ADD', 0.00, 'ADD', 0.00, 'ADD', 0.00, 0, '2019-04-20 00:43:19', '2019-04-20 00:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `tax_managers`
--

CREATE TABLE `tax_managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('PERCENTAGE','FIXED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PERCENTAGE',
  `rate` double(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `gateway_id`, `amount`, `remarks`, `trx`, `created_at`, `updated_at`) VALUES
(1, '4', '1', '500', 'Payment for room reservation', '1582039706-8740', '2020-02-18 20:58:27', '2020-02-18 20:58:27'),
(2, '8', '1', '999', 'Payment for room reservation', '1582046512-7145', '2020-02-18 22:51:52', '2020-02-18 22:51:52'),
(3, '3', '1', '750', 'Payment for room reservation', '1582076880-2070', '2020-02-19 07:18:00', '2020-02-19 07:18:00'),
(4, '4', '1', '500', 'Payment for room reservation', '1582106952-2764', '2020-02-19 15:39:12', '2020-02-19 15:39:12'),
(5, '15', '1', '1300', 'Payment for room reservation', '1582135809-9873', '2020-02-19 23:40:09', '2020-02-19 23:40:09'),
(6, '3', '1', '750', 'Payment for room reservation', '1582335542-4245', '2020-02-22 07:09:02', '2020-02-22 07:09:02'),
(7, '16', '1', '1000', 'Payment for room reservation', '1582393869-8068', '2020-02-22 23:21:09', '2020-02-22 23:21:09'),
(8, '17', '1', '750', 'Payment for room reservation', '1582395011-9907', '2020-02-22 23:40:11', '2020-02-22 23:40:11'),
(9, '18', '1', '1600', 'Payment for room reservation', '1582457687-5397', '2020-02-23 17:04:47', '2020-02-23 17:04:47'),
(10, '19', '1', '1200', 'Payment for room reservation', '1582612596-9431', '2020-02-25 12:06:36', '2020-02-25 12:06:36'),
(11, '3', '1', '750', 'Payment for room reservation', '1582687896-9918', '2020-02-26 09:01:36', '2020-02-26 09:01:36'),
(12, '19', '1', '1000', 'Payment for room reservation', '1582688580-3547', '2020-02-26 09:13:00', '2020-02-26 09:13:00'),
(13, '19', '1', '200', 'Payment for room reservation', '1582698405-2286', '2020-02-26 11:56:45', '2020-02-26 11:56:45'),
(14, '21', '1', '1100', 'Payment for room reservation', '1582740767-8885', '2020-02-26 23:42:47', '2020-02-26 23:42:47'),
(15, '22', '1', '1300', 'Payment for room reservation', '1582770405-4740', '2020-02-27 07:56:45', '2020-02-27 07:56:45'),
(16, '23', '1', '1300', 'Payment for room reservation', '1582787961-1916', '2020-02-27 12:49:21', '2020-02-27 12:49:21'),
(17, '24', '1', '700', 'Payment for room reservation', '1582823631-7266', '2020-02-27 22:43:51', '2020-02-27 22:43:51'),
(18, '24', '1', '700', 'Payment for room reservation', '1582823632-7405', '2020-02-27 22:43:52', '2020-02-27 22:43:52'),
(19, '24', '1', '700', 'Payment for room reservation', '1582952840-4240', '2020-02-29 10:37:20', '2020-02-29 10:37:20'),
(20, '24', '1', '450', 'Payment for room reservation', '1582953016-5337', '2020-02-29 10:40:16', '2020-02-29 10:40:16'),
(21, '25', '1', '999', 'Payment for room reservation', '1582975678-1622', '2020-02-29 16:57:58', '2020-02-29 16:57:58'),
(22, '25', '1', '300', 'Payment for room reservation', '1582978754-5552', '2020-02-29 17:49:14', '2020-02-29 17:49:14'),
(23, '4', '1', '500', 'Payment for room reservation', '1583164122-4525', '2020-03-02 21:18:42', '2020-03-02 21:18:42'),
(24, '28', '1', '900', 'Payment for room reservation', '1583164493-5813', '2020-03-02 21:24:53', '2020-03-02 21:24:53'),
(25, '28', '1', '200', 'Payment for room reservation', '1583296486-9689', '2020-03-04 10:04:46', '2020-03-04 10:04:46'),
(26, '4', '1', '200', 'Payment for room reservation', '1583296508-9908', '2020-03-04 10:05:09', '2020-03-04 10:05:09'),
(27, '29', '1', '500', 'Payment for room reservation', '1583326525-6683', '2020-03-04 18:25:25', '2020-03-04 18:25:25'),
(28, '30', '1', '800', 'Payment for room reservation', '1583416223-9763', '2020-03-05 19:20:23', '2020-03-05 19:20:23'),
(29, '29', '1', '500', 'Payment for room reservation', '1583432922-2289', '2020-03-05 23:58:42', '2020-03-05 23:58:42'),
(30, '3', '1', '750', 'Payment for room reservation', '1583552109-6543', '2020-03-07 09:05:09', '2020-03-07 09:05:09'),
(31, '29', '1', '600', 'Payment for room reservation', '1583555851-3009', '2020-03-07 10:07:31', '2020-03-07 10:07:31'),
(32, '31', '1', '800', 'Payment for room reservation', '1583562015-9239', '2020-03-07 11:50:15', '2020-03-07 11:50:15'),
(33, '32', '2', '750', 'Payment for room reservation', '1583570032-3945', '2020-03-07 14:03:52', '2020-03-07 14:03:52'),
(34, '32', '2', '750', 'Payment for room reservation', '1583570112-1766', '2020-03-07 14:05:12', '2020-03-07 14:05:12'),
(35, '32', '2', '750', 'Payment for room reservation', '1583570608-9568', '2020-03-07 14:13:28', '2020-03-07 14:13:28'),
(36, '32', '2', '750', 'Payment for room reservation', '1583570676-7619', '2020-03-07 14:14:36', '2020-03-07 14:14:36'),
(37, '32', '2', '750', 'Payment for room reservation', '1583570749-1832', '2020-03-07 14:15:49', '2020-03-07 14:15:49'),
(38, '32', '2', '750', 'Payment for room reservation', '1583570815-9104', '2020-03-07 14:16:55', '2020-03-07 14:16:55'),
(39, '32', '2', '750', 'Payment for room reservation', '1583570878-5366', '2020-03-07 14:17:58', '2020-03-07 14:17:58'),
(40, '32', '2', '750', 'Payment for room reservation', '1583570985-1722', '2020-03-07 14:19:45', '2020-03-07 14:19:45'),
(41, '34', '1', '1500', 'Payment for room reservation', '1583631466-9844', '2020-03-08 07:07:46', '2020-03-08 07:07:46'),
(42, '33', '1', '950', 'Payment for room reservation', '1583631985-2038', '2020-03-08 07:16:26', '2020-03-08 07:16:26'),
(43, '42', '1', '999', 'Payment for room reservation', '1583683611-6164', '2020-03-08 21:36:51', '2020-03-08 21:36:51'),
(44, '43', '1', '650', 'Payment for room reservation', '1583719732-5674', '2020-03-09 07:38:52', '2020-03-09 07:38:52'),
(45, '44', '1', '500', 'Payment for room reservation', '1583759321-7826', '2020-03-09 18:38:41', '2020-03-09 18:38:41'),
(46, '4', '1', '700', 'Payment for room reservation', '1583763570-5498', '2020-03-09 19:49:30', '2020-03-09 19:49:30'),
(47, '45', '1', '1500', 'Payment for room reservation', '1583806184-8546', '2020-03-10 07:39:44', '2020-03-10 07:39:44'),
(48, '46', '1', '1500', 'Payment for room reservation', '1583806209-4909', '2020-03-10 07:40:09', '2020-03-10 07:40:09'),
(49, '47', '1', '600', 'Payment for room reservation', '1583806232-9908', '2020-03-10 07:40:32', '2020-03-10 07:40:32'),
(50, '48', '1', '500', 'Payment for room reservation', '1583823665-5579', '2020-03-10 12:31:05', '2020-03-10 12:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` enum('M','F','O') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vip` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_code` tinyint(1) NOT NULL DEFAULT 0,
  `sms_verified` tinyint(1) NOT NULL DEFAULT 0,
  `sms_verified_code` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `first_name`, `last_name`, `phone`, `dob`, `address`, `sex`, `picture`, `password`, `id_type`, `id_number`, `id_card_image`, `remarks`, `vip`, `email_verified`, `email_verified_code`, `sms_verified`, `sms_verified_code`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'vinyas123@icloud.com', 'LIKITH', 'POOJARY', '07975503096', '2020-02-18', 'SHAMA SADANA SHIMANTHUR\r\nPANJINADKA POST', 'M', 'pic_1583639610.png', '$2y$10$frEwmkncvjRnQFvskT39O.UyLdTfnAy/j/1BF6Mn6vYhii0OeCgUa', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-02-18 07:26:04', '2020-03-08 09:23:30'),
(2, 'Wchmbf', 'likith9566.lp@gmail.com', 'vinyas', NULL, '7975503096', '1970-01-01', NULL, 'M', 'pic_1583642018.png', '$2y$10$CJCL0UdkoV/c5WkN4AYQROAGEwwx/zYkITtrT3Ox0RxFAFPOvnhF2', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-02-18 09:32:20', '2020-03-08 10:03:38'),
(3, 'sandesh', 'shaktiautomotive@gmail.com', 'Shakti', 'Automotive', '9513599966', '2020-02-18', 'WARE HOUSE & HEAD OFFICE VEERABHADRESHWARA INDUSTRY, OPP. AUTO COMPLEX, GOPALA, SHIMOGA - 577204.', 'M', 'pic_1582019036.png', '$2y$10$jXvW6GDrjRu4hVK.X/i74Ok1SxT8AKK9Y5AX1T1LJKj1I34zj0mVG', 'VOTER ID', 'JFC1915735', 'id_1582019037.png', NULL, 1, 0, 0, 0, 0, 1, NULL, '2020-02-18 12:47:02', '2020-02-18 15:14:02'),
(4, 'VIKRAm', 'admin@gmail.com', 'Vikram', 'Hegde B', '7349530955', '1987-04-29', 'Ananth Hegde,#15,Hutan Janmane,Sirsi , Hunsekoppa,uttara kannada ,karnataka,581403', 'M', 'pic_1582106772.png', '$2y$10$dIPHzO10bfYxgoHTnCY5gOfn4aR3CZpOc3.xJQJ6IPiiPgiItv1D2', 'AADHAR CARD', '982226763669', 'id_1582106773.jpg', 'BUSINESS', 1, 0, 0, 0, 0, 1, NULL, '2020-02-18 20:55:02', '2020-02-19 15:36:31'),
(5, 'GNFWF4', 'nisha@gmail.com', 'Nisha', NULL, '9987667534', NULL, NULL, 'M', NULL, '$2y$10$xKTOl7.XpAXChWlBYI5Kp.X7xWgQn7KzKIWC02AZtyNySHkfvj7BS', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-02-18 22:27:28', '2020-02-18 22:27:28'),
(6, 'd5O3jc', 'nisha@gmail.com', 'nisha', NULL, '8890809888', NULL, NULL, 'M', NULL, '$2y$10$ctxBHIZ9LHhS8c051Doou.M2J8l.gL6cP6f2qs.Hk8GFa5fCmSsXa', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-02-18 22:32:27', '2020-02-18 22:32:27'),
(7, 'CE8pzs', 'likith9566.lp@gmail.com', 'Vinyas', NULL, '7975503096', NULL, NULL, 'M', NULL, '$2y$10$pSrop66Y/rC.YmmY5q88LOTtuX3JUIsobUeGezrnsafq0YlHm6IRK', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-02-18 22:41:28', '2020-02-18 22:41:28'),
(8, 'GYACHAND', 'admin@gmail.com', 'LALITH KUMAR', 'B', '9844454881', '1977-04-18', '#35,5TH CROSS,3RD BLOCK,NEAR SSM PUBLIC SCHOOL T R NAGAR\r\nBENGALURU ,560029', 'M', 'pic_1582047438.png', '$2y$10$n79HRgHIQHQzvBqtyn1m8ebxPOR8ig2jSkZ/PdjfEV0ryyetvv5su', 'DRIVING LICENCE', 'KA0520130015498', NULL, 'BUSINESS', 0, 0, 0, 0, 0, 1, NULL, '2020-02-18 22:49:51', '2020-02-26 10:30:00'),
(9, 'TjR227', 'test@gmail.com', 'test', NULL, '7975503096', NULL, NULL, 'M', NULL, '$2y$10$OK/JV1FL.zkBtLQLo0CyM.ZQvB1JgVN7OvqTuqeEfoPZ3wgZkgzOq', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-02-18 22:53:06', '2020-02-18 22:53:06'),
(10, '1QO3cV', 'admin@gmail.com', 'salary', NULL, '7349530955', NULL, NULL, 'M', NULL, '$2y$10$pm00yXnW2tF0t1eXYF8bMe/6mVSb5fPA3fstFRugIP/GU6tHqeMv.', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-02-19 07:32:09', '2020-02-19 07:32:09'),
(11, 'UHXZUV', 'teast@gamil.com', 'Test 2', NULL, '6377483787', NULL, NULL, 'M', NULL, '$2y$10$ZmWfscB3N5RoUTdNkgHnYu3AosBhcwVHGuFoJzVF6ZFsdAKHgt272', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-02-19 09:04:14', '2020-02-19 09:04:14'),
(12, 'Mi0TM6', 'tikubucu@newtmail.com', 'James T Buttrey', NULL, '4582312452', NULL, NULL, 'M', NULL, '$2y$10$S7D4c3RoaRMqjKWkayaDEumGfWbbSTrEW3pwQIhhk6KK9oCaL2nuS', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-02-19 19:52:24', '2020-02-19 19:52:24'),
(13, 'evY87i', 'tikubucu@newtmail.com', 'James T Buttrey', NULL, '4582312452', NULL, NULL, 'M', NULL, '$2y$10$Jp5GxDq244pTRAF/xOVt1utUwX06StnEUG5JMOFYt78EY71yZBWd.', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-02-19 19:54:24', '2020-02-19 19:54:24'),
(14, '8NkG4f', 'jhuh@gmail.com', 'jhkuhk', NULL, '6788789897', NULL, NULL, 'M', NULL, '$2y$10$yfD1/SOiyPubjdlhFnVqSuKelrqNtXNlAc7ZDwgNmqdcJ.ncbUnRy', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-02-19 20:05:51', '2020-02-19 20:05:51'),
(15, 'DANIEL', 'admin@gmail.com', 'RENSON', 'DANIEL DSOUZA', '8105519902', '2020-02-19', 'S/O RAPHAEL D SOUZA\r\nD.NO,5-145,.MUINDAJE HOUSE ,KALLIGE POST,BANTWAL TQ,-574219', 'M', 'pic_1582136151.png', '$2y$10$wZpQgRVIHjPImyuL3mEnR.9L9HdSU6f3KZgtJm5fc4rPQTAPCF4aq', 'DRIVING LICENCE', 'KA1920140015988', NULL, 'VISIT', 0, 0, 0, 0, 0, 1, NULL, '2020-02-19 23:38:59', '2020-02-26 10:30:34'),
(16, 'ranjith', 'admin@gmail.com', 'Ranjith', 'Kumar', '7349530955', '1886-06-03', 'Banglore', 'M', 'pic_1582395290.png', '$2y$10$OHKeY4H4prVd3TfYrDba2uAXBb558CoCn2psUOfG0I0OuCjSIRkmu', 'PAN CARD', 'BUYPK1082M', 'id_1582395291.png', 'VISIT', 1, 0, 0, 0, 0, 1, NULL, '2020-02-22 23:17:20', '2020-02-22 23:44:51'),
(17, 'Raghu', 'admin@gmail.com', 'Raghu', 'M', '9620088318', '1985-06-01', 'Mahaliungaiah\r\n#,27, Annurkeri (v) \r\nGundlupet (TQ)\r\nCHAMARAJANAGAR 571111', 'M', 'pic_1582395238.png', '$2y$10$/jCmyxyhO43G/2ynPSlpfOx4iwcP2u37tuLPj6wQFNddpGg4EiP.m', 'DRIVING LICENCE', 'KA01201120008335', 'id_1582395216.png', 'VISIT', 1, 0, 0, 0, 0, 1, NULL, '2020-02-22 23:38:32', '2020-02-22 23:43:59'),
(18, 'sanjeev.murali@gmail.com', 'sanjeev.murali@gmail.com', 'Sanjeev', 'M', '9663516774', '2020-02-23', '#167 2ND BLOCK  DODDABOMMA SANDRA VIDYARANYAPURA POST BANGALORE - 560097', 'M', NULL, '$2y$10$tF6Vi0WHoDhjeRVvPczyV..NG9NKoo755rmNESFnwb7Ar1n1w/mLa', 'DRIVING LICENCE', 'KA04/F/12090/2000', NULL, 'TOURIST', 0, 0, 0, 0, 0, 1, NULL, '2020-02-23 17:02:08', '2020-02-23 17:02:08'),
(19, 'LALU KUMAR', 'lalu1972@rediffmail.com', 'LALU KUMAR', 'CP', '9446663604', '2020-02-25', 'PADMAJAN CHERUMANE CHERIYAZEEKAL P.O. KARUNAGAPALLY, ALAPPAD, KOLLAM, CHERIYAZEEKAL KERALA - 690573', 'M', 'pic_1582613038.png', '$2y$10$21t/EBSeJT5RCH7eTL.XnuCv67xlZF39FdBSsozxis.HSjTa7BVNG', 'AADHAR CARD', '483516415166', 'id_1582612858.png', 'TOURIST', 0, 0, 0, 0, 0, 1, NULL, '2020-02-25 12:02:29', '2020-02-25 12:13:59'),
(20, 'srikanth', 'smohan.743947@guest.booking.com', 'Srikanth', 'Mohandas', '1000000000', '2020-02-25', 'india', 'M', NULL, '$2y$10$s29uQAZ6Hy1YL8zjcQPpOODX5JOw4hsWtfID58HFgObOZ1UuYWGzy', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-02-25 14:11:47', '2020-02-25 14:11:47'),
(21, 'VENKOBA', 'admin@gmail.com', 'VENKOBA', 'A', '9611206002', '1951-03-02', 'S/O MANMATHAPPA,#228,37TH A CROSS ,26 TH MAIN, JAYANAGARA 9TH BLOCK ,BANGLORE SOUTH, KARNATAKA ,560069', 'M', 'pic_1582741670.png', '$2y$10$SX6cTSK3XvzNP8aSwZUlQerf5brG2QndZVzwD.T1nLs5SktF7T12S', 'AADHAR CARD', '434426447627', 'id_1582741670.png', 'PERSONAL', 1, 0, 0, 0, 0, 1, NULL, '2020-02-26 23:37:31', '2020-02-26 23:57:51'),
(22, 'ABDUL KHADER', 'admin@gmail.com', 'ABDUL KHADER', 'K I', '7349530955', '1978-06-01', 'S/O IBRAHIM KP,#3-68A,KUKKILA HOUSE ,VITTLAPADAVU,DAKSHINA kannada 574222', 'M', 'pic_1582741450.png', '$2y$10$aKNJyhHiWtkRDcC8PL6ygO5I6uB6VcmnqZ605/fBF1ljRNl.i8lmi', 'AADHAR CARD', '317590197125', 'id_1582741451.png', 'VISIT', 1, 0, 0, 0, 0, 1, NULL, '2020-02-26 23:40:47', '2020-02-26 23:54:11'),
(23, 'Raghuram Shetty', 'jsuliyanna@gmail.com', 'Jyothi', 'Suliyanna', '9008856967', '2020-02-27', '313, Bellala Village H No 218-313Z. P.H.P.S Mortu Bellala, Kundapura , Udupi 576233', 'F', 'pic_1582787862.png', '$2y$10$Zc2IpWNsghwKPuOpXdgyAeZKljuW4jpbRAHxWYwiBeNGjTxDwHCMS', 'VOTER ID', 'TZU3127164', 'id_1582787862.png', NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-02-27 12:47:43', '2020-02-27 12:47:43'),
(24, 'Manikanta N', 'VINIM2660@GMAIL.COM', 'Manikanta', 'N', '7975796248', '1998-08-01', 'S/O NAGARAJNAYAKA\r\nNAYAKA STREET NAGAVALLI \r\nCHAMARAJANAGAR,KA 571342', 'M', 'pic_1582823804.png', '$2y$10$v8DE.2qPr.31mXXTANEGLeFxDqTYpZOm90REklnRNJXSMpTYylyW6', 'DRIVING LICENCE', 'KA1020190001425', 'id_1582823790.png', 'TOURIST', 1, 0, 0, 0, 0, 1, NULL, '2020-02-27 22:39:50', '2020-02-27 22:46:44'),
(25, 'SIDDARAMAIAH H B', 'siddaramasiddu92@gmail.com', 'SIDDARAMAIAH', 'H B', '9449442497', '1992-11-12', '# 14A HEBBAKA TUMKUR TQ & DIST (MOOKAMBIKA M D S TUMKUR)', 'M', NULL, '$2y$10$zRIoQsgt1Q7toZG7aXiJxe5p8cXVmWqIxynLfq1clqkUXqo3ZnIxm', 'DRIVING LICENCE', 'KA06 20120002418', 'id_1582975517.png', 'TOURIST', 0, 0, 0, 0, 0, 1, NULL, '2020-02-29 16:55:18', '2020-02-29 16:55:18'),
(26, 'Kiran Bhat', 'jshett.327916@guest.booking.com', 'Kiran', 'Bhat', '1000000000', '2020-03-02', 'booking.com', 'M', NULL, '$2y$10$gxKTjj.Jv0wUsEYAjQOivew2UPMTgDNQOHDtnlw2.Eg4/wFtTsC.S', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-03-02 10:55:41', '2020-03-02 10:55:41'),
(27, 'Estefania plans salas', 'esalas.239754@guest.booking.com', 'Estefania', 'Plans salas', '676516753', '2020-03-02', 'spain', 'M', NULL, '$2y$10$ev.HVijanbl5.t5ABYeCgugxz6tCpY8cPzvmAnkDugvxNMzafiH/e', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-03-02 11:17:11', '2020-03-02 11:17:11'),
(28, 'GANAPATHI S BHAT', 'admin@gmail.com', 'GANAPATHI', 'S BHAT', '7349530955', '1978-07-21', 'S/O SUBRAY\r\nNIRWATTI KODLU, NAGARE,HONNAVAR,DIST \r\nKARWAR.', 'M', 'pic_1583164367.png', '$2y$10$KG3YxHUqeCJtn8vnGIPWeOL/40r7H49NI46Q5jo2Ax9h6Vf.SrxD.', 'DRIVING LICENCE', 'KA3020000000239', 'id_1583164328.png', NULL, 1, 0, 0, 0, 0, 1, NULL, '2020-03-02 21:22:09', '2020-03-02 21:22:56'),
(29, 'MANI', 'subramanyamanishetty@gmail.com', 'SUBRAHMANYA', 'NARAYANA SHETTY', '9740938134', '1998-06-07', '#1/85, Heroor Kundapura Tq, Udupi Dist-576224', 'M', NULL, '$2y$10$ijJNUDNT94CDCH9WLgEOi.yWZieiLt5vhxCiH/o.L7MGaQw5Sfm0G', 'VOTER ID', 'TZU4834214', 'id_1583326611.png', 'Business', 0, 0, 0, 0, 0, 1, NULL, '2020-03-04 18:21:11', '2020-03-04 18:26:52'),
(30, 'THAHIR', 'admin@gmail.com', 'THAHIR', 'K', '8197009621', '1979-06-15', 'S/O HASSAN BEARY\r\nNAFISHA MANZIL KODI POST KUNDAPURA\r\n UDUPI 576201', 'M', 'pic_1583419775.png', '$2y$10$emZVL6Sma.QreIW1Hr/e8eMr49v9w09jmeDV6ctr5DWCNFzAZVCHq', 'DRIVING LICENCE', 'KA2020000001332', 'id_1583419777.png', 'VISIT', 1, 0, 0, 0, 0, 1, NULL, '2020-03-05 08:52:00', '2020-03-05 20:19:38'),
(31, 'ABDULSAMAD', 'admin@gmail.com', 'ABDUL', 'SAMAD', '9945655760', '1996-01-25', 'H.NO#7/33, BUDAN SAHEB HOUSE KODI KUNDAPURA UDUPI-576217', 'M', NULL, '$2y$10$ersjKIHuVgPKyoyxf2kK6uezB7zvAGy84TlYfG/u/QTP8/cSJ9snW', 'DRIVING LICENCE', 'KA2020150000370', 'id_1583561659.png', 'BUSINESS', 0, 0, 0, 0, 0, 1, NULL, '2020-03-07 11:42:01', '2020-03-07 11:44:20'),
(32, 'N HARI BALLAL', 'hassan@hoysalavillageresort.com', 'N HARI', 'BALLAL', '9900130188', '1962-03-15', '3/263, ANUSHA KODI ROAD, HANGALOOR, KUNDAPURA TQ UDUPI-576217', 'M', NULL, '$2y$10$nl5Ce4s8tceNXzxHYweO4Oie1UdnT5wqCUZ4TgqF9fO4y8IDBY0eq', 'AADHAR CARD', '577362784187', 'id_1583569009.png', 'FOR ENGAGEMENT PARTY IN KUNDAPURA \r\n(OPRATION MANAGER OF HOYSALA VILLAGE RESORT, HASSAN)', 1, 0, 0, 0, 0, 1, NULL, '2020-03-07 13:42:32', '2020-03-07 13:46:50'),
(33, 'sagar', 'admin@gmail.com', 'Sagar', 'samith v', '8884090895', '1993-06-06', 'vidyadhara n\r\n#23 4th main 8th cross rp c  layout\r\nbengaluru\r\n5600401', 'M', NULL, '$2y$10$mAH1Bd/u8.WGvZ60CEl10u6THTkgrb7BtrhJqOf3rJDQnnurP86gK', 'DRIVING LICENCE', 'KA0220110017182', NULL, 'VISIT', 1, 0, 0, 0, 0, 1, NULL, '2020-03-07 21:53:29', '2020-03-07 21:53:29'),
(34, 'madhukumar', 'admin@gmail.com', 'Madhu kumar', 'k', '961133167', '1995-06-08', '#35,5TH CROSS,3RD BLOCK, T R NAGAR\r\nBENGALURU ,560029', 'M', 'pic_1583636156.png', '$2y$10$hPZJGoarSvm1BVQjpOSleOZS0cslczTDc4hMdj1sYWDP9MJliXyFe', 'AADHAR CARD', '382857258411', 'id_1583686259.jpg', 'visit', 1, 0, 0, 0, 0, 1, NULL, '2020-03-08 07:04:06', '2020-03-08 22:20:59'),
(35, 'admin23', 'alan@alpha-web.net', 'Alan', 'Taylor', '0985 819 0205', '1913-05-23', '2481 Island Avenue', 'M', NULL, '$2y$10$JlUtZEat5ZcJkMV9guZZkuE26H7ypOjAmpffUnptEbCdhh/xNIiUS', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-03-08 10:13:09', '2020-03-08 10:13:09'),
(36, 'admin12452', 'alan123@eroyal.ne', 'Aaron', 'Smith', '2152236000', '2001-03-11', '2527 N 17th St', 'M', NULL, '$2y$10$keptF3Q5qan6EXnT2cobGeXWtY3Bhudfy1NQjt19qyHm5rRzs2Zru', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-03-08 10:47:32', '2020-03-08 10:47:32'),
(37, 'admin865', 'alan@eroyal.net', 'Aaron', 'Smith', '2152236000', '2020-03-08', '2527 N 17th St', 'M', NULL, '$2y$10$PJS2W2Hn1Y0sE6LpbVLbG.ribKP7AuBopHp/ItnEo3HPwwXW8spay', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-03-08 10:56:17', '2020-03-08 10:56:17'),
(38, 'admin454', 'tikubucu@newtmail.com', 'James', 'Buttrey', '4582312452', '2020-03-08', '2851 Island Avenue', 'M', NULL, '$2y$10$70DATAInRjr8xBHzBB3faOkNHZL.4QuD51po7k/povl7GVyctRxPS', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-03-08 11:01:28', '2020-03-08 11:01:28'),
(39, 'admin45254', 'zastoyordu@yevme.com', 'Robert', 'Martin', '5092272871', '2001-02-02', '2481 Island Avenue', 'M', NULL, '$2y$10$QqwPYig5XrXbsLqIKhodTeNMl47o2xjC9orfD0wMAjeZjiuVGa0Gm', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-03-08 11:02:14', '2020-03-08 11:02:14'),
(40, 'admin874', 'zastoyordu@yevme.com', 'Robert', 'Martin', '5092272871', '2020-03-08', '2481 Island Avenue', 'M', NULL, '$2y$10$SLUyfcR3Ng/V.ONXdUbuQuo47347brWff2Br0I6OQQ5P62MvgLtLO', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-03-08 11:08:01', '2020-03-08 11:08:01'),
(41, 'admin44745474', 'alan@eroyal.net', 'Aaron', 'Smith', '2152236000', '2020-03-20', '2527 N 17th St', 'M', NULL, '$2y$10$2B4v353ZrNFKBda2QShNZuK9MP843VuQmeAdRNFP.HuZ.wHKK0cX2', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL, '2020-03-08 11:09:46', '2020-03-08 11:09:46'),
(42, 'HAMZA MOHAMMDI', 'admin@gmail.com', 'HAMZA MOHAMMADI', 'AHMEDABADWALA', '9773557581', '1990-06-05', 'S/O MPOHAMMADI AHMEDABAD WALA,104.NEW JAMALI, CHRACH ROAD, SAIFEE COLONY ,MAROL, ANDHERI, EAST, J B NAGAR,MUMBI MAHARASHTRA \'\r\n400059', 'M', 'pic_1583686307.png', '$2y$10$g5QT5YoFjVawGrG.8eeRsOUd.3H3UaMxOTULfv2VR37l1P.pbyPk6', 'AADHAR CARD', '806088963344', 'id_1583686308.jpg', 'BUSINESS PERPOSE', 1, 0, 0, 0, 0, 1, NULL, '2020-03-08 21:33:36', '2020-03-08 22:21:48'),
(43, 'TOUQEER', 'admin@gmail.com', 'TOUQEER', 'AHMED', '9663599976', '1990-09-12', 'S/O; NASRULLA ,NO17/6\r\n1ST FLOOR ,4TH A CROSS,LALJI LAYOUT LAKKASANDRA ,BANGLORE, SOUTH, ADUGODI, BENGALURU,560030', 'M', 'pic_1583723074.png', '$2y$10$WOMDZeEsA2L4JZGNzvsR..jIViXUkfrTC3Vp.l1qQykN1/kSHillG', 'AADHAR CARD', '343669791346', 'id_1583723088.png', 'VISIT', 1, 0, 0, 0, 0, 1, NULL, '2020-03-09 07:33:48', '2020-03-09 08:34:56'),
(44, 'WHITE HOUSE INN', 'contact@whitehouseinn.in', 'WHITE HOUSE', 'INN', '9148508738', '2020-01-17', 'Veenu Complex Kundpura Main Road, Opp Canara Bank, Kundapura Tq-576201', 'M', NULL, '$2y$10$k3eMmbQwl6SaWb7sl9jTuO6Hms29YIM8EIVAgCvhYtwwPFePpufvy', 'PAN CARD', '.', NULL, 'Food', 0, 0, 0, 0, 0, 1, NULL, '2020-03-09 18:35:51', '2020-03-09 18:35:51'),
(45, 'SANTHOSHA', 'admin@gmail.com', 'SANTHOSHA', 'N', '974053886', '1987-03-17', 'S/O NAGARAJA ,VILLAGE/TOWN/CITY/TAVAREHALLI.DIST, SHIVAMOGA, P.O ,ANADAPURAM 577412', 'M', 'pic_1583773468.png', '$2y$10$qCty93ntaGCSkvEQNsEsRuSVluKpHexhGfuv5axt/aGWa9yra2lp2', 'AADHAR CARD', '691783249734', 'id_1583773468.png', 'FILM SHOOTING', 1, 0, 0, 0, 0, 1, NULL, '2020-03-09 22:14:13', '2020-03-09 22:34:28'),
(46, 'CHANDRASHEKER', 'admin@gmail.com', 'CHANDRASHEKER', 'N', '974053886', '1992-03-02', 'S/O NAGARAJU R\r\nGAJANUR AGRAHARA \r\nSHIVAMOGGA', 'M', 'pic_1583773420.png', '$2y$10$BZy2iMixtmr3ZPvMnbf9uu8PsIJeqk/65wiYGBjdvkytUwFl1nZku', 'DRIVING LICENCE', 'KA1420100007110', 'id_1583773420.png', 'FILM SHOOTING', 1, 0, 0, 0, 0, 1, NULL, '2020-03-09 22:16:24', '2020-03-09 22:33:40'),
(47, 'SATISH', 'admin@gmail.com', 'SATISH', 'DODWAD', '9916901220', '1975-06-17', 'S/O BASAVARAJ\r\nEWS 247/248 ,KHB COLONY ,UDAYAGIRI\r\nSATTUR,DHRWD (C/ WEF 05/12/2017', 'M', 'pic_1583773327.png', '$2y$10$dbdIgeMhNi930bCr/4JRf.CkTh.lXDy.U/89V/lYu3FIx07adRXt2', 'DRIVING LICENCE', 'K2219870008093', 'id_1583773311.png', 'OFFICAL', 1, 0, 0, 0, 0, 1, NULL, '2020-03-09 22:19:44', '2020-03-09 22:32:07'),
(48, 'RAJESH KUMAR B', 'admin@gmail.com', 'RAJESH KUMAR', 'B', '8892449857', '1983-11-05', 'D.NO 3-74, BIRIKAPU HOUSE, MURVA POST, MANILA VILLAGE, BANTWAL TQ-574243', 'M', NULL, '$2y$10$JqeJgospvErrtx7tWqpj4uNZZNlhHqvZt3uMP6ta19CGs9In9vD32', 'DRIVING LICENCE', 'KA19 20140011012', 'id_1583823522.png', 'Intas Pharmaceuticals.', 0, 0, 0, 0, 0, 1, NULL, '2020-03-10 12:25:45', '2020-03-10 12:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `web_counter_sections`
--

CREATE TABLE `web_counter_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_counter_sections`
--

INSERT INTO `web_counter_sections` (`id`, `name`, `number`, `created_at`, `updated_at`) VALUES
(1, 'Total Guest', 180.00, '2019-04-21 04:10:25', '2020-02-18 22:13:58'),
(3, 'Total Staff', 6.00, '2019-04-21 04:13:05', '2020-02-18 22:14:05'),
(4, 'Yearly Guest', 6000.00, '2019-04-21 04:13:23', '2020-02-18 22:14:15'),
(5, 'Client Feedbacks', 154.00, '2019-04-21 04:13:41', '2020-02-18 22:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `web_facilities`
--

CREATE TABLE `web_facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_faqs`
--

CREATE TABLE `web_faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_galleries`
--

CREATE TABLE `web_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('image','url','video') COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_galleries`
--

INSERT INTO `web_galleries` (`id`, `image`, `category_id`, `type`, `link`, `created_at`, `updated_at`) VALUES
(1, 'gallery_1582039664.jpg', 1, 'image', NULL, '2020-02-18 20:57:44', '2020-02-18 20:57:44'),
(2, 'gallery_1582039745.jpg', 1, 'image', NULL, '2020-02-18 20:59:05', '2020-02-18 20:59:05'),
(4, 'gallery_1582039990.jpg', 1, 'image', NULL, '2020-02-18 21:03:10', '2020-02-18 21:03:10'),
(5, 'gallery_1582040026.jpg', 1, 'image', NULL, '2020-02-18 21:03:46', '2020-02-18 21:03:46'),
(6, 'gallery_1582040053.jpg', 1, 'image', NULL, '2020-02-18 21:04:13', '2020-02-18 21:04:13'),
(7, 'gallery_1582040099.jpg', 1, 'image', NULL, '2020-02-18 21:04:59', '2020-02-18 21:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `web_gallery_categories`
--

CREATE TABLE `web_gallery_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_gallery_categories`
--

INSERT INTO `web_gallery_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Rooms', '2020-02-18 20:56:09', '2020-02-18 20:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `web_our_client_feedbacks`
--

CREATE TABLE `web_our_client_feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `feed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_our_teams`
--

CREATE TABLE `web_our_teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_settings`
--

CREATE TABLE `web_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `home_banner_section_title_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_banner_section_title_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_banner_section_title_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_about_section_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_about_section_short_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_about_section_long_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_room_section_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_room_section_title_sub` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_team_section_title_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_team_section_title_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_service_section_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_service_section_sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video_section_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video_section_sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video_section_video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_gallery_section_title_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_gallery_section_title_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_testimonial_section_title_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_testimonial_section_title_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_facility_section_title_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_facility_section_title_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `general_general_section_footer_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `general_general_section_fb_comment_script` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_blog_section_title_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_blog_section_title_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_faq_section_title_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_faq_section_title_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_all_section_title_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_all_section_title_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_all_section_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_all_section_email_web` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_all_section_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_all_section_map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_settings`
--

INSERT INTO `web_settings` (`id`, `home_banner_section_title_1`, `home_banner_section_title_2`, `home_banner_section_title_3`, `home_about_section_title`, `home_about_section_short_details`, `home_about_section_long_details`, `home_room_section_title`, `home_room_section_title_sub`, `home_team_section_title_1`, `home_team_section_title_2`, `home_service_section_title`, `home_service_section_sub_title`, `home_video_section_title`, `home_video_section_sub_title`, `home_video_section_video_link`, `gallery_gallery_section_title_1`, `gallery_gallery_section_title_2`, `home_testimonial_section_title_1`, `home_testimonial_section_title_2`, `home_facility_section_title_1`, `home_facility_section_title_2`, `general_general_section_footer_content`, `general_general_section_fb_comment_script`, `blog_blog_section_title_1`, `blog_blog_section_title_2`, `faq_faq_section_title_1`, `faq_faq_section_title_2`, `contact_all_section_title_1`, `contact_all_section_title_2`, `contact_all_section_phone`, `contact_all_section_email_web`, `contact_all_section_address`, `contact_all_section_map`, `created_at`, `updated_at`) VALUES
(1, 'Best Hotel to Stay', 'Welcome to White House Inn', NULL, 'About White House Inn', 'We are the Budget Hotel located in Kundapura.Going with the concept of providing the best for leisure, family vacations as well as business travelers white house inn has done well in blending the best possible amenities with the most important business facilities. Presenting a cheerful and inviting ambience.', 'We are the Budget Hotel located in Kundapura.Going with the concept of providing the best for leisure, family vacations as well as business travelers white house inn has done well in blending the best possible amenities with the most important business facilities. Presenting a cheerful and inviting ambience.', 'Our Rooms', NULL, 'Our Team', NULL, 'Our Services', NULL, 'Video Tour', NULL, NULL, 'Our Exclusive Photo Gallery', NULL, 'Our Client Feedback', NULL, 'Extra Facilities', NULL, 'Desigend and Developed By VAwebsites&co', '205856110142667', 'Our Latest Announcements', NULL, 'FAQs', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita enim ex harum maxime nesciunt quae saepe ducimus quidem corporis tempora.', 'Get in Touch', NULL, '091485 08738', 'contact@whitehosueinn.in', 'veenu complex, Kundapura Main Rd, opp. canara bank, Kundapura, Karnataka 576201', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7296.948437944558!2d90.41646837312909!3d23.87279724908633!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5c5849459a3%3A0x627da4ef9bc6539a!2sUttar+Khan%2C+Dhaka+1230!5e0!3m2!1sen!2sbd!4v1563098220046!5m2!1sen!2sbd', NULL, '2020-02-26 11:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `web_socials`
--

CREATE TABLE `web_socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `amenities_name_unique` (`name`);

--
-- Indexes for table `applied_coupon_codes`
--
ALTER TABLE `applied_coupon_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applied_coupon_codes_reservation_id_foreign` (`reservation_id`),
  ADD KEY `applied_coupon_codes_coupon_id_foreign` (`coupon_id`),
  ADD KEY `applied_coupon_codes_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_masters`
--
ALTER TABLE `coupon_masters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_masters_code_unique` (`code`);

--
-- Indexes for table `coupon_pivot_include_room_type`
--
ALTER TABLE `coupon_pivot_include_room_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_pivot_include_room_type_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupon_pivot_include_room_type_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `coupon_pivot_paid_service`
--
ALTER TABLE `coupon_pivot_paid_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_pivot_paid_service_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupon_pivot_paid_service_paid_service_id_foreign` (`paid_service_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `floors_name_unique` (`name`),
  ADD UNIQUE KEY `floors_number_unique` (`number`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gateways_main_name_unique` (`main_name`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paid_services`
--
ALTER TABLE `paid_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `paid_services_title_unique` (`title`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regular_prices`
--
ALTER TABLE `regular_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regular_prices_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservations_uid_unique` (`uid`),
  ADD KEY `reservations_user_id_foreign` (`user_id`),
  ADD KEY `reservations_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `reservation_nights`
--
ALTER TABLE `reservation_nights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_nights_reservation_id_foreign` (`reservation_id`),
  ADD KEY `reservation_nights_room_id_foreign` (`room_id`);

--
-- Indexes for table `reservation_paid_services`
--
ALTER TABLE `reservation_paid_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_paid_services_reservation_id_foreign` (`reservation_id`),
  ADD KEY `reservation_paid_services_pad_service_id_foreign` (`pad_service_id`);

--
-- Indexes for table `reservation_taxes`
--
ALTER TABLE `reservation_taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_taxes_reservation_id_foreign` (`reservation_id`),
  ADD KEY `reservation_taxes_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rooms_number_unique` (`number`),
  ADD KEY `rooms_room_type_id_foreign` (`room_type_id`),
  ADD KEY `rooms_floor_id_foreign` (`floor_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_types_title_unique` (`title`),
  ADD UNIQUE KEY `room_types_slug_unique` (`slug`),
  ADD UNIQUE KEY `room_types_short_code_unique` (`short_code`);

--
-- Indexes for table `room_type_images`
--
ALTER TABLE `room_type_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_type_images_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `room_type_pivot_amenity`
--
ALTER TABLE `room_type_pivot_amenity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_type_pivot_amenity_room_type_id_foreign` (`room_type_id`),
  ADD KEY `room_type_pivot_amenity_amenity_id_foreign` (`amenity_id`);

--
-- Indexes for table `special_prices`
--
ALTER TABLE `special_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `special_prices_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `tax_managers`
--
ALTER TABLE `tax_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `web_counter_sections`
--
ALTER TABLE `web_counter_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_facilities`
--
ALTER TABLE `web_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_faqs`
--
ALTER TABLE `web_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_galleries`
--
ALTER TABLE `web_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_gallery_categories`
--
ALTER TABLE `web_gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_our_client_feedbacks`
--
ALTER TABLE `web_our_client_feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_our_teams`
--
ALTER TABLE `web_our_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_settings`
--
ALTER TABLE `web_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_socials`
--
ALTER TABLE `web_socials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applied_coupon_codes`
--
ALTER TABLE `applied_coupon_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_masters`
--
ALTER TABLE `coupon_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_pivot_include_room_type`
--
ALTER TABLE `coupon_pivot_include_room_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupon_pivot_paid_service`
--
ALTER TABLE `coupon_pivot_paid_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `paid_services`
--
ALTER TABLE `paid_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `regular_prices`
--
ALTER TABLE `regular_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `reservation_nights`
--
ALTER TABLE `reservation_nights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `reservation_paid_services`
--
ALTER TABLE `reservation_paid_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reservation_taxes`
--
ALTER TABLE `reservation_taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room_type_images`
--
ALTER TABLE `room_type_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room_type_pivot_amenity`
--
ALTER TABLE `room_type_pivot_amenity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `special_prices`
--
ALTER TABLE `special_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_managers`
--
ALTER TABLE `tax_managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `web_counter_sections`
--
ALTER TABLE `web_counter_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `web_facilities`
--
ALTER TABLE `web_facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_faqs`
--
ALTER TABLE `web_faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_galleries`
--
ALTER TABLE `web_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `web_gallery_categories`
--
ALTER TABLE `web_gallery_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_our_client_feedbacks`
--
ALTER TABLE `web_our_client_feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_our_teams`
--
ALTER TABLE `web_our_teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_settings`
--
ALTER TABLE `web_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_socials`
--
ALTER TABLE `web_socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied_coupon_codes`
--
ALTER TABLE `applied_coupon_codes`
  ADD CONSTRAINT `applied_coupon_codes_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupon_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applied_coupon_codes_reservation_id_foreign` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applied_coupon_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
