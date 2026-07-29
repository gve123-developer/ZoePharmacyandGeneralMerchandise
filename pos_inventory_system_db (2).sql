-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2026 at 03:42 PM
-- Server version: 8.0.43
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_inventory_system_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_name`, `action`, `details`, `created_at`) VALUES
(1, 'Test', 'Delete Product', 'Deleted product: adas', '2026-03-15 17:57:37'),
(2, 'Zoe Owner', 'Add Product', 'Added new product: adas (SKU: ss)', '2026-03-15 17:58:09'),
(3, 'Zoe Owner', 'Delete Product', 'Deleted product: adas', '2026-03-15 17:58:14'),
(4, 'Zoe Owner', 'Add Product', 'Added new product: Bandage (SKU: BND)', '2026-03-15 18:01:38'),
(5, 'Zoe Owner', 'Delete Product', 'Deleted product: Bandage', '2026-03-15 18:02:11'),
(6, 'Zoe Owner', 'Delete Product', 'Deleted product: Paracetamol', '2026-03-15 18:05:22'),
(7, 'Zoe Owner', 'Add Product', 'Added new product: Paracetamol (SKU: MED1)', '2026-03-15 18:07:29'),
(8, 'Zoe Owner', 'Add Product', 'Added new product: Thermometer (SKU: TMM)', '2026-03-15 18:08:23'),
(9, 'Zoe Owner', 'Archive Product', 'Moved product to recycle bin: Thermometer', '2026-03-15 18:15:38'),
(10, 'Zoe Owner', 'Purge Product', 'Permanently deleted from recycle bin: Thermometer', '2026-03-15 18:15:56'),
(11, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???800.00 | Payment: cash | Items: Paracetamol x100', '2026-03-15 18:20:25'),
(12, 'Zoe Owner', 'Archive Product', 'Moved product to recycle bin: Paracetamol', '2026-03-15 18:20:35'),
(13, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-15 18:36:18'),
(14, 'Zoe Owner', 'Add Product', 'Added product: Paracetamol (SKU: med1)', '2026-03-15 18:44:55'),
(15, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???680.00 | Payment: cash | Items: Paracetamol x85', '2026-03-15 18:45:10'),
(16, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???680.00 | Payment: cash | Items: Paracetamol x85', '2026-03-15 18:46:38'),
(17, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???800.00 | Payment: cash | Items: Paracetamol x100', '2026-03-15 18:59:42'),
(18, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-03-15 19:00:45'),
(19, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-15 19:05:42'),
(20, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-03-15 19:08:55'),
(21, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-15 19:09:39'),
(22, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-03-15 19:11:29'),
(23, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-15 19:11:48'),
(24, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-03-15 19:12:28'),
(25, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-15 19:12:45'),
(26, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-03-15 19:14:58'),
(27, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-15 19:15:21'),
(28, 'Zoe Owner', 'Add Product', 'Added product: Bandage (SKU: BND)', '2026-03-15 19:29:44'),
(29, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-15 19:33:02'),
(30, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-03-15 19:33:16'),
(31, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-16 16:21:27'),
(32, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???1544.76 | Payment: cash | Items: Notebook A5 x1, Reusable Shopping Bag x1, Microfiber Cloth x1', '2026-03-16 17:40:03'),
(33, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???560.00 | Payment: cash | Items: Paracetamol x70', '2026-03-16 17:48:37'),
(34, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???132.00 | Payment: cash | Items: Bandage x44', '2026-03-16 18:03:13'),
(35, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???1320.00 | Payment: cash | Items: Bandage x440', '2026-03-16 18:03:50'),
(36, 'Zoe Owner', 'Edit Product', 'Updated product: Adhesive Bandages (ID: 38)', '2026-03-16 18:04:32'),
(37, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???1461.00 | Payment: cash | Items: Bandage x487', '2026-03-16 18:05:23'),
(38, 'Zoe Owner', 'Edit Product', 'Updated product: Toilet Paper 4-Pack (ID: 137)', '2026-03-16 18:06:12'),
(39, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???34580.95 | Payment: cash | Items: Toilet Paper 4-Pack x95', '2026-03-16 18:06:35'),
(40, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???29480.44 | Payment: cash | Items: Melatonin 3mg x28, Magnesium 250mg x80', '2026-03-16 19:03:19'),
(41, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???47276.40 | Payment: cash | Items: Adhesive Bandages x10, Ginkgo Biloba x70', '2026-03-16 19:07:49'),
(42, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???1200.00 | Payment: cash | Items: Bandage x400', '2026-03-16 19:08:21'),
(43, 'Zoe Owner', 'POS Sale', 'Completed sale. Total: ???6348.30 | Payment: cash | Items: Ballpoint Pens 10s x30', '2026-03-16 19:09:10'),
(44, 'Zoe Owner', 'Add Product', 'Added product: Cotton  (SKU: CTTN)', '2026-03-16 19:17:37'),
(45, 'Zoe Owner', 'POS Sale', 'Completed sale #105. Total: ???3744.63 | Items: CoQ10 100mg x23', '2026-03-16 19:19:56'),
(46, 'Zoe Owner', 'Edit Product', 'Updated product: Paracetamol (ID: 10)', '2026-03-16 19:20:44'),
(47, 'Zoe Owner', 'Edit Product', 'Updated product: CoQ10 100mg (ID: 68)', '2026-03-16 19:21:17'),
(48, 'Zoe Owner', 'POS Sale', 'Completed sale #106. Total: ???55215.60 | Items: Ginkgo Biloba x89', '2026-03-16 19:22:27'),
(49, 'Zoe Owner', 'POS Sale', 'Completed sale #107. Total: ???16475.10 | Items: Ginger Root Capsule x30', '2026-03-16 19:23:11'),
(50, 'Zoe Owner', 'POS Sale', 'Completed sale #108. Total: ???3722.40 | Items: Ginkgo Biloba x6', '2026-03-16 19:23:52'),
(51, 'Zoe Owner', 'POS Sale', 'Completed sale #109. Total: ???1647.51 | Items: Ginger Root Capsule x3', '2026-03-16 19:25:00'),
(52, 'Zoe Owner', 'POS Sale', 'Completed sale #110. Total: ???549.17 | Items: Ginger Root Capsule x1', '2026-03-16 19:25:23'),
(53, 'Zoe Owner', 'POS Sale', 'Completed sale #111. Total: ???2990.88 | Items: Metformin 500mg x48', '2026-03-16 19:25:59'),
(54, 'Zoe Owner', 'Edit Product', 'Updated product: Metformin 500mg (ID: 14)', '2026-03-16 19:26:35'),
(55, 'Zoe Owner', 'POS Sale', 'Completed sale #112. Total: ???6106.38 | Items: Metformin 500mg x98', '2026-03-16 19:26:59'),
(56, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-03-17 06:52:32'),
(57, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-17 06:58:13'),
(58, 'Zoe Owner', 'Add Product', 'Added product: Berocca (SKU: BRC)', '2026-03-17 06:59:16'),
(59, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-03-17 07:02:14'),
(60, 'owner', 'Login Failed', 'Failed login attempt for username: \"owner\". Attempt 1 of 5.', '2026-03-17 07:02:55'),
(61, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-17 07:03:09'),
(62, 'Zoe Owner', 'POS Sale', 'Completed sale #113. Total: ???1200.00 | Items: Berocca x2', '2026-03-17 07:03:53'),
(63, 'Zoe Owner', 'POS Sale', 'Completed sale #114. Total: ???600.00 | Items: Berocca x1', '2026-03-17 07:19:38'),
(64, 'Zoe Owner', 'Archive Product', 'Moved to recycle bin: Paracetamol 500mg', '2026-03-17 07:24:55'),
(65, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-03-17 07:30:37'),
(66, 'owner', 'Login Failed', 'Failed login attempt for username: \"owner\". Attempt 1 of 5.', '2026-03-17 07:31:20'),
(67, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-17 07:31:30'),
(68, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-03-17 07:37:14'),
(69, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-20 07:07:22'),
(70, 'Zoe Owner', 'Purge Product', 'Permanently purged: Paracetamol 500mg', '2026-03-20 07:08:19'),
(71, 'admin', 'Login Failed', 'Failed login attempt for username: \"admin\". Attempt 1 of 5.', '2026-03-20 07:08:29'),
(72, 'Zoe Owner', 'Add Product', 'Added product: Vita Plus (SKU: VP1)', '2026-03-20 07:15:37'),
(73, 'Zoe Owner', 'POS Sale', 'Completed sale #115. Total: ???490.00 | Items: Vita Plus x7', '2026-03-20 07:19:26'),
(74, 'Zoe Owner', 'Edit Product', 'Updated product: Paracetamol (ID: 10)', '2026-03-20 07:20:50'),
(75, 'Zoe Owner', 'Edit Product', 'Updated product: Metformin 500mg (ID: 14)', '2026-03-20 07:21:23'),
(76, 'Zoe Owner', 'POS Sale', 'Completed sale #116. Total: ???4605.75 | Items: Amlodipine 5mg x15', '2026-03-20 07:22:34'),
(77, 'Zoe Owner', 'Add Product', 'Added product: Juice (SKU: DRNK1)', '2026-03-20 07:30:05'),
(78, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-03-20 07:39:15'),
(79, 'owner', 'Login Failed', 'Failed login attempt for username: \"owner\". Attempt 1 of 5.', '2026-03-20 07:44:36'),
(80, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-20 07:44:43'),
(81, 'Zoe Owner', 'POS Sale', 'Completed sale #117. Total: ???70.00 | Items: Vita Plus x1', '2026-03-20 07:53:27'),
(82, 'Zoe Owner', 'POS Sale', 'Completed sale #118. Total: ???70.00 | Items: Vita Plus x1', '2026-03-20 08:22:48'),
(83, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-20 08:30:28'),
(84, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-03-20 08:32:19'),
(85, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-03-20 09:24:43'),
(86, 'Zoe Owner', 'POS Sale', 'Completed sale #119. Total: ???62.17 | Items: Potassium 99mg x1', '2026-03-20 10:07:21'),
(87, 'Zoe Owner', 'POS Sale', 'Completed sale #120. Total: ???62.17 | Items: Potassium 99mg x1', '2026-03-20 10:07:34'),
(88, 'Zoe Owner', 'POS Sale', 'Completed sale #121. Total: ???1139.67 | Items: CoQ10 100mg x7', '2026-03-20 10:08:00'),
(89, 'Zoe Owner', 'POS Sale', 'Completed sale #122. Total: ???600.00 | Items: Berocca x1', '2026-03-20 10:10:32'),
(90, 'Zoe Owner', 'POS Sale', 'Completed sale #123. Total: ???600.00 | Items: Berocca x1', '2026-03-20 10:10:33'),
(91, 'Zoe Owner', 'POS Sale', 'Completed sale #124. Total: ???62.17 | Items: Potassium 99mg x1', '2026-03-20 10:13:48'),
(92, 'Zoe Owner', 'POS Sale', 'Completed sale #125. Total: ???600.00 | Items: Berocca x1', '2026-03-20 10:18:21'),
(93, 'Zoe Owner', 'POS Sale', 'Completed sale #126. Total: ???600.00 | Items: Berocca x1', '2026-03-20 10:18:55'),
(94, 'Zoe Owner', 'POS Sale', 'Completed sale #127. Total: ???140.00 | Items: Vita Plus x2', '2026-03-20 10:41:04'),
(95, 'Zoe Owner', 'Edit Product', 'Updated product: Juice (ID: 155)', '2026-03-20 11:27:37'),
(96, 'Zoe Owner', 'Edit Product', 'Updated product: Amoxicillin 500mg (ID: 12)', '2026-03-20 11:35:17'),
(97, 'Zoe Owner', 'Edit Product', 'Updated product: Amoxicillin 500mg (ID: 12)', '2026-03-20 11:35:22'),
(98, 'Zoe Owner', 'Dispose Product', 'Disposed 13 unit(s) of product ID 12 (Expired)', '2026-03-20 11:35:23'),
(99, 'Zoe Owner', 'Edit Product', 'Updated product: AMOXICILLIN Cap 500mg (Benedex) (ID: 48)', '2026-03-20 11:59:26'),
(100, 'Zoe Owner', 'Dispose Product', 'Disposed 100 unit(s) of product ID 48 (Expired)', '2026-03-20 11:59:26'),
(101, 'Zoe Owner', 'Edit Product', 'Updated product: AMOXICILLIN Cap 250mg (Amoxil) (ID: 47)', '2026-03-20 11:59:28'),
(102, 'Zoe Owner', 'Dispose Product', 'Disposed 100 unit(s) of product ID 47 (Expired)', '2026-03-20 11:59:28'),
(103, 'Zoe Owner', 'Edit Product', 'Updated product: AMOXICILLIN Cap 250mg (Amoxil) (ID: 47)', '2026-03-20 11:59:44'),
(104, 'Zoe Owner', 'Edit Product', 'Updated product: AMOXICILLIN Cap 500mg (Benedex) (ID: 48)', '2026-03-20 11:59:49'),
(105, 'Zoe Owner', 'POS Sale', 'Completed sale #128. Total: ???28.00 | Items: BONAMINE Chew Tab.(Adult) 9+1 x1', '2026-03-20 12:00:15'),
(106, 'Zoe Owner', 'Edit Product', 'Updated product: AMOXICILLIN Cap 500mg (Benedex) (ID: 48)', '2026-03-20 12:00:46'),
(107, 'Zoe Owner', 'Dispose Product', 'Disposed 100 unit(s) of product ID 48 (Expired)', '2026-03-20 12:00:46'),
(108, 'Zoe Owner', 'Edit Product', 'Updated product: AMOXICILLIN Cap 250mg (Amoxil) (ID: 47)', '2026-03-20 12:00:49'),
(109, 'Zoe Owner', 'Dispose Product', 'Disposed 100 unit(s) of product ID 47 (Expired)', '2026-03-20 12:00:49'),
(110, 'Zoe Owner', 'Edit Product', 'Updated product: AMOXICILLIN Cap 250mg (Amoxil) (ID: 47)', '2026-03-20 12:02:03'),
(111, 'Zoe Owner', 'Edit Product', 'Updated product: AMOXICILLIN Cap 500mg (Benedex) (ID: 48)', '2026-03-20 12:02:08'),
(112, 'Zoe Owner', 'Edit Product', 'Updated product: AMOXICILLIN Cap 500mg (Benedex) (ID: 48)', '2026-03-20 12:02:26'),
(113, 'Zoe Owner', 'Edit Product', 'Updated product: AMOXICILLIN Cap 250mg (Amoxil) (ID: 47)', '2026-03-20 12:03:13'),
(114, 'Zoe Owner', 'POS Sale', 'Completed sale #129. Total: ???1836.80 | Items: BUSCOPAN Tablet 4\'s x100, BUSCOPAN Plus Tablet x95', '2026-03-20 12:18:01'),
(115, 'Zoe Owner', 'POS Sale', 'Completed sale #130. Total: ???772.80 | Items: BURN Ointment 15g (UH) x1, BONNA 400g x1, BENADRYL AH 50mg Cap 100s x1', '2026-03-20 12:27:41'),
(116, 'Zoe Owner', 'POS Sale', 'Completed sale #131. Total: ???16464.00 | Items: BREZU 5mcg/MI syrup 60mL x98', '2026-03-20 12:28:13'),
(117, 'Zoe Owner', 'POS Sale', 'Completed sale #132. Total: ???156.80 | Items: BRICANYL Expectorant Syrup 60mL x1', '2026-03-20 12:28:45'),
(118, 'Zoe Owner', 'POS Sale', 'Completed sale #133. Total: ???3539.20 | Items: BONNA 400g x10, BIOGESIC Drops (Orange) x1', '2026-03-20 12:29:19'),
(119, 'Zoe Owner', 'POS Sale', 'Completed sale #134. Total: ???13171.20 | Items: BURN Ointment 15g (UH) x98', '2026-03-20 12:29:57'),
(120, 'Zoe Owner', 'POS Sale', 'Completed sale #135. Total: ₱95.20 | Items: BIGEN-D (Chestnut Brown) x1', '2026-07-10 11:33:14'),
(121, 'Zoe Owner', 'Void Transaction', 'Voided #135. Sum: ₱95.20. Restored items: BIGEN-D (Chestnut Brown) x1', '2026-07-10 11:34:13'),
(122, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-07-10 11:34:44'),
(123, 'owner', 'Login Failed', 'Failed login attempt for username: \"owner\". Attempt 1 of 5.', '2026-07-10 11:35:00'),
(124, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-07-10 11:35:05'),
(125, 'Zoe Owner', 'POS Sale', 'Completed sale #136. Total: ₱33.60 | Items: BUSCOPAN Venus Tablet x5', '2026-07-18 02:28:07'),
(126, 'Zoe Owner', 'Void Transaction', 'Voided #136. Sum: ₱33.60. Restored items: BUSCOPAN Venus Tablet x5', '2026-07-18 02:28:51'),
(127, 'Zoe Owner', 'POS Sale', 'Completed sale #137. Total: ₱408.80 | Items: BONAMINE Chew Tab.(Adult) 9+1 x1, BONAKID Pre-School 400g x1', '2026-07-24 12:31:37'),
(128, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-07-28 13:57:26'),
(129, 'ZoeOwner', 'Login Failed', 'Failed login attempt for username: \"ZoeOwner\". Attempt 1 of 5.', '2026-07-28 13:57:39'),
(130, 'ZoeOwner', 'Login Failed', 'Failed login attempt for username: \"ZoeOwner\". Attempt 2 of 5.', '2026-07-28 13:57:47'),
(131, 'Owner', 'Login Failed', 'Failed login attempt for username: \"Owner\". Attempt 3 of 5.', '2026-07-28 13:59:57'),
(132, 'Owner', 'Login Failed', 'Failed login attempt for username: \"Owner\". Attempt 4 of 5.', '2026-07-28 14:00:56'),
(133, 'Owner', 'Login Failed', 'Failed login attempt for username: \"Owner\". Attempt 5 of 5.', '2026-07-28 14:01:01'),
(134, 'Owner', 'Login Failed', 'Failed login attempt for username: \"Owner\". Attempt 1 of 5.', '2026-07-28 14:05:35'),
(135, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-07-28 14:09:36'),
(136, 'owner', 'Login Failed', 'Failed login attempt for username: \"owner\". Attempt 2 of 5.', '2026-07-28 14:15:34'),
(137, 'Owner', 'Login Failed', 'Failed login attempt for username: \"Owner\". Attempt 3 of 5.', '2026-07-28 14:15:41'),
(138, 'Owner', 'Login Failed', 'Failed login attempt for username: \"Owner\". Attempt 4 of 5.', '2026-07-28 14:15:54'),
(139, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-07-28 14:18:18'),
(140, 'Zoe Owner', 'Logout', 'User \"owner\" logged out.', '2026-07-28 14:25:03'),
(141, 'Vincent', 'Login Failed', 'Failed login attempt for username: \"Vincent\". Attempt 1 of 5.', '2026-07-28 14:25:12'),
(142, 'owner', 'Login Failed', 'Failed login attempt for username: \"owner\". Attempt 2 of 5.', '2026-07-28 14:31:52'),
(143, 'owner', 'Login Failed', 'Failed login attempt for username: \"owner\". Attempt 3 of 5.', '2026-07-28 14:31:58'),
(144, 'Owner', 'Login Failed', 'Failed login attempt for username: \"Owner\". Attempt 4 of 5.', '2026-07-28 14:32:08'),
(145, 'owner', 'Login Failed', 'Failed login attempt for username: \"owner\". Attempt 5 of 5.', '2026-07-28 14:32:27'),
(146, 'owner', 'Login Failed', 'Failed login attempt for username: \"owner\". Attempt 1 of 5.', '2026-07-28 14:34:37'),
(147, 'owner', 'Login Failed', 'Failed login attempt for username: \"owner\". Attempt 2 of 5.', '2026-07-28 14:35:00'),
(148, 'admin', 'Login Failed', 'Failed login attempt for username: \"admin\". Attempt 3 of 5.', '2026-07-28 14:35:18'),
(149, 'owner', 'Login Failed', 'Failed login attempt for username: \"owner\". Attempt 4 of 5.', '2026-07-28 14:39:26'),
(150, 'owner', 'Login Failed', 'Failed login attempt for username: \"owner\". Attempt 5 of 5.', '2026-07-28 14:39:52'),
(151, 'Zoe Owner', 'Login', 'User \"owner\" logged in successfully.', '2026-07-28 14:40:41'),
(152, 'Zoe Owner', 'POS Sale', 'Completed sale #138. Total: ₱1075.20 | Items: AUGMENTIN 457mg 70mL x3', '2026-07-28 14:41:17'),
(153, 'Zoe Owner', 'Edit Product', 'Updated product: AMOXICILLIN Cap 250mg (VHELLOX) (ID: 44)', '2026-07-28 14:44:11'),
(154, 'Zoe Owner', 'Inventory Update', 'Updated product: AMOXICILLIN Cap 250mg (VHELLOX) [SKU: SKU-00044] | Base Qty: 100 | New Stock: 100', '2026-07-28 14:44:11'),
(155, 'Zoe Owner', 'POS Sale', 'Completed sale #139. Total: ₱134.40 | Items: BURN Ointment 15g (UH) x1', '2026-07-28 14:47:28'),
(156, 'Zoe Owner', 'POS Sale', 'Completed sale #140. Total: ₱9520.00 | Items: BIGEN-B (Brown Black) x100', '2026-07-28 14:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Pharmaceutical', NULL),
(2, 'Non-pharmaceutical', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deleted_products`
--

CREATE TABLE `deleted_products` (
  `id` int NOT NULL,
  `original_id` int NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` int DEFAULT '0',
  `price` decimal(10,2) DEFAULT '0.00',
  `cost` decimal(10,2) DEFAULT '0.00',
  `reorder_level` int DEFAULT '0',
  `expiry_date` date DEFAULT NULL,
  `deleted_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `error_logs`
--

CREATE TABLE `error_logs` (
  `id` int NOT NULL,
  `source` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'php' COMMENT 'php | javascript',
  `level` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'error' COMMENT 'error | warning | notice | unhandled_rejection',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` int DEFAULT NULL,
  `stack_trace` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` text COLLATE utf8mb4_unicode_ci COMMENT 'JSON blob of any extra context',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `error_logs`
--

INSERT INTO `error_logs` (`id`, `source`, `level`, `message`, `file`, `line`, `stack_trace`, `url`, `user_name`, `extra`, `created_at`) VALUES
(1, 'php', 'warning', 'Undefined variable $this_variable_does_not_exist', 'C:\\Users\\Asus\\Downloads\\Website\\test_error_system.php', 9, '', '/test_error_system.php', '', '', '2026-03-15 18:57:51'),
(2, 'php', 'exception', 'mysqli_sql_exception: Table \'inventory_system.imaginary_table_that_does_not_exist\' doesn\'t exist', 'C:\\Users\\Asus\\Downloads\\Website\\includes\\error_logger.php', 61, '#0 C:\\Users\\Asus\\Downloads\\Website\\includes\\error_logger.php(61): mysqli->query(\'SELECT * FROM i...\')\n#1 C:\\Users\\Asus\\Downloads\\Website\\test_error_system.php(13): db_query(Object(mysqli), \'SELECT * FROM i...\')\n#2 {main}', '/test_error_system.php', '', '', '2026-03-15 18:57:51'),
(3, 'php', 'deprecated', 'number_format(): Passing null to parameter #1 ($num) of type float is deprecated', 'C:\\Users\\Asus\\Downloads\\Website\\reports.php', 180, '#1 C:\\Users\\Asus\\Downloads\\Website\\reports.php(180): number_format()\n', '/reports.php', '', '', '2026-03-15 18:58:32'),
(4, 'php', 'deprecated', 'number_format(): Passing null to parameter #1 ($num) of type float is deprecated', 'C:\\Users\\Asus\\Downloads\\Website\\reports.php', 181, '#1 C:\\Users\\Asus\\Downloads\\Website\\reports.php(181): number_format()\n', '/reports.php', '', '', '2026-03-15 18:58:32'),
(5, 'javascript', 'error', 'Uncaught ReferenceError: productToDelete is not defined', 'http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773990726166', 139, 'ReferenceError: productToDelete is not defined\n    at InventoryManagement (http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773990726166:139:46)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":46}', '2026-03-20 07:12:08'),
(6, 'javascript', 'error', 'Uncaught ReferenceError: productToDelete is not defined', 'http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773990726166', 139, 'ReferenceError: productToDelete is not defined\n    at InventoryManagement (http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773990726166:139:46)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":46}', '2026-03-20 07:12:08'),
(7, 'javascript', 'unhandled_rejection', 'Unhandled Promise Rejection: productToDelete is not defined', '', 0, 'ReferenceError: productToDelete is not defined\n    at InventoryManagement (http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773990726166:139:46)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19806:22)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)\n    at renderRootSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19169:15)\n    at recoverFromConcurrentError (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:18786:28)\n    at performSyncWorkOnRoot (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:18932:28)', 'http://localhost:5199/', '', '', '2026-03-20 07:12:08'),
(8, 'javascript', 'error', 'Uncaught ReferenceError: productToDelete is not defined', 'http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993281768', 198, 'ReferenceError: productToDelete is not defined\n    at InventoryManagement (http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993281768:198:46)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":46}', '2026-03-20 07:54:44'),
(9, 'javascript', 'error', 'Uncaught ReferenceError: productToDelete is not defined', 'http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993281768', 198, 'ReferenceError: productToDelete is not defined\n    at InventoryManagement (http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993281768:198:46)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":46}', '2026-03-20 07:54:44'),
(10, 'javascript', 'error', 'Uncaught ReferenceError: productToDelete is not defined', 'http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993281768', 198, 'ReferenceError: productToDelete is not defined\n    at InventoryManagement (http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993281768:198:46)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', 'Zoe Owner', '{\"colno\":46}', '2026-03-20 07:54:44'),
(11, 'javascript', 'error', 'Uncaught ReferenceError: productToDelete is not defined', 'http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993281768', 198, 'ReferenceError: productToDelete is not defined\n    at InventoryManagement (http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993281768:198:46)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', 'Zoe Owner', '{\"colno\":46}', '2026-03-20 07:54:44'),
(12, 'javascript', 'error', 'Uncaught ReferenceError: showLowStockAlert is not defined', 'http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993288979', 295, 'ReferenceError: showLowStockAlert is not defined\n    at InventoryManagement (http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993288979:295:49)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', 'Zoe Owner', '{\"colno\":49}', '2026-03-20 07:54:51'),
(13, 'javascript', 'error', 'Uncaught ReferenceError: showLowStockAlert is not defined', 'http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993288979', 295, 'ReferenceError: showLowStockAlert is not defined\n    at InventoryManagement (http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993288979:295:49)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', 'Zoe Owner', '{\"colno\":49}', '2026-03-20 07:54:51'),
(14, 'javascript', 'error', 'Uncaught ReferenceError: showLowStockAlert is not defined', 'http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993296357', 297, 'ReferenceError: showLowStockAlert is not defined\n    at InventoryManagement (http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993296357:297:49)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', 'Zoe Owner', '{\"colno\":49}', '2026-03-20 07:54:58'),
(15, 'javascript', 'error', 'Uncaught ReferenceError: showLowStockAlert is not defined', 'http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993296357', 297, 'ReferenceError: showLowStockAlert is not defined\n    at InventoryManagement (http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993296357:297:49)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', 'Zoe Owner', '{\"colno\":49}', '2026-03-20 07:54:58'),
(16, 'javascript', 'error', 'Uncaught ReferenceError: showLowStockAlert is not defined', 'http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993308917', 298, 'ReferenceError: showLowStockAlert is not defined\n    at InventoryManagement (http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993308917:298:49)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', 'Zoe Owner', '{\"colno\":49}', '2026-03-20 07:55:11'),
(17, 'javascript', 'error', 'Uncaught ReferenceError: showLowStockAlert is not defined', 'http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993308917', 298, 'ReferenceError: showLowStockAlert is not defined\n    at InventoryManagement (http://localhost:5199/src/app/components/InventoryManagement.tsx?t=1773993308917:298:49)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', 'Zoe Owner', '{\"colno\":49}', '2026-03-20 07:55:11'),
(18, 'javascript', 'error', 'Uncaught ReferenceError: useState is not defined', 'http://localhost:5199/src/app/App.tsx?t=1773994756152', 50, 'ReferenceError: useState is not defined\n    at App (http://localhost:5199/src/app/App.tsx?t=1773994756152:50:41)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at updateFunctionComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14630:28)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15972:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', 'Zoe Owner', '{\"colno\":41}', '2026-03-20 08:19:18'),
(19, 'javascript', 'error', 'Uncaught ReferenceError: useState is not defined', 'http://localhost:5199/src/app/App.tsx?t=1773994756152', 50, 'ReferenceError: useState is not defined\n    at App (http://localhost:5199/src/app/App.tsx?t=1773994756152:50:41)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at updateFunctionComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14630:28)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15972:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', 'Zoe Owner', '{\"colno\":41}', '2026-03-20 08:19:18'),
(20, 'javascript', 'unhandled_rejection', 'Unhandled Promise Rejection: useState is not defined', '', 0, 'ReferenceError: useState is not defined\n    at App (http://localhost:5199/src/app/App.tsx?t=1773994756152:50:41)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at updateFunctionComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14630:28)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15972:22)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19806:22)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)\n    at renderRootSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19169:15)\n    at recoverFromConcurrentError (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:18786:28)\n    at performSyncWorkOnRoot (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:18932:28)', 'http://localhost:5199/', '', '', '2026-03-20 08:19:18'),
(21, 'javascript', 'unhandled_rejection', 'Unhandled Promise Rejection: useState is not defined', '', 0, 'ReferenceError: useState is not defined\n    at App (http://localhost:5199/src/app/App.tsx?t=1773994756152:50:41)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at updateFunctionComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14630:28)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15972:22)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19806:22)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)\n    at renderRootSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19169:15)\n    at recoverFromConcurrentError (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:18786:28)\n    at performSyncWorkOnRoot (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:18932:28)', 'http://localhost:5199/', 'Zoe Owner', '', '2026-03-20 08:19:18'),
(22, 'javascript', 'error', 'Uncaught TypeError: Failed to fetch dynamically imported module: http://localhost:5199/src/app/components/POSSystem.tsx?t=1773995097389', 'http://localhost:5199/node_modules/.vite/deps/chunk-RLJ2RCJQ.js?v=bd812add', 903, 'TypeError: Failed to fetch dynamically imported module: http://localhost:5199/src/app/components/POSSystem.tsx?t=1773995097389', 'http://localhost:5199/', '', '{\"colno\":13}', '2026-03-20 08:25:08'),
(23, 'javascript', 'error', 'Uncaught TypeError: Failed to fetch dynamically imported module: http://localhost:5199/src/app/components/POSSystem.tsx?t=1773995097389', 'http://localhost:5199/node_modules/.vite/deps/chunk-RLJ2RCJQ.js?v=bd812add', 903, 'TypeError: Failed to fetch dynamically imported module: http://localhost:5199/src/app/components/POSSystem.tsx?t=1773995097389', 'http://localhost:5199/', '', '{\"colno\":13}', '2026-03-20 08:25:08'),
(24, 'javascript', 'error', 'Uncaught ReferenceError: Suspense is not defined', 'http://localhost:5199/src/app/App.tsx?t=1773995159891', 639, 'ReferenceError: Suspense is not defined\n    at App (http://localhost:5199/src/app/App.tsx?t=1773995159891:639:114)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at updateFunctionComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14630:28)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15972:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":114}', '2026-03-20 08:26:04'),
(25, 'javascript', 'error', 'Uncaught ReferenceError: Suspense is not defined', 'http://localhost:5199/src/app/App.tsx?t=1773995159891', 639, 'ReferenceError: Suspense is not defined\n    at App (http://localhost:5199/src/app/App.tsx?t=1773995159891:639:114)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at updateFunctionComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14630:28)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15972:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":114}', '2026-03-20 08:26:04'),
(26, 'javascript', 'unhandled_rejection', 'Unhandled Promise Rejection: Suspense is not defined', '', 0, 'ReferenceError: Suspense is not defined\n    at App (http://localhost:5199/src/app/App.tsx?t=1773995159891:639:114)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at updateFunctionComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14630:28)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15972:22)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19806:22)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)\n    at renderRootSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19169:15)\n    at recoverFromConcurrentError (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:18786:28)\n    at performSyncWorkOnRoot (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:18932:28)', 'http://localhost:5199/', '', '', '2026-03-20 08:26:04'),
(27, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937', 44, 'TypeError: useState is not iterable\n    at Dashboard (http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937:44:37)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":37}', '2026-03-20 09:29:01'),
(28, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937', 44, 'TypeError: useState is not iterable\n    at Dashboard (http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937:44:37)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":37}', '2026-03-20 09:29:01'),
(29, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937', 44, 'TypeError: useState is not iterable\n    at Dashboard (http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937:44:37)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":37}', '2026-03-20 09:29:28'),
(30, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937', 44, 'TypeError: useState is not iterable\n    at Dashboard (http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937:44:37)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":37}', '2026-03-20 09:29:29'),
(31, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937', 44, 'TypeError: useState is not iterable\n    at Dashboard (http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937:44:37)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":37}', '2026-03-20 09:29:40'),
(32, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937', 44, 'TypeError: useState is not iterable\n    at Dashboard (http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937:44:37)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":37}', '2026-03-20 09:29:40'),
(33, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937', 44, 'TypeError: useState is not iterable\n    at Dashboard (http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937:44:37)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":37}', '2026-03-20 09:29:55'),
(34, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937', 44, 'TypeError: useState is not iterable\n    at Dashboard (http://localhost:5199/src/app/components/Dashboard.tsx?t=1773998937937:44:37)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":37}', '2026-03-20 09:29:55'),
(35, 'javascript', 'error', 'Uncaught ReferenceError: use is not defined', 'http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999448201', 38, 'ReferenceError: use is not defined\n    at TransactionHistory (http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999448201:38:41)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":41}', '2026-03-20 09:37:31'),
(36, 'javascript', 'error', 'Uncaught ReferenceError: use is not defined', 'http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999448201', 38, 'ReferenceError: use is not defined\n    at TransactionHistory (http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999448201:38:41)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":41}', '2026-03-20 09:37:31'),
(37, 'javascript', 'error', 'Uncaught ReferenceError: use is not defined', 'http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999448201', 38, 'ReferenceError: use is not defined\n    at TransactionHistory (http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999448201:38:41)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":41}', '2026-03-20 09:37:44'),
(38, 'javascript', 'error', 'Uncaught ReferenceError: use is not defined', 'http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999448201', 38, 'ReferenceError: use is not defined\n    at TransactionHistory (http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999448201:38:41)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":41}', '2026-03-20 09:37:44'),
(39, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999910455', 37, 'TypeError: useState is not iterable\n    at TransactionHistory (http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999910455:37:39)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', 'Zoe Owner', '{\"colno\":39}', '2026-03-20 09:45:15'),
(40, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999910455', 37, 'TypeError: useState is not iterable\n    at TransactionHistory (http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999910455:37:39)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', 'Zoe Owner', '{\"colno\":39}', '2026-03-20 09:45:15');
INSERT INTO `error_logs` (`id`, `source`, `level`, `message`, `file`, `line`, `stack_trace`, `url`, `user_name`, `extra`, `created_at`) VALUES
(41, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add', 9176, 'TypeError: useState is not iterable\n    at TransactionHistory (http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999910455:37:39)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19806:22)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)\n    at renderRootSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19169:15)\n    at recoverFromConcurrentError (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:18786:28)\n    at performSyncWorkOnRoot (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:18932:28)', 'http://localhost:5199/', 'Zoe Owner', '{\"colno\":15}', '2026-03-20 09:45:15'),
(42, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999910455', 37, 'TypeError: useState is not iterable\n    at TransactionHistory (http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999910455:37:39)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":39}', '2026-03-20 09:45:29'),
(43, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999910455', 37, 'TypeError: useState is not iterable\n    at TransactionHistory (http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999910455:37:39)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at HTMLUnknownElement.callCallback2 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3680:22)\n    at Object.invokeGuardedCallbackDev (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3705:24)\n    at invokeGuardedCallback (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:3739:39)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19818:15)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)', 'http://localhost:5199/', '', '{\"colno\":39}', '2026-03-20 09:45:29'),
(44, 'javascript', 'error', 'Uncaught TypeError: useState is not iterable', 'http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add', 9176, 'TypeError: useState is not iterable\n    at TransactionHistory (http://localhost:5199/src/app/components/TransactionHistory.tsx?t=1773999910455:37:39)\n    at renderWithHooks (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:11596:26)\n    at mountIndeterminateComponent (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:14974:21)\n    at beginWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:15962:22)\n    at beginWork$1 (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19806:22)\n    at performUnitOfWork (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19251:20)\n    at workLoopSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19190:13)\n    at renderRootSync (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:19169:15)\n    at recoverFromConcurrentError (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:18786:28)\n    at performSyncWorkOnRoot (http://localhost:5199/node_modules/.vite/deps/chunk-KDCVS43I.js?v=bd812add:18932:28)', 'http://localhost:5199/', '', '{\"colno\":15}', '2026-03-20 09:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_loss`
--

CREATE TABLE `inventory_loss` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `cost_at_loss` decimal(10,2) NOT NULL,
  `reason` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `loss_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reported_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_loss`
--

INSERT INTO `inventory_loss` (`id`, `product_id`, `quantity`, `cost_at_loss`, `reason`, `loss_date`, `reported_by`) VALUES
(1, 48, 100, 10.00, 'Expired', '2026-03-20 11:59:26', NULL),
(2, 47, 100, 12.00, 'Expired', '2026-03-20 11:59:28', NULL),
(3, 48, 100, 10.00, 'Expired', '2026-03-20 12:00:46', NULL),
(4, 47, 100, 12.00, 'Expired', '2026-03-20 12:00:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(6) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(2, 'owner@zoepharmacy.com', '456146', '2026-07-28 14:11:30'),
(3, 'gipayavincee@gmail.com', '577391', '2026-07-28 14:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `quantity` int NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reorder_level` int NOT NULL DEFAULT '10',
  `expiry_date` date DEFAULT NULL,
  `new_stock_quantity` int NOT NULL DEFAULT '0',
  `new_stock_expiry` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `category_id`, `description`, `quantity`, `price`, `cost`, `reorder_level`, `expiry_date`, `new_stock_quantity`, `new_stock_expiry`, `created_at`, `updated_at`) VALUES
(1, 'SKU-00001', '4G Capsule', 1, 'Fulfillment data for 4G Capsule', 100, 10.00, 8.50, 20, '2027-05-12', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(2, 'SKU-00002', 'ADVIL Liqui-gel Capsule', 1, 'Fulfillment data for ADVIL Liqui-gel Capsule', 100, 21.00, 18.00, 20, '2027-08-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(3, 'SKU-00003', 'ADVIL Suspension 60mL', 1, 'Fulfillment data for ADVIL Suspension 60mL', 100, 163.00, 145.00, 20, '2027-09-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(4, 'SKU-00004', 'AGUA OXIGENADA 10V 60mL (Ace)', 1, 'Fulfillment data for AGUA OXIGENADA 10V 60mL (Ace)', 100, 21.00, 18.00, 20, '2028-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(5, 'SKU-00005', 'AGUA OXIGENADA 10V 120mL (Ace)', 1, 'Fulfillment data for AGUA OXIGENADA 10V 120mL (Ace)', 100, 32.00, 28.00, 20, '2028-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(6, 'SKU-00006', 'ALAXAN FR Capsule 10s', 1, 'Fulfillment data for ALAXAN FR Capsule 10s', 100, 103.00, 92.00, 20, '2027-06-20', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(7, 'SKU-00007', 'ALAXAN FR Capsule', 1, 'Fulfillment data for ALAXAN FR Capsule', 100, 11.00, 9.50, 20, '2027-06-20', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(8, 'SKU-00008', 'ALAXAN Tablet', 1, 'Fulfillment data for ALAXAN Tablet', 100, 9.00, 7.50, 20, '2027-07-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(9, 'SKU-00009', 'ALBOTHYL Suppository 6s', 1, 'Fulfillment data for ALBOTHYL Suppository 6s', 100, 235.00, 210.00, 20, '2027-03-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(10, 'SKU-00010', 'ALCAMFORADO 50mL (IPI)', 1, 'Fulfillment data for ALCAMFORADO 50mL (IPI)', 100, 43.00, 38.00, 20, '2028-02-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(11, 'SKU-00011', 'ALCOPLUS Ethyl 70% 60mL', 1, 'Fulfillment data for ALCOPLUS Ethyl 70% 60mL', 100, 27.00, 24.00, 20, '2028-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(12, 'SKU-00012', 'ALCOPLUS Ethyl 70% 150mL', 1, 'Fulfillment data for ALCOPLUS Ethyl 70% 150mL', 100, 50.00, 45.00, 20, '2028-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(13, 'SKU-00013', 'ALCOPLUS Ethyl 70% 250mL', 1, 'Fulfillment data for ALCOPLUS Ethyl 70% 250mL', 100, 70.00, 62.00, 20, '2028-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(14, 'SKU-00014', 'ALCOPLUS Ethyl 70% 330mL Spray', 2, 'Fulfillment data for ALCOPLUS Ethyl 70% 330mL Spray', 100, 87.00, 78.00, 20, '2028-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(15, 'SKU-00015', 'ALCOPLUS Ethyl 70% 500mL', 1, 'Fulfillment data for ALCOPLUS Ethyl 70% 500mL', 100, 118.00, 105.00, 20, '2028-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(16, 'SKU-00016', 'ALCOPLUS Ethyl 70% 60mL Spray', 2, 'Fulfillment data for ALCOPLUS Ethyl 70% 60mL Spray', 100, 30.00, 26.00, 20, '2028-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(17, 'SKU-00017', 'ALCOPLUS Isopropyl 40% 60mL', 1, 'Fulfillment data for ALCOPLUS Isopropyl 40% 60mL', 100, 25.00, 22.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(18, 'SKU-00018', 'ALCOPLUS Isopropyl 40% 150mL', 1, 'Fulfillment data for ALCOPLUS Isopropyl 40% 150mL', 100, 45.00, 40.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(19, 'SKU-00019', 'ALCOPLUS Isopropyl 40% 250mL', 1, 'Fulfillment data for ALCOPLUS Isopropyl 40% 250mL', 100, 65.00, 58.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(20, 'SKU-00020', 'ALCOPLUS Isopropyl 40% 500mL', 1, 'Fulfillment data for ALCOPLUS Isopropyl 40% 500mL', 100, 110.00, 98.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(21, 'SKU-00021', 'ALCOPLUS Isopropyl 70% 60mL', 1, 'Fulfillment data for ALCOPLUS Isopropyl 70% 60mL', 100, 28.00, 25.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(22, 'SKU-00022', 'ALCOPLUS Isopropyl 70% 150mL', 1, 'Fulfillment data for ALCOPLUS Isopropyl 70% 150mL', 100, 52.00, 46.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(23, 'SKU-00023', 'ALCOPLUS Isopropyl 70% 250mL', 1, 'Fulfillment data for ALCOPLUS Isopropyl 70% 250mL', 100, 72.00, 64.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(24, 'SKU-00024', 'ALCOPLUS Isopropyl 70% 330mL Spray', 2, 'Fulfillment data for ALCOPLUS Isopropyl 70% 330mL Spray', 100, 90.00, 80.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(25, 'SKU-00025', 'ALCOPLUS Isopropyl 70% 500mL', 1, 'Fulfillment data for ALCOPLUS Isopropyl 70% 500mL', 100, 121.00, 108.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(26, 'SKU-00026', 'ALLERKID Drops 10mL', 1, 'Fulfillment data for ALLERKID Drops 10mL', 100, 151.00, 135.00, 20, '2027-10-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(27, 'SKU-00027', 'ALLERKID Syrup 30mL', 1, 'Fulfillment data for ALLERKID Syrup 30mL', 100, 140.00, 125.00, 20, '2027-10-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(28, 'SKU-00028', 'ALLERKID Syrup 60mL', 1, 'Fulfillment data for ALLERKID Syrup 60mL', 100, 196.00, 175.00, 20, '2027-10-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(29, 'SKU-00029', 'ALLERTA Syrup 60mL', 1, 'Fulfillment data for ALLERTA Syrup 60mL', 100, 184.00, 165.00, 20, '2027-09-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(30, 'SKU-00030', 'ALLERTA Tablet 10mg', 1, 'Fulfillment data for ALLERTA Tablet 10mg', 100, 16.00, 14.00, 20, '2027-09-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(31, 'SKU-00031', 'ALLERZET 2.5mg Syrup 30mL', 1, 'Fulfillment data for ALLERZET 2.5mg Syrup 30mL', 100, 162.00, 145.00, 20, '2027-08-20', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(32, 'SKU-00032', 'ALLERZET 2.5mg Syrup 60mL', 1, 'Fulfillment data for ALLERZET 2.5mg Syrup 60mL', 100, 207.00, 185.00, 20, '2027-08-20', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(33, 'SKU-00033', 'ALNIX Drops 10mL', 1, 'Fulfillment data for ALNIX Drops 10mL', 100, 173.00, 155.00, 20, '2027-11-05', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(34, 'SKU-00034', 'ALNIX Plus Syrup 60mL', 1, 'Fulfillment data for ALNIX Plus Syrup 60mL', 100, 199.00, 178.00, 20, '2027-11-05', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(35, 'SKU-00035', 'ALNIX Plus Tablet', 1, 'Fulfillment data for ALNIX Plus Tablet', 100, 17.00, 16.00, 20, '2027-11-05', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(36, 'SKU-00036', 'ALNIX Syrup 30mL', 1, 'Fulfillment data for ALNIX Syrup 30mL', 100, 156.00, 140.00, 20, '2027-11-05', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(37, 'SKU-00037', 'ALNIX Syrup 60mL', 1, 'Fulfillment data for ALNIX Syrup 60mL', 100, 201.00, 180.00, 20, '2027-11-05', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(38, 'SKU-00038', 'ALNIX Tablet 10mg', 1, 'Fulfillment data for ALNIX Tablet 10mg', 100, 16.00, 15.00, 20, '2027-11-05', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(39, 'SKU-00039', 'ALTHEA Pills', 1, 'Fulfillment data for ALTHEA Pills', 100, 694.00, 620.00, 20, '2027-12-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(40, 'SKU-00040', 'AMBROLEX 15mg Syrup 60mL', 1, 'Fulfillment data for AMBROLEX 15mg Syrup 60mL', 100, 134.00, 120.00, 20, '2027-07-07', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(41, 'SKU-00041', 'AMBROLEX 30mg Syrup 60mL', 1, 'Fulfillment data for AMBROLEX 30mg Syrup 60mL', 100, 162.00, 145.00, 20, '2027-07-07', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(42, 'SKU-00042', 'AMBROLEX Drops', 1, 'Fulfillment data for AMBROLEX Drops', 100, 151.00, 135.00, 20, '2027-07-07', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(43, 'SKU-00043', 'AMBROLEX Tablet', 1, 'Fulfillment data for AMBROLEX Tablet', 100, 7.00, 6.50, 20, '2027-07-07', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(44, 'SKU-00044', 'AMOXICILLIN Cap 250mg (VHELLOX)', 1, 'Fulfillment data for AMOXICILLIN Cap 250mg (VHELLOX)', 100, 8.00, 7.00, 20, '2027-04-12', 100, '2029-09-01', '2026-03-20 11:51:48', '2026-07-28 14:44:11'),
(45, 'SKU-00045', 'AMOXICILLIN Cap 500mg (VHELLOX)', 1, 'Fulfillment data for AMOXICILLIN Cap 500mg (VHELLOX)', 100, 11.00, 9.50, 20, '2027-04-12', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(46, 'SKU-00046', 'AMOXICILLIN Cap 500mg (Amoxil)', 1, 'Fulfillment data for AMOXICILLIN Cap 500mg (Amoxil)', 100, 8.00, 6.80, 20, '2027-04-12', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(47, 'SKU-00047', 'AMOXICILLIN Cap 250mg (Amoxil)', 1, 'Fulfillment data for AMOXICILLIN Cap 250mg (Amoxil)', 100, 14.00, 12.00, 20, '2028-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 12:03:13'),
(48, 'SKU-00048', 'AMOXICILLIN Cap 500mg (Benedex)', 1, 'Fulfillment data for AMOXICILLIN Cap 500mg (Benedex)', 100, 11.00, 10.00, 20, '2026-12-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 12:02:26'),
(49, 'SKU-00049', 'AMOXICILLIN Cap 250mg (Benedex)', 1, 'Fulfillment data for AMOXICILLIN Cap 250mg (Benedex)', 100, 18.00, 16.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(50, 'SKU-00050', 'AMOXICILLIN Cap 250mg (Ritemed)', 1, 'Fulfillment data for AMOXICILLIN Cap 250mg (Ritemed)', 100, 22.00, 20.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(51, 'SKU-00051', 'AMOXICILLIN Cap 500mg (Ritemed)', 1, 'Fulfillment data for AMOXICILLIN Cap 500mg (Ritemed)', 100, 10.00, 9.50, 20, '2027-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(52, 'SKU-00052', 'AMOXICILLIN Capsule 500mg (Nixolin)', 1, 'Fulfillment data for AMOXICILLIN Capsule 500mg (Nixolin)', 100, 10.00, 9.20, 20, '2027-05-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(53, 'SKU-00053', 'AMOXICILLIN Drops (Pharex)', 1, 'Fulfillment data for AMOXICILLIN Drops (Pharex)', 100, 140.00, 125.00, 20, '2027-07-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(54, 'SKU-00054', 'AMOXICLAV 625mg Tab. (Ritemed)', 1, 'Fulfillment data for AMOXICLAV 625mg Tab. (Ritemed)', 100, 36.00, 32.00, 20, '2027-08-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(55, 'SKU-00055', 'AMOXIL 500mg Capsule', 1, 'Fulfillment data for AMOXIL 500mg Capsule', 100, 17.00, 14.50, 20, '2027-09-05', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(56, 'SKU-00056', 'AMVASC BE 5mg Tablet', 1, 'Fulfillment data for AMVASC BE 5mg Tablet', 100, 20.00, 18.00, 20, '2027-10-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(57, 'SKU-00057', 'AMVASC BE 10mg Tablet', 1, 'Fulfillment data for AMVASC BE 10mg Tablet', 100, 25.00, 22.00, 20, '2027-10-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(58, 'SKU-00058', 'ANTIOX Suspension 10mL (Choco)', 1, 'Fulfillment data for ANTIOX Suspension 10mL (Choco)', 100, 84.00, 75.00, 20, '2027-06-20', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(59, 'SKU-00059', 'ANTIOX Tablet 500mg', 1, 'Fulfillment data for ANTIOX Tablet 500mg', 100, 8.40, 7.50, 20, '2027-06-20', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(60, 'SKU-00060', 'AP-AP Solution 30mL (LAR)', 1, 'Fulfillment data for AP-AP Solution 30mL (LAR)', 100, 54.00, 48.00, 20, '2027-11-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(61, 'SKU-00061', 'AP-AP Solution 60mL (Dann\'s Aid)', 1, 'Fulfillment data for AP-AP Solution 60mL (Dann\'s Aid)', 100, 87.00, 78.00, 20, '2027-11-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(62, 'SKU-00062', 'APPEBON KID Syrup 60mL', 1, 'Fulfillment data for APPEBON KID Syrup 60mL', 100, 151.00, 135.00, 20, '2027-12-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(63, 'SKU-00063', 'APPEBON KID Syrup 120mL', 1, 'Fulfillment data for APPEBON KID Syrup 120mL', 100, 218.00, 195.00, 20, '2027-12-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(64, 'SKU-00064', 'APPEBON KID Syrup 250mL', 1, 'Fulfillment data for APPEBON KID Syrup 250mL', 100, 386.00, 345.00, 20, '2027-12-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(65, 'SKU-00065', 'APPEBON with Iron Capsule', 1, 'Fulfillment data for APPEBON with Iron Capsule', 100, 7.28, 6.50, 20, '2027-08-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(66, 'SKU-00066', 'APPEBON with Iron Syrup 60mL', 1, 'Fulfillment data for APPEBON with Iron Syrup 60mL', 100, 156.80, 140.00, 20, '2027-08-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(67, 'SKU-00067', 'APPEBON with Iron Syrup 120mL', 1, 'Fulfillment data for APPEBON with Iron Syrup 120mL', 100, 221.76, 198.00, 20, '2027-08-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(68, 'SKU-00068', 'ARCOXIA Tablet 120mg 5s', 1, 'Fulfillment data for ARCOXIA Tablet 120mg 5s', 100, 235.20, 210.00, 20, '2027-09-20', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(69, 'SKU-00069', 'ARCOXIA Tablet 60mg', 1, 'Fulfillment data for ARCOXIA Tablet 60mg', 100, 53.76, 48.00, 20, '2027-09-20', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(70, 'SKU-00070', 'ARCOXIA Tablet 90mg', 1, 'Fulfillment data for ARCOXIA Tablet 90mg', 100, 61.60, 55.00, 20, '2027-09-20', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(71, 'SKU-00071', 'ARCOXIA Tablet AC 120mg', 1, 'Fulfillment data for ARCOXIA Tablet AC 120mg', 100, 64.96, 58.00, 20, '2027-09-20', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(72, 'SKU-00072', 'ASCOF 600mg 5-DAY Relief Pack', 1, 'Fulfillment data for ASCOF 600mg 5-DAY Relief Pack', 100, 106.40, 95.00, 20, '2027-07-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(73, 'SKU-00073', 'ASCOF Forte 600mg Capsule 60s', 1, 'Fulfillment data for ASCOF Forte 600mg Capsule 60s', 100, 470.40, 420.00, 20, '2027-07-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(74, 'SKU-00074', 'ASCOF Forte 600mg Capsule 120s', 1, 'Fulfillment data for ASCOF Forte 600mg Capsule 120s', 100, 884.80, 790.00, 20, '2027-07-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(75, 'SKU-00075', 'ASCOF Forte 600mg Tablet 12+3', 1, 'Fulfillment data for ASCOF Forte 600mg Tablet 12+3', 100, 128.80, 115.00, 20, '2027-07-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(76, 'SKU-00076', 'ASCOF Forte 600mg Tablet 120s', 1, 'Fulfillment data for ASCOF Forte 600mg Tablet 120s', 100, 873.60, 780.00, 20, '2027-07-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(77, 'SKU-00077', 'ASCOF Ponkan 120mL w/Crayola', 1, 'Fulfillment data for ASCOF Ponkan 120mL w/Crayola', 100, 179.20, 160.00, 20, '2027-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(78, 'SKU-00078', 'ASCOF Syrup 60mL (Ponkan)', 1, 'Fulfillment data for ASCOF Syrup 60mL (Ponkan)', 100, 109.76, 98.00, 20, '2027-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(79, 'SKU-00079', 'ASCOF Syrup 120mL (Ponkan)', 1, 'Fulfillment data for ASCOF Syrup 120mL (Ponkan)', 100, 162.40, 145.00, 20, '2027-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(80, 'SKU-00080', 'ASCOF Syrup 120mL Strawberry', 1, 'Fulfillment data for ASCOF Syrup 120mL Strawberry', 100, 165.76, 148.00, 20, '2027-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(81, 'SKU-00081', 'ASCOF Syrup Forte Menthol 60mL', 1, 'Fulfillment data for ASCOF Syrup Forte Menthol 60mL', 100, 123.20, 110.00, 20, '2027-08-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(82, 'SKU-00082', 'ASCOF Syrup Forte Menthol 60mL SF', 1, 'Fulfillment data for ASCOF Syrup Forte Menthol 60mL SF', 100, 128.80, 115.00, 20, '2027-08-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(83, 'SKU-00083', 'ASCOF Syrup Forte Menthol 120mL', 1, 'Fulfillment data for ASCOF Syrup Forte Menthol 120mL', 100, 176.96, 158.00, 20, '2027-08-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(84, 'SKU-00084', 'ASCOF Syrup Forte 120mL Sugar Free', 1, 'Fulfillment data for ASCOF Syrup Forte 120mL Sugar Free', 100, 181.44, 162.00, 20, '2027-08-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(85, 'SKU-00085', 'ASCOF Syrup Strawberry 60mL', 1, 'Fulfillment data for ASCOF Syrup Strawberry 60mL', 100, 112.00, 100.00, 20, '2027-08-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(86, 'SKU-00086', 'ASCOF Tablet 300mg (Lagundi)', 1, 'Fulfillment data for ASCOF Tablet 300mg (Lagundi)', 100, 8.40, 7.50, 20, '2027-08-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(87, 'SKU-00087', 'ASCORBIC ACID 500 (Ritemed)', 1, 'Fulfillment data for ASCORBIC ACID 500 (Ritemed)', 100, 3.58, 3.20, 20, '2028-01-05', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(88, 'SKU-00088', 'ASCORBIC ACID 500mg (Rhea)', 1, 'Fulfillment data for ASCORBIC ACID 500mg (Rhea)', 100, 3.47, 3.10, 20, '2028-01-05', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(89, 'SKU-00089', 'ASCOR-CEE Plus Capsule', 1, 'Fulfillment data for ASCOR-CEE Plus Capsule', 100, 10.98, 9.80, 20, '2028-02-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(90, 'SKU-00090', 'ASMALIN Broncho Syrup 60mL', 1, 'Fulfillment data for ASMALIN Broncho Syrup 60mL', 100, 151.20, 135.00, 20, '2027-10-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(91, 'SKU-00091', 'ASMALIN Solution Neb. 2.5mL 5s', 1, 'Fulfillment data for ASMALIN Solution Neb. 2.5mL 5s', 100, 235.20, 210.00, 20, '2027-10-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(92, 'SKU-00092', 'ASMALIN Syrup (New) 60mL', 1, 'Fulfillment data for ASMALIN Syrup (New) 60mL', 100, 156.80, 140.00, 20, '2027-10-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(93, 'SKU-00093', 'ASPILETS Tablet', 1, 'Fulfillment data for ASPILETS Tablet', 100, 6.16, 5.50, 20, '2027-09-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(94, 'SKU-00094', 'ASPILETS-EC Tablet', 1, 'Fulfillment data for ASPILETS-EC Tablet', 100, 6.72, 6.00, 20, '2027-09-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(95, 'SKU-00095', 'AUGMENTIN 156mg 60mL', 1, 'Fulfillment data for AUGMENTIN 156mg 60mL', 100, 201.60, 180.00, 20, '2027-12-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(96, 'SKU-00096', 'AUGMENTIN 228mg 70mL', 1, 'Fulfillment data for AUGMENTIN 228mg 70mL', 100, 235.20, 210.00, 20, '2027-12-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(97, 'SKU-00097', 'AUGMENTIN 312mg 60mL', 1, 'Fulfillment data for AUGMENTIN 312mg 60mL', 100, 280.00, 250.00, 20, '2027-12-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(98, 'SKU-00098', 'AUGMENTIN 457mg 35mL', 1, 'Fulfillment data for AUGMENTIN 457mg 35mL', 100, 212.80, 190.00, 20, '2027-12-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(99, 'SKU-00099', 'AUGMENTIN 457mg 70mL', 1, 'Fulfillment data for AUGMENTIN 457mg 70mL', 97, 358.40, 320.00, 20, '2027-12-01', 0, NULL, '2026-03-20 11:51:48', '2026-07-28 14:41:17'),
(100, 'SKU-00100', 'AUGMENTIN Tablet 375mg', 1, 'Fulfillment data for AUGMENTIN Tablet 375mg', 100, 9.52, 8.50, 20, '2027-12-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(101, 'SKU-00101', 'AUGMENTIN Tablet 625mg', 1, 'Fulfillment data for AUGMENTIN Tablet 625mg', 100, 14.00, 12.50, 20, '2027-12-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(102, 'SKU-00102', 'AXE Roll-On 40mL (Apollo)', 2, 'Fulfillment data for AXE Roll-On 40mL (Apollo)', 100, 84.00, 75.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(103, 'SKU-00103', 'AXE Roll-On 40mL (Black)', 2, 'Fulfillment data for AXE Roll-On 40mL (Black)', 100, 84.00, 75.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(104, 'SKU-00104', 'AXE Roll-On 40mL (Click)', 2, 'Fulfillment data for AXE Roll-On 40mL (Click)', 100, 84.00, 75.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(105, 'SKU-00105', 'AXE Roll-On 40mL (Dark Temp)', 2, 'Fulfillment data for AXE Roll-On 40mL (Dark Temp)', 100, 84.00, 75.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(106, 'SKU-00106', 'AXE Roll-On 40mL (Gold Temp)', 2, 'Fulfillment data for AXE Roll-On 40mL (Gold Temp)', 100, 84.00, 75.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(107, 'SKU-00107', 'AXE Spray 50mL (Apollo)', 2, 'Fulfillment data for AXE Spray 50mL (Apollo)', 100, 168.00, 150.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(108, 'SKU-00108', 'AXE Spray 50mL (Black)', 2, 'Fulfillment data for AXE Spray 50mL (Black)', 100, 168.00, 150.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(109, 'SKU-00109', 'AXE Spray 50mL (Click)', 2, 'Fulfillment data for AXE Spray 50mL (Click)', 100, 168.00, 150.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(110, 'SKU-00110', 'AXE Spray 50mL (Dark Temp)', 2, 'Fulfillment data for AXE Spray 50mL (Dark Temp)', 100, 168.00, 150.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(111, 'SKU-00111', 'AXE Spray 50mL (You)', 2, 'Fulfillment data for AXE Spray 50mL (You)', 100, 168.00, 150.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(112, 'SKU-00112', 'BACTIDOL Liquid 60mL', 1, 'Fulfillment data for BACTIDOL Liquid 60mL', 100, 53.76, 48.00, 20, '2027-11-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(113, 'SKU-00113', 'BACTIDOL Liquid 120mL', 1, 'Fulfillment data for BACTIDOL Liquid 120mL', 100, 87.36, 78.00, 20, '2027-11-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(114, 'SKU-00114', 'BACTIDOL Liquid 250mL', 1, 'Fulfillment data for BACTIDOL Liquid 250mL', 100, 156.80, 140.00, 20, '2027-11-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(115, 'SKU-00115', 'BACTROBAN Cream 5g', 1, 'Fulfillment data for BACTROBAN Cream 5g', 100, 173.60, 155.00, 20, '2028-01-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(116, 'SKU-00116', 'BACTROBAN Ointment 5g', 1, 'Fulfillment data for BACTROBAN Ointment 5g', 100, 179.20, 160.00, 20, '2028-01-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(117, 'SKU-00117', 'BAND-AID Adhesive 50s', 2, 'Fulfillment data for BAND-AID Adhesive 50s', 100, 106.40, 95.00, 20, '2029-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(118, 'SKU-00118', 'BEAR BRAND Milk 320G', 2, 'Fulfillment data for BEAR BRAND Milk 320G', 100, 72.80, 65.00, 20, '2028-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(119, 'SKU-00119', 'BENADRYL AH 25mg Cap 100s', 1, 'Fulfillment data for BENADRYL AH 25mg Cap 100s', 100, 268.80, 240.00, 20, '2027-08-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(120, 'SKU-00120', 'BENADRYL AH 50mg Cap 100s', 1, 'Fulfillment data for BENADRYL AH 50mg Cap 100s', 99, 291.20, 260.00, 20, '2027-08-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 12:27:41'),
(121, 'SKU-00121', 'BENADRYL Expectorant 60mL', 1, 'Fulfillment data for BENADRYL Expectorant 60mL', 100, 145.60, 130.00, 20, '2027-09-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(122, 'SKU-00122', 'BENADRYL Syrup 60mL', 1, 'Fulfillment data for BENADRYL Syrup 60mL', 100, 156.80, 140.00, 20, '2027-09-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(123, 'SKU-00123', 'BENADRYL Syrup 120mL', 1, 'Fulfillment data for BENADRYL Syrup 120mL', 100, 246.40, 220.00, 20, '2027-09-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(124, 'SKU-00124', 'BENCH B/Spray 50mL Bare Me Not', 2, 'Fulfillment data for BENCH B/Spray 50mL Bare Me Not', 100, 128.80, 115.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(125, 'SKU-00125', 'BENCH B/Spray 50mL So In Love', 2, 'Fulfillment data for BENCH B/Spray 50mL So In Love', 100, 128.80, 115.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(126, 'SKU-00126', 'BENCH B/Spray 50mL Tickled Pink', 2, 'Fulfillment data for BENCH B/Spray 50mL Tickled Pink', 100, 128.80, 115.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(127, 'SKU-00127', 'BENCH B/Spray 100mL Atlantis', 2, 'Fulfillment data for BENCH B/Spray 100mL Atlantis', 100, 235.20, 210.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(128, 'SKU-00128', 'BENCH B/Spray 100mL B20', 2, 'Fulfillment data for BENCH B/Spray 100mL B20', 100, 235.20, 210.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(129, 'SKU-00129', 'BENCH B/Spray 100mL Bare Me Not', 2, 'Fulfillment data for BENCH B/Spray 100mL Bare Me Not', 100, 235.20, 210.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(130, 'SKU-00130', 'BENCH B/Spray 100mL Capture', 2, 'Fulfillment data for BENCH B/Spray 100mL Capture', 100, 235.20, 210.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(131, 'SKU-00131', 'BENCH B/Spray 100mL Eight', 2, 'Fulfillment data for BENCH B/Spray 100mL Eight', 100, 235.20, 210.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(132, 'SKU-00132', 'BENCH B/Spray 100mL i Choose', 2, 'Fulfillment data for BENCH B/Spray 100mL i Choose', 100, 235.20, 210.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(133, 'SKU-00133', 'BENCH B/Spray 100mL i Desire', 2, 'Fulfillment data for BENCH B/Spray 100mL i Desire', 100, 235.20, 210.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(134, 'SKU-00134', 'BENCH B/Spray 100mL i Rock', 2, 'Fulfillment data for BENCH B/Spray 100mL i Rock', 100, 235.20, 210.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(135, 'SKU-00135', 'BENCH B/Spray 100mL i Sport', 2, 'Fulfillment data for BENCH B/Spray 100mL i Sport', 100, 235.20, 210.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(136, 'SKU-00136', 'BENCH B/Spray 100mL Pure Play', 2, 'Fulfillment data for BENCH B/Spray 100mL Pure Play', 100, 235.20, 210.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(137, 'SKU-00137', 'BENCH B/Spray 100mL So In Love', 2, 'Fulfillment data for BENCH B/Spray 100mL So In Love', 100, 235.20, 210.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(138, 'SKU-00138', 'BENCH B/Spray 100mL Sure Blue', 2, 'Fulfillment data for BENCH B/Spray 100mL Sure Blue', 100, 235.20, 210.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(139, 'SKU-00139', 'BENCH B/Spray 100mL Velocity-BLUE', 2, 'Fulfillment data for BENCH B/Spray 100mL Velocity-BLUE', 100, 235.20, 210.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(140, 'SKU-00140', 'BENCH D/Scent Col. 25-Beach Bum', 2, 'Fulfillment data for BENCH D/Scent Col. 25-Beach Bum', 100, 140.00, 125.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(141, 'SKU-00141', 'BENCH D/Scent Col. 25-Bubble Pop', 2, 'Fulfillment data for BENCH D/Scent Col. 25-Bubble Pop', 100, 140.00, 125.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(142, 'SKU-00142', 'BENCH D/Scent Col. 25-Eye Candy', 2, 'Fulfillment data for BENCH D/Scent Col. 25-Eye Candy', 100, 140.00, 125.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(143, 'SKU-00143', 'BENCH D/Scent Col. 25-Happy Hour', 2, 'Fulfillment data for BENCH D/Scent Col. 25-Happy Hour', 100, 140.00, 125.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(144, 'SKU-00144', 'BENCH D/Scent Col. 25-IndianSumm', 2, 'Fulfillment data for BENCH D/Scent Col. 25-IndianSumm', 100, 140.00, 125.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(145, 'SKU-00145', 'BENCH D/Scent Col. 25-LazyAftrn', 2, 'Fulfillment data for BENCH D/Scent Col. 25-LazyAftrn', 100, 140.00, 125.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(146, 'SKU-00146', 'BENCH D/Scent Col. 25-Nine 2 Mine', 2, 'Fulfillment data for BENCH D/Scent Col. 25-Nine 2 Mine', 100, 140.00, 125.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(147, 'SKU-00147', 'BENCH D/Scent Col. 25-Spring Brk', 2, 'Fulfillment data for BENCH D/Scent Col. 25-Spring Brk', 100, 140.00, 125.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(148, 'SKU-00148', 'BENCH D/Scent Col. 25-Sunday Mrng', 2, 'Fulfillment data for BENCH D/Scent Col. 25-Sunday Mrng', 100, 140.00, 125.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(149, 'SKU-00149', 'BENCH D/Scent Col. 50-Beach Bum', 2, 'Fulfillment data for BENCH D/Scent Col. 50-Beach Bum', 100, 268.80, 240.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(150, 'SKU-00150', 'BENCH D/Scent Col. 50-Bubble Pop', 2, 'Fulfillment data for BENCH D/Scent Col. 50-Bubble Pop', 100, 268.80, 240.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(151, 'SKU-00151', 'BENCH D/Scent Col. 50-Eye Candy', 2, 'Fulfillment data for BENCH D/Scent Col. 50-Eye Candy', 100, 268.80, 240.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(152, 'SKU-00152', 'BENCH D/Scent Col. 50-Happy Hour', 2, 'Fulfillment data for BENCH D/Scent Col. 50-Happy Hour', 100, 268.80, 240.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(153, 'SKU-00153', 'BENCH D/Scent Col. 50-IndianSumm', 2, 'Fulfillment data for BENCH D/Scent Col. 50-IndianSumm', 100, 268.80, 240.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(154, 'SKU-00154', 'BENCH D/Scent Col. 50-LazyAftrn', 2, 'Fulfillment data for BENCH D/Scent Col. 50-LazyAftrn', 100, 268.80, 240.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(155, 'SKU-00155', 'BENCH D/Scent Col. 50-Nine 2 Mine', 2, 'Fulfillment data for BENCH D/Scent Col. 50-Nine 2 Mine', 100, 268.80, 240.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(156, 'SKU-00156', 'BENCH D/Scent Col. 50-Spring Brk', 2, 'Fulfillment data for BENCH D/Scent Col. 50-Spring Brk', 100, 268.80, 240.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(157, 'SKU-00157', 'BENCH D/Scent Col. 50-Sunday Mrng', 2, 'Fulfillment data for BENCH D/Scent Col. 50-Sunday Mrng', 100, 268.80, 240.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(158, 'SKU-00158', 'BENCH D/Scent Col. 75-Happy Hour', 2, 'Fulfillment data for BENCH D/Scent Col. 75-Happy Hour', 100, 403.20, 360.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(159, 'SKU-00159', 'BENCH D/Scent Col. 75-IndianSumm', 2, 'Fulfillment data for BENCH D/Scent Col. 75-IndianSumm', 100, 403.20, 360.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(160, 'SKU-00160', 'BENCH D/Scent Col. 75-Lazy Aftrn', 2, 'Fulfillment data for BENCH D/Scent Col. 75-Lazy Aftrn', 100, 403.20, 360.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(161, 'SKU-00161', 'BENCH D/Scent Col. 75-Nine 2 Mine', 2, 'Fulfillment data for BENCH D/Scent Col. 75-Nine 2 Mine', 100, 403.20, 360.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(162, 'SKU-00162', 'BENCH D/Scent Col. 75-Sunday Mrng', 2, 'Fulfillment data for BENCH D/Scent Col. 75-Sunday Mrng', 100, 403.20, 360.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(163, 'SKU-00163', 'BENCH D/Scent Col. 125-Beach Bum', 2, 'Fulfillment data for BENCH D/Scent Col. 125-Beach Bum', 100, 672.00, 600.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(164, 'SKU-00164', 'BENCH D/Scent Col. 125-Bubble Pop', 2, 'Fulfillment data for BENCH D/Scent Col. 125-Bubble Pop', 100, 672.00, 600.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(165, 'SKU-00165', 'BENCH D/Scent Col. 125-Eye Candy', 2, 'Fulfillment data for BENCH D/Scent Col. 125-Eye Candy', 100, 672.00, 600.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(166, 'SKU-00166', 'BENCH D/Scent Col. 125-Happy Hour', 2, 'Fulfillment data for BENCH D/Scent Col. 125-Happy Hour', 100, 672.00, 600.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(167, 'SKU-00167', 'BENCH D/Scent Col. 125-IndianSum', 2, 'Fulfillment data for BENCH D/Scent Col. 125-IndianSum', 100, 672.00, 600.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(168, 'SKU-00168', 'BENCH D/Scent Col. 125-LazyAftrn', 2, 'Fulfillment data for BENCH D/Scent Col. 125-LazyAftrn', 100, 672.00, 600.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(169, 'SKU-00169', 'BENCH D/Scent Col. 125-Nine 2 Mine', 2, 'Fulfillment data for BENCH D/Scent Col. 125-Nine 2 Mine', 100, 672.00, 600.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(170, 'SKU-00170', 'BENCH D/Scent Col. 125-Spring Brk', 2, 'Fulfillment data for BENCH D/Scent Col. 125-Spring Brk', 100, 672.00, 600.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(171, 'SKU-00171', 'BENCH D/Scent Col. 125-Sunday Mrng', 2, 'Fulfillment data for BENCH D/Scent Col. 125-Sunday Mrng', 100, 672.00, 600.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(172, 'SKU-00172', 'BENZALKONIUM 30mL (LAR)', 1, 'Fulfillment data for BENZALKONIUM 30mL (LAR)', 100, 50.40, 45.00, 20, '2027-12-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(173, 'SKU-00173', 'BENZALKONIUM 60mL (LAR)', 1, 'Fulfillment data for BENZALKONIUM 60mL (LAR)', 100, 89.60, 80.00, 20, '2027-12-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(174, 'SKU-00174', 'BEROCCA Tablet 10\'s', 1, 'Fulfillment data for BEROCCA Tablet 10\'s', 100, 28.00, 25.00, 20, '2028-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(175, 'SKU-00175', 'BETADINE Antiseptic 7.5mL', 1, 'Fulfillment data for BETADINE Antiseptic 7.5mL', 100, 33.60, 30.00, 20, '2028-01-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(176, 'SKU-00176', 'BETADINE Antiseptic 60mL', 1, 'Fulfillment data for BETADINE Antiseptic 60mL', 100, 100.80, 90.00, 20, '2028-01-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(177, 'SKU-00177', 'BETADINE Antiseptic 120mL', 1, 'Fulfillment data for BETADINE Antiseptic 120mL', 100, 168.00, 150.00, 20, '2028-01-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(178, 'SKU-00178', 'BETADINE Oral 60mL', 1, 'Fulfillment data for BETADINE Oral 60mL', 100, 89.60, 80.00, 20, '2028-01-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(179, 'SKU-00179', 'BETADINE Oral 120mL', 1, 'Fulfillment data for BETADINE Oral 120mL', 100, 156.80, 140.00, 20, '2028-01-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(180, 'SKU-00180', 'BETADINE Paint 10mL', 1, 'Fulfillment data for BETADINE Paint 10mL', 100, 39.20, 35.00, 20, '2028-01-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(181, 'SKU-00181', 'BETADINE Throat Spray 50mL', 2, 'Fulfillment data for BETADINE Throat Spray 50mL', 100, 134.40, 120.00, 20, '2028-01-10', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(182, 'SKU-00182', 'BETET BALM', 1, 'Fulfillment data for BETET BALM', 100, 61.60, 55.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(183, 'SKU-00183', 'BETNOVATE Cream 5g', 1, 'Fulfillment data for BETNOVATE Cream 5g', 100, 156.80, 140.00, 20, '2028-03-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(184, 'SKU-00184', 'BETNOVATE Ointment 5g', 1, 'Fulfillment data for BETNOVATE Ointment 5g', 100, 162.40, 145.00, 20, '2028-03-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(185, 'SKU-00185', 'BIGEN Speedy (Brown Black)', 1, 'Fulfillment data for BIGEN Speedy (Brown Black)', 100, 100.80, 90.00, 20, '2029-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(186, 'SKU-00186', 'BIGEN Speedy (Dark Brown)', 1, 'Fulfillment data for BIGEN Speedy (Dark Brown)', 100, 100.80, 90.00, 20, '2029-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(187, 'SKU-00187', 'BIGEN Speedy (Light Brown)', 1, 'Fulfillment data for BIGEN Speedy (Light Brown)', 100, 100.80, 90.00, 20, '2029-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(188, 'SKU-00188', 'BIGEN Speedy (Medium Brown)', 1, 'Fulfillment data for BIGEN Speedy (Medium Brown)', 100, 100.80, 90.00, 20, '2029-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(189, 'SKU-00189', 'BIGEN Speedy (Natural Black)', 1, 'Fulfillment data for BIGEN Speedy (Natural Black)', 100, 100.80, 90.00, 20, '2029-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(190, 'SKU-00190', 'BIGEN-A (Black)', 1, 'Fulfillment data for BIGEN-A (Black)', 100, 95.20, 85.00, 20, '2029-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(191, 'SKU-00191', 'BIGEN-B (Brown Black)', 1, 'Fulfillment data for BIGEN-B (Brown Black)', 0, 95.20, 85.00, 20, '2029-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-07-28 14:48:01'),
(192, 'SKU-00192', 'BIGEN-C (Dark Brown)', 1, 'Fulfillment data for BIGEN-C (Dark Brown)', 100, 95.20, 85.00, 20, '2029-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(193, 'SKU-00193', 'BIGEN-D (Chestnut Brown)', 1, 'Fulfillment data for BIGEN-D (Chestnut Brown)', 100, 95.20, 85.00, 20, '2029-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-07-10 11:34:13'),
(194, 'SKU-00194', 'BIODERM Ointment Tube 5g', 1, 'Fulfillment data for BIODERM Ointment Tube 5g', 100, 134.40, 120.00, 20, '2028-03-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(195, 'SKU-00195', 'BIODERM Soap 60g (Beige)', 2, 'Fulfillment data for BIODERM Soap 60g (Beige)', 100, 39.20, 35.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(196, 'SKU-00196', 'BIODERM Soap 60g (Blue)', 2, 'Fulfillment data for BIODERM Soap 60g (Blue)', 100, 39.20, 35.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(197, 'SKU-00197', 'BIODERM Soap 60g (Green)', 2, 'Fulfillment data for BIODERM Soap 60g (Green)', 100, 39.20, 35.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(198, 'SKU-00198', 'BIODERM Soap 60g (Pink)', 2, 'Fulfillment data for BIODERM Soap 60g (Pink)', 100, 39.20, 35.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(199, 'SKU-00199', 'BIODERM Soap 60g (White)', 2, 'Fulfillment data for BIODERM Soap 60g (White)', 100, 39.20, 35.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(200, 'SKU-00200', 'BIODERM Soap 60g (Yellow)', 2, 'Fulfillment data for BIODERM Soap 60g (Yellow)', 100, 39.20, 35.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(201, 'SKU-00201', 'BIODERM Soap 90g (Beige)', 2, 'Fulfillment data for BIODERM Soap 90g (Beige)', 100, 56.00, 50.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(202, 'SKU-00202', 'BIODERM Soap 90g (Blue)', 2, 'Fulfillment data for BIODERM Soap 90g (Blue)', 100, 56.00, 50.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(203, 'SKU-00203', 'BIODERM Soap 90g (Green)', 2, 'Fulfillment data for BIODERM Soap 90g (Green)', 100, 56.00, 50.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(204, 'SKU-00204', 'BIODERM Soap 90g (Pink)', 2, 'Fulfillment data for BIODERM Soap 90g (Pink)', 100, 56.00, 50.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(205, 'SKU-00205', 'BIODERM Soap 90g (White)', 2, 'Fulfillment data for BIODERM Soap 90g (White)', 100, 56.00, 50.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(206, 'SKU-00206', 'BIODERM Soap 90g (Yellow)', 2, 'Fulfillment data for BIODERM Soap 90g (Yellow)', 100, 56.00, 50.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(207, 'SKU-00207', 'BIODERM Soap 135g (Beige)', 2, 'Fulfillment data for BIODERM Soap 135g (Beige)', 100, 78.40, 70.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(208, 'SKU-00208', 'BIODERM Soap 135g (Blue)', 2, 'Fulfillment data for BIODERM Soap 135g (Blue)', 100, 78.40, 70.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(209, 'SKU-00209', 'BIODERM Soap 135g (Green)', 2, 'Fulfillment data for BIODERM Soap 135g (Green)', 100, 78.40, 70.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(210, 'SKU-00210', 'BIODERM Soap 135g (Pink)', 2, 'Fulfillment data for BIODERM Soap 135g (Pink)', 100, 78.40, 70.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(211, 'SKU-00211', 'BIODERM Soap 135g (White)', 2, 'Fulfillment data for BIODERM Soap 135g (White)', 100, 78.40, 70.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(212, 'SKU-00212', 'BIODERM Soap 135g (Yellow)', 2, 'Fulfillment data for BIODERM Soap 135g (Yellow)', 100, 78.40, 70.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(213, 'SKU-00213', 'BIOFITEA Herbal Tea 30\'s', 1, 'Fulfillment data for BIOFITEA Herbal Tea 30\'s', 100, 95.20, 85.00, 20, '2029-12-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(214, 'SKU-00214', 'BIOFLU Suspension 60mL', 1, 'Fulfillment data for BIOFLU Suspension 60mL', 100, 123.20, 110.00, 20, '2027-12-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(215, 'SKU-00215', 'BIOFLU Tablet 5\'s', 1, 'Fulfillment data for BIOFLU Tablet 5\'s', 100, 28.00, 25.00, 20, '2027-12-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(216, 'SKU-00216', 'BIOFLU Tablet', 1, 'Fulfillment data for BIOFLU Tablet', 100, 24.64, 22.00, 20, '2027-12-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(217, 'SKU-00217', 'BIOGESIC 120mg/60mL (Orng)', 1, 'Fulfillment data for BIOGESIC 120mg/60mL (Orng)', 100, 42.56, 38.00, 20, '2028-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(218, 'SKU-00218', 'BIOGESIC 120mg/60mL (Stwbry)', 1, 'Fulfillment data for BIOGESIC 120mg/60mL (Stwbry)', 100, 42.56, 38.00, 20, '2028-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(219, 'SKU-00219', 'BIOGESIC 250mg/60mL (Orng)', 1, 'Fulfillment data for BIOGESIC 250mg/60mL (Orng)', 100, 61.60, 55.00, 20, '2028-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(220, 'SKU-00220', 'BIOGESIC 250mg/60mL (Stwbry)', 1, 'Fulfillment data for BIOGESIC 250mg/60mL (Stwbry)', 100, 61.60, 55.00, 20, '2028-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(221, 'SKU-00221', 'BIOGESIC Drops (Orange)', 1, 'Fulfillment data for BIOGESIC Drops (Orange)', 99, 67.20, 60.00, 20, '2028-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 12:29:19'),
(222, 'SKU-00222', 'BIOGESIC Tablet', 1, 'Fulfillment data for BIOGESIC Tablet', 100, 8.96, 8.00, 20, '2028-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(223, 'SKU-00223', 'BISOLVON Syrup 4mg/60mL', 1, 'Fulfillment data for BISOLVON Syrup 4mg/60mL', 100, 106.40, 95.00, 20, '2027-11-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(224, 'SKU-00224', 'BISOLVON Syrup 4mg/120mL', 1, 'Fulfillment data for BISOLVON Syrup 4mg/120mL', 100, 201.60, 180.00, 20, '2027-11-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(225, 'SKU-00225', 'BISOLVON Syrup 8mg/60mL', 1, 'Fulfillment data for BISOLVON Syrup 8mg/60mL', 100, 117.60, 105.00, 20, '2027-11-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(226, 'SKU-00226', 'BISOLVON Syrup 8mg/125mL', 1, 'Fulfillment data for BISOLVON Syrup 8mg/125mL', 100, 235.20, 210.00, 20, '2027-11-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(227, 'SKU-00227', 'BISOLVON Tablet 8mg 120\'s', 1, 'Fulfillment data for BISOLVON Tablet 8mg 120\'s', 100, 470.40, 420.00, 20, '2028-02-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(228, 'SKU-00228', 'BL Cream 7g', 1, 'Fulfillment data for BL Cream 7g', 100, 95.20, 85.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(229, 'SKU-00229', 'BL Soap 115g', 2, 'Fulfillment data for BL Soap 115g', 100, 50.40, 45.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(230, 'SKU-00230', 'BL Soap Papaya 115g', 2, 'Fulfillment data for BL Soap Papaya 115g', 100, 50.40, 45.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(231, 'SKU-00231', 'BONAKID 180g', 1, 'Fulfillment data for BONAKID 180g', 100, 179.20, 160.00, 20, '2029-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(232, 'SKU-00232', 'BONAKID 400g', 1, 'Fulfillment data for BONAKID 400g', 100, 358.40, 320.00, 20, '2029-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(233, 'SKU-00233', 'BONAKID Pre-School 400g', 1, 'Fulfillment data for BONAKID Pre-School 400g', 99, 380.80, 340.00, 20, '2029-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-07-24 12:31:37'),
(234, 'SKU-00234', 'BONAMIL 180g', 1, 'Fulfillment data for BONAMIL 180g', 100, 173.60, 155.00, 20, '2029-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(235, 'SKU-00235', 'BONAMIL 400g', 1, 'Fulfillment data for BONAMIL 400g', 100, 347.20, 310.00, 20, '2029-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(236, 'SKU-00236', 'BONAMINE Chew Tab.(Adult) 9+1', 1, 'Fulfillment data for BONAMINE Chew Tab.(Adult) 9+1', 98, 28.00, 25.00, 20, '2028-03-15', 0, NULL, '2026-03-20 11:51:48', '2026-07-24 12:31:37'),
(237, 'SKU-00237', 'BONAMINE Chew Tablet (Adult)', 1, 'Fulfillment data for BONAMINE Chew Tablet (Adult)', 100, 28.00, 25.00, 20, '2028-03-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(238, 'SKU-00238', 'BONAMINE Chew Tablet (Kids)', 1, 'Fulfillment data for BONAMINE Chew Tablet (Kids)', 100, 24.64, 22.00, 20, '2028-03-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(239, 'SKU-00239', 'BONIL Solution', 1, 'Fulfillment data for BONIL Solution', 100, 95.20, 85.00, 20, '2028-02-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(240, 'SKU-00240', 'BONNA 180g', 1, 'Fulfillment data for BONNA 180g', 100, 173.60, 155.00, 20, '2029-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(241, 'SKU-00241', 'BONNA 400g', 1, 'Fulfillment data for BONNA 400g', 89, 347.20, 310.00, 20, '2029-05-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 12:29:19'),
(242, 'SKU-00242', 'BRAVO For Men Capsule 2\'s', 1, 'Fulfillment data for BRAVO For Men Capsule 2\'s', 100, 39.20, 35.00, 20, '2028-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(243, 'SKU-00243', 'BREZU 5mcg/MI syrup 60mL', 1, 'Fulfillment data for BREZU 5mcg/MI syrup 60mL', 2, 168.00, 150.00, 20, '2027-12-15', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 12:28:12'),
(244, 'SKU-00244', 'BRICANYL Expectorant Syrup 60mL', 1, 'Fulfillment data for BRICANYL Expectorant Syrup 60mL', 99, 156.80, 140.00, 20, '2027-11-20', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 12:28:45'),
(245, 'SKU-00245', 'BURN Ointment 15g (UH)', 1, 'Fulfillment data for BURN Ointment 15g (UH)', 0, 134.40, 120.00, 20, '2028-01-01', 0, NULL, '2026-03-20 11:51:48', '2026-07-28 14:47:28'),
(246, 'SKU-00246', 'BUSCOPAN Plus Tablet', 1, 'Fulfillment data for BUSCOPAN Plus Tablet', 5, 13.44, 12.00, 20, '2028-02-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 12:18:00'),
(247, 'SKU-00247', 'BUSCOPAN Tablet 4\'s', 1, 'Fulfillment data for BUSCOPAN Tablet 4\'s', 0, 5.60, 5.00, 20, '2028-02-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 12:18:00'),
(248, 'SKU-00248', 'BUSCOPAN Venus Tablet', 1, 'Fulfillment data for BUSCOPAN Venus Tablet', 100, 6.72, 6.00, 20, '2028-02-01', 0, NULL, '2026-03-20 11:51:48', '2026-07-18 02:28:51'),
(249, 'SKU-00249', 'C.Y.GABRIEL Soap 60-Medicated', 2, 'Fulfillment data for C.Y.GABRIEL Soap 60-Medicated', 100, 44.80, 40.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48'),
(250, 'SKU-00250', 'C.Y.GABRIEL Soap 60-Papaya', 2, 'Fulfillment data for C.Y.GABRIEL Soap 60-Papaya', 100, 44.80, 40.00, 20, '2029-06-01', 0, NULL, '2026-03-20 11:51:48', '2026-03-20 11:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `cashier_id` int DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `amount_received` decimal(10,2) DEFAULT NULL,
  `change_amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'completed',
  `transaction_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `cashier_id`, `total_amount`, `payment_method`, `amount_received`, `change_amount`, `status`, `transaction_date`) VALUES
(128, 1, 28.00, 'cash', 100.00, 72.00, 'completed', '2026-03-20 12:00:15'),
(129, 1, 1836.80, 'cash', 1900.00, 63.20, 'completed', '2026-03-20 12:18:00'),
(130, 1, 772.80, 'cash', 1000.00, 227.20, 'completed', '2026-03-20 12:27:41'),
(131, 1, 16464.00, 'cash', 17000.00, 536.00, 'completed', '2026-03-20 12:28:12'),
(132, 1, 156.80, 'cash', 200.00, 43.20, 'completed', '2026-03-20 12:28:45'),
(133, 1, 3539.20, 'cash', 4000.00, 460.80, 'completed', '2026-03-20 12:29:19'),
(134, 1, 13171.20, 'cash', 14000.00, 828.80, 'completed', '2026-03-20 12:29:57'),
(135, 1, 95.20, 'cash', 100.00, 4.80, 'voided', '2026-07-10 11:33:14'),
(136, 1, 33.60, 'cash', 100.00, 66.40, 'voided', '2026-07-18 02:28:07'),
(137, 1, 408.80, 'cash', 500.00, 91.20, 'completed', '2026-07-24 12:31:37'),
(138, 1, 1075.20, 'cash', 1500.00, 424.80, 'completed', '2026-07-28 14:41:17'),
(139, 1, 134.40, 'cash', 200.00, 65.60, 'completed', '2026-07-28 14:47:28'),
(140, 1, 9520.00, 'cash', 10000.00, 480.00, 'completed', '2026-07-28 14:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price_at_sale` decimal(10,2) NOT NULL,
  `cost_at_sale` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) GENERATED ALWAYS AS ((`quantity` * `price_at_sale`)) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_items`
--

INSERT INTO `transaction_items` (`id`, `transaction_id`, `product_id`, `quantity`, `price_at_sale`, `cost_at_sale`) VALUES
(1, 128, 236, 1, 28.00, 25.00),
(2, 129, 247, 100, 5.60, 5.00),
(3, 129, 246, 95, 13.44, 12.00),
(4, 130, 245, 1, 134.40, 120.00),
(5, 130, 241, 1, 347.20, 310.00),
(6, 130, 120, 1, 291.20, 260.00),
(7, 131, 243, 98, 168.00, 150.00),
(8, 132, 244, 1, 156.80, 140.00),
(9, 133, 241, 10, 347.20, 310.00),
(10, 133, 221, 1, 67.20, 60.00),
(11, 134, 245, 98, 134.40, 120.00),
(319, 135, 193, 1, 95.20, 85.00),
(320, 136, 248, 5, 6.72, 6.00),
(321, 137, 236, 1, 28.00, 25.00),
(322, 137, 233, 1, 380.80, 340.00),
(323, 138, 99, 3, 358.40, 320.00),
(324, 139, 245, 1, 134.40, 120.00),
(325, 140, 191, 100, 95.20, 85.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `full_name`, `email`, `last_login_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$Trff1mtH5AkDfBflq5Jwru9OolDsnpq.Xj.w0zOdHJt2r6eB0jp4W', 'Administrator', 'admin@zoepharmacy.com', '2026-03-06 11:45:10', '2026-02-09 12:28:23', '2026-07-28 14:36:32'),
(2, 'owner', '$2y$12$.d/VfW05ikLAmKVA4YalYO3jNJE7ZP1xkfjt8UoiIWsxJ0Thu6Oqu', 'Zoe Owner', 'owner@zoepharmacy.com', '2026-07-28 14:40:41', '2026-07-28 14:05:25', '2026-07-28 14:40:41'),
(3, 'Vince', '$2y$12$pVj0pFE1c21XqFRc4OvMX.vuzFwgE1pPfvL40Ncf1pkHsrlsyx5W.', 'Vince', 'gipayavincee@gmail.com', NULL, '2026-07-28 14:24:52', '2026-07-28 14:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_activity_logs`
--

CREATE TABLE `user_activity_logs` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_daily_sales_profit`
-- (See below for the actual view)
--
CREATE TABLE `view_daily_sales_profit` (
`gross_profit` decimal(43,2)
,`gross_revenue` decimal(32,2)
,`sale_date` date
,`total_cost` decimal(42,2)
,`total_transactions` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_product_performance`
-- (See below for the actual view)
--
CREATE TABLE `view_product_performance` (
`category_name` varchar(50)
,`id` int
,`name` varchar(150)
,`total_revenue` decimal(32,2)
,`total_sold` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_stock_status`
-- (See below for the actual view)
--
CREATE TABLE `view_stock_status` (
`id` int
,`name` varchar(150)
,`quantity` int
,`reorder_level` int
,`sku` varchar(50)
,`status` varchar(12)
);

-- --------------------------------------------------------

--
-- Structure for view `view_daily_sales_profit`
--
DROP TABLE IF EXISTS `view_daily_sales_profit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_daily_sales_profit`  AS SELECT cast(`t`.`transaction_date` as date) AS `sale_date`, count(`t`.`id`) AS `total_transactions`, sum(`t`.`total_amount`) AS `gross_revenue`, sum((`ti`.`quantity` * `ti`.`cost_at_sale`)) AS `total_cost`, (sum(`t`.`total_amount`) - sum((`ti`.`quantity` * `ti`.`cost_at_sale`))) AS `gross_profit` FROM (`transactions` `t` join `transaction_items` `ti` on((`t`.`id` = `ti`.`transaction_id`))) GROUP BY cast(`t`.`transaction_date` as date) ;

-- --------------------------------------------------------

--
-- Structure for view `view_product_performance`
--
DROP TABLE IF EXISTS `view_product_performance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_product_performance`  AS SELECT `p`.`id` AS `id`, `p`.`name` AS `name`, `c`.`name` AS `category_name`, sum(`ti`.`quantity`) AS `total_sold`, sum(`ti`.`subtotal`) AS `total_revenue` FROM ((`products` `p` left join `transaction_items` `ti` on((`p`.`id` = `ti`.`product_id`))) left join `categories` `c` on((`p`.`category_id` = `c`.`id`))) GROUP BY `p`.`id`, `p`.`name`, `c`.`name` ORDER BY sum(`ti`.`quantity`) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `view_stock_status`
--
DROP TABLE IF EXISTS `view_stock_status`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_stock_status`  AS SELECT `products`.`id` AS `id`, `products`.`sku` AS `sku`, `products`.`name` AS `name`, `products`.`quantity` AS `quantity`, `products`.`reorder_level` AS `reorder_level`, (case when (`products`.`quantity` = 0) then 'Out of Stock' when (`products`.`quantity` <= `products`.`reorder_level`) then 'Low Stock' else 'In Stock' end) AS `status` FROM `products` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `deleted_products`
--
ALTER TABLE `deleted_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `error_logs`
--
ALTER TABLE `error_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_source` (`source`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `inventory_loss`
--
ALTER TABLE `inventory_loss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `reported_by` (`reported_by`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `idx_products_sku` (`sku`),
  ADD KEY `idx_products_name` (`name`),
  ADD KEY `idx_expiry_date` (`expiry_date`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cashier_id` (`cashier_id`),
  ADD KEY `idx_transactions_date` (`transaction_date`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deleted_products`
--
ALTER TABLE `deleted_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `error_logs`
--
ALTER TABLE `error_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `inventory_loss`
--
ALTER TABLE `inventory_loss`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory_loss`
--
ALTER TABLE `inventory_loss`
  ADD CONSTRAINT `inventory_loss_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventory_loss_ibfk_2` FOREIGN KEY (`reported_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`cashier_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD CONSTRAINT `transaction_items_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  ADD CONSTRAINT `user_activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
