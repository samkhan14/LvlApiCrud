-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2022 at 07:24 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apitesting`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('08e3345a345573528d14388756d1bf6b8805d84181167f620549f5ac42fa7baecb8d1321bcfbbee7', 13, 1, 'passssfsdfsdsport@gm.com', '[]', 0, '2022-12-08 12:49:05', '2022-12-08 12:49:06', '2023-12-08 17:49:05'),
('18defa3e77228a595546ad2cde861fd77db3b8561a4490e4fcca2bf5e92edc4c36c0905e9a6de372', 14, 1, 'passssfs456dfsdsport@gm.com', '[]', 0, '2022-12-08 12:54:06', '2022-12-08 12:54:06', '2023-12-08 17:54:06'),
('cd7cf901ca24f63cba79cda591bc8ea0485917cb31e03852b0d30efd91b16db6fcd443f88620118e', 15, 1, 'passssfs433356dfsdsport@gm.com', '[]', 0, '2022-12-08 12:54:50', '2022-12-08 12:54:50', '2023-12-08 17:54:50'),
('d419c087b1292fc16295a666a8ed48f8c91e171b0a435a8604c1d9d4de0c40faf60d72493cac5f35', 16, 1, 'fs433356dfsdsport@gm.com', '[]', 0, '2022-12-08 12:55:51', '2022-12-08 12:55:51', '2023-12-08 17:55:51'),
('dfb09002c1f5ec683015aa2110dfbb36e89e2181e5c152e9b3c95ed03bccaee4ead58a08a646b982', 17, 1, 'fs4xxxxsssdfsdsport@gm.com', '[]', 0, '2022-12-08 12:59:20', '2022-12-08 12:59:20', '2023-12-08 17:59:20'),
('d3d0f2d1c571030eb2f835eb0e363bb260a0573e222989bb0c9b49eebfacf55367f00bfffb6b9aec', 18, 1, 'ddddd@gm.com', '[]', 0, '2022-12-08 12:59:53', '2022-12-08 12:59:53', '2023-12-08 17:59:53'),
('3a633a91851e678309ace408b17163089d01f6f241ac887aeeea47f4025f5a4db9bc58e931bdf43c', 19, 1, 'dd345ddd@gm.com', '[]', 0, '2022-12-08 13:00:27', '2022-12-08 13:00:27', '2023-12-08 18:00:27'),
('77454d41fa0625459f2e99efffd5ac464446cd93eabfd68b5f8cce88de081cd019a913fd9e6e88ad', 20, 1, 'test1@gm.com', '[]', 0, '2022-12-08 14:15:08', '2022-12-08 14:15:08', '2023-12-08 19:15:08'),
('d6646b713438346ba9c584743441a9c586d63c0330d3cf65fce5b20b32d34d2b2f283b084b796570', 20, 1, 'test1@gm.com', '[]', 0, '2022-12-08 14:16:30', '2022-12-08 14:16:30', '2023-12-08 19:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 't4kkhZShnGag6YiPdeCQ0nvPDwnQAOJmWSLrqH6y', NULL, 'http://localhost', 1, 0, 0, '2022-12-08 11:20:25', '2022-12-08 11:20:25'),
(2, NULL, 'Laravel Password Grant Client', 't2n7KbSXjlxhPTqjtnFeWs8az0SS02ryTQlQiDim', 'users', 'http://localhost', 0, 1, 0, '2022-12-08 11:20:25', '2022-12-08 11:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-12-08 11:20:25', '2022-12-08 11:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'Sumaim Developer', 'mail@gm.com', NULL, '$2y$10$Wm0gLGfHnF8VJQ2LX0d2UuLNGKcwMl1A6arAJNfwVviMP6LQ/wO.O', NULL, '', NULL, '2022-10-31 09:11:45'),
(2, 'Robin', 'robin@gmail.com', NULL, '$2y$10$JuL76SrxaHn07v1AF3bp6OfjFShDIA66yb.w3FGqvrsVoY.F/4jvK', NULL, '', NULL, NULL),
(3, 'Denny', 'newmail@gm.com', NULL, '$2y$10$M8ycwcXZ/7ED.Onjj8wjy.PCVbP3TIcjjcLOhxE7lH7unOhXfuqcO', NULL, '', '2022-10-27 10:39:34', '2022-10-27 10:39:34'),
(7, 'sumaim', 'dasdasda@gmail.com', NULL, '$2y$10$7JUFj.Y21Chrn0I1dWmqqeErSzq2PB4aJvNN5zO.rXG58rOfp/8ze', NULL, '', '2022-10-28 09:33:43', '2022-10-28 09:33:43'),
(9, 'Sumaim Developer', 'sam@gm.com', NULL, '$2y$10$dEbPd4luBUbZWGi/YXtk/Ot0kgJPwSl/wKvAbHYcGKM0RyH8lmxzm', NULL, NULL, '2022-11-18 07:13:52', '2022-11-18 11:07:50'),
(11, 'Sumaim Passport', 'passport@gm.com', NULL, '$2y$10$MYpNy7ch9cftP85ysaauFOGgqzQB8b7n6LO0puJlxrJWZZxVKOQO6', NULL, NULL, '2022-12-08 12:38:18', '2022-12-08 12:38:18'),
(10, 'Sumaim Developer', 'new1@gm.com', NULL, '$2y$10$xEAAYiePeUmPE6cVEm4gvuvz/h6YSXmzRlb7Vnb9y5d5/ZktXyppi', NULL, 'LErMYkV0JCuYa83DFe3YN4qYYE4ZgiIzRVwt6q2YlhJPxQmMhtogPEiQGS0t', '2022-11-18 07:24:04', '2022-11-18 11:08:45'),
(12, 'Sumaim dasdad', 'passsssport@gm.com', NULL, '$2y$10$5KS64GW4mjpXM1EhD0mvyOF7gb8K1XpCNpLadMQOk5sJ4g51v8gH6', NULL, NULL, '2022-12-08 12:39:04', '2022-12-08 12:39:04'),
(13, 'Sumaim dasdad', 'passssfsdfsdsport@gm.com', NULL, '$2y$10$RNoSstF9HbCEbPUasQ25POXOesVJ/uzMv2MNuWkceY1z39ufEYkIy', NULL, NULL, '2022-12-08 12:49:04', '2022-12-08 12:49:04'),
(14, 'Sumaim', 'passssfs456dfsdsport@gm.com', NULL, '$2y$10$W48wwgKfpW2vbedJzbxB4.n.1MpLPNP8VKmXWA2395hMmxfii8aju', NULL, NULL, '2022-12-08 12:54:06', '2022-12-08 12:54:06'),
(15, 'Sumaim', 'passssfs433356dfsdsport@gm.com', NULL, '$2y$10$joL7btbW5XndQ4SLuVTIiOtObRYaKDRQlWi08C5HgMpYCU7pZf9yK', NULL, NULL, '2022-12-08 12:54:50', '2022-12-08 12:54:50'),
(16, 'Sumaim', 'fs433356dfsdsport@gm.com', NULL, '$2y$10$Qts4MNqWVc9AemM15M7SXu8CbElPBeVAxPYYXIGrd6rFqUpQuY3I2', NULL, NULL, '2022-12-08 12:55:51', '2022-12-08 12:55:51'),
(17, 'Sumaim', 'fs4xxxxsssdfsdsport@gm.com', NULL, '$2y$10$wZViKvu5F1d/VjodGn266u5cd2vLRflm25C3yqlZ56QNpvKp92b2C', NULL, NULL, '2022-12-08 12:59:20', '2022-12-08 12:59:20'),
(18, 'Sumaim', 'ddddd@gm.com', NULL, '$2y$10$AwBkwmpij2fTbOS0J6VtGO0q.oP4o32WgIbyPKOQRcC81rE6LcDbC', NULL, NULL, '2022-12-08 12:59:53', '2022-12-08 12:59:53'),
(19, 'Sumaim', 'dd345ddd@gm.com', NULL, '$2y$10$1MgpSVsbDtjZzJIIlG8eNeghXv/cQFOmOmwHcUDs9V.mTPp7jDFhe', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiM2E2MzNhOTE4NTFlNjc4MzA5YWNlNDA4YjE3MTYzMDg5ZDAxZjZmMjQxYWM4ODdhZWVlYTQ3ZjQwMjVmNWE0ZGI5YmM1OGU5MzFiZGY0M2MiLCJpYXQiOjE2NzA1MjI0MjcuMjk2ODIzLCJuYmYiOjE2NzA1MjI0MjcuMjk2ODI1LCJleHAiOjE3MDIwNTg0MjcuMjkwNjU5LCJzdWIiOiIxOSIsInNjb3BlcyI6W119.3eIm8e574czp4nzhkwwBPaXsIyS06HcbZXXw4Pxgigw85eZLBYz3-xLEgq_8hHGLJxBPfne_INlLDPIsdK2H0SZu_Z_yHGMaD7N5zgAZU9CbYrloxesCsklccyOPrHSqfe2sTA12IcdvdBkH8rbA3G62wqbZNIiLGorJmKUP9zOEJQHzWUgK326nOCW2BHVeW7GSZkp0DgoCvxdJOeEpZO-qZFufhlf9t5lE822lD0AsMnYcO5W2wZ0Ft1Kl0kal45qqG-7IDRzUgpscCu6XQXq6hrG_JARCAuTaUPHwo6vlREH63hVU5SnNtDyp4t7fzVlw8b46GbpleIGc-FCY7IJJwIVCJnqJ27PkS_ahFUnaL-JSGI1g0Qqw3YQZJrSanNIHJV0mmyMBEz0I2HgcmI0TIrmDF1EpYtIXOse9U1Yq2iW-RYXvIS_2IbO6u1WrfOUTW905dNxMwguyP7EjPpZgw1vNMud2rH5u5osCW_kMB901F9BW9dqIiRqOt56be5q2vre2VzthTYh5PlME4YTw1lqmPPkXBK_LQxK9Hzd5E144m1ZPOwUuevh1SU0avdVzIl7TOQ1C8Nlzu7DFyCzPnC0xnRKuPV0VAyR7aM_9bl-REhxLf5cvwHvfZAOIMVBwzWnCRzGk_VWG2T6m2XyK8XJ0KSRbAAYpntYcxPs', '2022-12-08 13:00:27', '2022-12-08 13:00:27'),
(20, 'Testing One', 'test1@gm.com', NULL, '$2y$10$RBVta3ur640Y2.69JeLiceXi41GyAwrRejoyASTwFf4Ck.9CSpDHC', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZDY2NDZiNzEzNDM4MzQ2YmE5YzU4NDc0MzQ0MWE5YzU4NmQ2M2MwMzMwZDNjZjY1ZmNlNWIyMGIzMmQzNGQyYjJmMjgzYjA4NGI3OTY1NzAiLCJpYXQiOjE2NzA1MjY5OTAuODYyODI3LCJuYmYiOjE2NzA1MjY5OTAuODYyODI5LCJleHAiOjE3MDIwNjI5OTAuODUyMzA3LCJzdWIiOiIyMCIsInNjb3BlcyI6W119.W59XH9eub6MFdiClmLI-VMa7bMydZ0gwJj5BLK7uipN_A0R7B_d_RKtSEbEG77SenkGCt8FJIqEjJ1MZ4gYDPiQH4kdPle0jamnSpSACz3-6V-_ZkNQW1S7P5rImiFJL5o4srcc6cd_TWR3vEL9s2LhCdvcoRjGAXdgAszY0zqaVpbZa83kQ5d88qQxojihVh-BAY1owa0qTSUM89F4Y07MZOfKSuleGrkNYgx4JIixw7GnM1kdPnHYEYp9kG4_d0IZsoWfQaeSws-eAgrZ9UsCJYmW1_ShPSbHnDNzygiaDEmhflk27DklQFtKlzvM6MIBlu9DqBzn9rEmEUbCFIA6cCzFkFwQdAgu1Cx8LhfaRFl6T4KH1Md1RoMqVP7jIvuuamOI5hAlaCpryu3ry2ob4pD4VxjvP1tkltF7ztX5gw4VJFXWKG9Jnt31-0Fwn4C_dp892Ww5H_UaGQheVSPXhlQGkLEM6m6ZH-mHFtTel63H2-E4A3liLvg-5--NIv76yaIaXGlk2lN37ukxe4mJtLR0DoaUtcg7ia2oH-vCu6znxXhnoXV2I4UySXyMt1Sw5duFhnWJaz-skEc6I5hAt_9jDCw_mHhoiGOXdl0LHKJGU_fXw0fazSfdkpE-r2zFgMVaW06q2cehUQ-UPimuwuOz_PS-yfecsLgO8B8U', '2022-12-08 14:15:08', '2022-12-08 14:16:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
