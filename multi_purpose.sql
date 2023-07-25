-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2023 at 08:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multi_purpose`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `title`, `description`, `start_time`, `end_time`, `status`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 'Volunteer Is also a work', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '2023-07-11 12:49:00', '2023-07-11 12:49:00', 3, 2, NULL, '2023-07-13 03:51:30'),
(2, 'Appointment 2', 'You might still be seeing an error message from the last time you attempted to add the course to your cart or enroll. The message does not refresh/revalidate and will stay on the page until the next time you try to enroll.', '2023-07-11 13:29:34', '2023-07-11 13:29:34', 2, 3, NULL, NULL),
(3, 'Appointment 3', 'You might still be seeing an error message from the last time you attempted to add the course to your cart or enroll. The message does not refresh/revalidate and will stay on the page until the next time ', '2023-07-11 13:30:20', '2023-07-11 13:30:20', 1, 1, NULL, NULL),
(4, 'Appointment 3', 'You might still be seeing an error message from the last time you attempted to add the course to your cart or enroll. The message does not refresh/revalidate and will stay on the page until the next time you ', '2023-07-11 13:30:20', '2023-07-20 13:30:20', 3, 2, NULL, NULL),
(5, 'Appointment 4', 'You might still be seeing an error message from the last time you attempted to add the course to your cart or enroll.', '2023-07-11 13:31:12', '2023-07-11 13:31:12', 2, 2, NULL, NULL),
(6, 'Appointment 5', 'You might still be seeing an error message from the last time you attempted to add the course to your cart or enroll. The message does not refresh/revalidate and will stay on the page until the next time you try to enroll.', '2023-07-11 13:31:12', '2023-07-11 13:31:12', 3, 4, NULL, NULL),
(7, 'Ut impedit est mole', 'Assumenda nihil id r', '2023-07-12 10:14:56', '2023-07-12 10:14:56', 1, 1, '2023-07-12 04:14:56', '2023-07-12 04:14:56'),
(8, 'Incidunt veniam of', 'Sunt quos proident', '2023-07-12 10:16:58', '2023-07-12 10:16:58', 1, 1, '2023-07-12 04:16:58', '2023-07-12 04:16:58'),
(9, 'Dolor voluptatem Iu', 'Laborum aperiam aper', '2023-07-12 10:18:18', '2023-07-12 10:18:18', 1, 1, '2023-07-12 04:18:18', '2023-07-12 04:18:18'),
(11, 'Facere aspernatur in', 'Velit corporis volup', '2023-07-13 10:00:00', '2023-07-14 10:00:00', 1, 1, '2023-07-13 02:36:19', '2023-07-13 02:36:19'),
(12, 'Nobis nostrud veniam', 'Consectetur officia', '2023-07-20 10:00:00', '2023-07-28 10:00:00', 1, 4, '2023-07-13 02:47:55', '2023-07-13 04:10:59'),
(13, 'Non autem hic eligen', 'Saepe consequatur C', '2023-07-20 10:00:00', '2023-07-21 10:00:00', 1, 3, '2023-07-13 02:48:46', '2023-07-13 02:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Jaylin', 'Kunde', 'jaylin@exampl.org', '2022-10-03 10:46:56', '2022-10-03 10:46:56'),
(2, 'Molla', 'Harun', 'harun@gmail.com', NULL, NULL),
(3, 'Abed', 'Ali', 'abed@gmail.com', NULL, NULL),
(4, 'Abdur', 'Hakim', 'hakim@gmail.com', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_02_062951_add_role_field_to_users_table', 2),
(6, '2023_07_03_082208_create_clients_table', 3),
(7, '2023_07_03_083213_create_clients_table', 4),
(8, '2023_07_03_083532_create_clients_table', 5),
(9, '2023_07_03_083849_create_clients_table', 6),
(10, '2023_07_03_084101_create_appointments_table', 7),
(11, '2023_07_11_092702_create_clients_table', 8),
(12, '2023_07_11_100210_create_appointments_table', 9),
(13, '2014_10_12_200000_add_two_factor_columns_to_users_table', 10),
(14, '2023_07_19_050707_create_settings_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(4, 'app_name', 'Laravel & Vue', '2023-07-19 05:08:26', '2023-07-19 05:08:42'),
(5, 'date_format', 'm/d/Y', '2023-07-19 05:08:26', '2023-07-19 05:08:42'),
(6, 'pagination_limit', '5', '2023-07-19 05:08:26', '2023-07-19 05:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(28, 'Ms. Rossie Ward', 'rosendo88@example.net', '2023-07-03 00:54:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'noDB0KAKgU', '2023-07-03 00:54:51', '2023-07-03 00:54:51', 2),
(29, 'Ms. Kenyatta Watsica MD', 'imaggio@example.org', '2023-07-03 00:54:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '5QBXQF3Nw4', '2023-07-03 00:54:51', '2023-07-03 00:54:51', 2),
(30, 'Reanna Rogahn III', 'lockman.shea@example.net', '2023-07-03 00:54:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'SRDkp3RkbR', '2023-07-03 00:54:51', '2023-07-03 00:54:51', 2),
(31, 'Alvina Williamson', 'colin.cummings@example.net', '2023-07-03 00:54:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'p0Xtfwf0MyRAqHbBVljBiSIe4LQDC63RxlKNURs6p9l5QtvK4zEMabKcpnDW', '2023-07-03 00:54:51', '2023-07-03 00:54:51', 2),
(34, 'Kody Ernser', 'sleuschke@example.net', '2023-07-03 00:54:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'PtR5cpXuZgEv3q5tbE6L9dTXtRVTH0MRGUhWKEpFyBKWfJajfCgFMXGeco4v', '2023-07-03 00:54:51', '2023-07-03 00:54:51', 2),
(36, 'Amanda Brekke I', 'murphy.dennis@example.org', '2023-07-03 00:54:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '64KWwXYjw8', '2023-07-03 00:54:51', '2023-07-03 00:54:51', 2),
(37, 'Lyric Nicolas III', 'grace.homenick@example.com', '2023-07-03 00:54:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'bYIvJu7kw5', '2023-07-03 00:54:51', '2023-07-03 00:54:51', 2),
(38, 'Ami Nije', 'nije@gmail.com', NULL, '$2y$10$fLRoyCvvupepAyRTTkqj1.yyexEDoBYHPupFSOgJycldpAS5MRuRG', NULL, NULL, NULL, NULL, '2023-07-03 01:31:03', '2023-07-03 01:31:03', 2),
(40, 'Micah Raynor', 'champlin.haylee@example.neo', '2023-07-03 03:10:28', '$2y$10$U9TZZjuEfTjbuhm1tg9uQexvqNR1zSQTZuXzC2dEtiJmAUlEopMh2', NULL, NULL, NULL, 'dhUvtMSEyp', '2023-07-03 03:10:28', '2023-07-12 03:10:15', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_client_id_foreign` (`client_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
