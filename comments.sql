-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2017 at 06:55 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_name` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '2' COMMENT 'default status is 2, means that it is new and waits approval, 1 is approved and visible, 0 is unapproved',
  `recipe_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_name`, `comment_email`, `comment_text`, `comment_time`, `status`, `recipe_id`) VALUES
(1, 'Petar', 'petar.cvetic@gmail.com', 'Neki tekst probni koji ce biti koriscen za testiranje komentara...', '2017-12-05 07:50:52', 0, 1),
(2, 'Zoran', 'zoran@gmail.com', 'sdfsd sdf sdf dfoigoj gsdosdfig dof dfsg df ggsdf o  gdfs df s gsdf oi gfdfgdji gdfoijgdf gdf gsdfoij ', '2017-12-05 07:52:51', 2, 2),
(3, 'Djura', 'djura@gmail.com', 'sdfjasdf sdfkj dsak  aslk sdalk jsda dsk dlsk sd ldkfj ldkfj dlskafaskdlfj asdlfk asdflk sdfkl ', '2017-12-05 07:52:51', 2, 3),
(4, 'Dragana', 'dragana@gmail.com', 'kdsad asdlksadpefwre ewrpo retkl jslkd vklasdjf s fdglij dsfgoids fg fgdsiog sdofigjd fgiojdfg  odfsig idoj', '2017-12-05 07:54:20', 0, 2),
(5, 'Marija', 'marija@gmail.com', 'posdfk asdpfok asdpofk sdpfo kpasdofjnaskdf njskdnf asjkdnf jskdferk jtjker  cvkjnvkjdfsnkjndg ', '2017-12-05 07:54:20', 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `recipe_id_fk_idx` (`recipe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
