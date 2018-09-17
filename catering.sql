-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2018 a las 15:25:42
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catering`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` char(30) DEFAULT NULL,
  `apellido` char(30) DEFAULT NULL,
  `cedula` char(10) DEFAULT NULL,
  `direccion` char(40) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `cedula`, `direccion`, `telefono`, `email`) VALUES
(1, 'Robert', 'Vicente', '1718536509', 'Chillogallo', '5656', 'adas@gmailc.om'),
(2, 'Vicente', 'Emilio', '1102045786', 'Chillopollo', '2625072', 'g@g.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_assets`
--

CREATE TABLE `k4hct_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_assets`
--

INSERT INTO `k4hct_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 207, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 24, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 25, 26, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 27, 28, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 29, 30, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 31, 32, 1, 'com_login', 'com_login', '{}'),
(13, 1, 33, 34, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 35, 36, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 37, 38, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 39, 42, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 43, 44, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 45, 92, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 93, 96, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 97, 98, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 99, 100, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 101, 102, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 103, 104, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 105, 108, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 109, 110, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 94, 95, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 106, 107, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 111, 112, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 113, 114, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 115, 116, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 117, 118, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 119, 120, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 121, 122, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 46, 47, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 48, 49, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 50, 51, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 52, 53, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 54, 55, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 56, 57, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 58, 59, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 60, 61, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 62, 63, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 64, 65, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 66, 67, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 68, 69, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 70, 71, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 72, 73, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 74, 75, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 40, 41, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 76, 77, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 1, 123, 206, 1, 'com_cck', 'com_cck', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.delete.own\":{\"6\":1},\"core.addto.cart\":{\"7\":1},\"core.admin.form\":{\"7\":1},\"core.export\":{\"7\":1},\"core.process\":{\"7\":1}}'),
(57, 18, 78, 79, 2, 'com_modules.module.88', 'mod_cck_breadcrumbs', '{}'),
(58, 18, 80, 81, 2, 'com_modules.module.89', 'mod_cck_form', '{}'),
(59, 18, 82, 83, 2, 'com_modules.module.90', 'mod_cck_list', '{}'),
(60, 18, 84, 85, 2, 'com_modules.module.91', 'mod_cck_menu', '{}'),
(61, 18, 86, 87, 2, 'com_modules.module.92', 'mod_cck_quickadd', '{}'),
(62, 18, 88, 89, 2, 'com_modules.module.93', 'mod_cck_quickicon', '{}'),
(63, 18, 90, 91, 2, 'com_modules.module.94', 'mod_cck_search', '{}'),
(64, 8, 20, 21, 2, 'com_content.category.8', 'Users', '{\"core.create\":{\"1\":0}}'),
(65, 8, 22, 23, 2, 'com_content.category.9', 'User Groups', '{\"core.create\":{\"1\":0}}'),
(66, 56, 124, 127, 2, 'com_cck.folder.1', 'Quick Folder', '{}'),
(67, 56, 128, 205, 2, 'com_cck.folder.2', 'Top', '{}'),
(68, 67, 129, 136, 3, 'com_cck.folder.3', 'Core', '{}'),
(69, 68, 130, 131, 4, 'com_cck.folder.4', 'Table', '{}'),
(70, 67, 137, 198, 3, 'com_cck.folder.5', 'JOOMLA', '{}'),
(71, 70, 138, 159, 4, 'com_cck.folder.10', 'Article', '{}'),
(72, 71, 139, 140, 5, 'com_cck.folder.22', 'Base', '{}'),
(73, 71, 141, 142, 5, 'com_cck.folder.16', 'Basic', '{}'),
(74, 71, 143, 144, 5, 'com_cck.folder.28', 'Images & Links', '{}'),
(75, 71, 145, 146, 5, 'com_cck.folder.17', 'Metadata', '{}'),
(76, 71, 147, 148, 5, 'com_cck.folder.15', 'Publishing', '{}'),
(77, 70, 160, 177, 4, 'com_cck.folder.11', 'Category', '{}'),
(78, 77, 161, 162, 5, 'com_cck.folder.23', 'Base', '{}'),
(79, 77, 163, 164, 5, 'com_cck.folder.19', 'Basic', '{}'),
(80, 77, 165, 166, 5, 'com_cck.folder.20', 'Metadata', '{}'),
(81, 77, 167, 168, 5, 'com_cck.folder.18', 'Publishing', '{}'),
(82, 70, 178, 191, 4, 'com_cck.folder.13', 'User', '{}'),
(83, 82, 179, 180, 5, 'com_cck.folder.24', 'Base', '{}'),
(84, 82, 181, 182, 5, 'com_cck.folder.21', 'Basic', '{}'),
(85, 82, 183, 184, 5, 'com_cck.folder.29', 'Profile', '{}'),
(86, 70, 192, 197, 4, 'com_cck.folder.14', 'User Group', '{}'),
(87, 86, 193, 194, 5, 'com_cck.folder.26', 'Base', '{}'),
(88, 67, 199, 204, 3, 'com_cck.folder.6', 'SEBLOD', '{}'),
(89, 88, 200, 201, 4, 'com_cck.folder.7', 'Apps', '{}'),
(90, 88, 202, 203, 4, 'com_cck.folder.8', 'Demo', '{}'),
(91, 71, 149, 150, 5, 'com_cck.form.1', 'Article', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(92, 77, 169, 170, 5, 'com_cck.form.5', 'Category', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(93, 82, 185, 186, 5, 'com_cck.form.8', 'User', '{\"core.create\":{\"1\":1,\"2\":0},\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0},\"core.edit\":{\"4\":0},\"core.edit.own\":{\"2\":1}}'),
(94, 86, 195, 196, 5, 'com_cck.form.11', 'User Group', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(95, 71, 151, 152, 5, 'com_cck.form.20', 'Article Grp Publishing', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(96, 71, 153, 154, 5, 'com_cck.form.21', 'Article Grp Basic', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(97, 71, 155, 156, 5, 'com_cck.form.22', 'Article Grp Metadata', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(98, 77, 171, 172, 5, 'com_cck.form.25', 'Category Grp Publishing', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(99, 77, 173, 174, 5, 'com_cck.form.26', 'Category Grp Basic', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(100, 77, 175, 176, 5, 'com_cck.form.27', 'Category Grp Metadata', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(101, 82, 187, 188, 5, 'com_cck.form.28', 'User Grp Basic', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(102, 71, 157, 158, 5, 'com_cck.form.30', 'Article Grp Images & Links', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(103, 68, 132, 133, 4, 'com_cck.form.35', 'Button Grp (Form)', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(104, 82, 189, 190, 5, 'com_cck.form.38', 'User Grp Password', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(105, 68, 134, 135, 4, 'com_cck.form.39', 'Button Grp (Form) Alternative', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}'),
(106, 66, 125, 126, 3, 'com_cck.form.501', 'Cliente List', '{\"core.create.max.parent\":{\"8\":0},\"core.create.max.parent.author\":{\"8\":0},\"core.create.max.author\":{\"8\":0}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_associations`
--

CREATE TABLE `k4hct_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_banners`
--

CREATE TABLE `k4hct_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_banner_clients`
--

CREATE TABLE `k4hct_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_banner_tracks`
--

CREATE TABLE `k4hct_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_categories`
--

CREATE TABLE `k4hct_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_categories`
--

INSERT INTO `k4hct_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 15, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 531, '2018-09-16 15:35:30', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 531, '2018-09-16 15:35:30', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 531, '2018-09-16 15:35:30', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 531, '2018-09-16 15:35:30', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 531, '2018-09-16 15:35:30', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 531, '2018-09-16 15:35:30', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 64, 1, 11, 12, 1, 'users', 'com_content', 'Users', 'users', '', '', 1, 0, '0000-00-00 00:00:00', 2, '', '', '', '', 531, '2018-09-17 01:54:58', 531, '2018-09-17 01:54:58', 0, '*', 1),
(9, 65, 1, 13, 14, 1, 'user-groups', 'com_content', 'User Groups', 'user-groups', '', '', 1, 0, '0000-00-00 00:00:00', 2, '', '', '', '', 531, '2018-09-17 01:54:58', 531, '2018-09-17 01:54:58', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core`
--

CREATE TABLE `k4hct_cck_core` (
  `id` int(10) UNSIGNED NOT NULL,
  `cck` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pk` int(10) UNSIGNED NOT NULL,
  `pkb` int(10) UNSIGNED NOT NULL,
  `storage_location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_table` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `author_session` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `download_hits` int(10) UNSIGNED NOT NULL,
  `date_time` datetime NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_core`
--

INSERT INTO `k4hct_cck_core` (`id`, `cck`, `pk`, `pkb`, `storage_location`, `storage_table`, `author_id`, `author_session`, `parent_id`, `store_id`, `download_hits`, `date_time`, `app`) VALUES
(1, 'cliente_list', 2, 0, 'free', 'cliente', 531, '', 0, 0, 0, '2018-09-17 12:54:23', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core_downloads`
--

CREATE TABLE `k4hct_cck_core_downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `x` int(11) NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core_fields`
--

CREATE TABLE `k4hct_cck_core_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(3) NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selectlabel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` int(11) NOT NULL DEFAULT '0',
  `required` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `defaultvalue` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'string-formated options',
  `options2` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-formated options',
  `minlength` int(11) NOT NULL DEFAULT '0',
  `maxlength` int(11) NOT NULL DEFAULT '255',
  `size` int(11) NOT NULL DEFAULT '32',
  `cols` int(11) NOT NULL,
  `rows` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `divider` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bool` tinyint(3) NOT NULL,
  `location` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extended` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bool2` tinyint(3) NOT NULL DEFAULT '0',
  `bool3` tinyint(3) NOT NULL DEFAULT '0',
  `bool4` tinyint(3) NOT NULL DEFAULT '0',
  `bool5` tinyint(3) NOT NULL DEFAULT '0',
  `bool6` tinyint(3) NOT NULL DEFAULT '0',
  `bool7` tinyint(3) NOT NULL DEFAULT '0',
  `bool8` tinyint(3) NOT NULL DEFAULT '1',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_cck` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_table` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_field` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_field2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_params` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storages` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_core_fields`
--

INSERT INTO `k4hct_cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_cck`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(1, 'Core Content Type', 'cck', 4, 'select_dynamic', '', 1, 'Type', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__cck_core_types\",\"name\":\"title\",\"where\":\"published=1\",\"value\":\"name\",\"orderby\":\"title\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'free', '#__cck_core', 'cck', '', '', '', 0, '0000-00-00 00:00:00'),
(2, 'Core Object', 'cck_storage_location', 4, 'select_dynamic', '', 1, 'Storage Location', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__extensions\",\"name\":\"element\",\"where\":\"folder=\\\"cck_storage_location\\\" AND enabled=1\",\"value\":\"element\",\"orderby\":\"element\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'free', '#__cck_core', 'storage_location', '', '', '', 0, '0000-00-00 00:00:00'),
(3, 'Core Table', 'cck_storage_table', 4, 'text', '', 1, '', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'free', '#__cck_core', 'storage_table', '', '', '', 0, '0000-00-00 00:00:00'),
(4, 'Core Author Id', 'cck_author_id', 4, 'text', '', 1, 'Author Id', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'free', '#__cck_core', 'author_id', '', '', '', 0, '0000-00-00 00:00:00'),
(5, 'Core Parent Id', 'cck_parent_id', 4, 'text', '', 1, 'Parent Id', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'free', '#__cck_core', 'parent_id', '', '', '', 0, '0000-00-00 00:00:00'),
(6, 'Core Date Time', 'cck_date_time', 4, 'text', '', 1, 'Date Time', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'free', '#__cck_core', 'date_time', '', '', '', 0, '0000-00-00 00:00:00'),
(7, 'Core Content Type (2)', 'cck_2', 4, 'select_dynamic', '', 1, 'Type', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__cck_core_types\",\"name\":\"title\",\"where\":\"published=1\",\"value\":\"name\",\"orderby\":\"title\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'free', '#__cck_core', 'cck', '', '', '', 0, '0000-00-00 00:00:00'),
(8, 'Core Content Type (3)', 'cck_3', 4, 'select_dynamic', '', 1, 'Type', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__cck_core_types\",\"name\":\"title\",\"where\":\"published=1\",\"value\":\"name\",\"orderby\":\"title\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'free', '#__cck_core', 'cck', '', '', '', 0, '0000-00-00 00:00:00'),
(9, 'Core Id', 'cck_id', 4, 'text', '', 1, 'ID', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'free', '#__cck_core', 'id', '', '', '', 0, '0000-00-00 00:00:00'),
(10, 'Core Label', 'core_label', 3, 'text', '', 0, 'Label', '', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'label', '', '', '', 0, '0000-00-00 00:00:00'),
(11, 'Core Size', 'core_size', 3, 'text', '', 0, 'Size', '', 3, '', '', '32', '', '', 0, 3, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'size', '', '', '', 0, '0000-00-00 00:00:00'),
(12, 'Core DefaultValue', 'core_defaultvalue', 3, 'text', '', 0, 'Default Value', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'defaultvalue', '', '', '', 0, '0000-00-00 00:00:00'),
(13, 'Core Minlength', 'core_minlength', 3, 'text', '', 0, 'Minlength', '', 3, '', '', '0', '', '', 0, 50, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'minlength', '', '', '', 0, '0000-00-00 00:00:00'),
(14, 'Core Maxlength', 'core_maxlength', 3, 'text', '', 0, 'Maxlength', ' ', 3, '', '', '255', '', '', 0, 50, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'maxlength', '', '', '', 0, '0000-00-00 00:00:00'),
(15, 'Core Sorting', 'core_sorting', 3, 'select_simple', '', 0, 'Ordering', ' ', 3, '', '', '0', 'Following Options=0||Alphabetical AZ=1||Alphabetical ZA=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'sorting', '', '', '', 0, '0000-00-00 00:00:00'),
(16, 'Core Selectlabel', 'core_selectlabel', 3, 'text', '', 0, 'Select Label', '', 3, '', '', 'Select an Option', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'selectlabel', '', '', '', 0, '0000-00-00 00:00:00'),
(17, 'Core Options', 'core_options', 3, 'field_x', '', 0, 'Options', ' ', 3, '', '', '', '', '', 1, 255, 32, 0, 2, 0, 0, '', 0, '', 'core_option', '', '', 1, 1, 1, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'string[options]', '', '', '', 0, '0000-00-00 00:00:00'),
(18, 'Core Rows', 'core_rows', 3, 'text', '', 0, 'Rows', ' ', 3, '', '', '0', '', '', 0, 50, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'rows', '', '', '', 0, '0000-00-00 00:00:00'),
(19, 'Core Columns', 'core_columns', 3, 'text', '', 0, 'Columns', ' ', 3, '', '', '25', '', '', 0, 50, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'cols', '', '', '', 0, '0000-00-00 00:00:00'),
(20, 'Core Options Format', 'core_options_format', 3, 'text', '', 0, 'Format', ' ', 3, 'required', '', 'Y-m-d', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][format]', '', '', '', 0, '0000-00-00 00:00:00'),
(21, 'Core Color', 'core_color', 3, 'colorpicker', '', 0, 'Color', ' ', 3, '', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'color', '', '', '', 0, '0000-00-00 00:00:00'),
(22, 'Core Colorchar', 'core_colorchar', 3, 'colorpicker', '', 0, 'Character Color', ' ', 3, '', '', '#ffffff', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'colorchar', '', '', '', 0, '0000-00-00 00:00:00'),
(23, 'Core Introchar', 'core_introchar', 3, 'text', '', 0, 'Character', '', 3, '', '', '', '', '', 0, 2, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'introchar', '', '', '', 0, '0000-00-00 00:00:00'),
(24, 'Core Type (Template)', 'core_type_template', 3, 'select_simple', '', 0, 'Type', ' ', 3, '', '', '0', 'Content Form=0||List=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'tabindex=\"3\"', 'dev', '', '', '', 'mode', '', '', '', 0, '0000-00-00 00:00:00'),
(25, 'Core Extended', 'core_extended', 3, 'text', '', 0, 'Field', '', 3, 'required', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'extended', '', '', '', 0, '0000-00-00 00:00:00'),
(26, 'Core Required', 'core_required', 3, 'select_simple', '', 0, 'Required', ' ', 3, '', '', '0', 'No=||Yes=required', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'required', '', '', '', 0, '0000-00-00 00:00:00'),
(27, 'Core Title (Field)', 'core_title_field', 3, 'text', '', 0, 'Title', ' ', 3, 'required', '', '', '', '', 0, 50, 28, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(29, 'Core Storage Table', 'core_storage_table', 3, 'select_dynamic', '', 0, 'Table', 'Select a Table', 3, '', '', '', 'Aka Join Tables for Search=optgroup||Placeholder Table1=aka_table1||Placeholder Table2=aka_table2||Placeholder Table3=aka_table3', '{}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 2, 0, 2, 0, 0, 0, 1, '', 'style=\"max-width:200px;\"', 'dev', '', '', '', 'storage_table', '', '', '', 0, '0000-00-00 00:00:00'),
(30, 'Core Validation Alert', 'core_validation_alert', 3, 'text', '', 0, 'Alert', '', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'alert', '', '', '', 0, '0000-00-00 00:00:00'),
(31, 'Core Validation Field', 'core_validation_field', 3, 'text', '', 0, 'Field', '', 3, 'required', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'field', '', '', '', 0, '0000-00-00 00:00:00'),
(32, 'Core Script', 'core_script', 3, 'textarea', '', 0, 'Script', ' ', 3, '', '', '', '', '', 0, 0, 32, 92, 5, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'dev', '', '', '', 'script', '', '', '', 0, '0000-00-00 00:00:00'),
(33, 'Core Storage', 'core_storage', 3, 'storage', '', 0, 'Storage', '', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'storage', '', '', '', 0, '0000-00-00 00:00:00'),
(34, 'Core Storage Field', 'core_storage_field', 3, 'text', '', 0, 'Field', ' ', 3, '', '', '', '', '', 0, 50, 26, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'storage_field', '', '', '', 0, '0000-00-00 00:00:00'),
(35, 'Core Name (Template)', 'core_name_template', 3, 'select_dynamic', '', 0, 'Name', 'Select Template', 3, 'required', '', '', '', '{\"query\":\"\",\"table\":\"#__extensions\",\"name\":\"name\",\"where\":\"type=\\\"template\\\" AND name NOT IN (\\\"atomic\\\",\\\"beez5\\\",\\\"beez_20\\\",\\\"bluestork\\\",\\\"hathor\\\")\",\"value\":\"name\",\"orderby\":\"name\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'tabindex=\"2\"', 'dev', '', '', '', 'name', '', '', '', 0, '0000-00-00 00:00:00'),
(36, 'Core Name (Field)', 'core_name_field', 3, 'text', '', 0, 'Name', ' ', 3, 'required', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex=\"2\"', 'dev', '', '', '', 'name', '', '', '', 0, '0000-00-00 00:00:00'),
(37, 'Core Title (Template)', 'core_title_template', 3, 'text', '', 0, 'Title', ' ', 3, 'required', '', '', '', '', 0, 50, 28, 0, 0, 0, 0, '', 0, '', '', '', 'if(!$(\"#title\").val()){ $(\"#title\").focus(); }', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex=\"1\"', 'dev', '', '', '', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(38, 'Core Title (Type)', 'core_title_type', 3, 'text', '', 0, 'Title', ' ', 3, 'required', '', '', '', '', 0, 50, 28, 0, 0, 0, 0, '', 0, '', '', '', '$(\"#title\").on(\"change\", function() {\r\n  if ( !$(\"#name\").val() ) {\r\n    JCck.DevHelper.transliterateName();\r\n  }\r\n}); if( !$(\"#title\").val() ) { $(\"#title\").focus(); }', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex=\"1\"', 'dev', '', '', '', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(39, 'Core Title (Search)', 'core_title_search', 3, 'text', '', 0, 'Title', ' ', 3, 'required', '', '', '', '', 0, 50, 28, 0, 0, 0, 0, '', 0, '', '', '', '$(\"#title\").on(\"change\", function() {\r\n  if ( !$(\"#name\").val() ) {\r\n    JCck.DevHelper.transliterateName();\r\n  }\r\n}); if( !$(\"#title\").val() ) { $(\"#title\").focus(); }', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex=\"1\"', 'dev', '', '', '', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(40, 'Core Description', 'core_description', 3, 'wysiwyg_editor', '', 0, 'Description', ' ', 3, '', '', '', '', '{\"editor\":\"tinymce\",\"width\":\"100%\",\"height\":\"167\",\"import\":\"\"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'description', '', '', '', 0, '0000-00-00 00:00:00'),
(42, 'Core State Filter', 'core_state_filter', 3, 'select_simple', '', 0, 'Status', ' ', 3, '', '', '', 'All Status SL=-1||On=1||Off=0', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'onchange=\"this.form.submit()\"', 'dev', '', '', '', 'filter_state', '', '', '', 0, '0000-00-00 00:00:00'),
(43, 'Core State', 'core_state', 3, 'radio', '', 0, 'clear', ' ', 3, '', '', '', 'On=1||Off=0', '{\"options\":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 'btn-group btn-group-yesno', '', 'dev', '', '', '', 'published', '', '', '', 0, '0000-00-00 00:00:00'),
(44, 'Core Attributes', 'core_attributes', 3, 'textarea', '', 0, 'Attributes', ' ', 3, '', '', '', '', '', 0, 512, 32, 92, 1, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'dev', '', '', '', 'attributes', '', '', '', 0, '0000-00-00 00:00:00'),
(47, 'Core Type Filter (Template)', 'core_type_filter_template', 3, 'select_simple', '', 0, 'Type', ' ', 3, '', '', '', 'All Types SL=||Content Form=0||List=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'onchange=\"this.form.submit()\"', 'dev', '', '', '', 'filter_mode', '', '', '', 0, '0000-00-00 00:00:00'),
(51, 'Core Title (Folder)', 'core_title_folder', 3, 'text', '', 0, 'Title', ' ', 3, 'required', '', '', '', '', 0, 50, 28, 0, 0, 0, 0, '', 0, '', '', '', 'if(!$(\"#title\").val()){ $(\"#title\").focus(); }', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex=\"1\"', 'dev', '', '', '', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(52, 'Core Template Admin', 'core_template_admin', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__template_styles\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style=\"max-width:190px;\"', 'dev', '', '', '', 'template_admin', '', '', '', 0, '0000-00-00 00:00:00'),
(53, 'Core Template Site', 'core_template_site', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__template_styles\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style=\"max-width:190px;\"', 'dev', '', '', '', 'template_site', '', '', '', 0, '0000-00-00 00:00:00'),
(54, 'Core Template Content', 'core_template_content', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__template_styles\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style=\"max-width:190px;\"', 'dev', '', '', '', 'template_content', '', '', '', 0, '0000-00-00 00:00:00'),
(55, 'Core Template Params', 'core_template_params', 3, 'text', '', 0, 'Params', '', 3, '', '', '', '', '', 0, 0, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'template_params', '', '', '', 0, '0000-00-00 00:00:00'),
(56, 'Core Template', 'core_template', 3, 'select_dynamic', '', 0, 'Template', ' ', 3, '', '', '', '', '{\"query\":\"SELECT DISTINCT a.template AS value, CONCAT(b.title,\\\" - \\\",b.name) AS text FROM #__template_styles AS a LEFT JOIN #__cck_core_templates AS b ON b.name = a.template WHERE b.id AND b.published !=-44 AND b.mode=0 ORDER BY b.title\",\"table\":\"\",\"name\":\"\",\"where\":\"\",\"value\":\"\",\"orderby\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 1, '', 'onchange=\"JCck.DevHelper.doSubmit();\" style=\"max-width:190px;\"', 'dev', '', '', '', 'template', '', '', '', 0, '0000-00-00 00:00:00'),
(58, 'Core Content Type', 'core_content_type', 3, 'select_dynamic', '', 0, 'Content Type', 'Select', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__cck_core_types\",\"name\":\"title\",\"where\":\"published = 1 AND location != \\\"admin\\\" AND location != \\\"none\\\"\",\"value\":\"name\",\"orderby\":\"title\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', 'var e=\"type\"; var elem=\"#jform_trigger_\"+e;\r\nvar file=\"file=administrator/components/com_cck/helpers/scripts/list_live.php\";\r\n$(elem).change(function() {\r\nif (!$(\"#jform_title\").val()) {\r\n$(\"#jform_title\").val($(elem+\" option[value=\\\'\"+$(elem).val()+\"\\\']\").text());\r\n}\r\nvar type = \"&e_name=\"+$(elem).val();\r\nvar live = \"&live=\"+$(\"#jform_params_live\").val();\r\nvar variat = \"&variat=\"+$(\"#jform_params_variation\").val();\r\n $.ajax({\r\n  cache: false, data: file+\"&referrer=component.com_cck\"+type+live+variat+\"&elem=\"+e, type: \"POST\",\r\n  url: \"index.php?option=com_cck&task=ajax&format=raw&\"+Joomla.getOptions(\"csrf.token\")+\"=1\",\r\n  success: function(response){ $(\"#list_live_show\").html(response); } });\r\n});\r\nvar type = \"&e_name=\"+$(elem).val();\r\nvar live = \"&live=\"+$(\"#jform_params_live\").val();\r\nvar variat = \"&variat=\"+$(\"#jform_params_variation\").val();\r\n $.ajax({\r\n  cache: false, data: file+\"&referrer=component.com_cck\"+type+live+variat+\"&elem=\"+e, type: \"POST\",\r\n  url: \"index.php?option=com_cck&task=ajax&format=raw&\"+Joomla.getOptions(\"csrf.token\")+\"=1\",\r\n  success: function(response){ $(\"#list_live_show\").html(response); } });', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'type', '', '', '', 0, '0000-00-00 00:00:00'),
(59, 'Core Search Type', 'core_search_type', 3, 'select_dynamic', '', 0, 'Search Type', 'Select', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__cck_core_searchs\",\"name\":\"title\",\"where\":\"published=1\",\"value\":\"name\",\"orderby\":\"title\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', 'var e=\"search\"; var elem=\"#jform_trigger_\"+e;\r\nvar file=\"file=administrator/components/com_cck/helpers/scripts/list_live.php\";\r\n$(elem).change(function() {\r\nif (!$(\"#jform_title\").val()) {\r\n$(\"#jform_title\").val($(elem+\" option[value=\\\'\"+$(elem).val()+\"\\\']\").text());\r\n}\r\nvar type = \"&e_name=\"+$(elem).val();\r\nvar live = \"&live=\"+$(\"#jform_params_live\").val();\r\nvar variat = \"&variat=\"+$(\"#jform_params_variation\").val();\r\n $.ajax({\r\n  cache: false, data: file+\"&referrer=component.com_cck\"+type+live+variat+\"&elem=\"+e, type: \"POST\",\r\n  url: \"index.php?option=com_cck&task=ajax&format=raw&\"+Joomla.getOptions(\"csrf.token\")+\"=1\",\r\n  success: function(response){ $(\"#list_live_show\").html(response); } });\r\n});\r\nvar type = \"&e_name=\"+$(elem).val();\r\nvar live = \"&live=\"+$(\"#jform_params_live\").val();\r\nvar variat = \"&variat=\"+$(\"#jform_params_variation\").val();\r\n $.ajax({\r\n  cache: false, data: file+\"&referrer=component.com_cck\"+type+live+variat+\"&elem=\"+e, type: \"POST\",\r\n  url: \"index.php?option=com_cck&task=ajax&format=raw&\"+Joomla.getOptions(\"csrf.token\")+\"=1\",\r\n  success: function(response){ $(\"#list_live_show\").html(response); } });', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'search', '', '', '', 0, '0000-00-00 00:00:00'),
(60, 'Core Options Math', 'core_options_math', 3, 'select_simple', '', 0, 'Math', ' ', 3, '', '', '0', 'Sum=0||Product=1||Difference=2||Quotient=3', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][math]', '', '', '', 0, '0000-00-00 00:00:00'),
(61, 'Core Options Last', 'core_options_last', 3, 'text', '', 0, 'Last Optional', ' ', 3, '', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][last]', '', '', '', 0, '0000-00-00 00:00:00'),
(62, 'Core Options End', 'core_options_end', 3, 'text', '', 0, 'End', ' ', 3, 'required', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][end]', '', '', '', 0, '0000-00-00 00:00:00'),
(63, 'Core Options Step', 'core_options_step', 3, 'text', '', 0, 'Step', ' ', 3, 'required', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][step]', '', '', '', 0, '0000-00-00 00:00:00'),
(64, 'Core Options Start', 'core_options_start', 3, 'text', '', 0, 'Start', ' ', 3, 'required', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][start]', '', '', '', 0, '0000-00-00 00:00:00'),
(65, 'Core Options First', 'core_options_first', 3, 'text', '', 0, 'First Optional', ' ', 3, '', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][first]', '', '', '', 0, '0000-00-00 00:00:00'),
(69, 'Core Elements', 'core_elements', 3, 'checkbox', '', 0, 'Elements', ' ', 3, '', '', 'type,field,search,template', 'Content Type=type||Field=field||Search Type=search||Template=template', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'elements', '', '', '', 0, '0000-00-00 00:00:00'),
(70, 'Core Depth Filter', 'core_depth_filter', 3, 'select_numeric', '', 0, 'Depth', ' ', 3, '', '', '', '', '{\"math\":\"0\",\"first\":\"#\",\"start\":\"1\",\"step\":\"1\",\"end\":\"10\",\"last\":\"\"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'onchange=\"this.form.submit()\"', 'dev', '', '', '', 'filter_depth', '', '', '', 0, '0000-00-00 00:00:00'),
(71, 'Core Bool', 'core_bool', 3, 'select_simple', '', 0, 'clear', ' ', 3, '', '', '0', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'bool', '', '', '', 0, '0000-00-00 00:00:00'),
(72, 'Core Bool2', 'core_bool2', 3, 'select_simple', '', 0, 'clear', ' ', 3, '', '', '0', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'bool2', '', '', '', 0, '0000-00-00 00:00:00'),
(73, 'Core Bool3', 'core_bool3', 3, 'select_simple', '', 0, 'clear', ' ', 3, '', '', '0', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'bool3', '', '', '', 0, '0000-00-00 00:00:00'),
(74, 'Core Bool4', 'core_bool4', 3, 'select_simple', '', 0, 'clear', ' ', 3, '', '', '0', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'bool4', '', '', '', 0, '0000-00-00 00:00:00'),
(75, 'Core Storage Alter', 'core_storage_alter', 3, 'checkbox', '', 0, 'Alter', ' ', 3, '', '', '0', 'Alter Table=1', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'storage_alter', '', '', '', 0, '0000-00-00 00:00:00'),
(76, 'Core Storage Alter Type', 'core_storage_alter_type', 3, 'select_simple', '', 0, 'Alter', 'Select', 3, '', '', 'VARCHAR(255)', 'Boolean=BOOLEAN||Date=DATE||Datetime=DATETIME||Decimal 10 2=DECIMAL(10,2)||Decimal 10 3=DECIMAL(10,3)||Decimal 10 4=DECIMAL(10,4)||Decimal 10 8=DECIMAL(10,8)||Decimal 11 8=DECIMAL(11,8)||Int 11=INT(11)||Varchar 7=VARCHAR(7)||Varchar 50=VARCHAR(50)||Varchar 255=VARCHAR(255)||Varchar 512=VARCHAR(512)||Varchar 1024=VARCHAR(1024)||Varchar 2048=VARCHAR(2048)||Text=TEXT||Timestamp=TIMESTAMP||Tinyint 3=TINYINT(3)', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'storage_alter_type', '', '', '', 0, '0000-00-00 00:00:00'),
(77, 'Core Options Value', 'core_options_value', 3, 'text', '', 0, 'Options Value', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][value]', '', '', '', 0, '0000-00-00 00:00:00'),
(78, 'Core Options Name', 'core_options_name', 3, 'text', '', 0, 'Options Name', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][name]', '', '', '', 0, '0000-00-00 00:00:00'),
(79, 'Core Options Where', 'core_options_where', 3, 'text', '', 0, 'Where', ' ', 3, '', '', '', '', '', 0, 0, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][where]', '', '', '', 0, '0000-00-00 00:00:00'),
(80, 'Core Options Table', 'core_options_table', 3, 'text', '', 0, 'Table', ' ', 3, '', '', '#__content', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][table]', '', '', '', 0, '0000-00-00 00:00:00'),
(81, 'Core Query', 'core_query', 3, 'select_simple', '', 0, 'Query', ' ', 3, '', '', '0', 'Construction=0||Free=1||Function=optgroup||Query getTableList=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'bool2', '', '', '', 0, '0000-00-00 00:00:00'),
(82, 'Core Options Query', 'core_options_query', 3, 'textarea', '', 0, 'SQL Query', ' ', 3, '', '', '', '', '', 0, 0, 50, 92, 8, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'dev', '', '', '', 'json[options2][query]', '', '', '', 0, '0000-00-00 00:00:00'),
(83, 'Core Orientation', 'core_orientation', 3, 'select_simple', '', 0, 'Orientation', ' ', 3, '', '', '0', 'Horizontal=0||Vertical=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'bool', '', '', '', 0, '0000-00-00 00:00:00'),
(84, 'Core Option', 'core_option', 3, 'text', '', 0, 'Option', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 2, 0, 0, '', 0, '', 'core_options', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'options', '', '', '', 0, '0000-00-00 00:00:00'),
(85, 'Core Separator', 'core_separator', 3, 'text', '', 0, 'Separator', ' ', 3, '', '', ',', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'divider', '', '', '', 0, '0000-00-00 00:00:00'),
(86, 'Core Field Orientation', 'core_field_orientation', 3, 'select_simple', '', 0, 'Orientation', ' ', 3, '', '', 'vertical', 'Horizontal=horizontal||Vertical=vertical', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'field_orientation', '', '', '', 0, '0000-00-00 00:00:00'),
(87, 'Core Field Label Width', 'core_field_label_width', 3, 'text', '', 0, 'Width', ' ', 3, '', '', '145px', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'field_label_width', '', '', '', 0, '0000-00-00 00:00:00'),
(88, 'Core Background Color', 'core_background_color', 3, 'colorpicker', '', 0, 'Background Color', ' ', 3, '', '', 'none', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'background_color', '', '', '', 0, '0000-00-00 00:00:00'),
(89, 'Core Border Color', 'core_border_color', 3, 'colorpicker', '', 0, 'Border Color', ' ', 3, '', '', '#dedede', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'border_color', '', '', '', 0, '0000-00-00 00:00:00'),
(90, 'Core Border Size', 'core_border_size', 3, 'select_numeric', '', 0, 'Border Size', ' ', 3, '', '', '0', '', '{\"math\":\"0\",\"first\":\"0\",\"start\":\"1\",\"step\":\"1\",\"end\":\"10\",\"last\":\"\"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'border_size', '', '', '', 0, '0000-00-00 00:00:00'),
(91, 'Core Border Radius', 'core_border_radius', 3, 'select_numeric', '', 0, 'Border Radius', ' ', 3, '', '', '5', '', '{\"math\":\"0\",\"first\":\"0\",\"start\":\"1\",\"step\":\"1\",\"end\":\"10\",\"last\":\"\"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'border_radius', '', '', '', 0, '0000-00-00 00:00:00'),
(92, 'Core Legend Align', 'core_legend_align', 3, 'select_simple', '', 0, 'Align', ' ', 3, '', '', 'left', 'Center=center||Left=left||Right=right', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', 'joomla_article', '', 'legend_align', '', '', '', 0, '0000-00-00 00:00:00'),
(93, 'Core Legend Typo', 'core_legend_typo', 3, 'select_simple', '', 0, 'Typo', 'Default', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', 'joomla_article', '#__content', 'legend_typo', '', '', '', 0, '0000-00-00 00:00:00'),
(94, 'Core Position Left', 'core_position_left', 3, 'text', '', 0, 'Left Column Width', ' ', 3, '', '', '0', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'position_left', '', '', '', 0, '0000-00-00 00:00:00'),
(95, 'Core Position Right', 'core_position_right', 3, 'text', '', 0, 'Right Column Width', ' ', 3, '', '', '400', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'position_right', '', '', '', 0, '0000-00-00 00:00:00'),
(96, 'Core Position Top', 'core_position_top', 3, 'select_simple', '', 0, 'Top Line', ' ', 3, '', '', '1', 'No=0||Height=optgroup||Auto=1||Deepest=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'position_top', '', '', '', 0, '0000-00-00 00:00:00'),
(97, 'Core Position Bottom', 'core_position_bottom', 3, 'select_simple', '', 0, 'Bottom Line', ' ', 3, '', '', '1', 'No=0||Height=optgroup||Auto=1||Deepest=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'position_bottom', '', '', '', 0, '0000-00-00 00:00:00'),
(98, 'Core Position Header', 'core_position_header', 3, 'select_simple', '', 0, 'Header Line', ' ', 3, '', '', '0', 'No=0||Height=optgroup||Auto=1||Deepest=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'position_header', '', '', '', 0, '0000-00-00 00:00:00'),
(99, 'Core Position Footer', 'core_position_footer', 3, 'select_simple', '', 0, 'Footer Line', ' ', 3, '', '', '0', 'No=0||Height=optgroup||Auto=1||Deepest=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'position_footer', '', '', '', 0, '0000-00-00 00:00:00'),
(100, 'Core Position Left Variation', 'core_position_left_variation', 3, 'text', '', 0, 'Left Column Variation', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'position_left_variation', '', '', '', 0, '0000-00-00 00:00:00'),
(101, 'Core Position Right Variation', 'core_position_right_variation', 3, 'text', '', 0, 'Right Column Variation', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'position_right_variation', '', '', '', 0, '0000-00-00 00:00:00'),
(102, 'Core Position Top Variation', 'core_position_top_variation', 3, 'text', '', 0, 'Top Line Variation', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'position_top_variation', '', '', '', 0, '0000-00-00 00:00:00'),
(103, 'Core Position Bottom Variation', 'core_position_bottom_variation', 3, 'text', '', 0, 'Bottom Line Variation', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'position_bottom_variation', '', '', '', 0, '0000-00-00 00:00:00'),
(104, 'Core Position Header Variation', 'core_position_header_variation', 3, 'text', '', 0, 'Header Line Variation', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'position_header_variation', '', '', '', 0, '0000-00-00 00:00:00'),
(105, 'Core Positon Footer Variation', 'core_position_footer_variation', 3, 'text', '', 0, 'Position Footer Variation', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'position_footer_variation', '', '', '', 0, '0000-00-00 00:00:00'),
(108, 'Core Options Editor', 'core_options_editor', 3, 'jform_editors', '', 0, 'Editor', ' ', 3, '', '', '', '', '{\"table\":\"#__extensions\",\"name\":\"element\",\"where\":\"folder=\\\"editors\\\" AND enabled=1\",\"value\":\"element\"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][editor]', '', '', '', 0, '0000-00-00 00:00:00'),
(109, 'Core Place', 'core_place', 3, 'select_simple', '', 0, 'Mode', ' ', 3, '', '', '1', 'Default=1||Modal Box=0', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'bool', '', '', '', 0, '0000-00-00 00:00:00'),
(110, 'Core Options Path', 'core_options_path', 3, 'text', '', 0, 'Folder', ' ', 3, '', '', 'images/', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][path]', '', '', '', 0, '0000-00-00 00:00:00'),
(111, 'Core Options Path (Content)', 'core_options_path_content', 3, 'select_simple', '', 0, 'Path per Content', ' ', 3, '', '', '1', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][path_content]', '', '', '', 0, '0000-00-00 00:00:00'),
(112, 'Core Options Path (User)', 'core_options_path_user', 3, 'select_simple', '', 0, 'Path per User', ' ', 3, '', '', '0', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][path_user]', '', '', '', 0, '0000-00-00 00:00:00'),
(113, 'Core Options Preview Image', 'core_options_preview_image', 3, 'select_simple', '', 0, 'Show Preview', ' ', 3, '', '', '0', 'Hide=-1||Show=optgroup||Filename Title=0||Icon=1||Image=2||Thumb1=3||Thumb2=4||Thumb3=5||Thumb4=6||Thumb5=7||Thumb6=8||Thumb7=9||Thumb8=10||Thumb9=11||Thumb10=12', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][preview]', '', '', '', 0, '0000-00-00 00:00:00'),
(114, 'Core Options Legal Extensions Image', 'core_options_legal_extensions_image', 3, 'text', '', 0, 'Legal Extensions', ' ', 3, '', '', 'gif,jpg,png,GIF,JPG,PNG', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][legal_extensions]', '', '', '', 0, '0000-00-00 00:00:00'),
(115, 'Core Options Max Size', 'core_options_max_size', 3, 'text', '', 0, 'Maximum Size', ' ', 3, '', '', '5', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][max_size]', '', '', '', 0, '0000-00-00 00:00:00'),
(116, 'Core Options Delete Box', 'core_options_delete_box', 3, 'select_simple', '', 0, 'Delete Box', ' ', 3, '', '', '1', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][delete_box]', '', '', '', 0, '0000-00-00 00:00:00'),
(117, 'Core Options Thumb Process', 'core_options_thumb_process', 3, 'select_simple', '', 0, 'Thumb', ' ', 3, '', '', 'maxfit', 'No Process=0||Resized=optgroup||Crop=crop||Shrink=shrink||Stretch=stretch||Resized Dynamic=optgroup||Crop Dynamic=crop_dynamic||Max Fit=maxfit||Shrink=shrink_dynamic||Stretch=stretch_dynamic', '{\"options\":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'max-width-190', '', 'dev', '', '', '', 'json[options2][thumb1_process]', '', '', '', 0, '0000-00-00 00:00:00'),
(118, 'Core Options Thumb Width', 'core_options_thumb_width', 3, 'text', '', 0, 'Width', ' ', 3, '', '', '150', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'style=\"text-align: center\"', 'dev', '', '', '', 'json[options2][thumb1_width]', '', '', '', 0, '0000-00-00 00:00:00'),
(119, 'Core Options Thumb Height', 'core_options_thumb_height', 3, 'text', '', 0, 'Height', ' ', 3, '', '', '150', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'style=\"text-align: center\"', 'dev', '', '', '', 'json[options2][thumb1_height]', '', '', '', 0, '0000-00-00 00:00:00'),
(120, 'Core Options Image Process', 'core_options_image_process', 3, 'select_simple', '', 0, 'Image', 'Original', 3, '', '', '', 'Resized=optgroup||Crop=crop||Shrink=shrink||Stretch=stretch||Resized Dynamic=optgroup||Crop Dynamic=crop_dynamic||Max Fit=maxfit||Shrink=shrink_dynamic||Stretch=stretch_dynamic', '{\"options\":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'max-width-190', '', 'dev', '', '', '', 'json[options2][image_process]', '', '', '', 0, '0000-00-00 00:00:00'),
(121, 'Core Options Image Width', 'core_options_image_width', 3, 'text', '', 0, 'Width', ' ', 3, '', '', '200', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'style=\"text-align: center\"', 'dev', '', '', '', 'json[options2][image_width]', '', '', '', 0, '0000-00-00 00:00:00'),
(122, 'Core Options Image Height', 'core_options_image_height', 3, 'text', '', 0, 'Height', ' ', 3, '', '', '200', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'style=\"text-align: center\"', 'dev', '', '', '', 'json[options2][image_height]', '', '', '', 0, '0000-00-00 00:00:00'),
(123, 'Core Options Send', 'core_options_send', 3, 'select_simple', '', 0, 'Send Email', ' ', 3, '', '', '0', 'Never=0||Always=3||Workflow=optgroup||Add=1||Edit=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][send]', '', '', '', 0, '0000-00-00 00:00:00'),
(124, 'Core Options From', 'core_options_from', 3, 'select_simple', '', 0, 'From', 'Use Global', 3, '', '', '', 'Email=1||Field=3', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][from]', '', '', '', 0, '0000-00-00 00:00:00'),
(125, 'Core Options To Admin', 'core_options_to_admin', 3, 'select_dynamic', '', 0, 'To Admin', ' ', 3, '', '', '', '', '{\"query\":\"SELECT us.username AS text, us.id AS value FROM #__users us, #__user_usergroup_map gr WHERE gr.group_id = 8 AND gr.user_id = us.id\",\"table\":\"#__content\",\"name\":\"\",\"where\":\"\",\"value\":\"\",\"orderby\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 255, 32, 0, 6, 0, 0, ',', 0, '', '', '', '', 1, 1, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][to_admin]', '', '', '', 0, '0000-00-00 00:00:00'),
(126, 'Core Options To', 'core_options_to', 3, 'textarea', '', 0, 'To', ' ', 3, '', '', '', '', '', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'dev', '', '', '', 'json[options2][to]', '', '', '', 0, '0000-00-00 00:00:00'),
(127, 'Core Options To Field', 'core_options_to_field', 3, 'textarea', '', 0, 'To Field', ' ', 3, '', '', '', '', '', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'dev', '', '', '', 'json[options2][to_field]', '', '', '', 0, '0000-00-00 00:00:00'),
(128, 'Core Options Message', 'core_options_message', 3, 'wysiwyg_editor', '', 0, 'Message', ' ', 3, '', '', '', '', '{\"editor\":\"tinymce\",\"width\":\"100%\",\"height\":\"167\",\"import\":\"\"}', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][message]', '', '', '', 0, '0000-00-00 00:00:00'),
(129, 'Core Options Subject', 'core_options_subject', 3, 'text', '', 0, 'Subject', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][subject]', '', '', '', 0, '0000-00-00 00:00:00'),
(130, 'Core Options From Param', 'core_options_from_param', 3, 'text', '', 0, 'From Param', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][from_param]', '', '', '', 0, '0000-00-00 00:00:00'),
(131, 'Core Options Legal Extensions', 'core_options_legal_extensions', 3, 'text', '', 0, 'Legal Extensions', ' ', 3, '', '', 'doc,pdf,ppt,xls,zip,DOC,PDF,PPT,XLS,ZIP', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][legal_extensions]', '', '', '', 0, '0000-00-00 00:00:00'),
(132, 'Core Options Preview', 'core_options_preview', 3, 'select_simple', '', 0, 'Show Preview', ' ', 3, '', '', '0', 'Hide=-1||Show=optgroup||Filename Title=0||Icon=1||Show No Link=optgroup||Filename Title=8', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][preview]', '', '', '', 0, '0000-00-00 00:00:00'),
(133, 'Core Options Import', 'core_options_import', 3, 'select_simple', '', 0, 'Importer', 'None', 3, '', '', '', 'Wysiwyg Auto=1||Wysiwyg Specific=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][import]', '', '', '', 0, '0000-00-00 00:00:00'),
(134, 'Core Options Categories', 'core_options_categories', 3, 'jform_category', '', 0, 'Categories', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 6, 0, 0, '', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'string[options]', '', '', '', 0, '0000-00-00 00:00:00'),
(135, 'Core Options Size Unit', 'core_options_size_unit', 3, 'select_simple', '', 0, 'Unit', ' ', 3, '', '', '2', 'B=0||KB=1||MB=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][size_unit]', '', '', '', 0, '0000-00-00 00:00:00'),
(136, 'Core Template Intro', 'core_template_intro', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__template_styles\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style=\"max-width:190px;\"', 'dev', '', '', '', 'template_intro', '', '', '', 0, '0000-00-00 00:00:00'),
(137, 'Core Template Search', 'core_template_search', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__template_styles\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style=\"max-width:190px;\"', 'dev', '', '', '', 'template_search', '', '', '', 0, '0000-00-00 00:00:00'),
(138, 'Core Template List', 'core_template_list', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__template_styles\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style=\"max-width:190px;\"', 'dev', '', '', '', 'template_list', '', '', '', 0, '0000-00-00 00:00:00'),
(139, 'Core Border Style', 'core_border_style', 3, 'select_simple', '', 0, 'Border Style', 'Select a Style', 3, '', '', 'solid', 'dashed||dotted||double||groove||hidden||inherit||inset||none||outset||ridge||solid', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'border_style', '', '', '', 0, '0000-00-00 00:00:00'),
(140, 'Core Field Label Align', 'core_field_label_align', 3, 'select_simple', '', 0, 'Align', ' ', 3, '', '', 'left', 'Left=left||Right=right', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'field_label_align', '', '', '', 0, '0000-00-00 00:00:00'),
(141, 'Core Field Label Padding Left', 'core_field_label_padding_left', 3, 'select_numeric', '', 0, 'Field Label Padding Left', ' ', 3, '', '', '0', '', '{\"math\":\"0\",\"first\":\"\",\"start\":\"0\",\"step\":\"1\",\"end\":\"100\",\"last\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'field_label_padding_left', '', '', '', 0, '0000-00-00 00:00:00'),
(142, 'Core Field Label Padding Right', 'core_field_label_padding_right', 3, 'select_numeric', '', 0, 'Field Label Padding Right', ' ', 3, '', '', '0', '', '{\"math\":\"0\",\"first\":\"\",\"start\":\"0\",\"step\":\"1\",\"end\":\"100\",\"last\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'field_label_padding_right', '', '', '', 0, '0000-00-00 00:00:00'),
(143, 'Core Social', 'core_social', 3, 'checkbox', '', 0, 'Core Social', ' ', 3, '', '', '', 'Complete=all,google,technorati,yahoo,delicious,stumbleupon,digg,facebook,reddit,myspace,live,twitter,recommand||All=all||Google=google||Technorati=technorati||Yahoo=yahoo||Delicious=delicious||Stumbleupon=stumbleupon||Digg=digg||Facebook=facebook||Reddit=reddit||Myspace=myspace||Live=live||Twitter=twitter||Recommand=recommand', '', 0, 50, 32, 0, 3, 0, 0, ',', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'string[options]', '', '', '', 0, '0000-00-00 00:00:00'),
(144, 'Core Options Video Width', 'core_options_video_width', 3, 'text', '', 0, 'Width', ' ', 3, '', '', '320', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][video_width]', '', '', '', 0, '0000-00-00 00:00:00'),
(145, 'Core Options Video Height', 'core_options_video_height', 3, 'text', '', 0, 'Height', ' ', 3, '', '', '240', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][video_height]', '', '', '', 0, '0000-00-00 00:00:00'),
(146, 'Core Options Video Preview', 'core_options_video_preview', 3, 'select_simple', '', 0, 'Show Preview', ' ', 3, '', '', '0', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][video_preview]', '', '', '', 0, '0000-00-00 00:00:00'),
(147, 'Core Options Width', 'core_options_width', 3, 'text', '', 0, 'Width', ' ', 3, '', '', '320', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][width]', '', '', '', 0, '0000-00-00 00:00:00'),
(148, 'Core Options Height', 'core_options_height', 3, 'text', '', 0, 'Height', ' ', 3, '', '', '240', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][height]', '', '', '', 0, '0000-00-00 00:00:00'),
(149, 'Core Message', 'core_message', 3, 'textarea', '', 0, 'Message', ' ', 3, '', '', '', '', '', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'dev', '', '', '', 'options[message]', '', '', '', 0, '0000-00-00 00:00:00'),
(150, 'Core Field Width', 'core_field_width', 3, 'text', '', 0, 'Width', ' ', 3, '', '', '100%', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'field_width', '', '', '', 0, '0000-00-00 00:00:00'),
(151, 'Core Field Label Position', 'core_field_label_position', 3, 'select_simple', '', 0, 'Label Position', ' ', 3, '', '', 'left', 'Above=top||Left=left', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'field_label_position', '', '', '', 0, '0000-00-00 00:00:00'),
(152, 'Core Display', 'core_display', 3, 'select_simple', '', 0, 'Display', ' ', 3, '', '', '0', 'Intro=2||Link=0||Title=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'bool', '', '', '', 0, '0000-00-00 00:00:00'),
(153, 'Core Field Label', 'core_field_label', 3, 'select_simple', '', 0, 'Show Label', ' ', 3, '', '', '1', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'field_label', '', '', '', 0, '0000-00-00 00:00:00'),
(154, 'Core Field Description', 'core_field_description', 3, 'select_simple', '', 0, 'Show Description', ' ', 3, '', '', '0', 'Hide=0||Show=optgroup||At the right of FormValue=4||Below Field=1||Below FormValue=2||Below Label=3||Popover=5', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'field_description', '', '', '', 0, '0000-00-00 00:00:00'),
(155, 'Core Position Margin', 'core_position_margin', 3, 'select_numeric', '', 0, 'Position Margin', ' ', 3, '', '', '10', '', '{\"math\":\"0\",\"start\":\"0\",\"first\":\"\",\"step\":\"1\",\"last\":\"\",\"end\":\"20\",\"force_digits\":\"0\"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'position_margin', '', '', '', 0, '0000-00-00 00:00:00');
INSERT INTO `k4hct_cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_cck`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(156, 'Core Field Label Color', 'core_field_label_color', 3, 'colorpicker', '', 0, 'Color', ' ', 3, '', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'field_label_color', '', '', '', 0, '0000-00-00 00:00:00'),
(157, 'Core Typo', 'core_typo', 3, 'select_simple', '', 0, 'Use Typo', ' ', 3, '', '', '1', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[typo]', '', '', '', 0, '0000-00-00 00:00:00'),
(158, 'Core Legend Fieldname', 'core_legend_fieldname', 3, 'text', '', 0, 'Field Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'legend_fieldname', '', '', '', 0, '0000-00-00 00:00:00'),
(159, 'Core Field Label2', 'core_field_label2', 3, 'select_simple', '', 0, 'Show Label', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'field_label2', '', '', '', 0, '0000-00-00 00:00:00'),
(160, 'Core Options Class', 'core_options_class', 3, 'text', '', 0, 'Default Class', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][class]', '', '', '', 0, '0000-00-00 00:00:00'),
(161, 'Core Options Target', 'core_options_target', 3, 'select_simple', '', 0, 'Target', ' ', 3, '', '', '_blank', 'Target Blank=_blank||Target Self=_self||Target Parent=_parent||Target Top=_top', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][target]', '', '', '', 0, '0000-00-00 00:00:00'),
(162, 'Core Featured', 'core_featured', 3, 'radio', '', 0, 'Featured', ' ', 3, '', '', '0', 'No=0||Yes Featured=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'featured', '', '', '', 0, '0000-00-00 00:00:00'),
(163, 'Core Title', 'core_title', 3, 'text', '', 0, 'Override Title', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'options[title]', '', '', '', 0, '0000-00-00 00:00:00'),
(164, 'Core Options Theme (Calendar)', 'core_options_theme_calendar', 3, 'select_simple', '', 0, 'Theme', ' ', 3, '', '', 'steel', 'Gold=gold||Steel=steel||Win2k', '', 0, 50, 32, 0, 10, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][theme]', '', '', '', 0, '0000-00-00 00:00:00'),
(165, 'Core Options Time Pos', 'core_options_time_pos', 3, 'select_simple', '', 0, 'Position', ' ', 3, '', '', 'right', 'Left=left||Right=right', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][time_pos]', '', '', '', 0, '0000-00-00 00:00:00'),
(166, 'Core Options Dates', 'core_options_dates', 3, 'select_simple', '', 0, 'Date Range', ' ', 3, '', '', '0', 'All Dates=0||Past=1||Past Today=2||Today Future=3||Future=4', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][dates]', '', '', '', 0, '0000-00-00 00:00:00'),
(167, 'Core Options Week Numbers', 'core_options_week_numbers', 3, 'select_simple', '', 0, 'Show Week Numbers', ' ', 3, '', '', '0', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][week_numbers]', '', '', '', 0, '0000-00-00 00:00:00'),
(168, 'Core Options Time', 'core_options_time', 3, 'select_simple', '', 0, 'Time', ' ', 3, '', '', '12', 'No=0||12=12||24=24', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][time]', '', '', '', 0, '0000-00-00 00:00:00'),
(169, 'Core Position Padding', 'core_position_padding', 3, 'text', '', 0, 'Padding', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'position_padding', '', '', '', 0, '0000-00-00 00:00:00'),
(170, 'Core Video Markup', 'core_video_markup', 3, 'select_simple', '', 0, 'Markup', ' ', 3, '', '', '0', 'Iframe=0||Embed=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'bool2', '', '', '', 0, '0000-00-00 00:00:00'),
(171, 'Core Dev Text', 'core_dev_text', 3, 'text', '', 0, 'clear', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'text', '', '', '', 0, '0000-00-00 00:00:00'),
(172, 'Core Pagination', 'core_pagination', 3, 'select_simple', '', 0, 'Pagination', 'Use Global', 3, '', '', '', 'All Items=0||Standard=optgroup||1||2||3||4||5||6||8||9||10||12||15||20||24||25||30||48||50||100||Advanced=optgroup||200||300||400||500||600||700||800||900||1000||2000||3000||4000||5000||endgroup||Use Native=-1', '{\"options\":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[pagination]', '', '', '', 0, '0000-00-00 00:00:00'),
(173, 'Core Limit', 'core_limit', 3, 'text', '', 0, 'Limit', ' ', 3, '', '', '0', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'options[limit]', '', '', '', 0, '0000-00-00 00:00:00'),
(174, 'Core Debug', 'core_debug', 3, 'select_simple', '', 0, 'Debug', 'Use Global', 3, '', '', '', 'No=0||Yes=optgroup||Yes for Everyone=1||Yes for Super Admin=2||Config No Search=optgroup||Yes for Everyone=-1||Yes for Super Admin=-2', '{\"options\":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[debug]', '', '', '', 0, '0000-00-00 00:00:00'),
(175, 'Core Cache', 'core_cache', 3, 'select_simple', '', 0, 'Cache', ' ', 3, '', '', '0', 'OFF=0||ON=optgroup||Global=1||Self=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[cache]', '', '', '', 0, '0000-00-00 00:00:00'),
(176, 'Core Message Style', 'core_message_style', 3, 'select_simple', '', 0, 'Message Style', ' ', 3, '', '', 'message', 'None=0||Page=-1||Joomla=optgroup||Error=error||Message=message||Notice=notice', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[message_style]', '', '', '', 0, '0000-00-00 00:00:00'),
(177, 'Core SEF', 'core_sef', 3, 'select_simple', '', 0, 'SEF Urls', 'Use Global', 3, '', '', '', 'Joomla=optgroup||Append Segment=10||Use Native=0||SEBLOD=optgroup||SEF Mode Alias=23||SEF Mode Id=22||SEF Mode Id Alias=2||SEBLOD Advanced=optgroup||SEF Mode Author Alias=53||SEF Mode Author Id=52||SEF Mode Author Id Alias=5||SEF Mode Parent Alias=43||SEF Mode Parent Id=42||SEF Mode Parent Id Alias=4||SEF Mode Parents Alias=83||SEF Mode Parents Id=82||SEF Mode Parents Id Alias=8||SEF Mode Type Alias=33||SEF Mode Type Id=32||SEF Mode Type Id Alias=3||SEBLOD Deprecated=optgroup||SEF Mode Alias Safe=24||Optimized=1', '{\"options\":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[sef]', '', '', '', 0, '0000-00-00 00:00:00'),
(178, 'Core Template Item', 'core_template_item', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__template_styles\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style=\"max-width:190px;\"', 'dev', '', '', '', 'template_item', '', '', '', 0, '0000-00-00 00:00:00'),
(179, 'Core Action', 'core_action', 3, 'select_simple', '', 0, 'Action', ' ', 3, '', '', '0', 'None=0||Include File=file||Render Template=template', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[action]', '', '', '', 0, '0000-00-00 00:00:00'),
(180, 'Core Redirection Url (No Access)', 'core_redirection_url_no_access', 3, 'text', '', 0, 'Redirection Url', ' ', 3, '', '', 'index.php?option=com_users&view=login', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'options[redirection_url_no_access]', '', '', '', 0, '0000-00-00 00:00:00'),
(181, 'Core Action No Access', 'core_action_no_access', 3, 'select_simple', '', 0, 'Action', ' ', 3, '', '', 'redirection', 'None=0||Redirection=redirection', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[action_no_access]', '', '', '', 0, '0000-00-00 00:00:00'),
(182, 'Core Options Format Date', 'core_options_format_date', 3, 'select_simple', '', 0, 'Format', ' ', 3, '', '', '0', 'DATETIME=0||TIMESTAMP=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][format_date]', '', '', '', 0, '0000-00-00 00:00:00'),
(183, 'Core Options Force Thumb Creation', 'core_options_force_thumb_creation', 3, 'select_simple', '', 0, 'Force Thumb Creation', ' ', 3, '', '', '', 'On Upload=0||If Not Exist=1||Always=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][force_thumb_creation]', '', '', '', 0, '0000-00-00 00:00:00'),
(184, 'Core Options Orderby', 'core_options_orderby', 3, 'text', '', 0, 'Order By', ' ', 3, '', '', '', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][orderby]', '', '', '', 0, '0000-00-00 00:00:00'),
(185, 'Core Options Language Codes', 'core_options_language_codes', 3, 'text', '', 0, 'Language Codes', ' ', 3, '', '', 'EN,GB,US,FR', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][language_codes]', '', '', '', 0, '0000-00-00 00:00:00'),
(186, 'Core Options Language Default', 'core_options_language_default', 3, 'text', '', 0, 'Default Language', ' ', 3, '', '', 'EN', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][language_default]', '', '', '', 0, '0000-00-00 00:00:00'),
(187, 'Core Options Language Detection', 'core_options_language_detection', 3, 'select_simple', '', 0, 'Language Detection', ' ', 3, '', '', 'joomla', 'Joomla=joomla||GeoIP=geoip', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][language_detection]', '', '', '', 0, '0000-00-00 00:00:00'),
(188, 'Core Redirection', 'core_redirection', 3, 'select_simple', '', 0, 'Redirection', ' ', 3, '', '', 'current', 'Url=optgroup||Current=current||Current Full=current_full||Custom=url||View=optgroup||Content=content||Form=form||Form Edition=form_edition', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[redirection]', '', '', '', 0, '0000-00-00 00:00:00'),
(189, 'Core Redirection Url', 'core_redirection_url', 3, 'text', '', 0, 'Redirection Url', ' ', 3, 'required', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'options[redirection_url]', '', '', '', 0, '0000-00-00 00:00:00'),
(190, 'Core Dev Select', 'core_dev_select', 3, 'select_simple', '', 0, 'clear', 'Select an Option', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'select', '', '', '', 0, '0000-00-00 00:00:00'),
(191, 'Core Field Focus Border Color', 'core_field_focus_border_color', 3, 'colorpicker', '', 0, 'Focus Border Color', ' ', 3, '', '', '#888888', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'field_focus_border_color', '', '', '', 0, '0000-00-00 00:00:00'),
(192, 'Core Storage Alter Table', 'core_storage_alter_table', 3, 'select_simple', '', 0, 'Alter', ' ', 3, '', '', '0', 'Alter Original Type=0||Alter Original Field=2||Base Table=optgroup||Alter Original Table=1', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '#__assets', 'storage_alter_table', '', '', '', 0, '0000-00-00 00:00:00'),
(193, 'Core Options MultiValue Mode', 'core_options_multivalue_mode', 3, 'select_simple', '', 0, 'MultiValue Mode', ' ', 3, '', '', '', 'No=0||Yes Multivalue Mode=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][multivalue_mode]', '', '', '', 0, '0000-00-00 00:00:00'),
(194, 'Core Validation Scroll', 'core_validation_scroll', 3, 'select_simple', '', 0, 'Scroll', 'Use Global', 3, '', '', '', 'Yes=1||No=0', '{\"options\":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[validation_scroll]', '', '', '', 0, '0000-00-00 00:00:00'),
(195, 'Core Validation Position', 'core_validation_position', 3, 'select_simple', '', 0, 'Position', 'Use Global', 3, '', '', '', 'Position bottomLeft=bottomLeft||Position bottomRight=bottomRight||Position inline=inline||Position centerRight=centerRight||Position topLeft=topLeft||Position topRight=topRight', '{\"options\":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[validation_position]', '', '', '', 0, '0000-00-00 00:00:00'),
(196, 'Core Validation Style', 'core_validation_style', 3, 'select_simple', '', 0, 'Style', ' ', 3, '', '', 'balloon', 'Balloon=balloon||Text=text', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[validation_style]', '', '', '', 0, '0000-00-00 00:00:00'),
(197, 'Core Validation Color', 'core_validation_color', 3, 'colorpicker', '', 0, 'Color', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'options[validation_color]', '', '', '', 0, '0000-00-00 00:00:00'),
(198, 'Core Validation Background Color', 'core_validation_background_color', 3, 'colorpicker', '', 0, 'Background Color', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'options[validation_background_color]', '', '', '', 0, '0000-00-00 00:00:00'),
(199, 'Core Dev Textarea', 'core_dev_textarea', 3, 'textarea', '', 0, 'clear', ' ', 3, '', '', '', '', '', 0, 512, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'dev', '', '', '', 'textarea', '', '', '', 0, '0000-00-00 00:00:00'),
(200, 'Core Options Html', 'core_options_html', 3, 'textarea', '', 0, 'Html', ' ', 3, '', '', '', '', '', 0, 0, 32, 92, 24, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'dev', '', '', '', 'json[options2][html]', '', '', '', 0, '0000-00-00 00:00:00'),
(201, 'Core Title (Site)', 'core_title_site', 3, 'text', '', 0, 'Title', ' ', 3, 'required', '', '', '', '', 0, 255, 28, 0, 0, 0, 0, '', 0, '', '', '', 'if(!$(\"#title\").val()){ $(\"#title\").focus(); }', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex=\"1\"', 'dev', '', '', '', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(202, 'Core Name (Site)', 'core_name_site', 3, 'text', '', 0, 'Url', ' ', 3, 'required', '', '', '', '', 0, 100, 28, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex=\"2\"', 'dev', '', '', '', 'name', '', '', '', 0, '0000-00-00 00:00:00'),
(203, 'Core Guest', 'core_guest', 3, 'select_dynamic', '', 0, 'Guest', 'Select a User', 3, '', '', '', '', '{\"query\":\"SELECT \",\"table\":\"#__users\",\"name\":\"name\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"name\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'guest', '', '', '', 0, '0000-00-00 00:00:00'),
(204, 'Core Viewlevels', 'core_viewlevels', 3, 'select_dynamic', '', 0, 'Viewing Access Levels', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__viewlevels\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"title\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 1, '', '', 'dev', '', 'joomla_article', '', 'viewlevels', '', '', '', 0, '0000-00-00 00:00:00'),
(205, 'Core Groups', 'core_groups', 3, 'select_dynamic', '', 0, 'User Groups', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__usergroups\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"lft\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'groups', '', '', '', 0, '0000-00-00 00:00:00'),
(206, 'Core Site Name', 'core_site_name', 3, 'text', '', 0, 'Site Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[configuration][sitename]', '', '', '', 0, '0000-00-00 00:00:00'),
(207, 'Core Site Offline', 'core_site_offline', 3, 'radio', '', 0, 'Offline', ' ', 3, '', '', '0', 'No=0||Yes=1', '{\"options\":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'btn-group', '', 'dev', '', '', '', 'json[configuration][offline]', '', '', '', 0, '0000-00-00 00:00:00'),
(208, 'Core Site Metadesc', 'core_site_metadesc', 3, 'textarea', '', 0, 'Meta Description', ' ', 3, '', '', '', '', '', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'dev', '', '', '', 'json[configuration][metadesc]', '', '', '', 0, '0000-00-00 00:00:00'),
(209, 'Core Site Metakeys', 'core_site_metakeys', 3, 'textarea', '', 0, 'Meta Keywords', ' ', 3, '', '', '', '', '', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'dev', '', '', '', 'json[configuration][metakeys]', '', '', '', 0, '0000-00-00 00:00:00'),
(210, 'Core Site Pagetitles', 'core_site_pagetitles', 3, 'select_simple', '', 0, 'Include Site Name', ' ', 3, '', '', '', 'In addition to the overall setup=optgroup||No=0||After Page Titles=2||Before Page Titles=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[configuration][sitename_pagetitles]', '', '', '', 0, '0000-00-00 00:00:00'),
(211, 'Core Site Live Value', 'core_site_live_value', 3, 'text', '', 0, 'Live Value', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'live_value', '', '', '', 0, '0000-00-00 00:00:00'),
(212, 'Core Site Live Values', 'core_site_live_values', 3, 'field_x', '', 0, 'Live Values', ' ', 3, '', '', '', '', '', 1, 10, 32, 0, 1, 0, 0, '', 0, '', 'core_site_live_value', '', '', 1, 1, 1, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'live_values', '', '', '', 0, '0000-00-00 00:00:00'),
(213, 'Core Guest Only (Viewlevel)', 'core_guest_only_viewlevel', 3, 'select_dynamic', '', 0, 'Guest Only Viewing Access Level', 'Select a Viewing Access Level', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__viewlevels\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"title\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'guest_only_viewlevel', '', '', '', 0, '0000-00-00 00:00:00'),
(214, 'Core Site Template_style', 'core_site_template_style', 3, 'select_dynamic', '', 0, 'Template Style', 'Use Default', 3, '', '', '', '', '{\"query\":\"SELECT a.title AS text, a.id AS value FROM #__template_styles AS a LEFT OUTER JOIN #__cck_core_templates AS b ON b.name = a.template WHERE a.client_id = 0 AND b.name IS NULL ORDER by a.title\",\"table\":\"#__content\",\"name\":\"title\",\"where\":\"\",\"value\":\"\",\"orderby\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[configuration][template_style]', '', '', '', 0, '0000-00-00 00:00:00'),
(215, 'Core Site Language', 'core_site_language', 3, 'select_dynamic', '', 0, 'Language', 'Use Default', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__languages\",\"name\":\"title\",\"where\":\"\",\"value\":\"lang_code\",\"orderby\":\"title\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[configuration][language]', '', '', '', 0, '0000-00-00 00:00:00'),
(216, 'Core Form', 'core_form', 3, 'select_dynamic', '', 0, 'Content Type Form', 'Select', 3, 'required', '', '', '', '{\"query\":\"\",\"table\":\"#__cck_core_types\",\"name\":\"title\",\"where\":\"published=1\",\"value\":\"name\",\"orderby\":\"title\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style=\"max-width:200px;\"', 'dev', '', '', '', 'form', '', '', '', 0, '0000-00-00 00:00:00'),
(217, 'Core List', 'core_list', 3, 'select_dynamic', '', 0, 'Search Type List', 'Select', 3, 'required', '', '', '', '{\"query\":\"\",\"table\":\"#__cck_core_searchs\",\"name\":\"title\",\"where\":\"published=1\",\"value\":\"name\",\"orderby\":\"title\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style=\"max-width:200px;\"', 'dev', '', '', '', 'list', '', '', '', 0, '0000-00-00 00:00:00'),
(218, 'Core Menuitem', 'core_menuitem', 3, 'jform_menuitem', '', 0, 'Menu Item', 'Select', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 'max-width-200', '', 'dev', '', '', '', 'itemid', '', '', '', 0, '0000-00-00 00:00:00'),
(219, 'Core Site Homepage', 'core_site_homepage', 3, 'jform_menuitem', '', 0, 'Homepage', 'Use Default', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[configuration][homepage]', '', '', '', 0, '0000-00-00 00:00:00'),
(220, 'Core Guest Only (Group)', 'core_guest_only_group', 3, 'select_dynamic', '', 0, 'Guest Only Group', 'Select a Group', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__usergroups\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"lft\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'guest_only_group', '', '', '', 0, '0000-00-00 00:00:00'),
(221, 'Core App Elements', 'core_app_elements', 3, 'checkbox', '', 0, 'Elements', ' ', 3, '', '', 'types,fields,searchs,templates,subfolders', 'Content Types=types||Fields=fields||Search Types=searchs||Templates=templates||Subfolders=subfolders', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'app_elements', '', '', '', 0, '0000-00-00 00:00:00'),
(222, 'Core App Dependencies (Categories)', 'core_app_dependencies', 3, 'radio', '', 0, 'Dependencies Categories', ' ', 3, '', '', '1', 'No=0||Auto=1', '{\"options\":[]}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 1, 'btn-group btn-group-yesno', '', 'dev', '', '', '', 'app_dependencies_categories', '', '', '', 0, '0000-00-00 00:00:00'),
(223, 'Core Options Limit', 'core_options_limit', 3, 'text', '', 0, 'Limit', ' ', 3, '', '', '', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][limit]', '', '', '', 0, '0000-00-00 00:00:00'),
(224, 'Core Options Orderby (Direction)', 'core_options_orderby_direction', 3, 'select_simple', '', 0, 'Direction', ' ', 3, '', '', 'ASC', 'Ascending=ASC||Descending=DESC', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][orderby_direction]', '', '', '', 0, '0000-00-00 00:00:00'),
(225, 'Core DefaultValue (Textarea)', 'core_defaultvalue_textarea', 3, 'textarea', '', 0, 'Default Value', ' ', 3, '', '', '', '', '', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'dev', '', '', '', 'defaultvalue', '', '', '', 0, '0000-00-00 00:00:00'),
(226, 'Core Prepare Content', 'core_prepare_content', 3, 'select_simple', '', 0, 'Prepare Content', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '{\"options\":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[prepare_content]', '', '', '', 0, '0000-00-00 00:00:00'),
(227, 'Core Field Label Padding', 'core_field_label_padding', 3, 'text', '', 0, 'Padding', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'field_label_padding', '', '', '', 0, '0000-00-00 00:00:00'),
(228, 'Core Dev Bool', 'core_dev_bool', 3, 'select_simple', '', 0, 'clear', ' ', 3, '', '', '1', 'Yes=1||No=0', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'bool', '', '', '', 0, '0000-00-00 00:00:00'),
(229, 'Core Class Pagination', 'core_class_pagination', 3, 'text', '', 0, 'Class', ' ', 3, '', '', 'pagination', '', '', 0, 255, 12, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'class_pagination', '', '', '', 0, '0000-00-00 00:00:00'),
(230, 'Core Tmpl', 'core_tmpl', 3, 'select_simple', '', 0, 'Tmpl', 'None', 3, '', '', '', 'Auto=-1||Component=component||Raw=raw', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'tmpl', '', '', '', 0, '0000-00-00 00:00:00'),
(231, 'Core Position Sidebody', 'core_position_sidebody', 3, 'select_simple', '', 0, '', ' ', 3, '', '', '0', 'Left=1||Right=0', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'position_sidebody', '', '', '', 0, '0000-00-00 00:00:00'),
(233, 'Core Dev Select Numeric', 'core_dev_select_numeric', 3, 'select_numeric', '', 0, 'clear', ' ', 3, '', '', '1', '', '{\"math\":\"0\",\"start\":\"1\",\"first\":\"\",\"step\":\"1\",\"last\":\"\",\"end\":\"5\",\"force_digits\":\"0\"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'select_numeric', '', '', '', 0, '0000-00-00 00:00:00'),
(234, 'Core Class Total', 'core_class_total', 3, 'text', '', 0, 'Class', ' ', 3, '', '', 'total', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'class_total', '', '', '', 0, '0000-00-00 00:00:00'),
(235, 'Core Class Table', 'core_class_table', 3, 'text', '', 0, 'Class', ' ', 3, '', '', 'table table-striped', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'class_table', '', '', '', 0, '0000-00-00 00:00:00'),
(236, 'Core Class Table Tr Odd', 'core_class_table_tr_odd', 3, 'text', '', 0, 'Class', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'class_table_tr_odd', '', '', '', 0, '0000-00-00 00:00:00'),
(237, 'Core Class Table Tr Even', 'core_class_table_tr_even', 3, 'text', '', 0, 'Class', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'class_table_tr_even', '', '', '', 0, '0000-00-00 00:00:00'),
(238, 'Core Class Title', 'core_class_title', 3, 'text', '', 0, 'Class', ' ', 3, '', '', '', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'class_title', '', '', '', 0, '0000-00-00 00:00:00'),
(239, 'Core Tag Title', 'core_tag_title', 3, 'select_simple', '', 0, 'Tag', ' ', 3, '', '', 'h1', 'H1=h1||H2=h2||H3=h3', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'tag_title', '', '', '', 0, '0000-00-00 00:00:00'),
(240, 'Core Class Clear', 'core_class_clear', 3, 'select_simple', '', 0, 'Clear', ' ', 3, '', '', '0', 'Yes=cck-clrfix||No=0', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'class_clear', '', '', '', 0, '0000-00-00 00:00:00'),
(241, 'Core Class Float', 'core_class_float', 3, 'select_simple', '', 0, 'Float', ' ', 3, '', '', '0', 'Left=cck-fl||None=0', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'class_float', '', '', '', 0, '0000-00-00 00:00:00'),
(242, 'Core Show Hide', 'core_show_hide', 3, 'select_simple', '', 0, 'Show', ' ', 3, '', '', '', 'Hide=0||Show=1', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'show', '', '', '', 0, '0000-00-00 00:00:00'),
(243, 'Core Label Total', 'core_label_total', 3, 'text', '', 0, 'Label', ' ', 3, '', '', 'Results', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'label_total', '', '', '', 0, '0000-00-00 00:00:00'),
(244, 'Core Show Pagination', 'core_show_pagination', 3, 'select_simple', '', 0, 'Show Pagination', ' ', 3, '', '', '', 'Hide=-2||Standard=optgroup||Above=-1||Below=0||Both=1||Infinite=optgroup||Click=2||Load=8', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'show_pagination', '', '', '', 0, '0000-00-00 00:00:00'),
(245, 'Core Ordering', 'core_ordering', 3, 'select_simple', '', 0, 'Ordering', ' ', 3, '', '', '', 'None=none||Basic=optgroup||Config Option Alphabetical=alpha||Config Option Most Popular=popular||Config Option Most Recent First=newest||Config Option Oldest First=oldest||Config Option Ordering=ordering||Advanced=optgroup||Ordering View Inherited=', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'ordering', '', '', '', 0, '0000-00-00 00:00:00'),
(246, 'Core Ordering2', 'core_ordering2', 3, 'select_simple', '', 0, 'Ordering', ' ', 3, '', '', '', 'Basic=optgroup||Config Option Alphabetical=alpha||Config Option Most Popular=popular||Config Option Most Recent First=newest||Config Option Oldest First=oldest||Config Option Ordering=ordering||Advanced=optgroup||Custom=-1', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'ordering', '', '', '', 0, '0000-00-00 00:00:00'),
(247, 'Core Order By', 'core_order_by', 3, 'text', '', 0, 'Order By', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'order_by', '', '', '', 0, '0000-00-00 00:00:00'),
(248, 'Core Item Display', 'core_item_display', 3, 'select_simple', '', 0, 'Rendering', ' ', 3, '', '', 'renderItem', 'Item Field Html=renderItemField_Html||Item Field Typo=renderItemField_Typo||Item Field Value=renderItemField_Value||Item=renderItem', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'display', '', '', '', 0, '0000-00-00 00:00:00'),
(249, 'Core Auto Custom', 'core_auto_custom', 3, 'select_simple', '', 0, 'Select', ' ', 3, '', '', '', 'Auto=0||Custom=1', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'auto_custom', '', '', '', 0, '0000-00-00 00:00:00'),
(250, 'Core Auto Deepest', 'core_auto_deepest', 3, 'select_simple', '', 0, 'Select', ' ', 3, '', '', '', 'Auto=0||Deepest=1', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'auto_deepest', '', '', '', 0, '0000-00-00 00:00:00'),
(251, 'Core Across Down', 'core_across_down', 3, 'select_simple', '', 0, 'Select', ' ', 3, '', '', '', 'Across=0||Down=1', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'across_down', '', '', '', 0, '0000-00-00 00:00:00'),
(252, 'Core Numeric 6', 'core_numeric_6', 3, 'select_numeric', '', 0, 'Select', ' ', 3, '', '', '', '', '{\"math\":\"0\",\"start\":\"1\",\"first\":\"\",\"step\":\"1\",\"last\":\"\",\"end\":\"6\",\"force_digits\":\"0\"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'numeric', '', '', '', 0, '0000-00-00 00:00:00'),
(253, 'Core CSS Definitions', 'core_css_definitions', 3, 'select_simple', '', 0, 'clear', 'None', 3, '', '', '', 'All=all||Custom=custom', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'css_definitions', '', '', '', 0, '0000-00-00 00:00:00'),
(254, 'Core CSS Definitions Custom', 'core_css_definitions_custom', 3, 'checkbox', '', 0, 'clear', ' ', 3, '', '', '', 'Base=base||CSS Spacing=spacing||CSS Writing=writing', '', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'css_definitions_custom', '', '', '', 0, '0000-00-00 00:00:00'),
(255, 'Core Options Format File', 'core_options_format_file', 3, 'select_simple', '', 0, 'Storage Format', ' ', 3, '', '', '0', 'Filename=1||Full Path=0', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][storage_format]', '', '', '', 0, '0000-00-00 00:00:00'),
(256, 'Core Auto Redirection', 'core_auto_redirection', 3, 'select_simple', '', 0, 'Redirection', ' ', 3, '', '', '', 'No=0||Redirection=optgroup||Content=1||Form=2', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'auto_redirect', '', '', '', 0, '0000-00-00 00:00:00'),
(257, 'Core Indexing', 'core_indexing', 3, 'select_simple', '', 0, 'Smart Search', ' ', 3, '', '', 'none', 'None=none||Smart Search Indexing=optgroup||Content=content||Intro=intro', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'indexed', '', '', '', 0, '0000-00-00 00:00:00'),
(258, 'Core Version Type Filter', 'core_version_e_type_filter', 3, 'select_simple', '', 0, 'Type', ' ', 3, '', '', 'type', 'Content Types=type||Search Types=search', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', ' onchange=\"this.form.submit();\"', 'dev', '', '', '', 'filter_e_type', '', '', '', 0, '0000-00-00 00:00:00'),
(259, 'Core Version Location Filter', 'core_version_location_filter', 3, 'select_simple', '', 0, 'Location', ' ', 3, '', '', '', 'Title=e_title||Name=e_name||IDS=e_id', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'filter_location', '', '', '', 0, '0000-00-00 00:00:00'),
(260, 'Core Note', 'core_note', 3, 'text', '', 0, 'Note', ' ', 3, '', '', '', '', '', 0, 255, 69, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'note', '', '', '', 0, '0000-00-00 00:00:00'),
(261, 'Core Options Display', 'core_options_display', 3, 'select_simple', '', 0, 'Show Options', ' ', 3, '', '', '0', 'Hide=-1||Show=optgroup||Following Options=0||Alphabetical AZ=1||Alphabetical ZA=2', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'sorting', '', '', '', 0, '0000-00-00 00:00:00'),
(262, 'Core Show Hide', 'core_show_hide2', 3, 'select_simple', '', 0, 'Show', ' ', 3, '', '', '', 'Hide=0||Show=optgroup||Above=1||Below=2', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'show', '', '', '', 0, '0000-00-00 00:00:00'),
(263, 'Core Languages', 'core_languages', 3, 'select_dynamic', '', 0, 'Languages', 'Select', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__languages\",\"name\":\"title\",\"where\":\"published=1\",\"value\":\"lang_code\",\"orderby\":\"title\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'languages', '', '', '', 0, '0000-00-00 00:00:00'),
(264, 'Core Variable Type', 'core_variable_type', 3, 'select_simple', '', 0, 'Type', ' ', 3, '', '', 'string', 'Alphanumeric=alnum||Array=array||Float=float||Int=int||Integers=integers||String=string||Word=word', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'type', '', '', '', 0, '0000-00-00 00:00:00'),
(265, 'Core Computation Presets', 'core_computation_presets', 3, 'select_simple', '', 0, 'Presets', 'Select', 3, 'required', '', '', 'Computation Presets 01=a + b||Computation Presets 02=a - b||Computation Presets 03=a * b||Computation Presets 04=a / b||Computation Presets 05=a - (b / c)||Computation Presets 06=a - (a * b) / 100||Computation Presets 07=(a + b).pow(2)||Computation Presets 08=a.sqrt() + b', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'presets', '', '', '', 0, '0000-00-00 00:00:00'),
(266, 'Core Computation Format', 'core_computation_format', 3, 'select_simple', '', 0, 'Format', 'Auto', 3, '', '', '', 'Ceil=ceil||Floor=floor||Round=round||ToFixed=toFixed', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'format', '', '', '', 0, '0000-00-00 00:00:00'),
(267, 'Core Computation Precision', 'core_computation_precision', 3, 'text', '', 0, 'Precision', ' ', 3, '', '', '', '', '', 0, 1, 3, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'style=\"text-align:center;\"', 'dev', '', '', '', 'precision', '', '', '', 0, '0000-00-00 00:00:00'),
(268, 'Core Computation Event', 'core_computation_event', 3, 'select_simple', '', 0, 'Trigger Event', ' ', 3, '', '', '0', '_=||Event Change=change||Event Keyup=keyup||None=none', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'event', '', '', '', 0, '0000-00-00 00:00:00'),
(269, 'Core Conditional Event', 'core_conditional_event', 3, 'select_simple', '', 0, 'Event', ' ', 3, '', '', 'change', 'Change=change||Keyup=keyup', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'event', '', '', '', 0, '0000-00-00 00:00:00'),
(270, 'Core Computation Recalc', 'core_computation_recalc', 3, 'select_simple', '', 0, 'Rule', ' ', 3, '', '', 'global', 'Global=global||Self=0', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'recalc', '', '', '', 0, '0000-00-00 00:00:00'),
(271, 'Core JGrid Type', 'core_jgrid_type', 3, 'select_simple', '', 0, 'Type', 'Select', 3, 'required', '', '', 'Joomla=optgroup||Activation=activation||Block=block||Checkbox=selection||Checkbox Label For=selection_label||Dropdown Menu=dropdown||Featured=featured||Increment=increment||Reordering=sort||Reordering Grip=sort_grip||Status=state||SEBLOD=optgroup||Form=form||Hidden=form_hidden||Form Disabled=form_disabled', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'type', '', '', '', 0, '0000-00-00 00:00:00'),
(272, 'Core Rules (Type)', 'core_rules_type', 3, 'jform_rules', '', 0, 'Permissions', ' ', 3, '', '', '', '', '{\"extension\":\"com_cck\",\"section\":\"form\"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'jform[rules]', '', '', '', 0, '0000-00-00 00:00:00'),
(273, 'Core Rules (Folder)', 'core_rules_folder', 3, 'jform_rules', '', 0, 'Permissions', ' ', 3, '', '', '', '', '{\"extension\":\"com_cck\",\"section\":\"folder\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'jform[rules]', '', '', '', 0, '0000-00-00 00:00:00'),
(276, 'Core Location', 'core_location', 3, 'select_simple', '', 0, 'Content Creation', ' ', 3, '', '', '', 'Allowed=||Allowed Hidden=hidden||Not Allowed=none||location=optgroup||Administrator Only=admin||Site Only=site', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'location', '', '', '', 0, '0000-00-00 00:00:00'),
(277, 'Core Cache2', 'core_cache2', 3, 'select_simple', '', 0, 'Cache', ' ', 3, '', '', '0', 'OFF=0||ON=optgroup||Global=1||Self=2', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[cache2]', '', '', '', 0, '0000-00-00 00:00:00'),
(278, 'Core Stages', 'core_stages', 3, 'select_numeric', '', 0, 'Stages', ' ', 3, '', '', '1', '', '{\"math\":\"0\",\"start\":\"1\",\"first\":\"\",\"step\":\"1\",\"last\":\"\",\"end\":\"6\",\"force_digits\":\"0\"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'options[stages]', '', '', '', 0, '0000-00-00 00:00:00'),
(279, 'Core Uri', 'core_uri', 3, 'select_simple', '', 0, 'Uri', ' ', 3, '', '', 'current', 'Custom=custom||Path=path||Presets=optgroup||Base=base||Current=current||Root=root', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'uri', '', '', '', 0, '0000-00-00 00:00:00'),
(280, 'Core Uri Parts', 'core_uri_parts', 3, 'checkbox', '', 0, 'Parts', ' ', 3, '', '', 'scheme,user,pass,host,port,path,query,fragment', 'Scheme=scheme||User=user||Password=pass||Host=host||Port=port||Path=path||Query=query||Fragment=fragment', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, ',', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'parts', '', '', '', 0, '0000-00-00 00:00:00'),
(281, 'Core Dev Texts', 'core_dev_texts', 3, 'field_x', '', 0, 'Texts', ' ', 3, '', '', '', '', '', 1, 10, 32, 0, 1, 0, 0, '', 0, '', 'core_dev_text', '', '', 1, 1, 1, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'texts', '', '', '', 0, '0000-00-00 00:00:00'),
(283, 'Core Alias', 'core_alias', 3, 'text', '', 0, 'Alias Optional', ' ', 3, '', '', '', '', '', 0, 255, 28, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'alias', '', '', '', 0, '0000-00-00 00:00:00'),
(284, 'Core Location2', 'core_location2', 3, 'select_simple', '', 0, 'List Location', ' ', 3, '', '', '', 'Both=||None=none||Location=optgroup||Administrator=admin||Site=site', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'location', '', '', '', 0, '0000-00-00 00:00:00'),
(285, 'Core Filter Go', 'core_filter_go', 3, 'button_submit', '', 0, 'Go', ' ', 3, '', '', '', '', '{\"icon\":\"checkmark\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 3, 1, 0, 'tip hasTooltip', 'onclick=\"this.form.submit();\"', 'none', '', '', '', 'core_filter_go', '', '', '', 0, '0000-00-00 00:00:00'),
(286, 'Core Filter Search', 'core_filter_search', 3, 'button_submit', '', 0, 'Search', ' ', 3, '', '', '', '', '{\"icon\":\"search\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 3, 0, 0, 'tip hasTooltip', 'onclick=\"this.form.submit();\"', 'none', '', '', '', 'core_filter_search', '', '', '', 0, '0000-00-00 00:00:00'),
(287, 'Core Filter Clear', 'core_filter_clear', 3, 'button_submit', '', 0, 'Clear', ' ', 3, '', '', '', '', '{\"icon\":\"remove\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 3, 0, 0, 'tip hasTooltip', 'onclick=\"this.form.submit();\"', 'none', '', '', '', 'core_filter_clear', '', '', '', 0, '0000-00-00 00:00:00'),
(288, 'Core Filter Input', 'core_filter_input', 3, 'text', '', 0, 'Search', ' ', 3, '', '', '', '', '', 0, 255, 20, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'filter_search', '', '', '', 0, '0000-00-00 00:00:00'),
(289, 'Core Icons', 'core_icons', 3, 'select_simple', '', 0, 'Icon', 'Select', 3, '', '', '', 'address||arrow-down||arrow-down-2||arrow-down-3||arrow-first||arrow-last||arrow-left||arrow-left-2||arrow-left-3||arrow-right||arrow-right-2||arrow-right-3||arrow-up||arrow-up-2||arrow-up-3||bars||basket||bookmark||bookmark-2||box-add||box-remove||briefcase||broadcast||brush||calendar||calendar-2||camera||camera-2||cancel||cart||chart||checkbox||checkbox-partial||checkbox-unchecked||checkmark||clock||cog||cogs||color-palette||comments||comments-2||compass||contract||contract-2||copy||cube||delete||dashboard||database||download||drawer||drawer-2||edit||equalizer||expand||expand-2||eye||feed||file||file-check||file-minus||file-plus||file-remove||filter||first||flag||flag-2||folder-close||folder-open||grid-view||grid-view-2||health||help||home||key||lamp||last||lightning||list-view||location||lock||loop||mail||mail-2||menu||menu-2||minus||minus-2||mobile||move||music||next||out||out-2||pencil||pencil-2||picture||pictures||pie||pin||play||play-2||plus||plus-2||power-cord||previous||print||puzzle||quote||quote-2||refresh||remove||screen||search||share||shuffle||star||star-2||star-empty||support||tablet||tags||thumbs-down||thumbs-up||tools||trash||undo||upload||user||users||vcard||wand||warning||wrench||zoom-in||zoom-out', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][icon]', '', '', '', 0, '0000-00-00 00:00:00'),
(290, 'Core Joomla! Article Catid', 'core_joomla_article_catid', 3, 'jform_category', '', 0, 'Category', 'Use Global', 3, '', '', '', '', '{\"extension\":\"com_content\"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'max-width-200', '', 'dev', '', '', '', 'values[catid]', '', '', '', 0, '0000-00-00 00:00:00'),
(291, 'Core Joomla! Article Created By', 'core_joomla_article_created_by', 3, 'select_dynamic', '', 0, 'Author', 'Use Global', 3, '', '', '', '', '{\"query\":\"SELECT id AS value, name AS text FROM #__users AS a LEFT JOIN #__user_usergroup_map AS b ON b.user_id = a.id WHERE b.group_id = 8 ORDER BY text\",\"table\":\"#__content\",\"name\":\"\",\"where\":\"\",\"value\":\"\",\"orderby\":\"\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'values[created_by]', '', '', '', 0, '0000-00-00 00:00:00'),
(292, 'Core Joomla! Article State', 'core_joomla_article_state', 3, 'select_simple', '', 0, 'Status', 'Use Global', 3, '', '', '', 'Published=1||Unpublished=0||Archived=2||Trashed=-2', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'values[state]', '', '', '', 0, '0000-00-00 00:00:00'),
(293, 'Button Save', 'button_save', 3, 'button_submit', '', 1, 'Save', ' ', 3, '', '', '', '', '{\"icon\":\"checkmark\",\"task\":\"apply\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 1, 0, 1, 'btn-primary', '', 'none', '', '', '', 'button_save', '', '', '', 0, '0000-00-00 00:00:00'),
(294, 'Button Search', 'button_search', 3, 'button_submit', '', 1, 'Search', ' ', 3, '', '', '', '', '{\"icon\":\"search\",\"task\":\"save\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 1, 0, 1, 'btn-primary', '', 'none', '', '', '', 'button_search', '', '', '', 0, '0000-00-00 00:00:00'),
(295, 'Core Module Style', 'core_module_style', 3, 'select_simple', '', 0, 'Style', 'Select', 3, '', '', '', 'None=none||Outline=outline||Rounded=rounded||Table=table||Xhtml=xhtml', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'style', '', '', '', 0, '0000-00-00 00:00:00'),
(296, 'Core Not Empty (File)', 'core_not_empty_file', 3, 'checkbox', '', 0, '', ' ', 3, '', '', '', 'Only with File=1', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'core_not_empty_file', '', '', '', 0, '0000-00-00 00:00:00'),
(297, 'Core Not Empty (Image)', 'core_not_empty_image', 3, 'checkbox', '', 0, '', ' ', 3, '', '', '', 'Only with Image=1', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'core_not_empty_image', '', '', '', 0, '0000-00-00 00:00:00'),
(299, 'Button Submit', 'button_submit', 3, 'button_submit', '', 1, 'Submit', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 1, 1, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'button_submit', '', '', '', 0, '0000-00-00 00:00:00'),
(300, 'Article Category Id', 'art_catid', 10, 'jform_category', '', 1, 'Category', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 3, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'catid', '', '', '', 0, '0000-00-00 00:00:00'),
(301, 'Article State', 'art_state', 10, 'select_simple', '', 1, 'Status', ' ', 3, '', '', '1', 'Published=1||Unpublished=0||Archived=2||Trashed=-2', '', 0, 50, 32, 0, 0, 4, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_article', '#__content', 'state', '', '', '', 0, '0000-00-00 00:00:00');
INSERT INTO `k4hct_cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_cck`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(302, 'Article Title', 'art_title', 10, 'text', '', 1, 'Title', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 1, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(307, 'Article Created By', 'art_created_by', 15, 'jform_user', '', 1, 'Created By', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'created_by', '', '', '', 0, '0000-00-00 00:00:00'),
(308, 'User Name', 'user_name', 13, 'text', '', 1, 'Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 1, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__users', 'name', '', '', '', 0, '0000-00-00 00:00:00'),
(309, 'User Username', 'user_username', 13, 'text', '', 1, 'Login Name', ' ', 3, '', '', '', '', '', 0, 150, 32, 0, 0, 2, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__users', 'username', '', '', '', 0, '0000-00-00 00:00:00'),
(310, 'User Email', 'user_email', 13, 'text', '', 1, 'Email', ' ', 3, '', '', '', '', '', 0, 100, 32, 0, 0, 5, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__users', 'email', '', '', '', 0, '0000-00-00 00:00:00'),
(311, 'User Password', 'user_password', 13, 'password', '', 1, 'Password', ' ', 3, '', '', '', '', '', 10, 20, 32, 0, 0, 3, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__users', 'password', '', '', '', 0, '0000-00-00 00:00:00'),
(312, 'User Password2', 'user_password2', 13, 'password', '', 1, 'Confirm Password', ' ', 3, '', '', '', '', '', 10, 20, 32, 0, 0, 4, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__users', 'password2', '', '', '', 0, '0000-00-00 00:00:00'),
(313, 'Category Title', 'cat_title', 11, 'text', '', 1, 'Title', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 1, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(314, 'Category State', 'cat_state', 11, 'select_simple', '', 1, 'Status', ' ', 3, '', '', '', 'Published=1||Unpublished=0||Archived=2||Trashed=-2', '', 0, 50, 32, 0, 0, 5, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_category', '#__categories', 'published', '', '', '', 0, '0000-00-00 00:00:00'),
(315, 'Category Parent Id', 'cat_parent_id', 11, 'jform_category', '', 1, 'Parent', 'No Parent', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 4, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'parent_id', '', '', '', 0, '0000-00-00 00:00:00'),
(316, 'Article Introtext', 'art_introtext', 22, 'wysiwyg_editor', '', 1, 'Introtext', ' ', 3, '', '', '', '', '{\"editor\":\"\",\"width\":\"100%\",\"height\":\"280\",\"import\":\"1\"}', 0, 0, 32, 25, 3, 0, 0, '', 1, '', '', '', '', 0, 0, 1, 0, 0, 0, 0, '', '', 'custom', '', 'joomla_article', '#__content', 'introtext', 'introtext', '', '', 0, '0000-00-00 00:00:00'),
(317, 'Article Access', 'art_access', 10, 'jform_accesslevel', '', 1, 'Access', ' ', 3, '', '', '1', '', '', 0, 50, 32, 0, 0, 5, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'access', '', '', '', 0, '0000-00-00 00:00:00'),
(318, 'Category Description', 'cat_description', 23, 'wysiwyg_editor', '', 1, 'Description', ' ', 3, '', '', '', '', '{\"editor\":\"\",\"width\":\"100%\",\"height\":\"280\",\"import\":\"1\"}', 0, 50, 32, 25, 3, 0, 0, '', 1, '', '', '', '', 0, 0, 1, 0, 0, 0, 0, '', '', 'custom', '', 'joomla_category', '#__categories', 'description', 'description', '', '', 0, '0000-00-00 00:00:00'),
(319, 'Article Created By Alias', 'art_created_by_alias', 15, 'text', '', 1, 'Created By Alias', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'created_by_alias', '', '', '', 0, '0000-00-00 00:00:00'),
(320, 'Article Show Title', 'art_show_title', 16, 'select_simple', '', 1, 'Show Title', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_title', '', '', 0, '0000-00-00 00:00:00'),
(321, 'User Groups', 'user_groups', 24, 'jform_usergroups', '', 1, 'User Groups', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__users', 'groups', '', '', '', 0, '0000-00-00 00:00:00'),
(322, 'User Status', 'user_block', 24, 'radio', '', 1, 'Account Status', ' ', 3, '', '', '0', 'Blocked=1||Enabled=0', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__users', 'block', '', '', '', 0, '0000-00-00 00:00:00'),
(323, 'Article Grp Basic', 'art_grp_basic', 22, 'group', '', 1, 'Basic Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'article_grp_basic', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', 'joomla_article', '', 'art_grp_basic', '', '', '', 0, '0000-00-00 00:00:00'),
(324, 'Article Id', 'art_id', 22, 'text', '', 1, 'ID', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'id', '', '', '', 0, '0000-00-00 00:00:00'),
(325, 'Article Readmore', 'art_readmore', 16, 'text', '', 1, 'Read More Text', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'alternative_readmore', '', '', 0, '0000-00-00 00:00:00'),
(326, 'Article Author', 'art_author', 17, 'text', '', 1, 'Author', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'metadata', 'author', '', '', 0, '0000-00-00 00:00:00'),
(327, 'Article External Reference', 'art_xreference', 17, 'text', '', 1, 'External Reference', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'metadata', 'xreference', '', '', 0, '0000-00-00 00:00:00'),
(328, 'Article Alias', 'art_alias', 10, 'text', '', 1, 'Alias', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 2, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'alias', '', '', '', 0, '0000-00-00 00:00:00'),
(329, 'Article Language', 'art_language', 22, 'jform_contentlanguage', '', 1, 'Language', ' ', 3, '', '', '*', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'language', '', '', '', 0, '0000-00-00 00:00:00'),
(330, 'Article Link Titles', 'art_link_titles', 16, 'select_simple', '', 1, 'Linked Titles', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'link_titles', '', '', 0, '0000-00-00 00:00:00'),
(331, 'Article Show Intro', 'art_show_intro', 16, 'select_simple', '', 1, 'Show Intro Text', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_intro', '', '', 0, '0000-00-00 00:00:00'),
(332, 'Article Show Category', 'art_show_category', 16, 'select_simple', '', 1, 'Show Category', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_category', '', '', 0, '0000-00-00 00:00:00'),
(333, 'Article Link Category', 'art_link_category', 16, 'select_simple', '', 1, 'Link Category', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'link_category', '', '', 0, '0000-00-00 00:00:00'),
(334, 'Article Show Parent Category', 'art_show_prent_category', 16, 'select_simple', '', 1, 'Show Parent', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_parent_category', '', '', 0, '0000-00-00 00:00:00'),
(335, 'Article Link Parent Category', 'art_link_parent_category', 16, 'select_simple', '', 1, 'Link Parent', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'link_parent_category', '', '', 0, '0000-00-00 00:00:00'),
(336, 'Article Show Author', 'art_show_author', 16, 'select_simple', '', 1, 'Show Author', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_author', '', '', 0, '0000-00-00 00:00:00'),
(337, 'Article Link Author', 'art_link_author', 16, 'select_simple', '', 1, 'Link Author', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'link_author', '', '', 0, '0000-00-00 00:00:00'),
(338, 'Article Show Create Date', 'art_show_create_date', 16, 'select_simple', '', 1, 'Show Create Date', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_create_date', '', '', 0, '0000-00-00 00:00:00'),
(339, 'Article Show Modify Date', 'art_show_modify_date', 16, 'select_simple', '', 1, 'Show Modify Date', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_modify_date', '', '', 0, '0000-00-00 00:00:00'),
(340, 'Article Show Publish Date', 'art_show_publish_date', 16, 'select_simple', '', 1, 'Show Publish Date', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_publish_date', '', '', 0, '0000-00-00 00:00:00'),
(341, 'Article Show Item Navigation', 'art_show_item_navigation', 16, 'select_simple', '', 1, 'Show Navigation', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_item_navigation', '', '', 0, '0000-00-00 00:00:00'),
(342, 'Article Show Icons', 'art_show_icons', 16, 'select_simple', '', 1, 'Show Icons', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_icons', '', '', 0, '0000-00-00 00:00:00'),
(343, 'Article Show Print Icon', 'art_show_print_icon', 16, 'select_simple', '', 1, 'Show Print Icon', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_print_icon', '', '', 0, '0000-00-00 00:00:00'),
(344, 'Article Show Email Icon', 'art_show_email_icon', 16, 'select_simple', '', 1, 'Show Email Icon', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_email_icon', '', '', 0, '0000-00-00 00:00:00'),
(345, 'Article Show Vote', 'art_show_vote', 16, 'select_simple', '', 1, 'Show Voting', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_vote', '', '', 0, '0000-00-00 00:00:00'),
(346, 'Article Show Hits', 'art_show_hits', 16, 'select_simple', '', 1, 'Show Hits', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_hits', '', '', 0, '0000-00-00 00:00:00'),
(347, 'Article Show Unauthorised', 'art_show_noauth', 16, 'select_simple', '', 1, 'Show Unauthorised Links', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_noauth', '', '', 0, '0000-00-00 00:00:00'),
(348, 'Article Featured', 'art_featured', 22, 'select_simple', '', 1, 'Featured', ' ', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_article', '#__content', 'featured', '', '', '', 0, '0000-00-00 00:00:00'),
(349, 'Article Robots', 'art_robots', 17, 'select_simple', '', 1, 'Robots', 'Use Global', 3, '', '', '', 'Index Follow=index, follow||No index follow=noindex, follow||Index No follow=index, nofollow||No index no follow=noindex, nofollow||Index No Archive=optgroup||Index follow no archive=index, follow, noarchive||Index no follow no archive=index, nofollow, noarchive||Index No Odp=optgroup||Index follow no odp=index, follow, noodp||Index no follow no odp=index, nofollow, noodp||Index No Snippet=optgroup||Index follow no snippet=index, follow, nosnippet||Index no follow no snippet=index, nofollow, nosnippet', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'metadata', 'robots', '', '', 0, '0000-00-00 00:00:00'),
(350, 'Article Created', 'art_created', 15, 'jform_calendar', '', 1, 'Created Date', ' ', 3, '', '', '', '', '{\"today\":\"1\",\"time\":\"24\",\"week_numbers\":\"0\"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'created', '', '', '', 0, '0000-00-00 00:00:00'),
(351, 'Article Publish Up', 'art_publish_up', 15, 'jform_calendar', '', 1, 'Start Publishing', ' ', 3, '', '', '', '', '{\"today\":\"1\",\"time\":\"24\",\"week_numbers\":\"0\"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'publish_up', '', '', '', 0, '0000-00-00 00:00:00'),
(352, 'Article Publish Down', 'art_publish_down', 15, 'jform_calendar', '', 1, 'Finish Publishing', ' ', 3, '', '', '', '', '{\"today\":\"1\",\"time\":\"24\",\"week_numbers\":\"0\"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'publish_down', '', '', '', 0, '0000-00-00 00:00:00'),
(353, 'Article Meta Description', 'art_metadesc', 17, 'textarea', '', 1, 'Meta Description', ' ', 3, '', '', '', '', '', 0, 0, 32, 50, 5, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'metadesc', '', '', '', 0, '0000-00-00 00:00:00'),
(354, 'Article Meta Keywords', 'art_metakey', 17, 'textarea', '', 1, 'Meta Keywords', ' ', 3, '', '', '', '', '', 0, 0, 32, 50, 5, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'metakey', '', '', '', 0, '0000-00-00 00:00:00'),
(355, 'Article Rights', 'art_rights', 17, 'textarea', '', 1, 'Content Rights', ' ', 3, '', '', '', '', '', 0, 0, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'json', '', 'joomla_article', '#__content', 'metadata', 'rights', '', '', 0, '0000-00-00 00:00:00'),
(356, 'Article Layout', 'art_layout', 16, 'jform_componentlayout', '', 1, 'Alternative Layout', ' ', 3, '', '', '', '', '{\"extension\":\"com_content\",\"view\":\"article\"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'article_layout', '', '', 0, '0000-00-00 00:00:00'),
(357, 'Article Modified', 'art_modified', 15, 'jform_calendar', '', 1, 'Modified Date', ' ', 3, '', '', '', '', '{\"today\":\"1\",\"time\":\"24\",\"week_numbers\":\"0\"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'modified', '', '', '', 0, '0000-00-00 00:00:00'),
(359, 'Article Modified By', 'art_modified_by', 15, 'jform_user', '', 1, 'Modified by', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'modified_by', '', '', '', 0, '0000-00-00 00:00:00'),
(362, 'User Registration Date', 'user_register_date', 24, 'jform_calendar', '', 1, 'Registration Date', ' ', 3, '', '', '', '', '{\"today\":\"1\",\"time\":\"24\",\"week_numbers\":\"0\"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__users', 'registerDate', '', '', '', 0, '0000-00-00 00:00:00'),
(363, 'User Last Visit Date', 'user_lastvisit_date', 24, 'jform_calendar', '', 1, 'Last Visit Date', ' ', 3, '', '', '', '', '{\"today\":\"1\",\"time\":\"24\",\"week_numbers\":\"0\"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__users', 'lastvisitDate', '', '', '', 0, '0000-00-00 00:00:00'),
(364, 'User Send Email', 'user_send_email', 24, 'radio', '', 1, 'Receive System emails', ' ', 3, '', '', '0', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__users', 'sendEmail', '', '', '', 0, '0000-00-00 00:00:00'),
(365, 'User Id', 'user_id', 24, 'text', '', 1, 'ID', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__users', 'id', '', '', '', 0, '0000-00-00 00:00:00'),
(366, 'User Admin Style', 'user_admin_style', 21, 'jform_templatestyle', '', 1, 'Backend Template Style', ' ', 3, '', '', '', 'Bluestork - Default=2||Hathor - Default=5', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_user', '#__users', 'params', 'admin_style', '', '', 0, '0000-00-00 00:00:00'),
(367, 'User Admin Language', 'user_admin_language', 21, 'select_dynamic', '', 1, 'Backend Language', 'Use Default', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__extensions\",\"name\":\"name\",\"where\":\"type =\\\"language\\\" AND enabled = 1 AND client_id = 1 AND state = 0\",\"value\":\"element\",\"orderby\":\"name\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_user', '#__users', 'params', 'admin_language', '', '', 0, '0000-00-00 00:00:00'),
(368, 'User Language', 'user_language', 21, 'select_dynamic', '', 1, 'Frontend Language', 'Use Default', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__extensions\",\"name\":\"name\",\"where\":\"type =\\\"language\\\" AND enabled = 1 AND client_id = 0 AND state = 0\",\"value\":\"element\",\"orderby\":\"name\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_user', '#__users', 'params', 'language', '', '', 0, '0000-00-00 00:00:00'),
(369, 'User Editor', 'user_editor', 21, 'jform_editors', '', 1, 'Editor', ' ', 3, '', '', '', 'Editor - CodeMirror=codemirror||Editor - None=none||Editor - TinyMCE=tinymce', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_user', '#__users', 'params', 'editor', '', '', 0, '0000-00-00 00:00:00'),
(370, 'User Helpsite', 'user_helpsite', 21, 'jform_helpsite', '', 1, 'Help Site', '', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_user', '#__users', 'params', 'helpsite', '', '', 0, '0000-00-00 00:00:00'),
(371, 'User Timezone', 'user_timezone', 21, 'jform_timezone', '', 1, 'Time Zone', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_user', '#__users', 'params', 'timezone', '', '', 0, '0000-00-00 00:00:00'),
(372, 'Category Id', 'cat_id', 23, 'text', '', 1, 'ID', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'id', '', '', '', 0, '0000-00-00 00:00:00'),
(373, 'Category Alias', 'cat_alias', 11, 'text', '', 1, 'Alias', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 2, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'alias', '', '', '', 0, '0000-00-00 00:00:00'),
(374, 'Category Access', 'cat_access', 11, 'jform_accesslevel', '', 1, 'Access', ' ', 3, '', '', '1', '', '', 0, 50, 32, 0, 0, 6, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'access', '', '', '', 0, '0000-00-00 00:00:00'),
(375, 'Category Language', 'cat_language', 23, 'jform_contentlanguage', '', 1, 'Language', ' ', 3, '', '', '*', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'language', '', '', '', 0, '0000-00-00 00:00:00'),
(376, 'Category Created By', 'cat_created_by', 18, 'jform_user', '', 1, 'Created by', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'created_user_id', '', '', '', 0, '0000-00-00 00:00:00'),
(377, 'Category Layout', 'cat_layout', 19, 'jform_componentlayout', '', 1, 'Alternative Layout', ' ', 3, '', '', '', '', '{\"extension\":\"com_content\",\"view\":\"category\"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_category', '#__categories', 'params', 'category_layout', '', '', 0, '0000-00-00 00:00:00'),
(378, 'Category Image', 'cat_image', 19, 'jform_media', '', 1, 'Image', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_category', '#__categories', 'params', 'image', '', '', 0, '0000-00-00 00:00:00'),
(379, 'Category Note', 'cat_note', 19, 'text', '', 1, 'Note', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'note', '', '', '', 0, '0000-00-00 00:00:00'),
(380, 'Category Meta Description', 'cat_metadesc', 20, 'textarea', '', 1, 'Meta Description', ' ', 3, '', '', '', '', '', 0, 0, 32, 50, 5, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'metadesc', '', '', '', 0, '0000-00-00 00:00:00'),
(381, 'Category Meta Keywords', 'cat_metakey', 20, 'textarea', '', 1, 'Meta Keywords', ' ', 3, '', '', '', '', '', 0, 0, 32, 50, 5, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'metakey', '', '', '', 0, '0000-00-00 00:00:00'),
(382, 'Category Author', 'cat_author', 20, 'text', '', 1, 'Author', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_category', '#__categories', 'metadata', 'author', '', '', 0, '0000-00-00 00:00:00'),
(383, 'Category Robots', 'cat_robots', 20, 'select_simple', '', 1, 'Robots', 'Use Global', 3, '', '', '', 'Index Follow=index, follow||No index follow=noindex, follow||Index No follow=index, nofollow||No index no follow=noindex, nofollow||Index No Archive=optgroup||Index follow no archive=index, follow, noarchive||Index no follow no archive=index, nofollow, noarchive||Index No Odp=optgroup||Index follow no odp=index, follow, noodp||Index no follow no odp=index, nofollow, noodp||Index No Snippet=optgroup||Index follow no snippet=index, follow, nosnippet||Index no follow no snippet=index, nofollow, nosnippet', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_category', '#__categories', 'metadata', 'robots', '', '', 0, '0000-00-00 00:00:00'),
(384, 'Article Version', 'art_version', 15, 'text', '', 1, 'Revision', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'version', '', '', '', 0, '0000-00-00 00:00:00'),
(385, 'Article Hits', 'art_hits', 15, 'text', '', 1, 'Hits', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'hits', '', '', '', 0, '0000-00-00 00:00:00'),
(386, 'Category Created', 'cat_created', 18, 'jform_calendar', '', 1, 'Created Date', ' ', 3, '', '', '', '', '{\"today\":\"1\",\"time\":\"24\",\"week_numbers\":\"0\"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'created_time', '', '', '', 0, '0000-00-00 00:00:00'),
(387, 'Category Modified By', 'cat_modifed_by', 18, 'jform_user', '', 1, 'Modified by', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'modified_user_id', '', '', '', 0, '0000-00-00 00:00:00'),
(388, 'Category Modified', 'cat_modified', 18, 'jform_calendar', '', 1, 'Modified Date', ' ', 3, '', '', '', '', '{\"today\":\"1\",\"time\":\"24\",\"week_numbers\":\"0\"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'modified_time', '', '', '', 0, '0000-00-00 00:00:00'),
(389, 'User Group Id', 'user_group_id', 26, 'text', '', 1, 'ID', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user_group', '#__usergroups', 'id', '', '', '', 0, '0000-00-00 00:00:00'),
(390, 'User Group Parent Id', 'user_group_parent_id', 14, 'jform_groupparent', '', 1, 'Parent', ' ', 3, '', '', '1', '', '', 0, 255, 32, 0, 0, 2, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user_group', '#__usergroups', 'parent_id', '', '', '', 0, '0000-00-00 00:00:00'),
(391, 'User Group Title', 'user_group_title', 14, 'text', '', 1, 'Title', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 1, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user_group', '#__usergroups', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(392, 'Category Permissions', 'cat_rules', 23, 'jform_rules', '', 1, 'Permissions', ' ', 3, '', '', '', '', '{\"extension\":\"com_content\",\"section\":\"category\"}', 0, 50, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'rules', '', '', '', 0, '0000-00-00 00:00:00'),
(393, 'Article Permissions', 'art_rules', 22, 'jform_rules', '', 1, 'Permissions', ' ', 3, '', '', '', '', '{\"extension\":\"com_content\",\"section\":\"article\"}', 0, 50, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'rules', '', '', '', 0, '0000-00-00 00:00:00'),
(394, 'Article Grp Publishing', 'art_grp_publishing', 22, 'group', '', 1, 'Publishing Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'article_grp_publishing', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'art_grp_publishing', '', '', '', 0, '0000-00-00 00:00:00'),
(395, 'Article Grp Metadata', 'art_grp_metadata', 22, 'group', '', 1, 'Metadata Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'article_grp_metadata', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'art_grp_metadata', '', '', '', 0, '0000-00-00 00:00:00'),
(396, 'Category Grp Publishing', 'cat_grp_publishing', 23, 'group', '', 1, 'Publishing Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'category_grp_publishing', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'cat_grp_publishing', '', '', '', 0, '0000-00-00 00:00:00'),
(397, 'Category Grp Basic', 'cat_grp_basic', 23, 'group', '', 1, 'Basic Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'category_grp_basic', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'cat_grp_basic', '', '', '', 0, '0000-00-00 00:00:00'),
(398, 'Category Grp Metadata', 'cat_grp_metadata', 23, 'group', '', 1, 'Metadata Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'category_grp_metadata', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'cat_grp_metadata', '', '', '', 0, '0000-00-00 00:00:00'),
(399, 'User Grp Basic', 'user_grp_basic', 24, 'group', '', 1, 'Basic Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'user_grp_basic', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'user_grp_basic', '', '', '', 0, '0000-00-00 00:00:00'),
(400, 'Article Fulltext', 'art_fulltext', 22, 'wysiwyg_editor', '', 1, 'Fulltext', ' ', 3, '', '', '', '', '{\"editor\":\"\",\"width\":\"100%\",\"height\":\"280\",\"import\":\"2\"}', 0, 50, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 1, 0, 0, 0, 0, '', '', 'custom', '', 'joomla_article', '#__content', 'introtext', 'fulltext', '', '', 0, '0000-00-00 00:00:00'),
(401, 'Article Ordering', 'art_ordering', 22, 'text', '', 1, 'Ordering', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'ordering', '', '', '', 0, '0000-00-00 00:00:00'),
(402, 'Category Extension', 'cat_extension', 11, 'hidden', '', 1, 'Extension', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 3, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'extension', '', '', '', 0, '0000-00-00 00:00:00'),
(403, 'Article Grp Images & Links', 'art_grp_images_links', 22, 'group', '', 1, 'Images and Links', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 1, 0, 0, '', 0, '', 'article_grp_images_links', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'article_grp_images_links', '', '', '', 0, '0000-00-00 00:00:00'),
(404, 'Article Image Intro', 'art_image_intro', 28, 'jform_media', '', 1, 'Intro Image', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'images', 'image_intro', '', '', 0, '0000-00-00 00:00:00'),
(405, 'Article Image Intro Alt', 'art_image_intro_alt', 28, 'text', '', 1, 'Alt Text', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'images', 'image_intro_alt', '', '', 0, '0000-00-00 00:00:00'),
(406, 'Article Image Intro Caption', 'art_image_intro_caption', 28, 'text', '', 1, 'Caption', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'images', 'image_intro_caption', '', '', 0, '0000-00-00 00:00:00'),
(407, 'Article Image Intro Float', 'art_image_intro_float', 28, 'select_simple', '', 1, 'Image Float', 'Use Global', 3, '', '', '', 'Left=left||Right=right||None=none', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'images', 'float_intro', '', '', 0, '0000-00-00 00:00:00'),
(408, 'Article Image Fulltext', 'art_image_fulltext', 28, 'jform_media', '', 1, 'Full Article Image', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'images', 'image_fulltext', '', '', 0, '0000-00-00 00:00:00'),
(409, 'Article Image Fulltext Alt', 'art_image_fulltext_alt', 28, 'text', '', 1, 'Alt Text', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'images', 'image_fulltext_alt', '', '', 0, '0000-00-00 00:00:00'),
(410, 'Article Image Fulltext Caption', 'art_image_fulltext_caption', 28, 'text', '', 1, 'Caption', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'images', 'image_fulltext_caption', '', '', 0, '0000-00-00 00:00:00'),
(411, 'Article Image Fulltext Float', 'art_image_fulltext_float', 28, 'select_simple', '', 1, 'Image Float', 'Use Global', 3, '', '', '', 'Left=left||Right=right||None=none', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'images', 'float_fulltext', '', '', 0, '0000-00-00 00:00:00'),
(412, 'Article UrlA', 'art_urla', 28, 'text', '', 1, 'Link A', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'urls', 'urla', '', '', 0, '0000-00-00 00:00:00'),
(413, 'Article UrlA Text', 'art_urla_text', 28, 'text', '', 1, 'Link A Text', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'urls', 'urlatext', '', '', 0, '0000-00-00 00:00:00'),
(414, 'Article UrlA Target', 'art_urla_target', 28, 'select_simple', '', 1, 'URL Target Window', 'Use Global', 3, '', '', '', 'Open in Parent Window=0||Open in New Window=1||Open in Popup=2||Open in Modal=3', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'urls', 'targeta', '', '', 0, '0000-00-00 00:00:00'),
(415, 'Article UrlB', 'art_urlb', 28, 'text', '', 1, 'Link B', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'urls', 'urlb', '', '', 0, '0000-00-00 00:00:00'),
(416, 'Article UrlB Text', 'art_urlb_text', 28, 'text', '', 1, 'Link B Text', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'urls', 'urlbtext', '', '', 0, '0000-00-00 00:00:00'),
(417, 'Article UrlB Target', 'art_urlb_target', 28, 'select_simple', '', 1, 'URL Target Window', 'Use Global', 3, '', '', '', 'Open in Parent Window=0||Open in New Window=1||Open in Popup=2||Open in Modal=3', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'urls', 'targetb', '', '', 0, '0000-00-00 00:00:00'),
(418, 'Article UrlC', 'art_urlc', 28, 'text', '', 1, 'Link C', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'urls', 'urlc', '', '', 0, '0000-00-00 00:00:00'),
(419, 'Article UrlC Text', 'art_urlc_text', 28, 'text', '', 1, 'Link C Text', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', '', 'joomla_article', '#__content', 'urls', 'urlctext', '', '', 0, '0000-00-00 00:00:00'),
(420, 'Article UrlC Target', 'art_urlc_target', 28, 'select_simple', '', 1, 'URL Target Window', 'Use Global', 3, '', '', '', 'Open in Parent Window=0||Open in New Window=1||Open in Popup=2||Open in Modal=3', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'urls', 'targetc', '', '', 0, '0000-00-00 00:00:00'),
(421, 'Article Urls Position', 'art_urls_position', 16, 'select_simple', '', 1, 'Positioning of the Links', 'Use Global', 3, '', '', '', 'Above=0||Below=1', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'urls_position', '', '', 0, '0000-00-00 00:00:00'),
(422, 'User Email2', 'user_email2', 24, 'email', '', 1, 'Confirm Email', ' ', 3, '', '', '', '', '{\"send\":\"0\",\"send_field\":\"\",\"from\":\"0\",\"from_param\":\"\",\"from_name\":\"0\",\"from_name_param\":\"\",\"subject\":\"\",\"to\":\"\",\"message\":\"\",\"to_field\":\"\",\"message_field\":\"\",\"send_attachment_field\":\"\",\"attachment_field\":\"\",\"cc\":\"0\",\"cc_param\":\"\",\"bcc\":\"0\",\"bcc_param\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'email', '', '', '', 0, '0000-00-00 00:00:00'),
(423, 'User Gender', 'user_gender', 29, 'radio', '', 1, 'Gender', ' ', 3, '', '', 'M', 'Male=M||Female=F||Company=C', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'gender', '', '', '', 0, '0000-00-00 00:00:00'),
(424, 'User Last Name', 'user_last_name', 29, 'text', '', 1, 'Last Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'last_name', '', '', '', 0, '0000-00-00 00:00:00'),
(425, 'User First Name', 'user_first_name', 29, 'text', '', 1, 'First Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'first_name', '', '', '', 0, '0000-00-00 00:00:00'),
(426, 'User About Me', 'user_about_me', 29, 'textarea', '', 1, 'About Me', ' ', 3, '', '', '', '', '', 0, 255, 32, 32, 5, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'about_me', '', '', '', 0, '0000-00-00 00:00:00'),
(427, 'User Avatar', 'user_avatar', 29, 'upload_image', '', 1, 'Avatar', ' ', 3, '', '', '', '', '{\"path\":\"images\\/users\\/\",\"path_content\":\"0\",\"path_user\":\"1\",\"legal_extensions\":\"gif,jpg,png,GIF,JPG,PNG\",\"max_size\":\"5\",\"size_unit\":\"2\",\"form_preview\":\"0\",\"delete_box\":\"1\",\"custom_path\":\"0\",\"path_label\":\"Path\",\"multivalue_mode\":\"0\",\"title_image\":\"1\",\"title_label\":\"Title\",\"desc_image\":\"1\",\"desc_label\":\"Description alt\",\"force_thumb_creation\":\"0\",\"content_preview\":\"1\",\"image_process\":\"maxfit\",\"image_width\":\"500\",\"image_height\":\"500\",\"thumb1_process\":\"stretch\",\"thumb1_width\":\"80\",\"thumb1_height\":\"80\",\"thumb2_process\":\"stretch\",\"thumb2_width\":\"100\",\"thumb2_height\":\"100\",\"thumb3_process\":\"stretch\",\"thumb3_width\":\"150\",\"thumb3_height\":\"150\",\"thumb4_process\":\"stretch\",\"thumb4_width\":\"200\",\"thumb4_height\":\"200\",\"thumb5_process\":\"stretch\",\"thumb5_width\":\"300\",\"thumb5_height\":\"300\"}', 0, 255, 24, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'avatar', '', '', '', 0, '0000-00-00 00:00:00'),
(428, 'User Address1', 'user_address1', 29, 'textarea', '', 1, 'Address', ' ', 3, '', '', '', '', '', 0, 255, 32, 32, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'address1', '', '', '', 0, '0000-00-00 00:00:00'),
(429, 'User Address2', 'user_address2', 29, 'textarea', '', 1, 'Address2', ' ', 3, '', '', '', '', '', 0, 255, 32, 32, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'address2', '', '', '', 0, '0000-00-00 00:00:00'),
(430, 'User City', 'user_city', 29, 'text', '', 1, 'City', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'city', '', '', '', 0, '0000-00-00 00:00:00'),
(431, 'User Postal Code', 'user_postal_code', 29, 'text', '', 1, 'Postal Code', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'postal_code', '', '', '', 0, '0000-00-00 00:00:00'),
(432, 'User Region', 'user_region', 29, 'text', '', 1, 'Region', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'region', '', '', '', 0, '0000-00-00 00:00:00'),
(433, 'User Country', 'user_country', 29, 'select_dynamic', '', 1, 'Country', 'Select', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__cck_more_countries\",\"name\":\"name_[lang]\",\"where\":\"\",\"value\":\"code2\",\"orderby\":\"name_[lang]\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'country', '', '', '', 0, '0000-00-00 00:00:00'),
(434, 'User Phone', 'user_phone', 29, 'text', '', 1, 'Phone', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'phone', '', '', '', 0, '0000-00-00 00:00:00'),
(435, 'User Website', 'user_website', 29, 'link', '', 1, 'Website', ' ', 3, '', '', '', '', '{\"link_label\":\" \",\"def_link\":\"\",\"text_label\":\"Text\",\"def_text\":\"\",\"target\":\"_blank\",\"class\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'website', '', '', '', 0, '0000-00-00 00:00:00'),
(436, 'Article Key Reference', 'art_keyreference', 16, 'text', '', 1, 'Key Reference', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_article', '#__content', 'xreference', '', '', '', 0, '0000-00-00 00:00:00'),
(437, 'User Last Reset Date', 'user_lastreset_date', 24, 'jform_calendar', '', 1, 'Last Reset Date', ' ', 3, '', '', '', '', '{\"today\":\"1\",\"time\":\"24\",\"week_numbers\":\"0\"}', 0, 255, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__users', 'lastResetTime', '', '', '', 0, '0000-00-00 00:00:00'),
(438, 'User Reset Count', 'user_reset_count', 24, 'text', '', 1, 'Password Reset Count', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_user', '#__users', 'resetCount', '', '', '', 0, '0000-00-00 00:00:00'),
(439, 'Category Left', 'cat_lft', 23, 'text', '', 1, 'Left', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'lft', '', '', '', 0, '0000-00-00 00:00:00'),
(440, 'Category Right', 'cat_rgt', 23, 'text', '', 1, 'Right', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'rgt', '', '', '', 0, '0000-00-00 00:00:00'),
(441, 'Category Path', 'cat_path', 23, 'text', '', 1, 'Path', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'path', '', '', '', 0, '0000-00-00 00:00:00'),
(442, 'Category Level', 'cat_level', 23, 'text', '', 1, 'Level', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', '', 'joomla_category', '#__categories', 'level', '', '', '', 0, '0000-00-00 00:00:00'),
(443, 'Button Next', 'button_next', 3, 'button_submit', '', 1, 'Next', ' ', 3, '', '', '', '', '{\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'button_next', '', '', '', 0, '0000-00-00 00:00:00'),
(444, 'Button Next (2)', 'button_next_2', 3, 'button_submit', '', 1, 'Next', ' ', 3, '', '', '', '', '{\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'button_next_2', '', '', '', 0, '0000-00-00 00:00:00'),
(445, 'Button Next (3)', 'button_next_3', 3, 'button_submit', '', 1, 'Next', ' ', 3, '', '', '', '', '{\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'button_next_3', '', '', '', 0, '0000-00-00 00:00:00'),
(446, 'Button Next (4)', 'button_next_4', 3, 'button_submit', '', 1, 'Next', ' ', 3, '', '', '', '', '{\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'button_next_4', '', '', '', 0, '0000-00-00 00:00:00'),
(447, 'Button Next (5)', 'button_next_5', 3, 'button_submit', '', 1, 'Next', ' ', 3, '', '', '', '', '{\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'button_next_5', '', '', '', 0, '0000-00-00 00:00:00'),
(448, 'FreeText Edit', 'freetext_edit', 3, 'freetext', '', 1, 'Edit', ' ', 3, '', '', 'Edit', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'freetext_edit', '', '', '', 0, '0000-00-00 00:00:00'),
(449, 'FreeText Delete', 'freetext_delete', 3, 'freetext', '', 1, 'Delete', ' ', 3, '', '', 'Delete', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'freetext_delete', '', '', '', 0, '0000-00-00 00:00:00'),
(450, 'Core Joomla! Category Created By', 'core_joomla_category_created_by', 3, 'select_dynamic', '', 0, 'Author', 'Use Global', 3, '', '', '', '', '{\"query\":\"SELECT id AS value, name AS text FROM #__users AS a LEFT JOIN #__user_usergroup_map AS b ON b.user_id = a.id WHERE b.group_id = 8 ORDER BY text\",\"table\":\"#__content\",\"name\":\"\",\"where\":\"\",\"value\":\"\",\"orderby\":\"\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'values[created_user_id]', '', '', '', 0, '0000-00-00 00:00:00'),
(451, 'Core Joomla! Category Parent Id', 'core_joomla_category_parent_id', 3, 'jform_category', '', 0, 'Parent', 'Use Global', 3, '', '', '', '', '{\"extension\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'max-width-200', '', 'dev', '', '', '', 'values[parent_id]', '', '', '', 0, '0000-00-00 00:00:00'),
(452, 'Core Joomla! Category State', 'core_joomla_category_state', 3, 'select_simple', '', 0, 'Status', 'Use Global', 3, '', '', '', 'Published=1||Unpublished=0||Archived=2||Trashed=-2', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'values[published]', '', '', '', 0, '0000-00-00 00:00:00'),
(453, 'Core Joomla! User Groups', 'core_joomla_user_groups', 3, 'select_dynamic', '', 0, 'User Groups', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__usergroups\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"lft\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 255, 32, 0, 9, 0, 0, ',', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'values[groups]', '', '', '', 0, '0000-00-00 00:00:00'),
(454, 'Core List Display', 'core_list_display', 3, 'select_simple', '', 0, 'Display', ' ', 3, '', '', '0', 'Standard List View=0||Intermediate List View=2||Advanced Item View=1', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'max-width-180', 'onchange=\"JCck.DevHelper.switchDisplay(this); JCck.DevHelper.doSubmit();\"', 'dev', '', '', '', 'display', '', '', '', 0, '0000-00-00 00:00:00'),
(456, 'Core Access', 'core_access', 3, 'jform_accesslevel', '', 0, 'Access', ' ', 3, '', '', '1', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'access', '', '', '', 0, '0000-00-00 00:00:00'),
(458, 'Core Conditional Trigger Type', 'core_conditional_trigger_type', 3, 'select_simple', '', 0, '', ' ', 3, '', '', 'isChanged', 'State Is Equal In=isEqual||State Is Different=isDifferent||State Is Filled=isFilled||State Is Empty=isEmpty||State Is Changed=isChanged', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style=\"max-width:100px;\"', 'dev', '', '', '', 'trigger_type', '', '', '', 0, '0000-00-00 00:00:00'),
(459, 'Core Conditional Trigger Value', 'core_conditional_trigger_value', 3, 'text', '', 0, 'Value', ' ', 3, '', '', '', '', '', 0, 255, 12, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'trigger_value', '', '', '', 0, '0000-00-00 00:00:00');
INSERT INTO `k4hct_cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_cck`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(460, 'Core Dev Password', 'core_dev_password', 3, 'password', '', 0, 'clear', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'password', '', '', '', 0, '0000-00-00 00:00:00'),
(461, 'Core Options Enctype', 'core_options_enctype', 3, 'select_simple', '', 0, 'Enctype', ' ', 3, '', '', '', 'application/x-www-form-urlencoded||multipart/form-data||text/plain', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][enctype]', '', '', '', 0, '0000-00-00 00:00:00'),
(462, 'Core Dev Radio', 'core_dev_radio', 3, 'radio', '', 0, 'clear', ' ', 3, '', '', '', '', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'btn-group', '', 'dev', '', '', '', 'radio', '', '', '', 0, '0000-00-00 00:00:00'),
(463, 'Core Dev Color', 'core_dev_color', 3, 'colorpicker', '', 0, 'clear', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'color', '', '', '', 0, '0000-00-00 00:00:00'),
(464, 'Core Orientation Vertical', 'core_orientation_vertical', 3, 'select_numeric', '', 0, 'clear', ' ', 3, '', '', '1', '', '{\"math\":\"0\",\"start\":\"1\",\"first\":\"\",\"step\":\"1\",\"last\":\"\",\"end\":\"8\",\"force_digits\":\"0\"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'bool2', '', '', '', 0, '0000-00-00 00:00:00'),
(465, 'Core Action2', 'core_action2', 3, 'select_simple', '', 0, 'Action', ' ', 3, '', '', '', 'Always=||Workflow=optgroup||Add=add||Edit=edit', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'action', '', '', '', 0, '0000-00-00 00:00:00'),
(466, 'Core Method', 'core_method', 3, 'select_simple', '', 0, 'Method', ' ', 3, '', '', 'get', 'GET=get||POST=post', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'json[options2][method]', '', '', '', 0, '0000-00-00 00:00:00'),
(467, 'Core Easing', 'core_easing', 3, 'select_simple', '', 0, 'Easing', ' ', 3, '', '', 'linear', 'linear=linear||swing=swing||easeInQuad=easeInQuad||easeOutQuad=easeOutQuad||easeInOutQuad=easeInOutQuad||easeInCubic=easeInCubic||easeOutCubic=easeOutCubic||easeInOutCubic=easeInOutCubic||easeInQuart=easeInQuart||easeOutQuart=easeOutQuart||easeInOutQuart=easeInOutQuart||easeInQuint=easeInQuint||easeOutQuint=easeOutQuint||easeInOutQuint=easeInOutQuint||easeInExpo=easeInExpo||easeOutExpo=easeOutExpo||easeInOutExpo=easeInOutExpo||easeInSine=easeInSine||easeOutSine=easeOutSine||easeInOutSine=easeInOutSine||easeInCirc=easeInCirc||easeOutCirc=easeOutCirc||easeInOutCirc=easeInOutCirc||easeInElastic=easeInElastic||easeOutElastic=easeOutElastic||easeInOutElastic=easeInOutElastic||easeInBack=easeInBack||easeOutBack=easeOutBack||easeInOutBack=easeInOutBack||easeInBounce=easeInBounce||easeOutBounce=easeOutBounce||easeInOutBounce=easeInOutBounce', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', '', 'easing', '', '', '', 0, '0000-00-00 00:00:00'),
(468, 'Core App Dependencies (Menu)', 'core_app_dependencies_menu', 3, 'select_dynamic', '', 0, 'Dependencies Menu', 'None', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__menu_types\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"title\",\"orderby_direction\":\"ASC\",\"attr1\":\"\",\"attr2\":\"\",\"attr3\":\"\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'app_dependencies_menu', '', '', '', 0, '0000-00-00 00:00:00'),
(469, 'Core Pane Behavior', 'core_pane_behavior', 3, 'select_simple', '', 0, 'Behavior', 'Select', 3, '', '', '', 'Pane Start=0||Pane Panel=1||Pane End=2', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'bool', '', '', '', 0, '0000-00-00 00:00:00'),
(470, 'User Birthdate', 'user_birthdate', 29, 'jform_calendar', '', 1, 'Birthdate', ' ', 3, '', '', '', '', '{\"time\":\"0\",\"week_numbers\":\"0\",\"today\":\"0\",\"format_filter\":\"server_utc\"}', 0, 255, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'birthdate', '', '', '', 0, '0000-00-00 00:00:00'),
(471, 'User Birthplace', 'user_birthplace', 29, 'text', '', 1, 'Birthplace', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'birthplace', '', '', '', 0, '0000-00-00 00:00:00'),
(472, 'Article Tags', 'art_tags', 22, 'jform_tag', '', 1, 'Tags', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_article', '#__content', 'tags', '', '', '', 0, '0000-00-00 00:00:00'),
(473, 'Category Tags', 'cat_tags', 23, 'jform_tag', '', 1, 'Tags', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_category', '#__categories', 'tags', '', '', '', 0, '0000-00-00 00:00:00'),
(474, 'User Tags', 'user_tags', 24, 'jform_tag', '', 1, 'Tags', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__users', 'tags', '', '', '', 0, '0000-00-00 00:00:00'),
(475, 'User Group Tags', 'user_group_tags', 26, 'jform_tag', '', 1, 'Tags', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user_group', '#__usergroups', 'tags', '', '', '', 0, '0000-00-00 00:00:00'),
(476, 'Tab Details (Start)', 'tab_details', 3, 'tabs', '', 1, 'Details', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'tab_details', '', '', '', 0, '0000-00-00 00:00:00'),
(477, 'Tab Publishing (Panel)', 'tab_publishing', 3, 'tabs', '', 1, 'Publishing', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'tab_publishing', '', '', '', 0, '0000-00-00 00:00:00'),
(478, 'Tab Metadata (Panel)', 'tab_metadata', 3, 'tabs', '', 1, 'Metadata', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'tab_metadata', '', '', '', 0, '0000-00-00 00:00:00'),
(479, 'Tab Options (Panel)', 'tab_options', 3, 'tabs', '', 1, 'Options', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'tab_options', '', '', '', 0, '0000-00-00 00:00:00'),
(480, 'Tab Permissions (Panel)', 'tab_permissions', 3, 'tabs', '', 1, 'Permissions', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'tab_permissions', '', '', '', 0, '0000-00-00 00:00:00'),
(481, 'Tab (End)', 'tab_end', 3, 'tabs', '', 1, '', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'tab_end', '', '', '', 0, '0000-00-00 00:00:00'),
(482, 'Article Show Tags', 'art_show_tags', 16, 'select_simple', '', 1, 'Show Tags', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', '', 'joomla_article', '#__content', 'attribs', 'show_tags', '', '', 0, '0000-00-00 00:00:00'),
(483, 'Core Button Style', 'core_button_style', 3, 'select_simple', '', 0, 'Style', 'Default', 3, '', '', '', 'Info=info||Inverse=inverse||Link=link||Primary=primary||Success=success||Warning=warning', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'style', '', '', '', 0, '0000-00-00 00:00:00'),
(484, 'Article Associations', 'art_associations', 22, 'jform_associations', '', 1, 'Associations', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_article', '#__content', 'associations', '', '', '', 0, '0000-00-00 00:00:00'),
(485, 'Category Associations', 'cat_associations', 23, 'jform_associations', '', 1, 'Associations', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_category', '#__categories', 'associations', '', '', '', 0, '0000-00-00 00:00:00'),
(486, 'Core Task', 'core_task', 3, 'select_simple', '', 0, 'Task', ' ', 3, '', '', 'save', 'Task Cancel=cancel||Task Reset=reset||Task Reset and Search=reset2save||Task Save=apply||Task Save and Close=save||Task Save and New=save2new||Task Save and Redirect=save2redirect||Task Save and Skip=save2skip||Task Save and View=save2view||Task Save as New=save2copy||SEBLOD Ecommerce Addon=optgroup||Task Save for later=save4later||SEBLOD Exporter Addon=optgroup||Task Export=export||Task Export Ajax=export_ajax||SEBLOD Toolbox Addon=optgroup||Task Process=process||Task Process Ajax=process_ajax', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][task]', '', '', '', 0, '0000-00-00 00:00:00'),
(487, 'Button Save & Close', 'button_save_close', 3, 'button_submit', '', 1, 'Save and Close', ' ', 3, '', '', '', '', '{\"icon\":\"checkmark\",\"task\":\"save\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 1, 0, 1, 'btn-primary', '', 'none', '', '', '', 'button_save_close', '', '', '', 0, '0000-00-00 00:00:00'),
(488, 'Button Save & New', 'button_save_new', 3, 'button_submit', '', 1, 'Save and New', ' ', 3, '', '', '', '', '{\"icon\":\"plus\",\"task\":\"save2new\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 1, 0, 1, '', '', 'none', '', '', '', 'button_save_new', '', '', '', 0, '0000-00-00 00:00:00'),
(489, 'Button Save & View', 'button_save_view', 3, 'button_submit', '', 1, 'Save and View', ' ', 3, '', '', '', '', '{\"icon\":\"eye\",\"task\":\"save2view\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 1, 0, 1, '', '', 'none', '', '', '', 'button_save_view', '', '', '', 0, '0000-00-00 00:00:00'),
(490, 'Button Cancel', 'button_cancel', 3, 'button_submit', '', 1, 'Cancel', ' ', 3, '', '', '', '', '{\"icon\":\"cancel\",\"task\":\"cancel\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 1, 0, 1, '', '', 'none', '', '', '', 'button_cancel', '', '', '', 0, '0000-00-00 00:00:00'),
(491, 'Button Grp (Form)', 'button_grp_form', 3, 'group', '', 1, 'clear', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 1, 0, 0, '', 0, '', 'button_grp_form', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'button_grp_form', '', '', '', 0, '0000-00-00 00:00:00'),
(494, 'Tab Media (Panel)', 'tab_media', 3, 'tabs', '', 1, 'Media', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'tab_media', '', '', '', 0, '0000-00-00 00:00:00'),
(495, 'Article Version Note', 'art_version_note', 22, 'text', '', 1, 'Version Note', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'art_version_note', '', '', '', 0, '0000-00-00 00:00:00'),
(496, 'Category Version Note', 'cat_version_note', 23, 'text', '', 1, 'Version Note', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'cat_version_note', '', '', '', 0, '0000-00-00 00:00:00'),
(497, 'Category Hits', 'cat_hits', 18, 'text', '', 1, 'Hits', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_category', '#__categories', 'hits', '', '', '', 0, '0000-00-00 00:00:00'),
(498, 'Tab Profile (Panel)', 'tab_profile', 3, 'tabs', '', 1, 'Profile', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'tab_profile', '', '', '', 0, '0000-00-00 00:00:00'),
(502, 'Div Start', 'div_start', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_start', '', '', '', 0, '0000-00-00 00:00:00'),
(503, 'Div In Between', 'div_in_between', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_in_between', '', '', '', 0, '0000-00-00 00:00:00'),
(504, 'Div End', 'div_end', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_end', '', '', '', 0, '0000-00-00 00:00:00'),
(505, 'Div Start (2)', 'div_start_2', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_start_2', '', '', '', 0, '0000-00-00 00:00:00'),
(506, 'Div In Between (2)', 'div_in_between_2', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_in_between_2', '', '', '', 0, '0000-00-00 00:00:00'),
(507, 'Div End (2)', 'div_end_2', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_end_2', '', '', '', 0, '0000-00-00 00:00:00'),
(508, 'Div Start (3)', 'div_start_3', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_start_3', '', '', '', 0, '0000-00-00 00:00:00'),
(509, 'Div In Between (3)', 'div_in_between_3', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_in_between_3', '', '', '', 0, '0000-00-00 00:00:00'),
(510, 'Div End (3)', 'div_end_3', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_end_3', '', '', '', 0, '0000-00-00 00:00:00'),
(511, 'Div Start (4)', 'div_start_4', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_start_4', '', '', '', 0, '0000-00-00 00:00:00'),
(512, 'Div In Between (4)', 'div_in_between_4', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_in_between_4', '', '', '', 0, '0000-00-00 00:00:00'),
(513, 'Div End (4)', 'div_end_4', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_end_4', '', '', '', 0, '0000-00-00 00:00:00'),
(514, 'Div Start (5)', 'div_start_5', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_start_5', '', '', '', 0, '0000-00-00 00:00:00'),
(515, 'Div In Between (5)', 'div_in_between_5', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_in_between_5', '', '', '', 0, '0000-00-00 00:00:00'),
(516, 'Div End (5)', 'div_end_5', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'div_end_5', '', '', '', 0, '0000-00-00 00:00:00'),
(517, 'Article Title (Back-end)', 'art_title_backend', 22, 'text', '', 1, 'Title', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'input-xxlarge input-large-text', '', 'standard', '', 'joomla_article', '#__content', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(518, 'Category Title (Back-end)', 'cat_title_backend', 23, 'text', '', 1, 'Title', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'input-xxlarge input-large-text', '', 'standard', '', 'joomla_category', '#__categories', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(519, 'User Name (Back-end)', 'user_name_backend', 24, 'text', '', 1, 'Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'input-xxlarge input-large-text', '', 'standard', '', 'joomla_user', '#__users', 'name', '', '', '', 0, '0000-00-00 00:00:00'),
(520, 'User Group Title (Back-end)', 'user_group_title_backend', 26, 'text', '', 1, 'Title', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'input-xxlarge input-large-text', '', 'standard', '', 'joomla_user_group', '#__usergroups', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(521, 'Core Task (Exporter)', 'core_task_exporter', 3, 'select_dynamic', '', 0, 'Session', 'Select', 3, 'required', '', '', '', '{\"query\":\"\",\"table\":\"#__cck_more_sessions\",\"name\":\"title\",\"where\":\"extension=\\\"com_cck_exporter\\\"\",\"value\":\"id\",\"orderby\":\"title\",\"orderby_direction\":\"ASC\",\"attr1\":\"\",\"attr2\":\"\",\"attr3\":\"\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'task_id', '', '', '', 0, '0000-00-00 00:00:00'),
(522, 'Core Task (Processing)', 'core_task_processing', 3, 'select_dynamic', '', 0, 'Processing', 'Select', 3, 'required', '', '', '', '{\"query\":\"\",\"table\":\"#__cck_more_processings\",\"name\":\"title\",\"where\":\"published=1\",\"value\":\"id\",\"orderby\":\"title\",\"orderby_direction\":\"ASC\",\"attr1\":\"\",\"attr2\":\"\",\"attr3\":\"\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'task_id', '', '', '', 0, '0000-00-00 00:00:00'),
(523, 'Core CSS Core', 'core_css_core', 3, 'select_simple', '', 0, 'Core CSS', 'Use Global', 3, '', '', '', 'Base=8||None=0||All Views=optgroup||All=1||Specific=-1||Content Views Only=optgroup||All=2||Specific=-2||Form Views Only=optgroup||All=3||Specific=-3', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'css_core', '', '', '', 0, '0000-00-00 00:00:00'),
(524, 'Icon Delete', 'icon_delete', 3, 'icon', '', 1, 'Delete', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'delete', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_delete', '', '', '', 0, '0000-00-00 00:00:00'),
(525, 'Icon Download', 'icon_download', 3, 'icon', '', 1, 'Download', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'download', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_download', '', '', '', 0, '0000-00-00 00:00:00'),
(526, 'Icon Edit', 'icon_edit', 3, 'icon', '', 1, 'Edit', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'edit', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_edit', '', '', '', 0, '0000-00-00 00:00:00'),
(527, 'Icon Preview', 'icon_preview', 3, 'icon', '', 1, 'Preview', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'zoom-in', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_preview', '', '', '', 0, '0000-00-00 00:00:00'),
(528, 'Icon Trash', 'icon_trash', 3, 'icon', '', 1, 'Trash', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'trash', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_trash', '', '', '', 0, '0000-00-00 00:00:00'),
(529, 'Icon View', 'icon_view', 3, 'icon', '', 1, 'View', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'eye', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_view', '', '', '', 0, '0000-00-00 00:00:00'),
(530, 'Button Save as New', 'button_save_as_new', 3, 'button_submit', '', 1, 'Save as New', ' ', 3, '', '', '', '', '{\"icon\":\"copy\",\"task\":\"save2copy\",\"task_id_export\":\"\",\"task_id_process\":\"\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\",\"itemid\":\"\",\"custom\":\"\",\"task_id\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 1, 0, 1, '', '', 'none', '', '', '', 'button_save_as_new', '', '', '', 0, '0000-00-00 00:00:00'),
(531, 'Core Parent (Type)', 'core_parent_type', 3, 'select_dynamic', '', 0, 'Parent', 'None', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__cck_core_types\",\"name\":\"title\",\"where\":\"parent = \\\"\\\" AND storage_location != \\\"none\\\" AND published != -44\",\"value\":\"name\",\"orderby\":\"title\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\",\"attr1\":\"\",\"attr2\":\"\",\"attr3\":\"\",\"attr4\":\"\",\"attr5\":\"\",\"attr6\":\"\"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'parent', '', '', '', 0, '0000-00-00 00:00:00'),
(532, 'Icon Add', 'icon_add', 3, 'icon', '', 1, '', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'plus', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_add', '', '', '', 0, '0000-00-00 00:00:00'),
(533, 'Core Session Extension', 'core_session_extension', 3, 'select_simple', '', 0, 'Extension', 'Select', 3, 'required', '', '', 'Exporter=com_cck_exporter||Importer=com_cck_importer', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'max-width-150', '', 'dev', '', '', '', 'extension', '', '', '', 0, '0000-00-00 00:00:00'),
(534, 'Core Session Location Filter', 'core_session_location_filter', 3, 'select_simple', '', 0, 'Location', ' ', 3, '', '', '', 'Title=title||Name=name||IDS=id', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'filter_location', '', '', '', 0, '0000-00-00 00:00:00'),
(535, 'Tab2 Details (Start)', 'tab2_details', 3, 'tabs', '', 1, 'Details', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'cck_tabs2', '', '', '', 0, 1, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'tab2_details', '', '', '', 0, '0000-00-00 00:00:00'),
(536, 'Tab2 Publishing (Panel)', 'tab2_publishing', 3, 'tabs', '', 1, 'Publishing', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, 'cck_tabs2', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', 'seb_session', '', '', 'tab2_publishing', '', '', '', 0, '0000-00-00 00:00:00'),
(537, 'Tab2 (End)', 'tab2_end', 3, 'tabs', '', 1, 'clear', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, 'cck_tabs2', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', 'seb_session', '', '', 'tab2_end', '', '', '', 0, '0000-00-00 00:00:00'),
(538, 'Tab2 Metadata (Panel)', 'tab2_metadata', 3, 'tabs', '', 1, 'Metadata', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, 'cck_tabs2', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', 'seb_session', '', '', 'tab2_metadata', '', '', '', 0, '0000-00-00 00:00:00'),
(539, 'Tab2 Options (Panel)', 'tab2_options', 3, 'tabs', '', 1, 'Options', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, 'cck_tabs2', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', 'seb_session', '', '', 'tab2_options', '', '', '', 0, '0000-00-00 00:00:00'),
(540, 'Tab2 Media (Panel)', 'tab2_media', 3, 'tabs', '', 1, 'Media', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, 'cck_tabs2', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', 'seb_session', '', '', 'tab2_media', '', '', '', 0, '0000-00-00 00:00:00'),
(541, 'Tab2 Permissions (Panel)', 'tab2_permissions', 3, 'tabs', '', 1, 'Permissions', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, 'cck_tabs2', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', 'seb_session', '', '', 'tab2_permissions', '', '', '', 0, '0000-00-00 00:00:00'),
(542, 'Core List Display Alt', 'core_list_display_alt', 3, 'select_simple', '', 0, 'Display Alt', ' ', 3, '', '', '0', 'Yes=1||No=0', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'display_alt', '', '', '', 0, '0000-00-00 00:00:00'),
(543, 'User Company', 'user_company', 29, 'text', '', 1, 'Company', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'company', '', '', '', 0, '0000-00-00 00:00:00'),
(544, 'User Company VAT ID', 'user_company_vat_id', 29, 'text', '', 1, 'VAT ID', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'company_vat_id', '', '', '', 0, '0000-00-00 00:00:00'),
(584, 'Icon File Plus', 'icon_file_plus', 3, 'icon', '', 1, 'Add', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'file-plus', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_file_add', '', '', '', 0, '0000-00-00 00:00:00'),
(585, 'Icon File Check', 'icon_file_check', 3, 'icon', '', 1, 'Select', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'file-check', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_file_check', '', '', '', 0, '0000-00-00 00:00:00'),
(586, 'Icon File Remove', 'icon_file_remove', 3, 'icon', '', 1, 'Remove', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'file-remove', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_file_remove', '', '', '', 0, '0000-00-00 00:00:00'),
(587, 'Icon File Minus', 'icon_file_minus', 3, 'icon', '', 1, 'Remove', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'file-minus', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_file_minus', '', '', '', 0, '0000-00-00 00:00:00'),
(588, 'Button Grp (Form) Div Start', 'button_grp_form_div_start', 3, 'div', '', 1, '', '', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'button_grp_form_div_start', '', '', '', 0, '0000-00-00 00:00:00'),
(589, 'Button Grp (Form) Div End', 'button_grp_form_div_end', 3, 'div', '', 1, '', '', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'button_grp_form_div_end', '', '', '', 0, '0000-00-00 00:00:00'),
(590, 'Article Order By', 'art_order_by', 22, 'search_ordering', '', 1, 'Order By', '', 3, '', '', '', 'Alphabetical=art_title||Reverse Alphabetical=art_title||Most Recent=art_created||Oldest=art_created||Ordering Ascending=art_ordering||Ordering Descending=art_ordering', '{\"options\":[{\"direction\":\"asc\",\"prepend\":\"\"},{\"direction\":\"desc\",\"prepend\":\"\"},{\"direction\":\"desc\",\"prepend\":\"\"},{\"direction\":\"asc\",\"prepend\":\"\"},{\"direction\":\"asc\",\"prepend\":\"art_catid asc\"},{\"direction\":\"desc\",\"prepend\":\"art_catid asc\"}]}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'article_order_by', '', '', '', 0, '0000-00-00 00:00:00'),
(591, 'Category Order By', 'cat_order_by', 23, 'search_ordering', '', 1, 'Order By', '', 3, '', '', '', 'Alphabetical=cat_title||Reverse Alphabetical=cat_title||Most Recent=cat_created||Oldest=cat_created||Ordering Ascending=cat_lft||Ordering Descending=cat_lft', '{\"options\":[{\"direction\":\"asc\"},{\"direction\":\"desc\"},{\"direction\":\"desc\"},{\"direction\":\"asc\"},{\"direction\":\"asc\"},{\"direction\":\"desc\"}]}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'cat_order_by', '', '', '', 0, '0000-00-00 00:00:00'),
(592, 'User Order By', 'user_order_by', 24, 'search_ordering', '', 1, 'Order By', '', 3, '', '', '', 'Most Recent=user_register_date||Oldest=user_register_date', '{\"options\":[{\"direction\":\"desc\"},{\"direction\":\"asc\"}]}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'user_order_by', '', '', '', 0, '0000-00-00 00:00:00'),
(593, 'Article Button Add', 'art_button_add', 22, 'button_free', '', 1, 'Add New', '', 3, '', '', '', '', '{\"icon\":\"plus\",\"button_link\":\"cck_form\",\"button_link_options\":\"{\\\"form\\\":\\\"article\\\",\\\"itemid\\\":\\\"\\\",\\\"form_edition\\\":\\\"1\\\",\\\"form_edition_stage\\\":\\\"\\\",\\\"form_fieldname\\\":\\\"\\\",\\\"redirection\\\":\\\"\\\",\\\"redirection_custom\\\":\\\"\\\",\\\"attributes\\\":\\\"\\\",\\\"class\\\":\\\"btn-primary\\\",\\\"target\\\":\\\"\\\",\\\"rel\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"title_custom\\\":\\\"\\\",\\\"state\\\":\\\"1\\\",\\\"tmpl\\\":\\\"\\\",\\\"custom\\\":\\\"\\\",\\\"no_access\\\":\\\"0\\\"}\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\",\"alt2_link_text\":\"\",\"alt2_link\":\"\",\"alt2_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 1, 1, 0, 1, '', '', 'none', '', '', '', 'art_button_add', '', '', '', 0, '0000-00-00 00:00:00'),
(594, 'Category Button Add', 'cat_button_add', 23, 'button_free', '', 1, 'Add New', '', 3, '', '', '', '', '{\"icon\":\"plus\",\"button_link\":\"cck_form\",\"button_link_options\":\"{\\\"form\\\":\\\"category\\\",\\\"itemid\\\":\\\"\\\",\\\"form_edition\\\":\\\"1\\\",\\\"form_edition_stage\\\":\\\"\\\",\\\"form_fieldname\\\":\\\"\\\",\\\"redirection\\\":\\\"\\\",\\\"redirection_custom\\\":\\\"\\\",\\\"attributes\\\":\\\"\\\",\\\"class\\\":\\\"btn-primary\\\",\\\"target\\\":\\\"\\\",\\\"rel\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"title_custom\\\":\\\"\\\",\\\"state\\\":\\\"1\\\",\\\"tmpl\\\":\\\"\\\",\\\"custom\\\":\\\"\\\",\\\"no_access\\\":\\\"0\\\"}\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\",\"alt2_link_text\":\"\",\"alt2_link\":\"\",\"alt2_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 1, 1, 0, 1, '', '', 'none', '', '', '', 'cat_button_add', '', '', '', 0, '0000-00-00 00:00:00'),
(595, 'User Button Add', 'user_button_add', 24, 'button_free', '', 1, 'Add New', '', 3, '', '', '', '', '{\"icon\":\"plus\",\"button_link\":\"cck_form\",\"button_link_options\":\"{\\\"form\\\":\\\"user\\\",\\\"itemid\\\":\\\"\\\",\\\"form_edition\\\":\\\"1\\\",\\\"form_edition_stage\\\":\\\"\\\",\\\"form_fieldname\\\":\\\"\\\",\\\"redirection\\\":\\\"\\\",\\\"redirection_custom\\\":\\\"\\\",\\\"attributes\\\":\\\"\\\",\\\"class\\\":\\\"btn-primary\\\",\\\"target\\\":\\\"\\\",\\\"rel\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"title_custom\\\":\\\"\\\",\\\"state\\\":\\\"1\\\",\\\"tmpl\\\":\\\"\\\",\\\"custom\\\":\\\"\\\",\\\"no_access\\\":\\\"0\\\"}\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\",\"alt2_link_text\":\"\",\"alt2_link\":\"\",\"alt2_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 1, 1, 0, 1, '', '', 'none', '', '', '', 'user_button_add', '', '', '', 0, '0000-00-00 00:00:00'),
(596, 'Article Keywords', 'art_keywords', 22, 'search_generic', '', 1, 'Keywords', '', 3, '', '', '', 'art_title||art_introtext', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'placeholder=\"J(Keywords)...\"', 'none', '', '', '', 'art_keywords', '', '', '', 0, '0000-00-00 00:00:00'),
(597, 'Category Keywords', 'cat_keywords', 23, 'search_generic', '', 1, 'Keywords', '', 3, '', '', '', 'cat_title||cat_description', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'placeholder=\"J(Keywords)...\"', 'none', '', '', '', 'cat_keywords', '', '', '', 0, '0000-00-00 00:00:00'),
(598, 'User Keywords', 'user_keywords', 24, 'search_generic', '', 1, 'Keywords', '', 3, '', '', '', 'user_name||user_email||user_first_name||user_last_name', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'placeholder=\"J(Keywords)...\"', 'none', '', '', '', 'user_keywords', '', '', '', 0, '0000-00-00 00:00:00'),
(599, 'Article States', 'art_states', 22, 'select_simple', '', 1, 'Status', ' ', 3, '', '', '', 'Published=1||Unpublished=0||Archived=2||Trashed=-2', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_article', '#__content', 'state', '', '', '', 0, '0000-00-00 00:00:00'),
(600, 'Category States', 'cat_states', 23, 'select_simple', '', 1, 'Status', ' ', 3, '', '', '', 'Published=1||Unpublished=0||Archived=2||Trashed=-2', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_category', '#__categories', 'published', '', '', '', 0, '0000-00-00 00:00:00'),
(601, 'User State', 'user_state', 24, 'select_simple', '', 1, 'Status', ' ', 3, '', '', '0', 'Enabled=0||Disabled=1', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__users', 'block', '', '', '', 0, '0000-00-00 00:00:00'),
(602, 'User States', 'user_states', 24, 'select_simple', '', 1, 'Status', ' ', 3, '', '', '', 'Enabled=0||Disabled=1', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__users', 'block', '', '', '', 0, '0000-00-00 00:00:00'),
(603, 'User Activation', 'user_activation', 24, 'text', '', 1, 'Activation', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__users', 'activation', '', '', '', 0, '0000-00-00 00:00:00'),
(604, 'User Activation State', 'user_activation_state', 13, 'select_simple', '', 1, 'Activation Status', 'Any Activation Status', 3, '', '', '', 'Activated=0||Unactivated=1', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'activation', '', '', '', 0, '0000-00-00 00:00:00'),
(605, 'User Activation State (Activated)', 'user_activation_state_activated', 13, 'text', '', 1, 'clear', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__users', 'activation', '', '', '', 0, '0000-00-00 00:00:00'),
(606, 'User Activation State (Unactivated)', 'user_activation_state_unactivated', 13, 'text', '', 1, 'clear', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__users', 'activation', '', '', '', 0, '0000-00-00 00:00:00'),
(607, 'User Password Update', 'user_password_update', 24, 'radio', '', 1, 'Update Password', '', 3, '', '', '0', 'No=0||Yes=1', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'user_password_update', '', '', '', 0, '0000-00-00 00:00:00'),
(608, 'User Grp Password', 'user_grp_password', 24, 'group', '', 1, 'clear', '', 3, '', '', '', '', '', 0, 255, 32, 0, 1, 0, 0, '', 0, '', 'user_grp_password', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', 'user', '', '', 'user_grp_password', '', '', '', 0, '0000-00-00 00:00:00'),
(609, 'User Password Set', 'user_password_set', 24, 'radio', '', 1, 'Set Password', '', 3, '', '', '0', 'No=0||Yes=1', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'user_password_set', '', '', '', 0, '0000-00-00 00:00:00'),
(610, 'FreeText Edit as Copy', 'freetext_edit_as_copy', 3, 'freetext', '', 1, 'clear', '', 3, '', '', 'Edit as Copy', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'edit_as_copy', '', '', '', 0, '0000-00-00 00:00:00'),
(611, 'Button Modal Open', 'button_modal_open', 3, 'button_free', '', 1, 'Process', '', 3, '', '', '', '', '{\"icon\":\"cog\",\"button_link\":\"\",\"button_link_options\":\"\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\",\"alt2_link_text\":\"\",\"alt2_link\":\"\",\"alt2_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 1, 1, 0, 1, 'btn-primary', 'data-toggle=\"modal\" data-target=\"#collapseModal\"', 'none', '', '', '', 'button_modal_open', '', '', '', 0, '0000-00-00 00:00:00'),
(612, 'Button Modal Open (Toggle Method)', 'button_modal_open_toggle_method', 3, 'button_free', '', 1, 'Process', '', 3, '', '', '', '', '{\"icon\":\"cog\",\"button_link\":\"\",\"button_link_options\":\"\",\"alt_link_text\":\"\",\"alt_link\":\"\",\"alt_link_options\":\"\",\"alt2_link_text\":\"\",\"alt2_link\":\"\",\"alt2_link_options\":\"\"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '$(\"#collapseModal\").on(\"shown\", function () { $(\"#seblod_form\").attr(\"method\",\"POST\"); });\r\n$(\"#collapseModal\").on(\"hidden\", function () { $(\"#seblod_form\").attr(\"method\",\"GET\"); });', 0, 1, 0, 1, 1, 0, 1, 'btn-primary', 'data-toggle=\"modal\" data-target=\"#collapseModal\"', 'none', '', '', '', 'button_modal_open_toggle_method', '', '', '', 0, '0000-00-00 00:00:00'),
(613, 'Freetext Modal Header', 'freetext_modal_header', 3, 'freetext', '', 1, 'clear', '', 3, '', '', '<button class=\"close\" type=\"button\" data-dismiss=\"modal\">×</button>\r\n<h3>J(Process)</h3>', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', '', 'freetext_modal_header', '', '', '', 0, '0000-00-00 00:00:00'),
(614, 'FreeText Download', 'freetext_download', 3, 'freetext', '', 1, 'clear', '', 3, '', '', 'Download', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'download', '', '', '', 0, '0000-00-00 00:00:00'),
(615, 'FreeText Read More', 'freetext_read_more', 3, 'freetext', '', 1, 'clear', '', 3, '', '', 'Read More', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'read_more', '', '', '', 0, '0000-00-00 00:00:00'),
(616, 'FreeText View More', 'freetext_view_more', 3, 'freetext', '', 1, 'clear', '', 3, '', '', 'View More', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'view_more', '', '', '', 0, '0000-00-00 00:00:00'),
(617, 'Core Public (Viewlevel)', 'core_public_viewlevel', 3, 'select_dynamic', '', 0, 'Public Viewing Access Level', 'Select a Viewing Access Level', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__viewlevels\",\"name\":\"title\",\"where\":\"\",\"value\":\"id\",\"orderby\":\"title\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\",\"attr1\":\"\",\"attr2\":\"\",\"attr3\":\"\",\"attr4\":\"\",\"attr5\":\"\",\"attr6\":\"\"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'public_viewlevel', '', '', '', 0, '0000-00-00 00:00:00'),
(618, 'Tab2 Profile (Panel)', 'tab2_profile', 3, 'tabs', '', 1, 'Profile', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, 'cck_tabs2', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', 'tab2_profile', '', '', 'tab2_profile', '', '', '', 0, '0000-00-00 00:00:00'),
(619, 'Core Options Today', 'core_options_today', 3, 'select_simple', '', 0, 'Show Today', ' ', 3, '', '', '1', 'Hide=0||Show=1', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'json[options2][today]', '', '', '', 0, '0000-00-00 00:00:00'),
(620, 'Core Optimize Memory', 'core_optimize_memory', 3, 'select_simple', '', 0, '', ' ', 3, '', '', '', 'PHP7_GT=optgroup||Yes=11||PHP7_LT=optgroup||Highest Level=3||Lowest Level=1||endgroup||No=0', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'optimize_memory', '', '', '', 0, '0000-00-00 00:00:00'),
(621, 'Core Author', 'core_author', 3, 'jform_user', '', 0, 'Author', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'author', '', '', '', 0, '0000-00-00 00:00:00'),
(622, 'Core Content Type (List Output)', 'cck_list_output', 4, 'select_dynamic', '', 1, 'Type', ' ', 3, '', '', '', '', '{\"query\":\"\",\"table\":\"#__cck_core_types\",\"name\":\"title\",\"where\":\"published=1\",\"value\":\"name\",\"orderby\":\"title\",\"orderby_direction\":\"ASC\",\"limit\":\"\",\"language_detection\":\"joomla\",\"language_codes\":\"EN,GB,US,FR\",\"language_default\":\"EN\"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'free', '', 'cck', '', '', '', 0, '0000-00-00 00:00:00'),
(623, 'Core Download Hits', 'cck_download_hits', 4, 'text', '', 1, '', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'free', '#__cck_core', 'download_hits', '', '', '', 0, '0000-00-00 00:00:00'),
(624, 'Article Alias (EN)', 'art_alias_en', 22, 'text', '', 1, 'Alias EN', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_article', '#__cck_store_item_content', 'alias_en', '', '', '', 0, '0000-00-00 00:00:00'),
(625, 'Article Alias (FR)', 'art_alias_fr', 22, 'text', '', 1, 'Alias FR', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_article', '#__cck_store_item_content', 'alias_fr', '', '', '', 0, '0000-00-00 00:00:00'),
(626, 'Category Alias (EN)', 'cat_alias_en', 23, 'text', '', 1, 'Alias EN', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_category', '#__cck_store_item_categories', 'alias_en', '', '', '', 0, '0000-00-00 00:00:00'),
(627, 'Category Alias (FR)', 'cat_alias_fr', 23, 'text', '', 1, 'Alias FR', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_category', '#__cck_store_item_categories', 'alias_fr', '', '', '', 0, '0000-00-00 00:00:00'),
(628, 'Core MetaDesc', 'core_metadesc', 3, 'text', '', 0, 'Override MetaDesc', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[metadesc]', '', '', '', 0, '0000-00-00 00:00:00'),
(629, 'Core SEF Canonical', 'core_sef_canonical', 3, 'select_simple', '', 0, 'SEF Canonical List', 'Use Global', 3, '', '', '', 'Canonical List All=0||Use Canonical=optgroup||Canonical List One=1||Canonical List Pages=2||Canonical List Pages Nav=3', '{\"options\":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'options[sef_canonical]', '', '', '', 0, '0000-00-00 00:00:00'),
(630, 'Button Grp (Form) Alternative', 'button_grp_form_alternative', 3, 'group', '', 1, 'clear', '', 3, '', '', '', '', '', 0, 255, 32, 0, 1, 0, 0, '', 0, '', 'button_grp_form_alternative', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'button_grp_form_alternative', '', '', '', 0, '0000-00-00 00:00:00'),
(5000, '', '', 0, '', '', -44, '', '', 0, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(5001, 'Cliente nombre', 'cliente_nombre', 1, 'text', '', 1, '', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'free', '', 'cliente_nombre', '', '', '', 0, '0000-00-00 00:00:00'),
(5002, 'Cliente Nombre', 'cliente_nombre_t', 1, 'text', '', 1, '', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'cliente_list', 'free', 'cliente', 'nombre', '', '', '', 0, '0000-00-00 00:00:00'),
(5003, 'Cliente Apellido', 'cliente_apellido_t', 1, 'text', '', 1, '', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'cliente_list', 'free', 'cliente', 'apellido', '', '', '', 0, '0000-00-00 00:00:00'),
(5004, 'Cliente Cedula', 'cliente_cedula_t', 1, 'text', '', 1, '', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'cliente_list', 'free', 'cliente', 'cedula', '', '', '', 0, '0000-00-00 00:00:00'),
(5005, 'Cliente Direccion', 'cliente_direccion_t', 1, 'text', '', 1, '', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'cliente_list', 'free', 'cliente', 'direccion', '', '', '', 0, '0000-00-00 00:00:00'),
(5006, 'Cliente Telefono', 'cliente_telefono', 1, 'text', '', 1, '', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'cliente_list', 'free', 'cliente', 'telefono', '', '', '', 0, '0000-00-00 00:00:00'),
(5007, 'Cliente email', 'cliente_email', 1, 'text', '', 1, '', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'cliente_list', 'free', 'cliente', 'email', '', '', '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core_folders`
--

CREATE TABLE `k4hct_cck_core_folders` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introchar` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colorchar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `elements` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `description` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) NOT NULL DEFAULT '0',
  `home` tinyint(3) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_core_folders`
--

INSERT INTO `k4hct_cck_core_folders` (`id`, `asset_id`, `parent_id`, `path`, `title`, `name`, `color`, `introchar`, `colorchar`, `elements`, `icon_path`, `depth`, `lft`, `rgt`, `description`, `app`, `featured`, `home`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 66, 0, '', 'Quick Folder', 'quick_folder', '#ffd700', '', '#ffffff', 'type,field,search,template', '', 0, 0, 0, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(2, 67, 0, '', 'Top', 'TOP', '', '', '', '', '', 0, 1, 48, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(3, 68, 2, 'core', 'Core', 'core', '#184d9d', '*', '#ffffff', 'type,field,search,template', '', 1, 2, 5, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(4, 69, 3, 'core/table', 'Table', 'table', '#184d9d', '', '#ffffff', 'field', '', 2, 3, 4, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(5, 70, 2, 'joomla', 'JOOMLA', 'joomla', '#578ad6', '', '#ffffff', 'type,field,search,template', '', 1, 6, 41, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(6, 88, 2, 'seblod', 'SEBLOD', 'seblod', '#184d9d', '', '#ffffff', 'type,field,search,template', '', 1, 42, 47, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(7, 89, 6, 'seblod/apps', 'Apps', 'apps', '#184d9d', 'A', '#ffffff', 'type,field,search,template', '', 2, 43, 44, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(8, 90, 6, 'seblod/demo', 'Demo', 'demo', '#184d9d', 'D', '#ffffff', 'type,field,search,template', '', 2, 45, 46, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(10, 71, 5, 'joomla/joomla_article', 'Article', 'joomla_article', '#578ad6', 'A', '#ffffff', 'type,field,search,template', 'media/cck/apps/joomla_article/images/icon.png', 2, 7, 18, '', 'joomla_article', 1, 1, 1, 0, '0000-00-00 00:00:00'),
(11, 77, 5, 'joomla/joomla_category', 'Category', 'joomla_category', '#578ad6', 'C', '#ffffff', 'type,field,search,template', 'media/cck/apps/joomla_category/images/icon.png', 2, 19, 28, '', 'joomla_category', 1, 1, 1, 0, '0000-00-00 00:00:00'),
(13, 82, 5, 'joomla/joomla_user', 'User', 'joomla_user', '#578ad6', 'U', '#ffffff', 'type,field,search,template', 'media/cck/apps/joomla_user/images/icon.png', 2, 29, 36, '', 'joomla_user', 1, 1, 1, 0, '0000-00-00 00:00:00'),
(14, 86, 5, 'joomla/joomla_user_group', 'User Group', 'joomla_user_group', '#578ad6', 'G', '#ffffff', 'type,field,search,template', 'media/cck/apps/joomla_user_group/images/icon.png', 2, 37, 40, '', 'joomla_user_group', 1, 1, 1, 0, '0000-00-00 00:00:00'),
(15, 76, 10, 'joomla/joomla_article/publishing', 'Publishing', 'publishing', '#578ad6', 'A.', '#ffffff', 'field', '', 3, 16, 17, '', 'joomla_article', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(16, 73, 10, 'joomla/joomla_article/basic', 'Basic', 'basic', '#578ad6', 'A.', '#ffffff', 'field', '', 3, 10, 11, '', 'joomla_article', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(17, 75, 10, 'joomla/joomla_article/metadata', 'Metadata', 'metadata', '#578ad6', 'A.', '#ffffff', 'field', '', 3, 14, 15, '', 'joomla_article', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(18, 81, 11, 'joomla/joomla_category/publishing', 'Publishing', 'publishing', '#578ad6', 'C.', '#ffffff', 'field', '', 3, 26, 27, '', 'joomla_category', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(19, 79, 11, 'joomla/joomla_category/basic', 'Basic', 'basic', '#578ad6', 'C.', '#ffffff', 'field', '', 3, 22, 23, '', 'joomla_category', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(20, 80, 11, 'joomla/joomla_category/metadata', 'Metadata', 'metadata', '#578ad6', 'C.', '#ffffff', 'field', '', 3, 24, 25, '', 'joomla_category', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(21, 84, 13, 'joomla/joomla_user/basic', 'Basic', 'basic', '#578ad6', 'U.', '#ffffff', 'field', '', 3, 32, 33, '', 'joomla_user', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(22, 72, 10, 'joomla/joomla_article/base', 'Base', 'base', '#578ad6', 'A.', '#ffffff', 'field', '', 3, 8, 9, '', 'joomla_article', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(23, 78, 11, 'joomla/joomla_category/base', 'Base', 'base', '#578ad6', 'C.', '#ffffff', 'field', '', 3, 20, 21, '', 'joomla_category', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(24, 83, 13, 'joomla/joomla_user/base', 'Base', 'base', '#578ad6', 'U.', '#ffffff', 'field', '', 3, 30, 31, '', 'joomla_user', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(26, 87, 14, 'joomla/joomla_user_group/base', 'Base', 'base', '#578ad6', 'G.', '#ffffff', 'field', '', 3, 38, 39, '', 'joomla_user_group', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(28, 74, 10, 'joomla/joomla_article/images_links', 'Images & Links', 'images_links', '#578ad6', 'A.', '#ffffff', 'field', '', 3, 12, 13, '', 'joomla_article', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(29, 85, 13, 'joomla/joomla_user/profile', 'Profile', 'profile', '#578ad6', 'U.', '#ffffff', 'field', '', 3, 34, 35, '', 'joomla_user', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(500, 0, 0, '', '', '', '', '', '', '', '', 0, 0, 0, '', '', 0, 0, -44, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core_objects`
--

CREATE TABLE `k4hct_cck_core_objects` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `component` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vars` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_core_objects`
--

INSERT INTO `k4hct_cck_core_objects` (`id`, `title`, `name`, `component`, `context`, `options`, `vars`, `view`) VALUES
(1, 'Joomla! Article', 'joomla_article', 'com_content', 'com_content.article', '{\"default_type\":\"article\",\"add\":\"1\",\"add_layout\":\"icon\",\"add_alt\":\"2\",\"add_redirect\":\"1\",\"edit\":\"0\",\"edit_alt\":\"1\"}', '', ''),
(2, 'Joomla! Category', 'joomla_category', 'com_categories', 'com_categories.category', '{\"default_type\":\"category\",\"add\":\"1\",\"add_layout\":\"icon\",\"add_alt\":\"2\",\"add_redirect\":\"1\",\"edit\":\"0\",\"edit_alt\":\"1\",\"exclude\":\"\"}', '', ''),
(3, 'Joomla! User', 'joomla_user', 'com_users', '', '{\"default_type\":\"user\",\"add\":\"1\",\"add_layout\":\"icon\",\"add_alt\":\"2\",\"add_redirect\":\"1\",\"edit\":\"0\",\"edit_alt\":\"1\",\"registration\":\"1\"}', '', 'users'),
(4, 'Joomla! User Group', 'joomla_user_group', 'com_users', '', '{\"default_type\":\"user_group\",\"add\":\"1\",\"add_layout\":\"icon\",\"add_alt\":\"2\",\"add_redirect\":\"1\",\"edit\":\"0\",\"edit_alt\":\"1\"}', '', 'groups');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core_searchs`
--

CREATE TABLE `k4hct_cck_core_searchs` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` int(11) NOT NULL,
  `content` int(11) NOT NULL DEFAULT '0',
  `template_search` int(11) NOT NULL,
  `template_filter` int(11) NOT NULL,
  `template_list` int(11) NOT NULL,
  `template_item` int(11) NOT NULL,
  `description` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `published` tinyint(3) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef_route` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef_route_aliases` tinyint(3) NOT NULL DEFAULT '0',
  `storage_location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stylesheets` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_core_searchs`
--

INSERT INTO `k4hct_cck_core_searchs` (`id`, `title`, `name`, `alias`, `folder`, `content`, `template_search`, `template_filter`, `template_list`, `template_item`, `description`, `access`, `published`, `options`, `location`, `sef_route`, `sef_route_aliases`, `storage_location`, `stylesheets`, `version`, `checked_out`, `checked_out_time`) VALUES
(1, 'Articles', 'articles', '', 10, 1, 10, 10, 11, 10, '', 1, 1, '', 'site', '', 0, 'joomla_article', '', 10, 0, '0000-00-00 00:00:00'),
(5, 'Categories', 'categories', '', 11, 1, 10, 10, 11, 10, '', 1, 1, '', 'site', '', 0, 'joomla_category', '', 10, 0, '0000-00-00 00:00:00'),
(8, 'Users', 'users', '', 13, 1, 10, 10, 11, 10, '', 1, 1, '', 'site', '', 0, 'joomla_user', '', 10, 0, '0000-00-00 00:00:00'),
(11, 'Article Manager', 'article_manager', '', 10, 1, 10, 10, 12, 9, '', 3, 1, '{\"limit\":\"0\",\"count\":\"0\",\"cache\":\"0\",\"cache_per_user\":\"0\",\"stages_optional\":\"\",\"cache2\":\"0\",\"pagination\":\"\",\"debug\":\"\",\"sef\":\"\",\"prepare_content\":\"\",\"auto_redirect\":\"0\",\"ordering\":\"\",\"show_list_title\":\"1\",\"tag_list_title\":\"h1\",\"class_list_title\":\"\",\"show_list_desc\":\"1\",\"show_list\":\"1\",\"show_form\":\"1\",\"show_items_number\":\"0\",\"label_items_number\":\"Results\",\"class_items_number\":\"total\",\"show_pages_number\":\"1\",\"show_pagination\":\"0\",\"class_pagination\":\"pagination\",\"callback_pagination\":\"\",\"message_style_no_access\":\"error\",\"action_no_access\":\"redirection\",\"message_no_access\":\"\",\"redirection_url_no_access\":\"index.php?option=com_users&view=login\",\"message_style\":\"-1\",\"action\":\"0\",\"message\":\"\",\"show_list_desc_no_result\":\"1\",\"validation_position\":\"\",\"validation_scroll\":\"\",\"validation_color\":\"\",\"validation_background_color\":\"\"}', 'site', '', 0, 'joomla_article', '', 10, 0, '0000-00-00 00:00:00'),
(15, 'Category Manager', 'category_manager', '', 11, 1, 10, 10, 13, 9, '', 3, 1, '{\"limit\":\"0\",\"count\":\"0\",\"cache\":\"0\",\"cache_per_user\":\"0\",\"stages_optional\":\"\",\"cache2\":\"0\",\"pagination\":\"\",\"debug\":\"\",\"sef\":\"\",\"prepare_content\":\"\",\"auto_redirect\":\"0\",\"ordering\":\"\",\"show_list_title\":\"1\",\"tag_list_title\":\"h1\",\"class_list_title\":\"\",\"show_list_desc\":\"1\",\"show_list\":\"1\",\"show_form\":\"1\",\"show_items_number\":\"0\",\"label_items_number\":\"Results\",\"class_items_number\":\"total\",\"show_pages_number\":\"1\",\"show_pagination\":\"0\",\"class_pagination\":\"pagination\",\"callback_pagination\":\"\",\"message_style_no_access\":\"error\",\"action_no_access\":\"redirection\",\"message_no_access\":\"\",\"redirection_url_no_access\":\"index.php?option=com_users&view=login\",\"message_style\":\"-1\",\"action\":\"0\",\"message\":\"\",\"show_list_desc_no_result\":\"1\",\"validation_position\":\"\",\"validation_scroll\":\"\",\"validation_color\":\"\",\"validation_background_color\":\"\"}', 'site', '', 0, 'joomla_category', '', 10, 0, '0000-00-00 00:00:00'),
(18, 'User Manager', 'user_manager', '', 13, 1, 10, 10, 14, 9, '', 3, 1, '{\"limit\":\"0\",\"count\":\"0\",\"cache\":\"0\",\"cache_per_user\":\"0\",\"stages_optional\":\"\",\"cache2\":\"0\",\"pagination\":\"\",\"debug\":\"\",\"sef\":\"\",\"prepare_content\":\"\",\"auto_redirect\":\"0\",\"ordering\":\"\",\"show_list_title\":\"1\",\"tag_list_title\":\"h1\",\"class_list_title\":\"\",\"show_list_desc\":\"1\",\"show_list\":\"1\",\"show_form\":\"1\",\"show_items_number\":\"0\",\"label_items_number\":\"Results\",\"class_items_number\":\"total\",\"show_pages_number\":\"1\",\"show_pagination\":\"0\",\"class_pagination\":\"pagination\",\"callback_pagination\":\"\",\"message_style_no_access\":\"error\",\"action_no_access\":\"redirection\",\"message_no_access\":\"\",\"redirection_url_no_access\":\"index.php?option=com_users&view=login\",\"message_style\":\"-1\",\"action\":\"0\",\"message\":\"\",\"show_list_desc_no_result\":\"1\",\"validation_position\":\"\",\"validation_scroll\":\"\",\"validation_color\":\"\",\"validation_background_color\":\"\"}', 'site', '', 0, 'joomla_user', '', 10, 0, '0000-00-00 00:00:00'),
(500, '', '', '', 0, 0, 0, 0, 0, 0, '', 1, -44, '', '', '', 0, '', '', 1, 0, '0000-00-00 00:00:00'),
(501, 'Clientes', 'clientes', '', 1, 1, 16, 10, 17, 10, '', 1, 0, '{\"limit\":\"0\",\"count\":\"0\",\"cache\":\"0\",\"cache_per_user\":\"0\",\"stages_optional\":\"\",\"cache2\":\"0\",\"pagination\":\"\",\"debug\":\"\",\"persistent_query\":\"0\",\"prepare_content\":\"\",\"sef\":\"\",\"sef_canonical\":\"\",\"auto_redirect\":\"0\",\"ordering\":\"\",\"show_list_title\":\"1\",\"tag_list_title\":\"h1\",\"class_list_title\":\"\",\"show_list_desc\":\"1\",\"show_list\":\"1\",\"show_form\":\"1\",\"show_items_number\":\"0\",\"label_items_number\":\"Results\",\"class_items_number\":\"total\",\"show_pages_number\":\"0\",\"show_pagination\":\"0\",\"class_pagination\":\"pagination\",\"label_pagination\":\"\",\"callback_pagination\":\"\",\"message_style_no_access\":\"error\",\"action_no_access\":\"redirection\",\"message_no_access\":\"\",\"redirection_url_no_access\":\"index.php?option=com_users&view=login\",\"message_style\":\"message\",\"action\":\"0\",\"message\":\"\",\"show_list_desc_no_result\":\"1\",\"message_style_no_search\":\"0\",\"action_no_search\":\"0\",\"message_no_search\":\"\",\"load_resource\":\"0\",\"tmpl_resource\":\"\",\"json_resource\":\"\",\"validation_position\":\"\",\"validation_scroll\":\"\",\"validation_color\":\"\",\"validation_background_color\":\"\"}', '', 'cliente_list', 0, 'free', '', 2, 0, '0000-00-00 00:00:00'),
(509, 'Lista Clientes', 'lista_clientes', '', 1, 1, 21, 10, 22, 10, '', 1, 1, '{\"limit\":\"0\",\"count\":\"0\",\"cache\":\"0\",\"cache_per_user\":\"0\",\"stages_optional\":\"\",\"cache2\":\"0\",\"pagination\":\"\",\"debug\":\"\",\"persistent_query\":\"0\",\"prepare_content\":\"\",\"sef\":\"\",\"sef_canonical\":\"\",\"auto_redirect\":\"0\",\"ordering\":\"\",\"show_list_title\":\"1\",\"tag_list_title\":\"h1\",\"class_list_title\":\"\",\"show_list_desc\":\"1\",\"show_list\":\"1\",\"show_form\":\"1\",\"show_items_number\":\"0\",\"label_items_number\":\"Results\",\"class_items_number\":\"total\",\"show_pages_number\":\"0\",\"show_pagination\":\"0\",\"class_pagination\":\"pagination\",\"label_pagination\":\"\",\"callback_pagination\":\"\",\"message_style_no_access\":\"error\",\"action_no_access\":\"redirection\",\"message_no_access\":\"\",\"redirection_url_no_access\":\"index.php?option=com_users&view=login\",\"message_style\":\"message\",\"action\":\"0\",\"message\":\"\",\"show_list_desc_no_result\":\"1\",\"message_style_no_search\":\"0\",\"action_no_search\":\"0\",\"message_no_search\":\"\",\"load_resource\":\"0\",\"tmpl_resource\":\"\",\"json_resource\":\"\",\"validation_position\":\"\",\"validation_scroll\":\"\",\"validation_color\":\"\",\"validation_background_color\":\"\"}', '', 'cliente_list', 0, 'free', '', 8, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core_search_field`
--

CREATE TABLE `k4hct_cck_core_search_field` (
  `searchid` int(11) NOT NULL,
  `fieldid` int(10) UNSIGNED NOT NULL,
  `client` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search,list,item',
  `variation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `variation_override` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `required` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `required_alert` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `validation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `validation_options` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `link` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'list,item',
  `link_options` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'list,item',
  `live` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `live_options` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `live_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `markup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search,list,item',
  `markup_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'list,item',
  `match_collection` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `match_mode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `match_options` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `match_value` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `typo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'list,item',
  `typo_label` tinyint(3) NOT NULL COMMENT 'list,item',
  `typo_options` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'list,item',
  `stage` int(11) NOT NULL DEFAULT '0' COMMENT 'search',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'search,list,item',
  `restriction` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search,list,item',
  `restriction_options` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search,list,item',
  `computation` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `computation_options` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `conditional` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `conditional_options` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'search,list,item'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_core_search_field`
--

INSERT INTO `k4hct_cck_core_search_field` (`searchid`, `fieldid`, `client`, `ordering`, `label`, `variation`, `variation_override`, `required`, `required_alert`, `validation`, `validation_options`, `link`, `link_options`, `live`, `live_options`, `live_value`, `markup`, `markup_class`, `match_collection`, `match_mode`, `match_options`, `match_value`, `typo`, `typo_label`, `typo_options`, `stage`, `access`, `restriction`, `restriction_options`, `computation`, `computation_options`, `conditional`, `conditional_options`, `position`) VALUES
(1, 1, 'search', 1, '', 'hidden', '', '', '', '', '', '', '', '', '', 'article', '', '', '', 'exact', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 294, 'search', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 302, 'item', 1, 'clear', '', '', '', '', '', '', 'content', '', '', '', '', '', '', '', '', '', '', 'heading', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 302, 'search', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 316, 'item', 2, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 502, 'search', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 504, 'search', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 1, 'search', 1, '', 'hidden', '', '', '', '', '', '', '', '', '', 'category', '', '', '', 'exact', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 294, 'search', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 313, 'item', 1, 'clear', '', '', '', '', '', '', 'content', '', '', '', '', '', '', '', '', '', '', 'heading', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 313, 'search', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 318, 'item', 2, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 502, 'search', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 504, 'search', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 1, 'search', 1, '', 'hidden', '', '', '', '', '', '', '', '', '', 'user', '', '', '', 'exact', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 294, 'search', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 308, 'item', 1, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'heading', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 308, 'search', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 502, 'search', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 504, 'search', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 1, 'search', 1, '', 'hidden', '', '', '', '', '', '', '', '', '', 'article', '', '', '', 'exact', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 9, 'list', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'joomla_jgrid', 0, '{\"type\":\"selection\",\"class\":\"btn btn-micro hasTooltip\",\"start\":\"1\",\"class2\":\"input-small\",\"identifier\":\"id\",\"use_identifier\":\"1\",\"identifier_suffix\":\"\",\"identifier_name\":\"\",\"trigger\":\"0\"}', 0, 1, '', '', '', '', '', '', 'column-b'),
(11, 300, 'list', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'html', 0, '{\"html\":\"*label*: *text*\"}', 0, 1, '', '', '', '', '', '', 'column-c'),
(11, 300, 'search', 8, 'clear', 'form_filter', '{\"selectlabel\":\"Any Category\"}', '', '', '', '', '', '', '', '', '', '', '', '', 'exact', '{\"var_type\":\"0\"}', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 301, 'list', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'joomla_jgrid', 0, '{\"type\":\"state\",\"class\":\"btn hasTooltip\",\"start\":\"1\",\"class1\":\"\",\"class2\":\"input-small\",\"identifier\":\"id\",\"use_identifier\":\"1\",\"identifier_suffix\":\"\",\"identifier_name\":\"\",\"trigger\":\"0\",\"state_up\":\"art_publish_up\",\"state_down\":\"art_publish_down\"}', 0, 1, '', '', '', '', '', '', 'column-k'),
(11, 301, 'search', 10, 'clear', 'form_filter', '{\"selectlabel\":\"Any Status\",\"defaultvalue\":\"\"}', '', '', '', '', '', '', '', '', '', '', '', '', 'exact', '{\"var_type\":\"0\"}', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 302, 'list', 3, '', '', '', '', '', '', '', 'content', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-c'),
(11, 350, 'list', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'date', 0, '{\"format\":\"Y-m-d\",\"format_custom\":\"\",\"alt_format\":\"0\",\"format2\":\"Y-m-d\",\"unit\":\"0\",\"timezone\":\"1\"}', 0, 1, '', '', '', '', '', '', 'column-i'),
(11, 351, 'list', 12, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'clear', 0, '', 0, 1, '', '', '', '', '', '', 'hidden'),
(11, 351, 'search', 15, 'clear', 'hidden', '', '', '', '', '', '', '', '', '', '', '', '', '', 'not_null', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'clear'),
(11, 352, 'list', 13, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'clear', 0, '', 0, 1, '', '', '', '', '', '', 'hidden'),
(11, 352, 'search', 16, 'clear', 'hidden', '', '', '', '', '', '', '', '', '', '9999-12-31 23:59:59', '', '', '', 'date_past', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'clear'),
(11, 401, 'list', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'joomla_jgrid', 0, '{\"type\":\"sort\",\"class\":\"btn btn-micro hasTooltip\",\"start\":\"1\",\"class2\":\"input-small\",\"identifier\":\"id\",\"use_identifier\":\"1\",\"identifier_suffix\":\"\",\"identifier_name\":\"\",\"trigger\":\"0\"}', 0, 1, 'url_variable', '{\"do\":\"0\",\"trigger\":\"art_order_by\",\"match\":\"isEqual\",\"values\":\"art_ordering:asc,art_ordering:desc\"}', '', '', '', '', 'column-a'),
(11, 502, 'list', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-group', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-m'),
(11, 502, 'search', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', '', '', '', '', 0, '', 0, 3, '', '', '', '', '', '', 'mainbody'),
(11, 504, 'list', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-m'),
(11, 504, 'search', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 3, '', '', '', '', '', '', 'mainbody'),
(11, 505, 'search', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ' cck-w25 cck-fl', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 506, 'search', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', ' cck-w25 cck-fl', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 507, 'search', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 509, 'search', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', ' cck-w25 cck-fl', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 512, 'search', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', ' cck-w25 cck-fl', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 524, 'list', 11, '', '', '', '', '', '', '', 'content_delete', '{\"confirm\":\"1\",\"redirection\":\"\",\"redirection_url\":\"\",\"redirection_custom\":\"\",\"class\":\"btn btn-danger\",\"title\":\"\",\"title_custom\":\"\",\"state\":\"1\",\"no_access\":\"0\"}', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 6, '', '', '', '', '', '', 'column-n'),
(11, 526, 'list', 8, 'clear', '', '', '', '', '', '', 'cck_form', '{\"form\":\"\",\"itemid\":\"\",\"form_edition\":\"1\",\"form_edition_stage\":\"\",\"form_fieldname\":\"\",\"redirection\":\"\",\"redirection_custom\":\"\",\"attributes\":\"\",\"class\":\"btn btn-primary\",\"target\":\"\",\"rel\":\"\",\"title\":\"\",\"title_custom\":\"\",\"state\":\"1\",\"tmpl\":\"\",\"custom\":\"\",\"no_access\":\"0\"}', '', '', '', 'none', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-m'),
(11, 590, 'search', 12, 'clear', 'form_filter', '', '', '', '', '', '', '', '', '', 'art_title:asc', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 593, 'search', 3, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', '', '', '', '', 0, '', 0, 3, '', '', '', '', '', '', 'mainbody'),
(11, 596, 'search', 6, 'clear', 'form_filter', '', '', '', '', '', '', '', '', '', '', '', '', '', 'any', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 599, 'search', 14, 'clear', 'hidden', '', '', '', '', '', '', '', '', '', '1,0,2', '', '', '', 'any_exact', '{\"var_type\":\"0\"}', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'clear'),
(11, 610, 'list', 9, '', '', '', '', '', '', '', 'cck_form', '{\"form\":\"\",\"itemid\":\"\",\"form_edition\":\"2\",\"form_edition_stage\":\"\",\"form_fieldname\":\"\",\"redirection\":\"\",\"redirection_custom\":\"\",\"attributes\":\"\",\"class\":\"\",\"target\":\"\",\"rel\":\"\",\"title\":\"\",\"title_custom\":\"\",\"state\":\"1\",\"tmpl\":\"\",\"custom\":\"\",\"no_access\":\"0\"}', '', '', '', 'none', '', '', '', '', '', 'joomla_jgrid', 0, '{\"type\":\"dropdown\",\"class\":\"btn btn-micro hasTooltip\",\"start\":\"1\",\"class1\":\"btn-primary\",\"class2\":\"input-small\",\"identifier\":\"id\",\"use_identifier\":\"1\",\"identifier_suffix\":\"\",\"identifier_name\":\"\",\"trigger\":\"0\",\"state_up\":\"\",\"state_down\":\"\"}', 0, 1, '', '', '', '', '', '', 'column-m'),
(15, 1, 'search', 1, '', 'hidden', '', '', '', '', '', '', '', '', '', 'category', '', '', '', 'exact', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(15, 9, 'list', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'joomla_jgrid', 0, '{\"type\":\"selection\",\"class\":\"btn btn-micro hasTooltip\",\"start\":\"1\",\"class2\":\"input-small\",\"identifier\":\"id\",\"use_identifier\":\"1\",\"identifier_suffix\":\"\",\"identifier_name\":\"\",\"trigger\":\"0\"}', 0, 1, '', '', '', '', '', '', 'column-b'),
(15, 313, 'list', 3, '', '', '', '', '', '', '', 'content', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-c'),
(15, 314, 'list', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'joomla_jgrid', 0, '{\"type\":\"state\",\"class\":\"btn hasTooltip\",\"start\":\"1\",\"class2\":\"input-small\",\"identifier\":\"id\",\"use_identifier\":\"1\",\"identifier_suffix\":\"\",\"identifier_name\":\"\",\"trigger\":\"0\"}', 0, 1, '', '', '', '', '', '', 'column-k'),
(15, 314, 'search', 10, 'clear', 'form_filter', '{\"selectlabel\":\"Any Status\",\"defaultvalue\":\"\"}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(15, 315, 'list', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'html', 0, '{\"html\":\"*label*: *text*\"}', 0, 1, '', '', '', '', '', '', 'column-c'),
(15, 315, 'search', 8, 'clear', 'form_filter', '{\"selectlabel\":\"Any Parent\"}', '', '', '', '', '', '', '', '', '', '', '', '', 'exact', '{\"var_type\":\"0\"}', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(15, 386, 'list', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'date', 0, '{\"format\":\"Y-m-d\",\"format_custom\":\"\",\"alt_format\":\"0\",\"format2\":\"Y-m-d\",\"unit\":\"0\",\"timezone\":\"1\"}', 0, 1, '', '', '', '', '', '', 'column-i'),
(15, 439, 'list', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'joomla_jgrid', 0, '{\"type\":\"sort\",\"class\":\"btn btn-micro hasTooltip\",\"start\":\"1\",\"class2\":\"input-small\",\"identifier\":\"id\",\"use_identifier\":\"1\",\"identifier_suffix\":\"\",\"identifier_name\":\"\",\"trigger\":\"0\"}', 0, 1, 'url_variable', '{\"do\":\"0\",\"trigger\":\"cat_order_by\",\"match\":\"isEqual\",\"values\":\"cat_lft:asc,cat_lft:desc\"}', '', '', '', '', 'column-a'),
(15, 502, 'list', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-group', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-m'),
(15, 502, 'search', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', '', '', '', '', 0, '', 0, 3, '', '', '', '', '', '', 'mainbody'),
(15, 504, 'list', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-m'),
(15, 504, 'search', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 3, '', '', '', '', '', '', 'mainbody'),
(15, 505, 'search', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ' cck-w25 cck-fl', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(15, 506, 'search', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', ' cck-w25 cck-fl', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(15, 507, 'search', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(15, 509, 'search', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', ' cck-w25 cck-fl', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(15, 512, 'search', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', ' cck-w25 cck-fl', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(15, 524, 'list', 11, '', '', '', '', '', '', '', 'content_delete', '{\"confirm\":\"1\",\"redirection\":\"\",\"redirection_url\":\"\",\"redirection_custom\":\"\",\"class\":\"btn btn-danger\",\"title\":\"\",\"title_custom\":\"\",\"state\":\"1\",\"no_access\":\"0\"}', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 6, '', '', '', '', '', '', 'column-n'),
(15, 526, 'list', 8, 'clear', '', '', '', '', '', '', 'cck_form', '{\"form\":\"\",\"itemid\":\"\",\"form_edition\":\"1\",\"form_edition_stage\":\"\",\"form_fieldname\":\"\",\"redirection\":\"\",\"redirection_custom\":\"\",\"attributes\":\"\",\"class\":\"btn btn-primary\",\"target\":\"\",\"rel\":\"\",\"title\":\"\",\"title_custom\":\"\",\"state\":\"1\",\"tmpl\":\"\",\"custom\":\"\",\"no_access\":\"0\"}', '', '', '', 'none', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-m'),
(15, 591, 'search', 12, 'clear', 'form_filter', '', '', '', '', '', '', '', '', '', 'cat_title:asc', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(15, 594, 'search', 3, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', '', '', '', '', 0, '', 0, 3, '', '', '', '', '', '', 'mainbody'),
(15, 597, 'search', 6, 'clear', 'form_filter', '', '', '', '', '', '', '', '', '', '', '', '', '', 'any', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(15, 600, 'search', 14, 'clear', 'hidden', '', '', '', '', '', '', '', '', '', '1,0,2', '', '', '', 'any_exact', '{\"table\":\"\",\"var_type\":\"0\",\"var_mode\":\"0\",\"fieldname1\":\"\",\"fieldname2\":\"\",\"fieldname3\":\"\",\"var_unit\":\"0\"}', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'clear'),
(15, 610, 'list', 9, '', '', '', '', '', '', '', 'cck_form', '{\"form\":\"\",\"itemid\":\"\",\"form_edition\":\"2\",\"form_edition_stage\":\"\",\"form_fieldname\":\"\",\"redirection\":\"\",\"redirection_custom\":\"\",\"attributes\":\"\",\"class\":\"\",\"target\":\"\",\"rel\":\"\",\"title\":\"\",\"title_custom\":\"\",\"state\":\"1\",\"tmpl\":\"\",\"custom\":\"\",\"no_access\":\"0\"}', '', '', '', 'none', '', '', '', '', '', 'joomla_jgrid', 0, '{\"type\":\"dropdown\",\"class\":\"btn btn-micro hasTooltip\",\"start\":\"1\",\"class1\":\"btn-primary\",\"class2\":\"input-small\",\"identifier\":\"id\",\"use_identifier\":\"1\",\"identifier_suffix\":\"\",\"identifier_name\":\"\",\"trigger\":\"0\",\"state_up\":\"\",\"state_down\":\"\"}', 0, 1, '', '', '', '', '', '', 'column-m'),
(18, 1, 'search', 1, '', 'hidden', '', '', '', '', '', '', '', '', '', 'user', '', '', '', 'exact', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(18, 9, 'list', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'joomla_jgrid', 0, '{\"type\":\"selection\",\"class\":\"btn btn-micro hasTooltip\",\"start\":\"1\",\"class2\":\"input-small\",\"identifier\":\"id\",\"use_identifier\":\"1\",\"identifier_suffix\":\"\",\"identifier_name\":\"\",\"trigger\":\"0\"}', 0, 1, '', '', '', '', '', '', 'column-b'),
(18, 308, 'list', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-c'),
(18, 310, 'list', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 6, '', '', '', '', '', '', 'column-c'),
(18, 321, 'search', 17, 'clear', 'hidden', '', '', '', '', '', '', '', '', '', '8', '', '', '', 'not_equal', '{\"table\":\"\",\"var_type\":\"0\",\"var_mode\":\"0\",\"fieldname1\":\"\",\"fieldname2\":\"\",\"fieldname3\":\"\",\"var_unit\":\"0\"}', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'clear'),
(18, 322, 'list', 7, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', '', '', '', 'joomla_jgrid', -2, '{\"type\":\"block\",\"class\":\"btn hasTooltip\",\"start\":\"1\",\"class2\":\"input-small\",\"identifier\":\"id\",\"use_identifier\":\"1\",\"identifier_suffix\":\"\",\"identifier_name\":\"\",\"trigger\":\"0\"}', 0, 1, '', '', '', '', '', '', 'column-k'),
(18, 362, 'list', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'date', 0, '{\"format\":\"Y-m-d\",\"format_custom\":\"\",\"alt_format\":\"0\",\"format2\":\"Y-m-d\",\"unit\":\"0\",\"timezone\":\"1\"}', 0, 1, '', '', '', '', '', '', 'column-i'),
(18, 502, 'list', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-group', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-k'),
(18, 502, 'search', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', '', '', '', '', 0, '', 0, 6, '', '', '', '', '', '', 'mainbody'),
(18, 504, 'list', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-k'),
(18, 504, 'search', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 6, '', '', '', '', '', '', 'mainbody'),
(18, 505, 'search', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ' cck-w25 cck-fl', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(18, 506, 'search', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', ' cck-w25 cck-fl', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(18, 507, 'search', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(18, 509, 'search', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', ' cck-w25 cck-fl', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(18, 512, 'search', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', ' cck-w25 cck-fl', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(18, 524, 'list', 10, '', '', '', '', '', '', '', 'content_delete', '{\"confirm\":\"1\",\"redirection\":\"\",\"redirection_url\":\"\",\"redirection_custom\":\"\",\"class\":\"btn btn-danger\",\"title\":\"\",\"title_custom\":\"\",\"state\":\"1\",\"no_access\":\"0\"}', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 6, '', '', '', '', '', '', 'column-n'),
(18, 526, 'list', 9, '', '', '', '', '', '', '', 'cck_form', '{\"form\":\"\",\"itemid\":\"\",\"form_edition\":\"1\",\"form_edition_stage\":\"\",\"form_fieldname\":\"\",\"redirection\":\"\",\"redirection_custom\":\"\",\"attributes\":\"\",\"class\":\"btn btn-primary\",\"target\":\"\",\"rel\":\"\",\"title\":\"\",\"title_custom\":\"\",\"state\":\"1\",\"tmpl\":\"\",\"custom\":\"\",\"no_access\":\"0\"}', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-m'),
(18, 592, 'search', 12, 'clear', 'form_filter', '', '', '', '', '', '', '', '', '', 'user_register_date:desc', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(18, 595, 'search', 3, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', '', '', '', '', 0, '', 0, 6, '', '', '', '', '', '', 'mainbody'),
(18, 598, 'search', 6, 'clear', 'form_filter', '', '', '', '', '', '', '', '', '', '', '', '', '', 'any', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(18, 601, 'search', 10, 'clear', 'form_filter', '{\"selectlabel\":\"Any Status\",\"defaultvalue\":\"\"}', '', '', '', '', '', '', '', '', '', '', '', '', 'exact', '{\"var_type\":\"0\"}', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(18, 602, 'search', 14, 'clear', 'hidden', '', '', '', '', '', '', '', '', '', '0,1', '', '', '', 'any_exact', '{\"var_type\":\"0\"}', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'clear'),
(18, 603, 'list', 6, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', '', '', '', 'joomla_jgrid', -2, '{\"type\":\"activation\",\"class\":\"btn hasTooltip\",\"start\":\"1\",\"class2\":\"input-small\",\"identifier\":\"id\",\"use_identifier\":\"1\",\"identifier_suffix\":\"\",\"identifier_name\":\"\",\"trigger\":\"0\"}', 0, 1, '', '', '', '', '', '', 'column-k'),
(18, 604, 'search', 8, 'clear', 'form_filter', '', '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(18, 605, 'search', 15, '', 'hidden', '', '', '', '', '', '', '', '', '', '\'\',\'0\'', '', '', '', 'any_exact', '{\"table\":\"\",\"var_type\":\"0\",\"var_mode\":\"0\",\"fieldname1\":\"\",\"fieldname2\":\"\",\"fieldname3\":\"\",\"var_unit\":\"0\"}', ',', '', 0, '', 0, 1, 'url_variable', '{\"do\":\"0\",\"trigger\":\"user_activation_state\",\"match\":\"isEqual\",\"values\":\"0\"}', '', '', '', '', 'clear'),
(18, 606, 'search', 16, '', 'hidden', '', '', '', '', '', '', '', '', '', '\'\',\'0\'', '', '', '', 'not_any_exact', '{\"table\":\"\",\"var_type\":\"0\",\"var_mode\":\"0\",\"fieldname1\":\"\",\"fieldname2\":\"\",\"fieldname3\":\"\",\"var_unit\":\"0\"}', ',', '', 0, '', 0, 1, 'url_variable', '{\"do\":\"0\",\"trigger\":\"user_activation_state\",\"match\":\"isEqual\",\"values\":\"1\"}', '', '', '', '', 'clear'),
(501, 1, 'search', 1, '', 'hidden', '', '', '', '', '', '', '', '', '', 'cliente_list', '', '', '', 'exact', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5002, 'list', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-a'),
(501, 5003, 'list', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-b'),
(501, 5004, 'list', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-c'),
(501, 5005, 'list', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-d'),
(501, 5006, 'list', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-e'),
(501, 5007, 'list', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-f'),
(509, 1, 'search', 1, '', 'hidden', '', '', '', '', '', '', '', '', '', 'cliente_list', '', '', '', 'exact', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(509, 5002, 'list', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-a'),
(509, 5003, 'list', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-b'),
(509, 5004, 'list', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-c'),
(509, 5005, 'list', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-d'),
(509, 5006, 'list', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-e'),
(509, 5007, 'list', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'column-f');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core_search_position`
--

CREATE TABLE `k4hct_cck_core_search_position` (
  `searchid` int(11) NOT NULL,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `legend` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variation_options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_core_search_position`
--

INSERT INTO `k4hct_cck_core_search_position` (`searchid`, `position`, `client`, `legend`, `variation`, `variation_options`, `width`, `height`, `css`) VALUES
(1, 'clear', 'item', '', '', '', '', '', ''),
(1, 'clear', 'search', '', '', '', '', '', ''),
(1, 'mainbody', 'item', '', '', '', '', '', ''),
(1, 'mainbody', 'search', '', '', '', '', '', ''),
(5, 'clear', 'item', '', '', '', '', '', ''),
(5, 'clear', 'search', '', '', '', '', '', ''),
(5, 'mainbody', 'item', '', '', '', '', '', ''),
(5, 'mainbody', 'search', '', '', '', '', '', ''),
(8, 'clear', 'item', '', '', '', '', '', ''),
(8, 'clear', 'search', '', '', '', '', '', ''),
(8, 'mainbody', 'item', '', '', '', '', '', ''),
(8, 'mainbody', 'search', '', '', '', '', '', ''),
(11, 'clear', 'search', '', '', '', '', '', ''),
(11, 'column-a', 'list', '<span class=\"icon-menu-2\"></span>', 'heading', '{\"type\":\"ordering\",\"ordering\":\"art_order_by\",\"order_by\":\"\",\"order_by_fieldname\":\"\",\"order_dir\":\"asc\",\"display\":\"0\",\"display_trigger\":\"\"}', '1%', '', 'center nowrap'),
(11, 'column-b', 'list', '#', 'heading', '{\"type\":\"selection\",\"ordering\":\"\",\"order_by\":\"\",\"order_by_fieldname\":\"\",\"order_dir\":\"asc\",\"display\":\"0\",\"display_trigger\":\"\"}', '1%', '', 'center'),
(11, 'column-c', 'list', 'Article', 'heading', '{\"type\":\"ordering\",\"ordering\":\"art_order_by\",\"order_by\":\"\",\"order_by_fieldname\":\"\",\"order_dir\":\"asc\",\"display\":\"0\",\"display_trigger\":\"\"}', '', '', 'left'),
(11, 'column-i', 'list', '', 'heading', '{\"type\":\"ordering\",\"ordering\":\"art_order_by\",\"order_by\":\"\",\"order_by_fieldname\":\"\",\"order_dir\":\"desc\",\"display\":\"0\",\"display_trigger\":\"\"}', '15%', '', 'center'),
(11, 'column-k', 'list', '', '', '', '10%', '', 'center'),
(11, 'column-m', 'list', 'Edit', '', '', '10%', '', 'center'),
(11, 'column-n', 'list', '', '', '', '10%', '', 'center'),
(11, 'column-z', 'list', '', '', '', '', '', ''),
(11, 'hidden', 'list', '', '', '', '', '', ''),
(11, 'hidden', 'search', '', '', '', '', '', ''),
(11, 'mainbody', 'search', '', '', '', '', '', ''),
(15, 'clear', 'search', '', '', '', '', '', ''),
(15, 'column-a', 'list', '<span class=\"icon-menu-2\"></span>', 'heading', '{\"type\":\"ordering\",\"ordering\":\"cat_order_by\",\"order_by\":\"\",\"order_by_fieldname\":\"\",\"order_dir\":\"asc\",\"display\":\"0\",\"display_trigger\":\"\"}', '1%', '', 'center nowrap'),
(15, 'column-b', 'list', '#', 'heading', '{\"type\":\"selection\",\"ordering\":\"\",\"order_by\":\"\",\"order_by_fieldname\":\"\",\"order_dir\":\"asc\",\"display\":\"0\",\"display_trigger\":\"\"}', '1%', '', 'center'),
(15, 'column-c', 'list', 'Category', 'heading', '{\"type\":\"ordering\",\"ordering\":\"cat_order_by\",\"order_by\":\"\",\"order_by_fieldname\":\"\",\"order_dir\":\"asc\",\"display\":\"0\",\"display_trigger\":\"\"}', '', '', 'left'),
(15, 'column-i', 'list', '', 'heading', '{\"type\":\"ordering\",\"ordering\":\"cat_order_by\",\"order_by\":\"\",\"order_by_fieldname\":\"\",\"order_dir\":\"desc\",\"display\":\"0\",\"display_trigger\":\"\"}', '15%', '', 'center'),
(15, 'column-k', 'list', '', '', '', '10%', '', 'center'),
(15, 'column-m', 'list', 'Edit', '', '', '10%', '', 'center'),
(15, 'column-n', 'list', '', '', '', '10%', '', 'center'),
(15, 'hidden', 'list', '', '', '', '', '', ''),
(15, 'hidden', 'search', '', '', '', '', '', ''),
(15, 'mainbody', 'search', '', '', '', '', '', ''),
(18, 'clear', 'search', '', '', '', '', '', ''),
(18, 'column-b', 'list', '', 'heading', '{\"type\":\"selection\",\"ordering\":\"\",\"order_by\":\"\",\"order_by_fieldname\":\"\",\"order_dir\":\"asc\",\"display\":\"0\",\"display_trigger\":\"\"}', '1%', '', 'center'),
(18, 'column-c', 'list', 'User', '', '{\"type\":\"ordering\",\"ordering\":\"user_order_by\",\"order_by\":\"\",\"order_by_fieldname\":\"\",\"order_dir\":\"asc\",\"display\":\"0\",\"display_trigger\":\"\"}', '', '', 'left'),
(18, 'column-i', 'list', '', 'heading', '{\"type\":\"ordering\",\"ordering\":\"user_order_by\",\"order_by\":\"\",\"order_by_fieldname\":\"\",\"order_dir\":\"desc\",\"display\":\"0\",\"display_trigger\":\"\"}', '15%', '', 'center'),
(18, 'column-k', 'list', 'Status', '', '', '10%', '', 'center'),
(18, 'column-m', 'list', '', '', '', '10%', '', 'center'),
(18, 'column-n', 'list', '', '', '', '10%', '', 'center'),
(18, 'hidden', 'list', '', '', '', '', '', ''),
(18, 'hidden', 'search', '', '', '', '', '', ''),
(18, 'mainbody', 'search', '', '', '', '', '', ''),
(501, 'clear', 'search', '', '', '', '', '', ''),
(501, 'column-a', 'list', '', '', '', '', '', ''),
(501, 'column-b', 'list', '', '', '', '', '', ''),
(501, 'column-c', 'list', '', '', '', '', '', ''),
(501, 'column-d', 'list', '', '', '', '', '', ''),
(501, 'column-e', 'list', '', '', '', '', '', ''),
(501, 'column-f', 'list', '', '', '', '', '', ''),
(501, 'hidden', 'list', '', '', '', '', '', ''),
(501, 'mainbody', 'search', '', '', '', '', '', ''),
(509, 'clear', 'search', '', '', '', '', '', ''),
(509, 'column-a', 'list', '', '', '', '', '', ''),
(509, 'column-b', 'list', '', '', '', '', '', ''),
(509, 'column-c', 'list', '', '', '', '', '', ''),
(509, 'column-d', 'list', '', '', '', '', '', ''),
(509, 'column-e', 'list', '', '', '', '', '', ''),
(509, 'column-f', 'list', '', '', '', '', '', ''),
(509, 'hidden', 'list', '', '', '', '', '', ''),
(509, 'mainbody', 'order', '', '', '', '', '', ''),
(509, 'mainbody', 'search', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core_sites`
--

CREATE TABLE `k4hct_cck_core_sites` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aliases` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guest` int(10) UNSIGNED NOT NULL,
  `guest_only_group` int(10) UNSIGNED NOT NULL,
  `guest_only_viewlevel` int(10) UNSIGNED NOT NULL,
  `groups` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_viewlevel` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `viewlevels` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(3) NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_date` datetime NOT NULL,
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_core_sites`
--

INSERT INTO `k4hct_cck_core_sites` (`id`, `title`, `name`, `context`, `aliases`, `guest`, `guest_only_group`, `guest_only_viewlevel`, `groups`, `public_viewlevel`, `viewlevels`, `configuration`, `options`, `parent_id`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `created_date`, `created_user_id`) VALUES
(500, '', '', '', '', 0, 0, 0, '', 0, '', '', '', 0, '', -44, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core_templates`
--

CREATE TABLE `k4hct_cck_core_templates` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` int(11) NOT NULL,
  `mode` tinyint(3) NOT NULL,
  `description` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) NOT NULL DEFAULT '0',
  `options` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(3) NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_core_templates`
--

INSERT INTO `k4hct_cck_core_templates` (`id`, `title`, `name`, `folder`, `mode`, `description`, `featured`, `options`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 'One', 'seb_one', 3, 0, '', 1, '', 1, 0, '0000-00-00 00:00:00'),
(2, 'Blog', 'seb_blog', 3, 2, '', 0, '', 1, 0, '0000-00-00 00:00:00'),
(3, 'Table', 'seb_table', 3, 2, '', 0, '', 1, 0, '0000-00-00 00:00:00'),
(500, '', '', 0, 0, '', 0, '', -44, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core_types`
--

CREATE TABLE `k4hct_cck_core_types` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` int(11) NOT NULL,
  `template_admin` int(11) NOT NULL DEFAULT '0',
  `template_site` int(11) NOT NULL DEFAULT '0',
  `template_content` int(11) NOT NULL DEFAULT '0',
  `template_intro` int(11) NOT NULL DEFAULT '0',
  `description` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indexed` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(3) NOT NULL,
  `options_admin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options_site` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options_intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_form` tinyint(3) NOT NULL DEFAULT '0',
  `location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` tinyint(3) NOT NULL DEFAULT '1',
  `parent` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_inherit` tinyint(3) NOT NULL,
  `permissions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stylesheets` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '3',
  `created_date` datetime NOT NULL,
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_date` datetime NOT NULL,
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_core_types`
--

INSERT INTO `k4hct_cck_core_types` (`id`, `asset_id`, `title`, `name`, `alias`, `folder`, `template_admin`, `template_site`, `template_content`, `template_intro`, `description`, `indexed`, `published`, `options_admin`, `options_site`, `options_content`, `options_intro`, `admin_form`, `location`, `locked`, `parent`, `parent_inherit`, `permissions`, `storage_location`, `stylesheets`, `version`, `checked_out`, `checked_out_time`, `access`, `created_date`, `created_user_id`, `modified_date`, `modified_user_id`) VALUES
(1, 91, 'Article', 'article', '', 10, 10, 10, 10, 10, '', '', 1, '', '{\"redirection\":\"form_edition\"}', '', '', 0, '', 1, '', 0, '', 'joomla_article', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 92, 'Category', 'category', '', 11, 10, 10, 10, 10, '', '', 1, '', '{\"redirection\":\"form_edition\"}', '', '', 0, '', 1, '', 0, '', 'joomla_category', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 93, 'User', 'user', '', 13, 10, 10, 10, 10, '', '', 1, '', '', '', '', 0, '', 0, '', 0, '', 'joomla_user', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 94, 'User Group', 'user_group', '', 14, 10, 10, 10, 10, '', '', 1, '', '', '', '', 0, '', 1, '', 0, '', 'joomla_user_group', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 95, 'Article Grp Publishing', 'article_grp_publishing', '', 10, 10, 10, 10, 10, '', '', 0, '', '', '', '', 0, 'none', 1, '', 0, '', 'joomla_article', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 96, 'Article Grp Basic', 'article_grp_basic', '', 10, 10, 10, 10, 10, '', '', 0, '', '', '', '', 0, 'none', 1, '', 0, '', 'joomla_article', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 97, 'Article Grp Metadata', 'article_grp_metadata', '', 10, 10, 10, 10, 10, '', '', 0, '', '', '', '', 0, 'none', 1, '', 0, '', 'joomla_article', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 98, 'Category Grp Publishing', 'category_grp_publishing', '', 11, 10, 10, 10, 10, '', '', 0, '', '', '', '', 0, 'none', 1, '', 0, '', 'joomla_category', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 99, 'Category Grp Basic', 'category_grp_basic', '', 11, 10, 10, 10, 10, '', '', 0, '', '', '', '', 0, 'none', 1, '', 0, '', 'joomla_category', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 100, 'Category Grp Metadata', 'category_grp_metadata', '', 11, 10, 10, 10, 10, '', '', 0, '', '', '', '', 0, 'none', 1, '', 0, '', 'joomla_category', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 101, 'User Grp Basic', 'user_grp_basic', '', 13, 10, 10, 10, 10, '', '', 0, '', '', '', '', 0, 'none', 1, '', 0, '', 'joomla_user', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 102, 'Article Grp Images & Links', 'article_grp_images_links', '', 10, 10, 10, 10, 10, '', '', 0, '', '', '', '', 0, 'none', 1, '', 0, '', 'joomla_article', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 103, 'Button Grp (Form)', 'button_grp_form', '', 3, 10, 10, 10, 10, '', '', 0, '', '', '', '', 0, 'none', 1, '', 0, '', 'none', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 104, 'User Grp Password', 'user_grp_password', '', 13, 10, 10, 10, 10, '', 'none', 0, '', '', '', '', 0, 'none', 1, '', 0, '', 'joomla_user', '', 10, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 105, 'Button Grp (Form) Alternative', 'button_grp_form_alternative', '', 3, 10, 10, 10, 10, '', 'none', 0, '', '', '', '', 0, 'none', 1, '', 0, '', 'none', '', 3, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(500, 0, '', '', '', 0, 0, 0, 0, 0, '', '', -44, '', '', '', '', 0, '', 1, '', 0, '', '', '', 1, 0, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(501, 106, 'Cliente List', 'cliente_list', '', 1, 15, 10, 10, 10, '', 'none', 1, '{\"message_style\":\"message\",\"message\":\"\",\"data_integrity_excluded\":\"\",\"message_style_no_access\":\"error\",\"action_no_access\":\"redirection\",\"message_no_access\":\"\",\"redirection_url_no_access\":\"index.php?option=com_users&view=login\",\"stages\":\"1\",\"validation_position\":\"\",\"validation_scroll\":\"\",\"validation_color\":\"\",\"validation_background_color\":\"\"}', '', '', '', 0, '', 1, '', 0, '', 'free', '', 1, 0, '0000-00-00 00:00:00', 3, '2018-09-17 12:53:05', 531, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core_type_field`
--

CREATE TABLE `k4hct_cck_core_type_field` (
  `typeid` int(11) NOT NULL,
  `fieldid` int(10) UNSIGNED NOT NULL,
  `client` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site,intro,content',
  `variation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site',
  `variation_override` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site',
  `required` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site',
  `required_alert` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site',
  `validation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site',
  `validation_options` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site',
  `link` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'intro,content',
  `link_options` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'intro,content',
  `live` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site',
  `live_options` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site',
  `live_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site',
  `markup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site,intro,content',
  `markup_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'intro,content',
  `typo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'intro,content',
  `typo_label` tinyint(3) NOT NULL COMMENT 'intro,content',
  `typo_options` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'intro,content',
  `stage` int(11) NOT NULL DEFAULT '0' COMMENT 'admin,site',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'admin,site,intro,content',
  `restriction` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site,intro,content',
  `restriction_options` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site,intro,content',
  `computation` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site',
  `computation_options` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site',
  `conditional` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site',
  `conditional_options` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin,site,intro,content'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_core_type_field`
--

INSERT INTO `k4hct_cck_core_type_field` (`typeid`, `fieldid`, `client`, `ordering`, `label`, `variation`, `variation_override`, `required`, `required_alert`, `validation`, `validation_options`, `link`, `link_options`, `live`, `live_options`, `live_value`, `markup`, `markup_class`, `typo`, `typo_label`, `typo_options`, `stage`, `access`, `restriction`, `restriction_options`, `computation`, `computation_options`, `conditional`, `conditional_options`, `position`) VALUES
(1, 293, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 300, 'admin', 7, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 300, 'site', 11, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 301, 'admin', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 301, 'site', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 302, 'site', 8, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 316, 'admin', 4, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 316, 'content', 1, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 316, 'intro', 1, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 316, 'site', 9, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 317, 'admin', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 317, 'site', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 323, 'admin', 25, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 328, 'admin', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 328, 'site', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 329, 'admin', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 329, 'site', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 348, 'admin', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 348, 'site', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 351, 'site', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 352, 'site', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 353, 'site', 20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 354, 'site', 21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 393, 'admin', 27, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 394, 'admin', 18, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 395, 'admin', 20, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 400, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 400, 'content', 2, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 403, 'admin', 23, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 472, 'admin', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 476, 'admin', 2, 'Content', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 476, 'site', 7, 'Content', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 477, 'admin', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 477, 'site', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 478, 'site', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 479, 'admin', 24, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 480, 'admin', 26, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 481, 'admin', 28, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 481, 'site', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 487, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 488, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 490, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 494, 'admin', 22, 'Images and Links', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 495, 'admin', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 502, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span9', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 502, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 503, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span3', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 504, 'admin', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 504, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 505, 'admin', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 506, 'admin', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 507, 'admin', 21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 517, 'admin', 1, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 293, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 313, 'site', 8, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 314, 'admin', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 314, 'site', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 315, 'admin', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 315, 'site', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 318, 'admin', 4, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 318, 'content', 1, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 318, 'intro', 1, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 318, 'site', 9, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 373, 'admin', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 373, 'site', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 374, 'admin', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 374, 'site', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 375, 'admin', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 375, 'site', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 379, 'admin', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 380, 'site', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 381, 'site', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 392, 'admin', 25, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 396, 'admin', 18, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 397, 'admin', 23, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 398, 'admin', 20, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 402, 'admin', 6, '', '', '', '', '', '', '', '', '', 'url_variable', '{\"variable\":\"extension\",\"type\":\"string\"}', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 473, 'admin', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 476, 'admin', 2, 'Category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 476, 'site', 7, 'Category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 477, 'admin', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 477, 'site', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 478, 'site', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 479, 'admin', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 480, 'admin', 24, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 481, 'admin', 26, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 481, 'site', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 487, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 488, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 490, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 496, 'admin', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 502, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span9', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 502, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 503, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span3', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 504, 'admin', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 504, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 505, 'admin', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 506, 'admin', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 507, 'admin', 21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 518, 'admin', 1, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 308, 'content', 1, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 308, 'site', 2, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 309, 'admin', 5, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 309, 'site', 3, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 310, 'admin', 9, '', '', '', 'required', '', 'email', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 310, 'site', 7, '', '', '', 'required', '', 'email', '{\"alert\":\"\"}', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 311, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 5, '', '', '', '', '', '', 'mainbody'),
(8, 311, 'site', 4, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 5, '', '', '', '', '', '', 'mainbody'),
(8, 312, 'admin', 7, '', '', '', '', '', 'confirm', '{\"alert\":\"\",\"field\":\"user_password\"}', '', '', '', '', '', '', '', '', 0, '', 0, 5, '', '', '', '', '', '', 'mainbody'),
(8, 312, 'site', 5, '', '', '', 'required', '', 'confirm', '{\"alert\":\"\",\"field\":\"user_password\"}', '', '', '', '', '', '', '', '', 0, '', 0, 5, '', '', '', '', '', '', 'mainbody'),
(8, 321, 'admin', 20, 'clear', '', '', '', '', '', '', '', '', '', '', '2', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 322, 'admin', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 362, 'admin', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 363, 'admin', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 364, 'admin', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 365, 'admin', 17, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\"}', '', '', '', '', 'mainbody'),
(8, 399, 'admin', 22, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 423, 'admin', 25, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 424, 'admin', 27, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 425, 'admin', 26, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 426, 'admin', 30, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 427, 'admin', 31, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 428, 'admin', 35, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 428, 'site', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 430, 'admin', 37, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 430, 'content', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 430, 'site', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 431, 'admin', 36, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 431, 'site', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 432, 'admin', 38, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 433, 'admin', 39, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 433, 'content', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 433, 'site', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 434, 'admin', 40, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 435, 'admin', 41, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 435, 'content', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 437, 'admin', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 438, 'admin', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\"}', '', '', '', '', 'mainbody'),
(8, 470, 'admin', 28, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 471, 'admin', 29, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 476, 'admin', 3, 'Account', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 476, 'site', 1, 'Account', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 479, 'admin', 21, 'Basic Settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 480, 'admin', 19, 'Assigned User Groups', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 481, 'admin', 43, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 481, 'site', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 487, 'site', 15, 'Save', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 490, 'site', 16, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 491, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"site\",\"action\":\"\",\"form\":\"\",\"author\":\"\"}', '', '', '', '', 'mainbody'),
(8, 498, 'admin', 23, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 498, 'site', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 502, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 502, 'site', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 503, 'admin', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 504, 'admin', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 504, 'site', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 505, 'admin', 24, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 506, 'admin', 32, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 507, 'admin', 42, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 519, 'admin', 2, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 543, 'admin', 33, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', 'user_gender', '{\"states\":[{\"type\":\"isVisible\",\"selector\":\"\",\"revert\":\"1\",\"value\":\"\"},{\"type\":\"isEnabled\",\"selector\":\" #form#\",\"revert\":\"1\",\"value\":\"\"}],\"conditions\":[{\"type\":\"isEqual\",\"trigger\":\"user_gender\",\"value\":\"C\"}],\"rule\":\"and\"}', 'mainbody'),
(8, 544, 'admin', 34, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', 'user_gender', '{\"states\":[{\"type\":\"isVisible\",\"selector\":\"\",\"revert\":\"1\",\"value\":\"\"},{\"type\":\"isEnabled\",\"selector\":\" #form#\",\"revert\":\"1\",\"value\":\"\"}],\"conditions\":[{\"type\":\"isEqual\",\"trigger\":\"user_gender\",\"value\":\"C\"}],\"rule\":\"and\"}', 'mainbody'),
(8, 608, 'admin', 8, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 608, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(11, 389, 'admin', 4, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\"}', '', '', '', '', 'mainbody'),
(11, 390, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 476, 'admin', 2, 'Group', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 481, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 520, 'admin', 1, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 307, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 307, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 319, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 319, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 324, 'admin', 10, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\"}', '', '', '', '', 'mainbody'),
(20, 350, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 350, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 351, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 351, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 352, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 352, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 357, 'admin', 6, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\"}', '', '', '', '', 'mainbody'),
(20, 357, 'site', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 359, 'admin', 7, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\"}', '', '', '', '', 'mainbody'),
(20, 359, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 384, 'admin', 8, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\"}', '', '', '', '', 'mainbody'),
(20, 384, 'site', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 385, 'admin', 9, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\"}', '', '', '', '', 'mainbody'),
(20, 385, 'site', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 320, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 320, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 325, 'admin', 23, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 325, 'site', 21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 330, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 330, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 331, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 331, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 332, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 332, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 333, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 333, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 334, 'admin', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 334, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 335, 'admin', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 335, 'site', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 336, 'admin', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 336, 'site', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 337, 'admin', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 337, 'site', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 338, 'admin', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 338, 'site', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 339, 'admin', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 339, 'site', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 340, 'admin', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 340, 'site', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 341, 'admin', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 341, 'site', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 342, 'admin', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 342, 'site', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 343, 'admin', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 343, 'site', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 344, 'admin', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 344, 'site', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 345, 'admin', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 345, 'site', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 346, 'admin', 20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 346, 'site', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 347, 'admin', 21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 347, 'site', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 356, 'admin', 24, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 356, 'site', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 421, 'admin', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 421, 'site', 20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 514, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 515, 'admin', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 516, 'admin', 25, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 326, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 326, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 327, 'admin', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 327, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 349, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 349, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 353, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 353, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 354, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 354, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 355, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 355, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 436, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 372, 'admin', 6, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\"}', '', '', '', '', 'mainbody'),
(25, 376, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 376, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 386, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 386, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 387, 'admin', 4, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\"}', '', '', '', '', 'mainbody'),
(25, 387, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 388, 'admin', 3, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\"}', '', '', '', '', 'mainbody'),
(25, 388, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 497, 'admin', 5, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\"}', '', '', '', '', 'mainbody'),
(26, 377, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(26, 377, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(26, 378, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(26, 378, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(26, 379, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 380, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 380, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 381, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 381, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 382, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 382, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 383, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 383, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 366, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 366, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 367, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 367, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 368, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 368, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 369, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 369, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 370, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 370, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 371, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 371, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 404, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 404, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 405, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 405, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 406, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 406, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 407, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 407, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 408, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 408, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 409, 'admin', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 409, 'site', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 410, 'admin', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 410, 'site', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 411, 'admin', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 411, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 412, 'admin', 11, '', '', '', '', '', 'url', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 412, 'site', 9, '', '', '', '', '', 'url', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 413, 'admin', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 413, 'site', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 414, 'admin', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 414, 'site', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 415, 'admin', 14, '', '', '', '', '', 'url', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 415, 'site', 12, '', '', '', '', '', 'url', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 416, 'admin', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 416, 'site', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 417, 'admin', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 417, 'site', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 418, 'admin', 17, '', '', '', '', '', 'url', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 418, 'site', 15, '', '', '', '', '', 'url', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 419, 'admin', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 419, 'site', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 420, 'admin', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 420, 'site', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 511, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 512, 'admin', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 513, 'admin', 20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 293, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 293, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 487, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 487, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 488, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 488, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 490, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 490, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 588, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 588, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 589, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 589, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(38, 311, 'admin', 3, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', 'user_password_set,user_password_update', '{\"states\":[{\"type\":\"isVisible\",\"selector\":\"\",\"revert\":\"1\",\"value\":\"slide\"},{\"type\":\"isEnabled\",\"selector\":\" #form#\",\"revert\":\"1\",\"value\":\"\"}],\"conditions\":[{\"type\":\"isEqual\",\"trigger\":\"user_password_set\",\"value\":\"1\"},{\"type\":\"isEqual\",\"trigger\":\"user_password_update\",\"value\":\"1\"}],\"rule\":\"or\"}', 'mainbody'),
(38, 311, 'site', 3, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', 'user_password_set,user_password_update', '{\"states\":[{\"type\":\"isVisible\",\"selector\":\"\",\"revert\":\"1\",\"value\":\"slide\"},{\"type\":\"isEnabled\",\"selector\":\" #form#\",\"revert\":\"1\",\"value\":\"\"}],\"conditions\":[{\"type\":\"isEqual\",\"trigger\":\"user_password_set\",\"value\":\"1\"},{\"type\":\"isEqual\",\"trigger\":\"user_password_update\",\"value\":\"1\"}],\"rule\":\"or\"}', 'mainbody'),
(38, 312, 'admin', 4, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', 'user_password_set,user_password_update', '{\"states\":[{\"type\":\"isVisible\",\"selector\":\"\",\"revert\":\"1\",\"value\":\"slide\"},{\"type\":\"isEnabled\",\"selector\":\" #form#\",\"revert\":\"1\",\"value\":\"\"}],\"conditions\":[{\"type\":\"isEqual\",\"trigger\":\"user_password_set\",\"value\":\"1\"},{\"type\":\"isEqual\",\"trigger\":\"user_password_update\",\"value\":\"1\"}],\"rule\":\"or\"}', 'mainbody'),
(38, 312, 'site', 4, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', 'user_password_set,user_password_update', '{\"states\":[{\"type\":\"isVisible\",\"selector\":\"\",\"revert\":\"1\",\"value\":\"slide\"},{\"type\":\"isEnabled\",\"selector\":\" #form#\",\"revert\":\"1\",\"value\":\"\"}],\"conditions\":[{\"type\":\"isEqual\",\"trigger\":\"user_password_set\",\"value\":\"1\"},{\"type\":\"isEqual\",\"trigger\":\"user_password_update\",\"value\":\"1\"}],\"rule\":\"or\"}', 'mainbody'),
(38, 607, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\",\"form\":\"\",\"author\":\"\"}', '', '', '', '', 'mainbody'),
(38, 607, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"edit\",\"form\":\"\",\"author\":\"\"}', '', '', '', '', 'mainbody'),
(38, 609, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"add\",\"form\":\"\",\"author\":\"\"}', '', '', '', '', 'mainbody'),
(38, 609, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{\"location\":\"\",\"action\":\"add\",\"form\":\"\",\"author\":\"\"}', '', '', '', '', 'mainbody'),
(39, 293, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(39, 293, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(39, 487, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(39, 487, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(39, 490, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(39, 490, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(39, 588, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(39, 588, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(39, 589, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(39, 589, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody');
INSERT INTO `k4hct_cck_core_type_field` (`typeid`, `fieldid`, `client`, `ordering`, `label`, `variation`, `variation_override`, `required`, `required_alert`, `validation`, `validation_options`, `link`, `link_options`, `live`, `live_options`, `live_value`, `markup`, `markup_class`, `typo`, `typo_label`, `typo_options`, `stage`, `access`, `restriction`, `restriction_options`, `computation`, `computation_options`, `conditional`, `conditional_options`, `position`) VALUES
(501, 5002, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5003, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5004, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5005, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5006, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5007, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core_type_position`
--

CREATE TABLE `k4hct_cck_core_type_position` (
  `typeid` int(11) NOT NULL,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `legend` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variation_options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_core_type_position`
--

INSERT INTO `k4hct_cck_core_type_position` (`typeid`, `position`, `client`, `legend`, `variation`, `variation_options`, `width`, `height`, `css`) VALUES
(1, 'clear', 'admin', '', '', '', '', '', ''),
(1, 'clear', 'content', '', '', '', '', '', ''),
(1, 'clear', 'intro', '', '', '', '', '', ''),
(1, 'clear', 'site', '', '', '', '', '', ''),
(1, 'mainbody', 'admin', '', '', '', '', '', ''),
(1, 'mainbody', 'content', '', '', '', '', '', ''),
(1, 'mainbody', 'intro', '', '', '', '', '', ''),
(1, 'mainbody', 'site', '', '', '', '', '', ''),
(5, 'clear', 'admin', '', '', '', '', '', ''),
(5, 'clear', 'content', '', '', '', '', '', ''),
(5, 'clear', 'intro', '', '', '', '', '', ''),
(5, 'clear', 'site', '', '', '', '', '', ''),
(5, 'mainbody', 'admin', '', '', '', '', '', ''),
(5, 'mainbody', 'content', '', '', '', '', '', ''),
(5, 'mainbody', 'intro', '', '', '', '', '', ''),
(5, 'mainbody', 'site', '', '', '', '', '', ''),
(8, 'clear', 'admin', '', '', '', '', '', ''),
(8, 'clear', 'content', '', '', '', '', '', ''),
(8, 'clear', 'intro', '', '', '', '', '', ''),
(8, 'clear', 'site', '', '', '', '', '', ''),
(8, 'mainbody', 'admin', '', '', '', '', '', ''),
(8, 'mainbody', 'content', '', '', '', '', '', ''),
(8, 'mainbody', 'site', '', '', '', '', '', ''),
(11, 'clear', 'admin', '', '', '', '', '', ''),
(11, 'mainbody', 'admin', '', '', '', '', '', ''),
(20, 'clear', 'admin', '', '', '', '', '', ''),
(20, 'hidden', 'site', '', '', '', '', '', ''),
(20, 'mainbody', 'admin', '', '', '', '', '', ''),
(20, 'mainbody', 'site', '', '', '', '', '', ''),
(21, 'clear', 'admin', '', '', '', '', '', ''),
(21, 'hidden', 'site', '', '', '', '', '', ''),
(21, 'mainbody', 'admin', '', '', '', '', '', ''),
(21, 'mainbody', 'site', '', '', '', '', '', ''),
(22, 'clear', 'admin', '', '', '', '', '', ''),
(22, 'hidden', 'site', '', '', '', '', '', ''),
(22, 'mainbody', 'admin', '', '', '', '', '', ''),
(22, 'mainbody', 'site', '', '', '', '', '', ''),
(25, 'clear', 'admin', '', '', '', '', '', ''),
(25, 'hidden', 'site', '', '', '', '', '', ''),
(25, 'mainbody', 'admin', '', '', '', '', '', ''),
(25, 'mainbody', 'site', '', '', '', '', '', ''),
(26, 'clear', 'admin', '', '', '', '', '', ''),
(26, 'hidden', 'site', '', '', '', '', '', ''),
(26, 'mainbody', 'admin', '', '', '', '', '', ''),
(26, 'mainbody', 'site', '', '', '', '', '', ''),
(27, 'debug', 'admin', '', '', '', '', '', ''),
(27, 'hidden', 'site', '', '', '', '', '', ''),
(27, 'mainbody', 'admin', '', '', '', '', '', ''),
(27, 'mainbody', 'site', '', '', '', '', '', ''),
(28, 'debug', 'admin', '', '', '', '', '', ''),
(28, 'hidden', 'site', '', '', '', '', '', ''),
(28, 'mainbody', 'admin', '', '', '', '', '', ''),
(28, 'mainbody', 'site', '', '', '', '', '', ''),
(30, 'clear', 'admin', '', '', '', '', '', ''),
(30, 'hidden', 'site', '', '', '', '', '', ''),
(30, 'mainbody', 'admin', '', '', '', '', '', ''),
(30, 'mainbody', 'site', '', '', '', '', '', ''),
(35, 'clear', 'admin', '', '', '', '', '', ''),
(35, 'clear', 'site', '', '', '', '', '', ''),
(35, 'mainbody', 'admin', '', '', '', '', '', ''),
(35, 'mainbody', 'site', '', '', '', '', '', ''),
(38, 'clear', 'admin', '', '', '', '', '', ''),
(38, 'clear', 'site', '', '', '', '', '', ''),
(38, 'mainbody', 'admin', '', '', '', '', '', ''),
(38, 'mainbody', 'site', '', '', '', '', '', ''),
(39, 'clear', 'admin', '', '', '', '', '', ''),
(39, 'clear', 'site', '', '', '', '', '', ''),
(39, 'mainbody', 'admin', '', '', '', '', '', ''),
(39, 'mainbody', 'site', '', '', '', '', '', ''),
(501, 'clear', 'admin', '', '', '', '', '', ''),
(501, 'mainbody', 'admin', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_core_versions`
--

CREATE TABLE `k4hct_cck_core_versions` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL DEFAULT '0',
  `e_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_version` int(11) NOT NULL DEFAULT '1',
  `e_core` longblob,
  `e_more` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_more1` longblob,
  `e_more2` longblob,
  `e_more3` longblob,
  `e_more4` longblob,
  `e_more5` longblob,
  `date_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(3) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_core_versions`
--

INSERT INTO `k4hct_cck_core_versions` (`id`, `e_id`, `e_title`, `e_name`, `e_type`, `e_version`, `e_core`, `e_more`, `e_more1`, `e_more2`, `e_more3`, `e_more4`, `e_more5`, `date_time`, `user_id`, `featured`, `note`, `published`, `checked_out`, `checked_out_time`) VALUES
(13, 8, 'User', 'user', 'type', 3, 0x7b226964223a2238222c227469746c65223a2255736572222c226e616d65223a2275736572222c22616c696173223a22222c22666f6c646572223a223133222c2274656d706c6174655f61646d696e223a2239222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a226e6f6e65222c227075626c6973686564223a2231222c226f7074696f6e735f61646d696e223a22222c226f7074696f6e735f73697465223a227b5c226d6573736167655f7374796c655c223a5c226d6573736167655c222c5c227265646972656374696f6e5c223a5c2263757272656e745c222c5c226d6573736167655c223a5c225c222c5c227265646972656374696f6e5f6974656d69645c223a5c225c222c5c227265646972656374696f6e5f75726c5c223a5c225c222c5c22646174615f696e746567726974795f6578636c756465645c223a5c225c222c5c2273686f775f666f726d5f7469746c655c223a5c22315c222c5c227461675f666f726d5f7469746c655c223a5c2268315c222c5c22636c6173735f666f726d5f7469746c655c223a5c225c222c5c2273686f775f666f726d5f646573635c223a5c22315c222c5c226d6573736167655f7374796c655f6e6f5f6163636573735c223a5c226572726f725c222c5c22616374696f6e5f6e6f5f6163636573735c223a5c227265646972656374696f6e5c222c5c226d6573736167655f6e6f5f6163636573735c223a5c225c222c5c227265646972656374696f6e5f75726c5f6e6f5f6163636573735c223a5c22696e6465782e7068703f6f7074696f6e3d636f6d5f757365727326766965773d6c6f67696e5c222c5c227374616765735c223a5c22315c222c5c2276616c69646174696f6e5f706f736974696f6e5c223a5c225c222c5c2276616c69646174696f6e5f7363726f6c6c5c223a5c225c222c5c2276616c69646174696f6e5f636f6c6f725c223a5c225c222c5c2276616c69646174696f6e5f6261636b67726f756e645f636f6c6f725c223a5c225c227d222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c22706172656e74223a22222c2273746f726167655f6c6f636174696f6e223a226a6f6f6d6c615f75736572222c227374796c65736865657473223a22222c2276657273696f6e223a31302c22636865636b65645f6f7574223a2230222c22636865636b65645f6f75745f74696d65223a22303030302d30302d30302030303a30303a3030222c22616363657373223a2233222c22637265617465645f64617465223a22303030302d30302d30302030303a30303a3030222c22637265617465645f757365725f6964223a2230222c226d6f6469666965645f64617465223a22323031362d30382d32352031343a33363a3236222c226d6f6469666965645f757365725f6964223a22313235222c2261737365745f6964223a223931227d, '{\"fields\":{\"1\":\"42\",\"2\":\"22\",\"3\":\"0\",\"4\":\"4\"}}', 0x7b226669656c6473223a5b7b22747970656964223a2238222c226669656c646964223a22353139222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343736222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2232222c226c6162656c223a224163636f756e74222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22353032222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22207370616e36222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333039222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333131222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2235222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333132222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22636f6e6669726d222c2276616c69646174696f6e5f6f7074696f6e73223a227b5c22616c6572745c223a5c225c222c5c226669656c645c223a5c22757365725f70617373776f72645c227d222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2235222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22363038222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2237222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a226e6f6e65222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2232222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333130222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2238222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22656d61696c222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333634222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2239222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333232222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223130222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22353033222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223131222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22207370616e36222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333632222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223132222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333633222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223133222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343337222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223134222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343338222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223135222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a2263636b5f776f726b666c6f77222c227265737472696374696f6e5f6f7074696f6e73223a227b5c226c6f636174696f6e5c223a5c225c222c5c22616374696f6e5c223a5c22656469745c227d222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333635222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223136222c226c6162656c223a22222c22766172696174696f6e223a2276616c7565222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a2263636b5f776f726b666c6f77222c227265737472696374696f6e5f6f7074696f6e73223a227b5c226c6f636174696f6e5c223a5c225c222c5c22616374696f6e5c223a5c22656469745c227d222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22353034222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223137222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343830222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223138222c226c6162656c223a2241737369676e656420557365722047726f757073222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333231222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223139222c226c6162656c223a22636c656172222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a2232222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343739222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223230222c226c6162656c223a2242617369632053657474696e6773222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333939222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223231222c226c6162656c223a22636c656172222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343938222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22353035222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22207370616e36222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343233222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343235222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343234222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343730222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223237222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343731222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223238222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343236222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223239222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343237222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223330222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22353036222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223331222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22207370616e36222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22353433222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223332222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22757365725f67656e646572222c22636f6e646974696f6e616c5f6f7074696f6e73223a227b5c227374617465735c223a5b7b5c22747970655c223a5c22697356697369626c655c222c5c2273656c6563746f725c223a5c225c222c5c227265766572745c223a5c22315c222c5c2276616c75655c223a5c225c227d2c7b5c22747970655c223a5c226973456e61626c65645c222c5c2273656c6563746f725c223a5c222023666f726d235c222c5c227265766572745c223a5c22315c222c5c2276616c75655c223a5c225c227d5d2c5c22636f6e646974696f6e735c223a5b7b5c22747970655c223a5c226973457175616c5c222c5c22747269676765725c223a5c22757365725f67656e6465725c222c5c2276616c75655c223a5c22435c227d5d2c5c2272756c655c223a5c22616e645c227d222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22353434222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223333222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22757365725f67656e646572222c22636f6e646974696f6e616c5f6f7074696f6e73223a227b5c227374617465735c223a5b7b5c22747970655c223a5c22697356697369626c655c222c5c2273656c6563746f725c223a5c225c222c5c227265766572745c223a5c22315c222c5c2276616c75655c223a5c225c227d2c7b5c22747970655c223a5c226973456e61626c65645c222c5c2273656c6563746f725c223a5c222023666f726d235c222c5c227265766572745c223a5c22315c222c5c2276616c75655c223a5c225c227d5d2c5c22636f6e646974696f6e735c223a5b7b5c22747970655c223a5c226973457175616c5c222c5c22747269676765725c223a5c22757365725f67656e6465725c222c5c2276616c75655c223a5c22435c227d5d2c5c2272756c655c223a5c22616e645c227d222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343238222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223334222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343330222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223335222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343331222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223336222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343332222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223337222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343333222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223338222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343334222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223339222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343335222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223430222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22353037222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223431222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343831222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223432222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a2238222c22706f736974696f6e223a22636c656172222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2238222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a2238222c226669656c646964223a22343736222c22636c69656e74223a2273697465222c226f72646572696e67223a2231222c226c6162656c223a224163636f756e74222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2232222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343233222c22636c69656e74223a2273697465222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22353433222c22636c69656e74223a2273697465222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22757365725f67656e646572222c22636f6e646974696f6e616c5f6f7074696f6e73223a227b5c227374617465735c223a5b7b5c22747970655c223a5c22697356697369626c655c222c5c2273656c6563746f725c223a5c225c222c5c227265766572745c223a5c22315c222c5c2276616c75655c223a5c225c227d2c7b5c22747970655c223a5c226973456e61626c65645c222c5c2273656c6563746f725c223a5c222023666f726d235c222c5c227265766572745c223a5c22315c222c5c2276616c75655c223a5c225c227d5d2c5c22636f6e646974696f6e735c223a5b7b5c22747970655c223a5c226973457175616c5c222c5c22747269676765725c223a5c22757365725f67656e6465725c222c5c2276616c75655c223a5c22435c227d5d2c5c2272756c655c223a5c22616e645c227d222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22353434222c22636c69656e74223a2273697465222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22757365725f67656e646572222c22636f6e646974696f6e616c5f6f7074696f6e73223a227b5c227374617465735c223a5b7b5c22747970655c223a5c22697356697369626c655c222c5c2273656c6563746f725c223a5c225c222c5c227265766572745c223a5c22315c222c5c2276616c75655c223a5c22736c6964655c227d2c7b5c22747970655c223a5c226973456e61626c65645c222c5c2273656c6563746f725c223a5c222023666f726d235c222c5c227265766572745c223a5c22315c222c5c2276616c75655c223a5c225c227d5d2c5c22636f6e646974696f6e735c223a5b7b5c22747970655c223a5c226973457175616c5c222c5c22747269676765725c223a5c22757365725f67656e6465725c222c5c2276616c75655c223a5c22435c227d5d2c5c2272756c655c223a5c22616e645c227d222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343234222c22636c69656e74223a2273697465222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343235222c22636c69656e74223a2273697465222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333130222c22636c69656e74223a2273697465222c226f72646572696e67223a2237222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22656d61696c222c2276616c69646174696f6e5f6f7074696f6e73223a227b5c22616c6572745c223a5c225c227d222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333131222c22636c69656e74223a2273697465222c226f72646572696e67223a2238222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2235222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333132222c22636c69656e74223a2273697465222c226f72646572696e67223a2239222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22636f6e6669726d222c2276616c69646174696f6e5f6f7074696f6e73223a227b5c22616c6572745c223a5c225c222c5c226669656c645c223a5c22757365725f70617373776f72645c227d222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2235222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22363038222c22636c69656e74223a2273697465222c226f72646572696e67223a223130222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a226e6f6e65222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2232222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343938222c22636c69656e74223a2273697465222c226f72646572696e67223a223131222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2232222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343238222c22636c69656e74223a2273697465222c226f72646572696e67223a223132222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2232222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343330222c22636c69656e74223a2273697465222c226f72646572696e67223a223133222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2232222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343331222c22636c69656e74223a2273697465222c226f72646572696e67223a223134222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2232222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343333222c22636c69656e74223a2273697465222c226f72646572696e67223a223135222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2232222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343831222c22636c69656e74223a2273697465222c226f72646572696e67223a223136222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2232222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22353032222c22636c69656e74223a2273697465222c226f72646572696e67223a223137222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a222062746e2d746f6f6c626172222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343837222c22636c69656e74223a2273697465222c226f72646572696e67223a223138222c226c6162656c223a2253617665222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a226e6f6e65222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343930222c22636c69656e74223a2273697465222c226f72646572696e67223a223139222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a226e6f6e65222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22353034222c22636c69656e74223a2273697465222c226f72646572696e67223a223230222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333038222c22636c69656e74223a2273697465222c226f72646572696e67223a223231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a2223757365725f66697273745f6e616d652c23757365725f6c6173745f6e616d65222c22636f6d7075746174696f6e5f6f7074696f6e73223a227b5c2263616c635c223a5c22636f6e636174656e6174655c222c5c22637573746f6d5c223a5c225c222c5c22726563616c635c223a5c22676c6f62616c5c222c5c226576656e745c223a5c226368616e67655c222c5c226669656c64735c223a5b5c22757365725f66697273745f6e616d655c222c5c22757365725f6c6173745f6e616d655c225d2c5c22746172676574735c223a5b5c225c222c5c225c225d2c5c226576656e74735c223a5b5c225c222c5c225c225d2c5c22666f726d61745c223a5c225c227d222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a2268696464656e227d2c7b22747970656964223a2238222c226669656c646964223a22333039222c22636c69656e74223a2273697465222c226f72646572696e67223a223232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22757365725f656d61696c222c22636f6e646974696f6e616c5f6f7074696f6e73223a227b5c227374617465735c223a5b7b5c22747970655c223a5c22697346696c6c656442795c222c5c2273656c6563746f725c223a5c222023666f726d235c222c5c227265766572745c223a5c22315c222c5c2276616c75655c223a5c22757365725f656d61696c5c227d5d2c5c22636f6e646974696f6e735c223a5b7b5c22747970655c223a5c2269734368616e6765645c222c5c22747269676765725c223a5c22757365725f656d61696c5c222c5c2276616c75655c223a5c225c227d5d2c5c2272756c655c223a5c22616e645c227d222c22706f736974696f6e223a2268696464656e227d5d2c22706f736974696f6e73223a5b7b22747970656964223a2238222c22706f736974696f6e223a22636c656172222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2238222c22706f736974696f6e223a2268696464656e222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2238222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b7b22747970656964223a2238222c22706f736974696f6e223a22636c656172222c22636c69656e74223a22696e74726f222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a2238222c226669656c646964223a22333038222c22636c69656e74223a22636f6e74656e74222c226f72646572696e67223a2231222c226c6162656c223a22636c656172222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343330222c22636c69656e74223a22636f6e74656e74222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343333222c22636c69656e74223a22636f6e74656e74222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22343335222c22636c69656e74223a22636f6e74656e74222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a2238222c22706f736974696f6e223a22636c656172222c22636c69656e74223a22636f6e74656e74222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2238222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a22636f6e74656e74222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, NULL, '2016-08-25 14:36:42', 125, 0, 'Better User (work-in-progress)', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `k4hct_cck_core_versions` (`id`, `e_id`, `e_title`, `e_name`, `e_type`, `e_version`, `e_core`, `e_more`, `e_more1`, `e_more2`, `e_more3`, `e_more4`, `e_more5`, `date_time`, `user_id`, `featured`, `note`, `published`, `checked_out`, `checked_out_time`) VALUES
(500, 0, '', '', '', 1, NULL, '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 0, 0, '', -44, 0, '0000-00-00 00:00:00'),
(501, 501, 'Clientes', 'clientes', 'search', 1, 0x7b226964223a22353031222c227469746c65223a22436c69656e746573222c226e616d65223a22636c69656e746573222c22616c696173223a22222c22666f6c646572223a2231222c22636f6e74656e74223a2231222c2274656d706c6174655f736561726368223a223136222c2274656d706c6174655f66696c746572223a223130222c2274656d706c6174655f6c697374223a2239222c2274656d706c6174655f6974656d223a223130222c226465736372697074696f6e223a22222c22616363657373223a2231222c227075626c6973686564223a2231222c226f7074696f6e73223a227b5c226c696d69745c223a5c22305c222c5c22636f756e745c223a5c22305c222c5c2263616368655c223a5c22305c222c5c2263616368655f7065725f757365725c223a5c22305c222c5c227374616765735f6f7074696f6e616c5c223a5c225c222c5c226361636865325c223a5c22305c222c5c22706167696e6174696f6e5c223a5c225c222c5c2264656275675c223a5c225c222c5c2270657273697374656e745f71756572795c223a5c22305c222c5c22707265706172655f636f6e74656e745c223a5c225c222c5c227365665c223a5c225c222c5c227365665f63616e6f6e6963616c5c223a5c225c222c5c226175746f5f72656469726563745c223a5c22305c222c5c226f72646572696e675c223a5c225c222c5c2273686f775f6c6973745f7469746c655c223a5c22315c222c5c227461675f6c6973745f7469746c655c223a5c2268315c222c5c22636c6173735f6c6973745f7469746c655c223a5c225c222c5c2273686f775f6c6973745f646573635c223a5c22315c222c5c2273686f775f6c6973745c223a5c22315c222c5c2273686f775f666f726d5c223a5c22315c222c5c2273686f775f6974656d735f6e756d6265725c223a5c22305c222c5c226c6162656c5f6974656d735f6e756d6265725c223a5c22526573756c74735c222c5c22636c6173735f6974656d735f6e756d6265725c223a5c22746f74616c5c222c5c2273686f775f70616765735f6e756d6265725c223a5c22305c222c5c2273686f775f706167696e6174696f6e5c223a5c22305c222c5c22636c6173735f706167696e6174696f6e5c223a5c22706167696e6174696f6e5c222c5c226c6162656c5f706167696e6174696f6e5c223a5c225c222c5c2263616c6c6261636b5f706167696e6174696f6e5c223a5c225c222c5c226d6573736167655f7374796c655f6e6f5f6163636573735c223a5c226572726f725c222c5c22616374696f6e5f6e6f5f6163636573735c223a5c227265646972656374696f6e5c222c5c226d6573736167655f6e6f5f6163636573735c223a5c225c222c5c227265646972656374696f6e5f75726c5f6e6f5f6163636573735c223a5c22696e6465782e7068703f6f7074696f6e3d636f6d5f757365727326766965773d6c6f67696e5c222c5c226d6573736167655f7374796c655c223a5c226d6573736167655c222c5c22616374696f6e5c223a5c22305c222c5c226d6573736167655c223a5c225c222c5c2273686f775f6c6973745f646573635f6e6f5f726573756c745c223a5c22315c222c5c226d6573736167655f7374796c655f6e6f5f7365617263685c223a5c22305c222c5c22616374696f6e5f6e6f5f7365617263685c223a5c22305c222c5c226d6573736167655f6e6f5f7365617263685c223a5c225c222c5c226c6f61645f7265736f757263655c223a5c22305c222c5c22746d706c5f7265736f757263655c223a5c225c222c5c226a736f6e5f7265736f757263655c223a5c225c222c5c2276616c69646174696f6e5f706f736974696f6e5c223a5c225c222c5c2276616c69646174696f6e5f7363726f6c6c5c223a5c225c222c5c2276616c69646174696f6e5f636f6c6f725c223a5c225c222c5c2276616c69646174696f6e5f6261636b67726f756e645f636f6c6f725c223a5c225c227d222c226c6f636174696f6e223a22222c227365665f726f757465223a22636c69656e74655f6c697374222c227365665f726f7574655f616c6961736573223a2230222c2273746f726167655f6c6f636174696f6e223a2266726565222c227374796c65736865657473223a22222c2276657273696f6e223a2231222c22636865636b65645f6f7574223a22353331222c22636865636b65645f6f75745f74696d65223a22323031382d30392d31372031323a35363a3533227d, '{\"fields\":{\"1\":\"1\",\"2\":\"0\",\"3\":\"0\",\"4\":\"0\",\"5\":\"0\"}}', 0x7b226669656c6473223a5b7b227365617263686964223a22353031222c226669656c646964223a2231222c22636c69656e74223a22736561726368222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a2268696464656e222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22636c69656e74655f6c697374222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c226d617463685f636f6c6c656374696f6e223a22222c226d617463685f6d6f6465223a226578616374222c226d617463685f6f7074696f6e73223a22222c226d617463685f76616c7565223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b227365617263686964223a22353031222c22706f736974696f6e223a22636c656172222c22636c69656e74223a22736561726368222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b227365617263686964223a22353031222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a22736561726368222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d2c2274656d706c6174655f7374796c65223a7b2272656e646572696e675f6974656d5f61747472696275746573223a22222c2272656e646572696e675f6373735f636c617373223a22222c226669656c645f6c6162656c223a2231222c226669656c645f6465736372697074696f6e223a2230222c22766172696174696f6e5f64656661756c74223a22222c22706f736974696f6e5f666f7263655f686569676874223a2231222c22706f736974696f6e5f6d617267696e223a2238222c22706f736974696f6e5f686561646572223a2230222c22706f736974696f6e5f6865616465725f766172696174696f6e223a22222c22706f736974696f6e5f6c656674223a2230222c22706f736974696f6e5f6c6566745f766172696174696f6e223a22222c22706f736974696f6e5f746f70223a2231222c22706f736974696f6e5f746f705f766172696174696f6e223a22222c22706f736974696f6e5f73696465626f64795f61223a2230222c22706f736974696f6e5f73696465626f64795f62223a2230222c22706f736974696f6e5f626f74746f6d223a2231222c22706f736974696f6e5f626f74746f6d5f766172696174696f6e223a22222c22706f736974696f6e5f7269676874223a22343030222c22706f736974696f6e5f72696768745f766172696174696f6e223a22222c22706f736974696f6e5f666f6f746572223a2230222c22706f736974696f6e5f666f6f7465725f766172696174696f6e223a22222c226465627567223a2230227d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d2c2274656d706c6174655f7374796c65223a6e756c6c7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d2c2274656d706c6174655f7374796c65223a6e756c6c7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d2c2274656d706c6174655f7374796c65223a6e756c6c7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d2c2274656d706c6174655f7374796c65223a22227d, '2018-09-17 12:58:38', 531, 0, '', 1, 0, '0000-00-00 00:00:00'),
(502, 509, 'Lista Clientes', 'lista_clientes', 'search', 1, 0x7b226964223a22353039222c227469746c65223a224c6973746120436c69656e746573222c226e616d65223a226c697374615f636c69656e746573222c22616c696173223a22222c22666f6c646572223a2231222c22636f6e74656e74223a2231222c2274656d706c6174655f736561726368223a223231222c2274656d706c6174655f66696c746572223a223130222c2274656d706c6174655f6c697374223a2239222c2274656d706c6174655f6974656d223a223130222c226465736372697074696f6e223a22222c22616363657373223a2231222c227075626c6973686564223a2231222c226f7074696f6e73223a227b5c226c696d69745c223a5c22305c222c5c22636f756e745c223a5c22305c222c5c2263616368655c223a5c22305c222c5c2263616368655f7065725f757365725c223a5c22305c222c5c227374616765735f6f7074696f6e616c5c223a5c225c222c5c226361636865325c223a5c22305c222c5c22706167696e6174696f6e5c223a5c225c222c5c2264656275675c223a5c225c222c5c2270657273697374656e745f71756572795c223a5c22305c222c5c22707265706172655f636f6e74656e745c223a5c225c222c5c227365665c223a5c225c222c5c227365665f63616e6f6e6963616c5c223a5c225c222c5c226175746f5f72656469726563745c223a5c22305c222c5c226f72646572696e675c223a5c225c222c5c2273686f775f6c6973745f7469746c655c223a5c22315c222c5c227461675f6c6973745f7469746c655c223a5c2268315c222c5c22636c6173735f6c6973745f7469746c655c223a5c225c222c5c2273686f775f6c6973745f646573635c223a5c22315c222c5c2273686f775f6c6973745c223a5c22315c222c5c2273686f775f666f726d5c223a5c22315c222c5c2273686f775f6974656d735f6e756d6265725c223a5c22305c222c5c226c6162656c5f6974656d735f6e756d6265725c223a5c22526573756c74735c222c5c22636c6173735f6974656d735f6e756d6265725c223a5c22746f74616c5c222c5c2273686f775f70616765735f6e756d6265725c223a5c22305c222c5c2273686f775f706167696e6174696f6e5c223a5c22305c222c5c22636c6173735f706167696e6174696f6e5c223a5c22706167696e6174696f6e5c222c5c226c6162656c5f706167696e6174696f6e5c223a5c225c222c5c2263616c6c6261636b5f706167696e6174696f6e5c223a5c225c222c5c226d6573736167655f7374796c655f6e6f5f6163636573735c223a5c226572726f725c222c5c22616374696f6e5f6e6f5f6163636573735c223a5c227265646972656374696f6e5c222c5c226d6573736167655f6e6f5f6163636573735c223a5c225c222c5c227265646972656374696f6e5f75726c5f6e6f5f6163636573735c223a5c22696e6465782e7068703f6f7074696f6e3d636f6d5f757365727326766965773d6c6f67696e5c222c5c226d6573736167655f7374796c655c223a5c226d6573736167655c222c5c22616374696f6e5c223a5c22305c222c5c226d6573736167655c223a5c225c222c5c2273686f775f6c6973745f646573635f6e6f5f726573756c745c223a5c22315c222c5c226d6573736167655f7374796c655f6e6f5f7365617263685c223a5c22305c222c5c22616374696f6e5f6e6f5f7365617263685c223a5c22305c222c5c226d6573736167655f6e6f5f7365617263685c223a5c225c222c5c226c6f61645f7265736f757263655c223a5c22305c222c5c22746d706c5f7265736f757263655c223a5c225c222c5c226a736f6e5f7265736f757263655c223a5c225c222c5c2276616c69646174696f6e5f706f736974696f6e5c223a5c225c222c5c2276616c69646174696f6e5f7363726f6c6c5c223a5c225c222c5c2276616c69646174696f6e5f636f6c6f725c223a5c225c222c5c2276616c69646174696f6e5f6261636b67726f756e645f636f6c6f725c223a5c225c227d222c226c6f636174696f6e223a22222c227365665f726f757465223a22636c69656e74655f6c697374222c227365665f726f7574655f616c6961736573223a2230222c2273746f726167655f6c6f636174696f6e223a2266726565222c227374796c65736865657473223a22222c2276657273696f6e223a2231222c22636865636b65645f6f7574223a22353331222c22636865636b65645f6f75745f74696d65223a22323031382d30392d31372031333a31323a3035227d, '{\"fields\":{\"1\":\"1\",\"2\":\"0\",\"3\":\"0\",\"4\":\"0\",\"5\":\"0\"}}', 0x7b226669656c6473223a5b7b227365617263686964223a22353039222c226669656c646964223a2231222c22636c69656e74223a22736561726368222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a2268696464656e222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22636c69656e74655f6c697374222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c226d617463685f636f6c6c656374696f6e223a22222c226d617463685f6d6f6465223a226578616374222c226d617463685f6f7074696f6e73223a22222c226d617463685f76616c7565223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b227365617263686964223a22353039222c22706f736974696f6e223a22636c656172222c22636c69656e74223a22736561726368222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b227365617263686964223a22353039222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a22736561726368222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d2c2274656d706c6174655f7374796c65223a7b2272656e646572696e675f6974656d5f61747472696275746573223a22222c2272656e646572696e675f6373735f636c617373223a22222c226669656c645f6c6162656c223a2231222c226669656c645f6465736372697074696f6e223a2230222c22766172696174696f6e5f64656661756c74223a22222c22706f736974696f6e5f666f7263655f686569676874223a2231222c22706f736974696f6e5f6d617267696e223a2238222c22706f736974696f6e5f686561646572223a2230222c22706f736974696f6e5f6865616465725f766172696174696f6e223a22222c22706f736974696f6e5f6c656674223a2230222c22706f736974696f6e5f6c6566745f766172696174696f6e223a22222c22706f736974696f6e5f746f70223a2231222c22706f736974696f6e5f746f705f766172696174696f6e223a22222c22706f736974696f6e5f73696465626f64795f61223a2230222c22706f736974696f6e5f73696465626f64795f62223a2230222c22706f736974696f6e5f626f74746f6d223a2231222c22706f736974696f6e5f626f74746f6d5f766172696174696f6e223a22222c22706f736974696f6e5f7269676874223a22343030222c22706f736974696f6e5f72696768745f766172696174696f6e223a22222c22706f736974696f6e5f666f6f746572223a2230222c22706f736974696f6e5f666f6f7465725f766172696174696f6e223a22222c226465627567223a2230227d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d2c2274656d706c6174655f7374796c65223a6e756c6c7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d2c2274656d706c6174655f7374796c65223a6e756c6c7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d2c2274656d706c6174655f7374796c65223a6e756c6c7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d2c2274656d706c6174655f7374796c65223a22227d, '2018-09-17 13:13:22', 531, 0, '', 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_more_countries`
--

CREATE TABLE `k4hct_cck_more_countries` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_fr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_de` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_es` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_uk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code2` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code3` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_more_countries`
--

INSERT INTO `k4hct_cck_more_countries` (`id`, `name_en`, `name_fr`, `name_de`, `name_ru`, `name_es`, `name_it`, `name_uk`, `code2`, `code3`) VALUES
(1, 'Afghanistan', 'Afghanistan', 'Afghanistan', 'Афганистан', 'Afganistán', 'Afghanistan', 'Афганістан', 'AF', 'AFG'),
(2, 'Aland Islands', 'Åland, îles', 'Åland', 'Аландские острова', 'Åland, Islas', 'Åland, Isole', 'Аландські острови', 'AX', 'ALA'),
(3, 'Albania', 'Albanie', 'Albanien', 'Албания', 'Albania', 'Albania', 'Албанія', 'AL', 'ALB'),
(4, 'Algeria', 'Algérie', 'Algerien', 'Алжир', 'Argelia', 'Algeria', 'Алжир', 'DZ', 'DZA'),
(5, 'American Samoa', 'Samoa américaines', 'Amerikanisch Samoa', 'Американское Самоа', 'Samoa Americana', 'Samoa Americane', 'Американське Самоа', 'AS', 'ASM'),
(6, 'Andorra', 'Andorre', 'Andorra', 'Андорра', 'Andorra', 'Andorra', 'Андорра', 'AD', 'AND'),
(7, 'Angola', 'Angola', 'Angola', 'Ангола', 'Angola', 'Angola', 'Ангола', 'AO', 'AGO'),
(8, 'Anguilla', 'Anguilla', 'Anguilla', 'Ангилья', 'Anguila', 'Anguilla', 'Ангілья', 'AI', 'AIA'),
(9, 'Antarctica', 'Antarctique', 'Antarktis', 'Антарктида', 'Antártida', 'Antartide', 'Антарктида', 'AQ', 'ATA'),
(10, 'Antigua and Barbuda', 'Antigua-et-barbuda', 'Antigua und Barbuda', 'Антигуа и Барбуда', 'Antigua y Barbuda', 'Antigua e Barbuda', 'Антигуа і Барбуда', 'AG', 'ATG'),
(11, 'Argentina', 'Argentine', 'Argentinien', 'Аргентина', 'Argentina', 'Argentina', 'Аргентина', 'AR', 'ARG'),
(12, 'Armenia', 'Arménie', 'Armenien', 'Армения', 'Armenia', 'Armenia', 'Вірменія', 'AM', 'ARM'),
(13, 'Aruba', 'Aruba', 'Aruba', 'Аруба', 'Aruba', 'Aruba', 'Аруба', 'AW', 'ABW'),
(14, 'Australia', 'Australie', 'Australien', 'Австралия', 'Australia', 'Australia', 'Австралія', 'AU', 'AUS'),
(15, 'Austria', 'Autriche', 'Österreich', 'Австрия', 'Austria', 'Austria', 'Австрія', 'AT', 'AUT'),
(16, 'Azerbaijan', 'Azerbaïdjan', 'Aserbaidschan', 'Азербайджан', 'Azerbaiyán', 'Azerbaigian', 'Азербайджан', 'AZ', 'AZE'),
(17, 'Bahamas', 'Bahamas', 'Bahamas', 'Багамские острова', 'Bahamas', 'Bahamas', 'Багамські острови', 'BS', 'BHS'),
(18, 'Bahrain', 'Bahreïn', 'Bahrain', 'Бахрейн', 'Bahrein', 'Bahrein', 'Бахрейн', 'BH', 'BHR'),
(19, 'Bangladesh', 'Bangladesh', 'Bangladesch', 'Бангладеш', 'Bangladesh', 'Bangladesh', 'Бангладеш', 'BD', 'BGD'),
(20, 'Barbados', 'Barbade', 'Barbados', 'Барбадос', 'Barbados', 'Barbados', 'Барбадос', 'BB', 'BRB'),
(21, 'Belarus', 'Bélarus', 'Weißrussland', 'Беларусь', 'Belarús', 'Bielorussia', 'Білорусь', 'BY', 'BLR'),
(22, 'Belgium', 'Belgique', 'Belgien', 'Бельгия', 'Bélgica', 'Belgio', 'Бельгія', 'BE', 'BEL'),
(23, 'Belize', 'Belize', 'Belize', 'Белиз', 'Belice', 'Belize', 'Беліз', 'BZ', 'BLZ'),
(24, 'Benin', 'Bénin', 'Benin', 'Бенин', 'Benín', 'Benin', 'Бенін', 'BJ', 'BEN'),
(25, 'Bermuda', 'Bermudes', 'Bermuda', 'Бермудские острова', 'Bermuda', 'Bermuda', 'Бермудські Острови', 'BM', 'BMU'),
(26, 'Bhutan', 'Bhoutan', 'Bhutan', 'Бутан', 'Bhután', 'Bhutan', 'Бутан', 'BT', 'BTN'),
(27, 'Bolivia, Plurinational State of', 'Bolivie, l\'état plurinational de', 'Bolivien', 'Боливия', 'Bolivia, Estado Plurinacional de', 'Bolivia', 'Болівія', 'BO', 'BOL'),
(28, 'Bosnia and Herzegovina', 'Bosnie-herzégovine', 'Bosnien und Herzegowina', 'Босния и Герцеговина', 'Bosnia y Herzegovina', 'Bosnia ed Erzegovina', 'Боснія та Герцеговина', 'BA', 'BIH'),
(29, 'Botswana', 'Botswana', 'Botsuana', 'Ботсвана', 'Botswana', 'Botswana', 'Ботсвана', 'BW', 'BWA'),
(30, 'Bouvet Island', 'Bouvet, île', 'Bouvetinsel', 'Остров Буве', 'Bouvet, Isla', 'Bouvet, Isola', 'Острів Буве', 'BV', 'BVT'),
(31, 'Brazil', 'Brésil', 'Brasilien', 'Бразилия', 'Brasil', 'Brasile', 'Бразилія', 'BR', 'BRA'),
(32, 'British Indian Ocean Territory', 'Océan indien, territoire britannique de l\'', 'Britische Territorien im Indischen Ozean', 'Британская Территория В Индийском Океане', 'Territorio Británico del Océano Índico', 'Territorio britannico dell\'Oceano indiano', 'Британська територія в Індійському океані', 'IO', 'IOT'),
(33, 'Brunei Darussalam', 'Brunéi darussalam', 'Brunei Darussalam', 'Бруней', 'Brunei Darussalam', 'Brunei Darussalam', 'Бруней', 'BN', 'BRN'),
(34, 'Bulgaria', 'Bulgarie', 'Bulgarien', 'Болгария', 'Bulgaria', 'Bulgaria', 'Болгарія', 'BG', 'BGR'),
(35, 'Burkina Faso', 'Burkina faso', 'Burkina Faso', 'Буркина-Фасо', 'Burkina Faso', 'Burkina Faso', 'Буркіна Фасо', 'BF', 'BFA'),
(36, 'Burundi', 'Burundi', 'Burundi', 'Бурунди', 'Burundi', 'Burundi', 'Бурунді', 'BI', 'BDI'),
(37, 'Cambodia', 'Cambodge', 'Kambodscha', 'Камбоджа', 'Camboya', 'Cambogia', 'Камбоджа', 'KH', 'KHM'),
(38, 'Cameroon', 'Cameroun', 'Kamerun', 'Камерун', 'Camerún', 'Camerun', 'Камерун', 'CM', 'CMR'),
(39, 'Canada', 'Canada', 'Kanada', 'Канада', 'Canadá', 'Canada', 'Канада', 'CA', 'CAN'),
(40, 'Cape Verde', 'Cap-vert', 'Kap Verde', 'Кабо Верде', 'Cabo Verde', 'Capo Verde', 'Кабо-Верде', 'CV', 'CPV'),
(41, 'Cayman Islands', 'Caïmanes, îles', 'Kaimaninseln', 'Каймановы острова', 'Islas Caimán', 'Cayman, Isole', 'Кайманові острови', 'KY', 'CYM'),
(42, 'Central African Republic', 'Centrafricaine, république', 'Zentralafrikanische Republik', 'Центральноафриканская Республика', 'Centroafricana, República', 'Repubblica Centrafricana', 'Центральноафриканська Республіка', 'CF', 'CAF'),
(43, 'Chad', 'Tchad', 'Tschad', 'Чад', 'Chad', 'Ciad', 'Чад', 'TD', 'TCD'),
(44, 'Chile', 'Chili', 'Chile', 'Чили', 'Chile', 'Cile', 'Чилі', 'CL', 'CHL'),
(45, 'China', 'Chine', 'China', 'Китай', 'China', 'Cina', 'Китай', 'CN', 'CHN'),
(46, 'Christmas Island', 'Christmas, île', 'Weihnachtsinsel', 'Остров Рождества', 'Christmas, Isla', 'Christmas, Isola', 'Острів Різдва', 'CX', 'CXR'),
(47, 'Cocos (Keeling) Islands', 'Cocos (keeling), îles', 'Kokosinseln', 'Кокосовые Острова', 'Cocos, Islas', 'Cocos (Keeling), Isole', 'Кокосові острови (Кілінг)', 'CC', 'CCK'),
(48, 'Colombia', 'Colombie', 'Kolumbien', 'Колумбия', 'Colombia', 'Colombia', 'Колумбія', 'CO', 'COL'),
(49, 'Comoros', 'Comores', 'Komoren', 'Коморские острова', 'Comoras', 'Comore', 'Коморські острови', 'KM', 'COM'),
(50, 'Congo', 'Congo', 'Kongo', 'Конго', 'Congo', 'Congo', 'Республіка Конго', 'CG', 'COG'),
(51, 'Congo, the Democratic Republic of the', 'Congo, la république démocratique du', 'Kongo, Dem. Rep.', 'Конго, Демократическая республика', 'Congo,la República Democrática del', 'Congo, Repubblica Democratica', 'Демократична Республіка Конго', 'CD', 'COD'),
(52, 'Cook Islands', 'Cook, îles', 'Cookinseln', 'Острова Кука', 'Cook, Islas', 'Cook, Isole', 'Острови Кука', 'CK', 'COK'),
(53, 'Costa Rica', 'Costa rica', 'Costa Rica', 'Коста-Рика', 'Costa Rica', 'Costa Rica', 'Коста-Ріка', 'CR', 'CRI'),
(54, 'Cote d\'Ivoire', 'Côte d\'ivoire', 'Elfenbeinküste', 'Кот-д\'Ивуар', 'Costa de Marfil', 'Costa d\'Avorio', 'Кот-д\'Івуар', 'CI', 'CIV'),
(55, 'Croatia', 'Croatie', 'Kroatien', 'Хорватия', 'Croacia', 'Croazia', 'Хорватія', 'HR', 'HRV'),
(56, 'Cuba', 'Cuba', 'Kuba', 'Куба', 'Cuba', 'Cuba', 'Куба', 'CU', 'CUB'),
(57, 'Cyprus', 'Chypre', 'Zypern', 'Кипр', 'Chipre', 'Cipro', 'Кіпр', 'CY', 'CYP'),
(58, 'Czech Republic', 'Tchèque, république', 'Tschechische Republik', 'Чехия', 'República Checa', 'Repubblica Ceca', 'Чехія', 'CZ', 'CZE'),
(59, 'Denmark', 'Danemark', 'Dänemark', 'Дания', 'Dinamarca', 'Danimarca', 'Данія', 'DK', 'DNK'),
(60, 'Djibouti', 'Djibouti', 'Republik Dschibuti', 'Джибути', 'Djibouti', 'Gibuti', 'Джибуті', 'DJ', 'DJI'),
(61, 'Dominica', 'Dominique', 'Dominica', 'Доминика', 'Dominica', 'Dominica', 'Домініка', 'DM', 'DMA'),
(62, 'Dominican Republic', 'Dominicaine, république', 'Dominikanische Republik', 'Доминиканская республика', 'Dominicana, República', 'Repubblica Dominicana', 'Домініканська республіка', 'DO', 'DOM'),
(63, 'Ecuador', 'Équateur', 'Ecuador', 'Эквадор', 'Ecuador', 'Ecuador', 'Еквадор', 'EC', 'ECU'),
(64, 'Egypt', 'Égypte', 'Ägypten', 'Египет', 'Egipto', 'Egitto', 'Єгипет', 'EG', 'EGY'),
(65, 'El Salvador', 'El salvador', 'El Salvador', 'Сальвадор', 'El Salvador', 'El Salvador', 'Сальвадор', 'SV', 'SLV'),
(66, 'Equatorial Guinea', 'Guinée équatoriale', 'Äquatorialguinea', 'Экваториальная Гвинея', 'Guinea Ecuatorial', 'Guinea Equatoriale', 'Екваторіальна Гвинея', 'GQ', 'GNQ'),
(67, 'Eritrea', 'Érythrée', 'Eritrea', 'Эритрея', 'Eritrea', 'Eritrea', 'Еритрея', 'ER', 'ERI'),
(68, 'Estonia', 'Estonie', 'Estland', 'Эстония', 'Estonia', 'Estonia', 'Естонія', 'EE', 'EST'),
(69, 'Ethiopia', 'Éthiopie', 'Äthiopien', 'Эфиопия', 'Etiopía', 'Etiopia', 'Ефіопія', 'ET', 'ETH'),
(70, 'Falkland Islands (Malvinas)', 'Falkland, îles (malvinas)', 'Falklandinseln', 'Фолклендские Острова (Мальвинские)', 'Falkland, Islas Malvinas', 'Falkland, Isole (Malvine)', 'Фолклендські (Мальвінські) острови', 'FK', 'FLK'),
(71, 'Faroe Islands', 'Féroé, îles', 'Färöer', 'Фарерские Острова', 'Islas Feroe', 'Faroe, Isole', 'Фарерські острови', 'FO', 'FRO'),
(72, 'Fiji', 'Fidji', 'Fidschi', 'Фиджи', 'Fiji', 'Figi', 'Фіджі', 'FJ', 'FJI'),
(73, 'Finland', 'Finlande', 'Finnland', 'Финляндия', 'Finlandia', 'Finlandia', 'Фінляндія', 'FI', 'FIN'),
(74, 'France', 'France', 'Frankreich', 'Франция', 'Francia', 'Francia', 'Франція', 'FR', 'FRA'),
(75, 'French Guiana', 'Guyane française', 'Französisch-Guayana', 'Французская Гвиана', 'Guayana Francesa', 'Guyana Francese', 'Французька Гвiана', 'GF', 'GUF'),
(76, 'French Polynesia', 'Polynésie française', 'Französisch-Polynesien', 'Французская Полинезия', 'Polinesia Francesa', 'Polinesia Francese', 'Французька Полінезія', 'PF', 'PYF'),
(77, 'French Southern Territories', 'Terres australes françaises', 'Französische Südgebiete', 'Французские Южные Территории', 'Territorios Australes Franceses', 'Terre Australi Francesi', 'Французькі Південні і Антарктичні території', 'TF', 'ATF'),
(78, 'Gabon', 'Gabon', 'Gabun', 'Габон', 'Gabón', 'Gabon', 'Габон', 'GA', 'GAB'),
(79, 'Gambia', 'Gambie', 'Gambia', 'Гамбия', 'Gambia', 'Gambia', 'Гамбія', 'GM', 'GMB'),
(80, 'Georgia', 'Géorgie', 'Georgien', 'Грузия', 'Georgia', 'Georgia', 'Грузія', 'GE', 'GEO'),
(81, 'Germany', 'Allemagne', 'Deutschland', 'Германия', 'Alemania', 'Germania', 'Німеччина', 'DE', 'DEU'),
(82, 'Ghana', 'Ghana', 'Ghana', 'Гана', 'Ghana', 'Ghana', 'Гана', 'GH', 'GHA'),
(83, 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Гибралтар', 'Gibraltar', 'Gibilterra', 'Гібралтар', 'GI', 'GIB'),
(84, 'Greece', 'Grèce', 'Griechenland', 'Греция', 'Grecia', 'Grecia', 'Греція', 'GR', 'GRC'),
(85, 'Greenland', 'Groenland', 'Grönland', 'Гренландия', 'Groenlandia', 'Groenlandia', 'Гренландія', 'GL', 'GRL'),
(86, 'Grenada', 'Grenade', 'Grenada', 'Гренада', 'Granada', 'Grenada', 'Гренада', 'GD', 'GRD'),
(87, 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 'Гваделупа', 'Guadalupe', 'Guadalupa', 'Гваделупа', 'GP', 'GLP'),
(88, 'Guam', 'Guam', 'Guam', 'Гуам ', 'Guam', 'Guam', 'Гуам', 'GU', 'GUM'),
(89, 'Guatemala', 'Guatemala', 'Guatemala', 'Гватемала', 'Guatemala', 'Guatemala', 'Гватемала', 'GT', 'GTM'),
(90, 'Guernsey', 'Guernesey', 'Guernsey', 'Гернси', 'Guernsey', 'Guernsey', 'Гернсі', 'GG', 'GGY'),
(91, 'Guinea', 'Guinée', 'Guinea', 'Гвинея', 'Guinea', 'Guinea', 'Гвінея', 'GN', 'GIN'),
(92, 'Guinea-Bissau', 'Guinée-bissau', 'Guinea-Bissau', 'Гвинея-Бисау', 'Guinea-Bissau', 'Guinea-Bissau', 'Гвінея-Бісау', 'GW', 'GNB'),
(93, 'Guyana', 'Guyana', 'Guyana', 'Гайана', 'Guyana', 'Guyana', 'Гайана', 'GY', 'GUY'),
(94, 'Haiti', 'Haïti', 'Haiti', 'Гаити', 'Haití', 'Haiti', 'Гаїті', 'HT', 'HTI'),
(95, 'Heard Island and McDonald Islands', 'Heard, île et mcdonald, îles', 'Heard Insel und McDonald Inseln', 'Остров Херд и острова Макдональд', 'Isla Heard y las Islas McDonald', 'Heard e McDonald, Isole', 'Острів Херд і острови Макдональд', 'HM', 'HMD'),
(96, 'Holy See (Vatican City State)', 'Saint-siège (état de la cité du vatican)', 'Vatikanstadt', 'Ватикан', 'Santa Sede (Estado de la Ciudad del Vaticano)', 'Città del Vaticano', 'Ватикан', 'VA', 'VAT'),
(97, 'Honduras', 'Honduras', 'Honduras', 'Гондурас', 'Honduras', 'Honduras', 'Гондурас', 'HN', 'HND'),
(98, 'Hong Kong', 'Hong-kong', 'Hong Kong', 'Гонконг', 'Hong Kong', 'Hong Kong', 'Гонконг', 'HK', 'HKG'),
(99, 'Hungary', 'Hongrie', 'Ungarn', 'Венгрия', 'Hungría', 'Ungheria', 'Угорщина', 'HU', 'HUN'),
(100, 'Iceland', 'Islande', 'Island', 'Исландия', 'Islandia', 'Islanda', 'Ісландія', 'IS', 'ISL'),
(101, 'India', 'Inde', 'Indien', 'Индия', 'India', 'India', 'Індія', 'IN', 'IND'),
(102, 'Indonesia', 'Indonésie', 'Indonesien', 'Индонезия', 'Indonesia', 'Indonesia', 'Індонезія', 'ID', 'IDN'),
(103, 'Iran, Islamic Republic of', 'Iran, république islamique d\'', 'Iran, Islam. Rep.', 'Иран', 'Irán, República Islámica del', 'Iran, repubblica Islamica', 'Іран', 'IR', 'IRN'),
(104, 'Iraq', 'Iraq', 'Irak', 'Ирак', 'Iraq', 'Iraq', 'Ірак', 'IQ', 'IRQ'),
(105, 'Ireland', 'Irlande', 'Irland', 'Ирландия', 'Irlanda', 'Irlanda', 'Ірландія', 'IE', 'IRL'),
(106, 'Isle of Man', 'Île de man', 'Isle of Man', 'Остров Мэн', 'Isla de Man', 'Isola di Man', 'Острів Мен', 'IM', 'IMN'),
(107, 'Israel', 'Israël', 'Israel', 'Израиль', 'Israel', 'Israele', 'Ізраїль', 'IL', 'ISR'),
(108, 'Italy', 'Italie', 'Italien', 'Италия', 'Italia', 'Italia', 'Італія', 'IT', 'ITA'),
(109, 'Jamaica', 'Jamaïque', 'Jamaika', 'Ямайка', 'Jamaica', 'Giamaica', 'Ямайка', 'JM', 'JAM'),
(110, 'Japan', 'Japon', 'Japan', 'Япония', 'Japón', 'Giappone', 'Японія', 'JP', 'JPN'),
(111, 'Jersey', 'Jersey', 'Jersey', 'Джерси', 'Jersey', 'Jersey', 'Джерсі', 'JE', 'JEY'),
(112, 'Jordan', 'Jordanie', 'Jordanien', 'Иордания', 'Jordania', 'Giordania', 'Йорданія', 'JO', 'JOR'),
(113, 'Kazakhstan', 'Kazakhstan', 'Kasachstan', 'Казахстан', 'Kazajstán', 'Kazakistan', 'Казахстан', 'KZ', 'KAZ'),
(114, 'Kenya', 'Kenya', 'Kenia', 'Кения', 'Kenya', 'Kenya', 'Кенія', 'KE', 'KEN'),
(115, 'Kiribati', 'Kiribati', 'Kiribati', 'Кирибати', 'Kiribati', 'Kiribati', 'Кірібаті', 'KI', 'KIR'),
(116, 'Korea, Democratic People\'s Republic of', 'Corée, république populaire démocratique de', 'Korea, Dem. Volksrep.', 'Корейская Народно-Демократическая Республика', 'Corea, República Popular Democrática de', 'Corea, Repubblica Popolare Democratica', 'Північна Корея (Корейська Народно-Демократична Республіка)', 'KP', 'PRK'),
(117, 'South Korea', 'Corée du Sud', 'Korea, Rep.', 'Южная Корея', 'Corea del Sur', 'Corea del Sud', 'Південна Корея (Республіка Корея)', 'KR', 'KOR'),
(118, 'Kuwait', 'Koweït', 'Kuwait', 'Кувейт', 'Kuwait', 'Kuwait', 'Кувейт', 'KW', 'KWT'),
(119, 'Kyrgyzstan', 'Kirghizistan', 'Kirgisistan', 'Киргизстан', 'Kirguistán', 'Kirghizistan', 'Киргизстан', 'KG', 'KGZ'),
(120, 'Lao People\'s Democratic Republic', 'Lao, république démocratique populaire', 'Laos, Dem. Volksrep.', 'Лаос', 'Lao, República Democrática Popular', 'Laos, Repubblica Democratica Popolare', 'Лаос', 'LA', 'LAO'),
(121, 'Latvia', 'Lettonie', 'Lettland', 'Латвия', 'Letonia', 'Lettonia', 'Латвія', 'LV', 'LVA'),
(122, 'Lebanon', 'Liban', 'Libanon', 'Ливан', 'Líbano', 'Libano', 'Ліван', 'LB', 'LBN'),
(123, 'Lesotho', 'Lesotho', 'Lesotho', 'Лесото', 'Lesotho', 'Lesotho', 'Лесото', 'LS', 'LSO'),
(124, 'Liberia', 'Libéria', 'Liberia', 'Либерия', 'Liberia', 'Liberia', 'Ліберія', 'LR', 'LBR'),
(125, 'Libyan Arab Jamahiriya', 'Libyenne, jamahiriya arabe', 'Libysch-Arabische Dschamahirija', 'Ливия', 'Jamahiriya Árabe Libia', 'Libia', 'Лівія', 'LY', 'LBY'),
(126, 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Лихтенштейн', 'Liechtenstein', 'Liechtenstein', 'Ліхтенштейн', 'LI', 'LIE'),
(127, 'Lithuania', 'Lituanie', 'Litauen', 'Литва', 'Lituania', 'Lituania', 'Литва', 'LT', 'LTU'),
(128, 'Luxembourg', 'Luxembourg', 'Luxemburg', 'Люксембург', 'Luxemburgo', 'Lussemburgo', 'Люксембург', 'LU', 'LUX'),
(129, 'Macao', 'Macao', 'Macao', 'Аомынь (Макао)', 'Macao', 'Macao', 'Макао', 'MO', 'MAC'),
(130, 'Macedonia, the former Yugoslav Republic of', 'Macédoine, l\'ex-république yougoslave de', 'Mazedonien, ehemalige jugoslawische Republik ', 'Македония', 'Macedonia, ex República Yugoslava de', 'Macedonia', 'Македонія', 'MK', 'MKD'),
(131, 'Madagascar', 'Madagascar', 'Madagaskar', 'Мадагаскар', 'Madagascar', 'Madagascar', 'Мадагаскар', 'MG', 'MDG'),
(132, 'Malawi', 'Malawi', 'Malawi', 'Малави', 'Malawi', 'Malawi', 'Малаві', 'MW', 'MWI'),
(133, 'Malaysia', 'Malaisie', 'Malaysia', 'Малайзия', 'Malasia', 'Malesia', 'Малайзія', 'MY', 'MYS'),
(134, 'Maldives', 'Maldives', 'Malediven', 'Мальдивы', 'Maldivas', 'Maldive', 'Мальдіви', 'MV', 'MDV'),
(135, 'Mali', 'Mali', 'Mali', 'Мали', 'Malí', 'Mali', 'Малі', 'ML', 'MLI'),
(136, 'Malta', 'Malte', 'Malta', 'Мальта', 'Malta', 'Malta', 'Мальта', 'MT', 'MLT'),
(137, 'Marshall Islands', 'Marshall, îles', 'Marshallinseln', 'Маршалловы Острова', 'Marshall, Islas', 'Marshall, Isole', 'Маршаллові острови', 'MH', 'MHL'),
(138, 'Martinique', 'Martinique', 'Martinique', 'Мартиника', 'Martinica', 'Martinica', 'Мартініка', 'MQ', 'MTQ'),
(139, 'Mauritania', 'Mauritanie', 'Mauretanien', 'Мавритания', 'Mauritania', 'Mauritania', 'Мавританія', 'MR', 'MRT'),
(140, 'Mauritius', 'Maurice', 'Mauritius', 'Маврикий', 'Mauricio', 'Mauritius', 'Маврикій', 'MU', 'MUS'),
(141, 'Mayotte', 'Mayotte', 'Mayotte', 'Майотта', 'Mayotte', 'Mayotte', 'Майотта', 'YT', 'MYT'),
(142, 'Mexico', 'Mexique', 'Mexiko', 'Мексика', 'México', 'Messico', 'Мексика', 'MX', 'MEX'),
(143, 'Micronesia, Federated States of', 'Micronésie, états fédérés de', 'Mikronesien, Föderierte Staaten von', 'Микронезия, Федеративные Штаты', 'Micronesia, Estados Federados de', 'Micronesia, Stati Federati', 'Федеративні Штати Мікронезії', 'FM', 'FSM'),
(144, 'Moldova, Republic of', 'Moldova, république de', 'Moldau, Rep.', 'Молдова', 'Moldova, República de', 'Moldavia', 'Молдова', 'MD', 'MDA'),
(145, 'Monaco', 'Monaco', 'Monaco', 'Монако', 'Mónaco', 'Principato di Monaco', 'Монако', 'MC', 'MCO'),
(146, 'Mongolia', 'Mongolie', 'Mongolei', 'Монголия', 'Mongolia', 'Mongolia', 'Монголія', 'MN', 'MNG'),
(147, 'Montenegro', 'Monténégro', 'Montenegro', 'Черногория', 'Montenegro', 'Montenegro', 'Чорногорія', 'ME', 'MNE'),
(148, 'Montserrat', 'Montserrat', 'Montserrat', 'Монсеррат', 'Montserrat', 'Montserrat', 'Монтсеррат', 'MS', 'MSR'),
(149, 'Morocco', 'Maroc', 'Marokko', 'Марокко', 'Marruecos', 'Marocco', 'Марокко', 'MA', 'MAR'),
(150, 'Mozambique', 'Mozambique', 'Mosambik', 'Мозамбик', 'Mozambique', 'Mozambico', 'Мозамбік', 'MZ', 'MOZ'),
(151, 'Myanmar', 'Myanmar', 'Myanmar', 'Мьянма', 'Myanmar', 'Myanmar (Birmania)', 'М\'янма (Бірма)', 'MM', 'MMR'),
(152, 'Namibia', 'Namibie', 'Namibia', 'Намибия', 'Namibia', 'Namibia', 'Намібія', 'NA', 'NAM'),
(153, 'Nauru', 'Nauru', 'Nauru', 'Науру', 'Nauru', 'Nauru', 'Науру', 'NR', 'NRU'),
(154, 'Nepal', 'Népal', 'Nepal', 'Непал', 'Nepal', 'Nepal', 'Непал', 'NP', 'NPL'),
(155, 'Netherlands', 'Pays-bas', 'Niederlande', 'Нидерланды', 'Países Bajos', 'Olanda', 'Нідерланди (Голландія)', 'NL', 'NLD'),
(156, 'Netherlands Antilles', 'Antilles néerlandaises', 'Niederländische Antillen', 'Нидерландские Антильские острова', 'Antillas Neerlandesas', 'Antille Olandesi', 'Нідерландські Антильські острови', 'AN', 'ANT'),
(157, 'New Caledonia', 'Nouvelle-calédonie', 'Neukaledonien', 'Новая Каледония', 'Nueva Caledonia', 'Nuova Caledonia', 'Нова Каледонія', 'NC', 'NCL'),
(158, 'New Zealand', 'Nouvelle-zélande', 'Neuseeland', 'Новая Зеландия', 'Nueva Zelandia', 'Nuova Zelanda', 'Нова Зеландія', 'NZ', 'NZL'),
(159, 'Nicaragua', 'Nicaragua', 'Nicaragua', 'Никарагуа', 'Nicaragua', 'Nicaragua', 'Нікарагуа', 'NI', 'NIC'),
(160, 'Niger', 'Niger', 'Niger', 'Нигер', 'Niger', 'Niger', 'Нігер', 'NE', 'NER'),
(161, 'Nigeria', 'Nigéria', 'Nigeria', 'Нигерия', 'Nigeria', 'Nigeria', 'Нігерія', 'NG', 'NGA'),
(162, 'Niue', 'Niué', 'Niue', 'Ниуэ', 'Niue', 'Niue', 'Ніуе', 'NU', 'NIU'),
(163, 'Norfolk Island', 'Norfolk, île', 'Norfolk Insel', 'Остров Норфолк', 'Norfolk, Isla', 'Norfolk, Isola', 'Острів Норфолк', 'NF', 'NFK'),
(164, 'Northern Mariana Islands', 'Mariannes du nord, îles', 'Nördliche Marianen', 'Северные Марианские Острова', 'Marianas del Norte, Islas', 'Marianne Settentrionali, Isole', 'Північні\r\nМаріанські острови', 'MP', 'MNP'),
(165, 'Norway', 'Norvège', 'Norwegen', 'Норвегия', 'Noruega', 'Norvegia', 'Норвегія', 'NO', 'NOR'),
(166, 'Oman', 'Oman', 'Oman', 'Оман', 'Omán', 'Oman', 'Оман', 'OM', 'OMN'),
(167, 'Pakistan', 'Pakistan', 'Pakistan', 'Пакистан', 'Pakistán', 'Pakistan', 'Пакистан', 'PK', 'PAK'),
(168, 'Palau', 'Palaos', 'Palau', 'Палау', 'Palau', 'Palau', 'Палау', 'PW', 'PLW'),
(169, 'Palestinian Territory, Occupied', 'Palestinien occupé, territoire', 'Palästinensische Autonomiegebiete', 'Палестинской Территории, Оккупированные', 'Palestino Territorio Ocupado', 'Palestina', 'Палестинська держава', 'PS', 'PSE'),
(170, 'Panama', 'Panama', 'Panama', 'Панама', 'Panamá', 'Panamà', 'Панама', 'PA', 'PAN'),
(171, 'Papua New Guinea', 'Papouasie-nouvelle-guinée', 'Papua-Neuguinea', 'Папуа-Новая Гвинея', 'Papua Nueva Guinea', 'Papua Nuova Guinea', 'Папуа Нова Гвінея', 'PG', 'PNG'),
(172, 'Paraguay', 'Paraguay', 'Paraguay', 'Парагвай', 'Paraguay', 'Paraguay', 'Парагвай', 'PY', 'PRY'),
(173, 'Peru', 'Pérou', 'Peru', 'Перу', 'Perú', 'Perù', 'Перу', 'PE', 'PER'),
(174, 'Philippines', 'Philippines', 'Philippinen', 'Филиппины', 'Filipinas', 'Filippine', 'Філіппіни', 'PH', 'PHL'),
(175, 'Pitcairn', 'Pitcairn', 'Pitcairn', 'Питкэрн', 'Pitcairn', 'Pitcairn', 'Острови Піткерн', 'PN', 'PCN'),
(176, 'Poland', 'Pologne', 'Polen', 'Польша', 'Polonia', 'Polonia', 'Польща', 'PL', 'POL'),
(177, 'Portugal', 'Portugal', 'Portugal', 'Португалия', 'Portugal', 'Portogallo', 'Португалія', 'PT', 'PRT'),
(178, 'Puerto Rico', 'Porto rico', 'Puerto Rico', 'Пуэрто-Рико', 'Puerto Rico', 'Porto Rico', 'Пуерто-Рико', 'PR', 'PRI'),
(179, 'Qatar', 'Qatar', 'Katar', 'Катар', 'Qatar', 'Qatar', 'Катар', 'QA', 'QAT'),
(180, 'Reunion', 'Réunion', 'Réunion', 'Реюньон', 'Reunión', 'Riunione', 'Реюньон', 'RE', 'REU'),
(181, 'Romania', 'Roumanie', 'Rum', 'Румыния', 'Rumanía', 'Romania', 'Румунія', 'RO', 'ROU'),
(182, 'Russian Federation', 'Russie, fédération de', 'Russland', 'Россия', 'Rusia, Federación de', 'Russia', 'Російська Федерація', 'RU', 'RUS'),
(183, 'Rwanda', 'Rwanda', 'Ruanda', 'Руанда', 'Rwanda', 'Ruanda', 'Руанда', 'RW', 'RWA'),
(184, 'Saint Barthelemy', 'Saint-barthélemy', 'St. Barth', 'Сен-Бартельми', 'San Bartolomé', 'Saint-Barthelemy', 'Сен-Бартельмі', 'BL', 'BLM'),
(185, 'Saint Helena', 'Sainte-hélène, ascension et tristan da cunha', 'Saint Helena', 'Святая Елена, Остров вознесения, Тристан-да-Кунья', 'Santa Elena', 'Sant\'Elena', 'Острови Святої Єлени, Вознесіння і Тристан-да-Кунья', 'SH', 'SHN'),
(186, 'Saint Kitts and Nevis', 'Saint-kitts-et-nevis', 'St. Kitts und Nevis', 'Сент-Китс и Невис', 'San Cristóbal y Nieves', 'Saint Kitts e Nevis', 'Сент-Кіттс і Невіс', 'KN', 'KNA'),
(187, 'Saint Lucia', 'Sainte-lucie', 'St. Lucia', 'Сент-Люсия', 'Santa Lucía', 'Santa lucia', 'Сент-Люсія', 'LC', 'LCA'),
(188, 'Saint Martin (French part)', 'Saint-martin', 'St. Martin', 'Сен-Мартен', 'San Martín', 'Saint Martin', 'Сен-Мартен (Франція)', 'MF', 'MAF'),
(189, 'Saint Pierre and Miquelon', 'Saint-pierre-et-miquelon', 'Saint Pierre und Miquelon', 'Сен-Пьер и Микелон', 'San Pedro y Miquelón', 'Saint-Pierre e Miquelon', 'Сен-П\'єр і Мікелон', 'PM', 'SPM'),
(190, 'Saint Vincent and the Grenadines', 'Saint-vincent-et-les grenadines', 'St. Vincent und die Grenadinen', 'Сент-Винсент и Гренадины', 'San Vicente y las Granadinas', 'Saint Vincent e Grenadine', 'Сент-Вінсент і Гренадіни', 'VC', 'VCT'),
(191, 'Samoa', 'Samoa', 'Samoa', 'Самоа', 'Samoa', 'Samoa', 'Самоа', 'WS', 'WSM'),
(192, 'San Marino', 'Saint-marin', 'San Marino', 'Сан-Марино', 'San Marino', 'San Marino', 'Сан-Марино', 'SM', 'SMR'),
(193, 'Sao Tome and Principe', 'Sao tomé-et-principe', 'São Tomé und Príncipe', 'Сан-Томе и Принсипи', 'Santo Tomé y Príncipe', 'Sao Tome e Principe', 'Сан-Томе і Прінсіпі', 'ST', 'STP'),
(194, 'Saudi Arabia', 'Arabie saoudite', 'Saudi-Arabien', 'Саудовская Аравия', 'Arabia Saudita', 'Arabia Saudita', 'Саудівська Аравія', 'SA', 'SAU'),
(195, 'Senegal', 'Sénégal', 'Senegal', 'Сенегал', 'Senegal', 'Senegal', 'Сенегал', 'SN', 'SEN'),
(196, 'Serbia', 'Serbie', 'Serbien', 'Сербия', 'Serbia', 'Serbia', 'Сербія', 'RS', 'SRB'),
(197, 'Seychelles', 'Seychelles', 'Seychellen', 'Сейшельские острова', 'Seychelles', 'Seychelles', 'Сейшельські острови', 'SC', 'SYC'),
(198, 'Sierra Leone', 'Sierra leone', 'Sierra Leone', 'Сьерра-Леоне', 'Sierra Leona', 'Sierra Leone', 'Сьєрра-Леоне', 'SL', 'SLE'),
(199, 'Singapore', 'Singapour', 'Singapur', 'Сингапур', 'Singapur', 'Singapore', 'Сінгапур', 'SG', 'SGP'),
(200, 'Slovakia', 'Slovaquie', 'Slowakei', 'Словакия', 'Eslovaquia', 'Slovacchia', 'Словаччина', 'SK', 'SVK'),
(201, 'Slovenia', 'Slovénie', 'Slowenien', 'Словения', 'Eslovenia', 'Slovenia', 'Словенія', 'SI', 'SVN'),
(202, 'Solomon Islands', 'Salomon, îles', 'Salomonen', 'Соломоновы острова', 'Salomón, Islas', 'Salomone, Isole', 'Соломоновi Острови', 'SB', 'SLB'),
(203, 'Somalia', 'Somalie', 'Somalia', 'Сомали', 'Somalia', 'Somalia', 'Сомалі', 'SO', 'SOM'),
(204, 'South Africa', 'Afrique du sud', 'Südafrika', 'Южно-Африканская Республика', 'Sudáfrica', 'Sudafrica', 'Південно-Африканська Республіка', 'ZA', 'ZAF'),
(205, 'South Georgia and South Sandwich Islands', 'Géorgie du sud et les îles sandwich du sud', 'Südgeorgien und die Südlichen Sandwichinseln', 'Южная Георгия и южные Сандвичевы острова', 'Georgia del Sur y Sandwich del Sur, Islas', 'Georgia del Sud e Isole Sandwich Meridionali', 'Південна Джорджія та Південні Сандвічеві острови', 'GS', 'SGS'),
(206, 'Spain', 'Espagne', 'Spanien', 'Испания', 'España', 'Spagna', 'Іспанія', 'ES', 'ESP'),
(207, 'Sri Lanka', 'Sri lanka', 'Sri Lanka', 'Шри-Ланка', 'Sri Lanka', 'Sri Lanka', 'Шрі-Ланка', 'LK', 'LKA'),
(208, 'Sudan', 'Soudan', 'Sudan', 'Судан', 'Sudán', 'Sudan', 'Судан', 'SD', 'SDN'),
(209, 'Suriname', 'Suriname', 'Suriname', 'Суринам', 'Suriname', 'Suriname', 'Сурінам', 'SR', 'SUR'),
(210, 'Svalbard and Jan Mayen', 'Svalbard et île jan mayen', 'Svalbard und Jan Mayen', 'Шпицберген и Ян-Майен', 'Svalbard y la isla Jan Mayen', 'Svalbard e Jan Mayen', 'Свальбард і Ян-Маєн', 'SJ', 'SJM'),
(211, 'Swaziland', 'Swaziland', 'Swasiland', 'Свазиленд', 'Swazilandia', 'Swaziland', 'Свазіленд', 'SZ', 'SWZ'),
(212, 'Sweden', 'Suède', 'Schweden', 'Швеция', 'Suecia', 'Svezia', 'Швеція', 'SE', 'SWE'),
(213, 'Switzerland', 'Suisse', 'Schweiz', 'Швейцария', 'Suiza', 'Svizzera', 'Швейцарія', 'CH', 'CHE'),
(214, 'Syrian Arab Republic', 'Syrienne, république arabe', 'Syrien, Arab. Rep.', 'Сирия', 'Siria, República Árabe', 'Siria, repubblica Araba', 'Сирія', 'SY', 'SYR'),
(215, 'Taiwan, Province of China', 'Taïwan, province de chine', 'Taiwan', 'Тайвань, провинция Китая', 'Taiwán, Provincia China', 'Taiwan', 'Тайвань (Республіка Китай)', 'TW', 'TWN'),
(216, 'Tajikistan', 'Tadjikistan', 'Tadschikistan', 'Таджикистан', 'Tayikistán', 'Tagikistan', 'Таджикистан', 'TJ', 'TJK'),
(217, 'Tanzania, United Republic of', 'Tanzanie, république-unie de', 'Tansania, Vereinigte Rep.', 'Танзания', 'Tanzanía, República Unida de', 'Tanzania, Repubblica Unita', 'Танзанія', 'TZ', 'TZA'),
(218, 'Thailand', 'Thaïlande', 'Thailand', 'Таиланд', 'Tailandia', 'Thailandia', 'Таїланд', 'TH', 'THA'),
(219, 'Timor-Leste', 'Timor-leste', 'Timor-Leste', 'Восточный Тимор', 'Timor-Leste', 'Timor Est', 'Східний Тимор', 'TL', 'TLS'),
(220, 'Togo', 'Togo', 'Togo', 'Того', 'Togo', 'Togo', 'Того', 'TG', 'TGO'),
(221, 'Tokelau', 'Tokelau', 'Tokelau', 'Токелау', 'Tokelau', 'Tokelau', 'Токелау', 'TK', 'TKL'),
(222, 'Tonga', 'Tonga', 'Tonga', 'Тонга', 'Tonga', 'Tonga', 'Тонга', 'TO', 'TON'),
(223, 'Trinidad and Tobago', 'Trinité-et-tobago', 'Trinidad und Tobago', 'Тринидад и Тобаго', 'Trinidad y Tabago', 'Trinidad e Tobago', 'Тринідад і Тобаго', 'TT', 'TTO'),
(224, 'Tunisia', 'Tunisie', 'Tunesien', 'Тунис', 'Túnez', 'Tunisia', 'Туніс', 'TN', 'TUN'),
(225, 'Turkey', 'Turquie', 'Türkei', 'Турция', 'Turquía', 'Turchia', 'Туреччина', 'TR', 'TUR'),
(226, 'Turkmenistan', 'Turkménistan', 'Turkmenistan', 'Туркменистан', 'Turkmenistán', 'Turkmenistan', 'Туркменістан', 'TM', 'TKM'),
(227, 'Turks and Caicos Islands', 'Turks et caïques, îles', 'Turks- und Caicosinseln', 'Архипелаг Тёркс и Кайкас', 'Turcas y Caicos, Islas', 'Turks e Caicos, Isole', 'Острови Теркс і Кайкос', 'TC', 'TCA'),
(228, 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Тувалу', 'Tuvalu', 'Tuvalu', 'Тувалу', 'TV', 'TUV'),
(229, 'Uganda', 'Ouganda', 'Uganda', 'Уганда', 'Uganda', 'Uganda', 'Уганда', 'UG', 'UGA'),
(230, 'Ukraine', 'Ukraine', 'Ukraine', 'Украина', 'Ucrania', 'Ucraina', 'Україна', 'UA', 'UKR'),
(231, 'United Arab Emirates', 'Émirats arabes unis', 'Vereinigte Arabische Emirate', 'Объединенные Арабские Эмираты', 'Emiratos Árabes Unidos', 'Emirati Arabi Uniti', 'Об\'єднані Арабські Емірати', 'AE', 'ARE'),
(232, 'United Kingdom', 'Royaume-uni', 'Vereinigtes Königreich', 'Великобритания', 'Reino Unido', 'Regno Unito', 'Великобританія', 'GB', 'GBR'),
(233, 'United States', 'États-unis', 'Vereinigte Staaten von Amerika', 'США', 'Estados Unidos', 'Stati uniti', 'США', 'US', 'USA'),
(234, 'United States Minor Outlying Islands', 'Îles mineures éloignées des états-unis', 'United States Minor Outlying Islands', 'Соединенные Штаты Америки Внешние Малые Острова', 'Estados Unidos, Islas Ultramarinas Menores de', 'Stati Uniti, Isole minori esterne', 'Зовнішні малі острови США', 'UM', 'UMI'),
(235, 'Uruguay', 'Uruguay', 'Uruguay', 'Уругвай', 'Uruguay', 'Uruguay', 'Уругвай', 'UY', 'URY'),
(236, 'Uzbekistan', 'Ouzbékistan', 'Usbekistan', 'Узбекистан', 'Uzbekistan', 'Uzbekistan', 'Узбекистан', 'UZ', 'UZB'),
(237, 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Вануату', 'Vanuatu', 'Vanuatu', 'Вануату', 'VU', 'VUT'),
(238, 'Venezuela, Bolivarian Republic of', 'Venezuela, république bolivarienne du', 'Venezuela', 'Венесуэла', 'Venezuela,república bolivariana de', 'Venezuela', 'Венесуела', 'VE', 'VEN'),
(239, 'Viet Nam', 'Viet nam', 'Vietnam', 'Вьетнам', 'Viet Nam', 'Vietnam', 'В\'єтнам', 'VN', 'VNM'),
(240, 'Virgin Islands, British', 'Îles vierges britanniques', 'Britische Jungferninseln', 'Британские Виргинские острова', 'Islas Vírgenes Británicas', 'Isole Vergini Britanniche', 'Британські Віргінські острови', 'VG', 'VGB'),
(241, 'Virgin Islands, U.S.', 'Îles vierges des états-unis', 'Amerikanische Jungferninseln', 'Виргинские острова', 'Islas Vírgenes de los EEUU', 'Isole Vergini Americame', 'Віргінські Острови США', 'VI', 'VIR'),
(242, 'Wallis and Futuna', 'Wallis et futuna', 'Wallis und Futuna', 'Уоллис и Футуна', 'Wallis y Futuna', 'Wallis e Futuna', 'Уолліс і Футуна', 'WF', 'WLF'),
(243, 'Western Sahara', 'Sahara occidental', 'Westsahara', 'Западная Сахара', 'Sáhara Occidental', 'Sahara Occidentale', 'Західна Сахара', 'EH', 'ESH'),
(244, 'Yemen', 'Yémen', 'Jemen', 'Йемен', 'Yemen', 'Yemen', 'Ємен', 'YE', 'YEM'),
(245, 'Zambia', 'Zambie', 'Sambia', 'Замбия', 'Zambia', 'Zambia', 'Замбія', 'ZM', 'ZMB'),
(246, 'Zimbabwe', 'Zimbabwe', 'Simbabwe', 'Зимбабве', 'Zimbabue', 'Zimbabwe', 'Зімбабве', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_more_jobs`
--

CREATE TABLE `k4hct_cck_more_jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` int(11) NOT NULL DEFAULT '1',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `run_as` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `run_url` int(11) NOT NULL DEFAULT '0',
  `run_url_custom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_more_jobs`
--

INSERT INTO `k4hct_cck_more_jobs` (`id`, `title`, `name`, `folder`, `type`, `description`, `options`, `ordering`, `published`, `run_as`, `run_url`, `run_url_custom`, `checked_out`, `checked_out_time`) VALUES
(500, '', '', 1, '', '', '', 0, -44, 0, 0, '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_more_job_processing`
--

CREATE TABLE `k4hct_cck_more_job_processing` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `processing_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_more_processings`
--

CREATE TABLE `k4hct_cck_more_processings` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` int(11) NOT NULL DEFAULT '1',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `scriptfile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_more_processings`
--

INSERT INTO `k4hct_cck_more_processings` (`id`, `title`, `name`, `folder`, `type`, `description`, `options`, `ordering`, `published`, `scriptfile`, `checked_out`, `checked_out_time`) VALUES
(1, 'Customize (Store)', 'customize', 3, 'onCckPostBeforeStore', '', '{\"output\":\"\",\"output_path\":\"tmp\\/\",\"output_extension\":\"txt\",\"output_filename_date\":\"\",\"content_types\":\"seb_site\",\"manager\":{\"email\":\"seb_site_manager_email\",\"password\":\"seb_site_manager_password\",\"username\":\"\",\"name\":\"seb_site_manager_name\",\"first_name\":\"seb_site_manager_first_name\",\"last_name\":\"seb_site_manager_last_name\",\"bridge\":\"0\",\"force_password\":\"0\",\"set_author\":\"1\"},\"type\":\"6\"}', 0, 1, '/media/cck/processings/sites/customize/customize.php', 0, '0000-00-00 00:00:00'),
(2, 'Complete', 'complete', 3, 'onCckConstructionBeforeSave', '', '{\"output\":\"\",\"output_path\":\"tmp\\/\",\"output_extension\":\"txt\",\"output_filename_date\":\"\"}', 0, 1, '/media/cck/processings/sites/complete/complete.php', 0, '0000-00-00 00:00:00'),
(3, 'Customize (Import)', 'customize', 3, 'onCckPostBeforeImport', '', '{\"output\":\"\",\"output_path\":\"tmp\\/\",\"output_extension\":\"txt\",\"output_filename_date\":\"\",\"content_types\":\"seb_site\",\"manager\":{\"email\":\"seb_site_manager_email\",\"password\":\"seb_site_manager_password\",\"username\":\"\",\"name\":\"seb_site_manager_name\",\"first_name\":\"seb_site_manager_first_name\",\"last_name\":\"seb_site_manager_last_name\",\"bridge\":\"0\",\"force_password\":\"0\",\"set_author\":\"1\"},\"type\":\"6\"}', 0, 1, '/media/cck/processings/sites/customize/customize.php', 0, '0000-00-00 00:00:00'),
(500, '', '', 1, '', '', '', 0, -44, '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_more_sessions`
--

CREATE TABLE `k4hct_cck_more_sessions` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_cck_more_sessions`
--

INSERT INTO `k4hct_cck_more_sessions` (`id`, `title`, `extension`, `folder`, `type`, `options`, `published`) VALUES
(500, '', '', 0, '', '', -44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_store_item_categories`
--

CREATE TABLE `k4hct_cck_store_item_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cck` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias_en` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `alias_fr` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_store_item_content`
--

CREATE TABLE `k4hct_cck_store_item_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `cck` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias_en` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `alias_fr` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_cck_store_item_users`
--

CREATE TABLE `k4hct_cck_store_item_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `cck` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_me` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` datetime NOT NULL,
  `birthplace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_vat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_contact_details`
--

CREATE TABLE `k4hct_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_contact_details`
--

INSERT INTO `k4hct_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Contactanos', 'contactanos', '', 'Sangolqui', 'Sangolqui', 'Pichincha', 'Ecuador', '+593', '', '', '', '', 'trebortc@hotmail.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"show_misc\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":false,\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 4, 1, '', '', '', '', '', '*', '2018-09-16 23:13:22', 531, '', '2018-09-16 23:14:35', 531, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_content`
--

CREATE TABLE `k4hct_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_contentitem_tag_map`
--

CREATE TABLE `k4hct_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_content_frontpage`
--

CREATE TABLE `k4hct_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_content_rating`
--

CREATE TABLE `k4hct_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_content_types`
--

CREATE TABLE `k4hct_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_content_types`
--

INSERT INTO `k4hct_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_core_log_searches`
--

CREATE TABLE `k4hct_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_extensions`
--

CREATE TABLE `k4hct_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_extensions`
--

INSERT INTO `k4hct_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"91f77664d668667a94fe1e227d1d2373\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `k4hct_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 5, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.38.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.8\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1537185912}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":1,\"lastrun\":1537185964,\"unique_id\":\"2e7f4009f978d045e5f7598175300bdb8e66d21a\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"August 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.12\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"August 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.12\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"August 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.12\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"August 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.12.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 0, 'com_cck', 'component', 'com_cck', '', 1, 1, 0, 0, '{\"name\":\"com_cck\",\"type\":\"component\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"manifest\"}', '{\"integration_user_default_author\":531,\"core_legacy\":\"0\",\"site_variation\":\"seb_css3b\",\"site_variation_form\":\"seb_css3b\",\"optimize_memory\":\"1\",\"initial_version\":null,\"utf8_conversion\":\"2\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `k4hct_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10001, 0, 'SEBLOD', 'library', 'cck', '', 0, 1, 1, 0, '{\"name\":\"SEBLOD\",\"type\":\"library\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x Library - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"cck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'mod_cck_breadcrumbs', 'module', 'mod_cck_breadcrumbs', '', 0, 1, 0, 0, '{\"name\":\"mod_cck_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"LIB_CCK_EXTENSION_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_cck_breadcrumbs\"}', '{\"showHere\":\"1\",\"showHome\":\"1\",\"showLast\":\"1\",\"pathway\":\"0\",\"separator_class\":\"separator\",\"force_moduleclass_sfx\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 0, 'mod_cck_form', 'module', 'mod_cck_form', '', 0, 1, 0, 0, '{\"name\":\"mod_cck_form\",\"type\":\"module\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"LIB_CCK_EXTENSION_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_cck_form\"}', '{\"force_moduleclass_sfx\":\"0\",\"raw_rendering\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 0, 'mod_cck_list', 'module', 'mod_cck_list', '', 0, 1, 0, 0, '{\"name\":\"mod_cck_list\",\"type\":\"module\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"LIB_CCK_EXTENSION_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_cck_list\"}', '{\"show_list_title\":\"0\",\"tag_list_title\":\"\",\"class_list_title\":\"\",\"show_list_desc\":\"\",\"list_desc\":\"\",\"tag_list_desc\":\"div\",\"show_more\":\"1\",\"show_link_more\":\"\",\"limit2\":\"5\",\"limitstart\":\"\",\"ordering\":\"\",\"order_by\":\"\",\"ordering2\":\"\",\"force_moduleclass_sfx\":\"0\",\"limit\":\"0\",\"raw_rendering\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 0, 'mod_cck_menu', 'module', 'mod_cck_menu', '', 1, 1, 2, 0, '{\"name\":\"mod_cck_menu\",\"type\":\"module\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"LIB_CCK_EXTENSION_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_cck_menu\"}', '{\"mode\":\"2\",\"menutitle\":\"\",\"cck_new\":\"0\",\"cck_ecommerce\":\"1\",\"cck_inline\":\"0\",\"alignment\":\"\",\"enable01\":\"0\",\"component01\":\"\",\"enable02\":\"0\",\"component02\":\"\",\"enable03\":\"0\",\"component03\":\"\",\"enable04\":\"0\",\"component04\":\"\",\"enable05\":\"0\",\"component05\":\"\",\"free01\":\"0\",\"free01_title\":\"Title 01\",\"free01_url\":\"index.php\",\"free02\":\"0\",\"free02_title\":\"Title 02\",\"free02_url\":\"index.php\",\"free03\":\"0\",\"free03_title\":\"Title 03\",\"free03_url\":\"index.php\",\"free04\":\"0\",\"free04_title\":\"Title 04\",\"free04_url\":\"index.php\",\"free05\":\"0\",\"free05_title\":\"Title 05\",\"free05_url\":\"index.php\",\"free06\":\"0\",\"free06_title\":\"Title 06\",\"free06_url\":\"index.php\",\"free07\":\"0\",\"free07_title\":\"Title 07\",\"free07_url\":\"index.php\",\"free08\":\"0\",\"free08_title\":\"Title 08\",\"free08_url\":\"index.php\",\"free09\":\"0\",\"free09_title\":\"Title 09\",\"free09_url\":\"index.php\",\"free10\":\"0\",\"free10_title\":\"Title 10\",\"free10_url\":\"index.php\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 0, 'mod_cck_quickadd', 'module', 'mod_cck_quickadd', '', 1, 1, 2, 0, '{\"name\":\"mod_cck_quickadd\",\"type\":\"module\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"LIB_CCK_EXTENSION_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_cck_quickadd\"}', '{\"modal_box_layout\":\"icon\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 0, 'mod_cck_quickicon', 'module', 'mod_cck_quickicon', '', 1, 1, 2, 0, '{\"name\":\"mod_cck_quickicon\",\"type\":\"module\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"LIB_CCK_EXTENSION_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_cck_quickicon\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 0, 'mod_cck_search', 'module', 'mod_cck_search', '', 0, 1, 0, 0, '{\"name\":\"mod_cck_search\",\"type\":\"module\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"LIB_CCK_EXTENSION_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_cck_search\"}', '{\"menu_item_search\":\"0\",\"show_list_title\":\"0\",\"tag_list_title\":\"\",\"class_list_title\":\"\",\"show_list_desc\":\"\",\"list_desc\":\"\",\"tag_list_desc\":\"div\",\"force_moduleclass_sfx\":\"0\",\"raw_rendering\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'plg_cck_field_button_free', 'plugin', 'button_free', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_button_free\",\"type\":\"plugin\",\"creationDate\":\"May 2013\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"button_free\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_BUTTON\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 0, 'plg_cck_field_button_submit', 'plugin', 'button_submit', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_button_submit\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"button_submit\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_BUTTON\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 0, 'plg_cck_field_calendar', 'plugin', 'calendar', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_calendar\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"calendar\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_PICKER\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 0, 'plg_cck_field_checkbox', 'plugin', 'checkbox', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_checkbox\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"checkbox\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_FORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 0, 'plg_cck_field_colorpicker', 'plugin', 'colorpicker', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_colorpicker\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"colorpicker\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_PICKER\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 0, 'plg_cck_field_div', 'plugin', 'div', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_div\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"div\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_HTML\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 0, 'plg_cck_field_email', 'plugin', 'email', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_email\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"email\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_FORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 0, 'plg_cck_field_field_x', 'plugin', 'field_x', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_field_x\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"field_x\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_COLLECTION\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 0, 'plg_cck_field_freetext', 'plugin', 'freetext', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_freetext\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"freetext\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_CONTENT\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 0, 'plg_cck_field_group', 'plugin', 'group', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_group\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"group\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_COLLECTION\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 0, 'plg_cck_field_group_x', 'plugin', 'group_x', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_group_x\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"group_x\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_COLLECTION\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 0, 'plg_cck_field_hidden', 'plugin', 'hidden', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_hidden\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"hidden\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_FORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 0, 'plg_cck_field_icon', 'plugin', 'icon', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_icon\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"icon\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_HTML\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 0, 'plg_cck_field_jform_accesslevel', 'plugin', 'jform_accesslevel', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_accesslevel\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_accesslevel\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 0, 'plg_cck_field_jform_associations', 'plugin', 'jform_associations', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_associations\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_associations\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 0, 'plg_cck_field_jform_calendar', 'plugin', 'jform_calendar', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_calendar\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_calendar\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 0, 'plg_cck_field_jform_category', 'plugin', 'jform_category', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_category\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_category\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 0, 'plg_cck_field_jform_componentlayout', 'plugin', 'jform_componentlayout', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_componentlayout\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_componentlayout\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 0, 'plg_cck_field_jform_contentlanguage', 'plugin', 'jform_contentlanguage', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_contentlanguage\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_contentlanguage\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 0, 'plg_cck_field_jform_editors', 'plugin', 'jform_editors', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_editors\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_editors\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 0, 'plg_cck_field_jform_groupparent', 'plugin', 'jform_groupparent', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_groupparent\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_groupparent\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 0, 'plg_cck_field_jform_helpsite', 'plugin', 'jform_helpsite', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_helpsite\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_helpsite\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 0, 'plg_cck_field_jform_media', 'plugin', 'jform_media', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_media\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_media\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 0, 'plg_cck_field_jform_menuitem', 'plugin', 'jform_menuitem', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_menuitem\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_menuitem\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 0, 'plg_cck_field_jform_rules', 'plugin', 'jform_rules', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_rules\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_rules\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 0, 'plg_cck_field_jform_tag', 'plugin', 'jform_tag', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_tag\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_tag\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 0, 'plg_cck_field_jform_templatestyle', 'plugin', 'jform_templatestyle', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_templatestyle\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_templatestyle\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 0, 'plg_cck_field_jform_timezone', 'plugin', 'jform_timezone', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_timezone\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_timezone\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 0, 'plg_cck_field_jform_user', 'plugin', 'jform_user', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_user\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_user\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 0, 'plg_cck_field_jform_usergroups', 'plugin', 'jform_usergroups', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_jform_usergroups\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"jform_usergroups\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JFORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 0, 'plg_cck_field_joomla_module', 'plugin', 'joomla_module', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_joomla_module\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"joomla_module\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_JOOMLA\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 0, 'plg_cck_field_link', 'plugin', 'link', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_link\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"link\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_CONTENT\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 0, 'plg_cck_field_link_cck_form', 'plugin', 'cck_form', 'cck_field_link', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_link_cck_form\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"cck_form\"}', '{\"group\":\"PLG_CCK_FIELD_LINK_GROUP_CCK\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 0, 'plg_cck_field_link_cck_list', 'plugin', 'cck_list', 'cck_field_link', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_link_cck_list\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"cck_list\"}', '{\"group\":\"PLG_CCK_FIELD_LINK_GROUP_CCK\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 0, 'plg_cck_field_link_content', 'plugin', 'content', 'cck_field_link', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_link_content\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"content\"}', '{\"group\":\"PLG_CCK_FIELD_LINK_GROUP_CONTENT\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 0, 'plg_cck_field_link_content_delete', 'plugin', 'content_delete', 'cck_field_link', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_link_content_delete\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"content_delete\"}', '{\"group\":\"PLG_CCK_FIELD_LINK_GROUP_CONTENT\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 0, 'plg_cck_field_live_joomla_user', 'plugin', 'joomla_user', 'cck_field_live', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_live_joomla_user\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"joomla_user\"}', '{\"group\":\"PLG_CCK_FIELD_LIVE_GROUP_JOOMLA\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 0, 'plg_cck_field_live_url_variable', 'plugin', 'url_variable', 'cck_field_live', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_live_url_variable\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"url_variable\"}', '{\"group\":\"PLG_CCK_FIELD_LIVE_GROUP_URL\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 0, 'plg_cck_field_password', 'plugin', 'password', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_password\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"password\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_FORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 0, 'plg_cck_field_radio', 'plugin', 'radio', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_radio\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"radio\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_FORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10049, 0, 'plg_cck_field_restriction_cck_workflow', 'plugin', 'cck_workflow', 'cck_field_restriction', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_restriction_cck_workflow\",\"type\":\"plugin\",\"creationDate\":\"January 2012\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"cck_workflow\"}', '{\"group\":\"PLG_CCK_FIELD_RESTRICTION_GROUP_NONE\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 0, 'plg_cck_field_restriction_url_variable', 'plugin', 'url_variable', 'cck_field_restriction', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_restriction_url_variable\",\"type\":\"plugin\",\"creationDate\":\"December 2014\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"url_variable\"}', '{\"group\":\"PLG_CCK_FIELD_RESTRICTION_GROUP_NONE\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 0, 'plg_cck_field_search_generic', 'plugin', 'search_generic', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_search_generic\",\"type\":\"plugin\",\"creationDate\":\"May 2013\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"search_generic\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_SEARCH\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 0, 'plg_cck_field_search_ordering', 'plugin', 'search_ordering', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_search_ordering\",\"type\":\"plugin\",\"creationDate\":\"May 2013\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"search_ordering\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_SEARCH\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10053, 0, 'plg_cck_field_select_dynamic', 'plugin', 'select_dynamic', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_select_dynamic\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"select_dynamic\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_SELECT\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10054, 0, 'var_cck_seb_css3b', 'file', 'var_cck_seb_css3b', '', 0, 1, 0, 0, '{\"name\":\"var_cck_seb_css3b\",\"type\":\"file\",\"creationDate\":\"September 2015\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"Position Variation for SEBLOD 3.x - www.seblod.com\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10055, 0, 'var_cck_seb_css3', 'file', 'var_cck_seb_css3', '', 0, 1, 0, 0, '{\"name\":\"var_cck_seb_css3\",\"type\":\"file\",\"creationDate\":\"December 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"Position Variation for SEBLOD 3.x - www.seblod.com\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10056, 0, 'var_cck_joomla', 'file', 'var_cck_joomla', '', 0, 1, 0, 0, '{\"name\":\"var_cck_joomla\",\"type\":\"file\",\"creationDate\":\"December 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"Position Variation for SEBLOD 3.x - www.seblod.com\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 0, 'seb_table', 'template', 'seb_table', '', 0, 1, 1, 0, '{\"name\":\"seb_table\",\"type\":\"template\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"cck_client_item\":\"0\",\"class_table\":\"table table-striped\",\"table_header\":\"0\",\"class_table_tr_even\":\"\",\"table_layout\":\"\",\"class_table_tr_odd\":\"\",\"table_columns\":\"0\",\"position_margin\":\"10\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10058, 0, 'seb_one', 'template', 'seb_one', '', 0, 1, 1, 0, '{\"name\":\"seb_one\",\"type\":\"template\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"field_label\":\"1\",\"field_description\":\"0\",\"variation_default\":\"\",\"position_force_height\":\"1\",\"position_margin\":\"8\",\"position_header\":\"0\",\"position_header_variation\":\"\",\"position_left\":\"0\",\"position_left_variation\":\"\",\"position_top\":\"1\",\"position_top_variation\":\"\",\"position_sidebody_a\":\"0\",\"position_sidebody_b\":\"0\",\"position_bottom\":\"1\",\"position_bottom_variation\":\"\",\"position_right\":\"400\",\"position_right_variation\":\"\",\"position_footer\":\"0\",\"position_footer_variation\":\"\",\"debug\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10059, 0, 'seb_blog', 'template', 'seb_blog', '', 0, 1, 1, 0, '{\"name\":\"seb_blog\",\"type\":\"template\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"top_items\":\"1\",\"top_display\":\"renderItem\",\"top_display_field_name\":\"\",\"top_columns\":\"1\",\"top_column_width\":\"0\",\"top_column_width_custom\":\"50,50\",\"top_item_order\":\"0\",\"top_item_height\":\"1\",\"middle_items\":\"4\",\"middle_display\":\"renderItem\",\"middle_display_field_name\":\"\",\"middle_columns\":\"2\",\"middle_column_width\":\"0\",\"middle_column_width_custom\":\"50,50\",\"middle_item_order\":\"0\",\"middle_item_height\":\"1\",\"bottom_items\":\"\",\"bottom_display\":\"renderItem\",\"bottom_display_field_name\":\"\",\"bottom_columns\":\"3\",\"bottom_column_width\":\"0\",\"bottom_column_width_custom\":\"33,34,33\",\"bottom_item_order\":\"0\",\"bottom_item_height\":\"1\",\"cck_client_item\":\"1\",\"debug\":\"0\",\"item_margin\":\"8\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10060, 0, 'plg_user_cck', 'plugin', 'cck', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_cck\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"cck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10061, 0, 'plg_system_cck', 'plugin', 'cck', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_cck\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"cck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10062, 0, 'plg_search_cck', 'plugin', 'cck', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_cck\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"cck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10063, 0, 'plg_content_cck', 'plugin', 'cck', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_cck\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"cck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10064, 0, 'plg_cck_storage_standard', 'plugin', 'standard', 'cck_storage', 0, 1, 1, 0, '{\"name\":\"plg_cck_storage_standard\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"standard\"}', '{\"group\":\"PLG_CCK_STORAGE_GROUP_CONTENT\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10065, 0, 'plg_cck_storage_location_joomla_user_group', 'plugin', 'joomla_user_group', 'cck_storage_location', 0, 1, 1, 0, '{\"name\":\"plg_cck_storage_location_joomla_user_group\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"joomla_user_group\"}', '{\"base_default-parent_id\":\"1\",\"bridge\":\"0\",\"bridge_default-access\":\"2\",\"bridge_default-created_by\":\"0\",\"bridge_default-catid\":\"2\",\"bridge_default-state\":\"1\",\"bridge_default_title_mode\":\"0\",\"bridge_default_title\":\"#user_group_title#\",\"bridge_ordering\":\"1\",\"item_tag_title\":\"h2\",\"item_class_title\":\"\",\"item_separator\":\"1\",\"group\":\"PLG_CCK_STORAGE_LOCATION_GROUP_JOOMLA\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10066, 0, 'plg_cck_storage_location_joomla_user', 'plugin', 'joomla_user', 'cck_storage_location', 0, 1, 1, 0, '{\"name\":\"plg_cck_storage_location_joomla_user\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"joomla_user\"}', '{\"auto_email\":\"1\",\"bridge\":\"0\",\"bridge_default-access\":\"2\",\"bridge_default-catid\":\"2\",\"bridge_default-state\":\"1\",\"bridge_default_title_mode\":\"0\",\"bridge_default_title\":\"#user_name#\",\"bridge_ordering\":\"1\",\"item_tag_title\":\"h2\",\"item_class_title\":\"\",\"item_separator\":\"1\",\"group\":\"PLG_CCK_STORAGE_LOCATION_GROUP_JOOMLA\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10067, 0, 'plg_cck_storage_location_joomla_category', 'plugin', 'joomla_category', 'cck_storage_location', 0, 1, 1, 0, '{\"name\":\"plg_cck_storage_location_joomla_category\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"joomla_category\"}', '{\"base_default-access\":\"1\",\"base_default-created_user_id\":\"0\",\"base_default-published\":\"1\",\"allowed_status\":\"1,2\",\"item_tag_title\":\"h2\",\"item_class_title\":\"\",\"item_separator\":\"1\",\"routing_context\":\"0\",\"group\":\"PLG_CCK_STORAGE_LOCATION_GROUP_JOOMLA\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10068, 0, 'plg_cck_storage_location_joomla_article', 'plugin', 'joomla_article', 'cck_storage_location', 0, 1, 1, 0, '{\"name\":\"plg_cck_storage_location_joomla_article\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"joomla_article\"}', '{\"base_default-access\":\"1\",\"base_default-created_by\":\"0\",\"base_default-catid\":\"2\",\"base_default-state\":\"1\",\"allowed_status\":\"1,2\",\"auto_readmore\":\"1\",\"ordering\":\"0\",\"item_tag_title\":\"h2\",\"item_class_title\":\"\",\"item_separator\":\"1\",\"item_params\":\"0\",\"group\":\"PLG_CCK_STORAGE_LOCATION_GROUP_JOOMLA\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10069, 0, 'plg_cck_storage_location_free', 'plugin', 'free', 'cck_storage_location', 0, 1, 1, 0, '{\"name\":\"plg_cck_storage_location_free\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"free\"}', '{\"group\":\"PLG_CCK_STORAGE_LOCATION_GROUP_NONE\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10070, 0, 'plg_cck_storage_json', 'plugin', 'json', 'cck_storage', 0, 1, 1, 0, '{\"name\":\"plg_cck_storage_json\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"json\"}', '{\"group\":\"PLG_CCK_STORAGE_GROUP_CONTENT_ADVANCED\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10071, 0, 'plg_cck_storage_custom', 'plugin', 'custom', 'cck_storage', 0, 1, 1, 0, '{\"name\":\"plg_cck_storage_custom\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"custom\"}', '{\"group\":\"PLG_CCK_STORAGE_GROUP_CONTENT_ADVANCED\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10072, 0, 'plg_cck_field_validation_url', 'plugin', 'url', 'cck_field_validation', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_validation_url\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"url\"}', '{\"alert\":\"PLG_CCK_FIELD_VALIDATION_URL_ALERT\",\"group\":\"PLG_CCK_FIELD_VALIDATION_GROUP_INTERNET\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10073, 0, 'plg_cck_field_validation_required', 'plugin', 'required', 'cck_field_validation', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_validation_required\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"required\"}', '{\"alert\":\"PLG_CCK_FIELD_VALIDATION_REQUIRED_ALERT\",\"alert2\":\"PLG_CCK_FIELD_VALIDATION_REQUIRED_ALERT2\",\"alert3\":\"PLG_CCK_FIELD_VALIDATION_REQUIRED_ALERT3\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10074, 0, 'plg_cck_field_validation_letter_number_only', 'plugin', 'letter_number_only', 'cck_field_validation', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_validation_letter_number_only\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"letter_number_only\"}', '{\"alert\":\"PLG_CCK_FIELD_VALIDATION_LETTER_NUMBER_ONLY_ALERT\",\"group\":\"PLG_CCK_FIELD_VALIDATION_GROUP_ALPHANUMERIC\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `k4hct_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10075, 0, 'plg_cck_field_validation_email', 'plugin', 'email', 'cck_field_validation', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_validation_email\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"email\"}', '{\"alert\":\"PLG_CCK_FIELD_VALIDATION_EMAIL_ALERT\",\"group\":\"PLG_CCK_FIELD_VALIDATION_GROUP_CONTACT\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10076, 0, 'plg_cck_field_validation_confirm', 'plugin', 'confirm', 'cck_field_validation', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_validation_confirm\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"confirm\"}', '{\"alert\":\"PLG_CCK_FIELD_VALIDATION_CONFIRM_ALERT\",\"group\":\"PLG_CCK_FIELD_VALIDATION_GROUP_UNCATEGORIZED\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10077, 0, 'plg_cck_field_validation_ajax_availability', 'plugin', 'ajax_availability', 'cck_field_validation', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_validation_ajax_availability\",\"type\":\"plugin\",\"creationDate\":\"January 2012\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"ajax_availability\"}', '{\"alert\":\"PLG_CCK_FIELD_VALIDATION_AJAX_AVAILABILITY_ALERT\",\"alert2\":\"PLG_CCK_FIELD_VALIDATION_AJAX_AVAILABILITY_ALERT2\",\"alert3\":\"PLG_CCK_FIELD_VALIDATION_AJAX_AVAILABILITY_ALERT3\",\"group\":\"PLG_CCK_FIELD_VALIDATION_GROUP_AJAX\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10078, 0, 'plg_cck_field_upload_image', 'plugin', 'upload_image', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_upload_image\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"upload_image\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_UPLOAD\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10079, 0, 'plg_cck_field_select_multiple', 'plugin', 'select_multiple', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_select_multiple\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"select_multiple\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_SELECT\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10080, 0, 'plg_cck_field_select_numeric', 'plugin', 'select_numeric', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_select_numeric\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"select_numeric\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_SELECT\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10081, 0, 'plg_cck_field_select_simple', 'plugin', 'select_simple', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_select_simple\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"select_simple\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_SELECT\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10082, 0, 'plg_cck_field_upload_file', 'plugin', 'upload_file', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_upload_file\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"upload_file\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_UPLOAD\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10083, 0, 'plg_cck_field_typo_underline', 'plugin', 'underline', 'cck_field_typo', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_typo_underline\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"underline\"}', '{\"group\":\"PLG_CCK_FIELD_TYPO_GROUP_BASIC\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10084, 0, 'plg_cck_field_typo_joomla_jgrid', 'plugin', 'joomla_jgrid', 'cck_field_typo', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_typo_joomla_jgrid\",\"type\":\"plugin\",\"creationDate\":\"May 2013\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"joomla_jgrid\"}', '{\"group\":\"PLG_CCK_FIELD_TYPO_GROUP_JOOMLA\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10085, 0, 'plg_cck_field_typo_italic', 'plugin', 'italic', 'cck_field_typo', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_typo_italic\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"italic\"}', '{\"group\":\"PLG_CCK_FIELD_TYPO_GROUP_BASIC\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10086, 0, 'plg_cck_field_typo_image', 'plugin', 'image', 'cck_field_typo', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_typo_image\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"image\"}', '{\"group\":\"PLG_CCK_FIELD_TYPO_GROUP_IMAGE\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10087, 0, 'plg_cck_field_typo_html', 'plugin', 'html', 'cck_field_typo', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_typo_html\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"html\"}', '{\"group\":\"PLG_CCK_FIELD_TYPO_GROUP_NONE\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10088, 0, 'plg_cck_field_typo_heading', 'plugin', 'heading', 'cck_field_typo', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_typo_heading\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"heading\"}', '{\"group\":\"PLG_CCK_FIELD_TYPO_GROUP_BASIC\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10089, 0, 'plg_cck_field_typo_date', 'plugin', 'date', 'cck_field_typo', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_typo_date\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"date\"}', '{\"group\":\"PLG_CCK_FIELD_TYPO_GROUP_DATE_AND_TIME\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10090, 0, 'plg_cck_field_typo_clear', 'plugin', 'clear', 'cck_field_typo', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_typo_clear\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"clear\"}', '{\"group\":\"PLG_CCK_FIELD_TYPO_GROUP_NONE\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10091, 0, 'plg_cck_field_typo_bold', 'plugin', 'bold', 'cck_field_typo', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_typo_bold\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"bold\"}', '{\"group\":\"PLG_CCK_FIELD_TYPO_GROUP_BASIC\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10092, 0, 'plg_cck_field_textarea', 'plugin', 'textarea', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_textarea\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"textarea\"}', '{\"export_prepare_output\":\"\",\"group\":\"PLG_CCK_FIELD_GROUP_TEXTAREA\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10093, 0, 'plg_cck_field_text', 'plugin', 'text', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_text\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"text\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_FORM\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10094, 0, 'plg_cck_field_tabs', 'plugin', 'tabs', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_tabs\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"tabs\"}', '{\"group\":\"PLG_CCK_FIELD_GROUP_HTML\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10095, 0, 'plg_cck_field_storage', 'plugin', 'storage', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_storage\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"storage\"}', '{\"group\":\"CORE\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10096, 0, 'SEBLOD - es-ES', 'file', 'seblod-es-ES', '', 0, 1, 0, 0, '{\"name\":\"SEBLOD - es-ES\",\"type\":\"file\",\"creationDate\":\"16.09.2018\",\"author\":\"Pacoguio, 3DM, jorgemarinosanchez, Hertak, proserven, tecnologyuruguay, EliasAli68, marceloroggio, mperaya, vgcouso, rafaelvm, erickmines, poseidon_eml, digital03, kupiff, michelbg, r2d2Melville, lau_ibarra, luclic, JohnBurrows, JulioAbundis, llorencs, manyfeathers, dmalvarez\",\"copyright\":\"2018 SEBLOD\",\"authorEmail\":\"info@seblod.com\",\"authorUrl\":\"https:\\/\\/www.transifex.com\\/JoomlaTranslators\\/SeblodCCK\\/\",\"version\":\"2018-09-16-05-19-07\",\"description\":\"\\n        SEBLOD CCK translation package\\n    \",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10097, 0, 'plg_cck_field_wysiwyg_editor', 'plugin', 'wysiwyg_editor', 'cck_field', 0, 1, 1, 0, '{\"name\":\"plg_cck_field_wysiwyg_editor\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Octopoos\",\"copyright\":\"Copyright (C) 2009 - 2018 SEBLOD. All Rights Reserved.\",\"authorEmail\":\"contact@seblod.com\",\"authorUrl\":\"https:\\/\\/www.seblod.com\",\"version\":\"3.16.3\",\"description\":\"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com\",\"group\":\"\",\"filename\":\"wysiwyg_editor\"}', '{\"export_prepare_output\":\"\",\"guest_access\":\"0\",\"group\":\"PLG_CCK_FIELD_GROUP_TEXTAREA\",\"export\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_fields`
--

CREATE TABLE `k4hct_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_fields_categories`
--

CREATE TABLE `k4hct_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_fields_groups`
--

CREATE TABLE `k4hct_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_fields_values`
--

CREATE TABLE `k4hct_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_filters`
--

CREATE TABLE `k4hct_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links`
--

CREATE TABLE `k4hct_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_terms0`
--

CREATE TABLE `k4hct_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_terms1`
--

CREATE TABLE `k4hct_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_terms2`
--

CREATE TABLE `k4hct_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_terms3`
--

CREATE TABLE `k4hct_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_terms4`
--

CREATE TABLE `k4hct_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_terms5`
--

CREATE TABLE `k4hct_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_terms6`
--

CREATE TABLE `k4hct_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_terms7`
--

CREATE TABLE `k4hct_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_terms8`
--

CREATE TABLE `k4hct_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_terms9`
--

CREATE TABLE `k4hct_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_termsa`
--

CREATE TABLE `k4hct_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_termsb`
--

CREATE TABLE `k4hct_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_termsc`
--

CREATE TABLE `k4hct_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_termsd`
--

CREATE TABLE `k4hct_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_termse`
--

CREATE TABLE `k4hct_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_links_termsf`
--

CREATE TABLE `k4hct_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_taxonomy`
--

CREATE TABLE `k4hct_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `k4hct_finder_taxonomy`
--

INSERT INTO `k4hct_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_taxonomy_map`
--

CREATE TABLE `k4hct_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_terms`
--

CREATE TABLE `k4hct_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_terms_common`
--

CREATE TABLE `k4hct_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `k4hct_finder_terms_common`
--

INSERT INTO `k4hct_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_tokens`
--

CREATE TABLE `k4hct_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_tokens_aggregate`
--

CREATE TABLE `k4hct_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_finder_types`
--

CREATE TABLE `k4hct_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_languages`
--

CREATE TABLE `k4hct_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_languages`
--

INSERT INTO `k4hct_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_menu`
--

CREATE TABLE `k4hct_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_menu`
--

INSERT INTO `k4hct_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 51, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 42, 1, '*', 0),
(102, 'mainmenu', 'Contactanos', 'contactanos', '', 'contactanos', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_misc\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 43, 44, 0, '*', 0),
(103, 'main', 'com_cck', 'SEBLOD', '', 'SEBLOD', 'index.php?option=com_cck', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_cck/assets/images/16/icon-16-seblod.png', 0, '{}', 45, 46, 0, '', 1),
(104, 'mainmenu', 'Clientes', 'clientes', '', 'clientes', 'index.php?option=com_cck&view=list&search=clientes&task=search', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_list_title\":\"\",\"tag_list_title\":\"h1\",\"class_list_title\":\"\",\"display_list_title\":\"\",\"title_list_title\":\"\",\"show_list_desc\":\"\",\"list_desc\":\"\",\"tag_list_desc\":\"div\",\"show_form\":\"\",\"show_list\":\"\",\"auto_redirect\":\"\",\"auto_redirect_vars\":\"\",\"limit2\":\"0\",\"pagination2\":\"\",\"ordering\":\"\",\"order_by\":\"\",\"ordering2\":\"\",\"show_items_number\":\"\",\"show_items_number_label\":\"Results\",\"class_items_number\":\"total\",\"show_pages_number\":\"\",\"show_pagination\":\"\",\"class_pagination\":\"pagination\",\"live\":\"\",\"variation\":\"\",\"search2\":\"\",\"limit\":\"0\",\"raw_rendering\":\"0\",\"sef\":\"\",\"display_form_title\":\"\",\"title_form_title\":\"\",\"urlvars\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 47, 50, 0, '*', 0),
(105, 'mainmenu', 'Lista Clientes', 'lista-clientes', '', 'clientes/lista-clientes', 'index.php?option=com_cck&view=list&search=lista_clientes&task=search', 'component', 1, 104, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 48, 49, 0, '*', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_menu_types`
--

CREATE TABLE `k4hct_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_menu_types`
--

INSERT INTO `k4hct_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_messages`
--

CREATE TABLE `k4hct_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_messages_cfg`
--

CREATE TABLE `k4hct_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_modules`
--

CREATE TABLE `k4hct_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_modules`
--

INSERT INTO `k4hct_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(88, 57, 'Breadcrumbs - SEBLOD', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cck_breadcrumbs', 1, 1, '', 0, '*'),
(89, 58, 'Form - SEBLOD', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cck_form', 1, 1, '', 0, '*'),
(90, 59, 'List - SEBLOD', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cck_list', 1, 1, '', 0, '*'),
(91, 60, 'Admin Menu - SEBLOD', '', '', 2, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_cck_menu', 3, 1, '', 1, '*'),
(92, 61, 'Quick Add - SEBLOD', '', '', 0, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_cck_quickadd', 3, 1, '', 1, '*'),
(93, 62, 'Quick Icons - SEBLOD', '', '', 2, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_cck_quickicon', 3, 1, '', 1, '*'),
(94, 63, 'Search - SEBLOD', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cck_search', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_modules_menu`
--

CREATE TABLE `k4hct_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_modules_menu`
--

INSERT INTO `k4hct_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_newsfeeds`
--

CREATE TABLE `k4hct_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_overrider`
--

CREATE TABLE `k4hct_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_postinstall_messages`
--

CREATE TABLE `k4hct_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_postinstall_messages`
--

INSERT INTO `k4hct_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1),
(8, 10000, 'SEBLOD 3.16.3', 'LIB_CCK_POSTINSTALL_WELCOME_DESCRIPTION', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(9, 10000, 'Free Button Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:42.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(10, 10000, 'Submit Button Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:42.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(11, 10000, 'Calendar Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:42.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(12, 10000, 'Checkbox Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:42.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(13, 10000, 'Colorpicker Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:42.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(14, 10000, 'Div Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:43.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(15, 10000, 'Email Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:43.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(16, 10000, 'Email Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>updated</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:43.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(17, 10000, 'Field X Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:43.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(18, 10000, 'Free Text Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:43.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(19, 10000, 'Group Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:43.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(20, 10000, 'Group X Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:43.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(21, 10000, 'Hidden Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:44.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(22, 10000, 'Icon Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:44.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(23, 10000, 'JForm Access Level Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:44.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(24, 10000, 'JForm Associations Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:44.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(25, 10000, 'JForm Associations Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>updated</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:44.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(26, 10000, 'JForm Calendar Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:44.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(27, 10000, 'JForm Category Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:44.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(28, 10000, 'JForm Calendar Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>updated</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:45.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(29, 10000, 'JForm Category Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>updated</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:45.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(30, 10000, 'JForm Component Layout Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:45.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(31, 10000, 'JForm Content Language Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:45.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(32, 10000, 'JForm Editors Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:45.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(33, 10000, 'JForm Group Parent Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:45.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(34, 10000, 'JForm Help Site Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:46.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(35, 10000, 'JForm Media Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:46.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(36, 10000, 'JForm Menu Item Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:46.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(37, 10000, 'JForm Rules Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:46.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(38, 10000, 'JForm Tag Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:47.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(39, 10000, 'JForm Tag Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>updated</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:47.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(40, 10000, 'JForm Template Style Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:47.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(41, 10000, 'JForm Timezone Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:47.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(42, 10000, 'JForm User Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:47.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(43, 10000, 'JForm User Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>updated</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:48.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(44, 10000, 'JForm User Groups Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:48.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(45, 10000, 'Joomla! Module Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:48.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(46, 10000, 'Link Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:48.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(47, 10000, 'Form Link Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:48.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(48, 10000, 'List & Search Link Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:49.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(49, 10000, 'Content Link Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:49.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(50, 10000, 'Delete Link Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:49.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(51, 10000, 'Joomla! User Live Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:49.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(52, 10000, 'Url Variable Live Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:50.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(53, 10000, 'Password Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:50.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(54, 10000, 'Radio Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:51.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(55, 10000, 'Workflow Restriction Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:51.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(56, 10000, 'Url Variable Restriction Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:51.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(57, 10000, 'Search Generic Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:51.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(58, 10000, 'Search Generic Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>updated</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:52.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(59, 10000, 'Search Ordering Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:52.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(60, 10000, 'Dynamic Select Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:53.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(61, 10000, 'Standard Storage Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:56.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(62, 10000, 'Joomla! User Group Object Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:56.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(63, 10000, 'Joomla! User Object Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:56.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(64, 10000, 'Joomla! Category Object Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:56.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(65, 10000, 'Joomla! Article Object Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:56.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(66, 10000, 'Free Object Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:56.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(67, 10000, 'JSON Storage Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:57.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(68, 10000, 'Custom Storage Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:57.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(69, 10000, 'Free Object Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>updated</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:57.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(70, 10000, 'Url Validation Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:58.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(71, 10000, 'Required Validation Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:59.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(72, 10000, 'Letter Number Only Validation Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:59.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(73, 10000, 'Email Validation Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 01:59.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(74, 10000, 'Confirm Validation Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:00.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(75, 10000, 'Ajax Availability Validation Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:00.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(76, 10000, 'Upload Image Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:00.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(77, 10000, 'Dynamic Select Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>updated</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:01.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(78, 10000, 'Multiple Select Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:01.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(79, 10000, 'Numeric Select Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:02.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(80, 10000, 'Simple Select Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:02.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(81, 10000, 'Upload File Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:03.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(82, 10000, 'Underline Typography Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:03.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(83, 10000, 'Joomla! JGrid Typography Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:04.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(84, 10000, 'Italic Typography Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:04.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(85, 10000, 'Image Typography Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:05.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(86, 10000, 'HTML Typography Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:05.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(87, 10000, 'Heading Typography Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:05.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(88, 10000, 'Date Typography Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:06.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(89, 10000, 'Clear Typography Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:06.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(90, 10000, 'Bold Typography Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:06.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(91, 10000, 'Textarea Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:07.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(92, 10000, 'Textarea Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>updated</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:07.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(93, 10000, 'Text Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:07.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(94, 10000, 'Tabs Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:08.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(95, 10000, 'Storage Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 02:08.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1),
(96, 10000, 'Wysiwyg Editor Field Plug-in <span class=\"label label-primary\">Core</span> 3.16.3', 'This extension has been <strong>installed</strong> by <strong><a href=\"index.php?option=com_cck&view=form&return_o=users&return_v=users&type=user&id=531\" target=\"_blank\" rel=\"noopener noreferrer\">Super User</a></strong> on Monday, 17 September 2018 12:41.', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.16.3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_redirect_links`
--

CREATE TABLE `k4hct_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_schemas`
--

CREATE TABLE `k4hct_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_schemas`
--

INSERT INTO `k4hct_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.8.9-2018-06-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_session`
--

CREATE TABLE `k4hct_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_session`
--

INSERT INTO `k4hct_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('q7soj3ls1bsil8t5rc4ckgn9fd', 1, 0, '1537190074', 'joomla|s:2792:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo4OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyNDg7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTM3MTg3Mzk3O3M6NDoibGFzdCI7aToxNTM3MTkwMDU0O3M6Mzoibm93IjtpOjE1MzcxOTAwNzM7fXM6NToidG9rZW4iO3M6MzI6IlZ0OG11bmtRSU56c0xuazNLaGhpRE50TlFzRGFySnhJIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7czoxMjoicmVkaXJlY3RfdXJsIjtOO31zOjc6ImNvbV9jY2siO086ODoic3RkQ2xhc3MiOjM6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo0OiJ0eXBlIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fXM6NToiZmllbGQiO086ODoic3RkQ2xhc3MiOjM6e3M6NDoiZGF0YSI7TjtzOjk6ImFqYXhfdHlwZSI7TjtzOjI6ImlkIjthOjI6e2k6MDtpOjUwMDE7aToxO2k6NTAwNzt9fXM6Njoic2VhcmNoIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fX1zOjM6ImFkZCI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo0OiJ0eXBlIjtPOjg6InN0ZENsYXNzIjo1OntzOjExOiJza2VsZXRvbl9pZCI7czo5OiJ1bmRlZmluZWQiO3M6OToidHBsX2FkbWluIjtzOjc6InNlYl9vbmUiO3M6ODoidHBsX3NpdGUiO3M6Nzoic2ViX29uZSI7czoxMToidHBsX2NvbnRlbnQiO3M6Nzoic2ViX29uZSI7czo5OiJ0cGxfaW50cm8iO3M6Nzoic2ViX29uZSI7fXM6NToiZmllbGQiO086ODoic3RkQ2xhc3MiOjE6e3M6MTA6ImFqYXhfc3RhdGUiO2k6MTt9czo2OiJzZWFyY2giO086ODoic3RkQ2xhc3MiOjY6e3M6MTI6ImNvbnRlbnRfdHlwZSI7czoxMjoiY2xpZW50ZV9saXN0IjtzOjEwOiJ0cGxfc2VhcmNoIjtzOjc6InNlYl9vbmUiO3M6MTA6InRwbF9maWx0ZXIiO3M6Nzoic2ViX29uZSI7czo4OiJ0cGxfbGlzdCI7czo5OiJzZWJfdGFibGUiO3M6ODoidHBsX2l0ZW0iO3M6Nzoic2ViX29uZSI7czo0OiJza2lwIjtzOjA6IiI7fX1zOjg6InZlcnNpb25zIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJlX3R5cGUiO3M6Njoic2VhcmNoIjt9fX1zOjk6ImNvbV9tZW51cyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo1OiJpdGVtcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo4OiJtZW51dHlwZSI7czo4OiJtYWlubWVudSI7czo5OiJjbGllbnRfaWQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6NDp7czo0OiJ0eXBlIjtOO3M6NDoibGluayI7TjtzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiNTMxIjt9czo4OiJjY2tfdGFzayI7czowOiIiO3M6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319czoyMDoiY2NrX2hhc2hfc2VibG9kX2Zvcm0iO3M6MzI6IjdlZGI0N2Y0NjUyNGEzZmZjYzcwZDMyNjkyMTkzYmNkIjtzOjQxOiJjY2tfaGFzaF9zZWJsb2RfZm9ybV9jbGllbnRlX2xpc3RfY29udGV4dCI7czoyOiJbXSI7czoyODoiY2NrX2hhc2hfc2VibG9kX2Zvcm1fY29udGV4dCI7Tjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 531, 'root'),
('qtdp5r4bap6c9iegpd6ovr5mvl', 0, 0, '1537190061', 'joomla|s:1132:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozNjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MzcxODU5MTY7czo0OiJsYXN0IjtpOjE1MzcxODk2MzE7czozOiJub3ciO2k6MTUzNzE5MDA1OTt9czo1OiJ0b2tlbiI7czozMjoiMGt4MXRLdFpYU2JxMDJubDJ0aXdVVU9VUHZJTE9NbjIiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMToiY29tX2NvbnRhY3QiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiY29udGFjdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjthOjE6e3M6NToiY2F0aWQiO3M6MToiNCI7fX19czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoyOntzOjY6InJldHVybiI7czozMjoiaHR0cDovL2xvY2FsaG9zdC90ZXNpcy9pbmRleC5waHAiO3M6NDoiZGF0YSI7YTowOnt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiNTMxIjt9czo4OiJjY2tfdGFzayI7czowOiIiO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 531, 'root');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_tags`
--

CREATE TABLE `k4hct_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_tags`
--

INSERT INTO `k4hct_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 531, '2018-09-16 15:35:30', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_template_styles`
--

CREATE TABLE `k4hct_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_template_styles`
--

INSERT INTO `k4hct_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}'),
(9, 'seb_table', 0, '0', 'seb_table - Default', '{\"cck_client_item\":\"0\",\"class_table\":\"table table-striped\",\"table_header\":\"0\",\"class_table_tr_even\":\"\",\"table_layout\":\"\",\"class_table_tr_odd\":\"\",\"table_columns\":\"0\",\"position_margin\":\"10\"}'),
(10, 'seb_one', 0, '0', 'seb_one - Default', '{\"field_label\":\"1\",\"field_description\":\"0\",\"variation_default\":\"\",\"position_force_height\":\"1\",\"position_margin\":\"8\",\"position_header\":\"0\",\"position_header_variation\":\"\",\"position_left\":\"0\",\"position_left_variation\":\"\",\"position_top\":\"1\",\"position_top_variation\":\"\",\"position_sidebody_a\":\"0\",\"position_sidebody_b\":\"0\",\"position_bottom\":\"1\",\"position_bottom_variation\":\"\",\"position_right\":\"400\",\"position_right_variation\":\"\",\"position_footer\":\"0\",\"position_footer_variation\":\"\",\"debug\":\"0\"}'),
(11, 'seb_blog', 0, '0', 'seb_blog - Default', '{\"top_items\":\"1\",\"top_display\":\"renderItem\",\"top_display_field_name\":\"\",\"top_columns\":\"1\",\"top_column_width\":\"0\",\"top_column_width_custom\":\"50,50\",\"top_item_order\":\"0\",\"top_item_height\":\"1\",\"middle_items\":\"4\",\"middle_display\":\"renderItem\",\"middle_display_field_name\":\"\",\"middle_columns\":\"2\",\"middle_column_width\":\"0\",\"middle_column_width_custom\":\"50,50\",\"middle_item_order\":\"0\",\"middle_item_height\":\"1\",\"bottom_items\":\"\",\"bottom_display\":\"renderItem\",\"bottom_display_field_name\":\"\",\"bottom_columns\":\"3\",\"bottom_column_width\":\"0\",\"bottom_column_width_custom\":\"33,34,33\",\"bottom_item_order\":\"0\",\"bottom_item_height\":\"1\",\"cck_client_item\":\"1\",\"debug\":\"0\",\"item_margin\":\"8\"}'),
(12, 'seb_table', 0, '0', 'seb_table - article_manager (list)', '{\"rendering_css_class\":\"\",\"rendering_item_attributes\":\"sortable-group-id=\\\"$cck->getValue(\'art_catid\')\\\"\",\"cck_client_item\":\"0\",\"class_table\":\"table table-striped\",\"table_header\":\"0\",\"class_table_tr_even\":\"\",\"table_layout\":\"responsive\",\"class_table_tr_odd\":\"\",\"table_columns\":\"0\",\"position_margin\":\"10\"}'),
(13, 'seb_table', 0, '0', 'seb_table - category_manager (list)', '{\"rendering_css_class\":\"\",\"rendering_item_attributes\":\"sortable-group-id=\\\"$cck->getValue(\'cat_parent_id\')\\\"\",\"cck_client_item\":\"0\",\"class_table\":\"table table-striped\",\"table_header\":\"0\",\"class_table_tr_even\":\"\",\"table_layout\":\"responsive\",\"class_table_tr_odd\":\"\",\"table_columns\":\"0\",\"position_margin\":\"10\"}'),
(14, 'seb_table', 0, '0', 'seb_table - user_manager (list)', '{\"rendering_css_class\":\"\",\"rendering_item_attributes\":\"\",\"cck_client_item\":\"0\",\"class_table\":\"table table-striped\",\"table_header\":\"0\",\"class_table_tr_even\":\"\",\"table_layout\":\"responsive\",\"class_table_tr_odd\":\"\",\"table_columns\":\"0\",\"position_margin\":\"10\"}'),
(15, 'seb_one', 0, '0', 'seb_one - cliente_list (admin)', '{\"rendering_css_class\":\"\",\"rendering_custom_attributes\":\"\",\"field_label\":\"1\",\"field_description\":\"0\",\"variation_default\":\"\",\"position_force_height\":\"1\",\"position_margin\":\"8\",\"position_header\":\"0\",\"position_header_variation\":\"\",\"position_left\":\"0\",\"position_left_variation\":\"\",\"position_top\":\"1\",\"position_top_variation\":\"\",\"position_sidebody_a\":\"0\",\"position_sidebody_b\":\"0\",\"position_bottom\":\"1\",\"position_bottom_variation\":\"\",\"position_right\":\"400\",\"position_right_variation\":\"\",\"position_footer\":\"0\",\"position_footer_variation\":\"\",\"debug\":\"0\"}'),
(16, 'seb_one', 0, '0', 'seb_one - clientes (search)', '{\"rendering_item_attributes\":\"\",\"rendering_css_class\":\"\",\"field_label\":\"1\",\"field_description\":\"0\",\"variation_default\":\"\",\"position_force_height\":\"1\",\"position_margin\":\"8\",\"position_header\":\"0\",\"position_header_variation\":\"\",\"position_left\":\"0\",\"position_left_variation\":\"\",\"position_top\":\"1\",\"position_top_variation\":\"\",\"position_sidebody_a\":\"0\",\"position_sidebody_b\":\"0\",\"position_bottom\":\"1\",\"position_bottom_variation\":\"\",\"position_right\":\"400\",\"position_right_variation\":\"\",\"position_footer\":\"0\",\"position_footer_variation\":\"\",\"debug\":\"0\"}'),
(17, 'seb_table', 0, '0', 'seb_table - clientes (list)', '{\"rendering_item_attributes\":\"\",\"rendering_css_class\":\"\",\"cck_client_item\":\"0\",\"class_table\":\"table table-striped\",\"table_header\":\"0\",\"class_table_tr_even\":\"\",\"table_layout\":\"\",\"class_table_tr_odd\":\"\",\"table_columns\":\"0\",\"position_margin\":\"10\"}'),
(18, 'seb_one', 0, '0', 'seb_one - clientes (search)', '{\"rendering_item_attributes\":\"\",\"rendering_css_class\":\"\",\"field_label\":\"1\",\"field_description\":\"0\",\"variation_default\":\"\",\"position_force_height\":\"1\",\"position_margin\":\"8\",\"position_header\":\"0\",\"position_header_variation\":\"\",\"position_left\":\"0\",\"position_left_variation\":\"\",\"position_top\":\"1\",\"position_top_variation\":\"\",\"position_sidebody_a\":\"0\",\"position_sidebody_b\":\"0\",\"position_bottom\":\"1\",\"position_bottom_variation\":\"\",\"position_right\":\"400\",\"position_right_variation\":\"\",\"position_footer\":\"0\",\"position_footer_variation\":\"\",\"debug\":\"0\"}'),
(19, 'seb_one', 0, '0', 'seb_one - clientes (search)', '{\"rendering_item_attributes\":\"\",\"rendering_css_class\":\"\",\"field_label\":\"1\",\"field_description\":\"0\",\"variation_default\":\"\",\"position_force_height\":\"1\",\"position_margin\":\"8\",\"position_header\":\"0\",\"position_header_variation\":\"\",\"position_left\":\"0\",\"position_left_variation\":\"\",\"position_top\":\"1\",\"position_top_variation\":\"\",\"position_sidebody_a\":\"0\",\"position_sidebody_b\":\"0\",\"position_bottom\":\"1\",\"position_bottom_variation\":\"\",\"position_right\":\"400\",\"position_right_variation\":\"\",\"position_footer\":\"0\",\"position_footer_variation\":\"\",\"debug\":\"0\"}'),
(20, 'seb_one', 0, '0', 'seb_one - clientes (search)', '{\"rendering_item_attributes\":\"\",\"rendering_css_class\":\"\",\"field_label\":\"1\",\"field_description\":\"0\",\"variation_default\":\"\",\"position_force_height\":\"1\",\"position_margin\":\"8\",\"position_header\":\"0\",\"position_header_variation\":\"\",\"position_left\":\"0\",\"position_left_variation\":\"\",\"position_top\":\"1\",\"position_top_variation\":\"\",\"position_sidebody_a\":\"0\",\"position_sidebody_b\":\"0\",\"position_bottom\":\"1\",\"position_bottom_variation\":\"\",\"position_right\":\"400\",\"position_right_variation\":\"\",\"position_footer\":\"0\",\"position_footer_variation\":\"\",\"debug\":\"0\"}'),
(21, 'seb_one', 0, '0', 'seb_one - lista_clientes (search)', '{\"rendering_item_attributes\":\"\",\"rendering_css_class\":\"\",\"field_label\":\"1\",\"field_description\":\"0\",\"variation_default\":\"\",\"position_force_height\":\"1\",\"position_margin\":\"8\",\"position_header\":\"0\",\"position_header_variation\":\"\",\"position_left\":\"0\",\"position_left_variation\":\"\",\"position_top\":\"1\",\"position_top_variation\":\"\",\"position_sidebody_a\":\"0\",\"position_sidebody_b\":\"0\",\"position_bottom\":\"1\",\"position_bottom_variation\":\"\",\"position_right\":\"400\",\"position_right_variation\":\"\",\"position_footer\":\"0\",\"position_footer_variation\":\"\",\"debug\":\"0\"}'),
(22, 'seb_table', 0, '0', 'seb_table - lista_clientes (list)', '{\"rendering_item_attributes\":\"\",\"rendering_css_class\":\"\",\"cck_client_item\":\"0\",\"class_table\":\"table table-striped\",\"table_header\":\"0\",\"class_table_tr_even\":\"\",\"table_layout\":\"\",\"class_table_tr_odd\":\"\",\"table_columns\":\"0\",\"position_margin\":\"10\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_ucm_base`
--

CREATE TABLE `k4hct_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_ucm_content`
--

CREATE TABLE `k4hct_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_ucm_history`
--

CREATE TABLE `k4hct_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_ucm_history`
--

INSERT INTO `k4hct_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 2, '', '2018-09-16 23:13:22', 531, 1759, '31ab978e6fec5620fa794ac8eaed90bc4b722850', '{\"id\":1,\"name\":\"Contactanos\",\"alias\":\"contactanos\",\"con_position\":\"\",\"address\":\"Sangolqui\",\"suburb\":\"Sangolqui\",\"state\":\"Pichincha\",\"country\":\"Ecuador\",\"postcode\":\"+593\",\"telephone\":\"\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"trebortc@hotmail.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"ordering\":1,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"plain\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":false,\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2018-09-16 23:13:22\",\"created_by\":\"531\",\"created_by_alias\":\"\",\"modified\":\"2018-09-16 23:13:22\",\"modified_by\":null,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":1,\"hits\":null}', 0),
(2, 8, 5, '', '2018-09-17 01:54:58', 531, 470, '19b61bef2517973f69d140feaee72d5627df49ad', '{\"id\":8,\"asset_id\":64,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":\"users\",\"extension\":\"com_content\",\"title\":\"Users\",\"alias\":\"users\",\"note\":null,\"description\":null,\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"2\",\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"531\",\"created_time\":\"2018-09-17 01:54:58\",\"modified_user_id\":null,\"modified_time\":\"2018-09-17 01:54:58\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(3, 9, 5, '', '2018-09-17 01:54:58', 531, 488, '13d4272a0ad1a732868628663558e354105768ef', '{\"id\":9,\"asset_id\":65,\"parent_id\":\"1\",\"lft\":\"13\",\"rgt\":14,\"level\":1,\"path\":\"user-groups\",\"extension\":\"com_content\",\"title\":\"User Groups\",\"alias\":\"user-groups\",\"note\":null,\"description\":null,\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"2\",\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"531\",\"created_time\":\"2018-09-17 01:54:58\",\"modified_user_id\":null,\"modified_time\":\"2018-09-17 01:54:58\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_updates`
--

CREATE TABLE `k4hct_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Volcado de datos para la tabla `k4hct_updates`
--

INSERT INTO `k4hct_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 2, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', ''),
(2, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(3, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(4, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(5, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(6, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(7, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(8, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(9, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(10, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(11, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(12, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(13, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(14, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(15, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(16, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(17, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(18, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(19, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', ''),
(20, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(21, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(22, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(23, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(24, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.8.11.2', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(25, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(26, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(27, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(28, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(29, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.8.12.2', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(30, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(31, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(32, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(33, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(34, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(35, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(36, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(37, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(38, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(39, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(40, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(41, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(42, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(43, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.8.12.2', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(44, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(45, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(46, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(47, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(48, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.8.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(49, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(50, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(51, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(52, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(53, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(54, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(55, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(56, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(57, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.7.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(58, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(59, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(60, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(61, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(62, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(63, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(64, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(65, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_update_sites`
--

CREATE TABLE `k4hct_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Volcado de datos para la tabla `k4hct_update_sites`
--

INSERT INTO `k4hct_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1537187408, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1537187410, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1537187410, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_update_sites_extensions`
--

CREATE TABLE `k4hct_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Volcado de datos para la tabla `k4hct_update_sites_extensions`
--

INSERT INTO `k4hct_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_usergroups`
--

CREATE TABLE `k4hct_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_usergroups`
--

INSERT INTO `k4hct_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_users`
--

CREATE TABLE `k4hct_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_users`
--

INSERT INTO `k4hct_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(531, 'Super User', 'root', 'trebortc@hotmail.com', '$2y$10$f030hXxtuWlsEdS9dIaaGOBEzwKFpA6DgAVrOxZ1kTTyuTfV0TiPC', 0, 1, '2018-09-16 15:35:31', '2018-09-17 13:04:21', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_user_keys`
--

CREATE TABLE `k4hct_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_user_notes`
--

CREATE TABLE `k4hct_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_user_profiles`
--

CREATE TABLE `k4hct_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_user_usergroup_map`
--

CREATE TABLE `k4hct_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_user_usergroup_map`
--

INSERT INTO `k4hct_user_usergroup_map` (`user_id`, `group_id`) VALUES
(531, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_utf8_conversion`
--

CREATE TABLE `k4hct_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_utf8_conversion`
--

INSERT INTO `k4hct_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `k4hct_viewlevels`
--

CREATE TABLE `k4hct_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `k4hct_viewlevels`
--

INSERT INTO `k4hct_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `Id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `Id_factura` int(11) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `hora_pedido` time DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id_personal` int(11) NOT NULL,
  `id_evento` int(11) DEFAULT NULL,
  `Id_cargo` int(11) DEFAULT NULL,
  `direccion` char(40) DEFAULT NULL,
  `nombre` char(30) DEFAULT NULL,
  `apellido` char(30) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  `cedula` char(10) DEFAULT NULL,
  `sexo` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Id_producto` int(11) NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  `nombre` char(30) DEFAULT NULL,
  `precio` float(8,2) DEFAULT NULL,
  `descripcion` char(50) DEFAULT NULL,
  `disponibilidad` char(2) DEFAULT NULL,
  `tipo` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relationship_5`
--

CREATE TABLE `relationship_5` (
  `Id_pedido` int(11) NOT NULL,
  `Id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_evento` int(11) NOT NULL,
  `usuario` char(10) NOT NULL,
  `contrasena` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `k4hct_assets`
--
ALTER TABLE `k4hct_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indices de la tabla `k4hct_associations`
--
ALTER TABLE `k4hct_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indices de la tabla `k4hct_banners`
--
ALTER TABLE `k4hct_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `k4hct_banner_clients`
--
ALTER TABLE `k4hct_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indices de la tabla `k4hct_banner_tracks`
--
ALTER TABLE `k4hct_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indices de la tabla `k4hct_categories`
--
ALTER TABLE `k4hct_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `k4hct_cck_core`
--
ALTER TABLE `k4hct_cck_core`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cck` (`cck`),
  ADD KEY `idx_pk` (`pk`),
  ADD KEY `idx_pkb` (`pkb`);

--
-- Indices de la tabla `k4hct_cck_core_downloads`
--
ALTER TABLE `k4hct_cck_core_downloads`
  ADD PRIMARY KEY (`id`,`field`,`collection`,`x`),
  ADD KEY `idx_contentid` (`id`),
  ADD KEY `idx_item` (`field`);

--
-- Indices de la tabla `k4hct_cck_core_fields`
--
ALTER TABLE `k4hct_cck_core_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_folder` (`folder`);

--
-- Indices de la tabla `k4hct_cck_core_folders`
--
ALTER TABLE `k4hct_cck_core_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indices de la tabla `k4hct_cck_core_objects`
--
ALTER TABLE `k4hct_cck_core_objects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `idx_component` (`component`),
  ADD KEY `idx_view` (`view`);

--
-- Indices de la tabla `k4hct_cck_core_searchs`
--
ALTER TABLE `k4hct_cck_core_searchs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `idx_folder` (`folder`),
  ADD KEY `idx_template_search` (`template_search`),
  ADD KEY `idx_template_filter` (`template_filter`),
  ADD KEY `idx_template_list` (`template_list`),
  ADD KEY `idx_template_item` (`template_item`);

--
-- Indices de la tabla `k4hct_cck_core_search_field`
--
ALTER TABLE `k4hct_cck_core_search_field`
  ADD PRIMARY KEY (`searchid`,`fieldid`,`client`),
  ADD KEY `searchid` (`searchid`),
  ADD KEY `fieldid` (`fieldid`);

--
-- Indices de la tabla `k4hct_cck_core_search_position`
--
ALTER TABLE `k4hct_cck_core_search_position`
  ADD PRIMARY KEY (`searchid`,`position`,`client`),
  ADD KEY `position` (`position`),
  ADD KEY `searchid` (`searchid`);

--
-- Indices de la tabla `k4hct_cck_core_sites`
--
ALTER TABLE `k4hct_cck_core_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `k4hct_cck_core_templates`
--
ALTER TABLE `k4hct_cck_core_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `idx_folder` (`folder`);

--
-- Indices de la tabla `k4hct_cck_core_types`
--
ALTER TABLE `k4hct_cck_core_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `idx_folder` (`folder`),
  ADD KEY `idx_template_admin` (`template_admin`),
  ADD KEY `idx_template_site` (`template_site`),
  ADD KEY `idx_template_content` (`template_content`),
  ADD KEY `idx_template_intro` (`template_intro`);

--
-- Indices de la tabla `k4hct_cck_core_type_field`
--
ALTER TABLE `k4hct_cck_core_type_field`
  ADD PRIMARY KEY (`typeid`,`fieldid`,`client`),
  ADD KEY `typeid` (`typeid`),
  ADD KEY `fieldid` (`fieldid`);

--
-- Indices de la tabla `k4hct_cck_core_type_position`
--
ALTER TABLE `k4hct_cck_core_type_position`
  ADD PRIMARY KEY (`typeid`,`position`,`client`),
  ADD KEY `typeid` (`typeid`),
  ADD KEY `position` (`position`);

--
-- Indices de la tabla `k4hct_cck_core_versions`
--
ALTER TABLE `k4hct_cck_core_versions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_id_version` (`e_id`,`e_type`,`e_version`);

--
-- Indices de la tabla `k4hct_cck_more_countries`
--
ALTER TABLE `k4hct_cck_more_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `k4hct_cck_more_jobs`
--
ALTER TABLE `k4hct_cck_more_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `k4hct_cck_more_job_processing`
--
ALTER TABLE `k4hct_cck_more_job_processing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `processing_id` (`processing_id`);

--
-- Indices de la tabla `k4hct_cck_more_processings`
--
ALTER TABLE `k4hct_cck_more_processings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `k4hct_cck_more_sessions`
--
ALTER TABLE `k4hct_cck_more_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_extension` (`extension`);

--
-- Indices de la tabla `k4hct_cck_store_item_categories`
--
ALTER TABLE `k4hct_cck_store_item_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_alias_en` (`alias_en`(191)),
  ADD KEY `idx_alias_fr` (`alias_fr`(191));

--
-- Indices de la tabla `k4hct_cck_store_item_content`
--
ALTER TABLE `k4hct_cck_store_item_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_alias_en` (`alias_en`(191)),
  ADD KEY `idx_alias_fr` (`alias_fr`(191));

--
-- Indices de la tabla `k4hct_cck_store_item_users`
--
ALTER TABLE `k4hct_cck_store_item_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `k4hct_contact_details`
--
ALTER TABLE `k4hct_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `k4hct_content`
--
ALTER TABLE `k4hct_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indices de la tabla `k4hct_contentitem_tag_map`
--
ALTER TABLE `k4hct_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indices de la tabla `k4hct_content_frontpage`
--
ALTER TABLE `k4hct_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `k4hct_content_rating`
--
ALTER TABLE `k4hct_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `k4hct_content_types`
--
ALTER TABLE `k4hct_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indices de la tabla `k4hct_extensions`
--
ALTER TABLE `k4hct_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indices de la tabla `k4hct_fields`
--
ALTER TABLE `k4hct_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `k4hct_fields_categories`
--
ALTER TABLE `k4hct_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indices de la tabla `k4hct_fields_groups`
--
ALTER TABLE `k4hct_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `k4hct_fields_values`
--
ALTER TABLE `k4hct_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indices de la tabla `k4hct_finder_filters`
--
ALTER TABLE `k4hct_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indices de la tabla `k4hct_finder_links`
--
ALTER TABLE `k4hct_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indices de la tabla `k4hct_finder_links_terms0`
--
ALTER TABLE `k4hct_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_terms1`
--
ALTER TABLE `k4hct_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_terms2`
--
ALTER TABLE `k4hct_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_terms3`
--
ALTER TABLE `k4hct_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_terms4`
--
ALTER TABLE `k4hct_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_terms5`
--
ALTER TABLE `k4hct_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_terms6`
--
ALTER TABLE `k4hct_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_terms7`
--
ALTER TABLE `k4hct_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_terms8`
--
ALTER TABLE `k4hct_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_terms9`
--
ALTER TABLE `k4hct_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_termsa`
--
ALTER TABLE `k4hct_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_termsb`
--
ALTER TABLE `k4hct_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_termsc`
--
ALTER TABLE `k4hct_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_termsd`
--
ALTER TABLE `k4hct_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_termse`
--
ALTER TABLE `k4hct_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_links_termsf`
--
ALTER TABLE `k4hct_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `k4hct_finder_taxonomy`
--
ALTER TABLE `k4hct_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indices de la tabla `k4hct_finder_taxonomy_map`
--
ALTER TABLE `k4hct_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indices de la tabla `k4hct_finder_terms`
--
ALTER TABLE `k4hct_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indices de la tabla `k4hct_finder_terms_common`
--
ALTER TABLE `k4hct_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indices de la tabla `k4hct_finder_tokens`
--
ALTER TABLE `k4hct_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indices de la tabla `k4hct_finder_tokens_aggregate`
--
ALTER TABLE `k4hct_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indices de la tabla `k4hct_finder_types`
--
ALTER TABLE `k4hct_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indices de la tabla `k4hct_languages`
--
ALTER TABLE `k4hct_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indices de la tabla `k4hct_menu`
--
ALTER TABLE `k4hct_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `k4hct_menu_types`
--
ALTER TABLE `k4hct_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indices de la tabla `k4hct_messages`
--
ALTER TABLE `k4hct_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indices de la tabla `k4hct_messages_cfg`
--
ALTER TABLE `k4hct_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indices de la tabla `k4hct_modules`
--
ALTER TABLE `k4hct_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `k4hct_modules_menu`
--
ALTER TABLE `k4hct_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indices de la tabla `k4hct_newsfeeds`
--
ALTER TABLE `k4hct_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `k4hct_overrider`
--
ALTER TABLE `k4hct_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `k4hct_postinstall_messages`
--
ALTER TABLE `k4hct_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indices de la tabla `k4hct_redirect_links`
--
ALTER TABLE `k4hct_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indices de la tabla `k4hct_schemas`
--
ALTER TABLE `k4hct_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indices de la tabla `k4hct_session`
--
ALTER TABLE `k4hct_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indices de la tabla `k4hct_tags`
--
ALTER TABLE `k4hct_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `k4hct_template_styles`
--
ALTER TABLE `k4hct_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indices de la tabla `k4hct_ucm_base`
--
ALTER TABLE `k4hct_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indices de la tabla `k4hct_ucm_content`
--
ALTER TABLE `k4hct_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indices de la tabla `k4hct_ucm_history`
--
ALTER TABLE `k4hct_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indices de la tabla `k4hct_updates`
--
ALTER TABLE `k4hct_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indices de la tabla `k4hct_update_sites`
--
ALTER TABLE `k4hct_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indices de la tabla `k4hct_update_sites_extensions`
--
ALTER TABLE `k4hct_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indices de la tabla `k4hct_usergroups`
--
ALTER TABLE `k4hct_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indices de la tabla `k4hct_users`
--
ALTER TABLE `k4hct_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `k4hct_user_keys`
--
ALTER TABLE `k4hct_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `k4hct_user_notes`
--
ALTER TABLE `k4hct_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indices de la tabla `k4hct_user_profiles`
--
ALTER TABLE `k4hct_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indices de la tabla `k4hct_user_usergroup_map`
--
ALTER TABLE `k4hct_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indices de la tabla `k4hct_viewlevels`
--
ALTER TABLE `k4hct_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Id_pedido`),
  ADD KEY `FK_Relationship_6` (`id_cliente`),
  ADD KEY `FK_Relationship_7` (`Id_factura`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id_personal`),
  ADD KEY `FK_Relationship_2` (`id_evento`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Id_producto`);

--
-- Indices de la tabla `relationship_5`
--
ALTER TABLE `relationship_5`
  ADD PRIMARY KEY (`Id_pedido`,`Id_producto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_evento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `k4hct_assets`
--
ALTER TABLE `k4hct_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `k4hct_banners`
--
ALTER TABLE `k4hct_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_banner_clients`
--
ALTER TABLE `k4hct_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_categories`
--
ALTER TABLE `k4hct_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_core`
--
ALTER TABLE `k4hct_cck_core`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_core_fields`
--
ALTER TABLE `k4hct_cck_core_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5008;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_core_folders`
--
ALTER TABLE `k4hct_cck_core_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_core_objects`
--
ALTER TABLE `k4hct_cck_core_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_core_searchs`
--
ALTER TABLE `k4hct_cck_core_searchs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_core_sites`
--
ALTER TABLE `k4hct_cck_core_sites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_core_templates`
--
ALTER TABLE `k4hct_cck_core_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_core_types`
--
ALTER TABLE `k4hct_cck_core_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_core_versions`
--
ALTER TABLE `k4hct_cck_core_versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_more_countries`
--
ALTER TABLE `k4hct_cck_more_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_more_jobs`
--
ALTER TABLE `k4hct_cck_more_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_more_job_processing`
--
ALTER TABLE `k4hct_cck_more_job_processing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_more_processings`
--
ALTER TABLE `k4hct_cck_more_processings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `k4hct_cck_more_sessions`
--
ALTER TABLE `k4hct_cck_more_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `k4hct_contact_details`
--
ALTER TABLE `k4hct_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `k4hct_content`
--
ALTER TABLE `k4hct_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_content_types`
--
ALTER TABLE `k4hct_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `k4hct_extensions`
--
ALTER TABLE `k4hct_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10098;

--
-- AUTO_INCREMENT de la tabla `k4hct_fields`
--
ALTER TABLE `k4hct_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_fields_groups`
--
ALTER TABLE `k4hct_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_finder_filters`
--
ALTER TABLE `k4hct_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_finder_links`
--
ALTER TABLE `k4hct_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_finder_taxonomy`
--
ALTER TABLE `k4hct_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `k4hct_finder_terms`
--
ALTER TABLE `k4hct_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_finder_types`
--
ALTER TABLE `k4hct_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_languages`
--
ALTER TABLE `k4hct_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `k4hct_menu`
--
ALTER TABLE `k4hct_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `k4hct_menu_types`
--
ALTER TABLE `k4hct_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `k4hct_messages`
--
ALTER TABLE `k4hct_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_modules`
--
ALTER TABLE `k4hct_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `k4hct_newsfeeds`
--
ALTER TABLE `k4hct_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_overrider`
--
ALTER TABLE `k4hct_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT de la tabla `k4hct_postinstall_messages`
--
ALTER TABLE `k4hct_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `k4hct_redirect_links`
--
ALTER TABLE `k4hct_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_tags`
--
ALTER TABLE `k4hct_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `k4hct_template_styles`
--
ALTER TABLE `k4hct_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `k4hct_ucm_content`
--
ALTER TABLE `k4hct_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_ucm_history`
--
ALTER TABLE `k4hct_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `k4hct_updates`
--
ALTER TABLE `k4hct_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `k4hct_update_sites`
--
ALTER TABLE `k4hct_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `k4hct_usergroups`
--
ALTER TABLE `k4hct_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `k4hct_users`
--
ALTER TABLE `k4hct_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT de la tabla `k4hct_user_keys`
--
ALTER TABLE `k4hct_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_user_notes`
--
ALTER TABLE `k4hct_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `k4hct_viewlevels`
--
ALTER TABLE `k4hct_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `Id_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `id_personal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Id_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK_Relationship_6` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Relationship_7` FOREIGN KEY (`Id_factura`) REFERENCES `factura` (`Id_factura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
