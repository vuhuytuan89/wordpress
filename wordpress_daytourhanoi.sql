-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 10 Mai 2015 à 18:52
-- Version du serveur :  5.6.16
-- Version de PHP :  5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `wordpress_daytourhanoi`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-05-04 08:15:11', '2015-05-04 08:15:11', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=295 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress/daytourhanoi', 'yes'),
(2, 'home', 'http://localhost/wordpress/daytourhanoi', 'yes'),
(3, 'blogname', 'test', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vuhuytuan89@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:14:"types/wpcf.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:2:{i:0;s:77:"D:\\xampp\\htdocs\\wordpress\\daytourhanoi/wp-content/themes/html5blank/style.css";i:1;s:0:"";}', 'no'),
(41, 'template', 'html5blank', 'yes'),
(42, 'stylesheet', 'html5blank', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31533', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31533', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:13:"widget-area-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"widget-area-2";N;s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:5:{i:1431285660;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1431288912;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1431332135;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1431332512;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(116, 'can_compress_scripts', '1', 'yes'),
(99, '_transient_random_seed', 'f1592a900b83651644784ddece532ba8', 'yes'),
(100, 'nonce_key', '[e1-bLvoNvJgfFHzzkP7mfh[ en!LtgBzlG(n}2O&pIl42=YP:U93)sR{>|)}B%F', 'yes'),
(101, 'nonce_salt', 'Xo0&YI{dJX=[C+SFx)O.8#/z C)Ii> [|lm<?4aae:VoDln#`o3,dU)]`LXk^1)$', 'yes'),
(104, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.2.2-partial-1.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:5:"4.2.1";}i:1;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.2.2-partial-1.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.2-rollback-1.zip";}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:5:"4.2.1";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1431274371;s:15:"version_checked";s:5:"4.2.1";s:12:"translations";a:0:{}}', 'yes'),
(106, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1431274379;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.1.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:14:"types/wpcf.php";O:8:"stdClass":6:{s:2:"id";s:5:"24557";s:4:"slug";s:5:"types";s:6:"plugin";s:14:"types/wpcf.php";s:11:"new_version";s:7:"1.6.6.3";s:3:"url";s:36:"https://wordpress.org/plugins/types/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/types.1.6.6.3.zip";}}}', 'yes'),
(107, 'auth_key', '>7I:k O+udRfqL+7YWGzGO,Y`5DmU0Kx7OGN&cS69AZIDa]N pvP:a9}}S2i-w!)', 'yes'),
(108, 'auth_salt', 'CM27u+3A$6|WtPa;q?D(oo<rz,/oyY_jr,V).{g+U/ptZzf;xn@Li<BBHl-SmR&&', 'yes'),
(109, 'logged_in_key', 'm`re-D8Ef+wL)s VJ?/ri$<N}-qYx[CbnBslXqUcsS2G!`.+@]d1!n@JnaXOD@dL', 'yes'),
(110, 'logged_in_salt', '>bIdbX9P;F2SG/.OOUoQTI8NTf-4C<[l3XB_^g;Eok*)Zf}`fmXO9k$(Tni^y{<0', 'yes'),
(291, '_site_transient_timeout_theme_roots', '1431276173', 'yes'),
(292, '_site_transient_theme_roots', 'a:5:{s:10:"html5blank";s:7:"/themes";s:20:"twentyfifteen - Copy";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(114, '_site_transient_timeout_browser_38d0eca4a75244b768d8abd77a23e9d4', '1431332123', 'yes'),
(115, '_site_transient_browser_38d0eca4a75244b768d8abd77a23e9d4', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"42.0.2311.90";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(188, '_wpcf_promo_tabs', 'a:2:{s:8:"selected";i:2;s:4:"time";i:1431221897;}', 'yes'),
(192, 'theme_mods_html5blank', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:19;}}', 'yes'),
(195, '_site_transient_timeout_available_translations', '1431029335', 'yes'),
(196, '_site_transient_available_translations', 'a:55:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 23:59:50";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-05-02 03:57:09";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-25 18:55:51";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-27 03:15:54";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-05-02 22:25:58";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-05-02 07:47:28";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-24 16:03:38";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-25 13:39:01";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-28 16:15:15";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-24 12:47:01";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-29 17:08:38";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.5/haz.zip";s:3:"iso";a:1:{i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-26 14:13:46";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 21:33:36";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-30 11:54:24";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-05-02 10:34:18";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-30 06:14:18";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 22:23:52";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.5/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-27 20:16:30";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-28 10:26:32";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-05-01 13:58:25";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.5/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-27 14:23:25";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-27 09:25:14";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-05-01 09:18:04";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.5/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-30 20:40:26";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 16:55:54";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-29 07:03:07";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-28 16:44:31";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-29 06:37:03";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.2.1";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(197, 'WPLANG', '', 'yes'),
(204, '_site_transient_timeout_browser_b3351e60727fac759005fcf66f9d42ce', '1431707332', 'yes'),
(205, '_site_transient_browser_b3351e60727fac759005fcf66f9d42ce', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"42.0.2311.135";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(258, '_transient_timeout_plugin_slugs', '1431305455', 'no'),
(259, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:14:"types/wpcf.php";}', 'no'),
(143, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1430738562', 'yes'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(135, 'current_theme', 'TourHanoi', 'yes'),
(136, 'theme_mods_twentyfourteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430727358;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;}}}', 'yes'),
(137, 'theme_switched', '', 'yes'),
(139, '_transient_twentyfourteen_category_count', '1', 'yes'),
(140, 'theme_mods_twentythirteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430727366;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;}}}', 'yes'),
(144, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5152";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3225";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3156";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2683";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2467";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1979";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1858";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1818";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1763";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1743";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1705";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1699";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1589";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1395";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1345";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1271";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1199";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1147";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1129";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"993";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"965";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"917";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"884";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"877";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"855";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"839";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"798";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"774";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"747";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"728";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"721";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"715";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"684";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"676";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"672";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"662";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"638";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"628";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"627";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"627";}}', 'yes'),
(155, 'WPCF_VERSION', '1.6.6.3', 'no'),
(156, 'wpcf-version', '1.6.6.3', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(157, 'wp_installer_settings', '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', 'yes'),
(158, 'wpcf-messages', 'a:1:{i:1;a:0:{}}', 'yes'),
(159, 'wpcf-custom-types', 'a:1:{s:9:"list-tour";a:22:{s:18:"_toolset_edit_last";i:1431221510;s:14:"wpcf-post-type";s:9:"list-tour";s:6:"labels";a:12:{s:4:"name";s:5:"Tours";s:13:"singular_name";s:4:"Tour";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:10:"Add New %s";s:9:"edit_item";s:7:"Edit %s";s:8:"new_item";s:6:"New %s";s:9:"view_item";s:7:"View %s";s:12:"search_items";s:9:"Search %s";s:9:"not_found";s:11:"No %s found";s:18:"not_found_in_trash";s:20:"No %s found in Trash";s:17:"parent_item_colon";s:11:"Parent text";s:9:"all_items";s:9:"All items";}s:4:"slug";s:9:"list-tour";s:11:"description";s:29:"Post type đăng sản phẩm";s:4:"icon";s:10:"admin-post";s:6:"public";s:6:"public";s:13:"menu_position";s:0:"";s:9:"menu_icon";s:0:"";s:10:"taxonomies";a:1:{s:8:"muc-tour";i:1;}s:8:"supports";a:6:{s:5:"title";s:1:"1";s:6:"editor";s:1:"1";s:8:"comments";s:1:"1";s:10:"trackbacks";s:1:"1";s:9:"thumbnail";s:1:"1";s:13:"custom-fields";s:1:"1";}s:7:"rewrite";a:6:{s:7:"enabled";s:1:"1";s:6:"custom";s:6:"normal";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:5:"feeds";s:1:"1";s:5:"pages";s:1:"1";}s:11:"has_archive";s:1:"1";s:12:"show_in_menu";s:1:"1";s:17:"show_in_menu_page";s:0:"";s:7:"show_ui";s:1:"1";s:18:"publicly_queryable";s:1:"1";s:10:"can_export";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:16:"permalink_epmask";s:12:"EP_PERMALINK";}}', 'yes'),
(161, 'wpcf_post_relationship', 'a:0:{}', 'yes'),
(163, 'wpcf-custom-taxonomies', 'a:1:{s:8:"muc-tour";a:17:{s:8:"wpcf-tax";s:8:"muc-tour";s:6:"labels";a:15:{s:4:"name";s:16:"Tours Categories";s:13:"singular_name";s:13:"Tour Category";s:12:"search_items";s:9:"Search %s";s:13:"popular_items";s:10:"Popular %s";s:9:"all_items";s:6:"All %s";s:11:"parent_item";s:9:"Parent %s";s:17:"parent_item_colon";s:10:"Parent %s:";s:9:"edit_item";s:7:"Edit %s";s:11:"update_item";s:9:"Update %s";s:12:"add_new_item";s:10:"Add New %s";s:13:"new_item_name";s:11:"New %s Name";s:26:"separate_items_with_commas";s:23:"Separate %s with commas";s:19:"add_or_remove_items";s:16:"Add or remove %s";s:21:"choose_from_most_used";s:28:"Choose from the most used %s";s:9:"menu_name";s:2:"%s";}s:4:"slug";s:8:"muc-tour";s:11:"description";s:15:"Danh mục tour";s:6:"public";s:6:"public";s:8:"supports";a:1:{s:9:"list-tour";s:1:"1";}s:12:"hierarchical";s:12:"hierarchical";s:7:"rewrite";a:4:{s:7:"enabled";s:1:"1";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:12:"hierarchical";s:1:"1";}s:7:"show_ui";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:13:"show_tagcloud";s:1:"1";s:17:"show_admin_column";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:21:"update_count_callback";s:0:"";s:11:"meta_box_cb";a:1:{s:8:"callback";s:0:"";}s:18:"_toolset_edit_last";i:1431223436;}}', 'yes'),
(171, 'category_children', 'a:0:{}', 'yes'),
(174, 'muc-san-pham_children', 'a:0:{}', 'yes'),
(187, 'wpcf-fields', 'a:7:{s:7:"noidung";a:8:{s:2:"id";s:7:"noidung";s:4:"slug";s:7:"noidung";s:4:"type";s:7:"wysiwyg";s:4:"name";s:7:"noidung";s:11:"description";s:0:"";s:4:"data";a:3:{s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;s:20:"removed_from_history";i:1;}s:8:"meta_key";s:12:"wpcf-noidung";s:9:"meta_type";s:8:"postmeta";}s:7:"hinhanh";a:8:{s:2:"id";s:7:"hinhanh";s:4:"slug";s:7:"hinhanh";s:4:"type";s:5:"image";s:4:"name";s:7:"hinhanh";s:11:"description";s:0:"";s:4:"data";a:5:{s:11:"placeholder";s:0:"";s:10:"repetitive";s:1:"0";s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;s:20:"removed_from_history";i:1;}s:8:"meta_key";s:12:"wpcf-hinhanh";s:9:"meta_type";s:8:"postmeta";}s:5:"price";a:8:{s:2:"id";s:5:"price";s:4:"slug";s:5:"price";s:4:"type";s:7:"wysiwyg";s:4:"name";s:5:"price";s:11:"description";s:0:"";s:4:"data";a:2:{s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:10:"wpcf-price";s:9:"meta_type";s:8:"postmeta";}s:7:"tom-tat";a:8:{s:2:"id";s:7:"tom-tat";s:4:"slug";s:7:"tom-tat";s:4:"type";s:8:"textarea";s:4:"name";s:10:"Tóm tắt";s:11:"description";s:0:"";s:4:"data";a:4:{s:11:"placeholder";s:0:"";s:10:"repetitive";s:1:"0";s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:12:"wpcf-tom-tat";s:9:"meta_type";s:8:"postmeta";}s:8:"aaaaaaaa";a:8:{s:2:"id";s:8:"aaaaaaaa";s:4:"slug";s:8:"aaaaaaaa";s:4:"type";s:9:"textfield";s:4:"name";s:8:"aaaaaaaa";s:11:"description";s:0:"";s:4:"data";a:5:{s:11:"placeholder";s:0:"";s:10:"repetitive";s:1:"0";s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;s:20:"removed_from_history";i:1;}s:8:"meta_key";s:13:"wpcf-aaaaaaaa";s:9:"meta_type";s:8:"postmeta";}s:7:"mutiple";a:8:{s:2:"id";s:7:"mutiple";s:4:"slug";s:7:"mutiple";s:4:"type";s:8:"textarea";s:4:"name";s:7:"Mutiple";s:11:"description";s:0:"";s:4:"data";a:6:{s:11:"placeholder";s:0:"";s:10:"repetitive";s:1:"0";s:6:"is_new";s:1:"1";s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;s:20:"removed_from_history";i:1;}s:8:"meta_key";s:12:"wpcf-mutiple";s:9:"meta_type";s:8:"postmeta";}s:10:"price-from";a:8:{s:2:"id";s:10:"price-from";s:4:"slug";s:10:"price-from";s:4:"type";s:9:"textfield";s:4:"name";s:10:"Price From";s:11:"description";s:0:"";s:4:"data";a:5:{s:11:"placeholder";s:0:"";s:10:"repetitive";s:1:"0";s:6:"is_new";s:1:"1";s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:15:"wpcf-price-from";s:9:"meta_type";s:8:"postmeta";}}', 'yes'),
(281, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1431222747;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(237, 'muc-tour_children', 'a:2:{i:2;a:5:{i:0;i:9;i:1;i:10;i:2;i:11;i:3;i:12;i:4;i:13;}i:4;a:5:{i:0;i:14;i:1;i:15;i:2;i:16;i:3;i:17;i:4;i:18;}}', 'yes'),
(238, '_transient_twentyfifteen_categories', '1', 'yes'),
(279, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(280, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(286, 'rewrite_rules', 'a:137:{s:12:"list-tour/?$";s:29:"index.php?post_type=list-tour";s:42:"list-tour/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=list-tour&feed=$matches[1]";s:37:"list-tour/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=list-tour&feed=$matches[1]";s:29:"list-tour/page/([0-9]{1,})/?$";s:47:"index.php?post_type=list-tour&paged=$matches[1]";s:14:"html5-blank/?$";s:31:"index.php?post_type=html5-blank";s:44:"html5-blank/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=html5-blank&feed=$matches[1]";s:39:"html5-blank/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=html5-blank&feed=$matches[1]";s:31:"html5-blank/page/([0-9]{1,})/?$";s:49:"index.php?post_type=html5-blank&paged=$matches[1]";s:42:"wp-types-group/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"wp-types-group/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"wp-types-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wp-types-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wp-types-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"wp-types-group/([^/]+)/trackback/?$";s:41:"index.php?wp-types-group=$matches[1]&tb=1";s:43:"wp-types-group/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?wp-types-group=$matches[1]&paged=$matches[2]";s:50:"wp-types-group/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?wp-types-group=$matches[1]&cpage=$matches[2]";s:35:"wp-types-group/([^/]+)(/[0-9]+)?/?$";s:53:"index.php?wp-types-group=$matches[1]&page=$matches[2]";s:31:"wp-types-group/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"wp-types-group/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"wp-types-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wp-types-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wp-types-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"wp-types-user-group/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"wp-types-user-group/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"wp-types-user-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"wp-types-user-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"wp-types-user-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"wp-types-user-group/([^/]+)/trackback/?$";s:46:"index.php?wp-types-user-group=$matches[1]&tb=1";s:48:"wp-types-user-group/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?wp-types-user-group=$matches[1]&paged=$matches[2]";s:55:"wp-types-user-group/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?wp-types-user-group=$matches[1]&cpage=$matches[2]";s:40:"wp-types-user-group/([^/]+)(/[0-9]+)?/?$";s:58:"index.php?wp-types-user-group=$matches[1]&page=$matches[2]";s:36:"wp-types-user-group/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"wp-types-user-group/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"wp-types-user-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"wp-types-user-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"wp-types-user-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"muc-tour/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?muc-tour=$matches[1]&feed=$matches[2]";s:42:"muc-tour/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?muc-tour=$matches[1]&feed=$matches[2]";s:35:"muc-tour/(.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?muc-tour=$matches[1]&paged=$matches[2]";s:17:"muc-tour/(.+?)/?$";s:30:"index.php?muc-tour=$matches[1]";s:37:"list-tour/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"list-tour/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"list-tour/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"list-tour/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"list-tour/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"list-tour/([^/]+)/trackback/?$";s:36:"index.php?list-tour=$matches[1]&tb=1";s:50:"list-tour/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?list-tour=$matches[1]&feed=$matches[2]";s:45:"list-tour/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?list-tour=$matches[1]&feed=$matches[2]";s:38:"list-tour/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?list-tour=$matches[1]&paged=$matches[2]";s:45:"list-tour/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?list-tour=$matches[1]&cpage=$matches[2]";s:30:"list-tour/([^/]+)(/[0-9]+)?/?$";s:48:"index.php?list-tour=$matches[1]&page=$matches[2]";s:26:"list-tour/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"list-tour/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"list-tour/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"list-tour/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"list-tour/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:37:"html5-blank/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"html5-blank/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"html5-blank/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"html5-blank/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"html5-blank/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"html5-blank/(.+?)/trackback/?$";s:38:"index.php?html5-blank=$matches[1]&tb=1";s:50:"html5-blank/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?html5-blank=$matches[1]&feed=$matches[2]";s:45:"html5-blank/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?html5-blank=$matches[1]&feed=$matches[2]";s:38:"html5-blank/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?html5-blank=$matches[1]&paged=$matches[2]";s:45:"html5-blank/(.+?)/comment-page-([0-9]{1,})/?$";s:51:"index.php?html5-blank=$matches[1]&cpage=$matches[2]";s:30:"html5-blank/(.+?)(/[0-9]+)?/?$";s:50:"index.php?html5-blank=$matches[1]&page=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(263, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:19;}}', 'yes'),
(277, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(294, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1431274386;s:7:"checked";a:5:{s:10:"html5blank";s:5:"1.1.0";s:20:"twentyfifteen - Copy";s:3:"1.1";s:13:"twentyfifteen";s:5:"1.1.0";s:14:"twentyfourteen";s:3:"1.4";s:14:"twentythirteen";s:3:"1.5";}s:8:"response";a:1:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.2.zip";}}s:12:"translations";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_edit_lock', '1430727677:1'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1431018078:1'),
(5, 5, 'price', '500'),
(6, 5, 'hang-sx', 'korea'),
(7, 5, 'mau-sac', 'đen'),
(12, 14, '_wp_types_group_filters_association', 'any'),
(13, 14, '_wp_types_group_fields', ',tom-tat,price,price-from,'),
(14, 14, '_wp_types_group_post_types', ',list-tour,'),
(15, 14, '_wp_types_group_terms', 'all'),
(16, 14, '_wp_types_group_admin_styles', ''),
(17, 14, '_wp_types_group_templates', 'all'),
(18, 14, '_wpcf_conditional_display', 'a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}'),
(19, 16, '_wp_attached_file', '2015/05/asus.jpg'),
(20, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:180;s:4:"file";s:16:"2015/05/asus.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"asus-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(21, 15, '_thumbnail_id', '16'),
(22, 15, '_edit_last', '1'),
(23, 15, '_edit_lock', '1431220660:1'),
(24, 14, '_toolset_edit_last', '1431225109'),
(25, 2, '_edit_lock', '1431018460:1'),
(26, 15, 'wpcf-noidung', ''),
(28, 15, 'wpcf-price', 'Tour price\r\n\r\nJoin with group of maximum 8 pax: US$25/person.\r\nor go on private street food tour:\r\n\r\nNo of travelers	2 pax	3-5 pax	6-8 pax	9 pax up\r\nPrice in USD/person	$32	$28	$25	$22\r\nHanoi street food tour is the best choice to discovering reality ancient Hanoi Old Quarter while tasting amazing authentic Hanoi street food.\r\n\r\nThis tour could be extended with some optional activities:\r\n\r\n– Relaxing on a Cyclo (rickshaw) ride visiting further of Hanoi Old Quarter (added $4/person)\r\n\r\n– Watch a water puppet show at Thang Long puppet theater (added $6/person)\r\n\r\nTour inclusive\r\n\r\nWalking tour\r\nLocal guide\r\nFood tastings and dinner\r\nA bottle of water, coffee or beer\r\nTour exclusive\r\n\r\nFood and drinks, unless specified\r\nGratuities (recommended)'),
(27, 14, '_wp_old_slug', 'file-group-1'),
(51, 25, '_menu_item_target', ''),
(50, 25, '_menu_item_object', 'category'),
(49, 25, '_menu_item_object_id', '6'),
(48, 25, '_menu_item_menu_item_parent', '0'),
(47, 25, '_menu_item_type', 'taxonomy'),
(93, 33, 'wpcf-tom-tat', 'It''s always worthwhile to take a day trip to Hanoi’s surroundings for refreshment away from the city noise. Ninh Binh is an outstanding destination that has many attractions and stunning landscapes. First, tour the wetland Van Long by rowboat, a perfect venue for you to relax and let your mind wander amongst the diverse limestone features of Van Long nature reserve. Then make a journey to the 10th century and visit the ancient capital Hoa Lu.'),
(84, 33, '_edit_lock', '1431249027:1'),
(83, 33, '_edit_last', '1'),
(52, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 25, '_menu_item_xfn', ''),
(54, 25, '_menu_item_url', ''),
(56, 26, '_menu_item_type', 'taxonomy'),
(57, 26, '_menu_item_menu_item_parent', '0'),
(58, 26, '_menu_item_object_id', '8'),
(59, 26, '_menu_item_object', 'category'),
(60, 26, '_menu_item_target', ''),
(61, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 26, '_menu_item_xfn', ''),
(63, 26, '_menu_item_url', ''),
(65, 27, '_menu_item_type', 'taxonomy'),
(66, 27, '_menu_item_menu_item_parent', '0'),
(67, 27, '_menu_item_object_id', '7'),
(68, 27, '_menu_item_object', 'category'),
(69, 27, '_menu_item_target', ''),
(70, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 27, '_menu_item_xfn', ''),
(72, 27, '_menu_item_url', ''),
(74, 28, '_menu_item_type', 'taxonomy'),
(75, 28, '_menu_item_menu_item_parent', '0'),
(76, 28, '_menu_item_object_id', '1'),
(77, 28, '_menu_item_object', 'category'),
(78, 28, '_menu_item_target', ''),
(79, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(80, 28, '_menu_item_xfn', ''),
(81, 28, '_menu_item_url', ''),
(94, 33, 'wpcf-price', 'Seat in coach tour: N/A\r\n\r\nVan Long Natural Reserve tour in private:\r\n\r\nNo of travelers	2 pax	3-5 pax	6-8 pax	9 pax up\r\nPrice in USD/person	$70	$52	$40	$32\r\nNot fit your requirement? Feel free to contact us to plan this trip and get the best possible price based upon your travel period and specific touring needs.\r\n\r\nTour inclusive\r\n\r\nTransferring as per program, pick up and drop off at hotel\r\nEntrance fees & boat trip\r\nLunch at the restaurant\r\nEnglish speaking guide\r\nMineral water\r\nTour exclusive\r\n\r\nDrinks, personal expenses and other not mentioned above\r\nTravel insurance,\r\nTips'),
(87, 34, '_wp_attached_file', '2015/05/Van-Long-Natural-Reserve3-460x305-e1431225462774.jpg'),
(88, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:66;s:4:"file";s:60:"2015/05/Van-Long-Natural-Reserve3-460x305-e1431225462774.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Van-Long-Natural-Reserve3-460x305-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"Van-Long-Natural-Reserve3-460x305-250x166.jpg";s:5:"width";i:250;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:44:"Van-Long-Natural-Reserve3-460x305-120x80.jpg";s:5:"width";i:120;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:45:"Van-Long-Natural-Reserve3-460x305-460x200.jpg";s:5:"width";i:460;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(89, 33, '_thumbnail_id', '34'),
(92, 34, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:460;s:6:"height";i:305;s:4:"file";s:37:"Van-Long-Natural-Reserve3-460x305.jpg";}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-05-04 08:15:11', '2015-05-04 08:15:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-05-04 08:15:11', '2015-05-04 08:15:11', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2015-05-04 08:15:11', '2015-05-04 08:15:11', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-05-04 08:15:11', '2015-05-04 08:15:11', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-05-04 08:15:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-04 08:15:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2015-05-04 08:21:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-04 08:21:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2015-05-04 08:27:24', '2015-05-04 08:27:24', 'đây là bài test', 'bài test custom fieds', '', 'publish', 'open', 'open', '', 'bai-test-custom-fieds', '', '', '2015-05-04 08:39:04', '2015-05-04 08:39:04', '', 0, 'http://localhost/wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2015-05-04 08:26:11', '2015-05-04 08:26:11', '', 'Draft created on May 4, 2015 at 8:26 am', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-05-04 08:26:11', '2015-05-04 08:26:11', '', 5, 'http://localhost/wordpress/2015/05/04/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2015-05-04 08:27:24', '2015-05-04 08:27:24', 'đây là bài test', 'bài test custom fieds', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-05-04 08:27:24', '2015-05-04 08:27:24', '', 5, 'http://localhost/wordpress/2015/05/04/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2015-05-04 08:33:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-04 08:33:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=8', 0, 'post', '', 0),
(9, 1, '2015-05-04 09:20:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-04 09:20:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=san-pham&p=9', 0, 'list-tour', '', 0),
(10, 1, '2015-05-04 09:21:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-04 09:21:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=san-pham&p=10', 0, 'list-tour', '', 0),
(11, 1, '2015-05-04 09:32:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-04 09:32:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=san-pham&p=11', 0, 'list-tour', '', 0),
(12, 1, '2015-05-04 09:33:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-04 09:33:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=12', 0, 'post', '', 0),
(13, 1, '2015-05-04 09:34:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-04 09:34:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=san-pham&p=13', 0, 'list-tour', '', 0),
(14, 1, '2015-05-07 15:56:51', '2015-05-07 15:56:51', '', 'Price', '', 'publish', 'open', 'open', '', 'price', '', '', '2015-05-10 02:31:49', '2015-05-10 02:31:49', '', 0, 'http://localhost/wordpress/daytourhanoi/wp-types-group/file-group-1/', 0, 'wp-types-group', '', 0),
(15, 1, '2015-05-08 16:35:36', '2015-05-08 16:35:36', 'Tour Itinerary\r\n\r\nDuration: 3 hours, luncheon or dinner.\r\nTaste Hanoi street food & learn about Hanoi lifestyle\r\n\r\nJoin our Hanoi street food tour to:\r\n\r\nDiscover the culture of Vietnam through Hanoi local food\r\nSample local Hanoi specialties\r\nWatch twilight fall over Hoan Kiem Lake\r\nOur guide meets you at your hotel around Old Quarter Hanoi (or at our appointment if you stay far away the Old Quarter). Begin the walking food tour to breathe in the aromatic scents wafting from street hawker stalls selling everything from exotic fruit to seafood. Our guide will tell you stories about the ingredients and history of Hanoi’s food culture and northern Vietnamese specialties.\r\n\r\nKeep going around Hanoi Old Quarter, sample fruit, street snacks and visit some famous and specialized- food families or stalls, little local restaurants which run by authentic local chefs, certainly you will watch the chefs at work and taste some particular dishes (Your choice or our recommendations. Vegetarian food or special requirement is available upon request)\r\n\r\nTo add something sweet to the menu, try the local specialty of fresh fruit served in a cup with crushed ice and condensed milk or try the local favorite egg coffee or perhaps a chilled beer at a corner cafe (a tucked-away cafe) near Hoan Kiem lake with amazing views. Your food tour ends here, so you can either continue exploring on your own, take a cab or ask our guide for directions to your hotel.\r\n\r\nDong Xuan Market at night\r\n\r\nGood to know\r\n\r\nThis street food tour take you through many street food stalls and little restaurants, you can keep ordering food as long as you can eat, our suggestion is that taste a little bit each place, then try other food on the go.\r\nWe ensure the food is handled hygienically and provide a comfortable venue for tasting.\r\nWith hundreds of food stalls in this area, it’s difficult to know which are good to eat or not. There are definitely one’s that you should not venture in, but we are confident that we has vetted the places you go to, and allow to experience fantastic local specialty flavours.', 'Hanoi Street Food Taste', '', 'publish', 'open', 'open', '', 'hanoi-street-food-taste', '', '', '2015-05-08 18:11:08', '2015-05-08 18:11:08', '', 0, 'http://localhost/wordpress/daytourhanoi/?post_type=san-pham&#038;p=15', 0, 'list-tour', '', 0),
(16, 1, '2015-05-07 16:25:23', '2015-05-07 16:25:23', '', 'asus', '', 'inherit', 'open', 'open', '', 'asus', '', '', '2015-05-07 16:25:23', '2015-05-07 16:25:23', '', 15, 'http://localhost/wordpress/daytourhanoi/wp-content/uploads/2015/05/asus.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2015-05-07 16:33:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-07 16:33:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/daytourhanoi/?p=17', 0, 'post', '', 0),
(18, 1, '2015-05-07 16:34:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-07 16:34:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/daytourhanoi/?p=18', 0, 'post', '', 0),
(19, 1, '2015-05-10 01:16:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-10 01:16:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/daytourhanoi/?post_type=html5-blank&p=19', 0, 'html5-blank', '', 0),
(20, 1, '2015-05-10 01:28:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-10 01:28:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/daytourhanoi/?p=20', 0, 'post', '', 0),
(21, 1, '2015-05-10 01:29:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-10 01:29:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/daytourhanoi/?post_type=list-tour&p=21', 0, 'list-tour', '', 0),
(22, 1, '2015-05-10 01:30:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-10 01:30:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/daytourhanoi/?post_type=list-tour&p=22', 0, 'list-tour', '', 0),
(25, 1, '2015-05-10 01:41:25', '2015-05-10 01:41:25', ' ', '', '', 'publish', 'open', 'open', '', '25', '', '', '2015-05-10 01:41:25', '2015-05-10 01:41:25', '', 0, 'http://localhost/wordpress/daytourhanoi/?p=25', 1, 'nav_menu_item', '', 0),
(29, 1, '2015-05-10 02:12:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-10 02:12:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/daytourhanoi/?post_type=list-tour&p=29', 0, 'list-tour', '', 0),
(26, 1, '2015-05-10 01:41:25', '2015-05-10 01:41:25', ' ', '', '', 'publish', 'open', 'open', '', '26', '', '', '2015-05-10 01:41:25', '2015-05-10 01:41:25', '', 0, 'http://localhost/wordpress/daytourhanoi/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2015-05-10 01:41:25', '2015-05-10 01:41:25', ' ', '', '', 'publish', 'open', 'open', '', '27', '', '', '2015-05-10 01:41:25', '2015-05-10 01:41:25', '', 0, 'http://localhost/wordpress/daytourhanoi/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2015-05-10 01:41:25', '2015-05-10 01:41:25', ' ', '', '', 'publish', 'open', 'open', '', '28', '', '', '2015-05-10 01:41:25', '2015-05-10 01:41:25', '', 0, 'http://localhost/wordpress/daytourhanoi/?p=28', 4, 'nav_menu_item', '', 0),
(30, 1, '2015-05-10 02:15:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-10 02:15:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/daytourhanoi/?post_type=list-tour&p=30', 0, 'list-tour', '', 0),
(31, 1, '2015-05-10 02:19:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-10 02:19:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/daytourhanoi/?post_type=list-tour&p=31', 0, 'list-tour', '', 0),
(32, 1, '2015-05-10 02:21:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-10 02:21:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/daytourhanoi/?post_type=list-tour&p=32', 0, 'list-tour', '', 0),
(33, 1, '2015-05-10 02:26:28', '2015-05-10 02:26:28', 'Tour Itinerary\r\n\r\nDuration: 8 hours.\r\nEscape from bustling Hanoi to the peaceful Van Long natural reserve in Ninh Binh, take a rowing boat to visit this stunning wetland, also a nature reserve of the area\r\n\r\nLeave Hanoi for our day trip to Ninh Binh, we arrive at the Nature Reserve of Van Long after two hours drive (110km), we board a bamboo rowboat as soon as we arrive for 2 hours rowing along this beautiful wetland of Van Long, enjoying spectacular scenery surrounded by rice paddies and towering limestone mountain peaks.\r\n\r\nAfter lunch served at a local riverside restaurant we make a short transfer down a peaceful countryside road to Hoa Lu, Vietnam’s ancient capital eleven centuries ago. Here, spend one hour visiting the Dinh and Le temples of the Ancient Capital Hoa Lu which are dedicated to King Dinh and King Le, the founders of the ancient capital during the 10th century.\r\n\r\n**Alternatively you might opt for a biking trip around the countryside of Van Long natural reserve instead of Dinh & Le King temple.\r\n\r\nThen return to Hanoi late in the afternoon. Finish at your hotel.\r\n\r\nVan Long natural reserve', 'Van Long Natural Reserve in Ninh Binh', '', 'publish', 'open', 'open', '', 'van-long-natural-reserve-in-ninh-binh', '', '', '2015-05-10 02:38:07', '2015-05-10 02:38:07', '', 0, 'http://localhost/wordpress/daytourhanoi/?post_type=list-tour&#038;p=33', 0, 'list-tour', '', 0),
(34, 1, '2015-05-10 02:27:47', '2015-05-10 02:27:47', '', 'Van-Long-Natural-Reserve3-460x305', '', 'inherit', 'open', 'open', '', 'van-long-natural-reserve3-460x305', '', '', '2015-05-10 02:27:47', '2015-05-10 02:27:47', '', 33, 'http://localhost/wordpress/daytourhanoi/wp-content/uploads/2015/05/Van-Long-Natural-Reserve3-460x305.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Tours', 'tour', 0),
(4, 'Things to do', 'guide', 0),
(9, 'Sightseeing', 'sightseeing', 0),
(6, 'About us', 'about-us', 0),
(7, 'Service', 'service', 0),
(8, 'Contact us', 'contact-us', 0),
(10, 'Active tours', 'active-tours', 0),
(11, 'Foodie tours', 'foodie-tours', 0),
(12, 'After dark', 'after-dark', 0),
(13, 'Extended tours', 'extended-tours', 0),
(14, 'Attractions', 'attractions', 0),
(15, 'Cultures', 'cultures', 0),
(16, 'Shopping', 'shopping', 0),
(17, 'Eat and Drink', 'eat-and-drink', 0),
(18, 'Hanoi Cuisine', 'hanoi-cuisine', 0),
(19, 'Menutop', 'menutop', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(25, 19, 0),
(33, 2, 0),
(26, 19, 0),
(27, 19, 0),
(28, 19, 0),
(33, 9, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'muc-tour', '', 0, 1),
(4, 4, 'muc-tour', '', 0, 0),
(9, 9, 'muc-tour', '', 2, 1),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 0),
(8, 8, 'category', '', 0, 0),
(10, 10, 'muc-tour', '', 2, 0),
(11, 11, 'muc-tour', '', 2, 0),
(12, 12, 'muc-tour', '', 2, 0),
(13, 13, 'muc-tour', '', 2, 0),
(14, 14, 'muc-tour', '', 4, 0),
(15, 15, 'muc-tour', '', 4, 0),
(16, 16, 'muc-tour', '', 4, 0),
(17, 17, 'muc-tour', '', 4, 0),
(18, 18, 'muc-tour', '', 4, 0),
(19, 19, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'vuhuytuan89'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"2fe1eb67bc6d1bf5d1c037bd369e4401cffbdc2d123ed69c943d6080738343e2";a:4:{s:10:"expiration";i:1431275330;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36";s:5:"login";i:1431102530;}s:64:"ef6115672d45ebc60c6ba1cf031fcf8d8012ec45a2785924bce424578f5cb2d0";a:4:{s:10:"expiration";i:1431391844;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36";s:5:"login";i:1431219044;}s:64:"5ed31c55961c523ffe1034a3d5a226d8978c8f057260e68ff037ef9a6ffd11ab";a:4:{s:10:"expiration";i:1431447257;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36";s:5:"login";i:1431274457;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'closedpostboxes_post', 'a:0:{}'),
(17, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(18, 1, 'wp_types-modal', '0'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'wp_user-settings-time', '1431219040'),
(21, 1, 'closedpostboxes_san-pham', 'a:0:{}'),
(22, 1, 'metaboxhidden_san-pham', 'a:2:{i:0;s:13:"trackbacksdiv";i:1;s:7:"slugdiv";}'),
(23, 1, 'wpcf-group-form-toggle', 'a:1:{i:14;a:3:{s:16:"fieldset-noidung";i:1;s:14:"fieldset-price";i:1;s:16:"fieldset-mutiple";i:1;}}'),
(24, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:8:"add-post";i:1;s:13:"add-list-tour";i:2;s:15:"add-html5-blank";i:3;s:12:"add-post_tag";i:4;s:12:"add-muc-tour";}'),
(26, 1, 'nav_menu_recently_edited', '19'),
(27, 1, 'closedpostboxes_list-tour', 'a:0:{}'),
(28, 1, 'metaboxhidden_list-tour', 'a:2:{i:0;s:10:"postcustom";i:1;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'vuhuytuan89', '$P$BFy7b3TiFsfBLwTQ2prwJ255IovhQF.', 'vuhuytuan89', 'vuhuytuan89@gmail.com', '', '2015-05-04 08:15:11', '', 0, 'vuhuytuan89');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
