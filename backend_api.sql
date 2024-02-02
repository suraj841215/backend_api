-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 06:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `mobile`, `username`, `password`, `token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '352-482-5869', 'admin', '$2y$10$YQ.kdl2wXoJKQKPNgjLycu6sHs9S3iGt8NozHlCh3LMDnXetlHPSC', 'GZaDzc3Xl9', '2024-01-28 02:23:41', '2024-01-28 02:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2014_10_12_000000_create_users_table', 1),
(26, '2014_10_12_100000_create_password_resets_table', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2023_08_08_065707_create_admin_table', 1),
(30, '2023_08_11_091126_create_category_table', 1),
(31, '2023_09_08_054545_create_sub_categories_table', 2),
(32, '2023_09_08_122227_create_child_categories_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(22, 'App\\Models\\Admin', 5, 'auth-token', '5db5e2242de81829e1b16f430a2a724db6c240d14f3bd7db6b40db68e09ed0de', '[\"*\"]', '2023-09-22 03:49:36', '2023-09-20 04:54:57', '2023-09-22 03:49:36'),
(26, 'App\\Models\\Admin', 5, 'auth-token', '822398fecceb2bbcb829caacfed2b47c991018056af2392ee39e07198e56a5c3', '[\"*\"]', '2023-09-24 07:21:39', '2023-09-24 02:34:45', '2023-09-24 07:21:39'),
(45, 'App\\Models\\Admin', 5, 'auth-token', 'b317f4939c26253bca60db70bc29758e190fa2b0a10d9781df1844057a4054df', '[\"*\"]', '2023-09-26 07:31:27', '2023-09-26 07:06:27', '2023-09-26 07:31:27'),
(47, 'App\\Models\\Admin', 5, 'auth-token', 'bd6409a293b6e71626fdd4eea97fa4c47de647a1547f687697bcdef33f47dcc4', '[\"*\"]', '2023-09-26 10:17:19', '2023-09-26 10:07:49', '2023-09-26 10:17:19'),
(49, 'App\\Models\\Customer', 1, 'auth-token', '26fef75140dc00841a2723b71092be9205e6294785ac0269757e5d09ad00a6ff', '[\"*\"]', NULL, '2023-10-06 02:19:28', '2023-10-06 02:19:28'),
(50, 'App\\Models\\Customer', 1, 'auth-token', '769f1937b8610dba157d1cd41bad25cd0795654300c9a0be9d123bbad5f686a9', '[\"*\"]', NULL, '2023-10-06 02:20:06', '2023-10-06 02:20:06'),
(51, 'App\\Models\\Customer', 1, 'auth-token', '7f472b248e63d87d3403efebd5e60f6785d914c5fed0e0607efa67fbefde1914', '[\"*\"]', NULL, '2023-10-06 02:21:37', '2023-10-06 02:21:37'),
(52, 'App\\Models\\Customer', 1, 'auth-token', '758ffaac960a1d77863622dd03c667b58c9481750125af1b2cd7ab843ec4e769', '[\"*\"]', NULL, '2023-10-06 02:26:14', '2023-10-06 02:26:14'),
(53, 'App\\Models\\Customer', 1, 'auth-token', '921814a8b33fdf75a8333979cb048fe6d8cde9a0e43a2c5fb9c59a45d9c79b36', '[\"*\"]', NULL, '2023-10-06 02:26:42', '2023-10-06 02:26:42'),
(54, 'App\\Models\\Customer', 1, 'auth-token', '0510b9a5f67bbbad7aee044b3638a2daf32ba6408e099339639588cc37659041', '[\"*\"]', NULL, '2023-10-06 03:22:13', '2023-10-06 03:22:13'),
(55, 'App\\Models\\Customer', 1, 'auth-token', '0a516972d955c78eff82e002e86f90d76998d0368f3539c3c32627a4a555f562', '[\"*\"]', NULL, '2023-10-06 03:23:59', '2023-10-06 03:23:59'),
(56, 'App\\Models\\Customer', 1, 'auth-token', '4ae3de7425fc633332613d0c67a288956d3f90381615650c74af938713156724', '[\"*\"]', '2023-10-06 03:37:32', '2023-10-06 03:27:17', '2023-10-06 03:37:32'),
(57, 'App\\Models\\Customer', 1, 'auth-token', 'f5862d3d89a9eb93212db67c36499b889c5fe2b97e2af692f80fc6e54d749058', '[\"*\"]', '2023-10-06 04:15:42', '2023-10-06 03:37:44', '2023-10-06 04:15:42'),
(58, 'App\\Models\\Customer', 1, 'auth-token', '7104f32a03342ea6411eadcae14538deae354f3e1656e28a4033dbfcd72ca126', '[\"*\"]', '2023-10-09 07:13:49', '2023-10-08 08:09:07', '2023-10-09 07:13:49'),
(59, 'App\\Models\\Customer', 1, 'auth-token', '1f17d22529c13f1b19ca0e03b4c5c672891898f1fe52b055380e120ffdcb6b76', '[\"*\"]', NULL, '2023-10-08 08:21:04', '2023-10-08 08:21:04'),
(60, 'App\\Models\\Customer', 1, 'auth-token', 'd28079f83a2728dc15d872723f6a140e6b4dc744722575abf6448d97d49a7cd7', '[\"*\"]', NULL, '2023-10-08 08:30:44', '2023-10-08 08:30:44'),
(61, 'App\\Models\\Customer', 1, 'auth-token', 'ca234e6616345edc0db8feec2159e2d1c9ddcd7655b051f93f1bc0ebaa90aeb6', '[\"*\"]', NULL, '2023-10-08 08:30:46', '2023-10-08 08:30:46'),
(62, 'App\\Models\\Customer', 1, 'auth-token', '161a0a1ed7009049059057fc6cd342c7ecbccf51fc7a7511a9e05eac50e71d5f', '[\"*\"]', NULL, '2023-10-08 08:30:55', '2023-10-08 08:30:55'),
(63, 'App\\Models\\Customer', 1, 'auth-token', '5f134e724a01353bf2e9a0cb94299a3eb8b3fb61174f0f8b88305d798195810a', '[\"*\"]', NULL, '2023-10-08 08:31:01', '2023-10-08 08:31:01'),
(64, 'App\\Models\\Customer', 1, 'auth-token', '340acfd899535d9ac126ea827f0dbc23132f39ba7340c33c1c4a489ef83d7335', '[\"*\"]', NULL, '2023-10-08 08:31:36', '2023-10-08 08:31:36'),
(65, 'App\\Models\\Customer', 1, 'auth-token', 'dd8907087c14b7faa0f1a1f964380eab8f253cae186f8b0ed3b2baaf4ba5fbbd', '[\"*\"]', NULL, '2023-10-08 08:32:35', '2023-10-08 08:32:35'),
(66, 'App\\Models\\Customer', 1, 'auth-token', 'fad129894436566ffe9b515af7298a16ab8675c4ad97faeae3137514be2a0c0a', '[\"*\"]', NULL, '2023-10-08 08:34:06', '2023-10-08 08:34:06'),
(67, 'App\\Models\\Customer', 1, 'auth-token', '54865c5986e31d860a628632b319c156c6f58409ed8d0256e5e921ecaad522ad', '[\"*\"]', NULL, '2023-10-08 08:34:37', '2023-10-08 08:34:37'),
(68, 'App\\Models\\Customer', 1, 'auth-token', 'b91340b2f7f28cfc35905194c8f1afbdd31f9d0520720dac2514bfcd35eed57a', '[\"*\"]', NULL, '2023-10-08 08:36:49', '2023-10-08 08:36:49'),
(69, 'App\\Models\\Customer', 1, 'auth-token', 'e53c02f4ba6e8ba46f7205434371a98dd54dc7734b8150dab5ab1861fd09c6d0', '[\"*\"]', NULL, '2023-10-08 08:37:48', '2023-10-08 08:37:48'),
(70, 'App\\Models\\Customer', 1, 'auth-token', '6a36270cb83ed7db1d43add0859c8318f0433c13a2148921e943f5fedc418e8c', '[\"*\"]', NULL, '2023-10-08 08:38:25', '2023-10-08 08:38:25'),
(71, 'App\\Models\\Customer', 2, 'auth-token', '4ed26870d58598622cd27386610a7ff4f14c1c2627607b59b4a59cb220eec290', '[\"*\"]', NULL, '2023-10-08 08:39:22', '2023-10-08 08:39:22'),
(72, 'App\\Models\\Customer', 1, 'auth-token', '6d734b7fc1e1b8e9a9454b942c52b9a93c31ecff0f7bdf1688b075942617ec64', '[\"*\"]', '2023-10-09 01:46:50', '2023-10-08 08:57:30', '2023-10-09 01:46:50'),
(73, 'App\\Models\\Customer', 1, 'auth-token', 'bfa3ab0ae0936c849abd0465e4b98a032a6c66f72337828a0da3e3ba518916c3', '[\"*\"]', '2023-10-09 05:00:32', '2023-10-09 01:49:47', '2023-10-09 05:00:32'),
(74, 'App\\Models\\Customer', 1, 'auth-token', 'c0aea3fd1995718483e5d04d6f7de98809199bb5156ba7161d45bd21b24e5a57', '[\"*\"]', '2023-10-09 07:09:13', '2023-10-09 05:04:53', '2023-10-09 07:09:13'),
(75, 'App\\Models\\Customer', 4, 'auth-token', '35ad61ddd668cf50681e8ddccf91767346bf665f8fe79885440db8b503e6c1ae', '[\"*\"]', '2023-10-09 07:19:39', '2023-10-09 07:18:15', '2023-10-09 07:19:39'),
(139, 'App\\Models\\User', 18, 'auth-token', '1398783c5b0fabf1a192d192c09ece36309e6a0c84051fe73866017a55d8102d', '[\"*\"]', '2023-11-14 13:01:59', '2023-11-14 12:30:15', '2023-11-14 13:01:59'),
(140, 'App\\Models\\User', 19, 'auth-token', '9187bb89b72b87e1b7346c73bbf820f805ac74cb652e56d6d64427b6392c707c', '[\"*\"]', NULL, '2023-11-14 12:31:44', '2023-11-14 12:31:44'),
(193, 'App\\Models\\Admin', 5, 'auth-token', '141f744ba6c79b979bf67c3db732c2ae13c22b9434fa5d260cadaa124e2a3b8e', '[\"*\"]', '2023-11-17 06:09:24', '2023-11-17 06:07:15', '2023-11-17 06:09:24'),
(201, 'App\\Models\\User', 21, 'auth-token', 'dd4173b2ca8e84baef084512510c9c953fa06119558ec4858eb433111bf82fba', '[\"*\"]', '2023-11-18 16:33:32', '2023-11-18 15:49:15', '2023-11-18 16:33:32'),
(207, 'App\\Models\\User', 22, 'auth-token', '9dc346b82a6cc9a3fe957ebd9d50e04cd8a23ab9fd9ac739d0d82548f9d9c5aa', '[\"*\"]', '2023-11-18 16:30:34', '2023-11-18 16:30:05', '2023-11-18 16:30:34'),
(214, 'App\\Models\\User', 17, 'auth-token', 'd669ffe96baa6b9848fa3df81b768c6ccb0717b1a4357113c9d0da7b33dbff8b', '[\"*\"]', NULL, '2023-11-20 11:29:00', '2023-11-20 11:29:00'),
(215, 'App\\Models\\User', 17, 'auth-token', 'd09e7a588c3f212f408cdaf5aadd1b8ba71946337b91c722221e3a07decd815e', '[\"*\"]', '2023-11-20 11:37:01', '2023-11-20 11:29:04', '2023-11-20 11:37:01'),
(219, 'App\\Models\\User', 23, 'auth-token', '90e6ab2d09dc87c6786d45a00aaa62b7fa81def3e08343360e6b78fffbe76686', '[\"*\"]', NULL, '2023-11-20 12:02:00', '2023-11-20 12:02:00'),
(221, 'App\\Models\\User', 17, 'auth-token', '33b3865fa601a631464beb16707e32cc583165936d8eeab7aa96bdedd2a871b5', '[\"*\"]', NULL, '2023-11-22 10:31:27', '2023-11-22 10:31:27'),
(223, 'App\\Models\\Admin', 5, 'auth-token', '0478e8fd99e2fd16646a31e435b0074f2f0fb1324b08f7ab6fd3ea5519871702', '[\"*\"]', '2023-11-23 06:20:05', '2023-11-22 12:43:33', '2023-11-23 06:20:05'),
(225, 'App\\Models\\User', 25, 'auth-token', '7a8516aacd59f24ac1b2fdbb4bd8f25bcec9d6d9e89ea566781e3ebd69814fc5', '[\"*\"]', NULL, '2023-11-22 12:59:07', '2023-11-22 12:59:07'),
(251, 'App\\Models\\Admin', 5, 'auth-token', 'd008e6ac160fcb0f25ba6befe81c09b353190e98fdc54642cd4749f51e5bc95f', '[\"*\"]', '2023-11-29 09:36:58', '2023-11-29 09:14:15', '2023-11-29 09:36:58'),
(293, 'App\\Models\\Admin', 5, 'auth-token', 'ea6d99fb1737634aa0b977c9533b818295bb84e7feda385fcb8db21bed944d29', '[\"*\"]', '2023-11-30 12:59:07', '2023-11-30 11:49:14', '2023-11-30 12:59:07'),
(309, 'App\\Models\\Admin', 5, 'auth-token', '743c4e1986331ee83901c7bc244ef806713ebc14ef3dc0f3b747ab8c15bf79df', '[\"*\"]', '2023-12-05 10:41:52', '2023-12-05 07:46:58', '2023-12-05 10:41:52'),
(317, 'App\\Models\\Admin', 1, 'auth-token', '8eec9b116b8893688c1e024110893bd36778f91a788db1d94a0c2eacd1cbc4a4', '[\"*\"]', '2023-12-05 13:13:51', '2023-12-05 11:23:01', '2023-12-05 13:13:51'),
(327, 'App\\Models\\Admin', 5, 'auth-token', '08606e5ba4f044fcc89d3e1d2c457827883480ed6870ae041eca935f82ddee0c', '[\"*\"]', '2023-12-05 12:50:21', '2023-12-05 12:10:30', '2023-12-05 12:50:21'),
(334, 'App\\Models\\Admin', 1, 'auth-token', 'fcccf8a39b3676a810594a3f8f5eb734867241d9453ebb765ad9bc551fb784cf', '[\"*\"]', '2024-01-31 04:43:33', '2024-01-31 03:57:10', '2024-01-31 04:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Today is the best day ever and tomorrow\'s going to be even better', '2024-01-30 04:19:01', '2024-01-31 04:43:33'),
(2, 'testing1', '2024-01-30 04:51:04', '2024-01-30 05:15:47'),
(3, 'I want the world to be better! All I want is positive! All I want is dopeness!', '2024-01-31 03:57:51', '2024-01-31 03:57:51'),
(4, 'Trust me ... I won\'t stop', '2024-01-31 04:14:13', '2024-01-31 04:14:13'),
(5, 'My mama was a\' English teacher. I know how to use correct English but sometimes I just don\'t feel like it aaaand I ain\'t got to', '2024-01-31 04:15:23', '2024-01-31 04:15:23'),
(6, 'I\'m going to personally see to it that Taylor Swift gets her masters back. Scooter is a close family friend', '2024-01-31 04:15:43', '2024-01-31 04:15:43'),
(7, 'Have you ever thought you were in love with someone but then realized you were just staring in a mirror for 20 minutes', '2024-01-31 04:15:51', '2024-01-31 04:15:51'),
(8, 'Culture is the most powerful force in humanity under God', '2024-01-31 04:15:57', '2024-01-31 04:15:57'),
(9, 'I feel like I\'m too busy writing history to read it.', '2024-01-31 04:16:05', '2024-01-31 04:16:05'),
(10, 'Keep your nose out the sky, keep your heart to god, and keep your face to the rising sun.', '2024-01-31 04:16:11', '2024-01-31 04:16:11'),
(11, 'I still think I am the greatest.', '2024-01-31 04:16:17', '2024-01-31 04:16:17'),
(12, 'I wish I had a friend like me', '2024-01-31 04:16:24', '2024-01-31 04:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name_of_entity` varchar(255) DEFAULT NULL,
  `rep_name` varchar(255) DEFAULT NULL,
  `mobile` bigint(20) NOT NULL,
  `alternate_mobile` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gst_no` varchar(255) DEFAULT NULL,
  `pan_no` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `aadhaar_card_number` bigint(20) DEFAULT NULL,
  `pan_card_image` varchar(255) DEFAULT NULL,
  `gst_image` varchar(255) DEFAULT NULL,
  `aadhaar_card_front_image` varchar(255) DEFAULT NULL,
  `aadhaar_card_back_image` varchar(255) DEFAULT NULL,
  `daf` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `cheque` varchar(255) DEFAULT NULL,
  `company_image` varchar(255) DEFAULT NULL,
  `signature_image` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_account` int(11) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(30) DEFAULT NULL,
  `profile_status` enum('FILLED','NOT FILLED') NOT NULL DEFAULT 'NOT FILLED',
  `kyc_status` enum('VERIFIED','NOT VERIFIED','SEND FOR APPROVAL') NOT NULL DEFAULT 'NOT VERIFIED',
  `bank_status` enum('VERIFIED','NOT VERIFIED','SEND FOR APPROVAL') NOT NULL DEFAULT 'NOT VERIFIED',
  `account_status` enum('ACTIVATE','DEACTIVATE') NOT NULL DEFAULT 'DEACTIVATE' COMMENT 'account status means user own account activate or deactivate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_type` enum('SELLER','BUYER','BOTH','NETWORKER') DEFAULT NULL,
  `mobile_verify` enum('YES','NO') DEFAULT 'NO',
  `otp` int(11) DEFAULT NULL,
  `otp_expiry` int(11) DEFAULT NULL,
  `referral_code` varchar(50) DEFAULT NULL,
  `referral_by` varchar(50) DEFAULT NULL,
  `become_a_seller` enum('0','1','2','3') NOT NULL DEFAULT '0' COMMENT '0 for nothing, 1 for request to admin, 2 for accept, 3 for reject'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `user_type` (`user_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
