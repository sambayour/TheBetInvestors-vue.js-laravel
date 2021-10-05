-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2020 at 12:16 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thebetinvestor`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `position` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `image`, `url`, `position`, `created_at`, `updated_at`) VALUES
(3, 'ads/mB4TiGr0nQjjWicGItXETH5FV0vdstArIgeH7wwk.jpeg', 'http://shayorealtor.com', 'TOP', '2020-07-26 18:20:06', '2020-07-31 01:46:09'),
(4, 'ads/Ug9euVUTHrRD1lwfnVRYzVnhioybaDN0SSNj8S0J.jpeg', 'https://samuelolubayo.website', 'BOTTOM', '2020-07-26 19:08:03', '2020-07-31 00:53:45'),
(5, 'ads/FZAevHQZCEvFU2zCfC9JSvoye1uHDmvsIxb3bPDl.png', 'http:seee', 'RIGHT-TOP', '2020-07-26 19:08:03', '2020-08-09 00:02:20'),
(6, '', 'melbet', 'RIGHT-MIDDLE', '2020-07-26 19:08:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `botds`
--

CREATE TABLE `botds` (
  `id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `teams` varchar(250) NOT NULL,
  `tip` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `botds`
--

INSERT INTO `botds` (`id`, `country`, `teams`, `tip`, `status`, `created_at`, `updated_at`) VALUES
(1, '', 'ham-ram V raigeka', 'o2.5', 10, '2020-07-29 02:07:13', NULL),
(2, 'Tajikistan', 'sholllll v bonta', '10 minutes w1', 10, '2020-08-10 23:59:35', '2020-08-08 23:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily2odds`
--

CREATE TABLE `daily2odds` (
  `id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `teams` varchar(150) NOT NULL,
  `tip` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily2odds`
--

INSERT INTO `daily2odds` (`id`, `country`, `teams`, `tip`, `status`, `created_at`, `updated_at`) VALUES
(3, '', 'Kolapo V valur', 'o2.5', 1, '2020-07-23 19:15:07', '2020-07-25 17:11:59'),
(4, '', 'samosa v leece', '1', 1, '2020-07-23 19:21:04', '2020-07-25 17:50:34'),
(5, '', 'segee v lokun', 'less', 0, '2020-07-24 11:10:11', '2020-07-25 17:47:51'),
(7, '', 'sule v montari', 'over 9.5 corners', 10, '2020-07-25 21:48:02', '2020-07-25 21:48:02'),
(8, '', 'olamide v badoo', 'badoo', 10, '2020-07-25 23:04:47', '2020-07-25 23:04:47'),
(10, 'Armenia', 'bhola v sse', 'handicap 0:2', 10, '2020-07-31 23:58:46', '2020-08-08 23:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `num` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `body`, `num`, `date_time`, `created_at`, `updated_at`) VALUES
(1, 'What does 1X2 mean?', '1-tip on home team winning, X-tip on tie, 2-tip on visiting team winning, 1X- tip on home team not loosing, X2-tip on visiting team not loosing', 'One', '2019-10-11 00:00:00', NULL, NULL),
(2, 'How can I bet on TheBetInvestor?', 'SoccerVista.com is not bookmaker. We only provide statistics and tips for tipsters.\r\n', 'Two', '2019-10-11 00:00:00', NULL, NULL),
(3, 'Is online betting reliable?\r\n', 'It is, most of the time. However, on line betting is illegal in some countries. Make sure to find out what are the laws in your country and pick the bookmaker very carefully.\r\n', 'Three', '2019-10-11 00:00:00', NULL, NULL),
(4, 'Is everything on TheBetInvestor free?\r\n', 'We have both free and paid service.', 'Four', '2019-10-11 00:00:00', NULL, NULL),
(5, 'Do you have any other comments or questions about website?', 'Please use the contact form ', 'Five', '2019-10-11 00:00:00', NULL, NULL),
(6, 'Do you provide fixed tips?\r\n', 'No, we do not. Our tips are based on the team\'s current condition, player\'s injuries and mutual statistics.\r\n', 'Six', '2019-10-11 00:00:00', NULL, NULL),
(7, 'I have won big money, how can I Appreciate you?\r\n', 'Morbi vehicula arcu et pellentesque tincidunt. Nunc ligula nulla, lobortis a elementum non, vulputate ut arcu. Aliquam erat volutpat. Nullam lacinia felis.', 'Seven', '2019-10-11 00:00:00', NULL, NULL),
(8, 'Why is there no predictions today ?', 'Stake gains gives soccer prediction tips at least 4 times a week and not everyday of the week, so maybe there were no predictions on the site that day.\r\n\r\n', 'Eight', '2019-10-11 00:00:00', NULL, NULL),
(9, 'Question 9', 'Morbi vehicula arcu et pellentesque tincidunt. Nunc ligula nulla, lobortis a elementum non, vulputate ut arcu. Aliquam erat volutpat. Nullam lacinia felis.', 'Nine', '2019-10-11 00:00:00', NULL, NULL),
(10, 'Question 10', 'Morbi vehicula arcu et pellentesque tincidunt. Nunc ligula nulla, lobortis a elementum non, vulputate ut arcu. Aliquam erat volutpat. Nullam lacinia felis.', 'Ten', '2019-10-11 00:00:00', NULL, NULL),
(11, 'Question 11', 'Morbi vehicula arcu et pellentesque tincidunt. Nunc ligula nulla, lobortis a elementum non, vulputate ut arcu. Aliquam erat volutpat. Nullam lacinia felis.', 'Eleven', '2019-10-11 00:00:00', NULL, NULL),
(12, 'question 12', 'Morbi vehicula arcu et pellentesque tincidunt. Nunc ligula nulla, lobortis a elementum non, vulputate ut arcu. Aliquam erat volutpat. Nullam lacinia felis.', 'Twelve', '2019-10-11 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ggtips`
--

CREATE TABLE `ggtips` (
  `id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `teams` varchar(150) NOT NULL,
  `tip` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ggtips`
--

INSERT INTO `ggtips` (`id`, `country`, `teams`, `tip`, `status`, `created_at`, `updated_at`) VALUES
(1, '', 'GKL adalaide v newcastle FSC', 'newcastle', 1, '2020-06-01 02:22:01', '2020-07-25 17:49:43'),
(2, '', 'M weSC v Kemi loll', 'HWBH', 1, '2020-07-23 16:01:42', '2020-07-25 15:27:36'),
(4, '', 'ddol V gooeew', 'CS 3-2', 1, '2020-07-23 19:11:56', '2020-07-23 19:11:56'),
(5, '', 'deoo V sampodia', 'NG', 0, '2020-07-23 19:13:25', '2020-07-23 19:13:25'),
(6, '', 'adalaide v newcastle', 'newcastle', 1, NULL, '2020-07-25 17:25:10'),
(9, '', 'testing v tester', 'testing', 10, '2020-07-25 21:12:11', '2020-07-25 21:12:11'),
(10, '', 'hello v james', 'hello', 1, '2020-08-10 23:03:17', '2020-07-25 23:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `latest_news`
--

CREATE TABLE `latest_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(76, '2019_12_10_145150_create_paypoints_table', 1),
(103, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(104, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(105, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(106, '2016_06_01_000004_create_oauth_clients_table', 2),
(107, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(108, '2019_10_11_111139_create_roles_table', 2),
(109, '2019_10_12_000000_create_users_table', 2),
(110, '2019_10_14_101339_create_galleries_table', 2),
(111, '2019_10_17_131048_create_contact_us_table', 2),
(112, '2019_10_18_114201_create_downloads_table', 2),
(113, '2019_10_21_160244_create_coas_table', 2),
(114, '2019_10_22_083343_create_leaders_table', 2),
(115, '2019_10_22_085303_create_community_news_table', 2),
(116, '2019_10_22_153344_create_rendition_documents_table', 2),
(117, '2019_10_28_163400_create_videos_table', 2),
(118, '2019_10_28_163503_create_digests_table', 2),
(119, '2019_10_28_163529_create_latest_news_table', 2),
(120, '2019_10_28_163551_create_events_table', 2),
(121, '2019_10_29_123213_create_password_resets_table', 2),
(122, '2019_10_31_155551_create_faqs_table', 2),
(123, '2019_10_31_161611_create_news_table', 2),
(124, '2019_11_06_150003_create_jobs_table', 2),
(125, '2019_11_07_104009_create_failed_jobs_table', 2),
(126, '2019_11_13_155520_create_coas_news_table', 2),
(127, '2019_12_05_103520_create_news_videos_table', 2),
(128, '2019_12_10_145150_create_pay_points_table', 2),
(129, '2019_12_16_093542_create_formations_table', 2),
(130, '2019_10_18_114201_create_documents_table', 1),
(169, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(170, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(171, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(172, '2016_06_01_000004_create_oauth_clients_table', 2),
(173, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(174, '2019_10_11_111139_create_roles_table', 2),
(175, '2019_10_12_000000_create_users_table', 2),
(176, '2019_10_14_101339_create_galleries_table', 2),
(177, '2019_10_17_131048_create_contact_us_table', 2),
(178, '2019_10_18_114201_create_downloads_table', 2),
(179, '2019_10_21_160244_create_coas_table', 2),
(180, '2019_10_22_083343_create_leaders_table', 2),
(181, '2019_10_22_085303_create_community_news_table', 2),
(182, '2019_10_22_153344_create_rendition_documents_table', 2),
(183, '2019_10_28_163400_create_videos_table', 2),
(184, '2019_10_28_163503_create_digests_table', 2),
(185, '2019_10_28_163529_create_latest_news_table', 2),
(186, '2019_10_28_163551_create_events_table', 2),
(187, '2019_10_29_123213_create_password_resets_table', 2),
(188, '2019_10_31_155551_create_faqs_table', 2),
(189, '2019_10_31_161611_create_news_table', 2),
(190, '2019_11_06_150003_create_jobs_table', 2),
(191, '2019_11_07_104009_create_failed_jobs_table', 2),
(192, '2019_11_13_155520_create_coas_news_table', 2),
(193, '2019_12_05_103520_create_news_videos_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0200d9932ab85f000f42c706e7408e3f92f7e98425c6b361759e1ecbb03910c0f38f4bb9ac7ba458', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-07 23:34:24', '2020-02-07 23:34:24', '2021-02-08 00:34:24'),
('032f352d58ace05447b24ee970fbe28bc90c36abce8422096361cf02e5e95a2205061c9e71ea559d', 4, 1, 'OfficerSignPassword', '[]', 1, '2020-04-30 03:41:34', '2020-04-30 03:41:34', '2020-04-30 05:01:35'),
('05e583135cabc81a2002023ad1b4f050c72c21ef7a6a595d34472888831b17355d58f907f060a4c8', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-03 16:25:22', '2019-12-03 16:25:22', '2019-12-05 16:25:22'),
('0604096e48ac973a8fdb4002cabb4b6c6dba94136490ec41037333904bd39254730644937c70fb1c', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-07 17:02:59', '2020-01-07 17:02:59', '2020-01-09 17:02:59'),
('063b3a7c20e04f6b33c7de453d2ad8419f8ecbe2909179734d34ff389dceefc35a7f44a4fc853d30', 1, 1, 'OfficerSignPassword', '[]', 0, '2019-11-23 19:05:45', '2019-11-23 19:05:45', '2019-11-25 19:05:45'),
('067648b879899f17c66ad097454ddcb146dcb2708a9303b892aa1e5037808e23720d417292a37469', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-07 23:12:44', '2020-02-07 23:12:44', '2020-02-10 00:12:44'),
('06f3fac63babd709fd456bbcf78130d221266b46b1a7f84a5c5972dc82296a3cb0193217ca1483c3', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-29 14:03:51', '2019-11-29 14:03:51', '2019-12-01 14:03:51'),
('072b3bc4de8634c3ae0dc93070c7c06671e5b5fc59b015dec02bffa80f90db4fc2d963f54f108b40', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-01-09 16:43:03', '2020-01-09 16:43:03', '2020-01-11 16:43:03'),
('082ed2a7d51da3de461a25edf77152c5ed32592a977a59282766fe49c3f78cfe6cbd71e45083e39c', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-20 13:57:25', '2019-11-20 13:57:25', '2019-11-22 13:57:25'),
('086079ca9f787dbdbe13615d75006f6987193eb7835d664c0fab4b1920ff569e244b7563c011e826', 1, 1, 'OfficerSignPassword', '[]', 0, '2019-11-25 08:08:39', '2019-11-25 08:08:39', '2019-11-27 08:08:39'),
('08760826f4434e87f6421e096f501e4656650253ed026a5eb2b68fe319a6d13fb95e848601d41755', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-02 08:56:57', '2019-12-02 08:56:57', '2019-12-04 08:56:57'),
('090201fc1ebccd803731dc68a9fe9e45f491d847f5a21af338054240f6138305f08f3b4c07644b68', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 13:08:00', '2020-03-23 13:08:00', '2020-03-24 14:08:01'),
('09f742148d74283e7d7c052e2f8bb871671f5a7af7099ef68c0d9c6a5c426b6b6925b7ece803ea43', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-25 09:53:03', '2019-11-25 09:53:03', '2019-11-27 09:53:03'),
('09fe3e13104f94183affa207a6f4e6a72a69b4078c7d85476c089e39fb045de3e0213222f49073c9', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-24 12:10:36', '2020-01-24 12:10:36', '2020-02-23 12:10:36'),
('0a419388189f4294f6af45fbc305359ad8f588b90fa7b2db88793fbf4181a0925713f9adad0b62ab', 1, 3, 'OfficerSignPassword', '[]', 1, '2020-07-19 12:18:56', '2020-07-19 12:18:56', '2020-07-19 13:38:56'),
('0b379df8c2b0bee25bdfce27c4868fb75a327a8a41a62ac47da83b31b0fc16e44142db1b30fc139e', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-01-29 10:01:36', '2020-01-29 10:01:36', '2020-02-28 10:01:36'),
('0c68cb68e8ee1da374e6199718ddee0f8bf62b2adbabecaf2141c3de04d6863544ff3088c4757960', 2, 1, 'OfficerSignPassword', '[]', 1, '2019-11-29 14:11:34', '2019-11-29 14:11:34', '2019-12-01 14:11:34'),
('0f604e5f03ee2e5bfdcc904e1ba3428fda26bedd80a1d58762eb7e200c9703bf5077d57b6a88e362', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-11 17:03:37', '2020-02-11 17:03:37', '2020-02-13 18:03:37'),
('0ff85c35b65a528e5fd83a19635f9eaf84e9c89559c38344034914d7711c33d9a14534013431b9cf', 2, 3, 'OfficerSignPassword', '[]', 1, '2020-07-19 18:46:38', '2020-07-19 18:46:38', '2020-07-19 20:06:39'),
('1015bd7b4f9f61396f26533a27b69dae553dbaba101fd98eabdd685af3aa1356be0f1a4cded0246e', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-07 23:32:01', '2020-02-07 23:32:01', '2021-02-08 00:32:01'),
('10d2e07f421c34238c7d32d39aca38be5c51443e43b786e4855ac511e4866ee2ddce60d3d25a8484', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-29 14:12:19', '2019-11-29 14:12:19', '2019-12-01 14:12:19'),
('10e26d0a031f17febff5b5c4859f13a7adafd372d0863a42e3ee512c3586f0c03c6c134b00b5ec3a', 2, 1, 'OfficerSignPassword', '[]', 0, '2019-12-12 11:04:28', '2019-12-12 11:04:28', '2019-12-14 11:04:28'),
('113c52e734a6d683974a5d097180343ea22d095371ee6b9068acb85dc930ccc46622ef692e678302', 2, 1, 'OfficerSignPassword', '[]', 0, '2019-11-25 09:42:58', '2019-11-25 09:42:58', '2019-11-27 09:42:58'),
('11835590d4b7fc9018c87b5963c8ef3c1d1304bec96f5f64e05f25cfaaad5988d7ac224cc17f72d9', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-17 16:59:03', '2020-07-17 16:59:03', '2020-07-17 18:19:04'),
('11d1bb4443bd5ea24d3ef399765ee1d3197b9520a898d47fcd37ff0dd30e79a4fc19268620aa8c77', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-01-29 10:01:52', '2020-01-29 10:01:52', '2020-01-31 10:01:52'),
('130054bc80cf90d0e710ca502c9679117e0e4aa317b1611f457c254d13400c1731c561de82ce6a03', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-11 18:52:24', '2020-02-11 18:52:24', '2020-02-13 19:52:24'),
('143fb93a3c7de7b9c10f26fc042fc084f1c4ef8765af1c491cc2582d4041b5ff76a519e631415515', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-26 16:17:55', '2019-11-26 16:17:55', '2019-11-28 16:17:55'),
('151af66c301d35448aad1953a02e853755c7f875cfd87a84caf97b44381179cbfde498365b509690', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-20 14:24:17', '2020-03-20 14:24:17', '2020-03-21 15:24:17'),
('16fed57ca60f5414bc46a53e122724141de09ac0a71b1739998a7cf9ea02595238d2083d0322510a', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-07 23:11:36', '2020-02-07 23:11:36', '2020-02-10 00:11:36'),
('1713d2d048db3c6a730438588cbfdbfa3510664e3f183385ecd608b956dc258e7313d61b720996e9', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-07 09:35:12', '2020-01-07 09:35:12', '2020-01-09 09:35:12'),
('17303a2fb22cb7146e746ebbc17f8fbe2431398a30093548c3f9914aa4056ce8981605cdddf46c14', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-29 09:34:32', '2020-01-29 09:34:32', '2020-02-28 09:34:32'),
('185d89aa1b6781ac610a9c312e08642344ad8b5b0b89cc69ba0c621df4fe9c625492a1e8f75a1c87', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-25 09:00:33', '2019-11-25 09:00:33', '2019-11-27 09:00:33'),
('1985fec16b1244c01b38c25371f9dd4614e51269b360a9cb0747968d30e992bba0dc88db6dfbeadf', 1, 1, 'OfficerSignPassword', '[]', 0, '2019-12-23 14:15:40', '2019-12-23 14:15:40', '2019-12-25 14:15:40'),
('1ac0d700309a1c3bc0b8017daaf4e0ec1c811388945bbf7a17d9cbcbd5180289fd56a0d034e97a82', 2, 3, 'OfficerSignPassword', '[]', 1, '2020-07-21 15:04:57', '2020-07-21 15:04:57', '2020-07-21 16:24:58'),
('1ada4a95a57114ba79b2c1f12b74dd703179ae3ea35a861ffb36611d04c88948bbdf2f71ad36394f', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-03-26 15:03:44', '2020-03-26 15:03:44', '2020-03-27 16:03:45'),
('1b37d107721a07a51295422d8dba9b558325bdda06e25ddaea1d17b2d3570e1d09d4d63a483e14a6', 1, 1, 'OfficerSignPassword', '[]', 0, '2019-12-10 13:40:22', '2019-12-10 13:40:22', '2019-12-12 13:40:22'),
('1c09178cc47dd77958f7b025925ca7a7c254502756b22ea66ce227aa9c4acd01cb6e1ed13e318b2c', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-04-11 23:29:04', '2020-04-11 23:29:04', '2020-04-12 00:49:04'),
('1cdf6c3e75a5ef7acca3c37d4540afd9af69df4c7b322fd059a64b5e651d3ac62bcbc3b964be9470', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-05 15:08:05', '2020-02-05 15:08:05', '2020-02-07 15:08:05'),
('1cffc3b25a6cafba31131e052800ae34d5199e24c8527cce6986758a7511098e6badf3636c254eb8', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-04-11 23:21:14', '2020-04-11 23:21:14', '2021-04-12 00:21:14'),
('1d05003bb243c3d719a13ba3da2b28b9df69e2dc4f4301456e7a7d21577889d11687be555f2d143b', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-13 10:47:43', '2020-02-13 10:47:43', '2020-02-15 11:47:43'),
('1d0a7ccf7a34dcf23defccac26b820180655552fe65d50db26b936c496c1da7b72617466882c21f3', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-04-13 14:57:27', '2020-04-13 14:57:27', '2020-04-13 16:17:27'),
('1dc53ab471ef7e95853c6cee1f33f32f94df63ee8bc1f602f5a37af92081b3c20becc90999d3adbf', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-17 16:44:58', '2020-07-17 16:44:58', '2020-07-17 18:04:58'),
('20c2bbf49f67f9aa09caf34590893bc231c7abba265ebe674bac57aa92175d4f844fbdbfa172b4b0', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-01-08 13:08:37', '2020-01-08 13:08:37', '2020-01-10 13:08:37'),
('2250556224dabae39c0c035e8f0c9362e508bf3b2564901277fb3edbaebdae53a48725e1c144e945', 4, 1, 'OfficerSignPassword', '[]', 1, '2020-04-13 14:15:12', '2020-04-13 14:15:12', '2020-04-13 15:35:13'),
('22a6ddb3d0aea97eb4a0d07f9f75f144caa8f7abf3eb214dc93aa7dccdbc6ea039dcb755f9f53559', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-25 07:00:06', '2020-03-25 07:00:06', '2020-03-26 08:00:07'),
('232e028c911f81fec6e8dfb7fe6ba393ec1d1bec09ce88f211ecfd0aa8f59796ff0fd1b267ea9686', 2, 1, 'OfficerSignPassword', '[]', 1, '2019-11-20 14:13:59', '2019-11-20 14:13:59', '2019-11-22 14:13:59'),
('233614a934fd40408607cad50e7b13d25d4df1a34acba0b68f7c3fb605f50cc9b60f658c5cb38175', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-07 23:29:56', '2020-02-07 23:29:56', '2021-02-08 00:29:56'),
('234346955bc2c0cf69e543ca24918bd4b9dd9395fd786877eef7aef2c31438dc80f734b7e20043d1', 2, 1, 'OfficerSignPassword', '[]', 1, '2019-12-06 11:47:07', '2019-12-06 11:47:07', '2019-12-08 11:47:07'),
('24245081a235a5c6bdb0b0fbd6d9e2ac4e6d081f926789df0970f812e34fc6974f294aa43b96397c', 1, 1, 'OfficerSignPassword', '[]', 0, '2019-12-02 07:27:16', '2019-12-02 07:27:16', '2019-12-04 07:27:16'),
('244e1e3cd99381eaddba05d0b69014624b1ab2ae45313859bc92ca1e2879a8a6aaf8118deb46239a', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-04-11 23:17:42', '2020-04-11 23:17:42', '2021-04-12 00:17:42'),
('24fff9a1b9d44645073e33c3cdcd884af55d2356f0b882bfc42eb4904900fa39d7523c356dc8aba8', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-10 07:52:05', '2020-01-10 07:52:05', '2020-02-09 07:52:05'),
('26886434bdf6f198cdbb88f8f80e05790a8fcb15f83d445a06f868bbe0a5af55fa7ed5b4d477639b', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-03 16:50:25', '2020-02-03 16:50:25', '2020-02-05 16:50:25'),
('269ed274debbecf4325081e2785c5808fd4aae53b51b64930129589cb134bfe457589822a62050aa', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-11 18:48:04', '2020-02-11 18:48:04', '2020-02-13 19:48:05'),
('2a1f46ab44e8352a155d1a69284d1d691cf0f74cb1015aa6f8f3dc8a1b5cb9af16e3337e6cba9fc5', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 07:05:32', '2020-03-23 07:05:32', '2020-03-24 08:05:33'),
('2a82a8324c93cfaf29a3e448cfa36a7785d06d8dac134f90bb93303f26d862cf2d1c933e5cfc2b06', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-03 08:41:10', '2019-12-03 08:41:10', '2019-12-05 08:41:10'),
('2af7b35111992dd9c8c6ef0516fdbc86de22138753aa04f4ba2a236b00903967c99d92302368da7b', 2, 3, 'OfficerSignPassword', '[]', 1, '2020-07-26 19:57:35', '2020-07-26 19:57:35', '2020-07-26 21:17:35'),
('2d7b55d12408b714b5e5f50d76fb61fbfe9c48b029e14fd4c3c2a62578c9bf1eeb24a7fb97f63100', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 16:52:56', '2020-03-23 16:52:56', '2020-03-24 17:52:57'),
('2fa854fed0c12076effe8c20ab418752648fe489cbf100545b6bec3511741db4932c85c3a227b4dc', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-25 08:22:58', '2020-03-25 08:22:58', '2020-03-26 09:22:58'),
('30510de4010649a9a8b0c843fb7911ccd774b9f451f053812d9b72aa10afb9839c169f88db6c411a', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-02 11:56:53', '2019-12-02 11:56:53', '2019-12-04 11:56:53'),
('30c5971619bf3b9396d82dd000e5d936cc865823d085880f872a1df962b26ef0273bb28ec4725364', 4, 1, 'OfficerSignPassword', '[]', 1, '2020-04-12 00:16:33', '2020-04-12 00:16:33', '2020-04-12 01:36:33'),
('3128ed67ec7c4f95abbd098dfcfd1c5ad990eb33f80a4fae4fa1f624c986648f1d3aa99ff249e3b9', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-03-20 16:42:25', '2020-03-20 16:42:25', '2020-03-21 17:42:26'),
('314702cc6e4e22c431a28c345fc152bcb115eaf7091ebd53f2528d8cbfd5d0655e61ba9a95ee50f3', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-17 16:54:46', '2020-07-17 16:54:46', '2021-07-17 17:54:46'),
('32a7e067d3eaa96cffdde260bc3ab5dc886e49abc2a7d8ee0adccf778fbfb8d04c9ffceb0241c261', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-12 16:50:36', '2019-12-12 16:50:36', '2020-01-11 16:50:36'),
('33032136d5188872a9c481433228501f39602e7a8b3e795c2522a601704545ddf112dd9f416435a4', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-02-13 10:47:27', '2020-02-13 10:47:27', '2020-02-15 11:47:27'),
('33ae83231ae1d795fa0d6e39f1cd4bbd4aba76f72a9d64114bad98f49f8fcd78fc378c0475029408', 1, 3, 'OfficerSignPassword', '[]', 1, '2020-07-18 22:59:55', '2020-07-18 22:59:55', '2020-07-19 00:19:55'),
('362b3fdfd4b25620e67d08894897911c14e9b56506060bfc629f27a3eee08bd7eae2443c4473b533', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-03-23 14:26:45', '2020-03-23 14:26:45', '2020-03-24 15:26:46'),
('38021edf4c46b5806336b7f183dbdd1195dd21de78fa4c8234868821cd7686d05ed47d0ee321146c', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-04 20:11:48', '2020-02-04 20:11:48', '2020-02-06 20:11:48'),
('383101c12712ef018213ed910311dde967888a51cdd434dce6612e3235e951a5aaa3b8cbb1b49c22', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-20 14:28:28', '2020-03-20 14:28:28', '2020-03-21 15:28:28'),
('3970c928faf19d7f2d1de792c45287c0a66a228a0e84aa66a6efb8735c9d1d9a794fea4c64222195', 2, 1, 'OfficerSignPassword', '[]', 1, '2019-11-19 15:44:41', '2019-11-19 15:44:41', '2019-11-21 15:44:41'),
('3aebc8201261720fb9177c13814fe5f475c3576140b92f7095284326258c78e55a779a3674998e1c', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 11:10:42', '2020-03-23 11:10:42', '2020-03-24 12:10:42'),
('3b22e5654d5ff815e83267c67071ab75b0122d42d4a2cf3c82c22be913781639bd1b9fbd770abb23', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-31 13:47:10', '2020-03-31 13:47:10', '2020-04-01 14:47:11'),
('3c66e37a1b425577d8f2a22e9ee22b022d14a080bb4cdb823026a3173e67c1c617323514861db038', 4, 1, 'OfficerSignPassword', '[]', 0, '2020-04-11 23:52:51', '2020-04-11 23:52:51', '2020-04-12 01:12:51'),
('3c76dacfe54a19fa2eda0bea521261ff3300e78fd0bcf3de6316204b701eef933566e83ac484dd8a', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-18 14:14:17', '2019-12-18 14:14:17', '2019-12-20 14:14:17'),
('3d29455a9ec1d86a4979d5d2fe645d68756ddcfbeefb957afc748cfa602c07488340578a656a3621', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-03-25 09:06:48', '2020-03-25 09:06:48', '2020-03-26 10:06:48'),
('3d32a5c793b248aa2eb39224e109154d9085b5ed75b358109c364f6a2bb84c3e93c156c043d02f52', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-04-23 12:11:19', '2020-04-23 12:11:19', '2020-04-23 13:31:20'),
('3f0dd509778ddc2a3afff8b9d20a1598ff44b555edf8e14919eedda2591f0e047aed038b2b7d032d', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-13 10:32:22', '2019-12-13 10:32:22', '2019-12-15 10:32:22'),
('4002cbe2275526cded4b40ffc59c618d1a8d43b902265a388c9e9ddbc1b6b87aa43cb4fd0cb55978', 4, 1, 'OfficerSignPassword', '[]', 1, '2020-04-30 01:31:07', '2020-04-30 01:31:07', '2020-04-30 02:51:08'),
('40c4e63ed1ab85cbc7dd9a6d7c77e9a200989efb0c8b96b13d2d74703bdd536ec9045b759ad5c762', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-24 12:17:04', '2020-01-24 12:17:04', '2020-01-26 12:17:04'),
('40cbcc4244c1f68c0c145a92f495e3e2337dfd3ad2d89488342f41e12278bd745fe8be675290c38d', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-18 14:05:33', '2019-12-18 14:05:33', '2019-12-20 14:05:33'),
('410ea9a1e7472ada24ec3db0523daa381a83d0280d72654dacd336404311deb7d77ece71daffbb10', 2, 3, 'OfficerSignPassword', '[]', 1, '2020-07-19 20:29:07', '2020-07-19 20:29:07', '2020-07-19 21:49:09'),
('419f303e0973de1ff08b70b00882c48db0deb7fa095be61db2c1ccc8ae4774dcd4a7cbd633afc82a', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-07 23:33:08', '2020-02-07 23:33:08', '2020-02-10 00:33:09'),
('426d72662cfac07337a71609be57116fe6c5bdac38ace37898cbd492c180485d9f5ddbe70fda036a', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 13:10:55', '2020-03-23 13:10:55', '2020-03-24 14:10:55'),
('42d10865289d6cc3f4df9c04b4800ac8af7dd02eff9f50ee48ca2babf8a49f587ec4d2ff27f6b288', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-01-18 11:06:32', '2020-01-18 11:06:32', '2020-01-20 11:06:32'),
('45a758107cb8ad50c709343e0ebdfaf0fe9c73d8ed2c724ecaef9a89e08a255064c85adc32a2e916', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-10 12:14:49', '2020-02-10 12:14:49', '2020-02-12 13:14:49'),
('45daa37dd5ddc08243426e75867472c1dceb7ee6601a939548b3b70bf1081deb5c98c4c2e6a9c9c8', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-28 11:40:56', '2019-11-28 11:40:56', '2019-11-30 11:40:56'),
('45ec4230c54d7c384e3bf92869a8372953c800a0733590fc550290304b04f61bdba619f141020712', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-04-21 08:58:07', '2020-04-21 08:58:07', '2020-04-21 10:18:08'),
('468f2817d0ea6857bc734e0f0d88c2dbc5a46136a50a2a97e066889ecadfa55080d30ebfe2422252', 4, 1, 'OfficerSignPassword', '[]', 1, '2020-04-30 02:58:06', '2020-04-30 02:58:06', '2020-04-30 04:18:06'),
('4789897c39864e674d00fcd97ad8e52d7af7a8509b293df4663ecb3954391e9164f9a3f74e70f458', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-21 08:49:55', '2020-07-21 08:49:55', '2020-07-21 10:09:57'),
('47aa9b64ec613a99b6506dde89500b096f9372868e2b7d2bb282169d5aefcf23c1138134e6718f2d', 2, 3, 'OfficerSignPassword', '[]', 0, '2020-07-18 00:00:16', '2020-07-18 00:00:16', '2020-07-18 01:20:18'),
('47c2ed74cec2197edf63137d7ab3a4f7fff2c9395a1182feb013be4ee4b33faec3c118cdb58af67d', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-01-18 11:09:07', '2020-01-18 11:09:07', '2020-01-20 11:09:07'),
('4887d501f9c9463bd45dc0b17c49ee89310ca60d9409a0170d9788d7e5a60f5be8d314177c0965b8', 2, 3, 'OfficerSignPassword', '[]', 1, '2020-07-19 20:43:12', '2020-07-19 20:43:12', '2020-07-19 22:03:13'),
('48955ea50ed5ed2782b81b63141371e4f4b166aaffc18fd2d9ef66bff71b59a12bb540ef6b488311', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-10 11:55:43', '2020-02-10 11:55:43', '2020-02-12 12:55:43'),
('4a02d983b05ca4dc2f3049dbf32824fef4f3b1da212b6a57bc86e321ed0ac95d6e10fa13c89801f5', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-24 10:03:48', '2020-07-24 10:03:48', '2020-07-24 11:23:48'),
('4a9d0c37af6ef4321856509fe87d3ec5b710a97ffb4c54a59b8118b65aa3bbcd798022294a5768fe', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 13:08:32', '2020-03-23 13:08:32', '2020-03-24 14:08:32'),
('4c57b24d6b49feb9ee232d48e0260cb6c20facbe12f7da86a2a3945462157ed1a27e840f35851908', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-22 15:11:33', '2020-01-22 15:11:33', '2020-02-21 15:11:33'),
('4cc539a0d1307f608dc09e9d8ddc533bbfb644df0e87e22f5fa4fa5b3a8e681023395f45d37f4615', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-01-10 12:30:00', '2020-01-10 12:30:00', '2020-01-12 12:30:00'),
('4d94586267c008c4c1f17cc93a56b33b132e41e4ea57e55b4fb2757cc556ba1d2b2b9a43305be95f', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-07 23:12:18', '2020-02-07 23:12:18', '2020-03-09 00:12:18'),
('4fd489e3cc0154a7d1f9dbe0f8da568add189c1affca0561fce795ba4462f3f2650617b7bc1e1387', 4, 1, 'OfficerSignPassword', '[]', 1, '2020-04-30 04:37:02', '2020-04-30 04:37:02', '2020-04-30 05:57:03'),
('5051208d74067a4ff240b96a69b64f93ca0e10b718600b2aa08d97672896d8468311c47bc0d78c85', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-07 23:34:39', '2020-02-07 23:34:39', '2021-02-08 00:34:39'),
('53d2cc00e6150826e4a6efdd3f3fcba9752d8aa0b4eb4a1a3338d1c997b3e629bf5cb9a23c774107', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-04-21 22:44:31', '2020-04-21 22:44:31', '2020-04-22 00:04:32'),
('541391c3fb2e601159e25201216cfe691de3cd9b0f8393364c1f1481525beb4b077326b12428775e', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-19 14:39:17', '2019-11-19 14:39:17', '2019-11-21 14:39:17'),
('57db40e4c76e26d6827daf13fee10fbe7313a7b4046e1279c708c19c8e86d7bbe61dae5c2c2e5ffa', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-28 11:27:19', '2019-11-28 11:27:19', '2019-11-30 11:27:19'),
('57ee911679ef3215b2b1f34f16a5c1026d7a86e567a75bf2e420d5b71d8a4e20dcd24404f3a1e62f', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-02-08 11:56:37', '2020-02-08 11:56:37', '2020-02-10 12:56:38'),
('58598b665ea1f41e88d5f6383628d6b7da958680384e7fafa67663178f6b1e9004e3bfebe919de1f', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-18 00:54:31', '2020-07-18 00:54:31', '2020-07-18 02:14:32'),
('5aab96889bdafdf0397437381ca28d0c8e0a03574e40f03c705b7d7651e93d73542a575f10d894ec', 4, 1, 'OfficerSignPassword', '[]', 1, '2020-04-30 01:22:58', '2020-04-30 01:22:58', '2020-04-30 02:43:00'),
('5ab3b09763ff5c555dcafd82ea85c5172885774a3a4474def84f3ff7b22b490c2f694e4246096683', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 11:32:39', '2020-03-23 11:32:39', '2020-03-24 12:32:39'),
('5b112f2eb68601011f6f2e57e1430b4cf58ae8d6c01bd48a89945b0c14768ed3e3caa28a7b8a34a9', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-17 16:56:57', '2020-07-17 16:56:57', '2021-07-17 17:56:57'),
('5b14df99e7bceaa17a8d124e268f071bc79e4c0227b3f9cbc9ddf30569593dd18217b99b22202c8c', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-04-13 13:48:32', '2020-04-13 13:48:32', '2020-04-13 15:08:33'),
('5f40ffe516e47e75239b5e73e8f52a29cc3198ad07b0df85c8eb98a0cc6fd9f11ce2d9a5b50bec84', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-17 16:46:59', '2020-07-17 16:46:59', '2020-07-17 18:07:00'),
('5f6aa7ad0cb497c8c2c3dacba0c4a88c62ff2388b843eb485c6276db282284991f045aca46136d8b', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-03-23 16:04:26', '2020-03-23 16:04:26', '2020-03-24 17:04:26'),
('5f9b140493a1435489582669a9abb36897434f7b60113648daed45f1a062a534a6b3c57f392a54dc', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-04-11 23:23:39', '2020-04-11 23:23:39', '2020-04-12 00:43:39'),
('60c254c34de39152b3e0e72b13cdfbba726746e0f6ac1087738a7d0bd9f2862fd05d6478f75b5bf2', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-20 14:57:39', '2020-01-20 14:57:39', '2020-02-19 14:57:39'),
('6131479a7f1a31cf5b14bd96ca69977671aa17a264c9acdb4ab307a38b1a330c204028c600fae403', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-08 12:27:59', '2020-02-08 12:27:59', '2020-02-10 13:27:59'),
('61eec04d91e0d560b3ddfa6659a11f1074c59fdddd407df39e7a0a3470831a19e14baae20812d513', 2, 3, 'OfficerSignPassword', '[]', 1, '2020-07-23 13:20:11', '2020-07-23 13:20:11', '2020-07-23 14:40:13'),
('63319faea8476d2e8fd3995fd4b8c15674207109f095b1cef8a675e5c2bf04e3c84a9e9bb12e09c0', 1, 1, 'OfficerSignPassword', '[]', 0, '2019-11-26 16:29:21', '2019-11-26 16:29:21', '2019-11-28 16:29:21'),
('6602556b9f5d91b93bced2a7138eeb6df0027435d0956b5144507f32ed6023dc28c49f4b0f77ac40', 1, 1, 'OfficerSignPassword', '[]', 0, '2019-12-10 10:41:18', '2019-12-10 10:41:18', '2019-12-12 10:41:18'),
('69b7b7948865649fb561084e726fe3389548ea08e8427d38ca10f148fdae15149ab3bc27aefa2763', 2, 1, 'OfficerSignPassword', '[]', 0, '2019-11-28 11:28:24', '2019-11-28 11:28:24', '2019-11-30 11:28:24'),
('69c64676121059efdfbb89b92b4689d14e827fc3e2731ed9be5ce7264b0090c3a277232786b9e18f', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-04-23 18:52:40', '2020-04-23 18:52:40', '2020-04-23 20:12:41'),
('6a19561fa96a8e48786d8ab69a497a46d241ed4fed447de8122a4ff015b253dd855f8efbf3f146ed', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-03 08:37:17', '2019-12-03 08:37:17', '2019-12-05 08:37:17'),
('6ac739cc71d366876f9079963f7546c15735d08135f72ee009bda6824586bc2e6ebf5b6c49021fb4', 2, 3, 'OfficerSignPassword', '[]', 0, '2020-07-27 10:25:33', '2020-07-27 10:25:33', '2021-07-27 11:25:33'),
('6be0a78e7290b3a95af7e7365fba475eb05c5fd4854495eea53d0ba75134a2cfea417c3ab8392421', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 09:51:49', '2020-03-23 09:51:49', '2020-03-24 10:51:49'),
('6d2928ea1164ca8f3e89bbbaba9737512de6eeb4cd2af53c3558b305d4fbd4324b627595c711005d', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-11 18:22:23', '2020-02-11 18:22:23', '2020-02-13 19:22:23'),
('6dc245f18025ac0d62445517d6c14e183c0e5b8b9a3bb9e390ddc1e50837e5fdea23b4ab3efe9c2a', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 13:17:58', '2020-03-23 13:17:58', '2020-03-24 14:17:58'),
('6f7189ac1f8830f2a39f6dcc711eb06e208721d55d64fdcc663290e8386627b8cc5388269a148747', 2, 1, 'OfficerSignPassword', '[]', 1, '2019-12-02 10:16:30', '2019-12-02 10:16:30', '2019-12-04 10:16:30'),
('6fc53e79fb8255c7e6f9fa5815f537b42a855f6a6f4d08daa90b289fd80824b11e7f30f156c47c2f', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-17 16:47:41', '2020-07-17 16:47:41', '2020-07-17 18:07:41'),
('707d56c606207f7634c82bb850fe952471aadfb27993feb399a38e00a641efa89f1a8d651d956a17', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-20 08:34:41', '2020-03-20 08:34:41', '2020-03-21 09:34:41'),
('70c5556426de9192750a59dfcc46dd53fe67804ada73a882cd2f50585807f6ed44cfeda6f823d6a1', 2, 3, 'OfficerSignPassword', '[]', 0, '2020-07-27 10:25:16', '2020-07-27 10:25:16', '2021-07-27 11:25:16'),
('71e0637fa98ab2eb4d039902344b2a9907062b91d2f0dc3a2b661ecb93278a244221ec3b86bcbdc5', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-01-29 08:40:44', '2020-01-29 08:40:44', '2020-01-31 08:40:44'),
('74e7f0f0ce8aeefc36a1d23bd4a0a3f9f382c1423b723604fb2ff66a4124255eb821654f7d511c16', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-04-11 22:07:00', '2020-04-11 22:07:00', '2020-04-11 23:27:00'),
('764b25c340cdfcca08d9624817a77c35ed7db783d1e615704c41e4185a8bd4ee37f4409851176c34', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-10 07:05:14', '2020-02-10 07:05:14', '2020-02-12 08:05:15'),
('77a8f9b5fba4e3d57c838c2409a08178597f55dd97178532effbe937338efbbe26ddfaed1af41304', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-01-20 14:34:28', '2020-01-20 14:34:28', '2020-02-19 14:34:28'),
('77c1dfa910b5e3e95547abfe7693eafabd2a880cab80f87d6ac4055b919b0b3061422794b4c9fafa', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-28 16:36:02', '2019-11-28 16:36:02', '2019-11-30 16:36:02'),
('77eb106a0ddf670730203124ed157c926d0e3edc14d9fe343cf69867d97b766aa82ab7d56cbbda7b', 2, 1, 'OfficerSignPassword', '[]', 0, '2019-12-02 08:58:06', '2019-12-02 08:58:06', '2019-12-04 08:58:06'),
('7c3e16ea7d5cafa50ed23ff83a28aa6896e02352bf52761c011ba971a64ac42cab7f8c57fe985ef5', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-17 16:48:49', '2020-07-17 16:48:49', '2020-07-17 18:08:49'),
('7ffb5c14278a254d74d97a9964b98619152b516933aac79f3786885f2a6f397e7adb9aab735a418e', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-19 16:43:30', '2019-12-19 16:43:30', '2019-12-21 16:43:30'),
('8143b884ece4158f36a603e176e7900cfea6ec46e43f08b57ad71f5e73fbd4a169e2850c23f35543', 2, 3, 'OfficerSignPassword', '[]', 1, '2020-07-29 12:56:11', '2020-07-29 12:56:11', '2020-07-29 14:16:12'),
('8246d888a3c8fc7e6a28bed7c5d06fe6488c8f1e50319a162aa840234f9ca8100a57780829eab151', 2, 1, 'OfficerSignPassword', '[]', 1, '2019-11-20 13:56:01', '2019-11-20 13:56:01', '2019-11-22 13:56:01'),
('831076d354136ac8aa3ef638c462425bce84981d0683b93667370cd0463183b5310d19c6263c21bd', 2, 5, 'OfficerSignPassword', '[]', 0, '2020-08-03 19:31:00', '2020-08-03 19:31:00', '2020-08-03 20:51:00'),
('8360d08b78c88c6942be9ae87c82c2ec2a2f5b8684b1062a131db0c4f89b5f1b532a602cb53abb1e', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-04-11 23:30:20', '2020-04-11 23:30:20', '2020-04-12 00:50:20'),
('8378c6e21c5e2459ec2f5a53417aeab253d9ba58b16880c37eef813f7b8e048749f8061e9debf9a6', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 09:41:01', '2020-03-23 09:41:01', '2020-03-24 10:41:01'),
('83b5547b9b79cdd9c88690e539b95e153eeae45dfa931c1381d9383e41f87669f4d6768546c4cb2d', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-08 12:28:33', '2020-02-08 12:28:33', '2020-02-10 13:28:33'),
('84c17c7f3192637b7608eb84628a0dd3e9edc2664403de63f176514aa55d3c06724cd2e40b64aa12', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-08 11:56:58', '2020-02-08 11:56:58', '2020-02-10 12:56:58'),
('8533783e4a3fcc0c391f546fdb9689dbbb6d90114b89653b9fe484bde548e708555df77533fbbc19', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-01 00:14:02', '2020-02-01 00:14:02', '2020-03-02 00:14:02'),
('85817d555db39a576d91ef980b16f2ab2540eebfee65087511420aea5d6b20a9b2df23e30dfa6edf', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-27 23:33:59', '2020-03-27 23:33:59', '2020-03-29 00:33:59'),
('863c0651226a7a0404ba9390d46b90f106e0bc65a19407fbc03a1ba7e4862a3b9f319195932c4834', 2, 3, 'OfficerSignPassword', '[]', 0, '2020-07-27 10:24:13', '2020-07-27 10:24:13', '2021-07-27 11:24:13'),
('870bb11cbd07d556d25f14f32a586771e77124084716391cc921146fdd0367e3b01eb5298a5498ce', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-07 13:18:51', '2020-01-07 13:18:51', '2020-01-09 13:18:51'),
('8866539e661b7bc90aed9883193aa7d3ba84bde4ef5ab6ffb3c0ae436eeea44e39e9cfac8c17bda3', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-08 12:34:19', '2020-02-08 12:34:19', '2020-02-10 13:34:19'),
('89bd7f82fe116efde687dbe951325773e5573d4e6a6ea84f49a31a8c52cefeb7e552d2d67b2ee61c', 1, 1, 'OfficerSignPassword', '[]', 0, '2019-12-09 10:03:25', '2019-12-09 10:03:25', '2019-12-11 10:03:25'),
('8a30c78842874e2f929ce6726980a804b7b542d4f32b15d1d99a81a7269ee7b31018a26e9c50e9f1', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-06 11:47:27', '2019-12-06 11:47:27', '2019-12-08 11:47:27'),
('8b7bceccb20858a26fc3641044b653faa53879bc6a8f00daddbf2dd78ab326cd1518ef8e9013b369', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-08 08:35:38', '2020-01-08 08:35:38', '2020-01-10 08:35:38'),
('8bea6790bce973f9c9b01c2b181cceb9f5cebfc940e97000059b0c6823d9fa8fab33edab6d1199fe', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 11:23:50', '2020-03-23 11:23:50', '2020-03-24 12:23:51'),
('8c68fcbbcf0d9b480490e1867f9d52bb88d31489910df6fd04bfb133e841173e1624cd273ce0f19c', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-13 13:42:03', '2020-02-13 13:42:03', '2020-02-15 14:42:04'),
('8c88b1284e57fcd0ea86d9deb6c55b00459716da991d7af14f6fe2cbd145f30843e716376abed35e', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-25 13:06:40', '2020-03-25 13:06:40', '2020-03-26 14:06:40'),
('8d691034460c21fe49e32d95424b5696a814e417c8bcaf75a89ae1b36f8d155cc5003ce0065400f9', 4, 1, 'OfficerSignPassword', '[]', 1, '2020-04-11 23:46:02', '2020-04-11 23:46:02', '2020-04-12 01:06:02'),
('8dec94e5227118128edf669e87c4e2486579a2dccefdfa7290efcd50d820fe1a7bfe704004283516', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-01-09 08:30:57', '2020-01-09 08:30:57', '2020-01-11 08:30:57'),
('8f4410feedc39593c0d651a6ad691f93df70a2078a24151dac98f4fea889ca4f74925f40b73848b8', 2, 3, 'OfficerSignPassword', '[]', 0, '2020-07-31 01:23:55', '2020-07-31 01:23:55', '2020-07-31 02:43:55'),
('91873fddd1d9a1cbc1bfd5f84c4b93abd7127d266a924eba6b001ecd6c1567a71cb07975c22a28d8', 1, 1, 'OfficerSignPassword', '[]', 0, '2019-12-10 10:15:15', '2019-12-10 10:15:15', '2019-12-12 10:15:15'),
('9212ad4da569404071b0feac82bdb6f2d39505775736cd1db0f8aa6cd216d604648f73f6f36038d8', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-08 00:02:57', '2020-02-08 00:02:57', '2020-02-10 01:02:57'),
('97671ce5c2545698d9d5cdc9ccf839f4b333c9f74f03920f0c719635060b804132bf47722acddb65', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-14 09:48:50', '2020-02-14 09:48:50', '2020-02-16 10:48:52'),
('978ddd0e84a7933c84857b19a8b6625279ce4f92b85b068ec9f3c506508412122b2af76a9270833c', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-20 16:21:49', '2020-03-20 16:21:49', '2020-03-21 17:21:49'),
('97dde5d6022e4b81ab934df23bd71dd47ea3bf8b83e15f58a9e830c21655d9c9adac189260b0993c', 2, 3, 'OfficerSignPassword', '[]', 1, '2020-07-27 10:27:17', '2020-07-27 10:27:17', '2020-07-27 11:47:18'),
('98d56b524b52a72884855317acd5a3780d3c3cbce92b440e9da094e8557aeb12a20b86769ac453c3', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-04-11 23:18:33', '2020-04-11 23:18:33', '2021-04-12 00:18:33'),
('996f94a453173f7559bede85bd131d6d33ae65c810a783013137acf076509df57ed2f059be27d47a', 2, 1, 'OfficerSignPassword', '[]', 1, '2019-11-26 16:16:48', '2019-11-26 16:16:48', '2019-11-28 16:16:48'),
('997aa89d55d47b96fc6a70bd036bb4783800b09c3b6813586a0c7c3aa5d7bddea47f00d6e55efcb6', 4, 1, 'OfficerSignPassword', '[]', 0, '2020-04-30 03:46:15', '2020-04-30 03:46:15', '2020-04-30 05:06:15'),
('9bc651e4bf114a5ac2c90fa8171a1df45751f30f0c34572eb5ec737cbfb67de9a8e8c088af6c1f5e', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-20 15:52:16', '2019-11-20 15:52:16', '2019-11-22 15:52:16'),
('9e80913be5642e6c1fee4d2581c7e26e3d01db895181b9474b27442ae1b4a0aada9e93bd0f69fce2', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-04-21 23:47:53', '2020-04-21 23:47:53', '2020-04-22 01:07:53'),
('9ef9ebc061a023651d415c6b665f2d80ce7dff0c4c731e20727ed8f94834b62dc965086c6a3d97ab', 1, 3, 'OfficerSignPassword', '[]', 0, '2019-12-19 13:52:58', '2019-12-19 13:52:58', '2019-12-21 14:52:59'),
('9f8fdc91f83fb0294eae50e8f63fa817df8dd17d8555631adfe7f83678c615e598b03fd2bfef74f3', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-08 12:33:15', '2020-02-08 12:33:15', '2020-02-10 13:33:16'),
('9fb9e7952dc5f91a17fa9c134b5056f296c3afdf83f9d226beaa341d2490c2a7c0bc500872919005', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-01-19 16:17:39', '2020-01-19 16:17:39', '2020-01-21 16:17:39'),
('9fc5e2c381b9a4c523bcdf4048d4ce236d34c6bb9dbf81f6db97fcbce536a184f369180bf92d0be7', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-07 23:15:08', '2020-02-07 23:15:08', '2020-02-10 00:15:08'),
('a0683ae34a3f27ef745208028c371a2dfc58f67efd914ecfe7df69c56ea0a230b0a0578d90939c2e', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-01-07 08:54:06', '2020-01-07 08:54:06', '2020-01-09 08:54:06'),
('a14f292852b613cd416b18506eed92a582c863ae95d7b678ef6634d0af701abdfe5b9a65bdabf0c5', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-01-09 10:50:47', '2020-01-09 10:50:47', '2020-01-11 10:50:47'),
('a161978523465846a1802e6186b489947b1be5218c784728ef32cc0bd0c85f1756f9fbdc2ff3d951', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-02 16:48:10', '2019-12-02 16:48:10', '2019-12-04 16:48:10'),
('a1676eb17f9c11e2e02dcaa3f62868d76f9a359eaa067a5e559579753a1822b7b90ddc6b087e72c1', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-03-26 15:04:09', '2020-03-26 15:04:09', '2020-03-27 16:04:09'),
('a189a79117ecadbbf4672761bf44a63ebf268c8dc292c4995abf1336793410ddee932e8daff89ec5', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-28 08:06:49', '2019-11-28 08:06:49', '2019-11-30 08:06:49'),
('a2e0157ee6ba9801bed4998b48137ed15cdbfe1bbe83bf9473b321d3777d64cd0197020ff708f634', 2, 1, 'OfficerSignPassword', '[]', 0, '2019-12-03 12:47:20', '2019-12-03 12:47:20', '2019-12-05 12:47:20'),
('a467addec9179c6eb4cc97c5b93a4b44ad463e70d3d900307e3185c08c02c67ff3f47b255b9a79bd', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-06 11:46:39', '2019-12-06 11:46:39', '2019-12-08 11:46:39'),
('a583c9ea681fe80e9fc24fbf34a24a55659cf36cb5ce847c3e0b275beaf9c63362c6b5a6d3b25799', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-19 11:43:52', '2019-12-19 11:43:52', '2019-12-21 11:43:52'),
('a849b89f4f560cbcba4f2e2b669197f3448fbd3aafd31f27cab56aaad620b4a818cd64808993d3cc', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-01-07 14:05:59', '2020-01-07 14:05:59', '2020-01-09 14:05:59'),
('a86c5c557698f86d58806a0e6b24a587c254eb7c55993f33c10b9035a53366450bf47791ee03559e', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-25 07:46:31', '2020-03-25 07:46:31', '2020-03-26 08:46:32'),
('aa7ca8321d945d3e50c512484cb0a27c665ec3c478ff7282b41eb0edf71c68971a5554aa429a4535', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-07 23:29:12', '2020-02-07 23:29:12', '2020-02-10 00:29:12'),
('aacea188521eb13362097ef73aac0f49b8795262191cfd1ea996f532871ed235484ab89581a18c80', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-03-23 16:56:22', '2020-03-23 16:56:22', '2020-03-24 17:56:22'),
('abb4f125d40a67fac8ee5f7c78bbd9d25efc7a142eaa3a4a24b3b53cdca7baa5dc953ef73524b335', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-24 12:09:43', '2020-01-24 12:09:43', '2020-02-23 12:09:43'),
('abb985cd00b621801440986f665020f842def55b2b5db2cf51628822c011ba8418a50351c41b8c12', 1, 1, 'OfficerSignPassword', '[]', 0, '2019-12-19 16:43:45', '2019-12-19 16:43:45', '2019-12-21 16:43:45'),
('b0566493ae496d58c7ca4440b759ab3ae1d2d52eaf027927fa3c478026fc9e25c8ba0d14d330127d', 2, 3, 'OfficerSignPassword', '[]', 0, '2020-07-22 12:53:32', '2020-07-22 12:53:32', '2020-07-22 14:13:32'),
('b0eea47fd76353b927f0be0ef6796fe2ced7d8cf71349c72e9c89cfdc0d7dc053c89aefde9590290', 1, 3, 'OfficerSignPassword', '[]', 1, '2019-12-16 13:39:43', '2019-12-16 13:39:43', '2019-12-18 14:39:44'),
('b1a0b731863e1e83e1e31c547bfd9183d1693cc9208406ce79cde79a76f875aee5e93b61a8f4e349', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-06 13:13:56', '2019-12-06 13:13:56', '2019-12-08 13:13:56'),
('b2a2c3869e886741ae03e77b05e439578eecf32a28f0f02ec6f6d413a51e7c543986a714971fe2da', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-08 12:46:49', '2020-02-08 12:46:49', '2020-02-10 13:46:50'),
('b420a022de81227cc0df3e8e4f6896b44fba13dedd085dc3c194f32760fda87bb4fb1b179f1ef759', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-07 23:11:31', '2020-02-07 23:11:31', '2020-02-10 00:11:31'),
('b5a6a4f603d38fcdf09a8d6ed1d9bb6988bc43114f3eddf236f4181167da2bf08f4f4fa4bc94bf21', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-29 11:07:38', '2019-11-29 11:07:38', '2019-12-01 11:07:38'),
('b61c926821ef85fe0f441d7f23f5d90945ccd1a76fb7f0eaec13631eae2d90c3c7cb2eec1d95067e', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-22 09:36:08', '2019-11-22 09:36:08', '2019-12-22 09:36:08'),
('b8b5f6b4dfa11a0f632d9dc1a09b627d6c9572cb532b754b425a4c1f12535883bedb0fee020cf9b1', 2, 1, 'OfficerSignPassword', '[]', 1, '2019-12-12 16:49:53', '2019-12-12 16:49:53', '2020-01-11 16:49:53'),
('bae1efb1d3c215aa95690d93de3dd308d506c1577cc162f6eaa4b92b1f76a62ca8229d5c095644fc', 2, 3, 'OfficerSignPassword', '[]', 1, '2020-07-30 14:02:28', '2020-07-30 14:02:28', '2020-07-30 15:22:28'),
('bb3480cad8017bdf7cef1d7b959c65d032f3407b847e28c7eb2167106d06f844709daa6c990a1dee', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-24 12:22:12', '2020-01-24 12:22:12', '2020-01-26 12:22:12'),
('bf452808cb31cf16e5e51a76437ff0f6c99c73a5db2a62e3c4118abd26bbbc77558930fbf5acf4ee', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-01-09 15:53:15', '2020-01-09 15:53:15', '2020-01-11 15:53:15'),
('bf4c06d37c29851718ee4504c76c0070b869a59666bf734a6f58902eebf06ef04cc09285f4311db5', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-03-26 09:24:19', '2020-03-26 09:24:19', '2020-03-27 10:24:20'),
('bf6e27c7fcbdc172c43fd5ddfae529e780f39a05be6ee09d28aa6e4f9d454e2ff8b4657bc0dca394', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-19 00:26:03', '2020-07-19 00:26:03', '2020-07-19 01:46:04'),
('c13bee6c78d6b20d603bf274460cab5270a1f536b0ad0a77fcc5a6306cdd11c8f4927ec377e23a7e', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-04-09 23:13:24', '2020-04-09 23:13:24', '2020-04-10 00:33:25'),
('c2991f07e045bc26293361a5f02a4db25f0ae174c4364ef5c02ccc15afef3b9c60caf06bdd8d393b', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 07:16:37', '2020-03-23 07:16:37', '2020-03-24 08:16:37'),
('c321a554770cd83a9f86203cd940136c53d79875278a7c0be75fd56820e8420f6c276ec9cd40a77c', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-03-20 10:05:10', '2020-03-20 10:05:10', '2020-03-21 11:05:12'),
('c45d9e78194939d7d87d9356be9d6d3825ed917d02b4e23959b0b960df9228b4b3461a79d623b896', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-03-25 13:04:35', '2020-03-25 13:04:35', '2020-03-26 14:04:35'),
('c5c0d942abf26b335b7f26a154d3cb9f344c82992f0de3827b0dfde971f7749a1707798e855b1004', 1, 3, 'OfficerSignPassword', '[]', 0, '2019-12-19 10:00:55', '2019-12-19 10:00:55', '2019-12-21 11:00:56'),
('c6b0711cf79c6d6e22547751cd41a2bb55aee53a377d74be4c75f5f45b09888a7a7f9f7bcfb2b975', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-01-31 08:46:20', '2020-01-31 08:46:20', '2020-03-01 08:46:20'),
('c7c6ae21ec5805fee83c20eefbbb18489565633e2b36c8d36d5f4043dc5d213504fd2ad8883545c8', 1, 3, 'OfficerSignPassword', '[]', 1, '2020-07-19 14:53:09', '2020-07-19 14:53:09', '2020-07-19 16:13:09'),
('c9714d3cd3cc289a51810edd7cdf62bf1bbf8019f28938238df5432635ca9b4c83e11fe4e6d56ab1', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-23 15:12:55', '2019-12-23 15:12:55', '2019-12-25 15:12:55'),
('ca5886c767a147428c012e47d0d4cc16569bede64321c9b85905495863169d402f40344faab23a1c', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-07 23:36:37', '2020-02-07 23:36:37', '2020-02-10 00:36:37'),
('cb8d851c182ec891a0b07dbaef481e2bfe5f288cdc0a316ec0e1e03fc2630c2adfb06c441b29fe17', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-10 16:00:13', '2020-01-10 16:00:13', '2020-02-09 16:00:13'),
('cdca8dc8ec88086fee0c026163546e9a3e5cfa6ccd775107078df59aa4fbbc60d48d722d486c5cf4', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-17 16:46:48', '2020-07-17 16:46:48', '2020-07-17 18:06:49'),
('cea22b99866dc9206af8953d779cd79b9c971b9320a5d16aa31ca1089d71a62f47ccecd37f90392c', 1, 3, 'OfficerSignPassword', '[]', 0, '2019-12-16 11:09:17', '2019-12-16 11:09:17', '2019-12-18 12:09:17'),
('cf22387f9499b3dec82ecb5c266cc85f02662b59e576726f6c747b1f128a4663c64a632f6f3d976a', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-01-09 16:25:58', '2020-01-09 16:25:58', '2020-01-11 16:25:59'),
('cf6d1aeb646ba30a74c72cf1bb178fa2e916798a70ac6e665218e7d8313112e6633567a20031f389', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-17 16:44:21', '2020-07-17 16:44:21', '2020-07-17 18:04:22'),
('d03552bd519869b12bbb29823dc52438d7571d8ad80d44dd89046718b43c817f496be7ad2b427350', 1, 1, 'OfficerSignPassword', '[]', 0, '2019-11-23 21:27:39', '2019-11-23 21:27:39', '2019-11-25 21:27:39'),
('d108fc9a6527e7ae625bc3b391893623f391fd6435af8f0d8c80c2053da56a415fc07e1fd096a5cb', 4, 1, 'OfficerSignPassword', '[]', 0, '2020-04-13 13:44:04', '2020-04-13 13:44:04', '2020-04-13 15:04:05'),
('d15c65535780509beb692c073be696b0e5973bc4e16c1521fa35be653b548cb3b6f6483cd5622622', 4, 1, 'OfficerSignPassword', '[]', 0, '2020-04-30 04:39:29', '2020-04-30 04:39:29', '2020-04-30 05:59:29'),
('d214486f6fea3e7931c859fa634794457937f7e7a05cbdb28c78393b03b290d9feabea8e1f2495b6', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-04-11 23:22:29', '2020-04-11 23:22:29', '2021-04-12 00:22:29'),
('d327f42d3a2bd3d22dc0e6fb28a73627309197b22015606ae4dbb957161ea28374720aa82af058b3', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-03-25 08:21:18', '2020-03-25 08:21:18', '2020-03-26 09:21:19'),
('d41cce344f2346c9dc8a39f54332304c8e7e133f81ebfe34e45228e021ed3c67daf8c6f748e3fa27', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-07 23:34:59', '2020-02-07 23:34:59', '2021-02-08 00:34:59'),
('d440f6528454aee2b7198a93d0a753879fe9ad1373378009137a7d257d57b0dacc4488ce349f1219', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-02-24 15:42:59', '2020-02-24 15:42:59', '2020-02-26 16:42:59'),
('d61b91ad93bc1a435fb3cc029eb81fa7718741f6075383e0423a57c13a3159e2540ee3b9edb2332d', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-04-01 00:40:06', '2020-04-01 00:40:06', '2020-04-01 02:00:08'),
('d6afa2c0466a12cedac257b634763bc8fe3322a37f9cf4ea9b7f31bbf48efdaf2467215947d12923', 4, 1, 'OfficerSignPassword', '[]', 0, '2020-04-13 15:43:56', '2020-04-13 15:43:56', '2020-04-13 17:03:56'),
('d6d64be11d0f3793cf453e7397346c3b4c5a008f49395d61f3b5e67d3cbe47ac777e184934d2b9e2', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-03 08:08:09', '2019-12-03 08:08:09', '2019-12-05 08:08:09'),
('d888277dfe6b53fc649a114c51ee3f50af2fbb12ed75a95db2e9bdd7a60b5a26c5bfb32ed00a09c9', 2, 3, 'OfficerSignPassword', '[]', 1, '2020-07-24 09:38:09', '2020-07-24 09:38:09', '2020-07-24 10:58:10'),
('d8edc8cb5d62e8e8eeb4ab7d0e26aba0e01cc5811c64e65d3c61078d6bf39297aae8e318f88cca93', 1, 1, 'OfficerSignPassword', '[]', 0, '2019-11-28 13:39:54', '2019-11-28 13:39:54', '2019-11-30 13:39:54'),
('d8ff7543838b109edcbad8c98fa08658c9fd75d54316570ab8b00056e1ff8ac91fb0a6de50765c85', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-03-23 16:04:00', '2020-03-23 16:04:00', '2020-03-24 17:04:01'),
('dd0e3d68364e8e9cd0fd83b160f204b2ce91311cf438fe73f4fdbac2bb7518b2abe27c82fe9e4392', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-04-11 22:02:26', '2020-04-11 22:02:26', '2020-04-11 23:22:26'),
('de7aedf2cb029f0f4ebb092ffad796d011aafc21019316ce5a7f451133cc44b4cf38fd4c5407e6b6', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-03-20 07:43:47', '2020-03-20 07:43:47', '2020-03-21 08:43:49'),
('de931dee9e241e09521e479d51854d982dd97896e19d248643bf3216421f077b5e8d0da4a2decca8', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-01-25 09:17:48', '2020-01-25 09:17:48', '2020-01-27 09:17:48'),
('dff83b4061f4e592b6be8472f5bb3cef43c678ee401073262e11a3fdade7f22962a8e1fa6b2081ef', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-02 07:47:20', '2019-12-02 07:47:20', '2019-12-04 07:47:20'),
('e08f91359fdc657a26fbe86af3cd6bdb711f66f2e4deb3eebf5de2a5a0f3aa97cb449726d951360d', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-20 14:22:37', '2020-03-20 14:22:37', '2020-03-21 15:22:38'),
('e0a08fbd7704f3311e0bc37fe2d7a9ed6b65ac574a85be7245c868f69073cc6776cd00095248f265', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-01-09 14:05:34', '2020-01-09 14:05:34', '2020-01-11 14:05:34'),
('e17e1171fe878c8c7fcfe8a562595443ef8e79cee03c0549ebc7f67d874cf73ae88e5992a8983457', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-18 13:57:18', '2019-12-18 13:57:18', '2019-12-20 13:57:18'),
('e319dc59fadba0fee4365d9ca4883c43047601653020212ce821f11ccbe32aca2aace467a048e64c', 4, 1, 'OfficerSignPassword', '[]', 1, '2020-04-30 01:42:35', '2020-04-30 01:42:35', '2020-04-30 03:02:35'),
('e33e95a92c465a0575ab4f9cdcf101a7f28836f41abfeeabc014e3ef8a56236c6581b01da5ed531a', 1, 3, 'OfficerSignPassword', '[]', 0, '2020-07-17 16:44:03', '2020-07-17 16:44:03', '2020-07-17 18:04:04'),
('e37e6af9ed66902238473443a2f8bedd89719282001b5288b9a808e1fdf02df0569ae8ca1bca2553', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-28 12:12:20', '2019-11-28 12:12:20', '2019-11-30 12:12:20'),
('e3bb158e524518f966db5ec313c1768b79d7c3bd11bf41005b18fd3b7b2660c76c045e9f9da1fc30', 2, 1, 'OfficerSignPassword', '[]', 1, '2019-12-18 14:41:56', '2019-12-18 14:41:56', '2019-12-20 14:41:56'),
('e44f64b10a4cee9a97102653f6b904d9d268c24815fd37aa677357bba82a5e0ae3df73839e906b84', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-03-19 15:54:31', '2020-03-19 15:54:31', '2020-03-20 16:54:32'),
('e44fb730afddcb4439804196e57987ad45eb2c20c195a82887c3b764d5c8231d193da793c069f2f6', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-03-05 08:23:40', '2020-03-05 08:23:40', '2020-03-07 09:23:41'),
('e62a1c5da0a12913829e057fc4e2682eea7444ccf0db05be35b3db94d13c500cad2ed6dbc5fbcdc5', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-03-20 16:19:52', '2020-03-20 16:19:52', '2020-03-21 17:19:53'),
('e7a01173da30466442b498a0e2e5dc731a540982cac0104046fe2de448f2191763aa017e0a858cdc', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 10:50:35', '2020-03-23 10:50:35', '2020-03-24 11:50:36'),
('e8098b29b4c4edc5e68bf4522e1deadf455361600e3cc426c1e749935bfcebe4344d3fbceb9754c2', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-06 10:41:38', '2020-01-06 10:41:38', '2020-01-08 10:41:38'),
('e812586f51f750a753183bcbef1c03076e838d8a6000d03574a260a0cb2ab8d2dde35faa8ccfbe87', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-20 12:42:55', '2020-02-20 12:42:55', '2020-02-22 13:42:56'),
('e81c0dbe13ecca571f34c1aaeba9673a072079fed9ba1ef5bd6867cde44c109d1d3a4b90d624f77a', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-02-12 06:43:51', '2020-02-12 06:43:51', '2020-02-14 07:43:51'),
('e83359d176a6e67350d124b46362327b2914c167eb4ea3f1965ecc9bb4060ec6d9529d0785bfb281', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-20 14:43:31', '2020-01-20 14:43:31', '2020-02-19 14:43:31'),
('e8f6d869e00f2436b6b5c6f88cb60b84bdaa7376e96247d186501188cf0cbd7193ff923d2b4f7eef', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-02-07 23:29:15', '2020-02-07 23:29:15', '2020-02-10 00:29:15'),
('e92dd8064126ccf4e26b983b6483c238f7fd85c515f4d985525cb459c8486718f286c570f79a8e91', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-20 15:11:28', '2020-01-20 15:11:28', '2020-02-19 15:11:28'),
('e934511e239830569196a735305128db71e2d7ef2b02d20e029227468d84eb42ec173bbd965aea33', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-08 08:18:05', '2020-01-08 08:18:05', '2020-02-07 08:18:05'),
('ea99dd15e6953a293f8fa6573b30c3d608046d0305470aad90a2ab3cce4d50ebe615b2880bf6618f', 2, 1, 'OfficerSignPassword', '[]', 1, '2019-12-06 11:46:12', '2019-12-06 11:46:12', '2019-12-08 11:46:12'),
('eaa42bb29e5ff761b36491a9ed4400d9bf9eb135c5e236b7f69d1be89be933fe4d82d9290a1af672', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-25 11:12:20', '2019-11-25 11:12:20', '2019-11-27 11:12:20'),
('ebcd58898b31d5ec7dd59540721f28b263df7687be6274fb0d6988068148a3cf711f826033d951ba', 1, 3, 'OfficerSignPassword', '[]', 1, '2020-07-18 19:47:14', '2020-07-18 19:47:14', '2020-07-18 21:07:16'),
('ecab613981888d75e17293eb77c58364035d73dba5258a48fa3e604305337c34fb4df180fa6c1b03', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-19 16:13:26', '2019-12-19 16:13:26', '2019-12-21 16:13:26'),
('ed13c3c0f91aedb326db5aaf18e11d05f7edf24ab8bb504d176fae26dc561d9b66149f93588a5084', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-30 11:34:50', '2020-01-30 11:34:50', '2020-02-29 11:34:50'),
('ef27d222f1777efe4cecec2bfd40e4cf2484f05a4eed448cf53266e67b637cff454ba1762dfbe36f', 2, 1, 'OfficerSignPassword', '[]', 1, '2019-11-25 11:03:15', '2019-11-25 11:03:15', '2019-11-27 11:03:15'),
('f099d9addddaa1cadfce081acccf0ce70737032b507f1b0759d4f9645968ac5802fdf134afc4645d', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 12:11:41', '2020-03-23 12:11:41', '2020-03-24 13:11:42'),
('f09cd680a26cbde7e4d97a91379f8aba163e5eec30c7425827280542cf99d1419f26cf9705182e45', 4, 1, 'OfficerSignPassword', '[]', 0, '2020-04-13 14:10:05', '2020-04-13 14:10:05', '2020-04-13 15:30:05'),
('f179714cda28468f389819c31292ed0c558075cc4674cc4489fae4a70da99cfa767d1b8fbda3da58', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-01-20 15:24:35', '2020-01-20 15:24:35', '2020-02-19 15:24:35'),
('f1e1a27a6314570da22f4e71594dc5941ce6b56feb9eede25b2491a25c585e748a41fbcc0939ae33', 2, 3, 'OfficerSignPassword', '[]', 0, '2019-12-18 12:50:05', '2019-12-18 12:50:05', '2019-12-20 13:50:06'),
('f2e7fa3b24f5d1d35e5453d28203311cd1015a6754bc05df37251daea0a06104d648db9106a18b54', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-04-23 12:37:36', '2020-04-23 12:37:36', '2020-04-23 13:57:36'),
('f2fb6f1dd51d8f4d2a7c1cb7311a1670ec9b2a62b572604e9c42f3f041d14fc70c9f164e14e9f409', 2, 1, 'OfficerSignPassword', '[]', 1, '2019-11-28 12:39:43', '2019-11-28 12:39:43', '2019-11-30 12:39:43'),
('f2fbbc644be4996686b3372aa85dbb1b5c0cb848faf9494baae4df73bf2ba963e5ab7177383cb4f1', 1, 1, 'OfficerSignPassword', '[]', 0, '2019-12-02 08:09:38', '2019-12-02 08:09:38', '2019-12-04 08:09:38'),
('f32e65635f7dafeaef364dfb7a98f5fd0c4a62c03ed40b540c559f7cbb0426b935fb7cffb97a8a0a', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-01-09 16:40:31', '2020-01-09 16:40:31', '2020-01-11 16:40:31'),
('f575a1da96dec4ddafc047f37a008b0156d1955fd97e9a01832051ab105581f04437fb27d2e64bf8', 2, 1, 'OfficerSignPassword', '[]', 0, '2020-03-23 16:04:18', '2020-03-23 16:04:18', '2020-03-24 17:04:18');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('f57d4c7b6611c8f6cfb7306125f555c1cd6de38a8d3e2b2b1de715b5afd0cc247ac5a74c008627ab', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-04-11 23:43:24', '2020-04-11 23:43:24', '2020-04-12 01:03:25'),
('f5dc82a6a89b5ca53e46fcb66c54582e9736b1a5a911b7e8c7e6546b420e2840291fdd582325c72c', 1, 1, 'OfficerSignPassword', '[]', 0, '2020-01-08 16:45:56', '2020-01-08 16:45:56', '2020-02-07 16:45:56'),
('f660b895b40d17afcbf7e76deab8ff0e0f199d8b10bb0daf16ce944faf8c9fb9592c40f1605bb72a', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 13:36:34', '2020-03-23 13:36:34', '2020-03-24 14:36:34'),
('fb46228f4cc4b97c2f38f93ad71b84f8a0827e3e8fbc1bec15a92106335f86147e06cb75927bf685', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-04-21 22:45:06', '2020-04-21 22:45:06', '2020-04-22 00:05:06'),
('fbbab5b732ae3ea0e8982f3eeadbc6148b03cbeab70bb3f97c3f0989290f82663b066c9bfe387dd4', 2, 3, 'OfficerSignPassword', '[]', 1, '2020-07-30 22:59:55', '2020-07-30 22:59:55', '2020-07-31 00:19:55'),
('fbd25a54541d70a3d42ba44095d3571b9403a8a5d1dc391ab1c380e6f7e9d4a373d3f4c4a1dd8574', 2, 3, 'OfficerSignPassword', '[]', 1, '2020-07-25 23:57:31', '2020-07-25 23:57:31', '2020-07-26 01:17:32'),
('fbfe6ef03bf67962f566753d885c1587713febdd171c063ec64b98830a4f9f77541489ee3eb8242f', 1, 1, 'OfficerSignPassword', '[]', 1, '2020-04-23 12:29:49', '2020-04-23 12:29:49', '2020-04-23 13:49:49'),
('fc56903944298d0620aa8e5acbcf30cc0d88c424cf537d04d935b3f760611badfa1e75b0c00d339b', 2, 1, 'OfficerSignPassword', '[]', 0, '2019-11-28 12:43:08', '2019-11-28 12:43:08', '2019-11-30 12:43:08'),
('fd6f9f789dfc850ddde86ac16a9087ab9f2fa524d32ff08fb18e4dc43613559c55b1860e4e448f9c', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-12-06 08:21:02', '2019-12-06 08:21:02', '2019-12-08 08:21:02'),
('fe1f55d9b70af45141004168ed5e84cfbce86c3a29f7196c1f44dfe981165b77c6be32489068c0e3', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-01-07 13:17:53', '2020-01-07 13:17:53', '2020-01-09 13:17:53'),
('fec3fdb0d722d9f5a26930ae60ba8c2f5afde692f0fb6bb4b8ace0c050fc13b5fd0ab4c3ef2578bd', 1, 1, 'OfficerSignPassword', '[]', 1, '2019-11-26 16:08:51', '2019-11-26 16:08:51', '2019-11-28 16:08:51'),
('ff15b2fa1dab501b2ee29c4b8a1b2b90f0b5a497d5821800a6f8080f5828d6e60da024e7cb3dace2', 1, 3, 'OfficerSignPassword', '[]', 1, '2019-12-19 08:50:11', '2019-12-19 08:50:11', '2019-12-21 09:50:11'),
('ff7549a2c890f330a09e1086c15f888a610e2a09af56b9a741d022d9ba7f8026a1ce15702d4d30fd', 2, 3, 'OfficerSignPassword', '[]', 1, '2020-07-30 21:21:14', '2020-07-30 21:21:14', '2020-07-30 22:41:15'),
('fffc1d67ae2a1339662f063c6692a81dd723e3241584361c3f699d90d62d1b9481d8ac2ccd16ef35', 2, 1, 'OfficerSignPassword', '[]', 1, '2020-03-23 07:40:46', '2020-03-23 07:40:46', '2020-03-24 08:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'VAr7YU2Upuy4EBYtA9gvkVC69mpKYAuKCImz8sj4', 'http://localhost', 1, 0, 0, '2019-12-16 11:09:04', '2019-12-16 11:09:04'),
(2, NULL, 'Laravel Password Grant Client', 'uSDwNWnHNv6VkV3CtY8a9N8fSaTNOWl1jJEALZ1p', 'http://localhost', 0, 1, 0, '2019-12-16 11:09:04', '2019-12-16 11:09:04'),
(3, NULL, 'Laravel Personal Access Client', '3BiKPT1K5ts9rXHgUTbEbOcIOjTwwlKdkd14mJRi', 'http://localhost', 1, 0, 0, '2019-12-16 11:09:12', '2019-12-16 11:09:12'),
(4, NULL, 'Laravel Password Grant Client', 'FwPmx1OUTP4PMGrT0LQVwxaxTapBGqmEY73KpADt', 'http://localhost', 0, 1, 0, '2019-12-16 11:09:13', '2019-12-16 11:09:13'),
(5, NULL, 'Laravel Personal Access Client', '1PBq0UxBGCDNGV7r9QVM8RIf8BK87DMKZflh5viq', 'http://localhost', 1, 0, 0, '2020-08-03 18:54:29', '2020-08-03 18:54:29'),
(6, NULL, 'Laravel Password Grant Client', 'aD7eNj4h6gA1Mah9oPUNjGB324CA3M7NsxznUKA5', 'http://localhost', 0, 1, 0, '2020-08-03 18:54:29', '2020-08-03 18:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-12-16 11:09:04', '2019-12-16 11:09:04'),
(2, 3, '2019-12-16 11:09:12', '2019-12-16 11:09:12'),
(3, 5, '2020-08-03 18:54:29', '2020-08-03 18:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(1, 'samuel@test.com.ng', 'RbxZLu9SX3m2rqiifHuKzjsxuCl1MUQFKMHTMDpIrVJP1KsjvI', '2019-12-18 10:13:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `razor5odds`
--

CREATE TABLE `razor5odds` (
  `id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `teams` varchar(250) NOT NULL,
  `tip` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `razor5odds`
--

INSERT INTO `razor5odds` (`id`, `country`, `teams`, `tip`, `status`, `created_at`, `updated_at`) VALUES
(1, '', 'smithory v reca', 'cs: 3-0', 1, '2020-07-29 02:07:13', NULL),
(2, 'UEFA Europa League', 'arsenal v inter', '5 corner 1ht', 10, '2020-08-08 23:58:06', '2020-08-08 23:58:06'),
(4, 'hvbjnhvhgv bujy u y', 'k jjy', 'k', 0, '2020-08-10 23:04:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', NULL, NULL),
(2, 'Officer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rollovers`
--

CREATE TABLE `rollovers` (
  `id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `teams` varchar(150) NOT NULL,
  `tip` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rollovers`
--

INSERT INTO `rollovers` (`id`, `country`, `teams`, `tip`, `status`, `created_at`, `updated_at`) VALUES
(2, '', 'adalaide v newcas ifeoluwa james', 'newcastle', 10, '2020-07-23 14:27:36', '2020-07-25 17:09:26'),
(3, '', 'Maribor', 'Kemi', 1, '2020-07-23 14:29:44', '2020-07-23 14:29:44'),
(4, '', 'M SC v Kemi wee', '1/1', 1, '2020-07-23 15:59:35', '2020-07-25 17:50:15'),
(5, '', 'segee v lokun', 'less', 1, '2020-07-23 19:12:39', '2020-07-25 17:46:47'),
(7, '', 'sausolo v napoli', 'napoli o1.5', 10, '2020-07-25 21:44:25', '2020-07-25 21:44:25'),
(8, '', 'one v thing', 'one', 10, '2020-07-25 23:04:19', '2020-07-25 23:04:19'),
(9, 'FIFA Competitions', 'nigeria v ghana', '1', 10, '2020-08-10 23:57:23', '2020-08-08 23:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(11) NOT NULL,
  `facebook` varchar(150) NOT NULL,
  `telegram` varchar(150) NOT NULL,
  `twitter` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `telegram`, `twitter`) VALUES
(1, 'facebook.com/comma', 'telegram.com/tester', 'twitter.com/testing');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'samuel@test.ng', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `body`, `created_at`, `updated_at`) VALUES
(1, '<p>All information provided in http://thebetinvestors.com is for self-reference purposes only. We are not responsible for any decisions made, financial or otherwise, based on information or links provided by us. We do not guarantee the accuracy of the information contained within, or of information obtained from third parties linked to our site.</p>\n<p>http://thebetinvestors.com do not undertake any responsibility and/or liability for any loses and/or damages sustained by any person or persons using services on our site and we shall not be responsible and/or liable for any loses or damages due to any information or otherwise contained on this web site or through links, sponsors, advertisers, short message service (SMS) and email correspondence, whether due to inaccuracy, error, omission or bad judgment or any reason whatsoever.</p>\n<p>Details of any picks sent by http://thebetinvestors.com are for your information only and anyone deciding to bet upon our opinion does so at their own risk. http://thebetinvestors.com is not responsible for any losses you incur as a result of using this information for gambling or wagering. Betting may not be suitable for everyone; so ensure you fully understand the risks involved and seek independent advice if necessary.</p>\n<p>Any other information posted on our site from other weblinks, persons, or organizations should be checked for accuracy and timeliness with the sources themselves and no reliance should be placed on the same as it appears on our site. We advised all users to exercise discretion when viewing our soccer statistics page. Please note that http://thebetinvestors.com will not be responsible or liable in any way with regards to the placements of bets through links or banners that are placed on this site. All visits to our partner\'s sites are entire of your own free will. We will not be responsible or liable for any legal matters that may arise from the use of our services or visit our partner\'s sites.</p>\n<p>ACCOUNT TERMS<br />You must be 18 years or older to use this Service.</p>\n<p>You must provide a valid email address, and any other information needed in order to complete the signup process.</p>\n<p>You are responsible for keeping your password secure. thebetinvestors.comcannot and will not be liable for any loss or damage from your failure to maintain the security of your account and password.</p>\n<p>You may not use the http://thebetinvestors.com service for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).</p>\n<p>You are not allowed to share or reproduce the purchased information with anyone.</p>\n<p>A breach or violation of any of the Account Terms as determined in the sole discretion of http://thebetinvestors.com will result in an immediate termination of your services.</p>\n<p>CONTENT INFORMATION<br />http://thebetinvestors.com does not provide gaming or gambling capabilities on its site. It is a sports information site, while odds and betting lines are part of that information. In the event of any individual; has an interest in any activities provided by our sponsors or partners, please ensure your full compliance with your state statutory law. Please leave http://thebetinvestors.com immediately if your country prohibits online gambling, as we are not responsible for any legal matters arising from using our services or visiting our partner sites.</p>\n<p>UPDATE INFORMATION<br />In order to provide the most updated information to our valued customers, we reserve all rights to amend/revise any information on our website (prior to any notification) at any time and from time to time.</p>\n<p>QUESTIONS<br />Any questions regarding our disclaimer information, please contact us at hello@thebetinvestors.com. Term of Use information is subjected to change at the discretion of http://thebetinvestors.com, so please check back regularly.</p>\n<p>CANCELLATION AND TERMINATION<br />You may cancel your account at any time by emailing hello@thebetinvestors.com</p>\n<p>Once your account is canceled all of your Content will be immediately deleted from the Service. Since the deletion of all data is final please be sure that you do in fact want to cancel your account before doing so.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trebles`
--

CREATE TABLE `trebles` (
  `id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `teams` varchar(250) NOT NULL,
  `tip` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trebles`
--

INSERT INTO `trebles` (`id`, `country`, `teams`, `tip`, `status`, `created_at`, `updated_at`) VALUES
(1, '', 'xi v chaolin', 'Xi/Xi', 0, '2020-07-29 02:07:13', NULL),
(2, 'Algeria', 'all him v saud', '2/2', 10, '2020-08-10 23:38:26', '2020-08-08 23:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT '2',
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_right` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `logins` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `last_login`, `last_ip`, `email`, `email_verified_at`, `password`, `admin_right`, `image`, `logins`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', '2020-07-24 11:03:48', '127.0.0.1', 'hello@thebetinvestors.com', NULL, '$2y$10$U0iC7gsaRtuzC4FC37CgnOgVx/6Y3SNGrDNHs7vxVKU94uk.PNhCO', 1, '', 7, NULL, NULL, '2020-07-24 10:03:48'),
(2, 1, 'samuel', '2020-08-03 20:31:00', '127.0.0.1', 'developers@thebetinvestors.com', NULL, '$2y$10$U0iC7gsaRtuzC4FC37CgnOgVx/6Y3SNGrDNHs7vxVKU94uk.PNhCO', 0, '', 9, NULL, NULL, '2020-08-03 19:31:00'),
(3, 2, 'n/029ud', NULL, NULL, 'samuel@test.ng', NULL, '$2y$10$8QznSlX00nSDhSZ6v8PYlu825UCfSgSwaCQJNiiwcuPJ1CE9eKPsC', 0, '', 0, NULL, '2019-12-18 10:22:50', '2019-12-18 10:22:50'),
(4, 2, 'n/03paige', NULL, NULL, 'dev@test.ng', NULL, '$2y$10$kYWgdzNJsKYW4SBpUJLj4O5ldpuLbhjhXMN.CXsI8KfCIsh.88lju', 0, '', 0, NULL, '2019-12-18 10:24:02', '2019-12-18 10:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `winnings`
--

CREATE TABLE `winnings` (
  `id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `caption` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `winnings`
--

INSERT INTO `winnings` (`id`, `image`, `caption`, `created_at`, `updated_at`) VALUES
(1, 'winnings/RJrbMu686ihrxv93Gy2dSVJorubVCD88sw2L3cYq.jpeg', 'test sliping test', '2020-07-30 18:20:06', '2020-07-31 01:09:34'),
(2, 'winnings/SSfZPrzJwBg1vMZruwc4bzRz2aVLgBQYGyLhBPBt.jpeg', 'testing', '2020-07-30 21:30:13', '2020-07-30 21:30:13'),
(3, 'winnings/UZBLNGcAYrMIbgM8mpxZXXJQHTDx728KoZ07LSNg.jpeg', '500k won from 300 odds', '2020-07-31 01:11:19', '2020-07-31 01:11:19'),
(4, 'winnings/4yg3uWJqpzk4wCZJkJxbEUNjZ6sfaclQ5yuI3lqS.jpeg', 'VIP TIP', '2020-07-31 01:15:27', '2020-07-31 01:15:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `botds`
--
ALTER TABLE `botds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily2odds`
--
ALTER TABLE `daily2odds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ggtips`
--
ALTER TABLE `ggtips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razor5odds`
--
ALTER TABLE `razor5odds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rollovers`
--
ALTER TABLE `rollovers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trebles`
--
ALTER TABLE `trebles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_service_number_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- Indexes for table `winnings`
--
ALTER TABLE `winnings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `botds`
--
ALTER TABLE `botds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `daily2odds`
--
ALTER TABLE `daily2odds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ggtips`
--
ALTER TABLE `ggtips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `razor5odds`
--
ALTER TABLE `razor5odds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rollovers`
--
ALTER TABLE `rollovers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trebles`
--
ALTER TABLE `trebles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `winnings`
--
ALTER TABLE `winnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
