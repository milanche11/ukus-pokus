-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2017 at 12:24 PM
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_name_UNIQUE` (`cat_name`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `status`) VALUES
(1, 'U samo jednoj šerpi!', 1),
(2, 'Ljuto', 1),
(3, 'Slatko', 1),
(4, 'Slano', 1),
(5, 'Zimnica', 1),
(6, 'Smoothie, i kreni! ', 1),
(7, 'Zgodno za poneti', 1),
(8, 'Za bebe', 1),
(9, 'Sadrži alkohol', 1),
(10, 'Bez šećera', 1),
(11, 'Smrznuto', 1),
(12, 'Prženo', 1),
(13, 'Pečeno', 1),
(14, 'Kuvano', 1),
(15, 'Presno', 1),
(16, 'Egzotično', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_name` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'default status is 2, means that it is new and waits approval, 1 is approved and visible, 0 is unapproved',
  `recipe_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `recipe_id_fk_idx` (`recipe_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE IF NOT EXISTS `ingredients` (
  `ingredient_id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ingredient_id`),
  UNIQUE KEY `ingredient_name_UNIQUE` (`ingredient_name`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`ingredient_id`, `ingredient_name`, `status`) VALUES
(1, 'jaja', 1),
(2, 'pšenično brašno', 1),
(3, 'šećer', 1),
(4, 'so', 1),
(5, 'mleko', 1),
(6, 'ulje', 1),
(7, 'biber', 1),
(8, 'jogurt', 1),
(9, 'pavlaka', 1),
(10, 'kiselo mleko', 1),
(11, 'slatka pavlaka', 1),
(12, 'majonez', 1),
(13, 'feta sir', 1),
(14, 'puter', 1),
(15, 'pirinač', 1),
(16, 'palenta', 1),
(17, 'šargarepa', 1),
(18, 'krompir', 1),
(19, 'luk', 1),
(20, 'pasulj', 1),
(21, 'grašak', 1),
(22, 'boranija', 1),
(23, 'kukuruzno brašno', 1),
(24, 'pirinčano brašno', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE IF NOT EXISTS `ratings` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_name` enum('1','2','3','4','5') NOT NULL,
  `rating_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  `recipe_id` int(11) NOT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `recipe_id_fk6_idx` (`recipe_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
CREATE TABLE IF NOT EXISTS `recipes` (
  `recipe_id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `prep_time` int(11) NOT NULL,
  `dirty_dishes` int(11) NOT NULL,
  `instructions` text NOT NULL,
  `posting_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  `recipe_cats` varchar(255) NOT NULL COMMENT 'string explode cat_ids',
  `recipe_ingrs` varchar(255) NOT NULL COMMENT 'string: ingr_id, ammount, unit_id/ingr_id, ammount, unit_id/.... double explode',
  `recipe_photos` varchar(255) NOT NULL COMMENT 'string explode photo_ids',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `user_id_fk_idx` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `recipe_title`, `description`, `prep_time`, `dirty_dishes`, `instructions`, `posting_time`, `status`, `recipe_cats`, `recipe_ingrs`, `recipe_photos`, `user_id`) VALUES
(1, 'Pita sa mesom', 'Hladno predjelo na brzaka', 30, 2, 'fgdsfgsdfgdf', '2017-11-23 10:26:42', 1, '1,3,6,9', '1,5,6/5,200,3/6,7,11/9,5,10', '1,2', 1),
(2, 'Torta od šargarepe', 'Zekina omiljena', 45, 3, 'dfjhjkhkhjkhjkhjk', '2017-11-23 10:45:11', 1, '2,4,5,8', '1,2,3/4,5,6/7,8,9', '3,4,5', 2),
(3, 'Krempite', 'Mamin specijalitet', 15, 6, 'sdgdsfgdfg', '2017-11-23 10:45:11', 1, '7,10', '2,5,9/8,6,12/5,6,3', '6,7,8', 1),
(4, 'Jagode sa šlagom', 'Njam njam', 5, 1, 'sadgdfgdfsgdfg', '2017-11-23 10:45:11', 1, '7,8,9', '1,4,5/2,3,4', '9,10', 3);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`unit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `unit_name`, `status`) VALUES
(1, 'gr', 1),
(2, 'kg', 1),
(3, 'ml', 1),
(4, 'lit', 1),
(5, 'kom', 1),
(6, 'prstohvat', 1),
(7, 'dcl', 1),
(8, 'kaš', 1),
(9, 'kčc', 1),
(10, 'prstohvata', 1),
(11, 'kockica', 1),
(12, 'kockice', 1),
(13, 'šolja', 1),
(14, 'šolje', 1),
(15, 'malo', 1),
(16, 'par', 1),
(17, 'kolutića', 1),
(18, 'štapić', 1),
(19, 'štapića', 1),
(20, 'glavica', 1),
(21, 'glavice', 1),
(22, 'čen', 1),
(23, 'čena', 1),
(24, 'grančica', 1),
(25, 'grančice', 1),
(26, 'šnita', 1),
(27, 'šnite', 1),
(28, 'šoljica', 1),
(29, 'šoljice', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0 = off\n1 = superadmin\n2 = admin\n3 = editor',
  PRIMARY KEY (`user_id`,`user_email`),
  UNIQUE KEY `user_email_UNIQUE` (`user_email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `username`, `password`, `status`) VALUES
(1, 'Aya', 'aya.romporas@gmail.com', 'ayaromporas', 'f0aeddf5d2e8e0eac746ba986b7f0080', 1),
(2, 'Petar', 'petar.cvetic@gmail.com', 'pepapecaros', 'f0aeddf5d2e8e0eac746ba986b7f0080', 2),
(3, 'Milan', 'mirkovicmilan0211@gmail.com', 'milanche', 'f0aeddf5d2e8e0eac746ba986b7f0080', 3),
(4, 'Ivana', 'sapic.iva@gmail.com', 'sapiciva', 'f0aeddf5d2e8e0eac746ba986b7f0080', 1),
(5, 'Boris', 'bvatovec@gmail.com', 'bvatovec', 'f0aeddf5d2e8e0eac746ba986b7f0080', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
