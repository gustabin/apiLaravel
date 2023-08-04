-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2023 at 11:55 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_02_180603_create_blogs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 2, 'auth_token', 'aeeac0e49743a043034c5b9d1b216287cf7f648fec1cd8b1f84fbf7d59b6ad1e', '[\"*\"]', '2023-08-02 21:33:57', NULL, '2023-08-02 21:27:52', '2023-08-02 21:33:57'),
(3, 'App\\Models\\User', 2, 'auth_token', '693d39cf264ea716f2d1a546ec3ad954038267a9ab8176e5595019f9963577dc', '[\"*\"]', NULL, NULL, '2023-08-02 21:33:19', '2023-08-02 21:33:19'),
(4, 'App\\Models\\User', 1, 'auth_token', '8e1e04e43d4ea724e0fcd920e25d678038fa62a9a8f928834b0f4fdef5331501', '[\"*\"]', '2023-08-02 21:57:24', NULL, '2023-08-02 21:34:54', '2023-08-02 21:57:24'),
(5, 'App\\Models\\User', 2, 'auth_token', 'd97b1467cd5c5404c164514322aed7793e830be2f1844789da5c4f811cc0e8bc', '[\"*\"]', '2023-08-02 21:57:02', NULL, '2023-08-02 21:42:10', '2023-08-02 21:57:02'),
(6, 'App\\Models\\User', 2, 'auth_token', '56f7ebee844b6d0ce7424db7481128d9e778ae1a9be2bc8b4d187a394c89885a', '[\"*\"]', '2023-08-02 22:09:04', NULL, '2023-08-02 21:56:50', '2023-08-02 22:09:04'),
(7, 'App\\Models\\User', 2, 'auth_token', 'fde283de3d3448cccdf29873a1b46d49d3b429c336ca835123e065b9b0bb36c9', '[\"*\"]', NULL, NULL, '2023-08-02 22:07:20', '2023-08-02 22:07:20'),
(8, 'App\\Models\\User', 11, 'auth_token', '4622ea53dfff0192f67befce52f077de788068ee5aa0782d93cb81568782bb70', '[\"*\"]', NULL, NULL, '2023-08-04 21:10:41', '2023-08-04 21:10:41'),
(9, 'App\\Models\\User', 11, 'auth_token', 'be06efe15b22f51630b720fed737f044b660989f894552f28d7b60a5c9fb78bc', '[\"*\"]', NULL, NULL, '2023-08-04 21:11:05', '2023-08-04 21:11:05'),
(10, 'App\\Models\\User', 11, 'auth_token', '2b32400ca84754f528cf5d100619d54f4fe550d1078b6d3aeb7ba9ca5baaf802', '[\"*\"]', NULL, NULL, '2023-08-04 21:12:01', '2023-08-04 21:12:01'),
(11, 'App\\Models\\User', 11, 'auth_token', '5a784c60fd4d6c921418eab47272e7a64f85c136ed593f6a746eaa2e22ff79e1', '[\"*\"]', NULL, NULL, '2023-08-04 21:18:18', '2023-08-04 21:18:18'),
(12, 'App\\Models\\User', 11, 'auth_token', '4a59fe8f4b78e7eea1dce309942658ed15d2b3c74c6f29ce111ceeb2dea350e9', '[\"*\"]', NULL, NULL, '2023-08-04 21:18:56', '2023-08-04 21:18:56'),
(13, 'App\\Models\\User', 11, 'auth_token', '2ae95fe8f8d4f1aa8326d1af89f587c79bdcfb7e362c8b7a0eeae9e00a574e6f', '[\"*\"]', NULL, NULL, '2023-08-04 21:19:11', '2023-08-04 21:19:11'),
(14, 'App\\Models\\User', 11, 'auth_token', '7736b9c6fa5e08dad3e0985a975ca187f91fedc5c7d559892b513c5559e202b8', '[\"*\"]', NULL, NULL, '2023-08-04 21:19:44', '2023-08-04 21:19:44'),
(15, 'App\\Models\\User', 11, 'auth_token', '83230a7b356dcf1fbc411e99637ae94365bfb8fe8e651515ff7de5e5d323d6f6', '[\"*\"]', NULL, NULL, '2023-08-04 21:20:55', '2023-08-04 21:20:55'),
(16, 'App\\Models\\User', 11, 'auth_token', 'c018fdf85f70a3c5bd1a2cd74a1da62baf5ebe6da2f3abbc28dc058e1284dc2f', '[\"*\"]', NULL, NULL, '2023-08-04 21:59:51', '2023-08-04 21:59:51'),
(17, 'App\\Models\\User', 2, 'auth_token', 'c8ab0e6359c968d2e05f201d58226c62c77f9193e0aa7c65fc0fe517f9e9c7e2', '[\"*\"]', NULL, NULL, '2023-08-04 22:00:07', '2023-08-04 22:00:07'),
(18, 'App\\Models\\User', 11, 'auth_token', '008ad2599f1312cc23887069bf956a18cf9c544b79f33c3746b41088b61de8a6', '[\"*\"]', NULL, NULL, '2023-08-04 22:20:04', '2023-08-04 22:20:04'),
(19, 'App\\Models\\User', 2, 'auth_token', 'f45fedcaa7f723ed33006e2f7f402dc95e9dfe2f00a5e922c98dee1b33a35939', '[\"*\"]', NULL, NULL, '2023-08-04 22:20:24', '2023-08-04 22:20:24'),
(20, 'App\\Models\\User', 11, 'auth_token', '64680e84042a69401ae4b514bc5790763a409214212f46db85a61435bd4096fe', '[\"*\"]', NULL, NULL, '2023-08-04 22:20:49', '2023-08-04 22:20:49'),
(21, 'App\\Models\\User', 1, 'auth_token', '0fb7567f8b4fb860f1297ef3b1e468b9ca29449a12b5d42e303eca390829ab24', '[\"*\"]', NULL, NULL, '2023-08-04 22:34:41', '2023-08-04 22:34:41'),
(22, 'App\\Models\\User', 3, 'auth_token', '9eeb13c4e7e23f10ee7fe5ec1e0ba01d5dee411f2acda596d51757190806545c', '[\"*\"]', NULL, NULL, '2023-08-04 22:48:30', '2023-08-04 22:48:30'),
(23, 'App\\Models\\User', 2, 'auth_token', 'fdb7b704d910617fcbd739bbbcbdd2be57e3564c8f0e46ca50bde661cdc947c9', '[\"*\"]', NULL, NULL, '2023-08-04 22:52:14', '2023-08-04 22:52:14'),
(24, 'App\\Models\\User', 2, 'auth_token', '8c60f5ac7e499cc3e325c3813810ad3415c4bdbb8b798011dad10ae7553e3db5', '[\"*\"]', NULL, NULL, '2023-08-04 22:55:26', '2023-08-04 22:55:26'),
(25, 'App\\Models\\User', 2, 'auth_token', '7089f21e216b9d8340edfcb4e38e9df25026d61176a8483ec062b0f0e2c10891', '[\"*\"]', NULL, NULL, '2023-08-04 22:56:35', '2023-08-04 22:56:35'),
(26, 'App\\Models\\User', 2, 'auth_token', '2630e3b1224fcc37841e55fcf391cdca12b24f00e78241b38da1a61bde37aac6', '[\"*\"]', NULL, NULL, '2023-08-04 22:56:39', '2023-08-04 22:56:39'),
(27, 'App\\Models\\User', 3, 'auth_token', '4747f56f99644dc6955404e4968fec901f932113e12d5dfb94a9e7e4d25565e2', '[\"*\"]', NULL, NULL, '2023-08-04 22:58:33', '2023-08-04 22:58:33'),
(28, 'App\\Models\\User', 3, 'auth_token', 'd285862e161499bd4ab1aebc05716b3c9bcf236a99cf4aa70b11d960ecb4d4fb', '[\"*\"]', NULL, NULL, '2023-08-04 22:58:39', '2023-08-04 22:58:39'),
(29, 'App\\Models\\User', 3, 'auth_token', 'c3c79a889a94df44f47825666ca1ccdc7c804f0a8c3b1ea64b9528bdb0599b96', '[\"*\"]', NULL, NULL, '2023-08-04 23:07:21', '2023-08-04 23:07:21'),
(30, 'App\\Models\\User', 2, 'auth_token', 'e61dbb16b8e93e4c7633a0804e15416a16e3dd835b25e98a9d59491355b9ba51', '[\"*\"]', NULL, NULL, '2023-08-04 23:08:30', '2023-08-04 23:08:30'),
(31, 'App\\Models\\User', 3, 'auth_token', '92a5ef96dbdc444f7c302920d871c114a5c335973516c9b6b79c674514d66ff2', '[\"*\"]', NULL, NULL, '2023-08-04 23:10:47', '2023-08-04 23:10:47'),
(32, 'App\\Models\\User', 2, 'auth_token', 'e26a767752416730b9cc3cc2c04f20d3b93ee370d31c2b80511bab7b0958c5fb', '[\"*\"]', NULL, NULL, '2023-08-04 23:13:25', '2023-08-04 23:13:25'),
(33, 'App\\Models\\User', 3, 'auth_token', 'f8d1c57b23a0ae349b9bfc07250120fc7202b463b133cf6cfb310e701e3eac7b', '[\"*\"]', NULL, NULL, '2023-08-04 23:19:00', '2023-08-04 23:19:00'),
(34, 'App\\Models\\User', 2, 'auth_token', '4ee460e9eaaf2ee822504440681f9aa289f3eeb8e88cf26ca61e4d3c12f7baaa', '[\"*\"]', NULL, NULL, '2023-08-04 23:19:20', '2023-08-04 23:19:20'),
(35, 'App\\Models\\User', 3, 'auth_token', '12ddf73634074840e3bb4dd83ede4bd9fa1bf6c494372915953a312237b31d87', '[\"*\"]', NULL, NULL, '2023-08-04 23:19:29', '2023-08-04 23:19:29'),
(36, 'App\\Models\\User', 3, 'auth_token', '1b237df2568a1399e4917c0a1458f823e0e269c44d3655559015bc1688d64362', '[\"*\"]', NULL, NULL, '2023-08-04 23:20:28', '2023-08-04 23:20:28'),
(37, 'App\\Models\\User', 2, 'auth_token', '8984c1a3c178312bdf23a8bd31e97c4230c2ef09a6abfdbaba5983e2cdc55911', '[\"*\"]', NULL, NULL, '2023-08-04 23:22:04', '2023-08-04 23:22:04'),
(38, 'App\\Models\\User', 3, 'auth_token', 'a042575f95a3a99c53d95da8846bbe4cbaac77e632a6d756cf96fbdb58720006', '[\"*\"]', NULL, NULL, '2023-08-04 23:25:51', '2023-08-04 23:25:51'),
(39, 'App\\Models\\User', 2, 'auth_token', 'a0ed507b92a94efcb10f54550275860b2ffc3009af6ef1eef6136a21b438ae2f', '[\"*\"]', NULL, NULL, '2023-08-04 23:26:21', '2023-08-04 23:26:21'),
(40, 'App\\Models\\User', 1, 'auth_token', '07a408e004a8944b1e41e0cda96f817fa5ed41c3e638062c00ddf84962dbb8b8', '[\"*\"]', NULL, NULL, '2023-08-04 23:26:41', '2023-08-04 23:26:41'),
(41, 'App\\Models\\User', 1, 'auth_token', '211458bc5affcdfa5312a6938b6f74a040a7e4621c5f7f255d6e74fe3776903e', '[\"*\"]', NULL, NULL, '2023-08-04 23:29:16', '2023-08-04 23:29:16'),
(42, 'App\\Models\\User', 3, 'auth_token', '9a21bd0f4c85e1911c1c13029c2d2f93ff915ee5fc7cd302a016c808ef0c9158', '[\"*\"]', NULL, NULL, '2023-08-04 23:29:29', '2023-08-04 23:29:29'),
(43, 'App\\Models\\User', 2, 'auth_token', '72babd2bf62ab3eca1b2bfee485c4ece11777995445b67d91d622668264eadce', '[\"*\"]', NULL, NULL, '2023-08-04 23:29:42', '2023-08-04 23:29:42'),
(44, 'App\\Models\\User', 2, 'auth_token', 'ac961561a0a44da87ad800c6662b1d1641af6b2aa3ec6ba36c482e34e43ea801', '[\"*\"]', NULL, NULL, '2023-08-04 23:29:59', '2023-08-04 23:29:59'),
(45, 'App\\Models\\User', 3, 'auth_token', 'd9f9bc0c7c5c7f7d898d67835bd6148452fe999daeaf85d4756b1d9f68c36a78', '[\"*\"]', NULL, NULL, '2023-08-04 23:30:43', '2023-08-04 23:30:43'),
(46, 'App\\Models\\User', 1, 'auth_token', '845fdddb279db9e6317bbbcd95e8791fbf5933f2b844fd3ac392d81271a984d8', '[\"*\"]', NULL, NULL, '2023-08-04 23:31:10', '2023-08-04 23:31:10'),
(47, 'App\\Models\\User', 2, 'auth_token', 'e909fab54e81d23d152d86d19a5e4062dc884d422de7c61022385d18ac72d40f', '[\"*\"]', NULL, NULL, '2023-08-04 23:31:25', '2023-08-04 23:31:25'),
(48, 'App\\Models\\User', 3, 'auth_token', 'cc4c030d0c71288f44abc9600b3d1a5f65e6268921264b539c8069db3a74a5fa', '[\"*\"]', NULL, NULL, '2023-08-04 23:31:45', '2023-08-04 23:31:45'),
(49, 'App\\Models\\User', 5, 'auth_token', 'da87854fa8f996971220f04d12e4d4c4cb538c183d107a1be1699b9795fe609d', '[\"*\"]', NULL, NULL, '2023-08-04 23:59:28', '2023-08-04 23:59:28'),
(50, 'App\\Models\\User', 4, 'auth_token', '64a7e61406027ea4d19d71fc0343e4150630d2a7172a504bb9dc9989b2d4cc5c', '[\"*\"]', NULL, NULL, '2023-08-05 00:12:20', '2023-08-05 00:12:20'),
(51, 'App\\Models\\User', 5, 'auth_token', '4e047fd7468a5530fdc7fb0c8d7367c20471b06d6464f61a1b6532914c64bc77', '[\"*\"]', NULL, NULL, '2023-08-05 00:20:45', '2023-08-05 00:20:45'),
(52, 'App\\Models\\User', 5, 'auth_token', 'd2c84d106e887a1f5103509d001d39769bf1cc94198a151b667968a766fac6fa', '[\"*\"]', NULL, NULL, '2023-08-05 00:24:36', '2023-08-05 00:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `user_id`, `title`, `description`, `due_date`, `completed`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gym', 'Do yoga', '2023-08-15', 1, '2023-07-31 18:49:17', '2023-08-01 23:05:44'),
(2, 1, 'Office edited', 'Review report edited', '2023-08-11', 1, '2023-07-31 18:50:47', '2023-07-31 22:49:42'),
(3, 1, 'Park', 'Bicycle competition', '2023-08-20', 0, '2023-07-31 18:52:08', '2023-07-31 18:52:08'),
(4, 2, 'Exercise XYZ', 'Snowboarding', '2023-08-09', 0, '2023-08-01 22:38:32', '2023-08-04 23:31:31'),
(5, 2, 'Travel to disney', 'To buy ticket', '2023-08-17', 0, '2023-08-01 22:55:20', '2023-08-04 23:31:37'),
(6, 2, 'Camping', 'Make reservation', '2023-08-16', 0, '2023-08-01 23:10:03', '2023-08-04 23:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'johndoe@gmail.com', NULL, '$2y$10$LWZypqWqXbljDPCzhzdnNOajffDmen6yt/f/bcG7Rq42WEn14nkQ2', NULL, NULL, NULL),
(2, 'Jame Doe', 'jamedoe@gmail.com', NULL, '$2y$10$7XW7eSZ00V9U/eoLzYM99Op9rYBhuaEoxXnrmwaDKkEsL6X44cIZq', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
