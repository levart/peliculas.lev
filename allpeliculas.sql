-- phpMyAdmin SQL Dump
-- version 4.4.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 25, 2016 at 10:06 AM
-- Server version: 5.6.25-log
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allpeliculas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `user_type` enum('SA','A') DEFAULT 'SA' COMMENT 'SA: Super Admin,A: Admin',
  `active` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `email`, `password`, `block`, `user_type`, `active`) VALUES
(1, 'demo', 'abhishek@devzone.co.in', '7e466fc01a0c7932e96a4a925b11b06a', 0, 'SA', 1),
(2, 'levart', 'jmukhadze@gmail.com', '7e466fc01a0c7932e96a4a925b11b06a', 0, 'SA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE IF NOT EXISTS `cat` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_d` varchar(255) NOT NULL,
  `meta_k` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `title`, `meta_d`, `meta_k`, `text`) VALUES
(1, 'Finances', 'Finances', 'Finances', 'Finances'),
(2, 'Marketing', 'Marketing', 'Marketing', 'Marketing'),
(3, 'Law', 'Law', 'Law', 'Law'),
(4, 'Medicine', 'Medicine', 'Medicine', 'Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `chanels`
--

CREATE TABLE IF NOT EXISTS `chanels` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chanels`
--

INSERT INTO `chanels` (`id`, `title`, `cat`, `cover`, `avatar`, `website`, `about`, `user_id`, `active`) VALUES
(1, 'jejeje Official', 1, '', 'avat_1388154.jpg', 'http://jejeje.org', '', 0, 1),
(3, 'fgfdgdf', 1, '0', '0', 'dsfg', 'dsfg', 82, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chanel_cat`
--

CREATE TABLE IF NOT EXISTS `chanel_cat` (
  `id` int(11) NOT NULL,
  `title_esp` varchar(255) NOT NULL,
  `title_eng` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chanel_cat`
--

INSERT INTO `chanel_cat` (`id`, `title_esp`, `title_eng`) VALUES
(1, 'gdfg d', 'gsdfg'),
(2, 'sdfg', 'sdf g');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `com_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `massage` text CHARACTER SET utf8 NOT NULL,
  `ip_address` varchar(16) NOT NULL,
  `date` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `dislike` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `videoid`, `user_id`, `com_id`, `status`, `massage`, `ip_address`, `date`, `like`, `dislike`, `total`) VALUES
(1, 47, 60, 0, 1, 'გჰფჰფგჰ', '31.146.40.62', 0, 0, 0, 0),
(2, 47, 60, 1, 1, 'ფგჰდფგჰ', '31.146.40.62', 0, 0, 0, 0),
(3, 47, 60, 0, 1, 'გჰჯგჰჯ', '31.146.40.62', 0, 0, 0, 0),
(4, 47, 60, 1, 1, '1', '31.146.40.62', 0, 0, 0, 0),
(5, 47, 60, 1, 1, '2', '31.146.40.62', 0, 0, 0, 0),
(6, 47, 60, 1, 1, '3', '31.146.40.62', 0, 0, 0, 0),
(7, 47, 60, 1, 1, '4', '31.146.40.62', 0, 0, 0, 0),
(8, 47, 60, 1, 1, '5', '31.146.40.62', 0, 0, 0, 0),
(9, 47, 60, 3, 1, '8', '31.146.40.62', 0, 0, 0, 0),
(10, 47, 60, 3, 1, '7', '31.146.40.62', 0, 0, 0, 0),
(11, 47, 11, 3, 1, ':D', '31.146.40.62', 0, 0, 0, 0),
(12, 47, 11, 0, 1, ':D :D :D ', '31.146.40.62', 0, 0, 0, 0),
(13, 47, 11, 0, 1, 'ხ', '31.146.40.62', 0, 0, 0, 0),
(14, 47, 11, 0, 1, ':D', '31.146.40.62', 0, 0, 0, 0),
(16, 49, 11, 15, 1, 'კაი რა\n', '84.120.52.222', 0, 0, 0, 0),
(17, 49, 11, 0, 1, 'აააააააააა', '31.146.40.62', 0, 0, 0, 0),
(18, 49, 11, 0, 1, 'დფჰდფგ', '31.146.40.62', 0, 0, 0, 0),
(19, 49, 11, 18, 1, 'გფგჰდფგ', '31.146.40.62', 0, 0, 0, 0),
(20, 49, 11, 17, 1, 'გჰჯფგჰჯ', '31.146.40.62', 0, 0, 0, 0),
(21, 49, 60, 0, 1, '1', '31.146.40.62', 0, 0, 0, 0),
(22, 49, 60, 0, 1, '5', '31.146.40.62', 0, 0, 0, 0),
(23, 49, 11, 0, 1, '9999999', '31.146.40.62', 0, 0, 0, 0),
(24, 49, 11, 0, 1, '7577', '31.146.40.62', 0, 0, 0, 0),
(25, 49, 60, 0, 1, 'გფგჰ', '31.146.40.62', 0, 0, 0, 0),
(26, 38, 60, 0, 1, 'ფდგ სდფგსდფ', '31.146.40.62', 0, 0, 1, 1),
(27, 38, 60, 0, 1, '9', '31.146.40.62', 0, 1, 1, 4),
(28, 38, 60, 27, 1, '2', '31.146.40.62', 0, 0, 1, 1),
(29, 38, 60, 0, 1, 'სწწსწსწ', '31.146.40.62', 0, 0, 1, 1),
(30, 38, 60, 0, 1, 'ჰ დფგჰფ', '31.146.40.62', 0, 0, 1, 1),
(31, 38, 60, 0, 1, 'დფგ დფგსდფგ', '31.146.40.62', 0, 0, 0, 0),
(32, 38, 60, 0, 1, ' ჰფგჰდფგ', '31.146.40.62', 1408134080, 0, 0, 0),
(33, 38, 60, 0, 1, 'ჰფგჰგფ', '31.146.40.62', 1408135012, 0, 0, 0),
(35, 51, 60, 0, 1, 'vbncbncv', '31.146.40.62', 1408302442, 0, 0, 0),
(36, 51, 60, 0, 1, 'cvnb cvncvn', '31.146.40.62', 1408302464, 0, 0, 0),
(38, 52, 84, 0, 1, 'he\n', '31.146.40.62', 1409246750, 0, 0, 0),
(39, 55, 87, 0, 1, 'hi', '31.146.40.62', 1409413640, 1, 0, 1),
(41, 69, 87, 40, 1, 'ფგბდფგბდფგ', '31.146.40.62', 1410221574, 0, 0, 0),
(42, 69, 87, 40, 1, 'ფგბფდგბდ', '31.146.40.62', 1410221578, 0, 0, 0),
(44, 56, 88, 0, 1, 'dddddddddd', '84.120.52.222', 1410460993, 0, 0, 0),
(45, 56, 88, 44, 1, 'დდდდდდდდ', '84.120.52.222', 1410460999, 0, 0, 0),
(48, 69, 88, 47, 1, 'დდდდდდდდდდდდდ', '84.120.52.222', 1411590767, 0, 0, 0),
(49, 69, 87, 0, 1, 'test', '31.146.40.62', 1412377576, 0, 0, 0),
(50, 78, 88, 0, 1, 'hola que tal ? ', '84.120.52.222', 1412378147, 1, 0, 1),
(51, 78, 87, 50, 1, 'hola', '31.146.40.62', 1412378666, 0, 0, 0),
(52, 78, 87, 0, 1, 'hola', '31.146.40.62', 1412378673, 0, 0, 0),
(53, 69, 1, 0, 1, 'hoa que ta ?¿ ', '84.120.52.222', 1412378749, 0, 0, 0),
(54, 78, 85, 0, 1, '¿hola que tal?', '31.146.40.62', 1412379008, 0, 1, 1),
(55, 78, 88, 0, 1, '¿hola que tal? ', '31.146.40.62', 1412379148, 0, 0, 0),
(56, 78, 88, 52, 1, 'ჰოლა', '31.146.40.62', 1412379172, 0, 0, 0),
(57, 71, 88, 0, 1, 'que', '31.146.40.62', 1412379238, 0, 0, 0),
(58, 66, 1, 0, 1, 'hola que tal ?\n', '84.120.52.222', 1412379460, 0, 0, 0),
(59, 66, 88, 58, 1, 'ჰოლ', '31.146.40.62', 1412379705, 0, 0, 0),
(60, 78, 88, 52, 1, 'ჯეჯეჯეჯე', '84.120.52.222', 1412504459, 0, 0, 0),
(61, 78, 87, 0, 1, 'hghjghj', '31.146.40.62', 1412552085, 0, 0, 0),
(62, 71, 88, 0, 1, 'DDDDDDD', '84.120.52.222', 1412554823, 0, 0, 0),
(65, 239, 88, 64, 1, 'DDDDDDDDDDDD', '84.120.52.222', 1416410238, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comm_likes`
--

CREATE TABLE IF NOT EXISTS `comm_likes` (
  `id` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `comm_id` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `dislike` int(11) NOT NULL,
  `action_status` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comm_likes`
--

INSERT INTO `comm_likes` (`id`, `videoid`, `comm_id`, `like`, `dislike`, `action_status`, `total`, `user_id`, `ip_address`, `date`) VALUES
(0, 2378944, 28, 0, 1, 1, 1, 60, '31.146.40.62', '1408203753'),
(0, 2378944, 26, 0, 1, 1, 1, 60, '31.146.40.62', '1408203753'),
(0, 2378944, 29, 0, 1, 1, 1, 60, '31.146.40.62', '1408203763'),
(0, 2378944, 30, 0, 1, 1, 1, 60, '31.146.40.62', '1408203764'),
(0, 2378944, 27, 0, 1, 1, 3, 60, '31.146.40.62', '1408203774'),
(0, 38, 27, 1, 0, 1, 4, 60, '31.146.40.62', '1408203910'),
(0, 55, 39, 1, 0, 1, 1, 87, '31.146.40.62', '1409413800'),
(0, 51, 37, 1, 0, 1, 1, 87, '31.146.40.62', '1409438166'),
(0, 69, 43, 1, 0, 1, 1, 88, '84.120.52.222', '1410460823'),
(0, 69, 47, 0, 1, 1, 1, 88, '84.120.52.222', '1411590779'),
(0, 78, 50, 1, 0, 1, 1, 87, '31.146.40.62', '1412378607'),
(0, 78, 54, 0, 1, 1, 1, 88, '84.120.52.222', '1412504443'),
(0, 239, 63, 1, 0, 1, 2, 88, '84.120.52.222', '1415639654'),
(0, 239, 65, 1, 0, 1, 1, 88, '84.120.52.222', '1416410245'),
(0, 239, 64, 0, 1, 1, 1, 88, '84.120.52.222', '1416410248');

-- --------------------------------------------------------

--
-- Table structure for table `compilation`
--

CREATE TABLE IF NOT EXISTS `compilation` (
  `id` int(11) NOT NULL,
  `title_esp` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title_eng` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compilation`
--

INSERT INTO `compilation` (`id`, `title_esp`, `title_eng`, `image`) VALUES
(1, 'ფეხბურთი', 'ფეხბურთი', ''),
(2, 'dfg', 'dfghdf', ''),
(5, 'dfgdf', 'dfg', '0'),
(4, 'დეტექტივი', 'დეტექტივი', ''),
(6, 'dfgdf', 'dfg', '0'),
(7, 'dfgdf', 'dfg', '0'),
(8, 'dfgdf', 'dfgdf', 'D50HappyBirthdayD50copy1.jpg'),
(9, 'dfgdf', 'dfgdf', 'easter_egg_striped-512.png');

-- --------------------------------------------------------

--
-- Table structure for table `ganres`
--

CREATE TABLE IF NOT EXISTS `ganres` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_d` varchar(255) NOT NULL,
  `meta_k` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `main` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ganres`
--

INSERT INTO `ganres` (`id`, `title`, `meta_d`, `meta_k`, `description`, `main`) VALUES
(7, 'Todo', '1', '1', '1', 0),
(9, 'Auto Moto ', '1', '1', '1', 1),
(10, 'Noticias y Política ', '1', '1', '1', 0),
(11, 'Naturaleza y Animales ', '1', '1', '1', 0),
(13, 'graciosos', '1', '1', '1', 1),
(14, 'extremo ', '1', '1', '1', 1),
(15, 'video Tutorial ', '1', '1', '1', 0),
(16, 'desastres', '1', '1', '1', 0),
(17, 'Juegos para PC ', '1', '1', '1', 0),
(18, 'culinario ', '1', '1', '1', 0),
(19, 'Ciencia y Tecnología ', '1', '1', '1', 0),
(21, 'Moda y Arte ', '1', '1', '1', 0),
(22, 'Dibujos animados ', '1', '1', '1', 0),
(23, 'música ', '1', '1', '1', 1),
(24, 'Anuncios ', '1', '1', '1', 0),
(25, 'religión ', '1', '1', '1', 0),
(26, 'deporte ', '1', '1', '1', 1),
(27, 'Turismo y recreación ', '1', '1', '1', 0),
(28, 'Personajes famosos', '1', '1', '1', 0),
(29, 'Accidentes', 'Accidentes', 'Accidentes', 'Accidentes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `id` int(11) NOT NULL,
  `videoid` varchar(25) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `date` int(100) NOT NULL,
  `ip` varchar(16) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `videoid`, `userid`, `date`, `ip`) VALUES
(22, '69', '90', 1411506994, '149.3.22.180'),
(29, '69', '85', 1411830506, '31.146.40.62'),
(30, '69', '85', 1411830508, '31.146.40.62'),
(31, '69', '85', 1411830509, '31.146.40.62'),
(36, '76', '1', 1412377828, '84.120.52.222'),
(38, '78', '1', 1412377912, '84.120.52.222'),
(40, '78', '1', 1412377954, '84.120.52.222'),
(43, '78', '1', 1412378123, '84.120.52.222'),
(44, '78', '1', 1412378126, '84.120.52.222'),
(46, '78', '1', 1412378274, '84.120.52.222'),
(47, '78', '1', 1412378304, '84.120.52.222'),
(48, '78', '1', 1412378455, '84.120.52.222'),
(50, '69', '1', 1412378737, '84.120.52.222'),
(52, '69', '1', 1412378768, '84.120.52.222'),
(53, '78', '85', 1412378947, '31.146.40.62'),
(57, '78', '1', 1412379435, '84.120.52.222'),
(58, '66', '1', 1412379450, '84.120.52.222'),
(63, '78', '1', 1412380005, '31.146.40.62'),
(99, '98', '87', 1419199440, '31.146.40.62'),
(100, '313', '87', 1419199445, '31.146.40.62'),
(101, '167', '87', 1419199451, '31.146.40.62'),
(102, '239', '87', 1419199487, '31.146.40.62'),
(103, '318', '87', 1419228503, '31.146.40.62'),
(105, '239', '87', 1419352383, '31.146.40.62'),
(106, '239', '87', 1419353991, '31.146.40.62'),
(107, '201', '87', 1419354005, '31.146.40.62'),
(108, '201', '87', 1419354159, '31.146.40.62'),
(109, '201', '87', 1419355010, '31.146.40.62'),
(110, '201', '87', 1419355168, '31.146.40.62'),
(111, '201', '87', 1419356071, '31.146.40.62'),
(112, '201', '87', 1419356102, '31.146.40.62'),
(113, '201', '87', 1419356537, '31.146.40.62'),
(114, '201', '87', 1419356574, '31.146.40.62'),
(115, '201', '87', 1419356641, '31.146.40.62'),
(116, '201', '87', 1419357132, '31.146.40.62'),
(117, '201', '87', 1419357186, '31.146.40.62'),
(118, '201', '87', 1419357233, '31.146.40.62'),
(119, '201', '87', 1419357960, '31.146.40.62'),
(120, '201', '87', 1419358184, '31.146.40.62'),
(121, '201', '87', 1419358501, '31.146.40.62'),
(122, '201', '87', 1419358789, '31.146.40.62'),
(123, '201', '87', 1419358822, '31.146.40.62'),
(124, '239', '87', 1419766348, '31.146.40.62'),
(125, '239', '87', 1419840686, '31.146.40.62'),
(130, '239', '87', 1419929663, '31.146.40.62'),
(137, '192', '0', 1420546954, '31.146.40.62'),
(138, '192', '1', 1420547240, '31.146.40.62'),
(139, '192', '1', 1420547252, '31.146.40.62'),
(140, '192', '1', 1420547353, '31.146.40.62'),
(141, '192', '0', 1420547382, '31.146.40.62'),
(142, '192', '0', 1420548469, '31.146.40.62'),
(143, '167', '0', 1420548497, '31.146.40.62'),
(144, '167', '0', 1420548520, '31.146.40.62'),
(145, '308', '87', 1420819659, '31.146.40.62'),
(146, '128', '0', 1420836016, '84.120.52.222'),
(147, '215', '0', 1420836276, '84.120.52.222'),
(148, '189', '0', 1420840526, '84.120.52.222'),
(149, '239', '0', 1420897412, '84.120.52.222'),
(150, '333', '0', 1421012964, '84.120.52.222'),
(151, '333', '0', 1421013001, '84.120.52.222'),
(152, '333', '0', 1421066820, '84.120.52.222'),
(153, '333', '0', 1421066837, '84.120.52.222'),
(154, '234', '0', 1421066884, '84.120.52.222'),
(155, '234', '0', 1421066899, '84.120.52.222'),
(156, '99', '0', 1421066945, '84.120.52.222'),
(157, '235', '0', 1421067323, '84.120.52.222'),
(158, '340', '0', 1421067340, '84.120.52.222'),
(159, '133', '0', 1421067527, '84.120.52.222'),
(160, '133', '0', 1421067548, '84.120.52.222'),
(161, '342', '0', 1421074440, '84.120.52.222'),
(162, '258', '0', 1421074538, '84.120.52.222'),
(163, '99', '0', 1421077253, '84.120.52.222'),
(164, '201', '87', 1421100924, '31.146.40.62'),
(165, '201', '87', 1421100934, '31.146.40.62'),
(166, '201', '87', 1421100943, '31.146.40.62'),
(167, '201', '87', 1421100952, '31.146.40.62'),
(168, '201', '87', 1421100960, '31.146.40.62'),
(169, '201', '87', 1421101365, '31.146.40.62'),
(170, '201', '87', 1421101399, '31.146.40.62'),
(171, '125', '87', 1421101879, '31.146.40.62'),
(172, '128', '87', 1421101907, '31.146.40.62'),
(173, '125', '87', 1421102101, '31.146.40.62'),
(174, '128', '87', 1421102223, '31.146.40.62'),
(175, '128', '87', 1421102247, '31.146.40.62'),
(176, '128', '87', 1421102259, '31.146.40.62'),
(177, '128', '87', 1421102330, '31.146.40.62'),
(178, '128', '87', 1421102341, '31.146.40.62'),
(179, '128', '87', 1421102459, '31.146.40.62'),
(180, '128', '87', 1421102488, '31.146.40.62'),
(181, '128', '87', 1421103046, '31.146.40.62'),
(182, '128', '87', 1421103063, '31.146.40.62'),
(183, '128', '87', 1421103075, '31.146.40.62'),
(184, '128', '87', 1421103112, '31.146.40.62'),
(185, '128', '87', 1421103136, '31.146.40.62'),
(186, '231', '0', 1421131620, '31.146.40.62'),
(187, '333', '0', 1421155051, '84.120.52.222'),
(188, '300', '0', 1421155132, '84.120.52.222'),
(189, '332', '0', 1421184928, '31.146.40.62'),
(190, '330', '0', 1421185968, '31.146.40.62'),
(191, '330', '0', 1421185972, '31.146.40.62'),
(192, '297', '0', 1421187375, '31.146.40.62'),
(193, '342', '0', 1421187388, '31.146.40.62'),
(194, '325', '0', 1421187495, '31.146.40.62'),
(195, '239', '0', 1421187522, '31.146.40.62'),
(196, '163', '0', 1421231009, '84.120.52.222'),
(197, '244', '0', 1421231073, '84.120.52.222'),
(198, '234', '1', 1421240851, '84.120.52.222'),
(199, '333', '0', 1421282956, '84.120.52.222'),
(200, '334', '0', 1421282977, '84.120.52.222'),
(201, '333', '0', 1421282981, '84.120.52.222'),
(202, '335', '0', 1421282985, '84.120.52.222'),
(203, '336', '0', 1421535164, '31.146.40.62'),
(204, '336', '0', 1421535206, '31.146.40.62'),
(205, '332', '0', 1421535240, '31.146.40.62'),
(206, '330', '0', 1421536344, '31.146.40.62'),
(207, '333', '0', 1421536525, '31.146.40.62'),
(208, '124', '0', 1421536548, '31.146.40.62'),
(209, '174', '0', 1421536552, '31.146.40.62'),
(210, '174', '0', 1421536647, '31.146.40.62'),
(211, '174', '0', 1421536914, '31.146.40.62'),
(212, '334', '0', 1421538120, '84.120.52.222'),
(213, '335', '0', 1421538124, '84.120.52.222'),
(214, '328', '0', 1421538178, '84.120.52.222'),
(215, '244', '0', 1421538250, '84.120.52.222'),
(216, '213', '0', 1421538274, '84.120.52.222'),
(217, '208', '0', 1421538309, '84.120.52.222'),
(218, '132', '0', 1421538360, '84.120.52.222'),
(219, '174', '0', 1421538442, '84.120.52.222'),
(220, '336', '0', 1421538443, '84.120.52.222'),
(221, '323', '0', 1421538445, '84.120.52.222'),
(222, '307', '0', 1421538447, '84.120.52.222'),
(223, '124', '0', 1421538448, '84.120.52.222'),
(224, '308', '0', 1421538454, '84.120.52.222'),
(225, '303', '0', 1421538457, '84.120.52.222'),
(226, '340', '0', 1421538459, '84.120.52.222'),
(227, '323', '0', 1421538462, '84.120.52.222'),
(228, '341', '0', 1421538464, '84.120.52.222'),
(229, '342', '0', 1421538468, '84.120.52.222'),
(230, '307', '0', 1421538473, '84.120.52.222'),
(231, '292', '0', 1421538475, '84.120.52.222'),
(232, '290', '0', 1421538476, '84.120.52.222'),
(233, '317', '0', 1421538478, '84.120.52.222'),
(234, '319', '0', 1421538479, '84.120.52.222'),
(235, '318', '0', 1421538482, '84.120.52.222'),
(236, '331', '0', 1421538483, '84.120.52.222'),
(237, '329', '0', 1421538487, '84.120.52.222'),
(238, '327', '0', 1421538490, '84.120.52.222'),
(239, '303', '0', 1421538494, '84.120.52.222'),
(240, '331', '0', 1421538551, '84.120.52.222'),
(241, '232', '0', 1421538562, '84.120.52.222'),
(242, '229', '0', 1421538564, '84.120.52.222'),
(243, '231', '0', 1421538569, '84.120.52.222'),
(244, '226', '0', 1421538571, '84.120.52.222'),
(245, '230', '0', 1421538573, '84.120.52.222'),
(246, '222', '0', 1421538575, '84.120.52.222'),
(247, '227', '0', 1421538577, '84.120.52.222'),
(248, '228', '0', 1421538580, '84.120.52.222'),
(249, '220', '0', 1421538613, '84.120.52.222'),
(250, '219', '0', 1421538615, '84.120.52.222'),
(251, '214', '0', 1421538620, '84.120.52.222'),
(252, '218', '0', 1421538622, '84.120.52.222'),
(253, '215', '0', 1421538625, '84.120.52.222'),
(254, '217', '0', 1421538628, '84.120.52.222'),
(255, '212', '0', 1421538631, '84.120.52.222'),
(256, '216', '0', 1421538635, '84.120.52.222'),
(257, '211', '0', 1421538638, '84.120.52.222'),
(258, '209', '0', 1421538641, '84.120.52.222'),
(259, '210', '0', 1421538644, '84.120.52.222'),
(260, '207', '0', 1421538648, '84.120.52.222'),
(261, '135', '0', 1421538695, '84.120.52.222'),
(262, '124', '0', 1421538697, '84.120.52.222'),
(263, '119', '0', 1421538701, '84.120.52.222'),
(264, '127', '0', 1421538704, '84.120.52.222'),
(265, '298', '0', 1421539095, '84.120.52.222'),
(266, '292', '0', 1421539098, '84.120.52.222'),
(267, '331', '0', 1421539100, '84.120.52.222'),
(268, '319', '0', 1421539102, '84.120.52.222'),
(269, '290', '0', 1421539105, '84.120.52.222'),
(270, '318', '0', 1421539106, '84.120.52.222'),
(271, '317', '0', 1421539108, '84.120.52.222'),
(272, '303', '0', 1421539110, '84.120.52.222'),
(273, '292', '0', 1421539111, '84.120.52.222');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(150) NOT NULL,
  `rating` float NOT NULL,
  `total_rating` float NOT NULL,
  `total_rates` int(11) NOT NULL,
  `ip_address` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `image`, `rating`, `total_rating`, `total_rates`, `ip_address`) VALUES
(1, 'Typography Visual Inspirations', 'Typography is the art and technique of arranging type in order to make language visible. The arrangement of type involves the selection of typefaces, point size, line length, leading (line spacing), adjusting the spaces between groups of letters (tracking) and adjusting the space between pairs of letters (kerning).', 'http://i1060.photobucket.com/albums/t453/Charles6Andy/Typography.png', 3.5, 14, 4, ',127.0.0.1,127.0.0.1,127.0.0.1,127.0.0.1'),
(2, 'Pratical Guide To Your First Wordpress Plugin :- Part 1 ', 'Starting out as a simple Content Management System wordpress has turned into a fully featured solution for companies, individuals and web masters. Not only wordpress provides a GUI to manage post or add new themes. It also provides easy to use functions to write custom code to enhance the functionality or design of wordpress ', 'http://i1060.photobucket.com/albums/t453/Charles6Andy/wordpress.png', 4.9, 4.9, 1, ',127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `id` int(11) NOT NULL,
  `short` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`title`, `id`, `short`) VALUES
('Spain', 1, '1'),
('English', 2, '2'),
('Russian', 3, '3'),
('Русский', 4, '4'),
('Italian', 5, '5'),
('Latino', 6, '6'),
('Subtitulado', 7, '7'),
('ავტოლომბარდი', 8, '8'),
('fffff', 9, '9'),
('0', 10, '10'),
('0', 11, '11');

-- --------------------------------------------------------

--
-- Table structure for table `likedislike`
--

CREATE TABLE IF NOT EXISTS `likedislike` (
  `id` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `dislike` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `action_status` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `ip` varchar(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likedislike`
--

INSERT INTO `likedislike` (`id`, `videoid`, `userid`, `likes`, `dislike`, `total`, `action_status`, `status`, `ip`, `date`, `active`, `type`) VALUES
(1, 49, 60, 1, 0, 2, 1, 1, '31.146.40.6', '2014-08-01 16:10:26', 1, ''),
(2, 50, 60, 1, 0, 1, 1, 1, '31.146.40.6', '2014-08-01 16:27:53', 1, ''),
(4, 39, 0, 1, 0, 1, 1, 1, '84.120.52.2', '2014-08-09 16:02:26', 0, ''),
(5, 39, 0, 1, 0, 0, 1, 2, '84.120.52.2', '2014-08-09 16:02:26', 1, ''),
(6, 41, 0, 1, 0, 1, 1, 1, '84.120.52.2', '2014-08-12 03:50:41', 1, ''),
(7, 46, 60, 1, 0, 1, 1, 1, '31.146.40.6', '2014-08-12 10:46:48', 0, ''),
(8, 46, 60, 1, 0, 0, 1, 2, '31.146.40.6', '2014-08-12 10:46:48', 1, ''),
(9, 46, 60, 1, 0, 1, 1, 1, '31.146.40.6', '2014-08-12 10:46:51', 0, ''),
(10, 46, 60, 1, 0, 0, 1, 2, '31.146.40.6', '2014-08-12 10:46:51', 1, ''),
(11, 46, 60, 1, 0, 1, 1, 1, '31.146.40.6', '2014-08-12 10:46:52', 0, ''),
(12, 46, 60, 1, 0, 0, 1, 2, '31.146.40.6', '2014-08-12 10:46:52', 1, ''),
(13, 46, 60, 1, 0, 1, 1, 1, '31.146.40.6', '2014-08-12 10:46:59', 0, ''),
(14, 46, 60, -1, 1, 1, 2, 1, '31.146.40.6', '2014-08-12 10:46:57', 0, ''),
(15, 46, 60, -1, 1, 1, 2, 1, '31.146.40.6', '2014-08-12 10:46:58', 0, ''),
(16, 46, 60, 1, -1, 1, 1, 2, '31.146.40.6', '2014-08-12 10:46:57', 1, ''),
(17, 46, 60, 1, -1, 1, 1, 2, '31.146.40.6', '2014-08-12 10:46:58', 1, ''),
(18, 46, 60, 1, 0, 0, 1, 2, '31.146.40.6', '2014-08-12 10:46:59', 1, ''),
(19, 46, 60, 1, 0, 1, 1, 1, '31.146.40.6', '2014-08-12 10:47:01', 1, ''),
(20, 38, 0, 1, 0, 1, 1, 1, '84.120.52.2', '2014-08-14 11:05:16', 0, ''),
(21, 38, 0, 1, 0, 0, 1, 2, '84.120.52.2', '2014-08-14 11:05:16', 1, ''),
(22, 49, 11, 1, 0, 3, 1, 1, '31.146.40.6', '2014-08-14 16:16:58', 1, ''),
(23, 49, 11, -1, 1, 3, 2, 1, '84.120.52.2', '2014-08-14 16:31:38', 0, ''),
(24, 49, 11, 1, -1, 3, 1, 2, '84.120.52.2', '2014-08-14 16:31:38', 1, ''),
(25, 38, 11, 1, 0, 1, 1, 1, '84.120.52.2', '2014-08-14 16:57:09', 1, ''),
(26, 51, 1, 1, 0, 1, 1, 1, '84.120.52.2', '2014-08-17 13:46:41', 0, ''),
(27, 51, 1, 1, 0, 0, 1, 2, '84.120.52.2', '2014-08-17 13:46:41', 1, ''),
(28, 51, 1, 1, 0, 1, 1, 1, '84.120.52.2', '2014-08-17 13:46:44', 1, ''),
(29, 51, 0, 1, 0, 2, 1, 1, '84.120.52.2', '2014-08-20 03:33:59', 0, ''),
(30, 51, 0, 1, 0, 1, 1, 2, '84.120.52.2', '2014-08-20 03:33:59', 1, ''),
(31, 51, 0, 1, 0, 2, 1, 1, '84.120.52.2', '2014-08-22 19:38:51', 0, ''),
(32, 51, 0, 1, 0, 1, 1, 2, '84.120.52.2', '2014-08-22 19:38:52', 1, ''),
(33, 55, 0, 1, 0, 1, 1, 1, '84.120.52.2', '2014-08-24 09:13:45', 1, ''),
(34, 52, 84, 1, 0, 1, 1, 1, '31.146.40.6', '2014-08-28 13:25:43', 1, ''),
(35, 51, 0, 1, 0, 2, 1, 1, '84.120.52.2', '2014-08-29 12:23:22', 0, ''),
(36, 51, 0, 1, 0, 1, 1, 2, '84.120.52.2', '2014-08-29 12:23:22', 1, ''),
(37, 69, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-09-11 14:39:51', 1, ''),
(38, 56, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-09-11 14:43:06', 1, ''),
(39, 69, 88, -1, 1, 1, 2, 1, '84.120.52.2', '2014-09-18 17:14:57', 0, ''),
(40, 69, 88, 1, -1, 1, 1, 2, '84.120.52.2', '2014-09-18 17:14:57', 1, ''),
(41, 66, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-09-24 16:39:15', 0, ''),
(42, 66, 88, 1, 0, 0, 1, 2, '84.120.52.2', '2014-09-24 16:39:15', 1, ''),
(43, 66, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-09-24 16:39:18', 1, ''),
(44, 66, 88, -1, 1, 1, 2, 1, '84.120.52.2', '2014-09-24 16:39:20', 0, ''),
(45, 66, 88, 1, -1, 1, 1, 2, '84.120.52.2', '2014-09-24 16:39:20', 1, ''),
(46, 69, 87, 1, 0, 2, 1, 1, '31.146.40.6', '2014-10-03 19:06:23', 0, ''),
(47, 69, 87, 1, 0, 1, 1, 2, '31.146.40.6', '2014-10-03 19:06:23', 1, ''),
(48, 69, 87, 1, 0, 2, 1, 1, '31.146.40.6', '2014-10-03 19:06:25', 1, ''),
(49, 78, 87, 1, 0, 1, 1, 1, '31.146.40.6', '2014-10-03 19:14:59', 1, ''),
(50, 78, 1, 1, 0, 2, 1, 1, '84.120.52.2', '2014-10-03 19:16:37', 1, ''),
(51, 78, 88, 1, 0, 3, 1, 1, '84.120.52.2', '2014-10-05 06:24:23', 1, ''),
(52, 78, 87, -1, 1, 3, 2, 1, '31.146.40.6', '2014-10-05 19:34:34', 0, ''),
(53, 78, 87, -1, 1, 3, 2, 1, '31.146.40.6', '2014-10-05 19:34:36', 0, ''),
(54, 78, 87, -1, 1, 3, 2, 1, '31.146.40.6', '2014-10-05 19:34:38', 0, ''),
(55, 78, 87, 1, -1, 3, 1, 2, '31.146.40.6', '2014-10-05 19:34:34', 1, ''),
(56, 78, 87, 1, -1, 3, 1, 2, '31.146.40.6', '2014-10-05 19:34:36', 1, ''),
(57, 78, 87, -1, 1, 3, 2, 1, '31.146.40.6', '2014-10-05 19:34:37', 1, ''),
(58, 78, 87, 1, -1, 3, 1, 2, '31.146.40.6', '2014-10-05 19:34:38', 1, ''),
(59, 98, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-10-11 11:10:33', 1, ''),
(60, 128, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-10-11 11:22:42', 1, ''),
(61, 142, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-10-11 12:43:45', 1, ''),
(62, 111, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-10-11 12:43:50', 1, ''),
(63, 114, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-10-11 12:45:33', 1, ''),
(64, 168, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-10-11 14:50:50', 1, ''),
(65, 150, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-10-11 17:02:12', 1, ''),
(66, 157, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-10-11 17:04:24', 1, ''),
(67, 135, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-10-11 17:04:46', 1, ''),
(68, 178, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-10-11 19:25:02', 1, ''),
(91, 245, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-11-10 13:14:40', 1, ''),
(92, 174, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-11-10 13:14:56', 1, ''),
(93, 201, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-11-10 13:16:40', 1, ''),
(106, 46, 87, 1, 0, 1, 1, 1, '31.146.40.6', '2014-12-21 11:12:36', 1, 'movies'),
(122, 239, 88, 1, 0, 2, 1, 1, '84.120.52.2', '2014-12-21 17:50:46', 1, 'videos'),
(125, 40, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-12-23 09:42:49', 1, 'movies'),
(130, 191, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2014-12-29 18:26:09', 1, 'videos'),
(132, 239, 87, 1, 0, 2, 1, 1, '31.146.40.6', '2014-12-30 04:54:34', 1, 'videos'),
(133, 46, 88, 1, 0, 2, 1, 1, '84.120.52.2', '2015-01-05 08:14:19', 1, 'movies'),
(134, 45, 88, 1, 0, 1, 1, 1, '84.120.52.2', '2015-01-05 08:15:18', 1, 'movies'),
(137, 42, 0, 0, 1, 0, 1, 1, '31.146.40.6', '2015-01-09 18:08:47', 1, 'movies'),
(141, 44, 0, 1, 0, 1, 1, 1, '31.146.40.6', '2015-01-09 18:09:13', 1, 'movies'),
(142, 46, 0, 1, 0, 3, 1, 1, '84.120.52.2', '2015-01-11 17:50:56', 1, 'movies'),
(144, 340, 0, 1, 0, 1, 1, 1, '84.120.52.2', '2015-01-12 08:58:41', 1, 'videos'),
(145, 258, 0, 1, 0, 1, 1, 1, '84.120.52.2', '2015-01-12 10:57:03', 1, 'videos'),
(146, 201, 0, 1, 0, 2, 1, 1, '31.146.40.6', '2015-01-12 18:13:36', 1, 'videos'),
(147, 201, 87, 1, 0, 3, 1, 1, '31.146.40.6', '2015-01-12 18:14:25', 1, 'videos'),
(149, 46, 1, 1, 0, 4, 1, 1, '84.120.52.2', '2015-01-19 17:51:10', 1, 'movies');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) NOT NULL,
  `title_eng` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title_esp` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img_dir` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `year` varchar(100) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `imdb` varchar(255) NOT NULL,
  `imdb_link` varchar(255) NOT NULL,
  `ganre` varchar(255) NOT NULL,
  `rejisori` varchar(255) NOT NULL,
  `actors` varchar(255) NOT NULL,
  `languages` varchar(255) CHARACTER SET utf8 NOT NULL,
  `descript` text CHARACTER SET utf8 NOT NULL,
  `video` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_d` text CHARACTER SET utf8 NOT NULL,
  `meta_k` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) NOT NULL,
  `likes` int(11) NOT NULL,
  `dislike` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `total_rating` int(11) NOT NULL,
  `draft` int(11) NOT NULL,
  `compilation` varchar(255) NOT NULL,
  `soon` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title_eng`, `title_esp`, `img_dir`, `image`, `cover`, `year`, `duration`, `imdb`, `imdb_link`, `ganre`, `rejisori`, `actors`, `languages`, `descript`, `video`, `meta_d`, `meta_k`, `date`, `likes`, `dislike`, `total`, `view`, `active`, `total_rating`, `draft`, `compilation`, `soon`) VALUES
(39, 'The Illusionist', 'El ilusionista', 'qYUVpn08', '2342423424.jpg', '2342423424.jpg', '17 Noviemb', '', '', '', '4,15', '8', '2,3,4,5,6,7', '1,3', 'En la Viena de 1900, el misterioso Eisenheim (Edward Norton) cautiva al público con sus espectáculos de magia e ilusionismo. Sus poderes sobrenaturales llegan a oídos del príncipe heredero Leopold (Rufus Sewell), un hombre escéptico que acude al espectáculo acompañado de su prometida, la bella y sofisticada Sophie (Jessica Biel). Sospechando un fraude por parte de Eisenheim, el príncipe encarga al perspicaz inspector de policía Uhl (Paul Giamatti) que lo vigile de cerca.', 'https://www.youtube.com/watch?v=Za8oUWEG4b0', 'En la Viena de 1900, el misterioso Eisenheim (Edward Norton) cautiva al público con sus espectáculos de magia e ilusionismo. Sus poderes sobrenaturales llegan a oídos del príncipe heredero Leopold (Rufus Sewell), un hombre escéptico que acude al espectáculo acompañado de su prometida, la bella y sofisticada Sophie (Jessica Biel). Sospechando un fraude por parte de Eisenheim, el príncipe encarga al perspicaz inspector de policía Uhl (Paul Giamatti) que lo vigile de cerca.', 'peliculas completas en español latino, peliculas completas en español, peliculas completas, peliculas, peliculas HD, películas completas en audio español', '1417520348', 0, 0, 0, 150, 1, 0, 0, '', 0),
(40, 'Mysterious Island', 'La isla misteriosa', 'LPifAD3S', '123424234123234.jpg', '123424234123234.jpg', ' 25 marzo ', '', '', '', '10,18', '7', '10,11,12,13,14', '1,6', 'Cinco prisioneros de la Guerra de Secesión Americana escapan en un globo a un destino desconocido. Arrastrados por el viento, terminan por caer en una remota y fabulosa isla, anclada en la Prehistoria y poblada por enormes monstruos carnívoros. Pronto aparece en su ayuda el capitán Nemo, un excéntrico personaje que vive en el lugar y que ha creador un milagro tecnológico: el submarino Nautilus.', 'https://www.youtube.com/watch?v=3FisH0Ho6fw', 'Cinco prisioneros de la Guerra de Secesión Americana escapan en un globo a un destino desconocido. Arrastrados por el viento, terminan por caer en una remota y fabulosa isla, anclada en la Prehistoria y poblada por enormes monstruos carnívoros. Pronto aparece en su ayuda el capitán Nemo, un excéntrico personaje que vive en el lugar y que ha creador un milagro tecnológico: el submarino Nautilus.', 'peliculas completas en español', '1417612711', 1, 0, 1, 47, 1, 0, 0, '', 0),
(42, '5 Days of War', '5 días de guerra', 'cWpSJpoW', '124e23453523.jpg', '124e23453523.jpg', '6 Junio 20', '', '', '', '4,6', '7', '15,16,17,18,19,20', '2,6', 'Un corresponsal de guerra norteamericano, el cámara que le acompaña y un nativo georgiano se ven envueltos en el fuego cruzado durante el conflicto bélico entre Rusia y Georgia. ', 'https://www.youtube.com/watch?v=QhqlGVP3zJk', 'Un corresponsal de guerra norteamericano, el cámara que le acompaña y un nativo georgiano se ven envueltos en el fuego cruzado durante el conflicto bélico entre Rusia y Georgia. ', '5 Días de Guerra, 2014, Peliculas Completas, Español Latino', '1417613152', -1, 1, 0, 72, 1, 0, 0, '', 0),
(43, 'Dawn Rider', 'Dawn Rider', 'zKHisaTi', '13421432423423.jpg', '13421432423423.jpg', '29 Mayo 20', '', '', '', '13', '9', '21,22,23,24,25', '2,6', 'Remake de "Dawn Rider" (1935)', 'https://www.youtube.com/watch?v=Vah4W71w9xM', 'Remake de "Dawn Rider" (1935)', 'Dawn Rider 2012 Mejor Pelicula de Western Peliculas Completas en Espanol Latino HD, peliculas completas en espanol latino HD, pelicula en espanol de western', '1417613826', 0, 0, 0, 52, 1, 0, 0, '', 0),
(44, 'Khumba', 'Khumba', 'FnYtCt82', '132432414324.jpg', '132432414324.jpg', ' 14 August', '', '', '', '10,18', '10', '26,27,28,29,30', '2', 'Khumba es una cebra con solo la mitad de su cuerpo a rayas a la que todos culpan por la falta de lluvias. Debido a la gran presión de la manada Khumba decide embarcarse en una audaz misión para conseguir todas las rayas que le faltan. En su búsqueda del legendario pozo de agua del que todas las cebras obtuvieron sus preciadas líneas, la cebra conoce a una serie de personajes muy extravagantes: un ñu sobreprotector, Mamá V y Bradley, un obsesionado avestruz. Pero antes de que pueda reunirse de nuevo con su manada, Khumba tendrá que enfrentarse cara a cara con el malvado Phango, un leopardo sádico que controla todos los pozos de agua de la zona y aterroriza a todos los animales en el Gran Karoo. A lo largo del viaje y de las nuevas experiencias, Khumba comienza a aprender que la diversidad es esencial para la supervivencia y que la diferencia hace que uno pueda ser la fuerza de toda la manada.', 'https://www.youtube.com/watch?v=4MLbYdpm3GA', 'Khumba es una cebra con solo la mitad de su cuerpo a rayas a la que todos culpan por la falta de lluvias. Debido a la gran presión de la manada Khumba decide embarcarse en una audaz misión para conseguir todas las rayas que le faltan. En su búsqueda del legendario pozo de agua del que todas las cebras obtuvieron sus preciadas líneas, la cebra conoce a una serie de personajes muy extravagantes: un ñu sobreprotector, Mamá V y Bradley, un obsesionado avestruz. Pero antes de que pueda reunirse de nuevo con su manada, Khumba tendrá que enfrentarse cara a cara con el malvado Phango, un leopardo sádico que controla todos los pozos de agua de la zona y aterroriza a todos los animales en el Gran Karoo. A lo largo del viaje y de las nuevas experiencias, Khumba comienza a aprender que la diversidad es esencial para la supervivencia y que la diferencia hace que uno pueda ser la fuerza de toda la manada.', 'Cartoon, Movies, Disney, Full, Movie, Network, Animation, 2014, Cartoons, For, Children', '1417825275', 1, 0, 1, 29, 1, 0, 0, '', 0),
(45, 'Finding Nemo', 'Buscando a Nemo', 'hUfNbdbU', '4898-944-550.jpg', '4898-944-550.jpg', '28 Novembe', '', '', '', '9,10,18', '11', '31,32,33,34,35', '2', 'El pececillo Nemo, que es hijo único, es muy querido y protegido por su padre. Después de ser capturado en un arrecife australiano va a parar a la pecera de la oficina de un dentista de Sidney. Su tímido padre emprenderá una peligrosa aventura para rescatarlo. Pero Nemo y sus nuevos amigos tienen también un astuto plan para escapar de la pecera y volver al mar.', 'https://www.youtube.com/watch?v=uEH47E8I7nQ', 'El pececillo Nemo, que es hijo único, es muy querido y protegido por su padre. Después de ser capturado en un arrecife australiano va a parar a la pecera de la oficina de un dentista de Sidney. Su tímido padre emprenderá una peligrosa aventura para rescatarlo. Pero Nemo y sus nuevos amigos tienen también un astuto plan para escapar de la pecera y volver al mar.', 'Finding nemo 2003, animation, animation movies, movies for children, comedy, animations, full, cartoon movies, New Animation Movies 2014 Full Movie English', '1417825807', 1, 0, 1, 47, 1, 0, 0, '', 0),
(46, 'Ni un hombre más', 'Ni un hombre más', '46-1428080980', 'ni-un-hombre-mas.png', 'o-GIFT-CARDS-HOLIDAYS-facebook.jpg', '06-06-2016', '17:08:45', '10', '', '4,5', '7', '2,3,4,5,6,7,9,14,15,39', '6', '0', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed condimentum justo eu odio sagittis accumsan. Mauris luctus libero euismod semper finibus. Curabitur ultricies mauris in tellus vulputate condimentum. Integer efficitur enim sit amet metus ultric', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed condimentum justo eu odio sagittis accumsan. Mauris luctus libero euismod semper finibus. Curabitur ultricies mauris in tellus vulputate condimentum. Integer efficitur enim sit amet metus ultrices, et condimentum lacus blandit.', 'will.ilam Eva Simons, this is love, new will.i.am video, new music video, new Eva Simons video, Interscope, black eyes peas, edm, will, will video, music vid', '1418485223', 4, 0, 4, 356, 1, 0, 0, '1,5', 0),
(47, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427388339', 0, 0, 0, 0, 0, 0, 1, '', 0),
(48, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427388403', 0, 0, 0, 0, 0, 0, 1, '', 0),
(49, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427389662', 0, 0, 0, 0, 0, 0, 1, '', 0),
(50, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427391350', 0, 0, 0, 0, 0, 0, 1, '', 0),
(51, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427391429', 0, 0, 0, 0, 0, 0, 1, '', 0),
(52, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427391551', 0, 0, 0, 0, 0, 0, 1, '', 0),
(53, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427391604', 0, 0, 0, 0, 0, 0, 1, '', 0),
(54, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427391683', 0, 0, 0, 0, 0, 0, 1, '', 0),
(55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427391779', 0, 0, 0, 0, 0, 0, 1, '', 0),
(56, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427391968', 0, 0, 0, 0, 0, 0, 1, '', 0),
(57, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427391980', 0, 0, 0, 0, 0, 0, 1, '', 0),
(58, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399600', 0, 0, 0, 0, 0, 0, 1, '', 0),
(59, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399617', 0, 0, 0, 0, 0, 0, 1, '', 0),
(60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399623', 0, 0, 0, 0, 0, 0, 1, '', 0),
(61, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399627', 0, 0, 0, 0, 0, 0, 1, '', 0),
(62, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399631', 0, 0, 0, 0, 0, 0, 1, '', 0),
(63, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399648', 0, 0, 0, 0, 0, 0, 1, '', 0),
(64, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399670', 0, 0, 0, 0, 0, 0, 1, '', 0),
(65, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399671', 0, 0, 0, 0, 0, 0, 1, '', 0),
(66, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399671', 0, 0, 0, 0, 0, 0, 1, '', 0),
(67, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399676', 0, 0, 0, 0, 0, 0, 1, '', 0),
(68, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399678', 0, 0, 0, 0, 0, 0, 1, '', 0),
(69, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399681', 0, 0, 0, 0, 0, 0, 1, '', 0),
(70, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399687', 0, 0, 0, 0, 0, 0, 1, '', 0),
(71, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399786', 0, 0, 0, 0, 0, 0, 1, '', 0),
(72, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399786', 0, 0, 0, 0, 0, 0, 1, '', 0),
(73, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399789', 0, 0, 0, 0, 0, 0, 1, '', 0),
(74, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399796', 0, 0, 0, 0, 0, 0, 1, '', 0),
(75, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399837', 0, 0, 0, 0, 0, 0, 1, '', 0),
(76, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399838', 0, 0, 0, 0, 0, 0, 1, '', 0),
(77, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399838', 0, 0, 0, 0, 0, 0, 1, '', 0),
(78, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399842', 0, 0, 0, 0, 0, 0, 1, '', 0),
(79, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399842', 0, 0, 0, 0, 0, 0, 1, '', 0),
(80, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399847', 0, 0, 0, 0, 0, 0, 1, '', 0),
(81, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399851', 0, 0, 0, 0, 0, 0, 1, '', 0),
(82, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399851', 0, 0, 0, 0, 0, 0, 1, '', 0),
(83, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399857', 0, 0, 0, 0, 0, 0, 1, '', 0),
(84, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399860', 0, 0, 0, 0, 0, 0, 1, '', 0),
(85, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399863', 0, 0, 0, 0, 0, 0, 1, '', 0),
(86, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399865', 0, 0, 0, 0, 0, 0, 1, '', 0),
(87, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399868', 0, 0, 0, 0, 0, 0, 1, '', 0),
(88, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399955', 0, 0, 0, 0, 0, 0, 1, '', 0),
(89, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399959', 0, 0, 0, 0, 0, 0, 1, '', 0),
(90, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427399965', 0, 0, 0, 0, 0, 0, 1, '', 0),
(91, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400009', 0, 0, 0, 0, 0, 0, 1, '', 0),
(92, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400011', 0, 0, 0, 0, 0, 0, 1, '', 0),
(93, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400013', 0, 0, 0, 0, 0, 0, 1, '', 0),
(94, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400014', 0, 0, 0, 0, 0, 0, 1, '', 0),
(95, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400060', 0, 0, 0, 0, 0, 0, 1, '', 0),
(96, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400062', 0, 0, 0, 0, 0, 0, 1, '', 0),
(97, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400072', 0, 0, 0, 0, 0, 0, 1, '', 0),
(98, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400073', 0, 0, 0, 0, 0, 0, 1, '', 0),
(99, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400076', 0, 0, 0, 0, 0, 0, 1, '', 0),
(100, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400122', 0, 0, 0, 0, 0, 0, 1, '', 0),
(101, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400123', 0, 0, 0, 0, 0, 0, 1, '', 0),
(102, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400123', 0, 0, 0, 0, 0, 0, 1, '', 0),
(103, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400127', 0, 0, 0, 0, 0, 0, 1, '', 0),
(104, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427400146', 0, 0, 0, 0, 0, 0, 1, '', 0),
(105, '105', '', '', '', '', '', '', '', '', '', '7', '', '', '', '', '', '', '1427400372', 0, 0, 0, 0, 1, 0, 1, '', 0),
(106, '106', 'hgfhf', '', '', '', 'fghdfg', '', '', '', '', '7', '', '', '', '', '', '', '1427400409', 0, 0, 0, 0, 0, 0, 1, '', 0),
(107, '107', 'cxcvxc', '', '', '', 'xcvxcv', '', '', '', '', '7', '', '', '', '', '', '', '1427401312', 0, 0, 0, 0, 0, 0, 1, '', 0),
(108, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427401354', 0, 0, 0, 0, 0, 0, 1, '', 0),
(109, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427401411', 0, 0, 0, 0, 0, 0, 1, '', 0),
(110, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427401413', 0, 0, 0, 0, 0, 0, 1, '', 0),
(111, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427401434', 0, 0, 0, 0, 0, 0, 1, '', 0),
(112, '112', '', '', '', '', 'dfd', '', '', '', '', '7', '', '', '', '', '', '', '1427401479', 0, 0, 0, 0, 0, 0, 1, '', 0),
(113, 'dfgdsf', 'dfsgdf', '', '', '', 'cvzxvc', '', '', '', '4,6,8,9,11', '9', '2,3', '', 'vcbxcvb', 'https://www.youtube.com/watch?v=24R-mtkaqsc', '', '', '1427401552', 0, 0, 0, 0, 0, 0, 1, '', 0),
(114, '114', '', '', '', '', '', '', '', '', '0', '12', '0', '', '', '', '', '', '1427402223', 0, 0, 0, 0, 0, 0, 1, '', 0),
(115, '115', 'fsdg', '', '', '', 'dfsgf', '', '', '', '4', '7', '0', '', '', '', '', '', '1427402364', 0, 0, 0, 0, 0, 0, 1, '', 0),
(116, '116', 'fdghdfgh', '', '', '', 'dfghdfhg', '', '', '', '7,8,10,11', '7', '0', '', '', '', '', '', '1427402427', 0, 0, 0, 0, 0, 0, 1, '', 0),
(117, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427402972', 0, 0, 0, 0, 0, 0, 1, '', 0),
(118, '118', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1427403068', 0, 0, 0, 0, 0, 0, 1, '', 0),
(119, 'english title', 'espanol title', '', '', '', '2015', '', '', '', '4,5,7', '9', '0', '', '', '', '', '', '1427403235', 0, 0, 0, 0, 0, 0, 1, '', 0),
(120, 'English', 'Espanol', '', '', '', '2015', '', '', '', '4,5,6', '8', '0', '', '', '', '', '', '1427403325', 0, 0, 0, 0, 0, 0, 1, '', 0),
(121, '121', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1427403796', 0, 0, 0, 0, 0, 0, 1, '', 0),
(122, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427404153', 0, 0, 0, 0, 0, 0, 1, '', 0),
(123, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427404297', 0, 0, 0, 0, 0, 0, 1, '', 0),
(124, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427404313', 0, 0, 0, 0, 0, 0, 1, '', 0),
(125, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427406133', 0, 0, 0, 0, 0, 0, 1, '', 0),
(126, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427406718', 0, 0, 0, 0, 0, 0, 1, '', 0),
(127, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427406758', 0, 0, 0, 0, 0, 0, 1, '', 0),
(128, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427406782', 0, 0, 0, 0, 0, 0, 1, '', 0),
(129, '129', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1427406795', 0, 0, 0, 0, 0, 0, 1, '', 0),
(130, '130', 'vigac', '', '', '', '', '', '', '', '10', '13', '0', '', '', '', '', '', '1427411434', 0, 0, 0, 0, 0, 0, 1, '', 0),
(131, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427411506', 0, 0, 0, 0, 0, 0, 1, '', 0),
(132, 'fghfgh', 'ghfgh', '', '', '', 'fghfgh', '', '', '', '5,8,10,11,14', '7', '2,3,4,5,7', '', 'fdgfg', 'dfgdf', 'dfgdfgd', 'dfgdf', '1427437258', 0, 0, 0, 0, 0, 0, 1, '', 0),
(133, 'fghfgh', 'ghfgh', '', '', '', 'fghfgh', '', '', '', '0', '7', '2,4,5,7,8', '', '', '', '', '', '1427441358', 0, 0, 0, 0, 0, 0, 1, '', 0),
(134, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427441466', 0, 0, 0, 0, 0, 0, 1, '', 0),
(135, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427442022', 0, 0, 0, 0, 0, 0, 1, '', 0),
(136, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427442022', 0, 0, 0, 0, 0, 0, 1, '', 0),
(137, '137', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1427442178', 0, 0, 0, 0, 0, 0, 1, '', 0),
(138, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427442193', 0, 0, 0, 0, 0, 0, 1, '', 0),
(139, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427442193', 0, 0, 0, 0, 0, 0, 1, '', 0),
(140, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427442224', 0, 0, 0, 0, 0, 0, 1, '', 0),
(141, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427442236', 0, 0, 0, 0, 0, 0, 1, '', 0),
(142, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427442237', 0, 0, 0, 0, 0, 0, 1, '', 0),
(143, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427442362', 0, 0, 0, 0, 0, 0, 1, '', 0),
(144, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427442985', 0, 0, 0, 0, 0, 0, 1, '', 0),
(145, '145', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1427443783', 0, 0, 0, 0, 0, 0, 1, '', 0),
(146, '146', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1427447258', 0, 0, 0, 0, 0, 0, 1, '', 0),
(147, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427447458', 0, 0, 0, 0, 0, 0, 1, '', 0),
(148, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427447618', 0, 0, 0, 0, 0, 0, 1, '', 0),
(149, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427447693', 0, 0, 0, 0, 0, 0, 1, '', 0),
(150, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427450582', 0, 0, 0, 0, 0, 0, 1, '', 0),
(151, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427450810', 0, 0, 0, 0, 0, 0, 1, '', 0),
(152, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427450979', 0, 0, 0, 0, 0, 0, 1, '', 0),
(153, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427451049', 0, 0, 0, 0, 0, 0, 1, '', 0),
(154, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427451935', 0, 0, 0, 0, 0, 0, 1, '', 0),
(155, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427451940', 0, 0, 0, 0, 0, 0, 1, '', 0),
(156, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427453713', 0, 0, 0, 0, 0, 0, 1, '', 0),
(157, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427453776', 0, 0, 0, 0, 0, 0, 1, '', 0),
(158, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427457485', 0, 0, 0, 0, 0, 0, 1, '', 0),
(159, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427457602', 0, 0, 0, 0, 0, 0, 1, '', 0),
(160, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427457668', 0, 0, 0, 0, 0, 0, 1, '', 0),
(161, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427457715', 0, 0, 0, 0, 0, 0, 1, '', 0),
(162, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427459566', 0, 0, 0, 0, 0, 0, 1, '', 0),
(163, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427459634', 0, 0, 0, 0, 0, 0, 1, '', 0),
(164, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427459682', 0, 0, 0, 0, 0, 0, 1, '', 0),
(165, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427460015', 0, 0, 0, 0, 0, 0, 1, '', 0),
(166, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427460325', 0, 0, 0, 0, 0, 0, 1, '', 0),
(167, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427460504', 0, 0, 0, 0, 0, 0, 1, '', 0),
(168, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427460575', 0, 0, 0, 0, 0, 0, 1, '', 0),
(169, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427460642', 0, 0, 0, 0, 0, 0, 1, '', 0),
(170, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427461004', 0, 0, 0, 0, 0, 0, 1, '', 0),
(171, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427462427', 0, 0, 0, 0, 0, 0, 1, '', 0),
(172, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427462690', 0, 0, 0, 0, 0, 0, 1, '', 0),
(173, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427463047', 0, 0, 0, 0, 0, 0, 1, '', 0),
(174, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427463998', 0, 0, 0, 0, 0, 0, 1, '', 0),
(175, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427464055', 0, 0, 0, 0, 0, 0, 1, '', 0),
(176, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427466187', 0, 0, 0, 0, 0, 0, 1, '', 0),
(177, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427466249', 0, 0, 0, 0, 0, 0, 1, '', 0),
(178, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427466294', 0, 0, 0, 0, 0, 0, 1, '', 0),
(179, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427466317', 0, 0, 0, 0, 0, 0, 1, '', 0),
(180, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427466343', 0, 0, 0, 0, 0, 0, 1, '', 0),
(181, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427466372', 0, 0, 0, 0, 0, 0, 1, '', 0),
(182, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427466437', 0, 0, 0, 0, 0, 0, 1, '', 0),
(183, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427466491', 0, 0, 0, 0, 0, 0, 1, '', 0),
(184, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427466564', 0, 0, 0, 0, 0, 0, 1, '', 0),
(185, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427466604', 0, 0, 0, 0, 0, 0, 1, '', 0),
(186, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427467240', 0, 0, 0, 0, 0, 0, 1, '', 0),
(187, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427467303', 0, 0, 0, 0, 0, 0, 1, '', 0),
(188, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427467641', 0, 0, 0, 0, 0, 0, 1, '', 0),
(189, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427467988', 0, 0, 0, 0, 0, 0, 1, '', 0),
(190, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427468207', 0, 0, 0, 0, 0, 0, 1, '', 0),
(191, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427468403', 0, 0, 0, 0, 0, 0, 1, '', 0),
(192, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427468543', 0, 0, 0, 0, 0, 0, 1, '', 0),
(193, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427468602', 0, 0, 0, 0, 0, 0, 1, '', 0),
(194, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427468694', 0, 0, 0, 0, 0, 0, 1, '', 0),
(195, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427468798', 0, 0, 0, 0, 0, 0, 1, '', 0),
(196, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427468845', 0, 0, 0, 0, 0, 0, 1, '', 0),
(197, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427468904', 0, 0, 0, 0, 0, 0, 1, '', 0),
(198, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427468934', 0, 0, 0, 0, 0, 0, 1, '', 0),
(199, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427469103', 0, 0, 0, 0, 0, 0, 1, '', 0),
(200, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427469159', 0, 0, 0, 0, 0, 0, 1, '', 0),
(201, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427469173', 0, 0, 0, 0, 0, 0, 1, '', 0),
(202, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427469193', 0, 0, 0, 0, 0, 0, 1, '', 0),
(203, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427469218', 0, 0, 0, 0, 0, 0, 1, '', 0),
(204, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427469307', 0, 0, 0, 0, 0, 0, 1, '', 0),
(205, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427469514', 0, 0, 0, 0, 0, 0, 1, '', 0),
(206, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427469726', 0, 0, 0, 0, 0, 0, 1, '', 0),
(207, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427469838', 0, 0, 0, 0, 0, 0, 1, '', 0),
(208, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427470219', 0, 0, 0, 0, 0, 0, 1, '', 0),
(209, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427470255', 0, 0, 0, 0, 0, 0, 1, '', 0),
(210, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427470425', 0, 0, 0, 0, 0, 0, 1, '', 0),
(211, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427470562', 0, 0, 0, 0, 0, 0, 1, '', 0),
(212, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427470588', 0, 0, 0, 0, 0, 0, 1, '', 0),
(213, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427470853', 0, 0, 0, 0, 0, 0, 1, '', 0),
(214, 'vigac', 'dfgsdf', '', '', '', '1998', '', '', '', '4', '7', '', '3', '', 'xcvzvbcvb', '', '', '1427547649', 0, 0, 0, 0, 0, 0, 1, '', 0),
(215, '215', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1427551993', 0, 0, 0, 0, 0, 0, 1, '', 0),
(216, '216', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1427552045', 0, 0, 0, 0, 0, 0, 1, '', 0),
(217, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427552504', 0, 0, 0, 0, 0, 0, 1, '', 0),
(218, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427552550', 0, 0, 0, 0, 0, 0, 1, '', 0),
(219, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427552668', 0, 0, 0, 0, 0, 0, 1, '', 0),
(220, '220', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1427552701', 0, 0, 0, 0, 0, 0, 1, '', 0),
(221, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427552879', 0, 0, 0, 0, 0, 0, 1, '', 0),
(222, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427552939', 0, 0, 0, 0, 0, 0, 1, '', 0),
(223, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427552957', 0, 0, 0, 0, 0, 0, 1, '', 0),
(224, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427553016', 0, 0, 0, 0, 0, 0, 1, '', 0),
(225, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427553637', 0, 0, 0, 0, 0, 0, 1, '', 0),
(226, 'ghjghjgh', 'ghjgh', '226-1427554579', '', 'o-GIFT-CARDS-HOLIDAYS-facebook.jpg', '2015', '', '', '', '4,5,6,7', '7', '3,4,5', '', 'ghjgh', 'ghjgh', 'ghjghj', 'ghjghj', '1427554473', 0, 0, 0, 0, 0, 0, 1, '', 0),
(227, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427556213', 0, 0, 0, 0, 0, 0, 1, '', 0),
(228, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427556305', 0, 0, 0, 0, 0, 0, 1, '', 0),
(229, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427556329', 0, 0, 0, 0, 0, 0, 1, '', 0),
(230, '230', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1427556358', 0, 0, 0, 0, 0, 0, 1, '', 0),
(231, '231', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1427556497', 0, 0, 0, 0, 0, 0, 1, '', 0),
(233, '233', 'fghfdg', '', '', '', 'fgh', '', '', '', '4', '7', '', '', '', 'fghdf', '', '', '1427556641', 0, 0, 0, 0, 0, 0, 0, '', 0),
(234, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427556723', 0, 0, 0, 0, 0, 0, 1, '', 0),
(235, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427667831', 0, 0, 0, 0, 0, 0, 1, '', 0),
(236, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427667864', 0, 0, 0, 0, 0, 0, 1, '', 0),
(237, '', '', '237-1427668314', '', 'o-GIFT-CARDS-HOLIDAYS-facebook.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1427667884', 0, 0, 0, 0, 0, 0, 1, '', 0),
(238, '', '', '238-1427698346', '', 'New Picture.bmp', '', '', '', '', '', '', '', '', '', '', '', '', '1427698269', 0, 0, 0, 0, 0, 0, 1, '', 0),
(239, '', '', '239-1427698426', '', 'o-GIFT-CARDS-HOLIDAYS-facebook.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1427698416', 0, 0, 0, 0, 0, 0, 1, '', 0),
(240, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427699189', 0, 0, 0, 0, 0, 0, 1, '', 0),
(241, '', '', '241-1427700975', '', 'o-GIFT-CARDS-HOLIDAYS-facebook1.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1427700965', 0, 0, 0, 0, 0, 0, 1, '', 0),
(242, '', '', '242-1427701070', '', 'o-GIFT-CARDS-HOLIDAYS-facebook1.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1427701004', 0, 0, 0, 0, 0, 0, 1, '', 0),
(243, '', '', '243-1427701103', '', 'o-GIFT-CARDS-HOLIDAYS-facebook.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1427701094', 0, 0, 0, 0, 0, 0, 1, '', 0),
(244, '', '', '244-1427701150', '', 'New Picture.bmp', '', '', '', '', '', '', '', '', '', '', '', '', '1427701141', 0, 0, 0, 0, 0, 0, 1, '', 0),
(245, '', '', '245-1427701185', '', 'o-GIFT-CARDS-HOLIDAYS-facebook.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1427701160', 0, 0, 0, 0, 0, 0, 1, '', 0),
(246, '', '', '246-1427701384', '', 'o-GIFT-CARDS-HOLIDAYS-facebook.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1427701375', 0, 0, 0, 0, 0, 0, 1, '', 0),
(247, '', '', '247-1427701430', '', 'o-GIFT-CARDS-HOLIDAYS-facebook.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1427701420', 0, 0, 0, 0, 0, 0, 1, '', 0),
(248, '', '', '248-1427701468', '', 'o-GIFT-CARDS-HOLIDAYS-facebook1.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1427701455', 0, 0, 0, 0, 0, 0, 1, '', 0),
(249, '', '', '249-1427701563', '', 'chveni-barati31.gif', '', '', '', '', '', '', '', '', '', '', '', '', '1427701495', 0, 0, 0, 0, 0, 0, 1, '', 0),
(250, '', '', '250-1427701808', '', 'logo31.gif', '', '', '', '', '', '', '', '', '', '', '', '', '1427701782', 0, 0, 0, 0, 0, 0, 1, '', 0),
(251, '', '', '251-1427701858', '', 'barati_1gv(1).png', '', '', '', '', '', '', '', '', '', '', '', '', '1427701811', 0, 0, 0, 1, 0, 0, 1, '', 0),
(252, '', '', '252-1427701960', '', 'Untitled-11.gif', '', '', '', '', '', '', '', '', '', '', '', '', '1427701893', 0, 0, 0, 0, 0, 0, 1, '', 0),
(253, '', '', '253-1427701992', '', 'Untitled-1.gif', '', '', '', '', '', '', '', '', '', '', '', '', '1427701982', 0, 0, 0, 0, 0, 0, 1, '', 0),
(254, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427706181', 0, 0, 0, 0, 0, 0, 1, '', 0),
(255, '255', '', '255-1427708426', '', 'photo1.jpg', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1427707311', 0, 0, 0, 0, 0, 0, 1, '', 0),
(256, '', '', '256-1427709090', '', 'o-GIFT-CARDS-HOLIDAYS-facebook1.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1427708446', 0, 0, 0, 0, 0, 0, 1, '', 0),
(257, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1427708489', 0, 0, 0, 0, 0, 0, 1, '', 0),
(258, '', '', '258-1427709206', '', 'Untitled-1.gif', '', '', '', '', '', '', '', '', '', '', '', '', '1427709193', 0, 0, 0, 0, 0, 0, 1, '', 0),
(259, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428067810', 0, 0, 0, 0, 0, 0, 1, '', 0),
(260, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428068118', 0, 0, 0, 0, 0, 0, 1, '', 0),
(261, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428068127', 0, 0, 0, 0, 0, 0, 1, '', 0),
(262, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428068204', 0, 0, 0, 0, 0, 0, 1, '', 0),
(263, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428068281', 0, 0, 0, 0, 0, 0, 1, '', 0),
(264, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428068301', 0, 0, 0, 0, 0, 0, 1, '', 0),
(265, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428068440', 0, 0, 0, 0, 0, 0, 1, '', 0),
(266, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428068755', 0, 0, 0, 0, 0, 0, 1, '', 0),
(267, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428068953', 0, 0, 0, 0, 0, 0, 1, '', 0),
(268, '', '', '268-1428068972', '', 'o-GIFT-CARDS-HOLIDAYS-facebook.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1428068957', 0, 0, 0, 0, 0, 0, 1, '', 0),
(269, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428069085', 0, 0, 0, 0, 0, 0, 1, '', 0),
(270, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428069201', 0, 0, 0, 0, 0, 0, 1, '', 0),
(271, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428069226', 0, 0, 0, 0, 0, 0, 1, '', 0),
(272, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428069440', 0, 0, 0, 0, 0, 0, 1, '', 0),
(273, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428069457', 0, 0, 0, 0, 0, 0, 1, '', 0),
(274, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428069622', 0, 0, 0, 0, 0, 0, 1, '', 0),
(275, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428069705', 0, 0, 0, 0, 0, 0, 1, '', 0),
(276, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428069819', 0, 0, 0, 0, 0, 0, 1, '', 0),
(277, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428069902', 0, 0, 0, 0, 0, 0, 1, '', 0),
(278, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428069973', 0, 0, 0, 0, 0, 0, 1, '', 0),
(279, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428069984', 0, 0, 0, 0, 0, 0, 1, '', 0),
(280, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428070063', 0, 0, 0, 0, 0, 0, 1, '', 0),
(281, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1428070206', 0, 0, 0, 0, 0, 0, 1, '', 0),
(282, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429531992', 0, 0, 0, 0, 0, 0, 1, '', 0),
(283, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429532005', 0, 0, 0, 0, 0, 0, 1, '', 0),
(284, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429532121', 0, 0, 0, 0, 0, 0, 1, '', 0),
(285, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429532344', 0, 0, 0, 0, 0, 0, 1, '', 0),
(286, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429532382', 0, 0, 0, 0, 0, 0, 1, '', 0),
(287, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429533220', 0, 0, 0, 0, 0, 0, 1, '', 0),
(288, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429534309', 0, 0, 0, 0, 0, 0, 1, '', 0),
(289, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429534366', 0, 0, 0, 0, 0, 0, 1, '', 0),
(290, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429534756', 0, 0, 0, 0, 0, 0, 1, '', 0),
(291, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429535999', 0, 0, 0, 0, 0, 0, 1, '', 0),
(292, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429537404', 0, 0, 0, 0, 0, 0, 1, '', 0),
(293, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429537566', 0, 0, 0, 0, 0, 0, 1, '', 0),
(294, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429537688', 0, 0, 0, 0, 0, 0, 1, '', 0),
(295, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429537814', 0, 0, 0, 0, 0, 0, 1, '', 0),
(296, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429538234', 0, 0, 0, 0, 0, 0, 1, '', 0),
(297, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429538335', 0, 0, 0, 0, 0, 0, 1, '', 0),
(298, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1429737550', 0, 0, 0, 0, 0, 0, 1, '', 0),
(299, '299', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1430070755', 0, 0, 0, 0, 1, 0, 1, '', 0),
(300, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1430087298', 0, 0, 0, 0, 0, 0, 1, '', 0),
(301, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1430089982', 0, 0, 0, 0, 0, 0, 1, '', 0),
(302, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1430090007', 0, 0, 0, 0, 0, 0, 1, '', 0),
(303, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1430090673', 0, 0, 0, 1, 0, 0, 1, '', 0),
(304, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1430090862', 0, 0, 0, 0, 0, 0, 1, '', 0),
(305, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1430090922', 0, 0, 0, 0, 0, 0, 1, '', 0),
(306, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1430090986', 0, 0, 0, 0, 0, 0, 1, '', 0),
(307, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1431505816', 0, 0, 0, 0, 0, 0, 1, '', 0),
(308, '308', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1432843541', 0, 0, 0, 0, 1, 0, 1, '', 0),
(309, '309', '', '', '', '', '', '11', '11', '', '0', '7', '0', '', '', '', '', '', '1432843839', 0, 0, 0, 0, 1, 0, 1, '', 0),
(310, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1432846313', 0, 0, 0, 0, 0, 0, 1, '', 0),
(311, '311', '', '', '', '', '', '', '', '', '0', '7', '0', '', '', '', '', '', '1432846332', 0, 0, 0, 0, 1, 0, 1, '', 0),
(312, '312', '', '', '', '', '0', '', '', '', '0', '7', '0', '', '', '', '', '', '1432846875', 0, 0, 0, 0, 1, 0, 1, '', 0),
(313, '313', '', '', '', '', '0', '', '', '', '0', '7', '0', '', '', '', '', '', '1432846962', 0, 0, 0, 0, 1, 0, 1, '', 0),
(314, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1432847125', 0, 0, 0, 0, 0, 0, 1, '', 0),
(315, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1432847164', 0, 0, 0, 0, 0, 0, 1, '', 0),
(316, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1432847190', 0, 0, 0, 0, 0, 0, 1, '', 0),
(317, '317', '', '', '', '', '0', '', '', '', '0', '7', '0', '', '', '', '', '', '1432847288', 0, 0, 0, 0, 1, 0, 1, '', 0),
(318, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1433625564', 0, 0, 0, 0, 0, 0, 1, '', 0),
(319, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1439799986', 0, 0, 0, 0, 0, 0, 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `movies_quality`
--

CREATE TABLE IF NOT EXISTS `movies_quality` (
  `id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_quality`
--

INSERT INTO `movies_quality` (`id`, `title`) VALUES
(1, 'Full HD'),
(2, '1080i p'),
(3, 'HD 720'),
(7, 'DVD');

-- --------------------------------------------------------

--
-- Table structure for table `movie_actors`
--

CREATE TABLE IF NOT EXISTS `movie_actors` (
  `id` int(11) NOT NULL,
  `title_eng` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title_esp` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_actors`
--

INSERT INTO `movie_actors` (`id`, `title_eng`, `title_esp`) VALUES
(2, 'Edward Norton', 'Edward Norton'),
(3, 'Paul Giamatti', 'Paul Giamatti'),
(4, 'Jessica Biel', 'Jessica Biel'),
(5, 'Rufus Sewell', 'Rufus Sewell'),
(6, 'Eddie Marsan', 'Eddie Marsan'),
(7, 'Jake Wood', 'Jake Wood'),
(8, 'Aaron Taylor-Johnson', 'Aaron Taylor-Johnson'),
(9, 'Jennifer Lawrence', 'Jennifer Lawrence'),
(10, 'Kyle MacLachlan', 'Kyle MacLachlan'),
(11, 'Danielle Calvert', 'Danielle Calvert'),
(12, 'Gabrielle Anwar', 'Gabrielle Anwar'),
(13, 'Patrick Stewart', 'Patrick Stewart'),
(14, 'Jason Durr', 'Jason Durr'),
(15, 'Rupert Friend', 'Rupert Friend'),
(16, 'Emmanuelle Chriqui', 'Emmanuelle Chriqui'),
(17, 'Richard Coyle', 'Richard Coyle'),
(18, 'Heather Graham', 'Heather Graham'),
(19, 'Johnathon Schaech', 'Johnathon Schaech'),
(20, 'Rade Serbedzija', 'Rade Serbedzija'),
(21, 'Christian Slater', 'Christian Slater'),
(22, 'Jill Hennessy', 'Jill Hennessy'),
(23, 'Donald Sutherland', 'Donald Sutherland'),
(24, 'Ben Cotton', 'Ben Cotton'),
(25, 'Lochlyn Munro', 'Lochlyn Munro'),
(26, 'Jake T. Austin', 'Jake T. Austin'),
(27, 'Steve Buscemi', 'Steve Buscemi'),
(28, 'Loretta Devine', 'Loretta Devine'),
(29, 'Laurence Fishburne', 'Laurence Fishburne'),
(30, 'Richard E. Grant', 'Richard E. Grant'),
(31, 'Albert Brooks', 'Albert Brooks'),
(32, 'Ellen DeGeneres', 'Ellen DeGeneres'),
(33, 'Alexander Gould', 'Alexander Gould'),
(34, 'Willem Dafoe', 'Willem Dafoe'),
(35, 'Brad Garrett', 'Brad Garrett'),
(36, 'Valeria Bertuccelli', 'Valeria Bertuccelli'),
(37, 'Martín Piroyansky', 'Martín Piroyansky'),
(38, 'Luis Ziembrowski', 'Luis Ziembrowski'),
(39, 'Mariela Vitale', 'Mariela Vitale'),
(40, 'Juan Minujín', 'Juan Minujín'),
(41, 'Germán de Silva', 'Germán de Silva');

-- --------------------------------------------------------

--
-- Table structure for table `movie_ganres`
--

CREATE TABLE IF NOT EXISTS `movie_ganres` (
  `id` int(11) NOT NULL,
  `title_eng` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title_esp` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_ganres`
--

INSERT INTO `movie_ganres` (`id`, `title_eng`, `title_esp`) VALUES
(4, 'Drama', 'Drama'),
(5, 'Fantástico', 'Fantástico'),
(6, 'Guerra', 'Guerra'),
(7, 'Terror', 'Terror'),
(8, 'Documental', 'Documental'),
(9, 'Comedias', 'Comedias'),
(10, 'Aventura', 'Aventura'),
(11, 'Musica', 'Musica'),
(12, 'Intriga', 'Intriga'),
(13, 'Westerns', 'Westerns'),
(14, 'Deporte', 'Deporte'),
(15, 'Romance', 'Romance'),
(16, 'Thriller', 'Thriller'),
(17, 'Biografias', 'Biografias'),
(18, 'Animacion', 'Animacion');

-- --------------------------------------------------------

--
-- Table structure for table `movie_links`
--

CREATE TABLE IF NOT EXISTS `movie_links` (
  `id` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `movie` int(11) NOT NULL,
  `lang` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_links`
--

INSERT INTO `movie_links` (`id`, `video`, `movie`, `lang`) VALUES
(1, 'https://www.youtube.com/watch?v=wc5lhFmRyh8', 38, 1),
(2, 'https://www.youtube.com/watch?v=6rpx3C8AtyU', 39, 1),
(3, 'https://www.youtube.com/watch?v=_SBri8uKCGw', 39, 3),
(4, 'https://www.youtube.com/watch?v=NBKb8B3dPds', 43, 2),
(5, 'https://www.youtube.com/watch?v=NBKb8B3dPds', 43, 6),
(6, 'https://www.youtube.com/watch?v=4MLbYdpm3GA', 44, 2),
(7, 'https://www.youtube.com/watch?v=uEH47E8I7nQ', 45, 2),
(8, 'https://www.youtube.com/watch?v=uzsOXgTSIF4', 46, 6),
(9, '', 106, 1),
(10, '', 106, 1),
(11, '', 106, 1),
(12, '', 106, 1),
(13, '', 106, 1),
(14, '', 106, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie_rejisor`
--

CREATE TABLE IF NOT EXISTS `movie_rejisor` (
  `id` int(11) NOT NULL,
  `title_eng` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title_esp` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_rejisor`
--

INSERT INTO `movie_rejisor` (`id`, `title_eng`, `title_esp`) VALUES
(7, 'Anthony Russo', 'Anthony Russo'),
(8, 'Neil Burger', 'Neil Burger'),
(9, 'Terry Miles', 'Terry Miles'),
(10, 'Anthony Silverston', 'Anthony Silverston'),
(11, 'Lee Unkrich', 'Lee Unkrich'),
(12, 'Martín Salinas', 'Martín Salinas'),
(13, 'vigac', 'vigac');

-- --------------------------------------------------------

--
-- Table structure for table `movie_views`
--

CREATE TABLE IF NOT EXISTS `movie_views` (
  `id` int(11) NOT NULL,
  `videoid` int(25) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `date` int(100) NOT NULL,
  `ip` varchar(16) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_views`
--

INSERT INTO `movie_views` (`id`, `videoid`, `userid`, `date`, `ip`) VALUES
(167, 46, '', 1432680199, '127.0.0.1'),
(168, 46, '', 1432681900, '127.0.0.1'),
(169, 46, '', 1432683723, '127.0.0.1'),
(170, 46, '', 1432843065, '127.0.0.1'),
(171, 46, '', 1465164690, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `onlinemovie`
--

CREATE TABLE IF NOT EXISTS `onlinemovie` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `language` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `servers` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinemovie`
--

INSERT INTO `onlinemovie` (`id`, `movie_id`, `link`, `language`, `quality`, `servers`, `date`) VALUES
(1, 298, 'dfsdf', 1, 1, 0, '1429737838'),
(2, 299, 'cxvxcv', 1, 1, 0, '1430070831'),
(3, 299, 'cxvxcv', 1, 2, 0, '1430070835'),
(4, 300, 'rtyr', 1, 1, 0, '1430087306'),
(5, 300, 'uiyui', 2, 1, 0, '1430087313'),
(6, 303, 'hfgh', 1, 1, 0, '1430090680'),
(7, 303, 'sd', 1, 1, 0, '1430090684'),
(8, 303, 'sd', 1, 2, 0, '1430090689'),
(9, 46, 'http://ok.ru/videoembed/27569556099', 1, 7, 1, '1430090691'),
(10, 46, 'http://powvideo.net/embed-c0gtll7p4nvi-725x400.html', 1, 7, 2, '1430090695'),
(11, 46, 'https://www.youtube.com/watch?v=TDwBuPsrSM4', 2, 7, 1, '1430090709'),
(12, 46, 'sd', 3, 7, 2, '1430090713'),
(13, 46, 'http://ok.ru/videoembed/27569556099', 1, 7, 2, '1430090714'),
(14, 46, 'sd', 1, 7, 1, '1430090716'),
(15, 46, 'sd', 1, 7, 1, '1430090717'),
(16, 303, 'sd', 6, 7, 8, '1430090719'),
(17, 303, 'sd', 6, 7, 9, '1430090719'),
(18, 304, '', 1, 1, 0, '1430090888'),
(20, 305, 'dfgdf', 1, 1, 0, '1430090934'),
(21, 305, 'dfgdf', 1, 1, 0, '1430090941'),
(22, 306, 'fgdfg', 1, 1, 1, '1430090994'),
(23, 306, 'sdsf', 1, 1, 2, '1430091000'),
(24, 306, 'sdsf', 1, 2, 2, '1430091004'),
(25, 306, 'sdsf', 3, 2, 2, '1430091007'),
(26, 306, 'sdsf', 6, 2, 2, '1430091009'),
(27, 306, 'sdsf', 7, 2, 2, '1430091013'),
(28, 306, 'sdsf', 6, 2, 2, '1430091015'),
(29, 306, 'sdsf', 5, 2, 2, '1430091017'),
(30, 46, 'http://netu.tv/player/embed_player.php?vid=83KYYM41823H&autoplay=no', 7, 1, 1, '1431508841'),
(31, 46, 'http://netu.tv/player/embed_player.php?vid=83KYYM41823H&autoplay=no', 7, 1, 2, '1431508845'),
(32, 46, 'http://netu.tv/player/embed_player.php?vid=83KYYM41823H&autoplay=no', 7, 3, 1, '1431508848'),
(33, 319, 'hgjgh', 1, 1, 1, '1439800013'),
(34, 319, 'hgjgh', 1, 1, 1, '1439800015');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL,
  `str` int(11) NOT NULL,
  `modul` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `str`, `modul`) VALUES
(1, 12, 'main'),
(2, 20, 'search'),
(3, 2, 'movies');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `meta_d` varchar(160) DEFAULT NULL,
  `meta_k` varchar(160) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`, `meta_d`, `meta_k`, `page_title`, `title`, `text`) VALUES
(1, 'contact', 'Contact page', 'Contact page', 'Contact page', 'Contact page', 'Reque falli sonet ex per, id omnes referrentur eum. Vis an atqui doctus molestie. An nam accumsan detraxit mediocrem. Eros laudem et eum, debet necessitatibus ei his. Aliquip placerat accusata vim eu. Ius ea nulla liber dissentiet, nec ne impetus praesent intellegam, nec iracundia incorrupte instructior ad.\n\nQui ut doming nostrum propriae, ut nisl voluptatum instructior nam, sint purto deterruisset eos eu. Usu euismod legimus te. Ne eirmod intellegam cum. Libris sensibus eu sea, ne euripidis aliquando sit, sea an nonumy explicari consetetur. Vel an esse petentium laboramus, vis impedit senserit signiferumque ut.\n\nLorem mandamus scribentur mea ea. In oblique gloriatur voluptatum mea, ad nulla graeco mei, libris omittantur dissentiunt his ei. Eu sea suscipit expetenda hendrerit. No graece mandamus disputationi pri. Pertinacia adolescens mea ea, ius at integre eligendi erroribus. Eu mel iusto exerci delectus, mentitum efficiendi ea sea. Odio mediocritatem at sea, meis suscipiantur nam et.\n\nVis ea gloriatur mnesarchum, duo cu labores mentitum, his ex nobis aeterno perfecto. Mel civibus petentium comprehensam cu, tritani imperdiet eu sit, detracto delectus perfecto ut pro. Et pro modo nusquam. Clita soleat theophrastus eum eu, vis wisi saepe at. Aperiri propriae comprehensam ne quo, qui ne prima populo omittam, in per nihil euismod inimicus.\n\nNec ei velit mundi accusamus. Ornatus sapientem assentior usu an. Ei per commune cotidieque accommodare, consulatu cotidieque vix ei. Eu has dissentiunt contentiones.\n\nMei ne enim repudiare, ne ius primis corrumpit. Eum partem legimus officiis cu, cu persecuti dissentiet duo. Cu soleat appareat mediocritatem pri, mei ex officiis perfecto deterruisset. Ea posse diceret nam, qui no delenit salutandi neglegentur. Aperiri mentitum percipit vis no, quo falli praesent prodesset ad.\n\nIn assum recusabo quo, an commodo adipisci ius. Quo cu noster audire. Duis tempor petentium ut has, ex vim euripidis referrentur, eos et elit placerat. Te porro essent nostro cum. Te magna dolore copiosae est, ne noster interesset nam. In habeo signiferumque sea, no per reque tantas nemore.\n\nLucilius prodesset nam et, sed errem hendrerit deseruisse at. Sit possim discere mediocritatem ad, qui utinam petentium in. Eam eu adhuc eloquentiam. An usu mandamus indoctum sadipscing. Te interesset temporibus has.\n\nWisi dicat omittantur sed ei, cu sed malorum consulatu. Vis no placerat sententiae, qui sensibus intellegam cu, ei lorem oblique alienum qui. Vix probo malis aeterno in, est aliquam placerat cu, eum et essent adolescens comprehensam. Has dolor principes at, eligendi incorrupte eos ut. Unum etiam vocibus ius id, eros omnesque democritum ne eam.\n\nIn enim offendit has, no alterum consequuntur vim, ei mea nostrum liberavisse conclusionemque. Tempor audire reprimique est at. Volumus lucilius mediocrem ad pro, unum appellantur ex usu. Ea sed error quaerendum disputationi, vis affert labores torquatos cu, sea ei soleat consequat. At qui posse minim. In nisl unum sanctus pro, esse putent no usu.\nReque falli sonet ex per, id omnes referrentur eum. Vis an atqui doctus molestie. An nam accumsan detraxit mediocrem. Eros laudem et eum, debet necessitatibus ei his. Aliquip placerat accusata vim eu. Ius ea nulla liber dissentiet, nec ne impetus praesent intellegam, nec iracundia incorrupte instructior ad.\n\nQui ut doming nostrum propriae, ut nisl voluptatum instructior nam, sint purto deterruisset eos eu. Usu euismod legimus te. Ne eirmod intellegam cum. Libris sensibus eu sea, ne euripidis aliquando sit, sea an nonumy explicari consetetur. Vel an esse petentium laboramus, vis impedit senserit signiferumque ut.\n\nLorem mandamus scribentur mea ea. In oblique gloriatur voluptatum mea, ad nulla graeco mei, libris omittantur dissentiunt his ei. Eu sea suscipit expetenda hendrerit. No graece mandamus disputationi pri. Pertinacia adolescens mea ea, ius at integre eligendi erroribus. Eu mel iusto exerci delectus, mentitum efficiendi ea sea. Odio mediocritatem at sea, meis suscipiantur nam et.\n\nVis ea gloriatur mnesarchum, duo cu labores mentitum, his ex nobis aeterno perfecto. Mel civibus petentium comprehensam cu, tritani imperdiet eu sit, detracto delectus perfecto ut pro. Et pro modo nusquam. Clita soleat theophrastus eum eu, vis wisi saepe at. Aperiri propriae comprehensam ne quo, qui ne prima populo omittam, in per nihil euismod inimicus.\n\nNec ei velit mundi accusamus. Ornatus sapientem assentior usu an. Ei per commune cotidieque accommodare, consulatu cotidieque vix ei. Eu has dissentiunt contentiones.\n\nMei ne enim repudiare, ne ius primis corrumpit. Eum partem legimus officiis cu, cu persecuti dissentiet duo. Cu soleat appareat mediocritatem pri, mei ex officiis perfecto deterruisset. Ea posse diceret nam, qui no delenit salutandi neglegentur. Aperiri mentitum percipit vis no, quo falli praesent prodesset ad.\n\nIn assum recusabo quo, an commodo adipisci ius. Quo cu noster audire. Duis tempor petentium ut has, ex vim euripidis referrentur, eos et elit placerat. Te porro essent nostro cum. Te magna dolore copiosae est, ne noster interesset nam. In habeo signiferumque sea, no per reque tantas nemore.\n\nLucilius prodesset nam et, sed errem hendrerit deseruisse at. Sit possim discere mediocritatem ad, qui utinam petentium in. Eam eu adhuc eloquentiam. An usu mandamus indoctum sadipscing. Te interesset temporibus has.\n\nWisi dicat omittantur sed ei, cu sed malorum consulatu. Vis no placerat sententiae, qui sensibus intellegam cu, ei lorem oblique alienum qui. Vix probo malis aeterno in, est aliquam placerat cu, eum et essent adolescens comprehensam. Has dolor principes at, eligendi incorrupte eos ut. Unum etiam vocibus ius id, eros omnesque democritum ne eam.\n\nIn enim offendit has, no alterum consequuntur vim, ei mea nostrum liberavisse conclusionemque. Tempor audire reprimique est at. Volumus lucilius mediocrem ad pro, unum appellantur ex usu. Ea sed error quaerendum disputationi, vis affert labores torquatos cu, sea ei soleat consequat. At qui posse minim. In nisl unum sanctus pro, esse putent no usu.\n\nReque falli sonet ex per, id omnes referrentur eum. Vis an atqui doctus molestie. An nam accumsan detraxit mediocrem. Eros laudem et eum, debet necessitatibus ei his. Aliquip placerat accusata vim eu. Ius ea nulla liber dissentiet, nec ne impetus praesent intellegam, nec iracundia incorrupte instructior ad.\n\nQui ut doming nostrum propriae, ut nisl voluptatum instructior nam, sint purto deterruisset eos eu. Usu euismod legimus te. Ne eirmod intellegam cum. Libris sensibus eu sea, ne euripidis aliquando sit, sea an nonumy explicari consetetur. Vel an esse petentium laboramus, vis impedit senserit signiferumque ut.\n\nLorem mandamus scribentur mea ea. In oblique gloriatur voluptatum mea, ad nulla graeco mei, libris omittantur dissentiunt his ei. Eu sea suscipit expetenda hendrerit. No graece mandamus disputationi pri. Pertinacia adolescens mea ea, ius at integre eligendi erroribus. Eu mel iusto exerci delectus, mentitum efficiendi ea sea. Odio mediocritatem at sea, meis suscipiantur nam et.\n\nVis ea gloriatur mnesarchum, duo cu labores mentitum, his ex nobis aeterno perfecto. Mel civibus petentium comprehensam cu, tritani imperdiet eu sit, detracto delectus perfecto ut pro. Et pro modo nusquam. Clita soleat theophrastus eum eu, vis wisi saepe at. Aperiri propriae comprehensam ne quo, qui ne prima populo omittam, in per nihil euismod inimicus.\n\nNec ei velit mundi accusamus. Ornatus sapientem assentior usu an. Ei per commune cotidieque accommodare, consulatu cotidieque vix ei. Eu has dissentiunt contentiones.\n\nMei ne enim repudiare, ne ius primis corrumpit. Eum partem legimus officiis cu, cu persecuti dissentiet duo. Cu soleat appareat mediocritatem pri, mei ex officiis perfecto deterruisset. Ea posse diceret nam, qui no delenit salutandi neglegentur. Aperiri mentitum percipit vis no, quo falli praesent prodesset ad.\n\nIn assum recusabo quo, an commodo adipisci ius. Quo cu noster audire. Duis tempor petentium ut has, ex vim euripidis referrentur, eos et elit placerat. Te porro essent nostro cum. Te magna dolore copiosae est, ne noster interesset nam. In habeo signiferumque sea, no per reque tantas nemore.\n\nLucilius prodesset nam et, sed errem hendrerit deseruisse at. Sit possim discere mediocritatem ad, qui utinam petentium in. Eam eu adhuc eloquentiam. An usu mandamus indoctum sadipscing. Te interesset temporibus has.\n\nWisi dicat omittantur sed ei, cu sed malorum consulatu. Vis no placerat sententiae, qui sensibus intellegam cu, ei lorem oblique alienum qui. Vix probo malis aeterno in, est aliquam placerat cu, eum et essent adolescens comprehensam. Has dolor principes at, eligendi incorrupte eos ut. Unum etiam vocibus ius id, eros omnesque democritum ne eam.\n\nIn enim offendit has, no alterum consequuntur vim, ei mea nostrum liberavisse conclusionemque. Tempor audire reprimique est at. Volumus lucilius mediocrem ad pro, unum appellantur ex usu. Ea sed error quaerendum disputationi, vis affert labores torquatos cu, sea ei soleat consequat. At qui posse minim. In nisl unum sanctus pro, esse putent no usu.'),
(2, 'aboutus', 'About us', 'About us', 'About us', 'About us', 'Reque falli sonet ex per, id omnes referrentur eum. Vis an atqui doctus molestie. An nam accumsan detraxit mediocrem. Eros laudem et eum, debet necessitatibus ei his. Aliquip placerat accusata vim eu. Ius ea nulla liber dissentiet, nec ne impetus praesent intellegam, nec iracundia incorrupte instructior ad.\r\n\r\nQui ut doming nostrum propriae, ut nisl voluptatum instructior nam, sint purto deterruisset eos eu. Usu euismod legimus te. Ne eirmod intellegam cum. Libris sensibus eu sea, ne euripidis aliquando sit, sea an nonumy explicari consetetur. Vel an esse petentium laboramus, vis impedit senserit signiferumque ut.\r\n\r\nLorem mandamus scribentur mea ea. In oblique gloriatur voluptatum mea, ad nulla graeco mei, libris omittantur dissentiunt his ei. Eu sea suscipit expetenda hendrerit. No graece mandamus disputationi pri. Pertinacia adolescens mea ea, ius at integre eligendi erroribus. Eu mel iusto exerci delectus, mentitum efficiendi ea sea. Odio mediocritatem at sea, meis suscipiantur nam et.\r\n\r\nVis ea gloriatur mnesarchum, duo cu labores mentitum, his ex nobis aeterno perfecto. Mel civibus petentium comprehensam cu, tritani imperdiet eu sit, detracto delectus perfecto ut pro. Et pro modo nusquam. Clita soleat theophrastus eum eu, vis wisi saepe at. Aperiri propriae comprehensam ne quo, qui ne prima populo omittam, in per nihil euismod inimicus.\r\n\r\nNec ei velit mundi accusamus. Ornatus sapientem assentior usu an. Ei per commune cotidieque accommodare, consulatu cotidieque vix ei. Eu has dissentiunt contentiones.\r\n\r\nMei ne enim repudiare, ne ius primis corrumpit. Eum partem legimus officiis cu, cu persecuti dissentiet duo. Cu soleat appareat mediocritatem pri, mei ex officiis perfecto deterruisset. Ea posse diceret nam, qui no delenit salutandi neglegentur. Aperiri mentitum percipit vis no, quo falli praesent prodesset ad.\r\n\r\nIn assum recusabo quo, an commodo adipisci ius. Quo cu noster audire. Duis tempor petentium ut has, ex vim euripidis referrentur, eos et elit placerat. Te porro essent nostro cum. Te magna dolore copiosae est, ne noster interesset nam. In habeo signiferumque sea, no per reque tantas nemore.\r\n\r\nLucilius prodesset nam et, sed errem hendrerit deseruisse at. Sit possim discere mediocritatem ad, qui utinam petentium in. Eam eu adhuc eloquentiam. An usu mandamus indoctum sadipscing. Te interesset temporibus has.\r\n\r\nWisi dicat omittantur sed ei, cu sed malorum consulatu. Vis no placerat sententiae, qui sensibus intellegam cu, ei lorem oblique alienum qui. Vix probo malis aeterno in, est aliquam placerat cu, eum et essent adolescens comprehensam. Has dolor principes at, eligendi incorrupte eos ut. Unum etiam vocibus ius id, eros omnesque democritum ne eam.\r\n\r\nIn enim offendit has, no alterum consequuntur vim, ei mea nostrum liberavisse conclusionemque. Tempor audire reprimique est at. Volumus lucilius mediocrem ad pro, unum appellantur ex usu. Ea sed error quaerendum disputationi, vis affert labores torquatos cu, sea ei soleat consequat. At qui posse minim. In nisl unum sanctus pro, esse putent no usu.'),
(3, 'home', 'Home page', 'Home page', 'Home page', 'Home page', 'Reque falli sonet ex per, id omnes referrentur eum. Vis an atqui doctus molestie. An nam accumsan detraxit mediocrem. Eros laudem et eum, debet necessitatibus ei his. Aliquip placerat accusata vim eu. Ius ea nulla liber dissentiet, nec ne impetus praesent intellegam, nec iracundia incorrupte instructior ad.\r\n\r\nQui ut doming nostrum propriae, ut nisl voluptatum instructior nam, sint purto deterruisset eos eu. Usu euismod legimus te. Ne eirmod intellegam cum. Libris sensibus eu sea, ne euripidis aliquando sit, sea an nonumy explicari consetetur. Vel an esse petentium laboramus, vis impedit senserit signiferumque ut.\r\n\r\nLorem mandamus scribentur mea ea. In oblique gloriatur voluptatum mea, ad nulla graeco mei, libris omittantur dissentiunt his ei. Eu sea suscipit expetenda hendrerit. No graece mandamus disputationi pri. Pertinacia adolescens mea ea, ius at integre eligendi erroribus. Eu mel iusto exerci delectus, mentitum efficiendi ea sea. Odio mediocritatem at sea, meis suscipiantur nam et.\r\n\r\nVis ea gloriatur mnesarchum, duo cu labores mentitum, his ex nobis aeterno perfecto. Mel civibus petentium comprehensam cu, tritani imperdiet eu sit, detracto delectus perfecto ut pro. Et pro modo nusquam. Clita soleat theophrastus eum eu, vis wisi saepe at. Aperiri propriae comprehensam ne quo, qui ne prima populo omittam, in per nihil euismod inimicus.\r\n\r\nNec ei velit mundi accusamus. Ornatus sapientem assentior usu an. Ei per commune cotidieque accommodare, consulatu cotidieque vix ei. Eu has dissentiunt contentiones.\r\n\r\nMei ne enim repudiare, ne ius primis corrumpit. Eum partem legimus officiis cu, cu persecuti dissentiet duo. Cu soleat appareat mediocritatem pri, mei ex officiis perfecto deterruisset. Ea posse diceret nam, qui no delenit salutandi neglegentur. Aperiri mentitum percipit vis no, quo falli praesent prodesset ad.\r\n\r\nIn assum recusabo quo, an commodo adipisci ius. Quo cu noster audire. Duis tempor petentium ut has, ex vim euripidis referrentur, eos et elit placerat. Te porro essent nostro cum. Te magna dolore copiosae est, ne noster interesset nam. In habeo signiferumque sea, no per reque tantas nemore.\r\n\r\nLucilius prodesset nam et, sed errem hendrerit deseruisse at. Sit possim discere mediocritatem ad, qui utinam petentium in. Eam eu adhuc eloquentiam. An usu mandamus indoctum sadipscing. Te interesset temporibus has.\r\n\r\nWisi dicat omittantur sed ei, cu sed malorum consulatu. Vis no placerat sententiae, qui sensibus intellegam cu, ei lorem oblique alienum qui. Vix probo malis aeterno in, est aliquam placerat cu, eum et essent adolescens comprehensam. Has dolor principes at, eligendi incorrupte eos ut. Unum etiam vocibus ius id, eros omnesque democritum ne eam.\r\n\r\nIn enim offendit has, no alterum consequuntur vim, ei mea nostrum liberavisse conclusionemque. Tempor audire reprimique est at. Volumus lucilius mediocrem ad pro, unum appellantur ex usu. Ea sed error quaerendum disputationi, vis affert labores torquatos cu, sea ei soleat consequat. At qui posse minim. In nisl unum sanctus pro, esse putent no usu.'),
(4, 'search', 'search', 'search', 'search', 'search', 'search');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`) VALUES
(1, 'Moderators'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE IF NOT EXISTS `playlist` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` int(50) NOT NULL,
  `ip_address` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `title`, `desc`, `user_id`, `date`, `ip_address`) VALUES
(1, 'My playlist 1', 'My playlist 1', 60, 1408296966, '31.146.40.62'),
(2, 'My playlist 2', 'My playlist 2', 60, 1408297046, '31.146.40.62'),
(3, 'My playlist 3', 'My playlist 3', 60, 1408297091, '31.146.40.62'),
(4, 'playlist 1', '', 0, 1408467386, '31.146.40.62');

-- --------------------------------------------------------

--
-- Table structure for table `quality`
--

CREATE TABLE IF NOT EXISTS `quality` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quality`
--

INSERT INTO `quality` (`id`, `title`) VALUES
(1, 'Full HD'),
(2, '1080i p'),
(3, 'HD 720'),
(7, 'DVD'),
(8, 'BlueRay');

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE IF NOT EXISTS `servers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servers`
--

INSERT INTO `servers` (`id`, `title`) VALUES
(1, 'youvideos'),
(2, 'youtube');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
  `id` int(11) NOT NULL,
  `chanel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `chanel_id`, `user_id`, `date`) VALUES
(31, 60, 11, '2014-08-14 16:31:42'),
(44, 0, 87, '2014-12-23 14:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `temp_user`
--

CREATE TABLE IF NOT EXISTS `temp_user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrentlinks`
--

CREATE TABLE IF NOT EXISTS `torrentlinks` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `language` int(11) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `torrentlinks`
--

INSERT INTO `torrentlinks` (`id`, `movie_id`, `link`, `language`, `quality`, `size`, `date`) VALUES
(1, 39, 'dfg', 1, 'hd 720', '5 GB', '1427471470'),
(2, 39, 'dfg', 1, 'hd 720', '5 GB', '1427471523'),
(3, 39, 'dfg', 1, 'hd 720', '5 GB', '1427471526'),
(4, 39, 'http://www.allpeliculas.com/admin/?pg=Movies&p=addPanel&noajax=1', 1, 'hd 720', '52 GB', '1427547974'),
(5, 39, 'http://www.allpeliculas.com/admin/?pg=Movies&p=addPanel&noajax=1', 1, 'hd 1080', '52 GB', '1427547982'),
(6, 224, '', 1, '', '', '1427553026'),
(7, 226, 'http://www.allpeliculas.com/admin/?pg=Movies&p=addPanel&noajax=1', 1, 'hd', '1.5 GB', '1427556115'),
(8, 259, 'fghf', 1, 'fghf', 'fghdf', '1428067820'),
(9, 259, 'fghf', 1, 'fghf', 'fghdf', '1428067821'),
(10, 259, 'fghf', 1, 'fghf', 'fghdf', '1428067821'),
(11, 259, 'fghf', 1, 'fghf', 'fghdf', '1428067822'),
(12, 259, 'fghf', 1, 'fghf', 'fghdf', '1428067822'),
(13, 261, 'ghjfg', 1, 'hfghjgf', 'gfhjfgh', '1428068134'),
(14, 261, 'ghjfg', 2, 'hfghjgf', 'gfhjfgh', '1428068139'),
(15, 261, 'ghjfg', 3, 'hfghjgf', 'gfhjfgh', '1428068143'),
(16, 262, 'gfhgf', 1, 'hfghjfg', 'hjfgh', '1428068214'),
(17, 262, 'gfhgf', 1, 'hfghjfg', 'hjfgh', '1428068216'),
(18, 262, 'gfhgf', 1, 'hfghjfg', 'hjfgh', '1428068216'),
(19, 262, 'gfhgf', 1, 'hfghjfg', 'hjfgh', '1428068216'),
(20, 262, 'gfhgf', 1, 'hfghjfg', 'hjfgh', '1428068217'),
(21, 262, 'gfhgf', 1, 'hfghjfg', 'hjfgh', '1428068272'),
(22, 262, 'gfhgf', 1, 'hfghjfg', 'hjfgh', '1428068273'),
(23, 264, 'hgf', 1, 'hjfghj', 'fghjfgh', '1428068309'),
(24, 264, 'hgf', 1, 'hjfghj', 'fghjfgh', '1428068310'),
(25, 264, 'hgf', 1, 'hjfghj', 'fghjfgh', '1428068311'),
(26, 265, 'tryr', 1, 'tyrty', 'rtyrt', '1428068452'),
(27, 265, 'tryr', 1, 'tyrty', 'rtyrt', '1428068453'),
(28, 265, 'tryr', 1, 'tyrty', 'rtyrt', '1428068454'),
(29, 265, 'tryr', 1, 'tyrty', 'rtyrt', '1428068475'),
(30, 265, 'tryr', 1, 'tyrty', 'rtyrt', '1428068476'),
(31, 266, 'fdgdf', 1, 'gdfgd', 'fgdf', '1428068769'),
(32, 266, 'fdgdf', 1, 'gdfgd', 'fgdf', '1428068770'),
(33, 266, 'fdgdf', 1, 'gdfgd', 'fgdf', '1428068771'),
(34, 266, 'fdgdf', 1, 'gdfgd', 'fgdf', '1428068896'),
(35, 266, 'fdgdf', 1, 'gdfgd', 'fgdf', '1428068897'),
(36, 266, 'fdgdf', 1, 'gdfgd', 'fgdf', '1428068898'),
(37, 268, 'gfhdfgh', 1, 'dfghdfg', 'ghdfghf', '1428068979'),
(38, 268, 'gfhdfgh', 1, 'dfghdfg', 'ghdfghf', '1428068980'),
(39, 268, 'gfhdfgh', 1, 'dfghdfg', 'ghdfghf', '1428068982'),
(40, 268, 'gfhdfgh', 1, 'dfghdfg', 'ghdfghf', '1428069024'),
(41, 268, 'gfhdfgh', 1, 'dfghdfg', 'ghdfghf', '1428069024'),
(42, 268, 'gfhdfgh', 1, 'dfghdfg', 'ghdfghf', '1428069025'),
(43, 268, 'gfhdfgh', 1, 'dfghdfg', 'ghdfghf', '1428069026'),
(44, 269, 'fghdf', 1, 'ghdfgh', 'dfghdfg', '1428069093'),
(45, 269, 'fghdf', 1, 'ghdfgh', 'dfghdfg', '1428069095'),
(46, 269, 'fghdf', 1, 'ghdfgh', 'dfghdfg', '1428069096'),
(47, 269, 'fghdf', 1, 'ghdfgh', 'dfghdfg', '1428069097'),
(48, 270, 'gshd', 1, 'fghdf', 'ghdfgh', '1428069212'),
(49, 270, 'gshd', 1, 'fghdf', 'ghdfgh', '1428069212'),
(50, 271, 'rtrety', 1, 'dfghdf', 'ghdfghdf', '1428069236'),
(51, 271, 'rtrety', 1, 'dfghdf', 'ghdfghdf', '1428069238'),
(52, 271, 'rtrety', 1, 'dfghdf', 'ghdfghdf', '1428069239'),
(53, 271, 'rtrety', 1, 'dfghdf', 'ghdfghdf', '1428069239'),
(54, 273, 'drhdf', 1, 'ghdfghdf', 'ghdfghdfg', '1428069471'),
(55, 275, 'hghg', 1, 'hj', 'ghjgh', '1428069712'),
(56, 275, 'hghg', 1, 'hj', 'ghjgh', '1428069713'),
(57, 276, '', 1, '', '', '1428069825'),
(58, 276, 'dfgh', 1, 'fgh', 'dfghdfgh', '1428069828'),
(59, 276, 'dfgh', 1, 'fgh', 'dfghdfgh', '1428069893'),
(60, 276, 'dfgh', 1, 'fgh', 'dfghdfgh', '1428069894'),
(61, 277, 'dfg', 1, 'fgdf', 'dfgdfg', '1428069908'),
(62, 277, 'dfg', 1, 'fgdf', 'dfgdfg', '1428069909'),
(63, 278, 'fgh', 1, 'dfghdf', 'ghdfgh', '1428069978'),
(64, 278, 'fgh', 1, 'dfghdf', 'ghdfgh', '1428069979'),
(65, 278, 'fgh', 1, 'dfghdf', 'ghdfgh', '1428069980'),
(66, 280, 'fdgfdg', 1, 'sdfgsdfg', 'sdfgsdf', '1428070113'),
(67, 280, 'fdgfdg', 1, 'sdfgsdfg', 'sdfgsdf', '1428070126'),
(68, 281, 'fghfg', 1, 'fhd', 'fghdfg', '1428070214'),
(69, 281, 'fghfg', 1, 'fhd', 'fghdfg', '1428070215'),
(70, 282, 'fgh', 1, 'dfghdf', 'ghdfghdfg', '1428070251'),
(71, 282, 'fgh', 1, 'dfghdf', 'ghdfghdfg', '1428070252'),
(72, 282, 'fgh', 1, 'dfghdf', 'ghdfghdfg', '1428070252'),
(73, 283, 'fghdf', 1, 'ghd', 'fghdfghdf', '1428070297'),
(74, 283, 'fghdf', 1, 'ghd', 'fghdfghdf', '1428070298'),
(75, 283, 'fghdf', 1, 'ghd', 'fghdfghdf', '1428070298'),
(76, 283, 'fghdf', 1, 'ghd', 'fghdfghdf', '1428070298'),
(77, 284, 'sdf', 1, 'dfgsdf', 'gsdf', '1428070362'),
(78, 284, 'sdf', 1, 'dfgsdf', 'gsdf', '1428070364'),
(79, 284, 'sdf', 1, 'dfgsdf', 'gsdf', '1428070364'),
(80, 286, 'fg', 1, 'sdfgsdf', 'gsdf', '1428070874'),
(81, 286, 'fg', 1, 'sdfgsdf', 'gsdf', '1428070876'),
(82, 286, 'fg', 2, 'sdfgsdf', 'gsdf', '1428070891'),
(83, 286, 'fg', 2, 'sdfgsdf', 'gsdf', '1428070892'),
(84, 286, 'fg', 2, 'sdfgsdf', 'gsdf', '1428070892'),
(85, 286, 'fg', 2, 'sdfgsdf', 'gsdf', '1428070892'),
(86, 287, 'ghsfdg', 1, 'ghdfg', 'hdfghdf', '1428070969'),
(87, 287, 'ghsfdg', 1, 'ghdfg', 'hdfghdf', '1428070971'),
(88, 287, 'ghsfdg', 1, 'ghdfg', 'hdfghdf', '1428070971'),
(89, 287, 'ghsfdg', 1, 'ghdfg', 'hdfghdf', '1428070972'),
(90, 288, 'gfh', 1, 'dfghdf', 'ghdfg', '1428071037'),
(91, 288, 'gfh', 1, 'dfghdf', 'ghdfg', '1428071038'),
(92, 288, 'gfh', 1, 'dfghdf', 'ghdfg', '1428071038'),
(93, 288, 'gfh', 3, 'dfghdf', 'ghdfg', '1428071120'),
(94, 288, 'gfh', 2, 'dfghdf', 'ghdfg', '1428071162'),
(104, 46, 'fgdf', 2, 'HD 720', '2 GB', '1428081045'),
(105, 46, 'http://allpeliculas.com/#movies/view/241', 1, 'HD 1080', '5 GB', '1428085236'),
(108, 46, 'http://allpeliculas.com/#movies/view/241', 4, 'HD 1080', '5 GB', '1428085244'),
(109, 46, 'http://allpeliculas.com/#movies/view/241', 5, 'HD 1080', '5 GB', '1428085246'),
(110, 46, 'http://allpeliculas.com/#movies/view/241', 6, 'HD 1080', '5 GB', '1428085248'),
(111, 46, 'http://allpeliculas.com/#movies/view/241', 7, 'HD 1080', '5 GB', '1428085251'),
(113, 291, '', 1, '1', '', '1429537350'),
(114, 293, '', 1, '1', '', '1429537574');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `regtime` int(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `rating` float NOT NULL,
  `ip` varchar(50) NOT NULL,
  `active` int(11) NOT NULL,
  `sex` enum('f','m','n') NOT NULL,
  `user_comments` text NOT NULL,
  `user_receive_mail` int(11) NOT NULL,
  `noshow_message_send` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `reg_from` int(11) NOT NULL,
  `fb_id` varchar(100) NOT NULL,
  `lastlogin` varchar(255) NOT NULL,
  `seentime` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `firstname`, `lastname`, `birthdate`, `location`, `regtime`, `password`, `status`, `rating`, `ip`, `active`, `sex`, `user_comments`, `user_receive_mail`, `noshow_message_send`, `avatar`, `reg_from`, `fb_id`, `lastlogin`, `seentime`) VALUES
(15, 'info@seek.ge', 'allvideos', 'Levan', 'Jmukhadze', '25/01/1987', 'Tbilisi', 2014, 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '', 1, 'f', '', 0, 0, '', 0, '0', '', '1421304156'),
(60, 'jmukhadzee@gmail.com', 'Levart Chanel', 'Levan', 'jmukhadze', '25-01-1987', 'Tbilisi', 2014, '67330e80a587efa41778d8fb2e30621d', 1, 0, '', 1, 'm', 'gf dfgd', 1, 1, '', 0, '0', '', '1421304156'),
(61, 'compleo25@gmail.com', '', 'levan', 'jmukhadze', '09-04-2014', 'Tbilisiggh', 2014, 'bc7629744fbd4fdd269426892d503bca', 2, 0, '', 1, 'f', '', 0, 0, '', 0, '0', '', '1421304156'),
(64, 'info@fix.ge', '', 'levan', 'ლილუაშვილი', '24-04-2014', 'Tbilisi', 2014, '8cd5b9ff2b64d901d1b0a7a53434b8a4', 0, 0, '', 1, 'f', '', 0, 0, '', 0, '0', '', '1421304156'),
(85, 'vampirsha25@gmail.com', 'Natia Khurtsidze', '', '', '12/25/1987', 'Tbilisi, Georgia', 1409246911, '6fa16ef1cbb4ccbe1f9dfce6e1462429', 0, 0, '', 0, 'f', '', 0, 0, '', 0, '341739882650734', '', '1421304156'),
(87, 'jmukhadze@gmail.com', 'Levan Jmukhadze', '', '', '01/25/1987', 'Tbilisi, Georgia', 1409413569, '6fa16ef1cbb4ccbe1f9dfce6e1462429', 0, 0, '', 0, 'm', '', 0, 0, '', 1, '10204593764346751', '1421100868', '1421304156'),
(89, 'giorgi.fafa@gmail.com', 'Giorgi Fafakerashvili', '', '', '', '', 1410214274, '6fa16ef1cbb4ccbe1f9dfce6e1462429', 0, 0, '', 0, 'm', '', 0, 0, '', 1, '521926824607043', '', '1421304156'),
(90, 'davita1050@mail.ru', 'Davit Davitashvili', '', '', '', '', 1411506877, '6fa16ef1cbb4ccbe1f9dfce6e1462429', 0, 0, '', 0, 'm', '', 0, 0, '', 1, '842158429150684', '', '1421304156'),
(91, 'uvonozu@rettmail.com', 'zexayeot', '', '', '1953-09-05', '', 0, 'fab789ba00797fc361a9229e1b9f1ea5', 0, 0, '', 0, '', 'http://viagra-genericbuy.com/ - Viagra Generic <a href="http://generic-viagradiscount.com/">Viagra Online</a> http://viagrapriceof.com/', 0, 0, '', 0, '', '', '1421304156'),
(92, 'hegure@erertmail.com', 'eculuyoqu', '', '', '1939-02-04', '', 0, 'f3452e3b346bf0bb16bb374943bbc04a', 0, 0, '', 0, '', 'http://viagra-genericbuy.com/ - Buy Viagra <a href="http://generic-viagradiscount.com/">Viagra Online</a> http://viagrapriceof.com/', 0, 0, '', 0, '', '', '1421304156'),
(93, 'allmovies.es@hotmail.es', 'Allpeliculas Allmovies', '', '', '01-01-1970', '', 1409935714, '67330e80a587efa41778d8fb2e30621d', 0, 0, '', 0, 'f', '', 0, 0, '0', 1, '360134197473993', '1421703778', '1421703832');

-- --------------------------------------------------------

--
-- Table structure for table `user_fav`
--

CREATE TABLE IF NOT EXISTS `user_fav` (
  `id` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vid` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_fav`
--

INSERT INTO `user_fav` (`id`, `videoid`, `userid`, `date`, `vid`, `type`) VALUES
(29, 198, 87, '2014-12-21 17:20:47', 0, 'videos'),
(33, 39, 87, '2014-12-21 17:59:22', 0, 'movies'),
(34, 342, 87, '2014-12-23 14:16:14', 0, 'videos'),
(35, 341, 87, '2014-12-23 14:16:15', 0, 'videos'),
(36, 340, 87, '2014-12-23 14:16:17', 0, 'videos'),
(37, 339, 87, '2014-12-23 14:16:18', 0, 'videos');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_d` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_k` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '0',
  `ganre` varchar(255) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date` int(50) NOT NULL,
  `video` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `vfile` varchar(255) NOT NULL,
  `quality` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `rating` float NOT NULL,
  `total_rating` float NOT NULL,
  `total_rates` int(11) NOT NULL,
  `ip_address` longtext CHARACTER SET utf8 NOT NULL,
  `active` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `desc` text NOT NULL,
  `size` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `dislike` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `meta_d`, `meta_k`, `image`, `ganre`, `add_date`, `date`, `video`, `vfile`, `quality`, `view`, `rating`, `total_rating`, `total_rates`, `ip_address`, `active`, `user`, `desc`, `size`, `likes`, `dislike`, `total`) VALUES
(98, 'Eminem - Guts Over Fear', 'Eminem - Guts Over Fear', 'Eminem, Sia, Guts Over Fear, Guts, Over, Fear, Rap, Aftermath, Records', '12314.jpg', '23', '2015-05-16 17:51:30', 1412939116, 'https://www.youtube.com/watch?v=-0zo3vbqJOE', '', 1, 128, 0, 0, 0, '', 1, 0, '', 301, 1, 0, 1),
(99, 'Chatroulette | Hombre con tetas y mas Hamijos', 'Chatroulette | Hombre con tetas y mas Hamijos', 'elrubius, elrubiusomg, rubius, comentario, comentado, español, risa, risas, lol, lolazo, rofl, lulz, locuras, locura, loco, chatroulette, chat, internet', '123124124.jpg', '13', '2015-01-13 18:40:15', 1412939448, 'https://www.youtube.com/watch?v=wzVsqezFNpA&list=PL438YTl8SZFBAMkcT0exP-XT5ikUSx1Nj', '', 1, 24, 0, 0, 0, '', 1, 0, '', 344, 0, 0, 0),
(100, 'Gold Digger Surprise Prank!', 'Gold Digger Surprise Prank!', 'vitaly, gold, digger, prank, surprise, funny, hilarious, lamborgihini, epic, grandmother, viral, crazy, owned, money, cars, hidden, camera, dont, like, girls', '12342143.jpg', '9', '2015-01-04 01:38:17', 1412941276, 'https://www.youtube.com/watch?v=qDdZHIuAzVQ&list=UU1KPy3cAAj0i0RIFC_SzjMg', '', 1, 25, 0, 0, 0, '', 1, 0, '', 72, 0, 0, 0),
(101, 'Picking Up Girls In A Lamborghini Without Talking!', 'Picking Up Girls In A Lamborghini Without Talking!', 'lamborghini, prank, beverly hills, crazy, hidden, camera, girls, exxotic, lambo, gold, digger, luxury cars, booty, boobs, vitalyzdtv', '12424234254.jpg', '9', '2015-01-04 01:38:33', 1412941525, 'https://www.youtube.com/watch?v=XbYNAZxcWh4&list=UU1KPy3cAAj0i0RIFC_SzjMg', '', 1, 21, 0, 0, 0, '', 1, 0, '', 195, 0, 0, 0),
(102, 'El ladron mas tonto del mundo', 'Idiot walks into a store to case the joint, and is satisfied he can rob this store. Idiot returns 15 minutes later, with an accomplice, wearing the SAME CLOT', 'al fondo hay sitio, al fondo hay sitio avance, los maldini, los gonzalez, americatvalfondo, afhs5, television peruana, america tv en vivo, interhdtv', '123234234.jpg', '13', '2015-01-21 04:27:36', 1412942520, 'https://www.youtube.com/watch?v=yxPdhQQDhrI', '', 1, 23, 0, 0, 0, '', 1, 0, '', 55, 0, 0, 0),
(103, 'Recopilacion de Gente con mucha suerte 2014 videos asombrosos', 'Gente con mucha suerte videos asombrosos del mundo, impresionante nunca visto', 'gente, con, mucha, suerte, Salvadas, vida, Los Suertudos, Salvadas de milagro, increible, asombrosos, videos, impresionante, Free, se salvan de morir', '0', '9,14,16', '2015-01-21 20:54:18', 1412943154, 'https://www.youtube.com/watch?v=58-W2VMmyjM', '', 1, 25, 0, 0, 0, '', 1, 0, 'Gente con mucha suerte videos asombrosos del mundo, impresionante nunca visto', 589, 0, 0, 0),
(104, 'Una rara demolición con un terrible final', 'No siempre se hacen demoliciones de edificios con explosivos, aquí están con una grúa de esas que tiene taladro y en un momento la cosa sale mal. Según parece el conductor de la grúa falleció (normal visto lo visto). Lo que no me explico es como no calcul', 'accidente, demolicion', '0', '29', '2015-01-15 18:06:59', 1412943544, 'https://www.youtube.com/watch?v=5KSrDz6mUuk', '', 1, 19, 0, 0, 0, '', 1, 0, 'No siempre se hacen demoliciones de edificios con explosivos, aquí están con una grúa de esas que tiene taladro y en un momento la cosa sale mal. Según parece el conductor de la grúa falleció (normal visto lo visto). Lo que no me explico es como no calculan que el edificio va a caer así si yo lo estaba pensando viendo el vídeo', 90, 0, 0, 0),
(105, 'Hombre muy borracho la lía en una tienda', 'Hombre muy borracho la lía en una tienda', 'hombre, borracho, dentro, tienda, shop, drunk, man', '0', '13', '2015-01-21 04:28:50', 1412943696, 'https://www.youtube.com/watch?v=v0SZ_w8bk_Y', '', 1, 22, 0, 0, 0, '', 1, 0, 'Hombre muy borracho la lía en una tienda', 212, 0, 0, 0),
(106, 'Kangaroo (Rémi GAILLARD)', 'Dangerously funny videos created and produced by Rémi GAILLARD.', 'remi, remy, gaillard, nsk, ns&amp;k, kangourou, nomade, fun, funny, awesome, amazing, impostor, imposture, montpellier, kangaroo', '0', '13', '2015-01-21 04:21:41', 1412943868, 'https://www.youtube.com/watch?v=81szj1vpEu8&list=PL9C86953042D1A8FA', '', 1, 31, 0, 0, 0, '', 1, 0, '', 230, 0, 0, 0),
(107, 'La paloma más grande Del mundo!', 'La paloma más grande Del mundo!', 'remi, gaillard, film, movie, teaser, trailer, Rémi Gaillard (Person), Film (Film), nicole ferroni, bande annonce, pigeon, mario, mario kart, pacman, kangaroo', 'R3452423.jpg', '9,11,13', '2015-01-21 04:24:25', 1412944778, 'https://www.youtube.com/watch?v=BNCoaKE4S7M&index=2&list=PL9C86953042D1A8FA', '', 1, 21, 0, 0, 0, '', 1, 0, '', 68, 0, 0, 0),
(108, 'Sumo (Rémi GAILLARD)', 'Dangerously funny videos created and produced by Rémi GAILLARD.', 'sumotori, rémi, remy, rémy, impostor, imposteur, gag, fun, tv, amazing, funny, awesome, france, montpellier, languedoc, roussillon', '13423432412.jpg', '13,16', '2015-01-22 06:15:21', 1412945009, 'https://www.youtube.com/watch?v=Nc9yr4urskA&list=UUmPSwsooZq8an7xOLQQhAdw', '', 1, 59, 0, 0, 0, '', 1, 0, '', 161, 0, 0, 0),
(109, 'Como pescar un gran pez en menos de 5 segundos', 'Como pescar un gran pez en menos de 5 segundos', 'remi, remy, gaillard, esquimau, amazing, fun, crazy, france, montpellier, languedoc, roussillon', '0', '11,13', '2015-01-21 21:57:01', 1412945404, 'https://www.youtube.com/watch?v=O2i1xc-szRs&list=UUmPSwsooZq8an7xOLQQhAdw', '', 1, 32, 0, 0, 0, '', 1, 0, 'Como pescar un gran pez en menos de 5 segundos', 66, 0, 0, 0),
(110, 'The snail (Rémi GAILLARD)', 'Dangerously funny videos created and produced by Rémi GAILLARD', 'remi, gaillard, gag, awesome, fun, funny, snail, animal, montpellier', '0', '13', '2015-01-16 22:06:10', 1412945619, 'https://www.youtube.com/watch?v=gHCxdlZ7G18&list=UUmPSwsooZq8an7xOLQQhAdw', '', 1, 19, 0, 0, 0, '', 1, 0, '', 39, 0, 0, 0),
(111, 'Russian Flying Tractor Racing - Offroad Race - Bison Track Show - Russia 2012', 'Russian Flying Tractor Racing - Offroad Race - Bison Track Show - Russia 2012', 'Race, Street, Moscow, Speedway, tractor, pulling, show, belarus, mtz, kirovets, car, race, racing, sport, flying, tractors, jump, offroad, 4 wheel drive', '0', '9', '2015-01-04 01:39:34', 1412945899, 'https://www.youtube.com/watch?v=nCehQQhowXk', '', 1, 23, 0, 0, 0, '', 1, 0, '', 358, 1, 0, 1),
(112, 'Russian Flying Truck Racing - Offroad Truck Race Russia - Bison Track Show', 'Russian Flying Truck Racing - Offroad Truck Race Russia - Bison Track Show', 'Race, Street, Moscow, Speedway, pulling, show, car, race, racing, sport, flying, jump, offroad, 4 wheel drive, 4wd, 4x4, speed, us, europe, Road, Mud, tractor', '1432234312.jpg', '9', '2015-01-04 01:39:33', 1412946201, 'https://www.youtube.com/watch?v=toSh17PkOHE&list=PLy30JuUcG9iijTdn7vo9Un_lZD5cY6DG6', '', 1, 19, 0, 0, 0, '', 1, 0, 'Russian Flying Truck Racing - Offroad Truck Race Russia - Bison Track Show', 265, 0, 0, 0),
(113, 'DAF 3300 4x4 TRUCK going offroad and getting stuck!', 'Nice Turbo Diesel powered 4x4 Truck playing around.', '4x4, offroad, nissan, patrol, volvo, c6c6, c303, c306, pinzgauer, mud, action, 4wd, katwijk, zanderij, 2012, 18, augustus, jeep, wrangler, CJ, WJ, XJ, Cherok', '23432535.jpg', '9', '2015-01-04 01:39:39', 1412946496, 'https://www.youtube.com/watch?v=oxIHIfd1bY0', '', 1, 24, 0, 0, 0, '', 1, 0, '', 227, 0, 0, 0),
(114, 'Scorpion Challenge 2014 - Manche 2', 'Scorpion Challenge 2014 - Manche 2', '4x4, offroad, nissan, patrol, volvo, c6c6, c303, c306, pinzgauer, mud, action, 4wd, katwijk, zanderij, jeep, wrangler, CJ, WJ, XJ, Cherokee, toyota, landcrui', 'Sin_título-1.jpg', '9', '2015-01-04 01:39:38', 1412946682, 'https://www.youtube.com/watch?v=bJTD5VJqpVg&list=UUMh2wKlqIPFSVcbuAPZ0CIQ', '', 1, 25, 0, 0, 0, '', 1, 0, '', 1335, 1, 0, 1),
(115, 'Videos graciosos, videos chistosos, golpes, caídas y bromas 2014 ', 'Videos graciosos, videos chistosos, golpes, caídas y bromas 2014 ', 'january, compilation, compilation album, musical genre, xvxtheatre, fail compilation, fail compilation best, epic win, month, monthly fail compilation', '12324234.jpg', '13', '2015-01-13 18:33:56', 1412969418, 'https://www.youtube.com/watch?v=jQg062XIpYI', '', 1, 21, 0, 0, 0, '', 1, 0, '', 710, 0, 0, 0),
(116, 'Mimo Chileno en Europa', 'Quien no a visto este mimo en el centro santiago, pucon, chillan, etc... y ahora en Europa', 'MIMO, HOMOR, humor, divertido, callejero, calle, ciudad, españa, chileno', '0', '13', '2015-01-19 17:41:19', 1412970021, 'https://www.youtube.com/watch?v=u4oKsI4wvjI', '', 1, 36, 0, 0, 0, '', 1, 0, 'Quien no a visto este mimo en el centro santiago, pucon, chillan, etc... y ahora en Europa', 782, 0, 0, 0),
(117, 'los perros mas graciosos de internet', 'Videos que dan risa (los perros mas graciosos de internet) - perros que dan risa - Especial animales', 'Perros Graciosos, Videos de Perros, Animales Divertidos, videos de animales, videos graciosos, videos de risa, perros ladrando, perros que hablan, mujeres', '124323423.jpg', '11,13', '2015-01-21 04:23:56', 1412970590, 'https://www.youtube.com/watch?v=8sBDj3EPPQA', '', 1, 27, 0, 0, 0, '', 1, 0, '', 325, 0, 0, 0),
(118, 'Leon vs Cocodrilo Pelea Real en Vivo', 'Leon Vs Cocodrilo - Leon se come un cocodrilo duelo animal', 'Leon, Vs, Cocodrilo, - Leon, se, come, un, cocodrilo, duelo animal 8, León VS Cocodrilo, leon vs cocodrilo', '1312423.jpg', '11', '2015-01-17 15:47:51', 1412971594, 'https://www.youtube.com/watch?v=S1__hG03AYE', '', 1, 20, 0, 0, 0, '', 1, 0, '', 68, 0, 0, 0),
(120, 'Las Mejores Paradas de Oliver Kahn', 'Las Mejores Paradas de Oliver Kahn', 'Oliver Kahn, Goalkepper, Parada, Bayern, FC Bayern Munich, Germany, Bavaria, Skills, Bundesliga, Soccer, Fußball-Bundesliga, Football', 'q12423424.jpg', '16', '2015-01-21 23:25:40', 1412972459, 'https://www.youtube.com/watch?v=EFaYcRfayOM', '', 1, 21, 0, 0, 0, '', 1, 0, 'Equipo: Retirado ; Karlsruher SC (1986 - 1994) , FC Bayern Munich (1994 - 2008).\nEdad: 42 (15 de Junio de 1969).\nLugar de Nacimiento: Karlsruhe, Alemania\nSeleccion Nacional : Alemania (C) 1994 - 2006.\nPosicion: Portero', 267, 0, 0, 0),
(122, 'Oliver Kahn, El Mejor Portero Del Mundo 2014 ', 'Oliver Kahn, El Mejor Portero Del Mundo 2014 ', 'Oliver Kahn (Football Player), FC Bayern Munich (Football Team)', '2142424.jpg', '16', '2015-01-13 04:10:19', 1412972937, 'https://www.youtube.com/watch?v=_jdxN_iZuKI', '', 1, 19, 0, 0, 0, '', 1, 0, '', 323, 0, 0, 0),
(123, 'Ronaldinho & Messi ● Las Mejores Jugadas y Goles', 'Ronaldinho & Messi ● Las Mejores Jugadas y Goles', 'Lionel Messi (Football Player), Ronaldinho (Football Player), Ronaldo, Messi &amp; Ronaldinho, Messi vs Ronaldinho who is the barcelona king, heilrj football', '1324242.jpg', '16', '2015-01-13 04:10:25', 1412973168, 'https://www.youtube.com/watch?v=2GqEy_j1LoY', '', 1, 17, 0, 0, 0, '', 1, 0, '', 1102, 0, 0, 0),
(124, 'Mike Tyson Knockouts Collection', 'Mike Tyson Knockouts Collection', 'mike tyson, mike tyson knockouts, boxing knockouts, ufc knockouts, mike tyson vs lennox lewis, mike tyson training, mike tyson knockout highlights', 'Sin_título-11.jpg', '26', '2015-01-21 04:26:29', 1412973516, 'https://www.youtube.com/watch?v=g-478QGV9pc', '', 1, 27, 0, 0, 0, '', 1, 0, '', 630, 0, 0, 0),
(125, 'Gente Asombrosa - Deportes Extremos', 'Deportes sumamente extremos y peligrosos en HD. No todo el video es de cosas peligrosas hay deportes divertidos pero se necesita mucha practica para poder imitar alguno de los deportes del video.', 'Gente Asombrosa, red, bull, Deportes Extremos, 2012, deportes extremos urbanos, gente increible, 2011', '134234.jpg', '14,16', '2015-01-21 22:02:42', 1412974388, 'https://www.youtube.com/watch?v=QmH1HLnLQeM', '', 1, 25, 0, 0, 0, '', 1, 0, 'Deportes sumamente extremos y peligrosos en HD. No todo el video es de cosas peligrosas hay deportes divertidos pero se necesita mucha practica para poder imitar alguno de los deportes del video.', 265, 0, 0, 0),
(126, 'Los mejores vídeos extremos. Deportes,adrenalina al máximo', '', 'increible, deportes, extremo, 2014, 2013, Balloon', '1232423.jpg', '14,16', '2015-01-21 22:45:26', 1412974775, 'https://www.youtube.com/watch?v=7ttRc1kpLcU', '', 1, 26, 0, 0, 0, '', 1, 0, '', 251, 0, 0, 0),
(127, 'Las Personas y Cosas mas Increíbles del Mundo!', 'Los vídeos mas increíbles del mundo', 'Persona, increible, sosprendente, mundo, mejor, video, 2014, 2013', '12334234.jpg', '14,26', '2015-01-22 04:15:56', 1412975015, 'https://www.youtube.com/watch?v=5OoG-qi7fPc', '', 1, 25, 0, 0, 0, '', 1, 0, 'Los vídeos mas increíbles del mundo', 215, 0, 0, 0),
(128, 'Dynamo, La magia dell''impossibile', 'Dynamo, La magia dell''impossibile', 'DYNAMO, italia, La, magia, impossibile, incredibile, mago, illusionista, trucchi, video, pazzesco', '1243535.jpg', '14,28', '2015-01-14 14:56:49', 1412975554, 'https://www.youtube.com/watch?v=fWtKF8glDX8', '', 1, 58, 0, 0, 0, '', 1, 0, '', 255, 1, 0, 1),
(129, 'Dsicoteca Revival ', 'Dsicoteca Revival, THE END Revival 2013', '', 'Sin_título-12.jpg', '23', '2015-01-04 01:25:34', 1412975944, 'https://www.youtube.com/watch?v=vD5tvKdjMj4', '', 1, 25, 0, 0, 0, '', 1, 0, '', 220, 0, 0, 0),
(130, 'Ramstein - Keine Lust', 'Ramstein - Keine Lust', 'Ramstein, Keine, Lust', '1265246313980_f.jpg', '23', '2015-01-21 04:30:25', 1413020140, 'https://www.youtube.com/watch?v=Y1st6O1tqII', '', 1, 24, 0, 0, 0, '', 1, 0, '', 359, 0, 0, 0),
(131, 'Top 10. Animales graciosos', 'Top 10. Animales graciosos', 'los, 10, animales, mas, graciosos', 'Sin_título-13.jpg', '11,13', '2015-01-11 16:33:56', 1413020428, 'https://www.youtube.com/watch?v=cfUXn8zcshI', '', 1, 27, 0, 0, 0, '', 1, 0, '', 244, 0, 0, 0),
(133, 'Videos de golpes y caidas chistosas', 'Videos de golpes y caidas chistosas', 'Caidas, videos, graciosos, 2013, sustos, divertidos, caidas, accidentes, Humor, bromas, graciosisimos, mejores, Terror, Borrachos, OSTIAZOS, dolor', 'Sin_título-14.jpg', '13', '2015-01-21 04:50:21', 1413021370, 'https://www.youtube.com/watch?v=wL3Ks9tlUr0', '', 1, 34, 0, 0, 0, '', 1, 0, '', 909, 0, 0, 0),
(134, 'Grua De gran tonelaje en apuros', 'Grua de gran tonelaje en apuros tras realizar un trabajo en el tajo de Ronda.', 'grua de gran tonelaje, accidente grua, maquina en apuros, crane liebherr, ronda, Derrick, of, great, tonnage, injures, derrick, schemes, in, the, suds', '0', '9', '2015-01-21 23:53:01', 1413034744, 'https://www.youtube.com/watch?v=Ygj_9W9dABQ', '', 1, 19, 0, 0, 0, '', 1, 0, '', 267, 0, 0, 0),
(135, 'UFC 169 Pelea, Ricardo Lamas vs Cub Swanson', 'UFC 169 Pelea, Ricardo Lamas vs Cub Swanson', 'UFC 169: Barao Vs. Faber II, Ricardo Lamas, Ultimate Fighting Championship (Organization), Cub Swanson (Martial Artist),', 'Sin_título-15.jpg', '26', '2015-01-17 19:51:35', 1413034960, 'https://www.youtube.com/watch?v=mSD5XMAdem0', '', 1, 25, 0, 0, 0, '', 1, 0, '', 721, 1, 0, 1),
(136, 'Vídeo de risa de encuentros graciosos de gatos vs perros.', 'Vídeo de risa de encuentros graciosos de gatos vs perros.', 'gatos, perros, gracioso, animales, videos de animales, videos graciosos, videos de risa, Animal, Dog, Humor, Cat, Animals, Dogs, Cats, Pets', '.jpg', '11,13', '2015-01-21 23:13:01', 1413035508, 'https://www.youtube.com/watch?v=1w4aCSXHTis', '', 1, 30, 0, 0, 0, '', 1, 0, '', 99, 0, 0, 0),
(137, 'Tutorial de como descargar e instalar Call of duty ghosts español 100% gratis', '', 'Call of duty ghosts, Call of duty, Tutorial de como descargar e instalar Call of duty ghosts, Call of duty ghosts español', 'Sin_título-16.jpg', '15,17', '2015-01-21 23:30:05', 1413035947, 'https://www.youtube.com/watch?v=pnrHg0VjZzw', '', 1, 36, 0, 0, 0, '', 1, 0, 'Link para descargar COD GHOSTS\nhttp://alljuegos.net/games/view/196', 281, 0, 0, 0),
(138, 'Accidentes de Camiones 2013', 'Accidentes de Camiones 2013', 'camiones, crash, Accident, Police, Crashes, truck, toyota, subaru, hino, rusia, peru, taxi, sexo, Rally, Car Crash, Race', '123124234.jpg', '9,29', '2015-01-14 06:41:25', 1413036197, 'https://www.youtube.com/watch?v=xJd6_GAdFNM', '', 1, 22, 0, 0, 0, '', 1, 0, '', 1977, 0, 0, 0),
(139, 'Cuerpo Nacional de Policía - La Película', 'Descubre como actúan nuestros compañeros de la Policía Nacional en la película - Reportaje de Callejeros, sin duda una gran inspiración para opositores de las fuerzas y cuerpos de seguridad del estado.', 'policia, seguridad, película, guardia, civil', 'Sin_título-17.jpg', '10', '2015-01-21 22:12:11', 1413036712, 'https://www.youtube.com/watch?v=YF3mBvw_AFo', '', 1, 18, 0, 0, 0, '', 1, 0, 'Descubre como actúan nuestros compañeros de la Policía Nacional en la película - Reportaje de Callejeros, sin duda una gran inspiración para opositores de las fuerzas y cuerpos de seguridad del estado.', 4800, 0, 0, 0),
(140, 'Policia 24 Horas -25/09/14- Completo', '', '', '131234242.jpg', '10', '2015-01-21 21:59:53', 1413037990, 'https://www.youtube.com/watch?v=oqDy_1pDo_M', '', 1, 16, 0, 0, 0, '', 1, 0, '', 3459, 0, 0, 0),
(141, 'Pelea en la calle y conductor loco', 'Pelea en la calle y conductor loco', 'pelea, conductor, loco, coches', '1432424.jpg', '9,29', '2015-01-21 22:00:48', 1413038790, 'https://www.youtube.com/watch?v=XHFNhV_Hmqw', '', 1, 23, 0, 0, 0, '', 1, 0, '', 151, 0, 0, 0),
(142, 'Motociclistas Agreden a Un Conductor y Termina De La Forma Más Inesperada !!!', 'Esta Persecución Y "Agresión" De Motociclistas A Un Conductor Termina De La Forma Más Inesperada... Acostumbrados a los videos de peleas en las calles de Rusia, esperábamos ver uno más, pero esto es lo que se llama un giro inesperado de los acontecimiento', '', 'Sin_título-18.jpg', '9', '2015-01-04 01:39:36', 1413039318, 'https://www.youtube.com/watch?v=R4APkHA2T_M', '', 1, 19, 0, 0, 0, '', 1, 0, 'Esta Persecución Y "Agresión" De Motociclistas A Un Conductor Termina De La Forma Más Inesperada... Acostumbrados a los videos de peleas en las calles de Rusia, esperábamos ver uno más, pero esto es lo que se llama un giro inesperado de los acontecimientos.', 149, 1, 0, 1),
(143, 'jodiendo policias lo mejor que vi en mi vida', '', 'jodiendo, policias, chistes, ecuador, peru, colombia, eeuu', '0', '9,10,29', '2015-01-21 22:32:09', 1413039889, 'https://www.youtube.com/watch?v=IdkF9huMqXQ', '', 1, 20, 0, 0, 0, '', 1, 0, '', 404, 0, 0, 0),
(144, 'Policia peleando en la calle alo MMA Muy bueno', 'El policia a pillado robando al tio y le dio una paliza ', '', '0', '10,26', '2015-01-22 01:39:32', 1413040186, 'https://www.youtube.com/watch?v=JBv-kqZMI7A', '', 1, 22, 0, 0, 0, '', 1, 0, '', 77, 0, 0, 0),
(145, 'Jeep Lamas 4x4 - (26/01/2014)', 'Jeep Lamas 4x4 - (26/01/2014)', 'Pista, MLT, 4x4, SkinOvelha, Skin, Ovelha, Lamas, Jipe, 26, 01, Janeiro, 2014, Offroad', '13234213.jpg', '9,14', '2015-01-18 07:40:08', 1413046176, 'https://www.youtube.com/watch?v=wTpJbAPJGp4', '', 1, 20, 0, 0, 0, '', 1, 0, '', 1794, 0, 0, 0),
(147, 'Extreme Trial Offroad 4x4 (Pure Engine Sound) 2014', 'Extreme Trial Offroad 4x4 (Pure Engine Sound) 2014', 'trial, 4x4, inverno, offroad, 2014, santo tirso, roriz, tturtle4x4, Trial 4x4, Extreme TT Off Road Insane Trial 4x4, Four-wheel Drive (Driveline), Mud', '12312423.jpg', '9,14', '2015-01-21 20:52:24', 1413046538, 'https://www.youtube.com/watch?v=64fh3Pgfj1k', '', 1, 21, 0, 0, 0, '', 1, 0, '', 782, 0, 0, 0),
(148, '4x4 Festival Brecht, Belgium', '4x4 Festival Brecht, Belgium', 'offroad, nissan, patrol, volvo, c6c6, c303, c306, pinzgauer, mud, action, 4wd, jeep, wrangler, CJ, WJ, XJ, Cherokee, toyota, landcruiser, landrover, defender', 'Sin_título-19.jpg', '9,14', '2015-01-22 02:20:45', 1413046811, 'https://www.youtube.com/watch?v=3bvHfsBI5wM', '', 1, 24, 0, 0, 0, '', 1, 0, '', 1092, 0, 0, 0),
(149, 'Paseo 4x4 San Cristobal 2014', 'El 5 de Enero 2014 en San Cristobal se realizo el primer paseo 4x4 del nuevo ano, participaron mas de 10 vehiculos incluyendo 4wheels y Moto Enduro, el evento fue organizado por el empresario Cesar Ramirez.', 'paseo4x4, paseo 4x4, san cristobal, comunidad4x4, rally, monteo, enduro, 4wheels, Four-wheel Drive', '13242.jpg', '9', '2015-01-04 01:39:35', 1413047094, 'https://www.youtube.com/watch?v=34UvxEZ6Bq0', '', 1, 18, 0, 0, 0, '', 1, 0, 'El 5 de Enero 2014 en San Cristobal se realizo el primer paseo 4x4 del nuevo ano, participaron mas de 10 vehiculos incluyendo 4wheels y Moto Enduro, el evento fue organizado por el empresario Cesar Ramirez.', 294, 0, 0, 0),
(150, 'Increíble video 2 Barcos de pesca en los mares muy agitados', '2 buques de pesca valiente el bar Río Grey estragos en plena inundación Greymouth Nueva Zelanda HD Video by Geoff Mackley y Ambrosio Bradley', 'BAR, Westport, greymouth, inundación, bradley, ambrose, geoff, Mackley, Gris, río, torrencial, lluvia, flash, de, pesca, recipiente, presión, ola', '242354.jpg', '14,16', '2015-01-17 07:58:52', 1413048375, 'https://www.youtube.com/watch?v=PnSDHnJTn5M', '', 1, 27, 0, 0, 0, '', 1, 0, '2 buques de pesca valiente el bar Río Grey estragos en plena inundación Greymouth Nueva Zelanda HD Video by Geoff Mackley y Ambrosio Bradley', 447, 1, 0, 1),
(151, 'Japan Tsunami 2011 - Ocean Overtops Wall', '', '2011 Tōhoku Earthquake And Tsunami (Disaster), 2011, japan, tsunami, tsunami japan 2011, japan tsunami 2011, tidal wave, massive, big, amazing, crazy', '3243124.jpg', '16', '2015-01-16 13:29:37', 1413048753, 'https://www.youtube.com/watch?v=j0YOXVlPUu4', '', 1, 17, 0, 0, 0, '', 1, 0, '', 890, 0, 0, 0),
(152, 'Wisin - Adrenalina ft. Jennifer Lopez, Ricky Martin', 'Wisin - Adrenalina ft. Jennifer Lopez, Ricky Martin', 'Wisin, feat., Jennifer, Lopez, Ricky, Martin, Adrenalina, Sony, Music, Latin, Urban', '1342453245.jpg', '23', '2015-01-21 04:30:57', 1413049317, 'https://www.youtube.com/watch?v=ME2Hufquz0k&list=PLFgquLnL59anUbTCum31nHshzm-3pAMP-', '', 1, 21, 0, 0, 0, '', 1, 0, '', 268, 0, 0, 0),
(153, 'Romeo Santos - Propuesta Indecente', '', 'Romeo, Santos, Propuesta, Indecente, Sony, Music, Latin, Tropical', '12342424.jpg', '23', '2015-01-04 01:25:34', 1413049523, 'https://www.youtube.com/watch?v=QFs3PIZb3js&list=PLFgquLnL59anUbTCum31nHshzm-3pAMP-&index=5', '', 1, 22, 0, 0, 0, '', 1, 0, '', 269, 0, 0, 0),
(154, 'Ricky Martin - Vida (Official)', '', 'Ricky, Martin, Vida, Sony, Music, Entertainment, Pop, Supersong, Super, Song, Elijah, King, World, Cup, Brazil, 2014, FIFA', '13242342.jpg', '23', '2015-01-16 22:16:44', 1413049842, 'https://www.youtube.com/watch?v=a3I7wBck0e4&index=6&list=PLFgquLnL59anUbTCum31nHshzm-3pAMP-', '', 1, 22, 0, 0, 0, '', 1, 0, '', 205, 0, 0, 0),
(155, 'Eminem - Love The Way You Lie ft. Rihanna', 'Eminem - Love The Way You Lie ft. Rihanna', 'Love The Way You Lie, Eminem, Rihanna, Recovery, Megan Fox, Dominic Monaghan', '423543245.jpg', '23', '2015-01-16 22:05:33', 1413050011, 'https://www.youtube.com/watch?v=uelHwf8o7_U', '', 1, 35, 0, 0, 0, '', 1, 0, '', 267, 0, 0, 0),
(156, 'Guns N'' Roses - November Rain', 'Guns N'' Roses - November Rain', 'Guns, N&#39;, Roses, Geffen, Rock, Axl Rose, Slash, Duff McKagen, Use Your Illusion, Stephanie Seymour', '1232424.jpg', '23', '2015-01-21 04:33:34', 1413050168, 'https://www.youtube.com/watch?v=8SbUC-UaAxE', '', 1, 44, 0, 0, 0, '', 1, 0, '', 548, 0, 0, 0),
(157, 'Rammstein - Mutter (Official Video)', 'Rammstein - Mutter (Official Video)', '"Video, Rammstein, Musik, Official, Till, Artjom, 1996', 'Sin_título-24323432.jpg', '23', '2015-01-21 18:48:40', 1413050375, 'https://www.youtube.com/watch?v=yvePEzdMI-M', '', 1, 25, 0, 0, 0, '', 1, 0, '', 227, 1, 0, 1),
(158, 'Rammstein - Ich Will', '', 'Ich, Will, Rammstein, video, Want, rock, alternative, world, music, teil, nazi, jew, necenzurat', '123242341.jpg', '23', '2015-01-21 04:30:30', 1413050534, 'https://www.youtube.com/watch?v=f4K6ZxDwi34', '', 1, 34, 0, 0, 0, '', 1, 0, '', 246, 0, 0, 0),
(159, 'Metallica - Nothing Else Matters (official video clip)', 'Metallica - Nothing Else Matters (official video clip)', 'metallica, else, matters, rock, videoclip, Nothing, Else, Matters, Metallica, (album), Music, Rock', '12342543.jpg', '23', '2015-01-21 04:34:57', 1413050832, 'https://www.youtube.com/watch?v=SzsDHtzx6tI', '', 1, 25, 0, 0, 0, '', 1, 0, '', 388, 0, 0, 0),
(160, 'Metallica - Nimes 2009  Full Concert', 'Metallica - Nimes 2009  Full Concert', 'Metallica, Francais, Pour, Une, Nuit, France, Nimes, 2009, Full, Concert, HD, YouTube', '12434535.jpg', '23', '2015-01-21 04:33:23', 1413051210, 'https://www.youtube.com/watch?v=nmAI6V6MrQE', '', 1, 22, 0, 0, 0, '', 1, 0, '', 7921, 0, 0, 0),
(161, 'Las Canciones Mas Escuchadas Del 2013 - 2014', 'Una recopilación de las canciones mas escuchadas y que hicieron tendencia en el 2013; POP / ELECTRÓNICA / BACHATA y mucho más.', '2013, 2014, mix, musica 2013, electrónica, pop, musica 2014, Remix (Industry), pop music, dance, las mejores canciones', '23435345.jpg', '23', '2015-01-04 01:25:38', 1413051515, 'https://www.youtube.com/watch?v=Is2aapXTMb8', '', 1, 20, 0, 0, 0, '', 1, 0, '', 7561, 0, 0, 0),
(162, 'Jennifer Lopez - First Love (Official Video)', 'Jennifer Lopez - First Love (Official Video)', 'Jennifer lopez, jlo, j lo, first love, aka', '12432453254.jpg', '23', '2015-01-21 04:33:27', 1413051761, 'https://www.youtube.com/watch?v=BfgoiYu9EUE&list=PLwaRBKK6-poWd3O7ZktSuIsWus2pRGyiB', '', 1, 19, 0, 0, 0, '', 1, 0, '', 303, 0, 0, 0),
(163, 'Shakira - La La La (Brazil 2014) ft. Carlinhos Brown', 'La La La is featured on Shakira''s new self-titled album. Shakira & Activia partner to support World Food Programme and its School Meals initiative, Find out more on activia.com - wfp.org/shakira -shakira.com. ', 'Shakira, La, (Brazil, 2014), RCA, Records, Label, Pop', '1232421.jpg', '23', '2015-01-16 22:11:18', 1413051987, 'https://www.youtube.com/watch?v=7-7knsP2n5w&list=PLwaRBKK6-poWd3O7ZktSuIsWus2pRGyiB&index=4', '', 1, 32, 0, 0, 0, '', 1, 0, '', 211, 0, 0, 0),
(164, 'Farruko - Passion Whine ft. Sean Paul', 'Farruko ft. Sean Paul - Passion Whine\nMusic video by Farruko, Sean Paul performing Passion Whine (Featuring Sean Paul). (C) 2014 Siente ', 'Farruko, Sean, Paul, Passion, Whine, (Featuring, Paul), Siente, Music, Latin', '222222222222222.jpg', '23', '2015-01-22 02:23:10', 1413052135, 'https://www.youtube.com/watch?v=MNmc_XJp5rI&index=5&list=PLwaRBKK6-poWd3O7ZktSuIsWus2pRGyiB', '', 1, 18, 0, 0, 0, '', 1, 0, '', 223, 0, 0, 0),
(165, 'Ñejo - Mujeres y Chavos ft. Ñengo Flow, Jetson "El Super", Sniper SP', 'Music video by Ñejo performing Mujeres y Chavos. © 2014 La Fama Allstars, LLC.', 'nejo, la fama allstars, mujeres y chavos, mujeres, chavos, jose ferrer, jose javy ferrer, javy ferrer, nengo flow, jetson el super, sniper lp, vevo, official', '1234242431.jpg', '23', '2015-01-21 04:30:21', 1413052568, 'https://www.youtube.com/watch?v=LRTSv3MxyB0&list=PLwaRBKK6-poWd3O7ZktSuIsWus2pRGyiB&index=7', '', 1, 20, 0, 0, 0, '', 1, 0, '', 263, 0, 0, 0),
(166, 'Cosculluela - Pa La Pared ft. Jowell Y Randy', 'Music video by Cosculluela performing Pa La Pared. (C) 2014 Nueva Kamada Corp. Under Exclusive License to Siente Musi', 'Cosculluela, Pa, La, Pared, Siente, Latin, Urban', '1324124214.jpg', '23', '2015-01-04 01:25:25', 1413052761, 'https://www.youtube.com/watch?v=ukXUDv7TI4k&index=8&list=PLwaRBKK6-poWd3O7ZktSuIsWus2pRGyiB', '', 1, 22, 0, 0, 0, '', 1, 0, '', 268, 0, 0, 0),
(167, 'De la Ghetto - Mirala (Official) ft. Zion, Farruko', 'Music video by De la Ghetto, Farruko performing Mirala feat. Farruko (Official). (C) 2014 Geezy Boyz Entertainment', 'De, la, Ghetto, Farruko, Mirala, feat., (Official), Geezy, Boyz, Entertainment, Latin', '1232342341.jpg', '23', '2015-01-21 04:31:01', 1413052944, 'https://www.youtube.com/watch?v=zN_KhfE82sY&index=9&list=PLwaRBKK6-poWd3O7ZktSuIsWus2pRGyiB', '', 1, 26, 0, 0, 0, '', 1, 0, 'Music video by De la Ghetto, Farruko performing Mirala feat. Farruko (Official). (C) 2014 Geezy Boyz Entertainment', 229, 0, 0, 0),
(168, 'Nyno Ft. Scorpion - Mi Mundo Es Asi ', 'Ya disponible el nuevo trabajo audiovisual de Nyno, esta vez en colaboracion con Scorpion, "Mi Mundo ', 'sbrecordstube, nyno, scorpion, mi mundo es asi, escucha a tu corazon, invicto, quiero ser, sin ropa, desde las 613, ya es tarde, nassim, diemc, nena muevelo', '1234234234.jpg', '23', '2015-05-17 01:37:19', 1413053437, 'https://www.youtube.com/watch?v=N3EdVdlCm10', '', 1, 97, 0, 0, 0, '', 1, 0, '', 207, 1, 0, 1),
(169, 'DYNAMO Magia Imposible #1', 'Imposible no es ni siquiera una palabra lo suficientemente fuerte como para describirlo.\nY su atractivo global es bien merecido para poner la calle en la calle de magia - y hacerlo todo con tal encanto tímido.', 'Magia, Dynamo, Magia Imposible', '123242342.jpg', '7', '2015-05-16 17:51:57', 1413062408, 'https://www.youtube.com/watch?v=uncR7psPGsA', '', 1, 92, 0, 0, 0, '', 1, 0, 'Imposible no es ni siquiera una palabra lo suficientemente fuerte como para describirlo.\nY su atractivo global es bien merecido para poner la calle en la calle de magia - y hacerlo todo con tal encanto tímido.', 417, 0, 0, 0),
(170, 'Top 5 De los Mejores Magos!', 'Top 5 Magician Auditions /Got Talent !', 'Top 5 Magician auditions on Got Talent, Magician auditions, Got Talent, Top 5, Magic (Field Of Study), Audition (Film Subject), Magic: The Gathering', '12342342.jpg', '7', '2015-01-22 01:16:39', 1413063304, 'https://www.youtube.com/watch?v=9y84Us1n0Wo', '', 1, 30, 0, 0, 0, '', 1, 0, '', 792, 0, 0, 0),
(172, 'El mago increible!', 'Smoothini: Bar Magician Flies Through Amazing Tricks Full Video - America''s Got Talent 2014', 'lillapodensblogg, lanbit, Got Talent (TV Program), America''s Got Talent (Recurring Competition), America''s Got Talent - Season 8 (Competition), Trick', '2094.jpg', '7', '2015-01-21 04:29:47', 1413063816, 'https://www.youtube.com/watch?v=rp3f4bxOz9Q', '', 1, 28, 0, 0, 0, '', 1, 0, '', 407, 0, 0, 0),
(173, 'Videos extremos del 2014', '', '', '0', '14,16', '2015-01-21 23:37:15', 1413065762, 'https://www.youtube.com/watch?v=K-hNenkFesg', '', 1, 21, 0, 0, 0, '', 1, 0, '', 273, 0, 0, 0),
(174, '¡No lo mires si tienes miedo a las alturas!', 'Dos chicos se emperran a lo más alto de una torre en construcción en Shangai. Temblarás del vértigo', 'shangai, torre, alto, vertigo, chicos, construcción, miedo, panico, altura', '123242343.jpg', '7,14,26', '2015-01-17 19:47:22', 1413066362, 'https://www.youtube.com/watch?v=ERxwRTtDvQc', '', 1, 34, 0, 0, 0, '', 1, 0, 'Dos chicos se emperran a lo más alto de una torre en construcción en Shangai. Temblarás del vértigo', 320, 1, 0, 1),
(175, 'What''s up Hong Kong?', 'During our last visit in Hong Kong, not only did we take a lot of awesome pictures, but we also made a video which was shot a few hours before our flight to Tokyo. The venue is the very heart of Hong Kong, a skyscraper with a huge billboard.\n', 'illigaly, climb, china, Hong Kong (Country), urbanexploration, urbex, rooftop, ontheroofs', '12324234121.jpg', '7,14,26', '2015-01-21 04:29:39', 1413067035, 'https://www.youtube.com/watch?v=jJkuCzgg7fo&list=UUiBCfXg5HoSxWQ9vMXUJbgg', '', 1, 24, 0, 0, 0, '', 1, 0, '', 256, 0, 0, 0),
(176, 'Los tios mas locos del mundo (560M)', 'The bridge on the Island Russkiy', 'Раскалов, владивосток, атэс, саммит, мост, остров русский, руферы, raskalov, verticals', '1232423424.jpg', '14', '2015-01-21 23:42:26', 1413067476, 'https://www.youtube.com/watch?v=diDLgFvq7bo&index=5&list=UUiBCfXg5HoSxWQ9vMXUJbgg', '', 1, 24, 0, 0, 0, '', 1, 0, '', 185, 0, 0, 0),
(177, '¿Los rusos están locos?', 'A compilation of clips highlighting the craziness of the no-fucks-given capital of the world: Russia', 'meanwhile in russia, fail compilation 2012, 2k12, pain, drunk, failure, epic, lol, fun, funny, ownage, owned, powned, Epic Fail, Fails, accident, tractor', 'Sin_título-110.jpg', '9,14,29', '2015-01-22 04:25:23', 1413068953, 'https://www.youtube.com/watch?v=Jo7V5q4-JtI', '', 1, 22, 0, 0, 0, '', 1, 0, '', 200, 0, 0, 0),
(178, 'Este video te hará sentir vértigo con sólo verlo rusos locos sin miedo a las alturas', 'Crazy Russians', 'jportdev, crazy stunts, rusians, Cool, Crazy, Pain, Amazing, Insane, developmen, mobile aps, web, danger, crazy, russians, altura, rusos, locos, peligro', '123424.jpg', '14', '2015-01-17 07:59:02', 1413069631, 'https://www.youtube.com/watch?v=VK_sgbeWlRw', '', 1, 23, 0, 0, 0, '', 1, 0, '', 245, 1, 0, 1),
(179, 'es increible! ', 'es increible! ', 'jovenes, rusos, arriesgan, su, vida, torres, muertes, accidentes, altura, vertigo, suspenso, miedo, escalofrio, caidas, gimnasia, rusia', '3242343245.jpg', '14', '2015-01-21 11:22:04', 1413109569, 'https://www.youtube.com/watch?v=VVNDKCP8hJQ&list=UU9EVu0niTW_GOmCc8E7mL6A', '', 1, 26, 0, 0, 0, '', 1, 0, '', 229, 0, 0, 0),
(180, 'Battlefield 4 Gameplay ', 'Battlefield 4 Gameplay ', 'Battlefield 4, BF4, Gameplay, Walkthrough, Walkthrough Part 1, Battlefield 4 Gameplay, Battlefield 4 Walkthrough, Battlefield 4 Walkthrough Part 1, Battlefie', 'Sin_título-111.jpg', '17', '2015-01-13 04:11:05', 1413110718, 'https://www.youtube.com/watch?v=Mk4BHAtRz1s', '', 1, 17, 0, 0, 0, '', 1, 0, '', 1859, 0, 0, 0),
(181, 'Spintires: 2014 Gameplay en Español, Simulador De Camiones ', '', 'Transporting Logs, Vehicle (Product Category), Logging Truck, SPINTIRES 2014, Spin Tires 2014, SPINTIRES, Epic Video Game, Realistic terrain deformation, hav', '2143234354.jpg', '17', '2015-01-21 18:49:52', 1413111862, 'https://www.youtube.com/watch?v=b1HislnnuLw', '', 1, 18, 0, 0, 0, '', 1, 0, '', 698, 0, 0, 0),
(182, 'Top 3 Bromas de todos los tiempos!', 'Top 3 Pranks of All Time Subscribe for the funniest videos................', 'Funny, Hilarious, Pranks, Top 3, Commercials, Commercial Pranks, Funny Commercials, Epic Pranks, Top 3 Pranks of All Time, Top 3 Funniest Commercial Pranks', '0', '13', '2015-01-21 04:22:41', 1413113569, 'https://www.youtube.com/watch?v=JcqPBvzdHkU', '', 1, 27, 0, 0, 0, '', 1, 0, '', 357, 0, 0, 0),
(183, 'Epic Elevator Prank', 'Epic Elevator Pranks Epic Murder Social Experiment Subscribe for more funny pranks!', 'Epic Prank, Social Experiment, Funny, Funniest, Epic, Epic Pranks, Experiment, Elevator, Funny Pranks, Funniest Pranks, Comedy, Murder Prank, Top Prank', '213442342.jpg', '13', '2015-01-09 11:29:48', 1413113984, 'https://www.youtube.com/watch?v=1olfjb8OYy8&list=UUjmG9pnCGCeird0UU0pQhBA', '', 1, 25, 0, 0, 0, '', 1, 0, '', 99, 0, 0, 0),
(184, 'Broma Mortal Kombat en el Ascensor', 'Broma Mortal Kombat en el Ascensor', 'fouseytube, fousey, funny, comedy, laugh, funny videos, jokes, humor, entertainment, prank, yoga pants prank, mortal kombat prank, mortal kombat theme musi', '1343241341.jpg', '13', '2015-01-21 04:32:23', 1413114795, 'https://www.youtube.com/watch?v=1W8hsVvyKt4', '', 1, 39, 0, 0, 0, '', 1, 0, '', 158, 0, 0, 0),
(185, 'Las Mejores Bromas Del 2014', 'New Best Scary Pranks Compilation July 2014', 'New Best Scary Pranks Compilation July 2014, New Best Scary Pranks Compilation, New Best Scary Pranks Compilation 2014, BIGGEST SCARE PRANK EVER, Russian Hit', '1234234.jpg', '13', '2015-01-21 04:28:55', 1413117311, 'https://www.youtube.com/watch?v=ONRWOQiZW0o', '', 1, 31, 0, 0, 0, '', 1, 0, '', 493, 0, 0, 0),
(186, 'La Tecnología del Futuro Hoy', 'La Tecnología del Futuro Hoy', 'wings network en espanol, desarrollo de lideres, era digital,', '1232342424.jpg', '19', '2015-01-17 07:22:13', 1413118653, 'https://www.youtube.com/watch?v=14UdiF4slpU', '', 1, 14, 0, 0, 0, '', 1, 0, '', 1561, 0, 0, 0),
(187, 'Piramides de Egipto ,Verdad Revelada', '¿Estás preparado para cambiar tu visión sobre el pasado?\nLa Gran Pirámide de Guiza es una de las 7 maravillas del Mundo Antiguo.\nLa única de dichas maravillas que sigue en pie hoy en día.\nEsta es una historia sobre preguntas perturbadoras y respuestas inc', '', '1234242344.jpg', '19', '2015-01-17 05:53:44', 1413119154, 'https://www.youtube.com/watch?v=Gl_yvuEcIRQ', '', 1, 17, 0, 0, 0, '', 1, 0, '¿Estás preparado para cambiar tu visión sobre el pasado?\nLa Gran Pirámide de Guiza es una de las 7 maravillas del Mundo Antiguo.\nLa única de dichas maravillas que sigue en pie hoy en día.\nEsta es una historia sobre preguntas perturbadoras y respuestas increíbles.\nUna historia que desafía todo lo que sabemos sobre la historia de nuestro planeta.', 6112, 0, 0, 0),
(188, '5 comerciales para cagarse de la risa', 'eztan buenos XD', 'metedura, de, pata, parodia, bromas, gracioso, chistoso, chistosos, comercial, comerciales, anuncio, anuncios, risa, ocio"', '0', '13', '2015-01-07 14:53:58', 1413119859, 'https://www.youtube.com/watch?v=072vALW7bdE', '', 1, 27, 0, 0, 0, '', 1, 0, '', 147, 0, 0, 0),
(189, 'Real need for spped BMW M5 ¡este tio es Increible!', 'Real need for spped ¡este tio es Increible!', 'BMW M5 (Automobile Model), bmw, m5, giorgi tevzadze, oom-500, oom500, street racing, streetracing, drift, streetdrift, street drift, street', '324234234.jpg', '9,14', '2015-01-12 10:34:20', 1413120467, 'https://www.youtube.com/watch?v=gpAzXqIcWzc', '', 1, 47, 0, 0, 0, '', 1, 0, '', 605, 0, 0, 0),
(190, 'Europe - Carrie', 'Music video by Europe performing Carrie. (C) 1986 SONY BMG MUSIC ENTERTAINMENT', 'Europe, Epic, Pop', '122134234234.jpg', '23', '2015-01-21 04:30:42', 1413120926, 'https://www.youtube.com/watch?v=KmWE9UBFwtY', '', 1, 23, 0, 0, 0, '', 1, 0, 'Music video by Europe performing Carrie. (C) 1986 SONY BMG MUSIC ENTERTAINMENT', 271, 0, 0, 0),
(191, '2pac - Changes (Official Video)', 'Probably the greatest song ever! Changes by Tupac', 'Tupac, Changes, Neso, rip, greatest, rapper, life, see, no, changes', '1324241.jpg', '23', '2015-01-09 15:23:48', 1413121318, 'https://www.youtube.com/watch?v=nay31hvEvrY', '', 1, 19, 0, 0, 0, '', 1, 0, '', 294, 1, 0, 1),
(192, '2Pac - Ghetto Gospel', '2Pac - Ghetto Gospel', '2Pac, Ghetto, Gospel, Amaru, Hip, Hop', '1234ddddddddddddd23423423.jpg', '23', '2015-01-21 04:33:04', 1413121469, 'https://www.youtube.com/watch?v=Do5MMmEygsY', '', 1, 46, 0, 0, 0, '', 1, 0, '', 266, 0, 0, 0),
(193, '50 Cent - In Da Club (Int''l Version)', '50 Cent - In Da Club (Int''l Version)', '50, Cent, Shady, Records, Pop', '12323424241.jpg', '23', '2015-01-16 22:07:16', 1413121704, 'https://www.youtube.com/watch?v=5qm8PH4xAss', '', 1, 52, 0, 0, 0, '', 1, 0, '', 250, 0, 0, 0),
(194, 'Bus lleno de gente cae al río crecido', 'Un colectivo intenta cruzar un río crecido y es arrastrado por la corriente con todos sus pasajeros adentro.', '"bus, colectivo, accidente, ahogados, inundación, caer, seguro, inhundacion, muertos, sobrevivientes, swollen, river, Water, agua, mueren, gente', '13214324.jpg', '9,29', '2015-01-16 04:30:45', 1413122207, 'https://www.youtube.com/watch?v=MIuBIAXYZsQ', '', 1, 56, 0, 0, 0, '', 1, 0, 'Un colectivo intenta cruzar un río crecido y es arrastrado por la corriente con todos sus pasajeros adentro. Pocos sobrevivieron.', 31, 0, 0, 0),
(195, 'Rio se lleva un carro y a una persona increíble !', 'No lo puedo creer ni lo mires. El agua del rio se llevo a dos camioneta 4x4. Ademas de una persona que pudo salvarse.', 'No lo puedo creer, rios, asombroso, aguas, increible, curiosidad, se lo llevo, ni lo mires, actos, peligro', '0', '29', '2015-01-15 18:07:19', 1413122472, 'https://www.youtube.com/watch?v=Zfl3pjGOeoM', '', 1, 17, 0, 0, 0, '', 1, 0, '', 250, 0, 0, 0),
(196, 'Bus cae al abismo en la Ruta de la muerte en Bolivia ', 'Accidente del bus que cae (al intentar atravesar un deslave) en la llamada "Ruta de la muerte" o de los Yungas en Bolivia en el 2011. \nEste es un video desde otra cámara que tiene una mejor imagen y se ve más claramente el accidente.\nSe sabe que el chofer', 'bus cae, ruta de la muerte, Bolivia', '0', '29', '2015-01-16 09:10:03', 1413122592, 'https://www.youtube.com/watch?v=M7eVLRthw9Q', '', 1, 17, 0, 0, 0, '', 1, 0, 'Accidente del bus que cae (al intentar atravesar un deslave) en la llamada "Ruta de la muerte" o de los Yungas en Bolivia en el 2011. \nEste es un video desde otra cámara que tiene una mejor imagen y se ve más claramente el accidente.\nSe sabe que el chofer murió y no había nadie más en el bus.', 73, 0, 0, 0),
(197, 'El increíble Pueblo ', 'Un lugar increible en un pueblo soñado', 'Tusheti (Location), тушети, official video, film tusheti, tusheti 2013, tusheti 2012, tusheti 2011, omalo, georgia, georgia tusheti, levani tavberidz', '31234242342.jpg', '27', '2015-01-16 09:55:16', 1413123032, 'https://www.youtube.com/watch?v=VgdCIqNS64o', '', 1, 17, 0, 0, 0, '', 1, 0, '', 131, 0, 0, 0),
(198, 'El Camino del Rey', '', 'Spain, El, Camino, Del, Rey, magic, rock, climbing, fear, heights, cliff, near, death, dangerous, hike, el, chorro, adventure, michael, darius, politics, hig', '4234234213424.jpg', '14,27', '2015-05-16 17:52:21', 1413123791, 'https://www.youtube.com/watch?v=y1Nd1qtk1Go', '', 1, 70, 0, 0, 0, '', 1, 0, '', 568, 0, 0, 0),
(199, 'La ciudad Oculta De Petra', 'Petra (en árabe, البتراء al-Batrā´) es un importante enclave arqueológico en Jordania, y la capital del antiguo reino nabateo. El nombre de Petra proviene del griego πέτρα que significa piedra, y su nombre es perfectamente adecuado; no se trata de una ciu', 'La ciudad,Oculta,De Petra', '1234234242.jpg', '19,27', '2015-01-17 05:46:28', 1413125826, 'https://www.youtube.com/watch?v=sQHVnqdQFrg&list=UUGXx-XqBkD4AIDnKNO2GoMg', '', 1, 20, 0, 0, 0, '', 1, 0, 'Petra (en árabe, ??????? al-Batr?´) es un importante enclave arqueológico en Jordania, y la capital del antiguo reino nabateo. El nombre de Petra proviene del griego ????? que significa piedra, y su nombre es perfectamente adecuado; no se trata de una ciudad construida con piedra, sino, literalmente, excavada y esculpida en la piedra.', 2756, 0, 0, 0),
(200, 'Egipto: libro de los muertos', 'Egipto: libro de los muertos', 'edad, antigua, egi[pto, religión, cultura, escriba, libro, muertos, documental, historia', '32424234.jpg', '19,27', '2015-01-17 07:38:59', 1413125980, 'https://www.youtube.com/watch?v=-hi6h1lGlvM', '', 1, 22, 0, 0, 0, '', 1, 0, '', 5426, 0, 0, 0),
(201, 'Latina Bailando Samba', 'Gorgeous Dominican Beauty with a very hot body, dancing slow and sexy to beautiful guitar strumming and soloing. All original content.', 'Dancing, Amazing, Ass, Latina, Dominican, Dominicana, Latina Ass, Twerk, Twerking, Booty, Beautiful Ass, Beautiful Woman, Beautiful', 'hqdefault.jpg', '7,23', '2015-05-16 17:51:27', 1413126521, 'https://www.youtube.com/watch?v=dgACs07dEQw', '', 1, 156, 0, 0, 0, '', 1, 0, '', 134, 3, 0, 3),
(202, 'Nature & Animals', 'Nature & Animals', 'Nature, Animals, 1080p, HD', '323423432.jpg', '11', '2015-01-15 18:09:08', 1413127302, 'https://www.youtube.com/watch?v=pA9QUnloZtw', '', 1, 16, 0, 0, 0, '', 1, 0, '', 599, 0, 0, 0),
(203, 'Planeta Tierra: Hermosos Paisajes de la naturaleza', 'Existen variadas acciones que podemos realizar día a día para ayudar a conservar el planeta y así poder llevar una relación equilibrada con la naturaleza. Esto no se trata de una lucha entre desarrollo y naturaleza o entre el hombre y las demás especies', '', '4324234234.jpg', '11', '2015-01-15 18:09:14', 1413127770, 'https://www.youtube.com/watch?v=edAD0yrPTYo', '', 1, 18, 0, 0, 0, '', 1, 0, '', 286, 0, 0, 0),
(204, 'Impresionante lapso de tiempo nocturno', 'La belleza a través del tiempo de las tormentas nocturas, la aurora y la vía láctea', 'TimeLapseHD, time, lapse, timelapse, time-lapse, 4K, resolution, Nikon, DSLR, night, video, exposure, cool, stop, motion, control, pixelation, HD, high, defi', '1232423414.jpg', '11', '2015-01-15 18:09:21', 1413128136, 'https://www.youtube.com/watch?v=suWsd372pQE', '', 1, 18, 0, 0, 0, '', 1, 0, 'La belleza a través del tiempo de las tormentas nocturas, la aurora y la vía láctea', 259, 0, 0, 0),
(205, 'Tim cameron 2011', 'Follow us on Facebook at https://www.facebook.com/MadRam11 MADRAM11 T-Shirts, Dvds, Hoodies', 'Tim Cameron, showtime, timmie, timmie cameron, aetna buggy, fatgirl, pink, jimmy smith motorsports, trucks, gone wild, monster jam, freestyle, insane, extrem', '123242344.jpg', '9,14', '2015-01-21 22:16:56', 1413147327, 'https://www.youtube.com/watch?v=GzXVLbs41Ew', '', 1, 40, 0, 0, 0, '', 1, 0, '', 413, 0, 0, 0),
(206, 'Así es el cementerio de los submarinos del narcotráfico', 'Tras un hallazgo en el 2011, la Policía antinarcóticos dijo que las Farc estaban haciendo semisumergibles para el Cartel de Sinaloa. Cada aparato lo vendían en cerca de tres mil millones de pesos.', 'Semisumergibles, Buenaventura, Cali, El Pais, Colombia, Armada, Fragata, Guardacostas', '0', '10', '2015-01-22 04:03:11', 1413148502, 'https://www.youtube.com/watch?v=mxskCP_8dBA', '', 1, 20, 0, 0, 0, '', 1, 0, 'Tras un hallazgo en el 2011, la Policía antinarcóticos dijo que las Farc estaban haciendo semisumergibles para el Cartel de Sinaloa. Cada aparato lo vendían en cerca de tres mil millones de pesos.', 258, 0, 0, 0),
(209, 'UFC Werdum vs Nelson 2014', 'Fabricio Werdum volvía a UFC tras un paso histórico por Strikeforce para enfrentarse al siempre duro Roy Nelson en un choque de verdadero poder.', 'Fabricio Werdum (Martial Artist), Ultimate Fighting Championship (Organization), mma, Roy nelson, UFC fight Night, Orlando, FOX 11, UFC Network, pelea gratis', '0', '26', '2015-01-18 17:10:00', 1413149459, 'https://www.youtube.com/watch?v=JIioj06cz8E', '', 1, 23, 0, 0, 0, '', 1, 0, 'Fabricio Werdum volvía a UFC tras un paso histórico por Strikeforce para enfrentarse al siempre duro Roy Nelson en un choque de verdadero poder.', 1515, 0, 0, 0),
(210, 'Top 10 UFC Momentos Del 2012', 'Una recopilación de los mejores momentos del Ufc en el 2012.', 'Mixed Martial Arts (Martial Art), Anderson Silva (Martial Artist), UFC 10 (Event), Martial Arts (Sport), Ultimate Fighting Championship (Sports Association)', '0', '26', '2015-01-17 19:50:44', 1413149640, 'https://www.youtube.com/watch?v=sbNpCxCxyiw', '', 1, 26, 0, 0, 0, '', 1, 0, 'Una recopilación de los mejores momentos del Ufc en el 2012.', 489, 0, 0, 0),
(214, 'UFC 172: Fight Motion', 'The UFC''s Fight Motion Cam captures the biggest hits of UFC 172 in super slow-mo.', 'ufc, 172, fight, motion, camera, cam, super, slow, mo, captures, jon, jones, glover, teixeira, mma, light heavyweight, title, Ultimate Fighting Championship', '0', '26', '2015-01-19 14:02:00', 1413151061, 'https://www.youtube.com/watch?v=OOmxZdHjOLo', '', 1, 19, 0, 0, 0, '', 1, 0, '', 134, 0, 0, 0),
(215, 'Badr Hari VS Alistair Overeem K-1 World GP 2009', 'Badr Hari VS Alistair Overeem K-1 World GP 2009', 'Badr, Hari, VS, Alistair, Overeem, K-1, World, GP, 2009, Semi, Final, HD, Fight, Knockout, TKO, KO, Strikeforce, MMA, Muay, Thai, UFC, Grand, Prix, Holland', '1231342342423333333.jpg', '26', '2015-01-17 19:50:25', 1413151284, 'https://www.youtube.com/watch?v=OWK_qOkpocc', '', 1, 23, 0, 0, 0, '', 1, 0, '', 549, 0, 0, 0),
(216, 'Fedor Emilianenko el mejor luchador de MMA de la historia', 'Fedor Emilianenko el mejor luchador de MMA de la historia \neste tio es muy grande el recor mundial lo tiene el con 30 vitorias y una sola derrota ( y fue por que se izo un corte en la frente con lo que los juezes no le dejaron que siguiera con el combate ', 'fedor, emilianenko, pride, ko', 'B85A16EC5.jpg', '26', '2015-01-18 15:17:26', 1413152367, 'https://www.youtube.com/watch?v=DkEvnQ1yAA8', '', 1, 24, 0, 0, 0, '', 1, 0, 'Fedor Emilianenko el mejor luchador de MMA de la historia \neste tio es muy grande el recor mundial lo tiene el con 30 vitorias y una sola derrota ( y fue por que se izo un corte en la frente con lo que los juezes no le dejaron que siguiera con el combate ) el tio con su barrigita ha sido considerado como el mejor peleador de los pesos completos del mundo en los últimos 6 años por publicaciones importantes como ESPN, The Orange County Register, The Fight Network, The Houston Chronicle, Sherdog.com, The Wrestling Observer Y el Inside MMA. También es considerado como el mejor peleador de todos los tiempos a través de todas las categorías de peso por el experto panel del programa Inside MMA.\n\nHa ganado varios premios y torneos en múltiples deportes, siendo el más notable el PRIDE 2004 Grand Prix y el World Combat Sambo Championship en cuatro ocasiones, así también como medallas en el torneo nacional de Judo', 638, 0, 0, 0),
(217, 'Fedor Emelianenko vs. Pedro Rizzo', 'Fedor vs. Rizzo', 'Fedor vs. Rizzo', '0', '26', '2015-01-17 19:50:28', 1413153088, 'https://www.youtube.com/watch?v=tbps58KG84A', '', 1, 17, 0, 0, 0, '', 1, 0, '', 1550, 0, 0, 0),
(218, 'James Thompson vs Alexandru Lungu', 'James Thompson vs Alexandru Lungu', 'James Thompson (Martial Artist), Alexandru Lungu, mma, Mixed Martial Arts (Martial Art)', '2423423424.jpg', '26', '2015-01-17 19:50:22', 1413153372, 'https://www.youtube.com/watch?v=xkpY-qEDQ2U', '', 1, 20, 0, 0, 0, '', 1, 0, '', 416, 0, 0, 0),
(219, 'Bobby lashley Vs James Thompson', 'Bobby lashley Vs James Thompson', 'JAMES, THOMPSON, BOBBY, Mixed, martial, Arts, MMA', '1232424324.jpg', '26', '2015-01-17 19:50:15', 1413153631, 'https://www.youtube.com/watch?v=sA5C4qNyhQU', '', 1, 16, 0, 0, 0, '', 1, 0, '', 2016, 0, 0, 0),
(220, 'Terrible pelea de la UFC... Don frye Vs Yoshihiro takayama', 'Esta es una de las peleas mas salvajes que vi en mi vida, si no la vieron, tienen que verla ', 'jaru, swiatek, productions, mma, don, frye, yoshihiro, takayama, pride, mixed, martial, arts, ring, war', '1232342342.jpg', '26', '2015-01-17 19:50:13', 1413154128, 'https://www.youtube.com/watch?v=sqhKkyRvgjA', '', 1, 28, 0, 0, 0, '', 1, 0, 'Esta es una De las peleas mas salvajes que vi en mi vida, si no la vieron, tienen que verla ', 113, 0, 0, 0),
(221, 'Bob Sapp vs Kimo (k-1, mma, muay thai fighting, 2013 year)', 'Fight video 2013 year - Bob Sapp vs Kimo', 'Kimo, Bob Sapp (American Football Player), Mixed Martial Arts (Martial Art), Muay Thai (Martial Art), K-1 (Organization), Combat (Media Genre), Boxing', '0', '26', '2015-01-14 06:13:41', 1413154744, 'https://www.youtube.com/watch?v=3CguTRDDUNI', '', 1, 36, 0, 0, 0, '', 1, 0, '', 531, 0, 0, 0);
INSERT INTO `videos` (`id`, `title`, `meta_d`, `meta_k`, `image`, `ganre`, `add_date`, `date`, `video`, `vfile`, `quality`, `view`, `rating`, `total_rating`, `total_rates`, `ip_address`, `active`, `user`, `desc`, `size`, `likes`, `dislike`, `total`) VALUES
(222, 'Fedor Emelianenko vs. Jeff Monson ', 'Fedor Emelianenko vs. Jeff Monson ', 'ММА, миксфайт, смешанные единоборства, mma, video, mma video, sports, mixed martial arts, boxing, emelianenko, емельяненко, м-1, м-1 глобал, м1 глобал, m-1,', '0', '26', '2015-01-17 19:49:35', 1413155130, 'https://www.youtube.com/watch?v=btLwmYi-rSM', '', 1, 41, 0, 0, 0, '', 1, 0, '', 541, 0, 0, 0),
(223, '¿¿Lo cogio?? impresionante reportaje en LLiria, Peña el Quiebro', '¿¿Lo cogio?? impresionante reportaje en LLiria, Peña el Quiebro', 'Toros, toros y pueblos, bous al carrer, cerriles, bullfighting, toro bravo, bouslapopular, ganaderías, stierkampf, dvd toros, toros salva mari, calidad hd', '0', '11,14', '2015-01-17 07:01:07', 1413654790, 'https://www.youtube.com/watch?v=Zvo3FaTUIbs', '', 1, 14, 0, 0, 0, '', 1, 0, '', 806, 0, 0, 0),
(224, 'El recorte de oro, plaza de toros de Valencia!', 'El recorte de oro, plaza de toros de Valencia!', 'Toros, toros y pueblos, bous al carrer, cerriles, bullfighting, toro bravo, bouslapopular, ganaderías, stierkampf, dvd toros, toros salva mari, calidad hd', '0', '11,14', '2015-01-17 07:59:06', 1413655038, 'https://www.youtube.com/watch?v=gZy8VzT3MME', '', 1, 17, 0, 0, 0, '', 1, 0, '', 430, 0, 0, 0),
(225, 'Impresionante!!! reportaje. Que TOROS mas guapos', 'Impresionante!!! reportaje. Que TOROS mas guapos', 'Toros, toros y pueblos, bous al carrer, cerriles, bullfighting, toro bravo, bouslapopular, ganaderías, stierkampf, dvd toros, toros salva mari, calidad hd', '0', '11,14', '2015-01-12 11:44:22', 1413655147, 'https://www.youtube.com/watch?v=tj-s45NUgAg&list=UUU9w_BjSAe9hothAaBwf5aQ', '', 1, 16, 0, 0, 0, '', 1, 0, '', 792, 0, 0, 0),
(226, 'Gary Goodridge Vs Fedor Emelianenko', 'Gary Goodridge Vs Fedor Emelianenko', 'Ultimate Fighting Championship, Fedor Emelianenko, Pride, MMA', '0', '26', '2015-01-21 04:26:34', 1413656784, 'https://www.youtube.com/watch?v=qZn1N1pgZoo', '', 1, 21, 0, 0, 0, '', 1, 0, '', 297, 0, 0, 0),
(228, 'UFC Rustam Khabilov vs. Vinc Pichel ', 'Rustam Khabilov amazes in his Octagon debut with a debilitating suplex attack on Vinc Pichel to earn the victory. Khabilov takes on Benson Henderson in the main event of Fight Night Albuquerque.', 'ufc, fight, night, free, albuquerque, rustam, khabilov, vinc, pichel, octagon, debut, suplex, mma, Ultimate Fighting Championship', '0', '26', '2015-01-18 17:11:53', 1413657688, 'https://www.youtube.com/watch?v=nMlsjlVnpKs', '', 1, 18, 0, 0, 0, '', 1, 0, '', 362, 0, 0, 0),
(229, 'Fight Night San Antonio Free Fight: Cub Swanson vs. Ross Pearson', 'Watch as Cub Swanson shows off his stand up and resolve, having to fight from his back several times against Ross Pearson. Swanson faces Jeremy Stephens at Fight Night San Antonio.', 'ufc, fight, night, san, antonio, free, cub, swanson, ross, pearson, jeremy, stephens, featherweight, mma, Ultimate Fighting Championship', 'Sin_título-112.jpg', '26', '2015-01-18 17:10:34', 1413657826, 'https://www.youtube.com/watch?v=uAiNuOhvY1A', '', 1, 21, 0, 0, 0, '', 1, 0, '', 850, 0, 0, 0),
(230, 'UFC 177 Free Fight: T.J. Dillashaw vs. Walel Watson', 'Looking to get his first win inside the Octagon, T.J. Dillashaw shows off his relentless ground game against Walel Watson in Omaha, Nebraska. Watch the current bantamweight champ take on former champ Renan Barao at UFC 177 in Sacramento, California.', 'free, fight, video, mma, ultimate fighting championship, 177, T.J., dillashaw, walel, watson, bantamweight, champion, Ultimate Fighting Championship', '1111111111111.jpg', '26', '2015-01-17 19:49:33', 1413657978, 'https://www.youtube.com/watch?v=NEgVh5S3PoQ', '', 1, 22, 0, 0, 0, '', 1, 0, '', 1031, 0, 0, 0),
(231, 'Fedor Emelianenko vs Hong Man Choi', 'Fedor Emelianenko vs Hong Man Choi', 'Fedor, emelianenko, choi, hong, man, yarennoka', '0', '26', '2015-01-21 04:25:47', 1413833154, 'https://www.youtube.com/watch?v=2i0iZcLIrTQ', '', 1, 20, 0, 0, 0, '', 1, 0, 'Fedor Emelianenko vs Hong Man Choi', 129, 0, 0, 0),
(232, 'Badr Hari vs Hong Man Choi ', 'Badr Hari vs Hong Man Choi ', 'Choi Hong-man (Martial Artist), Beautiful, Round, Right, Badr Hari, 2013, Mirko, Training, Boxing, Mma', '123123131.jpg', '26', '2015-01-21 04:26:17', 1413833536, 'https://www.youtube.com/watch?v=fgOEvkG2H1s', '', 1, 22, 0, 0, 0, '', 1, 0, '', 1279, 0, 0, 0),
(233, 'Los mejores knockouts de la UFC DG', 'los mejores knockouts los mejores ko de la ufc the best knockuts los mejores ko en la historia de la ufc los mejores ko de Ultimate fighting championship las mejores peleas los knockauts mas brutales en la historia los mejores ko de la MMA utilizando todo', 'Knockout, 1080p, Ultimate Fighting Championship (Sports Association), High-definition Television (Accommodation Feature), Mixed Martial Arts (Martial Art),', '0', '26', '2015-01-12 19:36:07', 1413834871, 'https://www.youtube.com/watch?v=bUMSP59uGfE', '', 1, 16, 0, 0, 0, '', 1, 0, '', 849, 0, 0, 0),
(234, 'Compilacion de fails de Mujeres', 'Desde una chica que casi queda como estampilla en un tren hasta las mejores caídas de las féminas, este video te hará soltar más de una carcajada con aquellas chicas que tanto nos hacen reír. Risas aseguradas.', 'best, top, 10, fail, win, january, february, march, april, may, june, july, august, september, october, november, december, 2011, 2012, 2013, funny, faceplan.', '2131313131.jpg', '13', '2015-01-21 04:51:49', 1414064667, 'https://www.youtube.com/watch?v=Gng3sPiJdzA#t=59', '', 1, 29, 0, 0, 0, '', 1, 0, 'Desde una chica que casi queda como estampilla en un tren hasta las mejores caídas de las féminas, este video te hará soltar más de una carcajada con aquellas chicas que tanto nos hacen reír. Risas aseguradas.', 623, 0, 0, 0),
(235, '¿Que harias si te pillas con un asesinato en progreso?', 'En este interesante video del diario The Telegraph podemos ver cómo dos actores realizan un ejemplo de asesinato en progreso (obviamente, sin que ninguno salga herido). Lo que hay que ver es la reacción de la gente que, en algunos casos salen corriendo, e', 'Dead Man Down, Colin Farrell, Thinkmodo, elevator, lift, stunt, USA', '21312313123.jpg', '13', '2015-01-18 04:37:33', 1414065066, 'https://www.youtube.com/watch?v=97Fcp8slshY', '', 1, 24, 0, 0, 0, '', 1, 0, 'En este interesante video del diario The Telegraph podemos ver cómo dos actores realizan un ejemplo de asesinato en progreso (obviamente, sin que ninguno salga herido). Lo que hay que ver es la reacción de la gente que, en algunos casos salen corriendo, en otros hacen lo que pueden e incluso algunos toman fotos.', 113, 0, 0, 0),
(236, 'Chuck norris en la Vida real', 'Este tipo es igual que Chuck Norris: puede aguantar de todo, desde un golpe en el cuello que podría dejarte sin hablar por varios días hasta un golpe ahí donde a los hombres nos duele más... Sí, en los testículos. El video les dará un dolor y un asombro q', '"chuck, norris, real, life', '0', '13,26', '2015-01-21 04:27:03', 1414065587, 'https://www.youtube.com/watch?v=5cuyhkmljT0#t=93', '', 1, 32, 0, 0, 0, '', 1, 0, 'Este tipo es igual que Chuck Norris: puede aguantar de todo, desde un golpe en el cuello que podría dejarte sin hablar por varios días hasta un golpe ahí donde a los hombres nos duele más... Sí, en los testículos. El video les dará un dolor y un asombro que no olvidarán.', 108, 0, 0, 0),
(237, 'Artista callejero Golpea en la cara a un Fastidioso', 'Este artista callejero, mientras llamaba la atención de la gente que pasaba por ahí, recibió también los molestos inoportunios de un fastidioso transeúnte que, incluso, le metió el dedo con saliva en un oído. Mira la reacción del artista callejero.', 'artista callejero, fail, fail calle', '12312321321.jpg', '13', '2015-01-21 04:32:32', 1414065976, 'https://www.youtube.com/watch?v=VHSFT1krNU8', '', 1, 23, 0, 0, 0, '', 1, 0, 'Este artista callejero, mientras llamaba la atención de la gente que pasaba por ahí, recibió también los molestos inoportunios de un fastidioso transeúnte que, incluso, le metió el dedo con saliva en un oído. Mira la reacción del artista callejero.', 35, 0, 0, 0),
(238, 'La nueva moda: Intentar romper el vidrio del auto con la Cabeza', 'Este video te mostrará que la estupidez no tiene límites: se trata de un grupo de jóvenes del cual, uno de ellos, no encontró mejor idea que intentar romper el vidrio del auto con la cabeza. Mira su dolor...', 'vidrio auto, auto, cabezazo auto', '0', '13', '2015-01-21 04:22:49', 1414066070, 'https://www.youtube.com/watch?v=cJC05OugpNM&list=UUIcbL11pHhR6BtJnDLXQrVw', '', 1, 34, 0, 0, 0, '', 1, 0, 'Este video te mostrará que la estupidez no tiene límites: se trata de un grupo de jóvenes del cual, uno de ellos, no encontró mejor idea que intentar romper el vidrio del auto con la cabeza. Mira su dolor...', 58, 0, 0, 0),
(239, 'Hombre Despechado: La canción de las tetas', 'Este video muestra la canción de Ricky López llamada -Hombre Despechado-. Una comparativa con lo que casi siempre sucede en la vida real entre el amor de un hombre y los intereses de una mujer.', 'Mujer, tetas, canción de la teta, hombre despechado', 'adadad.jpg', '13,23', '2015-01-22 09:45:44', 1414066389, 'https://www.youtube.com/watch?v=22oEONDt-BY', '', 1, 272, 0, 0, 0, '', 1, 0, 'Este video muestra la canción de Ricky López llamada -Hombre Despechado-. Una comparativa con lo que casi siempre sucede en la vida real entre el amor de un hombre y los intereses de una mujer.', 139, 2, 0, 2),
(240, 'Talentos y Habilidades INCREIBLES ♫ [2013]', 'Talentos y Habilidades INCREIBLES ♫ [2013', 'Talentos, Habilidades, 2013, Gente, Increible, Asombrosa, Musica, Entertiment, Entretenimiento', '12314321424.jpg', '14,26', '2015-01-17 15:32:14', 1414066849, 'https://www.youtube.com/watch?v=v7c32PYKmv4', '', 1, 33, 0, 0, 0, '', 1, 0, '', 659, 0, 0, 0),
(242, 'Personas y Cosas Increíbles 2013', 'Personas y Cosas Increíbles 2013', 'cosas increibles, gente increible, cosas raras, personas increibles, cosas raras del mundo, gente extraña, cosas imposibles, cosas extraordinarias, acrobacia', '123123132.jpg', '14,26', '2015-01-21 04:26:12', 1414068175, 'https://www.youtube.com/watch?v=nccHLDN6wBw', '', 1, 39, 0, 0, 0, '', 1, 0, 'les dejo con ustedes gente increíble con dones que no cualquiera tiene, acrobacias,saltos increíbles,Cosas impresinantes este 2013 ', 396, 0, 0, 0),
(243, 'Personas y Cosas Increíbles  (Recomendado verlo hasta el final)', 'Personas y Cosas Increíbles  (Recomendado verlo hasta el final)', 'Increible, Personas, Futbol, Moto, People Are Awesome, 720p, HD, Deporte, Amazing, Unico, Recopilacion, Salto, Parkour, Running, Artes Marciales, Sorprendent', '0', '14', '2015-01-17 16:03:27', 1414093979, 'https://www.youtube.com/watch?v=lKQrU2uuy3Q', '', 1, 34, 0, 0, 0, '', 1, 0, '', 960, 0, 0, 0),
(245, 'Las Personas Mas Increíbles e Impresionantes Del Mundo', 'Las Personas Mas Increíbles e Impresionantes Del Mundo', 'PEOPLE ARE AWESOME 2013, PEOPLE ARE AWESOME, monthly PEOPLE ARE AWESOME, monthly PEOPLE AWESOME, AWESOME 2013, mw, failure, MonthlyWinners, Epic, Fail, Lol', '12313123.jpg', '14,16', '2015-01-21 18:47:17', 1415309046, 'https://www.youtube.com/watch?v=CxEa8vr_Q2k', '', 1, 32, 0, 0, 0, '', 1, 0, '', 648, 1, 0, 1),
(246, 'Best Compilation Ever', 'BEST COMPILATION EVER', 'PEOPLE ARE AWESOME 2013, PEOPLE ARE AWESOME, monthly PEOPLE ARE AWESOME, monthly PEOPLE AWESOME, AWESOME 2013, mw, failure, MonthlyWinners, Epic, Fail, Lol', '12312342132.jpg', '9,14,26', '2015-01-21 18:47:32', 1415310343, 'https://www.youtube.com/watch?v=DjEmVd3wn5Y', '', 1, 30, 0, 0, 0, '', 1, 0, '', 329, 0, 0, 0),
(247, 'la gente mas impresionante', 'la gente mas impresionante', 'PEOPLE, ARE, AWESOME-, NEW, VERSION, 2012, DUBSTEP, amazing, los, mejores, del, mundo, historia, parkour, freerunning, basket, jordan, adele, beyonce, david', '13313131.jpg', '14,26', '2015-01-21 04:26:45', 1415311081, 'https://www.youtube.com/watch?v=VQv3leLdZjI', '', 1, 43, 0, 0, 0, '', 1, 0, '', 291, 0, 0, 0),
(248, 'Danny MacAskill - freeride', '', '', '0', '26', '2015-01-11 16:32:52', 1415311206, 'https://www.youtube.com/watch?v=RliTVm3KRy4&list=UUOUgcQGZ97oGuCivk8GZ-RQ', '', 1, 17, 0, 0, 0, '', 1, 0, '', 73, 0, 0, 0),
(249, 'Gente Impresionante', '', 'people, are, awesome, 2012, 2013, amazing, riders, best, of, web, fail', '1234242342342.jpg', '26', '2015-01-21 18:49:58', 1415311357, 'https://www.youtube.com/watch?v=D8nAoasWZiE&list=PLO3SV1zG65B5iiJ8n2ZCIDwqEF1CroVZ4', '', 1, 34, 0, 0, 0, '', 1, 0, '', 268, 0, 0, 0),
(251, 'Mejores Bromas - Guardia de Seguridad Comilón De Ratas', 'Un Guardia de seguridad de un centro comercial se queda dormido con la boca abierta. Un niño travesío aprovecha la oportunidad para causar problemas. El niño le alimenta una rata de color gris justo en frente de algunas personas muy disgustados. ¡Ay que a', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:21:14', 1415314926, 'https://www.youtube.com/watch?v=raTkzKz3b60', '', 1, 25, 0, 0, 0, '', 1, 0, 'Un Guardia de seguridad de un centro comercial se queda dormido con la boca abierta. Un niño travesío aprovecha la oportunidad para causar problemas. El niño le alimenta una rata de color gris justo en frente de algunas personas muy disgustados. ¡Ay que asco! ', 81, 0, 0, 0),
(252, 'Prueba de Nivel de Alcohol ', 'Prueba de Nivel de Alcohol ', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-07 18:39:01', 1415315166, 'https://www.youtube.com/watch?v=wapP7nU4o3U&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 17, 0, 0, 0, '', 1, 0, '', 90, 0, 0, 0),
(253, 'Soy Gay! Broma!', 'Soy Gay! Broma!', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:23:21', 1415315304, 'https://www.youtube.com/watch?v=hPNvxfxYWNI', '', 1, 22, 0, 0, 0, '', 1, 0, '', 99, 0, 0, 0),
(254, 'El culo al Aire!', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:50:15', 1415315523, 'https://www.youtube.com/watch?v=ukblCwbpBns&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 29, 0, 0, 0, '', 1, 0, '', 92, 0, 0, 0),
(255, 'Pobre Abuelito!', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-16 22:12:00', 1415315622, 'https://www.youtube.com/watch?v=Gz_wnbgHojU&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 19, 0, 0, 0, '', 1, 0, '', 76, 0, 0, 0),
(256, 'Broma de Sopa de Rana', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-04 01:26:46', 1415315720, 'https://www.youtube.com/watch?v=MLex4B8jJSc&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 15, 0, 0, 0, '', 1, 0, '', 77, 0, 0, 0),
(257, 'Broma de la Máquina del tiempo !', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:32:47', 1415315843, 'https://www.youtube.com/watch?v=IdA-57KH3es&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 17, 0, 0, 0, '', 1, 0, '', 108, 0, 0, 0),
(258, 'Broma al Golf', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:50:06', 1415316028, 'https://www.youtube.com/watch?v=ZvAq42gSWm0&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 17, 0, 0, 0, '', 1, 0, '', 86, 1, 0, 1),
(259, 'Los carritos de compras tambien tienen accidentes!', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-04 01:38:58', 1415316179, 'https://www.youtube.com/watch?v=fHAtengIqHI&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 14, 0, 0, 0, '', 1, 0, '', 75, 0, 0, 0),
(260, 'El carrito de compras', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:28:36', 1415316316, 'https://www.youtube.com/watch?v=RcLkyLdBNos&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 20, 0, 0, 0, '', 1, 0, '', 80, 0, 0, 0),
(261, 'Cabeza se convierte en balon', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-04 01:39:43', 1415316448, 'https://www.youtube.com/watch?v=FJLDdi4XBBw&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 17, 0, 0, 0, '', 1, 0, '', 78, 0, 0, 0),
(262, 'ENTIERRO en tu propio jardin !!', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:23:26', 1415316638, 'https://www.youtube.com/watch?v=S5jV8VOaeVY&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 18, 0, 0, 0, '', 1, 0, '', 89, 0, 0, 0),
(263, 'Broma de la Cuchara Pegada !', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:27:30', 1415316739, 'https://www.youtube.com/watch?v=2k2TCKPBK5M&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 26, 0, 0, 0, '', 1, 0, '', 88, 0, 0, 0),
(264, 'Broma de Sopa Caliente', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:28:41', 1415316952, 'https://www.youtube.com/watch?v=t9-Su8y9Aow&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 20, 0, 0, 0, '', 1, 0, '', 84, 0, 0, 0),
(265, 'Juego de Nino Peligroso!!', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:27:54', 1415317068, 'https://www.youtube.com/watch?v=ZQKfgeFhmmY&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 19, 0, 0, 0, '', 1, 0, '', 93, 0, 0, 0),
(266, 'Broma de la Venta de Garaje', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:50:00', 1415317142, 'https://www.youtube.com/watch?v=BKOp5I2MmvA&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 16, 0, 0, 0, '', 1, 0, '', 86, 0, 0, 0),
(267, 'Cuatro brazos, un solo cuerpo', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-11 16:33:48', 1415317535, 'https://www.youtube.com/watch?v=r20LSlVackg&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 22, 0, 0, 0, '', 1, 0, 'Con cuatro brazos se puede hacer tantas bromas!  jeejjeje', 97, 0, 0, 0),
(268, 'Recopilación mejores momentos rusos', 'Por esta clase de momentos amamos a Rusia.', 'rusia, ruso, loco, recopilación, momentos, rusos, mejores, loles, risas, locura, russian, moments, best', '0', '13', '2015-01-21 04:23:13', 1415819127, 'https://www.youtube.com/watch?v=ZVYPlMwbaTw', '', 1, 20, 0, 0, 0, '', 1, 0, 'Por esta clase de momentos amamos a Rusia.', 312, 0, 0, 0),
(269, 'Flexiones Rusas | Flexiones sin manos!!', 'Aquí un ejemplo de como hacen las flexiones en Rusia, nada más y nada menos que flexiones sin manos!', 'flexiones, rusia, rusos, made, in, russia, locos, ejercito, Moscow, sovietico, Soviet Union', '0', '13,26', '2015-01-21 04:22:11', 1415819481, 'https://www.youtube.com/watch?v=rLa436p0e6Q&list=UUGa2tMGQ9kQhtVgGX-LR1ig', '', 1, 32, 0, 0, 0, '', 1, 0, 'Aquí un ejemplo de como hacen las flexiones en Rusia, nada más y nada menos que flexiones sin manos!', 25, 0, 0, 0),
(270, 'Meteorito cae en Rusia | Imágenes del meteorito y los daños causados', 'Fragmentos de un meteorito han caído sobre la región de Chelyabinsk en Rusia, el pasado 15 de febrero, a unos 1.500 kilómetros al este de Moscú, causando destellos en el cielo y explosiones que según informan los primeros reportes podrían haber dejado al ', '', '0', '7', '2015-01-21 04:29:56', 1415819644, 'https://www.youtube.com/watch?v=ecGaflNo04I&list=UUGa2tMGQ9kQhtVgGX-LR1ig', '', 1, 15, 0, 0, 0, '', 1, 0, 'Fragmentos de un meteorito han caído sobre la región de Chelyabinsk en Rusia, el pasado 15 de febrero, a unos 1.500 kilómetros al este de Moscú, causando destellos en el cielo y explosiones que según informan los primeros reportes podrían haber dejado al menos 1000 heridos, según informan las autoridades rusas', 216, 0, 0, 0),
(271, 'Conduciendo en Rusia [Parte I]', 'Recopilación de accidentes y curiosidades rusas.', 'Rusia,rusos,made,russia', '3123123123.jpg', '9,29', '2015-01-17 12:35:22', 1415819730, 'https://www.youtube.com/watch?v=4IftNQrJthM&list=UUGa2tMGQ9kQhtVgGX-LR1ig', '', 1, 28, 0, 0, 0, '', 1, 0, '', 189, 0, 0, 0),
(272, 'Botella rusa', 'De dos de los integrantes de botellón ruso llega un tutorial, como jugar a botella en Rusia', 'Rusia, ruso, made, in, rusia, funny, botella, botellon, gop, fm', '0', '13', '2015-01-16 22:03:41', 1415820652, 'https://www.youtube.com/watch?v=O4lsIc2w3G8&list=UUGa2tMGQ9kQhtVgGX-LR1ig', '', 1, 22, 0, 0, 0, '', 1, 0, 'De dos de los integrantes de botellón ruso llega un tutorial, como jugar a botella en Rusia', 17, 0, 0, 0),
(273, 'Jóvenes vs Adultos', 'En varias ocasiones me han reportado que solamente subo videos de rusos drogados e incivilizados, y para acallar las quejas he decidido subir este video mostrando la cara bondadosa de Rusia, donde en una discordia entre unos jóvenes es detenida por un gru', 'Rusos, rusia, pelea, jovenes, vs, adultos, Made in russia, crazy', '0', '7,13,26', '2015-01-22 00:13:00', 1415820779, 'https://www.youtube.com/watch?v=vZT4i_gljIU&list=UUGa2tMGQ9kQhtVgGX-LR1ig', '', 1, 22, 0, 0, 0, '', 1, 0, 'En varias ocasiones me han reportado que solamente subo videos de rusos drogados e incivilizados, y para acallar las quejas he decidido subir este video mostrando la cara bondadosa de Rusia, donde en una discordia entre unos jóvenes es detenida por un grupo de \nancianos prácticamente.', 183, 0, 0, 0),
(274, 'Rusos más valientes del mundo (Parte 2)', 'Aquí tenemos más rusos sin vértigo, otra vez en la torre Electroskal', 'rusos, locos, rusia, russia, 100%, mejores, videos, de, sin, vértigo, más, valiente, del, mundo, vatnec, made, in, russian, divertidos, bromistas, broma', '0', '14,26', '2015-01-21 04:26:01', 1415821111, 'https://www.youtube.com/watch?v=1GbEP8DJStw&src_vid=NVtVv_NJtHc&feature=iv&annotati;', '', 1, 35, 0, 0, 0, '', 1, 0, 'Aquí tenemos más rusos sin vértigo, otra vez en la torre Electroskal', 188, 0, 0, 0),
(275, 'Un día cualquiera en Rusia', 'Aquí os traigo un pequeño documental de como se vive un día en Rusia.', 'Ruso, Rusia, Made, in, Un, Día, Cualquiera', '0', '13,29', '2015-01-21 04:22:16', 1415821619, 'https://www.youtube.com/watch?v=OW05g4PBh14&list=UUGa2tMGQ9kQhtVgGX-LR1ig', '', 1, 29, 0, 0, 0, '', 1, 0, 'Aquí os traigo un pequeño documental de como se vive un día en Rusia.', 197, 0, 0, 0),
(276, 'Rusos con suerte', 'Rusos con suerte, posible volumen \nMúsica: Dj Mangoo - Eurodancer', 'ruso, Rusia, rusos, vatnec, made, Russia, con, suerte', '1312342421.jpg', '14,29', '2015-01-21 04:33:38', 1415821712, 'https://www.youtube.com/watch?v=XywupFu0xo8&list=UUGa2tMGQ9kQhtVgGX-LR1ig', '', 1, 28, 0, 0, 0, '', 1, 0, 'Rusos con suerte, posible volumen \nMúsica: Dj Mangoo - Eurodancer', 181, 0, 0, 0),
(279, 'Un curso de golf muy... divertido.', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-14 06:13:47', 1416496776, 'https://www.youtube.com/watch?v=l5rbKWPCfek', '', 1, 19, 0, 0, 0, '', 1, 0, '', 91, 0, 0, 0),
(280, 'El increíble Hulk', 'Un niño en el parque es molestado por tres moccosos y le quitan su gorra, el pequeño se mete en un baño portatil para descargar su enojo, pero es tan grande que se transforma en hulk! Estalla el baño con ira y corre tras los tres traviesos para darles su ', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:21:44', 1416497491, 'https://www.youtube.com/watch?v=z-V5GHZ9DeI', '', 1, 16, 0, 0, 0, '', 1, 0, 'Un niño en el parque es molestado por tres moccosos y le quitan su gorra, el pequeño se mete en un baño portatil para descargar su enojo, pero es tan grande que se transforma en hulk! Estalla el baño con ira y corre tras los tres traviesos para darles su merecido.', 100, 0, 0, 0),
(282, 'Mejores Bromas - Angel del Infierno', 'Es el fin del mundo! Víctimas de la broma se les pide para ayudar a mover una estatua. Lo que ellos no saben es que la estatua de ángel se ha cambiado por la estatua de un niño la más espeluznante que hemos podido encontrar. El niño está vestido de blanco', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:27:48', 1416497948, 'https://www.youtube.com/watch?v=MTZfuYZGAlI', '', 1, 26, 0, 0, 0, '', 1, 0, 'Es el fin del mundo! Víctimas de la broma se les pide para ayudar a mover una estatua. Lo que ellos no saben es que la estatua de ángel se ha cambiado por la estatua de un niño la más espeluznante que hemos podido encontrar. El niño está vestido de blanco, con alas y un halo, las víctimas de broma no se dan cuenta que no es una estatua cuando se acercan a la zona de carga. Él les da el susto de su vida, cuando de repente cobra vida, se levanta y sale corriendo', 77, 0, 0, 0),
(283, 'Mejores Bromas - Jesús en la cruz', 'Una monja pide ayuda para clavar un crucifijo en la pared. Ella clava la mano y se va a buscar otro clavo, la sangre fluye de la mano de Jesús en la cruz ante testigos desconcertados. Al volver la monja, comienza hacer la señal de la cruz, a orar y alabar', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:24:03', 1416498223, 'https://www.youtube.com/watch?v=RrwRCLqLC2c', '', 1, 24, 0, 0, 0, '', 1, 0, 'Una monja pide ayuda para clavar un crucifijo en la pared. Ella clava la mano y se va a buscar otro clavo, la sangre fluye de la mano de Jesús en la cruz ante testigos desconcertados. Al volver la monja, comienza hacer la señal de la cruz, a orar y alabar la cruz.', 82, 0, 0, 0),
(284, '¿Le daría su chaqueta a Johannes?', '¿Le daría su chaqueta a Johannes?', 'SOS MAYDAY, SOS-barnebyer, jakke, Syria, fryser, gutt, Johannes, kald, sms, barn, barna i Syria fryser, norge, St. Hanshaugen (Neighborhood), pure content', '0', '7', '2015-01-21 04:29:51', 1416684781, 'https://www.youtube.com/watch?v=L9O8j9QPZc8#t=11', '', 1, 19, 0, 0, 0, '', 1, 0, '', 159, 0, 0, 0),
(285, 'Tow Truck Vs Chinese Lady', '', 'Tow truck, China, Shanghai, Chinese, Funny Video', '0', '9,13', '2015-01-21 04:28:25', 1416685025, 'https://www.youtube.com/watch?v=jiQKt2HG8V0', '', 1, 24, 0, 0, 0, '', 1, 0, '', 39, 0, 0, 0),
(286, 'Los mejores Caidas del 2014', '', 'funny, comedi, Jump, Lol, Fun, Trampolining (Sport), Humour (Literary Genre), LOL (Laughing Out Loud) (Film), Jumping, Cool, Comedy, Kate, Doing, Tricks', '13243242.jpg', '13', '2015-01-21 04:24:17', 1416685218, 'https://www.youtube.com/watch?v=EsWAFqCl_C8', '', 1, 19, 0, 0, 0, '', 1, 0, '', 274, 0, 0, 0),
(287, 'Fatima segovia la chuecona en bienvenida la tarde', 'Fatima segovia la chuecona en bienvenida la tarde', 'FUNNY, Fiesta, Academia, Plaza, Santana, Sevilla, Central, Spain, Artificiales, Amigos, Garcia, Alejandra, Matrix, Park, Rosario, Elise, Fur, Neo, Ken', '0', '13', '2015-01-21 04:23:32', 1416685538, 'https://www.youtube.com/watch?v=QTQ6cpv7JK0&list=UU-5NccE-e1UwI5vnQ0iJycg', '', 1, 25, 0, 0, 0, '', 1, 0, 'Fatima segovia la chuecona en bienvenida la tarde', 217, 0, 0, 0),
(288, 'Gente Impresionante  2012 2013', '', 'iKobalt, PEOPLE, ARE, AWESOME, 2013, people are awesome, FLIP, BACKFLIP, FRONTFLIP, WORLDS GREATEST, WORLD record, longest, highest, amazing, incredible vira', '1324234142.jpg', '14,26', '2015-01-22 03:10:57', 1416760846, 'https://www.youtube.com/watch?v=ZBCOMG2F2Zk', '', 1, 22, 0, 0, 0, '', 1, 0, '', 604, 0, 0, 0),
(289, ' Animales Impresionantes', '', 'animales, extraños, criptozoologia, paranormal, creatures, monstruos, sea, miedo, impresionante, imagenes, terror, compilation', '123442342.jpg', '11,13', '2015-01-21 22:15:03', 1416761223, 'https://www.youtube.com/watch?v=QcvmJTH84KA', '', 1, 20, 0, 0, 0, '', 1, 0, '', 335, 0, 0, 0),
(290, 'las personas mas impresionantes del mundo', '', 'Humans Are Awesome, jeb corliss, roberta mancino, wingsuit, People, extremesports, Extreme, Action, Sports, Amazing, Sport, people are amazing, Cool, coolvid', '13242341421.jpg', '14,26', '2015-05-16 17:50:50', 1416761651, 'https://www.youtube.com/watch?v=mJ-d7F2KAWs&list=UUSXFDsBA8y8I08idaXiDkfw', '', 1, 32, 0, 0, 0, '', 1, 0, '', 368, 0, 0, 0),
(291, 'Súper humanos 2014 (Video Impresionante)', 'Video Impresionante', 'Cataclismo Nuclear 2014, Sida 2014, chernobyl 2014, mejor documental 2014, principio del final 2014, principio del fin 2014, mejor video de 2014, tercera gue', '123242424.jpg', '7,9', '2015-01-21 22:30:14', 1416762425, 'https://www.youtube.com/watch?v=ymDkSNZB1A8', '', 1, 25, 0, 0, 0, '', 1, 0, 'Video Impresionante', 334, 0, 0, 0),
(292, 'La Gente Es Increible', '', 'videos de miedo, golpes graciosos, sustos graciosos, vidios graciosos, videos graciosos, animales caidas graciosas, graciosos, gatos graciosos,', '0', '14,26', '2015-01-22 09:58:35', 1416762675, 'https://www.youtube.com/watch?v=EJT0AX9rPtM', '', 1, 41, 0, 0, 0, '', 1, 0, '', 218, 0, 0, 0),
(293, 'Banda musical de hamsters', '', 'drench, the, clever, hamsters, hamster, band, hamstar, jazz, ad, advert, commercial, funny, brains, puppet, fun, water, spring, audition, talent, stay, drenc', '12324241.jpg', '11,13', '2015-01-21 04:24:11', 1416849195, 'https://www.youtube.com/watch?v=AxBJlxb3NAQ', '', 1, 20, 0, 0, 0, '', 1, 0, '', 63, 0, 0, 0),
(294, 'Errores de mujeres 2', '', 'girl, fille, compilation, fail, chute', '1111111111.jpg', '13', '2015-01-21 04:50:28', 1416849742, 'https://www.youtube.com/watch?v=8-QToIzw7Fk#t=78', '', 1, 18, 0, 0, 0, '', 1, 0, '', 745, 0, 0, 0),
(295, 'Saltar el charco para entrar al coche', '', 'Chick, Fails, At, Avoiding, Puddles', '14234234.jpg', '13', '2015-01-21 04:24:36', 1416849994, 'https://www.youtube.com/watch?v=HxuYMzE4iRQ', '', 1, 21, 0, 0, 0, '', 1, 0, '', 23, 0, 0, 0),
(296, 'Gato curioso con sigilo', '', 'animales,entretenimiento,gatos,felinos', '0', '11,13', '2015-01-21 04:21:58', 1416850504, 'https://www.youtube.com/watch?v=fzzjgBAaWZw', '', 1, 20, 0, 0, 0, '', 1, 0, '', 74, 0, 0, 0),
(297, 'Cuando las cosas salen mal', '', 'Funny, Videos, Comedy, Comedia, Video, Lol, accidents, tombo, fall, laugh, fun, funniest, very, viral, best, soundtrack, kung, fu, fight, sports, acidente', '0', '13,16', '2015-01-21 04:23:50', 1416850698, 'https://www.youtube.com/watch?v=1sntncRoOe8#t=32', '', 1, 26, 0, 0, 0, '', 1, 0, '', 565, 0, 0, 0),
(298, 'Compilacion con los mejores errores', '', 'funniest, videos, worlds, best, fails, fail, fall, owned, blood, pain, funny, skate, board, accidents, skateboard, Funny, Videos, Comedy, Comedian, Video', '1424242.jpg', '13,26', '2015-03-17 06:43:24', 1416851235, 'https://www.youtube.com/watch?v=mxLY9XV8RAE#t=14', '', 1, 24, 0, 0, 0, '', 1, 0, '', 585, 0, 0, 0),
(299, 'Mejores sustos de risa', 'UN RECOPILACION DE LOS VIDEOS DE SUSTOS MAS COMICO', 'SUSTOS GRACIOSOS, SUSTOS DE MUERTE, SUSTOS COMICO, SUSTOS FALTALES, LOS MEJORES DEL MUNDO', '0', '13', '2015-01-21 04:32:39', 1416852230, 'https://www.youtube.com/watch?v=nKjXZ_vU57M#t=18', '', 1, 23, 0, 0, 0, '', 1, 0, 'UN RECOPILACION DE LOS VIDEOS DE SUSTOS MAS COMICO', 339, 0, 0, 0),
(300, 'Sail - Awplnation', '', 'Sail, Awolnation, meekakitty, nanalew, tessa, violet, nanakitty, rain, freezing, canada, slow, motion, lip, sync, music, lalalala, we, are, beautiful, film', '0', '23', '2015-01-21 04:35:14', 1416853911, 'https://www.youtube.com/watch?v=JaAWdljhD5o', '', 1, 28, 0, 0, 0, '', 1, 0, '', 249, 0, 0, 0),
(301, 'Silhouettes - Of Monsters and Men (Lyrics)', '', 'Lyrics, Of Monsters And Men (Musical Group), hunger games, The Hunger Games: Catching Fire (Film), The Hunger Games (Film), The Hunger Games Trilogy', '0', '23', '2015-01-17 15:30:09', 1416853967, 'https://www.youtube.com/watch?v=6BBksAK0f0g', '', 1, 23, 0, 0, 0, '', 1, 0, '', 272, 0, 0, 0),
(302, 'Armin van Buuren feat. Miri Ben-Ari - Intense (Full Version)', '', 'armin, van, buuren, intense, armada, music, official, trance, asot, edm', '0', '23', '2015-01-21 04:30:46', 1416854029, 'https://www.youtube.com/watch?v=6UoNXz0Ox-g', '', 1, 18, 0, 0, 0, '', 1, 0, '', 528, 0, 0, 0),
(303, 'BRR - Belgium Rally Race 2014 Trailer', '', '4x4, offroad, nissan, patrol, volvo, c6c6, c303, c306, pinzgauer, mud, action, 4wd, katwijk, zanderij, jeep, wrangler, CJ, WJ, XJ, Cherokee, toyota, landcrui', '0', '9,14', '2015-01-22 08:47:53', 1416952494, 'https://www.youtube.com/watch?v=yrJPwIApbjw', '', 1, 49, 0, 0, 0, '', 1, 0, '', 294, 0, 0, 0),
(304, 'Sexy Maid Prank', '', 'Gags, Network, gags, network, hidden camera, gag, pranks, boobs, tits, comedy, practical joke', '0', '13', '2015-01-21 04:32:52', 1416952663, 'https://www.youtube.com/watch?v=WyT5jYT5bu8', '', 1, 22, 0, 0, 0, '', 1, 0, '', 126, 0, 0, 0),
(305, 'Borrachos rusos', '', 'Drunk, Russian, on, the, beach, Пьяный, Российской, на, пляже, drunk russian on the beach, Russia (Country), Soviet Union', '0', '13', '2015-01-21 04:23:15', 1416953294, 'https://www.youtube.com/watch?v=LXx19C5ZyA8#t=18', '', 1, 24, 0, 0, 0, '', 1, 0, '', 187, 0, 0, 0),
(306, 'Hombre Loco persigue conductor hasta romperle el parabrisas', 'Un conductor loco que persiguio a otro conductor hasta detenerlo y conseguir romperle el parabrisas.', 'conductor, loco, Loco, Hombre, Conductor, romper, rompe, parabrisas, autopista, coche, Accidente, Autos, Calle, Accidentes, golpe, persigue, perseguir', '0', '9,29', '2015-01-22 00:30:32', 1416954226, 'https://www.youtube.com/watch?v=IWuXz42h4hY', '', 1, 21, 0, 0, 0, '', 1, 0, 'Un conductor loco que persiguio a otro conductor hasta detenerlo y conseguir romperle el parabrisas.', 502, 0, 0, 0),
(307, '¿por que los autos en rusia tienen camaras?', '¿por que los autos en rusia tienen camaras?', 'POR QUE, LOS, AUTOS, EN, RUSIA, TIENEN, CÁMARAS, 27, DE, JULIO, 2013, Porqué, accidente, Why, cars, have, cameras, in, russia, july 27 2013, news, noticias', '0', '9,29', '2015-01-22 06:10:50', 1416954379, 'https://www.youtube.com/watch?v=k6A1hcC9_VY', '', 1, 31, 0, 0, 0, '', 1, 0, '', 421, 0, 0, 0),
(308, 'DDDDDDDDD', '', 'Kamaz (Business Operation), камаз, камаз куплю, купить камаз, камаз видео, камаз 65115, камаз 6520, камаз 5320, камаз 55111, камаз 43118, камаз 4310, scania', '0', '9,29', '2015-01-22 09:47:21', 1416955437, 'https://www.youtube.com/watch?v=Vw8aGVPa4vU', '', 1, 34, 0, 0, 0, '', 1, 0, '', 932, 0, 0, 0),
(309, 'LIL WAYNE - Mirror ft. Bruno Mars', '', 'Lil, Wayne, Mirror, Cash, Money, Records/Universal, Records, Rap/Hip-Hop', '1321432423.jpg', '23', '2015-01-21 04:30:50', 1417361201, 'https://www.youtube.com/watch?v=OZLUa8JUR18', '', 1, 25, 0, 0, 0, '', 1, 0, '', 243, 0, 0, 0),
(310, 'Lil Wayne - Lollipop ft. Static', '', 'Lil, Wayne, Cash, Money, Hip, Hop', '1312342423.jpg', '23', '2015-01-16 21:59:15', 1417361379, 'https://www.youtube.com/watch?v=2IH8tNQAzSs&list=TLh-CW2b4RbRE', '', 1, 28, 0, 0, 0, '', 1, 0, '', 301, 0, 0, 0),
(311, 'Eminem - Mockingbird', '', 'Eminem, Aftermath, Records/Interscope, Hip, Hop', '13214132423.jpg', '23', '2015-01-21 04:35:03', 1417361551, 'https://www.youtube.com/watch?v=S9bCLPwzSC0', '', 1, 20, 0, 0, 0, '', 1, 0, '', 259, 0, 0, 0),
(312, 'Detroit Vs. Everybody', '', 'Eminem, Royce, da, 5&#39;9, Big, Sean, Danny, Brown, Dej, Loaf, Trick, Detroit, Vs., Everybody, (Audio), Interscope, Records, Rap/Hip-Hop', '1232423423.jpg', '23', '2015-01-16 22:00:13', 1417361766, 'https://www.youtube.com/watch?v=vjUgJ6Cw5PU&list=UU20vb-R_px4CguHzzBPhoyQ', '', 1, 20, 0, 0, 0, '', 1, 0, '', 358, 0, 0, 0),
(313, 'Eminem - Not Afraid', '', 'Eminem, Not, Afraid, Aftermath, Hip, Hop, New, Song, Recovery, Relapse, Em', '13124242.jpg', '23', '2015-01-21 04:30:35', 1417362339, 'https://www.youtube.com/watch?v=j5-yKhDd64s&list=TLoQOv62VO7mo', '', 1, 23, 0, 0, 0, '', 1, 0, '', 259, 0, 0, 0),
(314, 'Eminem - When I''m Gone', '', 'Eminem, Aftermath, Hip, Hop', '213423432.jpg', '23', '2015-01-07 18:15:12', 1417362496, 'https://www.youtube.com/watch?v=1wYNFfgrXTI&list=TLoQOv62VO7mo', '', 1, 16, 0, 0, 0, '', 1, 0, '', 369, 0, 0, 0),
(315, 'Eminem - The Monster (Explicit) ft. Rihanna', '', 'Eminem, Rihanna, The Monster, new video, new song, official, MMLP2', '1234243534.jpg', '23', '2015-01-07 08:20:29', 1417362625, 'https://www.youtube.com/watch?v=EHkozMIXZ8w&list=TLoQOv62VO7mo', '', 1, 19, 0, 0, 0, '', 1, 0, '', 319, 0, 0, 0),
(316, 'Lil Wayne - Drop The World ft. Eminem', '', 'Lil, Wayne, Cash, Money, Hip, Hop', '123234324.jpg', '23', '2015-01-21 22:11:14', 1417362811, 'https://www.youtube.com/watch?v=ErCAOMi5EGM', '', 1, 22, 0, 0, 0, '', 1, 0, '', 266, 0, 0, 0),
(317, 'Lil Wayne - God Bless Amerika', '', 'Lil wayne, god bless amerika, weezy, new video, new song, god bless america', '423532123.jpg', '23', '2015-01-22 07:29:07', 1417363042, 'https://www.youtube.com/watch?v=_Nb4EHY_2bI', '', 1, 48, 0, 0, 0, '', 1, 0, '', 311, 0, 0, 0),
(318, 'America''s Got Talent 2014 TOP 10', '', 'Got Talent (TV Program), America''s Got Talent 2013, Got Talent Compilation, America''s Got Talent 2014, America''s got talent top 10, AGT 2014 TOP 10, AGT 2014', '0', '7,13,23', '2015-02-22 11:41:32', 1417363743, 'https://www.youtube.com/watch?v=Bs26yIUqyqI', '', 1, 40, 0, 0, 0, '', 1, 0, '', 2184, 0, 0, 0),
(319, 'Radiohead, Street Spirit - Full Song With Lyrics', '', 'Radiohead, Lyrics, Street, Spirit, Fade, Out, Full, Song, DEFGI', '1342423424.jpg', '23', '2015-01-22 06:17:38', 1417364556, 'https://www.youtube.com/watch?v=7i-R2WM3tNM', '', 1, 45, 0, 0, 0, '', 1, 0, '', 266, 0, 0, 0),
(320, 'Kenichi Ebina ALL PERFORMANCE America''s Got Talent 2013', '', 'Kenichi Ebina, America&#39;s Got Talent (TV Program)', '0', '7', '2015-01-21 04:29:16', 1417367487, 'https://www.youtube.com/watch?v=K3ypnsduDac', '', 1, 21, 0, 0, 0, '', 1, 0, '', 1159, 0, 0, 0),
(322, 'Obrero desaparece !!', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:14:23', 1417440077, 'https://www.youtube.com/watch?v=twnToRNkh88', '', 1, 20, 0, 0, 0, '', 1, 0, '', 105, 0, 0, 0),
(323, 'Coches sin conductor', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '9,13', '2015-02-22 11:38:02', 1417440494, 'https://www.youtube.com/watch?v=q-ecmMwgrMk&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 48, 0, 0, 0, '', 1, 0, '', 92, 0, 0, 0),
(324, 'Policía De La Apariencia', '', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-01-21 04:28:12', 1417440620, 'https://www.youtube.com/watch?v=VHOuT-nT6zU', '', 1, 25, 0, 0, 0, '', 1, 0, '', 86, 0, 0, 0),
(325, 'Top 10 Bromas de todos los tiempos', '', 'funny, pranks, funny pranks, funniest pranks, funniest, Top Pranks, Top 10 Pranks, Top 10 Pranks of All Time, Funniest Pranks Ever, Top 10 Pranks 2014, Pract', '0', '13', '2015-01-21 04:27:19', 1417472558, 'https://www.youtube.com/watch?v=lHfOGbXjxZ0', '', 1, 32, 0, 0, 0, '', 1, 0, '', 1350, 0, 0, 0),
(326, 'Crazy Scary Prank', '', 'funny, scary, pranks, scare, scare pranks, Practical Joke, Best, Comedy, funny pranks, Scared, Scream, YesFunnyYes, Funniest Pranks, best pranks, Best Scare', '0', '13', '2015-01-21 04:26:49', 1417473154, 'https://www.youtube.com/watch?v=a8Qsc6flMak', '', 1, 28, 0, 0, 0, '', 1, 0, '', 171, 0, 0, 0),
(331, 'UFC 180 Pelea: Gastelum vs Hall', 'El último en ser seleccionado en la ronda inicial de TUF 17 kelvin Gastelum se enfrentaba al temido y favorito Uriah Hall por el contrato con el UFC y ser el nuevo Ultimate Fighter, ¡vean la pelea gratis!', 'Kelvin Gastelum (Competitor), UFC 180, Ultimate Fighting Championship (Sports Association), free fight, pelea gratis, kelvin, uriah hall, tuf, The Ultimate F', '0', '26', '2015-01-21 18:46:18', 1417478602, 'https://www.youtube.com/watch?v=cGlnF1eA1fs&list=UUYXJFtx4SUkrb2p_8mhLPzQ', '', 1, 26, 0, 0, 0, '', 1, 0, 'El último en ser seleccionado en la ronda inicial de TUF 17 kelvin Gastelum se enfrentaba al temido y favorito Uriah Hall por el contrato con el UFC y ser el nuevo Ultimate Fighter, ¡vean la pelea gratis!', 1459, 0, 0, 0),
(336, 'Pulsera de gomitas Escamas de dragón ', 'En este vídeo te enseño a hacer esta pulsera de gomitas llamada "Escamas de dragón" SIN TELAR-CON TENEDORES.', 'gomitas, bracelet, pulseira, DIY, HTM, gomas, ligas, bandas, bands, maynterest, DoItYourself, Pulsera de gomitas, cauchos, liga, no loom, sin telar, con tene', '0', '15', '2015-01-22 06:11:59', 1418233998, 'https://www.youtube.com/watch?v=4YTvN89XrBI', '', 1, 34, 0, 0, 0, '', 1, 0, 'En este vídeo te enseño a hacer esta pulsera de gomitas llamada "Escamas de dragón" SIN TELAR-CON TENEDORES.', 1104, 0, 0, 0),
(337, 'Diseño de uñas con puntos blanco y negro | Dots nail art white&black; - maynterest', 'Si quieres saber como se hace este diseño de uñas, no te pierdas este vídeo. Espero que os guste :)', 'nail art, puntos, blanco y negro, dots, polka, nails, lunares, diseño de uñas, maynterest, uñas de lunares, uñas con puntos, white&amp;black, nails art', '0', '15', '2015-01-21 21:51:18', 1418234086, 'https://www.youtube.com/watch?v=TkNTw1Ovgso&list=PLjNYCA7uj1VhqqP0ws7zQQqHJXdXCgqJT', '', 1, 22, 0, 0, 0, '', 1, 0, 'Si quieres saber como se hace este diseño de uñas, no te pierdas este vídeo. Espero que os guste :)', 145, 0, 0, 0),
(338, 'Uñas marmoleadas con agua | Water marble nail art', 'Hoy os enseño a hacer este diseño de uñas con la técnica del marmoleado, una técnica muy fácil que deja nuestras uñas bonitas en poco tiempo.', 'diseño de uñas, diseños de uñas, nail art, nails art, uñas, uña, uñas marmoleadas, com agua, nail, nails, maynterest, nails design, nail design, mármol', '0', '15', '2015-01-22 06:13:05', 1418234217, 'https://www.youtube.com/watch?v=SjmV-TlzEjk', '', 1, 32, 0, 0, 0, '', 1, 0, 'Hoy os enseño a hacer este diseño de uñas con la técnica del marmoleado, una técnica muy fácil que deja nuestras uñas bonitas en poco tiempo.\n', 232, 0, 0, 0),
(339, 'Muñeco de nieve 3D de gomitas SIN TELAR | Snowman 3D charm NO LOOM | Navidad Christmas', 'Aprende a hacer este muñeco de nieve 3D de gomitas (Snowman 3D charm), ¡no te pierdas el vídeo!.', 'muñeco de nieve, muñeco de nieve 3D, muñeco de nieve de gomitas, muñeco de nieve 3D de gomitas, sin telar, no loom, snowman, navidad, christmas, natal', '0', '15', '2015-01-21 22:31:13', 1418234794, 'https://www.youtube.com/watch?v=7aBgs1eP6AQ', '', 1, 29, 0, 0, 0, '', 1, 0, 'Aprende a hacer este muñeco de nieve 3D de gomitas (Snowman 3D charm), ¡no te pierdas el vídeo!.', 2916, 0, 0, 0),
(340, 'Mejores Bromas - Ladrona Guapa', 'Una chica muy guapa le roba la billetera a un pobre viejo mientras hable con el. Las víctimas de esta bromas alertan a un joven policía. El se acerca para arrestarla. Pero la ladrona sexy utiliza sus poderes para seducirlo. El policía se enamora y le perm', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-05-16 17:51:42', 1418234991, 'https://www.youtube.com/watch?v=0N-dGLHtCR4', '', 1, 97, 0, 0, 0, '', 1, 0, 'Una chica muy guapa le roba la billetera a un pobre viejo mientras hable con el. Las víctimas de esta bromas alertan a un joven policía. El se acerca para arrestarla. Pero la ladrona sexy utiliza sus poderes para seducirlo. El policía se enamora y le permite irse. ', 92, 1, 0, 1),
(341, 'El test de alcoholemia', 'Una presentación de JustForLaughsTV. Bromas officiales del canal YouTube Just For Laughs Gags. El origen de las bromas de cámara oculta más divertidas, más increíbles, más risibles llenas de comedia y carcajadas. Las mejores bromas del mundo!', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-03-10 06:22:36', 1418235129, 'https://www.youtube.com/watch?v=aZJ0HvDmmxM&list=UUi8FFfKYNNNZz2XjkbWdcpw', '', 1, 31, 0, 0, 0, '', 0, 0, 'Una presentación de JustForLaughsTV. Bromas officiales del canal YouTube Just For Laughs Gags. El origen de las bromas de cámara oculta más divertidas, más increíbles, más risibles llenas de comedia y carcajadas. Las mejores bromas del mundo!', 96, 0, 0, 0),
(342, 'No mojes mi bebe !', 'Una presentación de JustForLaughsTV. Bromas officiales del canal YouTube Just For Laughs Gags. El origen de las bromas de cámara oculta más divertidas, más increíbles, más risibles llenas de comedia y carcajadas. Las mejores bromas del mundo!', 'JFL, reír, vídeo, broma, divertido, gracioso, sólo risas, justforlaughs, jflgags, cámara oculta, travesura, broma de mal gusto, risa, jajaja, cámara indiscre', '0', '13', '2015-05-16 17:52:04', 1418235244, 'https://www.youtube.com/watch?v=gixSGdCUzE4', '', 1, 92, 0, 0, 0, '', 0, 0, 'Una presentación de JustForLaughsTV. Bromas officiales del canal YouTube Just For Laughs Gags. El origen de las bromas de cámara oculta más divertidas, más increíbles, más risibles llenas de comedia y carcajadas. Las mejores bromas del mundo!', 89, 0, 0, 0),
(343, 'rfghfdgdf dfg d', '', '', '0', '9', '2016-05-05 10:05:13', 1426586145, '', 'Tamriko Chokhonelidze  Iavnana - Standard Quality 360p [File2HD.com].mp4', 1, 54, 0, 0, 0, '', 0, 0, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE IF NOT EXISTS `views` (
  `id` int(11) NOT NULL,
  `videoid` varchar(25) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `date` int(100) NOT NULL,
  `ip` varchar(16) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `videoid`, `userid`, `date`, `ip`) VALUES
(1, '323', '', 1421534572, '31.146.40.62'),
(4, '303', '', 1421534660, '66.249.73.224'),
(6, '307', '', 1421535113, '31.146.40.62'),
(7, '303', '', 1421535134, '31.146.40.62'),
(8, '336', '', 1421535151, '31.146.40.62'),
(9, '336', '', 1421535164, '31.146.40.62'),
(10, '336', '', 1421535205, '31.146.40.62'),
(14, '124', '', 1421536548, '31.146.40.62'),
(15, '174', '', 1421536552, '31.146.40.62'),
(16, '174', '', 1421536647, '31.146.40.62'),
(17, '174', '', 1421536914, '31.146.40.62'),
(25, '174', '', 1421538441, '84.120.52.222'),
(26, '336', '', 1421538443, '84.120.52.222'),
(27, '323', '', 1421538445, '84.120.52.222'),
(28, '307', '', 1421538447, '84.120.52.222'),
(29, '124', '', 1421538448, '84.120.52.222'),
(30, '308', '', 1421538454, '84.120.52.222'),
(31, '303', '', 1421538457, '84.120.52.222'),
(32, '340', '', 1421538459, '84.120.52.222'),
(33, '323', '', 1421538462, '84.120.52.222'),
(34, '341', '', 1421538464, '84.120.52.222'),
(35, '342', '', 1421538468, '84.120.52.222'),
(36, '307', '', 1421538473, '84.120.52.222'),
(37, '292', '', 1421538475, '84.120.52.222'),
(38, '290', '', 1421538476, '84.120.52.222'),
(39, '317', '', 1421538478, '84.120.52.222'),
(40, '319', '', 1421538479, '84.120.52.222'),
(41, '318', '', 1421538482, '84.120.52.222'),
(42, '331', '', 1421538483, '84.120.52.222'),
(45, '303', '', 1421538494, '84.120.52.222'),
(46, '331', '', 1421538551, '84.120.52.222'),
(47, '232', '', 1421538561, '84.120.52.222'),
(48, '229', '', 1421538564, '84.120.52.222'),
(49, '231', '', 1421538569, '84.120.52.222'),
(50, '226', '', 1421538571, '84.120.52.222'),
(51, '230', '', 1421538573, '84.120.52.222'),
(52, '222', '', 1421538575, '84.120.52.222'),
(54, '228', '', 1421538580, '84.120.52.222'),
(55, '220', '', 1421538613, '84.120.52.222'),
(56, '219', '', 1421538615, '84.120.52.222'),
(57, '214', '', 1421538620, '84.120.52.222'),
(58, '218', '', 1421538622, '84.120.52.222'),
(59, '215', '', 1421538625, '84.120.52.222'),
(60, '217', '', 1421538628, '84.120.52.222'),
(62, '216', '', 1421538635, '84.120.52.222'),
(64, '209', '', 1421538641, '84.120.52.222'),
(65, '210', '', 1421538644, '84.120.52.222'),
(67, '135', '', 1421538695, '84.120.52.222'),
(68, '124', '', 1421538697, '84.120.52.222'),
(70, '127', '', 1421538704, '84.120.52.222'),
(71, '298', '', 1421539094, '84.120.52.222'),
(72, '292', '', 1421539098, '84.120.52.222'),
(73, '331', '', 1421539100, '84.120.52.222'),
(74, '319', '', 1421539102, '84.120.52.222'),
(75, '290', '', 1421539104, '84.120.52.222'),
(76, '318', '', 1421539106, '84.120.52.222'),
(77, '317', '', 1421539108, '84.120.52.222'),
(78, '303', '', 1421539110, '84.120.52.222'),
(79, '292', '', 1421539111, '84.120.52.222'),
(80, '108', '', 1421541762, '66.249.73.224'),
(81, '299', '', 1421545057, '66.249.65.167'),
(82, '294', '', 1421545369, '66.249.65.175'),
(83, '108', '', 1421548450, '66.249.73.224'),
(84, '287', '', 1421557939, '66.249.65.175'),
(85, '342', '', 1421563898, '31.146.40.62'),
(86, '108', '', 1421565329, '66.249.73.232'),
(87, '234', '', 1421569545, '66.249.65.167'),
(88, '235', '', 1421570253, '66.249.65.171'),
(89, '148', '', 1421573345, '148.251.124.173'),
(90, '176', '', 1421573365, '148.251.124.173'),
(91, '147', '', 1421576233, '136.243.5.215'),
(92, '145', '', 1421581208, '216.107.155.114'),
(93, '173', '', 1421581211, '216.107.155.114'),
(94, '148', '', 1421581215, '216.107.155.114'),
(95, '108', '', 1421585003, '66.249.73.216'),
(96, '342', '', 1421586775, '112.111.161.109'),
(97, '342', '', 1421586782, '112.111.161.109'),
(98, '108', '', 1421596101, '66.249.73.216'),
(99, '117', '', 1421603783, '66.249.73.232'),
(100, '331', '', 1421608591, '66.249.90.92'),
(101, '216', '', 1421608646, '66.249.90.92'),
(102, '214', '', 1421615373, '66.249.90.95'),
(103, '209', '', 1421615400, '66.249.90.95'),
(104, '229', '', 1421615434, '66.249.90.98'),
(105, '228', '', 1421615513, '66.249.90.98'),
(106, '126', '', 1421657924, '66.249.73.232'),
(107, '176', '', 1421661783, '178.63.49.82'),
(108, '214', '', 1421690520, '84.120.52.222'),
(109, '108', '', 1421694717, '66.249.73.232'),
(110, '290', '', 1421702437, '84.120.52.222'),
(111, '184', '', 1421702438, '66.249.65.171'),
(112, '318', '', 1421702439, '84.120.52.222'),
(113, '303', '', 1421702441, '84.120.52.222'),
(114, '317', '', 1421702442, '84.120.52.222'),
(115, '319', '', 1421702444, '84.120.52.222'),
(116, '292', '', 1421702448, '84.120.52.222'),
(117, '184', '', 1421702467, '84.120.52.222'),
(118, '116', '', 1421702723, '84.120.52.222'),
(119, '275', '', 1421703520, '84.120.52.222'),
(120, '116', '', 1421703679, '84.120.52.222'),
(121, '336', '', 1421703717, '66.249.73.224'),
(122, '108', '', 1421705851, '66.249.73.232'),
(123, '319', '', 1421712553, '66.249.73.216'),
(124, '276', '', 1421717214, '148.251.183.105'),
(125, '108', '', 1421717464, '66.249.73.216'),
(126, '108', '', 1421737266, '66.249.73.232'),
(127, '336', '', 1421739065, '66.249.73.232'),
(128, '192', '', 1421751144, '66.249.65.175'),
(129, '108', '', 1421752852, '66.249.73.224'),
(130, '303', '', 1421757762, '66.249.73.216'),
(131, '108', '', 1421765743, '66.249.73.232'),
(132, '319', '', 1421771308, '66.249.73.224'),
(133, '276', '', 1421771747, '148.251.183.105'),
(134, '108', '', 1421781125, '66.249.73.232'),
(135, '184', '', 1421802850, '66.249.90.95'),
(136, '319', '', 1421826463, '66.249.73.232'),
(137, '342', '', 1421827978, '46.105.98.166'),
(138, '341', '', 1421827986, '46.105.98.166'),
(139, '340', '', 1421827994, '46.105.98.166'),
(140, '339', '', 1421828000, '46.105.98.166'),
(141, '338', '', 1421828011, '46.105.98.166'),
(142, '337', '', 1421828016, '46.105.98.166'),
(143, '336', '', 1421828024, '46.105.98.166'),
(144, '331', '', 1421828028, '46.105.98.166'),
(145, '326', '', 1421828034, '46.105.98.166'),
(146, '325', '', 1421828044, '46.105.98.166'),
(147, '324', '', 1421828051, '46.105.98.166'),
(148, '323', '', 1421828059, '46.105.98.166'),
(149, '322', '', 1421828063, '46.105.98.166'),
(150, '320', '', 1421828075, '46.105.98.166'),
(151, '319', '', 1421828080, '46.105.98.166'),
(152, '318', '', 1421828086, '46.105.98.166'),
(153, '108', '', 1421828131, '46.105.98.166'),
(154, '184', '', 1421828135, '46.105.98.166'),
(155, '192', '', 1421828140, '46.105.98.166'),
(156, '276', '', 1421828144, '46.105.98.166'),
(157, '303', '', 1421828148, '46.105.98.166'),
(158, '308', '', 1421828155, '46.105.98.166'),
(159, '307', '', 1421828160, '46.105.98.166'),
(160, '292', '', 1421828164, '46.105.98.166'),
(161, '290', '', 1421828168, '46.105.98.166'),
(162, '317', '', 1421828172, '46.105.98.166'),
(163, '298', '', 1421828176, '46.105.98.166'),
(164, '342', '', 1421828439, '46.105.98.166'),
(165, '251', '', 1421828474, '46.105.98.166'),
(166, '106', '', 1421828487, '46.105.98.166'),
(167, '234', '', 1421828498, '46.105.98.166'),
(168, '106', '', 1421828501, '46.105.98.166'),
(169, '280', '', 1421828504, '46.105.98.166'),
(170, '136', '', 1421828511, '46.105.98.166'),
(171, '296', '', 1421828518, '46.105.98.166'),
(172, '269', '', 1421828531, '46.105.98.166'),
(173, '275', '', 1421828536, '46.105.98.166'),
(174, '341', '', 1421828551, '46.105.98.166'),
(175, '182', '', 1421828561, '46.105.98.166'),
(176, '238', '', 1421828569, '46.105.98.166'),
(177, '305', '', 1421828582, '46.105.98.166'),
(178, '268', '', 1421828593, '46.105.98.166'),
(179, '305', '', 1421828594, '46.105.98.166'),
(180, '253', '', 1421828601, '46.105.98.166'),
(181, '262', '', 1421828606, '46.105.98.166'),
(182, '287', '', 1421828612, '46.105.98.166'),
(183, '340', '', 1421828620, '46.105.98.166'),
(184, '297', '', 1421828630, '46.105.98.166'),
(185, '117', '', 1421828636, '46.105.98.166'),
(186, '283', '', 1421828643, '46.105.98.166'),
(187, '293', '', 1421828651, '46.105.98.166'),
(188, '286', '', 1421828657, '46.105.98.166'),
(189, '107', '', 1421828665, '46.105.98.166'),
(190, '295', '', 1421828676, '46.105.98.166'),
(191, '339', '', 1421828683, '46.105.98.166'),
(192, '137', '', 1421828699, '46.105.98.166'),
(193, '338', '', 1421828710, '46.105.98.166'),
(194, '337', '', 1421828719, '46.105.98.166'),
(195, '336', '', 1421828727, '46.105.98.166'),
(196, '331', '', 1421828736, '46.105.98.166'),
(197, '231', '', 1421828747, '46.105.98.166'),
(198, '288', '', 1421828756, '46.105.98.166'),
(199, '274', '', 1421828761, '46.105.98.166'),
(200, '242', '', 1421828772, '46.105.98.166'),
(201, '232', '', 1421828777, '46.105.98.166'),
(202, '144', '', 1421828784, '46.105.98.166'),
(203, '124', '', 1421828789, '46.105.98.166'),
(204, '226', '', 1421828794, '46.105.98.166'),
(205, '247', '', 1421828805, '46.105.98.166'),
(206, '326', '', 1421828809, '46.105.98.166'),
(207, '236', '', 1421828823, '46.105.98.166'),
(208, '289', '', 1421828835, '46.105.98.166'),
(209, '325', '', 1421828839, '46.105.98.166'),
(210, '263', '', 1421828850, '46.105.98.166'),
(211, '102', '', 1421828856, '46.105.98.166'),
(212, '282', '', 1421828868, '46.105.98.166'),
(213, '265', '', 1421828874, '46.105.98.166'),
(214, '109', '', 1421828886, '46.105.98.166'),
(215, '324', '', 1421828892, '46.105.98.166'),
(216, '285', '', 1421828905, '46.105.98.166'),
(217, '260', '', 1421828916, '46.105.98.166'),
(218, '264', '', 1421828921, '46.105.98.166'),
(219, '105', '', 1421828930, '46.105.98.166'),
(220, '185', '', 1421828935, '46.105.98.166'),
(221, '323', '', 1421828947, '46.105.98.166'),
(222, '320', '', 1421828956, '46.105.98.166'),
(223, '273', '', 1421828968, '46.105.98.166'),
(224, '170', '', 1421828974, '46.105.98.166'),
(225, '175', '', 1421828979, '46.105.98.166'),
(226, '201', '', 1421828982, '46.105.98.166'),
(227, '172', '', 1421828987, '46.105.98.166'),
(228, '284', '', 1421828991, '46.105.98.166'),
(229, '270', '', 1421828996, '46.105.98.166'),
(230, '169', '', 1421829000, '46.105.98.166'),
(231, '319', '', 1421829012, '46.105.98.166'),
(232, '165', '', 1421829021, '46.105.98.166'),
(233, '130', '', 1421829025, '46.105.98.166'),
(234, '158', '', 1421829030, '46.105.98.166'),
(235, '313', '', 1421829035, '46.105.98.166'),
(236, '190', '', 1421829042, '46.105.98.166'),
(237, '302', '', 1421829046, '46.105.98.166'),
(238, '309', '', 1421829050, '46.105.98.166'),
(239, '152', '', 1421829057, '46.105.98.166'),
(240, '167', '', 1421829061, '46.105.98.166'),
(241, '318', '', 1421829065, '46.105.98.166'),
(242, '108', '', 1421829128, '46.105.98.166'),
(243, '184', '', 1421829143, '46.105.98.166'),
(244, '237', '', 1421829152, '46.105.98.166'),
(245, '299', '', 1421829159, '46.105.98.166'),
(246, '257', '', 1421829167, '46.105.98.166'),
(247, '304', '', 1421829172, '46.105.98.166'),
(248, '192', '', 1421829184, '46.105.98.166'),
(249, '98', '', 1421829193, '46.105.98.166'),
(250, '160', '', 1421829203, '46.105.98.166'),
(251, '162', '', 1421829207, '46.105.98.166'),
(252, '168', '', 1421829211, '46.105.98.166'),
(253, '156', '', 1421829214, '46.105.98.166'),
(254, '276', '', 1421829218, '46.105.98.166'),
(255, '303', '', 1421829228, '46.105.98.166'),
(256, '308', '', 1421829237, '46.105.98.166'),
(257, '307', '', 1421829252, '46.105.98.166'),
(258, '292', '', 1421829268, '46.105.98.166'),
(259, '290', '', 1421829276, '46.105.98.166'),
(260, '317', '', 1421829285, '46.105.98.166'),
(261, '164', '', 1421829293, '46.105.98.166'),
(262, '159', '', 1421829297, '46.105.98.166'),
(263, '311', '', 1421829303, '46.105.98.166'),
(264, '300', '', 1421829314, '46.105.98.166'),
(265, '298', '', 1421829318, '46.105.98.166'),
(266, '266', '', 1421830200, '46.105.98.166'),
(267, '258', '', 1421830206, '46.105.98.166'),
(268, '254', '', 1421830215, '46.105.98.166'),
(269, '133', '', 1421830221, '46.105.98.166'),
(270, '294', '', 1421830228, '46.105.98.166'),
(271, '234', '', 1421830309, '46.105.98.166'),
(272, '108', '', 1421853692, '66.249.73.224'),
(273, '179', '', 1421853724, '198.27.66.194'),
(274, '147', '', 1421853737, '198.27.66.194'),
(275, '307', '', 1421861557, '66.249.73.224'),
(276, '108', '', 1421869654, '66.249.79.64'),
(277, '292', '', 1421872785, '66.249.79.48'),
(278, '336', '', 1421872841, '66.249.79.56'),
(279, '319', '', 1421872955, '66.249.79.48'),
(280, '181', '', 1421878483, '66.249.79.56'),
(281, '290', '', 1421878768, '66.249.79.64'),
(282, '108', '', 1421880022, '66.249.79.56'),
(283, '317', '', 1421880334, '136.243.14.166'),
(284, '164', '', 1421880367, '136.243.14.166'),
(285, '331', '', 1421880378, '136.243.14.166'),
(286, '338', '', 1421880430, '136.243.14.166'),
(287, '245', '', 1421880437, '136.243.14.166'),
(288, '317', '', 1421880444, '136.243.14.166'),
(289, '246', '', 1421880452, '136.243.14.166'),
(290, '181', '', 1421880474, '136.243.14.166'),
(291, '157', '', 1421880488, '136.243.14.166'),
(292, '323', '', 1421880496, '136.243.14.166'),
(293, '298', '', 1421880502, '136.243.14.166'),
(294, '157', '', 1421880520, '136.243.14.166'),
(295, '289', '', 1421880585, '136.243.14.166'),
(296, '181', '', 1421880592, '136.243.14.166'),
(297, '249', '', 1421880597, '136.243.14.166'),
(298, '298', '', 1421880608, '136.243.14.166'),
(299, '318', '', 1421882530, '66.249.79.56'),
(300, '323', '', 1421882587, '66.249.79.48'),
(301, '303', '', 1421882758, '66.249.79.48'),
(302, '336', '', 1421882929, '66.249.79.64'),
(303, '319', '', 1421883043, '66.249.79.56'),
(304, '336', '', 1421883727, '66.249.79.64'),
(305, '147', '', 1421887944, '66.249.79.56'),
(306, '338', '', 1421888001, '66.249.79.48'),
(307, '103', '', 1421888058, '66.249.79.64'),
(308, '308', '', 1421888173, '66.249.79.56'),
(309, '307', '', 1421888229, '66.249.79.64'),
(310, '292', '', 1421888286, '66.249.79.56'),
(311, '108', '', 1421889440, '66.249.79.56'),
(312, '338', '', 1421891364, '66.249.79.56'),
(313, '337', '', 1421891478, '66.249.79.48'),
(314, '136', '', 1421891591, '66.249.79.48'),
(315, '109', '', 1421891821, '66.249.79.48'),
(316, '318', '', 1421891876, '66.249.79.64'),
(317, '120', '', 1421891933, '66.249.79.48'),
(318, '140', '', 1421891993, '66.249.79.48'),
(319, '141', '', 1421892048, '66.249.79.48'),
(320, '125', '', 1421892162, '66.249.79.64'),
(321, '173', '', 1421892390, '66.249.79.64'),
(322, '316', '', 1421892674, '66.249.79.64'),
(323, '139', '', 1421892731, '66.249.79.64'),
(324, '289', '', 1421892903, '66.249.79.64'),
(325, '205', '', 1421893016, '66.249.79.56'),
(326, '306', '', 1421893472, '66.249.79.48'),
(327, '288', '', 1421893586, '66.249.79.48'),
(328, '98', '', 1421893700, '66.249.79.56'),
(329, '169', '', 1421893757, '66.249.79.48'),
(330, '291', '', 1421893814, '66.249.79.48'),
(331, '339', '', 1421893873, '66.249.79.48'),
(332, '143', '', 1421893929, '66.249.79.56'),
(333, '290', '', 1421893985, '66.249.79.64'),
(334, '126', '', 1421894726, '66.249.79.64'),
(335, '136', '', 1421896381, '66.249.79.64'),
(336, '120', '', 1421897140, '66.249.79.64'),
(337, '323', '', 1421897348, '66.249.79.48'),
(338, '137', '', 1421897405, '66.249.79.64'),
(339, '336', '', 1421897519, '66.249.79.56'),
(340, '318', '', 1421897633, '66.249.79.64'),
(341, '319', '', 1421897690, '66.249.79.64'),
(342, '303', '', 1421897747, '66.249.79.56'),
(343, '173', '', 1421897835, '66.249.79.48'),
(344, '176', '', 1421898146, '66.249.79.56'),
(345, '134', '', 1421898261, '66.249.79.48'),
(346, '134', '', 1421898781, '66.249.79.64'),
(347, '273', '', 1421899980, '66.249.79.64'),
(348, '306', '', 1421901032, '66.249.79.56'),
(349, '170', '', 1421903799, '66.249.79.56'),
(350, '144', '', 1421905172, '66.249.79.56'),
(351, '148', '', 1421907645, '66.249.79.56'),
(352, '164', '', 1421907790, '66.249.79.48'),
(353, '319', '', 1421907895, '66.249.79.48'),
(354, '303', '', 1421908679, '66.249.79.48'),
(355, '288', '', 1421910657, '66.249.79.56'),
(356, '206', '', 1421913791, '66.249.79.56'),
(357, '127', '', 1421914556, '66.249.79.64'),
(358, '177', '', 1421915123, '66.249.79.48'),
(359, '239', '', 1421917824, '66.249.79.46'),
(360, '340', '', 1421918338, '66.249.79.46'),
(361, '342', '', 1421918561, '66.249.79.30'),
(362, '307', '', 1421921450, '66.249.79.48'),
(363, '336', '', 1421921519, '66.249.79.56'),
(364, '338', '', 1421921585, '66.249.79.64'),
(365, '108', '', 1421921721, '66.249.79.56'),
(366, '319', '', 1421921857, '66.249.79.64'),
(367, '317', '', 1421926147, '66.249.79.64'),
(368, '290', '', 1421929716, '66.249.79.56'),
(369, '323', '', 1421929908, '66.249.79.56'),
(370, '318', '', 1421930197, '66.249.79.56'),
(371, '303', '', 1421930873, '66.249.79.64'),
(372, '239', '', 1421934344, '66.249.79.30'),
(373, '308', '', 1421934441, '66.249.79.64'),
(374, '292', '', 1421935115, '66.249.79.56'),
(375, '323', '', 1422021712, '127.0.0.1'),
(376, '323', '', 1422021892, '127.0.0.1'),
(377, '323', '', 1424619482, '127.0.0.1'),
(378, '318', '', 1424619692, '127.0.0.1'),
(379, '343', '', 1426588006, '127.0.0.1'),
(380, '343', '', 1426588013, '127.0.0.1'),
(381, '343', '', 1426588725, '127.0.0.1'),
(382, '343', '', 1426588733, '127.0.0.1'),
(383, '343', '', 1426588739, '127.0.0.1'),
(384, '343', '', 1426588748, '127.0.0.1'),
(385, '343', '', 1426588925, '127.0.0.1'),
(386, '343', '', 1426588932, '127.0.0.1'),
(387, '298', '', 1426589004, '127.0.0.1'),
(388, '343', '', 1426589668, '127.0.0.1'),
(389, '343', '', 1426589698, '127.0.0.1'),
(390, '343', '', 1426589914, '127.0.0.1'),
(391, '343', '', 1426589923, '127.0.0.1'),
(392, '343', '', 1426589931, '127.0.0.1'),
(393, '343', '', 1426589992, '127.0.0.1'),
(394, '343', '', 1426590304, '127.0.0.1'),
(395, '343', '', 1426590334, '127.0.0.1'),
(396, '343', '', 1426590343, '127.0.0.1'),
(397, '343', '', 1426600208, '127.0.0.1'),
(398, '343', '', 1426600577, '127.0.0.1'),
(399, '343', '', 1426601007, '127.0.0.1'),
(400, '343', '', 1426601051, '127.0.0.1'),
(401, '343', '', 1426601077, '127.0.0.1'),
(402, '343', '', 1426601112, '127.0.0.1'),
(403, '343', '', 1426601222, '127.0.0.1'),
(404, '343', '', 1426601326, '127.0.0.1'),
(405, '343', '', 1426601374, '127.0.0.1'),
(406, '343', '', 1426601609, '127.0.0.1'),
(407, '343', '', 1426601643, '127.0.0.1'),
(408, '343', '', 1426601930, '127.0.0.1'),
(409, '343', '', 1426601972, '127.0.0.1'),
(410, '343', '', 1426606394, '127.0.0.1'),
(411, '343', '', 1426607250, '127.0.0.1'),
(412, '343', '', 1426607274, '127.0.0.1'),
(413, '343', '', 1426607388, '127.0.0.1'),
(414, '343', '', 1426607397, '127.0.0.1'),
(415, '343', '', 1426609971, '127.0.0.1'),
(416, '343', '', 1426610605, '127.0.0.1'),
(417, '343', '', 1426610716, '127.0.0.1'),
(418, '343', '', 1426610757, '127.0.0.1'),
(419, '343', '', 1426611222, '127.0.0.1'),
(420, '343', '', 1426611270, '127.0.0.1'),
(421, '343', '', 1426611322, '127.0.0.1'),
(422, '343', '', 1426611347, '127.0.0.1'),
(423, '343', '', 1426611371, '127.0.0.1'),
(424, '290', '', 1431813050, '127.0.0.1'),
(425, '201', '', 1431813086, '127.0.0.1'),
(426, '98', '', 1431813090, '127.0.0.1'),
(427, '340', '', 1431813102, '127.0.0.1'),
(428, '169', '', 1431813117, '127.0.0.1'),
(429, '342', '', 1431813124, '127.0.0.1'),
(430, '168', '', 1431813133, '127.0.0.1'),
(431, '198', '', 1431813141, '127.0.0.1'),
(432, '168', '', 1431841039, '127.0.0.1'),
(433, '343', '', 1459702899, '127.0.0.1'),
(434, '343', '', 1459702907, '127.0.0.1'),
(435, '343', '', 1462457101, '127.0.0.1'),
(436, '343', '', 1462457113, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `worlds`
--

CREATE TABLE IF NOT EXISTS `worlds` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `world` varchar(255) NOT NULL,
  `dictionary` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(1) NOT NULL,
  `rating` float NOT NULL,
  `total_rating` float NOT NULL,
  `total_rates` int(11) NOT NULL,
  `ip_address` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worlds`
--

INSERT INTO `worlds` (`id`, `user`, `cat`, `world`, `dictionary`, `date`, `active`, `rating`, `total_rating`, `total_rates`, `ip_address`) VALUES
(1, 11, 1, 'A prior probabilityffffffffdfgdf', '<p>fgsfdgs dfgdffgdfgdf</p>', '2014-02-28 20:51:27', 1, 5.28889, 142.8, 27, ',31.146.40.62,127.0.0.1'),
(2, 11, 1, 'Abnormal Profit', 'Equal to accounting Profit less the implicit opportunity costs not included in total accounting costs; the difference between total revenue (TR) and total cost (TC)', '2014-02-28 20:51:27', 0, 0, 0, 0, ''),
(3, 0, 2, 'Abnormal Return', 'the amount by which a security’s actual return differs from its expected return, given the security’s risk and market’s return', '2014-03-01 07:35:19', 1, 8, 8, 1, ',31.146.40.62'),
(4, 11, 4, 'Absolute advantage ', '<p>A country&rsquo;s ability to produce a good or service at a lower absolute cost than trading partner.</p>', '2014-03-01 07:35:19', 0, 0, 0, 0, ''),
(5, 11, 3, 'Absolute Dispersion', 'The amount of variability present without comparison to any reference point or benchmark', '2014-03-01 07:35:58', 1, 4, 4, 1, ',31.146.40.62'),
(6, 11, 3, 'Absolute Frequency', '<p>number of observations in a given interval (for grouped data)</p>', '2014-03-01 07:35:58', 1, 9, 9, 1, ',31.146.40.62'),
(7, 11, 1, 'dfgdf', '<p>dfgdfg dfgdfgd</p>', '2014-03-23 22:21:10', 1, 8, 8, 1, ',31.146.40.62'),
(8, 11, 1, 'dfgdf', '<p>dfgdfg dfgdfgd</p>', '2014-03-23 22:21:39', 0, 0, 0, 0, ''),
(10, 11, 3, 'tfdghdfg', '<p>gh dfghdghdfg</p>', '2014-03-23 22:43:20', 1, 8, 16, 2, ',31.146.40.62');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chanels`
--
ALTER TABLE `chanels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chanel_cat`
--
ALTER TABLE `chanel_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compilation`
--
ALTER TABLE `compilation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ganres`
--
ALTER TABLE `ganres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likedislike`
--
ALTER TABLE `likedislike`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies_quality`
--
ALTER TABLE `movies_quality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_actors`
--
ALTER TABLE `movie_actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_ganres`
--
ALTER TABLE `movie_ganres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_links`
--
ALTER TABLE `movie_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_rejisor`
--
ALTER TABLE `movie_rejisor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_views`
--
ALTER TABLE `movie_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onlinemovie`
--
ALTER TABLE `onlinemovie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quality`
--
ALTER TABLE `quality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_user`
--
ALTER TABLE `temp_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `torrentlinks`
--
ALTER TABLE `torrentlinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_fav`
--
ALTER TABLE `user_fav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `worlds`
--
ALTER TABLE `worlds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `chanels`
--
ALTER TABLE `chanels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `chanel_cat`
--
ALTER TABLE `chanel_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `compilation`
--
ALTER TABLE `compilation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ganres`
--
ALTER TABLE `ganres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=274;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `likedislike`
--
ALTER TABLE `likedislike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=320;
--
-- AUTO_INCREMENT for table `movie_actors`
--
ALTER TABLE `movie_actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `movie_ganres`
--
ALTER TABLE `movie_ganres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `movie_links`
--
ALTER TABLE `movie_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `movie_rejisor`
--
ALTER TABLE `movie_rejisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `movie_views`
--
ALTER TABLE `movie_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `onlinemovie`
--
ALTER TABLE `onlinemovie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `quality`
--
ALTER TABLE `quality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `temp_user`
--
ALTER TABLE `temp_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `torrentlinks`
--
ALTER TABLE `torrentlinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `user_fav`
--
ALTER TABLE `user_fav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=344;
--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=437;
--
-- AUTO_INCREMENT for table `worlds`
--
ALTER TABLE `worlds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
