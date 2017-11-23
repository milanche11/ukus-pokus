-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2017 at 10:19 AM
-- Server version: 5.7.20-log
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukuspokus`
--

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
CREATE TABLE IF NOT EXISTS `photos` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_title` varchar(255) NOT NULL,
  `photo_alt` varchar(255) NOT NULL,
  `photo_link` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`photo_id`, `photo_title`, `photo_alt`, `photo_link`, `status`) VALUES
(1, 'pita sa mesom', 'pita sa mesom', '../assets/images/pita-sa-mesom.jpg', 1),
(2, 'pita sa mesom', 'pita sa mesom', '../assets/images/pitasamesom.jpg', 1),
(3, 'torta od šargarepe', 'torta od šargarepe', '../assets/images/pitasamesom.jpg', 1),
(4, 'torta od šargarepe', 'torta od šargarepe', '../assets/images/pitasamesom.jpg', 1),
(5, 'torta od šargarepe', 'torta od šargarepe', '../assets/images/pitasamesom.jpg', 1),
(6, 'krempite', 'krempite', '../assets/images/krempite.jpg', 1),
(7, 'krempite', 'krempite', '../assets/images/krempite2.jpg', 1),
(8, 'krempite', 'krempite', '../assets/images/krempite3.jpg', 1),
(9, 'jagode sa šlagom', 'jagode sa šlagom', '../assets/images/jagode-sa-slagom.jpg', 1),
(10, 'jagode sa šlagom', 'jagode sa šlagom', '../assets/images/jagode-sa-slagom.jpg', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
