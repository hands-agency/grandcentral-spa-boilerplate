-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 24 Juillet 2017 à 14:40
-- Version du serveur :  5.6.35
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gc_spa_boilerplate`
--

-- --------------------------------------------------------

--
-- Structure de la table `api`
--

DROP TABLE IF EXISTS `api`;
CREATE TABLE `api` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `live` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `blog`
--

INSERT INTO `blog` (`id`, `title`, `text`, `image`, `key`, `url`, `owner`, `created`, `updated`, `status`, `live`) VALUES
(1, '{\"fr\":\"blog 1 fr\",\"en\":\"blog 1 en\"}', '{\"fr\":\"{\\\"data\\\":[{\\\"type\\\":\\\"text\\\",\\\"data\\\":{\\\"text\\\":\\\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\\n\\\"}}]}\",\"en\":\"\"}', '[{\"url\":\"\\/\\/image-13.jpg\",\"title\":\"\"}]', '201ecfd7a6d289c3244afd7b62a7ca3d', '{\"fr\":\"\\/blog-1-fr\",\"en\":\"\\/blog-1-en\"}', 'human_2', '2017-07-21 20:06:13', '2017-07-21 20:06:13', 'live', 0),
(2, '{\"fr\":\"blog 2 fr\",\"en\":\"blog 2 en\"}', '{\"fr\":\"{\\\"data\\\":[{\\\"type\\\":\\\"text\\\",\\\"data\\\":{\\\"text\\\":\\\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\\n\\\"}}]}\",\"en\":\"\"}', '[{\"url\":\"\\/\\/image-13.jpg\",\"title\":\"\"}]', '201ecfd7a6d289c3244afd7b62a7ca3d', '{\"fr\":\"\\/blog-2-fr\",\"en\":\"\\/blog-2-en\"}', 'human_2', '2017-07-21 20:06:29', '2017-07-21 20:06:29', 'live', 1);

-- --------------------------------------------------------

--
-- Structure de la table `const`
--

DROP TABLE IF EXISTS `const`;
CREATE TABLE `const` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `const`
--

INSERT INTO `const` (`id`, `key`, `title`, `created`, `updated`, `status`, `owner`) VALUES
(1, 'DAY_1', '{\"fr\":\"Lundi\",\"en\":\"Monday\"}', '2014-05-27 20:36:36', '2014-06-18 10:33:57', 'live', 'human_2'),
(2, 'DAY_2', '{\"fr\":\"Mardi\",\"en\":\"Tuesday\"}', '2014-05-27 20:36:36', '2014-06-18 10:34:09', 'live', 'human_2'),
(3, 'DAY_3', '{\"fr\":\"Mercredi\",\"en\":\"Wednesday\"}', '2014-05-27 20:36:36', '2014-06-18 10:35:33', 'live', 'human_2'),
(4, 'DAY_4', '{\"fr\":\"Jeudi\",\"en\":\"Thursday\"}', '2014-05-27 20:36:36', '2014-06-18 10:35:43', 'live', 'human_2'),
(5, 'DAY_5', '{\"fr\":\"Vendredi\",\"en\":\"Friday\"}', '2014-05-27 20:36:36', '2014-06-18 10:35:55', 'live', 'human_2'),
(6, 'DAY_6', '{\"fr\":\"Samedi\",\"en\":\"Saturday\"}', '2014-05-27 20:36:36', '2014-06-18 10:36:07', 'live', 'human_2'),
(7, 'DAY_7', '{\"fr\":\"Dimanche\",\"en\":\"Sunday\"}', '2014-05-27 20:36:36', '2014-06-18 10:36:18', 'live', 'human_2'),
(8, 'MONTH_1', '{\"fr\":\"janvier\",\"en\":\"January\"}', '2014-05-27 20:36:36', '2014-07-03 12:43:00', 'live', 'human_2'),
(9, 'MONTH_2', '{\"fr\":\"février\",\"en\":\"February\"}', '2014-05-27 20:36:36', '2014-07-03 12:42:47', 'live', 'human_2'),
(10, 'MONTH_3', '{\"fr\":\"mars\",\"en\":\"March\"}', '2014-05-27 20:36:36', '2014-07-03 12:42:36', 'live', 'human_2'),
(11, 'MONTH_4', '{\"fr\":\"avril\",\"en\":\"April\"}', '2014-05-27 20:36:36', '2014-07-03 12:42:25', 'live', 'human_2'),
(12, 'MONTH_5', '{\"fr\":\"mai\",\"en\":\"May\"}', '2014-05-27 20:36:36', '2014-07-03 12:42:15', 'live', 'human_2'),
(13, 'MONTH_6', '{\"fr\":\"juin\",\"en\":\"June\"}', '2014-05-27 20:36:36', '2014-07-03 12:42:04', 'live', 'human_2'),
(14, 'MONTH_7', '{\"fr\":\"juillet\",\"en\":\"July\"}', '2014-05-27 20:36:36', '2014-07-03 12:21:34', 'live', 'human_2'),
(15, 'MONTH_8', '{\"fr\":\"août\",\"en\":\"August\"}', '2014-05-27 20:36:36', '2014-07-03 12:41:52', 'live', 'human_2'),
(16, 'MONTH_9', '{\"fr\":\"septembre\",\"en\":\"September\"}', '2014-05-27 20:36:36', '2014-07-03 12:41:41', 'live', 'human_2'),
(17, 'MONTH_10', '{\"fr\":\"octobre\",\"en\":\"October\"}', '2014-05-27 20:36:36', '2014-07-03 12:41:29', 'live', 'human_2'),
(18, 'MONTH_11', '{\"fr\":\"novembre\",\"en\":\"November\"}', '2014-05-27 20:36:36', '2014-07-03 12:41:17', 'live', 'human_2'),
(20, 'MONTH_12', '{\"fr\":\"décembre\",\"en\":\"December\"}', '2014-05-27 20:36:36', '2014-07-03 12:41:06', 'live', 'human_2');

-- --------------------------------------------------------

--
-- Structure de la table `form`
--

DROP TABLE IF EXISTS `form`;
CREATE TABLE `form` (
  `id` mediumint(3) UNSIGNED NOT NULL COMMENT 'The unique identifier',
  `key` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The key',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'A short title',
  `descr` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'A short description',
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Template',
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Action / routine',
  `method` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Method',
  `target` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Target',
  `enctype` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Enctype',
  `field` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'The fields',
  `created` datetime NOT NULL COMMENT 'Created Datetime',
  `updated` datetime NOT NULL COMMENT 'Updated Datetime',
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `form`
--

INSERT INTO `form` (`id`, `key`, `title`, `descr`, `template`, `action`, `method`, `target`, `enctype`, `field`, `created`, `updated`, `status`) VALUES
(1, 'hands_page', 'hands_page', '', 'default', 'post', 'post', '', '', '{\"id\":{\"key\":\"id\",\"label\":\"id\",\"type\":\"number\",\"readonly\":true},\"key\":{\"key\":\"key\",\"label\":\"key\",\"type\":\"text\"},\"title\":{\"key\":\"title\",\"label\":\"title\",\"type\":\"i18n\",\"field\":\"fieldText\"},\"metatitle\":{\"key\":\"metatitle\",\"label\":\"metatitle\",\"type\":\"i18n\",\"field\":\"fieldText\"},\"metadescr\":{\"key\":\"metadescr\",\"label\":\"metadescr\",\"type\":\"i18n\",\"field\":\"fieldTextarea\"},\"url\":{\"key\":\"url\",\"label\":\"url\",\"type\":\"url\"},\"type\":{\"key\":\"type\",\"label\":\"type\",\"type\":\"pagetype\"},\"section\":{\"key\":\"section\",\"label\":\"section\",\"valuestype\":\"bunch\",\"values\":[{\"item\":\"section\",\"property\":\"\"}],\"placeholder\":\"...\",\"type\":\"multipleselect\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"group\":{\"key\":\"group\",\"label\":\"group\",\"valuestype\":\"bunch\",\"values\":[{\"item\":\"group\",\"property\":\"\"}],\"placeholder\":\"...\",\"type\":\"multipleselect\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"system\":{\"key\":\"system\",\"label\":\"system\",\"type\":\"bool\",\"required\":\"0\"},\"created\":{\"key\":\"created\",\"label\":\"created\",\"type\":\"date\"},\"updated\":{\"key\":\"updated\",\"label\":\"updated\",\"type\":\"date\"},\"owner\":{\"key\":\"owner\",\"label\":\"owner\",\"type\":\"text\"},\"status\":{\"key\":\"status\",\"label\":\"status\",\"type\":\"text\"},\"child\":{\"key\":\"child\",\"label\":\"child\",\"valuestype\":\"bunch\",\"values\":[{\"item\":\"page\",\"property\":\"\"}],\"placeholder\":\"...\",\"type\":\"multipleselect\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"parent\":{\"key\":\"parent\",\"label\":\"parent\",\"valuestype\":\"bunch\",\"values\":[{\"item\":\"page\",\"property\":\"\"}],\"placeholder\":\"...\",\"type\":\"select\",\"required\":\"0\",\"min\":\"0\",\"max\":\"1\"},\"live\":{\"key\":\"live\",\"label\":\"live\",\"type\":\"text\"}}', '2016-02-23 12:12:34', '2016-02-23 12:16:18', 'live'),
(2, 'hands_item', 'hands_item', '', 'default', 'post', 'post', '', '', '{\"id\":{\"key\":\"id\",\"label\":\"id\",\"type\":\"number\",\"readonly\":true},\"key\":{\"key\":\"key\",\"label\":\"key\",\"type\":\"text\",\"required\":true},\"title\":{\"key\":\"title\",\"label\":\"title\",\"type\":\"text\",\"required\":\"1\",\"min\":\"0\",\"max\":\"255\"},\"descr\":{\"key\":\"descr\",\"label\":\"descr\",\"type\":\"textarea\",\"required\":\"0\",\"min\":\"0\",\"max\":\"500\"},\"system\":{\"key\":\"system\",\"label\":\"system\",\"type\":\"bool\",\"required\":\"0\"},\"attr\":{\"key\":\"attr\",\"label\":\"attr\",\"type\":\"attr\"},\"created\":{\"key\":\"created\",\"label\":\"created\",\"type\":\"date\"},\"updated\":{\"key\":\"updated\",\"label\":\"updated\",\"type\":\"date\"},\"status\":{\"key\":\"status\",\"label\":\"status\",\"type\":\"text\"},\"hasurl\":{\"key\":\"hasurl\",\"label\":\"hasurl\",\"type\":\"bool\",\"required\":\"0\"},\"owner\":{\"key\":\"owner\",\"label\":\"owner\",\"type\":\"text\"},\"icon\":{\"key\":\"icon\",\"label\":\"icon\",\"type\":\"text\",\"required\":\"0\",\"min\":\"\",\"max\":\"30\"}}', '2016-02-23 12:15:33', '2016-02-23 12:15:33', 'live'),
(3, 'boilerplate_page', 'boilerplate_page', '', 'default', 'post', '', '', '', '{\"id\":{\"key\":\"id\",\"label\":\"id\",\"type\":\"number\",\"readonly\":true},\"key\":{\"key\":\"key\",\"label\":\"key\",\"type\":\"text\"},\"title\":{\"key\":\"title\",\"label\":\"title\",\"type\":\"i18n\",\"field\":\"fieldText\"},\"metatitle\":{\"key\":\"metatitle\",\"label\":\"metatitle\",\"type\":\"i18n\",\"field\":\"fieldText\"},\"metadescr\":{\"key\":\"metadescr\",\"label\":\"metadescr\",\"type\":\"i18n\",\"field\":\"fieldTextarea\"},\"url\":{\"key\":\"url\",\"label\":\"url\",\"type\":\"url\"},\"type\":{\"key\":\"type\",\"label\":\"type\",\"type\":\"pagetype\"},\"section\":{\"key\":\"section\",\"label\":\"section\",\"valuestype\":\"bunch\",\"values\":[{\"item\":\"section\",\"property\":\"\"}],\"placeholder\":\"...\",\"type\":\"multipleselect\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"group\":{\"key\":\"group\",\"label\":\"group\",\"valuestype\":\"bunch\",\"values\":[{\"item\":\"group\",\"property\":\"\"}],\"placeholder\":\"...\",\"type\":\"multipleselect\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"system\":{\"key\":\"system\",\"label\":\"system\",\"type\":\"bool\",\"required\":\"0\"},\"created\":{\"key\":\"created\",\"label\":\"created\",\"type\":\"date\"},\"updated\":{\"key\":\"updated\",\"label\":\"updated\",\"type\":\"date\"},\"owner\":{\"key\":\"owner\",\"label\":\"owner\",\"type\":\"text\"},\"status\":{\"key\":\"status\",\"label\":\"status\",\"type\":\"text\"},\"child\":{\"key\":\"child\",\"label\":\"child\",\"valuestype\":\"bunch\",\"values\":[{\"item\":\"page\",\"property\":\"\"}],\"placeholder\":\"...\",\"type\":\"multipleselect\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"parent\":{\"key\":\"parent\",\"label\":\"parent\",\"valuestype\":\"bunch\",\"values\":[{\"item\":\"page\",\"property\":\"\"}],\"placeholder\":\"...\",\"type\":\"select\",\"required\":\"0\",\"min\":\"0\",\"max\":\"1\"},\"live\":{\"key\":\"live\",\"label\":\"live\",\"type\":\"text\"}}', '2017-07-19 15:44:18', '2017-07-19 15:44:18', 'live'),
(4, 'boilerplate_item', 'boilerplate_item', '', 'default', 'post', '', '', '', '{\"id\":{\"key\":\"id\",\"label\":\"id\",\"type\":\"number\",\"readonly\":true},\"key\":{\"key\":\"key\",\"label\":\"key\",\"type\":\"text\",\"required\":true},\"title\":{\"key\":\"title\",\"label\":\"title\",\"type\":\"text\",\"required\":\"1\",\"min\":\"0\",\"max\":\"255\"},\"descr\":{\"key\":\"descr\",\"label\":\"descr\",\"type\":\"textarea\",\"required\":\"0\",\"min\":\"0\",\"max\":\"500\"},\"system\":{\"key\":\"system\",\"label\":\"system\",\"type\":\"bool\",\"required\":\"0\"},\"attr\":{\"key\":\"attr\",\"label\":\"attr\",\"type\":\"attr\"},\"created\":{\"key\":\"created\",\"label\":\"created\",\"type\":\"date\"},\"updated\":{\"key\":\"updated\",\"label\":\"updated\",\"type\":\"date\"},\"status\":{\"key\":\"status\",\"label\":\"status\",\"type\":\"text\"},\"hasurl\":{\"key\":\"hasurl\",\"label\":\"hasurl\",\"type\":\"bool\",\"required\":\"0\"},\"owner\":{\"key\":\"owner\",\"label\":\"owner\",\"type\":\"text\"},\"icon\":{\"key\":\"icon\",\"label\":\"icon\",\"type\":\"text\",\"required\":\"0\",\"min\":\"\",\"max\":\"30\"}}', '2017-07-19 15:52:29', '2017-07-19 15:52:29', 'live'),
(5, 'boilerplate_news', 'boilerplate_news', '', 'default', 'post', 'post', '', '', '{\"id\":{\"key\":\"id\",\"label\":\"id\",\"type\":\"number\",\"readonly\":true},\"title\":{\"key\":\"title\",\"label\":\"title\",\"type\":\"text\",\"required\":\"0\",\"min\":\"0\",\"max\":\"255\"},\"text\":{\"key\":\"text\",\"label\":\"text\",\"type\":\"sirtrevor\",\"required\":\"0\"},\"image\":{\"key\":\"image\",\"label\":\"image\",\"type\":\"media\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"key\":{\"key\":\"key\",\"label\":\"key\",\"type\":\"text\"},\"url\":{\"key\":\"url\",\"label\":\"url\",\"type\":\"url\"},\"owner\":{\"key\":\"owner\",\"label\":\"owner\",\"type\":\"text\"},\"created\":{\"key\":\"created\",\"label\":\"created\",\"type\":\"date\"},\"updated\":{\"key\":\"updated\",\"label\":\"updated\",\"type\":\"date\"},\"status\":{\"key\":\"status\",\"label\":\"status\",\"type\":\"text\"},\"live\":{\"key\":\"live\",\"label\":\"live\",\"type\":\"text\"},\"version\":{\"key\":\"version\",\"label\":\"version\",\"type\":\"select\",\"valuestype\":\"bunch\",\"placeholder\":\"...\",\"values\":[{\"item\":\"version\",\"property\":\"\"}],\"required\":\"0\"}}', '2017-07-20 16:17:57', '2017-07-21 19:56:07', 'live'),
(6, 'boilerplate_section', 'boilerplate_section', '', 'default', 'post', '', '', '', '{\"id\":{\"key\":\"id\",\"label\":\"The unique identifier\",\"type\":\"number\",\"readonly\":true},\"key\":{\"key\":\"key\",\"label\":\"The key\",\"type\":\"text\"},\"title\":{\"key\":\"title\",\"label\":\"A short title\",\"type\":\"text\",\"required\":\"1\",\"min\":\"0\",\"max\":\"255\"},\"descr\":{\"key\":\"descr\",\"label\":\"A short description\",\"type\":\"textarea\",\"min\":\"0\",\"max\":\"500\"},\"zone\":{\"key\":\"zone\",\"label\":\"The zone\",\"type\":\"text\",\"min\":\"0\",\"max\":\"255\"},\"app\":{\"key\":\"app\",\"label\":\"The template\",\"type\":\"app\",\"required\":\"1\"},\"created\":{\"key\":\"created\",\"label\":\"Created Datetime\",\"type\":\"date\"},\"updated\":{\"key\":\"updated\",\"label\":\"Updated Datetime\",\"type\":\"date\"},\"status\":{\"key\":\"status\",\"label\":\"Status\",\"type\":\"text\"},\"owner\":{\"key\":\"owner\",\"label\":\"Owner\",\"type\":\"text\"}}', '2017-07-21 18:48:00', '2017-07-21 18:48:00', 'live'),
(7, 'boilerplate_blog', 'boilerplate_blog', '', 'default', 'post', 'post', '', '', '{\"id\":{\"key\":\"id\",\"label\":\"id\",\"type\":\"number\",\"readonly\":true},\"title\":{\"key\":\"title\",\"label\":\"title\",\"type\":\"i18n\",\"field\":\"fieldText\"},\"text\":{\"key\":\"text\",\"label\":\"text\",\"type\":\"i18n\",\"field\":\"fieldSirtrevor\"},\"image\":{\"key\":\"image\",\"label\":\"image\",\"type\":\"media\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"key\":{\"key\":\"key\",\"label\":\"key\",\"type\":\"text\"},\"url\":{\"key\":\"url\",\"label\":\"url\",\"type\":\"url\"},\"owner\":{\"key\":\"owner\",\"label\":\"owner\",\"type\":\"text\"},\"created\":{\"key\":\"created\",\"label\":\"created\",\"type\":\"date\"},\"updated\":{\"key\":\"updated\",\"label\":\"updated\",\"type\":\"date\"},\"status\":{\"key\":\"status\",\"label\":\"status\",\"type\":\"text\"},\"live\":{\"key\":\"live\",\"label\":\"live\",\"type\":\"text\"}}', '2017-07-21 20:05:41', '2017-07-21 20:05:41', 'live'),
(8, 'boilerplate_human', 'boilerplate_human', '', 'default', 'post', 'post', '', '', '{\"id\":{\"key\":\"id\",\"label\":\"id\",\"type\":\"number\",\"readonly\":true},\"key\":{\"key\":\"key\",\"label\":\"key\",\"type\":\"text\"},\"firstname\":{\"key\":\"firstname\",\"label\":\"firstname\",\"type\":\"text\",\"required\":\"0\",\"min\":\"0\",\"max\":\"100\"},\"lastname\":{\"key\":\"lastname\",\"label\":\"lastname\",\"type\":\"text\",\"required\":\"0\",\"min\":\"0\",\"max\":\"100\"},\"descr\":{\"key\":\"descr\",\"label\":\"descr\",\"type\":\"i18n\",\"field\":\"fieldSirtrevor\"},\"title\":{\"key\":\"title\",\"label\":\"title\",\"type\":\"text\",\"required\":\"1\",\"min\":\"0\",\"max\":\"255\"},\"password\":{\"key\":\"password\",\"label\":\"password\",\"type\":\"password\",\"required\":\"0\"},\"created\":{\"key\":\"created\",\"label\":\"created\",\"type\":\"date\"},\"updated\":{\"key\":\"updated\",\"label\":\"updated\",\"type\":\"date\"},\"status\":{\"key\":\"status\",\"label\":\"status\",\"type\":\"text\"},\"system\":{\"key\":\"system\",\"label\":\"system\",\"type\":\"bool\",\"required\":\"0\"},\"profilepic\":{\"key\":\"profilepic\",\"label\":\"profilepic\",\"type\":\"media\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"group\":{\"key\":\"group\",\"label\":\"group\",\"valuestype\":\"bunch\",\"values\":[{\"item\":\"group\"}],\"placeholder\":\"...\",\"type\":\"multipleselect\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"owner\":{\"key\":\"owner\",\"label\":\"owner\",\"type\":\"text\"},\"pref\":{\"key\":\"pref\",\"label\":\"pref\",\"type\":\"array\"}}', '2017-07-24 14:36:36', '2017-07-24 14:36:36', 'live');

-- --------------------------------------------------------

--
-- Structure de la table `group`
--

DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `group`
--

INSERT INTO `group` (`id`, `key`, `title`, `admin`, `created`, `updated`, `status`, `owner`) VALUES
(1, 'admin', 'Admin (back-end)', 1, '2013-10-02 08:35:40', '2014-07-04 12:38:27', 'live', '');

-- --------------------------------------------------------

--
-- Structure de la table `human`
--

DROP TABLE IF EXISTS `human`;
CREATE TABLE `human` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descr` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `system` tinyint(1) NOT NULL,
  `profilepic` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pref` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `human`
--

INSERT INTO `human` (`id`, `key`, `firstname`, `lastname`, `descr`, `title`, `password`, `created`, `updated`, `status`, `system`, `profilepic`, `owner`, `pref`) VALUES
(1, 'anonymous', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'live', 1, '', 'human_2', ''),
(2, 'administrator', '', '', '{\"fr\":\"\",\"en\":\"\"}', 'Admin', '$2y$10$n.yfTPOZ12ti0rzRlR/yFu.f8c.6IDIPJYV91qSIZmLkG2JVcyQYi', '2015-03-28 15:27:52', '2017-07-24 14:40:04', 'live', 0, '', 'human_2', '');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descr` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `system` tinyint(1) NOT NULL,
  `attr` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `hasurl` tinyint(1) NOT NULL,
  `owner` mediumint(3) UNSIGNED NOT NULL,
  `icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `item`
--

INSERT INTO `item` (`id`, `key`, `title`, `descr`, `system`, `attr`, `created`, `updated`, `status`, `hasurl`, `owner`, `icon`) VALUES
(1, 'item', 'Items', '', 1, '{\"id\":{\"key\":\"id\",\"type\":\"id\"},\"key\":{\"key\":\"key\",\"type\":\"key\"},\"title\":{\"key\":\"title\",\"type\":\"string\",\"required\":\"1\",\"min\":\"0\",\"max\":\"255\"},\"descr\":{\"key\":\"descr\",\"type\":\"string\",\"required\":\"0\",\"min\":\"0\",\"max\":\"500\"},\"system\":{\"key\":\"system\",\"type\":\"bool\",\"required\":\"0\"},\"attr\":{\"key\":\"attr\",\"type\":\"array\"},\"created\":{\"key\":\"created\",\"type\":\"created\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\"},\"status\":{\"key\":\"status\",\"type\":\"status\"},\"hasurl\":{\"key\":\"hasurl\",\"type\":\"bool\",\"required\":\"0\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\"},\"icon\":{\"key\":\"icon\",\"type\":\"string\",\"required\":\"0\",\"min\":\"\",\"max\":\"30\"}}', '2013-10-31 12:55:21', '2014-06-10 12:35:40', 'live', 0, 2, ''),
(2, 'site', 'Site', 'Manage your website basics, and the apps that will be opened at all time.', 1, '{\"id\":{\"key\":\"id\",\"type\":\"id\"},\"key\":{\"key\":\"key\",\"type\":\"key\"},\"title\":{\"key\":\"title\",\"type\":\"string\",\"required\":\"1\",\"min\":\"0\",\"max\":\"255\"},\"descr\":{\"key\":\"descr\",\"type\":\"string\",\"required\":\"0\",\"min\":\"0\",\"max\":\"500\"},\"created\":{\"key\":\"created\",\"type\":\"created\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\"},\"status\":{\"key\":\"status\",\"type\":\"status\"},\"defaultversion\":{\"key\":\"defaultversion\",\"type\":\"int\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\"},\"favicon\":{\"key\":\"favicon\",\"type\":\"media\",\"required\":\"0\",\"min\":\"0\",\"max\":\"1\"}}', '2013-11-17 14:17:48', '2015-01-02 18:49:03', 'live', 0, 2, ''),
(3, 'page', 'Page', '', 1, '{\"id\":{\"key\":\"id\",\"type\":\"id\",\"field\":\"\"},\"key\":{\"key\":\"key\",\"type\":\"key\",\"field\":\"\"},\"title\":{\"key\":\"title\",\"type\":\"i18n\",\"field\":\"fieldText\",\"attr\":\"attrString\"},\"metatitle\":{\"key\":\"metatitle\",\"type\":\"i18n\",\"field\":\"fieldText\",\"attr\":\"attrString\"},\"metadescr\":{\"key\":\"metadescr\",\"type\":\"i18n\",\"field\":\"fieldTextarea\",\"attr\":\"attrString\"},\"url\":{\"key\":\"url\",\"type\":\"url\",\"field\":\"\"},\"type\":{\"key\":\"type\",\"type\":\"array\",\"field\":\"\"},\"section\":{\"key\":\"section\",\"type\":\"rel\",\"required\":\"0\",\"field\":\"\",\"param\":[{\"item\":\"section\",\"property\":\"\"}],\"min\":\"\",\"max\":\"\"},\"group\":{\"key\":\"group\",\"type\":\"rel\",\"required\":\"0\",\"field\":\"\",\"param\":[{\"item\":\"group\",\"property\":\"\"}],\"min\":\"\",\"max\":\"\"},\"system\":{\"key\":\"system\",\"type\":\"bool\",\"required\":\"0\",\"field\":\"\"},\"created\":{\"key\":\"created\",\"type\":\"created\",\"field\":\"\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\",\"field\":\"\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\",\"field\":\"\"},\"status\":{\"key\":\"status\",\"type\":\"status\",\"field\":\"\"},\"child\":{\"key\":\"child\",\"type\":\"rel\",\"required\":\"0\",\"field\":\"\",\"param\":[{\"item\":\"page\",\"property\":\"\"}],\"min\":\"\",\"max\":\"\"},\"parent\":{\"key\":\"parent\",\"type\":\"rel\",\"required\":\"0\",\"field\":\"\",\"param\":[{\"item\":\"page\",\"property\":\"\"}],\"min\":\"0\",\"max\":\"1\"},\"live\":{\"key\":\"live\",\"type\":\"live\",\"field\":\"\"}}', '2013-10-31 12:59:36', '2016-02-23 12:15:40', 'live', 1, 2, ''),
(4, 'version', 'Versions', '', 1, '{\"id\":{\"key\":\"id\",\"type\":\"id\",\"title\":\"The unique identifier\"},\"key\":{\"key\":\"key\",\"type\":\"key\",\"title\":\"The key\"},\"title\":{\"key\":\"title\",\"type\":\"string\",\"title\":\"A short title\",\"required\":\"1\",\"min\":\"0\",\"max\":\"255\"},\"lang\":{\"key\":\"lang\",\"type\":\"string\",\"title\":\"Language\",\"required\":\"1\",\"min\":\"0\",\"max\":\"32\"},\"created\":{\"key\":\"created\",\"type\":\"created\",\"title\":\"Created Datetime\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\",\"title\":\"Updated Datetime\"},\"status\":{\"key\":\"status\",\"type\":\"status\",\"title\":\"Status\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\",\"title\":\"Owner\"}}', '2013-10-31 12:55:23', '2013-11-18 13:05:29', 'live', 0, 0, ''),
(5, 'human', 'Humains', '', 1, '{\"id\":{\"key\":\"id\",\"type\":\"id\",\"field\":\"\"},\"key\":{\"key\":\"key\",\"type\":\"key\",\"field\":\"\"},\"firstname\":{\"key\":\"firstname\",\"type\":\"string\",\"required\":\"0\",\"field\":\"\",\"min\":\"0\",\"max\":\"100\"},\"lastname\":{\"key\":\"lastname\",\"type\":\"string\",\"required\":\"0\",\"field\":\"\",\"min\":\"0\",\"max\":\"100\"},\"descr\":{\"key\":\"descr\",\"type\":\"i18n\",\"field\":\"fieldSirtrevor\",\"attr\":\"attrSirtrevor\"},\"title\":{\"key\":\"title\",\"type\":\"string\",\"required\":\"1\",\"field\":\"\",\"min\":\"0\",\"max\":\"255\"},\"password\":{\"key\":\"password\",\"type\":\"password\",\"required\":\"0\",\"field\":\"\"},\"created\":{\"key\":\"created\",\"type\":\"created\",\"field\":\"\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\",\"field\":\"\"},\"status\":{\"key\":\"status\",\"type\":\"status\",\"field\":\"\"},\"system\":{\"key\":\"system\",\"type\":\"bool\",\"required\":\"0\",\"field\":\"\"},\"profilepic\":{\"key\":\"profilepic\",\"type\":\"media\",\"field\":\"\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"group\":{\"key\":\"group\",\"type\":\"rel\",\"required\":\"0\",\"field\":\"\",\"param\":[{\"item\":\"group\"}],\"min\":\"\",\"max\":\"\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\",\"field\":\"\"},\"pref\":{\"key\":\"pref\",\"type\":\"array\",\"field\":\"\"}}', '2013-09-25 09:16:34', '2015-06-10 13:06:21', 'live', 0, 2, ''),
(7, 'section', 'Sections', '', 1, '{\"id\":{\"key\":\"id\",\"type\":\"id\",\"title\":\"The unique identifier\"},\"key\":{\"key\":\"key\",\"type\":\"key\",\"title\":\"The key\"},\"title\":{\"key\":\"title\",\"type\":\"string\",\"title\":\"A short title\",\"min\":\"0\",\"max\":\"255\",\"required\":\"1\"},\"descr\":{\"key\":\"descr\",\"type\":\"string\",\"title\":\"A short description\",\"min\":\"0\",\"max\":\"500\"},\"zone\":{\"key\":\"zone\",\"type\":\"string\",\"title\":\"The zone\",\"min\":\"0\",\"max\":\"255\"},\"app\":{\"key\":\"app\",\"type\":\"array\",\"title\":\"The template\",\"required\":\"1\"},\"created\":{\"key\":\"created\",\"type\":\"created\",\"title\":\"Created Datetime\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\",\"title\":\"Updated Datetime\"},\"status\":{\"key\":\"status\",\"type\":\"status\",\"title\":\"Status\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\",\"title\":\"Owner\"}}', '2013-09-25 08:33:09', '2013-11-18 13:05:29', 'live', 0, 0, ''),
(27, 'const', 'Constants', '', 1, '{\"id\":{\"key\":\"id\",\"type\":\"id\"},\"key\":{\"key\":\"key\",\"type\":\"key\"},\"title\":{\"key\":\"title\",\"type\":\"i18n\",\"field\":\"fieldTextarea\"},\"created\":{\"key\":\"created\",\"type\":\"created\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\"},\"status\":{\"key\":\"status\",\"type\":\"status\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\"}}', '2013-10-31 12:55:22', '2015-01-27 11:08:33', 'live', 0, 2, ''),
(28, 'logbook', 'Logbook', '', 1, '{\"id\":{\"key\":\"id\",\"type\":\"id\",\"title\":\"The unique identifier\"},\"key\":{\"key\":\"key\",\"type\":\"key\",\"title\":\"The key\"},\"subject\":{\"key\":\"subject\",\"type\":\"string\",\"title\":\"Subject\",\"required\":\"0\",\"min\":\"0\",\"max\":\"5000\"},\"subjectid\":{\"key\":\"subjectid\",\"type\":\"int\",\"title\":\"Subject ID\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"item\":{\"key\":\"item\",\"type\":\"string\",\"title\":\"item\",\"required\":\"0\",\"min\":\"0\",\"max\":\"5000\"},\"itemid\":{\"key\":\"itemid\",\"type\":\"int\",\"title\":\"item id\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"created\":{\"key\":\"created\",\"type\":\"created\",\"title\":\"Created Datetime\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\",\"title\":\"Updated Datetime\"},\"status\":{\"key\":\"status\",\"type\":\"status\",\"title\":\"Status\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\",\"title\":\"Owner\"}}', '2013-10-31 12:55:17', '2013-10-31 12:55:17', 'live', 0, 0, ''),
(29, 'group', 'Groupes', '', 1, '{\"id\":{\"key\":\"id\",\"type\":\"id\"},\"key\":{\"key\":\"key\",\"type\":\"key\"},\"title\":{\"key\":\"title\",\"type\":\"string\",\"required\":\"1\",\"min\":\"0\",\"max\":\"5000\"},\"admin\":{\"key\":\"admin\",\"type\":\"bool\",\"required\":\"0\"},\"created\":{\"key\":\"created\",\"type\":\"created\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\"},\"status\":{\"key\":\"status\",\"type\":\"status\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\"}}', '2013-10-02 08:35:40', '2015-01-13 19:20:31', 'live', 0, 0, ''),
(30, 'form', 'Forms', '', 1, '{\"id\":{\"key\":\"id\",\"type\":\"id\",\"title\":\"The unique identifier\"},\"key\":{\"key\":\"key\",\"type\":\"key\",\"title\":\"The key\"},\"title\":{\"key\":\"title\",\"type\":\"string\",\"title\":\"Title\",\"min\":\"\",\"max\":\"\",\"required\":\"1\"},\"descr\":{\"key\":\"descr\",\"title\":\"A short description\",\"type\":\"string\",\"min\":\"0\",\"max\":\"500\"},\"template\":{\"key\":\"template\",\"type\":\"string\",\"title\":\"Template\",\"min\":\"\",\"max\":\"\",\"required\":\"1\"},\"action\":{\"key\":\"action\",\"type\":\"string\",\"title\":\"Action\",\"min\":\"\",\"max\":\"\",\"required\":\"1\"},\"method\":{\"key\":\"method\",\"type\":\"list\",\"option\":\"post,get\",\"title\":\"Method\",\"required\":\"1\"},\"target\":{\"key\":\"target\",\"type\":\"string\",\"title\":\"Target\"},\"enctype\":{\"key\":\"enctype\",\"type\":\"list\",\"option\":\"application/x-www-form-urlencoded,multipart/form-data\",\"title\":\"Enctype\",\"required\":\"1\"},\"field\":{\"key\":\"field\",\"type\":\"array\",\"title\":\"The Fields\"},\"created\":{\"key\":\"created\",\"type\":\"created\",\"title\":\"Created Datetime\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\",\"title\":\"Updated Datetime\"},\"status\":{\"key\":\"status\",\"type\":\"status\",\"title\":\"Status\"}}', '2013-09-27 08:33:31', '2013-09-27 08:33:31', 'live', 0, 0, ''),
(31, 'api', 'API', '', 1, '{\"id\":{\"key\":\"id\",\"type\":\"id\"},\"title\":{\"key\":\"title\",\"type\":\"string\",\"required\":\"1\",\"min\":\"0\",\"max\":\"1000\"},\"key\":{\"key\":\"key\",\"type\":\"key\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\"},\"created\":{\"key\":\"created\",\"type\":\"created\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\"},\"status\":{\"key\":\"status\",\"type\":\"status\"},\"method\":{\"key\":\"method\",\"type\":\"list\",\"required\":\"1\",\"values\":\"\",\"placeholder\":\"\"}}', '2013-11-14 14:47:24', '2015-01-02 21:50:06', 'live', 0, 2, ''),
(33, 'machine', 'Machines', '', 1, '{\"id\":{\"key\":\"id\",\"type\":\"id\"},\"key\":{\"key\":\"key\",\"type\":\"key\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\"},\"created\":{\"key\":\"created\",\"type\":\"created\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\"},\"status\":{\"key\":\"status\",\"type\":\"status\"},\"title\":{\"key\":\"title\",\"type\":\"string\",\"required\":\"1\",\"min\":\"0\",\"max\":\"1000\"}}', '2013-11-29 13:21:45', '2015-01-13 19:21:00', 'live', 0, 2, ''),
(34, 'workflow', 'Workflow', '', 1, '{\"id\":{\"key\":\"id\",\"type\":\"id\"},\"key\":{\"key\":\"key\",\"type\":\"key\"},\"item\":{\"key\":\"item\",\"type\":\"string\",\"required\":\"0\",\"min\":\"0\",\"max\":\"500\"},\"original\":{\"key\":\"original\",\"type\":\"item\",\"required\":\"1\"},\"data\":{\"key\":\"data\",\"type\":\"object\",\"required\":\"0\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\"},\"created\":{\"key\":\"created\",\"type\":\"created\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\"},\"status\":{\"key\":\"status\",\"type\":\"status\"}}', '2014-05-24 17:54:44', '2015-01-02 21:49:44', 'live', 0, 2, ''),
(35, 'mail', 'Mail', '', 0, '{\"id\":{\"key\":\"id\",\"type\":\"id\"},\"title\":{\"key\":\"title\",\"type\":\"string\",\"required\":\"0\",\"field\":\"fieldText\",\"min\":\"0\",\"max\":\"255\"},\"subject\":{\"key\":\"subject\",\"type\":\"string\",\"required\":\"0\",\"field\":\"fieldText\",\"min\":\"0\",\"max\":\"255\"},\"fromemail\":{\"key\":\"fromemail\",\"type\":\"string\",\"required\":\"0\",\"field\":\"fieldText\",\"min\":\"0\",\"max\":\"255\"},\"fromname\":{\"key\":\"fromname\",\"type\":\"string\",\"required\":\"0\",\"field\":\"fieldText\",\"min\":\"0\",\"max\":\"255\"},\"toemail\":{\"key\":\"toemail\",\"type\":\"string\",\"required\":\"0\",\"field\":\"fieldText\",\"min\":\"0\",\"max\":\"255\"},\"toname\":{\"key\":\"toname\",\"type\":\"string\",\"required\":\"0\",\"field\":\"fieldText\",\"min\":\"0\",\"max\":\"255\"},\"content\":{\"key\":\"content\",\"type\":\"string\",\"required\":\"0\",\"field\":\"fieldText\",\"min\":\"0\",\"max\":\"5000\"},\"key\":{\"key\":\"key\",\"type\":\"key\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\"},\"created\":{\"key\":\"created\",\"type\":\"created\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\"},\"status\":{\"key\":\"status\",\"type\":\"status\"},\"live\":{\"key\":\"live\",\"type\":\"live\"}}', '2015-09-03 10:39:24', '2015-09-03 10:39:24', 'live', 0, 0, ''),
(36, 'news', 'News', '', 0, '{\"id\":{\"key\":\"id\",\"type\":\"id\",\"field\":\"\"},\"title\":{\"key\":\"title\",\"type\":\"string\",\"required\":\"0\",\"field\":\"fieldText\",\"min\":\"0\",\"max\":\"255\"},\"text\":{\"key\":\"text\",\"type\":\"sirtrevor\",\"required\":\"0\",\"field\":\"fieldSirtrevor\"},\"image\":{\"key\":\"image\",\"type\":\"media\",\"field\":\"fieldMedia\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"key\":{\"key\":\"key\",\"type\":\"key\",\"field\":\"\"},\"url\":{\"key\":\"url\",\"type\":\"url\",\"field\":\"\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\",\"field\":\"\"},\"created\":{\"key\":\"created\",\"type\":\"created\",\"field\":\"\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\",\"field\":\"\"},\"status\":{\"key\":\"status\",\"type\":\"status\",\"field\":\"\"},\"live\":{\"key\":\"live\",\"type\":\"live\",\"field\":\"\"},\"version\":{\"key\":\"version\",\"type\":\"item\",\"required\":\"0\",\"field\":\"fieldSelect\",\"param\":[{\"item\":\"version\",\"property\":\"\"}]}}', '2017-07-20 16:17:13', '2017-07-21 19:56:03', 'live', 1, 0, ''),
(37, 'blog', 'blog i18n', '', 0, '{\"id\":{\"key\":\"id\",\"type\":\"id\"},\"title\":{\"key\":\"title\",\"type\":\"i18n\",\"field\":\"fieldText\",\"attr\":\"attrString\"},\"text\":{\"key\":\"text\",\"type\":\"i18n\",\"field\":\"fieldSirtrevor\",\"attr\":\"attrSirtrevor\"},\"image\":{\"key\":\"image\",\"type\":\"media\",\"field\":\"\",\"required\":\"0\",\"min\":\"\",\"max\":\"\"},\"key\":{\"key\":\"key\",\"type\":\"key\"},\"url\":{\"key\":\"url\",\"type\":\"url\"},\"owner\":{\"key\":\"owner\",\"type\":\"owner\"},\"created\":{\"key\":\"created\",\"type\":\"created\"},\"updated\":{\"key\":\"updated\",\"type\":\"updated\"},\"status\":{\"key\":\"status\",\"type\":\"status\"},\"live\":{\"key\":\"live\",\"type\":\"live\"}}', '2017-07-21 20:05:32', '2017-07-21 20:05:32', 'live', 1, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `logbook`
--

DROP TABLE IF EXISTS `logbook`;
CREATE TABLE `logbook` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `subjectid` mediumint(3) UNSIGNED NOT NULL,
  `item` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `itemid` mediumint(3) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `owner` mediumint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `machine`
--

DROP TABLE IF EXISTS `machine`;
CREATE TABLE `machine` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mail`
--

DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fromemail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fromname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `toemail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `toname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `live` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mail`
--

INSERT INTO `mail` (`id`, `title`, `subject`, `fromemail`, `fromname`, `toemail`, `toname`, `content`, `key`, `owner`, `created`, `updated`, `status`, `live`) VALUES
(1, 'Contact Grand Opening', 'Réponse Pendaison de crémaillère', 'yst@hands.agency', 'No reply Grand-Opening', 'gautier.de.richoufftz@hands.agency', 'Gautier de Richoufftz', '[content]', 'contact', 'human_2', '2015-09-03 10:40:41', '2015-09-03 12:28:30', 'live', 0);

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `live` tinyint(1) NOT NULL,
  `version` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `image`, `key`, `url`, `owner`, `created`, `updated`, `status`, `live`, `version`) VALUES
(1, 'News 1 fr', '{\"data\":[{\"type\":\"text\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\n\"}},{\"type\":\"image\",\"data\":{\"url\":\"/image-13.jpg\",\"title\":\"/image-13.jpg\"}},{\"type\":\"text\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\n\"}}]}', '[{\"url\":\"\\/image-13.jpg\",\"title\":\"\"}]', '8abf934fe2548f965c595d3a084a3bc5', '{\"fr\":\"\\/news-1-fr\",\"en\":\"\\/news-1-en\"}', 'human_2', '2017-07-20 16:21:52', '2017-07-21 19:54:33', 'live', 0, 'version_1'),
(2, 'News 2 fr', '{\"data\":[{\"type\":\"text\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\n\"}}]}', '[{\"url\":\"\\/image-13.jpg\",\"title\":\"\"}]', '74ca35769b2740f5a45d1ddda1042f87', '{\"fr\":\"\\/news-2-fr\",\"en\":\"\\/news-2-en\"}', 'human_2', '2017-07-20 16:22:19', '2017-07-21 19:56:17', 'live', 1, 'version_1'),
(3, 'News 1 en', '{\"data\":[{\"type\":\"text\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\n\"}},{\"type\":\"image\",\"data\":{\"url\":\"/image-13.jpg\",\"title\":\"/image-13.jpg\"}},{\"type\":\"text\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\n\"}}]}', '[{\"url\":\"\\/image-13.jpg\",\"title\":\"\"}]', '8abf934fe2548f965c595d3a084a3bc5', '{\"fr\":\"\\/news-1-en\",\"en\":\"\\/news-1-en\"}', 'human_2', '2017-07-20 16:21:52', '2017-07-21 19:55:08', 'live', 0, 'version_2'),
(4, 'News 2 en', '{\"data\":[{\"type\":\"text\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\n\"}}]}', '[{\"url\":\"\\/image-13.jpg\",\"title\":\"\"}]', '74ca35769b2740f5a45d1ddda1042f87', '{\"fr\":\"\\/news-2-en\",\"en\":\"\\/news-2-en\"}', 'human_2', '2017-07-20 16:22:19', '2017-07-23 15:45:55', 'live', 1, 'version_2');

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `metatitle` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `metadescr` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `url` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `type` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `system` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `owner` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `live` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `page`
--

INSERT INTO `page` (`id`, `key`, `title`, `metatitle`, `metadescr`, `url`, `type`, `system`, `created`, `updated`, `owner`, `status`, `live`) VALUES
(1, 'home', '{\"fr\":\"Accueil\",\"en\":\"Home\"}', '{\"fr\":\"\",\"en\":\"Marcy homepage\"}', '{\"fr\":\"\",\"en\":\"Description marcy home en\"}', '{\"fr\":\"\\/accueil\",\"en\":\"\\/home\"}', '{\"key\":\"content\",\"http_status\":\"200 OK\",\"content_type\":\"html\",\"url\":\"\",\"master\":{\"app\":\"content\",\"template\":\"\\/home\\/home\",\"param\":{\"title\":{\"fr\":\"Accueil\",\"en\":\"Home\"},\"descr\":{\"fr\":\"Pid velit porttitor in elit rhoncus mattis, ut. A pulvinar? Duis ultricies, elementum et tempor dictumst elementum, magna lundium magna in. Ac, enim est pulvinar urna porta aliquet phasellus habitasse dictumst lacus quis, ridiculus, magna eu aliquet etiam. Porttitor montes? Rhoncus tortor ac, tortor urna, massa risus amet hac purus nisi rhoncus a tristique in? Nunc, lorem! In elementum ac risus eu augue pellentesque! Tortor sit tincidunt. In, sit. Integer, a mauris, in purus nisi, lorem, aenean, a nascetur tristique mauris ultrices odio non urna purus hac adipiscing odio tincidunt? Pulvinar! Nec mauris parturient elementum scelerisque, odio magnis, egestas nunc. Et pulvinar sit integer a sed nunc platea. Tristique sit! Montes nisi! Aliquam adipiscing ridiculus non? Aliquam placerat porttitor ultrices.\\r\\n\\r\\n\",\"en\":\"Pid velit porttitor in elit rhoncus mattis, ut. A pulvinar? Duis ultricies, elementum et tempor dictumst elementum, magna lundium magna in. Ac, enim est pulvinar urna porta aliquet phasellus habitasse dictumst lacus quis, ridiculus, magna eu aliquet etiam. Porttitor montes? Rhoncus tortor ac, tortor urna, massa risus amet hac purus nisi rhoncus a tristique in? Nunc, lorem! In elementum ac risus eu augue pellentesque! Tortor sit tincidunt. In, sit. Integer, a mauris, in purus nisi, lorem, aenean, a nascetur tristique mauris ultrices odio non urna purus hac adipiscing odio tincidunt? Pulvinar! Nec mauris parturient elementum scelerisque, odio magnis, egestas nunc. Et pulvinar sit integer a sed nunc platea. Tristique sit! Montes nisi! Aliquam adipiscing ridiculus non? Aliquam placerat porttitor ultrices.\\r\\n\\r\\n\"}}}}', 0, '2013-03-25 17:08:31', '2017-07-23 17:11:26', '2', 'live', 0),
(2, 'error_404', '{\"fr\":\"Erreur 404\",\"en\":\"Error 404\"}', '', '', '/404', '{\"key\":\"content\",\"http_status\":\"200 OK\",\"content_type\":\"html\",\"url\":\"\",\"master\":{\"app\":\"content\",\"template\":\"\\/master\\/master\"}}', 1, '2013-10-16 06:48:43', '2015-12-01 13:42:29', 'human_2', 'live', 0),
(3, 'api.json', '{\"fr\":\"API (json)\",\"en\":\"API (json)\"}', '', '', '/api.json', '{\"key\":\"content\",\"http_status\":\"200 OK\",\"content_type\":\"json\",\"url\":\"\",\"master\":{\"app\":\"api\",\"template\":\"\\/api\"}}', 1, '2015-07-31 16:07:43', '2015-11-20 17:50:39', 'human_2', 'live', 0),
(4, 'login.post', '{\"fr\":\"Login post\",\"en\":\"Login post\"}', '', '', '/login', '{\"key\":\"content\",\"http_status\":\"200 OK\",\"content_type\":\"json\",\"url\":\"\",\"master\":{\"app\":\"form\",\"template\":\"\\/login.admin\"}}', 1, '2015-03-20 19:13:39', '2015-11-20 17:50:31', 'human_2', 'live', 0),
(6, 'logout', '{\"fr\":\"Log out\",\"en\":\"Log out\"}', '{\"fr\":\"\",\"en\":\"\"}', '{\"fr\":\"\",\"en\":\"\"}', '{\"fr\":\"\\/logout\",\"en\":\"\\/logout\"}', '{\"key\":\"content\",\"http_status\":\"200 OK\",\"content_type\":\"routine\",\"url\":\"\",\"master\":{\"app\":\"form\",\"template\":\"\\/logout\"}}', 1, '2014-11-13 13:09:26', '2017-07-22 15:45:47', 'human_2', 'live', 0),
(7, 'news', '{\"fr\":\"News\",\"en\":\"News\"}', '{\"fr\":\"\",\"en\":\"\"}', '{\"fr\":\"\",\"en\":\"\"}', '{\"fr\":\"\\/news\",\"en\":\"\\/news\"}', '{\"key\":\"content\",\"http_status\":\"200 OK\",\"content_type\":\"html\",\"url\":\"\",\"master\":{\"app\":\"reader\",\"param\":{\"item\":\"news\",\"list\":\"section_1\",\"detail\":\"section_2\",\"404\":\"1\"}}}', 0, '2017-07-19 15:51:20', '2017-07-23 17:11:18', 'human_2', 'live', 0),
(8, 'blog', '{\"fr\":\"Blog\",\"en\":\"Blog\"}', '{\"fr\":\"\",\"en\":\"\"}', '{\"fr\":\"\",\"en\":\"\"}', '{\"fr\":\"\\/blog\",\"en\":\"\\/blog\"}', '{\"key\":\"content\",\"http_status\":\"200 OK\",\"content_type\":\"html\",\"url\":\"\",\"master\":{\"app\":\"reader\",\"param\":{\"item\":\"blog\",\"list\":\"section_6\",\"detail\":\"section_7\",\"404\":\"1\"}}}', 0, '2017-07-21 20:27:22', '2017-07-23 17:11:26', 'human_2', 'live', 0),
(9, 'contact', '{\"fr\":\"Contact\",\"en\":\"Contact\"}', '{\"fr\":\"\",\"en\":\"\"}', '{\"fr\":\"\",\"en\":\"\"}', '{\"fr\":\"\\/contact\",\"en\":\"\\/contact\"}', '{\"key\":\"content\",\"http_status\":\"200 OK\",\"content_type\":\"html\",\"url\":\"\",\"master\":{\"app\":\"content\",\"template\":\"\\/contact\\/contact\",\"param\":{\"title\":{\"fr\":\"Contact fr\",\"en\":\"Contact en\"},\"descr\":{\"fr\":\"Ut risus facilisis urna pid sed diam cum turpis platea scelerisque? Scelerisque vel aliquet! Et et tempor dis augue, facilisis velit! Pulvinar quis elementum a ridiculus rhoncus natoque, enim lundium ultrices, platea? Tincidunt tempor dignissim in montes amet lectus et? Elit nunc? Cum porttitor, placerat, tincidunt amet platea! Egestas rhoncus non elementum dapibus tortor ridiculus amet risus, est. Ut turpis, velit porttitor et, velit elit vel, pid dolor rhoncus purus ut scelerisque, hac purus in lacus, tempor? Mid aliquet ac, cras ultrices habitasse aliquet porta lacus ac tincidunt mattis integer, sed rhoncus elit, purus integer mid, turpis et ridiculus ridiculus, nascetur nascetur risus tortor? Ac ultricies enim egestas, placerat integer ultricies lacus nascetur nec dictumst ut, phasellus turpis mauris amet.\\r\\n\\r\\n\",\"en\":\"ceci est le texte anglais\"}}}}', 0, '2017-07-21 20:27:54', '2017-07-23 16:28:50', 'human_2', 'live', 0);

-- --------------------------------------------------------

--
-- Structure de la table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descr` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `zone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `app` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `owner` mediumint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `section`
--

INSERT INTO `section` (`id`, `key`, `title`, `descr`, `zone`, `app`, `created`, `updated`, `status`, `owner`) VALUES
(1, '24fe283b8ef974b6738168d6d285e9bf', 'News list', '', '', '{\"app\":\"content\",\"template\":\"\\/news-list\\/news-list\"}', '2017-07-21 18:48:27', '2017-07-21 18:48:27', 'live', 0),
(2, '3f4552b8e926f9acc123a04b2787558d', 'News detail', '', '', '{\"app\":\"content\",\"template\":\"\\/news-detail\\/news-detail\"}', '2017-07-21 18:48:56', '2017-07-21 18:48:56', 'live', 0),
(6, 'e21f781955669a8bf8d1d39d3996b818', 'Blog list', '', '', '{\"app\":\"content\",\"template\":\"\\/blog-list\\/blog-list\"}', '2017-07-21 18:48:27', '2017-07-21 20:23:45', 'live', 0),
(7, 'bcf6b44a8b644d6e14b2077233149aab', 'Blog detail', '', '', '{\"app\":\"content\",\"template\":\"\\/blog-detail\\/blog-detail\"}', '2017-07-21 18:48:56', '2017-07-21 20:24:06', 'live', 0),
(9, '793a12d4f5c4286a43fd77c6759fdc63', 'reader news', '', '', '{\"app\":\"reader\",\"param\":{\"item\":\"news\",\"list\":\"section_1\",\"detail\":\"section_2\",\"404\":\"1\"}}', '2017-07-23 17:10:43', '2017-07-23 17:10:43', 'live', 0),
(10, '793a12d4f5c4286a43fd77c6759fdc63', 'reader blog', '', '', '{\"app\":\"reader\",\"param\":{\"item\":\"blog\",\"list\":\"section_6\",\"detail\":\"section_7\",\"404\":\"1\"}}', '2017-07-23 17:11:01', '2017-07-23 17:11:01', 'live', 0);

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE `site` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descr` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `defaultversion` mediumint(3) UNSIGNED NOT NULL,
  `owner` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `favicon` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `site`
--

INSERT INTO `site` (`id`, `key`, `title`, `descr`, `created`, `updated`, `status`, `defaultversion`, `owner`, `favicon`) VALUES
(1, 'hands', 'Hands Agency', '', '2013-05-21 14:52:00', '2015-04-08 16:53:07', 'live', 1, 'human_2', '');

-- --------------------------------------------------------

--
-- Structure de la table `version`
--

DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `owner` mediumint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `version`
--

INSERT INTO `version` (`id`, `key`, `title`, `lang`, `created`, `updated`, `status`, `owner`) VALUES
(1, 'fr', 'Français', 'fr', '2013-04-05 17:02:34', '2015-01-02 18:09:26', 'live', 0),
(2, 'en', 'English', 'en', '2015-03-23 10:27:36', '2015-03-23 10:27:36', 'live', 0);

-- --------------------------------------------------------

--
-- Structure de la table `workflow`
--

DROP TABLE IF EXISTS `workflow`;
CREATE TABLE `workflow` (
  `id` mediumint(3) UNSIGNED NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `original` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `workflow`
--

INSERT INTO `workflow` (`id`, `key`, `item`, `original`, `data`, `owner`, `created`, `updated`, `status`) VALUES
(1, '16e93a8a208aa1f9b657b100e8255dc6', 'page', '', 'O:8:\"itemPage\":5:{s:8:\"\0*\0child\";b:0;s:9:\"\0*\0zoning\";b:0;s:6:\"\0*\0env\";s:4:\"site\";s:8:\"\0*\0table\";s:4:\"page\";s:7:\"\0*\0data\";a:17:{s:2:\"id\";O:6:\"attrId\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:2:\"id\";}}s:3:\"key\";O:7:\"attrKey\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:3:\"key\";}}s:5:\"title\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:9:\"fieldText\";s:7:\"\0*\0data\";a:1:{i:0;s:8:\"New page\";}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:5:\"title\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:9:\"metatitle\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:9:\"fieldText\";s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:9:\"metatitle\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:9:\"metadescr\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:13:\"fieldTextarea\";s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:9:\"metadescr\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:3:\"url\";O:7:\"attrUrl\":5:{s:7:\"\0*\0item\";N;s:6:\"\0*\0old\";b:0;s:11:\"\0*\0oldvalue\";N;s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:9:{s:3:\"key\";s:3:\"url\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";s:7:\"version\";N;s:4:\"live\";O:8:\"attrLive\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:4:\"live\";}}s:7:\"itemkey\";N;s:8:\"nickname\";N;s:2:\"id\";N;s:4:\"name\";a:0:{}}}s:4:\"type\";O:9:\"attrArray\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:4:\"type\";}}s:7:\"section\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:7:\"section\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:7:\"section\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:5:\"group\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:5:\"group\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:5:\"group\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:6:\"system\";O:8:\"attrBool\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:2:{s:3:\"key\";s:6:\"system\";s:8:\"required\";b:0;}}s:7:\"created\";O:11:\"attrCreated\":2:{s:7:\"\0*\0data\";s:19:\"0000-00-00 00:00:00\";s:9:\"\0*\0params\";a:2:{s:4:\"type\";s:8:\"datetime\";s:3:\"key\";s:7:\"created\";}}s:7:\"updated\";O:11:\"attrUpdated\":2:{s:7:\"\0*\0data\";s:19:\"0000-00-00 00:00:00\";s:9:\"\0*\0params\";a:2:{s:4:\"type\";s:8:\"datetime\";s:3:\"key\";s:7:\"updated\";}}s:5:\"owner\";O:9:\"attrOwner\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:2:{s:3:\"key\";s:5:\"owner\";s:3:\"env\";s:4:\"site\";}}s:6:\"status\";O:10:\"attrStatus\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:6:\"status\";}}s:5:\"child\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:5:\"child\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:4:\"page\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:6:\"parent\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:1:{i:0;s:6:\"page_1\";}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:6:\"parent\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:4:\"page\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:1:\"0\";s:3:\"max\";s:1:\"1\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:4:\"live\";r:50;}}', 'human_2', '2016-02-23 12:12:32', '2016-02-23 12:12:32', 'draft'),
(2, 'eb2ab41e6822cf062535e312ecce6033', 'page', '', 'O:8:\"itemPage\":5:{s:8:\"\0*\0child\";b:0;s:9:\"\0*\0zoning\";b:0;s:6:\"\0*\0env\";s:4:\"site\";s:8:\"\0*\0table\";s:4:\"page\";s:7:\"\0*\0data\";a:17:{s:2:\"id\";O:6:\"attrId\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:2:\"id\";}}s:3:\"key\";O:7:\"attrKey\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:3:\"key\";}}s:5:\"title\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:9:\"fieldText\";s:7:\"\0*\0data\";a:1:{i:0;s:8:\"New page\";}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:5:\"title\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:9:\"metatitle\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:9:\"fieldText\";s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:9:\"metatitle\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:9:\"metadescr\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:13:\"fieldTextarea\";s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:9:\"metadescr\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:3:\"url\";O:7:\"attrUrl\":5:{s:7:\"\0*\0item\";N;s:6:\"\0*\0old\";b:0;s:11:\"\0*\0oldvalue\";N;s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:9:{s:3:\"key\";s:3:\"url\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";s:7:\"version\";N;s:4:\"live\";O:8:\"attrLive\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:4:\"live\";}}s:7:\"itemkey\";N;s:8:\"nickname\";N;s:2:\"id\";N;s:4:\"name\";a:0:{}}}s:4:\"type\";O:9:\"attrArray\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:4:\"type\";}}s:7:\"section\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:7:\"section\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:7:\"section\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:5:\"group\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:5:\"group\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:5:\"group\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:6:\"system\";O:8:\"attrBool\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:2:{s:3:\"key\";s:6:\"system\";s:8:\"required\";b:0;}}s:7:\"created\";O:11:\"attrCreated\":2:{s:7:\"\0*\0data\";s:19:\"0000-00-00 00:00:00\";s:9:\"\0*\0params\";a:2:{s:4:\"type\";s:8:\"datetime\";s:3:\"key\";s:7:\"created\";}}s:7:\"updated\";O:11:\"attrUpdated\":2:{s:7:\"\0*\0data\";s:19:\"0000-00-00 00:00:00\";s:9:\"\0*\0params\";a:2:{s:4:\"type\";s:8:\"datetime\";s:3:\"key\";s:7:\"updated\";}}s:5:\"owner\";O:9:\"attrOwner\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:2:{s:3:\"key\";s:5:\"owner\";s:3:\"env\";s:4:\"site\";}}s:6:\"status\";O:10:\"attrStatus\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:6:\"status\";}}s:5:\"child\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:5:\"child\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:4:\"page\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:6:\"parent\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:1:{i:0;s:6:\"page_1\";}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:6:\"parent\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:4:\"page\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:1:\"0\";s:3:\"max\";s:1:\"1\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:4:\"live\";r:50;}}', 'human_2', '2016-02-23 12:15:18', '2016-02-23 12:15:18', 'draft'),
(3, 'd81c3d7f0a237e584cbe5fe1a75a7ed4', 'page', '', 'O:8:\"itemPage\":5:{s:8:\"\0*\0child\";b:0;s:9:\"\0*\0zoning\";b:0;s:6:\"\0*\0env\";s:4:\"site\";s:8:\"\0*\0table\";s:4:\"page\";s:7:\"\0*\0data\";a:17:{s:2:\"id\";O:6:\"attrId\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:2:\"id\";}}s:3:\"key\";O:7:\"attrKey\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:3:\"key\";}}s:5:\"title\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:9:\"fieldText\";s:7:\"\0*\0data\";a:1:{i:0;s:8:\"New page\";}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:5:\"title\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:9:\"metatitle\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:9:\"fieldText\";s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:9:\"metatitle\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:9:\"metadescr\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:13:\"fieldTextarea\";s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:9:\"metadescr\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:3:\"url\";O:7:\"attrUrl\":5:{s:7:\"\0*\0item\";N;s:6:\"\0*\0old\";b:0;s:11:\"\0*\0oldvalue\";N;s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:9:{s:3:\"key\";s:3:\"url\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";s:7:\"version\";N;s:4:\"live\";O:8:\"attrLive\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:4:\"live\";}}s:7:\"itemkey\";N;s:8:\"nickname\";N;s:2:\"id\";N;s:4:\"name\";a:0:{}}}s:4:\"type\";O:9:\"attrArray\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:4:\"type\";}}s:7:\"section\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:7:\"section\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:7:\"section\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:5:\"group\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:5:\"group\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:5:\"group\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:6:\"system\";O:8:\"attrBool\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:2:{s:3:\"key\";s:6:\"system\";s:8:\"required\";b:0;}}s:7:\"created\";O:11:\"attrCreated\":2:{s:7:\"\0*\0data\";s:19:\"0000-00-00 00:00:00\";s:9:\"\0*\0params\";a:2:{s:4:\"type\";s:8:\"datetime\";s:3:\"key\";s:7:\"created\";}}s:7:\"updated\";O:11:\"attrUpdated\":2:{s:7:\"\0*\0data\";s:19:\"0000-00-00 00:00:00\";s:9:\"\0*\0params\";a:2:{s:4:\"type\";s:8:\"datetime\";s:3:\"key\";s:7:\"updated\";}}s:5:\"owner\";O:9:\"attrOwner\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:2:{s:3:\"key\";s:5:\"owner\";s:3:\"env\";s:4:\"site\";}}s:6:\"status\";O:10:\"attrStatus\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:6:\"status\";}}s:5:\"child\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:5:\"child\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:4:\"page\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:6:\"parent\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:1:{i:0;s:6:\"page_1\";}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:6:\"parent\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:4:\"page\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:1:\"0\";s:3:\"max\";s:1:\"1\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:4:\"live\";r:50;}}', 'human_2', '2016-02-23 12:16:16', '2016-02-23 12:16:16', 'draft'),
(4, 'a84bbd870f0063c03a2da8a715ce5711', 'page', '', 'O:8:\"itemPage\":5:{s:8:\"\0*\0child\";b:0;s:9:\"\0*\0zoning\";b:0;s:6:\"\0*\0env\";s:4:\"site\";s:8:\"\0*\0table\";s:4:\"page\";s:7:\"\0*\0data\";a:17:{s:2:\"id\";O:6:\"attrId\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:2:\"id\";}}s:3:\"key\";O:7:\"attrKey\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:3:\"key\";}}s:5:\"title\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:9:\"fieldText\";s:7:\"\0*\0data\";a:1:{i:0;s:8:\"New page\";}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:5:\"title\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:9:\"metatitle\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:9:\"fieldText\";s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:9:\"metatitle\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:9:\"metadescr\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:13:\"fieldTextarea\";s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:9:\"metadescr\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:3:\"url\";O:7:\"attrUrl\":5:{s:7:\"\0*\0item\";N;s:6:\"\0*\0old\";b:0;s:11:\"\0*\0oldvalue\";N;s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:9:{s:3:\"key\";s:3:\"url\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";s:7:\"version\";N;s:4:\"live\";O:8:\"attrLive\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:4:\"live\";}}s:7:\"itemkey\";N;s:8:\"nickname\";N;s:2:\"id\";N;s:4:\"name\";a:0:{}}}s:4:\"type\";O:9:\"attrArray\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:4:\"type\";}}s:7:\"section\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:7:\"section\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:7:\"section\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:5:\"group\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:5:\"group\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:5:\"group\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:6:\"system\";O:8:\"attrBool\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:2:{s:3:\"key\";s:6:\"system\";s:8:\"required\";b:0;}}s:7:\"created\";O:11:\"attrCreated\":2:{s:7:\"\0*\0data\";s:19:\"0000-00-00 00:00:00\";s:9:\"\0*\0params\";a:2:{s:4:\"type\";s:8:\"datetime\";s:3:\"key\";s:7:\"created\";}}s:7:\"updated\";O:11:\"attrUpdated\":2:{s:7:\"\0*\0data\";s:19:\"0000-00-00 00:00:00\";s:9:\"\0*\0params\";a:2:{s:4:\"type\";s:8:\"datetime\";s:3:\"key\";s:7:\"updated\";}}s:5:\"owner\";O:9:\"attrOwner\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:2:{s:3:\"key\";s:5:\"owner\";s:3:\"env\";s:4:\"site\";}}s:6:\"status\";O:10:\"attrStatus\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:6:\"status\";}}s:5:\"child\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:5:\"child\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:4:\"page\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:6:\"parent\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:1:{i:0;s:6:\"page_1\";}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:6:\"parent\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:4:\"page\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:1:\"0\";s:3:\"max\";s:1:\"1\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:4:\"live\";r:50;}}', 'human_2', '2017-07-21 18:58:49', '2017-07-21 18:58:49', 'draft'),
(5, '97ef181159befc976a1a46991f93b33e', 'page', '', 'O:8:\"itemPage\":5:{s:8:\"\0*\0child\";b:0;s:9:\"\0*\0zoning\";b:0;s:6:\"\0*\0env\";s:4:\"site\";s:8:\"\0*\0table\";s:4:\"page\";s:7:\"\0*\0data\";a:17:{s:2:\"id\";O:6:\"attrId\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:2:\"id\";}}s:3:\"key\";O:7:\"attrKey\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:3:\"key\";}}s:5:\"title\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:9:\"fieldText\";s:7:\"\0*\0data\";a:1:{i:0;s:8:\"New page\";}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:5:\"title\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:9:\"metatitle\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:9:\"fieldText\";s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:9:\"metatitle\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:9:\"metadescr\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:13:\"fieldTextarea\";s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:9:\"metadescr\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:3:\"url\";O:7:\"attrUrl\":5:{s:7:\"\0*\0item\";N;s:6:\"\0*\0old\";b:0;s:11:\"\0*\0oldvalue\";N;s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:9:{s:3:\"key\";s:3:\"url\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";s:7:\"version\";N;s:4:\"live\";O:8:\"attrLive\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:4:\"live\";}}s:7:\"itemkey\";N;s:8:\"nickname\";N;s:2:\"id\";N;s:4:\"name\";a:0:{}}}s:4:\"type\";O:9:\"attrArray\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:4:\"type\";}}s:7:\"section\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:7:\"section\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:7:\"section\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:5:\"group\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:5:\"group\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:5:\"group\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:6:\"system\";O:8:\"attrBool\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:2:{s:3:\"key\";s:6:\"system\";s:8:\"required\";b:0;}}s:7:\"created\";O:11:\"attrCreated\":2:{s:7:\"\0*\0data\";s:19:\"0000-00-00 00:00:00\";s:9:\"\0*\0params\";a:2:{s:4:\"type\";s:8:\"datetime\";s:3:\"key\";s:7:\"created\";}}s:7:\"updated\";O:11:\"attrUpdated\":2:{s:7:\"\0*\0data\";s:19:\"0000-00-00 00:00:00\";s:9:\"\0*\0params\";a:2:{s:4:\"type\";s:8:\"datetime\";s:3:\"key\";s:7:\"updated\";}}s:5:\"owner\";O:9:\"attrOwner\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:2:{s:3:\"key\";s:5:\"owner\";s:3:\"env\";s:4:\"site\";}}s:6:\"status\";O:10:\"attrStatus\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:6:\"status\";}}s:5:\"child\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:5:\"child\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:4:\"page\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:6:\"parent\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:1:{i:0;s:6:\"page_1\";}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:6:\"parent\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:4:\"page\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:1:\"0\";s:3:\"max\";s:1:\"1\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:4:\"live\";r:50;}}', 'human_2', '2017-07-21 20:26:46', '2017-07-21 20:26:46', 'draft'),
(6, '59f734c689503ed2a446b84c8cd7c508', 'page', '', 'O:8:\"itemPage\":5:{s:8:\"\0*\0child\";b:0;s:9:\"\0*\0zoning\";b:0;s:6:\"\0*\0env\";s:4:\"site\";s:8:\"\0*\0table\";s:4:\"page\";s:7:\"\0*\0data\";a:17:{s:2:\"id\";O:6:\"attrId\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:2:\"id\";}}s:3:\"key\";O:7:\"attrKey\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:3:\"key\";}}s:5:\"title\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:9:\"fieldText\";s:7:\"\0*\0data\";a:1:{i:0;s:8:\"New page\";}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:5:\"title\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:9:\"metatitle\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:9:\"fieldText\";s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:9:\"metatitle\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:9:\"metadescr\";O:8:\"attrI18n\":4:{s:8:\"\0*\0field\";s:13:\"fieldTextarea\";s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:3:{s:3:\"key\";s:9:\"metadescr\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";}s:4:\"attr\";s:10:\"attrString\";}s:3:\"url\";O:7:\"attrUrl\":5:{s:7:\"\0*\0item\";N;s:6:\"\0*\0old\";b:0;s:11:\"\0*\0oldvalue\";N;s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:9:{s:3:\"key\";s:3:\"url\";s:5:\"table\";s:4:\"page\";s:3:\"env\";s:4:\"site\";s:7:\"version\";N;s:4:\"live\";O:8:\"attrLive\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:4:\"live\";}}s:7:\"itemkey\";N;s:8:\"nickname\";N;s:2:\"id\";N;s:4:\"name\";a:0:{}}}s:4:\"type\";O:9:\"attrArray\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:4:\"type\";}}s:7:\"section\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:7:\"section\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:7:\"section\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:5:\"group\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:5:\"group\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:5:\"group\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:6:\"system\";O:8:\"attrBool\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:2:{s:3:\"key\";s:6:\"system\";s:8:\"required\";b:0;}}s:7:\"created\";O:11:\"attrCreated\":2:{s:7:\"\0*\0data\";s:19:\"0000-00-00 00:00:00\";s:9:\"\0*\0params\";a:2:{s:4:\"type\";s:8:\"datetime\";s:3:\"key\";s:7:\"created\";}}s:7:\"updated\";O:11:\"attrUpdated\":2:{s:7:\"\0*\0data\";s:19:\"0000-00-00 00:00:00\";s:9:\"\0*\0params\";a:2:{s:4:\"type\";s:8:\"datetime\";s:3:\"key\";s:7:\"updated\";}}s:5:\"owner\";O:9:\"attrOwner\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:2:{s:3:\"key\";s:5:\"owner\";s:3:\"env\";s:4:\"site\";}}s:6:\"status\";O:10:\"attrStatus\":2:{s:7:\"\0*\0data\";N;s:9:\"\0*\0params\";a:1:{s:3:\"key\";s:6:\"status\";}}s:5:\"child\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:0:{}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:5:\"child\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:4:\"page\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:6:\"parent\";O:7:\"attrRel\":2:{s:7:\"\0*\0data\";a:1:{i:0;s:6:\"page_1\";}s:9:\"\0*\0params\";a:8:{s:3:\"key\";s:6:\"parent\";s:8:\"required\";b:0;s:5:\"param\";a:1:{i:0;a:2:{s:4:\"item\";s:4:\"page\";s:8:\"property\";s:0:\"\";}}s:3:\"min\";s:1:\"0\";s:3:\"max\";s:1:\"1\";s:3:\"env\";s:4:\"site\";s:5:\"table\";s:4:\"page\";s:2:\"id\";N;}}s:4:\"live\";r:50;}}', 'human_2', '2017-07-21 20:27:39', '2017-07-21 20:27:39', 'draft');

-- --------------------------------------------------------

--
-- Structure de la table `_rel`
--

DROP TABLE IF EXISTS `_rel`;
CREATE TABLE `_rel` (
  `item` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'undefined',
  `itemid` int(10) UNSIGNED NOT NULL,
  `key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `rel` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'undefined',
  `relid` int(10) UNSIGNED NOT NULL,
  `position` int(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Relations of page';

--
-- Contenu de la table `_rel`
--

INSERT INTO `_rel` (`item`, `itemid`, `key`, `rel`, `relid`, `position`) VALUES
('human', 3, 'group', 'group', 1, 0),
('human', 4, 'group', 'group', 1, 0),
('page', 10, 'section', 'section', 5, 0),
('page', 10, 'parent', 'page', 1, 0),
('page', 9, 'parent', 'page', 1, 0),
('page', 7, 'section', 'section', 9, 0),
('page', 8, 'section', 'section', 10, 0),
('page', 8, 'parent', 'page', 1, 0),
('page', 1, 'child', 'page', 7, 0),
('page', 1, 'child', 'page', 8, 1),
('page', 1, 'child', 'page', 9, 2),
('human', 2, 'group', 'group', 1, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`key`),
  ADD KEY `owner` (`owner`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`key`),
  ADD KEY `owner` (`owner`),
  ADD KEY `status` (`status`),
  ADD KEY `live` (`live`);

--
-- Index pour la table `const`
--
ALTER TABLE `const`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`key`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`key`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`key`),
  ADD KEY `status` (`status`),
  ADD KEY `version` (`admin`);

--
-- Index pour la table `human`
--
ALTER TABLE `human`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `logbook`
--
ALTER TABLE `logbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `key` (`key`);

--
-- Index pour la table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`key`),
  ADD KEY `owner` (`owner`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`key`),
  ADD KEY `owner` (`owner`),
  ADD KEY `status` (`status`),
  ADD KEY `live` (`live`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`key`),
  ADD KEY `owner` (`owner`),
  ADD KEY `status` (`status`),
  ADD KEY `live` (`live`);

--
-- Index pour la table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`key`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`key`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `version`
--
ALTER TABLE `version`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `workflow`
--
ALTER TABLE `workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `original` (`original`),
  ADD KEY `key` (`key`),
  ADD KEY `owner` (`owner`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `_rel`
--
ALTER TABLE `_rel`
  ADD KEY `position` (`position`),
  ADD KEY `object` (`item`),
  ADD KEY `rel` (`rel`),
  ADD KEY `relid` (`relid`),
  ADD KEY `objectid` (`itemid`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `api`
--
ALTER TABLE `api`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `const`
--
ALTER TABLE `const`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `form`
--
ALTER TABLE `form`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'The unique identifier', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `group`
--
ALTER TABLE `group`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `human`
--
ALTER TABLE `human`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `item`
--
ALTER TABLE `item`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `logbook`
--
ALTER TABLE `logbook`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT pour la table `machine`
--
ALTER TABLE `machine`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `page`
--
ALTER TABLE `page`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `section`
--
ALTER TABLE `section`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `version`
--
ALTER TABLE `version`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `workflow`
--
ALTER TABLE `workflow`
  MODIFY `id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
