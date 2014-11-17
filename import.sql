-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.5.38-0ubuntu0.14.04.1 - (Ubuntu)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             8.3.0.4827
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- Dumping data for table immixpro.pages: ~2 rows (approximately)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `parent_id`, `category_id`, `slug`, `sort`, `title`, `handler`, `status`, `content`, `banner`, `menu_visible`, `menu_new_tab`, `redirect_to_child`, `home`, `anchor`, `json`, `passcode`, `created_at`, `updated_at`) VALUES
	(1, NULL, NULL, NULL, 0, 'Home', 'Immix\\Pages\\Handlers\\ContentPageHandler', 'Published', 'Hello world!', '', 0, 0, 0, 1, 0, '', NULL, '2014-10-27 19:05:50', '2014-10-27 19:05:50'),
	(2, NULL, NULL, NULL, 0, 'Contact', 'Immix\\Pages\\Handlers\\ContactPageHandler', 'Published', '', '', 0, 0, 0, 0, 0, '', NULL, '2014-10-27 19:05:50', '2014-10-27 19:05:50');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
