SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `laravel_user` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_user`;

CREATE TABLE `appointments` (
  `appointment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `appointments` (`appointment_id`, `user_id`, `date`, `time`, `created_at`, `updated_at`) VALUES
(1, 4, '2024-01-07', '09:00', '2024-01-05 20:24:25', '2024-01-05 20:24:25'),
(2, 4, '2024-01-07', '10:00', '2024-01-05 20:24:31', '2024-01-05 20:24:31'),
(3, 4, '2024-01-07', '11:00', '2024-01-05 20:24:44', '2024-01-05 20:24:44'),
(4, 4, '2024-01-08', '12:00', '2024-01-05 20:25:09', '2024-01-05 20:25:09'),
(5, 4, '2024-01-08', '13:00', '2024-01-05 20:25:26', '2024-01-05 20:25:26'),
(6, 4, '2024-01-08', '14:00', '2024-01-05 20:26:05', '2024-01-05 20:26:05'),
(7, 4, '2024-01-09', '15:00', '2024-01-05 20:26:15', '2024-01-05 20:26:15'),
(8, 4, '2024-01-09', '16:00', '2024-01-05 20:26:26', '2024-01-05 20:26:26'),
(9, 4, '2024-01-09', '17:00', '2024-01-05 20:26:41', '2024-01-05 20:26:41'),
(10, 4, '2024-01-09', '18:00', '2024-01-05 20:26:57', '2024-01-05 20:26:57'),
(11, 5, '2024-01-09', '19:00', '2024-01-05 20:27:59', '2024-01-05 20:27:59'),
(12, 5, '2024-01-09', '20:00', '2024-01-05 20:28:48', '2024-01-05 20:28:48'),
(13, 5, '2024-01-09', '21:00', '2024-01-05 20:28:57', '2024-01-05 20:28:57'),
(14, 5, '2024-01-10', '09:00', '2024-01-05 20:29:04', '2024-01-05 20:29:04'),
(15, 5, '2024-01-10', '10:00', '2024-01-05 20:29:15', '2024-01-05 20:29:15'),
(16, 5, '2024-01-10', '11:00', '2024-01-05 20:29:28', '2024-01-05 20:29:28'),
(17, 5, '2024-01-11', '12:00', '2024-01-05 20:29:39', '2024-01-05 20:29:39'),
(18, 5, '2024-01-11', '13:00', '2024-01-05 20:29:50', '2024-01-05 20:29:50'),
(19, 5, '2024-01-11', '14:00', '2024-01-05 20:30:16', '2024-01-05 20:30:16'),
(20, 5, '2024-01-12', '09:00', '2024-01-05 20:30:28', '2024-01-05 20:30:28');

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(45, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(46, '2019_08_19_000000_create_failed_jobs_table', 2),
(47, '2019_12_14_000001_create_personal_access_tokens_table', 2);

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Pantelis', 'pantelis@gmail.com', NULL, '$2y$12$0wxOJO/RYHiC2JarK1UhBOHEdBrttAof5Tn6FlGXYnevxtKJCYxqS', NULL, '2023-12-31 16:29:56', '2024-01-05 20:21:39'),
(5, 'Giannis', 'giannis@gmail.com', NULL, '$2y$12$keEmLy99RFjSGhuNjOb1E.uXiJFGVn7xMSmXs9P97nRcN5Z1CF7lS', NULL, '2024-01-05 09:09:10', '2024-01-05 20:28:26');

ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `appointments_user_id_foreign` (`user_id`);

ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

ALTER TABLE `appointments`
  MODIFY `appointment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;