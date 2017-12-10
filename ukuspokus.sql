-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 10, 2017 at 11:40 PM
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
  `cat_link` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_name_UNIQUE` (`cat_name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_link`, `status`) VALUES
(1, 'U samo jednoj šerpi!', '', 1),
(2, 'Ljuto', '', 1),
(3, 'Slatko', '', 1),
(4, 'Slano', '', 1),
(5, 'Zimnica', '', 1),
(6, 'Smoothie, i kreni! ', '', 1),
(7, 'Zgodno za poneti', '', 1),
(8, 'Za bebe', '', 1),
(9, 'Sadrži alkohol', '', 1),
(10, 'Bez šećera', '', 1),
(11, 'Smrznuto', '', 1),
(12, 'Prženo', '', 1),
(13, 'Pečeno', '', 1),
(14, 'Kuvano', '', 1),
(15, 'Vegetarijansko', '', 1),
(16, 'Egzotično', '', 1),
(17, 'Priprema za 15 min', '', 1);

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
  `status` int(11) NOT NULL DEFAULT '2' COMMENT 'default status is 2, means that it is new and waits approval, 1 is approved and visible, 0 is unapproved',
  `recipe_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_name`, `comment_email`, `comment_text`, `comment_time`, `status`, `recipe_id`) VALUES
(1, 'Aja', 'aja@aja.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '2017-12-08 12:25:50', 0, 5),
(2, 'Petar', 'pepa@pepa.com', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\n', '2017-12-08 12:25:50', 2, 5),
(3, 'Boris', 'boris@boris.com', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\n', '2017-12-08 12:27:10', 1, 5),
(4, 'Iva', 'iva@iva.com', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', '2017-12-08 12:27:10', 1, 5),
(5, 'Milan', 'milan@milan.com', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n', '2017-12-08 12:27:30', 1, 5),
(6, 'Jovana', 'jovana@jovana.com', 'Gulp is a tool that can be of great help to any web designer, but it can be intimidating for beginners. In this course you’re going to learn what Gulp is, how to set it up, and how to use it for creating an awesome front-end workflow—even as a beginner.', '2017-12-08 12:58:46', 2, 3),
(7, 'Ivan', 'ivan@ivan.com', 'But Gravit is a lot more than just accessible; it’s also packed with professional-level features that position it as the next big up-and-coming graphics app. Whether you’re a UI designer, an illustrator, or any other kind of digital artist, Gravit could quickly find a regular place in your design workflows.\r\n\r\n', '2017-12-08 12:58:46', 2, 2),
(8, 'Mica', 'mica@mica.com', 'Micin komentar', '2017-12-09 23:46:38', 1, 5),
(14, 'Mile', 'mile@mile', 'Miletov komentar', '2017-12-10 01:37:52', 2, 5);

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
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

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
(9, 'pavlaka 12% mm', 1),
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
(24, 'pirinčano brašno', 1),
(25, 'pavlaka 16% mm', 1),
(26, 'pavlaka 20% mm', 1),
(27, 'mileram 30% mm', 1),
(28, 'cimet', 1),
(29, 'prezle', 1),
(30, 'muskatni orah', 1),
(31, 'karanfilić', 1),
(32, 'kim u zrnu', 1),
(33, 'prašak za pecivo', 1),
(34, 'kisela voda', 1),
(35, 'hladna voda', 1),
(36, 'mlaka voda', 1),
(37, 'belo vino', 1),
(38, 'pšenični griz', 1),
(39, 'crno vino', 1),
(40, 'pivo', 1),
(41, 'kokosovo brašno', 1),
(42, 'kokosovo ulje', 1),
(43, 'jagode', 1),
(44, 'jabuke', 1),
(45, 'kruške', 1),
(46, 'maline', 1),
(47, 'višnje', 1),
(48, 'ananas', 1),
(49, 'banane', 1),
(50, 'pomorandže', 1),
(51, 'mandarine', 1),
(52, 'puding od vanile', 1),
(53, 'puding od čokolade', 1),
(54, 'puding od jagode', 1),
(55, 'kuvana kafa', 1),
(56, 'mlevena kafa', 1),
(57, 'žumance', 1),
(58, 'belance', 1),
(59, 'crni luk', 1),
(60, 'beli luk', 1),
(61, 'praziluk', 1),
(62, 'trešnje', 1),
(63, 'borovnice', 1),
(64, 'spanać', 1),
(65, 'vanil šećer', 1),
(66, 'rum', 1),
(67, 'mleveni plazma keks', 1),
(68, 'margarin', 1),
(69, 'piškote', 1),
(70, 'kore za pitu', 1),
(71, 'rum šećer', 1),
(72, 'limuntus', 1),
(73, 'sok od limuna', 1),
(74, 'sok od pomorandže', 1),
(75, 'mleveni bademi', 1),
(76, 'mleveni orasi', 1),
(77, 'mleveni lešnici', 1),
(78, 'semenke od bundeve', 1),
(79, 'semenke suncokreta', 1),
(80, 'tamari sos', 1),
(81, 'sušene urme', 1),
(82, 'sušene brusnice', 1),
(83, 'suvo grožđe', 1),
(84, 'mak', 1),
(85, 'laneno seme', 1),
(86, 'mleveni lan', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`photo_id`, `photo_title`, `photo_alt`, `photo_link`, `status`) VALUES
(1, 'pita sa mesom', 'pita sa mesom', '1.jpg', 1),
(2, 'pita sa mesom', 'pita sa mesom', '2.jpg', 1),
(3, 'torta od šargarepe', 'torta od šargarepe', '3.jpg', 1),
(4, 'torta od šargarepe', 'torta od šargarepe', '4.jpg', 1),
(5, 'torta od šargarepe', 'torta od šargarepe', '5.jpg', 1),
(6, 'krempite', 'krempite', '6.jpg', 1),
(7, 'krempite', 'krempite', '7.jpg', 1),
(8, 'krempite', 'krempite', '8.jpg', 1),
(9, 'američke palačinke', 'američke palačinke', '9.jpg', 1),
(10, 'američke palačinke', 'američke palačinke', '10.jpg', 1),
(11, 'američke palačinke', 'američke palačinke', '11.jpg', 1),
(12, 'američke palačinke', 'američke palačinke', '12.jpg', 1),
(13, 'američke palačinke', 'američke palačinke', '13.jpg', 1);

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
  `recipe_ingrs_id` varchar(255) NOT NULL,
  `recipe_photos` varchar(255) NOT NULL COMMENT 'string explode photo_ids',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `user_id_fk_idx` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `recipe_title`, `description`, `prep_time`, `dirty_dishes`, `instructions`, `posting_time`, `status`, `recipe_cats`, `recipe_ingrs`, `recipe_ingrs_id`, `recipe_photos`, `user_id`) VALUES
(1, 'Pita sa mesom', 'Hladno predjelo na brzaka', 30, 2, 'fgdsfgsdfgdf', '2017-11-23 10:26:42', 1, ',1,3,6,9,17,', '1,5,9/2,5,9/6,5,12/1,6,8', ',1,5,9,', '1,2', 1),
(2, 'Torta od šargarepe', 'Zekina omiljena', 45, 3, 'dfjhjkhkhjkhjkhjk', '2017-11-23 10:45:11', 1, ',2,4,5,8,', '2,5', ',2,5,9,', '3,4,5', 2),
(3, 'Krempite', 'Mamin specijalitet', 15, 6, 'sdgdsfgdfg', '2017-11-23 10:45:11', 1, ',7,10,', '3,4,9,5,6', ',1,3,4,9,6,', '6,7,8', 1),
(4, 'Jagode sa šlagom', 'Njam njam', 5, 1, 'sadgdfgdfsgdfg', '2017-11-23 10:45:11', 1, ',7,8,9,', '2,3,7,6,11', ',2,3,7,6,11,55,', '9,10', 3),
(5, 'Američke palačinke sa medom i šumskim voćem', 'Omiljeni doručak ili užina onima koji žure, a dosadili su im sendviči i kaše od pahuljica. Odlične i sa slanim i sa slatkim nadevima. Nije vam potrebno puno iskustva da bi vam ispale odlično.', 15, 2, '<br><br><strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno.\r\n\r\n<br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. \r\n\r\n<br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2017-12-01 00:28:56', 1, ',3,12,16,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,17', ',4,8,5,1,23,', '9,10,11,12,13', 1),
(6, 'Ananas sa šlagom i keksom', 'Njam njam pojesti sveeeee', 5, 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2017-11-23 10:45:11', 1, ',7,8,9,11,', '2,5,8/3,5,4/7,1,2/6,6,6/12,5,6', ',2,3,7,6,12,5,', '9,10', 3);

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
(15, 'malo', 0),
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
