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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table cartoncompany.orders: 2 rows
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`orderid`, `userid`, `custName`, `note1`, `note2`, `status`, `itemsdetail`, `orderdate`) VALUES
	(2, 1, 'alijboor', 'aghsiodghspjg', 'ابا', '0', '0,1,1,1,1,1,0,1,', '2022-06-17 13:03:00'),
	(5, 1, 'mamoun ', 's asdasfq wrrwq df', '', '0', '10,10,11,0,2,2,3,5,', '2022-06-16 01:00:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


-- Dumping structure for table cartoncompany.useraccount
CREATE TABLE IF NOT EXISTS `useraccount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` mediumtext NOT NULL,
  `username` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `pass` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table cartoncompany.useraccount: 2 rows
/*!40000 ALTER TABLE `useraccount` DISABLE KEYS */;
INSERT INTO `useraccount` (`id`, `email`, `username`, `role`, `pass`) VALUES
	(1, 'alijboor.1992@gmail.com', 'alijboor', '0', '123456'),
	(2, 'mamoun@gmail.com', 'mamoun', '0', '123456');
/*!40000 ALTER TABLE `useraccount` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
