-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.13 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table cartoncompany.items
CREATE TABLE IF NOT EXISTS `items` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table cartoncompany.items: 8 rows
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`itemid`, `type`, `price`) VALUES
	(1, '2OZ', 5),
	(2, '4OZ', 7),
	(4, '6OZ', 9),
	(5, '7OZ', 11),
	(6, '8OZ', 13),
	(7, '12OZ', 15),
	(8, '14OZ', 17),
	(9, '16OZ', 20);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;


-- Dumping structure for table cartoncompany.item_last_price
CREATE TABLE IF NOT EXISTS `item_last_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `new_price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Dumping data for table cartoncompany.item_last_price: 16 rows
/*!40000 ALTER TABLE `item_last_price` DISABLE KEYS */;
INSERT INTO `item_last_price` (`id`, `userid`, `itemid`, `new_price`) VALUES
	(5, 3, 1, 5),
	(6, 3, 2, 7),
	(7, 3, 4, 10),
	(8, 3, 5, 11),
	(9, 3, 6, 13),
	(10, 3, 7, 15),
	(11, 3, 8, 17),
	(12, 3, 9, 50),
	(13, 5, 1, 5),
	(14, 5, 2, 8),
	(15, 5, 4, 9),
	(16, 5, 5, 11),
	(17, 5, 6, 13),
	(18, 5, 7, 15),
	(19, 5, 8, 17),
	(20, 5, 9, 25);
/*!40000 ALTER TABLE `item_last_price` ENABLE KEYS */;


-- Dumping structure for table cartoncompany.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `custName` mediumtext NOT NULL,
  `note1` mediumtext NOT NULL,
  `note2` mediumtext NOT NULL,
  `status` mediumtext NOT NULL,
  `itemsdetail` mediumtext NOT NULL,
  `orderdate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- Dumping data for table cartoncompany.orders: 31 rows
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`orderid`, `userid`, `custName`, `note1`, `note2`, `status`, `itemsdetail`, `orderdate`) VALUES
	(2, 1, 'alijboor', 'aghsiodghspjg', 'dad', '-1', '0,1,1,1,1,1,0,1,', '2022-06-17 13:03:00'),
	(5, 1, 'mamoun ', 's asdasfq wrrwq df', '', '4', '10,10,11,0,2,2,3,5,', '2022-06-16 01:00:00'),
	(45, 3, 'شركة فلسطين', '5648498', '', '-1', '100,0,0,0,0,0,0,0,', '2022-07-18 15:51:22'),
	(9, 2, 'futureprinting', 'undefined', '', '0', '10,9,8,7,6,5,4,3,', '2022-07-03 08:55:45'),
	(25, 3, '', '', '', '0', '0,048,0,0,0,0,0,0,', '2022-07-07 10:33:47'),
	(26, 3, 'ٍياسشاسبايباياي بسش شيباي', 'شسبشسب', '', '0', '100,0,0,0,0,0,0,0,', '2022-07-07 10:40:10'),
	(12, 1, 'حج محمد', 'شسب سشبشسبشب', 'جاهز', '4', '100,0,0,0,0,0,0,0,', '2022-07-03 13:20:41'),
	(23, 3, 'شركة فلسطين', 'يرجى ', '', '4', '15,0,0,0,0,0,0,0,', '2022-07-05 11:18:30'),
	(24, 3, 'شركة فلسطين5949', 'لا شيء', '', '0', '100,0,0,0,0,0,0,800,', '2022-07-07 10:31:38'),
	(22, 3, 'محمود جبور', 'ش ي ث ص ض ', 'جاهز', '-1', '5,0,0,0,0,0,0,100,', '2022-07-05 09:58:34'),
	(21, 2, 'ابراهييم', 'يجب ارسالها للموقع', 'في الطلب', '0', '0,0,10,0,0,0,0,0,', '2022-07-04 12:54:39'),
	(20, 2, 'ابراهييم محمد', 'يجب عملها', '', '1', '10,10,0,85,0,0,0,0,', '2022-07-04 12:46:21'),
	(27, 3, '', '', '', '0', '0,0,0,0,0,15,0,0,', '2022-07-07 10:52:48'),
	(28, 3, 'ابراهييم محمجخةحد', '', '', '2', '19,0,0,0,0,0,0,0,', '2022-07-07 10:54:19'),
	(29, 3, 'sfsdhda', '', '', '0', '0,10,0,0,0,0,0,0,', '2022-07-07 10:56:14'),
	(30, 3, 'خالد', 'تخ ا  عع   عع ', '', '0', '0,10,0,50,0,0,0,0,', '2022-07-07 11:08:27'),
	(31, 3, 'جهاد', 'من ةخلال علي', 'add', '3', '100,0,0,0,10,0,0,0,', '2022-07-07 11:15:26'),
	(32, 3, 'شركة فلسطين', 'يشيس', '', '0', '0,10,0,0,0,0,0,0,', '2022-07-14 11:35:40'),
	(33, 3, 'شركة فلسطين', '', '', '0', '0,0,0,0,0,10,0,0,', '2022-07-14 11:45:06'),
	(34, 3, 'شركة فلسطين', '', '', '0', '0,0,0,0,0,0,0,100,', '2022-07-14 11:45:41'),
	(35, 3, 'futureprinting', '', '', '0', '0,0,0,0,0,0,5,0,', '2022-07-14 11:48:45'),
	(36, 3, 'شركة فلسطين', '', '', '4', '0,100,0,0,0,0,0,0,', '2022-07-14 11:49:03'),
	(37, 3, 'شركة فلسطين', '', '', '0', '0,0,0,0,55,0,0,0,', '2022-07-14 11:49:51'),
	(38, 3, 'ابراهييم محمد', '1156a1s6', '', '0', '0,0,0,0,0,0,0,100,', '2022-07-14 11:50:09'),
	(39, 3, 'files', '', '', '0', '0,0,0,0,0,10,0,0,', '2022-07-14 11:51:27'),
	(40, 3, 'شركة فلسطين', '', '', '0', '0,0,0,0,048,0,0,0,', '2022-07-14 11:52:11'),
	(41, 3, 'شركة فلسطين', '', '', '-1', '0,10,0,0,0,0,0,0,', '2022-07-14 11:57:19'),
	(42, 3, 'شركة فلسطين', '', 'jl', '5', '0,10,0,0,0,0,0,0,', '2022-07-14 11:57:26'),
	(43, 3, 'حج محمد', '', '', '-1', '0,0,0,0,10,0,0,0,', '2022-07-14 11:57:35'),
	(44, 3, 'futureprinting', '', '', '-1', '0,0,0,0,0,10,0,0,', '2022-07-14 11:58:53'),
	(46, 5, '', 'شسي', '', '2', '0,100,0,0,0,0,0,10,', '2022-07-19 16:58:56');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


-- Dumping structure for table cartoncompany.status
CREATE TABLE IF NOT EXISTS `status` (
  `stId` int(11) NOT NULL AUTO_INCREMENT,
  `statusName` text NOT NULL,
  `canDalete` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`stId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table cartoncompany.status: 6 rows
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`stId`, `statusName`, `canDalete`, `status`) VALUES
	(1, 'استقبال الطلب', 1, 1),
	(2, 'معاينة الطلب', 1, 2),
	(3, 'طباعة', 0, 3),
	(4, 'صناعة', 0, 4),
	(5, 'جاهز', 0, 5),
	(6, 'ارشيف', 0, -1);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;


-- Dumping structure for table cartoncompany.useraccount
CREATE TABLE IF NOT EXISTS `useraccount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` mediumtext NOT NULL,
  `username` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `pass` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table cartoncompany.useraccount: 8 rows
/*!40000 ALTER TABLE `useraccount` DISABLE KEYS */;
INSERT INTO `useraccount` (`id`, `email`, `username`, `role`, `pass`) VALUES
	(1, 'alijboor.1992@gmail.com', 'alijboor', '5', '123456'),
	(2, 'mamoun@gmail.com', 'mamoun', '0', '123456'),
	(3, 'dddd', 'a', '-1', '123'),
	(5, 'dfaf', 'd', '-1', '1'),
	(4, '4asdas', 's', '2,3', '1'),
	(6, 'ali', 'aj', '1', '1'),
	(7, 'sss', 'aj', '1', '1'),
	(8, 'sss', 'alijboor2000', '-1', '1');
/*!40000 ALTER TABLE `useraccount` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
