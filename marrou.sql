-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2017 a las 17:41:40
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `marrou`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-05-10 14:09:39', '2017-05-10 14:09:39', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/dominique', 'yes'),
(2, 'home', 'http://127.0.0.1/dominique', 'yes'),
(3, 'blogname', 'hotel', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'doromar_2000@hotmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:27:\"js_composer/js_composer.php\";i:2;s:23:\"revslider/revslider.php\";i:3;s:37:\"tinymce-advanced/tinymce-advanced.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:64:\"C:\\xampp\\htdocs\\dominique/wp-content/plugins/akismet/akismet.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'aza-lite', 'yes'),
(41, 'stylesheet', 'aza-lite', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '32', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"home_footer_1\";a:0:{}s:13:\"home_footer_2\";a:0:{}s:13:\"home_footer_3\";N;s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:5:{i:1495073380;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1495073381;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1495116657;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1495116793;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1494425806;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(111, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.7.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.7.5-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.7.5-partial-3.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.7.5\";s:7:\"version\";s:5:\"4.7.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.7.3\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.7.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.7.5-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.7.5-partial-3.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.7.5-rollback-3.zip\";}s:7:\"current\";s:5:\"4.7.5\";s:7:\"version\";s:5:\"4.7.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.7.3\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1495030195;s:15:\"version_checked\";s:5:\"4.7.3\";s:12:\"translations\";a:0:{}}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(127, 'recently_activated', 'a:0:{}', 'yes'),
(136, '_site_transient_timeout_wporg_theme_feature_list', '1494436570', 'no'),
(137, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:\"Layout\";a:7:{i:0;s:11:\"grid-layout\";i:1;s:10:\"one-column\";i:2;s:11:\"two-columns\";i:3;s:13:\"three-columns\";i:4;s:12:\"four-columns\";i:5;s:12:\"left-sidebar\";i:6;s:13:\"right-sidebar\";}s:8:\"Features\";a:20:{i:0;s:19:\"accessibility-ready\";i:1;s:10:\"buddypress\";i:2;s:17:\"custom-background\";i:3;s:13:\"custom-colors\";i:4;s:13:\"custom-header\";i:5;s:11:\"custom-menu\";i:6;s:12:\"editor-style\";i:7;s:21:\"featured-image-header\";i:8;s:15:\"featured-images\";i:9;s:15:\"flexible-header\";i:10;s:14:\"footer-widgets\";i:11;s:20:\"front-page-post-form\";i:12;s:19:\"full-width-template\";i:13;s:12:\"microformats\";i:14;s:12:\"post-formats\";i:15;s:20:\"rtl-language-support\";i:16;s:11:\"sticky-post\";i:17;s:13:\"theme-options\";i:18;s:17:\"threaded-comments\";i:19;s:17:\"translation-ready\";}s:7:\"Subject\";a:9:{i:0;s:4:\"blog\";i:1;s:10:\"e-commerce\";i:2;s:9:\"education\";i:3;s:13:\"entertainment\";i:4;s:14:\"food-and-drink\";i:5;s:7:\"holiday\";i:6;s:4:\"news\";i:7;s:11:\"photography\";i:8;s:9:\"portfolio\";}}', 'no'),
(139, 'current_theme', 'AZA Lite', 'yes'),
(140, 'theme_mods_aza-lite', 'a:6:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:69:\"http://127.0.0.1/dominique/wp-content/uploads/2017/05/cropped-1-3.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:22;s:3:\"url\";s:69:\"http://127.0.0.1/dominique/wp-content/uploads/2017/05/cropped-1-3.jpg\";s:13:\"thumbnail_url\";s:69:\"http://127.0.0.1/dominique/wp-content/uploads/2017/05/cropped-1-3.jpg\";s:6:\"height\";i:1080;s:5:\"width\";i:1920;}s:11:\"custom_logo\";s:0:\"\";s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:13:\"footer-menu-1\";i:2;}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(147, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"4.7\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1494426045;s:7:\"version\";s:3:\"4.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(148, 'revslider-update-check-short', '1495026577', 'yes'),
(149, 'revslider-templates-check', '1495026578', 'yes'),
(150, 'revslider-library-check', '1494426067', 'yes'),
(151, 'revslider_checktables', '1', 'yes'),
(152, 'rs_tables_created', '1', 'yes'),
(153, 'revslider_table_version', '1.0.6', 'yes'),
(154, 'revslider-global-settings', 'a:0:{}', 'yes'),
(155, 'revslider_update_version', '5.2.5.5', 'yes'),
(156, 'widget_rev-slider-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(157, 'tadv_settings', 'a:6:{s:7:\"options\";s:15:\"menubar,advlist\";s:9:\"toolbar_1\";s:106:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:103:\"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:7:\"plugins\";s:104:\"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv\";}', 'yes'),
(158, 'tadv_admin_settings', 'a:1:{s:7:\"options\";a:0:{}}', 'yes'),
(159, 'tadv_version', '4000', 'yes'),
(162, 'vc_version', '5.0.1', 'yes'),
(163, 'wpb_js_composer_license_activation_notified', 'yes', 'yes'),
(169, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(177, 'category_children', 'a:0:{}', 'yes'),
(181, '_transient_timeout_plugin_slugs', '1495112996', 'no'),
(182, '_transient_plugin_slugs', 'a:6:{i:0;s:19:\"akismet/akismet.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:9:\"hello.php\";i:3;s:23:\"revslider/revslider.php\";i:4;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:5;s:27:\"js_composer/js_composer.php\";}', 'no'),
(183, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1495069796', 'no'),
(184, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div><div class=\"rss-widget\"><ul></ul></div>', 'no'),
(187, 'auto_updater.lock', '1495030196', 'no'),
(188, '_site_transient_timeout_theme_roots', '1495031998', 'no'),
(189, '_site_transient_theme_roots', 'a:4:{s:8:\"aza-lite\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(191, 'core_updater.lock', '1495030200', 'no'),
(192, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1495030256;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":8:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.3.2.zip\";s:6:\"tested\";s:5:\"4.7.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":8:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"4.5.6\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.4.5.6.zip\";s:6:\"tested\";s:5:\"4.7.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"js_composer/js_composer.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:11:\"js_composer\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:0:\"\";s:7:\"package\";b:0;s:4:\"name\";s:24:\"WPBakery Visual Composer\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"4.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.4.7.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}}}', 'no'),
(193, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1495030264;s:7:\"checked\";a:4:{s:8:\"aza-lite\";s:5:\"1.1.1\";s:13:\"twentyfifteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"1.1\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.2.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(196, '_site_transient_timeout_browser_6e102543d3ebf940a906cdbd86951ece', '1495637647', 'no'),
(197, '_site_transient_browser_6e102543d3ebf940a906cdbd86951ece', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"57.0.2987.133\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1494427476:1'),
(4, 6, '_edit_last', '1'),
(5, 6, '_edit_lock', '1494427904:1'),
(6, 8, '_edit_last', '1'),
(7, 8, '_edit_lock', '1494429624:1'),
(10, 15, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(11, 15, '_mail', 'a:8:{s:7:\"subject\";s:22:\"hotel \"[your-subject]\"\";s:6:\"sender\";s:38:\"[your-name] <doromar_2000@hotmail.com>\";s:4:\"body\";s:170:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on hotel (http://127.0.0.1/dominique)\";s:9:\"recipient\";s:24:\"doromar_2000@hotmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(12, 15, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"hotel \"[your-subject]\"\";s:6:\"sender\";s:32:\"hotel <doromar_2000@hotmail.com>\";s:4:\"body\";s:112:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on hotel (http://127.0.0.1/dominique)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:34:\"Reply-To: doromar_2000@hotmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(13, 15, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(14, 15, '_additional_settings', NULL),
(15, 15, '_locale', 'en_US'),
(16, 16, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(17, 16, '_edit_last', '1'),
(18, 16, '_wp_page_template', 'default'),
(19, 16, 'slide_template', 'default'),
(20, 16, '_wpb_vc_js_status', 'false'),
(21, 16, '_edit_lock', '1495033537:1'),
(22, 18, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(23, 19, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(24, 20, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(25, 20, '_edit_last', '1'),
(26, 20, '_edit_lock', '1494428658:1'),
(27, 21, '_wp_attached_file', '2017/05/1-3.jpg'),
(28, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:15:\"2017/05/1-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-3-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 22, '_wp_attached_file', '2017/05/cropped-1-3.jpg'),
(30, 22, '_wp_attachment_context', 'custom-header'),
(31, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:23:\"2017/05/cropped-1-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-1-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cropped-1-3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"cropped-1-3-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"cropped-1-3-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"aza-post-small\";a:4:{s:4:\"file\";s:23:\"cropped-1-3-390x250.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 22, '_wp_attachment_custom_header_last_used_aza-lite', '1494426400'),
(33, 22, '_wp_attachment_is_custom_header', 'aza-lite'),
(34, 23, '_wp_trash_meta_status', 'publish'),
(35, 23, '_wp_trash_meta_time', '1494426400'),
(37, 24, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(39, 20, 'slide_template', 'default'),
(40, 27, '_wp_attached_file', '2017/05/g-2.jpg'),
(41, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:15:\"2017/05/g-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"g-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 28, '_wp_attached_file', '2017/05/cropped-g-2.jpg'),
(43, 28, '_wp_attachment_context', 'custom-logo'),
(44, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:85;s:6:\"height\";i:70;s:4:\"file\";s:23:\"2017/05/cropped-g-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 25, '_wp_trash_meta_status', 'publish'),
(46, 25, '_wp_trash_meta_time', '1494426654'),
(47, 30, '_wp_trash_meta_status', 'publish'),
(48, 30, '_wp_trash_meta_time', '1494426669'),
(49, 31, '_wp_attached_file', '2017/05/cropped-g-2-1.jpg'),
(50, 31, '_wp_attachment_context', 'custom-logo'),
(51, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:72;s:6:\"height\";i:70;s:4:\"file\";s:25:\"2017/05/cropped-g-2-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 32, '_wp_attached_file', '2017/05/cropped-g-2-2.jpg'),
(53, 32, '_wp_attachment_context', 'site-icon'),
(54, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:25:\"2017/05/cropped-g-2-2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-g-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-g-2-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"aza-post-small\";a:4:{s:4:\"file\";s:25:\"cropped-g-2-2-390x250.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:25:\"cropped-g-2-2-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:25:\"cropped-g-2-2-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:25:\"cropped-g-2-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:23:\"cropped-g-2-2-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 33, '_wp_trash_meta_status', 'publish'),
(56, 33, '_wp_trash_meta_time', '1494426753'),
(57, 34, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(58, 34, '_edit_last', '1'),
(60, 34, 'slide_template', 'default'),
(61, 34, '_edit_lock', '1494429099:1'),
(63, 37, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(64, 38, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(65, 38, '_edit_last', '1'),
(67, 38, 'slide_template', 'default'),
(68, 38, '_edit_lock', '1494427896:1'),
(70, 4, '_wp_page_template', 'default'),
(71, 4, 'slide_template', 'default'),
(72, 4, '_wpb_vc_js_status', 'false'),
(73, 4, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(74, 41, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(75, 41, '_menu_item_type', 'post_type'),
(76, 41, '_menu_item_menu_item_parent', '0'),
(77, 41, '_menu_item_object_id', '16'),
(78, 41, '_menu_item_object', 'page'),
(79, 41, '_menu_item_target', ''),
(80, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 41, '_menu_item_xfn', ''),
(82, 41, '_menu_item_url', ''),
(84, 42, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(85, 42, '_menu_item_type', 'post_type'),
(86, 42, '_menu_item_menu_item_parent', '0'),
(87, 42, '_menu_item_object_id', '8'),
(88, 42, '_menu_item_object', 'page'),
(89, 42, '_menu_item_target', ''),
(90, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 42, '_menu_item_xfn', ''),
(92, 42, '_menu_item_url', ''),
(94, 43, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(95, 43, '_menu_item_type', 'post_type'),
(96, 43, '_menu_item_menu_item_parent', '42'),
(97, 43, '_menu_item_object_id', '6'),
(98, 43, '_menu_item_object', 'page'),
(99, 43, '_menu_item_target', ''),
(100, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 43, '_menu_item_xfn', ''),
(102, 43, '_menu_item_url', ''),
(104, 44, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(105, 44, '_menu_item_type', 'post_type'),
(106, 44, '_menu_item_menu_item_parent', '42'),
(107, 44, '_menu_item_object_id', '4'),
(108, 44, '_menu_item_object', 'page'),
(109, 44, '_menu_item_target', ''),
(110, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(111, 44, '_menu_item_xfn', ''),
(112, 44, '_menu_item_url', ''),
(114, 24, '_wp_trash_meta_status', 'publish'),
(115, 24, '_wp_trash_meta_time', '1494427225'),
(116, 24, '_wp_desired_post_slug', 'v'),
(117, 45, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(118, 45, '_menu_item_type', 'custom'),
(119, 45, '_menu_item_menu_item_parent', '0'),
(120, 45, '_menu_item_object_id', '45'),
(121, 45, '_menu_item_object', 'custom'),
(122, 45, '_menu_item_target', ''),
(123, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(124, 45, '_menu_item_xfn', ''),
(125, 45, '_menu_item_url', 'http://127.0.0.1/dominique/'),
(126, 45, '_menu_item_orphaned', '1494427391'),
(127, 46, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(128, 46, '_edit_last', '1'),
(129, 46, '_wp_page_template', 'default'),
(130, 46, 'slide_template', 'default'),
(131, 46, '_wpb_vc_js_status', 'false'),
(132, 46, '_edit_lock', '1494427328:1'),
(133, 48, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(134, 48, '_edit_last', '1'),
(135, 48, '_wp_page_template', 'default'),
(136, 48, 'slide_template', 'default'),
(137, 48, '_wpb_vc_js_status', 'false'),
(138, 48, '_edit_lock', '1495032187:1'),
(139, 50, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(140, 51, '_wp_attached_file', '2017/05/1-3-1.jpg'),
(141, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:17:\"2017/05/1-3-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"1-3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"1-3-1-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 50, '_edit_last', '1'),
(143, 50, '_thumbnail_id', '51'),
(145, 50, 'slide_template', 'default'),
(146, 50, '_edit_lock', '1494430010:1'),
(147, 6, '_wp_page_template', 'default'),
(148, 6, 'slide_template', 'default'),
(149, 6, '_wpb_vc_js_status', 'false'),
(150, 6, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(152, 55, '_wp_attached_file', '2017/05/er.jpg'),
(153, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:161;s:4:\"file\";s:14:\"2017/05/er.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"er-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 38, '_thumbnail_id', '55'),
(156, 56, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(157, 56, '_edit_last', '1'),
(158, 56, '_wp_page_template', 'default'),
(159, 56, 'slide_template', 'default'),
(160, 56, '_wpb_vc_js_status', 'false'),
(161, 56, '_edit_lock', '1494427989:1'),
(162, 58, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(163, 58, '_edit_last', '1'),
(164, 58, '_wp_page_template', 'default'),
(165, 58, 'slide_template', 'default'),
(166, 58, '_wpb_vc_js_status', 'false'),
(167, 58, '_edit_lock', '1494428059:1'),
(168, 60, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(169, 60, '_menu_item_type', 'post_type'),
(170, 60, '_menu_item_menu_item_parent', '63'),
(171, 60, '_menu_item_object_id', '58'),
(172, 60, '_menu_item_object', 'page'),
(173, 60, '_menu_item_target', ''),
(174, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(175, 60, '_menu_item_xfn', ''),
(176, 60, '_menu_item_url', ''),
(178, 61, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(179, 61, '_menu_item_type', 'post_type'),
(180, 61, '_menu_item_menu_item_parent', '63'),
(181, 61, '_menu_item_object_id', '56'),
(182, 61, '_menu_item_object', 'page'),
(183, 61, '_menu_item_target', ''),
(184, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 61, '_menu_item_xfn', ''),
(186, 61, '_menu_item_url', ''),
(188, 62, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(189, 62, '_menu_item_type', 'post_type'),
(190, 62, '_menu_item_menu_item_parent', '0'),
(191, 62, '_menu_item_object_id', '48'),
(192, 62, '_menu_item_object', 'page'),
(193, 62, '_menu_item_target', ''),
(194, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(195, 62, '_menu_item_xfn', ''),
(196, 62, '_menu_item_url', ''),
(198, 63, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(199, 63, '_menu_item_type', 'post_type'),
(200, 63, '_menu_item_menu_item_parent', '0'),
(201, 63, '_menu_item_object_id', '46'),
(202, 63, '_menu_item_object', 'page'),
(203, 63, '_menu_item_target', ''),
(204, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(205, 63, '_menu_item_xfn', ''),
(206, 63, '_menu_item_url', ''),
(208, 64, '_wp_trash_meta_status', 'publish'),
(209, 64, '_wp_trash_meta_time', '1494428456'),
(210, 65, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(211, 65, '_edit_last', '1'),
(212, 65, '_wp_page_template', 'default'),
(213, 65, 'slide_template', 'default'),
(214, 65, '_wpb_vc_js_status', 'false'),
(215, 65, '_edit_lock', '1494428390:1'),
(216, 67, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(217, 67, '_edit_last', '1'),
(218, 67, '_wp_page_template', 'default'),
(219, 67, 'slide_template', 'default'),
(220, 67, '_wpb_vc_js_status', 'false'),
(221, 67, '_edit_lock', '1494428551:1'),
(222, 69, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(223, 70, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(224, 70, '_edit_last', '1'),
(225, 70, '_wp_page_template', 'default'),
(226, 70, 'slide_template', 'default'),
(227, 70, '_wpb_vc_js_status', 'false'),
(228, 70, '_edit_lock', '1494429273:1'),
(229, 72, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(230, 72, '_menu_item_type', 'post_type'),
(231, 72, '_menu_item_menu_item_parent', '63'),
(232, 72, '_menu_item_object_id', '70'),
(233, 72, '_menu_item_object', 'page'),
(234, 72, '_menu_item_target', ''),
(235, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 72, '_menu_item_xfn', ''),
(237, 72, '_menu_item_url', ''),
(239, 73, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(240, 73, '_menu_item_type', 'post_type'),
(241, 73, '_menu_item_menu_item_parent', '63'),
(242, 73, '_menu_item_object_id', '67'),
(243, 73, '_menu_item_object', 'page'),
(244, 73, '_menu_item_target', ''),
(245, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(246, 73, '_menu_item_xfn', ''),
(247, 73, '_menu_item_url', ''),
(249, 74, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(250, 74, '_menu_item_type', 'post_type'),
(251, 74, '_menu_item_menu_item_parent', '63'),
(252, 74, '_menu_item_object_id', '65'),
(253, 74, '_menu_item_object', 'page'),
(254, 74, '_menu_item_target', ''),
(255, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(256, 74, '_menu_item_xfn', ''),
(257, 74, '_menu_item_url', ''),
(259, 75, '_wp_attached_file', '2017/05/1-9.jpg'),
(260, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:307;s:6:\"height\";i:164;s:4:\"file\";s:15:\"2017/05/1-9.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-9-300x160.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(261, 20, '_thumbnail_id', '75'),
(263, 77, '_wp_attached_file', '2017/05/1-2.jpg'),
(264, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:15:\"2017/05/1-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(265, 34, '_thumbnail_id', '77'),
(268, 8, '_wp_page_template', 'default'),
(269, 8, 'slide_template', 'default'),
(270, 8, '_wpb_vc_js_status', 'false'),
(271, 8, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(272, 82, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(273, 82, '_edit_last', '1'),
(274, 82, '_edit_lock', '1495028245:1'),
(275, 82, '_wp_page_template', 'default'),
(276, 82, 'slide_template', 'default'),
(277, 82, '_wpb_vc_js_status', 'false'),
(278, 84, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(279, 84, '_edit_last', '1'),
(280, 84, '_edit_lock', '1494429949:1'),
(281, 84, '_wp_page_template', 'default'),
(282, 84, 'slide_template', 'default'),
(283, 84, '_wpb_vc_js_status', 'false'),
(284, 86, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(285, 86, '_edit_last', '1'),
(286, 86, '_wp_page_template', 'default'),
(287, 86, 'slide_template', 'default'),
(288, 86, '_wpb_vc_js_status', 'false'),
(289, 86, '_edit_lock', '1495034363:1'),
(290, 88, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(291, 88, '_menu_item_type', 'post_type'),
(292, 88, '_menu_item_menu_item_parent', '41'),
(293, 88, '_menu_item_object_id', '86'),
(294, 88, '_menu_item_object', 'page'),
(295, 88, '_menu_item_target', ''),
(296, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(297, 88, '_menu_item_xfn', ''),
(298, 88, '_menu_item_url', ''),
(300, 89, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(301, 89, '_menu_item_type', 'post_type'),
(302, 89, '_menu_item_menu_item_parent', '41'),
(303, 89, '_menu_item_object_id', '84'),
(304, 89, '_menu_item_object', 'page'),
(305, 89, '_menu_item_target', ''),
(306, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(307, 89, '_menu_item_xfn', ''),
(308, 89, '_menu_item_url', ''),
(310, 90, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(311, 90, '_menu_item_type', 'post_type'),
(312, 90, '_menu_item_menu_item_parent', '41'),
(313, 90, '_menu_item_object_id', '82'),
(314, 90, '_menu_item_object', 'page'),
(315, 90, '_menu_item_target', ''),
(316, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(317, 90, '_menu_item_xfn', ''),
(318, 90, '_menu_item_url', ''),
(319, 1, '_wp_trash_meta_status', 'publish'),
(320, 1, '_wp_trash_meta_time', '1495026694'),
(321, 1, '_wp_desired_post_slug', 'hello-world'),
(322, 1, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(323, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(324, 94, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(325, 94, '_edit_last', '1'),
(326, 94, '_edit_lock', '1495032206:1'),
(327, 94, '_wp_page_template', 'default'),
(328, 94, 'slide_template', 'default'),
(329, 94, '_wpb_vc_js_status', 'false'),
(330, 98, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(331, 98, '_menu_item_type', 'post_type'),
(332, 98, '_menu_item_menu_item_parent', '62'),
(333, 98, '_menu_item_object_id', '94'),
(334, 98, '_menu_item_object', 'page'),
(335, 98, '_menu_item_target', ''),
(336, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(337, 98, '_menu_item_xfn', ''),
(338, 98, '_menu_item_url', ''),
(340, 102, '_wp_attached_file', '2017/05/recepcion-hotel.jpg'),
(341, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:533;s:6:\"height\";i:400;s:4:\"file\";s:27:\"2017/05/recepcion-hotel.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"recepcion-hotel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"recepcion-hotel-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"aza-post-small\";a:4:{s:4:\"file\";s:27:\"recepcion-hotel-390x250.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(342, 86, '_thumbnail_id', '102'),
(343, 105, '_wp_attached_file', '2017/05/img.jpg'),
(344, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:330;s:4:\"file\";s:15:\"2017/05/img.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"img-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"aza-post-small\";a:4:{s:4:\"file\";s:15:\"img-390x250.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 16, '_thumbnail_id', '105'),
(346, 108, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(347, 108, '_edit_last', '1'),
(348, 108, '_wp_page_template', 'default'),
(349, 108, 'slide_template', 'default'),
(350, 108, '_wpb_vc_js_status', 'false'),
(351, 108, '_edit_lock', '1495034069:1'),
(352, 110, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(353, 110, '_edit_last', '1'),
(354, 110, '_edit_lock', '1495035127:1'),
(355, 110, '_wp_page_template', 'default'),
(356, 110, 'slide_template', 'default'),
(357, 110, '_wpb_vc_js_status', 'false'),
(358, 112, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(359, 112, '_menu_item_type', 'post_type'),
(360, 112, '_menu_item_menu_item_parent', '41'),
(361, 112, '_menu_item_object_id', '110'),
(362, 112, '_menu_item_object', 'page'),
(363, 112, '_menu_item_target', ''),
(364, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(365, 112, '_menu_item_xfn', ''),
(366, 112, '_menu_item_url', ''),
(368, 114, '_wp_attached_file', '2017/05/fo-2.jpg'),
(369, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:273;s:6:\"height\";i:185;s:4:\"file\";s:16:\"2017/05/fo-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"fo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(370, 116, '_wp_attached_file', '2017/05/imgres.jpg'),
(371, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:18:\"2017/05/imgres.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"imgres-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(372, 118, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(373, 118, '_edit_last', '1'),
(374, 118, '_wp_page_template', 'default'),
(375, 118, 'slide_template', 'default'),
(376, 118, '_wpb_vc_js_status', 'false'),
(377, 118, '_edit_lock', '1495035534:1'),
(378, 121, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(379, 121, '_menu_item_type', 'post_type'),
(380, 121, '_menu_item_menu_item_parent', '0'),
(381, 121, '_menu_item_object_id', '118'),
(382, 121, '_menu_item_object', 'page'),
(383, 121, '_menu_item_target', ''),
(384, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(385, 121, '_menu_item_xfn', ''),
(386, 121, '_menu_item_url', ''),
(388, 122, '_wp_attached_file', '2017/05/fo-1.jpg'),
(389, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:328;s:6:\"height\";i:154;s:4:\"file\";s:16:\"2017/05/fo-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"fo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"fo-1-300x141.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(390, 123, '_wp_attached_file', '2017/05/fo-4.jpg'),
(391, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:16:\"2017/05/fo-4.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"fo-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(392, 124, '_wp_attached_file', '2017/05/fo-3.jpg'),
(393, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:260;s:6:\"height\";i:194;s:4:\"file\";s:16:\"2017/05/fo-3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"fo-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-05-10 14:09:39', '2017-05-10 14:09:39', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-05-17 13:11:34', '2017-05-17 13:11:34', '', 0, 'http://127.0.0.1/dominique/?p=1', 0, 'post', '', 1),
(2, 1, '2017-05-10 14:09:39', '2017-05-10 14:09:39', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://127.0.0.1/dominique/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-05-10 14:09:39', '2017-05-10 14:09:39', '', 0, 'http://127.0.0.1/dominique/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-05-10 14:10:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-10 14:10:59', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/dominique/?p=3', 0, 'post', '', 0),
(4, 1, '2017-05-10 14:14:09', '2017-05-10 14:14:09', 'El Hotel tiene la visión de lograr un liderazgo dentro del grupo de hoteles del mismo nivel. Tenemos la visión de ser el mejor hotel en nuestro medio, y como tal ubicarnos como el preferido de nuestros turistas. La calidad de servicio esta basada en los años de experiencia adquiridos por los propietarios, socios y trabajadores.', 'Visión', '', 'publish', 'closed', 'closed', '', 'vision', '', '', '2017-05-10 14:37:30', '2017-05-10 14:37:30', '', 0, 'http://127.0.0.1/dominique/?page_id=4', 0, 'page', '', 0),
(5, 1, '2017-05-10 14:14:09', '2017-05-10 14:14:09', '', 'Visión', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-05-10 14:14:09', '2017-05-10 14:14:09', '', 4, 'http://127.0.0.1/dominique/2017/05/10/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-05-10 14:14:26', '2017-05-10 14:14:26', 'Una misión principal: Que el cliente se sienta cómodo, tranquilo y engreído: La Misión del Hotel es lograr convertirse en el refugio del viajero que viene a cumplir su sueño de conocer la maravillosa ciudad, y este hermoso hotel', 'misión', '', 'publish', 'closed', 'closed', '', 'mision', '', '', '2017-05-10 14:50:03', '2017-05-10 14:50:03', '', 0, 'http://127.0.0.1/dominique/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-05-10 14:14:26', '2017-05-10 14:14:26', '', 'misión', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-05-10 14:14:26', '2017-05-10 14:14:26', '', 6, 'http://127.0.0.1/dominique/2017/05/10/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-05-10 14:14:40', '2017-05-10 14:14:40', '<div style=\"text-align: left;\">nuestros objetivos:</div>\r\n<div style=\"text-align: left;\">. Unificar la fuerza de los Asociados</div>\r\n<div style=\"text-align: left;\">.Representar y proteger los intereses de sus afiliados</div>\r\n<div style=\"text-align: left;\">. Impulsar y fomentar las acciones de promoción de la industria turística hacia el desarrollo del destino.</div>\r\n<div style=\"text-align: left;\">. Trabajar para renovar y mejorar la atención y el servicio del Hotel.</div>', 'objetivos', '', 'publish', 'closed', 'closed', '', 'objetivos', '', '', '2017-05-10 15:21:53', '2017-05-10 15:21:53', '', 0, 'http://127.0.0.1/dominique/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-05-10 14:14:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-05-10 14:14:32', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/dominique/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-05-10 14:14:40', '2017-05-10 14:14:40', '', 'objetivos', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-05-10 14:14:40', '2017-05-10 14:14:40', '', 8, 'http://127.0.0.1/dominique/2017/05/10/8-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-05-10 14:14:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-05-10 14:14:46', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/dominique/?page_id=11', 0, 'page', '', 0),
(13, 1, '2017-05-10 14:17:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-10 14:17:38', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/dominique/?p=13', 0, 'post', '', 0),
(14, 1, '2017-05-10 14:18:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-10 14:18:51', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/dominique/?p=14', 0, 'post', '', 0),
(15, 1, '2017-05-10 14:20:44', '2017-05-10 14:20:44', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nhotel \"[your-subject]\"\n[your-name] <doromar_2000@hotmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on hotel (http://127.0.0.1/dominique)\ndoromar_2000@hotmail.com\nReply-To: [your-email]\n\n0\n0\n\nhotel \"[your-subject]\"\nhotel <doromar_2000@hotmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on hotel (http://127.0.0.1/dominique)\n[your-email]\nReply-To: doromar_2000@hotmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-05-10 14:20:44', '2017-05-10 14:20:44', '', 0, 'http://127.0.0.1/dominique/?post_type=wpcf7_contact_form&p=15', 0, 'wpcf7_contact_form', '', 0),
(16, 1, '2017-05-10 14:22:58', '2017-05-10 14:22:58', '[vc_row][vc_column][vc_column_text]Contamos con un buen personal de muy buena calidad:\n\nGerente general: Nuestro Gerente General es una persona responsable con el funcionamiento general del hotel y de la calidad del servicio que se estamos ofreciendo a nuestros huéspedes.\n\nRecepcionista:Nuestra Recepcionista es la persona responsable de tomar las reservas que se realizan mediante llamadas telefónicas, mantener el registro de entradas y salidas de los clientes y atender todo tipo de consultas.\n\nPersonal de limpieza:Nuestro Personal de Limpieza está compuesto por personas que se encargan de mantener la higiene de las habitaciones. El personal de limpieza suele quitar y cambiar la ropa blanca de las camas y limpiar la habitación del hotel antes de que llegue un nuevo huésped o en los casos solicitados.\n\nBotones:Nuestros Botones son las personas encargadas de recibir a los huéspedes, asistirlos en cuanto a su equipaje y guiarlos hasta su habitación. Como el contacto del botones con los clientes es continuo, es importante que el personal que desarrolle esta tarea sea alguien servicial, amable y cordial.[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_single_image source=\"featured_image\" img_size=\"large\" alignment=\"center\"][/vc_column][/vc_row]', 'Nuestro personal', '', 'publish', 'closed', 'closed', '', 'nuestro-personal', '', '', '2017-05-17 15:05:33', '2017-05-17 15:05:33', '', 0, 'http://127.0.0.1/dominique/?page_id=16', 0, 'page', '', 0),
(17, 1, '2017-05-10 14:22:58', '2017-05-10 14:22:58', '', 'Nuestro personal', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-05-10 14:22:58', '2017-05-10 14:22:58', '', 16, 'http://127.0.0.1/dominique/2017/05/10/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-05-10 14:23:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-05-10 14:23:14', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/dominique/?page_id=18', 0, 'page', '', 0),
(19, 1, '2017-05-10 14:23:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-05-10 14:23:15', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/dominique/?page_id=19', 0, 'page', '', 0),
(20, 1, '2017-05-10 14:27:55', '2017-05-10 14:27:55', '', 'El Restaurante', '', 'publish', 'open', 'open', '', 'el-restaurante', '', '', '2017-05-10 15:06:11', '2017-05-10 15:06:11', '', 0, 'http://127.0.0.1/dominique/?p=20', 0, 'post', '', 0),
(21, 1, '2017-05-10 14:26:13', '2017-05-10 14:26:13', '', '1 (3)', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2017-05-10 14:26:13', '2017-05-10 14:26:13', '', 0, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2017-05-10 14:26:21', '2017-05-10 14:26:21', '', 'cropped-1-3.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-1-3-jpg', '', '', '2017-05-10 14:26:21', '2017-05-10 14:26:21', '', 0, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/cropped-1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2017-05-10 14:26:40', '2017-05-10 14:26:40', '{\n    \"aza-lite::header_image\": {\n        \"value\": \"http://127.0.0.1/dominique/wp-content/uploads/2017/05/cropped-1-3.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"aza-lite::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://127.0.0.1/dominique/wp-content/uploads/2017/05/cropped-1-3.jpg\",\n            \"thumbnail_url\": \"http://127.0.0.1/dominique/wp-content/uploads/2017/05/cropped-1-3.jpg\",\n            \"timestamp\": 1494426388228,\n            \"attachment_id\": 22,\n            \"width\": 1920,\n            \"height\": 1080\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9ad58825-5e9d-4c7c-a87b-2408cf9d4f04', '', '', '2017-05-10 14:26:40', '2017-05-10 14:26:40', '', 0, 'http://127.0.0.1/dominique/2017/05/10/9ad58825-5e9d-4c7c-a87b-2408cf9d4f04/', 0, 'customize_changeset', '', 0),
(24, 1, '2017-05-10 14:30:53', '2017-05-10 14:30:53', '', 'v', '', 'trash', 'closed', 'closed', '', 'v__trashed', '', '', '2017-05-10 14:40:25', '2017-05-10 14:40:25', '', 0, 'http://127.0.0.1/dominique/?page_id=24', 0, 'page', '', 0),
(25, 1, '2017-05-10 14:30:51', '2017-05-10 14:30:51', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            24\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"aza-lite::custom_logo\": {\n        \"value\": 28,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a2d5ba60-80ee-4bbd-9c5f-a9d853754d77', '', '', '2017-05-10 14:30:51', '2017-05-10 14:30:51', '', 0, 'http://127.0.0.1/dominique/?p=25', 0, 'customize_changeset', '', 0),
(26, 1, '2017-05-10 14:27:55', '2017-05-10 14:27:55', '', 'El Restaurante', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2017-05-10 14:27:55', '2017-05-10 14:27:55', '', 20, 'http://127.0.0.1/dominique/2017/05/10/20-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2017-05-10 14:30:29', '2017-05-10 14:30:29', '', 'g (2)', '', 'inherit', 'open', 'closed', '', 'g-2', '', '', '2017-05-10 14:30:29', '2017-05-10 14:30:29', '', 0, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/g-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2017-05-10 14:30:44', '2017-05-10 14:30:44', 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/cropped-g-2.jpg', 'cropped-g-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-g-2-jpg', '', '', '2017-05-10 14:30:44', '2017-05-10 14:30:44', '', 0, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/cropped-g-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2017-05-10 14:30:53', '2017-05-10 14:30:53', '', 'v', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-05-10 14:30:53', '2017-05-10 14:30:53', '', 24, 'http://127.0.0.1/dominique/2017/05/10/24-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-05-10 14:31:07', '2017-05-10 14:31:07', '{\n    \"aza-lite::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3bd37771-6cee-47ba-bce5-9a66d35ac7ec', '', '', '2017-05-10 14:31:07', '2017-05-10 14:31:07', '', 0, 'http://127.0.0.1/dominique/2017/05/10/3bd37771-6cee-47ba-bce5-9a66d35ac7ec/', 0, 'customize_changeset', '', 0),
(31, 1, '2017-05-10 14:31:38', '2017-05-10 14:31:38', 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/cropped-g-2-1.jpg', 'cropped-g-2-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-g-2-1-jpg', '', '', '2017-05-10 14:31:38', '2017-05-10 14:31:38', '', 0, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/cropped-g-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2017-05-10 14:32:16', '2017-05-10 14:32:16', 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/cropped-g-2-2.jpg', 'cropped-g-2-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-g-2-2-jpg', '', '', '2017-05-10 14:32:16', '2017-05-10 14:32:16', '', 0, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/cropped-g-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2017-05-10 14:32:31', '2017-05-10 14:32:31', '{\n    \"site_icon\": {\n        \"value\": 32,\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"aza-lite::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cdc4a1c1-8f8c-41b0-ba61-311fabdeef26', '', '', '2017-05-10 14:32:31', '2017-05-10 14:32:31', '', 0, 'http://127.0.0.1/dominique/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2017-05-10 14:32:51', '2017-05-10 14:32:51', 'Las habitaciones del Hotel  tienen un solo objetivo, brindar a nuestros huéspedes hospitalidad, historia del hotel de excelencia, mediante un trato individualizado por un personal altamente motivado. Representar la hospitalidad del Hotel, preservando y promoviendo nuestros valores culturales, sociales y ambientales y creando experiencias únicas que motiven a nuestros huéspedes a volver.', 'Las habitaciones', '', 'publish', 'open', 'open', '', 'el-bar', '', '', '2017-05-10 15:13:04', '2017-05-10 15:13:04', '', 0, 'http://127.0.0.1/dominique/?p=34', 0, 'post', '', 0),
(35, 1, '2017-05-10 14:32:52', '2017-05-10 14:32:52', '', 'El Bar', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2017-05-10 14:32:52', '2017-05-10 14:32:52', '', 34, 'http://127.0.0.1/dominique/2017/05/10/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-05-10 14:33:26', '2017-05-10 14:33:26', '', 'Las habitaciones', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2017-05-10 14:33:26', '2017-05-10 14:33:26', '', 34, 'http://127.0.0.1/dominique/2017/05/10/34-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-05-10 14:33:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-10 14:33:37', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/dominique/?p=37', 0, 'post', '', 0),
(38, 1, '2017-05-10 14:34:08', '2017-05-10 14:34:08', '', 'El servicio al cuarto', '', 'publish', 'open', 'open', '', 'el-servicio-al-cuarto', '', '', '2017-05-10 14:53:43', '2017-05-10 14:53:43', '', 0, 'http://127.0.0.1/dominique/?p=38', 0, 'post', '', 0),
(39, 1, '2017-05-10 14:34:08', '2017-05-10 14:34:08', '', 'El servicio al cuarto', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2017-05-10 14:34:08', '2017-05-10 14:34:08', '', 38, 'http://127.0.0.1/dominique/2017/05/10/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-05-10 14:37:30', '2017-05-10 14:37:30', 'El Hotel tiene la visión de lograr un liderazgo dentro del grupo de hoteles del mismo nivel. Tenemos la visión de ser el mejor hotel en nuestro medio, y como tal ubicarnos como el preferido de nuestros turistas. La calidad de servicio esta basada en los años de experiencia adquiridos por los propietarios, socios y trabajadores.', 'Visión', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-05-10 14:37:30', '2017-05-10 14:37:30', '', 4, 'http://127.0.0.1/dominique/2017/05/10/4-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2017-05-10 14:39:13', '2017-05-10 14:39:13', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2017-05-17 15:35:58', '2017-05-17 15:35:58', '', 0, 'http://127.0.0.1/dominique/?p=41', 3, 'nav_menu_item', '', 0),
(42, 1, '2017-05-10 14:39:14', '2017-05-10 14:39:14', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2017-05-17 15:36:00', '2017-05-17 15:36:00', '', 0, 'http://127.0.0.1/dominique/?p=42', 8, 'nav_menu_item', '', 0),
(43, 1, '2017-05-10 14:39:14', '2017-05-10 14:39:14', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2017-05-17 15:36:00', '2017-05-17 15:36:00', '', 0, 'http://127.0.0.1/dominique/?p=43', 9, 'nav_menu_item', '', 0),
(44, 1, '2017-05-10 14:39:14', '2017-05-10 14:39:14', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2017-05-17 15:36:01', '2017-05-17 15:36:01', '', 0, 'http://127.0.0.1/dominique/?p=44', 10, 'nav_menu_item', '', 0),
(45, 1, '2017-05-10 14:43:11', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-10 14:43:11', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/dominique/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2017-05-10 14:44:01', '2017-05-10 14:44:01', '', 'contactenos', '', 'publish', 'closed', 'closed', '', 'contactenos', '', '', '2017-05-10 14:44:01', '2017-05-10 14:44:01', '', 0, 'http://127.0.0.1/dominique/?page_id=46', 0, 'page', '', 0),
(47, 1, '2017-05-10 14:44:01', '2017-05-10 14:44:01', '', 'contactenos', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2017-05-10 14:44:01', '2017-05-10 14:44:01', '', 46, 'http://127.0.0.1/dominique/2017/05/10/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-05-10 14:44:46', '2017-05-10 14:44:46', '', 'Nuestros servicios', '', 'publish', 'closed', 'closed', '', 'nuestros-servicios', '', '', '2017-05-10 14:45:06', '2017-05-10 14:45:06', '', 0, 'http://127.0.0.1/dominique/?page_id=48', 0, 'page', '', 0),
(49, 1, '2017-05-10 14:44:46', '2017-05-10 14:44:46', '', 'Nuestros servicios', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2017-05-10 14:44:46', '2017-05-10 14:44:46', '', 48, 'http://127.0.0.1/dominique/2017/05/10/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-05-10 14:46:47', '2017-05-10 14:46:47', '', 'El bar', '', 'publish', 'open', 'open', '', 'el-bar-2', '', '', '2017-05-10 14:50:14', '2017-05-10 14:50:14', '', 0, 'http://127.0.0.1/dominique/?p=50', 0, 'post', '', 0),
(51, 1, '2017-05-10 14:46:37', '2017-05-10 14:46:37', '', '1 (3)', '', 'inherit', 'open', 'closed', '', '1-3-2', '', '', '2017-05-10 14:46:37', '2017-05-10 14:46:37', '', 50, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/1-3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2017-05-10 14:46:47', '2017-05-10 14:46:47', '', 'El bar', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2017-05-10 14:46:47', '2017-05-10 14:46:47', '', 50, 'http://127.0.0.1/dominique/2017/05/10/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-05-10 14:48:19', '2017-05-10 14:48:19', 'Una mision principal: Que el cliente se sienta cómodo, tranquilo y engreído: La Mision del Hotel Ruinas es lograr convertirse en el refugio del viajero que viene a cumplir su sueño de conocer el maravilloso Machupicchu, o del viajero que quiere descansar después de hUna principal: Que el cliente se sienta cómodo, tranquilo y engreído: La Mision del Hotel Ruinas es lograr convertirse en el refugio del viajero que viene a cumplir su sueño de conocer el maravilloso Machupicchu, o del viajero que quiere descansar después de haber concluido sus actividades y negociosaber concluido sus actividades y negocios', 'misión', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2017-05-10 14:48:19', '2017-05-10 14:48:19', '', 6, 'http://127.0.0.1/dominique/2017/05/10/6-autosave-v1/', 0, 'revision', '', 0),
(54, 1, '2017-05-10 14:50:03', '2017-05-10 14:50:03', 'Una misión principal: Que el cliente se sienta cómodo, tranquilo y engreído: La Misión del Hotel es lograr convertirse en el refugio del viajero que viene a cumplir su sueño de conocer la maravillosa ciudad, y este hermoso hotel', 'misión', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-05-10 14:50:03', '2017-05-10 14:50:03', '', 6, 'http://127.0.0.1/dominique/2017/05/10/6-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-05-10 14:53:33', '2017-05-10 14:53:33', '', 'er', '', 'inherit', 'open', 'closed', '', 'er', '', '', '2017-05-10 14:53:33', '2017-05-10 14:53:33', '', 38, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/er.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2017-05-10 14:54:39', '2017-05-10 14:54:39', '', 'Nombre', '', 'publish', 'closed', 'closed', '', 'nombre', '', '', '2017-05-10 14:54:39', '2017-05-10 14:54:39', '', 0, 'http://127.0.0.1/dominique/?page_id=56', 0, 'page', '', 0),
(57, 1, '2017-05-10 14:54:39', '2017-05-10 14:54:39', '', 'Nombre', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-05-10 14:54:39', '2017-05-10 14:54:39', '', 56, 'http://127.0.0.1/dominique/2017/05/10/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-05-10 14:56:13', '2017-05-10 14:56:13', '', 'Apellidos', '', 'publish', 'closed', 'closed', '', 'apellidos', '', '', '2017-05-10 14:56:13', '2017-05-10 14:56:13', '', 0, 'http://127.0.0.1/dominique/?page_id=58', 0, 'page', '', 0),
(59, 1, '2017-05-10 14:56:13', '2017-05-10 14:56:13', '', 'Apellidos', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-05-10 14:56:13', '2017-05-10 14:56:13', '', 58, 'http://127.0.0.1/dominique/2017/05/10/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-05-10 14:58:40', '2017-05-10 14:58:40', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2017-05-17 15:36:02', '2017-05-17 15:36:02', '', 0, 'http://127.0.0.1/dominique/?p=60', 13, 'nav_menu_item', '', 0),
(61, 1, '2017-05-10 14:58:40', '2017-05-10 14:58:40', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2017-05-17 15:36:02', '2017-05-17 15:36:02', '', 0, 'http://127.0.0.1/dominique/?p=61', 12, 'nav_menu_item', '', 0),
(62, 1, '2017-05-10 14:58:39', '2017-05-10 14:58:39', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2017-05-17 15:35:57', '2017-05-17 15:35:57', '', 0, 'http://127.0.0.1/dominique/?p=62', 1, 'nav_menu_item', '', 0),
(63, 1, '2017-05-10 14:58:39', '2017-05-10 14:58:39', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2017-05-17 15:36:02', '2017-05-17 15:36:02', '', 0, 'http://127.0.0.1/dominique/?p=63', 11, 'nav_menu_item', '', 0),
(64, 1, '2017-05-10 15:00:56', '2017-05-10 15:00:56', '{\n    \"aza-lite::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"aza-lite::nav_menu_locations[footer-menu-1]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '87892916-e052-4df5-8912-495d656a30c8', '', '', '2017-05-10 15:00:56', '2017-05-10 15:00:56', '', 0, 'http://127.0.0.1/dominique/?p=64', 0, 'customize_changeset', '', 0),
(65, 1, '2017-05-10 15:01:58', '2017-05-10 15:01:58', '', 'Correos', '', 'publish', 'closed', 'closed', '', 'correos', '', '', '2017-05-10 15:01:58', '2017-05-10 15:01:58', '', 0, 'http://127.0.0.1/dominique/?page_id=65', 0, 'page', '', 0),
(66, 1, '2017-05-10 15:01:58', '2017-05-10 15:01:58', '', 'Correos', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-05-10 15:01:58', '2017-05-10 15:01:58', '', 65, 'http://127.0.0.1/dominique/2017/05/10/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-05-10 15:02:28', '2017-05-10 15:02:28', '', 'Teléfono', '', 'publish', 'closed', 'closed', '', 'telefono', '', '', '2017-05-10 15:02:28', '2017-05-10 15:02:28', '', 0, 'http://127.0.0.1/dominique/?page_id=67', 0, 'page', '', 0),
(68, 1, '2017-05-10 15:02:28', '2017-05-10 15:02:28', '', 'Teléfono', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2017-05-10 15:02:28', '2017-05-10 15:02:28', '', 67, 'http://127.0.0.1/dominique/2017/05/10/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-05-10 15:02:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-05-10 15:02:41', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/dominique/?page_id=69', 0, 'page', '', 0),
(70, 1, '2017-05-10 15:02:58', '2017-05-10 15:02:58', '', 'Asunto', '', 'publish', 'closed', 'closed', '', 'asunto', '', '', '2017-05-10 15:02:58', '2017-05-10 15:02:58', '', 0, 'http://127.0.0.1/dominique/?page_id=70', 0, 'page', '', 0),
(71, 1, '2017-05-10 15:02:58', '2017-05-10 15:02:58', '', 'Asunto', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-05-10 15:02:58', '2017-05-10 15:02:58', '', 70, 'http://127.0.0.1/dominique/2017/05/10/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-05-10 15:03:49', '2017-05-10 15:03:49', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2017-05-17 15:36:03', '2017-05-17 15:36:03', '', 0, 'http://127.0.0.1/dominique/?p=72', 15, 'nav_menu_item', '', 0),
(73, 1, '2017-05-10 15:03:48', '2017-05-10 15:03:48', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2017-05-17 15:36:03', '2017-05-17 15:36:03', '', 0, 'http://127.0.0.1/dominique/?p=73', 14, 'nav_menu_item', '', 0),
(74, 1, '2017-05-10 15:03:49', '2017-05-10 15:03:49', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2017-05-17 15:36:04', '2017-05-17 15:36:04', '', 0, 'http://127.0.0.1/dominique/?p=74', 16, 'nav_menu_item', '', 0),
(75, 1, '2017-05-10 15:05:55', '2017-05-10 15:05:55', '', '1 (9)', '', 'inherit', 'open', 'closed', '', '1-9', '', '', '2017-05-10 15:05:55', '2017-05-10 15:05:55', '', 20, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/1-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2017-05-10 15:06:37', '2017-05-10 15:06:37', '', 'El Restaurante', '', 'inherit', 'closed', 'closed', '', '20-autosave-v1', '', '', '2017-05-10 15:06:37', '2017-05-10 15:06:37', '', 20, 'http://127.0.0.1/dominique/2017/05/10/20-autosave-v1/', 0, 'revision', '', 0),
(77, 1, '2017-05-10 15:07:27', '2017-05-10 15:07:27', '', '1 (2)', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2017-05-10 15:07:27', '2017-05-10 15:07:27', '', 34, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2017-05-10 15:11:46', '2017-05-10 15:11:46', 'Las habitaciones del Hotel  tienen un solo objetivo Brindar a nuestros huéspedes hospitalidad, historia y cultura de Bocas del Toro de excelencia, mediante un trato individualizado por un personal altamente motivado.', 'Las habitaciones', '', 'inherit', 'closed', 'closed', '', '34-autosave-v1', '', '', '2017-05-10 15:11:46', '2017-05-10 15:11:46', '', 34, 'http://127.0.0.1/dominique/2017/05/10/34-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2017-05-10 15:13:04', '2017-05-10 15:13:04', 'Las habitaciones del Hotel  tienen un solo objetivo, brindar a nuestros huéspedes hospitalidad, historia del hotel de excelencia, mediante un trato individualizado por un personal altamente motivado. Representar la hospitalidad del Hotel, preservando y promoviendo nuestros valores culturales, sociales y ambientales y creando experiencias únicas que motiven a nuestros huéspedes a volver.', 'Las habitaciones', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2017-05-10 15:13:04', '2017-05-10 15:13:04', '', 34, 'http://127.0.0.1/dominique/2017/05/10/34-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-05-10 15:20:53', '2017-05-10 15:20:53', '<div style=\"text-align: left;\">nuestros objetivos:</div>\n<div style=\"text-align: left;\">. Unificar la fuerza de los Asociados</div>\n<div style=\"text-align: left;\">.Representar y proteger los intereses de sus afiliados</div>\n<div style=\"text-align: left;\">. Impulsar y fomentar las acciones de promoción de la industria turística hacia el desarrollo del destino.</div>\n<div style=\"text-align: left;\"> .Elevar los estándares de calidad de los servicios que se ofrecen al turismo a través de programas de capacitación.</div>\n<div style=\"text-align: left;\">.Fomentar el trabajo en equipo con otras asociaciones y  organizaciones afines para lograr objetivos comunes.</div>\n<div style=\"text-align: left;\">. Trabajar para renovar y mejorar la atención y el servicio, para mantener al destino en los primeros lugares turísticos del mundo.</div>', 'objetivos', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2017-05-10 15:20:53', '2017-05-10 15:20:53', '', 8, 'http://127.0.0.1/dominique/2017/05/10/8-autosave-v1/', 0, 'revision', '', 0),
(81, 1, '2017-05-10 15:21:53', '2017-05-10 15:21:53', '<div style=\"text-align: left;\">nuestros objetivos:</div>\r\n<div style=\"text-align: left;\">. Unificar la fuerza de los Asociados</div>\r\n<div style=\"text-align: left;\">.Representar y proteger los intereses de sus afiliados</div>\r\n<div style=\"text-align: left;\">. Impulsar y fomentar las acciones de promoción de la industria turística hacia el desarrollo del destino.</div>\r\n<div style=\"text-align: left;\">. Trabajar para renovar y mejorar la atención y el servicio del Hotel.</div>', 'objetivos', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-05-10 15:21:53', '2017-05-10 15:21:53', '', 8, 'http://127.0.0.1/dominique/2017/05/10/8-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-05-10 15:25:03', '2017-05-10 15:25:03', '[vc_row][vc_column][vc_column_text]Nuestro administrador siempre va a estar al pendiente de cualquier consulta que desee.\n<p style=\"text-align: center;\">Sus funciones</p>\n\n<ol style=\"list-style-type: upper-roman;\">\n 	<li style=\"text-align: left;\">Atiende usuarios.</li>\n 	<li style=\"text-align: left;\">Dirige el personal a cargo.</li>\n 	<li style=\"text-align: left;\">Provee los elementos necesarios para el servicio de habitaciones.</li>\n 	<li style=\"text-align: left;\">Presta el servicio de recepción y reservas.</li>\n 	<li style=\"text-align: left;\">Maneja valores e ingresos relacionados con la operación del establecimiento.</li>\n 	<li style=\"text-align: left;\">Organiza la producción en la cantidad y con la calidad estipulada.</li>\n 	<li style=\"text-align: left;\">Asegura márgenes de costo y utilidad cumpliendo con las metas financieras.</li>\n 	<li style=\"text-align: left;\">Analiza los resultados contables y financieros.</li>\n 	<li style=\"text-align: left;\">Verifica la calidad del producto de acuerdo con las normas de calidad e Interactua con otros en idioma inglés, francés, etc.</li>\n</ol>\n[/vc_column_text][vc_btn title=\"Consultas\" style=\"gradient\" gradient_color_1=\"chino\" gradient_color_2=\"mulled-wine\" align=\"right\" css_animation=\"fadeInDown\"][/vc_column][/vc_row]', 'El administrador', '', 'publish', 'closed', 'closed', '', 'guia-de-turismo', '', '', '2017-05-17 13:37:23', '2017-05-17 13:37:23', '', 0, 'http://127.0.0.1/dominique/?page_id=82', 0, 'page', '', 0),
(83, 1, '2017-05-10 15:25:03', '2017-05-10 15:25:03', '', 'Guía de turismo', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-05-10 15:25:03', '2017-05-10 15:25:03', '', 82, 'http://127.0.0.1/dominique/2017/05/10/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2017-05-10 15:25:46', '2017-05-10 15:25:46', '', 'Asistentes del hotel', '', 'publish', 'closed', 'closed', '', 'asistentes-del-hotel', '', '', '2017-05-10 15:25:46', '2017-05-10 15:25:46', '', 0, 'http://127.0.0.1/dominique/?page_id=84', 0, 'page', '', 0),
(85, 1, '2017-05-10 15:25:46', '2017-05-10 15:25:46', '', 'Asistentes del hotel', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2017-05-10 15:25:46', '2017-05-10 15:25:46', '', 84, 'http://127.0.0.1/dominique/2017/05/10/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2017-05-10 15:26:11', '2017-05-10 15:26:11', '[vc_row][vc_column][vc_column_text]Es donde se supervisa el número de habitaciones disponibles, se registra a los huéspedes, se hacen las reservas, se registran las salidas y se asignan las habitaciones y las llaves.[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_single_image source=\"featured_image\" img_size=\"large\" css_animation=\"fadeInDown\"][/vc_column][/vc_row]', 'La recepción', '', 'publish', 'closed', 'closed', '', 'la-recepcion', '', '', '2017-05-17 15:19:20', '2017-05-17 15:19:20', '', 0, 'http://127.0.0.1/dominique/?page_id=86', 0, 'page', '', 0),
(87, 1, '2017-05-10 15:26:11', '2017-05-10 15:26:11', '', 'La recepción', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2017-05-10 15:26:11', '2017-05-10 15:26:11', '', 86, 'http://127.0.0.1/dominique/2017/05/10/86-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2017-05-10 15:27:23', '2017-05-10 15:27:23', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2017-05-17 15:35:59', '2017-05-17 15:35:59', '', 0, 'http://127.0.0.1/dominique/?p=88', 6, 'nav_menu_item', '', 0),
(89, 1, '2017-05-10 15:27:23', '2017-05-10 15:27:23', '', 'El Contador', '', 'publish', 'closed', 'closed', '', '89', '', '', '2017-05-17 15:35:59', '2017-05-17 15:35:59', '', 0, 'http://127.0.0.1/dominique/?p=89', 5, 'nav_menu_item', '', 0),
(90, 1, '2017-05-10 15:27:21', '2017-05-10 15:27:21', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2017-05-17 15:35:58', '2017-05-17 15:35:58', '', 0, 'http://127.0.0.1/dominique/?p=90', 4, 'nav_menu_item', '', 0),
(91, 1, '2017-05-17 13:11:34', '2017-05-17 13:11:34', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-05-17 13:11:34', '2017-05-17 13:11:34', '', 1, 'http://127.0.0.1/dominique/2017/05/17/1-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2017-05-17 13:14:35', '2017-05-17 13:14:35', '', 'El cocinero', '', 'inherit', 'closed', 'closed', '', '82-autosave-v1', '', '', '2017-05-17 13:14:35', '2017-05-17 13:14:35', '', 82, 'http://127.0.0.1/dominique/2017/05/17/82-autosave-v1/', 0, 'revision', '', 0),
(93, 1, '2017-05-17 13:15:07', '2017-05-17 13:15:07', '', 'El administrador', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-05-17 13:15:07', '2017-05-17 13:15:07', '', 82, 'http://127.0.0.1/dominique/2017/05/17/82-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2017-05-17 13:45:46', '2017-05-17 13:45:46', '[vc_row][vc_column][vc_column_text]Tanto los precios y los descuentos varían según algunas fechas.\n\nSi usted es cliente Frecuente se le da un descuento del 5% de pago.[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_message message_box_style=\"3d\" css_animation=\"fadeInDown\"]6D/5N[/vc_message][/vc_column][vc_column width=\"1/2\"][vc_btn title=\"350$\" style=\"3d\" color=\"sky\" align=\"right\" css_animation=\"fadeInDown\"][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_message message_box_style=\"3d\" message_box_color=\"alert-success\" icon_fontawesome=\"fa fa-user\"]5D/4N[/vc_message][/vc_column][vc_column width=\"1/2\"][vc_btn title=\"300$\" style=\"3d\" color=\"vista-blue\" align=\"right\" css_animation=\"fadeInDown\"][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_message message_box_style=\"3d\" message_box_color=\"danger\" icon_fontawesome=\"fa fa-check-circle-o\" css_animation=\"fadeInDown\"]4D/3N[/vc_message][/vc_column][vc_column width=\"1/2\"][vc_btn title=\"270$\" style=\"3d\" color=\"sandy-brown\" align=\"right\" css_animation=\"fadeInDown\"][/vc_column][/vc_row]', 'Precios y Descuentos', '', 'publish', 'closed', 'closed', '', 'precios-y-descuentos', '', '', '2017-05-17 14:43:23', '2017-05-17 14:43:23', '', 0, 'http://127.0.0.1/dominique/?page_id=94', 0, 'page', '', 0),
(95, 1, '2017-05-17 13:31:14', '2017-05-17 13:31:14', '[vc_row][vc_column][vc_column_text]Nuestro administrador siempre va a estar al pendiente de cualquier consulta que desee.\n<p style=\"text-align: center;\">Sus funciones</p>\n\n<ol style=\"list-style-type: upper-roman;\">\n 	<li style=\"text-align: left;\">Atiende usuarios.</li>\n 	<li style=\"text-align: left;\">Dirige el personal a cargo.</li>\n 	<li style=\"text-align: left;\">Provee los elementos necesarios para el servicio de habitaciones.</li>\n 	<li style=\"text-align: left;\">Presta el servicio de recepción y reservas.</li>\n 	<li style=\"text-align: left;\">Maneja valores e ingresos relacionados con la operación del establecimiento.</li>\n 	<li style=\"text-align: left;\">Organiza la producción en la cantidad y con la calidad estipulada.</li>\n 	<li style=\"text-align: left;\">Asegura márgenes de costo y utilidad cumpliendo con las metas financieras.</li>\n 	<li style=\"text-align: left;\">Analiza los resultados contables y financieros.</li>\n 	<li style=\"text-align: left;\">Verifica la calidad del producto de acuerdo con las normas de calidad e Interactua con otros en idioma inglés, francés, etc.</li>\n</ol>\n[/vc_column_text][vc_btn title=\"Consultas\" style=\"3d\" color=\"white\" align=\"right\" css_animation=\"fadeInDown\"][/vc_column][/vc_row]', 'El administrador', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-05-17 13:31:14', '2017-05-17 13:31:14', '', 82, 'http://127.0.0.1/dominique/2017/05/17/82-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-05-17 13:37:23', '2017-05-17 13:37:23', '[vc_row][vc_column][vc_column_text]Nuestro administrador siempre va a estar al pendiente de cualquier consulta que desee.\n<p style=\"text-align: center;\">Sus funciones</p>\n\n<ol style=\"list-style-type: upper-roman;\">\n 	<li style=\"text-align: left;\">Atiende usuarios.</li>\n 	<li style=\"text-align: left;\">Dirige el personal a cargo.</li>\n 	<li style=\"text-align: left;\">Provee los elementos necesarios para el servicio de habitaciones.</li>\n 	<li style=\"text-align: left;\">Presta el servicio de recepción y reservas.</li>\n 	<li style=\"text-align: left;\">Maneja valores e ingresos relacionados con la operación del establecimiento.</li>\n 	<li style=\"text-align: left;\">Organiza la producción en la cantidad y con la calidad estipulada.</li>\n 	<li style=\"text-align: left;\">Asegura márgenes de costo y utilidad cumpliendo con las metas financieras.</li>\n 	<li style=\"text-align: left;\">Analiza los resultados contables y financieros.</li>\n 	<li style=\"text-align: left;\">Verifica la calidad del producto de acuerdo con las normas de calidad e Interactua con otros en idioma inglés, francés, etc.</li>\n</ol>\n[/vc_column_text][vc_btn title=\"Consultas\" style=\"gradient\" gradient_color_1=\"chino\" gradient_color_2=\"mulled-wine\" align=\"right\" css_animation=\"fadeInDown\"][/vc_column][/vc_row]', 'El administrador', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-05-17 13:37:23', '2017-05-17 13:37:23', '', 82, 'http://127.0.0.1/dominique/2017/05/17/82-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2017-05-17 13:45:46', '2017-05-17 13:45:46', 'Tanto los precios y los descuentos varían según algunas fechas.\r\n\r\nSi usted es cliente Frecuente se le da un descuento del 5% de pago.', 'Precios y Descuentos', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2017-05-17 13:45:46', '2017-05-17 13:45:46', '', 94, 'http://127.0.0.1/dominique/2017/05/17/94-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2017-05-17 13:47:07', '2017-05-17 13:47:07', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2017-05-17 15:35:58', '2017-05-17 15:35:58', '', 0, 'http://127.0.0.1/dominique/?p=98', 2, 'nav_menu_item', '', 0),
(99, 1, '2017-05-17 14:15:41', '2017-05-17 14:15:41', '[vc_row][vc_column][vc_column_text]Tanto los precios y los descuentos varían según algunas fechas.\n\nSi usted es cliente Frecuente se le da un descuento del 5% de pago.[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_btn title=\"7D/6N \" color=\"mulled-wine\" size=\"lg\" align=\"left\" css_animation=\"fadeInDown\"][/vc_column][vc_column width=\"1/2\"][vc_btn title=\"350$\" style=\"3d\" color=\"chino\" align=\"left\" css_animation=\"fadeInDown\"][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_btn title=\"6D/5N\" style=\"3d\" color=\"chino\" size=\"lg\" align=\"left\" css_animation=\"fadeInDown\"][/vc_column][vc_column width=\"1/2\"][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][/vc_column][vc_column width=\"1/2\"][/vc_column][/vc_row]', 'Precios y Descuentos', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2017-05-17 14:15:41', '2017-05-17 14:15:41', '', 94, 'http://127.0.0.1/dominique/2017/05/17/94-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2017-05-17 14:43:23', '2017-05-17 14:43:23', '[vc_row][vc_column][vc_column_text]Tanto los precios y los descuentos varían según algunas fechas.\n\nSi usted es cliente Frecuente se le da un descuento del 5% de pago.[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_message message_box_style=\"3d\" css_animation=\"fadeInDown\"]6D/5N[/vc_message][/vc_column][vc_column width=\"1/2\"][vc_btn title=\"350$\" style=\"3d\" color=\"sky\" align=\"right\" css_animation=\"fadeInDown\"][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_message message_box_style=\"3d\" message_box_color=\"alert-success\" icon_fontawesome=\"fa fa-user\"]5D/4N[/vc_message][/vc_column][vc_column width=\"1/2\"][vc_btn title=\"300$\" style=\"3d\" color=\"vista-blue\" align=\"right\" css_animation=\"fadeInDown\"][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_message message_box_style=\"3d\" message_box_color=\"danger\" icon_fontawesome=\"fa fa-check-circle-o\" css_animation=\"fadeInDown\"]4D/3N[/vc_message][/vc_column][vc_column width=\"1/2\"][vc_btn title=\"270$\" style=\"3d\" color=\"sandy-brown\" align=\"right\" css_animation=\"fadeInDown\"][/vc_column][/vc_row]', 'Precios y Descuentos', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2017-05-17 14:43:23', '2017-05-17 14:43:23', '', 94, 'http://127.0.0.1/dominique/2017/05/17/94-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2017-05-17 14:46:16', '2017-05-17 14:46:16', 'Es donde se supervisa el número de habitaciones disponibles, se registra a los huéspedes, se hacen las reservas, se registran las salidas y se asignan las habitaciones y las llaves.', 'La recepción', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2017-05-17 14:46:16', '2017-05-17 14:46:16', '', 86, 'http://127.0.0.1/dominique/2017/05/17/86-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2017-05-17 14:48:03', '2017-05-17 14:48:03', '', 'recepcion-hotel', '', 'inherit', 'open', 'closed', '', 'recepcion-hotel', '', '', '2017-05-17 14:48:03', '2017-05-17 14:48:03', '', 86, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/recepcion-hotel.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2017-05-17 15:00:34', '2017-05-17 15:00:34', 'Contamos con un buen personal de muy buena calidad:\r\n\r\nGerente general: Nuestro Gerente General es una persona responsable con el funcionamiento general del hotel y de la calidad del servicio que se estamos ofreciendo a nuestros huéspedes.\r\n\r\nRecepcionista:Nuestra Recepcionista es la persona responsable de tomar las reservas que se realizan mediante llamadas telefónicas, mantener el registro de entradas y salidas de los clientes y atender todo tipo de consultas.\r\n\r\nPersonal de limpieza:Nuestro Personal de Limpieza está compuesto por personas que se encargan de mantener la higiene de las habitaciones. El personal de limpieza suele quitar y cambiar la ropa blanca de las camas y limpiar la habitación del hotel antes de que llegue un nuevo huésped o en los casos solicitados.\r\n\r\nBotones:Nuestros Botones son las personas encargadas de recibir a los huéspedes, asistirlos en cuanto a su equipaje y guiarlos hasta su habitación. Como el contacto del botones con los clientes es continuo, es importante que el personal que desarrolle esta tarea sea alguien servicial, amable y cordial.', 'Nuestro personal', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-05-17 15:00:34', '2017-05-17 15:00:34', '', 16, 'http://127.0.0.1/dominique/2017/05/17/16-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2017-05-17 15:01:29', '2017-05-17 15:01:29', '', 'img', '', 'inherit', 'open', 'closed', '', 'img', '', '', '2017-05-17 15:01:29', '2017-05-17 15:01:29', '', 16, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/img.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2017-05-17 15:05:29', '2017-05-17 15:05:29', '[vc_row][vc_column][vc_column_text]Contamos con un buen personal de muy buena calidad:\n\nGerente general: Nuestro Gerente General es una persona responsable con el funcionamiento general del hotel y de la calidad del servicio que se estamos ofreciendo a nuestros huéspedes.\n\nRecepcionista:Nuestra Recepcionista es la persona responsable de tomar las reservas que se realizan mediante llamadas telefónicas, mantener el registro de entradas y salidas de los clientes y atender todo tipo de consultas.\n\nPersonal de limpieza:Nuestro Personal de Limpieza está compuesto por personas que se encargan de mantener la higiene de las habitaciones. El personal de limpieza suele quitar y cambiar la ropa blanca de las camas y limpiar la habitación del hotel antes de que llegue un nuevo huésped o en los casos solicitados.\n\nBotones:Nuestros Botones son las personas encargadas de recibir a los huéspedes, asistirlos en cuanto a su equipaje y guiarlos hasta su habitación. Como el contacto del botones con los clientes es continuo, es importante que el personal que desarrolle esta tarea sea alguien servicial, amable y cordial.[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_single_image source=\"featured_image\" img_size=\"large\" alignment=\"center\"][/vc_column][/vc_row]', 'Nuestro personal', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-05-17 15:05:29', '2017-05-17 15:05:29', '', 16, 'http://127.0.0.1/dominique/2017/05/17/16-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2017-05-17 15:08:13', '2017-05-17 15:08:13', '[vc_row][vc_column][vc_column_text]Es donde se supervisa el número de habitaciones disponibles, se registra a los huéspedes, se hacen las reservas, se registran las salidas y se asignan las habitaciones y las llaves.[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_single_image source=\"featured_image\" img_size=\"large\" css_animation=\"fadeInDown\"][/vc_column][/vc_row]', 'La recepción', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2017-05-17 15:08:13', '2017-05-17 15:08:13', '', 86, 'http://127.0.0.1/dominique/2017/05/17/86-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2017-05-17 15:14:27', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-17 15:14:27', '2017-05-17 15:14:27', '', 0, 'http://127.0.0.1/dominique/?page_id=108', 0, 'page', '', 0),
(109, 1, '2017-05-17 15:14:27', '2017-05-17 15:14:27', '', '', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2017-05-17 15:14:27', '2017-05-17 15:14:27', '', 108, 'http://127.0.0.1/dominique/2017/05/17/108-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(110, 1, '2017-05-17 15:22:28', '2017-05-17 15:22:28', '[vc_row][vc_column][vc_column_text]Somos conscientes de la importancia que tiene nuestro trabajo en la sensación de bienestar que tenga el cliente y en la valoración de su estancia.\n\nPor este motivo, nuestro objetivo es la entrega de las habitaciones y apartamentos en un perfecto estado de orden, limpieza y desinfección.\n\nPara conseguir este objetivo:\n<ul>\n 	<li>Concentramos los horarios de las personas de la plantilla para conseguir una mayor presencia de horas en las franjas horarias en las cuales los clientes habitualmente dejan las habitaciones libres.</li>\n 	<li>Adaptamos y dimensionamos si es necesario la plantilla en función del nivel de ocupación. Trabajamos con previsiones de ocupación semanales que entrega la gobernanta al responsable de nuestra División HORE.</li>\n 	<li>Aplicamos protocolos específicos de limpieza de habitaciones, así como los productos y maquinaria de última generación.</li>\n 	<li>Designamos un supervisor externo que controla de forma permanente el servicio ofrecido, y permanece a la disposición de nuestro cliente para solucionar cualquier necesidad.</li>\n</ul>\n[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"114\" img_size=\"large\" onclick=\"link_image\" css_animation=\"fadeInDown\"][/vc_column][vc_column width=\"1/2\"][vc_single_image image=\"116\" img_size=\"large\" css_animation=\"fadeInDown\"][/vc_column][/vc_row]', 'El servicio de limpieza', '', 'publish', 'closed', 'closed', '', 'el-servicio-de-limpieza', '', '', '2017-05-17 15:32:04', '2017-05-17 15:32:04', '', 0, 'http://127.0.0.1/dominique/?page_id=110', 0, 'page', '', 0),
(111, 1, '2017-05-17 15:22:28', '2017-05-17 15:22:28', '', 'El servicio de limpieza', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-05-17 15:22:28', '2017-05-17 15:22:28', '', 110, 'http://127.0.0.1/dominique/2017/05/17/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2017-05-17 15:23:50', '2017-05-17 15:23:50', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2017-05-17 15:35:59', '2017-05-17 15:35:59', '', 0, 'http://127.0.0.1/dominique/?p=112', 7, 'nav_menu_item', '', 0),
(113, 1, '2017-05-17 15:24:07', '2017-05-17 15:24:07', 'Somos conscientes de la importancia que tiene nuestro trabajo en la sensación de bienestar que tenga el cliente y en la valoración de su estancia.\r\n\r\nPor este motivo, nuestro objetivo es la entrega de las habitaciones y apartamentos en un perfecto estado de orden, limpieza y desinfección.\r\n\r\nPara conseguir este objetivo:\r\n<ul>\r\n 	<li>Concentramos los horarios de las personas de la plantilla para conseguir una mayor presencia de horas en las franjas horarias en las cuales los clientes habitualmente dejan las habitaciones libres.</li>\r\n 	<li>Adaptamos y dimensionamos si es necesario la plantilla en función del nivel de ocupación. Trabajamos con previsiones de ocupación semanales que entrega la gobernanta al responsable de nuestra División HORE.</li>\r\n 	<li>Aplicamos protocolos específicos de limpieza de habitaciones, así como los productos y maquinaria de última generación.</li>\r\n 	<li>Designamos un supervisor externo que controla de forma permanente el servicio ofrecido, y permanece a la disposición de nuestro cliente para solucionar cualquier necesidad.</li>\r\n</ul>', 'El servicio de limpieza', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-05-17 15:24:07', '2017-05-17 15:24:07', '', 110, 'http://127.0.0.1/dominique/2017/05/17/110-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2017-05-17 15:25:26', '2017-05-17 15:25:26', '', 'fo (2)', '', 'inherit', 'open', 'closed', '', 'fo-2', '', '', '2017-05-17 15:25:26', '2017-05-17 15:25:26', '', 110, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/fo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2017-05-17 15:27:07', '2017-05-17 15:27:07', '[vc_row][vc_column][vc_column_text]Somos conscientes de la importancia que tiene nuestro trabajo en la sensación de bienestar que tenga el cliente y en la valoración de su estancia.\n\nPor este motivo, nuestro objetivo es la entrega de las habitaciones y apartamentos en un perfecto estado de orden, limpieza y desinfección.\n\nPara conseguir este objetivo:\n<ul>\n 	<li>Concentramos los horarios de las personas de la plantilla para conseguir una mayor presencia de horas en las franjas horarias en las cuales los clientes habitualmente dejan las habitaciones libres.</li>\n 	<li>Adaptamos y dimensionamos si es necesario la plantilla en función del nivel de ocupación. Trabajamos con previsiones de ocupación semanales que entrega la gobernanta al responsable de nuestra División HORE.</li>\n 	<li>Aplicamos protocolos específicos de limpieza de habitaciones, así como los productos y maquinaria de última generación.</li>\n 	<li>Designamos un supervisor externo que controla de forma permanente el servicio ofrecido, y permanece a la disposición de nuestro cliente para solucionar cualquier necesidad.</li>\n</ul>\n[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_single_image image=\"114\" img_size=\"large\" onclick=\"link_image\" css_animation=\"fadeInDown\"][/vc_column][/vc_row]', 'El servicio de limpieza', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-05-17 15:27:07', '2017-05-17 15:27:07', '', 110, 'http://127.0.0.1/dominique/2017/05/17/110-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2017-05-17 15:31:17', '2017-05-17 15:31:17', '', 'imgres', '', 'inherit', 'open', 'closed', '', 'imgres', '', '', '2017-05-17 15:31:17', '2017-05-17 15:31:17', '', 110, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/imgres.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2017-05-17 15:32:04', '2017-05-17 15:32:04', '[vc_row][vc_column][vc_column_text]Somos conscientes de la importancia que tiene nuestro trabajo en la sensación de bienestar que tenga el cliente y en la valoración de su estancia.\n\nPor este motivo, nuestro objetivo es la entrega de las habitaciones y apartamentos en un perfecto estado de orden, limpieza y desinfección.\n\nPara conseguir este objetivo:\n<ul>\n 	<li>Concentramos los horarios de las personas de la plantilla para conseguir una mayor presencia de horas en las franjas horarias en las cuales los clientes habitualmente dejan las habitaciones libres.</li>\n 	<li>Adaptamos y dimensionamos si es necesario la plantilla en función del nivel de ocupación. Trabajamos con previsiones de ocupación semanales que entrega la gobernanta al responsable de nuestra División HORE.</li>\n 	<li>Aplicamos protocolos específicos de limpieza de habitaciones, así como los productos y maquinaria de última generación.</li>\n 	<li>Designamos un supervisor externo que controla de forma permanente el servicio ofrecido, y permanece a la disposición de nuestro cliente para solucionar cualquier necesidad.</li>\n</ul>\n[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/2\"][vc_single_image image=\"114\" img_size=\"large\" onclick=\"link_image\" css_animation=\"fadeInDown\"][/vc_column][vc_column width=\"1/2\"][vc_single_image image=\"116\" img_size=\"large\" css_animation=\"fadeInDown\"][/vc_column][/vc_row]', 'El servicio de limpieza', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-05-17 15:32:04', '2017-05-17 15:32:04', '', 110, 'http://127.0.0.1/dominique/2017/05/17/110-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2017-05-17 15:34:28', '2017-05-17 15:34:28', '[vc_row][vc_column][vc_gallery interval=\"3\" images=\"116,114,105,102,77,75,55,51,122,123,124\" img_size=\"large\" css_animation=\"fadeInDown\"][/vc_column][/vc_row]', 'Galería del Hotel', '', 'publish', 'closed', 'closed', '', 'galeria-del-hotel', '', '', '2017-05-17 15:38:50', '2017-05-17 15:38:50', '', 0, 'http://127.0.0.1/dominique/?page_id=118', 0, 'page', '', 0),
(119, 1, '2017-05-17 15:34:28', '2017-05-17 15:34:28', '', 'Galería del Hotel', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2017-05-17 15:34:28', '2017-05-17 15:34:28', '', 118, 'http://127.0.0.1/dominique/2017/05/17/118-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2017-05-17 15:35:22', '2017-05-17 15:35:22', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2017-05-17 15:36:04', '2017-05-17 15:36:04', '', 0, 'http://127.0.0.1/dominique/?p=121', 17, 'nav_menu_item', '', 0),
(122, 1, '2017-05-17 15:36:50', '2017-05-17 15:36:50', '', 'fo (1)', '', 'inherit', 'open', 'closed', '', 'fo-1', '', '', '2017-05-17 15:36:50', '2017-05-17 15:36:50', '', 118, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/fo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2017-05-17 15:36:58', '2017-05-17 15:36:58', '', 'fo (4)', '', 'inherit', 'open', 'closed', '', 'fo-4', '', '', '2017-05-17 15:36:58', '2017-05-17 15:36:58', '', 118, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/fo-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2017-05-17 15:37:07', '2017-05-17 15:37:07', '', 'fo (3)', '', 'inherit', 'open', 'closed', '', 'fo-3', '', '', '2017-05-17 15:37:07', '2017-05-17 15:37:07', '', 118, 'http://127.0.0.1/dominique/wp-content/uploads/2017/05/fo-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2017-05-17 15:38:50', '2017-05-17 15:38:50', '[vc_row][vc_column][vc_gallery interval=\"3\" images=\"116,114,105,102,77,75,55,51,122,123,124\" img_size=\"large\" css_animation=\"fadeInDown\"][/vc_column][/vc_row]', 'Galería del Hotel', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2017-05-17 15:38:50', '2017-05-17 15:38:50', '', 118, 'http://127.0.0.1/dominique/2017/05/17/118-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_revslider_css`
--

CREATE TABLE `wp_revslider_css` (
  `id` int(9) NOT NULL,
  `handle` text NOT NULL,
  `settings` longtext,
  `hover` longtext,
  `params` longtext NOT NULL,
  `advanced` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wp_revslider_css`
--

INSERT INTO `wp_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`, `advanced`) VALUES
(1, '.tp-caption.medium_grey', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#fff\",\"font-weight\":\"700\",\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-family\":\"Arial\",\"padding\":\"2px 4px\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\",\"background-color\":\"#888\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"0px 2px 5px rgba(0, 0, 0, 0.5)\",\"white-space\":\"nowrap\"},\"hover\":\"\"}'),
(2, '.tp-caption.small_text', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#fff\",\"font-weight\":\"700\",\"font-size\":\"14px\",\"line-height\":\"20px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"0px 2px 5px rgba(0, 0, 0, 0.5)\",\"white-space\":\"nowrap\"},\"hover\":\"\"}'),
(3, '.tp-caption.medium_text', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#fff\",\"font-weight\":\"700\",\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"0px 2px 5px rgba(0, 0, 0, 0.5)\",\"white-space\":\"nowrap\"},\"hover\":\"\"}'),
(4, '.tp-caption.large_text', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#fff\",\"font-weight\":\"700\",\"font-size\":\"40px\",\"line-height\":\"40px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"0px 2px 5px rgba(0, 0, 0, 0.5)\",\"white-space\":\"nowrap\"},\"hover\":\"\"}'),
(5, '.tp-caption.very_large_text', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#fff\",\"font-weight\":\"700\",\"font-size\":\"60px\",\"line-height\":\"60px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"0px 2px 5px rgba(0, 0, 0, 0.5)\",\"white-space\":\"nowrap\",\"letter-spacing\":\"-2px\"},\"hover\":\"\"}'),
(6, '.tp-caption.very_big_white', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#fff\",\"font-weight\":\"800\",\"font-size\":\"60px\",\"line-height\":\"60px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\",\"padding\":\"0px 4px\",\"background-color\":\"#000\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"white-space\":\"nowrap\",\"padding-top\":\"1px\"},\"hover\":\"\"}'),
(7, '.tp-caption.very_big_black', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#000\",\"font-weight\":\"700\",\"font-size\":\"60px\",\"line-height\":\"60px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\",\"padding\":\"0px 4px\",\"background-color\":\"#fff\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"white-space\":\"nowrap\",\"padding-top\":\"1px\"},\"hover\":\"\"}'),
(8, '.tp-caption.modern_medium_fat', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#000\",\"font-weight\":\"800\",\"font-size\":\"24px\",\"line-height\":\"20px\",\"font-family\":\"\\\"Open Sans\\\", sans-serif\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"white-space\":\"nowrap\"},\"hover\":\"\"}'),
(9, '.tp-caption.modern_medium_fat_white', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#fff\",\"font-weight\":\"800\",\"font-size\":\"24px\",\"line-height\":\"20px\",\"font-family\":\"\\\"Open Sans\\\", sans-serif\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"white-space\":\"nowrap\"},\"hover\":\"\"}'),
(10, '.tp-caption.modern_medium_light', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#000\",\"font-weight\":\"300\",\"font-size\":\"24px\",\"line-height\":\"20px\",\"font-family\":\"\\\"Open Sans\\\", sans-serif\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"white-space\":\"nowrap\"},\"hover\":\"\"}'),
(11, '.tp-caption.modern_big_bluebg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#fff\",\"font-weight\":\"800\",\"font-size\":\"30px\",\"line-height\":\"36px\",\"font-family\":\"\\\"Open Sans\\\", sans-serif\",\"padding\":\"3px 10px\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\",\"background-color\":\"#4e5b6c\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"letter-spacing\":\"0\"},\"hover\":\"\"}'),
(12, '.tp-caption.modern_big_redbg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#fff\",\"font-weight\":\"300\",\"font-size\":\"30px\",\"line-height\":\"36px\",\"font-family\":\"\\\"Open Sans\\\", sans-serif\",\"padding\":\"3px 10px\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\",\"background-color\":\"#de543e\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"padding-top\":\"1px\",\"letter-spacing\":\"0\"},\"hover\":\"\"}'),
(13, '.tp-caption.modern_small_text_dark', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#555\",\"font-size\":\"14px\",\"line-height\":\"22px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"white-space\":\"nowrap\"},\"hover\":\"\"}'),
(14, '.tp-caption.boxshadow', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '[]', '{\"idle\":{\"-moz-box-shadow\":\"0px 0px 20px rgba(0, 0, 0, 0.5)\",\"-webkit-box-shadow\":\"0px 0px 20px rgba(0, 0, 0, 0.5)\",\"box-shadow\":\"0px 0px 20px rgba(0, 0, 0, 0.5)\"},\"hover\":\"\"}'),
(15, '.tp-caption.black', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#000\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}'),
(16, '.tp-caption.noshadow', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '[]', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}'),
(17, '.tp-caption.thinheadline_dark', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"rgba(0,0,0,0.85)\",\"font-weight\":\"300\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-family\":\"\\\"Open Sans\\\"\",\"background-color\":\"transparent\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\"},\"hover\":\"\"}'),
(18, '.tp-caption.thintext_dark', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"rgba(0,0,0,0.85)\",\"font-weight\":\"300\",\"font-size\":\"16px\",\"line-height\":\"26px\",\"font-family\":\"\\\"Open Sans\\\"\",\"background-color\":\"transparent\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\"},\"hover\":\"\"}'),
(19, '.tp-caption.largeblackbg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#fff\",\"font-weight\":\"300\",\"font-size\":\"50px\",\"line-height\":\"70px\",\"font-family\":\"\\\"Open Sans\\\"\",\"background-color\":\"#000\",\"padding\":\"0px 20px\",\"border-radius\":\"0px\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"-webkit-border-radius\":\"0px\",\"-moz-border-radius\":\"0px\"},\"hover\":\"\"}'),
(20, '.tp-caption.largepinkbg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#fff\",\"font-weight\":\"300\",\"font-size\":\"50px\",\"line-height\":\"70px\",\"font-family\":\"\\\"Open Sans\\\"\",\"background-color\":\"#db4360\",\"padding\":\"0px 20px\",\"border-radius\":\"0px\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"-webkit-border-radius\":\"0px\",\"-moz-border-radius\":\"0px\"},\"hover\":\"\"}'),
(21, '.tp-caption.largewhitebg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#000\",\"font-weight\":\"300\",\"font-size\":\"50px\",\"line-height\":\"70px\",\"font-family\":\"\\\"Open Sans\\\"\",\"background-color\":\"#fff\",\"padding\":\"0px 20px\",\"border-radius\":\"0px\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"-webkit-border-radius\":\"0px\",\"-moz-border-radius\":\"0px\"},\"hover\":\"\"}'),
(22, '.tp-caption.largegreenbg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"color\":\"#fff\",\"font-weight\":\"300\",\"font-size\":\"50px\",\"line-height\":\"70px\",\"font-family\":\"\\\"Open Sans\\\"\",\"background-color\":\"#67ae73\",\"padding\":\"0px 20px\",\"border-radius\":\"0px\"}', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"-webkit-border-radius\":\"0px\",\"-moz-border-radius\":\"0px\"},\"hover\":\"\"}'),
(23, '.tp-caption.excerpt', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"36px\",\"line-height\":\"36px\",\"font-weight\":\"700\",\"font-family\":\"Arial\",\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"rgba(0, 0, 0, 1)\",\"margin\":\"0px\",\"padding\":\"1px 4px 0px 4px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 255, 255)\",\"border-style\":\"none\"}', '{\"idle\":{\"text-shadow\":\"none\",\"letter-spacing\":\"-1.5px\",\"width\":\"150px\",\"white-space\":\"normal !important\",\"height\":\"auto\"},\"hover\":\"\"}'),
(24, '.tp-caption.large_bold_grey', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"60px\",\"line-height\":\"60px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(102, 102, 102)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"margin\":\"0px\",\"padding\":\"1px 4px 0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}'),
(25, '.tp-caption.medium_thin_grey', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"34px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(102, 102, 102)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"1px 4px 0px\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}'),
(26, '.tp-caption.small_thin_grey', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"18px\",\"line-height\":\"26px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(117, 117, 117)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"1px 4px 0px\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}'),
(27, '.tp-caption.lightgrey_divider', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"text-decoration\":\"none\",\"background-color\":\"rgba(235, 235, 235, 1)\",\"border-width\":\"0px\",\"border-color\":\"rgb(34, 34, 34)\",\"border-style\":\"none\"}', '{\"idle\":{\"width\":\"370px\",\"height\":\"3px\",\"background-position\":\"initial initial\",\"background-repeat\":\"initial initial\"},\"hover\":\"\"}'),
(28, '.tp-caption.large_bold_darkblue', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"58px\",\"line-height\":\"60px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(52, 73, 94)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(29, '.tp-caption.medium_bg_darkblue', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"rgb(52, 73, 94)\",\"padding\":\"10px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(30, '.tp-caption.medium_bold_red', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"24px\",\"line-height\":\"30px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(227, 58, 12)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(31, '.tp-caption.medium_light_red', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"21px\",\"line-height\":\"26px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(227, 58, 12)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(32, '.tp-caption.medium_bg_red', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"rgb(227, 58, 12)\",\"padding\":\"10px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(33, '.tp-caption.medium_bold_orange', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"24px\",\"line-height\":\"30px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(243, 156, 18)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(34, '.tp-caption.medium_bg_orange', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"rgb(243, 156, 18)\",\"padding\":\"10px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(35, '.tp-caption.grassfloor', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"text-decoration\":\"none\",\"background-color\":\"rgba(160, 179, 151, 1)\",\"border-width\":\"0px\",\"border-color\":\"rgb(34, 34, 34)\",\"border-style\":\"none\"}', '{\"idle\":{\"width\":\"4000px\",\"height\":\"150px\"},\"hover\":\"\"}'),
(36, '.tp-caption.large_bold_white', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"58px\",\"line-height\":\"60px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(37, '.tp-caption.medium_light_white', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"30px\",\"line-height\":\"36px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(38, '.tp-caption.mediumlarge_light_white', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"34px\",\"line-height\":\"40px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(39, '.tp-caption.mediumlarge_light_white_center', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"34px\",\"line-height\":\"40px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px 0px 0px 0px\",\"text-align\":\"center\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(40, '.tp-caption.medium_bg_asbestos', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"rgb(127, 140, 141)\",\"padding\":\"10px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(41, '.tp-caption.medium_light_black', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"30px\",\"line-height\":\"36px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(0, 0, 0)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(42, '.tp-caption.large_bold_black', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"58px\",\"line-height\":\"60px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(0, 0, 0)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(43, '.tp-caption.mediumlarge_light_darkblue', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"34px\",\"line-height\":\"40px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(52, 73, 94)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(44, '.tp-caption.small_light_white', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"17px\",\"line-height\":\"28px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(45, '.tp-caption.roundedimage', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"border-width\":\"0px\",\"border-color\":\"rgb(34, 34, 34)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(46, '.tp-caption.large_bg_black', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"40px\",\"line-height\":\"40px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"rgb(0, 0, 0)\",\"padding\":\"10px 20px 15px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}', '{\"idle\":[],\"hover\":\"\"}'),
(47, '.tp-caption.mediumwhitebg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(0, 0, 0)\",\"text-decoration\":\"none\",\"background-color\":\"rgb(255, 255, 255)\",\"padding\":\"5px 15px 10px\",\"border-width\":\"0px\",\"border-color\":\"rgb(0, 0, 0)\",\"border-style\":\"none\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}'),
(48, '.tp-caption.MarkerDisplay', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ff0000\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\"}', '{\"font-style\":\"normal\",\"font-family\":\"Permanent Marker\",\"padding\":\"0px 0px 0px 0px\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"#000000\",\"border-style\":\"none\",\"border-width\":\"0px\",\"border-radius\":\"0px 0px 0px 0px\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}'),
(49, '.tp-caption.Restaurant-Display', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\"}', '{\"color\":\"#ffffff\",\"font-size\":\"120px\",\"line-height\":\"120px\",\"font-weight\":\"700\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(50, '.tp-caption.Restaurant-Cursive', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\"}', '{\"color\":\"#ffffff\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Nothing you could do\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(51, '.tp-caption.Restaurant-ScrollDownText', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\"}', '{\"color\":\"#ffffff\",\"font-size\":\"17px\",\"line-height\":\"17px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(52, '.tp-caption.Restaurant-Description', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\"}', '{\"color\":\"#ffffff\",\"font-size\":\"20px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}'),
(53, '.tp-caption.Restaurant-Price', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\"}', '{\"color\":\"#ffffff\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}'),
(54, '.tp-caption.Restaurant-Menuitem', '{\"hover\":\"false\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"500\",\"easing\":\"Power2.easeInOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"17px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"10px\",\"30px\",\"10px\",\"30px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(55, '.tp-caption.Furniture-LogoText', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#e6cfa3\",\"color-transparency\":\"1\",\"font-size\":\"160px\",\"line-height\":\"150px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}'),
(56, '.tp-caption.Furniture-Plus', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0.5\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#e6cfa3\",\"color-transparency\":\"1\",\"font-size\":\"20\",\"line-height\":\"20px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":[\"6px\",\"7px\",\"4px\",\"7px\"],\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"text-shadow\":\"none\",\"box-shadow\":\"rgba(0,0,0,0.1) 0 1px 3px\"},\"hover\":\"\"}'),
(57, '.tp-caption.Furniture-Title', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"700\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"text-shadow\":\"none\",\"letter-spacing\":\"3px\"},\"hover\":\"\"}'),
(58, '.tp-caption.Furniture-Subtitle', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"20px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}'),
(59, '.tp-caption.Gym-Display', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"80px\",\"line-height\":\"70px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(60, '.tp-caption.Gym-Subline', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"100\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"5px\"},\"hover\":\"\"}'),
(61, '.tp-caption.Gym-SmallText', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"22\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}'),
(62, '.tp-caption.Fashion-SmallText', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"12px\",\"line-height\":\"20px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(63, '.tp-caption.Fashion-BigDisplay', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"font-size\":\"60px\",\"line-height\":\"60px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(64, '.tp-caption.Fashion-TextBlock', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"font-size\":\"20px\",\"line-height\":\"40px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(65, '.tp-caption.Sports-Display', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"130px\",\"line-height\":\"130px\",\"font-weight\":\"100\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":\"0 0 0 0\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":\"0 0 0 0\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"13px\"},\"hover\":\"\"}'),
(66, '.tp-caption.Sports-DisplayFat', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"130px\",\"line-height\":\"130px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":\"0 0 0 0\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":\"0 0 0 0\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":[\"\"],\"hover\":\"\"}'),
(67, '.tp-caption.Sports-Subline', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"font-size\":\"32px\",\"line-height\":\"32px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":\"0 0 0 0\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":\"0 0 0 0\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"4px\"},\"hover\":\"\"}'),
(68, '.tp-caption.Instagram-Caption', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(69, '.tp-caption.News-Title', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"70px\",\"line-height\":\"60px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Roboto Slab\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":\"\",\"hover\":\"\"}');
INSERT INTO `wp_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`, `advanced`) VALUES
(70, '.tp-caption.News-Subtitle', '{\"hover\":\"true\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"0.65\",\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"0px\",\"border-radius\":[\"0\",\"0\",\"0px\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"300\",\"easing\":\"Power3.easeInOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"24px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Roboto Slab\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(71, '.tp-caption.Photography-Display', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"80px\",\"line-height\":\"70px\",\"font-weight\":\"100\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"5px\"},\"hover\":\"\"}'),
(72, '.tp-caption.Photography-Subline', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#777777\",\"color-transparency\":\"1\",\"font-size\":\"20px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}'),
(73, '.tp-caption.Photography-ImageHover', '{\"hover\":\"true\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"0.5\",\"scalex\":\"0.8\",\"scaley\":\"0.8\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"1000\",\"easing\":\"Power3.easeInOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"20\",\"line-height\":\"22\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0\",\"border-style\":\"none\",\"border-width\":\"0px\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(74, '.tp-caption.Photography-Menuitem', '{\"hover\":\"true\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#00ffde\",\"background-transparency\":\"0.65\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"200\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"3px\",\"5px\",\"3px\",\"8px\"],\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0.65\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(75, '.tp-caption.Photography-Textblock', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(76, '.tp-caption.Photography-Subline-2', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"0.35\",\"font-size\":\"20px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}'),
(77, '.tp-caption.Photography-ImageHover2', '{\"hover\":\"true\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"0.5\",\"scalex\":\"0.8\",\"scaley\":\"0.8\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"500\",\"easing\":\"Back.easeOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"20\",\"line-height\":\"22\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Arial\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0\",\"border-style\":\"none\",\"border-width\":\"0px\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(78, '.tp-caption.WebProduct-Title', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#333333\",\"color-transparency\":\"1\",\"font-size\":\"90px\",\"line-height\":\"90px\",\"font-weight\":\"100\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(79, '.tp-caption.WebProduct-SubTitle', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#999999\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"20px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(80, '.tp-caption.WebProduct-Content', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#999999\",\"color-transparency\":\"1\",\"font-size\":\"16px\",\"line-height\":\"24px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(81, '.tp-caption.WebProduct-Menuitem', '{\"hover\":\"true\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#999999\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"200\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"20px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"3px\",\"5px\",\"3px\",\"8px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#333333\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(82, '.tp-caption.WebProduct-Title-Light', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"font-size\":\"90px\",\"line-height\":\"90px\",\"font-weight\":\"100\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(83, '.tp-caption.WebProduct-SubTitle-Light', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"0.35\",\"font-size\":\"15px\",\"line-height\":\"20px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(84, '.tp-caption.WebProduct-Content-Light', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"0.65\",\"font-size\":\"16px\",\"line-height\":\"24px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(85, '.tp-caption.FatRounded', '{\"hover\":\"true\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"#d3d3d3\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0px\",\"border-radius\":[\"50px\",\"50px\",\"50px\",\"50px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"20px\",\"22px\",\"20px\",\"25px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0.5\",\"border-color\":\"#d3d3d3\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0px\",\"border-radius\":[\"50px\",\"50px\",\"50px\",\"50px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}'),
(86, '.tp-caption.NotGeneric-Title', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"70px\",\"line-height\":\"70px\",\"font-weight\":\"800\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":\"10px 0px 10px 0\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":\"0 0 0 0\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":\"[object Object]\",\"hover\":\"\"}'),
(87, '.tp-caption.NotGeneric-SubTitle', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"13px\",\"line-height\":\"20px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":\"0 0 0 0\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":\"0 0 0 0\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"4px\",\"text-align\":\"left\"},\"hover\":\"\"}'),
(88, '.tp-caption.NotGeneric-CallToAction', '{\"hover\":\"true\",\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":\"0px 0px 0px 0px\",\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power3.easeOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"14px\",\"line-height\":\"14px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":\"10px 30px 10px 30px\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.5\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":\"0px 0px 0px 0px\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"3px\",\"text-align\":\"left\"},\"hover\":\"\"}'),
(89, '.tp-caption.NotGeneric-Icon', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"default\",\"speed\":\"300\",\"easing\":\"Power3.easeOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":\"0px 0px 0px 0px\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0\",\"border-style\":\"solid\",\"border-width\":\"0px\",\"border-radius\":\"0px 0px 0px 0px\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"3px\",\"text-align\":\"left\"},\"hover\":\"\"}'),
(90, '.tp-caption.NotGeneric-Menuitem', '{\"hover\":\"true\",\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":\"0px 0px 0px 0px\",\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power1.easeInOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"14px\",\"line-height\":\"14px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":\"27px 30px 27px 30px\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.15\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":\"0px 0px 0px 0px\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"3px\",\"text-align\":\"left\"},\"hover\":\"\"}'),
(91, '.tp-caption.MarkerStyle', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"30px\",\"font-weight\":\"100\",\"font-style\":\"normal\",\"font-family\":\"\\\"Permanent Marker\\\"\",\"padding\":\"0 0 0 0\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":\"0 0 0 0\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"text-align\":\"left\",\"0\":\"\"},\"hover\":\"\"}'),
(92, '.tp-caption.Gym-Menuitem', '{\"hover\":\"true\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.25\",\"border-style\":\"solid\",\"border-width\":\"2px\",\"border-radius\":[\"3px\",\"3px\",\"3px\",\"3px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"200\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"3px\",\"5px\",\"3px\",\"8px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0\",\"border-style\":\"solid\",\"border-width\":\"2px\",\"border-radius\":[\"3px\",\"3px\",\"3px\",\"3px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(93, '.tp-caption.Newspaper-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#FFFFFF\",\"background-transparency\":\"1\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power1.easeInOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"13px\",\"line-height\":\"17px\",\"font-weight\":\"700\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"12px\",\"35px\",\"12px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#ffffff\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.25\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(94, '.tp-caption.Newspaper-Subtitle', '{\"hover\":\"false\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#a8d8ee\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"20px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(95, '.tp-caption.Newspaper-Title', '{\"hover\":\"false\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"font-size\":\"50px\",\"line-height\":\"55px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"\\\"Roboto Slab\\\"\",\"padding\":[\"0\",\"0\",\"10px\",\"0\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(96, '.tp-caption.Newspaper-Title-Centered', '{\"hover\":\"false\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"font-size\":\"50px\",\"line-height\":\"55px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"\\\"Roboto Slab\\\"\",\"padding\":[\"0\",\"0\",\"10px\",\"0\"],\"text-decoration\":\"none\",\"text-align\":\"center\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(97, '.tp-caption.Hero-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"1\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power1.easeInOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"14px\",\"line-height\":\"14px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"10px\",\"30px\",\"10px\",\"30px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.5\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}'),
(98, '.tp-caption.Video-Title', '{\"hover\":\"false\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"5px\",\"5px\",\"5px\",\"5px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"-20%\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(99, '.tp-caption.Video-SubTitle', '{\"hover\":\"false\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"12px\",\"line-height\":\"12px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"5px\",\"5px\",\"5px\",\"5px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0.35\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"-20%\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(100, '.tp-caption.NotGeneric-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power1.easeInOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"14px\",\"line-height\":\"14px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"10px\",\"30px\",\"10px\",\"30px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.5\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"3px\",\"text-align\":\"left\"},\"hover\":\"\"}'),
(101, '.tp-caption.NotGeneric-BigButton', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power1.easeInOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"14px\",\"line-height\":\"14px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"27px\",\"30px\",\"27px\",\"30px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.15\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}'),
(102, '.tp-caption.WebProduct-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#333333\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"1\",\"border-color\":\"#000000\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"2\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"300\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"16px\",\"line-height\":\"48px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0px\",\"40px\",\"0px\",\"40px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#333333\",\"background-transparency\":\"1\",\"border-color\":\"#000000\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"2\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"1px\"},\"hover\":\"\"}'),
(103, '.tp-caption.Restaurant-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffe081\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"300\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"17px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"12px\",\"35px\",\"12px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#0a0a0a\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.5\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}');
INSERT INTO `wp_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`, `advanced`) VALUES
(104, '.tp-caption.Gym-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#72a800\",\"background-transparency\":\"1\",\"border-color\":\"#000000\",\"border-transparency\":\"0\",\"border-style\":\"solid\",\"border-width\":\"0\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power1.easeInOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"15px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"13px\",\"35px\",\"13px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#8bc027\",\"background-transparency\":\"1\",\"border-color\":\"#000000\",\"border-transparency\":\"0\",\"border-style\":\"solid\",\"border-width\":\"0\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"1px\"},\"hover\":\"\"}'),
(105, '.tp-caption.Gym-Button-Light', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#72a800\",\"background-transparency\":\"0\",\"border-color\":\"#8bc027\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"2px\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power2.easeInOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"15px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"12px\",\"35px\",\"12px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.25\",\"border-style\":\"solid\",\"border-width\":\"2px\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":\"\",\"hover\":\"\"}'),
(106, '.tp-caption.Sports-Button-Light', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"500\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"17px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"12px\",\"35px\",\"12px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.5\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(107, '.tp-caption.Sports-Button-Red', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"#000000\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"500\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"17px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"12px\",\"35px\",\"12px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#db1c22\",\"background-transparency\":\"1\",\"border-color\":\"#db1c22\",\"border-transparency\":\"0\",\"border-style\":\"solid\",\"border-width\":\"2px\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}'),
(108, '.tp-caption.Photography-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"auto\",\"speed\":\"300\",\"easing\":\"Power3.easeOut\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"15px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"13px\",\"35px\",\"13px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.25\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":{\"letter-spacing\":\"1px\"},\"hover\":\"\"}'),
(109, '.tp-caption.Newspaper-Button-2', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"3px\",\"3px\",\"3px\",\"3px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Linear.easeNone\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"15px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"10px\",\"30px\",\"10px\",\"30px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.5\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"3px\",\"3px\",\"3px\",\"3px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}', '{\"idle\":\"\",\"hover\":\"\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_revslider_layer_animations`
--

CREATE TABLE `wp_revslider_layer_animations` (
  `id` int(9) NOT NULL,
  `handle` text NOT NULL,
  `params` text NOT NULL,
  `settings` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_revslider_navigations`
--

CREATE TABLE `wp_revslider_navigations` (
  `id` int(9) NOT NULL,
  `name` varchar(191) NOT NULL,
  `handle` varchar(191) NOT NULL,
  `css` longtext NOT NULL,
  `markup` longtext NOT NULL,
  `settings` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_revslider_sliders`
--

CREATE TABLE `wp_revslider_sliders` (
  `id` int(9) NOT NULL,
  `title` tinytext NOT NULL,
  `alias` tinytext,
  `params` longtext NOT NULL,
  `settings` text,
  `type` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_revslider_slides`
--

CREATE TABLE `wp_revslider_slides` (
  `id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` longtext NOT NULL,
  `layers` longtext NOT NULL,
  `settings` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_revslider_static_slides`
--

CREATE TABLE `wp_revslider_static_slides` (
  `id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `params` longtext NOT NULL,
  `layers` longtext NOT NULL,
  `settings` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'nosotros', 'nosotros', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(20, 1, 0),
(34, 1, 0),
(38, 1, 0),
(41, 2, 0),
(42, 2, 0),
(43, 2, 0),
(44, 2, 0),
(50, 1, 0),
(60, 2, 0),
(61, 2, 0),
(62, 2, 0),
(63, 2, 0),
(72, 2, 0),
(73, 2, 0),
(74, 2, 0),
(88, 2, 0),
(89, 2, 0),
(90, 2, 0),
(98, 2, 0),
(112, 2, 0),
(121, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'vc_pointers_backend_editor,vc_pointers_frontend_editor'),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:2:{s:64:\"dc17613a9617f372ca1fb3c760e91a820bd7df0c10c4d9a9096b1198491ea272\";a:4:{s:10:\"expiration\";i:1495634983;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\";s:5:\"login\";i:1494425383;}s:64:\"d1f65543921a80ca5b7c6b2cccbc817919830a1157d0b6fa10b1facda6aa76db\";a:4:{s:10:\"expiration\";i:1495635056;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\";s:5:\"login\";i:1494425456;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=236px&edit_element_vcUIPanelTop=30px&editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1495032497'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:7:{i:0;s:19:\"wpb_visual_composer\";i:1;s:12:\"revisionsdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BmvyOxPCzvTa1Projks3ZaZ6t2DVsO0', 'admin', 'doromar_2000@hotmail.com', '', '2017-05-10 14:09:34', '', 0, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_revslider_css`
--
ALTER TABLE `wp_revslider_css`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `wp_revslider_layer_animations`
--
ALTER TABLE `wp_revslider_layer_animations`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `wp_revslider_navigations`
--
ALTER TABLE `wp_revslider_navigations`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `wp_revslider_sliders`
--
ALTER TABLE `wp_revslider_sliders`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `wp_revslider_slides`
--
ALTER TABLE `wp_revslider_slides`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `wp_revslider_static_slides`
--
ALTER TABLE `wp_revslider_static_slides`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;
--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;
--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT de la tabla `wp_revslider_css`
--
ALTER TABLE `wp_revslider_css`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT de la tabla `wp_revslider_layer_animations`
--
ALTER TABLE `wp_revslider_layer_animations`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_revslider_navigations`
--
ALTER TABLE `wp_revslider_navigations`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_revslider_sliders`
--
ALTER TABLE `wp_revslider_sliders`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_revslider_slides`
--
ALTER TABLE `wp_revslider_slides`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_revslider_static_slides`
--
ALTER TABLE `wp_revslider_static_slides`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
