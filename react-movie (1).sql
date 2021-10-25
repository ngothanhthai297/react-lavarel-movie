-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3309
-- Thời gian đã tạo: Th10 25, 2021 lúc 07:13 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `react-movie`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorite`
--

DROP TABLE IF EXISTS `favorite`;
CREATE TABLE IF NOT EXISTS `favorite` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_10_19_064149_create_table_favorites', 1),
(5, '2021_10_21_140019_create_wishlists_table', 1),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(9, '2016_06_01_000004_create_oauth_clients_table', 2),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(11, '2021_10_19_064149_create_table_favorite', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
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
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('a397a6d15871d003a7849da6efffe1daf20096201d5241ac8b06f8db05efb486f915dff21229c2cb', 12, 3, 'MyApp', '[]', 0, '2021-10-24 10:35:08', '2021-10-24 10:35:08', '2022-10-24 17:35:08'),
('4c029b6f7a428843ddc49664c19b07b005bfdb02591853ac43cff2e9afc06189fa246250ad328c82', 13, 3, 'MyApp', '[]', 0, '2021-10-24 10:42:20', '2021-10-24 10:42:20', '2022-10-24 17:42:20'),
('ed4e7b623e8bba30be1054850c49e2b552b954f68f02c2c1bd62a718e27e61c628b1d9ac8b31b867', 13, 3, 'MyApp', '[]', 0, '2021-10-24 10:43:12', '2021-10-24 10:43:12', '2022-10-24 17:43:12'),
('d7ce4ace6f55920ab2cbcdeabe5aed9e19d2aea9eeb930fbc30e5bed7f241e954a224cbabe28d31b', 13, 3, 'MyApp', '[]', 0, '2021-10-24 11:52:21', '2021-10-24 11:52:21', '2022-10-24 18:52:21'),
('54e1f81444880b4d0069ba421d866f76a28683746d76c5076c43c847f105191947f12072555672ec', 13, 3, 'MyApp', '[]', 0, '2021-10-24 12:07:46', '2021-10-24 12:07:46', '2022-10-24 19:07:46'),
('29e40f68ab35f85fa551b5b74eb4580dd8251d06c9dc17a7ce488fea80de31a1d9562ff976714ecc', 13, 3, 'MyApp', '[]', 0, '2021-10-24 12:08:54', '2021-10-24 12:08:54', '2022-10-24 19:08:54'),
('1eaca2175e36fdac9d182b34be12c024c6c144ce5dfc6574aaa230d5147ff97cd904fb945b45bdd0', 13, 3, 'MyApp', '[]', 0, '2021-10-24 12:08:56', '2021-10-24 12:08:56', '2022-10-24 19:08:56'),
('f9ca36c3382e5443bea79932a78446b9c93fa26a2e68d135d7d8aef5a3b4a326d3837b01a35ba32e', 13, 3, 'MyApp', '[]', 0, '2021-10-24 12:09:21', '2021-10-24 12:09:21', '2022-10-24 19:09:21'),
('2744d87c66ada89dec80254ccf70b65f962d2bbe22c682c34cf61cca378bf544e64b3f8c71800bab', 13, 3, 'MyApp', '[]', 0, '2021-10-24 12:09:39', '2021-10-24 12:09:39', '2022-10-24 19:09:39'),
('fe46ef5df78bb3640e7761c8e3a1cb52ae1dd3aedd07f41d4169319d14d7683bd9b9934d9157982a', 13, 3, 'MyApp', '[]', 0, '2021-10-24 12:11:04', '2021-10-24 12:11:04', '2022-10-24 19:11:04'),
('1f1b418e22ef54a5490f25ffbcb89b5b3437efb90a51c87e64708ddcc2da49ea984f42ca53fc69ed', 14, 3, 'MyApp', '[]', 0, '2021-10-24 12:12:04', '2021-10-24 12:12:04', '2022-10-24 19:12:04'),
('83a796c7a5f7343244d1b50ff823bdfe6249fdd58315d7762de0f81d1d14d1d54c8eac7cfd6a3d17', 13, 3, 'MyApp', '[]', 0, '2021-10-24 12:16:49', '2021-10-24 12:16:49', '2022-10-24 19:16:49'),
('5fd147eac819938ab1465ba4009d4becad8b7187e06d623a9db21025d2d4a47b4c2b83caaeb8e71d', 14, 3, 'MyApp', '[]', 0, '2021-10-24 12:17:09', '2021-10-24 12:17:09', '2022-10-24 19:17:09'),
('cabffddc238d790a8ed477401d4d8aa83051059f75a6d44089fdd6fd4873300d4ede8aadabaa1534', 14, 3, 'MyApp', '[]', 0, '2021-10-24 12:32:24', '2021-10-24 12:32:24', '2022-10-24 19:32:24'),
('65e14fd3a259cf3258eb59b26ee9ecc321f4cfd18b7fe86e2f56584b16ab7862f5669ca1140154ba', 14, 3, 'MyApp', '[]', 0, '2021-10-24 12:47:32', '2021-10-24 12:47:32', '2022-10-24 19:47:32'),
('56a467cfc60ad809a3ec801916fa6a3cf60c05b21c0220f8958c70da2956e37bf9f127656b6095b2', 14, 3, 'MyApp', '[]', 0, '2021-10-24 12:47:50', '2021-10-24 12:47:50', '2022-10-24 19:47:50'),
('94564e22afd5d163e9b365bc06f26f40bbc90600bb38f59fbc9029352f7986e580708f943b160c87', 14, 3, 'MyApp', '[]', 0, '2021-10-24 12:58:08', '2021-10-24 12:58:08', '2022-10-24 19:58:08'),
('ef47bf66f67c7dd608fb4c6fdd255399a01d0b813c2aecd69b45c82551f89f213086c5e2b5acea0d', 14, 3, 'MyApp', '[]', 0, '2021-10-24 12:58:30', '2021-10-24 12:58:30', '2022-10-24 19:58:30'),
('7884025a05453d2ec5aeecff4b3fdadd1fea3c86e2709a15a7558b7969f8f4242476af180c9274df', 14, 3, 'MyApp', '[]', 0, '2021-10-24 12:59:27', '2021-10-24 12:59:27', '2022-10-24 19:59:27'),
('15c0ceeacc0a73d4eace5c4a400999ea3778fe0a1986f8c69580ebd6f0ed7be83fa9569dbbab8205', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:06:44', '2021-10-24 13:06:44', '2022-10-24 20:06:44'),
('669e5dca0d7ff6470fba7a2373850cb623256202ea77604e1898556dec58eebf7f696b8079c8513a', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:07:35', '2021-10-24 13:07:35', '2022-10-24 20:07:35'),
('9c05eb4d62fd4bfe752950f400653388bb40f341c732630a4837860cf840b93256176520d5c9a052', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:11:45', '2021-10-24 13:11:45', '2022-10-24 20:11:45'),
('5f3ce51b075c170f6464004563bc31f6f432c60667f29708fadcd0d5e2c53e6413ea50b8ae8f0271', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:21:28', '2021-10-24 13:21:28', '2022-10-24 20:21:28'),
('d54be31aae92993372b58fd1440f25e1a16f5d48e637adf1d72689a6d609210cd414405204d05780', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:21:28', '2021-10-24 13:21:28', '2022-10-24 20:21:28'),
('ad38e3164a111715400c8fc2fc7cc333ed7d59890dd19e7e277061f2926a2ed24ca97fcf26729258', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:22:18', '2021-10-24 13:22:18', '2022-10-24 20:22:18'),
('72d303ced2b13b625b39a92d6e815b478db2d6e56cab8904b4bfcd7fd5ba9c1473f2603a6569aa13', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:23:08', '2021-10-24 13:23:08', '2022-10-24 20:23:08'),
('65674d9085a0e2f8b8b806793a2469e3dead7a7de9175558f87e1e113b7ed41f7e15fcf53dbc9546', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:23:28', '2021-10-24 13:23:28', '2022-10-24 20:23:28'),
('93fcac4d02f2f33dd22bf24c60c2fb8c487d33dab5dc9a538010fc9a4b4d41ac502c3b7c0a1339dd', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:23:59', '2021-10-24 13:23:59', '2022-10-24 20:23:59'),
('aa45c139c6d02bb749629cd8d49e613815f93346e1b42704c91aa87232682bd1ec53f18366358140', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:24:02', '2021-10-24 13:24:02', '2022-10-24 20:24:02'),
('8dc04b66fa8bdfbeaecc014689aaa4d678318a6772e49afd1664266534e2628101197d5b985db453', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:24:31', '2021-10-24 13:24:31', '2022-10-24 20:24:31'),
('22d3ed30c1cc9896ce3c9dc67ecbf80d7cf898a974d533b3a81f18dfb873a3b6ed4f5e6944cd1b68', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:24:49', '2021-10-24 13:24:49', '2022-10-24 20:24:49'),
('bc55c1423ff7f47e76cc786233cd91cd5810ac96473e83ab393b601a7eb44725f5e83444410f248a', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:26:43', '2021-10-24 13:26:43', '2022-10-24 20:26:43'),
('3693cce830c3d1380eeb55cc3c93eaa6d5b48b607ba1dc1e0c9038198bc15eb24618848799febab4', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:27:39', '2021-10-24 13:27:39', '2022-10-24 20:27:39'),
('4406181326c7e50a696c8abcd5e40b94b1d54dbb23a846e4e8b1d196c808312ea03a3021bfa99aa8', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:28:26', '2021-10-24 13:28:26', '2022-10-24 20:28:26'),
('95e34d5dcd70a64e3ac3213d2f077e4b310f108a1eaa87e7a1ae6de5ea251532b42675c20252eb52', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:28:40', '2021-10-24 13:28:40', '2022-10-24 20:28:40'),
('c559dc43e23888d988be45fa272a6a0a8a3878d8408c1d9956fd0ff2da0069e5d3f6ee1ecc37ef33', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:47:18', '2021-10-24 13:47:18', '2022-10-24 20:47:18'),
('1cb13f98dfffb60174b0ae19b17d6b85934a9bacb0bfb4a3e55408046d867469fa547cf81653d0d7', 14, 3, 'MyApp', '[]', 0, '2021-10-24 13:48:13', '2021-10-24 13:48:13', '2022-10-24 20:48:13'),
('a8148a7dba04be38b033ef37fc36cc7b240305ecbfe5a8fb4c91a4767354aa8fd3b076fb70e1214c', 14, 3, 'MyApp', '[]', 0, '2021-10-24 14:02:30', '2021-10-24 14:02:30', '2022-10-24 21:02:30'),
('cd4fa85244f78a4d6da1830fdd36939f3e1b1cd8e9c309d9f465337568b20ceab0323ff945ad6acf', 14, 3, 'MyApp', '[]', 0, '2021-10-24 14:02:50', '2021-10-24 14:02:50', '2022-10-24 21:02:50'),
('0ba2c6fd821035555a4b9e82f5d84c7f40b951d7416dfd79ca23134a3ad5a7ea6d3104ecd2b3385f', 14, 3, 'MyApp', '[]', 0, '2021-10-24 14:03:43', '2021-10-24 14:03:43', '2022-10-24 21:03:43'),
('f531763539e037ea3fddd1d2bba50afa5c6f25c1cbbe015416b84ee6f5b60de7c32aefbce5115974', 14, 3, 'MyApp', '[]', 0, '2021-10-24 14:06:43', '2021-10-24 14:06:43', '2022-10-24 21:06:43'),
('f67467f9186835c9c6478afcb620bde317416325fe87fe30c9dbdf7b8b306331fabf11a734f09af5', 14, 3, 'MyApp', '[]', 0, '2021-10-24 23:39:43', '2021-10-24 23:39:43', '2022-10-25 06:39:43'),
('6aa1da996359143c0e92b4643773ba6f443bf03775f8972fc4fa19d3c1deb57bd4e03f65bfad968b', 14, 3, 'MyApp', '[]', 0, '2021-10-24 23:42:26', '2021-10-24 23:42:26', '2022-10-25 06:42:26'),
('a756e7b81750e47fd5b67faef234e5f32777032da46bd832a17dc9755e79f74ce293c8a6dc50f648', 14, 3, 'MyApp', '[]', 0, '2021-10-24 23:45:44', '2021-10-24 23:45:44', '2022-10-25 06:45:44'),
('0fa45242deca8f5a879e14078837f8047a090d239fd055761d3ee749e71091f57d4a21009dd8fea5', 14, 3, 'MyApp', '[]', 0, '2021-10-24 23:46:11', '2021-10-24 23:46:11', '2022-10-25 06:46:11'),
('98cb26a85910a2a1cdd7414da964a60f963f3ac7e142ee54f5099134c63002b6ede69f95d46ecdce', 14, 3, 'MyApp', '[]', 0, '2021-10-25 00:02:33', '2021-10-25 00:02:33', '2022-10-25 07:02:33'),
('93ea600cd33b36456a9579705be2354225cb08b7cc701412c447ffd2d351cdc7ff69ad3bf9e68868', 14, 3, 'MyApp', '[]', 0, '2021-10-25 00:05:20', '2021-10-25 00:05:20', '2022-10-25 07:05:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
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
-- Cấu trúc bảng cho bảng `oauth_clients`
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '2sEUnfAWUl60qSvJ1W4LZQTMZszYK4Y4rXNqlXP1', NULL, 'http://localhost', 1, 0, 0, '2021-10-24 09:28:22', '2021-10-24 09:28:22'),
(2, NULL, 'Laravel Password Grant Client', 'KzBpATJzhk5k1cdKnZQOtrsGizocFPyPN2TND5fc', 'users', 'http://localhost', 0, 1, 0, '2021-10-24 09:28:22', '2021-10-24 09:28:22'),
(3, NULL, 'Laravel Personal Access Client', 'B4ZsMyYuo6eII9S79wEXH7C2haHMhN2RgRjFon1G', NULL, 'http://localhost', 1, 0, 0, '2021-10-24 10:30:35', '2021-10-24 10:30:35'),
(4, NULL, 'Laravel Password Grant Client', 'wX8HbJPuS6SUTun5ayb6cZooBxZlzyOQXqw2lXZy', 'users', 'http://localhost', 0, 1, 0, '2021-10-24 10:30:35', '2021-10-24 10:30:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-10-24 09:28:22', '2021-10-24 09:28:22'),
(2, 3, '2021-10-24 10:30:35', '2021-10-24 10:30:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
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
-- Cấu trúc bảng cho bảng `password_resets`
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
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tam', 'admin@gmail.com', NULL, 'b950671149c61d73b87931c6e6345659', NULL, NULL, NULL),
(2, 'Mr. Pablo West', 'scole@example.org', '2021-10-24 08:20:31', 'b950671149c61d73b87931c6e6345659', 'lhbBE7l41C', '2021-10-24 08:20:31', '2021-10-24 08:20:31'),
(3, 'Miss Lori Jast I', 'dspinka@example.org', '2021-10-24 08:20:31', '1bbd886460827015e5d605ed44252251', 'xpQDCHvdtX', '2021-10-24 08:20:31', '2021-10-24 08:20:31'),
(4, 'Margarita Leuschke', 'caroline.nader@example.net', '2021-10-24 08:20:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1fghc5DV0e', '2021-10-24 08:20:31', '2021-10-24 08:20:31'),
(5, 'Mr. Chet Simonis', 'ward.emmalee@example.net', '2021-10-24 08:20:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TjmQx3rMuP', '2021-10-24 08:20:31', '2021-10-24 08:20:31'),
(6, 'Kassandra Ruecker', 'craig08@example.net', '2021-10-24 08:20:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rAL5nvy34x', '2021-10-24 08:20:31', '2021-10-24 08:20:31'),
(7, 'Gerson Torphy', 'mckenzie21@example.com', '2021-10-24 08:20:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vezoIjopL1', '2021-10-24 08:20:31', '2021-10-24 08:20:31'),
(8, 'Lindsey Stracke I', 'lgrant@example.net', '2021-10-24 08:20:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HQoWFXoJ4H', '2021-10-24 08:20:31', '2021-10-24 08:20:31'),
(9, 'Jett Stark', 'bkozey@example.com', '2021-10-24 08:20:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qvEtmZNoP9', '2021-10-24 08:20:31', '2021-10-24 08:20:31'),
(10, 'Billie Kris', 'lonny.ullrich@example.org', '2021-10-24 08:20:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KsQ714956L', '2021-10-24 08:20:31', '2021-10-24 08:20:31'),
(11, 'Eldridge Emard', 'luettgen.erna@example.com', '2021-10-24 08:20:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pB2IfG7qU6', '2021-10-24 08:20:31', '2021-10-24 08:20:31'),
(12, 'Tam', 'tam@gmail.com', NULL, '$2y$10$fNpQxAzH.uv/98L4n8hmiO3ShYbh/jSC7.Hn8MZHLWzrkTiBykc9y', NULL, '2021-10-24 10:35:08', '2021-10-24 10:35:08'),
(13, 'Tham', 'thamquan@gmail.com', NULL, '$2y$10$S.IE8.MYia9Yln90Y7ITM.YN0C4qZM7tMFWp.2ZHzquO/RURaSuxO', NULL, '2021-10-24 10:42:20', '2021-10-24 10:42:20'),
(14, 'test', 'test@gmail.com', NULL, '$2y$10$IYsEHlHeylS8R7cS5PjrHey8SGHe8iVC0rv4UBNPe1OAlWcn4clS6', NULL, '2021-10-24 12:12:04', '2021-10-24 12:12:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
