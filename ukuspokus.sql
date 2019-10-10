-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 16, 2018 at 01:34 PM
-- Server version: 5.7.20-log
-- PHP Version: 7.1.9

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
  `cat_permalink` varchar(255) DEFAULT NULL,
  `cat_photo` varchar(255) NOT NULL,
  `cat_description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_name_UNIQUE` (`cat_name`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_permalink`, `cat_photo`, `cat_description`, `status`) VALUES
(1, 'U samo jednoj šerpi!', 'u-samo-jednoj-serpi', 'ujednojserpi.jpg', 'Ovde ćete pronaći recepte za koje vam treba samo jedan sud. Ukusan ručak ili poslastica, a čista kuhinja i nakon pripreme! Zbogom, gomilo prljavih sudova!', 1),
(2, 'Ljuto', 'ljuto', 'ljuto.jpg', 'Jer zašto da ne? Pored bibera i ljute papričice, ima još raznih začina koji mogu učiniti jelo ljutim, ili bar pikantnim i jakim.', 1),
(3, 'Slatko', 'slatko', 'slatko.jpg', 'Slatko! Magična reč! Bilo da nešto slavite, da hoćete nekoga da iznenadite, možda nagradite najmlađe, treba vam nešto slatko!', 1),
(4, 'Slano', 'slano', 'slano.jpg', 'Slani recepti u kojima sigurno ima za svakog po nešto. Upotrebite <a href=\"<?php echo ROOT_URL; ?>search\">naprednu pretragu</a> da izdvojite npr posne recepte, pečeno, kuvano, vegansko itd.', 1),
(5, 'Zimnica', 'zimnica', 'zimnica.jpg', 'Provereni recepti za zimnicu. Obećavamo da nisu teški, i da svako može da ih napravi uspešno, čak i sa malo ili nimalo iskustva.', 1),
(6, 'Smoothie, i kreni! ', 'smoothie', 'smoothie.jpg', 'Recepti za smoothie, sa voćem, mlekom, jogurtom, sladoledom, začinima, povrćem. Osvežavajuće, hranljivo. Kombinacija je toliko...', 1),
(7, 'Zgodno za poneti', 'za-poneti', 'zaponeti.jpg', 'Živite aktivno, nemate vremena da jedete kući polako, a nikako ne želite da opet jedete u pekari ili neke pljeke kod nekog Džoa? Evo inspiracije!', 1),
(8, 'Recepti za bebe', 'za-bebe', 'zabebe.jpg', 'Bez namirnica koje se ne preporučuju u prve dve godine života: živo jaje, buđavi sirevi, sveži citrusi, namirnice iz konzerve, beli šećer, konzervansi, margarin, puno začina, nesamlevene semenke...', 1),
(9, 'Sadrži alkohol', 'sa-alkoholom', 'saalkoholom.jpg', 'Meso u sosu od malina i votke? Kolač sa likerom od ruža? Alkoholni kokteli, hobotnica u vinu, kiflice sa pivom? Tu su, i još svašta nešto.', 1),
(10, 'Bez šećera', 'bez-secera', 'bezsecera.jpg', 'U ovim receptima se koriste urme, sirupi agave, javora, stevia, i drugi prirodni zaslađivači. Ponegde ima i meda.', 1),
(11, 'Smrznuto', 'smrznuto', 'smrznuto.jpg', 'Ovde su recepti u kojima se nešto upotrebljava u smrznutom stanju. Ili ste stavili ranije da se smrzne, ili ste kupili. Uglavnom brza rešenja. ', 1),
(12, 'Prženo', 'przeno', 'przeno.jpg', 'Tiganj neka bude u pripravnosti, jer trebaće vam za ovu kategoriju koja je prepuna recepata za slane i slatke pržene đakonije.', 1),
(13, 'Pečeno', 'peceno', 'peceno.jpg', 'Razne pečene đakonije, slatke, slane. Pečeno sadrži i puno recepata koje bismo mogli nazvati \"smućkaš i strpaš u rernu za ručak\". Ali tu su i razni slatkiši, torte koje se peku, slana predjela...', 1),
(14, 'Kuvano', 'kuvano', 'kuvano.jpg', 'Kuvano, ili što mame vole da kažu - jedi kašikom. Ne znamo da li je najbolje za stomak, kao što mame tvrde, ali znamo da su provereni recepti i da nećete pogrešiti šta god da odaberete. ', 1),
(15, 'Vegetarijansko', 'vegetarijansko', 'vegetarijansko.jpg', 'Vegetarijansko ovde podrazumeva da nema mesa i mesnih prerađevina, kao ni ribe. Mlečni proizvodi i jaja su zastupljeni. Slatko, slano, udri! ', 1),
(16, 'Egzotično', 'egzoticno', 'egzoticno.jpg', 'Iznenadite ukućane ili prijatelje nečim neobičnim. Egzotični napici, kolači, pa i čitavi obroci sa sastojcima koje ne koristite svaki dan ili ih možda niste ni probali. ', 1),
(17, 'Priprema za 15 min', 'za-15-min', 'za15min.jpg', 'Iznenadni gosti? Puno posla i premalo vremena za kuhinju danas? Brdo obaveza i frka? Ovo je kategorija za vas!', 1),
(18, 'Posno', 'posno', 'posno.jpg', 'Posno - nema mesa, mleka i mlečnih proizvoda i jaja, ali može se naći poneka ribica na trpezi, da obogati period posta ili upotpuni posni meni za slavlja i nedeljne ručkove. ', 1),
(19, 'Vegansko', 'vegansko', 'vegansko.jpg', 'Vegansko podrazumeva da nema namirnica životinjskog porekla - nema jaja, mleka, mlečnih proizvoda, mesa, mesnih prerađevina, kao ni ribe. Detox na kvadrat, enzimi na kub!', 1),
(20, 'Bez glutena', 'bez-glutena', 'bezglutena.jpg', 'Gluten je biljni protein koji se nalazi u pšenici, ovsu, ječmu i raži, i njihovom brašnu i pahuljicama. Ovde ćete naći razne recepte sa heljdinim, pirinčanim, prosenim, krompirnim i drugim vrstama brašna, kao i razne fore.', 1),
(21, 'No limits', 'no-limits', 'nolimit.jpg', 'Jaretina sa pistaćima, i tako to. Razni specijaliteti kojima treba ili puno sastojaka ili puno vremena za pripremu. Ali smatramo da vredi podeliti ih. ', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_name`, `comment_email`, `comment_text`, `comment_time`, `status`, `recipe_id`) VALUES
(1, 'Aja', 'aja@aja.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '2017-12-08 12:25:50', 0, 5),
(2, 'Petar', 'pepa@pepa.com', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\n', '2017-12-08 12:25:50', 2, 5),
(3, 'Boris', 'boris@boris.com', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\n', '2017-12-08 12:27:10', 0, 5),
(4, 'Iva', 'iva@iva.com', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', '2017-12-08 12:27:10', 1, 5),
(5, 'Milan', 'milan@milan.com', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n', '2017-12-08 12:27:30', 1, 5),
(6, 'Jovana', 'jovana@jovana.com', 'Gulp is a tool that can be of great help to any web designer, but it can be intimidating for beginners. In this course you’re going to learn what Gulp is, how to set it up, and how to use it for creating an awesome front-end workflow—even as a beginner.', '2017-12-08 12:58:46', 2, 3),
(7, 'Ivan', 'ivan@ivan.com', 'But Gravit is a lot more than just accessible; it’s also packed with professional-level features that position it as the next big up-and-coming graphics app. Whether you’re a UI designer, an illustrator, or any other kind of digital artist, Gravit could quickly find a regular place in your design workflows.\r\n\r\n', '2017-12-08 12:58:46', 2, 2),
(8, 'Mica', 'mica@mica.com', 'Micin komentar', '2017-12-09 23:46:38', 1, 5),
(14, 'Mile', 'mile@mile', 'Miletov komentar', '2017-12-10 01:37:52', 2, 5),
(15, 'Aya Romporas', 'aya.romporas@gmail.com', 'Test proba 1', '2018-02-07 00:18:31', 0, 12),
(16, 'Milos Sucura', 'interfortas.serbia@gmail.com', 'Test 2', '2018-02-07 00:19:24', 1, 12),
(17, 'Aja Romporas', 'aya.romporas@gmail.com', 'Test 3', '2018-02-07 00:20:11', 2, 12),
(18, 'Sanja', 'sanja@gmail.com', 'Test 4', '2018-02-07 00:21:48', 2, 12),
(19, 'Aja Romporas', 'aya.romporas@gmail.com', 'Test 5', '2018-02-07 00:24:27', 1, 12),
(20, 'Aja Romporas', 'aya.romporas@gmail.com', 'dfhfghf', '2018-02-07 00:56:29', 2, 12),
(21, 'Aja Romporas', 'aya.romporas@gmail.com', 'fsdfsd', '2018-02-07 01:03:34', 1, 12),
(22, 'Aja Romporas', 'aya.romporas@gmail.com', 'fasfsdfsd', '2018-02-07 01:03:51', 1, 12),
(23, 'Aja Romporas', 'aya.romporas@gmail.com', 'xfhfhfgh', '2018-02-07 01:05:30', 2, 12),
(24, 'aja', 'aya.romporas@gmail.com', 'Test 6', '2018-02-07 01:06:35', 2, 12),
(25, 'Ivana', 'ivsdfdfgdfgna@gmail.com', 'Test 7', '2018-02-07 01:07:30', 2, 16),
(26, 'Bojana', 'bojana@email.com', 'Neki komentar test 8', '2018-02-07 01:08:47', 2, 18),
(27, 'Aja Romporas', 'aya.romporas@gmail.com', 'fgjghjgh', '2018-02-07 04:31:40', 0, 12),
(28, 'Aja Romporas', 'aya.romporas@gmail.com', 'cgnvcbjnvbjm', '2018-02-08 11:07:10', 2, 18);

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
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

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
(80, 'tamari soja sos', 1),
(81, 'sušene urme', 1),
(82, 'sušene brusnice', 1),
(83, 'suvo grožđe', 1),
(84, 'mak', 1),
(85, 'laneno seme', 1),
(86, 'mleveni lan', 1),
(87, 'mleveni mak', 1),
(88, 'brašno od prosa', 1),
(89, 'ovsene pahuljice', 1),
(90, 'zobene pahuljice', 1),
(91, 'zelje', 1),
(92, 'sočivo', 1),
(93, 'blitva', 1),
(95, 'kokosovo mleko', 1),
(96, 'pirinčano mleko', 1),
(97, 'tofu sir', 1),
(99, 'špagete, spaghetti', 1),
(100, 'lisnato testo', 1),
(101, 'kečap', 1),
(102, 'ajvar', 1),
(103, 'patlidžan', 1),
(104, 'paradajz', 1),
(105, 'krastavac', 1),
(106, 'mango', 1),
(107, 'kavijar', 1),
(108, 'papaja', 1),
(109, 'avokado', 1),
(110, 'crno grožđe', 1),
(111, 'belo grožđe', 1),
(112, 'šljive', 1),
(113, 'kukuruzni griz', 1);

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
  `recipe_id` int(11) DEFAULT '0',
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`photo_id`, `photo_title`, `photo_alt`, `photo_link`, `status`, `recipe_id`) VALUES
(1, 'default', 'default', 'default.jpg', 1, 0),
(2, 'pita sa mesom', 'pita sa mesom', '2.jpg', 1, 2),
(3, 'torta od šargarepe', 'torta od šargarepe', '3.jpg', 1, 3),
(4, 'torta od šargarepe', 'torta od šargarepe', '4.jpg', 1, 4),
(5, 'torta od šargarepe', 'torta od šargarepe', '5.jpg', 1, 5),
(6, 'krempite', 'krempite', '6.jpg', 1, 6),
(7, 'krempite', 'krempite', '7.jpg', 1, 7),
(8, 'krempite', 'krempite', '8.jpg', 1, 8),
(9, 'američke palačinke', 'američke palačinke', '9.jpg', 1, 9),
(10, 'američke palačinke', 'američke palačinke', '10.jpg', 1, 10),
(11, 'američke palačinke', 'američke palačinke', '11.jpg', 1, 11),
(12, 'američke palačinke', 'američke palačinke', '12.jpg', 1, 196055),
(13, 'američke palačinke', 'američke palačinke', '13.jpg', 1, 12),
(15, 'pita sa mesom', 'pita sa mesom', '15.jpg', 1, 1),
(16, 'krempite', 'krempite', '16.jpg', 1, 1),
(17, 'američke palačinke', 'američke palačinke', '17.jpg', 1, 2),
(18, 'američke palačinke', 'američke palačinke', '18.jpg', 1, 2),
(19, 'pita sa mesom', 'pita sa mesom', '19.jpg', 1, 3),
(20, 'američke palačinke', 'američke palačinke', '20.jpg', 1, 196055),
(21, 'američke palačinke', 'američke palačinke', '21.jpg', 1, 4),
(22, 'torta od šargarepe', 'torta od šargarepe', '22.jpg', 1, 4),
(23, 'američke palačinke', 'američke palačinke', '23.jpg', 1, 5),
(24, 'krempite', 'krempite', '24.jpg', 1, 5),
(25, 'krempite', 'krempite', '25.jpg', 1, 6),
(26, 'američke palačinke', 'američke palačinke', '26.jpg', 1, 6),
(27, 'američke palačinke', 'američke palačinke', '27.jpg', 1, 7),
(28, 'krempite', 'krempite', '28.jpg', 1, 7),
(29, 'pita sa mesom', 'pita sa mesom', '29.jpg', 1, 8),
(30, 'američke palačinke', 'američke palačinke', '30.jpg', 1, 8),
(31, 'torta od šargarepe', 'torta od šargarepe', '31.jpg', 1, 9),
(32, 'krempite', 'krempite', '32.jpg', 1, 9),
(33, 'pita sa mesom', 'pita sa mesom', '33.jpg', 1, 9),
(34, 'pita sa mesom', 'pita sa mesom', '34.jpg', 1, 10),
(35, 'američke palačinke', 'američke palačinke', '35.jpg', 1, 10),
(36, 'torta od šargarepe', 'torta od šargarepe', '36.jpg', 1, 11),
(37, 'američke palačinke', 'američke palačinke', '37.jpg', 1, 12),
(14, 'pita sa mesom', 'pita sa mesom', '14.jpg', 1, 11),
(39, 'pita sa mesom', 'pita sa mesom', '39.jpg', 1, 1),
(40, 'pita sa mesom', 'pita sa mesom', '40.jpg', 1, 2),
(41, 'torta od šargarepe', 'torta od šargarepe', '41.jpg', 1, 3),
(42, 'torta od šargarepe', 'torta od šargarepe', '42.jpg', 1, 4),
(43, 'torta od šargarepe', 'torta od šargarepe', '43.jpg', 1, 5),
(44, 'krempite', 'krempite', '44.jpg', 1, 6),
(45, 'krempite', 'krempite', '45.jpg', 1, 7),
(46, 'krempite', 'krempite', '46.jpg', 1, 8),
(47, 'američke palačinke', 'američke palačinke', '47.jpg', 1, 9),
(48, 'američke palačinke', 'američke palačinke', '48.jpg', 1, 10),
(49, 'američke palačinke', 'američke palačinke', '49.jpg', 1, 11),
(50, 'američke palačinke', 'američke palačinke', '50.jpg', 1, 12),
(51, 'američke palačinke', 'američke palačinke', '51.jpg', 1, 12),
(52, 'pita sa mesom', 'pita sa mesom', '52.jpg', 1, 11),
(53, 'pita sa mesom', 'pita sa mesom', '15.jpg', 1, 1),
(54, 'krempite', 'krempite', '16.jpg', 1, 1),
(55, 'američke palačinke', 'američke palačinke', '17.jpg', 1, 2),
(56, 'američke palačinke', 'američke palačinke', '18.jpg', 1, 2),
(57, 'pita sa mesom', 'pita sa mesom', '19.jpg', 1, 3),
(58, 'američke palačinke', 'američke palačinke', '20.jpg', 1, 3),
(59, 'američke palačinke', 'američke palačinke', '21.jpg', 1, 4),
(60, 'torta od šargarepe', 'torta od šargarepe', '22.jpg', 1, 4),
(61, 'američke palačinke', 'američke palačinke', '23.jpg', 1, 5),
(62, 'krempite', 'krempite', '24.jpg', 1, 5),
(63, 'krempite', 'krempite', '25.jpg', 1, 6),
(64, 'američke palačinke', 'američke palačinke', '26.jpg', 1, 6),
(65, 'američke palačinke', 'američke palačinke', '27.jpg', 1, 7),
(66, 'krempite', 'krempite', '28.jpg', 1, 7),
(67, 'pita sa mesom', 'pita sa mesom', '29.jpg', 1, 8),
(68, 'američke palačinke', 'američke palačinke', '30.jpg', 1, 8),
(69, 'torta od šargarepe', 'torta od šargarepe', '31.jpg', 1, 9),
(70, 'krempite', 'krempite', '32.jpg', 1, 9),
(71, 'pita sa mesom', 'pita sa mesom', '33.jpg', 1, 9),
(72, 'pita sa mesom', 'pita sa mesom', '34.jpg', 1, 10),
(73, 'američke palačinke', 'američke palačinke', '35.jpg', 1, 10),
(74, 'torta od šargarepe', 'torta od šargarepe', '36.jpg', 1, 11),
(38, 'američke palačinke', 'američke palačinke', '38.jpg', 1, 12),
(76, 'pita sa jabukama', 'pita sa jabukama', '112.jpg', 1, 25),
(77, 'kavijar sa orasima', 'kavijar sa orasima', 'kavijar115.png', 1, 13),
(78, 'supa od povrća', 'supa od povrća', 'supaodpovrca.jpg', 1, NULL),
(79, 'sufle', 'sufle', 'sufle.jpg', 1, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`rating_id`, `rating_name`, `rating_time`, `status`, `recipe_id`) VALUES
(1, '3', '2017-12-20 09:56:40', 1, 1),
(2, '4', '2017-12-20 09:56:40', 1, 2),
(3, '4', '2017-12-20 09:57:35', 1, 3),
(4, '5', '2017-12-20 09:57:35', 1, 4),
(5, '2', '2017-12-20 09:57:35', 1, 5),
(6, '2', '2017-12-20 09:57:35', 1, 6),
(7, '1', '2017-12-20 09:57:35', 1, 7),
(8, '5', '2017-12-20 09:57:35', 1, 8),
(9, '4', '2017-12-20 09:57:35', 1, 9),
(10, '2', '2017-12-20 09:57:35', 1, 10),
(11, '1', '2018-01-04 00:15:21', 1, 11),
(12, '3', '2018-01-07 17:05:15', 1, 5),
(13, '1', '2018-01-07 17:05:15', 1, 4),
(14, '1', '2018-01-07 17:19:20', 1, 1),
(15, '2', '2018-01-07 17:19:20', 1, 1),
(16, '3', '2018-01-07 17:19:20', 1, 1),
(17, '4', '2018-01-07 17:19:20', 1, 1),
(18, '5', '2018-01-07 17:19:20', 1, 1),
(19, '5', '2018-01-07 17:19:20', 1, 1),
(20, '1', '2018-01-07 17:24:29', 1, 2),
(21, '2', '2018-01-07 17:24:29', 1, 2),
(22, '3', '2018-01-07 17:24:29', 1, 2),
(23, '4', '2018-01-07 17:24:29', 1, 2),
(24, '5', '2018-01-07 17:24:29', 1, 2),
(25, '5', '2018-01-07 17:24:29', 1, 2),
(26, '5', '2018-01-07 17:24:29', 1, 2),
(27, '1', '2018-01-07 17:24:29', 1, 3),
(28, '2', '2018-01-07 17:24:29', 1, 3),
(29, '3', '2018-01-07 17:24:29', 1, 3),
(30, '4', '2018-01-07 17:24:29', 1, 3),
(31, '5', '2018-01-07 17:24:29', 1, 3),
(32, '4', '2018-01-07 17:24:29', 1, 4),
(33, '2', '2018-01-07 17:24:29', 1, 4),
(34, '1', '2018-01-07 17:24:29', 1, 5),
(35, '5', '2018-01-07 17:24:29', 1, 5),
(36, '5', '2018-01-07 17:24:29', 1, 5),
(37, '5', '2018-01-07 17:24:29', 1, 5),
(38, '5', '2018-01-07 17:24:29', 1, 6),
(39, '5', '2018-01-07 17:24:29', 1, 6),
(40, '3', '2018-01-07 17:24:29', 1, 7),
(41, '5', '2018-01-07 17:24:29', 1, 7),
(42, '4', '2018-01-07 17:24:29', 1, 8),
(43, '4', '2018-01-07 17:24:29', 1, 8),
(44, '5', '2018-01-07 17:24:29', 1, 9),
(45, '5', '2018-01-07 17:24:29', 1, 9),
(46, '3', '2018-01-07 17:24:29', 1, 10),
(47, '2', '2018-01-07 17:24:29', 1, 10),
(48, '5', '2018-01-07 17:24:29', 1, 11),
(49, '3', '2018-01-07 17:24:29', 1, 11),
(50, '4', '2018-01-07 17:24:29', 1, 11),
(51, '5', '2018-01-07 17:24:29', 1, 12),
(52, '4', '2018-01-07 17:24:29', 1, 12),
(53, '3', '2018-01-07 17:24:29', 1, 12),
(54, '1', '2018-01-07 17:24:29', 1, 12),
(55, '2', '2018-01-07 17:24:29', 1, 13),
(56, '5', '2018-01-07 17:24:29', 1, 13),
(57, '3', '2018-01-07 17:24:29', 1, 13),
(58, '2', '2018-01-07 17:24:29', 1, 13),
(59, '2', '2018-01-07 17:24:29', 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
CREATE TABLE IF NOT EXISTS `recipes` (
  `recipe_id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `prep_time` int(11) NOT NULL DEFAULT '5',
  `dirty_dishes` int(11) NOT NULL DEFAULT '1',
  `instructions` text NOT NULL,
  `posting_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  `recipe_cats` varchar(255) NOT NULL COMMENT 'string explode cat_ids',
  `recipe_ingrs` varchar(255) NOT NULL COMMENT 'string: ingr_id, ammount, unit_id/ingr_id, ammount, unit_id/.... double explode',
  `recipe_ingrs_id` varchar(255) NOT NULL,
  `recipe_photos` varchar(255) NOT NULL DEFAULT '1' COMMENT 'string explode photo_ids',
  `user_id` int(11) NOT NULL,
  `avg_rating` decimal(10,1) NOT NULL DEFAULT '0.0',
  `no_votes` int(11) NOT NULL DEFAULT '0',
  `recipe_permalink` varchar(255) NOT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `user_id_fk_idx` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=226059 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `recipe_title`, `description`, `prep_time`, `dirty_dishes`, `instructions`, `posting_time`, `status`, `recipe_cats`, `recipe_ingrs`, `recipe_ingrs_id`, `recipe_photos`, `user_id`, `avg_rating`, `no_votes`, `recipe_permalink`) VALUES
(1, 'Pita sa mesom', 'Hladno predjelo na brzaka', 30, 2, 'fgdsfgsdfgdf', '2017-11-23 10:26:42', 1, ',1,3,6,9,17,', '1,5,9/2,5,9/6,5,12/5,6,8', ',1,2,6,5,', '8,1,2', 1, '4.1', 10, 'pita-sa-mesom'),
(2, 'Torta od šargarepe', 'Zekina omiljena', 46, 3, 'dfjhjkhkhjkhjkhjk', '2017-11-23 10:45:11', 0, ',2,4,5,8,', '2,5,9/5,7,8/9,5,6', ',2,5,9,', '10,3,4,5', 2, '4.7', 20, 'torta-od-sargarepe'),
(3, 'Krempite', 'Mamin specijalitet', 15, 5, 'sdgdsfgdfg', '2017-11-23 10:45:11', 1, ',7,10,', '1,3,2/3,5,9/4,5,/9,5,6/6,5,6', ',1,3,4,9,6,', '7,6,8', 1, '3.2', 15, 'krempite'),
(4, 'Jagode sa šlagom', 'Njam njam', 5, 1, 'sadgdfgdfsgdfg', '2017-11-23 10:45:11', 0, ',7,8,9,', '2,3,11/3,80,5/7,6,11', ',2,3,7,', '9,10,13', 3, '2.3', 5, 'jagode-sa-slagom'),
(5, 'Američke palačinke sa medom i šumskim voćem', 'Omiljeni doručak ili užina onima koji žure, a dosadili su im sendviči i kaše od pahuljica. Odlične i sa slanim i sa slatkim nadevima. Nije vam potrebno puno iskustva da bi vam ispale odlično.', 15, 2, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno.\r\n\r\n<br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. \r\n\r\n<br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2017-12-01 00:28:56', 1, ',3,12,16,17,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',4,8,5,1,23,', '11,12,13', 1, '4.8', 7, 'americke-palacinke-sa-medom'),
(6, 'Ananas sa šlagom i keksom', 'Njam njam pojesti sveeeee', 5, 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2017-11-23 10:45:11', 1, ',7,8,9,11,', '2,5,8/3,5,4/7,1,2/6,6,6/12,5,6', ',2,3,7,6,12,', '12,13', 3, '4.2', 9, 'ananas-sa-slagom'),
(7, 'Slatke palačinke', 'Divne slatke palačinke', 30, 3, 'sjakdhsakjdhsakjdhsajkdhsakjdhsajkjsjsjkhdasjdhsakjdhsajkdhsakjdhsajdkhsajkdhsajkdhsjakdhakdjsadsad', '2017-12-31 15:11:26', 1, ',7,1,3,4,5,', '2,3,11/3,80,5/7,6,11', ',1,2,3,4,5,6,7,8,9,11,', '1,2,3', 7, '4.9', 3, 'slatke-palacinke'),
(8, 'Šnenokle', 'Preslatki slatkiš', 45, 5, 'fdddsfsdfdsfjdskfjdsklfjleijfeifjcmxnverignvm', '2017-12-31 15:11:26', 1, ',7,1,3,4,5,9,2,', '2,3,11/3,80,5/7,6,11', ',1,2,3,4,5,6,7,8,9,11,', '2,5,6', 7, '3.6', 25, 'snenokle'),
(9, 'Avokado creme torta', 'Veganska torta', 60, 6, 'ksdlaskdsalkdjskadjkslasakl\r\nbal bla Avokado', '2017-12-31 16:11:09', 0, ',1,3,6,9,17,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',2,3,7,6,12,5,', '3,4,6', 7, '2.6', 26, 'avokado-creme-torta'),
(10, 'Čokoladni mus', 'Slatkiš od poslastice', 55, 4, 'csacdcdcdsc\r\ncds\r\nc\r\ndsc\r\nsd\r\nvfgfdgfdgfdg', '2018-01-04 00:18:49', 1, ',5,9,2,1,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',4,8,5,1,23,', '4,1,12', 2, '1.6', 62, 'cokoladni-mus'),
(11, 'Piletina sa kikirikijem', 'Kineska piletina sa kikirikijem', 45, 5, 'dfwkfwlf\r\nwefwe\r\ncwefć\r\nwefwefewfwef', '2018-01-04 00:20:51', 1, ',7,1,3,4,5,9,2', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',1,2,3,4,5,6,7,8,9,', '5,6,9', 1, '5.0', 11, 'kineska-piletina-sa-kikirikijem'),
(12, 'Jaretina sa pistaćima', 'Petrov specijalitet za koji je potrebno malo dobre volje, puno iskustva, nešto jaretine i pistaća, i kilo vremena.', 150, 6, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', '2018-01-07 18:52:03', 1, ',5,6,9,11,', '1,5,9/2,3,5/3,5,7/5,56,6/9,58,4', ',1,2,3,5,9,', '6,8,9,2', 2, '5.0', 18, 'jaretina-sa-pistacima'),
(16, 'Piletina sa povrćem', 'Kineska piletina sa povrćem i tamari sosom', 45, 5, 'dfwkfwlf\r\nwefwe\r\ncwefć\r\nwefwefewfwef', '2018-01-04 00:20:51', 1, ',7,1,3,4,15,9,2', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',1,2,3,4,5,6,7,8,9,', '21,6,9', 1, '4.5', 15, 'kineska-piletina-sa-povrcem'),
(17, 'Pečene banane sa čokoladom i sladoledom', 'Petrov specijalitet za koji je potrebno malo dobre volje, puno iskustva, nešto jaretine i pistaća, i kilo vremena.', 150, 6, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', '2018-01-07 18:52:03', 1, ',5,6,9,11,', '1,5,9/2,3,5/3,5,7/5,56,6/9,58,4', ',1,2,3,5,9,', '22,8,9,2', 2, '5.0', 15, 'Pecene-banane-sa-cokoladom'),
(18, 'Palačinke sa smokvama i sladoledom', 'Divne slatke palačinke', 30, 3, 'sjakdhsakjdhsakjdhsajkdhsakjdhsajkjsjsjkhdasjdhsakjdhsajkdhsakjdhsajdkhsajkdhsajkdhsjakdhakdjsadsad', '2017-12-31 15:11:26', 1, ',7,1,3,4,5,', '2,3,11/3,80,5/7,6,11', ',1,2,3,4,5,6,7,8,9,11,', '23,2,3', 7, '4.9', 4, 'palacinke-sa-smokvama'),
(19, 'Američke palačinke sa mesom', 'Omiljeni doručak ili užina onima koji žure, a dosadili su im sendviči i kaše od pahuljica. Odlične i sa slanim i sa slatkim nadevima. Nije vam potrebno puno iskustva da bi vam ispale odlično.', 15, 2, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno.\r\n\r\n<br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. \r\n\r\n<br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2017-12-01 00:28:56', 1, ',3,12,16,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,17', ',4,8,5,1,23,', '24,12,13', 1, '4.8', 6, 'americke-palacinke-sa-mesom'),
(20, 'Torta od pečenih paprika', 'Zekina omiljena', 46, 3, 'dfjhjkhkhjkhjkhjk', '2017-11-23 10:45:11', 1, ',2,4,5,8,', '2,5,9/5,7,8/9,5,6', ',2,5,9,', '25,3,4,5', 4, '4.7', 20, 'torta-od-pecenih-paprika'),
(21, 'Ananas torta', 'Njam njam pojesti sveeeee', 5, 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2017-11-23 10:45:11', 1, ',7,8,9,11,', '2,5,8/3,5,4/7,1,2/6,6,6/12,5,6', ',2,3,7,6,12,', '26,13', 3, '4.2', 9, 'ananas-torta'),
(22, 'Pita sa sirom', 'Hladno predjelo na brzaka', 30, 2, 'fgdsfgsdfgdf', '2017-11-23 10:26:42', 1, ',1,3,6,9,17,', '1,5,9/2,5,9/6,5,12/5,6,8', ',1,2,6,5,', '8,1,2', 1, '4.1', 10, 'pita-sa-sirom'),
(23, 'Nebuloze', 'Preslatki slatkiš', 45, 5, 'fdddsfsdfdsfjdskfjdsklfjleijfeifjcmxnverignvm', '2017-12-31 15:11:26', 1, ',7,1,3,4,5,9,2,', '2,3,11/3,80,5/7,6,11,5', ',1,2,3,4,5,6,7,8,9,11,', '29,5,6', 1, '3.6', 25, 'nebuloze'),
(24, 'Kesten torta', 'Mamin specijalitet', 15, 5, 'sdgdsfgdfg', '2017-11-23 10:45:11', 1, ',7,10,', '1,3,2/3,5,9/4,5,/9,5,6/6,5,6', ',1,3,4,9,6,', '30,6,8', 1, '3.2', 15, 'kesten-torta'),
(25, 'Avokado namaz', 'Veganska torta', 60, 6, 'ksdlaskdsalkdjskadjkslasakl\r\nbal bla Avokado', '2017-12-31 16:11:09', 1, ',1,3,6,9,17,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',2,3,7,6,12,5,', '31,4,6', 7, '2.6', 26, 'avokado-namaz'),
(26, 'Jabuke sa šlagom', 'Njam njam', 5, 1, 'sadgdfgdfsgdfg', '2017-11-23 10:45:11', 1, ',7,8,9,', '2,3,11/3,80,5/7,6,11', ',2,3,7,', '9,10,13', 3, '2.3', 5, 'jabuke-sa-slagom'),
(27, 'Pekarski krompir', 'Slatkiš od poslastice', 55, 4, 'csacdcdcdsc\r\ncds\r\nc\r\ndsc\r\nsd\r\nvfgfdgfdgfdg', '2018-01-04 00:18:49', 1, ',5,9,21,1,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',4,8,5,1,23,', '37,1,12', 4, '1.6', 62, 'pekarski-krompir'),
(13, 'Kesten pire sa šlagom', 'Mamin specijalitet', 15, 5, 'sdgdsfgdfg', '2017-11-23 10:45:11', 1, ',7,10,', '1,3,2/3,5,9/4,5,/9,5,6/6,5,6', ',1,3,4,9,6,', '7,6,8', 1, '3.2', 15, 'kesten-pire'),
(14, 'Kolač sa urmama', 'Veganska torta', 60, 5, 'ksdlaskdsalkdjskadjkslasakl\r\nbal bla Avokado', '2017-12-31 16:11:09', 1, ',1,3,6,9,17,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',2,3,7,6,12,5,', '3,4,6', 1, '2.6', 26, 'kolac-sa-urmama'),
(15, 'Pita sa jabukama', 'Njam njam', 5, 1, 'sadgdfgdfsgdfg', '2017-11-23 10:45:11', 1, ',7,8,9,', '2,3,11/3,80,5/7,6,11', ',2,3,7,', '20,10,13', 5, '2.3', 5, 'pita-sa-jabukama'),
(28, 'Pikantni krompir', 'Slatkiš od poslastice', 55, 4, 'csacdcdcdsc\r\ncds\r\nc\r\ndsc\r\nsd\r\nvfgfdgfdgfdg', '2018-01-04 00:18:49', 1, ',5,9,21,1,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',4,8,5,1,23,', '38,1,12', 2, '1.6', 62, 'pikantni-krompir'),
(29, 'Pita sa mesom', 'Hladno predjelo na brzaka', 30, 2, 'fgdsfgsdfgdf', '2017-11-23 10:26:42', 1, ',1,3,6,9,17,', '1,5,9/2,5,9/6,5,12/5,6,8', ',1,2,6,5,', '39,1,2', 1, '4.1', 10, 'pita-sa-mesom'),
(30, 'Torta od šargarepe', 'Zekina omiljena', 46, 3, 'dfjhjkhkhjkhjkhjk', '2017-11-23 10:45:11', 1, ',2,4,5,8,', '2,5,9/5,7,8/9,5,6', ',2,5,9,', '40,3,4,5', 2, '4.7', 20, 'torta-od-sargarepe'),
(31, 'Krempite', 'Mamin specijalitet', 15, 5, 'sdgdsfgdfg', '2017-11-23 10:45:11', 1, ',7,10,', '1,3,2/3,5,9/4,5,/9,5,6/6,5,6', ',1,3,4,9,6,', '41,6,8', 1, '3.2', 15, 'krempite'),
(32, 'Jagode sa šlagom', 'Njam njam', 5, 1, 'sadgdfgdfsgdfg', '2017-11-23 10:45:11', 1, ',7,8,9,', '2,3,11/3,80,5/7,6,11', ',2,3,7,', '42,10,13', 3, '2.3', 5, 'jagode-sa-slagom'),
(33, 'Američke palačinke sa medom i šumskim voćem', 'Omiljeni doručak ili užina onima koji žure, a dosadili su im sendviči i kaše od pahuljica. Odlične i sa slanim i sa slatkim nadevima. Nije vam potrebno puno iskustva da bi vam ispale odlično.', 15, 2, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno.\r\n\r\n<br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. \r\n\r\n<br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2017-12-01 00:28:56', 0, ',3,12,16,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,17', ',4,8,5,1,23,', '43,12,13', 6, '4.8', 6, 'americke-palacinke-sa-medom'),
(34, 'Ananas sa šlagom i keksom', 'Njam njam pojesti sveeeee', 5, 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2017-11-23 10:45:11', 1, ',7,8,9,11,', '2,5,8/3,5,4/7,1,2/6,6,6/12,5,6', ',2,3,7,6,12,', '44,12,13', 7, '4.2', 9, 'ananas-sa-slagom'),
(35, 'Slatke palačinke', 'Divne slatke palačinke', 30, 3, 'sjakdhsakjdhsakjdhsajkdhsakjdhsajkjsjsjkhdasjdhsakjdhsajkdhsakjdhsajdkhsajkdhsajkdhsjakdhakdjsadsad', '2017-12-31 15:11:26', 1, ',7,1,3,4,5,', '2,3,11/3,80,5/7,6,11', ',1,2,3,4,5,6,7,8,9,11,', '45,2,3', 1, '4.9', 3, 'slatke-palacinke'),
(36, 'Šnenokle', 'Preslatki slatkiš', 45, 5, 'fdddsfsdfdsfjdskfjdsklfjleijfeifjcmxnverignvm', '2017-12-31 15:11:26', 1, ',7,1,3,4,5,9,2,', '2,3,11/3,80,5/7,6,11,5', ',1,2,3,4,5,6,7,8,9,11,', '2,5,6', 1, '3.6', 25, 'snenokle'),
(37, 'Avokado creme torta', 'Veganska torta', 60, 6, 'ksdlaskdsalkdjskadjkslasakl\r\nbal bla Avokado', '2017-12-31 16:11:09', 1, ',1,3,6,9,17,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',2,3,7,6,12,5,', '3,4,6', 6, '2.6', 26, 'avokado-creme-torta'),
(38, 'Čokoladni mus', 'Slatkiš od poslastice', 55, 4, 'csacdcdcdsc\r\ncds\r\nc\r\ndsc\r\nsd\r\nvfgfdgfdgfdg', '2018-01-04 00:18:49', 1, ',5,9,2,1,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',4,8,5,1,23,', '4,1,12', 2, '1.6', 62, 'cokoladni-mus'),
(39, 'Piletina sa kikirikijem', 'Kineska piletina sa kikirikijem', 45, 5, 'dfwkfwlf\r\nwefwe\r\ncwefć\r\nwefwefewfwef', '2018-01-04 00:20:51', 1, ',7,1,3,4,5,9,2', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',1,2,3,4,5,6,7,8,9,', '5,6,9', 6, '4.9', 11, 'kineska-piletina-sa-kikirikijem'),
(40, 'Jaretina sa pistaćima', 'Petrov specijalitet za koji je potrebno malo dobre volje, puno iskustva, nešto jaretine i pistaća, i kilo vremena.', 150, 6, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', '2018-01-07 18:52:03', 1, ',5,6,9,11,', '1,5,9/2,3,5/3,5,7/5,56,6/9,58,4', ',1,2,3,5,9,', '46,8,9,2', 2, '4.9', 15, 'jaretina-sa-pistacima'),
(41, 'Kesten pire sa šlagom', 'Mamin specijalitet', 15, 5, 'sdgdsfgdfg', '2017-11-23 10:45:11', 1, ',7,10,', '1,3,2/3,5,9/4,5,/9,5,6/6,5,6', ',1,3,4,9,6,', '7,6,8', 6, '3.2', 15, 'kesten-pire'),
(42, 'Kolač sa urmama', 'Veganska torta', 60, 6, 'ksdlaskdsalkdjskadjkslasakl\r\nbal bla Avokado', '2017-12-31 16:11:09', 1, ',1,3,6,9,17,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',2,3,7,6,12,5,', '3,4,6', 6, '2.6', 26, 'kolac-sa-urmama'),
(43, 'Pita sa jabukama', 'Njam njam', 5, 1, 'sadgdfgdfsgdfg', '2017-11-23 10:45:11', 1, ',7,8,9,', '2,3,11/3,80,5/7,6,11', ',2,3,7,', '51,9,10,13', 5, '2.3', 5, 'pita-sa-jabukama'),
(44, 'Piletina sa povrćem', 'Kineska piletina sa povrćem i tamari sosom', 45, 5, 'dfwkfwlf\r\nwefwe\r\ncwefć\r\nwefwefewfwef', '2018-01-04 00:20:51', 1, ',7,1,3,4,15,9,2', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',1,2,3,4,5,6,7,8,9,', '5,6,9', 4, '4.9', 11, 'kineska-piletina-sa-povrcem'),
(45, 'Pečene banane sa čokoladom i sladoledom', 'Petrov specijalitet za koji je potrebno malo dobre volje, puno iskustva, nešto jaretine i pistaća, i kilo vremena.', 150, 6, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', '2018-01-07 18:52:03', 1, ',5,6,9,11,', '1,5,9/2,3,5/3,5,7/5,56,6/9,58,4', ',1,2,3,5,9,', '6,8,9,2', 2, '4.9', 15, 'Pecene-banane-sa-cokoladom'),
(46, 'Palačinke sa smokvama i sladoledom', 'Divne slatke palačinke', 30, 3, 'sjakdhsakjdhsakjdhsajkdhsakjdhsajkjsjsjkhdasjdhsakjdhsajkdhsakjdhsajdkhsajkdhsajkdhsjakdhakdjsadsad', '2017-12-31 15:11:26', 1, ',7,1,3,4,5,', '2,3,11/3,80,5/7,6,11', ',1,2,3,4,5,6,7,8,9,11,', '1,2,3', 4, '4.9', 3, 'palacinke-sa-smokvama'),
(47, 'Američke palačinke sa mesom', 'Omiljeni doručak ili užina onima koji žure, a dosadili su im sendviči i kaše od pahuljica. Odlične i sa slanim i sa slatkim nadevima. Nije vam potrebno puno iskustva da bi vam ispale odlično.', 15, 2, '<br><br><strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno.\r\n\r\n<br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. \r\n\r\n<br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2017-12-01 00:28:56', 1, ',3,12,16,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,17', ',4,8,5,1,23,', '11,12,13', 5, '4.8', 6, 'americke-palacinke-sa-mesom'),
(48, 'Torta od pečenih paprika', 'Zekina omiljena', 46, 3, 'dfjhjkhkhjkhjkhjk', '2017-11-23 10:45:11', 1, ',2,4,5,8,', '2,5,9/5,7,8/9,5,6', ',2,5,9,', '10,3,4,5', 2, '4.7', 20, 'torta-od-pecenih-paprika'),
(49, 'Ananas torta', 'Njam njam pojesti sveeeee', 5, 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2017-11-23 10:45:11', 1, ',7,8,9,11,', '2,5,8/3,5,4/7,1,2/6,6,6/12,5,6', ',2,3,7,6,12,', '12,13', 5, '4.5', 9, 'ananas-torta'),
(50, 'Pita sa sirom', 'Hladno predjelo na brzaka', 30, 2, 'fgdsfgsdfgdf', '2017-11-23 10:26:42', 1, ',1,3,6,9,17,', '1,5,9/2,5,9/6,5,12/5,6,8', ',1,2,6,5,', '8,1,2', 4, '4.1', 10, 'pita-sa-sirom'),
(51, 'Nebuloze', 'Preslatki slatkiš', 45, 5, 'fdddsfsdfdsfjdskfjdsklfjleijfeifjcmxnverignvm', '2017-12-31 15:11:26', 1, ',7,1,3,4,5,9,2,', '2,3,11/3,80,5/7,6,11,5', ',1,2,3,4,5,6,7,8,9,11,', '2,5,6', 4, '3.6', 25, 'nebuloze'),
(52, 'Kesten torta', 'Mamin specijalitet', 15, 5, 'sdgdsfgdfg', '2017-11-23 10:45:11', 1, ',7,10,', '1,3,2/3,5,9/4,5,/9,5,6/6,5,6', ',1,3,4,9,6,', '7,6,8', 5, '3.2', 15, 'kesten-torta'),
(53, 'Avokado namaz', 'Veganska torta', 60, 5, 'ksdlaskdsalkdjskadjkslasakl\r\nbal bla Avokado', '2017-12-31 16:11:09', 1, ',1,3,6,9,17,', '4,50,1/8,95,5/5,600,3/1,200,5/23,60,1', ',2,3,7,6,12,5,', '3,4,6', 1, '2.6', 26, 'avokado-namaz'),
(54, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 13, 1, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '1,5,9/2,5,9/6,5,12/5,6,8', ',2,5,9,', '14,13,12', 3, '5.0', 34, 'tuna-u-sosu-od-meda'),
(55, 'Krofnice sa vanila kremom i šafranom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 200, 2, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '1,5,9/2,5,9/6,5,12/5,6,8', ',2,5,9,', '24,23,22,21,20', 6, '2.0', 47, 'cokoladna-gitara-torta'),
(56, 'Čokoladna gitara torta', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 89, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',1,3,4,9,6,', '50, 49,48,47', 6, '2.0', 79, 'krofnice-sa-vanila-kremom'),
(57, 'Čokoladna gitara torta', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 166, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '2,5,9/5,7,8/9,5,6', ',1,2,6,5,', '24,23,22,21,20', 1, '1.0', 80, 'pogacice-sa-cvarcima'),
(58, 'Pačiji batak u sosu od malina i votke', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 134, 3, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',19,20,21,', '2,5,9/5,7,8/9,5,6', ',1,2,6,5,', '46,45,44,43,42', 1, '5.0', 75, 'krofnice-sa-vanila-kremom'),
(59, 'Tuna u sosu od medenih tajni', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 120, 2, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '1,5,9/2,5,9/6,5,12/5,6,8', ',1,2,6,5,', '24,23,22,21,20', 4, '5.0', 79, 'cokoladna-gitara-torta'),
(60, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 262, 5, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '3,5,11/7,5,9/9,5,12/21,65,11', ',1,2,6,5,', '50, 49,48,47', 1, '3.0', 28, 'pogacice-sa-cvarcima'),
(61, 'Božićna hrskava pogača', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 172, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',19,20,21,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',1,3,4,9,6,', '41,40,39,38', 7, '4.0', 42, 'tuna-u-sosu-od-meda'),
(62, 'Božićna hrskava pogača', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 183, 3, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',2,5,9,', '19,18,17,16,15', 2, '2.0', 41, 'tuna-u-sosu-od-meda'),
(63, 'Božićna hrskava pogača', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 50, 2, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',19,20,21,', '3,5,11/7,5,9/9,5,12/21,65,11', ',3,7,9,21,', '46,45,44,43,42', 6, '1.0', 26, 'cokoladna-gitara-torta'),
(64, 'Pogačice sa čvarcima i belim lukom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 250, 2, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '1,5,9/2,5,9/6,5,12/5,6,8', ',2,5,9,', '34,33,32,31', 4, '1.0', 60, 'tuna-u-sosu-od-meda'),
(65, 'Pogačice sa čvarcima i belim lukom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 97, 1, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '2,5,9/5,7,8/9,5,6', ',2,5,9,', '19,18,17,16,15', 3, '2.0', 22, 'krofnice-sa-vanila-kremom'),
(66, 'Tuna u sosu od medenih tajni', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 36, 3, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '3,5,11/7,5,9/9,5,12/21,65,11', ',2,3,7,', '30,29,28,27,26,25', 1, '4.0', 22, 'cokoladna-gitara-torta'),
(67, 'Vruć kolač od jabuka, urmi i sladoleda', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 61, 2, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',4,8,6,1,23,', '24,23,22,21,20', 7, '3.0', 81, 'cokoladna-gitara-torta'),
(68, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 188, 5, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '2,3,11/3,80,5/7,6,11', ',2,5,9,', '19,18,17,16,15', 1, '3.0', 59, 'krofnice-sa-vanila-kremom'),
(69, 'Vruć kolač od jabuka, urmi i sladoleda', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 287, 2, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '3,5,11/7,5,9/9,5,12/21,65,11', ',2,3,7,', '11,10,9', 1, '5.0', 80, 'pogacice-sa-cvarcima'),
(70, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 137, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '3,5,11/7,5,9/9,5,12/21,65,11', ',2,5,9,', '11,10,9', 6, '2.0', 85, 'krofnice-sa-vanila-kremom'),
(71, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 72, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',4,8,6,1,23,', '37,36,35', 6, '5.0', 70, 'cokoladna-gitara-torta'),
(72, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 269, 3, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',4,8,6,1,23,', '46,45,44,43,42', 4, '3.0', 90, 'krofnice-sa-vanila-kremom'),
(73, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 281, 2, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '1,5,9/2,5,9/6,5,12/5,6,8', ',1,3,4,9,6,', '14,13,12', 3, '2.0', 46, 'tuna-u-sosu-od-meda'),
(74, 'Pačiji batak u sosu od malina i votke', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 27, 2, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',2,3,7,', '41,40,39,38', 3, '2.0', 12, 'cokoladna-gitara-torta'),
(75, 'Božićna hrskava pogača', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 136, 4, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',2,3,7,', '50, 49,48,47', 5, '5.0', 36, 'cokoladna-gitara-torta'),
(76, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 216, 5, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '1,5,9/2,5,9/6,5,12/5,6,8', ',2,3,7,', '11,10,9', 5, '4.0', 75, 'cokoladna-gitara-torta'),
(77, 'Božićna hrskava pogača', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 104, 1, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '1,5,9/2,5,9/6,5,12/5,6,8', ',2,3,7,', '24,23,22,21,20', 4, '2.0', 14, 'krofnice-sa-vanila-kremom'),
(78, 'Božićna hrskava pogača', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 100, 2, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '3,5,11/7,5,9/9,5,12/21,65,11', ',4,8,6,1,23,', '11,10,9', 5, '3.0', 28, 'cokoladna-gitara-torta'),
(79, 'Vruć kolač od jabuka, urmi i sladoleda', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 22, 5, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',2,3,7,', '11,10,9', 2, '5.0', 62, 'tuna-u-sosu-od-meda'),
(80, 'Vruć kolač od jabuka, urmi i sladoleda', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 209, 3, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '2,5,9/5,7,8/9,5,6', ',4,8,6,1,23,', '19,18,17,16,15', 5, '2.0', 60, 'cokoladna-gitara-torta'),
(81, 'Tuna u sosu od medenih tajni', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 26, 3, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',19,20,21,', '2,3,11/3,80,5/7,6,11', ',2,3,7,', '14,13,12', 7, '4.0', 75, 'tuna-u-sosu-od-meda'),
(82, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 208, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',4,8,6,1,23,', '11,10,9', 2, '5.0', 33, 'tuna-u-sosu-od-meda'),
(83, 'Tuna u sosu od medenih tajni', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 24, 2, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',19,20,21,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',3,7,9,21,', '37,36,35', 1, '4.0', 68, 'krofnice-sa-vanila-kremom'),
(84, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 56, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',1,3,4,9,6,', '34,33,32,31', 6, '3.0', 64, 'cokoladna-gitara-torta'),
(85, 'Krofnice sa vanila kremom i šafranom', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 153, 4, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',19,20,21,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',2,3,7,', '34,33,32,31', 3, '1.0', 26, 'krofnice-sa-vanila-kremom'),
(86, 'Vruć kolač od jabuka, urmi i sladoleda', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 58, 4, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '2,5,9/5,7,8/9,5,6', ',4,8,6,1,23,', '11,10,9', 2, '4.0', 21, 'krofnice-sa-vanila-kremom'),
(87, 'Paleta sireva sa voćem', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 149, 4, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',19,20,21,', '3,5,11/7,5,9/9,5,12/21,65,11', ',2,3,7,', '46,45,44,43,42', 4, '5.0', 21, 'krofnice-sa-vanila-kremom'),
(88, 'Hrono hleb, lako i brzo', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 6, 3, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '2,5,9/5,7,8/9,5,6', ',1,3,4,9,6,', '30,29,28,27,26,25', 5, '3.0', 63, 'cokoladna-gitara-torta'),
(89, 'Krofnice sa vanila kremom i šafranom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 74, 2, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',1,3,4,9,6,', '34,33,32,31', 4, '2.0', 34, 'pogacice-sa-cvarcima'),
(90, 'Čokoladna gitara torta', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 44, 5, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',2,5,9,', '41,40,39,38', 1, '5.0', 32, 'pogacice-sa-cvarcima'),
(91, 'Hrono hleb, lako i brzo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 216, 3, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',19,20,21,', '2,3,11/3,80,5/7,6,11', ',1,3,4,9,6,', '24,23,22,21,20', 1, '5.0', 35, 'krofnice-sa-vanila-kremom'),
(92, 'Božićna hrskava pogača', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 191, 5, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',1,2,6,5,', '41,40,39,38', 4, '4.0', 57, 'pogacice-sa-cvarcima'),
(93, 'Pačiji batak u sosu od malina i votke', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 297, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '2,3,11/3,80,5/7,6,11', ',4,8,6,1,23,', '14,13,12', 1, '1.0', 69, 'pogacice-sa-cvarcima');
INSERT INTO `recipes` (`recipe_id`, `recipe_title`, `description`, `prep_time`, `dirty_dishes`, `instructions`, `posting_time`, `status`, `recipe_cats`, `recipe_ingrs`, `recipe_ingrs_id`, `recipe_photos`, `user_id`, `avg_rating`, `no_votes`, `recipe_permalink`) VALUES
(94, 'Čokoladna gitara torta', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 119, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '2,5,9/5,7,8/9,5,6', ',4,8,6,1,23,', '19,18,17,16,15', 7, '5.0', 13, 'krofnice-sa-vanila-kremom'),
(95, 'Vruć kolač od jabuka, urmi i sladoleda', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 36, 3, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '3,5,11/7,5,9/9,5,12/21,65,11', ',1,3,4,9,6,', '37,36,35', 3, '3.0', 43, 'cokoladna-gitara-torta'),
(96, 'Paleta sireva sa voćem', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 139, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '2,5,9/5,7,8/9,5,6', ',3,7,9,21,', '37,36,35', 6, '1.0', 45, 'cokoladna-gitara-torta'),
(97, 'Hrono hleb, lako i brzo', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 268, 1, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '1,5,9/2,5,9/6,5,12/5,6,8', ',2,5,9,', '14,13,12', 2, '3.0', 90, 'pogacice-sa-cvarcima'),
(98, 'Krofnice sa vanila kremom i šafranom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 80, 3, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',4,8,6,1,23,', '37,36,35', 3, '5.0', 32, 'tuna-u-sosu-od-meda'),
(99, 'Hrono hleb, lako i brzo', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 258, 3, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '2,3,11/3,80,5/7,6,11', ',4,8,6,1,23,', '46,45,44,43,42', 4, '2.0', 80, 'tuna-u-sosu-od-meda'),
(100, 'Vruć kolač od jabuka, urmi i sladoleda', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 261, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '1,5,9/2,5,9/6,5,12/5,6,8', ',3,7,9,21,', '41,40,39,38', 1, '1.0', 30, 'pogacice-sa-cvarcima'),
(101, 'Krofnice sa vanila kremom i šafranom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 76, 3, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '2,3,11/3,80,5/7,6,11', ',1,2,6,5,', '34,33,32,31', 4, '3.0', 10, 'pogacice-sa-cvarcima'),
(102, 'Vruć kolač od jabuka, urmi i sladoleda', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 129, 2, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '3,5,11/7,5,9/9,5,12/21,65,11', ',2,5,9,', '30,29,28,27,26,25', 4, '2.0', 22, 'cokoladna-gitara-torta'),
(103, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 197, 4, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '3,5,11/7,5,9/9,5,12/21,65,11', ',2,3,7,', '30,29,28,27,26,25', 6, '2.0', 85, 'krofnice-sa-vanila-kremom'),
(104, 'Krofnice sa vanila kremom i šafranom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 47, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '2,3,11/3,80,5/7,6,11', ',1,2,6,5,', '41,40,39,38', 6, '4.0', 55, 'tuna-u-sosu-od-meda'),
(105, 'Vruć kolač od jabuka, urmi i sladoleda', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 241, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',19,20,21,', '2,5,9/5,7,8/9,5,6', ',1,2,6,5,', '37,36,35', 4, '3.0', 60, 'tuna-u-sosu-od-meda'),
(106, 'Čokoladna gitara torta', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 44, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',19,20,21,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',2,3,7,', '14,13,12', 3, '1.0', 63, 'tuna-u-sosu-od-meda'),
(107, 'Pačiji batak u sosu od malina i votke', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 37, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '2,3,11/3,80,5/7,6,11', ',3,7,9,21,', '46,45,44,43,42', 3, '5.0', 43, 'pogacice-sa-cvarcima'),
(108, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 127, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',4,8,6,1,23,', '19,18,17,16,15', 1, '1.0', 15, 'tuna-u-sosu-od-meda'),
(109, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 145, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',19,20,21,', '2,5,9/5,7,8/9,5,6', ',2,3,7,', '11,10,9', 5, '3.0', 88, 'cokoladna-gitara-torta'),
(110, 'Čokoladna gitara torta', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 24, 3, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',2,3,7,', '46,45,44,43,42', 7, '4.0', 35, 'tuna-u-sosu-od-meda'),
(111, 'Hrono hleb, lako i brzo', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 289, 4, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '1,5,9/2,5,9/6,5,12/5,6,8', ',3,7,9,21,', '19,18,17,16,15', 1, '5.0', 66, 'pogacice-sa-cvarcima'),
(112, 'Krofnice sa vanila kremom i šafranom', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 127, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '1,5,9/2,5,9/6,5,12/5,6,8', ',2,5,9,', '24,23,22,21,20', 3, '2.0', 30, 'tuna-u-sosu-od-meda'),
(113, 'Pačiji batak u sosu od malina i votke', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 102, 5, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',1,2,6,5,', '37,36,35', 1, '3.0', 80, 'tuna-u-sosu-od-meda'),
(114, 'Paleta sireva sa voćem', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 249, 2, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '1,5,9/2,5,9/6,5,12/5,6,8', ',1,2,6,5,', '24,23,22,21,20', 6, '4.0', 79, 'krofnice-sa-vanila-kremom'),
(115, 'Paleta sireva sa voćem', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 227, 1, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '3,5,11/7,5,9/9,5,12/21,65,11', ',4,8,6,1,23,', '37,36,35', 2, '3.0', 29, 'krofnice-sa-vanila-kremom'),
(116, 'Krofnice sa vanila kremom i šafranom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 264, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '2,3,11/3,80,5/7,6,11', ',3,7,9,21,', '30,29,28,27,26,25', 2, '3.0', 20, 'pogacice-sa-cvarcima'),
(117, 'Krofnice sa vanila kremom i šafranom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 294, 2, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',19,20,21,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',4,8,6,1,23,', '37,36,35', 5, '4.0', 17, 'cokoladna-gitara-torta'),
(118, 'Krofnice sa vanila kremom i šafranom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 296, 2, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '2,5,9/5,7,8/9,5,6', ',4,8,6,1,23,', '37,36,35', 4, '4.0', 85, 'tuna-u-sosu-od-meda'),
(119, 'Paleta sireva sa voćem', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 201, 1, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',2,3,7,', '11,10,9', 5, '1.0', 90, 'cokoladna-gitara-torta'),
(120, 'Pogačice sa čvarcima i belim lukom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 17, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',19,20,21,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',4,8,6,1,23,', '30,29,28,27,26,25', 5, '3.0', 54, 'tuna-u-sosu-od-meda'),
(121, 'Pačiji batak u sosu od malina i votke', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 282, 4, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '2,5,9/5,7,8/9,5,6', ',3,7,9,21,', '41,40,39,38', 5, '4.0', 49, 'tuna-u-sosu-od-meda'),
(122, 'Paleta sireva sa voćem', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 203, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '1,5,9/2,5,9/6,5,12/5,6,8', ',2,3,7,', '34,33,32,31', 2, '5.0', 90, 'pogacice-sa-cvarcima'),
(123, 'Hrono hleb, lako i brzo', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 238, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '3,5,11/7,5,9/9,5,12/21,65,11', ',1,2,6,5,', '46,45,44,43,42', 1, '5.0', 73, 'cokoladna-gitara-torta'),
(124, 'Čokoladna gitara torta', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 291, 2, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',1,3,4,9,6,', '19,18,17,16,15', 1, '4.0', 29, 'cokoladna-gitara-torta'),
(125, 'Pogačice sa čvarcima i belim lukom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 254, 4, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '2,5,9/5,7,8/9,5,6', ',1,3,4,9,6,', '41,40,39,38', 3, '2.0', 61, 'krofnice-sa-vanila-kremom'),
(126, 'Vruć kolač od jabuka, urmi i sladoleda', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 277, 2, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',19,20,21,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',4,8,6,1,23,', '11,10,9', 7, '3.0', 53, 'krofnice-sa-vanila-kremom'),
(127, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 285, 2, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',19,20,21,', '1,5,9/2,5,9/6,5,12/5,6,8', ',4,8,6,1,23,', '14,13,12', 3, '1.0', 78, 'krofnice-sa-vanila-kremom'),
(128, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 113, 3, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '1,5,9/2,5,9/6,5,12/5,6,8', ',4,8,6,1,23,', '24,23,22,21,20', 2, '2.0', 85, 'krofnice-sa-vanila-kremom'),
(129, 'Božićna hrskava pogača', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 13, 3, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',19,20,21,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',1,2,6,5,', '30,29,28,27,26,25', 3, '4.0', 37, 'tuna-u-sosu-od-meda'),
(130, 'Božićna hrskava pogača', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 289, 5, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '1,5,9/2,5,9/6,5,12/5,6,8', ',3,7,9,21,', '50, 49,48,47', 1, '3.0', 64, 'pogacice-sa-cvarcima'),
(131, 'Čokoladna gitara torta', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 241, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',4,8,6,1,23,', '19,18,17,16,15', 4, '3.0', 22, 'tuna-u-sosu-od-meda'),
(132, 'Čokoladna gitara torta', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 94, 1, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '3,5,11/7,5,9/9,5,12/21,65,11', ',4,8,6,1,23,', '24,23,22,21,20', 7, '3.0', 67, 'krofnice-sa-vanila-kremom'),
(133, 'Pačiji batak u sosu od malina i votke', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 118, 3, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',2,3,7,', '50, 49,48,47', 3, '2.0', 70, 'pogacice-sa-cvarcima'),
(134, 'Krofnice sa vanila kremom i šafranom', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 23, 4, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',19,20,21,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',2,3,7,', '41,40,39,38', 2, '2.0', 85, 'krofnice-sa-vanila-kremom'),
(135, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 238, 5, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',3,7,9,21,', '46,45,44,43,42', 4, '4.0', 68, 'krofnice-sa-vanila-kremom'),
(136, 'Tuna u sosu od medenih tajni', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 223, 2, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',1,3,4,9,6,', '41,40,39,38', 1, '4.0', 75, 'pogacice-sa-cvarcima'),
(137, 'Tuna u sosu od medenih tajni', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 123, 5, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '2,5,9/5,7,8/9,5,6', ',2,3,7,', '34,33,32,31', 7, '4.0', 21, 'pogacice-sa-cvarcima'),
(138, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 295, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '1,5,9/2,5,9/6,5,12/5,6,8', ',1,3,4,9,6,', '34,33,32,31', 3, '2.0', 42, 'cokoladna-gitara-torta'),
(139, 'Krofnice sa vanila kremom i šafranom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 238, 5, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '2,3,11/3,80,5/7,6,11', ',2,5,9,', '34,33,32,31', 4, '1.0', 30, 'pogacice-sa-cvarcima'),
(140, 'Božićna hrskava pogača', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 70, 2, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '2,5,9/5,7,8/9,5,6', ',1,3,4,9,6,', '24,23,22,21,20', 5, '5.0', 21, 'cokoladna-gitara-torta'),
(141, 'Pačiji batak u sosu od malina i votke', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 209, 2, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',4,8,6,1,23,', '14,13,12', 5, '3.0', 31, 'krofnice-sa-vanila-kremom'),
(142, 'Krofnice sa vanila kremom i šafranom', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 232, 4, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',1,3,4,9,6,', '37,36,35', 5, '3.0', 52, 'pogacice-sa-cvarcima'),
(143, 'Tuna u sosu od medenih tajni', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 91, 4, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',19,20,21,', '2,3,11/3,80,5/7,6,11', ',4,8,6,1,23,', '30,29,28,27,26,25', 1, '1.0', 50, 'pogacice-sa-cvarcima'),
(144, 'Paleta sireva sa voćem', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 261, 3, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '2,3,11/3,80,5/7,6,11', ',3,7,9,21,', '34,33,32,31', 6, '5.0', 58, 'cokoladna-gitara-torta'),
(145, 'Hrono hleb, lako i brzo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 60, 3, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '2,3,11/3,80,5/7,6,11', ',2,5,9,', '14,13,12', 4, '2.0', 60, 'tuna-u-sosu-od-meda'),
(146, 'Pačiji batak u sosu od malina i votke', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 174, 5, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '2,5,9/5,7,8/9,5,6', ',3,7,9,21,', '14,13,12', 4, '2.0', 14, 'tuna-u-sosu-od-meda'),
(147, 'Pačiji batak u sosu od malina i votke', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 242, 4, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '2,5,9/5,7,8/9,5,6', ',4,8,6,1,23,', '14,13,12', 1, '1.0', 10, 'krofnice-sa-vanila-kremom'),
(148, 'Vruć kolač od jabuka, urmi i sladoleda', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 294, 4, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '2,5,9/5,7,8/9,5,6', ',2,3,7,', '46,45,44,43,42', 7, '4.0', 58, 'cokoladna-gitara-torta'),
(149, 'Hrono hleb, lako i brzo', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 29, 5, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '3,5,11/7,5,9/9,5,12/21,65,11', ',2,5,9,', '11,10,9', 6, '3.0', 46, 'tuna-u-sosu-od-meda'),
(150, 'Čokoladna gitara torta', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 127, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',2,3,7,', '46,45,44,43,42', 7, '1.0', 78, 'krofnice-sa-vanila-kremom'),
(151, 'Hrono hleb, lako i brzo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 26, 2, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '2,5,9/5,7,8/9,5,6', ',3,7,9,21,', '46,45,44,43,42', 5, '1.0', 38, 'krofnice-sa-vanila-kremom'),
(152, 'Krofnice sa vanila kremom i šafranom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 155, 3, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',2,5,9,', '37,36,35', 2, '1.0', 15, 'krofnice-sa-vanila-kremom'),
(153, 'Tuna u sosu od medenih tajni', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 260, 5, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',19,20,21,', '2,5,9/5,7,8/9,5,6', ',4,8,6,1,23,', '41,40,39,38', 6, '4.0', 89, 'cokoladna-gitara-torta'),
(154, 'Krofnice sa vanila kremom i šafranom', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 165, 2, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '3,5,11/7,5,9/9,5,12/21,65,11', ',3,7,9,21,', '14,13,12', 7, '2.0', 16, 'cokoladna-gitara-torta'),
(155, 'Tuna u sosu od medenih tajni', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 18, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',2,5,9,', '14,13,12', 6, '3.0', 53, 'tuna-u-sosu-od-meda'),
(156, 'Pogačice sa čvarcima i belim lukom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 5, 5, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',2,5,9,', '14,13,12', 2, '5.0', 18, 'tuna-u-sosu-od-meda'),
(157, 'Vruć kolač od jabuka, urmi i sladoleda', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 43, 3, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',19,20,21,', '3,5,11/7,5,9/9,5,12/21,65,11', ',2,3,7,', '24,23,22,21,20', 2, '2.0', 37, 'krofnice-sa-vanila-kremom'),
(158, 'Vruć kolač od jabuka, urmi i sladoleda', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 256, 4, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '3,5,11/7,5,9/9,5,12/21,65,11', ',4,8,6,1,23,', '34,33,32,31', 3, '3.0', 40, 'krofnice-sa-vanila-kremom'),
(159, 'Pogačice sa čvarcima i belim lukom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 70, 2, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',19,20,21,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',4,8,6,1,23,', '19,18,17,16,15', 6, '5.0', 19, 'pogacice-sa-cvarcima'),
(160, 'Tuna u sosu od medenih tajni', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 167, 3, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',1,3,4,9,6,', '34,33,32,31', 5, '1.0', 80, 'tuna-u-sosu-od-meda');
INSERT INTO `recipes` (`recipe_id`, `recipe_title`, `description`, `prep_time`, `dirty_dishes`, `instructions`, `posting_time`, `status`, `recipe_cats`, `recipe_ingrs`, `recipe_ingrs_id`, `recipe_photos`, `user_id`, `avg_rating`, `no_votes`, `recipe_permalink`) VALUES
(161, 'Božićna hrskava pogača', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 200, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',1,3,4,9,6,', '37,36,35', 7, '3.0', 50, 'pogacice-sa-cvarcima'),
(162, 'Pačiji batak u sosu od malina i votke', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 191, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '2,5,9/5,7,8/9,5,6', ',1,2,6,5,', '46,45,44,43,42', 4, '1.0', 35, 'cokoladna-gitara-torta'),
(163, 'Čokoladna gitara torta', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 86, 4, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',19,20,21,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',2,5,9,', '11,10,9', 2, '1.0', 51, 'krofnice-sa-vanila-kremom'),
(164, 'Hrono hleb, lako i brzo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 287, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',2,5,9,', '50, 49,48,47', 6, '4.0', 83, 'tuna-u-sosu-od-meda'),
(165, 'Pačiji batak u sosu od malina i votke', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 66, 4, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',1,3,4,9,6,', '46,45,44,43,42', 7, '4.0', 16, 'krofnice-sa-vanila-kremom'),
(166, 'Krofnice sa vanila kremom i šafranom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 123, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',3,7,9,21,', '37,36,35', 3, '5.0', 79, 'pogacice-sa-cvarcima'),
(167, 'Pačiji batak u sosu od malina i votke', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 150, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',10,11,12,13,14,', '3,5,11/7,5,9/9,5,12/21,65,11', ',2,5,9,', '34,33,32,31', 4, '5.0', 89, 'krofnice-sa-vanila-kremom'),
(168, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 226, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',19,20,21,', '2,3,11/3,80,5/7,6,11', ',1,3,4,9,6,', '41,40,39,38', 4, '4.0', 50, 'tuna-u-sosu-od-meda'),
(169, 'Paleta sireva sa voćem', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 255, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',2,3,7,', '14,13,12', 3, '1.0', 83, 'cokoladna-gitara-torta'),
(170, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 141, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '2,5,9/5,7,8/9,5,6', ',3,7,9,21,', '11,10,9', 7, '2.0', 43, 'krofnice-sa-vanila-kremom'),
(171, 'Božićna hrskava pogača', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 62, 4, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '3,5,11/7,5,9/9,5,12/21,65,11', ',3,7,9,21,', '41,40,39,38', 5, '5.0', 20, 'tuna-u-sosu-od-meda'),
(172, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 262, 2, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '2,5,9/5,7,8/9,5,6', ',1,3,4,9,6,', '37,36,35', 6, '5.0', 45, 'pogacice-sa-cvarcima'),
(173, 'Paleta sireva sa voćem', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 24, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',19,20,21,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',1,2,6,5,', '19,18,17,16,15', 4, '2.0', 70, 'tuna-u-sosu-od-meda'),
(174, 'Božićna hrskava pogača', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 221, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '3,5,11/7,5,9/9,5,12/21,65,11', ',2,3,7,', '14,13,12', 2, '4.0', 71, 'pogacice-sa-cvarcima'),
(175, 'Krofnice sa vanila kremom i šafranom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 136, 2, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',1,2,6,5,', '14,13,12', 2, '1.0', 89, 'pogacice-sa-cvarcima'),
(176, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 96, 3, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '1,5,9/2,5,9/6,5,12/5,6,8', ',4,8,6,1,23,', '50, 49,48,47', 6, '1.0', 79, 'tuna-u-sosu-od-meda'),
(177, 'Pačiji batak u sosu od malina i votke', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 287, 2, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',19,20,21,', '2,3,11/3,80,5/7,6,11', ',3,7,9,21,', '34,33,32,31', 2, '2.0', 33, 'krofnice-sa-vanila-kremom'),
(178, 'Pogačice sa čvarcima i belim lukom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 139, 5, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '2,3,11/3,80,5/7,6,11', ',2,5,9,', '11,10,9', 2, '4.0', 19, 'tuna-u-sosu-od-meda'),
(179, 'Čokoladna gitara torta', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 191, 4, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '2,3,11/3,80,5/7,6,11', ',2,5,9,', '24,23,22,21,20', 6, '3.0', 44, 'cokoladna-gitara-torta'),
(180, 'Vruć kolač od jabuka, urmi i sladoleda', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 11, 3, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '3,5,11/7,5,9/9,5,12/21,65,11', ',1,2,6,5,', '50, 49,48,47', 2, '2.0', 72, 'cokoladna-gitara-torta'),
(181, 'Hrono hleb, lako i brzo', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 142, 5, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',19,20,21,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',2,3,7,', '41,40,39,38', 5, '1.0', 29, 'tuna-u-sosu-od-meda'),
(182, 'Čokoladna gitara torta', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 31, 1, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '2,3,11/3,80,5/7,6,11', ',1,3,4,9,6,', '50, 49,48,47', 6, '1.0', 40, 'pogacice-sa-cvarcima'),
(183, 'Zeleni smoothie sa đumbirom, krastavcem i limunom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 105, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',4,8,6,1,23,', '46,45,44,43,42', 4, '3.0', 39, 'tuna-u-sosu-od-meda'),
(184, 'Hrono hleb, lako i brzo', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 244, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',19,20,21,', '3,5,11/7,5,9/9,5,12/21,65,11', ',3,7,9,21,', '41,40,39,38', 3, '1.0', 16, 'krofnice-sa-vanila-kremom'),
(185, 'Krofnice sa vanila kremom i šafranom', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 283, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',1,2,6,5,', '46,45,44,43,42', 7, '1.0', 87, 'krofnice-sa-vanila-kremom'),
(186, 'Paleta sireva sa voćem', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 176, 2, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '2,5,9/5,7,8/9,5,6', ',2,3,7,', '24,23,22,21,20', 1, '2.0', 76, 'tuna-u-sosu-od-meda'),
(187, 'Pogačice sa čvarcima i belim lukom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 115, 2, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '2,5,9/5,7,8/9,5,6', ',1,2,6,5,', '46,45,44,43,42', 2, '3.0', 17, 'krofnice-sa-vanila-kremom'),
(188, 'Hrono hleb, lako i brzo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 176, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '2,3,11/3,80,5/7,6,11', ',3,7,9,21,', '46,45,44,43,42', 4, '4.0', 51, 'pogacice-sa-cvarcima'),
(189, 'Vruć kolač od jabuka, urmi i sladoleda', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 163, 4, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',2,5,9,', '41,40,39,38', 6, '1.0', 33, 'cokoladna-gitara-torta'),
(190, 'Vruć kolač od jabuka, urmi i sladoleda', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 16, 3, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '3,5,11/7,5,9/9,5,12/21,65,11', ',2,3,7,', '37,36,35', 1, '3.0', 49, 'tuna-u-sosu-od-meda'),
(191, 'Božićna hrskava pogača', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 270, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',19,20,21,', '1,5,9/2,5,9/6,5,12/5,6,8', ',3,7,9,21,', '50, 49,48,47', 6, '5.0', 53, 'krofnice-sa-vanila-kremom'),
(192, 'Krofnice sa vanila kremom i šafranom', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 265, 2, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '1,5,9/2,5,9/6,5,12/5,6,8', ',2,3,7,', '41,40,39,38', 3, '2.0', 26, 'pogacice-sa-cvarcima'),
(193, 'Čokoladna gitara torta', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 222, 5, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '1,3,2/3,5,9/4,5,5/9,5,6/6,5,6', ',1,2,6,5,', '46,45,44,43,42', 3, '3.0', 76, 'pogacice-sa-cvarcima'),
(194, 'Pačiji batak u sosu od malina i votke', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 290, 5, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '1,5,9/2,5,9/6,5,12/5,6,8', ',1,3,4,9,6,', '30,29,28,27,26,25', 4, '3.0', 78, 'tuna-u-sosu-od-meda'),
(195, 'Hrono hleb, lako i brzo', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 131, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '2,5,9/5,7,8/9,5,6', ',2,5,9,', '19,18,17,16,15', 1, '3.0', 10, 'tuna-u-sosu-od-meda'),
(196, 'Pogačice sa čvarcima i belim lukom', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 193, 1, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',19,20,21,', '3,5,11/7,5,9/9,5,12/21,65,11', ',1,2,6,5,', '24,23,22,21,20', 6, '3.0', 85, 'pogacice-sa-cvarcima'),
(197, 'Vruć kolač od jabuka, urmi i sladoleda', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 144, 1, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',1,2,3,4,', '2,5,9/5,7,8/9,5,6', ',1,2,6,5,', '50, 49,48,47', 2, '5.0', 55, 'pogacice-sa-cvarcima'),
(198, 'Čokoladna gitara torta', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.', 171, 3, '<strong>Korak 1:</strong><br>Pripremite 4 posude, po jednu za svaku boju fila. Umutite sva četiri fila.<br><br><strong>Korak 2:</strong><br>Ispecite pravougaoni patišpan od jaja, brašna i oraha, i namažite ga omiljenim džemom. <br><br><strong>Korak 3:</strong><br>Isecite patišpan na 4 dela i namažite svaki deo po jednom bojom fila. Premazati šlagom i postaviti figuricu mašne na vrh torte. Odlično se slaže sa šampanjcem.', '2018-02-18 22:29:08', 1, ',5,6,7,8,9,', '3,5,11/7,5,9/9,5,12/21,65,11', ',1,2,6,5,', '37,36,35', 2, '2.0', 32, 'tuna-u-sosu-od-meda'),
(199, 'Krofnice sa vanila kremom i šafranom', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 268, 4, '<strong>Korak 1:</strong><br>U jednoj posudi umutiti Prva tri sastojka. <br><br><strong>Korak 2:</strong><br>Poređati sve u veliki pleh i peći na 180 C. Čim dobije zlatno braon boju sa jedne strane odmah okretati i peći kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Umutiti u drugu posudu ostale sastojke i preliti preko ispečene osnove. Ohladiti i iseći na kocke. Služiti sa omiljenim kavijarom.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '3,5,11/7,5,9/9,5,12/21,65,11', ',3,7,9,21,', '50, 49,48,47', 7, '3.0', 13, 'krofnice-sa-vanila-kremom'),
(200, 'Krofnice sa vanila kremom i šafranom', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 73, 4, '<strong>Korak 1:</strong><br>U jednoj većoj posudi umutiti sve sastojke zajedno. <br><br><strong>Korak 2:</strong><br>Tiganj srednje veličine podmazati sa vrlo malo ulja, zagrejati na najjačoj temperaturi i manjom kutlačom razlivati palačinkice prečnika oko 15 cm. Čim dobije zlatno braon boju sa jedne strane odmah okretati i pržiti kratko i sa druge strane. <br><br><strong>Korak 3:</strong><br>Filovati slanim ili slatkim nadevima, i služiti tople.', '2018-02-18 22:29:08', 1, ',15,16,17,18,', '4,50,1/8,95,5/6,600,3/1,200,5/23,60,17', ',2,5,9,', '46,45,44,43,42', 7, '4.0', 71, 'krofnice-sa-vanila-kremom');

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
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

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
(29, 'šoljice', 1),
(31, 'čaša', 1),
(32, 'čaše', 1),
(33, 'listić', 1),
(34, 'listića', 1),
(35, 'para', 1),
(36, 'kolutić', 1),
(37, 'veza', 1),
(38, 'veze', 1),
(39, 'list', 1),
(40, 'lista', 1),
(41, 'listova', 1),
(42, 'manji', 1),
(43, 'manja', 1),
(44, 'manje', 1),
(45, 'veći', 1),
(46, 'veća', 1),
(47, 'veće', 1),
(48, 'manjih', 1),
(49, 'većih', 1),
(50, 'kčc', 1),
(51, 'prstohvata', 1),
(52, 'kockica', 1),
(53, 'kockice', 1),
(54, 'šolja', 1),
(55, 'šolje', 1),
(56, 'malo', 1),
(57, 'par', 1),
(58, 'kolutića', 1),
(59, 'štapić', 1),
(60, 'štapića', 1),
(61, 'glavica', 1),
(62, 'glavice', 1),
(63, 'čen', 1),
(64, 'čena', 1),
(65, 'grančica', 1),
(66, 'grančice', 1),
(67, 'šnita', 1),
(68, 'šnite', 1),
(69, 'šoljica', 1),
(70, 'šoljice', 1),
(71, 'čaša', 1),
(72, 'čaše', 1),
(73, 'listić', 1),
(74, 'listića', 1),
(75, 'para', 1),
(76, 'kolutić', 1),
(77, 'veza', 1),
(78, 'veze', 1),
(79, 'list', 1),
(80, 'lista', 1),
(81, 'listova', 1),
(82, 'kolutića', 1),
(83, 'štapić', 1),
(84, 'štapića', 1),
(85, 'glavica', 1),
(86, 'glavice', 1),
(87, 'čen', 1),
(88, 'čena', 1),
(89, 'grančica', 1),
(90, 'grančice', 1),
(91, 'šnita', 1),
(92, 'šnite', 1),
(93, 'šoljica', 1),
(94, 'šoljice', 1),
(95, 'čaša', 1),
(96, 'čaše', 1),
(97, 'listić', 1),
(98, 'listića', 1),
(99, 'para', 1),
(100, 'kolutić', 1),
(101, 'veza', 1),
(102, 'veze', 1),
(103, 'list', 1),
(104, 'lista', 1),
(105, 'listova', 1),
(106, 'kuglica', 1),
(107, 'kuglice', 1),
(108, 'mali', 1),
(109, 'mala', 1),
(110, 'male', 1),
(111, 'malih', 1),
(112, 'veliki', 1),
(113, 'velike', 1),
(114, 'velika', 1),
(115, 'velikih', 1),
(116, 'osrednji', 1),
(117, 'osrednja', 1),
(118, 'osrednje', 1),
(119, 'osrednjih', 1),
(120, 'dkg', 1),
(121, 'komadić', 1),
(122, 'komadića', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0 = off\n1 = superadmin\n2 = admin\n3 = editor',
  PRIMARY KEY (`user_id`,`user_email`),
  UNIQUE KEY `user_email_UNIQUE` (`user_email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_phone`, `username`, `password`, `status`) VALUES
(1, 'Aya', 'aya.romporas@gmail.com', '060.766.76.72', 'ayaromporas', '$2y$10$oTkY/MvXdK6Io9fB5IDYBuHLgLuk4LVEcs/aD8CNBVj7fM7zkHP7i', 1),
(2, 'Petar', 'petar.cvetic@gmail.com', '060.022.69.79', 'pepapecaros', '$2y$10$fuOF3oeIieHsGgAvqYRvYOjZBy0vCa7iJaBKIsQRJkYWfpodNbIVK', 0),
(3, 'Milan', 'mirkovicmilan0211@gmail.com', '060.55.27.460', 'milanche', '$2y$10$fuOF3oeIieHsGgAvqYRvYOjZBy0vCa7iJaBKIsQRJkYWfpodNbIVK', 1),
(4, 'Ivana', 'sapic.iva@gmail.com', '065.25.00.266', 'sapiciva', '$2y$10$fuOF3oeIieHsGgAvqYRvYOjZBy0vCa7iJaBKIsQRJkYWfpodNbIVK', 1),
(5, 'Boris', 'bvatovec@gmail.com', '063.418.282', 'bvatovec', '$2y$10$fuOF3oeIieHsGgAvqYRvYOjZBy0vCa7iJaBKIsQRJkYWfpodNbIVK', 1),
(6, 'Jovana', 'jovana@gmail.com', '069.123.98.76', 'jovanchica', '$2y$10$fuOF3oeIieHsGgAvqYRvYOjZBy0vCa7iJaBKIsQRJkYWfpodNbIVK', 0),
(7, 'Miljenko', 'miljenko@gmail.com', '068.987.65.43', 'miljenko', '$2y$10$fuOF3oeIieHsGgAvqYRvYOjZBy0vCa7iJaBKIsQRJkYWfpodNbIVK', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
