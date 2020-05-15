-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 03:06 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brilliance`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'دهان', '2020-03-23 11:49:00', '2020-03-23 11:49:47'),
(2, 'الأرضيات', '2020-03-23 11:50:13', '2020-03-23 11:50:13'),
(3, 'بلاط  و  رخام', '2020-03-23 11:51:17', '2020-03-23 11:51:17'),
(4, 'أثاث', '2020-03-23 11:51:49', '2020-03-23 11:51:49'),
(5, 'الإضاءه', '2020-03-23 11:52:24', '2020-03-23 11:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `category_materials`
--

CREATE TABLE `category_materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_materials`
--

INSERT INTO `category_materials` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'رخام', '2020-03-25 08:59:00', '2020-03-25 08:59:00'),
(2, 'دهانات', '2020-03-25 08:59:19', '2020-03-25 08:59:19'),
(3, 'أدوات صحيه', '2020-03-25 08:59:44', '2020-03-25 08:59:44'),
(4, 'أخشاب', '2020-03-25 09:00:06', '2020-03-25 09:00:06'),
(5, 'الإضاءه', '2020-03-25 09:00:38', '2020-03-25 09:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`, `phone`) VALUES
(9, 'كريم', 'admin@example.com', 'اهلا بكم', '2020-03-26 09:56:27', '2020-03-26 09:56:27', '+5315645552'),
(10, 'kareem', 'kareem@email.com', 'dwefwefw', '2020-03-26 09:58:46', '2020-03-26 09:58:46', '+5315645552');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(97, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 26, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(100, 26, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 4),
(101, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(102, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(103, 26, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(108, 28, 'id', 'text', 'id', 1, 0, 0, 0, 0, 0, '{}', 1),
(109, 28, 'name', 'text', 'name', 0, 1, 1, 1, 1, 1, '{}', 2),
(110, 28, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 1, 0, 1, '{}', 3),
(111, 28, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '{}', 4),
(112, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 29, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(114, 29, 'job', 'text', 'Job', 0, 1, 1, 1, 1, 1, '{}', 3),
(115, 29, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 4),
(116, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(117, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(118, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(119, 30, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(120, 30, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(121, 30, 'college', 'text', 'College', 0, 1, 1, 1, 1, 1, '{}', 4),
(122, 30, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 5),
(123, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(124, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(183, 26, 'phone', 'text', 'phone', 0, 1, 1, 1, 1, 1, '{}', 5),
(184, 41, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(185, 41, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(186, 41, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(187, 41, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(188, 41, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 5),
(189, 41, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(190, 41, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(212, 46, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(213, 46, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(214, 46, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(215, 46, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(216, 47, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(217, 47, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(218, 47, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(219, 47, 'img', 'multiple_images', 'Img', 0, 1, 1, 1, 1, 1, '{}', 4),
(220, 47, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(221, 47, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(222, 47, 'category_id', 'select_dropdown', 'Category Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"title\"}}', 7),
(223, 48, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(224, 48, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(225, 48, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(226, 48, 'img', 'multiple_images', 'Img', 0, 1, 1, 1, 1, 1, '{}', 4),
(227, 48, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(228, 48, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(229, 49, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(230, 49, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(231, 49, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 3),
(232, 49, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(233, 49, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(234, 50, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(235, 50, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(236, 50, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(237, 50, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(238, 51, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(239, 51, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(240, 51, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(241, 51, 'img', 'multiple_images', 'Img', 0, 1, 1, 1, 1, 1, '{}', 4),
(242, 51, 'category_id', 'select_dropdown', 'Category Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"title\"}}', 5),
(243, 51, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(244, 51, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(245, 52, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(246, 52, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(247, 52, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(248, 52, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 4),
(249, 52, 'name', 'text', 'Article author', 0, 1, 1, 1, 1, 1, '{}', 5),
(250, 52, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(251, 52, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(252, 53, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(253, 53, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(254, 53, 'url', 'text', 'Video URL', 0, 1, 1, 1, 1, 1, '{}', 3),
(255, 53, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 4),
(256, 53, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(257, 53, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(258, 54, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(259, 54, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(260, 54, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(261, 54, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 5),
(262, 54, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(263, 54, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(264, 54, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-01-19 07:08:03', '2020-01-19 07:08:03'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-01-19 07:08:04', '2020-01-19 07:08:04'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-01-19 07:08:04', '2020-01-19 07:08:04'),
(26, 'contact', 'contact', 'Contact', 'Contacts', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-23 10:12:56', '2020-02-29 09:04:15'),
(28, 'training_programs', 'training-programs', 'Training Program', 'Training Programs', NULL, 'App\\TrainingProgram', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-23 13:00:29', '2020-02-23 13:02:07'),
(29, 'experts', 'experts', 'Expert', 'Experts', NULL, 'App\\Expert', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-23 13:31:39', '2020-02-23 13:31:39'),
(30, 'testimonial', 'testimonial', 'Testimonial', 'Testimonials', NULL, 'App\\Testimonial', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-23 13:44:54', '2020-02-23 13:49:35'),
(41, 'subscribe_now', 'subscribe-now', 'Subscribe Now', 'Subscribe Nows', 'voyager-edit', 'App\\SubscribeNow', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-29 10:40:17', '2020-02-29 10:40:17'),
(46, 'category', 'category', 'Category', 'Category Project', NULL, 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-23 12:41:44', '2020-03-26 10:10:35'),
(47, 'project', 'project', 'Project', 'Projects', NULL, 'App\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-23 12:42:07', '2020-03-23 12:46:02'),
(48, 'service', 'service', 'Service', 'Services', NULL, 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-23 12:42:59', '2020-03-23 12:43:35'),
(49, 'gallery', 'gallery', 'Gallery', 'Galleries', NULL, 'App\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-23 13:55:26', '2020-03-23 13:55:26'),
(50, 'category_materials', 'category-materials', 'Category Material', 'Category Materials', NULL, 'App\\CategoryMaterial', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-25 08:52:35', '2020-03-25 08:52:35'),
(51, 'materials', 'materials', 'Material', 'Materials', NULL, 'App\\Material', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-25 08:56:58', '2020-03-25 08:58:01'),
(52, 'news', 'news', 'News', 'News', NULL, 'App\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-25 09:55:42', '2020-03-25 09:55:42'),
(53, 'tv', 'tv', 'Tv', 'Brilliance Tv', NULL, 'App\\Tv', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-26 08:00:46', '2020-03-26 08:00:46'),
(54, 'offers', 'offers', 'Offer', 'Offers', NULL, 'App\\Offer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-26 08:22:17', '2020-03-26 08:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `img`, `created_at`, `updated_at`) VALUES
(1, 'أريكه خشبيه', 'gallery\\March2020\\HNqtVtrd5RnqHuFTVtGM.jpg', '2020-03-23 13:56:19', '2020-03-23 13:56:19'),
(2, 'أريكه خشبيه', 'gallery\\March2020\\W772fGkegcoEffnyvFks.jpg', '2020-03-23 13:56:59', '2020-03-23 13:56:59'),
(3, 'أرضية خشبية', 'gallery\\March2020\\pN0KcWiFRM3C3OqV8gdS.jpg', '2020-03-23 13:57:21', '2020-03-23 13:57:21'),
(4, 'أريكة خشبية حديثة فى منتصف القرن', 'gallery\\March2020\\gVvPdDrkuVovbJnwfNPu.jpg', '2020-03-23 13:57:38', '2020-03-23 13:57:38'),
(5, 'دهانات', 'gallery\\March2020\\Y5DSyhY9VelXjj7UGFbI.jpg', '2020-03-23 13:57:58', '2020-03-23 13:57:58'),
(6, 'أرضيات ممهده بأعلى خامات التشطيب', 'gallery\\March2020\\pfSltwuSCewqjYGVLQix.jpg', '2020-03-23 13:58:22', '2020-03-23 13:58:22'),
(7, 'أرضية خشبية', 'gallery\\March2020\\90dItadXPkpx16zgzIbz.jpg', '2020-03-23 13:58:45', '2020-03-23 13:58:45'),
(8, 'دهان', 'gallery\\March2020\\tJ8s7DEOhaKBqX7Fsvxn.jpg', '2020-03-23 13:59:04', '2020-03-23 13:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `title`, `content`, `img`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'احدث انواع الرخام', '<p>احدث انواع الرخام احدث انواع الرخام احدث انواع الرخام احدث انواع الرخام</p>\n<div class=\"text\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.8em; color: #888888; font-family: Hanimation, sans-serif;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</div>\n<p>&nbsp;</p>\n<div class=\"social-links\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #777777; font-family: Hanimation, sans-serif; font-size: 15px;\">&nbsp;</div>', '[\"materials\\\\March2020\\\\ronyvuvmApdw3ea4Rbll.jpg\",\"materials\\\\March2020\\\\HXTDDpgF2SbaYLdviApa.jpg\",\"materials\\\\March2020\\\\iJKIfzElwZdINqrBoMsr.jpg\",\"materials\\\\March2020\\\\mkw40RtlrlsRf7B6NB6T.jpg\",\"materials\\\\March2020\\\\0Wnn6zYlBhg3SDa7QS4F.jpg\"]', 1, '2020-03-25 09:02:00', '2020-03-25 10:55:27'),
(2, 'دهانات', '<p>دهانات دهانات دهانات دهانات دهانات</p>', '[\"materials\\\\March2020\\\\wK2vdIuNsBLjv9c36kn0.jpg\"]', 2, '2020-03-25 09:03:10', '2020-03-25 09:03:10'),
(3, 'أجود انواع الادوات الصحيه', '<p>أجود انواع الادوات الصحيه أجود انواع الادوات الصحيه أجود انواع الادوات الصحيه أجود انواع الادوات الصحيه</p>', '[\"materials\\\\March2020\\\\1YNdeGXE5RhO724CtF3i.jpg\"]', 3, '2020-03-25 09:03:41', '2020-03-25 09:03:41'),
(4, 'اخشاب', '<p>اخشاب اخشاب اخشاب اخشاب اخشاب</p>', '[\"materials\\\\March2020\\\\pPXcCN6CmDFxa11CrsJl.jpg\"]', 4, '2020-03-25 09:04:24', '2020-03-25 09:04:24'),
(5, 'اضاءه', '<p>اضاءه اضاءه اضاءه اضاءه اضاءه</p>', '[\"materials\\\\March2020\\\\w1OL4INQqhhgcl3te49p.jpg\"]', 5, '2020-03-25 09:04:56', '2020-03-25 09:04:56'),
(6, 'جرانيت', '<p>&nbsp;جرانيت جرانيت جرانيت جرانيت جرانيت جرانيت</p>', '[\"materials\\\\March2020\\\\mh3ON8jS2ALSrokk6w5C.jpg\",\"materials\\\\March2020\\\\96ie0DMwL1o5WkDjRN0F.jpg\"]', 1, '2020-03-25 09:30:00', '2020-03-25 11:09:32'),
(7, 'رخام زجاجي', '<p>رخام زجاجي رخام زجاجي رخام زجاجي رخام زجاجي رخام زجاجي</p>', '[\"materials\\\\March2020\\\\eX0NlR23hjZ5g4upkK2M.jpg\"]', 1, '2020-03-25 09:30:38', '2020-03-25 09:30:38'),
(8, 'دهان', '<p>دهان دهان دهان دهان دهان</p>', '[\"materials\\\\March2020\\\\2DG4bs23Hrr0a78G4PDu.jpg\"]', 2, '2020-03-25 09:34:55', '2020-03-25 09:34:55'),
(9, 'رخام مزخرف', '<p>رخام مزخرف&nbsp;&nbsp;رخام مزخرف رخام مزخرف رخام مزخرف رخام مزخرف</p>', '[\"materials\\\\March2020\\\\VWx2WSp7jmXKV2nHVs8S.jpg\"]', 1, '2020-03-25 09:45:49', '2020-03-25 09:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-01-19 07:08:06', '2020-01-19 07:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2020-01-19 07:08:06', '2020-02-10 08:09:16', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 7, '2020-01-19 07:08:06', '2020-02-10 08:09:16', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2020-01-19 07:08:06', '2020-02-10 08:09:16', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-01-19 07:08:07', '2020-02-10 08:09:16', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-01-19 07:08:07', '2020-02-06 08:39:12', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-01-19 07:08:07', '2020-02-06 08:39:12', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-01-19 07:08:07', '2020-02-06 08:39:12', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-01-19 07:08:07', '2020-02-06 08:39:12', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2020-01-19 07:08:07', '2020-02-10 08:09:16', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-01-19 07:08:13', '2020-02-06 08:39:12', 'voyager.hooks', NULL),
(31, 1, 'Contacts', '', '_self', 'voyager-location', '#000000', NULL, 12, '2020-02-23 10:12:57', '2020-03-02 14:03:42', 'voyager.contact.index', 'null'),
(35, 1, 'Testimonials', '', '_self', 'voyager-star', '#000000', NULL, 16, '2020-02-23 13:44:54', '2020-03-02 14:03:52', 'voyager.testimonial.index', 'null'),
(40, 1, 'Category Project', '', '_self', 'voyager-paper-plane', '#000000', NULL, 18, '2020-03-23 12:41:44', '2020-03-26 10:09:44', 'voyager.category.index', 'null'),
(41, 1, 'Projects', '', '_self', 'voyager-params', '#000000', NULL, 19, '2020-03-23 12:42:08', '2020-03-26 10:11:24', 'voyager.project.index', 'null'),
(42, 1, 'Services', '', '_self', 'voyager-list', '#000000', NULL, 20, '2020-03-23 12:42:59', '2020-03-26 10:11:36', 'voyager.service.index', 'null'),
(43, 1, 'Galleries', '', '_self', 'voyager-images', '#000000', NULL, 21, '2020-03-23 13:55:27', '2020-03-26 10:11:51', 'voyager.gallery.index', 'null'),
(44, 1, 'Category Materials', '', '_self', 'voyager-paper-plane', '#000000', NULL, 22, '2020-03-25 08:52:36', '2020-03-26 10:12:10', 'voyager.category-materials.index', 'null'),
(45, 1, 'Materials', '', '_self', 'voyager-anchor', '#000000', NULL, 23, '2020-03-25 08:56:59', '2020-03-26 10:12:22', 'voyager.materials.index', 'null'),
(46, 1, 'News', '', '_self', 'voyager-file-text', '#000000', NULL, 24, '2020-03-25 09:55:42', '2020-03-26 10:12:38', 'voyager.news.index', 'null'),
(47, 1, 'Brilliance Tv', '', '_self', 'voyager-tv', '#000000', NULL, 25, '2020-03-26 08:00:46', '2020-03-26 10:12:53', 'voyager.tv.index', 'null'),
(48, 1, 'Offers', '', '_self', 'voyager-basket', '#000000', NULL, 26, '2020-03-26 08:22:17', '2020-03-26 10:13:21', 'voyager.offers.index', 'null');

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `img`, `name`, `created_at`, `updated_at`) VALUES
(1, 'نحن نستخدم فقط \"نسخ عالي الجودة\" للعملاء', '<p>كاتب المقالة ولدت المتع والآلام وستعطيك وصفا كاملا للأنظمة الخبيثة ، وتفسر الأحافير التعليم الفعلي للمستكشف العظيم صانع البناء ولا مرة أخرى هناك أي شخص يحب أو يسعى أو يرغب في الحصول على الألم من نفسه ، لأنه مؤلم ، ولكن بسبب ظروف سعادة الإنسان في بعض الأحيان.</p>', 'news\\March2020\\wL7xoRRTIuPB2Bnexmk1.jpg', 'محمد عمرو', '2020-03-25 09:59:09', '2020-03-25 09:59:09'),
(2, 'نحن نستخدم فقط \"نسخ عالي الجودة\" للعملاء', '<p>كاتب المقالة ولدت المتع والآلام وستعطيك وصفا كاملا للأنظمة الخبيثة ، وتفسر الأحافير التعليم الفعلي للمستكشف العظيم صانع البناء ولا مرة أخرى هناك أي شخص يحب أو يسعى أو يرغب في الحصول على الألم من نفسه ، لأنه مؤلم ، ولكن بسبب ظروف سعادة الإنسان في بعض الأحيان.</p>', 'news\\March2020\\zzWCOfwrgDQtGBZrQE0V.jpg', 'كريم عمر', '2020-03-25 10:00:00', '2020-03-25 10:00:28'),
(3, 'نحن نستخدم فقط \"نسخ عالي الجودة\" للعملاء', '<p>كاتب المقالة ولدت المتع والآلام وستعطيك وصفا كاملا للأنظمة الخبيثة ، وتفسر الأحافير التعليم الفعلي للمستكشف العظيم صانع البناء ولا مرة أخرى هناك أي شخص يحب أو يسعى أو يرغب في الحصول على الألم من نفسه ، لأنه مؤلم ، ولكن بسبب ظروف سعادة الإنسان في بعض الأحيان.</p>', 'news\\March2020\\PSE49p44xDL5P6P3f2Pf.jpg', 'احمد علي', '2020-03-25 10:01:23', '2020-03-25 10:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `content`, `img`, `description`, `created_at`, `updated_at`) VALUES
(1, 'أريكة والتون مفردة', '<p>هناك العديد من الاختلافات في المقاطع ، فقد عانت الغالبية العظمى من التعديلات في شكل ما ، من خلال كلمات الفكاهة المحقونة والمفصولة التي لا تبدو قابلة للتصديق بشكل دائم عند الحصول على التمويل.</p>', 'offers\\March2020\\GYxtRH4mVChYvpYVGnvk.jpg', '<p>Description</p>\n<p>Sample Lorem Ipsum Text</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at ante. Mauris eleifend, quam a vulputate dictum, massa quam dapibus leo, eget vulputate orci purus ut lorem. In fringilla mi in ligula. Pellentesque aliquam quam vel dolor. Nunc adipiscing. Sed quam odio, tempus ac, aliquam molestie, varius ac, tellus. Vestibulum ut nulla aliquam risus rutrum interdum. Pellentesque lorem. Curabitur sit amet erat quis risus feugiat viverra. Pellentesque augue justo, sagittis et, lacinia at, venenatis non, arcu. Nunc nec libero. In cursus dictum risus. Etiam tristique nisl a.</p>', '2020-03-26 08:26:00', '2020-03-26 08:34:38'),
(2, 'كرسي دراسة ', '<p>هناك العديد من الاختلافات في المقاطع ، فقد عانت الغالبية العظمى من التعديلات في شكل ما ، من خلال كلمات الفكاهة المحقونة والمفصولة التي لا تبدو قابلة للتصديق بشكل دائم عند الحصول على التمويل.</p>', 'offers\\March2020\\17zz9MMyYadrynp3gWLb.jpg', '<p>Description</p>\n<p>Sample Lorem Ipsum Text</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at ante. Mauris eleifend, quam a vulputate dictum, massa quam dapibus leo, eget vulputate orci purus ut lorem. In fringilla mi in ligula. Pellentesque aliquam quam vel dolor. Nunc adipiscing. Sed quam odio, tempus ac, aliquam molestie, varius ac, tellus. Vestibulum ut nulla aliquam risus rutrum interdum. Pellentesque lorem. Curabitur sit amet erat quis risus feugiat viverra. Pellentesque augue justo, sagittis et, lacinia at, venenatis non, arcu. Nunc nec libero. In cursus dictum risus. Etiam tristique nisl a.</p>', '2020-03-26 08:27:00', '2020-03-26 08:35:21'),
(3, 'طاولة قهوة النيل', '<p>هناك العديد من الاختلافات في المقاطع ، فقد عانت الغالبية العظمى من التعديلات في شكل ما ، من خلال كلمات الفكاهة المحقونة والمفصولة التي لا تبدو قابلة للتصديق بشكل دائم عند الحصول على التمويل.</p>', 'offers\\March2020\\teHV2TcHUqNakci9IowS.jpg', '<p>Description</p>\n<p>Sample Lorem Ipsum Text</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at ante. Mauris eleifend, quam a vulputate dictum, massa quam dapibus leo, eget vulputate orci purus ut lorem. In fringilla mi in ligula. Pellentesque aliquam quam vel dolor. Nunc adipiscing. Sed quam odio, tempus ac, aliquam molestie, varius ac, tellus. Vestibulum ut nulla aliquam risus rutrum interdum. Pellentesque lorem. Curabitur sit amet erat quis risus feugiat viverra. Pellentesque augue justo, sagittis et, lacinia at, venenatis non, arcu. Nunc nec libero. In cursus dictum risus. Etiam tristique nisl a.</p>', '2020-03-26 08:29:00', '2020-03-26 08:35:46'),
(4, 'جاردن تيبل ميتال', '<p>هناك العديد من الاختلافات في المقاطع ، فقد عانت الغالبية العظمى من التعديلات في شكل ما ، من خلال كلمات الفكاهة المحقونة والمفصولة التي لا تبدو قابلة للتصديق بشكل دائم عند الحصول على التمويل.</p>', 'offers\\March2020\\RxptwjYGMPUNiMbJCzt2.jpg', '<p>Description</p>\n<p>Sample Lorem Ipsum Text</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at ante. Mauris eleifend, quam a vulputate dictum, massa quam dapibus leo, eget vulputate orci purus ut lorem. In fringilla mi in ligula. Pellentesque aliquam quam vel dolor. Nunc adipiscing. Sed quam odio, tempus ac, aliquam molestie, varius ac, tellus. Vestibulum ut nulla aliquam risus rutrum interdum. Pellentesque lorem. Curabitur sit amet erat quis risus feugiat viverra. Pellentesque augue justo, sagittis et, lacinia at, venenatis non, arcu. Nunc nec libero. In cursus dictum risus. Etiam tristique nisl a.</p>', '2020-03-26 08:29:00', '2020-03-26 08:35:35');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-01-19 07:08:07', '2020-01-19 07:08:07'),
(2, 'browse_bread', NULL, '2020-01-19 07:08:07', '2020-01-19 07:08:07'),
(3, 'browse_database', NULL, '2020-01-19 07:08:08', '2020-01-19 07:08:08'),
(4, 'browse_media', NULL, '2020-01-19 07:08:08', '2020-01-19 07:08:08'),
(5, 'browse_compass', NULL, '2020-01-19 07:08:08', '2020-01-19 07:08:08'),
(6, 'browse_menus', 'menus', '2020-01-19 07:08:08', '2020-01-19 07:08:08'),
(7, 'read_menus', 'menus', '2020-01-19 07:08:08', '2020-01-19 07:08:08'),
(8, 'edit_menus', 'menus', '2020-01-19 07:08:08', '2020-01-19 07:08:08'),
(9, 'add_menus', 'menus', '2020-01-19 07:08:08', '2020-01-19 07:08:08'),
(10, 'delete_menus', 'menus', '2020-01-19 07:08:08', '2020-01-19 07:08:08'),
(11, 'browse_roles', 'roles', '2020-01-19 07:08:08', '2020-01-19 07:08:08'),
(12, 'read_roles', 'roles', '2020-01-19 07:08:08', '2020-01-19 07:08:08'),
(13, 'edit_roles', 'roles', '2020-01-19 07:08:09', '2020-01-19 07:08:09'),
(14, 'add_roles', 'roles', '2020-01-19 07:08:09', '2020-01-19 07:08:09'),
(15, 'delete_roles', 'roles', '2020-01-19 07:08:09', '2020-01-19 07:08:09'),
(16, 'browse_users', 'users', '2020-01-19 07:08:09', '2020-01-19 07:08:09'),
(17, 'read_users', 'users', '2020-01-19 07:08:09', '2020-01-19 07:08:09'),
(18, 'edit_users', 'users', '2020-01-19 07:08:09', '2020-01-19 07:08:09'),
(19, 'add_users', 'users', '2020-01-19 07:08:09', '2020-01-19 07:08:09'),
(20, 'delete_users', 'users', '2020-01-19 07:08:09', '2020-01-19 07:08:09'),
(21, 'browse_settings', 'settings', '2020-01-19 07:08:09', '2020-01-19 07:08:09'),
(22, 'read_settings', 'settings', '2020-01-19 07:08:09', '2020-01-19 07:08:09'),
(23, 'edit_settings', 'settings', '2020-01-19 07:08:10', '2020-01-19 07:08:10'),
(24, 'add_settings', 'settings', '2020-01-19 07:08:10', '2020-01-19 07:08:10'),
(25, 'delete_settings', 'settings', '2020-01-19 07:08:10', '2020-01-19 07:08:10'),
(26, 'browse_hooks', NULL, '2020-01-19 07:08:13', '2020-01-19 07:08:13'),
(132, 'browse_contact', 'contact', '2020-02-23 10:12:57', '2020-02-23 10:12:57'),
(133, 'read_contact', 'contact', '2020-02-23 10:12:57', '2020-02-23 10:12:57'),
(134, 'edit_contact', 'contact', '2020-02-23 10:12:57', '2020-02-23 10:12:57'),
(135, 'add_contact', 'contact', '2020-02-23 10:12:57', '2020-02-23 10:12:57'),
(136, 'delete_contact', 'contact', '2020-02-23 10:12:57', '2020-02-23 10:12:57'),
(142, 'browse_training_programs', 'training_programs', '2020-02-23 13:00:29', '2020-02-23 13:00:29'),
(143, 'read_training_programs', 'training_programs', '2020-02-23 13:00:29', '2020-02-23 13:00:29'),
(144, 'edit_training_programs', 'training_programs', '2020-02-23 13:00:29', '2020-02-23 13:00:29'),
(145, 'add_training_programs', 'training_programs', '2020-02-23 13:00:29', '2020-02-23 13:00:29'),
(146, 'delete_training_programs', 'training_programs', '2020-02-23 13:00:29', '2020-02-23 13:00:29'),
(147, 'browse_experts', 'experts', '2020-02-23 13:31:39', '2020-02-23 13:31:39'),
(148, 'read_experts', 'experts', '2020-02-23 13:31:39', '2020-02-23 13:31:39'),
(149, 'edit_experts', 'experts', '2020-02-23 13:31:39', '2020-02-23 13:31:39'),
(150, 'add_experts', 'experts', '2020-02-23 13:31:39', '2020-02-23 13:31:39'),
(151, 'delete_experts', 'experts', '2020-02-23 13:31:39', '2020-02-23 13:31:39'),
(152, 'browse_testimonial', 'testimonial', '2020-02-23 13:44:54', '2020-02-23 13:44:54'),
(153, 'read_testimonial', 'testimonial', '2020-02-23 13:44:54', '2020-02-23 13:44:54'),
(154, 'edit_testimonial', 'testimonial', '2020-02-23 13:44:54', '2020-02-23 13:44:54'),
(155, 'add_testimonial', 'testimonial', '2020-02-23 13:44:54', '2020-02-23 13:44:54'),
(156, 'delete_testimonial', 'testimonial', '2020-02-23 13:44:54', '2020-02-23 13:44:54'),
(197, 'browse_subscribe_now', 'subscribe_now', '2020-02-29 10:40:18', '2020-02-29 10:40:18'),
(198, 'read_subscribe_now', 'subscribe_now', '2020-02-29 10:40:18', '2020-02-29 10:40:18'),
(199, 'edit_subscribe_now', 'subscribe_now', '2020-02-29 10:40:18', '2020-02-29 10:40:18'),
(200, 'add_subscribe_now', 'subscribe_now', '2020-02-29 10:40:18', '2020-02-29 10:40:18'),
(201, 'delete_subscribe_now', 'subscribe_now', '2020-02-29 10:40:18', '2020-02-29 10:40:18'),
(222, 'browse_category', 'category', '2020-03-23 12:41:44', '2020-03-23 12:41:44'),
(223, 'read_category', 'category', '2020-03-23 12:41:44', '2020-03-23 12:41:44'),
(224, 'edit_category', 'category', '2020-03-23 12:41:44', '2020-03-23 12:41:44'),
(225, 'add_category', 'category', '2020-03-23 12:41:44', '2020-03-23 12:41:44'),
(226, 'delete_category', 'category', '2020-03-23 12:41:44', '2020-03-23 12:41:44'),
(227, 'browse_project', 'project', '2020-03-23 12:42:08', '2020-03-23 12:42:08'),
(228, 'read_project', 'project', '2020-03-23 12:42:08', '2020-03-23 12:42:08'),
(229, 'edit_project', 'project', '2020-03-23 12:42:08', '2020-03-23 12:42:08'),
(230, 'add_project', 'project', '2020-03-23 12:42:08', '2020-03-23 12:42:08'),
(231, 'delete_project', 'project', '2020-03-23 12:42:08', '2020-03-23 12:42:08'),
(232, 'browse_service', 'service', '2020-03-23 12:42:59', '2020-03-23 12:42:59'),
(233, 'read_service', 'service', '2020-03-23 12:42:59', '2020-03-23 12:42:59'),
(234, 'edit_service', 'service', '2020-03-23 12:42:59', '2020-03-23 12:42:59'),
(235, 'add_service', 'service', '2020-03-23 12:42:59', '2020-03-23 12:42:59'),
(236, 'delete_service', 'service', '2020-03-23 12:42:59', '2020-03-23 12:42:59'),
(237, 'browse_gallery', 'gallery', '2020-03-23 13:55:26', '2020-03-23 13:55:26'),
(238, 'read_gallery', 'gallery', '2020-03-23 13:55:27', '2020-03-23 13:55:27'),
(239, 'edit_gallery', 'gallery', '2020-03-23 13:55:27', '2020-03-23 13:55:27'),
(240, 'add_gallery', 'gallery', '2020-03-23 13:55:27', '2020-03-23 13:55:27'),
(241, 'delete_gallery', 'gallery', '2020-03-23 13:55:27', '2020-03-23 13:55:27'),
(242, 'browse_category_materials', 'category_materials', '2020-03-25 08:52:35', '2020-03-25 08:52:35'),
(243, 'read_category_materials', 'category_materials', '2020-03-25 08:52:35', '2020-03-25 08:52:35'),
(244, 'edit_category_materials', 'category_materials', '2020-03-25 08:52:35', '2020-03-25 08:52:35'),
(245, 'add_category_materials', 'category_materials', '2020-03-25 08:52:35', '2020-03-25 08:52:35'),
(246, 'delete_category_materials', 'category_materials', '2020-03-25 08:52:35', '2020-03-25 08:52:35'),
(247, 'browse_materials', 'materials', '2020-03-25 08:56:59', '2020-03-25 08:56:59'),
(248, 'read_materials', 'materials', '2020-03-25 08:56:59', '2020-03-25 08:56:59'),
(249, 'edit_materials', 'materials', '2020-03-25 08:56:59', '2020-03-25 08:56:59'),
(250, 'add_materials', 'materials', '2020-03-25 08:56:59', '2020-03-25 08:56:59'),
(251, 'delete_materials', 'materials', '2020-03-25 08:56:59', '2020-03-25 08:56:59'),
(252, 'browse_news', 'news', '2020-03-25 09:55:42', '2020-03-25 09:55:42'),
(253, 'read_news', 'news', '2020-03-25 09:55:42', '2020-03-25 09:55:42'),
(254, 'edit_news', 'news', '2020-03-25 09:55:42', '2020-03-25 09:55:42'),
(255, 'add_news', 'news', '2020-03-25 09:55:42', '2020-03-25 09:55:42'),
(256, 'delete_news', 'news', '2020-03-25 09:55:42', '2020-03-25 09:55:42'),
(257, 'browse_tv', 'tv', '2020-03-26 08:00:46', '2020-03-26 08:00:46'),
(258, 'read_tv', 'tv', '2020-03-26 08:00:46', '2020-03-26 08:00:46'),
(259, 'edit_tv', 'tv', '2020-03-26 08:00:46', '2020-03-26 08:00:46'),
(260, 'add_tv', 'tv', '2020-03-26 08:00:46', '2020-03-26 08:00:46'),
(261, 'delete_tv', 'tv', '2020-03-26 08:00:46', '2020-03-26 08:00:46'),
(262, 'browse_offers', 'offers', '2020-03-26 08:22:17', '2020-03-26 08:22:17'),
(263, 'read_offers', 'offers', '2020-03-26 08:22:17', '2020-03-26 08:22:17'),
(264, 'edit_offers', 'offers', '2020-03-26 08:22:17', '2020-03-26 08:22:17'),
(265, 'add_offers', 'offers', '2020-03-26 08:22:17', '2020-03-26 08:22:17'),
(266, 'delete_offers', 'offers', '2020-03-26 08:22:17', '2020-03-26 08:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `title`, `content`, `img`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'أريكة خشبية حديثة فى منتصف القرن', '<p><span style=\"color: #888888; font-family: Lato, sans-serif; font-size: 15px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</span></p>', '[\"project\\\\March2020\\\\gglrPqDzvhj2AmEdM2O0.jpg\",\"project\\\\March2020\\\\rQoCprjAIqnaqRQjxvjS.jpg\"]', '2020-03-23 12:50:00', '2020-03-23 12:50:26', 1),
(2, 'غرفة النوم', '<p><span style=\"color: #888888; font-family: Lato, sans-serif; font-size: 15px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</span></p>', '[\"project\\\\March2020\\\\kQzNLfvIB2NyCUJWhfrT.jpg\",\"project\\\\March2020\\\\eDkUHzeKymNMUUjkbzEV.jpg\"]', '2020-03-23 13:16:00', '2020-03-23 13:44:46', 2),
(3, 'غرفة المعيشة', '<p><span style=\"color: #888888; font-family: Lato, sans-serif; font-size: 15px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</span></p>', '[\"project\\\\March2020\\\\sdkS8pF7LoG1cS1kptr6.jpg\",\"project\\\\March2020\\\\1kjehhsh0vG42ULRr9XO.jpg\"]', '2020-03-23 13:17:37', '2020-03-23 13:17:37', 1),
(4, 'كنبه خشبية', '<p><span style=\"color: #888888; font-family: Lato, sans-serif; font-size: 15px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</span></p>', '[\"project\\\\March2020\\\\ajpRp6BAoUTVf4vcnYnr.jpg\",\"project\\\\March2020\\\\zq2lzEBHjAPLKSr8aBtf.jpg\",\"project\\\\March2020\\\\2n42zMjsmRo5SYeUHLZe.jpg\"]', '2020-03-23 13:20:00', '2020-03-23 13:21:16', 4),
(5, 'العشب الاصطناعي', '<p><span style=\"color: #888888; font-family: Lato, sans-serif; font-size: 15px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</span></p>', '[\"project\\\\March2020\\\\bcDtczeFKdtGtDxII6lg.jpg\",\"project\\\\March2020\\\\KeEmvKwLvAx7aW5pTDHG.jpg\",\"project\\\\March2020\\\\dxwca3vhp5qeiCN1Dzm0.jpg\"]', '2020-03-23 13:21:00', '2020-03-23 13:22:04', 2),
(6, 'ستائر داخلية', '<p><span style=\"color: #888888; font-family: Lato, sans-serif; font-size: 15px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</span></p>', '[\"project\\\\March2020\\\\Joce0vXsbCFybbeMFg2t.jpg\",\"project\\\\March2020\\\\slB88orTGc6xpXpchJek.jpg\",\"project\\\\March2020\\\\SMc7obSoU3Q9biJACm1h.jpg\"]', '2020-03-23 13:23:23', '2020-03-23 13:23:23', 5);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-01-19 07:08:07', '2020-01-19 07:08:07'),
(2, 'user', 'Normal User', '2020-01-19 07:08:07', '2020-01-19 07:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `title`, `content`, `img`, `created_at`, `updated_at`) VALUES
(1, 'ستائر داخلية', '<p style=\"text-align: right;\">الأرضيات الخشبية هي أي منتج مصنوع من الأخشاب مصمم للاستخدام كأرضيات ، سواء كانت هيكلية أو جمالية ، والخشب هو خيار شائع كمواد للأرضية بسبب ملفه البيئي ، والمتانة ، والاستعادة. غالبًا ما تعتبر أرضيات الخيزران شكلًا من أشكال الأرضيات الخشبية ، على الرغم من أنها مصنوعة من العشب (الخيزران) بدلاً من الخشب. إنها مادة \"مثالية للأرضيات لأنها مرنة ومرنة\" ، وفقًا لتاريخ الخشب المنشق من Spike Garlsen. الأرضيات الخشبية المهندسة هي سمة شعبية في العديد من المنازل.</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">تتكون الأرضيات الخشبية من طبقتين أو أكثر من الخشب على شكل لوح. الطبقة العليا (lamella) هي الخشب الذي يمكن رؤيته عند تركيب الأرضيات ، ويتم الالتزام به إلى اللب (أو الركيزة) التي توفر الاستقرار. لدينا أفضل الشركات المصنعة للأرضيات الخشبية الخشبية ، وخلق أرضيات خشبية عالية الضغط.</p>', '[\"service\\\\March2020\\\\hQo7EC8AAJuHC9txvDQq.jpg\",\"service\\\\March2020\\\\5t4Cnvx9pz3X70nkRNqZ.jpg\",\"service\\\\March2020\\\\asORVuyQEZt39BMU02XE.jpg\"]', '2020-03-23 09:43:25', '2020-03-23 09:43:25'),
(2, 'أرضية خشبية', '<p style=\"text-align: right;\">الأرضيات الخشبية هي أي منتج مصنوع من الأخشاب مصمم للاستخدام كأرضيات ، سواء كانت هيكلية أو جمالية ، والخشب هو خيار شائع كمواد للأرضية بسبب ملفه البيئي ، والمتانة ، والاستعادة. غالبًا ما تعتبر أرضيات الخيزران شكلًا من أشكال الأرضيات الخشبية ، على الرغم من أنها مصنوعة من العشب (الخيزران) بدلاً من الخشب. إنها مادة \"مثالية للأرضيات لأنها مرنة ومرنة\" ، وفقًا لتاريخ الخشب المنشق من Spike Garlsen. الأرضيات الخشبية المهندسة هي سمة شعبية في العديد من المنازل.</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">تتكون الأرضيات الخشبية من طبقتين أو أكثر من الخشب على شكل لوح. الطبقة العليا (lamella) هي الخشب الذي يمكن رؤيته عند تركيب الأرضيات ، ويتم الالتزام به إلى اللب (أو الركيزة) التي توفر الاستقرار. لدينا أفضل الشركات المصنعة للأرضيات الخشبية الخشبية ، وخلق أرضيات خشبية عالية الضغط.</p>', '[\"service\\\\March2020\\\\crwlODMKnqbK34RyTn9F.jpg\",\"service\\\\March2020\\\\m5foSwyvh6icZWpNV3wh.jpg\",\"service\\\\March2020\\\\mULreGPhVb7AWBvFWU3k.jpg\"]', '2020-03-23 09:44:19', '2020-03-23 09:44:19'),
(3, 'أعمال الأثاث', '<p style=\"text-align: right;\">الأرضيات الخشبية هي أي منتج مصنوع من الأخشاب مصمم للاستخدام كأرضيات ، سواء كانت هيكلية أو جمالية ، والخشب هو خيار شائع كمواد للأرضية بسبب ملفه البيئي ، والمتانة ، والاستعادة. غالبًا ما تعتبر أرضيات الخيزران شكلًا من أشكال الأرضيات الخشبية ، على الرغم من أنها مصنوعة من العشب (الخيزران) بدلاً من الخشب. إنها مادة \"مثالية للأرضيات لأنها مرنة ومرنة\" ، وفقًا لتاريخ الخشب المنشق من Spike Garlsen. الأرضيات الخشبية المهندسة هي سمة شعبية في العديد من المنازل.</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">تتكون الأرضيات الخشبية من طبقتين أو أكثر من الخشب على شكل لوح. الطبقة العليا (lamella) هي الخشب الذي يمكن رؤيته عند تركيب الأرضيات ، ويتم الالتزام به إلى اللب (أو الركيزة) التي توفر الاستقرار. لدينا أفضل الشركات المصنعة للأرضيات الخشبية الخشبية ، وخلق أرضيات خشبية عالية الضغط.</p>', '[\"service\\\\March2020\\\\po7HkEOiyvaDRZiCH5fP.jpg\",\"service\\\\March2020\\\\KML9s2KTHx3ecaK7vMkw.jpg\",\"service\\\\March2020\\\\26ugzbUG57Ym9UmYupcf.jpg\"]', '2020-03-23 09:45:20', '2020-03-23 09:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'OxFord Academy', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'OxFord Academy', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\March2020\\KrjMtijVD68JDVyZJb5h.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\March2020\\0Rvu4xn99CH1QCm0k5w1.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(22, 'sochial.facebook', 'facebook', 'https://www.facebook.com/BrillianceRE/', NULL, 'text', 17, 'sochial'),
(23, 'sochial.twitter', 'twitter', 'https://twitter.com/BrillianceRE', NULL, 'text', 18, 'sochial'),
(24, 'sochial.youtube', 'youtube', 'https://www.youtube.com/channel/UC-fgKyYr8KKkMn2FngUYgpQ', NULL, 'text', 19, 'sochial'),
(25, 'contact-us.address_ar', 'address_ar', '40 Baria Sreet 133/2 NewYork City, US', NULL, 'text_area', 20, 'contact us'),
(26, 'contact-us.address_en', 'address_en', '40 Baria Sreet 133/2 NewYork City, US', NULL, 'text_area', 21, 'contact us'),
(27, 'contact-us.email', 'email', 'info.contact@gmail.com', NULL, 'text', 22, 'contact us'),
(28, 'contact-us.phone', 'phone', '123-456-7890', NULL, 'text', 23, 'contact us'),
(39, 'about-us.title_ar', 'title_ar', 'مرحبا بكم في بريلسانس', NULL, 'text', 24, 'about us'),
(40, 'about-us.title_en', 'title_en', 'Welcome to Brilliance', NULL, 'text', 25, 'about us'),
(41, 'about-us.content_ar', 'content_ar', '<h3 style=\"text-align: right;\">لدينا المنتجات المناسبة لتناسب احتياجاتك.</h3>\r\n<h3 style=\"box-sizing: border-box; margin: 30px 0px; padding: 0px; border: none; outline: none; font-family: Hanimation, sans-serif; line-height: 1.6em; color: #ffffff; font-size: 24px; position: relative; background: none; text-align: right;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #c3942f;\">وشراء-الديكور.</span></h3>\r\n<p style=\"text-align: right;\">اشرح لك كيف ولد كل هذا المفهوم الخاطئ لإدانة الملذات والعمل الذي يثني على الألم وسيمنحك إمكانية تصميم حساب كامل لتغذية النظام ، وشرح التصميمات الداخلية الفعلية لمستكشف التصميم الرائع للحقيقة ، تصميم بناة السعادة البشرية الرئيسية التي يرفضها المرء أو لا يحبها أو يتجنب الملذات نفسها.</p>', NULL, 'rich_text_box', 26, 'about us'),
(42, 'about-us.content_en', 'content_en', '<h3 style=\"box-sizing: border-box; margin: 30px 0px; padding: 0px; border: none; outline: none; line-height: 1.6em; position: relative; background: none;\"><span style=\"font-family: Hanimation, sans-serif;\"><span style=\"font-size: 24px;\">We Have The Right Products to Fit Your Needs and Budget</span></span></h3>\r\n<p><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #c3942f;\">Purchase - Decorators.</span></p>\r\n<p>Explain to you how all of this misconception was born to condemn pleasures and work that praises pain and will give you the possibility to design a complete account to fuel the system, and explain the actual interiors of the wonderful design explorer of truth, the design of the main builders of human happiness that one rejects or dislikes or avoids the pleasures themselves.</p>', NULL, 'rich_text_box', 27, 'about us'),
(43, 'about-us.EndContent_ar', 'EndContent_ar', '<h3 style=\"text-align: right;\">وليام شوك ، مؤسس</h3>\r\n<h3 style=\"text-align: right;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #c3942f;\">بريليانس</span></h3>', NULL, 'rich_text_box', 28, 'about us'),
(44, 'about-us.EndContent_en', 'EndContent_en', '<h3>William Shock, founder</h3>\r\n<h3 style=\"text-align: left;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #c3942f;\">Brilliance</span></h3>', NULL, 'rich_text_box', 29, 'about us'),
(45, 'about-us.WeProfessional_ar', 'WeProfessional_ar', '<h3 style=\"text-align: right;\">نحن محترفون</h3>\r\n<h3 style=\"text-align: right;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #c3942f;\">المصممون</span></h3>\r\n<p style=\"text-align: right;\">كيف أخطأت كل هذه الفكرة في استنكار الملذات وألم الثناء وسأعطيك استكمالًا لحساب النظام ، وأشرح.</p>', NULL, 'rich_text_box', 30, 'about us'),
(46, 'about-us.WeProfessional_en', 'WeProfessional_en', '<p>&nbsp;</p>\r\n<h3>We are Professional</h3>\r\n<h3><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #c3942f;\">Designers</span></h3>\r\n<p>How all this mistakens idea of denouncing pleasures and praising pain was born and I will give you a completed by account of the system, and expound.</p>', NULL, 'rich_text_box', 31, 'about us'),
(47, 'about-us.WeTrusted_ar', 'WeTrusted_ar', '<h3 style=\"text-align: right;\">نحن موثوقون</h3>\r\n<h3 style=\"text-align: right;\"><span style=\"color: #c3942f;\">أعضاء الفريق</span></h3>\r\n<p style=\"text-align: right;\">وُلدت فكرة شجب اللذة والثناء من الألم وسأقدم لك وصفا كاملا للنظام وأشرح المستكشف العظيم الحقيقي للحقيقة.</p>', NULL, 'rich_text_box', 32, 'about us'),
(48, 'about-us.WeTrusted_en', 'WeTrusted_en', '<h3>We are Trusted</h3>\r\n<h3 style=\"text-align: left;\"><span style=\"color: #c3942f;\">Team Members</span></h3>\r\n<p>Idea of denouncing pleasure and praisings pain was born and I will give you a complete account of the system and expound the actual great explorer of the truth.</p>', NULL, 'rich_text_box', 33, 'about us'),
(49, 'about-us.WeExpert_ar', 'WeExpert_ar', '<h3 style=\"text-align: right;\">نحن خبراء</h3>\r\n<h3 style=\"text-align: right;\"><span style=\"color: #c3942f;\">خبراء</span></h3>\r\n<p style=\"text-align: right;\">إن شجب الملذات والألم المولود ، العمل سيعطيك حسابًا كاملاً للنظام ، والباني الفعلي للسعادة البشرية.</p>', NULL, 'rich_text_box', 34, 'about us'),
(50, 'about-us.WeExpert_en', 'WeExpert_en', '<h3>We are Expert</h3>\r\n<h3 style=\"text-align: left;\"><span style=\"color: #c3942f;\">Expert</span></h3>\r\n<p>Denouncing pleasures and praisings pain was born work will give you a complete seds account of the system, and actual master-builder of human happiness.</p>', NULL, 'rich_text_box', 35, 'about us'),
(51, 'why-we-are-best.25years_ar', '25years_ar', '25 عاما من الخبرة', NULL, 'text', 36, 'Why We Are Best'),
(52, 'why-we-are-best.25years_en', '25years_en', '25 years of Experience', NULL, 'text', 37, 'Why We Are Best'),
(53, 'why-we-are-best.Exclusive_ar', 'Exclusive_ar', 'شراكة حصرية', NULL, 'text', 38, 'Why We Are Best'),
(54, 'why-we-are-best.Exclusive_en', 'Exclusive_en', 'Exclusive Partnership', NULL, 'text', 39, 'Why We Are Best'),
(55, 'why-we-are-best.Innovative_ar', 'Innovative_ar', 'مصممين مبتكرين', NULL, 'text', 40, 'Why We Are Best'),
(56, 'why-we-are-best.Innovative_en', 'Innovative_en', 'Innovative Designers', NULL, 'text', 41, 'Why We Are Best'),
(57, 'why-we-are-best.BestQuality_ar', 'BestQuality_ar', 'أفضل المنتجات ذات الجودة', NULL, 'text', 42, 'Why We Are Best'),
(58, 'why-we-are-best.BestQuality_en', 'BestQuality_en', 'Best Quality Products', NULL, 'text', 43, 'Why We Are Best'),
(59, 'why-we-are-best.Online_ar', 'Online_ar', '24/7 دعم عبر الإنترنت', NULL, 'text', 46, 'Why We Are Best'),
(60, 'why-we-are-best.Online_en', 'Online_en', '24/7 Online Support', NULL, 'text', 47, 'Why We Are Best'),
(61, 'why-we-are-best.Business_ar', 'Business_ar', 'فرص عمل', NULL, 'text', 44, 'Why We Are Best'),
(62, 'why-we-are-best.Business_en', 'Business_en', 'Business Opportunities', NULL, 'text', 45, 'Why We Are Best'),
(63, 'sochial.instagram', 'instagram', 'https://www.instagram.com/brilliancere/', NULL, 'text', 48, 'sochial'),
(64, 'about-us.video', 'video', 'https://www.youtube.com/watch?v=OrJKD11Rmdg', NULL, 'text', 49, 'about us'),
(65, 'about-us.img', 'img for video', 'settings\\March2020\\fIvGc6jLxY8wYadoTjiF.jpg', NULL, 'image', 50, 'about us'),
(66, 'contact-us.map', 'map', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3454.0484974997385!2d31.216683685042174!3d30.035466481885486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145846d590fc361b%3A0x548107e028e2894d!2z2LTYp9ix2Lkg2KfZhNmF2LPYp9it2YfYjCDYp9mE2K_ZgtmKINij2Iwg2KfZhNis2YrYstip!5e0!3m2!1sar!2seg!4v1585224171858!5m2!1sar!2seg', NULL, 'text', 51, 'contact us');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `college` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `content`, `college`, `img`, `created_at`, `updated_at`) VALUES
(1, 'ستيفنز', '<p>في عالم اليوم ، من المهم تسخير التكنولوجيا لمساعدتنا على التقدم والاتصال.</p>', 'University of UK', 'testimonial\\February2020\\8EY9RkqGqrJYZB1nFQBy.png', '2020-02-23 13:48:00', '2020-02-23 13:49:50'),
(2, 'لارا كروفت', '<p>في عالم اليوم ، من المهم تسخير التكنولوجيا لمساعدتنا على التقدم والاتصال.</p>', 'University of Us', 'testimonial\\February2020\\WPUiwvvDFTGDoIvAEEP5.png', '2020-02-23 13:50:57', '2020-02-23 13:50:57'),
(3, 'كريم', '<p>في عالم اليوم ، من المهم تسخير التكنولوجيا لمساعدتنا على التقدم والاتصال.</p>', '', 'testimonial\\February2020\\FJBpzqONVwiLwiG9XcjX.png', '2020-02-23 13:55:23', '2020-02-23 13:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'pages', 'name', 2, 'en', 'WHO WE ARE', '2020-01-22 09:39:13', '2020-01-22 09:39:13'),
(2, 'data_rows', 'display_name', 31, 'en', 'Id', '2020-01-22 09:47:39', '2020-01-22 09:47:39'),
(3, 'data_rows', 'display_name', 32, 'en', 'Content Detalis', '2020-01-22 09:47:39', '2020-01-22 09:47:39'),
(4, 'data_rows', 'display_name', 33, 'en', 'Created At', '2020-01-22 09:47:39', '2020-01-22 09:47:39'),
(5, 'data_rows', 'display_name', 34, 'en', 'Updated At', '2020-01-22 09:47:39', '2020-01-22 09:47:39'),
(6, 'data_rows', 'display_name', 35, 'en', 'Page Id', '2020-01-22 09:47:39', '2020-01-22 09:47:39'),
(9, 'Content', 'content_detalis', 1, 'en', '<p>asdioisakj ,dhsakjdbjasbdjhasdhjsajd sada</p>', '2020-01-22 09:49:56', '2020-01-22 09:49:56'),
(10, 'data_rows', 'display_name', 36, 'en', 'Id', '2020-01-22 10:27:23', '2020-01-22 10:27:23'),
(11, 'data_rows', 'display_name', 37, 'en', 'Title', '2020-01-22 10:27:23', '2020-01-22 10:27:23'),
(12, 'data_rows', 'display_name', 38, 'en', 'Detial', '2020-01-22 10:27:24', '2020-01-22 10:27:24'),
(13, 'data_rows', 'display_name', 39, 'en', 'Created At', '2020-01-22 10:27:24', '2020-01-22 10:27:24'),
(14, 'data_rows', 'display_name', 40, 'en', 'Updated At', '2020-01-22 10:27:24', '2020-01-22 10:27:24'),
(15, 'data_rows', 'display_name', 41, 'en', 'Page Id', '2020-01-22 10:27:24', '2020-01-22 10:27:24'),
(20, 'pages', 'name', 3, 'en', 'mission', '2020-01-26 10:09:17', '2020-01-26 10:09:17'),
(21, 'pages', 'name', 4, 'en', 'vission', '2020-01-26 10:10:00', '2020-01-26 10:10:00'),
(22, 'pages', 'name', 5, 'en', 'mile stone', '2020-01-26 10:11:47', '2020-01-26 10:11:47'),
(23, 'pages', 'name', 6, 'en', 'contact us', '2020-01-26 10:12:25', '2020-01-26 10:12:25'),
(24, 'pages', 'name', 7, 'en', 'awards', '2020-01-26 10:12:50', '2020-01-26 10:12:50'),
(25, 'pages', 'name', 8, 'en', 'blog', '2020-01-26 10:13:10', '2020-01-26 10:13:10'),
(26, 'pages', 'name', 9, 'en', 'our feed', '2020-01-26 10:13:33', '2020-01-26 10:13:33'),
(39, 'data_rows', 'display_name', 57, 'en', 'Id', '2020-01-27 06:17:46', '2020-01-27 06:17:46'),
(40, 'data_rows', 'display_name', 58, 'en', 'Img', '2020-01-27 06:17:46', '2020-01-27 06:17:46'),
(43, 'pages', 'name', 10, 'en', 'hajj&ummrah', '2020-01-27 06:38:12', '2020-01-27 06:38:12'),
(44, 'pages', 'name', 11, 'en', 'inbound', '2020-01-27 06:38:50', '2020-01-27 06:38:50'),
(45, 'pages', 'name', 12, 'en', 'outbound', '2020-01-27 06:39:09', '2020-01-27 06:39:09'),
(46, 'pages', 'name', 13, 'en', 'Transportation', '2020-01-27 06:41:30', '2020-01-27 06:41:30'),
(47, 'pages', 'name', 14, 'en', 'Flights', '2020-01-27 06:42:00', '2020-01-27 06:42:00'),
(58, 'contant', 'detial', 14, 'en', '<p>&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif;\">At DANA Booking, we understand your need for quality and trust when it comes to providing memorable holiday experiences, that is why when you choose us, you can be confident that our team of highly experienced, multilingual professionals with their in-depth knowledge and meticulous planning will ensure that your holiday experience will be one that you cherish forever.</span><span style=\"font-size: 13.5pt; font-family: \'Times New Roman\', serif;\"><br /></span><span style=\"font-size: 12pt; font-family: Arial, sans-serif;\">The number of passengers serviced annually today, is more than ten times higher than that, we serviced on an annual basis when we first started up. Through continuous investments in contemporary travel related technology and quality assurance, Dana Booking has positioned itself today as one of the leading Wholesaler in The World, capable of meeting any Tour Operator&rsquo;s, Online travel agencies or DMC&rsquo;S requirement.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\">&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px; text-align: center;\" align=\"center\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit;\"><span style=\"font-size: 18pt; font-family: Arial, sans-serif; color: navy;\">Why to choose us ?</span></strong></p>\n<div style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\">&nbsp;</div>\n<ul style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\" type=\"disc\">\n<li style=\"margin: 0px; padding: 0px; list-style: none;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: navy;\">We are the experts</span></strong></li>\n</ul>\n<div style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\"><span style=\"color: #000080; font-family: Arial, sans-serif;\"><span style=\"font-size: 18.6667px;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit;\">&nbsp;</strong></span></span></div>\n<p style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif;\">We have the local know-how when it comes to travel arrangements and customized vacations. We will inspire you to create the ultimate trip that suits your age or budget.</span></p>\n<div style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\">&nbsp;</div>\n<ul style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\" type=\"disc\">\n<li style=\"margin: 0px; padding: 0px; list-style: none;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: navy;\">We are responsible</span></strong></li>\n</ul>\n<div style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\"><span style=\"color: #000080; font-family: Arial, sans-serif;\"><span style=\"font-size: 18.6667px;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit;\">&nbsp;</strong></span></span></div>\n<p style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif;\">We offer travel experiences that are not only authentic but also sustainable and responsible. Dana Booking, understand your need for quality and trust when it comes to providing memorable holiday experiences.</span></p>\n<div style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\">&nbsp;</div>\n<ul style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\" type=\"disc\">\n<li style=\"margin: 0px; padding: 0px; list-style: none;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: navy;\">We are committed</span></strong></li>\n</ul>\n<div style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\"><span style=\"color: #000080; font-family: Arial, sans-serif;\"><span style=\"font-size: 18.6667px;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit;\">&nbsp;</strong></span></span></div>\n<p style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif;\">We are committed to offering travel services of the highest quality, combining our energy and enthusiasm, with our years of experience.</span></p>\n<div style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\">&nbsp;</div>\n<ul style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\" type=\"disc\">\n<li style=\"margin: 0px; padding: 0px; list-style: none;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: navy;\">Always in the reach</span></strong></li>\n</ul>\n<div style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\"><span style=\"color: #000080; font-family: Arial, sans-serif;\"><span style=\"font-size: 18.6667px;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit;\">&nbsp;</strong></span></span></div>\n<p style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif;\">You are never far from our Travel Experts. Alternatively, give us a call, finds us online or book accommodation and day tours through our online b2b website. We are there for you 24/7.</span></p>\n<div style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\">&nbsp;</div>\n<ul style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\" type=\"disc\">\n<li style=\"margin: 0px; padding: 0px; list-style: none;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: navy;\">World class travel partners</span></strong></li>\n</ul>\n<div style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\"><span style=\"color: #000080; font-family: Arial, sans-serif;\"><span style=\"font-size: 18.6667px;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit;\">&nbsp;</strong></span></span></div>\n<p style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif;\">We only work with the most reputable tour operators and accommodation providers so you can book with confidence. We are continually working with our suppliers to maintain and improve standards of work, safety and hygiene.</span></p>\n<div style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\">&nbsp;</div>\n<ul style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\" type=\"disc\">\n<li style=\"margin: 0px; padding: 0px; list-style: none;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: navy;\">Flexible and Competitive rates</span></strong></li>\n</ul>\n<div style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px;\"><span style=\"color: #000080; font-family: Arial, sans-serif;\"><span style=\"font-size: 18.6667px;\"><strong style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit;\">&nbsp;</strong></span></span></div>\n<p style=\"margin: 0px; padding: 0px; color: #2c2c2c; font-family: Arial, Verdana, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif;\">Our strong relationship with world class hotels and travel partners allows us to offer you reasonable prices and the flexibility to change your plans.</span></p>', '2020-01-27 08:35:57', '2020-01-30 12:55:07'),
(59, 'contant', 'title', 14, 'en', 'who we are', '2020-01-27 08:35:57', '2020-01-27 08:35:57'),
(60, 'contant', 'detial', 15, 'en', '<p><span style=\"color: #2c2c2c; text-align: justify; font-size: 12pt; font-family: Arial, sans-serif;\">We aim at providing efficient, flexible and quality service with a personal touch, state of the art technology combined with strong purchasing advantages creating value for money and client satisfaction.</span><span style=\"color: #2c2c2c; text-align: justify; font-size: 13.5pt; font-family: \'Times New Roman\', serif;\"><br /></span><span style=\"color: #2c2c2c; text-align: justify; font-size: 12pt; font-family: Arial, sans-serif;\">We endeavor to exceed our partners&rsquo; expectations, strive for excellence in quality, integrity and value in all that we do to ensure profitable growth in our respective countries.</span></p>', '2020-01-27 08:37:06', '2020-01-30 13:04:34'),
(61, 'contant', 'title', 15, 'en', 'Our Vision', '2020-01-27 08:37:06', '2020-02-23 08:33:18'),
(70, 'contant', 'detial', 20, 'en', '<p><span style=\"color: #333333; font-family: Roboto, Helvetica, Arial, sans-serif;\">Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph. A paragraph is defined as &ldquo;a group of sentences or a single sentence that forms a unit&rdquo; (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long. Ultimately, a paragraph is a sentence or group of sentences that support one main idea. In this handout, we will refer to this as the &ldquo;controlling idea,&rdquo; because it controls what happens in the rest of the paragraph.</span></p>', '2020-01-27 08:44:58', '2020-01-27 08:44:58'),
(71, 'contant', 'title', 20, 'en', 'hajj&Umraah ', '2020-01-27 08:44:58', '2020-01-27 08:44:58'),
(72, 'contant', 'detial', 21, 'en', '<p><span style=\"color: #333333; font-family: Roboto, Helvetica, Arial, sans-serif;\">Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph. A paragraph is defined as &ldquo;a group of sentences or a single sentence that forms a unit&rdquo; (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long. Ultimately, a paragraph is a sentence or group of sentences that support one main idea. In this handout, we will refer to this as the &ldquo;controlling idea,&rdquo; because it controls what happens in the rest of the paragraph.</span></p>', '2020-01-27 08:49:35', '2020-01-27 08:49:35'),
(73, 'contant', 'title', 21, 'en', 'inbound ', '2020-01-27 08:49:36', '2020-01-27 08:49:36'),
(74, 'contant', 'detial', 22, 'en', '<p><span style=\"color: #333333; font-family: Roboto, Helvetica, Arial, sans-serif;\">Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph. A paragraph is defined as &ldquo;a group of sentences or a single sentence that forms a unit&rdquo; (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long. Ultimately, a paragraph is a sentence or group of sentences that support one main idea. In this handout, we will refer to this as the &ldquo;controlling idea,&rdquo; because it controls what happens in the rest of the paragraph.</span></p>', '2020-01-27 08:50:38', '2020-01-27 08:50:38'),
(75, 'contant', 'title', 22, 'en', 'out bound', '2020-01-27 08:50:38', '2020-01-27 08:50:38'),
(76, 'contant', 'detial', 23, 'en', '<p><span style=\"color: #333333; font-family: Roboto, Helvetica, Arial, sans-serif;\">Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph. A paragraph is defined as &ldquo;a group of sentences or a single sentence that forms a unit&rdquo; (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long. Ultimately, a paragraph is a sentence or group of sentences that support one main idea. In this handout, we will refer to this as the &ldquo;controlling idea,&rdquo; because it controls what happens in the rest of the paragraph.</span></p>', '2020-01-27 08:51:29', '2020-01-27 08:51:29'),
(77, 'contant', 'title', 23, 'en', 'trans', '2020-01-27 08:51:29', '2020-01-27 08:51:29'),
(78, 'contant', 'detial', 24, 'en', '<p><span style=\"color: #333333; font-family: Roboto, Helvetica, Arial, sans-serif;\">Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph. A paragraph is defined as &ldquo;a group of sentences or a single sentence that forms a unit&rdquo; (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long. Ultimately, a paragraph is a sentence or group of sentences that support one main idea. In this handout, we will refer to this as the &ldquo;controlling idea,&rdquo; because it controls what happens in the rest of the paragraph.</span></p>', '2020-01-27 08:52:26', '2020-01-27 08:52:26'),
(79, 'contant', 'title', 24, 'en', 'fly', '2020-01-27 08:52:26', '2020-01-27 08:52:26'),
(80, 'Stone', 'title', 1, 'en', 'Mohamed', '2020-01-30 14:18:18', '2020-01-30 14:18:18'),
(81, 'Stone', 'detial', 1, 'en', '<p>General manger&nbsp;</p>', '2020-01-30 14:18:18', '2020-01-30 14:18:18'),
(82, 'Stone', 'title', 2, 'en', 'Abdelrahman', '2020-01-30 14:19:08', '2020-01-30 14:19:08'),
(83, 'Stone', 'detial', 2, 'en', '<p>Manger</p>', '2020-01-30 14:19:08', '2020-01-30 14:19:08'),
(84, 'data_rows', 'display_name', 43, 'en', 'Id', '2020-02-06 06:13:24', '2020-02-06 06:13:24'),
(85, 'data_rows', 'display_name', 44, 'en', 'Title', '2020-02-06 06:13:24', '2020-02-06 06:13:24'),
(86, 'data_rows', 'display_name', 45, 'en', 'Detial', '2020-02-06 06:13:24', '2020-02-06 06:13:24'),
(87, 'data_rows', 'display_name', 46, 'en', 'Img', '2020-02-06 06:13:24', '2020-02-06 06:13:24'),
(88, 'data_rows', 'display_name', 47, 'en', 'Created At', '2020-02-06 06:13:24', '2020-02-06 06:13:24'),
(89, 'data_rows', 'display_name', 48, 'en', 'Updated At', '2020-02-06 06:13:24', '2020-02-06 06:13:24'),
(92, 'data_rows', 'display_name', 59, 'en', 'created_at', '2020-02-06 06:13:37', '2020-02-06 06:13:37'),
(93, 'data_rows', 'display_name', 60, 'en', 'updated_at', '2020-02-06 06:13:37', '2020-02-06 06:13:37'),
(94, 'data_rows', 'display_name', 67, 'en', 'Id', '2020-02-06 06:13:47', '2020-02-06 06:13:47'),
(95, 'data_rows', 'display_name', 68, 'en', 'Title', '2020-02-06 06:13:47', '2020-02-06 06:13:47'),
(96, 'data_rows', 'display_name', 69, 'en', 'Detail', '2020-02-06 06:13:47', '2020-02-06 06:13:47'),
(97, 'data_rows', 'display_name', 70, 'en', 'Img', '2020-02-06 06:13:47', '2020-02-06 06:13:47'),
(98, 'data_rows', 'display_name', 71, 'en', 'Created At', '2020-02-06 06:13:47', '2020-02-06 06:13:47'),
(99, 'data_rows', 'display_name', 72, 'en', 'Updated At', '2020-02-06 06:13:47', '2020-02-06 06:13:47'),
(102, 'data_rows', 'display_name', 51, 'en', 'Id', '2020-02-06 06:14:08', '2020-02-06 06:14:08'),
(103, 'data_rows', 'display_name', 52, 'en', 'Title', '2020-02-06 06:14:08', '2020-02-06 06:14:08'),
(104, 'data_rows', 'display_name', 53, 'en', 'Detial', '2020-02-06 06:14:08', '2020-02-06 06:14:08'),
(105, 'data_rows', 'display_name', 54, 'en', 'Img', '2020-02-06 06:14:08', '2020-02-06 06:14:08'),
(106, 'data_rows', 'display_name', 55, 'en', 'Created At', '2020-02-06 06:14:08', '2020-02-06 06:14:08'),
(107, 'data_rows', 'display_name', 56, 'en', 'Updated At', '2020-02-06 06:14:08', '2020-02-06 06:14:08'),
(110, 'data_rows', 'display_name', 61, 'en', 'Id', '2020-02-06 06:14:28', '2020-02-06 06:14:28'),
(111, 'data_rows', 'display_name', 62, 'en', 'Title', '2020-02-06 06:14:28', '2020-02-06 06:14:28'),
(112, 'data_rows', 'display_name', 63, 'en', 'Detial', '2020-02-06 06:14:28', '2020-02-06 06:14:28'),
(113, 'data_rows', 'display_name', 64, 'en', 'Img', '2020-02-06 06:14:28', '2020-02-06 06:14:28'),
(114, 'data_rows', 'display_name', 65, 'en', 'Created At', '2020-02-06 06:14:28', '2020-02-06 06:14:28'),
(115, 'data_rows', 'display_name', 66, 'en', 'Updated At', '2020-02-06 06:14:28', '2020-02-06 06:14:28'),
(125, 'data_rows', 'display_name', 85, 'en', 'Id', '2020-02-10 08:10:45', '2020-02-10 08:10:45'),
(126, 'data_rows', 'display_name', 86, 'en', 'Title', '2020-02-10 08:10:45', '2020-02-10 08:10:45'),
(129, 'data_rows', 'display_name', 73, 'en', 'Id', '2020-02-10 08:37:51', '2020-02-10 08:37:51'),
(130, 'data_rows', 'display_name', 74, 'en', 'Duration From', '2020-02-10 08:37:51', '2020-02-10 08:37:51'),
(131, 'data_rows', 'display_name', 75, 'en', 'Duration To', '2020-02-10 08:37:51', '2020-02-10 08:37:51'),
(132, 'data_rows', 'display_name', 76, 'en', 'Location', '2020-02-10 08:37:51', '2020-02-10 08:37:51'),
(133, 'data_rows', 'display_name', 77, 'en', 'Seat', '2020-02-10 08:37:51', '2020-02-10 08:37:51'),
(134, 'data_rows', 'display_name', 78, 'en', 'Price', '2020-02-10 08:37:51', '2020-02-10 08:37:51'),
(135, 'data_rows', 'display_name', 79, 'en', 'Section Id', '2020-02-10 08:37:51', '2020-02-10 08:37:51'),
(136, 'data_rows', 'display_name', 80, 'en', 'Img', '2020-02-10 08:37:51', '2020-02-10 08:37:51'),
(137, 'data_rows', 'display_name', 81, 'en', 'Details', '2020-02-10 08:37:51', '2020-02-10 08:37:51'),
(138, 'data_rows', 'display_name', 82, 'en', 'Favorite', '2020-02-10 08:37:51', '2020-02-10 08:37:51'),
(139, 'data_rows', 'display_name', 83, 'en', 'Created At', '2020-02-10 08:37:51', '2020-02-10 08:37:51'),
(140, 'data_rows', 'display_name', 84, 'en', 'Updated At', '2020-02-10 08:37:51', '2020-02-10 08:37:51'),
(143, 'section', 'title', 1, 'en', 'sea ​​tripes', '2020-02-10 08:57:59', '2020-02-10 08:57:59'),
(144, 'section', 'title', 2, 'en', 'Therapeutic trips', '2020-02-10 08:58:27', '2020-02-10 08:58:27'),
(145, 'section', 'title', 3, 'en', 'Exhibition trips', '2020-02-10 08:58:52', '2020-02-10 08:58:52'),
(146, 'section', 'title', 4, 'en', 'Honey moon', '2020-02-10 08:59:19', '2020-02-10 08:59:19'),
(147, 'section', 'title', 5, 'en', 'Tourism trips', '2020-02-10 08:59:39', '2020-02-10 08:59:39'),
(148, 'section', 'title', 6, 'en', 'Business trips', '2020-02-10 08:59:56', '2020-02-10 08:59:56'),
(149, 'data_rows', 'display_name', 89, 'en', 'type', '2020-02-10 09:01:47', '2020-02-10 09:01:47'),
(150, 'trip', 'location', 1, 'en', 'amman', '2020-02-10 09:08:28', '2020-02-10 09:08:28'),
(151, 'trip', 'details', 1, 'en', '<h2 class=\"New-view-program-legend\" style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; font-family: inherit; font-weight: normal; color: #15212f; font-size: 1.6667em; line-height: 1.25em !important; text-align: right;\">مسار الرحله</h2>\n<p><strong style=\"font-size: medium; box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; color: #4c4c4c; font-family: PoppinsMed, \'Droid Arabic Kufi\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; text-align: -webkit-center;\">&nbsp;</strong></p>\n<table style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; border-collapse: collapse; border-spacing: 0px; max-width: 100%; background-color: transparent;\" width=\"100%\">\n<tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" colspan=\"2\">\n<div id=\"itinerary_1\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; display: block;\">\n<table style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; border-collapse: collapse; border-spacing: 0px; max-width: 100%; background-color: transparent;\">\n<tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" align=\"right\">\n<h4 class=\"NewVPfont_7 skin-color mbottom5\" style=\"box-sizing: border-box; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; font-family: inherit; font-weight: normal; line-height: 1.25em; color: #12a0c3; font-size: 16px; margin: 10px 0px 5px !important 0px;\">يوم 1 : القاهرة / عمان&nbsp;</h4>\n</td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" align=\"right\">\n<div class=\"newvp_2_10 NewVPfont_0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; line-height: 24px; font-size: 12px !important;\">الإستعداد للسفر إلى الأردن<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" />الإنتقال إلى عمان<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" />مبيت بالفندق بعمان</div>\n<hr style=\"box-sizing: content-box; margin: 20px 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; height: 0px; border-width: 1px 0px 0px; border-color: #f5f5f5; border-image: initial; border-style: solid initial initial initial;\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">&nbsp;</td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" align=\"right\">\n<h4 class=\"NewVPfont_7 skin-color mbottom5\" style=\"box-sizing: border-box; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; font-family: inherit; font-weight: normal; line-height: 1.25em; color: #12a0c3; font-size: 16px; margin: 10px 0px 5px !important 0px;\">يوم 2 : عمان&nbsp;</h4>\n</td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" align=\"right\">\n<div class=\"newvp_2_10 NewVPfont_0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; line-height: 24px; font-size: 12px !important;\">الإفطار بالفندق<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" />إمكانية القيام بجولات سياحية إختيارية<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" />السياحة في الجبل الاخضر حيث يعتبر الجبل الاخضر من افضل الاماكن السياحية في سلطنة عمان حيث المعالم الطبيعية الساحرة المتمثلة بالقرى الجبلية والوديان المنحدرة بشدة، فإذا ماكنتم من عشاق استكشاف الطبيعة والمغامرة فزيارة هذه المنطقة تعتبر متعة بحد ذاتها لا سيما الصعود الى قمة الجبل والاستمتاع بالمشاهد البانورامية<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" />مبيت بالفندق بعمان</div>\n<hr style=\"box-sizing: content-box; margin: 20px 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; height: 0px; border-width: 1px 0px 0px; border-color: #f5f5f5; border-image: initial; border-style: solid initial initial initial;\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">&nbsp;</td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" align=\"right\">\n<h4 class=\"NewVPfont_7 skin-color mbottom5\" style=\"box-sizing: border-box; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; font-family: inherit; font-weight: normal; line-height: 1.25em; color: #12a0c3; font-size: 16px; margin: 10px 0px 5px !important 0px;\">يوم 3 : عمان&nbsp;</h4>\n</td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" align=\"right\">\n<div class=\"newvp_2_10 NewVPfont_0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; line-height: 24px; font-size: 12px !important;\">الإفطار بالفندق<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" />إمكانية القيام بجولات سياحية إختيارية<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" />السياحة في صحراء وهيبة وهي تعتبر وجه آخر من اوجه السياحة في سلطنة عمان وهو التخييم في الصحراء وسط الكثبان الرملية، فلا شيء هنا سوا الرمال. تعتبر صحراء وهيبة من اجمل الاماكن في سلطنة عمان لمحبي التخييم والسهر في اجواء مثيرة تحت السماء المليئة بالنجوم.<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" />مبيت بالفندق بعمان</div>\n<hr style=\"box-sizing: content-box; margin: 20px 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; height: 0px; border-width: 1px 0px 0px; border-color: #f5f5f5; border-image: initial; border-style: solid initial initial initial;\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">&nbsp;</td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" align=\"right\">\n<h4 class=\"NewVPfont_7 skin-color mbottom5\" style=\"box-sizing: border-box; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; font-family: inherit; font-weight: normal; line-height: 1.25em; color: #12a0c3; font-size: 16px; margin: 10px 0px 5px !important 0px;\">يوم 4 : عمان&nbsp;</h4>\n</td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" align=\"right\">\n<div class=\"newvp_2_10 NewVPfont_0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; line-height: 24px; font-size: 12px !important;\">الإفطار بالفندق<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" />إمكانية القيام بجولات سياحية إختيارية<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" />السياحة في رأس الجنز وهي محمية طبيعية واقعة جنوب ولاية صور وتعتبر من اهم مناطق السياحة في سلطنة عمان وتستقطب اعداد من السيّاح والعوائل لمشاهدة السلاحف البحرية على الشاطئ والعديد من الحيوانات الاخرى التي تعيش في المنطقة<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" />مبيت بالفندق بعمان</div>\n<hr style=\"box-sizing: content-box; margin: 20px 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; height: 0px; border-width: 1px 0px 0px; border-color: #f5f5f5; border-image: initial; border-style: solid initial initial initial;\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">&nbsp;</td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" align=\"right\">\n<h4 class=\"NewVPfont_7 skin-color mbottom5\" style=\"box-sizing: border-box; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; font-family: inherit; font-weight: normal; line-height: 1.25em; color: #12a0c3; font-size: 16px; margin: 10px 0px 5px !important 0px;\">يوم 5 : عمان / القاهرة&nbsp;</h4>\n</td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" align=\"right\">\n<div class=\"newvp_2_10 NewVPfont_0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; line-height: 24px; font-size: 12px !important;\">الإفطار بالفندق<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" />الإستعداد للسفر والعودة إلى القاهرة</div>\n<hr style=\"box-sizing: content-box; margin: 20px 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s; height: 0px; border-width: 1px 0px 0px; border-color: #f5f5f5; border-image: initial; border-style: solid initial initial initial;\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">&nbsp;</td>\n</tr>\n</tbody>\n</table>\n</div>\n</td>\n</tr>\n<tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\">\n<td style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; zoom: 1; scroll-behavior: smooth; transition: all 0.35s ease-out 0s;\" width=\"100%\">&nbsp;</td>\n</tr>\n</tbody>\n</table>', '2020-02-10 09:08:28', '2020-02-10 09:08:28'),
(152, 'service', 'title', 1, 'en', 'Interior Curtains', '2020-02-23 09:23:05', '2020-03-23 09:43:26'),
(153, 'service', 'content', 1, 'en', '<p>Wood flooring is any product manufactured from timber that is designed for use as flooring, either structural or aesthetic and Wood is a common choice as a flooring material due to its environmental profile, durability, and restorability. Bamboo flooring is often considered a form of wood flooring, although it is made from a grass (bamboo) rather than a timber. It is a substance which is \"perfect for flooring because it is elastic and flexible\", according to A Splintered History of Wood by Spike Garlsen. Engineered Wood flooring is a popular feature in many houses.</p>\n<p>&nbsp;</p>\n<p>Wood flooring is composed of two or more layers of wood in the form of a plank. The top layer (lamella) is the wood that is a visible when the flooring is installed, and is adhered to the core (or substrate) which provides the stability. We have the best manufacturers for laminate wood flooring, creating a high-pressure laminate flooring.</p>', '2020-02-23 09:23:05', '2020-03-23 09:43:26'),
(154, 'service', 'title', 2, 'en', 'Wooden Flooring', '2020-02-23 09:24:08', '2020-03-23 09:44:19'),
(155, 'service', 'content', 2, 'en', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #777777; font-family: Lato, sans-serif; font-size: 15px;\">Wood flooring is any product manufactured from timber that is designed for use as flooring, either structural or aesthetic and Wood is a common choice as a flooring material due to its environmental profile, durability, and restorability. Bamboo flooring is often considered a form of wood flooring, although it is made from a grass (bamboo) rather than a timber. It is a substance which is \"perfect for flooring because it is elastic and flexible\", according to A Splintered History of Wood by Spike Garlsen. Engineered Wood flooring is a popular feature in many houses.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #777777; font-family: Lato, sans-serif; font-size: 15px;\">Wood flooring is composed of two or more layers of wood in the form of a plank. The top layer (lamella) is the wood that is a visible when the flooring is installed, and is adhered to the core (or substrate) which provides the stability. We have the best manufacturers for laminate wood flooring, creating a high-pressure laminate flooring.</p>', '2020-02-23 09:24:08', '2020-03-23 09:44:19'),
(156, 'service', 'title', 3, 'en', 'Furniture Work', '2020-02-23 09:28:06', '2020-03-23 09:45:20'),
(157, 'service', 'content', 3, 'en', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #777777; font-family: Lato, sans-serif; font-size: 15px;\">Wood flooring is any product manufactured from timber that is designed for use as flooring, either structural or aesthetic and Wood is a common choice as a flooring material due to its environmental profile, durability, and restorability. Bamboo flooring is often considered a form of wood flooring, although it is made from a grass (bamboo) rather than a timber. It is a substance which is \"perfect for flooring because it is elastic and flexible\", according to A Splintered History of Wood by Spike Garlsen. Engineered Wood flooring is a popular feature in many houses.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: none; outline: none; position: relative; line-height: 1.8em; color: #777777; font-family: Lato, sans-serif; font-size: 15px;\">Wood flooring is composed of two or more layers of wood in the form of a plank. The top layer (lamella) is the wood that is a visible when the flooring is installed, and is adhered to the core (or substrate) which provides the stability. We have the best manufacturers for laminate wood flooring, creating a high-pressure laminate flooring.</p>', '2020-02-23 09:28:06', '2020-03-23 09:45:20'),
(158, 'service', 'title', 4, 'en', 'Transportation', '2020-02-23 09:29:00', '2020-02-23 09:29:00'),
(159, 'service', 'content', 4, 'en', '<p><span style=\"color: #333333; font-family: DroidArabicKufi-Regular, sans-serif, Arial; font-size: 16px; letter-spacing: 0.2px;\">ه ما لبست ورداً وريحانا وعلم البحر أن يسجو لراكبه ولو تناهيه دراً ومرجانا وعلم القمر الزاهي بأن له من ضوء الشمس الضحى نوراً وألوانا وعلم العقل أشياء وميزه عما سواه فأضحى العقل ميزانا فيما يطيق وما يدركه قال به حقاً وإلا جثا لله إيمانا وعلم الطير أن يشدو على فننٍ فحرك الشدو أشجاناً ووجدانا وعلم النجم أن يسري وعلمن من الدليل لمجرانا ومسرانا إن كان غيرك يا مولاي علمه فليأتنا بدليل منه برهانا سبحانك الله لا علمٌ ولا عملٌ لنا بدونك يا ذا العرش سبحانا</span></p>', '2020-02-23 09:29:00', '2020-02-23 09:29:00'),
(160, 'service', 'title', 5, 'en', 'travels', '2020-02-23 09:30:23', '2020-02-23 09:30:23'),
(161, 'service', 'content', 5, 'en', '<p><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; letter-spacing: 0.2px; font-family: DroidArabicKufi-Regular, sans-serif, Arial; font-size: 16px;\">ه ما لبست ورداً وريحانا وعلم البحر أن يسجو لراكبه ولو تناهيه دراً ومرجانا وعلم القمر الزاهي بأن له من ضوء الشمس الضحى نوراً وألوانا وعلم العقل أشياء وميزه عما سواه فأضحى العقل ميزانا فيما يطيق وما يدركه قال به حقاً وإلا جثا لله إيمانا وعلم الطير أن يشدو على فننٍ فحرك الشدو أشجاناً ووجدانا وعلم النجم أن يسري وعلمن من الدليل لمجرانا ومسرانا إن كان غيرك يا مولاي علمه فليأتنا بدليل منه برهانا سبحانك الله لا علمٌ ولا</span></p>', '2020-02-23 09:30:23', '2020-02-23 09:30:23'),
(162, 'data_rows', 'display_name', 97, 'en', 'Id', '2020-02-23 10:18:22', '2020-02-23 10:18:22'),
(163, 'data_rows', 'display_name', 98, 'en', 'Name', '2020-02-23 10:18:22', '2020-02-23 10:18:22'),
(164, 'data_rows', 'display_name', 100, 'en', 'Message', '2020-02-23 10:18:22', '2020-02-23 10:18:22'),
(165, 'data_rows', 'display_name', 101, 'en', 'Created At', '2020-02-23 10:18:22', '2020-02-23 10:18:22'),
(166, 'data_rows', 'display_name', 102, 'en', 'Updated At', '2020-02-23 10:18:22', '2020-02-23 10:18:22'),
(167, 'data_types', 'display_name_singular', 26, 'en', 'Contact', '2020-02-23 10:18:22', '2020-02-23 10:18:22'),
(168, 'data_types', 'display_name_plural', 26, 'en', 'Contacts', '2020-02-23 10:18:22', '2020-02-23 10:18:22'),
(169, 'Country', 'name', 1, 'en', 'Egypt', '2020-02-23 12:56:16', '2020-02-23 12:56:16'),
(170, 'Country', 'name', 2, 'en', 'Sudan', '2020-02-23 12:56:48', '2020-02-23 12:56:48'),
(171, 'Country', 'name', 3, 'en', 'Morocco', '2020-02-23 12:57:12', '2020-02-23 12:57:12'),
(172, 'Country', 'name', 4, 'en', 'Tunisia', '2020-02-23 12:57:30', '2020-02-23 12:57:30'),
(173, 'data_types', 'display_name_singular', 28, 'en', 'Training Program', '2020-02-23 13:02:07', '2020-02-23 13:02:07'),
(174, 'data_types', 'display_name_plural', 28, 'en', 'Training Programs', '2020-02-23 13:02:07', '2020-02-23 13:02:07'),
(175, 'training_programs', 'name', 1, 'en', 'Programming Languages', '2020-02-23 13:02:52', '2020-02-23 13:02:52'),
(176, 'training_programs', 'name', 2, 'en', 'Graphic Design', '2020-02-23 13:03:11', '2020-02-23 13:03:11'),
(177, 'training_programs', 'name', 3, 'en', 'Databases', '2020-02-23 13:03:38', '2020-02-23 13:03:38'),
(178, 'training_programs', 'name', 4, 'en', 'computer networks', '2020-02-23 13:04:00', '2020-02-23 13:04:00'),
(179, 'experts', 'name', 1, 'en', 'kareem', '2020-02-23 13:33:04', '2020-02-23 13:33:04'),
(180, 'experts', 'job', 1, 'en', 'programmer', '2020-02-23 13:33:04', '2020-02-23 13:33:04'),
(181, 'experts', 'name', 2, 'en', 'Mohamed', '2020-02-23 13:33:42', '2020-02-23 13:33:42'),
(182, 'experts', 'job', 2, 'en', 'programmer', '2020-02-23 13:33:42', '2020-02-23 13:33:42'),
(183, 'experts', 'name', 3, 'en', 'noha', '2020-02-23 13:34:55', '2020-02-23 13:34:55'),
(184, 'experts', 'job', 3, 'en', 'nurse', '2020-02-23 13:34:55', '2020-02-23 13:34:55'),
(185, 'experts', 'name', 4, 'en', 'kareem', '2020-02-23 13:36:00', '2020-02-23 13:36:00'),
(186, 'experts', 'job', 4, 'en', 'programmer', '2020-02-23 13:36:00', '2020-02-23 13:36:00'),
(187, 'Testimonial', 'name', 1, 'en', 'Russell Stephens', '2020-02-23 13:48:30', '2020-02-23 13:48:30'),
(188, 'Testimonial', 'content', 1, 'en', '<p>In today\'s world, its important to harness technology to help us advance and connect.</p>', '2020-02-23 13:48:30', '2020-02-23 13:48:30'),
(189, 'Testimonial', 'college', 1, 'en', 'University of UK', '2020-02-23 13:48:47', '2020-02-23 13:48:47'),
(190, 'data_rows', 'display_name', 118, 'en', 'Id', '2020-02-23 13:49:35', '2020-02-23 13:49:35'),
(191, 'data_rows', 'display_name', 119, 'en', 'Name', '2020-02-23 13:49:35', '2020-02-23 13:49:35');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(192, 'data_rows', 'display_name', 120, 'en', 'Content', '2020-02-23 13:49:35', '2020-02-23 13:49:35'),
(193, 'data_rows', 'display_name', 121, 'en', 'College', '2020-02-23 13:49:35', '2020-02-23 13:49:35'),
(194, 'data_rows', 'display_name', 122, 'en', 'Img', '2020-02-23 13:49:35', '2020-02-23 13:49:35'),
(195, 'data_rows', 'display_name', 123, 'en', 'Created At', '2020-02-23 13:49:35', '2020-02-23 13:49:35'),
(196, 'data_rows', 'display_name', 124, 'en', 'Updated At', '2020-02-23 13:49:35', '2020-02-23 13:49:35'),
(197, 'data_types', 'display_name_singular', 30, 'en', 'Testimonial', '2020-02-23 13:49:36', '2020-02-23 13:49:36'),
(198, 'data_types', 'display_name_plural', 30, 'en', 'Testimonials', '2020-02-23 13:49:36', '2020-02-23 13:49:36'),
(199, 'Testimonial', 'name', 2, 'en', 'Ms. Lara Croft', '2020-02-23 13:50:57', '2020-02-23 13:50:57'),
(200, 'Testimonial', 'content', 2, 'en', '<p>In today\'s world, its important to harness technology to help us advance and connect.</p>', '2020-02-23 13:50:57', '2020-02-23 13:50:57'),
(201, 'Testimonial', 'name', 3, 'en', 'kareem', '2020-02-23 13:55:23', '2020-02-23 13:55:23'),
(202, 'Testimonial', 'content', 3, 'en', '<p>In today\'s world, its important to harness technology to help us advance and connect.</p>', '2020-02-23 13:55:23', '2020-02-23 13:55:23'),
(203, 'Course', 'title', 1, 'en', 'HTML5', '2020-02-24 06:45:31', '2020-02-24 06:45:31'),
(204, 'Course', 'content', 1, 'en', 'Get accredited certificates through studying online through the application of Terra Courses, as it provides you with certificates in the field of web design and a professional set of advanced courses that start with you from the basics until you reach advanced and professional levels,', '2020-02-24 06:45:31', '2020-02-24 06:45:31'),
(205, 'Course', 'title', 2, 'en', 'php', '2020-02-24 06:47:23', '2020-02-24 06:47:23'),
(206, 'Course', 'instructor', 2, 'en', 'Mohamed amr', '2020-02-24 06:47:23', '2020-02-24 06:47:23'),
(207, 'Course', 'content', 2, 'en', 'Courses provides you with a set of Microsoft technology courses for designing and programming desktop applications in the language', '2020-02-24 06:47:23', '2020-02-24 06:47:23'),
(208, 'data_rows', 'display_name', 129, 'en', 'Id', '2020-02-24 06:51:15', '2020-02-24 06:51:15'),
(209, 'data_rows', 'display_name', 130, 'en', 'Title', '2020-02-24 06:51:15', '2020-02-24 06:51:15'),
(210, 'data_rows', 'display_name', 131, 'en', 'Instructor', '2020-02-24 06:51:15', '2020-02-24 06:51:15'),
(211, 'data_rows', 'display_name', 132, 'en', 'Cost', '2020-02-24 06:51:15', '2020-02-24 06:51:15'),
(212, 'data_rows', 'display_name', 133, 'en', 'Content', '2020-02-24 06:51:15', '2020-02-24 06:51:15'),
(213, 'data_rows', 'display_name', 134, 'en', 'Category Id', '2020-02-24 06:51:15', '2020-02-24 06:51:15'),
(214, 'data_rows', 'display_name', 135, 'en', 'Created At', '2020-02-24 06:51:15', '2020-02-24 06:51:15'),
(215, 'data_rows', 'display_name', 136, 'en', 'Updated At', '2020-02-24 06:51:15', '2020-02-24 06:51:15'),
(218, 'Course', 'student_num', 2, 'en', '20/30 Student', '2020-02-24 06:52:45', '2020-02-24 06:52:45'),
(219, 'Course', 'instructor', 1, 'en', 'لارا كروفت', '2020-02-24 06:53:12', '2020-02-24 06:53:12'),
(220, 'Course', 'student_num', 1, 'en', '20/30 Student', '2020-02-24 06:53:12', '2020-02-24 06:53:12'),
(221, 'Course', 'title', 3, 'en', 'css', '2020-02-24 06:54:32', '2020-02-24 06:54:32'),
(222, 'Course', 'instructor', 3, 'en', 'Mohamed amr', '2020-02-24 06:54:33', '2020-02-24 06:54:33'),
(223, 'Course', 'content', 3, 'en', 'Get accredited certificates through studying online through the application of Terra Courses, as it provides you with certificates in the field of web design and a professional set of advanced courses that start with you from the basics until you reach advanced and professional levels,', '2020-02-24 06:54:33', '2020-02-24 06:54:33'),
(224, 'Course', 'student_num', 3, 'en', '20/30 Student', '2020-02-24 06:54:33', '2020-02-24 06:54:33'),
(225, 'Course', 'title', 4, 'en', 'graphic', '2020-02-24 07:14:46', '2020-02-24 07:14:46'),
(226, 'Course', 'instructor', 4, 'en', 'kareem', '2020-02-24 07:14:46', '2020-02-24 07:14:46'),
(227, 'Course', 'content', 4, 'en', '<p>Get accredited certificates through studying online through the application of Terra Courses, as it provides you with certificates in the field of web design and a professional set of advanced courses that start with you from the basics until you reach advanced and professional levels,</p>', '2020-02-24 07:14:46', '2020-02-24 08:57:21'),
(228, 'Course', 'student_num', 4, 'en', '20/30 Student', '2020-02-24 07:14:46', '2020-02-24 07:14:46'),
(229, 'data_rows', 'display_name', 137, 'en', 'Date', '2020-02-24 07:26:44', '2020-02-24 07:26:44'),
(230, 'data_rows', 'display_name', 138, 'en', 'Student number', '2020-02-24 07:26:44', '2020-02-24 07:26:44'),
(231, 'data_rows', 'display_name', 139, 'en', 'img', '2020-02-24 07:26:56', '2020-02-24 07:26:56'),
(234, 'data_rows', 'display_name', 143, 'en', 'id', '2020-02-24 08:35:23', '2020-02-24 08:35:23'),
(235, 'data_rows', 'display_name', 144, 'en', 'name', '2020-02-24 08:35:23', '2020-02-24 08:35:23'),
(236, 'data_rows', 'display_name', 145, 'en', 'job', '2020-02-24 08:35:23', '2020-02-24 08:35:23'),
(237, 'data_rows', 'display_name', 146, 'en', 'img', '2020-02-24 08:35:23', '2020-02-24 08:35:23'),
(238, 'data_rows', 'display_name', 147, 'en', 'created_at', '2020-02-24 08:35:23', '2020-02-24 08:35:23'),
(239, 'data_rows', 'display_name', 148, 'en', 'updated_at', '2020-02-24 08:35:23', '2020-02-24 08:35:23'),
(240, 'data_rows', 'display_name', 140, 'en', 'lectures', '2020-02-24 08:53:07', '2020-02-24 08:53:07'),
(241, 'data_rows', 'display_name', 141, 'en', 'time', '2020-02-24 08:53:07', '2020-02-24 08:53:07'),
(242, 'data_rows', 'display_name', 142, 'en', 'instructor id', '2020-02-24 08:53:07', '2020-02-24 08:53:07'),
(243, 'Course', 'lectures', 4, 'en', '12 lectures', '2020-02-24 08:57:21', '2020-02-24 08:57:21'),
(244, 'Course', 'course_time', 4, 'en', '5 months', '2020-02-24 08:57:21', '2020-02-24 08:57:21'),
(247, 'data_rows', 'display_name', 125, 'en', 'Id', '2020-02-24 11:40:03', '2020-02-24 11:40:03'),
(248, 'data_rows', 'display_name', 126, 'en', 'Name', '2020-02-24 11:40:03', '2020-02-24 11:40:03'),
(249, 'data_rows', 'display_name', 127, 'en', 'Created At', '2020-02-24 11:40:03', '2020-02-24 11:40:03'),
(250, 'data_rows', 'display_name', 128, 'en', 'Updated At', '2020-02-24 11:40:03', '2020-02-24 11:40:03'),
(253, 'Course', 'title', 5, 'en', 'Nod js', '2020-02-25 08:34:44', '2020-02-25 08:34:44'),
(254, 'Course', 'instructor', 5, 'en', 'Mohamed amr', '2020-02-25 08:34:45', '2020-02-25 08:34:45'),
(255, 'Course', 'content', 5, 'en', '<p>Courses provides you with a set of Microsoft technology courses for designing and programming desktop applications in the language</p>', '2020-02-25 08:34:45', '2020-02-25 08:34:45'),
(256, 'Course', 'lectures', 5, 'en', '12 lectures', '2020-02-25 08:34:45', '2020-02-25 08:34:45'),
(257, 'Course', 'course_time', 5, 'en', '5 months', '2020-02-25 08:34:45', '2020-02-25 08:34:45'),
(258, 'category', 'name', 4, 'en', 'computer networks', '2020-02-27 07:27:10', '2020-02-27 07:27:10'),
(259, 'category', 'name', 3, 'en', 'Databases', '2020-02-27 07:27:24', '2020-02-27 07:27:24'),
(260, 'category', 'name', 2, 'en', 'Graphic Design', '2020-02-27 07:27:37', '2020-02-27 07:27:37'),
(261, 'category', 'name', 1, 'en', 'Programming Languages', '2020-02-27 07:27:52', '2020-02-27 07:27:52'),
(262, 'instructor', 'name', 4, 'en', 'kareem', '2020-02-27 07:30:07', '2020-02-27 07:30:07'),
(263, 'instructor', 'job', 4, 'en', 'programmer', '2020-02-27 07:30:07', '2020-02-27 07:30:07'),
(264, 'instructor', 'name', 3, 'en', 'noha', '2020-02-27 07:30:18', '2020-02-27 07:30:18'),
(265, 'instructor', 'job', 3, 'en', 'nurse', '2020-02-27 07:30:18', '2020-02-27 07:30:18'),
(266, 'instructor', 'name', 2, 'en', 'Mohammad ', '2020-02-27 07:30:34', '2020-02-27 07:30:34'),
(267, 'instructor', 'job', 2, 'en', 'programmer', '2020-02-27 07:30:34', '2020-02-27 07:30:34'),
(268, 'instructor', 'name', 1, 'en', 'kareem', '2020-02-27 07:30:47', '2020-02-27 07:30:47'),
(269, 'instructor', 'job', 1, 'en', 'programmer', '2020-02-27 07:30:47', '2020-02-27 07:30:47'),
(271, 'data_rows', 'display_name', 156, 'en', 'Id', '2020-02-27 08:32:03', '2020-02-27 08:32:03'),
(272, 'data_rows', 'display_name', 157, 'en', 'Title', '2020-02-27 08:32:03', '2020-02-27 08:32:03'),
(273, 'data_rows', 'display_name', 158, 'en', 'Content', '2020-02-27 08:32:03', '2020-02-27 08:32:03'),
(274, 'data_rows', 'display_name', 159, 'en', 'Img', '2020-02-27 08:32:03', '2020-02-27 08:32:03'),
(275, 'data_rows', 'display_name', 160, 'en', 'Date', '2020-02-27 08:32:03', '2020-02-27 08:32:03'),
(276, 'data_rows', 'display_name', 161, 'en', 'Created At', '2020-02-27 08:32:03', '2020-02-27 08:32:03'),
(277, 'data_rows', 'display_name', 162, 'en', 'Updated At', '2020-02-27 08:32:03', '2020-02-27 08:32:03'),
(280, 'success_story', 'title', 1, 'en', 'Talent shows are the most excellent choice for a preferential trade area', '2020-02-27 08:33:41', '2020-02-27 08:33:41'),
(281, 'success_story', 'content', 1, 'en', '<p>Lorem Ipsum Dolores sit amat, consectetur adipiscing elite, dam do eiusmod Lorem Ipsum Dolor sit amat tempor and vitality, such as fatigue and pain.</p>', '2020-02-27 08:33:41', '2020-02-27 08:33:41'),
(282, 'success_story', 'title', 2, 'en', 'Bachelor\'s programs - Foster School', '2020-02-27 08:34:39', '2020-02-27 08:34:39'),
(283, 'success_story', 'content', 2, 'en', '<p>Lorem Ipsum Dolores sit amat, consectetur adipiscing elite, dam do eiusmod Lorem Ipsum Dolor sit amat tempor and vitality, such as fatigue and pain.</p>', '2020-02-27 08:34:39', '2020-02-27 08:34:39'),
(284, 'success_story', 'title', 3, 'en', 'Pantherbook: It is the future of high school', '2020-02-27 08:36:26', '2020-02-27 08:36:26'),
(285, 'success_story', 'content', 3, 'en', '<p>Lorem Ipsum Dolores sit amat, consectetur adipiscing elite, dam do eiusmod Lorem Ipsum Dolor sit amat tempor and vitality, such as fatigue and pain.</p>', '2020-02-27 08:36:26', '2020-02-27 08:36:26'),
(286, 'membership', 'title', 1, 'en', 'Lifetime subscription', '2020-02-27 10:22:42', '2020-02-27 10:22:42'),
(287, 'membership', 'content', 1, 'en', '<p>It includes all the courses available on the Business Academy website (144 courses).</p>', '2020-02-27 10:22:42', '2020-02-27 10:22:42'),
(288, 'membership', 'title', 2, 'en', 'Diploma subscription', '2020-02-27 10:23:53', '2020-02-27 10:23:53'),
(289, 'membership', 'content', 2, 'en', '<p>It includes all the courses available on the Business Academy website (144 courses).</p>', '2020-02-27 10:23:53', '2020-02-27 10:23:53'),
(290, 'membership', 'title', 3, 'en', 'master of Business Administration', '2020-02-27 10:24:51', '2020-02-27 10:24:51'),
(291, 'membership', 'content', 3, 'en', '<p>It includes 12 courses and more than 350 training hours in addition to the final project,</p>', '2020-02-27 10:24:51', '2020-02-27 10:24:51'),
(294, 'student_projects', 'title', 1, 'en', 'The \"second-year architecture students\' projects\" is not displayed by Nowruz University', '2020-02-27 11:23:37', '2020-02-27 11:23:37'),
(295, 'student_projects', 'content', 1, 'en', '<p style=\"text-align: left;\">The \"second-year architecture students\' projects\" is not displayed by Nowruz University</p>\n<p style=\"text-align: left;\">The \"second-year architecture students\' projects\" is not displayed by Nowruz University</p>\n<p style=\"text-align: left;\">The \"second-year architecture students\' projects\" is not displayed by Nowruz University</p>', '2020-02-27 11:23:37', '2020-02-27 11:23:37'),
(296, 'student_projects', 'title', 2, 'en', 'The \"second-year architecture students\' projects\" is not displayed by Nowruz University', '2020-02-27 11:28:22', '2020-02-27 11:28:22'),
(297, 'student_projects', 'content', 2, 'en', '<p>The \"second-year architecture students\' projects\" is not displayed by Nowruz University</p>\n<p>The \"second-year architecture students\' projects\" is not displayed by Nowruz University</p>\n<p>The \"second-year architecture students\' projects\" is not displayed by Nowruz University</p>', '2020-02-27 11:28:22', '2020-02-27 11:28:22'),
(298, 'student_projects', 'title', 3, 'en', 'The \"second-year architecture students\' projects\" is not displayed by Nowruz University', '2020-02-27 11:29:03', '2020-02-27 11:29:03'),
(299, 'student_projects', 'content', 3, 'en', '<p>The \"second-year architecture students\' projects\" is not displayed by Nowruz University</p>\n<p>The \"second-year architecture students\' projects\" is not displayed by Nowruz University</p>\n<p>The \"second-year architecture students\' projects\" is not displayed by Nowruz University</p>', '2020-02-27 11:29:03', '2020-02-27 11:29:03'),
(300, 'initiative', 'place', 1, 'en', '<p style=\"text-align: left;\"><span style=\"color: #343e51; font-family: hanimation;\">سوف تقام المؤتمرات التدريبية فى مختلف محافظات مصر بحيث تستطيع الوصل لجميع الفئات الشبابية التى يمكنها الإستفادة من هذه المبادرة. ويشمل البرنامج التدريبي أهم المواضيع فى علوم الإدارة وسيتم تقسيمهم إلى إثني عشر مستوى هي الأكثر طلباً في مجال تطوير ريادة الأعمال و الإدارة العامة، وهي</span></p>\n<p style=\"text-align: left;\">&nbsp;</p>\n<p style=\"text-align: left;\">&nbsp;</p>\n<ul>\n<li style=\"text-align: left;\">ريادة الأعمال</li>\n<li style=\"text-align: left;\">الإدارة العامة</li>\n<li style=\"text-align: left;\">مهارات القياد</li>\n<li style=\"text-align: left;\">مهارات البيع</li>\n<li style=\"text-align: left;\">التسويق</li>\n<li style=\"text-align: left;\">الموارد البشرية</li>\n<li style=\"text-align: left;\">إدارة الجودة</li>\n<li style=\"text-align: left;\">المحاسبة المالية</li>\n<li style=\"text-align: left;\">العمليات و سلاسل الإمداد</li>\n<li style=\"text-align: left;\">إدارة المشاريع</li>\n<li style=\"text-align: left;\">إدارة الأعمال والاقتصاد الدولي</li>\n<li style=\"text-align: left;\">التخطيط الاستراتيجى</li>\n</ul>', '2020-02-27 12:49:36', '2020-02-27 12:52:33'),
(301, 'initiative', 'vision', 1, 'en', '<p style=\"text-align: left;\">إعداد جيل من رواد الأعمال المتميزين فى ريادة الأعمال</p>', '2020-02-27 12:49:36', '2020-02-27 12:52:33'),
(302, 'initiative', 'message', 1, 'en', '<p style=\"text-align: left;\">توفير فرص التعلم والتدريب للجميع في بيئة تعليمية مناسبة مع مراعاة التطور فى ريادة الأعمال وتحقيق أهداف تقدم التعليم، ورفع جودة مخرجاته، وزيادة فاعلية البحث العلمي، وتشجيع الإبداع والإبتكار، وتنمية الشراكة المجتمعية، والإرتقاء بمهارات وقدرات رواد الأعمال من الشباب.</p>', '2020-02-27 12:49:37', '2020-02-27 12:52:33'),
(303, 'initiative', 'goals', 1, 'en', '<ul>\n<li style=\"text-align: left;\">المشاركة فى تحسين المستوى العلمى والمعرفى لدى الشباب عن الإدارة وريادة الأعمال.</li>\n<li style=\"text-align: left;\">تعزيز وتقوية المهارات الأساسية للعمل فى جميع القطاعات.</li>\n<li style=\"text-align: left;\">الإرتقاء بالمستوى الفكرى والعملى للشباب نتيجة احتكاكهم المباشر بالجزء العملى عن طريق محاكاة واقعية لما يحدث فى سوق العمل.</li>\n<li style=\"text-align: left;\">رفع قدرة الشباب والإرتقاء بقدراتهم لإبتكار مشاريع متميزة.</li>\n<li style=\"text-align: left;\">اثراء ثقافة العمل والنجاح لدى الشباب.</li>\n<li style=\"text-align: left;\">الإندماج مع المؤسسات التى ترعى الشركات الناشئة والافكار الاستثمارية.</li>\n</ul>', '2020-02-27 12:49:37', '2020-02-27 12:52:33'),
(304, 'data_rows', 'display_name', 103, 'en', 'Email', '2020-02-29 09:04:15', '2020-02-29 09:04:15'),
(307, 'data_rows', 'display_name', 191, 'en', 'id', '2020-02-29 11:00:00', '2020-02-29 11:00:00'),
(308, 'data_rows', 'display_name', 192, 'en', 'name', '2020-02-29 11:00:00', '2020-02-29 11:00:00'),
(309, 'data_rows', 'display_name', 193, 'en', 'Email', '2020-02-29 11:00:00', '2020-02-29 11:00:00'),
(310, 'data_rows', 'display_name', 194, 'en', 'password', '2020-02-29 11:00:00', '2020-02-29 11:00:00'),
(311, 'data_rows', 'display_name', 195, 'en', 'created_at', '2020-02-29 11:00:00', '2020-02-29 11:00:00'),
(312, 'data_rows', 'display_name', 196, 'en', 'updated_at', '2020-02-29 11:00:00', '2020-02-29 11:00:00'),
(313, 'instructor', 'content', 4, 'en', 'Get accredited certificates through studying online through the application of Terra Courses, as it provides you with certificates in the field of web design and a professional set of advanced courses that start with you from the basics until you reach advanced and professional levels,', '2020-03-01 07:39:19', '2020-03-01 07:39:19'),
(314, 'instructor', 'content', 1, 'en', 'Get accredited certificates through studying online through the application of Terra Courses, as it provides you with certificates in the field of web design and a professional set of advanced courses that start with you from the basics until you reach advanced and professional levels,', '2020-03-01 07:39:44', '2020-03-01 07:39:44'),
(315, 'data_rows', 'display_name', 205, 'en', 'Id', '2020-03-01 10:22:28', '2020-03-01 10:22:28'),
(316, 'data_rows', 'display_name', 206, 'en', 'Title', '2020-03-01 10:22:28', '2020-03-01 10:22:28'),
(317, 'data_rows', 'display_name', 207, 'en', 'Img', '2020-03-01 10:22:28', '2020-03-01 10:22:28'),
(318, 'data_rows', 'display_name', 208, 'en', 'Content', '2020-03-01 10:22:28', '2020-03-01 10:22:28'),
(319, 'data_rows', 'display_name', 209, 'en', 'Category Id', '2020-03-01 10:22:28', '2020-03-01 10:22:28'),
(320, 'data_rows', 'display_name', 210, 'en', 'Created At', '2020-03-01 10:22:28', '2020-03-01 10:22:28'),
(321, 'data_rows', 'display_name', 211, 'en', 'Updated At', '2020-03-01 10:22:28', '2020-03-01 10:22:28'),
(324, 'sub_category', 'title', 1, 'en', 'لغات برمجه', '2020-03-01 10:25:23', '2020-03-01 10:25:23'),
(325, 'sub_category', 'content', 1, 'en', '<p style=\"text-align: right;\"><span style=\"color: #343e51; font-family: hanimation;\">&nbsp;جامعة نوروز فلا\" عرض مشاريع طلاب الهندسة المعمارية المرحلة الثانية\" جامعة نوروز فلا\" عرض مشاريع طلاب الهندسة&nbsp;</span></p>', '2020-03-01 10:25:23', '2020-03-01 10:25:23'),
(326, 'Course', 'student_num', 5, 'en', '20/30 طالب', '2020-03-01 10:52:23', '2020-03-01 10:52:23'),
(327, 'data_rows', 'display_name', 170, 'en', 'id', '2020-03-01 11:26:40', '2020-03-01 11:26:40'),
(328, 'data_rows', 'display_name', 171, 'en', 'title', '2020-03-01 11:26:40', '2020-03-01 11:26:40'),
(329, 'data_rows', 'display_name', 172, 'en', 'content', '2020-03-01 11:26:40', '2020-03-01 11:26:40'),
(330, 'data_rows', 'display_name', 173, 'en', 'img', '2020-03-01 11:26:40', '2020-03-01 11:26:40'),
(331, 'data_rows', 'display_name', 174, 'en', 'created_at', '2020-03-01 11:26:40', '2020-03-01 11:26:40'),
(332, 'data_rows', 'display_name', 175, 'en', 'updated_at', '2020-03-01 11:26:40', '2020-03-01 11:26:40'),
(333, 'data_rows', 'display_name', 212, 'en', 'category id', '2020-03-01 11:27:13', '2020-03-01 11:27:13'),
(334, 'sub_category', 'title', 8, 'en', 'لغات', '2020-03-01 12:48:39', '2020-03-01 12:48:39'),
(335, 'sub_category', 'content', 8, 'en', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">track</span><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">track</span><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">track</span><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">track</span><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">track</span><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">track</span><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">track</span><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">track</span></p>', '2020-03-01 12:48:39', '2020-03-01 12:48:39'),
(336, 'data_rows', 'display_name', 197, 'en', 'Id', '2020-03-02 06:52:12', '2020-03-02 06:52:12'),
(337, 'data_rows', 'display_name', 198, 'en', 'Name', '2020-03-02 06:52:12', '2020-03-02 06:52:12'),
(338, 'data_rows', 'display_name', 199, 'en', 'Email', '2020-03-02 06:52:12', '2020-03-02 06:52:12'),
(339, 'data_rows', 'display_name', 200, 'en', 'Phone', '2020-03-02 06:52:12', '2020-03-02 06:52:12'),
(340, 'data_rows', 'display_name', 201, 'en', 'Message', '2020-03-02 06:52:12', '2020-03-02 06:52:12'),
(341, 'data_rows', 'display_name', 202, 'en', 'Type Course', '2020-03-02 06:52:12', '2020-03-02 06:52:12'),
(342, 'data_rows', 'display_name', 203, 'en', 'Created At', '2020-03-02 06:52:12', '2020-03-02 06:52:12'),
(343, 'data_rows', 'display_name', 204, 'en', 'Updated At', '2020-03-02 06:52:12', '2020-03-02 06:52:12'),
(346, 'data_rows', 'display_name', 228, 'en', 'Student Id', '2020-03-02 07:54:23', '2020-03-02 07:54:23'),
(347, 'data_rows', 'display_name', 229, 'en', 'Pending', '2020-03-02 07:54:41', '2020-03-02 07:54:41'),
(349, 'menu_items', 'title', 31, 'en', 'Contacts', '2020-03-02 14:03:42', '2020-03-02 14:03:42'),
(350, 'menu_items', 'title', 35, 'en', 'Testimonials', '2020-03-02 14:03:52', '2020-03-02 14:03:52'),
(355, 'category', 'title', 1, 'en', 'Painting', '2020-03-23 11:49:47', '2020-03-23 11:49:47'),
(356, 'category', 'title', 2, 'en', 'Flooring', '2020-03-23 11:50:13', '2020-03-23 11:50:13'),
(357, 'category', 'title', 3, 'en', 'Tile  Marble', '2020-03-23 11:51:17', '2020-03-23 11:51:17'),
(358, 'category', 'title', 4, 'en', 'Furniture', '2020-03-23 11:51:49', '2020-03-23 11:51:49'),
(359, 'category', 'title', 5, 'en', 'Lighting', '2020-03-23 11:52:24', '2020-03-23 11:52:24'),
(365, 'data_rows', 'display_name', 223, 'en', 'Id', '2020-03-23 12:43:35', '2020-03-23 12:43:35'),
(366, 'data_rows', 'display_name', 224, 'en', 'Title', '2020-03-23 12:43:35', '2020-03-23 12:43:35'),
(367, 'data_rows', 'display_name', 225, 'en', 'Content', '2020-03-23 12:43:35', '2020-03-23 12:43:35'),
(368, 'data_rows', 'display_name', 226, 'en', 'Img', '2020-03-23 12:43:35', '2020-03-23 12:43:35'),
(369, 'data_rows', 'display_name', 227, 'en', 'Created At', '2020-03-23 12:43:35', '2020-03-23 12:43:35'),
(370, 'data_types', 'display_name_singular', 48, 'en', 'Service', '2020-03-23 12:43:35', '2020-03-23 12:43:35'),
(371, 'data_types', 'display_name_plural', 48, 'en', 'Services', '2020-03-23 12:43:35', '2020-03-23 12:43:35'),
(372, 'data_rows', 'display_name', 216, 'en', 'Id', '2020-03-23 12:44:14', '2020-03-23 12:44:14'),
(373, 'data_rows', 'display_name', 217, 'en', 'Title', '2020-03-23 12:44:14', '2020-03-23 12:44:14'),
(374, 'data_rows', 'display_name', 218, 'en', 'Content', '2020-03-23 12:44:14', '2020-03-23 12:44:14'),
(375, 'data_rows', 'display_name', 219, 'en', 'Img', '2020-03-23 12:44:14', '2020-03-23 12:44:14'),
(376, 'data_rows', 'display_name', 220, 'en', 'Created At', '2020-03-23 12:44:14', '2020-03-23 12:44:14'),
(377, 'data_rows', 'display_name', 221, 'en', 'Updated At', '2020-03-23 12:44:14', '2020-03-23 12:44:14'),
(378, 'data_rows', 'display_name', 222, 'en', 'Category Id', '2020-03-23 12:44:14', '2020-03-23 12:44:14'),
(379, 'data_types', 'display_name_singular', 47, 'en', 'Project', '2020-03-23 12:44:14', '2020-03-23 12:44:14'),
(380, 'data_types', 'display_name_plural', 47, 'en', 'Projects', '2020-03-23 12:44:14', '2020-03-23 12:44:14'),
(381, 'project', 'title', 1, 'en', 'Mid Century Modern Wooden Sofa', '2020-03-23 12:50:13', '2020-03-23 12:50:13'),
(382, 'project', 'content', 1, 'en', '<p><span style=\"color: #888888; font-family: Lato, sans-serif; font-size: 15px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</span></p>', '2020-03-23 12:50:13', '2020-03-23 12:50:13'),
(383, 'project', 'title', 2, 'en', 'Bed Room', '2020-03-23 13:16:51', '2020-03-23 13:16:51'),
(384, 'project', 'content', 2, 'en', '<p><span style=\"color: #888888; font-family: Lato, sans-serif; font-size: 15px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</span></p>', '2020-03-23 13:16:51', '2020-03-23 13:16:51'),
(385, 'project', 'title', 3, 'en', 'Living Room', '2020-03-23 13:17:37', '2020-03-23 13:17:37'),
(386, 'project', 'content', 3, 'en', '<p><span style=\"color: #888888; font-family: Lato, sans-serif; font-size: 15px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</span></p>', '2020-03-23 13:17:37', '2020-03-23 13:17:37'),
(387, 'project', 'title', 4, 'en', 'Wooden Sofa', '2020-03-23 13:20:50', '2020-03-23 13:20:50'),
(388, 'project', 'content', 4, 'en', '<p><span style=\"color: #888888; font-family: Lato, sans-serif; font-size: 15px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</span></p>', '2020-03-23 13:20:50', '2020-03-23 13:20:50'),
(389, 'project', 'title', 5, 'en', 'Artificial Grass', '2020-03-23 13:21:54', '2020-03-23 13:21:54'),
(390, 'project', 'content', 5, 'en', '<p><span style=\"color: #888888; font-family: Lato, sans-serif; font-size: 15px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</span></p>', '2020-03-23 13:21:54', '2020-03-23 13:21:54'),
(391, 'project', 'title', 6, 'en', 'Interior Curtains', '2020-03-23 13:23:23', '2020-03-23 13:23:23'),
(392, 'project', 'content', 6, 'en', '<p><span style=\"color: #888888; font-family: Lato, sans-serif; font-size: 15px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</span></p>', '2020-03-23 13:23:23', '2020-03-23 13:23:23'),
(393, 'gallery', 'title', 1, 'en', 'Wooden Sofa', '2020-03-23 13:56:19', '2020-03-23 13:56:19'),
(394, 'gallery', 'title', 2, 'en', 'Wooden Sofa', '2020-03-23 13:56:59', '2020-03-23 13:56:59'),
(395, 'gallery', 'title', 3, 'en', 'Wooden Sofa', '2020-03-23 13:57:22', '2020-03-23 13:57:22'),
(396, 'gallery', 'title', 4, 'en', 'Wooden Sofa', '2020-03-23 13:57:38', '2020-03-23 13:57:38'),
(397, 'gallery', 'title', 5, 'en', 'Wooden Sofa', '2020-03-23 13:57:58', '2020-03-23 13:57:58'),
(398, 'gallery', 'title', 6, 'en', 'Wooden Sofa', '2020-03-23 13:58:22', '2020-03-23 13:58:22'),
(399, 'gallery', 'title', 7, 'en', 'Wooden Sofa', '2020-03-23 13:58:45', '2020-03-23 13:58:45'),
(400, 'gallery', 'title', 8, 'en', 'Wooden Sofa', '2020-03-23 13:59:04', '2020-03-23 13:59:04'),
(401, 'data_rows', 'display_name', 238, 'en', 'Id', '2020-03-25 08:58:01', '2020-03-25 08:58:01'),
(402, 'data_rows', 'display_name', 239, 'en', 'Title', '2020-03-25 08:58:01', '2020-03-25 08:58:01'),
(403, 'data_rows', 'display_name', 240, 'en', 'Content', '2020-03-25 08:58:01', '2020-03-25 08:58:01'),
(404, 'data_rows', 'display_name', 241, 'en', 'Img', '2020-03-25 08:58:01', '2020-03-25 08:58:01'),
(405, 'data_rows', 'display_name', 242, 'en', 'Category Id', '2020-03-25 08:58:01', '2020-03-25 08:58:01'),
(406, 'data_rows', 'display_name', 243, 'en', 'Created At', '2020-03-25 08:58:01', '2020-03-25 08:58:01'),
(407, 'data_rows', 'display_name', 244, 'en', 'Updated At', '2020-03-25 08:58:01', '2020-03-25 08:58:01'),
(408, 'data_types', 'display_name_singular', 51, 'en', 'Material', '2020-03-25 08:58:01', '2020-03-25 08:58:01'),
(409, 'data_types', 'display_name_plural', 51, 'en', 'Materials', '2020-03-25 08:58:01', '2020-03-25 08:58:01'),
(410, 'category_materials', 'title', 1, 'en', 'marble', '2020-03-25 08:59:00', '2020-03-25 08:59:00'),
(411, 'category_materials', 'title', 2, 'en', 'paint', '2020-03-25 08:59:19', '2020-03-25 08:59:19'),
(412, 'category_materials', 'title', 3, 'en', 'health kits', '2020-03-25 08:59:44', '2020-03-25 08:59:44'),
(413, 'category_materials', 'title', 4, 'en', 'wood', '2020-03-25 09:00:06', '2020-03-25 09:00:06'),
(414, 'category_materials', 'title', 5, 'en', 'light', '2020-03-25 09:00:38', '2020-03-25 09:00:38'),
(415, 'materials', 'title', 1, 'en', 'احدث انواع الرخام', '2020-03-25 09:29:35', '2020-03-25 09:29:35'),
(416, 'materials', 'content', 1, 'en', '<p>احدث انواع الرخام احدث انواع الرخام احدث انواع الرخام احدث انواع الرخام</p>\n<div class=\"text\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.8em; color: #888888; font-family: Hanimation, sans-serif;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantiums ut, totam aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vel eum iriure dolors in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum necessitatibus saepe eveniet uts et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis at vero eros et accumsan.</div>\n<p>&nbsp;</p>\n<div class=\"social-links\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: none; color: #777777; font-family: Hanimation, sans-serif; font-size: 15px;\">&nbsp;</div>', '2020-03-25 09:29:35', '2020-03-25 10:55:27'),
(417, 'news', 'title', 1, 'en', 'We Using Only High Quality Paints For Customers', '2020-03-25 09:59:09', '2020-03-25 09:59:09'),
(418, 'news', 'content', 1, 'en', '<p><span style=\"color: #9e9e9e; font-family: Lato, sans-serif; font-size: 15px;\">Pleasures and praising pains was born and will give you a completed account of the systems seds, and seds expound the actual teaching of the great explorer the master-builder Nor again is there anyones who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances of human happiness.</span></p>', '2020-03-25 09:59:09', '2020-03-25 09:59:09'),
(419, 'news', 'name', 1, 'en', 'mohamed amr', '2020-03-25 09:59:09', '2020-03-25 09:59:09'),
(420, 'news', 'title', 2, 'en', 'We Using Only High Quality Paints For Customers', '2020-03-25 10:00:05', '2020-03-25 10:00:05'),
(421, 'news', 'content', 2, 'en', '<p><span style=\"color: #9e9e9e; font-family: Lato, sans-serif; font-size: 15px;\">Pleasures and praising pains was born and will give you a completed account of the systems seds, and seds expound the actual teaching of the great explorer the master-builder Nor again is there anyones who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances of human happiness.</span></p>', '2020-03-25 10:00:05', '2020-03-25 10:00:05'),
(422, 'news', 'name', 2, 'en', 'kareem omar', '2020-03-25 10:00:28', '2020-03-25 10:00:28'),
(423, 'news', 'title', 3, 'en', 'We Using Only High Quality Paints For Customers', '2020-03-25 10:01:23', '2020-03-25 10:01:23'),
(424, 'news', 'content', 3, 'en', '<p><span style=\"color: #9e9e9e; font-family: Lato, sans-serif; font-size: 15px;\">Pleasures and praising pains was born and will give you a completed account of the systems seds, and seds expound the actual teaching of the great explorer the master-builder Nor again is there anyones who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances of human happiness.</span></p>', '2020-03-25 10:01:23', '2020-03-25 10:01:23'),
(425, 'news', 'name', 3, 'en', 'Ahmed Ali', '2020-03-25 10:01:23', '2020-03-25 10:01:23'),
(426, 'materials', 'title', 6, 'en', 'جرانيت', '2020-03-25 11:09:32', '2020-03-25 11:09:32'),
(427, 'materials', 'content', 6, 'en', '<p>&nbsp;جرانيت جرانيت جرانيت جرانيت جرانيت جرانيت</p>', '2020-03-25 11:09:32', '2020-03-25 11:09:32'),
(428, 'tv', 'title', 3, 'en', 'اخشاب', '2020-03-26 08:05:02', '2020-03-26 08:05:02'),
(429, 'offers', 'title', 1, 'en', 'أريكة والتون مفردة', '2020-03-26 08:34:38', '2020-03-26 08:34:38'),
(430, 'offers', 'content', 1, 'en', '<p>هناك العديد من الاختلافات في المقاطع ، فقد عانت الغالبية العظمى من التعديلات في شكل ما ، من خلال كلمات الفكاهة المحقونة والمفصولة التي لا تبدو قابلة للتصديق بشكل دائم عند الحصول على التمويل.</p>', '2020-03-26 08:34:38', '2020-03-26 08:34:38'),
(431, 'offers', 'description', 1, 'en', '<p>Description</p>\n<p>Sample Lorem Ipsum Text</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at ante. Mauris eleifend, quam a vulputate dictum, massa quam dapibus leo, eget vulputate orci purus ut lorem. In fringilla mi in ligula. Pellentesque aliquam quam vel dolor. Nunc adipiscing. Sed quam odio, tempus ac, aliquam molestie, varius ac, tellus. Vestibulum ut nulla aliquam risus rutrum interdum. Pellentesque lorem. Curabitur sit amet erat quis risus feugiat viverra. Pellentesque augue justo, sagittis et, lacinia at, venenatis non, arcu. Nunc nec libero. In cursus dictum risus. Etiam tristique nisl a.</p>', '2020-03-26 08:34:38', '2020-03-26 08:34:38'),
(432, 'offers', 'title', 2, 'en', 'كرسي دراسة ', '2020-03-26 08:35:21', '2020-03-26 08:35:21'),
(433, 'offers', 'content', 2, 'en', '<p>هناك العديد من الاختلافات في المقاطع ، فقد عانت الغالبية العظمى من التعديلات في شكل ما ، من خلال كلمات الفكاهة المحقونة والمفصولة التي لا تبدو قابلة للتصديق بشكل دائم عند الحصول على التمويل.</p>', '2020-03-26 08:35:22', '2020-03-26 08:35:22'),
(434, 'offers', 'description', 2, 'en', '<p>Description</p>\n<p>Sample Lorem Ipsum Text</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at ante. Mauris eleifend, quam a vulputate dictum, massa quam dapibus leo, eget vulputate orci purus ut lorem. In fringilla mi in ligula. Pellentesque aliquam quam vel dolor. Nunc adipiscing. Sed quam odio, tempus ac, aliquam molestie, varius ac, tellus. Vestibulum ut nulla aliquam risus rutrum interdum. Pellentesque lorem. Curabitur sit amet erat quis risus feugiat viverra. Pellentesque augue justo, sagittis et, lacinia at, venenatis non, arcu. Nunc nec libero. In cursus dictum risus. Etiam tristique nisl a.</p>', '2020-03-26 08:35:22', '2020-03-26 08:35:22'),
(435, 'offers', 'title', 4, 'en', 'جاردن تيبل ميتال', '2020-03-26 08:35:35', '2020-03-26 08:35:35'),
(436, 'offers', 'content', 4, 'en', '<p>هناك العديد من الاختلافات في المقاطع ، فقد عانت الغالبية العظمى من التعديلات في شكل ما ، من خلال كلمات الفكاهة المحقونة والمفصولة التي لا تبدو قابلة للتصديق بشكل دائم عند الحصول على التمويل.</p>', '2020-03-26 08:35:35', '2020-03-26 08:35:35'),
(437, 'offers', 'description', 4, 'en', '<p>Description</p>\n<p>Sample Lorem Ipsum Text</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at ante. Mauris eleifend, quam a vulputate dictum, massa quam dapibus leo, eget vulputate orci purus ut lorem. In fringilla mi in ligula. Pellentesque aliquam quam vel dolor. Nunc adipiscing. Sed quam odio, tempus ac, aliquam molestie, varius ac, tellus. Vestibulum ut nulla aliquam risus rutrum interdum. Pellentesque lorem. Curabitur sit amet erat quis risus feugiat viverra. Pellentesque augue justo, sagittis et, lacinia at, venenatis non, arcu. Nunc nec libero. In cursus dictum risus. Etiam tristique nisl a.</p>', '2020-03-26 08:35:35', '2020-03-26 08:35:35'),
(438, 'offers', 'title', 3, 'en', 'طاولة قهوة النيل', '2020-03-26 08:35:46', '2020-03-26 08:35:46'),
(439, 'offers', 'content', 3, 'en', '<p>هناك العديد من الاختلافات في المقاطع ، فقد عانت الغالبية العظمى من التعديلات في شكل ما ، من خلال كلمات الفكاهة المحقونة والمفصولة التي لا تبدو قابلة للتصديق بشكل دائم عند الحصول على التمويل.</p>', '2020-03-26 08:35:46', '2020-03-26 08:35:46'),
(440, 'offers', 'description', 3, 'en', '<p>Description</p>\n<p>Sample Lorem Ipsum Text</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at ante. Mauris eleifend, quam a vulputate dictum, massa quam dapibus leo, eget vulputate orci purus ut lorem. In fringilla mi in ligula. Pellentesque aliquam quam vel dolor. Nunc adipiscing. Sed quam odio, tempus ac, aliquam molestie, varius ac, tellus. Vestibulum ut nulla aliquam risus rutrum interdum. Pellentesque lorem. Curabitur sit amet erat quis risus feugiat viverra. Pellentesque augue justo, sagittis et, lacinia at, venenatis non, arcu. Nunc nec libero. In cursus dictum risus. Etiam tristique nisl a.</p>', '2020-03-26 08:35:46', '2020-03-26 08:35:46'),
(441, 'menu_items', 'title', 40, 'en', 'Categories', '2020-03-26 10:09:07', '2020-03-26 10:09:07'),
(442, 'data_rows', 'display_name', 213, 'en', 'Title', '2020-03-26 10:10:35', '2020-03-26 10:10:35'),
(443, 'data_rows', 'display_name', 214, 'en', 'Created At', '2020-03-26 10:10:35', '2020-03-26 10:10:35'),
(444, 'data_rows', 'display_name', 215, 'en', 'Updated At', '2020-03-26 10:10:35', '2020-03-26 10:10:35'),
(445, 'data_types', 'display_name_singular', 46, 'en', 'Category', '2020-03-26 10:10:35', '2020-03-26 10:10:35'),
(446, 'data_types', 'display_name_plural', 46, 'en', 'Categories', '2020-03-26 10:10:35', '2020-03-26 10:10:35'),
(447, 'menu_items', 'title', 41, 'en', 'Projects', '2020-03-26 10:11:24', '2020-03-26 10:11:24'),
(448, 'menu_items', 'title', 42, 'en', 'Services', '2020-03-26 10:11:36', '2020-03-26 10:11:36'),
(449, 'menu_items', 'title', 43, 'en', 'Galleries', '2020-03-26 10:11:51', '2020-03-26 10:11:51'),
(450, 'menu_items', 'title', 44, 'en', 'Category Materials', '2020-03-26 10:12:10', '2020-03-26 10:12:10'),
(451, 'menu_items', 'title', 45, 'en', 'Materials', '2020-03-26 10:12:22', '2020-03-26 10:12:22'),
(452, 'menu_items', 'title', 46, 'en', 'News', '2020-03-26 10:12:38', '2020-03-26 10:12:38'),
(453, 'menu_items', 'title', 47, 'en', 'Brilliance Tv', '2020-03-26 10:12:53', '2020-03-26 10:12:53'),
(454, 'menu_items', 'title', 48, 'en', 'Offers', '2020-03-26 10:13:21', '2020-03-26 10:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `tv`
--

CREATE TABLE `tv` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tv`
--

INSERT INTO `tv` (`id`, `title`, `url`, `img`, `created_at`, `updated_at`) VALUES
(1, 'دهانات', 'https://www.youtube.com/watch?v=OrJKD11Rmdg', 'tv\\March2020\\nZecD6pdY1ivUkewvi7q.jpg', '2020-03-26 08:02:08', '2020-03-26 08:02:08'),
(2, 'رخام', 'https://www.youtube.com/watch?v=OrJKD11Rmdg', 'tv\\March2020\\GnyKPp5Nag6vAs99BeNI.jpg', '2020-03-26 08:03:11', '2020-03-26 08:03:11'),
(3, 'اخشاب', 'https://www.youtube.com/watch?v=OrJKD11Rmdg', 'tv\\March2020\\dwENo0r3ayozAuVfgLNK.jpg', '2020-03-26 08:03:00', '2020-03-26 08:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'your@email.com', 'users/default.png', NULL, '$2y$10$lkcdaR5NyJG/p37dwqFQYOanM6xSqSLgNFgAIdSo/gFsXNc0ddGAG', 'N8bnQk4SyUNNjRxuZbiLZ0EnYEuKjJb3PeJNGJDiiDM08I4358TT54wAhrf3', '{\"locale\":\"en\"}', '2020-01-22 09:08:03', '2020-02-23 12:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_materials`
--
ALTER TABLE `category_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `tv`
--
ALTER TABLE `tv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_materials`
--
ALTER TABLE `category_materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;

--
-- AUTO_INCREMENT for table `tv`
--
ALTER TABLE `tv`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
