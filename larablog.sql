-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 21 août 2020 à 00:18
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `larablog`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'html tutorials', 'html-tutorials', '2020-08-18 19:27:02', '2020-08-18 19:27:02'),
(2, 'css tutorials', 'css-tutorials', '2020-08-18 19:27:02', '2020-08-18 19:27:02'),
(3, 'javascript tutorials', 'javascript-tutorials', '2020-08-18 19:27:02', '2020-08-18 19:27:02'),
(4, 'laravel tutorials', 'laravel-tutorials', '2020-08-18 19:27:02', '2020-08-18 19:27:02'),
(5, 'vuejs tutorials', 'vue-js-tutorials', '2020-08-18 19:27:02', '2020-08-18 19:27:02');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_post_id_foreign` (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `body`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'some commet here from user', 1, 1, '2020-08-18 19:27:02', '2020-08-18 19:27:02'),
(2, 'some commet here from user', 1, 2, '2020-08-18 19:27:02', '2020-08-18 19:27:02'),
(3, 'some commet here from user', 1, 3, '2020-08-18 19:27:02', '2020-08-18 19:27:02'),
(4, 'test comment', 3, 3, '2020-08-20 14:12:13', '2020-08-20 14:12:13');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2020_08_18_174703_create_posts_table', 1),
(27, '2020_08_18_175020_create_categories_table', 1),
(28, '2020_08_18_180821_create_comments_table', 1),
(29, '2020_08_18_181209_create_settings_table', 1),
(30, '2020_08_18_181831_foreign_key', 1),
(31, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(32, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(33, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(34, '2016_06_01_000004_create_oauth_clients_table', 2),
(35, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(36, '2020_08_20_175917_add_is_admin_to_users_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('50579adff78818e1750475efd55aa5ebbf169d58b31908f69cbd958ed64034037bb1eeb900620918', 2, 1, 'programingVh', '[]', 0, '2020-08-20 12:07:53', '2020-08-20 12:07:53', '2021-08-20 14:07:53'),
('1f6a12b23d82948b202f4ee655cc53895024476816fe71a4112e1bc80aaa06fa3711b8621ef71f2e', 2, 1, 'TutsForWeb', '[]', 0, '2020-08-20 12:12:24', '2020-08-20 12:12:24', '2021-08-20 14:12:24'),
('3e6f1a4896435bf8820d32e847f5fbc2c88e8eaaf98ec7be780d7c90c7fe06b9f509dc5654b87ab1', 3, 1, 'programingVh', '[]', 0, '2020-08-20 13:54:10', '2020-08-20 13:54:10', '2021-08-20 15:54:10'),
('96a8d8b973c2601b16ed061178ba57bc45ba6392c8c15dc2a6c4a5e7e5b559a72e309b4602ab1901', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 20:20:30', '2020-08-20 20:20:30', '2021-08-20 22:20:30'),
('b60f2eccca96f0c518e8d18206b6c4055dd1a64e389f6ece8810eee2d5303ec210168d187aebbc9c', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 20:20:33', '2020-08-20 20:20:33', '2021-08-20 22:20:33'),
('77879d64ab304c8788ae5c9ff458f2c4f0a45288c549800ce5498632f4b0c1126783f7d9a4f2d501', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 20:26:07', '2020-08-20 20:26:07', '2021-08-20 22:26:07'),
('631bfaf73ef2fa261e608b39bcbd5c4416a468519e741d7545baa6102d71e9402a9ed7e89cbe1bf6', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 20:26:48', '2020-08-20 20:26:48', '2021-08-20 22:26:48'),
('1eae094fee883c63d7355b5ad6df02f6852502160f827020ca25477fb7b3a47758529d0bd6c34bf6', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 20:58:34', '2020-08-20 20:58:34', '2021-08-20 22:58:34'),
('13d73ad0bc4361d53e06d4ff34dade8a8ccd7cdc0fcc60877705f00bcc1f59b95ee7ef62d5376ef0', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 21:16:26', '2020-08-20 21:16:26', '2021-08-20 23:16:26'),
('ca96a2a7a1ae37e41e51da0b90360959d779ace9115e9bc4e203145ac5f6d61d548c9954a57e40e3', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 21:16:28', '2020-08-20 21:16:28', '2021-08-20 23:16:28'),
('2b01cc96e671836936cc4802d276345dd329e5ddbfcc5b31b48b3f2111628137f856c16220ba2806', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 21:16:31', '2020-08-20 21:16:31', '2021-08-20 23:16:31'),
('a1540ca058ba5cebfb750e723183e20391cb15039eecf1224453aa55a9fbbaa942fb81a130180b07', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 21:22:14', '2020-08-20 21:22:14', '2021-08-20 23:22:14'),
('4ff9a40537a75700c594eedae7b0267abdb18e35c0481998db4b38fb3937bcd764cf9a1ae99c6a57', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 21:25:39', '2020-08-20 21:25:39', '2021-08-20 23:25:39'),
('8617d604fa9a17df37e0089d16c5386cdb5ccfb89c3200b954ff665297bfb45078bf434efe762496', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 21:25:41', '2020-08-20 21:25:41', '2021-08-20 23:25:41'),
('639216c4ba1ed8a56fde27806d5d8879d44345634ccc8e5151ac2d983ff9124a0d08f6966ca1125d', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 21:28:32', '2020-08-20 21:28:32', '2021-08-20 23:28:32'),
('1f7b5c2692144ca7b26696402166101ee995acd8b56134391c7d86b84d38967382e1b6741f360833', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 21:32:17', '2020-08-20 21:32:17', '2021-08-20 23:32:17'),
('05acd336877eeee3123c4a0cbb349ed68a8e1d85cf29f063bbf92e61e49f4bcb8eafa9ba56f79671', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 21:33:55', '2020-08-20 21:33:55', '2021-08-20 23:33:55'),
('144b1a7c6eb476f5ba8ef67b112100effedbf1010c66c09c8557139d411ead617d216b859606c9ab', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 21:42:39', '2020-08-20 21:42:39', '2021-08-20 23:42:39'),
('b8635764cbde841b837f503390b3519c12511f118b88d0ecdaa1ece586710960c005ec5b305f535a', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 21:45:02', '2020-08-20 21:45:02', '2021-08-20 23:45:02'),
('0b27204e3b2b422839faabee760f3ddd8e4874286ed677c4c59ee72a96fbeb91fa237c70141f3412', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 21:50:59', '2020-08-20 21:50:59', '2021-08-20 23:50:59'),
('5b23b3f321dfc2ae7edebcd2ecff7b1b65bb7bfd206b18d8847d46a6602c38ab34559c734a923d48', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 21:56:53', '2020-08-20 21:56:53', '2021-08-20 23:56:53'),
('9d2e011100f045f02b14770c146deba7703dec0a51778ea8d4ed614b065d6b8c251d91165306f97f', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 22:13:00', '2020-08-20 22:13:00', '2021-08-21 00:13:00'),
('b9d9f5ed7b8bd21418d0ea3f1f92f371c34edaebea927ed7d8a8d6b9b9b7643d3fd163515b19aedd', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 22:13:10', '2020-08-20 22:13:10', '2021-08-21 00:13:10'),
('34f22833738c6963bff5af47db72a2db2219a1ae60db3a07dd1ae7a20cb2a1a1323f03cf57ad5276', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 22:16:16', '2020-08-20 22:16:16', '2021-08-21 00:16:16'),
('9b832d518912fff0267ab05c51f904db0bba89d4c072ad701eae392da37db0a77b57cdc6057993a8', 4, 1, 'TutsForWeb', '[]', 0, '2020-08-20 22:16:24', '2020-08-20 22:16:24', '2021-08-21 00:16:24');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
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
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'iCWOXFVwtFVdjNJUP4XSkwkz88ZY6w25XIZWSO0L', NULL, 'http://localhost', 1, 0, 0, '2020-08-20 11:15:21', '2020-08-20 11:15:21'),
(2, NULL, 'Laravel Password Grant Client', 'hPqH6yhINfxyVcsERzewgfexT8Uwcr57YdC4QEDa', 'users', 'http://localhost', 0, 1, 0, '2020-08-20 11:15:21', '2020-08-20 11:15:21');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
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
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-08-20 11:15:21', '2020-08-20 11:15:21');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
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
-- Structure de la table `password_resets`
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
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  KEY `posts_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `body`, `image`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'a simple title', 'a-simple-title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n            Excepteur sint occaecat cupidatat non proident, \n            sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p1.jpg', 1, 1, '2020-08-18 19:27:02', '2020-08-18 19:27:02'),
(2, 'introduction to js', 'introduction-to-js', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n                Excepteur sint occaecat cupidatat non proident, \n                sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p2.jpg', 1, 2, '2020-08-18 19:27:02', '2020-08-18 19:27:02'),
(3, 'laravel from beginners', 'laravel-from-beginners', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n                    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n                    Excepteur sint occaecat cupidatat non proident, \n                    sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p3.jpg', 1, 3, '2020-08-18 19:27:02', '2020-08-18 19:27:02'),
(4, 'test 1', 'test-1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\r\n                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                Excepteur sint occaecat cupidatat non proident, \r\n                sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p1.jpg', 1, 1, '2020-08-20 02:00:00', '2020-08-20 06:00:00'),
(5, 'test2', 'test-2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\r\n                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                Excepteur sint occaecat cupidatat non proident, \r\n                sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p1.jpg', 1, 2, '2020-08-20 06:00:00', '2020-08-20 05:00:00'),
(6, 'test 3', 'test-3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\r\n                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                Excepteur sint occaecat cupidatat non proident, \r\n                sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p1.jpg', 1, 1, '2020-08-19 22:41:00', '2020-08-19 22:59:00'),
(8, 'test 5', 'test-5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\r\n                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                Excepteur sint occaecat cupidatat non proident, \r\n                sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p1.jpg', 1, 1, '2020-08-20 00:00:00', '2020-08-20 04:00:00'),
(9, 'test6', 'test-6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\r\n                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                Excepteur sint occaecat cupidatat non proident, \r\n                sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p1.jpg', 1, 2, '2020-08-20 05:00:00', '2020-08-20 06:00:00'),
(10, 'test 7', 'test-7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\r\n                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                Excepteur sint occaecat cupidatat non proident, \r\n                sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p1.jpg', 1, 1, '2020-08-19 22:00:09', '2020-08-19 22:00:47'),
(11, 'test edit page', 'test-edit-page', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\r\n                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                Excepteur sint occaecat cupidatat non proident, \r\n                sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p1.jpg', 1, 2, '2020-08-24 02:00:00', '2020-08-20 20:52:11'),
(12, 'test 9', 'test-9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\r\n                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                Excepteur sint occaecat cupidatat non proident, \r\n                sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p1.jpg', 1, 1, '2020-08-20 04:00:00', '2020-08-20 10:00:00'),
(13, 'test10', 'test-10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\r\n                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                Excepteur sint occaecat cupidatat non proident, \r\n                sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p1.jpg', 1, 2, '2020-08-20 06:00:00', '2020-08-20 07:00:00'),
(14, 'test11', 'test-11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\r\n                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                Excepteur sint occaecat cupidatat non proident, \r\n                sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p1.jpg', 1, 2, '2020-08-20 15:00:00', '2020-08-20 15:16:00'),
(15, 'test12', 'test-12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\r\n                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                Excepteur sint occaecat cupidatat non proident, \r\n                sunt in culpa qui officia deserunt mollit anim id est laborum.', 'p1.jpg', 1, 2, '2020-08-20 05:00:00', '2020-08-20 08:00:00'),
(16, 'adding new post', 'adding-new-post', 'new post with the platform', '1597963711.jpg', 4, 1, '2020-08-20 20:48:31', '2020-08-20 20:48:31');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Hamdi farjallah', 'hamdifarjallah.tn@gmail.com', 'address exp', '2020-08-18 19:27:02', '2020-08-18 19:27:02');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profile_img`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'hamdi farjallah', 'hamdifarjallah.tn@gmail.com', NULL, '$2y$10$0FC5lyNH7INODsNVzk43sO5.GzQsVqtEDzh8orGSN/j1vCEsSboMa', 'profile_img1.jpg', NULL, '2020-08-18 19:27:02', '2020-08-18 19:27:02', 0),
(2, 'ammar', 'ammar@gmail.com', NULL, '$2y$10$RbixxQLBwf/NqXRaSOIFiew1SlOoW2PImrTvMi4CdAUX7f8H0XR6G', 'profile_img1.jpg', NULL, '2020-08-20 12:07:52', '2020-08-20 12:07:52', 0),
(3, 'farjallah', 'hamdi-2007@hotmail.fr', NULL, '$2y$10$8hBBaibXx0IWFi/TANbsTeGbDula58Yc5DmYXCOX.YFHRcFvDZ72S', 'profile_img1.jpg', NULL, '2020-08-20 13:54:10', '2020-08-20 13:54:10', 0),
(4, 'amine', 'amine@gmail.com', NULL, '$2y$10$UKTzimuZ4qotBDpq4VbTteI8Q8/URavxiMryUwi8iAXq93qomIZXq', 'profile_img1.jpg', NULL, '2020-08-20 16:04:31', '2020-08-20 16:04:31', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
