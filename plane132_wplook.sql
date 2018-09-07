-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 07-Set-2018 às 02:21
-- Versão do servidor: 10.2.17-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plane132_wplook`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_commentmeta`
--

CREATE TABLE `wplook_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wplook_commentmeta`
--

INSERT INTO `wplook_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'rating', '5'),
(2, 3, 'verified', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_comments`
--

CREATE TABLE `wplook_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wplook_comments`
--

INSERT INTO `wplook_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-05 23:18:42', '2018-07-05 23:18:42', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 66, 'WooCommerce', 'woocommerce@projeto.planetsweb.com.br', '', '', '2018-07-07 06:05:18', '2018-07-07 06:05:18', 'Encomenda cancelada por falta de pagamento - tempo limite ultrapassado. Estado da encomenda alterado de Pagamento pendente para Cancelada.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 104, 'admin', 'admin@projeto.planetsweb.com.br', '', '201.81.163.54', '2018-07-07 06:52:20', '2018-07-07 06:52:20', 'Very good.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 0, 1),
(4, 112, 'admin', 'admin@projeto.planetsweb.com.br', '', '', '2018-07-07 06:55:05', '2018-07-07 06:55:05', 'Estado da encomenda alterado de Pagamento pendente para Concluída.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 112, 'admin', 'admin@projeto.planetsweb.com.br', '', '', '2018-07-07 06:55:40', '2018-07-07 06:55:40', 'Estado da encomenda alterado de Concluída para Cancelada.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 113, 'admin', 'admin@projeto.planetsweb.com.br', '', '', '2018-07-07 06:55:57', '2018-07-07 06:55:57', 'Estado da encomenda alterado de Pagamento pendente para Concluída.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 126, 'WooCommerce', 'woocommerce@projeto.planetsweb.com.br', '', '', '2018-07-07 07:17:46', '2018-07-07 07:17:46', '<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#82;&#36;</span>1,00</span> paid through wallet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 126, 'admin', 'admin@projeto.planetsweb.com.br', '', '', '2018-07-07 07:17:47', '2018-07-07 07:17:47', 'Estado da encomenda alterado de Pagamento pendente para Concluída.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 131, 'WooCommerce', 'woocommerce@projeto.planetsweb.com.br', '', '', '2018-07-10 14:23:25', '2018-07-10 14:23:25', 'Encomenda cancelada por falta de pagamento - tempo limite ultrapassado. Estado da encomenda alterado de Pagamento pendente para Cancelada.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 132, 'WooCommerce', 'woocommerce@projeto.planetsweb.com.br', '', '', '2018-07-10 14:23:25', '2018-07-10 14:23:25', 'Encomenda cancelada por falta de pagamento - tempo limite ultrapassado. Estado da encomenda alterado de Pagamento pendente para Cancelada.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_failed_jobs`
--

CREATE TABLE `wplook_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_links`
--

CREATE TABLE `wplook_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_mailchimp_carts`
--

CREATE TABLE `wplook_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_options`
--

CREATE TABLE `wplook_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wplook_options`
--

INSERT INTO `wplook_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://projeto.planetsweb.com.br/lookaer', 'yes'),
(2, 'home', 'http://projeto.planetsweb.com.br/lookaer', 'yes'),
(3, 'blogname', 'Look Aer ™', 'yes'),
(4, 'blogdescription', 'Loja de fraldas', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'admin@projeto.planetsweb.com.br', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:159:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"loja/?$\";s:27:\"index.php?post_type=product\";s:37:\"loja/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"loja/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"loja/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"categoria-produto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"categoria-produto/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"categoria-produto/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"categoria-produto/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"categoria-produto/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:57:\"produto-etiqueta/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:52:\"produto-etiqueta/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:33:\"produto-etiqueta/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:45:\"produto-etiqueta/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:27:\"produto-etiqueta/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"produto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produto/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produto/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produto/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produto/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=26&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:29:\"(.?.+?)/woo-wallet(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&woo-wallet=$matches[3]\";s:42:\"(.?.+?)/woo-wallet-transactions(/(.*))?/?$\";s:66:\"index.php?pagename=$matches[1]&woo-wallet-transactions=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:25:\"woo-wallet/woo-wallet.php\";i:1;s:93:\"woocommerce-gateway-amazon-payments-advanced/woocommerce-gateway-amazon-payments-advanced.php\";i:2;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:3;s:45:\"woocommerce-services/woocommerce-services.php\";i:4;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:95:\"/home/plane132/public_html/setores/projeto/lookaer/wp-content/plugins/woo-wallet/woo-wallet.php\";i:1;s:97:\"/home/plane132/public_html/setores/projeto/lookaer/wp-content/plugins/woocommerce/woocommerce.php\";i:2;s:86:\"/home/plane132/public_html/setores/projeto/lookaer/wp-content/themes/lookaer/style.css\";i:3;s:102:\"/home/plane132/public_html/setores/projeto/lookaer/wp-content/themes/lookaer/inc/lookaer-functions.php\";i:4;s:131:\"/home/plane132/public_html/setores/projeto/lookaer/wp-content/themes/lookaer/inc/woocommerce/lookaer-woocommerce-template-hooks.php\";}', 'no'),
(40, 'template', 'lookaer', 'yes'),
(41, 'stylesheet', 'lookaer', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(81, 'uninstall_plugins', 'a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '27', 'yes'),
(84, 'page_on_front', '26', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wplook_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:12:{i:1533590322;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1533592645;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1533597522;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1533597551;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533597690;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533597700;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533600000;a:2:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533600374;a:1:{s:24:\"jp_purge_transients_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533608490;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533619290;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1533621229;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(348, 'current_theme', 'LookAer', 'yes'),
(349, 'theme_mods_storefront', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:20;s:9:\"secondary\";i:21;s:8:\"handheld\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:17:\"storefront_layout\";s:5:\"right\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530942621;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(350, 'theme_switched', '', 'yes'),
(351, 'mailchimp_woocommerce_version', '2.1.6', 'no'),
(2768, '_site_transient_timeout_theme_roots', '1533570982', 'no'),
(2769, '_site_transient_theme_roots', 'a:5:{s:7:\"lookaer\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(119, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530833953;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(121, 'WPLANG', 'pt_PT', 'yes'),
(139, 'woocommerce_store_address', 'Rua Cirino de Abreu', 'yes'),
(140, 'woocommerce_store_address_2', 'Rua Cirino de Abreu', 'yes'),
(141, 'woocommerce_store_city', 'São Paulo', 'yes'),
(142, 'woocommerce_default_country', 'BR:SP', 'yes'),
(124, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:31:\"admin@projeto.planetsweb.com.br\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533534855;}', 'no'),
(143, 'woocommerce_store_postcode', '03630-010', 'yes'),
(130, 'recently_activated', 'a:3:{s:9:\"hello.php\";i:1530936114;s:19:\"jetpack/jetpack.php\";i:1530936055;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:1530936055;}', 'yes'),
(2692, '_transient_is_multi_author', '0', 'yes'),
(144, 'woocommerce_allowed_countries', 'specific', 'yes'),
(145, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(146, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:\"BR\";}', 'yes'),
(147, 'woocommerce_ship_to_countries', 'specific', 'yes'),
(148, 'woocommerce_specific_ship_to_countries', 'a:1:{i:0;s:2:\"BR\";}', 'yes'),
(149, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(150, 'woocommerce_calc_taxes', 'yes', 'yes'),
(151, 'woocommerce_enable_coupons', 'yes', 'yes'),
(152, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(153, 'woocommerce_currency', 'BRL', 'yes'),
(154, 'woocommerce_currency_pos', 'left', 'yes'),
(155, 'woocommerce_price_thousand_sep', '.', 'yes'),
(156, 'woocommerce_price_decimal_sep', ',', 'yes'),
(157, 'woocommerce_price_num_decimals', '2', 'yes'),
(158, 'woocommerce_shop_page_id', '6', 'yes'),
(159, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(160, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(161, 'woocommerce_weight_unit', 'kg', 'yes'),
(162, 'woocommerce_dimension_unit', 'cm', 'yes'),
(163, 'woocommerce_enable_reviews', 'yes', 'yes'),
(164, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(165, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(166, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(167, 'woocommerce_review_rating_required', 'yes', 'no'),
(168, 'woocommerce_manage_stock', 'yes', 'yes'),
(169, 'woocommerce_hold_stock_minutes', '60', 'no'),
(170, 'woocommerce_notify_low_stock', 'yes', 'no'),
(171, 'woocommerce_notify_no_stock', 'yes', 'no'),
(172, 'woocommerce_stock_email_recipient', 'admin@projeto.planetsweb.com.br', 'no'),
(173, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(174, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(175, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(176, 'woocommerce_stock_format', '', 'yes'),
(177, 'woocommerce_file_download_method', 'force', 'no'),
(178, 'woocommerce_downloads_require_login', 'no', 'no'),
(179, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(180, 'woocommerce_prices_include_tax', 'no', 'yes'),
(181, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(182, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(183, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(184, 'woocommerce_tax_classes', 'Taxa Reduzida\nTaxa Zero', 'yes'),
(185, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(186, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(187, 'woocommerce_price_display_suffix', '', 'yes'),
(188, 'woocommerce_tax_total_display', 'itemized', 'no'),
(189, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(190, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(191, 'woocommerce_ship_to_destination', 'billing', 'no'),
(192, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(193, 'woocommerce_enable_guest_checkout', 'no', 'no'),
(194, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(195, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(196, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(197, 'woocommerce_registration_generate_username', 'yes', 'no'),
(198, 'woocommerce_registration_generate_password', 'yes', 'no'),
(199, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(200, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(201, 'woocommerce_registration_privacy_policy_text', 'Os seus dados pessoais serão utilizados para melhorar a sua experiência por toda a loja, para gerir o acesso à sua conta e para os propósitos descritos na nossa [privacy_policy].', 'yes'),
(202, 'woocommerce_checkout_privacy_policy_text', 'Os seus dados pessoais serão utilizados para processar a sua encomenda, para melhorar a sua experiência em toda a loja e para os propósitos descritos na nossa [privacy_policy].', 'yes'),
(203, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(204, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(205, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(206, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(207, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(208, 'woocommerce_email_from_name', 'Look Aer', 'no'),
(209, 'woocommerce_email_from_address', 'admin@projeto.planetsweb.com.br', 'no'),
(210, 'woocommerce_email_header_image', '', 'no'),
(211, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(212, 'woocommerce_email_base_color', '#96588a', 'no'),
(213, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(214, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(215, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(216, 'woocommerce_cart_page_id', '7', 'yes'),
(217, 'woocommerce_checkout_page_id', '8', 'yes'),
(218, 'woocommerce_myaccount_page_id', '9', 'yes'),
(219, 'woocommerce_terms_page_id', '', 'no'),
(220, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(221, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(222, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(223, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(224, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(225, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(226, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(227, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(228, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(229, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(230, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(231, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(232, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(233, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(234, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(235, 'woocommerce_api_enabled', 'no', 'yes'),
(236, 'woocommerce_single_image_width', '600', 'yes'),
(237, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(238, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(239, 'woocommerce_demo_store', 'no', 'no'),
(240, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"produto\";s:13:\"category_base\";s:17:\"categoria-produto\";s:8:\"tag_base\";s:16:\"produto-etiqueta\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(241, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(242, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(243, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(245, 'default_product_cat', '15', 'yes'),
(2763, '_transient_timeout_wc_term_counts', '1536161186', 'no'),
(2764, '_transient_wc_term_counts', 'a:3:{i:22;s:1:\"4\";i:15;s:1:\"1\";i:23;s:1:\"4\";}', 'no'),
(2772, '_transient_timeout_external_ip_address_187.26.75.28', '1534193843', 'no'),
(2740, '_transient_timeout_external_ip_address_66.249.83.17', '1534139648', 'no'),
(2747, '_transient_timeout_external_ip_address_201.81.163.54', '1534139652', 'no'),
(2748, '_transient_external_ip_address_201.81.163.54', '108.179.192.50', 'no'),
(2741, '_transient_external_ip_address_66.249.83.17', '108.179.192.50', 'no'),
(2756, '_transient_timeout_external_ip_address_108.179.192.53', '1534139658', 'no'),
(2757, '_transient_external_ip_address_108.179.192.53', '108.179.192.50', 'no'),
(267, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(248, 'woocommerce_version', '3.4.3', 'yes'),
(249, 'woocommerce_db_version', '3.4.3', 'yes'),
(250, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:\"install\";i:1;s:20:\"no_secure_connection\";}', 'yes'),
(251, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(252, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(253, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(254, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(255, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(256, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(257, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(259, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'woocommerce_product_type', 'physical', 'yes'),
(274, 'woocommerce_allow_tracking', 'no', 'yes'),
(2331, '_transient_orders-transient-version', '1531232605', 'yes'),
(371, '_transient_product-transient-version', '1530947403', 'yes'),
(364, 'storefront_nux_guided_tour', '1', 'yes'),
(297, '_transient_shipping-transient-version', '1530945778', 'yes'),
(301, 'category_children', 'a:0:{}', 'yes'),
(2451, '_wallet_enpoint_added', '1', 'yes'),
(2580, '_transient_timeout_wc_product_loopc4631530947403', '1533539454', 'no'),
(2581, '_transient_wc_product_loopc4631530947403', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:5:{i:0;i:104;i:1;i:114;i:2;i:116;i:3;i:118;i:4;i:120;}s:5:\"total\";i:5;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:20;s:12:\"current_page\";i:1;}', 'no'),
(302, 'new_admin_email', 'admin@projeto.planetsweb.com.br', 'yes'),
(2435, '_transient_wc_product_loopa47f1530943203', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:104;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(2450, '_woo_wallet_recharge_product', '109', 'yes'),
(307, 'can_compress_scripts', '0', 'no'),
(2330, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:84:\"Pagar com PayPal; pode pagar com cartão de crédito se não tiver uma conta PayPal.\";s:5:\"email\";s:24:\"rubens@planetsweb.com.br\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:24:\"rubens@planetsweb.com.br\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:5:\"admin\";s:12:\"api_password\";s:24:\"HwlLgMnuT!iMBaKS@OoBcHid\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(336, 'wc_ppec_version', '1.6.1', 'yes');
INSERT INTO `wplook_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(321, 'woocommerce_ppec_paypal_settings', 'a:53:{s:7:\"enabled\";s:2:\"no\";s:16:\"reroute_requests\";s:3:\"yes\";s:5:\"email\";s:24:\"rubens@planetsweb.com.br\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:11:\"environment\";s:4:\"live\";s:12:\"api_username\";s:5:\"admin\";s:12:\"api_password\";s:24:\"HwlLgMnuT!iMBaKS@OoBcHid\";s:13:\"api_signature\";s:0:\"\";s:15:\"api_certificate\";s:0:\"\";s:11:\"api_subject\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:23:\"sandbox_api_certificate\";s:0:\"\";s:19:\"sandbox_api_subject\";s:0:\"\";s:10:\"brand_name\";s:8:\"Look Aer\";s:14:\"logo_image_url\";s:0:\"\";s:16:\"header_image_url\";s:0:\"\";s:10:\"page_style\";s:0:\"\";s:12:\"landing_page\";s:5:\"Login\";s:5:\"debug\";s:2:\"no\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:15:\"require_billing\";s:2:\"no\";s:20:\"require_phone_number\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:16:\"instant_payments\";s:2:\"no\";s:26:\"subtotal_mismatch_behavior\";s:3:\"add\";s:7:\"use_spb\";s:3:\"yes\";s:12:\"button_color\";s:4:\"blue\";s:12:\"button_shape\";s:4:\"rect\";s:13:\"button_layout\";s:8:\"vertical\";s:11:\"button_size\";s:10:\"responsive\";s:20:\"hide_funding_methods\";a:1:{i:0;s:4:\"CARD\";}s:14:\"credit_enabled\";s:2:\"no\";s:21:\"cart_checkout_enabled\";s:3:\"yes\";s:25:\"mini_cart_settings_toggle\";s:2:\"no\";s:23:\"mini_cart_button_layout\";s:8:\"vertical\";s:21:\"mini_cart_button_size\";s:10:\"responsive\";s:30:\"mini_cart_hide_funding_methods\";a:1:{i:0;s:4:\"CARD\";}s:24:\"mini_cart_credit_enabled\";s:2:\"no\";s:34:\"checkout_on_single_product_enabled\";s:3:\"yes\";s:30:\"single_product_settings_toggle\";s:3:\"yes\";s:28:\"single_product_button_layout\";s:10:\"horizontal\";s:26:\"single_product_button_size\";s:10:\"responsive\";s:35:\"single_product_hide_funding_methods\";a:1:{i:0;s:4:\"CARD\";}s:29:\"single_product_credit_enabled\";s:2:\"no\";s:12:\"mark_enabled\";s:3:\"yes\";s:20:\"mark_settings_toggle\";s:2:\"no\";s:18:\"mark_button_layout\";s:8:\"vertical\";s:16:\"mark_button_size\";s:10:\"responsive\";s:25:\"mark_hide_funding_methods\";a:1:{i:0;s:4:\"CARD\";}s:19:\"mark_credit_enabled\";s:2:\"no\";}', 'yes'),
(322, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(323, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(324, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(419, 'woocommerce_shop_page_display', 'both', 'yes'),
(363, 'storefront_nux_dismissed', '1', 'yes'),
(339, 'do_activate', '0', 'yes'),
(2434, '_transient_timeout_wc_product_loopa47f1530943203', '1533535655', 'no'),
(354, 'storefront_nux_fresh_site', '0', 'yes'),
(355, 'woocommerce_catalog_rows', '4', 'yes'),
(356, 'woocommerce_catalog_columns', '3', 'yes'),
(357, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(1372, 'lookaer_nux_dismissed', '1', 'yes'),
(2307, 'jetpack_callables_sync_checksum', 'a:30:{s:18:\"wp_max_upload_size\";i:2450289511;s:15:\"is_main_network\";i:734881840;s:13:\"is_multi_site\";i:734881840;s:17:\"main_network_site\";i:839576045;s:8:\"site_url\";i:839576045;s:8:\"home_url\";i:839576045;s:16:\"single_user_site\";i:4261170317;s:7:\"updates\";i:3425443202;s:28:\"has_file_system_write_access\";i:4261170317;s:21:\"is_version_controlled\";i:734881840;s:10:\"taxonomies\";i:2840691693;s:10:\"post_types\";i:216841399;s:18:\"post_type_features\";i:2396678104;s:10:\"shortcodes\";i:2033215837;s:27:\"rest_api_allowed_post_types\";i:3172031362;s:32:\"rest_api_allowed_public_metadata\";i:223132457;s:24:\"sso_is_two_step_required\";i:734881840;s:26:\"sso_should_hide_login_form\";i:734881840;s:18:\"sso_match_by_email\";i:4261170317;s:21:\"sso_new_user_override\";i:734881840;s:29:\"sso_bypass_default_login_form\";i:734881840;s:10:\"wp_version\";i:3737329156;s:11:\"get_plugins\";i:1953120880;s:24:\"get_plugins_action_links\";i:3069586319;s:14:\"active_modules\";i:3109199305;s:16:\"hosting_provider\";i:769900095;s:6:\"locale\";i:911955189;s:13:\"site_icon_url\";i:734881840;s:5:\"roles\";i:2254693364;s:8:\"timezone\";i:3808505409;}', 'no'),
(362, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(366, '_transient_product_query-transient-version', '1530947403', 'yes'),
(2522, '_transient_timeout_wc_product_loop1a121530946340', '1533538436', 'no'),
(421, 'woocommerce_demo_store_notice', '', 'yes'),
(422, 'woocommerce_checkout_company_field', 'hidden', 'yes'),
(420, 'woocommerce_default_catalog_orderby', 'popularity', 'yes'),
(2425, '_transient_timeout_wc_product_loop1a121530943203', '1533535429', 'no'),
(551, 'widget_wpcom-goodreads', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(552, 'widget_google_translate_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(553, 'widget_googleplus-badge', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(554, 'widget_grofile', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(555, 'widget_internet_defense_league_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(556, 'widget_widget_mailchimp_subscriber_popup', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(547, 'widget_authors', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(550, 'widget_flickr', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(546, 'widget_blog_subscription', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(548, 'widget_eu_cookie_law_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(549, 'widget_facebook-likebox', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1331, 'open_graph_protocol_site_type', '', 'yes'),
(1332, 'facebook_admins', 'a:0:{}', 'yes'),
(2568, '_transient_timeout_wc_product_loop1a121530947025', '1533539061', 'no'),
(2569, '_transient_wc_product_loop1a121530947025', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:104;i:1;i:114;i:2;i:116;i:3;i:118;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(2766, '_transient_wc_product_loop7fb41530947403', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:5:{i:0;i:104;i:1;i:114;i:2;i:116;i:3;i:118;i:4;i:120;}s:5:\"total\";i:5;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:14;s:12:\"current_page\";i:1;}', 'no'),
(2765, '_transient_timeout_wc_product_loop7fb41530947403', '1536161181', 'no'),
(682, 'post_by_email_address1', 'NULL', 'yes'),
(683, 'monitor_receive_notifications', '1', 'yes'),
(603, 'safecss', '', 'yes'),
(600, 'verification_services_codes', '0', 'yes'),
(681, 'jetpack_plugin_api_action_links', 'a:4:{s:19:\"jetpack/jetpack.php\";a:3:{s:7:\"Jetpack\";s:72:\"http://projeto.planetsweb.com.br/lookaer/wp-admin/admin.php?page=jetpack\";s:8:\"Opções\";s:82:\"http://projeto.planetsweb.com.br/lookaer/wp-admin/admin.php?page=jetpack#/settings\";s:7:\"Suporte\";s:81:\"http://projeto.planetsweb.com.br/lookaer/wp-admin/admin.php?page=jetpack-debugger\";}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";a:1:{s:8:\"Settings\";s:96:\"http://projeto.planetsweb.com.br/lookaer/wp-admin/options-general.php?page=mailchimp-woocommerce\";}s:27:\"woocommerce/woocommerce.php\";a:1:{s:15:\"Configurações\";s:76:\"http://projeto.planetsweb.com.br/lookaer/wp-admin/admin.php?page=wc-settings\";}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";a:2:{s:8:\"Settings\";s:109:\"http://projeto.planetsweb.com.br/lookaer/wp-admin/admin.php?page=wc-settings&tab=checkout&section=ppec_paypal\";s:4:\"Docs\";s:62:\"https://docs.woocommerce.com/document/paypal-express-checkout/\";}}', 'yes'),
(678, 'trusted_ip_header', 'O:8:\"stdClass\":3:{s:14:\"trusted_header\";s:11:\"REMOTE_ADDR\";s:8:\"segments\";i:1;s:7:\"reverse\";b:0;}', 'no'),
(597, 'gravatar_disable_hovercards', '0', 'yes'),
(560, 'widget_jetpack_widget_social_icons', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(561, 'widget_twitter_timeline', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(562, 'widget_upcoming_events_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(563, 'widget_jetpack_display_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(557, 'widget_milestone_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(558, 'widget_jetpack_my_community', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(559, 'widget_rss_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(532, 'jpsq_full_sync_checkout', '0:0', 'no'),
(528, 'jpsq_sync_checkout', '0:0', 'no'),
(2271, 'jetpack_constants_sync_checksum', 'a:31:{s:16:\"EMPTY_TRASH_DAYS\";i:2473281379;s:17:\"WP_POST_REVISIONS\";i:4261170317;s:26:\"AUTOMATIC_UPDATER_DISABLED\";i:634125391;s:7:\"ABSPATH\";i:4229568013;s:14:\"WP_CONTENT_DIR\";i:3332479749;s:9:\"FS_METHOD\";i:634125391;s:18:\"DISALLOW_FILE_EDIT\";i:634125391;s:18:\"DISALLOW_FILE_MODS\";i:634125391;s:19:\"WP_AUTO_UPDATE_CORE\";i:634125391;s:22:\"WP_HTTP_BLOCK_EXTERNAL\";i:634125391;s:19:\"WP_ACCESSIBLE_HOSTS\";i:634125391;s:16:\"JETPACK__VERSION\";i:2176953134;s:12:\"IS_PRESSABLE\";i:634125391;s:15:\"DISABLE_WP_CRON\";i:634125391;s:17:\"ALTERNATE_WP_CRON\";i:634125391;s:20:\"WP_CRON_LOCK_TIMEOUT\";i:3994858278;s:11:\"PHP_VERSION\";i:425472343;s:15:\"WP_MEMORY_LIMIT\";i:3065409971;s:19:\"WP_MAX_MEMORY_LIMIT\";i:1474498405;s:14:\"WC_PLUGIN_FILE\";i:340770510;s:10:\"WC_ABSPATH\";i:3350201731;s:18:\"WC_PLUGIN_BASENAME\";i:1149093810;s:10:\"WC_VERSION\";i:1438659429;s:19:\"WOOCOMMERCE_VERSION\";i:1438659429;s:21:\"WC_ROUNDING_PRECISION\";i:498629140;s:25:\"WC_DISCOUNT_ROUNDING_MODE\";i:450215437;s:20:\"WC_TAX_ROUNDING_MODE\";i:2212294583;s:12:\"WC_DELIMITER\";i:2455911554;s:10:\"WC_LOG_DIR\";i:184606301;s:22:\"WC_SESSION_CACHE_GROUP\";i:4278978988;s:22:\"WC_TEMPLATE_DEBUG_MODE\";i:734881840;}', 'yes'),
(2274, 'jetpack_sync_https_history_main_network_site_url', 'a:1:{i:0;s:4:\"http\";}', 'yes'),
(2275, 'jetpack_sync_https_history_site_url', 'a:2:{i:0;s:4:\"http\";i:1;s:4:\"http\";}', 'yes'),
(2276, 'jetpack_sync_https_history_home_url', 'a:2:{i:0;s:4:\"http\";i:1;s:4:\"http\";}', 'yes'),
(2453, '_wallet_settings_general', 'a:12:{s:13:\"product_title\";s:9:\"Créditos\";s:16:\"min_topup_amount\";s:2:\"10\";s:16:\"max_topup_amount\";s:9:\"999999999\";s:7:\"primary\";s:3:\"off\";s:9:\"secondary\";s:2:\"on\";s:8:\"handheld\";s:3:\"off\";s:34:\"is_auto_deduct_for_partial_payment\";s:2:\"on\";s:25:\"is_enable_wallet_transfer\";s:2:\"on\";s:20:\"transfer_charge_type\";s:7:\"percent\";s:22:\"transfer_charge_amount\";s:1:\"5\";s:6:\"paypal\";s:2:\"on\";s:24:\"amazon_payments_advanced\";s:2:\"on\";}', 'yes'),
(2454, '_wallet_settings_credit', 'a:12:{s:33:\"is_enable_cashback_reward_program\";s:2:\"on\";s:23:\"process_cashback_status\";a:2:{i:0;s:10:\"processing\";i:1;s:9:\"completed\";}s:13:\"cashback_rule\";s:11:\"product_cat\";s:13:\"cashback_type\";s:7:\"percent\";s:15:\"min_cart_amount\";s:0:\"\";s:15:\"cashback_amount\";s:1:\"1\";s:19:\"max_cashback_amount\";s:1:\"1\";s:18:\"allow_min_cashback\";s:2:\"on\";s:24:\"is_enable_gateway_charge\";s:2:\"on\";s:19:\"gateway_charge_type\";s:7:\"percent\";s:6:\"paypal\";s:1:\"5\";s:24:\"amazon_payments_advanced\";s:1:\"5\";}', 'yes'),
(2460, '_transient_timeout_wc_product_loop1a121530944185', '1533536345', 'no'),
(2461, '_transient_wc_product_loop1a121530944185', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:104;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(2518, '_transient_timeout_wc_cbp_73d2fe15cc59e986bdf81b680ac38fd8', '1533538340', 'no'),
(2519, '_transient_wc_cbp_73d2fe15cc59e986bdf81b680ac38fd8', 'a:0:{}', 'no'),
(2475, '_transient_timeout_wc_product_loop1a121530944440', '1533536481', 'no'),
(2476, '_transient_wc_product_loop1a121530944440', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:104;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(2752, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_PT/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"pt_PT\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_PT/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1533569182;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(2770, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1533569183;s:7:\"checked\";a:5:{s:7:\"lookaer\";s:5:\"1.0.0\";s:10:\"storefront\";s:5:\"2.3.2\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:2:{s:10:\"storefront\";a:4:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"2.3.3\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.2.3.3.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(2771, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1533569183;s:7:\"checked\";a:5:{s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.3\";s:93:\"woocommerce-gateway-amazon-payments-advanced/woocommerce-gateway-amazon-payments-advanced.php\";s:5:\"1.8.4\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:5:\"1.6.1\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.15.1\";s:25:\"woo-wallet/woo-wallet.php\";s:6:\"1.1.10\";}s:8:\"response\";a:2:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.7\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"woo-wallet/woo-wallet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/woo-wallet\";s:4:\"slug\";s:10:\"woo-wallet\";s:6:\"plugin\";s:25:\"woo-wallet/woo-wallet.php\";s:11:\"new_version\";s:5:\"1.2.0\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/woo-wallet/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/woo-wallet.1.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/woo-wallet/assets/icon-256x256.png?rev=1785270\";s:2:\"1x\";s:63:\"https://ps.w.org/woo-wallet/assets/icon-128x128.png?rev=1785270\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/woo-wallet/assets/banner-1544x500.jpg?rev=1856099\";s:2:\"1x\";s:65:\"https://ps.w.org/woo-wallet/assets/banner-772x250.jpg?rev=1856099\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.7\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1900204\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1900204\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.15.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.15.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1910075\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1910075\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(2512, 'woocommerce_wallet_settings', 'a:4:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:22:\"Pagamento por carteira\";s:11:\"description\";s:19:\"Pague com carteira.\";s:12:\"instructions\";s:19:\"Pague com carteira.\";}', 'yes'),
(2514, '_transient_timeout_wc_shipping_method_count_1_1530945778', '1533537828', 'no'),
(2515, '_transient_wc_shipping_method_count_1_1530945778', '1', 'no'),
(2523, '_transient_wc_product_loop1a121530946340', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:104;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(2415, 'product_cat_children', 'a:1:{i:23;a:1:{i:0;i:24;}}', 'yes'),
(2760, '_transient_timeout_external_ip_address_179.158.191.201', '1534173979', 'no'),
(2761, '_transient_external_ip_address_179.158.191.201', '108.179.192.50', 'no'),
(2773, '_transient_external_ip_address_187.26.75.28', '108.179.192.50', 'no'),
(1322, 'lookaer_nux_fresh_site', '0', 'yes'),
(1323, 'lookaer_nux_guided_tour', '1', 'yes'),
(1324, 'widget_top-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1325, 'widget_blog-stats', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1328, 'widget_widget_contact_info', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1329, 'theme_mods_lookaer', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:20;s:9:\"secondary\";i:21;s:8:\"handheld\";i:0;}}', 'yes'),
(2377, 'theme_switched_via_customizer', '', 'yes'),
(2378, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(2426, '_transient_wc_product_loop1a121530943203', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:104;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(2357, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(2376, 'theme_switch_menu_locations', 'a:3:{s:7:\"primary\";i:20;s:9:\"secondary\";i:21;s:8:\"handheld\";i:0;}', 'yes'),
(2449, 'woo_wallet_db_version', '1.1.10', 'yes'),
(2446, 'woocommerce_amazon_payments_advanced_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:10:\"Amazon Pay\";s:21:\"subscriptions_enabled\";s:3:\"yes\";s:15:\"account_details\";s:0:\"\";s:9:\"seller_id\";s:0:\"\";s:14:\"mws_access_key\";s:0:\"\";s:10:\"secret_key\";s:0:\"\";s:14:\"payment_region\";s:2:\"us\";s:16:\"enable_login_app\";s:3:\"yes\";s:13:\"app_client_id\";s:0:\"\";s:17:\"app_client_secret\";s:0:\"\";s:7:\"sandbox\";s:2:\"no\";s:15:\"payment_capture\";s:0:\"\";s:15:\"display_options\";s:0:\"\";s:24:\"cart_button_display_mode\";s:6:\"button\";s:11:\"button_type\";s:3:\"PwA\";s:11:\"button_size\";s:6:\"medium\";s:12:\"button_color\";s:4:\"Gold\";s:15:\"button_language\";s:0:\"\";s:29:\"hide_standard_checkout_button\";s:2:\"no\";s:12:\"misc_options\";s:0:\"\";s:5:\"debug\";s:3:\"yes\";s:16:\"hide_button_mode\";s:2:\"no\";}', 'yes'),
(2711, '_transient_timeout_wc_product_loopa47f1530947403', '1534166817', 'no'),
(2712, '_transient_wc_product_loopa47f1530947403', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:104;i:1;i:114;i:2;i:116;i:3;i:120;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_postmeta`
--

CREATE TABLE `wplook_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wplook_postmeta`
--

INSERT INTO `wplook_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(869, 112, '_order_shipping', '0'),
(5, 9, '_edit_lock', '1530944446:1'),
(856, 112, '_billing_phone', '11976533875'),
(857, 112, '_shipping_first_name', 'Rubens'),
(858, 112, '_shipping_last_name', 'Flinco'),
(859, 112, '_shipping_company', ''),
(860, 112, '_shipping_address_1', 'Rua Cirino de Abreu'),
(861, 112, '_shipping_address_2', ''),
(862, 112, '_shipping_city', 'São Paulo'),
(863, 112, '_shipping_state', 'SP'),
(864, 112, '_shipping_postcode', '03630-010'),
(865, 112, '_shipping_country', 'BR'),
(866, 112, '_order_currency', 'BRL'),
(867, 112, '_cart_discount', '0'),
(868, 112, '_cart_discount_tax', '0'),
(829, 109, '_product_version', '3.4.3'),
(815, 109, '_sale_price_dates_to', ''),
(816, 109, '_price', ''),
(817, 109, '_sold_individually', 'yes'),
(818, 109, '_manage_stock', 'no'),
(819, 109, '_backorders', 'no'),
(820, 109, '_stock', ''),
(821, 109, '_tax_status', 'taxable'),
(822, 109, '_tax_class', ''),
(823, 109, '_upsell_ids', 'a:0:{}'),
(824, 109, '_crosssell_ids', 'a:0:{}'),
(825, 109, '_default_attributes', 'a:0:{}'),
(826, 109, '_product_image_gallery', ''),
(827, 109, '_download_limit', '-1'),
(828, 109, '_download_expiry', '-1'),
(807, 109, '_featured', 'no'),
(854, 112, '_billing_country', 'BR'),
(840, 112, '_created_via', 'checkout'),
(841, 112, '_date_completed', '1530946504'),
(842, 112, '_completed_date', '2018-07-07 06:55:04'),
(843, 112, '_date_paid', ''),
(844, 112, '_paid_date', ''),
(845, 112, '_cart_hash', 'd2d406cf8479029f283555318bbbbb8b'),
(846, 112, '_billing_first_name', 'Rubens'),
(847, 112, '_billing_last_name', 'Flinco'),
(848, 112, '_billing_company', ''),
(849, 112, '_billing_address_1', 'Rua Cirino de Abreu'),
(850, 112, '_billing_address_2', ''),
(851, 112, '_billing_city', 'São Paulo'),
(852, 112, '_billing_state', 'SP'),
(853, 112, '_billing_postcode', '03630-010'),
(769, 104, '_height', ''),
(770, 104, '_upsell_ids', 'a:0:{}'),
(771, 104, '_crosssell_ids', 'a:0:{}'),
(772, 104, '_purchase_note', ''),
(773, 104, '_default_attributes', 'a:0:{}'),
(774, 104, '_virtual', 'no'),
(775, 104, '_downloadable', 'no'),
(776, 104, '_product_image_gallery', ''),
(777, 104, '_download_limit', '-1'),
(778, 104, '_download_expiry', '-1'),
(779, 104, '_stock', NULL),
(780, 104, '_stock_status', 'instock'),
(781, 104, '_product_version', '3.4.3'),
(782, 104, '_price', '65'),
(783, 106, '_menu_item_type', 'taxonomy'),
(784, 106, '_menu_item_menu_item_parent', '74'),
(764, 104, '_backorders', 'no'),
(762, 104, '_tax_class', ''),
(749, 104, '_wc_review_count', '1'),
(750, 104, '_wc_rating_count', 'a:1:{i:5;i:1;}'),
(751, 104, '_wc_average_rating', '5.00'),
(752, 104, '_edit_last', '1'),
(753, 104, '_edit_lock', '1530943294:1'),
(754, 104, '_thumbnail_id', '103'),
(755, 104, '_sku', ''),
(756, 104, '_regular_price', '70'),
(757, 104, '_sale_price', '65'),
(758, 104, '_sale_price_dates_from', ''),
(759, 104, '_sale_price_dates_to', ''),
(760, 104, 'total_sales', '4'),
(761, 104, '_tax_status', 'taxable'),
(805, 109, '_sale_price', ''),
(786, 106, '_menu_item_object', 'product_cat'),
(787, 106, '_menu_item_target', ''),
(788, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(789, 106, '_menu_item_xfn', ''),
(790, 106, '_menu_item_url', ''),
(791, 105, '_wp_trash_meta_status', 'publish'),
(792, 105, '_wp_trash_meta_time', '1530943509'),
(803, 109, '_virtual', 'yes'),
(804, 109, '_regular_price', ''),
(801, 109, 'total_sales', '0'),
(802, 109, '_downloadable', 'no'),
(797, 109, '_wc_review_count', '0'),
(798, 109, '_wc_rating_count', 'a:0:{}'),
(799, 109, '_wc_average_rating', '0'),
(800, 109, '_stock_status', 'instock'),
(497, 51, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:206;s:4:\"file\";s:30:\"2018/07/cropped-sunglasses.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-sunglasses-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-sunglasses-300x77.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:77;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cropped-sunglasses-768x198.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"cropped-sunglasses-324x206.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"cropped-sunglasses-416x107.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-sunglasses-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"cropped-sunglasses-324x206.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"cropped-sunglasses-416x107.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-sunglasses-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:19;}'),
(709, 102, '_wp_attached_file', '2018/07/default-1.jpg'),
(711, 103, '_wp_attached_file', '2018/07/pampers.jpg'),
(712, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:19:\"2018/07/pampers.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"pampers-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"pampers-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"pampers-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"pampers-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"pampers-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"pampers-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"pampers-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"pampers-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"pampers-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(496, 51, '_wp_attachment_context', 'custom-header'),
(894, 113, '_billing_last_name', 'Flinco'),
(895, 113, '_billing_company', ''),
(896, 113, '_billing_address_1', 'Rua Cirino de Abreu'),
(495, 51, '_wp_attached_file', '2018/07/cropped-sunglasses.jpg'),
(699, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3795;s:6:\"height\";i:2355;s:4:\"file\";s:21:\"2018/07/default-2.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"default-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"default-2-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"default-2-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"default-2-1024x635.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"default-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"default-2-416x258.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"default-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"default-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"default-2-416x258.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"default-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(698, 97, '_wp_attached_file', '2018/07/default-2.jpg'),
(494, 8, '_edit_lock', '1530835294:1'),
(703, 99, '_wp_attached_file', '2018/07/default.jpg'),
(705, 100, '_wp_attached_file', '2018/07/fraldas.jpg'),
(706, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:19:\"2018/07/fraldas.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"fraldas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"fraldas-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"fraldas-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"fraldas-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"fraldas-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"fraldas-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"fraldas-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"fraldas-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"fraldas-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(71, 26, '_wp_page_template', 'template-homepage.php'),
(765, 104, '_sold_individually', 'no'),
(73, 26, '_customize_changeset_uuid', '6cdfa6a8-833d-43e1-a4e8-c1c2f11cd568'),
(766, 104, '_weight', ''),
(75, 27, '_customize_changeset_uuid', '6cdfa6a8-833d-43e1-a4e8-c1c2f11cd568'),
(870, 112, '_order_shipping_tax', '0'),
(767, 104, '_length', ''),
(830, 110, '_edit_lock', '1530944515:1'),
(768, 104, '_width', ''),
(855, 112, '_billing_email', 'rubens@planetsweb.com.br'),
(785, 106, '_menu_item_object_id', '23'),
(763, 104, '_manage_stock', 'no'),
(704, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:19:\"2018/07/default.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"default-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"default-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"default-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"default-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"default-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"default-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"default-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"default-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"default-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(806, 109, '_purchase_note', ''),
(487, 26, '_edit_last', '1'),
(486, 26, '_edit_lock', '1530942578:1'),
(710, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:21:\"2018/07/default-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"default-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"default-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"default-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"default-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"default-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"default-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"default-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"default-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"default-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(897, 113, '_billing_address_2', ''),
(808, 109, '_weight', ''),
(809, 109, '_length', ''),
(810, 109, '_width', ''),
(811, 109, '_height', ''),
(812, 109, '_sku', ''),
(813, 109, '_product_attributes', 'a:0:{}'),
(814, 109, '_sale_price_dates_from', ''),
(933, 113, '_edit_lock', '1530946550:1'),
(934, 113, '_edit_last', '1'),
(898, 113, '_billing_city', 'São Paulo'),
(899, 113, '_billing_state', 'SP'),
(900, 113, '_billing_postcode', '03630-010'),
(901, 113, '_billing_country', 'BR'),
(902, 113, '_billing_email', 'rubens@planetsweb.com.br'),
(903, 113, '_billing_phone', '11976533875'),
(904, 113, '_shipping_first_name', 'Rubens'),
(905, 113, '_shipping_last_name', 'Flinco'),
(906, 113, '_shipping_company', ''),
(907, 113, '_shipping_address_1', 'Rua Cirino de Abreu'),
(908, 113, '_shipping_address_2', ''),
(909, 113, '_shipping_city', 'São Paulo'),
(910, 113, '_shipping_state', 'SP'),
(911, 113, '_shipping_postcode', '03630-010'),
(912, 113, '_shipping_country', 'BR'),
(913, 113, '_order_currency', 'BRL'),
(914, 113, '_cart_discount', '0'),
(915, 113, '_cart_discount_tax', '0'),
(916, 113, '_order_shipping', '0'),
(917, 113, '_order_shipping_tax', '0'),
(918, 113, '_order_tax', '0'),
(919, 113, '_order_total', '130.00'),
(920, 113, '_order_version', '3.4.3'),
(921, 113, '_prices_include_tax', 'no'),
(922, 113, '_billing_address_index', 'Rubens Flinco  Rua Cirino de Abreu  São Paulo SP 03630-010 BR rubens@planetsweb.com.br 11976533875'),
(923, 113, '_shipping_address_index', 'Rubens Flinco  Rua Cirino de Abreu  São Paulo SP 03630-010 BR'),
(924, 113, '_wallet_cashback', '1'),
(925, 113, '_original_order_amount', '130.00'),
(926, 113, '_via_wallet_payment', '0.00'),
(927, 112, '_edit_lock', '1530946401:1'),
(928, 112, '_edit_last', '1'),
(929, 112, '_download_permissions_granted', 'yes'),
(930, 112, '_recorded_sales', 'yes'),
(931, 112, '_recorded_coupon_usage_counts', 'no'),
(507, 66, '_order_key', 'wc_order_5b4043a7984b1'),
(508, 66, '_customer_user', '1'),
(509, 66, '_payment_method', 'paypal'),
(510, 66, '_payment_method_title', 'PayPal'),
(511, 66, '_transaction_id', ''),
(512, 66, '_customer_ip_address', '201.81.163.54'),
(513, 66, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36'),
(514, 66, '_created_via', 'checkout'),
(515, 66, '_date_completed', ''),
(516, 66, '_completed_date', ''),
(517, 66, '_date_paid', ''),
(518, 66, '_paid_date', ''),
(519, 66, '_cart_hash', 'fcfb2d6db18c302f05d3c18681b02d68'),
(520, 66, '_billing_first_name', 'Rubens'),
(521, 66, '_billing_last_name', 'Flinco'),
(522, 66, '_billing_company', ''),
(523, 66, '_billing_address_1', 'Rua Cirino de Abreu'),
(524, 66, '_billing_address_2', ''),
(525, 66, '_billing_city', 'São Paulo'),
(526, 66, '_billing_state', 'SP'),
(527, 66, '_billing_postcode', '03630-010'),
(528, 66, '_billing_country', 'BR'),
(529, 66, '_billing_email', 'rubens@planetsweb.com.br'),
(530, 66, '_billing_phone', '11976533875'),
(531, 66, '_shipping_first_name', 'Rubens'),
(532, 66, '_shipping_last_name', 'Flinco'),
(533, 66, '_shipping_company', ''),
(534, 66, '_shipping_address_1', 'Rua Cirino de Abreu'),
(535, 66, '_shipping_address_2', ''),
(536, 66, '_shipping_city', 'São Paulo'),
(537, 66, '_shipping_state', 'SP'),
(538, 66, '_shipping_postcode', '03630-010'),
(539, 66, '_shipping_country', 'BR'),
(540, 66, '_order_currency', 'BRL'),
(541, 66, '_cart_discount', '0'),
(542, 66, '_cart_discount_tax', '0'),
(543, 66, '_order_shipping', '30.00'),
(544, 66, '_order_shipping_tax', '0'),
(545, 66, '_order_tax', '0'),
(546, 66, '_order_total', '114.00'),
(547, 66, '_order_version', '3.4.3'),
(548, 66, '_prices_include_tax', 'no'),
(549, 66, '_billing_address_index', 'Rubens Flinco  Rua Cirino de Abreu  São Paulo SP 03630-010 BR rubens@planetsweb.com.br 11976533875'),
(550, 66, '_shipping_address_index', 'Rubens Flinco  Rua Cirino de Abreu  São Paulo SP 03630-010 BR'),
(667, 85, '_menu_item_target', ''),
(555, 69, '_menu_item_type', 'custom'),
(556, 69, '_menu_item_menu_item_parent', '0'),
(557, 69, '_menu_item_object_id', '69'),
(558, 69, '_menu_item_object', 'custom'),
(559, 69, '_menu_item_target', ''),
(560, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(561, 69, '_menu_item_xfn', ''),
(562, 69, '_menu_item_url', 'http://projeto.planetsweb.com.br/lookaer'),
(563, 70, '_menu_item_type', 'post_type'),
(564, 70, '_menu_item_menu_item_parent', '0'),
(565, 70, '_menu_item_object_id', '9'),
(566, 70, '_menu_item_object', 'page'),
(567, 70, '_menu_item_target', ''),
(568, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(569, 70, '_menu_item_xfn', ''),
(570, 70, '_menu_item_url', ''),
(839, 112, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36'),
(838, 112, '_customer_ip_address', '201.81.163.54'),
(837, 112, '_transaction_id', ''),
(836, 112, '_payment_method_title', 'PayPal'),
(835, 112, '_payment_method', 'paypal'),
(834, 112, '_customer_user', '2'),
(833, 112, '_order_key', 'wc_order_5b4061e0ed57a'),
(832, 110, '_wp_trash_meta_time', '1530944537'),
(831, 110, '_wp_trash_meta_status', 'publish'),
(587, 73, '_menu_item_type', 'post_type'),
(588, 73, '_menu_item_menu_item_parent', '0'),
(589, 73, '_menu_item_object_id', '27'),
(590, 73, '_menu_item_object', 'page'),
(591, 73, '_menu_item_target', ''),
(592, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(593, 73, '_menu_item_xfn', ''),
(594, 73, '_menu_item_url', ''),
(595, 74, '_menu_item_type', 'post_type'),
(596, 74, '_menu_item_menu_item_parent', '0'),
(597, 74, '_menu_item_object_id', '6'),
(598, 74, '_menu_item_object', 'page'),
(599, 74, '_menu_item_target', ''),
(600, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(601, 74, '_menu_item_xfn', ''),
(602, 74, '_menu_item_url', ''),
(666, 85, '_menu_item_object', 'product_cat'),
(665, 85, '_menu_item_object_id', '22'),
(664, 85, '_menu_item_menu_item_parent', '74'),
(663, 85, '_menu_item_type', 'taxonomy'),
(613, 78, '_menu_item_type', 'custom'),
(614, 78, '_menu_item_menu_item_parent', '70'),
(615, 78, '_menu_item_object_id', '78'),
(616, 78, '_menu_item_object', 'custom'),
(617, 78, '_menu_item_target', ''),
(618, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(619, 78, '_menu_item_xfn', ''),
(620, 78, '_menu_item_url', 'http://projeto.planetsweb.com.br/lookaer/minha-conta/lost-password/'),
(621, 79, '_menu_item_type', 'custom'),
(622, 79, '_menu_item_menu_item_parent', '70'),
(623, 79, '_menu_item_object_id', '79'),
(624, 79, '_menu_item_object', 'custom'),
(625, 79, '_menu_item_target', ''),
(626, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(627, 79, '_menu_item_xfn', ''),
(628, 79, '_menu_item_url', 'http://projeto.planetsweb.com.br/lookaer/minha-conta/customer-logout/?_wpnonce=49ebd9ba8e'),
(629, 80, '_menu_item_type', 'custom'),
(630, 80, '_menu_item_menu_item_parent', '70'),
(631, 80, '_menu_item_object_id', '80'),
(632, 80, '_menu_item_object', 'custom'),
(633, 80, '_menu_item_target', ''),
(634, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(635, 80, '_menu_item_xfn', ''),
(636, 80, '_menu_item_url', 'http://projeto.planetsweb.com.br/lookaer/minha-conta/edit-account/'),
(637, 81, '_menu_item_type', 'custom'),
(638, 81, '_menu_item_menu_item_parent', '70'),
(639, 81, '_menu_item_object_id', '81'),
(640, 81, '_menu_item_object', 'custom'),
(641, 81, '_menu_item_target', ''),
(642, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(643, 81, '_menu_item_xfn', ''),
(644, 81, '_menu_item_url', 'http://projeto.planetsweb.com.br/lookaer/minha-conta/edit-address/'),
(645, 82, '_menu_item_type', 'custom'),
(646, 82, '_menu_item_menu_item_parent', '70'),
(647, 82, '_menu_item_object_id', '82'),
(648, 82, '_menu_item_object', 'custom'),
(649, 82, '_menu_item_target', ''),
(650, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(651, 82, '_menu_item_xfn', ''),
(652, 82, '_menu_item_url', 'http://projeto.planetsweb.com.br/lookaer/minha-conta/downloads/'),
(653, 83, '_menu_item_type', 'custom'),
(654, 83, '_menu_item_menu_item_parent', '70'),
(655, 83, '_menu_item_object_id', '83'),
(656, 83, '_menu_item_object', 'custom'),
(657, 83, '_menu_item_target', ''),
(658, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(659, 83, '_menu_item_xfn', ''),
(660, 83, '_menu_item_url', 'http://projeto.planetsweb.com.br/lookaer/minha-conta/orders/'),
(668, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(669, 85, '_menu_item_xfn', ''),
(670, 85, '_menu_item_url', ''),
(679, 6, '_edit_lock', '1530939714:1'),
(680, 3, '_edit_last', '1'),
(681, 3, '_edit_lock', '1530939886:1'),
(893, 113, '_billing_first_name', 'Rubens'),
(700, 98, '_wp_attached_file', '2018/07/megapromocaopampers.jpg'),
(701, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3795;s:6:\"height\";i:2355;s:4:\"file\";s:31:\"2018/07/megapromocaopampers.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"megapromocaopampers-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"megapromocaopampers-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"megapromocaopampers-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"megapromocaopampers-1024x635.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"megapromocaopampers-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"megapromocaopampers-416x258.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"megapromocaopampers-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"megapromocaopampers-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"megapromocaopampers-416x258.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"megapromocaopampers-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(702, 26, '_thumbnail_id', '98'),
(871, 112, '_order_tax', '0'),
(872, 112, '_order_total', '65.00'),
(873, 112, '_order_version', '3.4.3'),
(874, 112, '_prices_include_tax', 'no'),
(875, 112, '_billing_address_index', 'Rubens Flinco  Rua Cirino de Abreu  São Paulo SP 03630-010 BR rubens@planetsweb.com.br 11976533875'),
(876, 112, '_shipping_address_index', 'Rubens Flinco  Rua Cirino de Abreu  São Paulo SP 03630-010 BR'),
(877, 112, '_wallet_cashback', '0.65'),
(878, 112, '_original_order_amount', '65.00'),
(879, 112, '_via_wallet_payment', '0.00'),
(880, 113, '_order_key', 'wc_order_5b4063b165386'),
(881, 113, '_customer_user', '1'),
(882, 113, '_payment_method', 'paypal'),
(883, 113, '_payment_method_title', 'PayPal'),
(884, 113, '_transaction_id', ''),
(885, 113, '_customer_ip_address', '201.81.163.54'),
(886, 113, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36'),
(887, 113, '_created_via', 'checkout'),
(888, 113, '_date_completed', '1530946556'),
(889, 113, '_completed_date', '2018-07-07 06:55:56'),
(890, 113, '_date_paid', ''),
(891, 113, '_paid_date', ''),
(892, 113, '_cart_hash', '264e1c6c4e8512bdfccac93201120a6b'),
(1183, 131, '_payment_method', 'paypal'),
(1182, 131, '_customer_user', '1'),
(1181, 131, '_order_key', 'wc_order_5b439126d7bb7'),
(935, 113, '_download_permissions_granted', 'yes'),
(936, 113, '_recorded_sales', 'yes'),
(937, 113, '_recorded_coupon_usage_counts', 'yes'),
(938, 113, '_general_cashback_transaction_id', '3'),
(939, 114, '_wc_review_count', '0'),
(940, 114, '_wc_rating_count', 'a:0:{}'),
(941, 114, '_wc_average_rating', '0'),
(942, 114, '_edit_lock', '1530946719:1'),
(943, 115, '_wp_attached_file', '2018/07/fraldas-huggies-turma-da-monica-tripla-protecao-g-48un-mais-4un-gratis_detalhe.jpg'),
(944, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:90:\"2018/07/fraldas-huggies-turma-da-monica-tripla-protecao-g-48un-mais-4un-gratis_detalhe.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:90:\"fraldas-huggies-turma-da-monica-tripla-protecao-g-48un-mais-4un-gratis_detalhe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:90:\"fraldas-huggies-turma-da-monica-tripla-protecao-g-48un-mais-4un-gratis_detalhe-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:90:\"fraldas-huggies-turma-da-monica-tripla-protecao-g-48un-mais-4un-gratis_detalhe-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(945, 114, '_edit_last', '1'),
(946, 114, '_thumbnail_id', '115'),
(947, 114, '_sku', ''),
(948, 114, '_regular_price', '47.78'),
(949, 114, '_sale_price', '42.90'),
(950, 114, '_sale_price_dates_from', ''),
(951, 114, '_sale_price_dates_to', ''),
(952, 114, 'total_sales', '1'),
(953, 114, '_tax_status', 'taxable'),
(954, 114, '_tax_class', ''),
(955, 114, '_manage_stock', 'no'),
(956, 114, '_backorders', 'no'),
(957, 114, '_sold_individually', 'no'),
(958, 114, '_weight', ''),
(959, 114, '_length', ''),
(960, 114, '_width', ''),
(961, 114, '_height', ''),
(962, 114, '_upsell_ids', 'a:0:{}'),
(963, 114, '_crosssell_ids', 'a:0:{}'),
(964, 114, '_purchase_note', ''),
(965, 114, '_default_attributes', 'a:0:{}'),
(966, 114, '_virtual', 'no'),
(967, 114, '_downloadable', 'no'),
(968, 114, '_product_image_gallery', ''),
(969, 114, '_download_limit', '-1'),
(970, 114, '_download_expiry', '-1'),
(971, 114, '_stock', NULL),
(972, 114, '_stock_status', 'instock'),
(973, 114, '_product_version', '3.4.3'),
(974, 114, '_price', '42.90'),
(975, 116, '_wc_review_count', '0'),
(976, 116, '_wc_rating_count', 'a:0:{}'),
(977, 116, '_wc_average_rating', '0'),
(978, 116, '_edit_lock', '1530946824:1'),
(979, 116, '_edit_last', '1'),
(980, 117, '_wp_attached_file', '2018/07/kit-fraldas-huggies-turma-da-monica-tripla-protecao-m-5-x-58un_detalhe.jpg'),
(981, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:82:\"2018/07/kit-fraldas-huggies-turma-da-monica-tripla-protecao-m-5-x-58un_detalhe.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:82:\"kit-fraldas-huggies-turma-da-monica-tripla-protecao-m-5-x-58un_detalhe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:82:\"kit-fraldas-huggies-turma-da-monica-tripla-protecao-m-5-x-58un_detalhe-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:82:\"kit-fraldas-huggies-turma-da-monica-tripla-protecao-m-5-x-58un_detalhe-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(982, 116, '_thumbnail_id', '117'),
(983, 116, '_sku', ''),
(984, 116, '_regular_price', '241.60'),
(985, 116, '_sale_price', '184.90'),
(986, 116, '_sale_price_dates_from', ''),
(987, 116, '_sale_price_dates_to', ''),
(988, 116, 'total_sales', '1'),
(989, 116, '_tax_status', 'taxable'),
(990, 116, '_tax_class', ''),
(991, 116, '_manage_stock', 'no'),
(992, 116, '_backorders', 'no'),
(993, 116, '_sold_individually', 'no'),
(994, 116, '_weight', ''),
(995, 116, '_length', ''),
(996, 116, '_width', ''),
(997, 116, '_height', ''),
(998, 116, '_upsell_ids', 'a:0:{}'),
(999, 116, '_crosssell_ids', 'a:0:{}'),
(1000, 116, '_purchase_note', ''),
(1001, 116, '_default_attributes', 'a:0:{}'),
(1002, 116, '_virtual', 'no'),
(1003, 116, '_downloadable', 'no'),
(1004, 116, '_product_image_gallery', ''),
(1005, 116, '_download_limit', '-1'),
(1006, 116, '_download_expiry', '-1'),
(1007, 116, '_stock', NULL),
(1008, 116, '_stock_status', 'instock'),
(1009, 116, '_product_version', '3.4.3'),
(1010, 116, '_price', '184.90'),
(1011, 118, '_wc_review_count', '0'),
(1012, 118, '_wc_rating_count', 'a:0:{}'),
(1013, 118, '_wc_average_rating', '0'),
(1014, 118, '_edit_lock', '1530947195:1'),
(1015, 118, '_edit_last', '1'),
(1016, 119, '_wp_attached_file', '2018/07/fraldas-capricho-rei-leao-hiper-p-80un_detalhe.jpg'),
(1017, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:58:\"2018/07/fraldas-capricho-rei-leao-hiper-p-80un_detalhe.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"fraldas-capricho-rei-leao-hiper-p-80un_detalhe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:58:\"fraldas-capricho-rei-leao-hiper-p-80un_detalhe-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:58:\"fraldas-capricho-rei-leao-hiper-p-80un_detalhe-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1018, 118, '_thumbnail_id', '119'),
(1019, 118, '_sku', ''),
(1020, 118, '_regular_price', '42.59'),
(1021, 118, '_sale_price', ''),
(1022, 118, '_sale_price_dates_from', ''),
(1023, 118, '_sale_price_dates_to', ''),
(1024, 118, 'total_sales', '0'),
(1025, 118, '_tax_status', 'taxable'),
(1026, 118, '_tax_class', ''),
(1027, 118, '_manage_stock', 'no'),
(1028, 118, '_backorders', 'no'),
(1029, 118, '_sold_individually', 'no'),
(1030, 118, '_weight', ''),
(1031, 118, '_length', ''),
(1032, 118, '_width', ''),
(1033, 118, '_height', ''),
(1034, 118, '_upsell_ids', 'a:0:{}'),
(1035, 118, '_crosssell_ids', 'a:0:{}'),
(1036, 118, '_purchase_note', ''),
(1037, 118, '_default_attributes', 'a:0:{}'),
(1038, 118, '_virtual', 'no'),
(1039, 118, '_downloadable', 'no'),
(1040, 118, '_product_image_gallery', ''),
(1041, 118, '_download_limit', '-1'),
(1042, 118, '_download_expiry', '-1'),
(1043, 118, '_stock', NULL),
(1044, 118, '_stock_status', 'instock'),
(1045, 118, '_product_version', '3.4.3'),
(1046, 118, '_price', '42.59'),
(1047, 120, '_wc_review_count', '0'),
(1048, 120, '_wc_rating_count', 'a:0:{}'),
(1049, 120, '_wc_average_rating', '0'),
(1050, 120, '_edit_lock', '1530947515:1'),
(1051, 120, '_edit_last', '1'),
(1052, 121, '_wp_attached_file', '2018/07/10412810534942.jpg'),
(1053, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:86;s:6:\"height\";i:86;s:4:\"file\";s:26:\"2018/07/10412810534942.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1054, 120, '_thumbnail_id', '121'),
(1055, 120, '_sku', ''),
(1056, 120, '_regular_price', '269.90'),
(1057, 120, '_sale_price', '250'),
(1058, 120, '_sale_price_dates_from', ''),
(1059, 120, '_sale_price_dates_to', ''),
(1060, 120, 'total_sales', '1'),
(1061, 120, '_tax_status', 'taxable'),
(1062, 120, '_tax_class', ''),
(1063, 120, '_manage_stock', 'no'),
(1064, 120, '_backorders', 'no'),
(1065, 120, '_sold_individually', 'no'),
(1066, 120, '_weight', ''),
(1067, 120, '_length', ''),
(1068, 120, '_width', ''),
(1069, 120, '_height', ''),
(1070, 120, '_upsell_ids', 'a:0:{}'),
(1071, 120, '_crosssell_ids', 'a:0:{}'),
(1072, 120, '_purchase_note', ''),
(1073, 120, '_default_attributes', 'a:0:{}'),
(1074, 120, '_virtual', 'no'),
(1075, 120, '_downloadable', 'no'),
(1076, 120, '_product_image_gallery', ''),
(1077, 120, '_download_limit', '-1'),
(1078, 120, '_download_expiry', '-1'),
(1079, 120, '_stock', NULL),
(1080, 120, '_stock_status', 'instock'),
(1081, 120, '_product_version', '3.4.3'),
(1082, 120, '_price', '250'),
(1083, 122, '_edit_lock', '1530947566:1'),
(1084, 123, '_menu_item_type', 'custom'),
(1085, 123, '_menu_item_menu_item_parent', '70'),
(1086, 123, '_menu_item_object_id', '123'),
(1087, 123, '_menu_item_object', 'custom'),
(1088, 123, '_menu_item_target', ''),
(1089, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1090, 123, '_menu_item_xfn', ''),
(1091, 123, '_menu_item_url', 'http://projeto.planetsweb.com.br/lookaer/minha-conta/woo-wallet/'),
(1092, 122, '_wp_trash_meta_status', 'publish'),
(1093, 122, '_wp_trash_meta_time', '1530947569'),
(1094, 124, '_wp_trash_meta_status', 'publish'),
(1095, 124, '_wp_trash_meta_time', '1530947594'),
(1096, 125, '_edit_lock', '1530947640:1'),
(1097, 125, '_edit_last', '1'),
(1098, 125, 'discount_type', 'fixed_product'),
(1099, 125, 'coupon_amount', '2'),
(1100, 125, 'individual_use', 'no'),
(1101, 125, 'product_ids', ''),
(1102, 125, 'exclude_product_ids', ''),
(1103, 125, 'usage_limit', '0'),
(1104, 125, 'usage_limit_per_user', '0'),
(1105, 125, 'limit_usage_to_x_items', '0'),
(1106, 125, 'usage_count', '1'),
(1107, 125, 'date_expires', '1531008000'),
(1108, 125, 'expiry_date', '2018-07-08'),
(1109, 125, 'free_shipping', 'no'),
(1110, 125, 'product_categories', 'a:0:{}'),
(1111, 125, 'exclude_product_categories', 'a:0:{}'),
(1112, 125, 'exclude_sale_items', 'no'),
(1113, 125, 'minimum_amount', ''),
(1114, 125, 'maximum_amount', ''),
(1115, 125, 'customer_email', 'a:0:{}'),
(1116, 125, '_is_coupon_cashback', 'no'),
(1117, 126, '_order_key', 'wc_order_5b4069070de71'),
(1118, 126, '_customer_user', '1'),
(1119, 126, '_payment_method', 'paypal'),
(1120, 126, '_payment_method_title', 'PayPal'),
(1121, 126, '_transaction_id', ''),
(1122, 126, '_customer_ip_address', '201.81.163.54'),
(1123, 126, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36'),
(1124, 126, '_created_via', 'checkout'),
(1125, 126, '_date_completed', '1530947866'),
(1126, 126, '_completed_date', '2018-07-07 07:17:46'),
(1127, 126, '_date_paid', ''),
(1128, 126, '_paid_date', ''),
(1129, 126, '_cart_hash', '395f3b370e8b8ea6024d5de96f43867e'),
(1130, 126, '_billing_first_name', 'Rubens'),
(1131, 126, '_billing_last_name', 'Flinco'),
(1132, 126, '_billing_company', ''),
(1133, 126, '_billing_address_1', 'Rua Cirino de Abreu'),
(1134, 126, '_billing_address_2', ''),
(1135, 126, '_billing_city', 'São Paulo'),
(1136, 126, '_billing_state', 'SP'),
(1137, 126, '_billing_postcode', '03630-010'),
(1138, 126, '_billing_country', 'BR'),
(1139, 126, '_billing_email', 'rubens@planetsweb.com.br'),
(1140, 126, '_billing_phone', '11976533875'),
(1141, 126, '_shipping_first_name', 'Rubens'),
(1142, 126, '_shipping_last_name', 'Flinco'),
(1143, 126, '_shipping_company', ''),
(1144, 126, '_shipping_address_1', 'Rua Cirino de Abreu'),
(1145, 126, '_shipping_address_2', ''),
(1146, 126, '_shipping_city', 'São Paulo'),
(1147, 126, '_shipping_state', 'SP'),
(1148, 126, '_shipping_postcode', '03630-010'),
(1149, 126, '_shipping_country', 'BR'),
(1150, 126, '_order_currency', 'BRL'),
(1151, 126, '_cart_discount', '8'),
(1152, 126, '_cart_discount_tax', '0'),
(1153, 126, '_order_shipping', '0'),
(1154, 126, '_order_shipping_tax', '0'),
(1155, 126, '_order_tax', '0'),
(1156, 126, '_order_total', '534.80'),
(1157, 126, '_order_version', '3.4.3'),
(1158, 126, '_prices_include_tax', 'no'),
(1159, 126, '_billing_address_index', 'Rubens Flinco  Rua Cirino de Abreu  São Paulo SP 03630-010 BR rubens@planetsweb.com.br 11976533875'),
(1160, 126, '_shipping_address_index', 'Rubens Flinco  Rua Cirino de Abreu  São Paulo SP 03630-010 BR'),
(1161, 126, '_wallet_cashback', '3.079'),
(1162, 126, '_original_order_amount', '534.80'),
(1163, 126, '_via_wallet_payment', '1.00'),
(1164, 126, '_edit_lock', '1530947933:1'),
(1165, 126, '_edit_last', '1'),
(1166, 126, '_download_permissions_granted', 'yes'),
(1167, 126, '_recorded_sales', 'yes'),
(1168, 126, '_recorded_coupon_usage_counts', 'yes'),
(1169, 125, '_used_by', '1'),
(1170, 126, '_partial_pay_through_wallet_compleate', '4'),
(1171, 126, '_general_cashback_transaction_id', '5'),
(1172, 1, '_edit_lock', '1530947994:1'),
(1173, 1, '_edit_last', '1'),
(1177, 128, '_edit_last', '1'),
(1176, 128, '_edit_lock', '1530948153:1'),
(1178, 128, '_thumbnail_id', '117'),
(1184, 131, '_payment_method_title', 'PayPal'),
(1185, 131, '_transaction_id', ''),
(1186, 131, '_customer_ip_address', '201.81.163.54'),
(1187, 131, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36'),
(1188, 131, '_created_via', 'checkout'),
(1189, 131, '_date_completed', ''),
(1190, 131, '_completed_date', ''),
(1191, 131, '_date_paid', ''),
(1192, 131, '_paid_date', ''),
(1193, 131, '_cart_hash', '7e282b038f23ff4304d878eb1634c888'),
(1194, 131, '_billing_first_name', 'Rubens'),
(1195, 131, '_billing_last_name', 'Flinco'),
(1196, 131, '_billing_company', ''),
(1197, 131, '_billing_address_1', 'Rua Cirino de Abreu'),
(1198, 131, '_billing_address_2', ''),
(1199, 131, '_billing_city', 'São Paulo'),
(1200, 131, '_billing_state', 'SP'),
(1201, 131, '_billing_postcode', '03630-010'),
(1202, 131, '_billing_country', 'BR'),
(1203, 131, '_billing_email', 'rubens@planetsweb.com.br'),
(1204, 131, '_billing_phone', '11976533875'),
(1205, 131, '_shipping_first_name', 'Rubens'),
(1206, 131, '_shipping_last_name', 'Flinco'),
(1207, 131, '_shipping_company', ''),
(1208, 131, '_shipping_address_1', 'Rua Cirino de Abreu'),
(1209, 131, '_shipping_address_2', ''),
(1210, 131, '_shipping_city', 'São Paulo'),
(1211, 131, '_shipping_state', 'SP'),
(1212, 131, '_shipping_postcode', '03630-010'),
(1213, 131, '_shipping_country', 'BR'),
(1214, 131, '_order_currency', 'BRL'),
(1215, 131, '_cart_discount', '0'),
(1216, 131, '_cart_discount_tax', '0'),
(1217, 131, '_order_shipping', '0.00'),
(1218, 131, '_order_shipping_tax', '0'),
(1219, 131, '_order_tax', '0'),
(1220, 131, '_order_total', '181.82'),
(1221, 131, '_order_version', '3.4.3'),
(1222, 131, '_prices_include_tax', 'no'),
(1223, 131, '_billing_address_index', 'Rubens Flinco  Rua Cirino de Abreu  São Paulo SP 03630-010 BR rubens@planetsweb.com.br 11976533875'),
(1224, 131, '_shipping_address_index', 'Rubens Flinco  Rua Cirino de Abreu  São Paulo SP 03630-010 BR'),
(1225, 131, '_wallet_cashback', '1'),
(1226, 131, '_original_order_amount', '184.90'),
(1227, 131, '_via_wallet_payment', '3.08'),
(1228, 132, '_order_key', 'wc_order_5b439d8b7ec9f'),
(1229, 132, '_customer_user', '3'),
(1230, 132, '_payment_method', 'paypal'),
(1231, 132, '_payment_method_title', 'PayPal'),
(1232, 132, '_transaction_id', ''),
(1233, 132, '_customer_ip_address', '187.65.242.12'),
(1234, 132, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36'),
(1235, 132, '_created_via', 'checkout'),
(1236, 132, '_date_completed', ''),
(1237, 132, '_completed_date', ''),
(1238, 132, '_date_paid', ''),
(1239, 132, '_paid_date', ''),
(1240, 132, '_cart_hash', '61c6828a586714053b92b2f11b091044'),
(1241, 132, '_billing_first_name', 'papa'),
(1242, 132, '_billing_last_name', 'papa'),
(1243, 132, '_billing_company', ''),
(1244, 132, '_billing_address_1', 'rua do papa'),
(1245, 132, '_billing_address_2', 'numero pa'),
(1246, 132, '_billing_city', 'papa'),
(1247, 132, '_billing_state', 'SC'),
(1248, 132, '_billing_postcode', '90909-090'),
(1249, 132, '_billing_country', 'BR'),
(1250, 132, '_billing_email', 'pa@pa.com'),
(1251, 132, '_billing_phone', '9090909090'),
(1252, 132, '_shipping_first_name', 'papa'),
(1253, 132, '_shipping_last_name', 'papa'),
(1254, 132, '_shipping_company', ''),
(1255, 132, '_shipping_address_1', 'rua do papa'),
(1256, 132, '_shipping_address_2', 'numero pa'),
(1257, 132, '_shipping_city', 'papa'),
(1258, 132, '_shipping_state', 'SC'),
(1259, 132, '_shipping_postcode', '90909090'),
(1260, 132, '_shipping_country', 'BR'),
(1261, 132, '_order_currency', 'BRL'),
(1262, 132, '_cart_discount', '0'),
(1263, 132, '_cart_discount_tax', '0'),
(1264, 132, '_order_shipping', '0.00'),
(1265, 132, '_order_shipping_tax', '0'),
(1266, 132, '_order_tax', '0'),
(1267, 132, '_order_total', '227.80'),
(1268, 132, '_order_version', '3.4.3'),
(1269, 132, '_prices_include_tax', 'no'),
(1270, 132, '_billing_address_index', 'papa papa  rua do papa numero pa papa SC 90909-090 BR pa@pa.com 9090909090'),
(1271, 132, '_shipping_address_index', 'papa papa  rua do papa numero pa papa SC 90909090 BR'),
(1272, 132, '_wallet_cashback', '1.429'),
(1273, 132, '_original_order_amount', '227.80'),
(1274, 132, '_via_wallet_payment', '0.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_posts`
--

CREATE TABLE `wplook_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wplook_posts`
--

INSERT INTO `wplook_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-05 23:18:42', '2018-07-05 23:18:42', 'Bem vindo(a) a Look Aer ™  é a sua loja virtual com a melhor qualidade de fraldas para bebês.', 'Bem vindo(a)', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-07-07 07:21:56', '2018-07-07 07:21:56', '', 0, 'http://projeto.planetsweb.com.br//lookaer/?p=1', 0, 'post', '', 1),
(3, 1, '2018-07-05 23:18:42', '2018-07-05 23:18:42', '<h2>Quem somos</h2>\r\nO endereço do nosso site é: http://projeto.planetsweb.com.br/lookaer.\r\n<h2>Quais dados pessoais coletamos e por que os coletamos</h2>\r\n<h3>Comentários</h3>\r\nQuando os visitantes deixam comentários no site, coletamos os dados exibidos no formulário de comentários e também o endereço IP do visitante e a string do agente do usuário do navegador para ajudar na detecção de spam.\r\n\r\nUma string anonimizada criada a partir do seu endereço de e-mail (também chamado de hash) pode ser fornecida ao serviço Gravatar para ver se você está usando. A política de privacidade do serviço Gravatar está disponível aqui: https://automattic.com/privacy/. Após a aprovação do seu comentário, a foto do seu perfil ficará visível para o público no contexto do seu comentário.\r\n<h3>Mídia</h3>\r\nSe você fizer upload de imagens para o site, evite o upload de imagens com dados de localização incorporados (EXIF GPS) incluídos. Os visitantes do site podem baixar e extrair quaisquer dados de localização de imagens no site.\r\n<h3>Formulários de contato</h3>\r\n<h3>Cookies</h3>\r\nSe você deixar um comentário em nosso site, você pode optar por salvar seu nome, endereço de e-mail e site em cookies. Estes são para sua conveniência, para que você não precise preencher seus dados novamente quando deixar outro comentário. Esses cookies durarão um ano.\r\n\r\nSe você tiver uma conta e fizer login neste site, definiremos um cookie temporário para determinar se seu navegador aceita cookies. Este cookie não contém dados pessoais e é descartado quando você fecha o navegador.\r\n\r\nQuando você fizer login, também configuraremos vários cookies para salvar suas informações de login e suas opções de exibição na tela. Os cookies de login duram dois dias e os cookies de opções de tela duram um ano. Se você selecionar \"Lembrar de Mim\", seu login persistirá por duas semanas. Se você sair da sua conta, os cookies de login serão removidos.\r\n\r\nSe você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui dados pessoais e simplesmente indica o ID do post que você acabou de editar. Expira após 1 dia.\r\n<h3>Conteúdo incorporado de outros websites</h3>\r\nOs artigos neste site podem incluir conteúdo incorporado (por exemplo, vídeos, imagens, artigos, etc.). O conteúdo incorporado de outros sites se comporta exatamente da mesma maneira como se o visitante tivesse visitado o outro site.\r\n\r\nEsses sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com esse conteúdo incorporado, incluindo rastrear sua interação com o conteúdo incorporado se você tiver uma conta e estiver conectado a esse site.\r\n<h3>Analytics</h3>\r\n<h2>Quem compartilha seus dados com</h2>\r\n<h2>Por quanto tempo retemos seus dados</h2>\r\nSe você deixar um comentário, o comentário e seus metadados serão retidos indefinidamente. Isso é para que possamos reconhecer e aprovar quaisquer comentários de acompanhamento automaticamente, em vez de mantê-los em uma fila de moderação.\r\n\r\nPara usuários que se registram em nosso site (se houver), também armazenamos as informações pessoais que eles fornecem em seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (exceto que não podem alterar seu nome de usuário). Administradores de sites também podem ver e editar essas informações.\r\n<h2>Quais direitos você tem sobre seus dados</h2>\r\nSe você tiver uma conta neste site ou tiver deixado comentários, poderá solicitar o recebimento de um arquivo exportado dos dados pessoais que mantemos sobre você, incluindo quaisquer dados que você nos forneceu. Você também pode solicitar que apague quaisquer dados pessoais que tenhamos sobre você. Isso não inclui quaisquer dados que somos obrigados a manter para fins administrativos, legais ou de segurança.\r\n<h2>Para onde enviamos seus dados</h2>\r\nOs comentários dos visitantes podem ser verificados através de um serviço automatizado de detecção de spam.\r\n<h2>Suas informações de contato</h2>\r\n<h2>Informações adicionais</h2>\r\n<h3>Como protegemos seus dados</h3>\r\n<h3>Quais procedimentos de violação de dados são implementados</h3>\r\n<h3>Quais são os terceiros que recebem dados de</h3>\r\n<h3>O que a tomada de decisão automatizada e / ou a criação de perfil fazemos com os dados do usuário</h3>\r\n<h3>Requisitos regulamentares de divulgação da indústria</h3>', 'Política de Privacidade', '', 'publish', 'closed', 'closed', '', 'politica-de-privacidade', '', '', '2018-07-07 05:06:21', '2018-07-07 05:06:21', '', 0, 'http://projeto.planetsweb.com.br//lookaer/?page_id=3', 0, 'page', '', 0),
(6, 1, '2018-07-05 23:22:28', '2018-07-05 23:22:28', '', 'Loja', '', 'publish', 'closed', 'closed', '', 'loja', '', '', '2018-07-05 23:22:28', '2018-07-05 23:22:28', '', 0, 'http://projeto.planetsweb.com.br//lookaer/loja/', 0, 'page', '', 0),
(7, 1, '2018-07-05 23:22:28', '2018-07-05 23:22:28', '[woocommerce_cart]', 'Carrinho', '', 'publish', 'closed', 'closed', '', 'carrinho', '', '', '2018-07-05 23:22:28', '2018-07-05 23:22:28', '', 0, 'http://projeto.planetsweb.com.br//lookaer/carrinho/', 0, 'page', '', 0),
(8, 1, '2018-07-05 23:22:28', '2018-07-05 23:22:28', '[woocommerce_checkout]', 'Finalizar compras', '', 'publish', 'closed', 'closed', '', 'finalizar-compra', '', '', '2018-07-05 23:22:28', '2018-07-05 23:22:28', '', 0, 'http://projeto.planetsweb.com.br//lookaer/finalizar-compra/', 0, 'page', '', 0),
(9, 1, '2018-07-05 23:22:28', '2018-07-05 23:22:28', '[woocommerce_my_account]', 'Minha conta', '', 'publish', 'closed', 'closed', '', 'minha-conta', '', '', '2018-07-05 23:22:28', '2018-07-05 23:22:28', '', 0, 'http://projeto.planetsweb.com.br//lookaer/minha-conta/', 0, 'page', '', 0),
(105, 1, '2018-07-07 06:05:09', '2018-07-07 06:05:09', '{\n    \"nav_menu_item[73]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 27,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"P\\u00e1gina\",\n            \"url\": \"http://projeto.planetsweb.com.br/lookaer/blog/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 20,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-07 06:05:09\"\n    },\n    \"nav_menu_item[-1357820783130513400]\": {\n        \"value\": {\n            \"object_id\": 23,\n            \"object\": \"product_cat\",\n            \"menu_item_parent\": 74,\n            \"position\": 4,\n            \"type\": \"taxonomy\",\n            \"title\": \"Fraldas\",\n            \"url\": \"http://projeto.planetsweb.com.br/lookaer/categoria-produto/fraldas/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Fraldas\",\n            \"nav_menu_term_id\": 20,\n            \"_invalid\": false,\n            \"type_label\": \"Categoria\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-07 06:05:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '34359ae7-14ce-4f52-a4aa-2d5f091c5810', '', '', '2018-07-07 06:05:09', '2018-07-07 06:05:09', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/34359ae7-14ce-4f52-a4aa-2d5f091c5810/', 0, 'customize_changeset', '', 0),
(103, 1, '2018-07-07 05:52:44', '2018-07-07 05:52:44', '', 'pampers', '', 'inherit', 'open', 'closed', '', 'pampers', '', '', '2018-07-07 05:52:44', '2018-07-07 05:52:44', '', 0, 'http://projeto.planetsweb.com.br/lookaer/wp-content/uploads/2018/07/pampers.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2018-07-07 05:52:35', '2018-07-07 05:52:35', '', 'default', '', 'inherit', 'open', 'closed', '', 'default-2', '', '', '2018-07-07 05:52:35', '2018-07-07 05:52:35', '', 0, 'http://projeto.planetsweb.com.br/lookaer/wp-content/uploads/2018/07/default-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2018-07-07 05:56:33', '2018-07-07 05:56:33', 'A <strong>Fralda Descartável Pampers Confort Sec Bag Giga G 70 Unidades</strong> conta com ajuste confortável e flexível, de forma a adaptar-se ao corpinho do bebê, proporcionando maior comodidade e segurança. Suave como o algodão, a fralda garante um toque macio a pele delicada dos pequenos. Graças a camada ultra absorvente, a pele do seu bebê estará muito mais protegida e...', 'Fralda Descartável Pampers Confort Sec Bag Giga G 70 Unidades', 'A <strong>Fralda Descartável Pampers Confort Sec Bag Giga G 70 Unidades</strong> conta com ajuste confortável e flexível, de forma a adaptar-se ao corpinho do bebê, proporcionando maior comodidade e segurança. Suave como o algodão, a fralda garante um toque macio a pele delicada dos pequenos. Graças a camada ultra absorvente, a pele do seu bebê estará muito mais protegida e...', 'publish', 'open', 'closed', '', 'fralda-descartavel-pampers-confort-sec-bag-giga-g-70-unidades', '', '', '2018-07-07 06:00:03', '2018-07-07 06:00:03', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=product&#038;p=104', 0, 'product', '', 1),
(100, 1, '2018-07-07 05:52:30', '2018-07-07 05:52:30', '', 'fraldas', '', 'inherit', 'open', 'closed', '', 'fraldas', '', '', '2018-07-07 05:52:30', '2018-07-07 05:52:30', '', 0, 'http://projeto.planetsweb.com.br/lookaer/wp-content/uploads/2018/07/fraldas.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-07-05 23:40:50', '2018-07-05 23:40:50', '<p style=\"text-align: center;\">Look Aer ™  é a sua loja virtual com a melhor qualidade de fraldas para bebês.</p>\r\n<p style=\"text-align: center;\"><strong>Confira alguns produtos:</strong></p>', 'Look Aer ™', '', 'publish', 'closed', 'closed', '', 'welcome', '', '', '2018-07-07 05:51:55', '2018-07-07 05:51:55', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-07-05 23:40:50', '2018-07-05 23:40:50', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-07-05 23:40:50', '2018-07-05 23:40:50', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?page_id=27', 0, 'page', '', 0),
(97, 1, '2018-07-07 05:51:31', '2018-07-07 05:51:31', '', 'default', '', 'inherit', 'open', 'closed', '', 'default-3', '', '', '2018-07-07 05:51:31', '2018-07-07 05:51:31', '', 26, 'http://projeto.planetsweb.com.br/lookaer/wp-content/uploads/2018/07/default-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2018-07-07 05:52:27', '2018-07-07 05:52:27', '', 'default', '', 'inherit', 'open', 'closed', '', 'default', '', '', '2018-07-07 05:52:27', '2018-07-07 05:52:27', '', 0, 'http://projeto.planetsweb.com.br/lookaer/wp-content/uploads/2018/07/default.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-07-05 23:46:31', '2018-07-05 23:46:31', 'Hello', 'Bem vindo(a)', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-05 23:46:31', '2018-07-05 23:46:31', '', 26, 'http://projeto.planetsweb.com.br/lookaer/2018/07/05/26-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-07-05 23:40:50', '2018-07-05 23:40:50', 'This is your homepage which is what most visitors will see when they first visit your shop.\n\nYou can change this text by editing the &quot;Welcome&quot; page via the &quot;Pages&quot; menu in your dashboard.', 'Welcome', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-05 23:40:50', '2018-07-05 23:40:50', '', 26, 'http://projeto.planetsweb.com.br/lookaer/2018/07/05/26-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-07-05 23:40:50', '2018-07-05 23:40:50', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-07-05 23:40:50', '2018-07-05 23:40:50', '', 27, 'http://projeto.planetsweb.com.br/lookaer/2018/07/05/27-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-07-06 00:06:13', '0000-00-00 00:00:00', '', 'widget_image', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-06 00:06:13', '0000-00-00 00:00:00', 'a:1:{s:12:\"_multiwidget\";i:1;}', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=jetpack_migration&p=46', 0, 'jetpack_migration', '', 0),
(47, 1, '2018-07-06 00:06:13', '0000-00-00 00:00:00', '', 'sidebars_widgets', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-06 00:06:13', '0000-00-00 00:00:00', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=jetpack_migration&p=47', 0, 'jetpack_migration', '', 0),
(48, 0, '2018-07-05 23:46:31', '0000-00-00 00:00:00', 'PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPCEtLWdlbmVyYXRvcj0namV0cGFjay02LjMuMictLT4KPD94bWwtc3R5bGVzaGVldCB0eXBlPSJ0ZXh0L3hzbCIgaHJlZj0iaHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci9zaXRlbWFwLnhzbCI/Pgo8dXJsc2V0IHhtbG5zPSJodHRwOi8vd3d3LnNpdGVtYXBzLm9yZy9zY2hlbWFzL3NpdGVtYXAvMC45IiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB4c2k6c2NoZW1hTG9jYXRpb249Imh0dHA6Ly93d3cuc2l0ZW1hcHMub3JnL3NjaGVtYXMvc2l0ZW1hcC8wLjkgaHR0cDovL3d3dy5zaXRlbWFwcy5vcmcvc2NoZW1hcy9zaXRlbWFwLzAuOS9zaXRlbWFwLnhzZCI+PHVybD48bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXI8L2xvYz48L3VybD48dXJsPjxsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci8yMDE4LzA3LzA1L2hlbGxvLXdvcmxkLzwvbG9jPjxsYXN0bW9kPjIwMTgtMDctMDVUMjM6MTg6NDJaPC9sYXN0bW9kPjwvdXJsPjx1cmw+PGxvYz5odHRwOi8vcHJvamV0by5wbGFuZXRzd2ViLmNvbS5ici9sb29rYWVyL3NhbXBsZS1wYWdlLzwvbG9jPjxsYXN0bW9kPjIwMTgtMDctMDVUMjM6MTg6NDJaPC9sYXN0bW9kPjwvdXJsPjx1cmw+PGxvYz5odHRwOi8vcHJvamV0by5wbGFuZXRzd2ViLmNvbS5ici9sb29rYWVyL2xvamEvPC9sb2M+PGxhc3Rtb2Q+MjAxOC0wNy0wNVQyMzoyMjoyOFo8L2xhc3Rtb2Q+PC91cmw+PHVybD48bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvY2FycmluaG8vPC9sb2M+PGxhc3Rtb2Q+MjAxOC0wNy0wNVQyMzoyMjoyOFo8L2xhc3Rtb2Q+PC91cmw+PHVybD48bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvZmluYWxpemFyLWNvbXByYS88L2xvYz48bGFzdG1vZD4yMDE4LTA3LTA1VDIzOjIyOjI4WjwvbGFzdG1vZD48L3VybD48dXJsPjxsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci9taW5oYS1jb250YS88L2xvYz48bGFzdG1vZD4yMDE4LTA3LTA1VDIzOjIyOjI4WjwvbGFzdG1vZD48L3VybD48dXJsPjxsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci88L2xvYz48bGFzdG1vZD4yMDE4LTA3LTA1VDIzOjQ2OjMxWjwvbGFzdG1vZD48L3VybD48dXJsPjxsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci9ibG9nLzwvbG9jPjxsYXN0bW9kPjIwMTgtMDctMDVUMjM6NDA6NTBaPC9sYXN0bW9kPjwvdXJsPjwvdXJsc2V0Pgo=', 'sitemap-1.xml', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-07 00:06:42', '2018-07-07 00:06:42', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?p=48', 0, 'jp_sitemap', '', 0),
(49, 0, '2018-07-06 21:44:57', '0000-00-00 00:00:00', 'PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPCEtLWdlbmVyYXRvcj0namV0cGFjay02LjMuMictLT4KPD94bWwtc3R5bGVzaGVldCB0eXBlPSJ0ZXh0L3hzbCIgaHJlZj0iaHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci9pbWFnZS1zaXRlbWFwLnhzbCI/Pgo8dXJsc2V0IHhtbG5zPSJodHRwOi8vd3d3LnNpdGVtYXBzLm9yZy9zY2hlbWFzL3NpdGVtYXAvMC45IiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB4c2k6c2NoZW1hTG9jYXRpb249Imh0dHA6Ly93d3cuc2l0ZW1hcHMub3JnL3NjaGVtYXMvc2l0ZW1hcC8wLjkgaHR0cDovL3d3dy5zaXRlbWFwcy5vcmcvc2NoZW1hcy9zaXRlbWFwLzAuOS9zaXRlbWFwLnhzZCIgeG1sbnM6aW1hZ2U9Imh0dHA6Ly93d3cuZ29vZ2xlLmNvbS9zY2hlbWFzL3NpdGVtYXAtaW1hZ2UvMS4xIj48dXJsPjxsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci9iZWFuaWUtaW1hZ2UvPC9sb2M+PGxhc3Rtb2Q+MjAxOC0wNy0wNVQyMzo0MDo1MFo8L2xhc3Rtb2Q+PGltYWdlOmltYWdlPjxpbWFnZTpsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wNy9iZWFuaWUuanBnPC9pbWFnZTpsb2M+PGltYWdlOnRpdGxlPkJlYW5pZTwvaW1hZ2U6dGl0bGU+PGltYWdlOmNhcHRpb24+PC9pbWFnZTpjYXB0aW9uPjwvaW1hZ2U6aW1hZ2U+PC91cmw+PHVybD48bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvYmVsdC1pbWFnZS88L2xvYz48bGFzdG1vZD4yMDE4LTA3LTA1VDIzOjQwOjUwWjwvbGFzdG1vZD48aW1hZ2U6aW1hZ2U+PGltYWdlOmxvYz5odHRwOi8vcHJvamV0by5wbGFuZXRzd2ViLmNvbS5ici9sb29rYWVyL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzA3L2JlbHQuanBnPC9pbWFnZTpsb2M+PGltYWdlOnRpdGxlPkJlbHQ8L2ltYWdlOnRpdGxlPjxpbWFnZTpjYXB0aW9uPjwvaW1hZ2U6Y2FwdGlvbj48L2ltYWdlOmltYWdlPjwvdXJsPjx1cmw+PGxvYz5odHRwOi8vcHJvamV0by5wbGFuZXRzd2ViLmNvbS5ici9sb29rYWVyL2NhcC1pbWFnZS88L2xvYz48bGFzdG1vZD4yMDE4LTA3LTA1VDIzOjQwOjUwWjwvbGFzdG1vZD48aW1hZ2U6aW1hZ2U+PGltYWdlOmxvYz5odHRwOi8vcHJvamV0by5wbGFuZXRzd2ViLmNvbS5ici9sb29rYWVyL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzA3L2NhcC5qcGc8L2ltYWdlOmxvYz48aW1hZ2U6dGl0bGU+Q2FwPC9pbWFnZTp0aXRsZT48aW1hZ2U6Y2FwdGlvbj48L2ltYWdlOmNhcHRpb24+PC9pbWFnZTppbWFnZT48L3VybD48dXJsPjxsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci9ob29kaWUtd2l0aC1sb2dvLWltYWdlLzwvbG9jPjxsYXN0bW9kPjIwMTgtMDctMDVUMjM6NDA6NTBaPC9sYXN0bW9kPjxpbWFnZTppbWFnZT48aW1hZ2U6bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDcvaG9vZGllLXdpdGgtbG9nby5qcGc8L2ltYWdlOmxvYz48aW1hZ2U6dGl0bGU+SG9vZGllIHdpdGggTG9nbzwvaW1hZ2U6dGl0bGU+PGltYWdlOmNhcHRpb24+PC9pbWFnZTpjYXB0aW9uPjwvaW1hZ2U6aW1hZ2U+PC91cmw+PHVybD48bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvaG9vZGllLXdpdGgtcG9ja2V0LWltYWdlLzwvbG9jPjxsYXN0bW9kPjIwMTgtMDctMDVUMjM6NDA6NTBaPC9sYXN0bW9kPjxpbWFnZTppbWFnZT48aW1hZ2U6bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDcvaG9vZGllLXdpdGgtcG9ja2V0LmpwZzwvaW1hZ2U6bG9jPjxpbWFnZTp0aXRsZT5Ib29kaWUgd2l0aCBQb2NrZXQ8L2ltYWdlOnRpdGxlPjxpbWFnZTpjYXB0aW9uPjwvaW1hZ2U6Y2FwdGlvbj48L2ltYWdlOmltYWdlPjwvdXJsPjx1cmw+PGxvYz5odHRwOi8vcHJvamV0by5wbGFuZXRzd2ViLmNvbS5ici9sb29rYWVyL2hvb2RpZS13aXRoLXppcHBlci1pbWFnZS88L2xvYz48bGFzdG1vZD4yMDE4LTA3LTA1VDIzOjQwOjUwWjwvbGFzdG1vZD48aW1hZ2U6aW1hZ2U+PGltYWdlOmxvYz5odHRwOi8vcHJvamV0by5wbGFuZXRzd2ViLmNvbS5ici9sb29rYWVyL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzA3L2hvb2RpZS13aXRoLXppcHBlci5qcGc8L2ltYWdlOmxvYz48aW1hZ2U6dGl0bGU+SG9vZGllIHdpdGggWmlwcGVyPC9pbWFnZTp0aXRsZT48aW1hZ2U6Y2FwdGlvbj48L2ltYWdlOmNhcHRpb24+PC9pbWFnZTppbWFnZT48L3VybD48dXJsPjxsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci9ob29kaWUtaW1hZ2UvPC9sb2M+PGxhc3Rtb2Q+MjAxOC0wNy0wNVQyMzo0MDo1MFo8L2xhc3Rtb2Q+PGltYWdlOmltYWdlPjxpbWFnZTpsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wNy9ob29kaWUuanBnPC9pbWFnZTpsb2M+PGltYWdlOnRpdGxlPkhvb2RpZTwvaW1hZ2U6dGl0bGU+PGltYWdlOmNhcHRpb24+PC9pbWFnZTpjYXB0aW9uPjwvaW1hZ2U6aW1hZ2U+PC91cmw+PHVybD48bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvbG9uZy1zbGVldmUtdGVlLWltYWdlLzwvbG9jPjxsYXN0bW9kPjIwMTgtMDctMDVUMjM6NDA6NTBaPC9sYXN0bW9kPjxpbWFnZTppbWFnZT48aW1hZ2U6bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDcvbG9uZy1zbGVldmUtdGVlLmpwZzwvaW1hZ2U6bG9jPjxpbWFnZTp0aXRsZT5Mb25nIFNsZWV2ZSBUZWU8L2ltYWdlOnRpdGxlPjxpbWFnZTpjYXB0aW9uPjwvaW1hZ2U6Y2FwdGlvbj48L2ltYWdlOmltYWdlPjwvdXJsPjx1cmw+PGxvYz5odHRwOi8vcHJvamV0by5wbGFuZXRzd2ViLmNvbS5ici9sb29rYWVyL3BvbG8taW1hZ2UvPC9sb2M+PGxhc3Rtb2Q+MjAxOC0wNy0wNVQyMzo0MDo1MFo8L2xhc3Rtb2Q+PGltYWdlOmltYWdlPjxpbWFnZTpsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wNy9wb2xvLmpwZzwvaW1hZ2U6bG9jPjxpbWFnZTp0aXRsZT5Qb2xvPC9pbWFnZTp0aXRsZT48aW1hZ2U6Y2FwdGlvbj48L2ltYWdlOmNhcHRpb24+PC9pbWFnZTppbWFnZT48L3VybD48dXJsPjxsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci9zdW5nbGFzc2VzLWltYWdlLzwvbG9jPjxsYXN0bW9kPjIwMTgtMDctMDVUMjM6NDA6NTBaPC9sYXN0bW9kPjxpbWFnZTppbWFnZT48aW1hZ2U6bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDcvc3VuZ2xhc3Nlcy5qcGc8L2ltYWdlOmxvYz48aW1hZ2U6dGl0bGU+U3VuZ2xhc3NlczwvaW1hZ2U6dGl0bGU+PGltYWdlOmNhcHRpb24+PC9pbWFnZTpjYXB0aW9uPjwvaW1hZ2U6aW1hZ2U+PC91cmw+PHVybD48bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvdHNoaXJ0LWltYWdlLzwvbG9jPjxsYXN0bW9kPjIwMTgtMDctMDVUMjM6NDA6NTBaPC9sYXN0bW9kPjxpbWFnZTppbWFnZT48aW1hZ2U6bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDcvdHNoaXJ0LmpwZzwvaW1hZ2U6bG9jPjxpbWFnZTp0aXRsZT5Uc2hpcnQ8L2ltYWdlOnRpdGxlPjxpbWFnZTpjYXB0aW9uPjwvaW1hZ2U6Y2FwdGlvbj48L2ltYWdlOmltYWdlPjwvdXJsPjx1cmw+PGxvYz5odHRwOi8vcHJvamV0by5wbGFuZXRzd2ViLmNvbS5ici9sb29rYWVyL3ZuZWNrLXRlZS1pbWFnZS88L2xvYz48bGFzdG1vZD4yMDE4LTA3LTA1VDIzOjQwOjUwWjwvbGFzdG1vZD48aW1hZ2U6aW1hZ2U+PGltYWdlOmxvYz5odHRwOi8vcHJvamV0by5wbGFuZXRzd2ViLmNvbS5ici9sb29rYWVyL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzA3L3ZuZWNrLXRlZS5qcGc8L2ltYWdlOmxvYz48aW1hZ2U6dGl0bGU+Vm5lY2sgVHNoaXJ0PC9pbWFnZTp0aXRsZT48aW1hZ2U6Y2FwdGlvbj48L2ltYWdlOmNhcHRpb24+PC9pbWFnZTppbWFnZT48L3VybD48dXJsPjxsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci9oZXJvLWltYWdlLzwvbG9jPjxsYXN0bW9kPjIwMTgtMDctMDVUMjM6NDA6NTBaPC9sYXN0bW9kPjxpbWFnZTppbWFnZT48aW1hZ2U6bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDcvaGVyby5qcGc8L2ltYWdlOmxvYz48aW1hZ2U6dGl0bGU+SGVybzwvaW1hZ2U6dGl0bGU+PGltYWdlOmNhcHRpb24+PC9pbWFnZTpjYXB0aW9uPjwvaW1hZ2U6aW1hZ2U+PC91cmw+PHVybD48bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvYWNjZXNzb3JpZXMtaW1hZ2UvPC9sb2M+PGxhc3Rtb2Q+MjAxOC0wNy0wNVQyMzo0MDo1MFo8L2xhc3Rtb2Q+PGltYWdlOmltYWdlPjxpbWFnZTpsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wNy9hY2Nlc3Nvcmllcy5qcGc8L2ltYWdlOmxvYz48aW1hZ2U6dGl0bGU+QWNjZXNzb3JpZXM8L2ltYWdlOnRpdGxlPjxpbWFnZTpjYXB0aW9uPjwvaW1hZ2U6Y2FwdGlvbj48L2ltYWdlOmltYWdlPjwvdXJsPjx1cmw+PGxvYz5odHRwOi8vcHJvamV0by5wbGFuZXRzd2ViLmNvbS5ici9sb29rYWVyL3RzaGlydHMtaW1hZ2UvPC9sb2M+PGxhc3Rtb2Q+MjAxOC0wNy0wNVQyMzo0MDo1MFo8L2xhc3Rtb2Q+PGltYWdlOmltYWdlPjxpbWFnZTpsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wNy90c2hpcnRzLmpwZzwvaW1hZ2U6bG9jPjxpbWFnZTp0aXRsZT5ULXNoaXJ0czwvaW1hZ2U6dGl0bGU+PGltYWdlOmNhcHRpb24+PC9pbWFnZTpjYXB0aW9uPjwvaW1hZ2U6aW1hZ2U+PC91cmw+PHVybD48bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvaG9vZGllcy1pbWFnZS88L2xvYz48bGFzdG1vZD4yMDE4LTA3LTA1VDIzOjQwOjUwWjwvbGFzdG1vZD48aW1hZ2U6aW1hZ2U+PGltYWdlOmxvYz5odHRwOi8vcHJvamV0by5wbGFuZXRzd2ViLmNvbS5ici9sb29rYWVyL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzA3L2hvb2RpZXMuanBnPC9pbWFnZTpsb2M+PGltYWdlOnRpdGxlPkhvb2RpZXM8L2ltYWdlOnRpdGxlPjxpbWFnZTpjYXB0aW9uPjwvaW1hZ2U6Y2FwdGlvbj48L2ltYWdlOmltYWdlPjwvdXJsPjx1cmw+PGxvYz5odHRwOi8vcHJvamV0by5wbGFuZXRzd2ViLmNvbS5ici9sb29rYWVyL2Nyb3BwZWQtc3VuZ2xhc3Nlcy1qcGcvPC9sb2M+PGxhc3Rtb2Q+MjAxOC0wNy0wNlQyMTo0NDo1N1o8L2xhc3Rtb2Q+PGltYWdlOmltYWdlPjxpbWFnZTpsb2M+aHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wNy9jcm9wcGVkLXN1bmdsYXNzZXMuanBnPC9pbWFnZTpsb2M+PGltYWdlOnRpdGxlPmNyb3BwZWQtc3VuZ2xhc3Nlcy5qcGc8L2ltYWdlOnRpdGxlPjxpbWFnZTpjYXB0aW9uPjwvaW1hZ2U6Y2FwdGlvbj48L2ltYWdlOmltYWdlPjwvdXJsPjwvdXJsc2V0Pgo=', 'image-sitemap-1.xml', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-07 00:06:42', '2018-07-07 00:06:42', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?p=49', 0, 'jp_img_sitemap', '', 0),
(50, 0, '1970-01-01 00:00:00', '0000-00-00 00:00:00', 'PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPCEtLWdlbmVyYXRvcj0namV0cGFjay02LjMuMictLT4KPD94bWwtc3R5bGVzaGVldCB0eXBlPSJ0ZXh0L3hzbCIgaHJlZj0iaHR0cDovL3Byb2pldG8ucGxhbmV0c3dlYi5jb20uYnIvbG9va2Flci9zaXRlbWFwLWluZGV4LnhzbCI/Pgo8c2l0ZW1hcGluZGV4IHhtbG5zPSJodHRwOi8vd3d3LnNpdGVtYXBzLm9yZy9zY2hlbWFzL3NpdGVtYXAvMC45Ij48c2l0ZW1hcD48bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvc2l0ZW1hcC0xLnhtbDwvbG9jPjxsYXN0bW9kPjIwMTgtMDctMDVUMjM6NDY6MzFaPC9sYXN0bW9kPjwvc2l0ZW1hcD48c2l0ZW1hcD48bG9jPmh0dHA6Ly9wcm9qZXRvLnBsYW5ldHN3ZWIuY29tLmJyL2xvb2thZXIvaW1hZ2Utc2l0ZW1hcC0xLnhtbDwvbG9jPjxsYXN0bW9kPjIwMTgtMDctMDZUMjE6NDQ6NTdaPC9sYXN0bW9kPjwvc2l0ZW1hcD48L3NpdGVtYXBpbmRleD4K', 'sitemap.xml', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-07 00:06:42', '2018-07-07 00:06:42', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?p=50', 0, 'jp_sitemap_master', '', 0),
(51, 1, '2018-07-06 21:44:57', '2018-07-06 21:44:57', '', 'cropped-sunglasses.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-sunglasses-jpg', '', '', '2018-07-06 21:44:57', '2018-07-06 21:44:57', '', 0, 'http://projeto.planetsweb.com.br/lookaer/wp-content/uploads/2018/07/cropped-sunglasses.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-07-07 01:33:55', '2018-07-07 01:33:55', 'Hello\r\n\r\ndwadawdaw', 'Bem vindo(a)', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-07 01:33:55', '2018-07-07 01:33:55', '', 26, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/26-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-07-07 01:33:04', '2018-07-07 01:33:04', 'Hello\r\n\r\n&nbsp;\r\n\r\ndwadawdaw', 'Bem vindo(a)', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-07 01:33:04', '2018-07-07 01:33:04', '', 26, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/26-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-07-07 01:33:26', '2018-07-07 01:33:26', 'Hello\r\n</div>\r\ndwadawdaw', 'Bem vindo(a)', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-07 01:33:26', '2018-07-07 01:33:26', '', 26, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/26-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-07-07 01:33:36', '2018-07-07 01:33:36', 'Hello\r\n</div></div>\r\ndwadawdaw', 'Bem vindo(a)', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-07 01:33:36', '2018-07-07 01:33:36', '', 26, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/26-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-07-07 02:07:15', '2018-07-07 02:07:15', 'Olá', 'Bem vindo(a)', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-07 02:07:15', '2018-07-07 02:07:15', '', 26, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/26-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-07-07 01:34:11', '2018-07-07 01:34:11', 'Hello\r\n<blockquote>dwadawdaw</blockquote>', 'Bem vindo(a)', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-07 01:34:11', '2018-07-07 01:34:11', '', 26, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/26-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-07-07 03:48:31', '2018-07-07 03:48:31', 'Olá,', 'Bem vindo(a)  Look Aer ™', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2018-07-07 03:48:31', '2018-07-07 03:48:31', '', 26, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/26-autosave-v1/', 0, 'revision', '', 0),
(60, 1, '2018-07-07 03:50:00', '2018-07-07 03:50:00', 'Look Aer ™  é a sua loja virtual com a melhor qualidade de fraldas para bebês.\r\n\r\n\r\n<strong>Confira alguns produtos:</strong>', 'Bem vindo(a)  Look Aer ™', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-07 03:50:00', '2018-07-07 03:50:00', '', 26, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/26-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-07-07 03:50:28', '2018-07-07 03:50:28', 'Look Aer ™  é a sua loja virtual com a melhor qualidade de fraldas para bebês.\r\n\r\n<strong>Confira alguns produtos:</strong>', 'Look Aer ™', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-07 03:50:28', '2018-07-07 03:50:28', '', 26, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/26-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-07-07 04:13:03', '2018-07-07 04:13:03', '<p style=\"text-align: center;\">Look Aer ™  é a sua loja virtual com a melhor qualidade de fraldas para bebês.</p>\r\n<p style=\"text-align: center;\"><strong>Confira alguns produtos:</strong></p>', 'Look Aer ™', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-07 04:13:03', '2018-07-07 04:13:03', '', 26, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/26-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-07-07 04:37:59', '2018-07-07 04:37:59', '', 'Order &ndash; Julho 7, 2018 @ 04:37 AM', '', 'wc-cancelled', 'open', 'closed', 'order_5b4043a7985de', 'encomenda-jul-07-2018-0437-am', '', '', '2018-07-07 06:05:18', '2018-07-07 06:05:18', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=shop_order&#038;p=66', 0, 'shop_order', '', 1),
(69, 1, '2018-07-07 04:47:35', '2018-07-07 04:47:35', '', 'Início', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2018-07-07 04:47:35', '2018-07-07 04:47:35', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/inicio/', 1, 'nav_menu_item', '', 0),
(70, 1, '2018-07-07 04:47:35', '2018-07-07 04:47:35', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2018-07-07 04:47:35', '2018-07-07 04:47:35', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/70/', 1, 'nav_menu_item', '', 0),
(112, 1, '2018-07-07 06:46:56', '2018-07-07 06:46:56', '', 'Order &ndash; Julho 7, 2018 @ 06:46 AM', '', 'wc-cancelled', 'closed', 'closed', 'order_5b4061e0ed697', 'encomenda-jul-07-2018-0646-am', '', '', '2018-07-07 06:55:40', '2018-07-07 06:55:40', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=shop_order&#038;p=112', 0, 'shop_order', '', 2),
(73, 1, '2018-07-07 04:47:35', '2018-07-07 04:47:35', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2018-07-07 06:05:09', '2018-07-07 06:05:09', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/73/', 5, 'nav_menu_item', '', 0),
(74, 1, '2018-07-07 04:47:35', '2018-07-07 04:47:35', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2018-07-07 04:47:35', '2018-07-07 04:47:35', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/74/', 2, 'nav_menu_item', '', 0),
(85, 1, '2018-07-07 05:03:33', '2018-07-07 05:03:33', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2018-07-07 05:03:33', '2018-07-07 05:03:33', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/85/', 3, 'nav_menu_item', '', 0),
(78, 1, '2018-07-07 05:00:07', '2018-07-07 05:00:07', '', 'Recuperar senha', '', 'publish', 'closed', 'closed', '', 'recuperar-senha', '', '', '2018-07-07 05:00:07', '2018-07-07 05:00:07', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/recuperar-senha/', 2, 'nav_menu_item', '', 0),
(79, 1, '2018-07-07 05:00:07', '2018-07-07 05:00:07', '', 'Sair', '', 'publish', 'closed', 'closed', '', 'sair', '', '', '2018-07-07 07:12:49', '2018-07-07 07:12:49', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/sair/', 8, 'nav_menu_item', '', 0),
(80, 1, '2018-07-07 05:00:07', '2018-07-07 05:00:07', '', 'Detalhes da conta', '', 'publish', 'closed', 'closed', '', 'detalhes-da-conta', '', '', '2018-07-07 07:12:49', '2018-07-07 07:12:49', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/detalhes-da-conta/', 7, 'nav_menu_item', '', 0),
(81, 1, '2018-07-07 05:00:07', '2018-07-07 05:00:07', '', 'Moradas', '', 'publish', 'closed', 'closed', '', 'moradas', '', '', '2018-07-07 05:00:07', '2018-07-07 05:00:07', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/moradas/', 5, 'nav_menu_item', '', 0),
(82, 1, '2018-07-07 05:00:08', '2018-07-07 05:00:08', '', 'Descarregamentos', '', 'publish', 'closed', 'closed', '', 'descarregamentos', '', '', '2018-07-07 05:00:08', '2018-07-07 05:00:08', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/descarregamentos/', 4, 'nav_menu_item', '', 0),
(83, 1, '2018-07-07 05:00:08', '2018-07-07 05:00:08', '', 'Encomendas', '', 'publish', 'closed', 'closed', '', 'encomendas', '', '', '2018-07-07 05:00:08', '2018-07-07 05:00:08', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/encomendas/', 3, 'nav_menu_item', '', 0),
(86, 1, '2018-07-07 05:04:29', '2018-07-07 05:04:29', '<h2>Who we are</h2><p>Our website address is: http://projeto.planetsweb.com.br//lookaer.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-07-07 05:04:29', '2018-07-07 05:04:29', '', 3, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/3-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-07-07 05:05:42', '2018-07-07 05:05:42', '<h2>Quem somos</h2>\r\nO endereço do nosso site é: http://projeto.planetsweb.com.br/lookaer.\r\n<h2>Quais dados pessoais coletamos e por que os coletamos</h2>\r\n<h3>Comentários</h3>\r\nQuando os visitantes deixam comentários no site, coletamos os dados exibidos no formulário de comentários e também o endereço IP do visitante e a string do agente do usuário do navegador para ajudar na detecção de spam.\r\n\r\nUma string anonimizada criada a partir do seu endereço de e-mail (também chamado de hash) pode ser fornecida ao serviço Gravatar para ver se você está usando. A política de privacidade do serviço Gravatar está disponível aqui: https://automattic.com/privacy/. Após a aprovação do seu comentário, a foto do seu perfil ficará visível para o público no contexto do seu comentário.\r\n<h3>Mídia</h3>\r\nSe você fizer upload de imagens para o site, evite o upload de imagens com dados de localização incorporados (EXIF GPS) incluídos. Os visitantes do site podem baixar e extrair quaisquer dados de localização de imagens no site.\r\n<h3>Formulários de contato</h3>\r\n<h3>Cookies</h3>\r\nSe você deixar um comentário em nosso site, você pode optar por salvar seu nome, endereço de e-mail e site em cookies. Estes são para sua conveniência, para que você não precise preencher seus dados novamente quando deixar outro comentário. Esses cookies durarão um ano.\r\n\r\nSe você tiver uma conta e fizer login neste site, definiremos um cookie temporário para determinar se seu navegador aceita cookies. Este cookie não contém dados pessoais e é descartado quando você fecha o navegador.\r\n\r\nQuando você fizer login, também configuraremos vários cookies para salvar suas informações de login e suas opções de exibição na tela. Os cookies de login duram dois dias e os cookies de opções de tela duram um ano. Se você selecionar \"Lembrar de Mim\", seu login persistirá por duas semanas. Se você sair da sua conta, os cookies de login serão removidos.\r\n\r\nSe você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui dados pessoais e simplesmente indica o ID do post que você acabou de editar. Expira após 1 dia.\r\n<h3>Conteúdo incorporado de outros websites</h3>\r\nOs artigos neste site podem incluir conteúdo incorporado (por exemplo, vídeos, imagens, artigos, etc.). O conteúdo incorporado de outros sites se comporta exatamente da mesma maneira como se o visitante tivesse visitado o outro site.\r\n\r\nEsses sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com esse conteúdo incorporado, incluindo rastrear sua interação com o conteúdo incorporado se você tiver uma conta e estiver conectado a esse site.\r\n<h3>Analytics</h3>\r\n<h2>Quem compartilha seus dados com</h2>\r\n<h2>Por quanto tempo retemos seus dados</h2>\r\nSe você deixar um comentário, o comentário e seus metadados serão retidos indefinidamente. Isso é para que possamos reconhecer e aprovar quaisquer comentários de acompanhamento automaticamente, em vez de mantê-los em uma fila de moderação.\r\n\r\nPara usuários que se registram em nosso site (se houver), também armazenamos as informações pessoais que eles fornecem em seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (exceto que não podem alterar seu nome de usuário). Administradores de sites também podem ver e editar essas informações.\r\n<h2>Quais direitos você tem sobre seus dados</h2>\r\nSe você tiver uma conta neste site ou tiver deixado comentários, poderá solicitar o recebimento de um arquivo exportado dos dados pessoais que mantemos sobre você, incluindo quaisquer dados que você nos forneceu. Você também pode solicitar que apague quaisquer dados pessoais que tenhamos sobre você. Isso não inclui quaisquer dados que somos obrigados a manter para fins administrativos, legais ou de segurança.\r\n<h2>Para onde enviamos seus dados</h2>\r\nOs comentários dos visitantes podem ser verificados através de um serviço automatizado de detecção de spam.\r\n<h2>Suas informações de contato</h2>\r\n<h2>Informações adicionais</h2>\r\n<h3>Como protegemos seus dados</h3>\r\n<h3>Quais procedimentos de violação de dados são implementados</h3>\r\n<h3>Quais são os terceiros que recebem dados de</h3>\r\n<h3>O que a tomada de decisão automatizada e / ou a criação de perfil fazemos com os dados do usuário</h3>\r\n<h3>Requisitos regulamentares de divulgação da indústria</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-07-07 05:05:42', '2018-07-07 05:05:42', '', 3, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/3-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-07-07 05:06:21', '2018-07-07 05:06:21', '<h2>Quem somos</h2>\r\nO endereço do nosso site é: http://projeto.planetsweb.com.br/lookaer.\r\n<h2>Quais dados pessoais coletamos e por que os coletamos</h2>\r\n<h3>Comentários</h3>\r\nQuando os visitantes deixam comentários no site, coletamos os dados exibidos no formulário de comentários e também o endereço IP do visitante e a string do agente do usuário do navegador para ajudar na detecção de spam.\r\n\r\nUma string anonimizada criada a partir do seu endereço de e-mail (também chamado de hash) pode ser fornecida ao serviço Gravatar para ver se você está usando. A política de privacidade do serviço Gravatar está disponível aqui: https://automattic.com/privacy/. Após a aprovação do seu comentário, a foto do seu perfil ficará visível para o público no contexto do seu comentário.\r\n<h3>Mídia</h3>\r\nSe você fizer upload de imagens para o site, evite o upload de imagens com dados de localização incorporados (EXIF GPS) incluídos. Os visitantes do site podem baixar e extrair quaisquer dados de localização de imagens no site.\r\n<h3>Formulários de contato</h3>\r\n<h3>Cookies</h3>\r\nSe você deixar um comentário em nosso site, você pode optar por salvar seu nome, endereço de e-mail e site em cookies. Estes são para sua conveniência, para que você não precise preencher seus dados novamente quando deixar outro comentário. Esses cookies durarão um ano.\r\n\r\nSe você tiver uma conta e fizer login neste site, definiremos um cookie temporário para determinar se seu navegador aceita cookies. Este cookie não contém dados pessoais e é descartado quando você fecha o navegador.\r\n\r\nQuando você fizer login, também configuraremos vários cookies para salvar suas informações de login e suas opções de exibição na tela. Os cookies de login duram dois dias e os cookies de opções de tela duram um ano. Se você selecionar \"Lembrar de Mim\", seu login persistirá por duas semanas. Se você sair da sua conta, os cookies de login serão removidos.\r\n\r\nSe você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui dados pessoais e simplesmente indica o ID do post que você acabou de editar. Expira após 1 dia.\r\n<h3>Conteúdo incorporado de outros websites</h3>\r\nOs artigos neste site podem incluir conteúdo incorporado (por exemplo, vídeos, imagens, artigos, etc.). O conteúdo incorporado de outros sites se comporta exatamente da mesma maneira como se o visitante tivesse visitado o outro site.\r\n\r\nEsses sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com esse conteúdo incorporado, incluindo rastrear sua interação com o conteúdo incorporado se você tiver uma conta e estiver conectado a esse site.\r\n<h3>Analytics</h3>\r\n<h2>Quem compartilha seus dados com</h2>\r\n<h2>Por quanto tempo retemos seus dados</h2>\r\nSe você deixar um comentário, o comentário e seus metadados serão retidos indefinidamente. Isso é para que possamos reconhecer e aprovar quaisquer comentários de acompanhamento automaticamente, em vez de mantê-los em uma fila de moderação.\r\n\r\nPara usuários que se registram em nosso site (se houver), também armazenamos as informações pessoais que eles fornecem em seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (exceto que não podem alterar seu nome de usuário). Administradores de sites também podem ver e editar essas informações.\r\n<h2>Quais direitos você tem sobre seus dados</h2>\r\nSe você tiver uma conta neste site ou tiver deixado comentários, poderá solicitar o recebimento de um arquivo exportado dos dados pessoais que mantemos sobre você, incluindo quaisquer dados que você nos forneceu. Você também pode solicitar que apague quaisquer dados pessoais que tenhamos sobre você. Isso não inclui quaisquer dados que somos obrigados a manter para fins administrativos, legais ou de segurança.\r\n<h2>Para onde enviamos seus dados</h2>\r\nOs comentários dos visitantes podem ser verificados através de um serviço automatizado de detecção de spam.\r\n<h2>Suas informações de contato</h2>\r\n<h2>Informações adicionais</h2>\r\n<h3>Como protegemos seus dados</h3>\r\n<h3>Quais procedimentos de violação de dados são implementados</h3>\r\n<h3>Quais são os terceiros que recebem dados de</h3>\r\n<h3>O que a tomada de decisão automatizada e / ou a criação de perfil fazemos com os dados do usuário</h3>\r\n<h3>Requisitos regulamentares de divulgação da indústria</h3>', 'Política de Privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-07-07 05:06:21', '2018-07-07 05:06:21', '', 3, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/3-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-07-07 05:51:47', '2018-07-07 05:51:47', '', 'megapromocaopampers', '', 'inherit', 'open', 'closed', '', 'megapromocaopampers', '', '', '2018-07-07 05:51:47', '2018-07-07 05:51:47', '', 26, 'http://projeto.planetsweb.com.br/lookaer/wp-content/uploads/2018/07/megapromocaopampers.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2018-07-09 17:38:19', '2018-07-09 17:38:19', '', 'Order &ndash; Julho 9, 2018 @ 05:38 PM', '', 'wc-cancelled', 'open', 'closed', 'order_5b439d8b7ee70', 'encomenda-jul-09-2018-0538-pm', '', '', '2018-07-10 14:23:25', '2018-07-10 14:23:25', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=shop_order&#038;p=132', 0, 'shop_order', '', 1),
(131, 1, '2018-07-09 16:45:26', '2018-07-09 16:45:26', '', 'Order &ndash; Julho 9, 2018 @ 04:45 PM', '', 'wc-cancelled', 'open', 'closed', 'order_5b439126d7d2c', 'encomenda-jul-09-2018-0445-pm', '', '', '2018-07-10 14:23:25', '2018-07-10 14:23:25', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=shop_order&#038;p=131', 0, 'shop_order', '', 1),
(106, 1, '2018-07-07 06:05:09', '2018-07-07 06:05:09', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2018-07-07 06:05:09', '2018-07-07 06:05:09', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/106/', 4, 'nav_menu_item', '', 0),
(109, 1, '2018-07-07 06:16:25', '2018-07-07 06:16:25', 'Auto generated product for wallet recharge please do not delete or update.', 'Créditos', '', 'private', 'closed', 'closed', '', 'wallet-topup', '', '', '2018-07-07 06:20:40', '2018-07-07 06:20:40', '', 0, 'http://projeto.planetsweb.com.br/lookaer/produto/wallet-topup/', 0, 'product', '', 0),
(110, 1, '2018-07-07 06:22:17', '2018-07-07 06:22:17', '{\n    \"nav_menu_item[-2178659967712850000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-07 06:21:13\"\n    },\n    \"nav_menu_item[71]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-07 06:22:17\"\n    },\n    \"nav_menu_item[72]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-07 06:22:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8ff8ee21-8872-4eed-8ffd-9d6d1a7f536f', '', '', '2018-07-07 06:22:17', '2018-07-07 06:22:17', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?p=110', 0, 'customize_changeset', '', 0),
(113, 1, '2018-07-07 06:54:41', '2018-07-07 06:54:41', '', 'Order &ndash; Julho 7, 2018 @ 06:54 AM', '', 'wc-completed', 'closed', 'closed', 'order_5b4063b1654e4', 'encomenda-jul-07-2018-0654-am', '', '', '2018-07-07 06:55:56', '2018-07-07 06:55:56', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=shop_order&#038;p=113', 0, 'shop_order', '', 1);
INSERT INTO `wplook_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(114, 1, '2018-07-07 07:00:18', '2018-07-07 07:00:18', '<div id=\"detalhes\" class=\"product-description\">\r\n<h2 class=\"product-description__title\"></h2>\r\n<div class=\"nano-content\">\r\n<div><strong>A Fralda Huggies Turma da Mônica Tripla Proteção</strong> é a fralda número 1 em vendas. Deixa o seu bebê protegido por até 12 horas.</div>\r\n<div>Mais absorção, menos trocas.</div>\r\n<div></div>\r\n<div><strong>Principais características:</strong></div>\r\n<div>- Proteção antivazamento: Barreiras até 20% mais altas versus fraldas econômicas\r\n- Camada ultra-absorvente: Mantém seu bebê sequinho por mais tempo\r\n- Fecho Ajustável: Abre e fecha quantas vezes for necessário\r\n- Toque de Algodão</div>\r\n<div>- Dermatologicamente testado</div>\r\n<div></div>\r\n<div><strong>Composição:</strong> Celulose, polímero super absorvente, polipropileno, elásticos, adesivos.</div>\r\n<div></div>\r\n<div><strong>Tamanhos:</strong></div>\r\n<div>- Tamanho P - Crianças até 6kg;</div>\r\n<div>- Tamanho M - Crianças de 5,5 a 9,5kg;</div>\r\n<div>- Tamanho G - Crianças de 9 a 12,5kg;</div>\r\n<div>- Tamanho XG - Crianças de 12 a 15kg.</div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n</div>\r\n</div>\r\n<div id=\"product-tips\" class=\"product-description\">\r\n<h2 class=\"product-description__title\">Dica</h2>\r\n<div class=\"nano-content\">\r\n<div>1) Levante as barreiras da fralda.</div>\r\n<div>2) Coloque o bebê sobre a fralda aberta.</div>\r\n<div>3) Descole os fechos ajustáveis e fixe-os sobre a faixa frontal da fralda.</div>\r\n<div>4) Ajuste de acordo com o corpinho do bebê.</div>\r\n</div>\r\n</div>', 'Fraldas Huggies Turma da Mônica Tripla Proteção G', '<div><strong>A Fralda Huggies Turma da Mônica Tripla Proteção</strong> é a fralda número 1 em vendas. Deixa o seu bebê protegido por até 12 horas.</div>\r\n<div>Mais absorção, menos trocas.</div>', 'publish', 'open', 'closed', '', 'fraldas-huggies-turma-da-monica-tripla-protecao-g', '', '', '2018-07-07 07:00:18', '2018-07-07 07:00:18', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=product&#038;p=114', 0, 'product', '', 0),
(115, 1, '2018-07-07 06:59:06', '2018-07-07 06:59:06', '', 'fraldas-huggies-turma-da-monica-tripla-protecao-g-48un-mais-4un-gratis_detalhe', '', 'inherit', 'open', 'closed', '', 'fraldas-huggies-turma-da-monica-tripla-protecao-g-48un-mais-4un-gratis_detalhe', '', '', '2018-07-07 06:59:06', '2018-07-07 06:59:06', '', 114, 'http://projeto.planetsweb.com.br/lookaer/wp-content/uploads/2018/07/fraldas-huggies-turma-da-monica-tripla-protecao-g-48un-mais-4un-gratis_detalhe.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2018-07-07 07:02:03', '2018-07-07 07:02:03', '<strong>A Fralda Huggies Turma da Mônica Tripla</strong> Proteção é a fralda número 1 em vendas. Deixa o seu bebê protegido por até 12 horas...Mais absorção, menos trocas.\r\n\r\n<strong>Principais características:</strong>\r\n- Proteção antivazamento: Barreiras até 20% mais altas versus fraldas econômicas\r\n- Camada ultra-absorvente: Mantém seu bebê sequinho por mais tempo\r\n- Fecho Ajustável: Abre e fecha quantas vezes for necessário\r\n- Toque de Algodão\r\n- Dermatologicamente testado', 'Kit Fraldas Huggies Turma da Mônica Tripla Proteção M', '<strong>A Fralda Huggies Turma da Mônica Tripla</strong> Proteção é a fralda número 1 em vendas. Deixa o seu bebê protegido por até 12 horas...Mais absorção, menos trocas.', 'publish', 'open', 'closed', '', 'kit-fraldas-huggies-turma-da-monica-tripla-protecao-m', '', '', '2018-07-07 07:02:03', '2018-07-07 07:02:03', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=product&#038;p=116', 0, 'product', '', 0),
(117, 1, '2018-07-07 07:01:26', '2018-07-07 07:01:26', '', 'kit-fraldas-huggies-turma-da-monica-tripla-protecao-m-5-x-58un_detalhe', '', 'inherit', 'open', 'closed', '', 'kit-fraldas-huggies-turma-da-monica-tripla-protecao-m-5-x-58un_detalhe', '', '', '2018-07-07 07:01:26', '2018-07-07 07:01:26', '', 116, 'http://projeto.planetsweb.com.br/lookaer/wp-content/uploads/2018/07/kit-fraldas-huggies-turma-da-monica-tripla-protecao-m-5-x-58un_detalhe.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2018-07-07 07:03:45', '2018-07-07 07:03:45', '<div>A <strong>Fralda Capricho Rei Leão Hiper</strong> tem <strong>toque macio tipo algodão</strong>, garantindo com isso o<strong> conforto de seu bebê</strong>, possui <strong>barreiras impermeáveis</strong> antivazamento, <strong>fitas laterais elásticas</strong>, <strong>indicador de umidade </strong>que some em contato com a urina, e <strong>gel super absorvente</strong> que retém o xixi longe da pele. Além disso, o<strong> formato anatômico</strong>, garante que a fralda se ajuste perfeitamente ao corpinho do bebê, sem apertar demais a perninha.\r\nCom esta fralda você vai deixar seu bebê ainda mais bonito, pois ela possui <strong>visual moderno</strong> com <strong>fraldinhas estampadas </strong>e frontais tapes com diversas ilustrações, vai parecer que seu bebê esta com uma roupinha diferente a cada troca.\r\n<strong>Tranquilidade para a mamãe, conforto e segurança para o bebê.\r\n\r\nIndicado para crianças com peso até 5kg.</strong>\r\n<div></div>\r\n</div>\r\n<img src=\"https://media.netfarma.com.br/produtos/laminas/Capricho/TOTAL-REI-LEAO.jpg\" width=\"868\" height=\"3179\" border=\"0\" />', 'Fraldas Capricho Rei Leão - Hiper P', 'A <strong>Fralda Capricho Rei Leão Hiper</strong> tem <strong>toque macio tipo algodão</strong>, garantindo com isso o<strong> conforto de seu bebê</strong>, possui <strong>barreiras impermeáveis</strong> antivazamento, <strong>fitas laterais elásticas</strong>, <strong>indicador de umidade </strong>que some em contato com a urina, e <strong>gel super absorvente</strong> que retém o xixi longe da pele. Além disso, o<strong> formato anatômico</strong>, garante que a fralda se ajuste perfeitamente ao corpinho do bebê, sem apertar demais a perninha.', 'publish', 'open', 'closed', '', 'fraldas-capricho-rei-leao-hiper-p', '', '', '2018-07-07 07:03:45', '2018-07-07 07:03:45', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=product&#038;p=118', 0, 'product', '', 0),
(119, 1, '2018-07-07 07:03:39', '2018-07-07 07:03:39', '', 'fraldas-capricho-rei-leao-hiper-p-80un_detalhe', '', 'inherit', 'open', 'closed', '', 'fraldas-capricho-rei-leao-hiper-p-80un_detalhe', '', '', '2018-07-07 07:03:39', '2018-07-07 07:03:39', '', 118, 'http://projeto.planetsweb.com.br/lookaer/wp-content/uploads/2018/07/fraldas-capricho-rei-leao-hiper-p-80un_detalhe.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2018-07-07 07:09:57', '2018-07-07 07:09:57', '', 'Kit de Fraldas Pampers Mega Premium Care G - 240', '', 'publish', 'open', 'closed', '', 'kit-de-fraldas-pampers-mega-premium-care-g-240', '', '', '2018-07-07 07:10:03', '2018-07-07 07:10:03', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=product&#038;p=120', 0, 'product', '', 0),
(121, 1, '2018-07-07 07:09:15', '2018-07-07 07:09:15', '', '10412810534942', '', 'inherit', 'open', 'closed', '', '10412810534942', '', '', '2018-07-07 07:09:15', '2018-07-07 07:09:15', '', 120, 'http://projeto.planetsweb.com.br/lookaer/wp-content/uploads/2018/07/10412810534942.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2018-07-07 07:12:49', '2018-07-07 07:12:49', '{\n    \"nav_menu_item[80]\": {\n        \"value\": {\n            \"menu_item_parent\": 70,\n            \"object_id\": 80,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Liga\\u00e7\\u00e3o personalizada\",\n            \"title\": \"Detalhes da conta\",\n            \"url\": \"http://projeto.planetsweb.com.br/lookaer/minha-conta/edit-account/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 21,\n            \"position\": 7,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-07 07:12:46\"\n    },\n    \"nav_menu_item[79]\": {\n        \"value\": {\n            \"menu_item_parent\": 70,\n            \"object_id\": 79,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Liga\\u00e7\\u00e3o personalizada\",\n            \"title\": \"Sair\",\n            \"url\": \"http://projeto.planetsweb.com.br/lookaer/minha-conta/customer-logout/?_wpnonce=49ebd9ba8e\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 21,\n            \"position\": 8,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-07 07:12:46\"\n    },\n    \"nav_menu_item[-3560340987181154300]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 70,\n            \"position\": 6,\n            \"type\": \"custom\",\n            \"title\": \"My Wallet\",\n            \"url\": \"http://projeto.planetsweb.com.br/lookaer/minha-conta/woo-wallet/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"My Wallet\",\n            \"nav_menu_term_id\": 21,\n            \"_invalid\": false,\n            \"type_label\": \"Link Personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-07 07:12:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '89215354-dc2e-401b-a5c5-2fbef8280226', '', '', '2018-07-07 07:12:49', '2018-07-07 07:12:49', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?p=122', 0, 'customize_changeset', '', 0),
(123, 1, '2018-07-07 07:12:49', '2018-07-07 07:12:49', '', 'Minha Carteira', '', 'publish', 'closed', 'closed', '', 'my-wallet', '', '', '2018-07-07 07:13:14', '2018-07-07 07:13:14', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/my-wallet/', 6, 'nav_menu_item', '', 0),
(124, 1, '2018-07-07 07:13:14', '2018-07-07 07:13:14', '{\n    \"nav_menu_item[123]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 70,\n            \"position\": 6,\n            \"type\": \"custom\",\n            \"title\": \"Minha Carteira\",\n            \"url\": \"http://projeto.planetsweb.com.br/lookaer/minha-conta/woo-wallet/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"My Wallet\",\n            \"nav_menu_term_id\": 21,\n            \"_invalid\": false,\n            \"type_label\": \"Link Personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-07 07:13:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7aa3d44a-f66b-46d8-a060-de7656d93c7b', '', '', '2018-07-07 07:13:14', '2018-07-07 07:13:14', '', 0, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/7aa3d44a-f66b-46d8-a060-de7656d93c7b/', 0, 'customize_changeset', '', 0),
(125, 1, '2018-07-07 07:16:18', '2018-07-07 07:16:18', '', 'tes45', '', 'publish', 'closed', 'closed', '', 'tes45', '', '', '2018-07-07 07:16:18', '2018-07-07 07:16:18', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=shop_coupon&#038;p=125', 0, 'shop_coupon', '', 0),
(126, 1, '2018-07-07 07:17:27', '2018-07-07 07:17:27', '', 'Order &ndash; Julho 7, 2018 @ 07:17 AM', '', 'wc-completed', 'closed', 'closed', 'order_5b4069070dfe6', 'encomenda-jul-07-2018-0717-am', '', '', '2018-07-07 07:17:46', '2018-07-07 07:17:46', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?post_type=shop_order&#038;p=126', 0, 'shop_order', '', 2),
(127, 1, '2018-07-07 07:21:56', '2018-07-07 07:21:56', 'Bem vindo(a) a Look Aer ™  é a sua loja virtual com a melhor qualidade de fraldas para bebês.', 'Bem vindo(a)', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-07-07 07:21:56', '2018-07-07 07:21:56', '', 1, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/1-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-07-07 07:24:30', '2018-07-07 07:24:30', '<h2><a href=\"http://projeto.planetsweb.com.br/lookaer/produto/kit-fraldas-huggies-turma-da-monica-tripla-protecao-m/\">Compre já</a></h2>\r\n<h2>Descrição</h2>\r\n<strong>A Fralda Huggies Turma da Mônica Tripla</strong> Proteção é a fralda número 1 em vendas. Deixa o seu bebê protegido por até 12 horas…Mais absorção, menos trocas.\r\n\r\n<strong>Principais características:</strong>\r\n– Proteção antivazamento: Barreiras até 20% mais altas versus fraldas econômicas\r\n– Camada ultra-absorvente: Mantém seu bebê sequinho por mais tempo\r\n– Fecho Ajustável: Abre e fecha quantas vezes for necessário\r\n– Toque de Algodão\r\n– Dermatologicamente testado', 'PROMOÇÃO - Kit Fraldas Huggies Turma da Mônica Tripla Proteção M', '', 'publish', 'open', 'open', '', 'promocao-kit-fraldas-huggies-turma-da-monica-tripla-protecao-m', '', '', '2018-07-07 07:24:30', '2018-07-07 07:24:30', '', 0, 'http://projeto.planetsweb.com.br/lookaer/?p=128', 0, 'post', '', 0),
(129, 1, '2018-07-07 07:24:30', '2018-07-07 07:24:30', '<h2><a href=\"http://projeto.planetsweb.com.br/lookaer/produto/kit-fraldas-huggies-turma-da-monica-tripla-protecao-m/\">Compre já</a></h2>\r\n<h2>Descrição</h2>\r\n<strong>A Fralda Huggies Turma da Mônica Tripla</strong> Proteção é a fralda número 1 em vendas. Deixa o seu bebê protegido por até 12 horas…Mais absorção, menos trocas.\r\n\r\n<strong>Principais características:</strong>\r\n– Proteção antivazamento: Barreiras até 20% mais altas versus fraldas econômicas\r\n– Camada ultra-absorvente: Mantém seu bebê sequinho por mais tempo\r\n– Fecho Ajustável: Abre e fecha quantas vezes for necessário\r\n– Toque de Algodão\r\n– Dermatologicamente testado', 'PROMOÇÃO - Kit Fraldas Huggies Turma da Mônica Tripla Proteção M', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2018-07-07 07:24:30', '2018-07-07 07:24:30', '', 128, 'http://projeto.planetsweb.com.br/lookaer/2018/07/07/128-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_queue`
--

CREATE TABLE `wplook_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_termmeta`
--

CREATE TABLE `wplook_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wplook_termmeta`
--

INSERT INTO `wplook_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(19, 23, 'thumbnail_id', '100'),
(18, 23, 'display_type', ''),
(17, 24, 'thumbnail_id', '100'),
(16, 24, 'display_type', ''),
(7, 22, 'order', '0'),
(8, 22, 'display_type', ''),
(9, 22, 'thumbnail_id', '99'),
(10, 23, 'order', '0'),
(11, 24, 'order', '0'),
(12, 23, 'product_count_product_cat', '4'),
(13, 24, 'product_count_product_cat', '4'),
(14, 22, 'product_count_product_cat', '4'),
(15, 15, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_terms`
--

CREATE TABLE `wplook_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wplook_terms`
--

INSERT INTO `wplook_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Sem categoria', 'sem-categoria', 0),
(25, 'Promoção', 'promocao', 0),
(20, 'Esquerda', 'esquerda', 0),
(21, 'Direita', 'direita', 0),
(22, 'Promoções', 'promocoes', 0),
(23, 'Fraldas', 'fraldas', 0),
(24, 'Bebês', 'bebes', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_term_relationships`
--

CREATE TABLE `wplook_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wplook_term_relationships`
--

INSERT INTO `wplook_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(69, 20, 0),
(70, 21, 0),
(114, 24, 0),
(104, 14, 0),
(73, 20, 0),
(74, 20, 0),
(85, 20, 0),
(78, 21, 0),
(79, 21, 0),
(80, 21, 0),
(81, 21, 0),
(82, 21, 0),
(83, 21, 0),
(106, 20, 0),
(104, 24, 0),
(104, 2, 0),
(104, 22, 0),
(109, 2, 0),
(109, 6, 0),
(109, 7, 0),
(114, 22, 0),
(114, 2, 0),
(116, 24, 0),
(116, 22, 0),
(116, 2, 0),
(118, 15, 0),
(118, 2, 0),
(120, 24, 0),
(120, 2, 0),
(120, 22, 0),
(123, 21, 0),
(128, 1, 0),
(128, 25, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_term_taxonomy`
--

CREATE TABLE `wplook_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wplook_term_taxonomy`
--

INSERT INTO `wplook_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'product_type', '', 0, 5),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 1),
(15, 15, 'product_cat', '', 0, 1),
(25, 25, 'post_tag', '', 0, 1),
(23, 23, 'product_cat', '', 0, 0),
(24, 24, 'product_cat', '', 23, 4),
(20, 20, 'nav_menu', '', 0, 5),
(21, 21, 'nav_menu', '', 0, 8),
(22, 22, 'product_cat', 'Principais produtos em megas promoções', 0, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_usermeta`
--

CREATE TABLE `wplook_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wplook_usermeta`
--

INSERT INTO `wplook_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Rubens'),
(3, 1, 'last_name', 'Flinco'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', 'pt_PT'),
(12, 1, 'wplook_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wplook_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,wp496_privacy,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:11:{s:64:\"6b7e2915a00fe004144eaf993452ca25d30a48956dbaf519ff5218e5d2444d89\";a:4:{s:10:\"expiration\";i:1532042643;s:2:\"ip\";s:13:\"201.81.163.54\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530833043;}s:64:\"f54d01bafd39069217c74a3949db6c51d1545ec97e1cc2d7910628e32ad921b0\";a:4:{s:10:\"expiration\";i:1532042676;s:2:\"ip\";s:13:\"201.81.163.54\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530833076;}s:64:\"23cc443eba0515419985ec1858f1fa74be7c61c4aaabe6fa8f6f0dbc9fe6526e\";a:4:{s:10:\"expiration\";i:1532042727;s:2:\"ip\";s:13:\"201.81.163.54\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530833127;}s:64:\"33dd39fe5f392f9c7601aadb099aa33321821951086225a1b3081e641976d694\";a:4:{s:10:\"expiration\";i:1532042744;s:2:\"ip\";s:13:\"201.81.163.54\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530833144;}s:64:\"2fb5a0ae8122ee173c8eaedd73e0653da1b640a1bd4ddf417d896a13dd05ea66\";a:4:{s:10:\"expiration\";i:1532042842;s:2:\"ip\";s:13:\"201.81.163.54\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530833242;}s:64:\"738b660d5322d4fdb25a977d6057038a1ceab10626195e728c53f8d9079d05c1\";a:4:{s:10:\"expiration\";i:1532042893;s:2:\"ip\";s:13:\"201.81.163.54\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530833293;}s:64:\"8c510b6cb1b63c48fc7238c72aacd7063aa9192291fb6692590dc8c61d45da3a\";a:4:{s:10:\"expiration\";i:1532042903;s:2:\"ip\";s:13:\"201.81.163.54\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530833303;}s:64:\"55f7d46be4a1a30a8e57f767fa6464e15ca5adc55e3b84b876323c7089fcc790\";a:4:{s:10:\"expiration\";i:1532042909;s:2:\"ip\";s:13:\"201.81.163.54\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530833309;}s:64:\"49382060a411c1979beada1177a1f446e44ac162bf4fd24f9c068e2a67972355\";a:4:{s:10:\"expiration\";i:1532042915;s:2:\"ip\";s:13:\"201.81.163.54\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530833315;}s:64:\"7cb5d947feeba41324bff58c45b1df34349d5cd449888f49a054b3455a1c72b3\";a:4:{s:10:\"expiration\";i:1532042922;s:2:\"ip\";s:13:\"201.81.163.54\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530833322;}s:64:\"a6d2043d4a3ccb6cda8a4c287c279da2c11438e147fc4b288534bacbe9f02c5b\";a:4:{s:10:\"expiration\";i:1532043427;s:2:\"ip\";s:13:\"201.81.163.54\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530833827;}}'),
(17, 1, 'wplook_dashboard_quick_press_last_post_id', '4'),
(19, 1, 'wc_last_active', '1531094400'),
(20, 1, 'billing_first_name', 'Rubens'),
(21, 1, 'billing_last_name', 'Flinco'),
(22, 1, 'billing_company', 'PlanetsWEB'),
(23, 1, 'billing_address_1', 'Rua Cirino de Abreu'),
(24, 1, 'billing_address_2', ''),
(25, 1, 'billing_city', 'São Paulo'),
(26, 1, 'billing_postcode', '03630-010'),
(27, 1, 'billing_country', 'BR'),
(28, 1, 'billing_state', 'SP'),
(29, 1, 'billing_phone', '11976533875'),
(30, 1, 'billing_email', 'rubens@planetsweb.com.br'),
(31, 1, 'shipping_first_name', 'Rubens'),
(32, 1, 'shipping_last_name', 'Flinco'),
(33, 1, 'shipping_company', 'PlanetsWEB'),
(34, 1, 'shipping_address_1', 'Rua Cirino de Abreu'),
(35, 1, 'shipping_address_2', ''),
(36, 1, 'shipping_city', 'São Paulo'),
(37, 1, 'shipping_postcode', '03630-010'),
(38, 1, 'shipping_country', 'BR'),
(39, 1, 'shipping_state', 'SP'),
(40, 1, 'last_update', '1531154726'),
(93, 3, 'nickname', 'pa'),
(94, 3, 'first_name', 'papa'),
(95, 3, 'last_name', 'papa'),
(96, 3, 'description', ''),
(97, 3, 'rich_editing', 'true'),
(98, 3, 'syntax_highlighting', 'true'),
(99, 3, 'comment_shortcuts', 'false'),
(100, 3, 'admin_color', 'fresh'),
(101, 3, 'use_ssl', '0'),
(102, 3, 'show_admin_bar_front', 'true'),
(103, 3, 'locale', ''),
(104, 3, 'wplook_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(105, 3, 'wplook_user_level', '0'),
(106, 3, 'session_tokens', 'a:1:{s:64:\"9fbf4b58a265c21a6f1f4a114b0581dd73dcc96fe4198ea4705711d390c2e7ee\";a:4:{s:10:\"expiration\";i:1532367499;s:2:\"ip\";s:13:\"187.65.242.12\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531157899;}}'),
(107, 3, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"5fd0b37cd7dbbb00f97ba6ce92bf5add\";a:11:{s:3:\"key\";s:32:\"5fd0b37cd7dbbb00f97ba6ce92bf5add\";s:10:\"product_id\";i:114;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:42.89999999999999857891452847979962825775146484375;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:42.89999999999999857891452847979962825775146484375;s:8:\"line_tax\";i:0;}s:32:\"c45147dee729311ef5b5c3003946c48f\";a:11:{s:3:\"key\";s:32:\"c45147dee729311ef5b5c3003946c48f\";s:10:\"product_id\";i:116;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:184.900000000000005684341886080801486968994140625;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:184.900000000000005684341886080801486968994140625;s:8:\"line_tax\";i:0;}}}'),
(122, 3, 'shipping_address_2', 'numero pa'),
(123, 3, 'shipping_city', 'papa'),
(124, 3, 'shipping_state', 'SC'),
(125, 3, 'shipping_postcode', '90909090'),
(126, 3, 'shipping_country', 'BR'),
(127, 3, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:2\";}'),
(128, 3, 'wc_last_active', '1531094400'),
(51, 2, 'nickname', 'rubens'),
(52, 2, 'first_name', 'Rubens'),
(53, 2, 'last_name', 'Flinco'),
(54, 2, 'description', ''),
(55, 2, 'rich_editing', 'true'),
(41, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"201.81.163.0\";}'),
(48, 1, 'wplook_user-settings', 'libraryContent=browse&editor=tinymce&mfold=o'),
(49, 1, 'wplook_user-settings-time', '1530938541'),
(42, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(43, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(44, 1, 'nav_menu_recently_edited', '21'),
(92, 1, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:2\";}'),
(47, 1, 'jetpack_tracks_anon_id', 'jetpack:Lo96dtGyXouiCv4LPuDi1b71'),
(56, 2, 'syntax_highlighting', 'true'),
(57, 2, 'comment_shortcuts', 'false'),
(58, 2, 'admin_color', 'fresh'),
(59, 2, 'use_ssl', '0'),
(60, 2, 'show_admin_bar_front', 'true'),
(61, 2, 'locale', ''),
(62, 2, 'wplook_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(63, 2, 'wplook_user_level', '0'),
(117, 3, 'billing_email', 'pa@pa.com'),
(118, 3, 'billing_phone', '9090909090'),
(119, 3, 'shipping_first_name', 'papa'),
(120, 3, 'shipping_last_name', 'papa'),
(121, 3, 'shipping_address_1', 'rua do papa'),
(86, 2, 'paying_customer', '1'),
(65, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"c9e1074f5b3f9fc8ea15d152add07294\";a:11:{s:3:\"key\";s:32:\"c9e1074f5b3f9fc8ea15d152add07294\";s:10:\"product_id\";i:104;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:65;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:65;s:8:\"line_tax\";i:0;}}}'),
(66, 2, 'last_update', '1530946504'),
(67, 2, 'billing_first_name', 'Rubens'),
(68, 2, 'billing_last_name', 'Flinco'),
(69, 2, 'billing_address_1', 'Rua Cirino de Abreu'),
(70, 2, 'billing_city', 'São Paulo'),
(71, 2, 'billing_state', 'SP'),
(72, 2, 'billing_postcode', '03630-010'),
(73, 2, 'billing_country', 'BR'),
(74, 2, 'billing_email', 'rubens@planetsweb.com.br'),
(75, 2, 'billing_phone', '11976533875'),
(76, 2, 'shipping_first_name', 'Rubens'),
(77, 2, 'shipping_last_name', 'Flinco'),
(78, 2, 'shipping_address_1', 'Rua Cirino de Abreu'),
(79, 2, 'shipping_city', 'São Paulo'),
(80, 2, 'shipping_state', 'SP'),
(81, 2, 'shipping_postcode', '03630-010'),
(82, 2, 'shipping_country', 'BR'),
(83, 2, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:2\";}'),
(84, 2, 'wc_last_active', '1530921600'),
(87, 1, 'paying_customer', '1'),
(91, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(108, 3, 'last_update', '1531157899'),
(109, 3, 'billing_first_name', 'papa'),
(110, 3, 'billing_last_name', 'papa'),
(111, 3, 'billing_address_1', 'rua do papa'),
(112, 3, 'billing_address_2', 'numero pa'),
(113, 3, 'billing_city', 'papa'),
(114, 3, 'billing_state', 'SC'),
(115, 3, 'billing_postcode', '90909-090'),
(116, 3, 'billing_country', 'BR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_users`
--

CREATE TABLE `wplook_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wplook_users`
--

INSERT INTO `wplook_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B4B7OyKTCTH2VRbWcFvQONTp9bMpPq/', 'admin', 'admin@projeto.planetsweb.com.br', '', '2018-07-05 23:18:42', '', 0, 'admin'),
(2, 'rubens', '$P$BwE0oiYPbtT/lV4BBC0vwAcEfp.aRd.', 'rubens', 'rubens@planetsweb.com.br', '', '2018-07-07 06:46:56', '', 0, 'rubens'),
(3, 'pa', '$P$BaJcleCqQ8MbaM5MuPbH3E/j.dP2h80', 'pa', 'pa@pa.com', '', '2018-07-09 17:38:18', '', 0, 'pa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_wc_download_log`
--

CREATE TABLE `wplook_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_wc_webhooks`
--

CREATE TABLE `wplook_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_api_keys`
--

CREATE TABLE `wplook_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wplook_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wplook_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_log`
--

CREATE TABLE `wplook_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_order_itemmeta`
--

CREATE TABLE `wplook_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wplook_woocommerce_order_itemmeta`
--

INSERT INTO `wplook_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '35'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '2'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '84'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '84'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, 'method_id', 'flat_rate'),
(11, 2, 'instance_id', '1'),
(12, 2, 'cost', '30.00'),
(13, 2, 'total_tax', '0'),
(14, 2, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(15, 2, 'Itens', 'Hoodie &times; 2'),
(16, 3, '_product_id', '104'),
(17, 3, '_variation_id', '0'),
(18, 3, '_qty', '1'),
(19, 3, '_tax_class', ''),
(20, 3, '_line_subtotal', '65'),
(21, 3, '_line_subtotal_tax', '0'),
(22, 3, '_line_total', '65'),
(23, 3, '_line_tax', '0'),
(24, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(25, 4, 'method_id', 'free_shipping'),
(26, 4, 'instance_id', '2'),
(27, 4, 'cost', '0.00'),
(28, 4, 'total_tax', '0'),
(29, 4, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(30, 4, 'Itens', 'Fralda Descartável Pampers Confort Sec Bag Giga G 70 Unidades &times; 1'),
(31, 5, '_product_id', '104'),
(32, 5, '_variation_id', '0'),
(33, 5, '_qty', '2'),
(34, 5, '_tax_class', ''),
(35, 5, '_line_subtotal', '130'),
(36, 5, '_line_subtotal_tax', '0'),
(37, 5, '_line_total', '130'),
(38, 5, '_line_tax', '0'),
(39, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(40, 6, 'method_id', 'free_shipping'),
(41, 6, 'instance_id', '2'),
(42, 6, 'cost', '0.00'),
(43, 6, 'total_tax', '0'),
(44, 6, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(45, 6, 'Itens', 'Fralda Descartável Pampers Confort Sec Bag Giga G 70 Unidades &times; 2'),
(46, 7, '_product_id', '116'),
(47, 7, '_variation_id', '0'),
(48, 7, '_qty', '1'),
(49, 7, '_tax_class', ''),
(50, 7, '_line_subtotal', '184.9'),
(51, 7, '_line_subtotal_tax', '0'),
(52, 7, '_line_total', '182.9'),
(53, 7, '_line_tax', '0'),
(54, 7, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(55, 8, '_product_id', '120'),
(56, 8, '_variation_id', '0'),
(57, 8, '_qty', '1'),
(58, 8, '_tax_class', ''),
(59, 8, '_line_subtotal', '250'),
(60, 8, '_line_subtotal_tax', '0'),
(61, 8, '_line_total', '248'),
(62, 8, '_line_tax', '0'),
(63, 8, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(64, 9, '_product_id', '104'),
(65, 9, '_variation_id', '0'),
(66, 9, '_qty', '1'),
(67, 9, '_tax_class', ''),
(68, 9, '_line_subtotal', '65'),
(69, 9, '_line_subtotal_tax', '0'),
(70, 9, '_line_total', '63'),
(71, 9, '_line_tax', '0'),
(72, 9, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(73, 10, '_product_id', '114'),
(74, 10, '_variation_id', '0'),
(75, 10, '_qty', '1'),
(76, 10, '_tax_class', ''),
(77, 10, '_line_subtotal', '42.9'),
(78, 10, '_line_subtotal_tax', '0'),
(79, 10, '_line_total', '40.9'),
(80, 10, '_line_tax', '0'),
(81, 10, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(82, 11, 'method_id', 'free_shipping'),
(83, 11, 'instance_id', '2'),
(84, 11, 'cost', '0.00'),
(85, 11, 'total_tax', '0'),
(86, 11, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(87, 11, 'Itens', 'Kit Fraldas Huggies Turma da Mônica Tripla Proteção M &times; 1, Kit de Fraldas Pampers Mega Premium Care G - 240 &times; 1, Fralda Descartável Pampers Confort Sec Bag Giga G 70 Unidades &times; 1, Fraldas Huggies Turma da Mônica Tripla Proteção G &times; 1'),
(88, 12, 'discount_amount', '8'),
(89, 12, 'discount_amount_tax', '0'),
(90, 12, 'coupon_data', 'a:24:{s:2:\"id\";i:125;s:4:\"code\";s:5:\"tes45\";s:6:\"amount\";s:1:\"2\";s:12:\"date_created\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2018-07-07 07:16:18.000000\";s:13:\"timezone_type\";i:1;s:8:\"timezone\";s:6:\"+00:00\";}s:13:\"date_modified\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2018-07-07 07:16:18.000000\";s:13:\"timezone_type\";i:1;s:8:\"timezone\";s:6:\"+00:00\";}s:12:\"date_expires\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2018-07-08 00:00:00.000000\";s:13:\"timezone_type\";i:1;s:8:\"timezone\";s:6:\"+00:00\";}s:13:\"discount_type\";s:13:\"fixed_product\";s:11:\"description\";s:0:\"\";s:11:\"usage_count\";i:0;s:14:\"individual_use\";b:0;s:11:\"product_ids\";a:0:{}s:20:\"excluded_product_ids\";a:0:{}s:11:\"usage_limit\";i:0;s:20:\"usage_limit_per_user\";i:0;s:22:\"limit_usage_to_x_items\";N;s:13:\"free_shipping\";b:0;s:18:\"product_categories\";a:0:{}s:27:\"excluded_product_categories\";a:0:{}s:18:\"exclude_sale_items\";b:0;s:14:\"minimum_amount\";s:0:\"\";s:14:\"maximum_amount\";s:0:\"\";s:18:\"email_restrictions\";a:0:{}s:7:\"virtual\";b:0;s:9:\"meta_data\";a:1:{i:0;O:12:\"WC_Meta_Data\":2:{s:15:\"\0*\0current_data\";a:3:{s:2:\"id\";i:1116;s:3:\"key\";s:19:\"_is_coupon_cashback\";s:5:\"value\";s:2:\"no\";}s:7:\"\0*\0data\";a:3:{s:2:\"id\";i:1116;s:3:\"key\";s:19:\"_is_coupon_cashback\";s:5:\"value\";s:2:\"no\";}}}}'),
(91, 13, '_product_id', '116'),
(92, 13, '_variation_id', '0'),
(93, 13, '_qty', '1'),
(94, 13, '_tax_class', ''),
(95, 13, '_line_subtotal', '184.9'),
(96, 13, '_line_subtotal_tax', '0'),
(97, 13, '_line_total', '184.9'),
(98, 13, '_line_tax', '0'),
(99, 13, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(100, 14, 'method_id', 'free_shipping'),
(101, 14, 'instance_id', '2'),
(102, 14, 'cost', '0.00'),
(103, 14, 'total_tax', '0'),
(104, 14, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(105, 14, 'Itens', 'Kit Fraldas Huggies Turma da Mônica Tripla Proteção M &times; 1'),
(106, 15, '_product_id', '114'),
(107, 15, '_variation_id', '0'),
(108, 15, '_qty', '1'),
(109, 15, '_tax_class', ''),
(110, 15, '_line_subtotal', '42.9'),
(111, 15, '_line_subtotal_tax', '0'),
(112, 15, '_line_total', '42.9'),
(113, 15, '_line_tax', '0'),
(114, 15, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(115, 16, '_product_id', '116'),
(116, 16, '_variation_id', '0'),
(117, 16, '_qty', '1'),
(118, 16, '_tax_class', ''),
(119, 16, '_line_subtotal', '184.9'),
(120, 16, '_line_subtotal_tax', '0'),
(121, 16, '_line_total', '184.9'),
(122, 16, '_line_tax', '0'),
(123, 16, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(124, 17, 'method_id', 'free_shipping'),
(125, 17, 'instance_id', '2'),
(126, 17, 'cost', '0.00'),
(127, 17, 'total_tax', '0'),
(128, 17, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(129, 17, 'Itens', 'Fraldas Huggies Turma da Mônica Tripla Proteção G &times; 1, Kit Fraldas Huggies Turma da Mônica Tripla Proteção M &times; 1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_order_items`
--

CREATE TABLE `wplook_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wplook_woocommerce_order_items`
--

INSERT INTO `wplook_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Hoodie', 'line_item', 66),
(2, 'Taxa fixa', 'shipping', 66),
(3, 'Fralda Descartável Pampers Confort Sec Bag Giga G 70 Unidades', 'line_item', 112),
(4, 'Envio grátis', 'shipping', 112),
(5, 'Fralda Descartável Pampers Confort Sec Bag Giga G 70 Unidades', 'line_item', 113),
(6, 'Envio grátis', 'shipping', 113),
(7, 'Kit Fraldas Huggies Turma da Mônica Tripla Proteção M', 'line_item', 126),
(8, 'Kit de Fraldas Pampers Mega Premium Care G - 240', 'line_item', 126),
(9, 'Fralda Descartável Pampers Confort Sec Bag Giga G 70 Unidades', 'line_item', 126),
(10, 'Fraldas Huggies Turma da Mônica Tripla Proteção G', 'line_item', 126),
(11, 'Envio grátis', 'shipping', 126),
(12, 'tes45', 'coupon', 126),
(13, 'Kit Fraldas Huggies Turma da Mônica Tripla Proteção M', 'line_item', 131),
(14, 'Envio grátis', 'shipping', 131),
(15, 'Fraldas Huggies Turma da Mônica Tripla Proteção G', 'line_item', 132),
(16, 'Kit Fraldas Huggies Turma da Mônica Tripla Proteção M', 'line_item', 132),
(17, 'Envio grátis', 'shipping', 132);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wplook_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_payment_tokens`
--

CREATE TABLE `wplook_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_sessions`
--

CREATE TABLE `wplook_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_shipping_zones`
--

CREATE TABLE `wplook_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wplook_woocommerce_shipping_zones`
--

INSERT INTO `wplook_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Brasil', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wplook_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wplook_woocommerce_shipping_zone_locations`
--

INSERT INTO `wplook_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'BR', 'country');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wplook_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wplook_woocommerce_shipping_zone_methods`
--

INSERT INTO `wplook_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 2, 'free_shipping', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_tax_rates`
--

CREATE TABLE `wplook_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woocommerce_tax_rate_locations`
--

CREATE TABLE `wplook_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woo_wallet_transactions`
--

CREATE TABLE `wplook_woo_wallet_transactions` (
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `currency` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wplook_woo_wallet_transactions`
--

INSERT INTO `wplook_woo_wallet_transactions` (`transaction_id`, `blog_id`, `user_id`, `type`, `amount`, `balance`, `currency`, `details`, `deleted`, `date`) VALUES
(1, 1, 2, 'credit', '0.65', '0.65', 'BRL', 'Wallet credit through cashback #112', 0, '2018-07-07 06:55:04'),
(2, 1, 2, 'debit', '0.65', '0.00', 'BRL', 'Cashback for #112 has been debited upon cancellation', 0, '2018-07-07 06:55:40'),
(3, 1, 1, 'credit', '1.00', '1.00', 'BRL', 'Wallet credit through cashback #113', 0, '2018-07-07 06:55:57'),
(4, 1, 1, 'debit', '1.00', '0.00', 'BRL', 'For order payment #126', 0, '2018-07-07 07:17:46'),
(5, 1, 1, 'credit', '3.08', '3.08', 'BRL', 'Wallet credit through cashback #126', 0, '2018-07-07 07:17:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplook_woo_wallet_transaction_meta`
--

CREATE TABLE `wplook_woo_wallet_transaction_meta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wplook_woo_wallet_transaction_meta`
--

INSERT INTO `wplook_woo_wallet_transaction_meta` (`meta_id`, `transaction_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_type', 'cashback'),
(2, 3, '_type', 'cashback'),
(3, 4, '_partial_payment', '1'),
(4, 5, '_type', 'cashback');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wplook_commentmeta`
--
ALTER TABLE `wplook_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wplook_comments`
--
ALTER TABLE `wplook_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wplook_failed_jobs`
--
ALTER TABLE `wplook_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wplook_links`
--
ALTER TABLE `wplook_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wplook_options`
--
ALTER TABLE `wplook_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wplook_postmeta`
--
ALTER TABLE `wplook_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wplook_posts`
--
ALTER TABLE `wplook_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wplook_queue`
--
ALTER TABLE `wplook_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wplook_termmeta`
--
ALTER TABLE `wplook_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wplook_terms`
--
ALTER TABLE `wplook_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wplook_term_relationships`
--
ALTER TABLE `wplook_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wplook_term_taxonomy`
--
ALTER TABLE `wplook_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wplook_usermeta`
--
ALTER TABLE `wplook_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wplook_users`
--
ALTER TABLE `wplook_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wplook_wc_download_log`
--
ALTER TABLE `wplook_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wplook_wc_webhooks`
--
ALTER TABLE `wplook_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wplook_woocommerce_api_keys`
--
ALTER TABLE `wplook_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wplook_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wplook_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wplook_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wplook_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wplook_woocommerce_log`
--
ALTER TABLE `wplook_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wplook_woocommerce_order_itemmeta`
--
ALTER TABLE `wplook_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wplook_woocommerce_order_items`
--
ALTER TABLE `wplook_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wplook_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wplook_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wplook_woocommerce_payment_tokens`
--
ALTER TABLE `wplook_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wplook_woocommerce_sessions`
--
ALTER TABLE `wplook_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wplook_woocommerce_shipping_zones`
--
ALTER TABLE `wplook_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wplook_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wplook_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wplook_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wplook_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wplook_woocommerce_tax_rates`
--
ALTER TABLE `wplook_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wplook_woocommerce_tax_rate_locations`
--
ALTER TABLE `wplook_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wplook_woo_wallet_transactions`
--
ALTER TABLE `wplook_woo_wallet_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wplook_woo_wallet_transaction_meta`
--
ALTER TABLE `wplook_woo_wallet_transaction_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wplook_commentmeta`
--
ALTER TABLE `wplook_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wplook_comments`
--
ALTER TABLE `wplook_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wplook_failed_jobs`
--
ALTER TABLE `wplook_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplook_links`
--
ALTER TABLE `wplook_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplook_options`
--
ALTER TABLE `wplook_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2775;

--
-- AUTO_INCREMENT for table `wplook_postmeta`
--
ALTER TABLE `wplook_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1275;

--
-- AUTO_INCREMENT for table `wplook_posts`
--
ALTER TABLE `wplook_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `wplook_queue`
--
ALTER TABLE `wplook_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplook_termmeta`
--
ALTER TABLE `wplook_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wplook_terms`
--
ALTER TABLE `wplook_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wplook_term_taxonomy`
--
ALTER TABLE `wplook_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wplook_usermeta`
--
ALTER TABLE `wplook_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `wplook_users`
--
ALTER TABLE `wplook_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wplook_wc_download_log`
--
ALTER TABLE `wplook_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplook_wc_webhooks`
--
ALTER TABLE `wplook_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_api_keys`
--
ALTER TABLE `wplook_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wplook_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wplook_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_log`
--
ALTER TABLE `wplook_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_order_itemmeta`
--
ALTER TABLE `wplook_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_order_items`
--
ALTER TABLE `wplook_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wplook_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_payment_tokens`
--
ALTER TABLE `wplook_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_sessions`
--
ALTER TABLE `wplook_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_shipping_zones`
--
ALTER TABLE `wplook_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wplook_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wplook_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_tax_rates`
--
ALTER TABLE `wplook_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplook_woocommerce_tax_rate_locations`
--
ALTER TABLE `wplook_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplook_woo_wallet_transactions`
--
ALTER TABLE `wplook_woo_wallet_transactions`
  MODIFY `transaction_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wplook_woo_wallet_transaction_meta`
--
ALTER TABLE `wplook_woo_wallet_transaction_meta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
