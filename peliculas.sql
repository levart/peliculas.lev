-- phpMyAdmin SQL Dump
-- version 4.4.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 25, 2016 at 10:05 AM
-- Server version: 5.6.25-log
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peliculas`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE IF NOT EXISTS `actors` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `real_name` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `birth_loc` varchar(255) NOT NULL,
  `proff` varchar(255) NOT NULL,
  `height` double NOT NULL,
  `img` varchar(255) NOT NULL,
  `biography` text NOT NULL,
  `raiting` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1162 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`ID`, `name`, `real_name`, `birthdate`, `birth_loc`, `proff`, `height`, `img`, `biography`, `raiting`) VALUES
(4, 'actor 4', '', '', '', '', 0, 'http://allanimes.net/assets/images/actor.jpeg', '', 0),
(5, 'actor 1', '', '', '', '', 0, 'http://allanimes.net/assets/images/actor.jpeg', '', 0),
(6, 'actor 2', '', '', '', '', 0, 'http://allanimes.net/assets/images/actor.jpeg', '', 0),
(7, 'Brad Pitt', '', '', '', '', 0, '', '', 0),
(8, 'David Thewlis', '', '', '', '', 0, '', '', 0),
(9, 'BD Wong', '', '', '', '', 0, '', '', 0),
(10, 'Mako', '', '', '', '', 0, '', '', 0),
(11, 'Danny Denzongpa', '', '', '', '', 0, '', '', 0),
(12, 'Victor Wong', '', '', '', '', 0, '', '', 0),
(13, 'Ingeborga Dapkunaite', '', '', '', '', 0, '', '', 0),
(14, 'Jamyang Jamtsho Wangchuk', '', '', '', '', 0, '', '', 0),
(15, 'Lhakpa Tsamchoe', '', '', '', '', 0, '', '', 0),
(16, 'Jetsun Pema', '', '', '', '', 0, '', '', 0),
(17, 'Ama Ashe Dongtse', '', '', '', '', 0, '', '', 0),
(18, 'Sonam Wangchuk', '', '', '', '', 0, '', '', 0),
(19, 'Dorjee Tsering', '', '', '', '', 0, '', '', 0),
(20, 'Ric Young', '', '', '', '', 0, '', '', 0),
(21, 'Ngawang Chojor', '', '', '', '', 0, '', '', 0),
(22, 'Duncan Fraser', '', '', '', '', 0, '', '', 0),
(23, 'Benedick Blythe', '', '', '', '', 0, '', '', 0),
(24, 'Tom Raudaschl', '', '', '', '', 0, '', '', 0),
(25, 'Wolfgang Tonninger', '', '', '', '', 0, '', '', 0),
(26, 'Samdup Dhargyal', '', '', '', '', 0, '', '', 0),
(27, 'Chemchok', '', '', '', '', 0, '', '', 0),
(28, 'Tenzin Jangchub', '', '', '', '', 0, '', '', 0),
(29, 'Angphurba Sherpa', '', '', '', '', 0, '', '', 0),
(30, 'Tsering Wangdue', '', '', '', '', 0, '', '', 0),
(31, 'Yama Ngudup Cheshatsang', '', '', '', '', 0, '', '', 0),
(32, 'Kalsang Dhundop Lungtok', '', '', '', '', 0, '', '', 0),
(33, 'Sonam Bidhartsang', '', '', '', '', 0, '', '', 0),
(34, 'Lama Champa Tsondu', '', '', '', '', 0, '', '', 0),
(35, 'Geshe Lobsang Nyma', '', '', '', '', 0, '', '', 0),
(36, 'Geshe Yeshi Tsultrim', '', '', '', '', 0, '', '', 0),
(37, 'Lama Champa Chandu', '', '', '', '', 0, '', '', 0),
(38, 'Pemba Norbu Sherpa', '', '', '', '', 0, '', '', 0),
(39, 'Karma Apo-Tsang', '', '', '', '', 0, '', '', 0),
(40, 'Ngawang Tenzingyatso', '', '', '', '', 0, '', '', 0),
(41, 'Choeden Tsering', '', '', '', '', 0, '', '', 0),
(42, 'Lama Jampa Lekshe', '', '', '', '', 0, '', '', 0),
(43, 'Lama Thupten Nugdup', '', '', '', '', 0, '', '', 0),
(44, 'Daniel Tedeschi', '', '', '', '', 0, '', '', 0),
(45, 'Gerardo Ebert', '', '', '', '', 0, '', '', 0),
(46, 'Sebastian Zevalia', '', '', '', '', 0, '', '', 0),
(47, 'Philipp Kriechbaum', '', '', '', '', 0, '', '', 0),
(48, 'Lobsang Gendun Rinpoche', '', '', '', '', 0, '', '', 0),
(49, 'Tenzin Gyaltsen Rinpoche', '', '', '', '', 0, '', '', 0),
(50, 'Sharpa Tulku Rinpoche', '', '', '', '', 0, '', '', 0),
(51, 'Zongra Tulku Rinpoche', '', '', '', '', 0, '', '', 0),
(52, 'Victor A. Haddox', '', '', '', '', 0, '', '', 0),
(53, 'Vince Vaughn', '', '', '', '', 0, '', '', 0),
(54, 'Hailee Steinfeld', '', '', '', '', 0, '', '', 0),
(55, 'Bill Paxton', '', '', '', '', 0, '', '', 0),
(56, 'Jonathan Banks', '', '', '', '', 0, '', '', 0),
(57, 'Jordi Mollà', '', '', '', '', 0, '', '', 0),
(58, 'Terrence Howard', '', '', '', '', 0, '', '', 0),
(59, 'Shea Whigham', '', '', '', '', 0, '', '', 0),
(60, 'Jon Favreau', '', '', '', '', 0, '', '', 0),
(61, 'William Levy', '', '', '', '', 0, '', '', 0),
(62, 'Mike Epps', '', '', '', '', 0, '', '', 0),
(63, 'Taraji P. Henson', '', '', '', '', 0, '', '', 0),
(64, 'Cain Velasquez', '', '', '', '', 0, '', '', 0),
(65, 'Rio Hackford', '', '', '', '', 0, '', '', 0),
(66, 'Annabeth Gish', '', '', '', '', 0, '', '', 0),
(67, 'Brian F. Durkin', '', '', '', '', 0, '', '', 0),
(68, 'James Paxton', '', '', '', '', 0, '', '', 0),
(69, 'Manuel Garcia-Rulfo', '', '', '', '', 0, '', '', 0),
(70, 'Brent Briscoe', '', '', '', '', 0, '', '', 0),
(71, 'Peggy Sheffield', '', '', '', '', 0, '', '', 0),
(72, 'Javier Carrasquillo', '', '', '', '', 0, '', '', 0),
(73, 'Jose Miguel Vasquez', '', '', '', '', 0, '', '', 0),
(74, 'Fernando Martinez', '', '', '', '', 0, '', '', 0),
(75, 'Aerli Austen', '', '', '', '', 0, '', '', 0),
(76, 'Kaylie Turner', '', '', '', '', 0, '', '', 0),
(77, 'Joshua Mikel', '', '', '', '', 0, '', '', 0),
(78, 'Morganna Bridgers', '', '', '', '', 0, '', '', 0),
(79, 'Vernon Vaughn', '', '', '', '', 0, '', '', 0),
(80, 'Shea Vaughn', '', '', '', '', 0, '', '', 0),
(81, 'Griffin Freeman', '', '', '', '', 0, '', '', 0),
(82, 'Ian Gregg', '', '', '', '', 0, '', '', 0),
(83, 'Terri Abney', '', '', '', '', 0, '', '', 0),
(84, 'Danna Maret', '', '', '', '', 0, '', '', 0),
(85, 'Derek Roberts', '', '', '', '', 0, '', '', 0),
(86, 'Kate Forbes', '', '', '', '', 0, '', '', 0),
(87, 'Cranston Johnson', '', '', '', '', 0, '', '', 0),
(88, 'Hayes Mercure', '', '', '', '', 0, '', '', 0),
(89, 'Jean P. Hernandez', '', '', '', '', 0, '', '', 0),
(90, 'Tracye Hutchins', '', '', '', '', 0, '', '', 0),
(91, 'Rebekka Schramm Moorer', '', '', '', '', 0, '', '', 0),
(92, 'Jennifer Shu', '', '', '', '', 0, '', '', 0),
(93, 'Anna Colwell', '', '', '', '', 0, '', '', 0),
(94, 'Trevor Garner', '', '', '', '', 0, '', '', 0),
(95, 'Darren Radcliff', '', '', '', '', 0, '', '', 0),
(96, 'Robert Pralgo', '', '', '', '', 0, '', '', 0),
(97, 'Julia Butters', '', '', '', '', 0, '', '', 0),
(98, 'Matthew Willig', '', '', '', '', 0, '', '', 0),
(99, 'Tait Fletcher', '', '', '', '', 0, '', '', 0),
(100, 'Ava Acres', '', '', '', '', 0, '', '', 0),
(101, 'Travis Johns', '', '', '', '', 0, '', '', 0),
(102, 'Peter Mackenzie', '', '', '', '', 0, '', '', 0),
(103, 'Joseph C. Nelson', '', '', '', '', 0, '', '', 0),
(104, 'Shane Callahan', '', '', '', '', 0, '', '', 0),
(105, 'Haji Abdullah', '', '', '', '', 0, '', '', 0),
(106, 'Ben Atkins', '', '', '', '', 0, '', '', 0),
(107, 'Carlos Aviles', '', '', '', '', 0, '', '', 0),
(108, 'Lisa M. Barfield', '', '', '', '', 0, '', '', 0),
(109, 'Bryan Basil', '', '', '', '', 0, '', '', 0),
(110, 'Jenna Marie Bowers', '', '', '', '', 0, '', '', 0),
(111, 'Àaron Brewster', '', '', '', '', 0, '', '', 0),
(112, 'Sandhya Chandel', '', '', '', '', 0, '', '', 0),
(113, 'Tarik Chernet', '', '', '', '', 0, '', '', 0),
(114, 'Anthony Collins', '', '', '', '', 0, '', '', 0),
(115, 'Charles William Cook', '', '', '', '', 0, '', '', 0),
(116, 'Josh Davis', '', '', '', '', 0, '', '', 0),
(117, 'Cécile De France', '', '', '', '', 0, '', '', 0),
(118, 'Mary Louise Edwards', '', '', '', '', 0, '', '', 0),
(119, 'Gregory Fears', '', '', '', '', 0, '', '', 0),
(120, 'Michelle Flanagan-Helmeczy', '', '', '', '', 0, '', '', 0),
(121, 'Faye Foley', '', '', '', '', 0, '', '', 0),
(122, 'Georgy Fontanals', '', '', '', '', 0, '', '', 0),
(123, 'Jeff Glover', '', '', '', '', 0, '', '', 0),
(124, 'Keith Ham', '', '', '', '', 0, '', '', 0),
(125, 'Regina Harbour', '', '', '', '', 0, '', '', 0),
(126, 'Rory Healy', '', '', '', '', 0, '', '', 0),
(127, 'Robert Hendren', '', '', '', '', 0, '', '', 0),
(128, 'Allen Hogan', '', '', '', '', 0, '', '', 0),
(129, 'Yoel Kanchelov', '', '', '', '', 0, '', '', 0),
(130, 'Sunny Kelley', '', '', '', '', 0, '', '', 0),
(131, 'David Dustin Kenyon', '', '', '', '', 0, '', '', 0),
(132, 'Levi Krevinghaus', '', '', '', '', 0, '', '', 0),
(133, 'Inder Kumar', '', '', '', '', 0, '', '', 0),
(134, 'Stephanie Long', '', '', '', '', 0, '', '', 0),
(135, 'Agnes Mayasari', '', '', '', '', 0, '', '', 0),
(136, 'Roger Neal', '', '', '', '', 0, '', '', 0),
(137, 'Darone Okolie', '', '', '', '', 0, '', '', 0),
(138, 'Heather Palacio', '', '', '', '', 0, '', '', 0),
(139, 'Mason Pike', '', '', '', '', 0, '', '', 0),
(140, 'Della Porter', '', '', '', '', 0, '', '', 0),
(141, 'Blake Sewell', '', '', '', '', 0, '', '', 0),
(142, 'Josh Turner', '', '', '', '', 0, '', '', 0),
(143, 'Ellen DeGeneres', '', '', '', '', 0, '', '', 0),
(144, 'Kristen Bell', '', '', '', '', 0, '', '', 0),
(145, 'Michael Phelps', '', '', '', '', 0, '', '', 0),
(146, 'John Oliver', '', '', '', '', 0, '', '', 0),
(147, 'Cachet Raynor', '', '', '', '', 0, '', '', 0),
(148, 'Will Smith', '', '', '', '', 0, '', '', 0),
(149, 'Jaime FitzSimons', '', '', '', '', 0, '', '', 0),
(150, 'Ike Barinholtz', '', '', '', '', 0, '', '', 0),
(151, 'Margot Robbie', '', '', '', '', 0, '', '', 0),
(152, 'Christopher Dyson', '', '', '', '', 0, '', '', 0),
(153, 'Bambadjan Bamba', '', '', '', '', 0, '', '', 0),
(154, 'Viola Davis', '', '', '', '', 0, '', '', 0),
(155, 'Ted Whittall', '', '', '', '', 0, '', '', 0),
(156, 'David Harbour', '', '', '', '', 0, '', '', 0),
(157, 'Robin Atkin Downes', '', '', '', '', 0, '', '', 0),
(158, 'Robert B. Kennedy', '', '', '', '', 0, '', '', 0),
(159, 'Billy Otis', '', '', '', '', 0, '', '', 0),
(160, 'Shailyn Pierre-Dixon', '', '', '', '', 0, '', '', 0),
(161, 'Jared Leto', '', '', '', '', 0, '', '', 0),
(162, 'James McGowan', '', '', '', '', 0, '', '', 0),
(163, 'Jim Parrack', '', '', '', '', 0, '', '', 0),
(164, 'Derek Perks', '', '', '', '', 0, '', '', 0),
(165, 'Common', '', '', '', '', 0, '', '', 0),
(166, 'Jai Courtney', '', '', '', '', 0, '', '', 0),
(167, 'Ezra Miller', '', '', '', '', 0, '', '', 0),
(168, 'Jay Hernandez', '', '', '', '', 0, '', '', 0),
(169, 'Adewale Akinnuoye-Agbaje', '', '', '', '', 0, '', '', 0),
(170, 'Cara Delevingne', '', '', '', '', 0, '', '', 0),
(171, 'Joel Kinnaman', '', '', '', '', 0, '', '', 0),
(172, 'Aidan Devine', '', '', '', '', 0, '', '', 0),
(173, 'Andrew Bee', '', '', '', '', 0, '', '', 0),
(174, 'Clive McLean', '', '', '', '', 0, '', '', 0),
(175, 'Frank J. Zupancic', '', '', '', '', 0, '', '', 0),
(176, 'Kent Sheridan', '', '', '', '', 0, '', '', 0),
(177, 'Roger Shank', '', '', '', '', 0, '', '', 0),
(178, 'Dwight Ireland', '', '', '', '', 0, '', '', 0),
(179, 'Amanda Brugel', '', '', '', '', 0, '', '', 0),
(180, 'Peter Tufford Kennedy', '', '', '', '', 0, '', '', 0),
(181, 'Rosemary De Los Santos', '', '', '', '', 0, '', '', 0),
(182, 'Kevin Hanchard', '', '', '', '', 0, '', '', 0),
(183, 'Alain Chanoine', '', '', '', '', 0, '', '', 0),
(184, 'Joel Lacoursiere', '', '', '', '', 0, '', '', 0),
(185, 'Jameson Kraemer', '', '', '', '', 0, '', '', 0),
(186, 'Ho Chow', '', '', '', '', 0, '', '', 0),
(187, 'Matt Baram', '', '', '', '', 0, '', '', 0),
(188, 'Birgitte Solem', '', '', '', '', 0, '', '', 0),
(189, 'Scott Eastwood', '', '', '', '', 0, '', '', 0),
(190, 'Kevin Vance', '', '', '', '', 0, '', '', 0),
(191, 'Alex Meraz', '', '', '', '', 0, '', '', 0),
(192, 'Tyler Grey', '', '', '', '', 0, '', '', 0),
(193, 'Adam Beach', '', '', '', '', 0, '', '', 0),
(194, 'Nathan Brown', '', '', '', '', 0, '', '', 0),
(195, 'Karen Fukuhara', '', '', '', '', 0, '', '', 0),
(196, 'Kenneth Choi', '', '', '', '', 0, '', '', 0),
(197, 'Nicolas Van Burek', '', '', '', '', 0, '', '', 0),
(198, 'Agueda Cardenas', '', '', '', '', 0, '', '', 0),
(199, 'Corina Calderon', '', '', '', '', 0, '', '', 0),
(200, 'Daniela Uruena', '', '', '', '', 0, '', '', 0),
(201, 'Nicolas Uruena', '', '', '', '', 0, '', '', 0),
(202, 'Chris Adams', '', '', '', '', 0, '', '', 0),
(203, 'Ben Affleck', '', '', '', '', 0, '', '', 0),
(204, 'Tim Ajro', '', '', '', '', 0, '', '', 0),
(205, 'Devlin Anderson', '', '', '', '', 0, '', '', 0),
(206, 'Raffi Atamian', '', '', '', '', 0, '', '', 0),
(207, 'Ariane Bellamar', '', '', '', '', 0, '', '', 0),
(208, 'John Byers', '', '', '', '', 0, '', '', 0),
(209, 'Heather Byrne', '', '', '', '', 0, '', '', 0),
(210, 'Corey Chainey', '', '', '', '', 0, '', '', 0),
(211, 'Shak Chaudhry', '', '', '', '', 0, '', '', 0),
(212, 'James Chilli Chillingworth', '', '', '', '', 0, '', '', 0),
(213, 'Andrew Christie', '', '', '', '', 0, '', '', 0),
(214, 'Alex Chung', '', '', '', '', 0, '', '', 0),
(215, 'Gavin R. Downes', '', '', '', '', 0, '', '', 0),
(216, 'Reid Eastwood', '', '', '', '', 0, '', '', 0),
(217, 'Scott Edgecombe', '', '', '', '', 0, '', '', 0),
(218, 'Brendan Egan', '', '', '', '', 0, '', '', 0),
(219, 'Jeff Ellenberger', '', '', '', '', 0, '', '', 0),
(220, 'Mark Falvo', '', '', '', '', 0, '', '', 0),
(221, 'Tatyana Figueiredo', '', '', '', '', 0, '', '', 0),
(222, 'Gary ''Si-Jo'' Foo', '', '', '', '', 0, '', '', 0),
(223, 'Tazito Garcia', '', '', '', '', 0, '', '', 0),
(224, 'Brianna Goldie', '', '', '', '', 0, '', '', 0),
(225, 'Ryan Groves', '', '', '', '', 0, '', '', 0),
(226, 'William Hainsworth', '', '', '', '', 0, '', '', 0),
(227, 'Shawn J. Hamilton', '', '', '', '', 0, '', '', 0),
(228, 'Shane Harbinson', '', '', '', '', 0, '', '', 0),
(229, 'Fatimah Hassan', '', '', '', '', 0, '', '', 0),
(230, 'Darrell Hicks', '', '', '', '', 0, '', '', 0),
(231, 'Dexter Howe', '', '', '', '', 0, '', '', 0),
(232, 'Melanie Hubert', '', '', '', '', 0, '', '', 0),
(233, 'David Ingram', '', '', '', '', 0, '', '', 0),
(234, 'Shane Jarvis', '', '', '', '', 0, '', '', 0),
(235, 'Sergio Kato', '', '', '', '', 0, '', '', 0),
(236, 'Kevin Kent', '', '', '', '', 0, '', '', 0),
(237, 'Martin Kessler', '', '', '', '', 0, '', '', 0),
(238, 'Melissa Lem', '', '', '', '', 0, '', '', 0),
(239, 'John MacDonald', '', '', '', '', 0, '', '', 0),
(240, 'Stephanie Manchulenko', '', '', '', '', 0, '', '', 0),
(241, 'Matthew Mease', '', '', '', '', 0, '', '', 0),
(242, 'Christopher Meneses', '', '', '', '', 0, '', '', 0),
(243, 'Valiant Michael', '', '', '', '', 0, '', '', 0),
(244, 'Sabine Mondestin', '', '', '', '', 0, '', '', 0),
(245, 'Justin Moses', '', '', '', '', 0, '', '', 0),
(246, 'Drew Moss', '', '', '', '', 0, '', '', 0),
(247, 'Michael Murray', '', '', '', '', 0, '', '', 0),
(248, 'Afsheen Olyaie', '', '', '', '', 0, '', '', 0),
(249, 'Dan Petronijevic', '', '', '', '', 0, '', '', 0),
(250, 'Alisha Phillips', '', '', '', '', 0, '', '', 0),
(251, 'Tamina Pollack-Paris', '', '', '', '', 0, '', '', 0),
(252, 'Michael Prather', '', '', '', '', 0, '', '', 0),
(253, 'Dennisha Pratt', '', '', '', '', 0, '', '', 0),
(254, 'Asad Que', '', '', '', '', 0, '', '', 0),
(255, 'Mark Quigley', '', '', '', '', 0, '', '', 0),
(256, 'Darryl Quon', '', '', '', '', 0, '', '', 0),
(257, 'Diezel Ramos', '', '', '', '', 0, '', '', 0),
(258, 'Hugh Scott', '', '', '', '', 0, '', '', 0),
(259, 'Jasmine Sean', '', '', '', '', 0, '', '', 0),
(260, 'Attila Sebesy', '', '', '', '', 0, '', '', 0),
(261, 'Rick Silver', '', '', '', '', 0, '', '', 0),
(262, 'Connor Skific', '', '', '', '', 0, '', '', 0),
(263, 'Jamie Soricelli', '', '', '', '', 0, '', '', 0),
(264, 'Amos Stern', '', '', '', '', 0, '', '', 0),
(265, 'Goran Stjepanovic', '', '', '', '', 0, '', '', 0),
(266, 'Vivienne Taylor', '', '', '', '', 0, '', '', 0),
(267, 'Jasmine Renée Thomas', '', '', '', '', 0, '', '', 0),
(268, 'Alen Toric', '', '', '', '', 0, '', '', 0),
(269, 'Murray Urquhart', '', '', '', '', 0, '', '', 0),
(270, 'Alyssa Veniece', '', '', '', '', 0, '', '', 0),
(271, 'Dallas Wade', '', '', '', '', 0, '', '', 0),
(272, 'Joe Warshaw', '', '', '', '', 0, '', '', 0),
(273, 'Tony Watt', '', '', '', '', 0, '', '', 0),
(274, 'James Weicht', '', '', '', '', 0, '', '', 0),
(275, 'Taylor Whittaker', '', '', '', '', 0, '', '', 0),
(276, 'Hugh Jackman', '', '', '', '', 0, '', '', 0),
(277, 'Dakota Goyo', '', '', '', '', 0, '', '', 0),
(278, 'Evangeline Lilly', '', '', '', '', 0, '', '', 0),
(279, 'Anthony Mackie', '', '', '', '', 0, '', '', 0),
(280, 'Kevin Durand', '', '', '', '', 0, '', '', 0),
(281, 'Hope Davis', '', '', '', '', 0, '', '', 0),
(282, 'James Rebhorn', '', '', '', '', 0, '', '', 0),
(283, 'Karl Yune', '', '', '', '', 0, '', '', 0),
(284, 'Olga Fonda', '', '', '', '', 0, '', '', 0),
(285, 'John Gatins', '', '', '', '', 0, '', '', 0),
(286, 'Sophie Levy', '', '', '', '', 0, '', '', 0),
(287, 'Tess Levy', '', '', '', '', 0, '', '', 0),
(288, 'Charlie Levy', '', '', '', '', 0, '', '', 0),
(289, 'Gregory Sims', '', '', '', '', 0, '', '', 0),
(290, 'Torey Michael Adkins', '', '', '', '', 0, '', '', 0),
(291, 'Tom Carlson', '', '', '', '', 0, '', '', 0),
(292, 'John Hawkinson', '', '', '', '', 0, '', '', 0),
(293, 'David Alan Basche', '', '', '', '', 0, '', '', 0),
(294, 'Phil LaMarr', '', '', '', '', 0, '', '', 0),
(295, 'David Herbst', '', '', '', '', 0, '', '', 0),
(296, 'Julian Gant', '', '', '', '', 0, '', '', 0),
(297, 'Ken Alter', '', '', '', '', 0, '', '', 0),
(298, 'Leilani Barrett', '', '', '', '', 0, '', '', 0),
(299, 'Eric Gutman', '', '', '', '', 0, '', '', 0),
(300, 'Nicholas Yu', '', '', '', '', 0, '', '', 0),
(301, 'D.B. Dickerson', '', '', '', '', 0, '', '', 0),
(302, 'Peter Carey', '', '', '', '', 0, '', '', 0),
(303, 'Dan Lemieux', '', '', '', '', 0, '', '', 0),
(304, 'Richard Goteri', '', '', '', '', 0, '', '', 0),
(305, 'Tim Holmes', '', '', '', '', 0, '', '', 0),
(306, 'Ricky Wayne', '', '', '', '', 0, '', '', 0),
(307, 'Taris Tyler', '', '', '', '', 0, '', '', 0),
(308, 'Kevin Dorman', '', '', '', '', 0, '', '', 0),
(309, 'John Manfredi', '', '', '', '', 0, '', '', 0),
(310, 'Wendy Aaron', '', '', '', '', 0, '', '', 0),
(311, 'Rachael Adams', '', '', '', '', 0, '', '', 0),
(312, 'Mike Ancrile', '', '', '', '', 0, '', '', 0),
(313, 'Lamar Babi', '', '', '', '', 0, '', '', 0),
(314, 'Apollo Bacala', '', '', '', '', 0, '', '', 0),
(315, 'Leah Barkoff', '', '', '', '', 0, '', '', 0),
(316, 'Joshua Ray Bell', '', '', '', '', 0, '', '', 0),
(317, 'Christina M. Bender', '', '', '', '', 0, '', '', 0),
(318, 'Jay J. Bidwell', '', '', '', '', 0, '', '', 0),
(319, 'Clark Birchmeier', '', '', '', '', 0, '', '', 0),
(320, 'Don Boerst', '', '', '', '', 0, '', '', 0),
(321, 'Mark Bonto', '', '', '', '', 0, '', '', 0),
(322, 'Zachary Borromeo', '', '', '', '', 0, '', '', 0),
(323, 'Ben Hernandez Bray', '', '', '', '', 0, '', '', 0),
(324, 'Wayne Brinston', '', '', '', '', 0, '', '', 0),
(325, 'Wayne E. Brown', '', '', '', '', 0, '', '', 0),
(326, 'Geneva Brunetti', '', '', '', '', 0, '', '', 0),
(327, 'Justin Calkins', '', '', '', '', 0, '', '', 0),
(328, 'Steven Campbell', '', '', '', '', 0, '', '', 0),
(329, 'Jeff Caponigro', '', '', '', '', 0, '', '', 0),
(330, 'Michael Patrick Carmody', '', '', '', '', 0, '', '', 0),
(331, 'Ron Causey', '', '', '', '', 0, '', '', 0),
(332, 'Justin Chrzanowski', '', '', '', '', 0, '', '', 0),
(333, 'Michael B. Clark', '', '', '', '', 0, '', '', 0),
(334, 'Will Clarke', '', '', '', '', 0, '', '', 0),
(335, 'Chris Coldren', '', '', '', '', 0, '', '', 0),
(336, 'Sandy Coonan', '', '', '', '', 0, '', '', 0),
(337, 'Jahnel Curfman', '', '', '', '', 0, '', '', 0),
(338, 'Eddie Davenport', '', '', '', '', 0, '', '', 0),
(339, 'Haylee Detroit Dewar', '', '', '', '', 0, '', '', 0),
(340, 'John Dezsi', '', '', '', '', 0, '', '', 0),
(341, 'P.J. Edwards', '', '', '', '', 0, '', '', 0),
(342, 'Shannon Edwards', '', '', '', '', 0, '', '', 0),
(343, 'Raffi Elias', '', '', '', '', 0, '', '', 0),
(344, 'Rima Fakih', '', '', '', '', 0, '', '', 0),
(345, 'Tom Feldpausch', '', '', '', '', 0, '', '', 0),
(346, 'Johnny Flynn', '', '', '', '', 0, '', '', 0),
(347, 'Stephen C. Forsell', '', '', '', '', 0, '', '', 0),
(348, 'Sarah Forton', '', '', '', '', 0, '', '', 0),
(349, 'Stephen Fosner', '', '', '', '', 0, '', '', 0),
(350, 'Logan Fry', '', '', '', '', 0, '', '', 0),
(351, 'Nesti Gee', '', '', '', '', 0, '', '', 0),
(352, 'Ryan Genther', '', '', '', '', 0, '', '', 0),
(353, 'Dan Gerics', '', '', '', '', 0, '', '', 0),
(354, 'Joey Ghinelli', '', '', '', '', 0, '', '', 0),
(355, 'Jacob Godzak', '', '', '', '', 0, '', '', 0),
(356, 'Ashley Goulson', '', '', '', '', 0, '', '', 0),
(357, 'Megan Grant', '', '', '', '', 0, '', '', 0),
(358, 'Brandon Green', '', '', '', '', 0, '', '', 0),
(359, 'J.J. Green', '', '', '', '', 0, '', '', 0),
(360, 'Rebecca Guth', '', '', '', '', 0, '', '', 0),
(361, 'Steven Gätjen', '', '', '', '', 0, '', '', 0),
(362, 'Shane Hagedorn', '', '', '', '', 0, '', '', 0),
(363, 'Joey Harlow', '', '', '', '', 0, '', '', 0),
(364, 'Pennie-Marie Hawkins', '', '', '', '', 0, '', '', 0),
(365, 'Ron Heisler', '', '', '', '', 0, '', '', 0),
(366, 'Kathryn Henzler', '', '', '', '', 0, '', '', 0),
(367, 'Robert Herrick', '', '', '', '', 0, '', '', 0),
(368, 'Christopher W. Hodshire', '', '', '', '', 0, '', '', 0),
(369, 'Suzy Hunt', '', '', '', '', 0, '', '', 0),
(370, 'Markus James', '', '', '', '', 0, '', '', 0),
(371, 'Pauline Ann Johnson', '', '', '', '', 0, '', '', 0),
(372, 'Traver Johnson', '', '', '', '', 0, '', '', 0),
(373, 'Jennie Kahn-Jacques', '', '', '', '', 0, '', '', 0),
(374, 'Ko Kaiden', '', '', '', '', 0, '', '', 0),
(375, 'Douglas King II', '', '', '', '', 0, '', '', 0),
(376, 'Lauren Kole', '', '', '', '', 0, '', '', 0),
(377, 'Nathan Kranzo', '', '', '', '', 0, '', '', 0),
(378, 'Joe Kras', '', '', '', '', 0, '', '', 0),
(379, 'Amy LaPlante', '', '', '', '', 0, '', '', 0),
(380, 'Kef Lee', '', '', '', '', 0, '', '', 0),
(381, 'Amanda Lewan', '', '', '', '', 0, '', '', 0),
(382, 'Anna Li', '', '', '', '', 0, '', '', 0),
(383, 'Dervis Lici', '', '', '', '', 0, '', '', 0),
(384, 'Linda Linsley', '', '', '', '', 0, '', '', 0),
(385, 'Nathaniel Loveland', '', '', '', '', 0, '', '', 0),
(386, 'Bill Lowery', '', '', '', '', 0, '', '', 0),
(387, 'Rich Lozano', '', '', '', '', 0, '', '', 0),
(388, 'Bill Lumbert', '', '', '', '', 0, '', '', 0),
(389, 'Brad Leo Lyon', '', '', '', '', 0, '', '', 0),
(390, 'Mary Magyari', '', '', '', '', 0, '', '', 0),
(391, 'Chris Mannix', '', '', '', '', 0, '', '', 0),
(392, 'Jon Manthei', '', '', '', '', 0, '', '', 0),
(393, 'Melissa Marra', '', '', '', '', 0, '', '', 0),
(394, 'Rance Martin', '', '', '', '', 0, '', '', 0),
(395, 'Bryan Matti', '', '', '', '', 0, '', '', 0),
(396, 'Jessica McLarty', '', '', '', '', 0, '', '', 0),
(397, 'Samuel Meadows', '', '', '', '', 0, '', '', 0),
(398, 'Jordan Kenneth Messing', '', '', '', '', 0, '', '', 0),
(399, 'Ralph H. Meyer', '', '', '', '', 0, '', '', 0),
(400, 'Antonio L. Miller', '', '', '', '', 0, '', '', 0),
(401, 'Wendel Millstead', '', '', '', '', 0, '', '', 0),
(402, 'Gary L. Minix', '', '', '', '', 0, '', '', 0),
(403, 'Megan Mockensturm', '', '', '', '', 0, '', '', 0),
(404, 'Jermaine Moore', '', '', '', '', 0, '', '', 0),
(405, 'Kirstie Munoz', '', '', '', '', 0, '', '', 0),
(406, 'Anton Narinskiy', '', '', '', '', 0, '', '', 0),
(407, 'Steven Hugh Nelson', '', '', '', '', 0, '', '', 0),
(408, 'Chris Newman', '', '', '', '', 0, '', '', 0),
(409, 'Michael Nicolae', '', '', '', '', 0, '', '', 0),
(410, 'Chris O''Brien', '', '', '', '', 0, '', '', 0),
(411, 'Wendy Paquette', '', '', '', '', 0, '', '', 0),
(412, 'Heather Park', '', '', '', '', 0, '', '', 0),
(413, 'Christi Perovski', '', '', '', '', 0, '', '', 0),
(414, 'Jessica Petrik', '', '', '', '', 0, '', '', 0),
(415, 'Alan D. Purwin', '', '', '', '', 0, '', '', 0),
(416, 'Ralph A. Recchia', '', '', '', '', 0, '', '', 0),
(417, 'Jay Reid', '', '', '', '', 0, '', '', 0),
(418, 'DaJuan Rippy', '', '', '', '', 0, '', '', 0),
(419, 'Nicholas Ritz', '', '', '', '', 0, '', '', 0),
(420, 'Jeff Rosenfeld', '', '', '', '', 0, '', '', 0),
(421, 'Marco Ruggeri', '', '', '', '', 0, '', '', 0),
(422, 'Maria Lucia Safi', '', '', '', '', 0, '', '', 0),
(423, 'Miguel Sandoval', '', '', '', '', 0, '', '', 0),
(424, 'Sebastian Sarkissian', '', '', '', '', 0, '', '', 0),
(425, 'Robert Sayers', '', '', '', '', 0, '', '', 0),
(426, 'Steven Scott', '', '', '', '', 0, '', '', 0),
(427, 'Ron Shedd', '', '', '', '', 0, '', '', 0),
(428, 'Daryl M. Simpson', '', '', '', '', 0, '', '', 0),
(429, 'Gary Lee Simpson', '', '', '', '', 0, '', '', 0),
(430, 'Brian Anderson Smith', '', '', '', '', 0, '', '', 0),
(431, 'Joseph Smith', '', '', '', '', 0, '', '', 0),
(432, 'Nikki Smith', '', '', '', '', 0, '', '', 0),
(433, 'Dwight Sora', '', '', '', '', 0, '', '', 0),
(434, 'Paul J. Spear', '', '', '', '', 0, '', '', 0),
(435, 'Alan Stefan', '', '', '', '', 0, '', '', 0),
(436, 'Tiffany Stone', '', '', '', '', 0, '', '', 0),
(437, 'Morris Lee Sullivan', '', '', '', '', 0, '', '', 0),
(438, 'Regina Taufen', '', '', '', '', 0, '', '', 0),
(439, 'John E.L. Tenney', '', '', '', '', 0, '', '', 0),
(440, 'Melody Teodoro-Kurtis', '', '', '', '', 0, '', '', 0),
(441, 'Michael Trobaugh', '', '', '', '', 0, '', '', 0),
(442, 'Johnny Truong', '', '', '', '', 0, '', '', 0),
(443, 'Eric Tuchelske', '', '', '', '', 0, '', '', 0),
(444, 'Laurie Valko', '', '', '', '', 0, '', '', 0),
(445, 'Brett VanDunk', '', '', '', '', 0, '', '', 0),
(446, 'Johnathon VanDusen', '', '', '', '', 0, '', '', 0),
(447, 'Dan Watson', '', '', '', '', 0, '', '', 0),
(448, 'Kaitlan Welton', '', '', '', '', 0, '', '', 0),
(449, 'Jojuan Westmoreland', '', '', '', '', 0, '', '', 0),
(450, 'Ed Williams', '', '', '', '', 0, '', '', 0),
(451, 'Amanda Wright', '', '', '', '', 0, '', '', 0),
(452, 'Paul Xiong', '', '', '', '', 0, '', '', 0),
(453, 'Tom Hardy', '', '', '', '', 0, '', '', 0),
(454, 'Charlize Theron', '', '', '', '', 0, '', '', 0),
(455, 'Nicholas Hoult', '', '', '', '', 0, '', '', 0),
(456, 'Hugh Keays-Byrne', '', '', '', '', 0, '', '', 0),
(457, 'Josh Helman', '', '', '', '', 0, '', '', 0),
(458, 'Nathan Jones', '', '', '', '', 0, '', '', 0),
(459, 'Zoë Kravitz', '', '', '', '', 0, '', '', 0),
(460, 'Rosie Huntington-Whiteley', '', '', '', '', 0, '', '', 0),
(461, 'Riley Keough', '', '', '', '', 0, '', '', 0),
(462, 'Abbey Lee', '', '', '', '', 0, '', '', 0),
(463, 'Courtney Eaton', '', '', '', '', 0, '', '', 0),
(464, 'John Howard', '', '', '', '', 0, '', '', 0),
(465, 'Richard Carter', '', '', '', '', 0, '', '', 0),
(466, 'Iota', '', '', '', '', 0, '', '', 0),
(467, 'Angus Sampson', '', '', '', '', 0, '', '', 0),
(468, 'Jennifer Hagan', '', '', '', '', 0, '', '', 0),
(469, 'Megan Gale', '', '', '', '', 0, '', '', 0),
(470, 'Melissa Jaffer', '', '', '', '', 0, '', '', 0),
(471, 'Melita Jurisic', '', '', '', '', 0, '', '', 0),
(472, 'Gillian Jones', '', '', '', '', 0, '', '', 0),
(473, 'Joy Smithers', '', '', '', '', 0, '', '', 0),
(474, 'Antoinette Kellermann', '', '', '', '', 0, '', '', 0),
(475, 'Christina Koch', '', '', '', '', 0, '', '', 0),
(476, 'Jon Iles', '', '', '', '', 0, '', '', 0),
(477, 'Quentin Kenihan', '', '', '', '', 0, '', '', 0),
(478, 'Coco Jack Gillies', '', '', '', '', 0, '', '', 0),
(479, 'Chris Patton', '', '', '', '', 0, '', '', 0),
(480, 'Stephen Dunlevy', '', '', '', '', 0, '', '', 0),
(481, 'Richard Norton', '', '', '', '', 0, '', '', 0),
(482, 'Vincent Roxburgh', '', '', '', '', 0, '', '', 0),
(483, 'John Walton', '', '', '', '', 0, '', '', 0),
(484, 'Ben Smith-Petersen', '', '', '', '', 0, '', '', 0),
(485, 'Russ McCarroll', '', '', '', '', 0, '', '', 0),
(486, 'Judd Wild', '', '', '', '', 0, '', '', 0),
(487, 'Elizabeth Cunico', '', '', '', '', 0, '', '', 0),
(488, 'Greg van Borssum', '', '', '', '', 0, '', '', 0),
(489, 'Robert Jones', '', '', '', '', 0, '', '', 0),
(490, 'Sebastian Dickins', '', '', '', '', 0, '', '', 0),
(491, 'Darren Mitchell', '', '', '', '', 0, '', '', 0),
(492, 'Crusoe Kurddal', '', '', '', '', 0, '', '', 0),
(493, 'Shyan Tonga', '', '', '', '', 0, '', '', 0),
(494, 'Cass Cumerford', '', '', '', '', 0, '', '', 0),
(495, 'Albert Lee', '', '', '', '', 0, '', '', 0),
(496, 'Riley Paton', '', '', '', '', 0, '', '', 0),
(497, 'Ripley Voeten', '', '', '', '', 0, '', '', 0),
(498, 'Macyn Van Borssum', '', '', '', '', 0, '', '', 0),
(499, 'Hunter Stratton Boland', '', '', '', '', 0, '', '', 0),
(500, 'Nathan Jenkins', '', '', '', '', 0, '', '', 0),
(501, 'Fletcher Gill', '', '', '', '', 0, '', '', 0),
(502, 'Whiley Toll', '', '', '', '', 0, '', '', 0),
(503, 'Ferdinand Hengombe', '', '', '', '', 0, '', '', 0),
(504, 'Gadaffi Davsab', '', '', '', '', 0, '', '', 0),
(505, 'Noddy Alfred', '', '', '', '', 0, '', '', 0),
(506, 'Jackson Hengombe', '', '', '', '', 0, '', '', 0),
(507, 'Christian Fane', '', '', '', '', 0, '', '', 0),
(508, 'Callum Gallagher', '', '', '', '', 0, '', '', 0),
(509, 'Abel Hofflin', '', '', '', '', 0, '', '', 0),
(510, 'Lee Perry', '', '', '', '', 0, '', '', 0),
(511, 'Debra Ades', '', '', '', '', 0, '', '', 0),
(512, 'Toby Ayers', '', '', '', '', 0, '', '', 0),
(513, 'Rhavin Banda', '', '', '', '', 0, '', '', 0),
(514, 'Karl Heinz Barr', '', '', '', '', 0, '', '', 0),
(515, 'Alison Benstead', '', '', '', '', 0, '', '', 0),
(516, 'Nerida Bronwen', '', '', '', '', 0, '', '', 0),
(517, 'Hélène Cardona', '', '', '', '', 0, '', '', 0),
(518, 'Jeremy Costello', '', '', '', '', 0, '', '', 0),
(519, 'Sandi Finlay', '', '', '', '', 0, '', '', 0),
(520, 'Gareth Hamilton-Foster', '', '', '', '', 0, '', '', 0),
(521, 'Dawn Hogan', '', '', '', '', 0, '', '', 0),
(522, 'Georgia Jarrett', '', '', '', '', 0, '', '', 0),
(523, 'Hiroshi Kasuga', '', '', '', '', 0, '', '', 0),
(524, 'Shuhei Ogawa', '', '', '', '', 0, '', '', 0),
(525, 'Vanessa Summerfield', '', '', '', '', 0, '', '', 0),
(526, 'Yassica Switakowski', '', '', '', '', 0, '', '', 0),
(527, 'Leanne Michelle Watson', '', '', '', '', 0, '', '', 0),
(528, 'Clive Owen', '', '', '', '', 0, '', '', 0),
(529, 'Morgan Freeman', '', '', '', '', 0, '', '', 0),
(530, 'Cliff Curtis', '', '', '', '', 0, '', '', 0),
(531, 'Aksel Hennie', '', '', '', '', 0, '', '', 0),
(532, 'Tsuyoshi Ihara', '', '', '', '', 0, '', '', 0),
(533, 'Sung-kee Ahn', '', '', '', '', 0, '', '', 0),
(534, 'Peyman Moaadi', '', '', '', '', 0, '', '', 0),
(535, 'Si-Yeon Park', '', '', '', '', 0, '', '', 0),
(536, 'Noah Silver', '', '', '', '', 0, '', '', 0),
(537, 'Ayelet Zurer', '', '', '', '', 0, '', '', 0),
(538, 'Rose Caton', '', '', '', '', 0, '', '', 0),
(539, 'Giorgio Caputo', '', '', '', '', 0, '', '', 0),
(540, 'James Babson', '', '', '', '', 0, '', '', 0),
(541, 'Shohreh Aghdashloo', '', '', '', '', 0, '', '', 0),
(542, 'Michael Lombardi', '', '', '', '', 0, '', '', 0),
(543, 'Daniel Adegboyega', '', '', '', '', 0, '', '', 0),
(544, 'Dave Legeno', '', '', '', '', 0, '', '', 0),
(545, 'Val Lauren', '', '', '', '', 0, '', '', 0),
(546, 'Robert Russell', '', '', '', '', 0, '', '', 0),
(547, 'Lee Ingleby', '', '', '', '', 0, '', '', 0),
(548, 'Peter Hosking', '', '', '', '', 0, '', '', 0),
(549, 'Anna Linhartová', '', '', '', '', 0, '', '', 0),
(550, 'Dan Brown', '', '', '', '', 0, '', '', 0),
(551, 'Nigel Gore', '', '', '', '', 0, '', '', 0),
(552, 'Chris Consilvio', '', '', '', '', 0, '', '', 0),
(553, 'Pavel Kríz', '', '', '', '', 0, '', '', 0),
(554, 'Brian Caspe', '', '', '', '', 0, '', '', 0),
(555, 'Booda', '', '', '', '', 0, '', '', 0),
(556, 'Tomás Havlík', '', '', '', '', 0, '', '', 0),
(557, 'Tatiana Evonuk', '', '', '', '', 0, '', '', 0),
(558, 'Michael Pavlik', '', '', '', '', 0, '', '', 0),
(559, 'Klára Issová', '', '', '', '', 0, '', '', 0),
(560, 'Leo Stransky', '', '', '', '', 0, '', '', 0),
(561, 'Petr Kotík', '', '', '', '', 0, '', '', 0),
(562, 'Zoran Kovacevic', '', '', '', '', 0, '', '', 0),
(563, 'Patrik Plesinger', '', '', '', '', 0, '', '', 0),
(564, 'Zdenek Astr', '', '', '', '', 0, '', '', 0),
(565, 'Rod Grover', '', '', '', '', 0, '', '', 0),
(566, 'Michal Maler', '', '', '', '', 0, '', '', 0),
(567, 'Václav Chalupa', '', '', '', '', 0, '', '', 0),
(568, 'Libor Mika', '', '', '', '', 0, '', '', 0),
(569, 'Pavel Bezdek', '', '', '', '', 0, '', '', 0),
(570, 'Kevin Clarke', '', '', '', '', 0, '', '', 0),
(571, 'Jan Hrdina', '', '', '', '', 0, '', '', 0),
(572, 'Tomás Tobola', '', '', '', '', 0, '', '', 0),
(573, 'Jake Gyllenhaal', '', '', '', '', 0, '', '', 0),
(574, 'Rachel McAdams', '', '', '', '', 0, '', '', 0),
(575, 'Forest Whitaker', '', '', '', '', 0, '', '', 0),
(576, 'Oona Laurence', '', '', '', '', 0, '', '', 0),
(577, '50 Cent', '', '', '', '', 0, '', '', 0),
(578, 'Skylan Brooks', '', '', '', '', 0, '', '', 0),
(579, 'Naomie Harris', '', '', '', '', 0, '', '', 0),
(580, 'Victor Ortiz', '', '', '', '', 0, '', '', 0),
(581, 'Beau Knapp', '', '', '', '', 0, '', '', 0),
(582, 'Miguel Gomez', '', '', '', '', 0, '', '', 0),
(583, 'Dominic Colón', '', '', '', '', 0, '', '', 0),
(584, 'Jose Caraballo', '', '', '', '', 0, '', '', 0),
(585, 'Malcolm M. Mays', '', '', '', '', 0, '', '', 0),
(586, 'Aaron Quattrocchi', '', '', '', '', 0, '', '', 0),
(587, 'Lana Young', '', '', '', '', 0, '', '', 0),
(588, 'Danny Henriquez', '', '', '', '', 0, '', '', 0),
(589, 'Patsy Meck', '', '', '', '', 0, '', '', 0),
(590, 'Vito Grassi', '', '', '', '', 0, '', '', 0),
(591, 'Tony Weeks', '', '', '', '', 0, '', '', 0),
(592, 'Jimmy Lennon Jr.', '', '', '', '', 0, '', '', 0),
(593, 'Charles Hoyes', '', '', '', '', 0, '', '', 0),
(594, 'Michelle Johnston', '', '', '', '', 0, '', '', 0),
(595, 'Patrick Jordan', '', '', '', '', 0, '', '', 0),
(596, 'Clare Foley', '', '', '', '', 0, '', '', 0),
(597, 'Mark Shrader', '', '', '', '', 0, '', '', 0),
(598, 'Rita Ora', '', '', '', '', 0, '', '', 0),
(599, 'Adam Kroloff', '', '', '', '', 0, '', '', 0),
(600, 'Cedric D. Jones', '', '', '', '', 0, '', '', 0),
(601, 'Jim Lampley', '', '', '', '', 0, '', '', 0),
(602, 'Rayco Saunders', '', '', '', '', 0, '', '', 0),
(603, 'Mike Clark', '', '', '', '', 0, '', '', 0),
(604, 'Ian Eagle', '', '', '', '', 0, '', '', 0),
(605, 'Alejandro Chamorro', '', '', '', '', 0, '', '', 0),
(606, 'David Raine', '', '', '', '', 0, '', '', 0),
(607, 'David Whalen', '', '', '', '', 0, '', '', 0),
(608, 'Andre Dobson', '', '', '', '', 0, '', '', 0),
(609, 'Adam Ratcliffe', '', '', '', '', 0, '', '', 0),
(610, 'Marie Elena O''Brien', '', '', '', '', 0, '', '', 0),
(611, 'Dominique Briggs', '', '', '', '', 0, '', '', 0),
(612, 'Lou DiBella', '', '', '', '', 0, '', '', 0),
(613, 'John Katana', '', '', '', '', 0, '', '', 0),
(614, 'Shadeed Suluki', '', '', '', '', 0, '', '', 0),
(615, 'Kamil Beale', '', '', '', '', 0, '', '', 0),
(616, 'Mike Maples', '', '', '', '', 0, '', '', 0),
(617, 'Anthony Bonelli', '', '', '', '', 0, '', '', 0),
(618, 'Roy Jones Jr.', '', '', '', '', 0, '', '', 0),
(619, 'Twanee Butterfield', '', '', '', '', 0, '', '', 0),
(620, 'Bernard Hauger', '', '', '', '', 0, '', '', 0),
(621, 'Willie Monroe Jr.', '', '', '', '', 0, '', '', 0),
(622, 'Chris A. Riskus', '', '', '', '', 0, '', '', 0),
(623, 'Edward Flaherty', '', '', '', '', 0, '', '', 0),
(624, 'Jeremy Michael Burns', '', '', '', '', 0, '', '', 0),
(625, 'Danika Adams-Peterson', '', '', '', '', 0, '', '', 0),
(626, 'Asia Fuqua', '', '', '', '', 0, '', '', 0),
(627, 'David Diamante', '', '', '', '', 0, '', '', 0),
(628, 'Rick Steigerwald', '', '', '', '', 0, '', '', 0),
(629, 'Ryan Ball', '', '', '', '', 0, '', '', 0),
(630, 'Lawrence Burgess', '', '', '', '', 0, '', '', 0),
(631, 'Deirdre Horgan', '', '', '', '', 0, '', '', 0),
(632, 'Rodney Prystash', '', '', '', '', 0, '', '', 0),
(633, 'John Medlin', '', '', '', '', 0, '', '', 0),
(634, 'David Dale McCue', '', '', '', '', 0, '', '', 0),
(635, 'Terence Mahoney', '', '', '', '', 0, '', '', 0),
(636, 'Terry Claybon', '', '', '', '', 0, '', '', 0),
(637, 'Juliana Guedes', '', '', '', '', 0, '', '', 0),
(638, 'Tony Amen', '', '', '', '', 0, '', '', 0),
(639, 'Jake Andolina', '', '', '', '', 0, '', '', 0),
(640, 'Nicholas Augusta', '', '', '', '', 0, '', '', 0),
(641, 'Gary Ayash', '', '', '', '', 0, '', '', 0),
(642, 'Jennifer Nicole Baker', '', '', '', '', 0, '', '', 0),
(643, 'Nicholas Balzer', '', '', '', '', 0, '', '', 0),
(644, 'Todd Bobenrieth', '', '', '', '', 0, '', '', 0),
(645, 'Troy Bogdan', '', '', '', '', 0, '', '', 0),
(646, 'Danielle Brickman', '', '', '', '', 0, '', '', 0),
(647, 'Rowdy Brown', '', '', '', '', 0, '', '', 0),
(648, 'Zachary Davis Brown', '', '', '', '', 0, '', '', 0),
(649, 'Norman Cardaro', '', '', '', '', 0, '', '', 0),
(650, 'John Cenatiempo', '', '', '', '', 0, '', '', 0),
(651, 'Peter Chiamardas', '', '', '', '', 0, '', '', 0),
(652, 'Jennifer Pearl Childers', '', '', '', '', 0, '', '', 0),
(653, 'Carl Clemons', '', '', '', '', 0, '', '', 0),
(654, 'Lloyd Crago', '', '', '', '', 0, '', '', 0),
(655, 'Mike Dargatis', '', '', '', '', 0, '', '', 0),
(656, 'Jessica David', '', '', '', '', 0, '', '', 0),
(657, 'Kaelan Denali Dickinson', '', '', '', '', 0, '', '', 0),
(658, 'Bill Dooley', '', '', '', '', 0, '', '', 0),
(659, 'Amy Lyn Elliott', '', '', '', '', 0, '', '', 0),
(660, 'Rod Fielder', '', '', '', '', 0, '', '', 0),
(661, 'Joe Fishel', '', '', '', '', 0, '', '', 0),
(662, 'Jim Fitzgerald', '', '', '', '', 0, '', '', 0),
(663, 'Patty Fromm', '', '', '', '', 0, '', '', 0),
(664, 'Carmen Gangale', '', '', '', '', 0, '', '', 0),
(665, 'Richard Guesman', '', '', '', '', 0, '', '', 0),
(666, 'Famous Steve Hooks', '', '', '', '', 0, '', '', 0),
(667, 'Bryan Houdeshell Jr.', '', '', '', '', 0, '', '', 0),
(668, 'James Howard', '', '', '', '', 0, '', '', 0),
(669, 'Sherry Hudak', '', '', '', '', 0, '', '', 0),
(670, 'John W. Iwanonkiw', '', '', '', '', 0, '', '', 0),
(671, 'Chris Jameson', '', '', '', '', 0, '', '', 0),
(672, 'Patrick M. Johnston', '', '', '', '', 0, '', '', 0),
(673, 'Jessica Jones', '', '', '', '', 0, '', '', 0),
(674, 'Christopher Kaczmarek', '', '', '', '', 0, '', '', 0),
(675, 'William Kania', '', '', '', '', 0, '', '', 0),
(676, 'Mike Karban', '', '', '', '', 0, '', '', 0),
(677, 'Will Kass', '', '', '', '', 0, '', '', 0),
(678, 'Bill Kennedy', '', '', '', '', 0, '', '', 0),
(679, 'Jason Klingensmith', '', '', '', '', 0, '', '', 0),
(680, 'Aidan Krell', '', '', '', '', 0, '', '', 0),
(681, 'Wayne Leya', '', '', '', '', 0, '', '', 0),
(682, 'Leonard Lies Jr.', '', '', '', '', 0, '', '', 0),
(683, 'Scott Lockhart', '', '', '', '', 0, '', '', 0),
(684, 'Jeremy Long', '', '', '', '', 0, '', '', 0),
(685, 'Tyler Manko', '', '', '', '', 0, '', '', 0),
(686, 'Frank McAleavey', '', '', '', '', 0, '', '', 0),
(687, 'Tiffany Sander McKenzie', '', '', '', '', 0, '', '', 0),
(688, 'F. Robert McMurray', '', '', '', '', 0, '', '', 0),
(689, 'Grayson Alexander Miller', '', '', '', '', 0, '', '', 0),
(690, 'Kelly L. Moran', '', '', '', '', 0, '', '', 0),
(691, 'Ashleigh Morghan', '', '', '', '', 0, '', '', 0),
(692, 'Marie-Lou Nahhas', '', '', '', '', 0, '', '', 0),
(693, 'Phil Nardozzi', '', '', '', '', 0, '', '', 0),
(694, 'Jeffrey Neil', '', '', '', '', 0, '', '', 0),
(695, 'Jackson Nunn', '', '', '', '', 0, '', '', 0),
(696, 'Caitlin O''Connor', '', '', '', '', 0, '', '', 0),
(697, 'Joseph Oliveira', '', '', '', '', 0, '', '', 0),
(698, 'Rocky Paterra', '', '', '', '', 0, '', '', 0),
(699, 'Edward Pfeifer', '', '', '', '', 0, '', '', 0),
(700, 'Eliot Preschutti', '', '', '', '', 0, '', '', 0),
(701, 'LaTrallo Presley', '', '', '', '', 0, '', '', 0),
(702, 'Mitch Randjelovic', '', '', '', '', 0, '', '', 0),
(703, 'Eric Rasmussen', '', '', '', '', 0, '', '', 0),
(704, 'Joshua Elijah Reese', '', '', '', '', 0, '', '', 0),
(705, 'Kevin Reeves', '', '', '', '', 0, '', '', 0),
(706, 'Samantha Reichert', '', '', '', '', 0, '', '', 0),
(707, 'John D. Reilly', '', '', '', '', 0, '', '', 0),
(708, 'Richard Restivo', '', '', '', '', 0, '', '', 0),
(709, 'Doug Roberts', '', '', '', '', 0, '', '', 0),
(710, 'Ali Rose', '', '', '', '', 0, '', '', 0),
(711, 'Steve Sensebaugh', '', '', '', '', 0, '', '', 0),
(712, 'David Shurin', '', '', '', '', 0, '', '', 0),
(713, 'Casey Simmons', '', '', '', '', 0, '', '', 0),
(714, 'Kevin Slone', '', '', '', '', 0, '', '', 0),
(715, 'Douglas Slygh', '', '', '', '', 0, '', '', 0),
(716, 'Brian Stowell', '', '', '', '', 0, '', '', 0),
(717, 'Ken Thompson', '', '', '', '', 0, '', '', 0),
(718, 'Mike Walker', '', '', '', '', 0, '', '', 0),
(719, 'E. Bernhard Warg', '', '', '', '', 0, '', '', 0),
(720, 'Laura Welsh', '', '', '', '', 0, '', '', 0),
(721, 'James Werley', '', '', '', '', 0, '', '', 0),
(722, 'Kym Whitehead', '', '', '', '', 0, '', '', 0),
(723, 'Grace Marie Williams', '', '', '', '', 0, '', '', 0),
(724, 'Frank Wilson', '', '', '', '', 0, '', '', 0),
(725, 'Chris Wolfe', '', '', '', '', 0, '', '', 0),
(726, 'Sharlto Copley', '', '', '', '', 0, '', '', 0),
(727, 'Dev Patel', '', '', '', '', 0, '', '', 0),
(728, 'Ninja', '', '', '', '', 0, '', '', 0),
(729, 'Yo-Landi Visser', '', '', '', '', 0, '', '', 0),
(730, 'Jose Pablo Cantillo', '', '', '', '', 0, '', '', 0),
(731, 'Sigourney Weaver', '', '', '', '', 0, '', '', 0),
(732, 'Brandon Auret', '', '', '', '', 0, '', '', 0),
(733, 'Johnny Selema', '', '', '', '', 0, '', '', 0),
(734, 'Anderson Cooper', '', '', '', '', 0, '', '', 0),
(735, 'Maurice Carpede', '', '', '', '', 0, '', '', 0),
(736, 'Jason Cope', '', '', '', '', 0, '', '', 0),
(737, 'Kevin Otto', '', '', '', '', 0, '', '', 0),
(738, 'Chris Shields', '', '', '', '', 0, '', '', 0),
(739, 'Bill Marchant', '', '', '', '', 0, '', '', 0),
(740, 'Robert Hobbs', '', '', '', '', 0, '', '', 0),
(741, 'Mark K. Xulu', '', '', '', '', 0, '', '', 0),
(742, 'Sherldon Marema', '', '', '', '', 0, '', '', 0),
(743, 'Shaheed Hajee', '', '', '', '', 0, '', '', 0),
(744, 'James Hendricks', '', '', '', '', 0, '', '', 0),
(745, 'Julian Brits', '', '', '', '', 0, '', '', 0),
(746, 'David Davadoss', '', '', '', '', 0, '', '', 0),
(747, 'Anneli Muller', '', '', '', '', 0, '', '', 0),
(748, 'Kendal Watt', '', '', '', '', 0, '', '', 0),
(749, 'Eugene Khumbanyiwa', '', '', '', '', 0, '', '', 0),
(750, 'Chan Marti', '', '', '', '', 0, '', '', 0),
(751, 'Vuyelwa Booi', '', '', '', '', 0, '', '', 0),
(752, 'Mike Blomkamp', '', '', '', '', 0, '', '', 0),
(753, 'Anthony Bishop', '', '', '', '', 0, '', '', 0),
(754, 'Paul Dobson', '', '', '', '', 0, '', '', 0),
(755, 'Max Poolman', '', '', '', '', 0, '', '', 0),
(756, 'Alistair Prodgers', '', '', '', '', 0, '', '', 0),
(757, 'Wandile Molebatsi', '', '', '', '', 0, '', '', 0),
(758, 'Arran Henn', '', '', '', '', 0, '', '', 0),
(759, 'Thami Ngubeni', '', '', '', '', 0, '', '', 0),
(760, 'James Bitonti', '', '', '', '', 0, '', '', 0),
(761, 'Andea Volschenk', '', '', '', '', 0, '', '', 0),
(762, 'Hein De Vries', '', '', '', '', 0, '', '', 0),
(763, 'Dan Hirst', '', '', '', '', 0, '', '', 0),
(764, 'Paul Hampshire', '', '', '', '', 0, '', '', 0),
(765, 'Graeme Duffy', '', '', '', '', 0, '', '', 0),
(766, 'Miranda Frigon', '', '', '', '', 0, '', '', 0),
(767, 'Edwin Gagiano', '', '', '', '', 0, '', '', 0),
(768, 'Janus Prinsloo', '', '', '', '', 0, '', '', 0),
(769, 'Sean Owen Roberts', '', '', '', '', 0, '', '', 0),
(770, 'n/A', '', '', '', '', 0, '', '', 0),
(771, 'Miguel Valdez-Lopez', '', '', '', '', 0, '', '', 0),
(772, 'Grace Torre Sierra', '', '', '', '', 0, '', '', 0),
(773, 'Hiroki Hasegawa', '', '', '', '', 0, '', '', 0),
(774, 'Yutaka Takenouchi', '', '', '', '', 0, '', '', 0),
(775, 'Satomi Ishihara', '', '', '', '', 0, '', '', 0),
(776, 'Ren Ohsugi', '', '', '', '', 0, '', '', 0),
(777, 'Akira Emoto', '', '', '', '', 0, '', '', 0),
(778, 'Kengo Kôra', '', '', '', '', 0, '', '', 0),
(779, 'Mikako Ichikawa', '', '', '', '', 0, '', '', 0),
(780, 'Jun Kunimura', '', '', '', '', 0, '', '', 0),
(781, 'Pierre Taki', '', '', '', '', 0, '', '', 0),
(782, 'Kyûsaku Shimada', '', '', '', '', 0, '', '', 0),
(783, 'Ken Mitsuishi', '', '', '', '', 0, '', '', 0),
(784, 'Shingo Tsurumi', '', '', '', '', 0, '', '', 0),
(785, 'Kimiko Yo', '', '', '', '', 0, '', '', 0),
(786, 'Takumi Saitô', '', '', '', '', 0, '', '', 0),
(787, 'Takashi Fujiki', '', '', '', '', 0, '', '', 0),
(788, 'Yû Kamio', '', '', '', '', 0, '', '', 0),
(789, 'Suzuki Matsuo', '', '', '', '', 0, '', '', 0),
(790, 'Takahiro Miura', '', '', '', '', 0, '', '', 0),
(791, 'Bob Werley', '', '', '', '', 0, '', '', 0),
(792, 'Mark Chinnery', '', '', '', '', 0, '', '', 0),
(793, 'Atsuko Maeda', '', '', '', '', 0, '', '', 0),
(794, 'Ren Mori', '', '', '', '', 0, '', '', 0),
(795, 'Kazuo Hara', '', '', '', '', 0, '', '', 0),
(796, 'Shin''ya Tsukamoto', '', '', '', '', 0, '', '', 0),
(797, 'Akira Ogata', '', '', '', '', 0, '', '', 0),
(798, 'Akira Hamada', '', '', '', '', 0, '', '', 0),
(799, 'Alex Hormigo', '', '', '', '', 0, '', '', 0),
(800, 'Shôhei Abe', '', '', '', '', 0, '', '', 0),
(801, 'Makoto Awane', '', '', '', '', 0, '', '', 0),
(802, 'Christiane Brew', '', '', '', '', 0, '', '', 0),
(803, 'Arata Furuta', '', '', '', '', 0, '', '', 0),
(804, 'Chisako Hara', '', '', '', '', 0, '', '', 0),
(805, 'Jun Hashimoto', '', '', '', '', 0, '', '', 0),
(806, 'Sei Hiraizumi', '', '', '', '', 0, '', '', 0),
(807, 'Isshin Inudô', '', '', '', '', 0, '', '', 0),
(808, 'Mafia Kajita', '', '', '', '', 0, '', '', 0),
(809, 'Hairi Katagiri', '', '', '', '', 0, '', '', 0),
(810, 'Kôsei Katô', '', '', '', '', 0, '', '', 0),
(811, 'Takashi Kobayashi', '', '', '', '', 0, '', '', 0),
(812, 'Keisuke Koide', '', '', '', '', 0, '', '', 0),
(813, 'Kreva', '', '', '', '', 0, '', '', 0),
(814, 'Daisuke Kuroda', '', '', '', '', 0, '', '', 0),
(815, 'Satoru Matsuo', '', '', '', '', 0, '', '', 0),
(816, 'Moro Morooka', '', '', '', '', 0, '', '', 0),
(817, 'Markus Müller', '', '', '', '', 0, '', '', 0),
(818, 'Ikuji Nakamura', '', '', '', '', 0, '', '', 0),
(819, 'Tôru Nomaguchi', '', '', '', '', 0, '', '', 0),
(820, 'Mansai Nomura', '', '', '', '', 0, '', '', 0),
(821, 'Mayumi Ogawa', '', '', '', '', 0, '', '', 0),
(822, 'Takeshi Ohbayashi', '', '', '', '', 0, '', '', 0),
(823, 'Seikô Senô', '', '', '', '', 0, '', '', 0),
(824, 'Tarô Suwa', '', '', '', '', 0, '', '', 0),
(825, 'Issei Takahashi', '', '', '', '', 0, '', '', 0),
(826, 'Toru Tezuka', '', '', '', '', 0, '', '', 0),
(827, 'Kanji Tsuda', '', '', '', '', 0, '', '', 0),
(828, 'Tetsu Watanabe', '', '', '', '', 0, '', '', 0),
(829, 'Ken''ichi Yajima', '', '', '', '', 0, '', '', 0),
(830, 'Nozomi de Lencquesaing', '', '', '', '', 0, '', '', 0),
(831, 'Lembit Ulfsak', '', '', '', '', 0, '', '', 0),
(832, 'Giorgi Nakashidze', '', '', '', '', 0, '', '', 0),
(833, 'Elmo Nüganen', '', '', '', '', 0, '', '', 0),
(834, 'Misha Meskhi', '', '', '', '', 0, '', '', 0),
(835, 'Raivo Trass', '', '', '', '', 0, '', '', 0),
(836, 'Zura Begalishvili', '', '', '', '', 0, '', '', 0),
(837, 'Dato Khakhidze', '', '', '', '', 0, '', '', 0),
(838, 'Jano Izoria', '', '', '', '', 0, '', '', 0),
(839, 'Gia Gogishvili', '', '', '', '', 0, '', '', 0),
(840, 'Vamekh Jangidze', '', '', '', '', 0, '', '', 0),
(841, 'Aleko Begalishvili', '', '', '', '', 0, '', '', 0),
(842, 'Temo Khutsishvili', '', '', '', '', 0, '', '', 0),
(843, 'Giorgi Tsaava', '', '', '', '', 0, '', '', 0),
(844, 'Denis Khlibov', '', '', '', '', 0, '', '', 0),
(845, 'Victor Gegeshidze', '', '', '', '', 0, '', '', 0),
(846, 'Genadi Levchenko', '', '', '', '', 0, '', '', 0),
(847, 'Kakha Arevadze', '', '', '', '', 0, '', '', 0),
(848, 'Ann-Heliin Saadoja', '', '', '', '', 0, '', '', 0),
(849, 'Albert Brooks', '', '', '', '', 0, '', '', 0),
(850, 'Ed O''Neill', '', '', '', '', 0, '', '', 0),
(851, 'Kaitlin Olson', '', '', '', '', 0, '', '', 0),
(852, 'Hayden Rolence', '', '', '', '', 0, '', '', 0),
(853, 'Ty Burrell', '', '', '', '', 0, '', '', 0),
(854, 'Diane Keaton', '', '', '', '', 0, '', '', 0),
(855, 'Eugene Levy', '', '', '', '', 0, '', '', 0),
(856, 'Sloane Murray', '', '', '', '', 0, '', '', 0),
(857, 'Idris Elba', '', '', '', '', 0, '', '', 0),
(858, 'Dominic West', '', '', '', '', 0, '', '', 0),
(859, 'Bob Peterson', '', '', '', '', 0, '', '', 0),
(860, 'Kate McKinnon', '', '', '', '', 0, '', '', 0),
(861, 'Bill Hader', '', '', '', '', 0, '', '', 0),
(862, 'Alexander Gould', '', '', '', '', 0, '', '', 0),
(863, 'Torbin Xan Bullock', '', '', '', '', 0, '', '', 0),
(864, 'Andrew Stanton', '', '', '', '', 0, '', '', 0),
(865, 'Katherine Ringgold', '', '', '', '', 0, '', '', 0),
(866, 'Lucia Geddes', '', '', '', '', 0, '', '', 0),
(867, 'Bennett Dammann', '', '', '', '', 0, '', '', 0),
(868, 'John Ratzenberger', '', '', '', '', 0, '', '', 0),
(869, 'Angus MacLane', '', '', '', '', 0, '', '', 0),
(870, 'Willem Dafoe', '', '', '', '', 0, '', '', 0),
(871, 'Brad Garrett', '', '', '', '', 0, '', '', 0),
(872, 'Allison Janney', '', '', '', '', 0, '', '', 0),
(873, 'Austin Pendleton', '', '', '', '', 0, '', '', 0),
(874, 'Stephen Root', '', '', '', '', 0, '', '', 0),
(875, 'Vicki Lewis', '', '', '', '', 0, '', '', 0),
(876, 'Jerome Ranft', '', '', '', '', 0, '', '', 0),
(877, 'Gabriel C. Brown', '', '', '', '', 0, '', '', 0),
(878, 'Mark Rylance', '', '', '', '', 0, '', '', 0),
(879, 'Ruby Barnhill', '', '', '', '', 0, '', '', 0),
(880, 'Penelope Wilton', '', '', '', '', 0, '', '', 0),
(881, 'Jemaine Clement', '', '', '', '', 0, '', '', 0),
(882, 'Rebecca Hall', '', '', '', '', 0, '', '', 0),
(883, 'Rafe Spall', '', '', '', '', 0, '', '', 0),
(884, 'Ólafur Darri Ólafsson', '', '', '', '', 0, '', '', 0),
(885, 'Adam Godley', '', '', '', '', 0, '', '', 0),
(886, 'Michael Adamthwaite', '', '', '', '', 0, '', '', 0),
(887, 'Daniel Bacon', '', '', '', '', 0, '', '', 0),
(888, 'Jonathan Holmes', '', '', '', '', 0, '', '', 0),
(889, 'Chris Gibbs', '', '', '', '', 0, '', '', 0),
(890, 'Paul Moniz de Sa', '', '', '', '', 0, '', '', 0),
(891, 'Marilyn Norry', '', '', '', '', 0, '', '', 0),
(892, 'Callum Seagram Airlie', '', '', '', '', 0, '', '', 0),
(893, 'Haig Sutherland', '', '', '', '', 0, '', '', 0),
(894, 'Shauna Hansen', '', '', '', '', 0, '', '', 0),
(895, 'Denise Jones', '', '', '', '', 0, '', '', 0),
(896, 'Gabrielle Rose', '', '', '', '', 0, '', '', 0),
(897, 'Anthony Ingram', '', '', '', '', 0, '', '', 0),
(898, 'Matt Frewer', '', '', '', '', 0, '', '', 0),
(899, 'Geoffrey Wade', '', '', '', '', 0, '', '', 0),
(900, 'John Emmet Tracy', '', '', '', '', 0, '', '', 0),
(901, 'William Samples', '', '', '', '', 0, '', '', 0),
(902, 'Andy Thompson', '', '', '', '', 0, '', '', 0),
(903, 'Paul Barnhill', '', '', '', '', 0, '', '', 0),
(904, 'Lucia Ryan', '', '', '', '', 0, '', '', 0),
(905, 'Julia Torrance', '', '', '', '', 0, '', '', 0),
(906, 'Cal Davis', '', '', '', '', 0, '', '', 0),
(907, 'Kyle Maloney', '', '', '', '', 0, '', '', 0),
(908, 'Michael Mcleod', '', '', '', '', 0, '', '', 0),
(909, 'David Orr', '', '', '', '', 0, '', '', 0),
(910, 'Zachary Read', '', '', '', '', 0, '', '', 0),
(911, 'David Glover', '', '', '', '', 0, '', '', 0),
(912, 'Joshua Callagan', '', '', '', '', 0, '', '', 0),
(913, 'Todd Biffard', '', '', '', '', 0, '', '', 0),
(914, 'Randy Rafuse', '', '', '', '', 0, '', '', 0),
(915, 'Gerardo Barcala', '', '', '', '', 0, '', '', 0),
(916, 'Gintare Beinoraviciute', '', '', '', '', 0, '', '', 0),
(917, 'Graham Curry', '', '', '', '', 0, '', '', 0),
(918, 'Jabbz Farooqi', '', '', '', '', 0, '', '', 0),
(919, 'Simona Hughes', '', '', '', '', 0, '', '', 0),
(920, 'Jeff Kent', '', '', '', '', 0, '', '', 0),
(921, 'Alistair Abell', '', '', '', '', 0, '', '', 0),
(922, 'Iris Apatow', '', '', '', '', 0, '', '', 0),
(923, 'Sugar Lyn Beard', '', '', '', '', 0, '', '', 0),
(924, 'Michael Cera', '', '', '', '', 0, '', '', 0),
(925, 'Ian James Corlett', '', '', '', '', 0, '', '', 0),
(926, 'Michael Daingerfield', '', '', '', '', 0, '', '', 0),
(927, 'Brian Dobson', '', '', '', '', 0, '', '', 0),
(928, 'Michael Dobson', '', '', '', '', 0, '', '', 0),
(929, 'James Franco', '', '', '', '', 0, '', '', 0),
(930, 'Ian Hanlin', '', '', '', '', 0, '', '', 0),
(931, 'Salma Hayek', '', '', '', '', 0, '', '', 0),
(932, 'Maryke Hendrikse', '', '', '', '', 0, '', '', 0),
(933, 'Jonah Hill', '', '', '', '', 0, '', '', 0),
(934, 'Anders Holm', '', '', '', '', 0, '', '', 0),
(935, 'Nick Kroll', '', '', '', '', 0, '', '', 0),
(936, 'David Krumholtz', '', '', '', '', 0, '', '', 0),
(937, 'Danny McBride', '', '', '', '', 0, '', '', 0),
(938, 'Lauren Miller', '', '', '', '', 0, '', '', 0),
(939, 'Edward Norton', '', '', '', '', 0, '', '', 0),
(940, 'Nicole Oliver', '', '', '', '', 0, '', '', 0),
(941, 'Craig Robinson', '', '', '', '', 0, '', '', 0),
(942, 'Seth Rogen', '', '', '', '', 0, '', '', 0),
(943, 'Paul Rudd', '', '', '', '', 0, '', '', 0),
(944, 'Kelly Sheridan', '', '', '', '', 0, '', '', 0),
(945, 'Jason Simpson', '', '', '', '', 0, '', '', 0),
(946, 'Greg Tiernan', '', '', '', '', 0, '', '', 0),
(947, 'Vincent Tong', '', '', '', '', 0, '', '', 0),
(948, 'Scott Underwood', '', '', '', '', 0, '', '', 0),
(949, 'Conrad Vernon', '', '', '', '', 0, '', '', 0),
(950, 'Sam Vincent', '', '', '', '', 0, '', '', 0),
(951, 'Kristen Wiig', '', '', '', '', 0, '', '', 0);
INSERT INTO `actors` (`ID`, `name`, `real_name`, `birthdate`, `birth_loc`, `proff`, `height`, `img`, `biography`, `raiting`) VALUES
(952, 'Harland Williams', '', '', '', '', 0, '', '', 0),
(953, 'Karen E. Wright', '', '', '', '', 0, '', '', 0),
(954, 'Matt Damon', '', '', '', '', 0, '', '', 0),
(955, 'Tommy Lee Jones', '', '', '', '', 0, '', '', 0),
(956, 'Alicia Vikander', '', '', '', '', 0, '', '', 0),
(957, 'Vincent Cassel', '', '', '', '', 0, '', '', 0),
(958, 'Julia Stiles', '', '', '', '', 0, '', '', 0),
(959, 'Riz Ahmed', '', '', '', '', 0, '', '', 0),
(960, 'Ato Essandoh', '', '', '', '', 0, '', '', 0),
(961, 'Scott Shepherd', '', '', '', '', 0, '', '', 0),
(962, 'Bill Camp', '', '', '', '', 0, '', '', 0),
(963, 'Vinzenz Kiefer', '', '', '', '', 0, '', '', 0),
(964, 'Stephen Kunken', '', '', '', '', 0, '', '', 0),
(965, 'Ben Stylianou', '', '', '', '', 0, '', '', 0),
(966, 'Kaya Yuzuki', '', '', '', '', 0, '', '', 0),
(967, 'Matthew O''Neill', '', '', '', '', 0, '', '', 0),
(968, 'Lizzie Phillips', '', '', '', '', 0, '', '', 0),
(969, 'Paris Stangl', '', '', '', '', 0, '', '', 0),
(970, 'Matt Blair', '', '', '', '', 0, '', '', 0),
(971, 'Amy De Bhrún', '', '', '', '', 0, '', '', 0),
(972, 'Akie Kotabe', '', '', '', '', 0, '', '', 0),
(973, 'Robin Crouch', '', '', '', '', 0, '', '', 0),
(974, 'Joe Kennard', '', '', '', '', 0, '', '', 0),
(975, 'Miguel Alves-Khan', '', '', '', '', 0, '', '', 0),
(976, 'Gregg Henry', '', '', '', '', 0, '', '', 0),
(977, 'Robert Stanton', '', '', '', '', 0, '', '', 0),
(978, 'Duran Fulton Brown', '', '', '', '', 0, '', '', 0),
(979, 'Charles Jarman', '', '', '', '', 0, '', '', 0),
(980, 'Jay Vincent Diaz', '', '', '', '', 0, '', '', 0),
(981, 'Richard Nunez', '', '', '', '', 0, '', '', 0),
(982, 'Sonny Robertson', '', '', '', '', 0, '', '', 0),
(983, 'James Dormuth', '', '', '', '', 0, '', '', 0),
(984, 'Dexter Emery', '', '', '', '', 0, '', '', 0),
(985, 'Jorge Luis Alvarez', '', '', '', '', 0, '', '', 0),
(986, 'Ava Katharina Maria Hoeller', '', '', '', '', 0, '', '', 0),
(987, 'Shane Williams', '', '', '', '', 0, '', '', 0),
(988, 'Frank Roskowski', '', '', '', '', 0, '', '', 0),
(989, 'Johnny Cicco', '', '', '', '', 0, '', '', 0),
(990, 'Martin Daniel Latham', '', '', '', '', 0, '', '', 0),
(991, 'Trevor White', '', '', '', '', 0, '', '', 0),
(992, 'Sasha Larkin', '', '', '', '', 0, '', '', 0),
(993, 'Barrie Brown', '', '', '', '', 0, '', '', 0),
(994, 'Stuart Jeffrey Cram', '', '', '', '', 0, '', '', 0),
(995, 'Brian Duda', '', '', '', '', 0, '', '', 0),
(996, 'Marc Benanti', '', '', '', '', 0, '', '', 0),
(997, 'Jesse M. Cooper', '', '', '', '', 0, '', '', 0),
(998, 'Gioacchino Jim Cuffaro', '', '', '', '', 0, '', '', 0),
(999, 'Andrew Dunkelberger', '', '', '', '', 0, '', '', 0),
(1000, 'Jauhara Jivanji', '', '', '', '', 0, '', '', 0),
(1001, 'Sean Moon', '', '', '', '', 0, '', '', 0),
(1002, 'Bobby Akers', '', '', '', '', 0, '', '', 0),
(1003, 'Hugo Alonzo', '', '', '', '', 0, '', '', 0),
(1004, 'Griffin Andrews', '', '', '', '', 0, '', '', 0),
(1005, 'Jeremy Angel', '', '', '', '', 0, '', '', 0),
(1006, 'Jozef Aoki', '', '', '', '', 0, '', '', 0),
(1007, 'Sarah Armstrong', '', '', '', '', 0, '', '', 0),
(1008, 'Robert-Anthony Artlett', '', '', '', '', 0, '', '', 0),
(1009, 'Lasco Atkins', '', '', '', '', 0, '', '', 0),
(1010, 'Alphonso Austin', '', '', '', '', 0, '', '', 0),
(1011, 'Martin Ballantyne', '', '', '', '', 0, '', '', 0),
(1012, 'Dolly Ballea', '', '', '', '', 0, '', '', 0),
(1013, 'Tim Baros', '', '', '', '', 0, '', '', 0),
(1014, 'Greg Benoit', '', '', '', '', 0, '', '', 0),
(1015, 'Tom Bonello', '', '', '', '', 0, '', '', 0),
(1016, 'Charles-Jean Boucher', '', '', '', '', 0, '', '', 0),
(1017, 'Allen Bracken', '', '', '', '', 0, '', '', 0),
(1018, 'Vin''Cenzo Burgess', '', '', '', '', 0, '', '', 0),
(1019, 'Anthony Burkhalter', '', '', '', '', 0, '', '', 0),
(1020, 'Hunter Cannistraci', '', '', '', '', 0, '', '', 0),
(1021, 'Lenisa Ann Careaga', '', '', '', '', 0, '', '', 0),
(1022, 'Nicole Chauvet', '', '', '', '', 0, '', '', 0),
(1023, 'Shin-Fei Chen', '', '', '', '', 0, '', '', 0),
(1024, 'Jeannine Comeau', '', '', '', '', 0, '', '', 0),
(1025, 'Constance Consola', '', '', '', '', 0, '', '', 0),
(1026, 'Angel Contreras', '', '', '', '', 0, '', '', 0),
(1027, 'Alexander Cooper', '', '', '', '', 0, '', '', 0),
(1028, 'Graig Couton', '', '', '', '', 0, '', '', 0),
(1029, 'Lisamarie Cowan', '', '', '', '', 0, '', '', 0),
(1030, 'Roger Julian Cross', '', '', '', '', 0, '', '', 0),
(1031, 'Darlene Dalmaceda', '', '', '', '', 0, '', '', 0),
(1032, 'Erin C. Davis', '', '', '', '', 0, '', '', 0),
(1033, 'Christine de Lota', '', '', '', '', 0, '', '', 0),
(1034, 'Jody Deats', '', '', '', '', 0, '', '', 0),
(1035, 'Steven I. Dillard', '', '', '', '', 0, '', '', 0),
(1036, 'Nick Donald', '', '', '', '', 0, '', '', 0),
(1037, 'Timothy Skyler Dunigan', '', '', '', '', 0, '', '', 0),
(1038, 'Paul Edney', '', '', '', '', 0, '', '', 0),
(1039, 'Barbara Edwards', '', '', '', '', 0, '', '', 0),
(1040, 'Heiko Effenberger', '', '', '', '', 0, '', '', 0),
(1041, 'Aaron Egawa', '', '', '', '', 0, '', '', 0),
(1042, 'Daniel Eghan', '', '', '', '', 0, '', '', 0),
(1043, 'Clara Emanuel', '', '', '', '', 0, '', '', 0),
(1044, 'Ricardo Ewert', '', '', '', '', 0, '', '', 0),
(1045, 'Dino Fazzani', '', '', '', '', 0, '', '', 0),
(1046, 'Nathan Ferguson', '', '', '', '', 0, '', '', 0),
(1047, 'Joseph D Fisher', '', '', '', '', 0, '', '', 0),
(1048, 'Ellie Fox', '', '', '', '', 0, '', '', 0),
(1049, 'Neve Gachev', '', '', '', '', 0, '', '', 0),
(1050, 'Alexander Garganera', '', '', '', '', 0, '', '', 0),
(1051, 'Michael Garvey', '', '', '', '', 0, '', '', 0),
(1052, 'Nicholas George', '', '', '', '', 0, '', '', 0),
(1053, 'Gladis Giada', '', '', '', '', 0, '', '', 0),
(1054, 'Alex Gillison', '', '', '', '', 0, '', '', 0),
(1055, 'Philip Greene', '', '', '', '', 0, '', '', 0),
(1056, 'Adam Gregory', '', '', '', '', 0, '', '', 0),
(1057, 'Shane Griffin', '', '', '', '', 0, '', '', 0),
(1058, 'Guna Gultniece', '', '', '', '', 0, '', '', 0),
(1059, 'Kevin Hager', '', '', '', '', 0, '', '', 0),
(1060, 'Phillip Allen Hall III', '', '', '', '', 0, '', '', 0),
(1061, 'Brad Hamerly', '', '', '', '', 0, '', '', 0),
(1062, 'Yumiko Hanasaka', '', '', '', '', 0, '', '', 0),
(1063, 'Jeanette Hatlestad', '', '', '', '', 0, '', '', 0),
(1064, 'Michael Haydon', '', '', '', '', 0, '', '', 0),
(1065, 'John Heartstone', '', '', '', '', 0, '', '', 0),
(1066, 'David Hershwitzky', '', '', '', '', 0, '', '', 0),
(1067, 'Jamie Hodge', '', '', '', '', 0, '', '', 0),
(1068, 'Cassandra Hodges', '', '', '', '', 0, '', '', 0),
(1069, 'Yusuf Hofri', '', '', '', '', 0, '', '', 0),
(1070, 'Ken Holliday', '', '', '', '', 0, '', '', 0),
(1071, 'Oliver Hollingdale', '', '', '', '', 0, '', '', 0),
(1072, 'Kornelia Horvath', '', '', '', '', 0, '', '', 0),
(1073, 'Romulus Hotea', '', '', '', '', 0, '', '', 0),
(1074, 'Jahmilla Jackson', '', '', '', '', 0, '', '', 0),
(1075, 'Bron James', '', '', '', '', 0, '', '', 0),
(1076, 'Kyle James', '', '', '', '', 0, '', '', 0),
(1077, 'Natasha Jenssen', '', '', '', '', 0, '', '', 0),
(1078, 'Kyle Jerichow', '', '', '', '', 0, '', '', 0),
(1079, 'Jemarko Jones', '', '', '', '', 0, '', '', 0),
(1080, 'Mark Justice', '', '', '', '', 0, '', '', 0),
(1081, 'KaiCarra', '', '', '', '', 0, '', '', 0),
(1082, 'Lampros Kalfuntzos', '', '', '', '', 0, '', '', 0),
(1083, 'Attila G. Kerekes', '', '', '', '', 0, '', '', 0),
(1084, 'Kyle Kesterson', '', '', '', '', 0, '', '', 0),
(1085, 'Marat Khairoullin', '', '', '', '', 0, '', '', 0),
(1086, 'Kaveh Khatiri', '', '', '', '', 0, '', '', 0),
(1087, 'Slim Khezri', '', '', '', '', 0, '', '', 0),
(1088, 'Elle van Knoll', '', '', '', '', 0, '', '', 0),
(1089, 'Steven Krasner', '', '', '', '', 0, '', '', 0),
(1090, 'Vivian Yoon Lee', '', '', '', '', 0, '', '', 0),
(1091, 'Kamil Lemieszewski', '', '', '', '', 0, '', '', 0),
(1092, 'Matthew Leonhart', '', '', '', '', 0, '', '', 0),
(1093, 'David Ae Levy', '', '', '', '', 0, '', '', 0),
(1094, 'Raul Limon', '', '', '', '', 0, '', '', 0),
(1095, 'Frank Lui Geo', '', '', '', '', 0, '', '', 0),
(1096, 'Rob Marchitti', '', '', '', '', 0, '', '', 0),
(1097, 'Maria Marra', '', '', '', '', 0, '', '', 0),
(1098, 'Garry Marriott', '', '', '', '', 0, '', '', 0),
(1099, 'Alex Martin', '', '', '', '', 0, '', '', 0),
(1100, 'Jason Matthewson', '', '', '', '', 0, '', '', 0),
(1101, 'Stephanie McIntyre', '', '', '', '', 0, '', '', 0),
(1102, 'Amelie McKendry', '', '', '', '', 0, '', '', 0),
(1103, 'Neal McNeil', '', '', '', '', 0, '', '', 0),
(1104, 'Addyson Medley', '', '', '', '', 0, '', '', 0),
(1105, 'Andy Mihalache', '', '', '', '', 0, '', '', 0),
(1106, 'Anthony Molinari', '', '', '', '', 0, '', '', 0),
(1107, 'Robb Moon', '', '', '', '', 0, '', '', 0),
(1108, 'Paul A Munday', '', '', '', '', 0, '', '', 0),
(1109, 'Ashley Nicole Murray', '', '', '', '', 0, '', '', 0),
(1110, 'Celina Nessa', '', '', '', '', 0, '', '', 0),
(1111, 'Emily Ng', '', '', '', '', 0, '', '', 0),
(1112, 'Brodi Nicholas', '', '', '', '', 0, '', '', 0),
(1113, 'Jason Novak', '', '', '', '', 0, '', '', 0),
(1114, 'Emeson Nwolie', '', '', '', '', 0, '', '', 0),
(1115, 'Lisa Nygard-Pugh', '', '', '', '', 0, '', '', 0),
(1116, 'Angelo Olivier', '', '', '', '', 0, '', '', 0),
(1117, 'Sarah Ospina', '', '', '', '', 0, '', '', 0),
(1118, 'Frances Rose Padunan', '', '', '', '', 0, '', '', 0),
(1119, 'B.J. Parker', '', '', '', '', 0, '', '', 0),
(1120, 'Mac Pietowski', '', '', '', '', 0, '', '', 0),
(1121, 'Dean Preston', '', '', '', '', 0, '', '', 0),
(1122, 'Damon Proctor', '', '', '', '', 0, '', '', 0),
(1123, 'Jon Prophet', '', '', '', '', 0, '', '', 0),
(1124, 'Abigail Rich', '', '', '', '', 0, '', '', 0),
(1125, 'Lovell Richards', '', '', '', '', 0, '', '', 0),
(1126, 'Jarrett Ricker', '', '', '', '', 0, '', '', 0),
(1127, 'Joan Riegert', '', '', '', '', 0, '', '', 0),
(1128, 'Brian Robak', '', '', '', '', 0, '', '', 0),
(1129, 'Belen Rosenberg', '', '', '', '', 0, '', '', 0),
(1130, 'Andre Rutherford', '', '', '', '', 0, '', '', 0),
(1131, 'Shane Santos', '', '', '', '', 0, '', '', 0),
(1132, 'Lani Sarem', '', '', '', '', 0, '', '', 0),
(1133, 'Kaleigh Saunders', '', '', '', '', 0, '', '', 0),
(1134, 'Nicolas Savidis-Macris', '', '', '', '', 0, '', '', 0),
(1135, 'Mark Sawtelle', '', '', '', '', 0, '', '', 0),
(1136, 'Earl Vincent Sherwood II', '', '', '', '', 0, '', '', 0),
(1137, 'Adonis Simmons', '', '', '', '', 0, '', '', 0),
(1138, 'Tina Simmons', '', '', '', '', 0, '', '', 0),
(1139, 'Neil Alexander Smith', '', '', '', '', 0, '', '', 0),
(1140, 'Eric Sparks', '', '', '', '', 0, '', '', 0),
(1141, 'Richard Stanley', '', '', '', '', 0, '', '', 0),
(1142, 'Phil Stillerman', '', '', '', '', 0, '', '', 0),
(1143, 'Elicia Stokes Navarro', '', '', '', '', 0, '', '', 0),
(1144, 'Alyx Stone', '', '', '', '', 0, '', '', 0),
(1145, 'Aaron Strong', '', '', '', '', 0, '', '', 0),
(1146, 'Georgie-May Tearle', '', '', '', '', 0, '', '', 0),
(1147, 'Paul Terry', '', '', '', '', 0, '', '', 0),
(1148, 'Tony Toste', '', '', '', '', 0, '', '', 0),
(1149, 'Michael A. Tushaus', '', '', '', '', 0, '', '', 0),
(1150, 'Cedric Tylleman', '', '', '', '', 0, '', '', 0),
(1151, 'Vassiliki Tzanakou', '', '', '', '', 0, '', '', 0),
(1152, 'Luke Van Bergen', '', '', '', '', 0, '', '', 0),
(1153, 'Tony Vivio', '', '', '', '', 0, '', '', 0),
(1154, 'Sheila Vossough', '', '', '', '', 0, '', '', 0),
(1155, 'Jack Waggon', '', '', '', '', 0, '', '', 0),
(1156, 'Nick Walters', '', '', '', '', 0, '', '', 0),
(1157, 'Marla Aaron Wapner', '', '', '', '', 0, '', '', 0),
(1158, 'Don Whatley', '', '', '', '', 0, '', '', 0),
(1159, 'LaFonda Whitehead', '', '', '', '', 0, '', '', 0),
(1160, 'Andie Ximenes', '', '', '', '', 0, '', '', 0),
(1161, 'Alexander Yassin', '', '', '', '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `user_type` enum('SA','A') DEFAULT 'SA' COMMENT 'SA: Super Admin,A: Admin',
  `active` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `email`, `password`, `salt`, `block`, `user_type`, `active`) VALUES
(2, 'levart', 'jmukhadze@gmail.com', '3425dc19231f5d4c8e197e0f9de5a09d430e1e722f52ea0652f2b3e63d5090f7hippo', '1d5358b5506aaa10', 0, 'SA', 1),
(6, 'Natia', 'n.gozalishvili@hippo.ge', '5781f78863ec8cbc3e44910756ca7d957253e18eb1ec3801c50221cb584aff0ahippo', '3b4c32f07a080944', 0, 'SA', 1),
(7, 'Piqria', 'p.pachulia@hippo.ge', '9c6d065b465a0c47526efd901792943f01bda91eef35592eaaf62561341dc73fhippo', '296f9b7b3ad714', 0, 'SA', 1),
(10, 'murtazi', 'm.putkaradze@hippo.ge', 'b504aaeac59fbee58fec920502caaa168c37849c805006df81cfb9bc83027d09hippo', '4be21eb874a03b6f', 0, '', 1),
(11, 'nick', 'nick.periashvili@gmail.com', '91d8b8d54160822930c77dcc72b3015a1fa5266873910699885610030df97c96hippo', '3caaedf63d34e998', 0, 'SA', 1),
(12, 'ani', 'ani.abramia@hippo.ge', '084f666c34a12305c1d2c8e1d89cc559b6aef66b26aec0f0a0fbfd7bb689e5bbhippo', '7cca3b58332b0cf7', 0, 'SA', 1),
(18, 'etuna', 'etunachichua@yahoo.com', 'a75bcd8e3488dd9d389bd29fd3d8e3392952f2f646d482c3159d8e26b4eb0485hippo', '19bab6a918e8ba90', 0, NULL, 1),
(19, 'giga', 'giga.gabatashvili@gmail.com', '411e0140b2e1b7f7c7193f75962e99589191f371a0239b3de429f363b9c9de13hippo', '79886c8512421fe7', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `blog` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descrip` varchar(500) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` varchar(255) NOT NULL,
  `ID` int(11) NOT NULL,
  `cat` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog`, `name`, `descrip`, `text`, `date`, `img`, `ID`, `cat`) VALUES
('blog8', 'This time it’s all about the knee-high boots and the pencil skirt that I wanted to wear', ' This time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skir', '<p><span style="text-decoration: underline;"><em>vsdgwsdgvsdgdgrd</em></span></p>This time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wear', '2016-08-29 00:34:22', 'http://allpeliculas.com/getImages/image/84/113/100/top/files/news_images/12312324_461429782973_142978297578_tupeli.me.jpg', 1, 6),
('blog2', 'This time it’s all about the knee-high boots and the pencil skirt that I wanted to wear', 'blog2 desc', 'This time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wear', '2016-08-16 03:59:42', 'http://allpeliculas.com/getImages/image/84/113/100/top/files/news_images/12312324_461429782973_142978297578_tupeli.me.jpg', 3, 6),
('blog2', 'This time it’s all about the knee-high boots and the pencil skirt that I wanted to wear', 'blog2 desc', 'blog2 textThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wear', '2016-08-17 06:33:17', 'http://allpeliculas.com/getImages/image/84/113/100/top/files/news_images/12312324_461429782973_142978297578_tupeli.me.jpg', 4, 7),
('blog', 'This time it’s all about the knee-high boots and the pencil skirt that I wanted to wear', 'descr', 'This time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that This time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearI wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wear', '2016-07-13 20:00:00', 'http://allpeliculas.com/getImages/image/84/113/100/top/files/news_images/12312324_461429782973_142978297578_tupeli.me.jpg', 5, 8),
('blog cat', 'This time it’s all about the knee-high boots and the pencil skirt that I wanted to wear', 'blog desc', '<p>jkcnasjkcnakj</p>This time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wearThis time it’s all about the knee-high boots and the pencil skirt that I wanted to wear', '2016-07-23 20:00:00', 'http://allpeliculas.com/getImages/image/84/113/100/top/files/news_images/12312324_461429782973_142978297578_tupeli.me.jpg', 9, 2),
('lorem', 'ჩემი საყვრელი დრო შემოდგომაა. უფრო სწორად სექტემბერ-ოქტომბრის შუალედი, როცა არც ცივა არც ცხელა.. გრილა და ს', 'ჩემი საყვარელი დრო შემოდგომაა. უფრო სწორად სექტემბერ-ოქტომბრის შუალედი, როცა არც ცივა არც ცხელა.. გრილა და ს', '<p><img style="float: left;" title="რა ჩავიცვათ სექტემბერში? ( მოდურად,\r\nიაფად და ლამაზად ჩაცმის ხელოვნება)" src="http://server3.intermedia.ge/article_images/small/201309/2013091312023095.jpg" alt="image" /><strong><span style="background-color: #ffff00;">ჩემი საყვარელი დრო შემოდგომაა.</span> </strong>უფრო სწორად სექტემბერ-ოქტომბრის შუალედი, როცა არც ცივა არც ცხელა.. გრილა და საშუალება გეძლევა ატარო ერთი შეხედვით სრულიად შეუსაბამო სამოსი ერთად.</p>\r\n<div style="text-align: center;">მაგალითად შიფონის სარაფანი და ბათინკები, კარდიგანი და ტილოს მოკლე კაბა.. მაუსურზე დაუდევრად გადაცმული მსხვილად ნაქსოვი სვიტერი, ფეხზე კი სანდლები. მოკლედ შემოდგომა ის პერიოდია როცა ჩაცმა-დახურვის კუთხით ყველაზე მეტად "იღიძებს" კრეატივი. ასე რომ ჩემო კარგებო, ყველა ქალისთვის აქტუალურზე აქტუალურ საკითხს "რა ჩავიცვათ" შემოდგომაზე</div>\r\n<p>ყველაზე მარტივი გადაწყვეტა მოეძებნება. დღეს მინდა უშუალოდ კარდიგანების თემას შევეხო, იმიტომ რომ ნაქსოვი ჟაკეტი ეს ისეთი რამაა, რომელიც ყველაზე ქალური, კომფორტული და მოხდენილი აუტფიტის შექმნას უწყობს ხელს. მისი ტარება შეგიძლიათ ჯინსებზე,</p>\r\n<h2>ტილოს ან შიფონის მოკლე კაბაზე, შორტებზე და ა.შ გთავაზობთ რამოდენიმე ორიგინალურ ლუქს რომელიც დაგეხმარებათ იმაში რომ კარდიგანთან სატარებელი სხვადასხვა სამოსი და აქსესუარი მარტივად შეარჩიოთ.</h2>', '2016-07-20 20:00:00', 'http://allpeliculas.com/getImages/image/84/113/100/top/files/news_images/12312324_461429782973_142978297578_tupeli.me.jpg', 10, 2),
('lorem', 'ჩემი საყვრელი დრო შემოდგომაა. უფრო სწორად სექტემბერ-ოქტომბრის შუალედი, როცა არც ცივა არც ცხელა.. გრილა და ს', 'ჩემი საყვარელი დრო შემოდგომაა. უფრო სწორად სექტემბერ-ოქტომბრის შუალედი, როცა არც ცივა არც ცხელა.. გრილა და ს', '<p style="text-align: center;"><img style="float: left;" title="რა ჩავიცვათ სექტემბერში? ( მოდურად,\nიაფად და ლამაზად ჩაცმის ხელოვნება)" src="http://server3.intermedia.ge/article_images/small/201309/2013091312023095.jpg" alt="image" /><strong><span style="background-color: #ffff00;">&nbsp; &nbsp;ჩემი საყვარელი დრო შემოდგომაა.</span> </strong>უფრო სწორად სექტემბერ-ოქტომბრის შუალედი, &nbsp; &nbsp;როცა არც ცივა არც ცხელა.. გრილა და საშუალება გეძლევა ატარო ერთი შეხედვით &nbsp; &nbsp; &nbsp;სრულიად შეუსაბამო სამოსი ერთად.</p>\n<div style="text-align: center; padding-left: 30px;">მაგალითად შიფონის სარაფანი და ბათინკები, კარდიგანი და ტილოს მოკლე კაბა.. &nbsp;მაუსურზე დაუდევრად გადაცმული მსხვილად ნაქსოვი სვიტერი, ფეხზე კი სანდლები. მოკლედ შემოდგომა ის პერიოდია როცა ჩაცმა-დახურვის კუთხით ყველაზე მეტად "იღიძებს" კრეატივი. ასე რომ ჩემო კარგებო, ყველა ქალისთვის აქტუალურზე აქტუალურ საკითხს "რა ჩავიცვათ" შემოდგომაზე</div>\n<p style="padding-left: 30px; text-align: center;">&nbsp; &nbsp;ყველაზე მარტივი გადაწყვეტა მოეძებნება. დღეს მინდა უშუალოდ კარდიგანების &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; თემას შევეხო, იმიტომ რომ ნაქსოვი ჟაკეტი ეს ისეთი რამაა, რომელიც ყველაზე &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ქალური, კომფორტული და მოხდენილი აუტფიტის შექმნას უწყობს ხელს. მისი &nbsp;ტარება შეგიძლიათ ჯინსებზე,</p>\n<h2 style="padding-left: 30px; text-align: center;">&nbsp; &nbsp;ტილოს ან შიფონის მოკლე კაბაზე, შორტებზე და ა.შ &nbsp; &nbsp; &nbsp;გთავაზობთ რამოდენიმე ორიგინალურ ლუქს რომელიც &nbsp; &nbsp;დაგეხმარებათ იმაში რომ კარდიგანთან სატარებელი &nbsp; &nbsp; &nbsp; &nbsp;სხვადასხვა სამოსი და აქსესუარი მარტივად &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; შეარჩიოთ.</h2>', '2016-07-20 20:00:00', 'http://allpeliculas.com/getImages/image/84/113/100/top/files/news_images/12312324_461429782973_142978297578_tupeli.me.jpg', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `blog_cats`
--

CREATE TABLE IF NOT EXISTS `blog_cats` (
  `ID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descrip` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_cats`
--

INSERT INTO `blog_cats` (`ID`, `title`, `descrip`) VALUES
(2, 'cat3', 'cat2 desc'),
(5, 'cat2', ''),
(6, 'cat4', ''),
(7, 'cat6', ''),
(8, 'cat7', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `pos`, `active`) VALUES
(1, 'Noticias', 5, 1),
(2, '¿Sabías que…?', 0, 1),
(3, 'Ocio', 11, 1),
(4, 'Salud y belleza', 9, 1),
(5, 'Humor', 3, 0),
(6, 'Contenido de internet', 7, 1),
(13, 'jimsheri', 13, 0),
(14, 'Parejas', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cp_post`
--

CREATE TABLE IF NOT EXISTS `cp_post` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `url_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `large_text` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video` text COLLATE utf8_unicode_ci NOT NULL,
  `teg` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` date NOT NULL,
  `add-date` datetime NOT NULL,
  `slider` int(11) NOT NULL,
  `favorite` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=272 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cp_post`
--

INSERT INTO `cp_post` (`id`, `category`, `url_name`, `title`, `description`, `large_text`, `image`, `slider_image`, `video`, `teg`, `createdate`, `add-date`, `slider`, `favorite`, `pos`, `active`) VALUES
(70, 5, 'Mira-el-gran-problema-que-suponen-los-vídeos-en-vertical', 'Mira el gran problema que suponen los vídeos en vertical', '', '<p style="text-align:center">Si ves a alguien grabando en vertical dile: &iexcl;est&aacute;s grabando mal, imb&eacute;cil!</p>\r\n\r\n<div style="text-align: center;">&nbsp;</div>\r\n', 'post-1454349920.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube-nocookie.com/embed/M6YlKHF7IyA?showinfo=0" frameborder="0" allowfullscreen></iframe>', '', '2016-01-31', '2016-01-31 09:18:42', 0, 0, 69, 1),
(66, 1, 'Las-mujeres-saudíes-no-tienen-los-mismos-derechos-que-tú', 'Las mujeres saudíes no tienen los mismos derechos que tú', '', '', 'post-1454343975.jpeg', '', '', '', '2016-01-31', '2016-01-31 07:39:36', 0, 0, 66, 1),
(71, 6, '¿Sabes-lo-que-es-el-efecto-Pigmalión?', '¿Sabes lo que es el efecto Pigmalión?', '', '<div>\r\n<p>Divina Pastora Seguros ha creado un spot en el que explica que no debemos da&ntilde;ar a la gente con nuestras palabras, sino animarlas para que puedan seguir adelante y conseguir sus metas. Esas insignificantes palabras que salen de nuestra boca tienen mucho m&aacute;s importancia de lo que pensamos.</p>\r\n\r\n<p>Sue&ntilde;a, aspira alto y cree que es posible. Cuando caigas, lev&aacute;ntate con una lecci&oacute;n. Cada vez estar&aacute;s m&aacute;s cerca de tus metas.</p>\r\n\r\n<p style="text-align: center;">&nbsp;</p>\r\n\r\n<p style="text-align: center;"><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/cu7CqojSA14" width="560"></iframe></p>\r\n\r\n<p style="text-align: center;">Subtitulado</p>\r\n\r\n<p style="text-align: center;"><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/ruhqkTqWMfk" width="560"></iframe></p>\r\n\r\n<p style="text-align: center;">&nbsp;</p>\r\n</div>\r\n', 'post-1454354336.jpeg', '', '', '', '2016-01-31', '2016-01-31 10:32:17', 0, 0, 70, 1),
(68, 3, 'Muertes-de-animales-en-el-cine-que-no-podremos-superar-jamás', 'Muertes de animales en el cine que no podremos superar jamás', '', '<p>La muerte de las personas duele, pero cuando vemos a un pobre animalillo morir en el cine se nos rompe el alma. Aqu&iacute; te dejo una lista muy triste de las tr&aacute;gicas muertes de los animales en el cine:</p>\r\n\r\n<p>Hachiko (Siempre a su lado)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/hachiko.jpg" style="height:684px; width:500px" /></p>\r\n</div>\r\n\r\n<p>Sam (Soy Leyenda)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/sam.jpg" style="height:375px; width:500px" /></p>\r\n</div>\r\n\r\n<p>Marley (Una pareja de tres)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/marley.gif" style="height:262px; width:500px" /></p>\r\n</div>\r\n\r\n<p>La madre de Bambi (Bambi)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/bambi.jpg" style="height:282px; width:500px" /></p>\r\n</div>\r\n\r\n<p>Hedwig (Harry Potter)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/hedwig.jpg" style="height:634px; width:500px" /></p>\r\n</div>\r\n\r\n<p>Fiel amigo (Old yeller)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/old%20yeller.jpg" style="height:341px; width:500px" /></p>\r\n</div>\r\n\r\n<p>Skip (Mi perro Skip)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/skip.jpg" style="height:282px; width:500px" /></p>\r\n</div>\r\n\r\n<p>Kerchak (Tarz&aacute;n)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/kerchek.jpg" style="height:281px; width:500px" /></p>\r\n</div>\r\n\r\n<p>Aslan (Las cr&oacute;nicas de Narnia)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/aslam.jpg" style="height:890px; width:500px" /></p>\r\n</div>\r\n\r\n<p>Lady (Juego de Tronos)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/lady.gif" style="height:281px; width:500px" /></p>\r\n</div>\r\n\r\n<p>Mufasa (El Rey Le&oacute;n)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/mufasa.gif" style="height:230px; width:500px" /></p>\r\n</div>\r\n\r\n<p>La madre de Pie Peque&ntilde;o (En busca del valle encantado)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/madre%20de%20pie.jpg" style="height:307px; width:500px" /></p>\r\n</div>\r\n\r\n<p>Charlie (Todos los perros van al cielo)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/7-muertes-del-cine-que-todavia-no-superamos-02.jpg" style="height:333px; width:500px" /></p>\r\n</div>\r\n\r\n<p>Artax, el caballo de Atreyu (La historia sin fin)</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/7-muertes-del-cine-que-todavia-no-superamos-03.jpg" style="height:333px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 'post-1454347537.gif', '', '', '', '2016-01-31', '2016-01-31 08:38:28', 0, 0, 67, 1),
(72, 2, '¿Sabías-que-estos-animales-tienen-unas-características-muy-raras?', '¿Sabías que estos animales tienen unas características muy raras?', '', '<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/animales01vaca.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales02panda.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales03oveja.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales04tigre.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales05pinguino.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales06gato-copy.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales07perrete.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales08conejo.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales09elefante.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales10zorro.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales11leones1.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales12gorrino.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales13cebra.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales14monete.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/animales15burro.jpg" style="height:500px; width:500px" /></p>\r\n</div>', 'post-1454354858.jpeg', '', '', '', '2016-01-31', '2016-01-31 10:39:41', 0, 0, 71, 1),
(73, 6, 'Haz-estas-manualidades-reutilizando-objetos-cotidianos', 'Haz estas manualidades reutilizando objetos cotidianos', '', '<div>\r\n<p>Todos hemos tenido cosas viejas a las que solemos llamar &ldquo;basura&rdquo;. En este art&iacute;culo te ense&ntilde;ar&eacute; a convertir esa &ldquo;basura&rdquo; en una obra de arte. Si eres de esas personas a las que les gustan las manualidades y sobre todo reutilizar las cosas, esto te vendr&aacute; de perlas. Reutilizar, adem&aacute;s de ser bueno para el medio ambiente, favorece tu bolsillo. &iexcl;Atr&eacute;vete a realizar estas magn&iacute;ficas ideas!</p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/bombillas.JPG" style="height:499px; width:500px" /><img alt="" src="/kcfinder/upload/images/DIY-library-desk-made-from-books.png.jpg" style="height:374px; width:500px" /><img alt="" src="/kcfinder/upload/images/Captura%282%29.JPG" style="height:497px; width:500px" /><img alt="" src="/kcfinder/upload/images/colored-glass-table-lamps-pottery-barn-clift-4-thumb-630x567-9992.jpg" style="height:356px; width:500px" /><img alt="" src="/kcfinder/upload/images/50cb314540a71318d757c0c65af06570.jpg" style="height:1333px; width:500px" /><img alt="" src="/kcfinder/upload/images/8a620eeeed08470b184416b03484b3ec.jpg" style="height:818px; width:500px" /><img alt="" src="/kcfinder/upload/images/image-158611.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/jarronesmaquillaje.JPG" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/large%20%281%29.jpg" style="height:647px; width:500px" /><img alt="" src="/kcfinder/upload/images/large%20%282%29.jpg" style="height:700px; width:500px" /><img alt="" src="/kcfinder/upload/images/large%282%29.jpg" style="height:375px; width:500px" /><img alt="" src="/kcfinder/upload/images/papelhigi%C3%A9nico.JPG" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/reciclado_de_botellas_cuatro.jpg" style="height:752px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_ne7ei36Wjz1t48nxyo1_1280.jpg" style="height:1045px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_nfgxa5VSHw1u47jclo1_500.jpg" style="height:433px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_njb5v6Bkkd1t48nxyo1_500.jpg" style="height:741px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_ntwrxsJFTL1u6kg3ao1_1280.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_ntyhubikpF1qihh0eo1_1280.jpg" style="height:1000px; width:500px" /><img alt="" src="/kcfinder/upload/images/upcycling-9.jpg" style="height:375px; width:500px" /></p>\r\n</div>\r\n', 'post-1454357069.jpeg', '', '', '', '2016-01-31', '2016-01-31 11:17:50', 0, 0, 72, 1),
(74, 1, 'El-último-cambio-de-Barbie-refleja-una-''visión-más-amplia-de-la-belleza''', 'El último cambio de Barbie refleja una ''visión más amplia de la belleza''', '', '<p>Barbie ha pasado por muchos cambios de estilos diferentes durante estas &uacute;ltimas d&eacute;cadas, pero el &uacute;ltimo lanzamiento es, sin duda, el m&aacute;s importante. Mattel ha dado por conocer un nuevo conjunto de Barbies con diferentes formas de cuerpo y tonos de piel&nbsp;para reflejar algo de realismo y diversidad en la mu&ntilde;eca.</p>\r\n\r\n<p>Las mu&ntilde;ecas pueden ser peque&ntilde;as, altas y con curvas, as&iacute; como en siete tonos de piel que representan diferentes razas y etnias,</p>\r\n\r\n<p>Es una gran noticia ya que est&aacute;n ayudando a muchas ni&ntilde;as a aprender &nbsp;que todos los cuerpos son perfectos.</p>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', 'post-1454358426.jpeg', '', '', '', '2016-01-31', '2016-01-31 11:40:28', 0, 0, 73, 1),
(75, 6, 'Mira-este-espectacular-corto-sobre-una-verdadera-relación', 'Mira este espectacular corto sobre una verdadera relación', '', '<p>Al parecer no se necesita ser rico para realizar un corto magn&iacute;fico. Este fot&oacute;grafo llamado Victor Habchy solo ten&iacute;a 40&euro; de presupuesto. Seguro que tienes prejuicios de c&oacute;mo puede ser este corto, pero cuando lo veas te los va a quitar, porque en lo que dura el v&iacute;deo logra transmitir adecuadamente la historia y sus emociones.</p>\r\n\r\n<p>El director es un fot&oacute;grafo que tambi&eacute;n intenta ser dise&ntilde;ador y crea v&iacute;deos tan espectaculares como este, y es dalt&oacute;nico, es algo impresionante tomando en cuenta la apuesta visual bastante arm&oacute;nica y llamativa del corto.</p>\r\n\r\n<p>En este v&iacute;deo nos muestra los altos y bajos de una relaci&oacute;n de amor, en la ciudad m&aacute;s rom&aacute;ntica del mundo, con Edith Piaf de fondo. Al parecer no hacen falta palabras para transmitir todas estas emociones que pone este hombre en este cortometraje. Seguramente te identifiques.</p>\r\n\r\n<div>&nbsp;</div>\r\n', 'post-1454359130.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube-nocookie.com/embed/gwUObyaDuV8?showinfo=0" frameborder="0" allowfullscreen></iframe>', '', '2016-01-31', '2016-01-31 11:52:12', 0, 0, 74, 1),
(76, 1, 'Este-chico-fue-al-entierro-de-su-mejor-amigo-con-un-vestido,-¿sabes-cuál-es-el-motivo?', 'Este chico fue al entierro de su mejor amigo con un vestido, ¿sabes cuál es el motivo?', '', '<p>&quot;La promesa que he tenido que mantener: llevar un vestido en el funeral de mi amigo ca&iacute;do.&quot;</p>\r\n\r\n<p>Kevin Elliot, que era un soldado brit&aacute;nico, muri&oacute; en acci&oacute;n en Afganist&aacute;n cuando patrullaba a pie el distrito de Babaji.</p>\r\n\r\n<p>Retorci&eacute;ndose en el vestido de 4,99 &pound; de Primark, Barry Delaney nunca se detuvo a considerar lo que otros pudieran pensar. &eacute;l y su mejor amigo Kevin Elliot hab&iacute;n hecho un pacto y eso era todo lo que importaba.</p>\r\n\r\n<p>Tres a&ntilde;os antes, hab&iacute;an acordado que Delaney usar&iacute;a un vestido, el m&aacute;s brillante, si Elliot mor&iacute;a en alguna acci&oacute;n. Su trato se ha realizado mucho antes de lo que se podr&iacute;an haber imaginado; Elliot muri&oacute; mucho antes, siendo v&iacute;ctima de una emboscada de los talibanes en Afganist&aacute;n.</p>\r\n\r\n<p>&ldquo;Hab&iacute;an algunas cejas levantadas, algunas miradas, pero todo el mundo era consciente de la promesa que hab&iacute;a hecho a Kevin.&rdquo; Los recuerdos de Delaney del servicio son escasos, pero recuerda a la hermana de Elliot de 22 a&ntilde;os de edad, Kirsty, abraz&aacute;ndolo con fuerza. Tambi&eacute;n recuerda a la abuela de Elliot, Margaret, apret&aacute;ndole la mano, dici&eacute;ndole que todo estar&iacute;a bien.</p>\r\n\r\n<p>Las fotograf&iacute;as del entierro muestran que Delaney se derrumb&oacute; por el dolor junto a la tumba. &ldquo;Yo estaba inclin&aacute;ndome para preguntarle si le gustaba el color del vestido,&rdquo; dijo. Sus piernas cedieron, ya que cay&oacute; en la cuenta de que Elliot no responder&iacute;a.</p>\r\n\r\n<div>\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Barry-Delaney-at-Kevin-El-001%281%29.jpg" style="height:300px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&ldquo;&Eacute;l estaba lleno de vida, siempre con mucha energ&iacute;a. Cada momento con Kevin era un gran momento, &eacute;l quer&iacute;a poner una sonrisa en la cara de todos.&rdquo;</p>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n</div>\r\n', 'post-1454359837.jpeg', '', '', '', '2016-01-31', '2016-01-31 12:03:35', 0, 0, 75, 1),
(77, 1, 'http://interesate.net/detail/77/', '"Paredes de la bondad" dan esperanza a la gente sin hogar de Irán', '', '<p>&nbsp;</p>\r\n\r\n<p>Ir&aacute;n sigue sufriendo la recesi&oacute;n mundial, y el impacto econ&oacute;mico sobre los iran&iacute;es est&aacute; alcanzando niveles de crisis.&nbsp;</p>\r\n\r\n<p>Un informe de 2013 encontr&oacute; que el n&uacute;mero de iran&iacute;es que viven por debajo del umbral internacional de pobreza se ha duplicado un 40% en los &uacute;ltimos 8 a&ntilde;os. Como resultado, hay cerca de 15.000 personas sin hogar en Teher&aacute;n. &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:14px"><strong>En este pa&iacute;s de ricos y pobres , alguien empez&oacute; una revoluci&oacute;n pac&iacute;fica para hacer una diferencia .</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>En la ciudad de Mashad, situada en el noreste de Ir&aacute;n, una persona an&oacute;nima coloca ganchos y perchas en la pared exterior de un edificio. Hab&iacute;a tambi&eacute;n un mensaje especial al lado de &eacute;l: &quot; Si no lo necesitas, d&eacute;jalo.&nbsp;Si lo necesitas, c&oacute;gelo. &quot;.</p>\r\n\r\n<p>En unos pocos d&iacute;as la gente se ha ido uniendo a esta bella causa.&nbsp;</p>\r\n\r\n<p>Estos peque&ntilde;os detalles nos hacen grandes.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/CWLf3pHWUAADz6i.jpg" style="height:500px; width:500px" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p>(v&iacute;a:&nbsp;<a href="http://aplus.com/" target="_blank">http://aplus.com/</a>)</p>\r\n', 'post-1454361794.jpeg', '', '', '', '2016-01-31', '2016-01-31 12:36:35', 0, 0, 76, 1),
(78, 2, 'lana-del-rey-', 'lana del rey ', '', '<div>\r\n<ul>\r\n	<li>\r\n	<p>Nueva York, EEUU: &iquest;C&oacute;mo no? Es una de las ciudades m&aacute;s prestigiosas y bonitas del mundo. Con 8,406 millones de habitantes es la segunda ciudad m&aacute;s poblada del pa&iacute;s. En ella puedes encontrar todo lo que buscas: entretenimiento, pol&iacute;tica, arte, gastronom&iacute;a, educaci&oacute;n, moda...</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n\r\n<ol>\r\n</ol>\r\n\r\n<p>Tiene muchos edificios mundialmente conocidos como la estatua de la Libertad y el Empire State.<img alt="\\&quot;\\&quot;" src="\\" /></p>\r\n\r\n<ol start="\\&quot;2\\&quot;">\r\n	<li>\r\n	<p>Tiflis, Georgia: es una ciudad poco conocida ya que pertenece a un pa&iacute;s peque&ntilde;o del Este de Europa, justo al lado del mar Negro. Georgia tiene cerca de 4 millones de habitantes pero es un pa&iacute;s lleno de historia y cultura. Es m&aacute;gica, repleta de edificios arquitect&oacute;nicos, y para los creyentes, muchas iglesias. Realmente es una ciudad que vale la pena visitar ya que tiene una gastronom&iacute;a diferente a la nuestra y una m&uacute;sica y una danza folkl&oacute;rica. &iquest;Y qu&eacute; mejor que conocer los gustos y las tradiciones de un pa&iacute;s tan diferente al nuestro?<img alt="\\&quot;\\&quot;" src="\\" /></p>\r\n	</li>\r\n	<li>\r\n	<p>Par&iacute;s, Francia: conocida como &ldquo;La Ciudad del Amor&rdquo;. Es la ciudad m&aacute;s visitada de todo el mundo seg&uacute;n el Comit&eacute; Regional del Turismo. Tendr&iacute;as que verla en persona para conocer sus calles, visitar sus monumentos, descubrir su magia nocturna y su esplendor a la luz del d&iacute;a. Es la ciudad m&aacute;s lujosa del mundo, con las mejores marcas, coches de lujo, la elegancia de la gente y dem&aacute;s...<img alt="\\&quot;\\&quot;" src="\\" /></p>\r\n	</li>\r\n	<li>\r\n	<p>Roma, Italia: &iquest;Has estado alguna vez en esta ciudad hist&oacute;rica? Se la conoce como la Ciudad Eterna. Llena de bella gente y preciosos edificios de la Antigua Roma. Si sigues la religi&oacute;n es la ciudad perfecta para ti, ya que es el coraz&oacute;n de la religi&oacute;n cat&oacute;lica. La Ciudad del Vaticano, el Coliseo, el Pante&oacute;n de Agripa, el Arco de Constantino, el Castillo de Sant&#39;Angelo... &iquest;Qu&eacute; m&aacute;s se puede pedir?<img alt="\\&quot;\\&quot;" src="\\" /></p>\r\n	</li>\r\n	<li>\r\n	<p>Praga, Rep&uacute;blica Checa: Se la conoce como la Ciudad de Piedra, y es cierto, todas las calles de esta m&aacute;gica capital est&aacute;n construidas a base de piedras. Sus edificios antiguos te dejar&aacute;n estupefacto/a. Realmente merece la pena visitar esta magn&iacute;fica ciudad y conocer los hechos que aguarda tras sus Patrimonios de la Humanidad.<img alt="\\&quot;\\&quot;" src="\\" /></p>\r\n	</li>\r\n	<li>\r\n	<p>Benar&eacute;s, India: es una de las ciudades m&aacute;s sagradas del hinduismo. Es un sitio donde disfrutar&aacute;s viendo sus amaneceres y todos esos hombres santos y peregrinos.<img alt="\\&quot;\\&quot;" src="\\" /></p>\r\n	</li>\r\n	<li>\r\n	<p>Lalibela, Etiop&iacute;a: es la segunda ciudad santa de todo el pa&iacute;s. Es conocida por sus preciosas igleasias construidas bajo sus pies.<img alt="\\&quot;\\&quot;" src="\\" /></p>\r\n	</li>\r\n	<li>\r\n	<p>Granada, Espa&ntilde;a: es conocida por la Alahmbra, que es una ciudad palatina andalus&iacute;, es un Patrimonio Nacional heredado por nuestros antepasados &aacute;rabes.<img alt="\\&quot;\\&quot;" src="\\" /></p>\r\n	</li>\r\n	<li>\r\n	<p>Bagan, Birmania: es la capital de varios reinos. Tiene unos estilos arquitect&oacute;nicos realmente brillantes, con c&uacute;pulas con forma de reliquia o mausoleo.<img alt="\\&quot;\\&quot;" src="\\" /></p>\r\n	</li>\r\n	<li>\r\n	<p>Brujas, B&eacute;lgica: ir a esta maravillosa ciudad es como viajar al pasado, con sus edificios hist&oacute;ricos y sus preciosos puentes. Es una ciudad medieval llamada la Venecia del Norte llena de preciosos canales y paisajes.<img alt="\\&quot;\\&quot;" src="\\" /></p>\r\n	</li>\r\n</ol>\r\n', '', '', '', '', '2016-01-31', '2016-01-31 12:50:15', 0, 0, 77, 0),
(79, 4, 'Mira-lo-que-pasa-cuando-dejas-de-tomar-azúcar-durante-1-mes', 'Mira lo que pasa cuando dejas de tomar azúcar durante 1 mes', '', '<p>Los humanos, en general, tenemos una gran adicci&oacute;n al az&uacute;car, que es muy da&ntilde;ino para nuestra salud, pero no le prestamos mucha atenci&oacute;n cuando se trata de &iexcl;CHOCOLATE!&nbsp;</p>\r\n\r\n<p>Kate Bigam, una escritora estadounidense quiso plantearse un desaf&iacute;o: dejar de consumir az&uacute;car durante un mes.</p>\r\n\r\n<p>Al principio no le fue nada f&aacute;cil ya que casi todo lo que consumimos cada d&iacute;a lleva az&uacute;car, pero Kate encontr&oacute; un cup&oacute;n para un programa de desintoxicaci&oacute;n donde tuvo mucha suerte.</p>\r\n\r\n<p>&quot;Soy una amante del tocino y fan&aacute;tica de la cerveza. Sab&iacute;a que el programa era demasiado para m&iacute;, pero al menos quer&iacute;a intentarlo,&quot; apunta Kate.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/kate3.jpg" style="height:352px; width:500px" /></p>\r\n\r\n<p>Las cosas se pon&iacute;an dif&iacute;ciles cuando Kate se dio cuenta de que su dieta normal estaba compuesta de alimentos que conten&iacute;an az&uacute;car, pero gracias a las recomendaciones de su entrenador pudo deshacerse de todo lo que ten&iacute;a az&uacute;car en su despensa y reemplazarlo con alimentos recomendados por el programador.</p>\r\n\r\n<p>&ldquo;Al final de la desintoxicaci&oacute;n, me sent&iacute; f&iacute;sicamente bastante bien. Me dorm&iacute;a m&aacute;s profundamente en las noches y parec&iacute;a tener m&aacute;s energ&iacute;a durante el d&iacute;a.<strong>&nbsp;</strong>Mi cuerpo no estaba tan adolorido, e incluso mis alergias parec&iacute;a haber encontrado alivio,&rdquo; asegura la escritora.</p>\r\n\r\n<p>Aunque todo estaba genial y estaba con m&aacute;s fuerzas y energ&iacute;as que nunca, Kate notaba algo diferente, no le gustaba su forma de vivir. Se daba cuenta de que sin su alimentaci&oacute;n de siempre se sent&iacute;a menos feliz. Ya no sal&iacute;a a cenar con su pareja ni iba a los happy hour con sus amigos, ya que todo significaba tener que romper la dieta. Por ello prefiri&oacute; seguir con su vida normal e hizo que volviera el az&uacute;car a su vida.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/kate2.jpg" style="height:418px; width:500px" /></p>\r\n\r\n<p>&iquest;Te sumas al desaf&iacute;o?</p>\r\n\r\n<p>(v&iacute;a:&nbsp;<a href="http://www.upsocl.com/" target="_blank">http://www.upsocl.com/</a>)</p>\r\n', 'post-1454363583.jpeg', '', '', '', '2016-01-31', '2016-01-31 13:06:24', 0, 0, 78, 1),
(80, 4, 'Ideas-para-hacerte-un-tatuaje-con-una-persona-especial', 'Ideas para hacerte un tatuaje con una persona especial', '', '<p>Seguro que tu sue&ntilde;o siempre ha sido hacerte un tatuaje con ese alguien tan especial. Aqu&iacute; te dejo unas ideas brillantes para que compartas esta gran experiencia con tu pareja, amigo o una persona muy especial para ti.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/large%283%29.jpg" style="height:375px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_mfc8djRQwJ1rp4h5bo1_500.jpg" style="height:365px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_mntxd7Jhlf1r8rb91o1_1280.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_mrxt7xgsYa1semeuio1_500.jpg" style="height:667px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_ngvghhWEA61swap54o1_1280.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_ntajul1FKg1uar7sto1_500.jpg" style="height:332px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_ntajul1FKg1uar7sto2_1280.jpg" style="height:667px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_ntefzrQRpf1tpcxq1o1_1280.jpg" style="height:483px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_ntjznjx2vq1t44wb2o1_500.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_ntt7ui8Rdw1sgrqj3o1_500.jpg" style="height:487px; width:500px" /></p>\r\n', 'post-1454365565.jpeg', '', '', '', '2016-01-31', '2016-01-31 13:39:26', 0, 0, 79, 1),
(81, 3, 'Elliott-Erwitt,-uno-de-los-mejores-fotógrafos-', 'Elliott Erwitt, uno de los mejores fotógrafos ', '', '<p>&iquest;Conoces a Erwitt? Pues es uno de los fot&oacute;grafos m&aacute;s grandes&nbsp;del siglo XX por su impresionante calidad art&iacute;stica.</p>\r\n\r\n<p>Siendo hijo de unos emigrantes jud&iacute;os se vio obligado a emigrar a los Estados Unidos por la II Guerra Mundial.</p>\r\n\r\n<p>Empez&oacute; con la fotograf&iacute;a en los a&ntilde;os 40. En 1968 se convirti&oacute; en el presidente de una agencia muy prestigiosa llamada&nbsp;<a href="http://www.magnumphotos.com/" target="_blank">Magnum Photos</a>.</p>\r\n\r\n<p>En los a&ntilde;os 60 comenz&oacute; a hacer documentales, programas de televisi&oacute;n y libros. Hasta la fecha, Elliott es el autor de&nbsp;18 monograf&iacute;as y sigue trabajando en nuevos t&iacute;tulos.</p>\r\n\r\n<p>Aqu&iacute; puedes ver alguna de sus fotograf&iacute;as.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Elliott-Erwitt.jpg" style="height:325px; width:500px" /><img alt="" src="/kcfinder/upload/images/EE-1150.jpg" style="height:335px; width:500px" /><img alt="" src="/kcfinder/upload/images/ElliotErwitt-Peacemarch.jpeg" style="height:325px; width:500px" /><img alt="" src="/kcfinder/upload/images/elliott-erwitt-usa-new-york-1956-american-actress-marilyn-monroe-cm-40-x-50-2orig_main.jpg" style="height:307px; width:500px" /></p>\r\n\r\n<p><a href="http://www.elliotterwitt.com/lang/es/index.html" target="_blank">Pincha aqu&iacute;</a>&nbsp;para ver su &aacute;lbum completo.</p>\r\n', 'post-1454371103.jpeg', '', '', '', '2016-01-31', '2016-01-31 15:10:10', 0, 0, 80, 1),
(82, 6, 'Nadie-había-hablado-de-este-tema-de-una-forma-tan-preciosa', 'Nadie había hablado de este tema de una forma tan preciosa', '', '<div style="text-align: center;">Hablar de un tema tan dif&iacute;cil y convertirlo en una obra de arte. Este v&iacute;deo te conquistar&aacute; por su est&eacute;tica, por sus palabras y la expresividad de su gran actriz.&nbsp;</div>\r\n\r\n<p>&quot;Te prometo algo: solo dejar&eacute; de estar a tu lado para ser parte de ti.&quot;</p>\r\n', 'post-1454371845.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube-nocookie.com/embed/uTz2gxtz3Tw?showinfo=0" frameborder="0" allowfullscreen></iframe>', '', '2016-01-31', '2016-01-31 15:23:14', 0, 0, 81, 1),
(83, 2, '¿Sabías-que-el-consumo-de-la-carne-está-relacionado-con-el-cambio-climático?', '¿Sabías que el consumo de la carne está relacionado con el cambio climático?', '', '<p>El cambio clim&aacute;tico es la modificaci&oacute;n del clima que ha tenido lugar respecto de su historial a escala regional y global. En general, se trata de cambios de orden natural, pero actualmente, se los encuentra asociados con el impacto humano sobre el planeta.</p>\r\n\r\n<p>La ONU recomienda reducir el consumo de la carne para luchar contra el cambio clim&aacute;tico ya nuevos estudios advierten que las dos mayores zonas heladas del planeta, Groenlandia y la Ant&aacute;rtida, se est&aacute;n derritiendo a un ritmo preocupante, el doble de r&aacute;pido que hace cinco a&ntilde;os.</p>\r\n\r\n<p>Aqu&iacute; te dejo un v&iacute;deo muy simple de PlayGround que te explica porqu&eacute; el consumo carne es peligroso para nuestro planeta.</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/no4OkovZsJg" width="500"></iframe></p>\r\n', 'post-1454373354.jpeg', '', '', '', '2016-01-31', '2016-01-31 15:49:15', 0, 0, 82, 1),
(84, 3, 'Escucha-esta-sorprendente-versión-de-', 'Escucha esta sorprendente versión de Hello', '', '<p>&iquest;He o&iacute;do que te gusta el famoso single de Adele? &iquest;Y adem&aacute;s eres un cin&eacute;filo? &iexcl;Estupendo! Te va a encantar esta versi&oacute;n de &quot;Hello&quot;. Matthijs Vlot ha cogido la letra de la canci&oacute;n y algunos fragmentos de las pel&iacute;culas m&aacute;s famosas. Solo un genio har&iacute;a algo tan espectacular.</p>\r\n', 'post-1454442629.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube-nocookie.com/embed/6MFbr60M3ls?showinfo=0" frameborder="0" allowfullscreen></iframe>', '', '2016-02-01', '2016-02-01 11:01:25', 0, 0, 83, 1),
(85, 1, 'El-matrato-y-la-anorexia-en-el-modelaje', 'El maltrato y la anorexia en el modelaje', '', '<p>&iquest;Sab&iacute;as que el modelaje es una profesi&oacute;n muy complicada? Mucha gente quiere pasar su vida en las pasarelas, pero &iquest;son capaces de sufrir tanto para llegar a una cima donde lo &uacute;nico que importa es la imagen?</p>\r\n\r\n<p>Pongamos un ejemplo, Victoire Ma&ccedil;on Dauxerre es una modelo francesa de tan solo 23 a&ntilde;os que ha llegado a ser una de las modelos m&aacute;s importantes de su pa&iacute;s.&nbsp;</p>\r\n\r\n<p>La chica se ha atrevido a denunciar mediante su libro &quot;<em>Jam&aacute;s demasiado flaca&quot;&nbsp;</em>el maltrato, la anorexia y la deshumanizaci&oacute;n del mundo de la moda.</p>\r\n\r\n<p>Confiesa que cuando m&aacute;s &eacute;xito ten&iacute;a era cuando m&aacute;s anor&eacute;xica estaba, y que el destrato a las modelos era moneda corriente, as&iacute; como los des&oacute;rdenes alimenticios y las adicciones.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/2149754h765.jpg" style="height:879px; width:500px" /></p>\r\n\r\n<p>Aqu&iacute; te dejo una entrevista que se le hizo a la modelo:</p>\r\n\r\n<p><strong>-&iquest;C&oacute;mo te convertiste en modelo?</strong></p>\r\n\r\n<p>-Estaba en el &uacute;ltimo a&ntilde;o del colegio cuando un ejecutivo de cuentas de Elite Models me vio en la calle y me dijo que iba a ser la pr&oacute;xima Claudia Schiffer, y que ten&iacute;a que firmar contrato con &eacute;l. Era una gran alumna en el colegio y mi inter&eacute;s estaba en la parte intelectual, no en el cuerpo. Como no entr&eacute; en la universidad que quer&iacute;a, pens&eacute; en convertirme en modelo.</p>\r\n\r\n<p><strong>-&iquest;Y al firmar el contrato qu&eacute; te dijeron?</strong></p>\r\n\r\n<p>-Que era muy hermosa, pero que necesitaba bajar de peso para entrar en un talle 0. Mis medidas de caderas eran de 92 cm, y me ped&iacute;an que sean de 87. Ten&iacute;a dos meses para perder peso y llegar bien a la Fashion Week de Nueva York. Y me convert&iacute; en anor&eacute;xica: com&iacute;a s&oacute;lo tres manzanas al d&iacute;a, baj&eacute; 10 kilos y llegu&eacute; al talle pedido. Viaj&eacute; y compart&iacute; un departamento con otras dos modelos, que no me hablaban porque estaban celosas de que yo era la m&aacute;s flaca. Cuanto m&aacute;s peso perd&iacute;a, m&aacute;s &eacute;xito laboral ten&iacute;a: me cogieron para 22 desfiles en Mil&aacute;n y Par&iacute;s. Llegu&eacute; a ser la top 20 de modelos del a&ntilde;o.</p>\r\n\r\n<p><strong>-&iquest;No te dabas cuenta de que ten&iacute;as un desorden alimentario?</strong></p>\r\n\r\n<p>-S&iacute; y no., lo negaba. La moda te convierte en un objeto, y eres s&oacute;lo una percha a la que la ropa le tiene que sentar bien, seg&uacute;n los criterios de los dise&ntilde;adores, las agencias y los fot&oacute;grafos. Tienes que ser flaqu&iacute;sima s&iacute; o s&iacute;; o no comes o tomas coca&iacute;na, cosa que no iba a hacer. Pero llegu&eacute; a intentar suicidarme y fue como un grito de ayuda. Era habitual: las modelos que me rodeaban com&iacute;an cuando aparec&iacute;a una c&aacute;mara en &eacute;pocas de desfiles y despu&eacute;s iban todas juntas a vomitar al ba&ntilde;o. Y en los departamentos que compartes con otras modelos del mundo, la envidia y las traiciones son comunes: una amiga m&iacute;a&nbsp;modelo ten&iacute;a un casting, y sus dos compa&ntilde;eras de cuarto,&nbsp;dos modelos rusas,&nbsp;le dieron golosinas a su perro para que se descomponga y tuviera que llevarlo de urgencia al veterinario y no pudiera llegar al casting.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-En tu libro nombras a dise&ntilde;adores famosos. &iquest;Cu&aacute;l fue tu peor momento con ellos?</strong></p>\r\n\r\n<p>-La peor de todas es Miuccia Prada. Para el casting de su desfile me maquillaron durante 6 horas y nadie me habl&oacute;, fui realmente un objeto. Cuando ella entr&oacute; todos le ten&iacute;an miedo. Se acerc&oacute;, me mir&oacute; con cara de desaprobaci&oacute;n y el peluquero y el maquillador me hicieron otro make-up en dos minutos: nunca me maltrataron el pelo ni la cara de ese modo, me hac&iacute;an dolor y yo lloraba. Cuando volvi&oacute; Miuccia esta vez mir&oacute; con cara de sutil aprobaci&oacute;n y todos volvieron a respirar en paz. Cuando ten&iacute;a que probarme la ropa, una asistente me dio zapatos talle 38 y yo soy 40. Cuando le ped&iacute; mi talla&nbsp;me dijo: Si quieres desfilar para Prada, tienes que usar los zapatos 38. No me qued&oacute; otra que hacerlo durante dos horas. Cuando me ba&ntilde;&eacute; perd&iacute; mucha parte de mi pelo porque me pusieron demasiado pegamento para las extensiones que me agregaron, y cuando llam&eacute; a mi agente llorando me dijo: Es normal, as&iacute; hacen en Prada.</p>\r\n\r\n<p><strong>-&iquest;C&oacute;mo son los castings?</strong></p>\r\n\r\n<p>-En el casting de Vuitton nos ped&iacute;an que desfil&aacute;semos s&oacute;lo con una tanga y tacos altos. Nos miraban como si fu&eacute;semos pedazos de carne. Y cuando hice el de Chanel, Karl Lagerfeld no me eligi&oacute; porque dijo que &quot;Chanel no fotograf&iacute;a a mujeres con pechos&quot;, y yo ten&iacute;a pechos medianos. &iexcl;Y todas las mujeres tenemos pechos! Tambi&eacute;n era tomado con normalidad que durante una producci&oacute;n fotogr&aacute;fica, los asistentes les den almuerzo a todos menos a las modelos, porque &quot;las modelos no comen&quot;.</p>\r\n\r\n<p><strong>-&iquest;Por qu&eacute; escribiste el libro?</strong></p>\r\n\r\n<p>-Para denunciar, porque necesitaba pasar el mensaje y concienciar. Mi libro es sobre la realidad de la industria de la moda. Me parecen un crimen las publicidades que venden im&aacute;genes de mujeres con Photoshop, que luego generan problemas alimenticios en miles de mujeres y hombres que quieren lucir como los modelos famosos.</p>\r\n\r\n<p><strong>-&iquest;Escribir fue una forma de curar el dolor?</strong></p>\r\n\r\n<p>-Creo que s&iacute;, pero me va a acompa&ntilde;ar por siempre. Hace cinco a&ntilde;os que lucho contra estos problemas. Pero cont&eacute; esta historia de la anorexia para que tenga vida propia y para que no est&eacute; m&aacute;s en mi cuerpo. No es f&aacute;cil: las promociones y entrevistas que doy por el libro vuelven a remover recuerdos.</p>\r\n\r\n<p><strong>-&iquest;Cu&aacute;ndo dejaste de modelar?</strong></p>\r\n\r\n<p>-A los ocho meses de haber empezado. Estaba en un shooting de ropa interior en pleno invierno, en una locaci&oacute;n de exteriores en las calles de Par&iacute;s. Como el fot&oacute;grafo tardaba en cambiar las lentes ped&iacute; esperar en un auto&nbsp;por el fr&iacute;o. El fot&oacute;grafo reclam&oacute; a la agencia y ellos me dijeron:&nbsp;<em>&iquest;Qui&eacute;n te cre&eacute;s que eres? Eres s&oacute;lo una modelo y &eacute;l es Serge Leblon, uno de los fot&oacute;grafos m&aacute;s importantes del mundo. Si no te gusta este trabajo no lo hagas m&aacute;s</em>. Y as&iacute; fue, le dije que renunciaba. Y eso fue lo m&aacute;s importante porque cuando est&aacute;s en ese mundo nunca dices que no.</p>\r\n\r\n<p><span style="font-size:12px">(Entrevista v&iacute;a:&nbsp;<a href="http://www.lanacion.com" target="_blank">lanacion)</a></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'post-1454445825.jpeg', '', '', '', '2016-02-01', '2016-02-01 11:57:07', 0, 0, 84, 1),
(86, 5, 'Mira-la-forma-de-comer-de-estos-animalillos', 'Mira la forma de comer de estos animalillos', '', '<p>A todos nos gusta la comida, y creo que a casi todos nos gustan los animales. &iquest;Entonces qu&eacute; problema hay si mezclamos estas dos maravillosas cosas? &iexcl;Saldr&iacute;a una mezcla perfecta!</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/eating-6%281%29.jpg" style="height:333px; width:500px" /><img alt="" src="/kcfinder/upload/images/eating-hamster.jpg" style="height:529px; width:500px" /><img alt="" src="/kcfinder/upload/images/f6cd313de1dffe71e15b1a4e768dcfa1.jpg" style="height:313px; width:500px" /></p>\r\n\r\n<p style="text-align:center">Comer o no comer, esa es la cuesti&oacute;n.<img alt="" src="/kcfinder/upload/images/Sin-ti%CC%81tulo-4.png" style="height:644px; width:500px" /><img alt="" src="/kcfinder/upload/images/Sin-ti%CC%81tulo.png" style="height:567px; width:500px" /><img alt="" src="/kcfinder/upload/images/Sin-ti%CC%81tulo-5.png" style="height:302px; width:500px" /><img alt="" src="/kcfinder/upload/images/Sin-ti%CC%81tulo-7.png" style="height:535px; width:500px" /><img alt="" src="/kcfinder/upload/images/Sin-ti%CC%81tulo-12.png" style="height:536px; width:500px" /></p>\r\n\r\n<p style="text-align:center">Mmm... Pizza...</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/Sin-ti%CC%81tulo-15.jpg" style="height:492px; width:500px" /><img alt="" src="/kcfinder/upload/images/Sin-ti%CC%81tulo-3.png" style="height:644px; width:500px" /><img alt="" src="/kcfinder/upload/images/1280x720-asj.jpg" style="height:281px; width:500px" /></p>\r\n\r\n<p style="text-align:center">&iexcl;El veganismo est&aacute; llegando muy lejos!<img alt="" src="/kcfinder/upload/images/Sin-ti%CC%81tulo-9.png" style="height:641px; width:500px" /><img alt="" src="/kcfinder/upload/images/Sin-ti%CC%81tulo-10.png" style="height:558px; width:500px" /></p>\r\n\r\n<p>&iquest;Existe algo m&aacute;s adorable?</p>\r\n', 'post-1454448638.jpeg', '', '', '', '2016-02-01', '2016-02-01 12:43:59', 0, 0, 85, 1),
(98, 3, 'Vin-Diesel-comparte-nuevas-imágenes-de-''xXx:-The-Return-Of-Xander-Cage''', 'Vin Diesel comparte nuevas imágenes de ''xXx: The Return Of Xander Cage''', '', '<p>&nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/81603.jpg" style="height:839px; width:550px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/81600.jpg" style="height:733px; width:550px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/81601.jpg" style="height:553px; width:550px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/81602.jpg" style="height:555px; width:550px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/xXx_The_Return_of_Xander_Cage-191889211-large.jpg" style="height:689px; width:550px" /></p>\r\n', 'post-1454767096.jpeg', '', '', '', '2016-02-05', '2016-02-05 05:11:37', 0, 0, 96, 1),
(87, 5, 'Mira-a-estos-chic@s-no-tan-ricos-de-Instagram.-Gran-parodia-de--#richkidsofinstagram', 'Mira a est@s chic@s no tan ric@s de Instagram. Gran parodia de  #richkidsofinstagram', '', '<p>&iquest;Qui&eacute;n ha dicho que los ricos son m&aacute;s guays que los pobres? Esta gente ha demostrado que tenemos tanto prestigio como ellos. Es una gran parodia que la gente ha ido haciendo de la cuenta de Instagram llamada &quot;Rich Kids of Instagram&quot;, y esta es la frase que tiene en su descripci&oacute;n: &quot;Ellos tienen m&aacute;s dinero que t&uacute; y esto es lo que hacen&quot;. En esta cuenta se suben fotos de gente extremadamente privilegiada que realmente tiene much&iacute;simo dinero para poder permitirse todo lo que aparentan en las fotos.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/1366_2000%20%282%29.jpg" style="height:354px; width:500px" /><img alt="" src="/kcfinder/upload/images/1366_2000%20%283%29.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1366_2000%20%284%29.jpg" style="height:262px; width:500px" /><img alt="" src="/kcfinder/upload/images/1366_2000%20%285%29.jpg" style="height:225px; width:500px" /><img alt="" src="/kcfinder/upload/images/1366_2000%20%286%29.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1366_2000%20%287%29.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1366_2000%20%288%29.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1366_2000%20%289%29.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1366_2000%20%2810%29.jpg" style="height:282px; width:500px" /><img alt="" src="/kcfinder/upload/images/1366_2000%20%2811%29.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1366_2000.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/2588F7AC00000578-2947951-image-a-8_1423593789308.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/2588F7B000000578-2947951-image-a-10_1423593812163.jpg" style="height:250px; width:500px" /></p>\r\n\r\n<p>&iexcl;Zas en toda la boca, ricos!</p>\r\n', 'post-1454449563.jpeg', '', '', '', '2016-02-01', '2016-02-01 12:59:24', 0, 0, 86, 1),
(88, 6, '13-fotos-que-te-darán-ganas-de-explorar-nuestro-bello-mundo', '13 fotos que te darán ganas de explorar nuestro bello mundo', '', '<p>A veces nos hartamos del mundo en el que vivimos, lleno de tecnolog&iacute;a, de gente antip&aacute;tica, coches, problemas y dem&aacute;s. Esas veces solo queremos desaparecer, dejarlo todo atr&aacute;s. No iPhones, no GPS, no problemas, absolutamente NADA. Lo mejor que podemos hacer es unirnos a la naturaleza y disfrutar de ella al 100%.</p>\r\n\r\n<p>Mira estas fotos y dime que no te has quedado&nbsp;con las ganas de visitar cada una de estas zonas.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/aaron%20kato%20%282%29.jpg" style="height:236px; width:500px" /></p>\r\n\r\n<p style="text-align: right;">Aaron Kato</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Aaron%20Kato.jpg" style="height:236px; width:500px" /></p>\r\n\r\n<p style="text-align: right;">Aaron Kato</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/alberto%20rastifo.jpg" style="height:236px; width:500px" /></p>\r\n\r\n<p style="text-align: right;">Alberto Rastifo</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/ali%20inay.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p style="text-align: right;">Ali Inay</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/ashley%20knedler.jpg" style="height:236px; width:500px" /></p>\r\n\r\n<p style="text-align: right;">Ashley Knedler</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/E%2BN%20Photographies%281%29.jpg" style="height:750px; width:500px" /></p>\r\n\r\n<p style="text-align: right;">E+N Photographies</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/ethan%20dow.jpg" style="height:236px; width:500px" /></p>\r\n\r\n<p style="text-align: right;">Ethan Dow</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/igor%20peftiev.jpg" style="height:236px; width:500px" /></p>\r\n\r\n<p style="text-align: right;">Igor Peftiev</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/jared%20erondu.jpg" style="height:236px; width:500px" /></p>\r\n\r\n<p style="text-align: right;">Jared Erondu</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/kai%20oberh%C3%A4user.jpg" style="height:236px; width:500px" /></p>\r\n\r\n<p style="text-align: right;">Kai Oberh&auml;user</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/lukas%20budimaier.jpg" style="height:218px; width:500px" /></p>\r\n\r\n<p style="text-align: right;">Lukas Budimaier</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tj%20holowaychuk.jpg" style="height:236px; width:500px" /></p>\r\n\r\n<p style="text-align: right;">Tj Holowaychuk</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tj%20holowaychuk%20%282%29.jpg" style="height:236px; width:500px" /></p>\r\n\r\n<p style="text-align: right;">Tj Holowaychuk</p>\r\n\r\n<p style="text-align: right;">&nbsp;</p>\r\n\r\n<p style="text-align: right;">(La foto de la portada pertenece a Ales Krivec)</p>\r\n', 'post-1454455469.jpeg', '', '', '', '2016-02-01', '2016-02-01 14:37:50', 0, 0, 87, 1),
(90, 3, 'Escuadrón-Suicida-', 'Escuadrón Suicida ', '', '<p><strong>Estreno en USA</strong>: 05/08/2016<br />\r\n<strong>Estreno en Espa&ntilde;a:</strong>&nbsp;05/08/2016&nbsp;</p>\r\n\r\n<p><strong>Sinopsis:</strong></p>\r\n\r\n<p>La historia del Escuadr&oacute;n Suicida se remonta a 1959 cuando se public&oacute; la primera versi&oacute;n del Escuadr&oacute;n, un cuarteto de aventureros formado por Rick Flagg y su novia Karin Grace, el Dr. Hugh Evans y Jess Bright, aunque por aquel entonces no tuvieron mucha suerte. Otra cosa fue El Escuadr&oacute;n Suicida publicado en 1986, donde aparecieron como una Unidad de Operaciones Especiales del Gobierno de EE.UU. en la l&iacute;nea de Doce del Pat&iacute;bulo, estando formado en parte por supervillanos que conmutaban su pena en funci&oacute;n de su rendimiento en el grupo, tambi&eacute;n hab&iacute;a personal de mejor reputaci&oacute;n o h&eacute;roes de segunda con ganas de volver a sentirse &uacute;tiles.</p>\r\n', 'post-1454543683.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/tT2pWmWHos0" frameborder="0" allowfullscreen></iframe>', 'Escuadrón Suicida ', '2016-02-02', '2016-02-02 15:04:01', 0, 0, 88, 1),
(91, 3, 'Elizabeth-Banks-será-la-villana-de-\\''Power-Rangers\\''', 'Elizabeth Banks será la villana de ', '', '<p>Lionsgate ha anunciado oficialmente que la actriz&nbsp;Elizabeth Banks&nbsp;(<em>&#39;The Hunger Games&#39;</em>) ha firmado para interpretar a la villana en el futuro reinicio de los &#39;<strong>Power Rangers</strong>&#39;. La actriz interpretar&aacute; el papel de Rita Repulsa, una malvada hechicera que durante a&ntilde;os ha planeado conquistar la tierra.</p>\r\n\r\n<p>Dean Israelite&nbsp;(&#39;<em>Project Almanac</em>&#39;) dirigir&aacute; esta pel&iacute;cula cuyo reparto encabezar&aacute;n&nbsp;Dacre Montgomery&nbsp;como Jason, el Ranger Rojo;&nbsp;Rj Cyler&nbsp;como Billy, el Ranger Azul;&nbsp;Naomi Scott&nbsp;como Kimberly, la Ranger Rosa;&nbsp;Ludi Lin&nbsp;como Zack, el Ranger Negro; y la cantante&nbsp;Becky G&nbsp;como Trini, la Ranger Amarillo.</p>\r\n\r\n<p>Zack Stentz y Ashley Miller (<em>&#39;X-Men: First Class&#39;, &#39;Thor&#39;</em>) se har&aacute;n cargo del gui&oacute;n de esta pel&iacute;cula descrita como una reinvenci&oacute;n moderna de la franquicia. En ella, un grupo de chicos de secundaria dotados con una serie de superpoderes y un traje de un color distinto al de los dem&aacute;s, deber&aacute;n formar un equipo para intentar salvar al mundo y a sus habitantes de cuantas amenazas se presenten, ya sean humanas o extraterrestres.</p>\r\n\r\n<p>El creador de la serie original Haim Saban ser&aacute; productor del film junto con Brian Casentini y Allison Shearmur. La pel&iacute;cula llegar&aacute; a los cines el 24 de marzo de 2017.</p>\r\n\r\n<p>20th Century Fox lanz&oacute; previamente dos largometrajes sobre los personajes,&nbsp;<em>&#39;Mighty Morphin Power Rangers: The Movie&#39;</em>&nbsp;en 1995 y&nbsp;<em>&#39;Turbo: A Power Rangers Movie&#39;</em>&nbsp;en 1997.</p>\r\n\r\n<p style="text-align:center">&nbsp;<img alt="" src="/kcfinder/upload/images/81497.jpg" style="height:453px; width:450px" /></p>\r\n\r\n<p style="text-align: center;">Via: elseptimoarte</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'post-1454554023.jpeg', '', '', 'Elizabeth Banks', '2016-02-02', '2016-02-02 18:00:24', 0, 0, 89, 1);
INSERT INTO `cp_post` (`id`, `category`, `url_name`, `title`, `description`, `large_text`, `image`, `slider_image`, `video`, `teg`, `createdate`, `add-date`, `slider`, `favorite`, `pos`, `active`) VALUES
(92, 6, 'Historias-trágicas-con-un-final-muy-feliz', 'Historias trágicas con un final muy feliz', '', '<p>Los humanos no somos los &uacute;nicos en tener pr&oacute;tesis en vez de carne y hueso, estos animalillos pueden volver a disfrutar de la vida como lo hac&iacute;an antes de que les pasara esta desgracia. Estas historias son muy tristes, pero tienen un final muy feliz. Espero que ning&uacute;n animal vuelva a ser sacrificado porque le falte alguna extremidad, recuerda que siempre hay una soluci&oacute;n.</p>\r\n\r\n<p style="text-align:center">Macho</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/2-protesis.jpg" style="height:352px; width:500px" /></p>\r\n\r\n<p>En 2003 este precioso caballo fue encontrado en una carretera de India en unas condiciones inhumanas.</p>\r\n\r\n<p>En vez de sacrificarlo, los veterinarios decidieron trabajar muy duro, pero para ello tuvieron que cortarle una pata, as&iacute; que le pusieron una artificial para poder seguir llevando una vida normal. Ahora Macho es feliz y juega y corre todo lo que puede.</p>\r\n\r\n<p style="text-align:center">Motala</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/3-protesis.jpeg" style="height:355px; width:500px" /></p>\r\n\r\n<p>En 1999 la pobre elefante pis&oacute; una mina terrestre mientras caminaba por un bosque, y se rompi&oacute; una de las patas delanteras tan mal que tuvieron que amputarla.</p>\r\n\r\n<p>En 2009, y ya con 50 a&ntilde;os de edad, por fin pudieron hacerle una pr&oacute;tesis.</p>\r\n\r\n<p>Matala fue la primera elefante en recibir una pr&oacute;tesis. Ahora es muy feliz ya que ha podido volver a caminar y a correr otra vez.</p>\r\n\r\n<p style="text-align:center">Oscar</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/1-protesis.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p>Este gatito, que ha perdido las dos patas de atr&aacute;s, fue ayudado por el veterinario Noel Fitzpatrick y el equipo de la Universidad de Londres para darle una nueva oportunidad y dejar que viva en paz.&nbsp;</p>\r\n\r\n<p style="text-align:center">Bunker</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/15-Historias-sorprendentes-de-superaci%C3%B3n-en-animales.-4.jpg" style="height:488px; width:500px" /></p>\r\n\r\n<p>Bunker pedri&oacute; la pata tras haber sido golpeada con una pelota de golf.&nbsp;Despu&eacute;s de ser llevado al Dr. Ken Macquisten tuvieron que amputarle la pierna. Bunker fue trasladado al Centro de Vida Silvestre de Elizabeth para la rehabilitaci&oacute;n. Pero la pierna prot&eacute;sica temporal no era c&oacute;modo para la gr&uacute;a, por lo que buscaron una soluci&oacute;n m&aacute;s permanente. Ahora, Bunker distribuye su peso uniformemente en ambas piernas.</p>\r\n\r\n<p style="text-align:center">Dudley</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/15-protesis.jpg" style="height:398px; width:500px" /></p>\r\n\r\n<p>Dudley era solo un patito&nbsp;cuando fue atacado por pollos agresivos y perdi&oacute; una pata. Todav&iacute;a pod&iacute;a nadar, pero ten&iacute;a problemas para moverse en tierra. El ingeniero mec&aacute;nico Terence Loring decidi&oacute; ayudar a los patos, ya que trabaja con en una empresa de impresion 3-D. Una vez que se hicieron algunos ajustes, Dudley amaba a su nuevo miembro. Y gracias a la tecnolog&iacute;a de impresi&oacute;n 3-D, no es ning&uacute;n problema en absoluto imprimir nuevas piernas para el pato a medida, que crece y se hace m&aacute;s y m&aacute;s grande. Loring incluso pone los archivos de 3D en l&iacute;nea para que cualquier persona que conozca de un pato en la necesidad de una pierna ortop&eacute;dica pueda descargarla de forma gratuita.&nbsp;</p>\r\n\r\n<p style="text-align:center">Molly</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/14-protesis-576x1024.jpg" style="height:889px; width:500px" /></p>\r\n\r\n<p>Cuando Molly fue atacada por un perro poco despu&eacute;s del hurac&aacute;n Katrina, muchos veterinarios pensaron que su vida hab&iacute;a terminado; su pata delantera estaba destrozada e infectada, y parec&iacute;a que la &uacute;nica soluci&oacute;n humana era la eutanasia. Pero cuando el cirujano Rustin Moore vio c&oacute;mo el pony era tan cuidadoso con su lesi&oacute;n, decidi&oacute; darle una segunda oportunidad. Se amput&oacute; su pierna y se le dio una pr&oacute;tesis. La dulce yegua obstinada se convirti&oacute; en un s&iacute;mbolo de esperanza en Nueva Orleans, y ella comenz&oacute; a viajar a los hospitales, hogares de ancianos y centros de rehabilitaci&oacute;n para mostrar a otros que con la actitud correcta, puedes superar casi cualquier cosa.</p>\r\n\r\n<p style="text-align:center">Chris P. Bacon<img alt="" src="/kcfinder/upload/images/13-protesis.jpg" style="height:308px; width:500px" /></p>\r\n\r\n<p>Chris P. naci&oacute; sin patas traseras, por lo que su due&ntilde;o (y veterinario), Len Lucero, hicieron para el cerdito su propio conjunto de ruedas de juguetes Kinex. Un v&iacute;deo de YouTube de Chris usando su &ldquo;silla de ruedas&rdquo;, lo convirti&oacute; en una estrella de forma r&aacute;pida, y ahora, &eacute;l visita hospitales de ni&ntilde;os, dado que muchos de los ni&ntilde;os tambi&eacute;n est&aacute;n en sillas de ruedas. Ver al Sr. Tocino en las ruedas hace que se sientan menos solos y les da la inspiraci&oacute;n para nunca darse por vencido.</p>\r\n\r\n<p style="text-align:center">Nakio</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12-protesis%281%29.jpg" style="height:282px; width:500px" /></p>\r\n\r\n<p>Nakio era solo un cachorro cuando fue encontrado abandonado en un s&oacute;tano durante un brutal invierno en Nebraska. Su cola y las cuatro patas se congelaron en un charco de hielo, y &eacute;l estaba sufriendo una serie de otros problemas de salud. Una vez que fue rescatado, las cuatro de sus piernas, parte de la cola y la nariz tuvo que ser amputada debido a la congelaci&oacute;n. Su nuevo due&ntilde;o, asistente en medicina veterinaria, Christie Pace, junt&oacute; el dinero suficiente para conseguir patas traseras de pr&oacute;tesis de Orthopets, pero a&uacute;n ten&iacute;a algunos problemas para moverse. Cuando Orthopets escuch&oacute; su historia, cubrieron el costo de equipar con &eacute;l las otras dos piernas, y ahora, Nakio pueden comportarse como cualquier otro perro.</p>\r\n\r\n<p style="text-align:center">Emma</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/11-protesis.jpg" style="height:347px; width:500px" /></p>\r\n\r\n<p>La pata trasera derecha de Emma fue amputada poco despu&eacute;s de su nacimiento debido a una deformidad. Un equipo veterinario desarroll&oacute; una pierna ortop&eacute;dica para ella cuando era un potrillo, y ahora, el peque&ntilde;o burro puede correr y patear al igual que cualquiera de sus compa&ntilde;eros. Mejor a&uacute;n, el &eacute;xito de Emma ayuda a los veterinarios a aprenden a desarrollar extremidades artificiales m&aacute;s para los caballos y los burros de todas las formas y tama&ntilde;os, lo que buscan es que una lesi&oacute;n en la pierna mala no signifique necesariamente el final de sus vidas.</p>\r\n\r\n<p style="text-align:center">Prado del becerro</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/10-protesis.jpg" style="height:374px; width:500px" /></p>\r\n\r\n<p>Prado fue encontrado por Nancy Dickenson en el &nbsp;pasto de un vecino con congelaci&oacute;n severa en las piernas y las orejas traseras. Nancy compr&oacute; el becerro y gast&oacute; miles de d&oacute;lares para dar patas traseras prot&eacute;sicas. El veterinario del estado de Colorado Dr. Robert Callan nunca hab&iacute;a o&iacute;do hablar de una vaca o ternero que estuviera equipado con miembros artificiales; la mayor&iacute;a de ellos son criados para la alimentaci&oacute;n, y los costos de pr&oacute;tesis de piernas no vale la pena el precio. Para su suerte, Prado nunca va a terminar en un plato; su nueva familia la considera su beb&eacute;.</p>\r\n\r\n<p style="text-align:center">Septimus</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/9-protesis.jpg" style="height:325px; width:500px" /></p>\r\n\r\n<p>Septimus estaba hibernando tan profundamente, que no se dio cuenta que afuera las ratas ro&iacute;an sus patas delanteras. Cuando Darren Strand encontr&oacute; al peque&ntilde;o bajo su porche, lo llev&oacute; al veterinario. Lo que quedaba de piernas de Septimus estaban infestadas de gusanos, y Darren y su hija se enfrentaron a dos opciones: la amputaci&oacute;n o la eutanasia. La vida de 23 a&ntilde;os de edad de la tortuga fue salvada por una operaci&oacute;n que une las ruedas a su extremo delantero.</p>\r\n\r\n<p style="text-align:center">Belleza</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/8-protesis.jpg" style="height:323px; width:500px" /></p>\r\n\r\n<p>Belleza fue rescatado cerca de la muerte por disparos de cazadores furtivos. La mitad superior de su pico se hab&iacute;a ido, dej&aacute;ndola incapaz de comer, beber o limpiarse a s&iacute; misma. Su salvador, Jane Fink Cantwell, cont&oacute; con la ayuda de Kinetic, Grupo de Ingenier&iacute;a para la construcci&oacute;n de un pico impreso en 3-D para el &aacute;guila. Despu&eacute;s de algunos intentos de conseguir la pr&oacute;tesis para adaptarse, Belleza finalmente fue capaz de comportarse como un &aacute;guila normal.</p>\r\n\r\n<p style="text-align:center">Fuji</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/7-protesis.jpg" style="height:339px; width:500px" /></p>\r\n\r\n<p>Fuji ten&iacute;a una enfermedad misteriosa que result&oacute; en la amputaci&oacute;n de una buena parte de su cola. Mientras que ella todav&iacute;a pod&iacute;a nadar, sus cuidadores en Jap&oacute;n sab&iacute;an que ella tendr&iacute;a una vida m&aacute;s plena si pod&iacute;a tener una cola &ldquo;normal&rdquo; al igual que los otros delfines. Un veterinario solicit&oacute; la ayuda de Bridgestone Corp., y pronto, a los treinta y cuatro a&ntilde;os de edad, ten&iacute;a una cola completa. Fuji s&oacute;lo utiliza la aleta durante unos veinte minutos por d&iacute;a por razones pr&aacute;cticas y de seguridad, pero es un delf&iacute;n mucho m&aacute;s feliz ahora.</p>\r\n\r\n<p style="text-align:center">La llama tr&iacute;pode</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/6-protesis.jpg" style="height:393px; width:500px" /></p>\r\n\r\n<p>Sherry Hughes y Marc Campo vieron por primera vez esta llama tr&iacute;pode tratando de moverse en tres patas cerca de su rancho en Denver. Su pata trasera estaba terriblemente herido y tuvo que ser amputada. Los dos tomaron a la llama en su cuidado, y pronto se junt&oacute; el dinero suficiente para equiparla con una pierna ortop&eacute;dica de Orthopets. Ahora, Tr&iacute;pode sale con todas las otras llamas y alpacas en el rancho muy feliz.</p>\r\n\r\n<p style="text-align:center">Yu Chan</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/5-protesis.jpg" style="height:351px; width:500px" /></p>\r\n\r\n<p>Para la mayor&iacute;a de los animales, enredarse en las redes de pesca es una sentencia de muerte, pero para Yu Chan, le salv&oacute; la vida. Ella fue retirada del mar y descubri&oacute; que faltaba la mitad una aleta y un tercio de la otra debido a lo que parec&iacute;a ser un ataque de tibur&oacute;n. La tortuga pas&oacute; por muchos pares de aletas de pr&oacute;tesis antes de ser equipado con un chaleco c&oacute;modo creado por Kawamura Gishi. Ella ahora nada feliz en el Suma Aqualife Park en Jap&oacute;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Antes de sacrificar a nuestros peludos o no peludos amigos piensa en otras opciones, siempre puedes recurrir a un poco de ayuda.&nbsp;</p>\r\n', 'post-1454627130.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/NssxanM0Ei0" frameborder="0" allowfullscreen></iframe>', '', '2016-02-03', '2016-02-03 14:18:51', 0, 0, 90, 1),
(93, 2, '¿Sabías-que-tener-el-trasero-grande-es-más-que-saludable?', '¿Sabías que tener el trasero grande es más que saludable?', '', '<p>&iquest;Tienes el trasero grande o conoces a alguien que lo tenga? Pues traigo buenas noticias para las chicas que tengan dicha caracter&iacute;stica.&nbsp;</p>\r\n\r\n<p>Un estudio de la Universidad de Oxford ha revelado que unas nalgas grandes son indicadores de resistencia a las enfermedades cr&oacute;nicas.&nbsp;</p>\r\n\r\n<p>Todo esto tiene una explicaci&oacute;n. Es el nivel de colesterol que tienen las mujeres con traseros m&aacute;s grandes de lo normal, adem&aacute;s de la mayor facilidad con la que su metabolismo asimila el az&uacute;car y produce hormonas. Por ello, tienen menos posibilidad de sufrir de diabetes y problemas de coraz&oacute;n.</p>\r\n\r\n<p>Entre m&aacute;s grande el trasero, m&aacute;s grande la necesidad de contar con un exceso de &aacute;cidos grasos omega 3, los cuales han demostrado ser catalizarones en el desarrollo del cerebro. Pero espera, hay algo m&aacute;s, los hijos de estas mujeres son intelectualmente superiores en comparaci&oacute;n a los ni&ntilde;os con madres con traseros peque&ntilde;os.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/enhanced-30201-1420056031-1.png" style="height:367px; width:500px" /></p>\r\n\r\n<p>Claramente no entran en la lista los traseros operados, solo tienen la suerte de tener hijos intelectuales y no tener problemas de coraz&oacute;n o diabetes las mujeres con traseros verdaderamente grandes.</p>\r\n', 'post-1454628557.jpeg', '', '', '', '2016-02-03', '2016-02-03 14:42:38', 0, 0, 91, 1),
(94, 1, 'El-niño-que-vive-encadenado', 'El niño que vive encadenado', '', '<p>Pensar&aacute;s que en pleno siglo XXI es imposible que un ni&ntilde;o est&eacute; encadenado, y seguramente te preguntes d&oacute;nde est&aacute;n los Derechos Humanos Universales, pero como siempre, todo tiene una explicaci&oacute;n.&nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/2013-11-28T085855Z_1066325973_GM1E9BS1B0Z01_RTRMADP_3_CHINA.jpg" style="height:334px; width:500px" /></p>\r\n\r\n<p>Estas im&aacute;genes tan crueles han sido capturadas por el fot&oacute;grafo William Hong, que ha captado a He Zili, un ni&ntilde;o chino de once a&ntilde;os que vive encadenado. El motivo es que el chico sufre un trastorno mental desde que se golpe&oacute; la cabeza cuando tan solo ten&iacute;a un a&ntilde;o.</p>\r\n\r\n<p>El problema es que el motivo de su atadora se debe a la pobreza de su familia. Los padres afirman que no tienen dinero para tratar al ni&ntilde;o y reducir su agresividad, y por ello, no tienen otra opci&oacute;n que encadenarlo.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/2013-11-28T085613Z_1300772897_GM1E9BS1ARI01_RTRMADP_3_CHINA.jpg" style="height:334px; width:500px" /></p>\r\n\r\n<p>Esto no solo pasa en China. En Indonesia hay miles de personas con el mismo trastorno que el peque&ntilde;o He Zili, y por ello tienen que vivir en unas condiciones infrahumanas.</p>\r\n', 'post-1454632484.jpeg', '', '', '', '2016-02-03', '2016-02-03 15:48:05', 0, 0, 92, 1),
(95, 6, '9-trucos-de-Google', '9 trucos de Google', '', '<p>Google es el buscador m&aacute;s importante del mundo, y seguro que lo usas cientos de veces al d&iacute;a. &iquest;Pero conoces sus secretos?&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. Si escribes &quot;do a barrel roll&quot; la pantalla dar&aacute; un giro de 360&ordm;.</p>\r\n\r\n<p>2. Si tecleas &quot;pac-man&quot; en el buscador, se te abrir&aacute; una ventana del juego.</p>\r\n\r\n<p>3. Tambi&eacute;n puedes buscar &quot;google guitar&quot; y tocar tus canciones favoritas. Si no se te ocurre nada, Google te dar&aacute; las notas de algunas canciones.&nbsp;</p>\r\n\r\n<p>4. Si escribes &quot;the answer to life the universe and everything&quot;, Google te contestar&aacute; a la gran pregunta con el n&uacute;mero 42. &nbsp;Esta respuesta se debe a&nbsp;<em>&quot;Gu&iacute;a del autoestopista gal&aacute;ctico&quot;</em>&nbsp;de Douglas Adams.</p>\r\n\r\n<p>5. Ahora prueba con &quot;Askew&quot;. A ver qu&eacute; pasa.&nbsp;</p>\r\n\r\n<p>6. Si quieres jugar con la gravedad de tu ordenador puedes teclear&nbsp;&quot;Google Gravity&quot;&nbsp;y todo el buscador caer&aacute; por su propio peso.&nbsp;</p>\r\n\r\n<p>7. Con &quot;Zerg rush&quot; desatar&aacute;s un ataque pr&aacute;cticamente sin remedio a tus b&uacute;squedas. Las oes de Google destruir&aacute;n el texto al homenaje del famoso juego de estrategia &quot;Starcraft&quot;.</p>\r\n\r\n<p>8. Aqu&iacute; tienes otro juego m&aacute;s: &quot;Atari breakout&quot;, solo lo tienes que poner en el buscador y clicar en las im&aacute;genes.&nbsp;</p>\r\n\r\n<p>9. Y lo mejor para el final. Para los cin&eacute;filos est&aacute; &quot;Star Wars&quot;, el homenaje creado a la pel&iacute;cula. Pon en el buscador &quot;hace mucho tiempo en una galaxia muy, muy lejana&quot;</p>\r\n\r\n<p>Y si te quedas sin Internet, solo con pulsar la barra espaciadora podr&aacute;s jugar con el dinosaurio saltar&iacute;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'post-1454633900.jpeg', '', '', '', '2016-02-03', '2016-02-03 16:11:41', 0, 0, 93, 1),
(96, 3, 'Así-serían-estas-películas-de-Disney-si-las-hubiese-dirigido-Tim-Burton', 'Así serían estas películas de Disney si las hubiese dirigido Tim Burton', '', '<p>Creo que de peque&ntilde;os todos ve&iacute;amos pel&iacute;culas de Disney,y algunos lo seguimos haciendo. Adem&aacute;s, creo que a todos los cin&eacute;filos nos encanta Tim Burton, su est&eacute;tica, su forma de narrar las historias... Es todo fant&aacute;stico. Ahora&nbsp;dime, &iquest;qu&eacute; pasar&iacute;a si las pel&iacute;culas que viste de peque&ntilde;o/a tuvieran ese rollo macabro de Tim Burton? Aqu&iacute; te dejo una lista de algunas pel&iacute;culas:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/if-tim-burton-directed-disney-movies__700-1.jpg" style="height:666px; width:500px" /><img alt="" src="/kcfinder/upload/images/if-tim-burton-directed-disney-movies-2__700%281%29.jpg" style="height:666px; width:500px" /><img alt="" src="/kcfinder/upload/images/if-tim-burton-directed-disney-movies-3__700.jpg" style="height:666px; width:500px" /><img alt="" src="/kcfinder/upload/images/if-tim-burton-directed-disney-movies-4__700.jpg" style="height:666px; width:500px" /><img alt="" src="/kcfinder/upload/images/if-tim-burton-directed-disney-movies-5__700.jpg" style="height:666px; width:500px" /><img alt="" src="/kcfinder/upload/images/if-tim-burton-directed-disney-movies-6__700.jpg" style="height:666px; width:500px" /><img alt="" src="/kcfinder/upload/images/if-tim-burton-directed-disney-movies-7__700.jpg" style="height:666px; width:500px" /><img alt="" src="/kcfinder/upload/images/if-tim-burton-directed-disney-movies-8__700.jpg" style="height:666px; width:500px" /><img alt="" src="/kcfinder/upload/images/if-tim-burton-directed-disney-movies-9__700.jpg" style="height:666px; width:500px" /><img alt="" src="/kcfinder/upload/images/if-tim-burton-directed-disney-movies-10__700.jpg" style="height:666px; width:500px" /><img alt="" src="/kcfinder/upload/images/Burtonized-Princesses-Cinderella.jpg" style="height:681px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_n4txclYfC71tava2vo1_500.jpg" style="height:714px; width:500px" /></p>\r\n\r\n<p style="text-align:center">&iexcl;Sin duda las ver&iacute;a todas! &iquest;Y t&uacute;, piensas que estar&iacute;an mejor si las hubiese dirigido Tim Burton?</p>\r\n', 'post-1454718741.jpeg', '', '', '', '2016-02-04', '2016-02-04 15:44:51', 0, 0, 94, 1),
(97, 3, 'Si-te-gusta-la-novela-negra-este-libro-es-perfecto-para-ti', 'Si te gusta la novela negra este libro es perfecto para ti', '', '<p>Ilan es un joven que no ha podido superar la muerte de sus padres en extra&ntilde;as condiciones. Un d&iacute;a llega Chlo&eacute;, su ex novia, que convence al protagonista a que se una a un juego de b&uacute;squeda de tesoros llamado&nbsp;<em>Paranoia</em>. El representante del juego promete a los 8 jugadores, que son encerrados en un psiqui&aacute;trico en medio de la nada, que vivir&aacute;n sus mayores miedos. La historia va genial hasta que los concursantes empiezan a desaparecer uno a uno.</p>\r\n\r\n<p>Piensas que hay un/a loco/a en la novela, pero la &uacute;nica persona que se va a volver loca eres t&uacute;.</p>\r\n\r\n<p>Me parece un libro muy visual, el escritor hace unas descripciones perfect&iacute;simas, tan perfectas que te hace sentir que est&aacute;s dentro del juego en el psiqui&aacute;trico. Es un libro bastante grueso pero, de verdad, se lee en nada. Hay libros en los que tu mente se pierde mientras est&aacute;s ley&eacute;ndolo, pero, &iexcl;dios m&iacute;o! esta novela es genial, te atrapa desde la primera palabra hasta la &uacute;ltima, y adem&aacute;s cuando lo acabas tienes ganas de m&aacute;s y m&aacute;s.&nbsp;</p>\r\n\r\n<p>Si no eres un/a amante de la lectura porque no sabes qu&eacute; tipo de libros te gustan y&nbsp;quieres empezar con alguna novela, por favor, &eacute;chale un vistazo a&nbsp;<em>Paranoia</em>, no te decepcionar&aacute;.</p>\r\n\r\n<p>&iexcl;El final es sorprendente!</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'post-1454720560.jpeg', '', '', '', '2016-02-04', '2016-02-04 16:16:01', 0, 0, 95, 1),
(99, 6, 'Situaciones-que-solo-gente-con-mascotas-entenderá', 'Situaciones que solo entenderán quienes tengan mascotas', '', '<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12662443_10153436149600735_486603795724753180_n.jpg" style="height:341px; width:500px" /><img alt="" src="/kcfinder/upload/images/12645010_10153436149695735_4943359894805561317_n.jpg" style="height:348px; width:500px" /><img alt="" src="/kcfinder/upload/images/1173744_10153436149595735_801491328604691511_n.jpg" style="height:454px; width:500px" /><img alt="" src="/kcfinder/upload/images/12417636_10153436149685735_7467080714340136824_n.jpg" style="height:456px; width:500px" /><img alt="" src="/kcfinder/upload/images/12645020_10153436149725735_8295361912883845233_n.jpg" style="height:413px; width:500px" /><img alt="" src="/kcfinder/upload/images/12651273_10153436148910735_3653279100195598064_n.jpg" style="height:359px; width:500px" /><img alt="" src="/kcfinder/upload/images/12654574_10153436149650735_7162270386849697985_n.jpg" style="height:336px; width:500px" /><img alt="" src="/kcfinder/upload/images/12669718_10153436149510735_1766783099739986693_n.jpg" style="height:410px; width:500px" /><img alt="" src="/kcfinder/upload/images/12687871_10153436148705735_1990977277727303296_n.jpg" style="height:444px; width:500px" /></p>\r\n', 'post-1454860546.jpeg', '', '', '', '2016-02-06', '2016-02-06 07:07:11', 0, 0, 97, 1),
(100, 1, 'Leonardo-DiCaprio-nos-cuenta-su-secreto', 'Leonardo DiCaprio nos revela su secreto', '', '<h1>Leonardo DiCaprio se sincera acerca de una &quot;p&iacute;ldora milagrosa&quot; que estimula el cerebro y los m&eacute;dicos denominan &quot;Viagra para el cerebro.&quot;</h1>\r\n\r\n<p>Revelamos la verdad detr&aacute;s de una p&iacute;ldora revolucionaria que conmociona a muchos expertos. Estudios han revelado que aumenta la capacidad mental en hasta un 89.2%, agudiza tu mente y dispara tus niveles de energ&iacute;a. Al ser tan abrumadoras las evidencias y la atenci&oacute;n de los medios de comunicaci&oacute;n, la pregunta no es si la p&iacute;ldora funciona, la pregunta es si debe ser legal.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cuando le preguntaron acerca de su sorprendente energ&iacute;a y concentraci&oacute;n, Leonardo DiCaprio dej&oacute; sin palabras al entrevistador. Si bien se lo conoci&oacute; siempre como un actor aficionado a aumentar sus capacidades mentales, admiti&oacute; que su &quot;insuperable &eacute;tica laboral y creatividad&quot; se apoyaba en una p&iacute;ldora que estimula el cerebro. &quot;No s&oacute;lo me brinda m&aacute;s energ&iacute;a y claridad mental; literalmente, me pone en sinton&iacute;a en cualquier momento sin hacer que me estrese o irrite. No necesitas cambiar tu rutina diaria o pasar incontables horas trabajando. Simplemente aclara tu mente y te permite acceder a la inteligencia que no supiste nunca que ten&iacute;as. Llevo much&iacute;simo tiempo en esta industria y esto me ha ayudado a concentrarme y rendir al m&aacute;ximo a lo largo de los a&ntilde;os. Tomaba esto mientras filmaba The Wolf of Wall Street, as&iacute; como durante The Revenant, de estreno inminente. Gracias a estas p&iacute;ldoras, ganar&eacute; un Oscar por mi actuaci&oacute;n en The Revenant. Lo escuchaste primero aqu&iacute;&quot;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>El Mensajero de la Paz de Naciones Unidas est&aacute; hablando de una p&iacute;ldora que estimula el cerebro y que actualmente est&aacute; conmocionando a la industria m&eacute;dica. Se llama &quot;BrainPlus IQ&quot;&nbsp;y desde entonces DiCaprio ha sido criticado por divulgar el llamado &quot;Viagra para el cerebro&quot; por parte de m&eacute;dicos que piensan que las personas no deber&iacute;an conocer este atajo. Sin embargo, el actor de Titanic respondi&oacute; diciendo que las personas que m&aacute;s podr&iacute;an beneficiarse con este tipo de informaci&oacute;n no son s&oacute;lo las de la &eacute;lite social, sino personas como t&uacute; o como yo. Entonces, &iquest;por qu&eacute; los m&eacute;dicos y las compa&ntilde;&iacute;as grandes no quieren que sepas de esto? Porque los resultados son m&aacute;s que suficientes para estar a la altura de los superh&eacute;roes m&aacute;s recientes... y lo &uacute;ltimo que desean las compa&ntilde;&iacute;as grandes es que haya m&aacute;s personas que puedan tomar el control de sus propias vidas con resultados tan excelentes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pronto&nbsp;BrainPlus IQ&nbsp;fue conocido como el &quot;m&aacute;s poderoso truco de desarrollo personal del planeta&quot;. Poco tiempo despu&eacute;s todo el mundo, desde concursantes de programas de preguntas y respuestas hasta estudiantes universitarios, estaban tomando la p&iacute;ldora para&nbsp;<strong>aumentar su coeficiente intelectual en un 47%, triplicar su salario y alcanzar un rendimiento m&aacute;ximo</strong>&nbsp;en poco tiempo.&nbsp;BrainPlus IQ, sin efectos secundarios registrados en ninguna prueba, fue puesto pronto en la mira de varias compa&ntilde;&iacute;as farmac&eacute;uticas grandes que afirmaron que brindaba a las personas una ventaja injusta sobre cualquier persona que desconoc&iacute;a su existencia. Finalmente, la p&iacute;ldora fue prohibida en programas como Jeopardy! y en las mejores universidades como Cambridge antes de que se interrumpiera la fabricaci&oacute;n de las &quot;p&iacute;ldoras de Limitless&quot;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><strong>El consumo de las p&iacute;ldoras BrainPlus IQ se generaliz&oacute; luego de que Limitless se convirtiera en un &eacute;xito de taquilla y fueran mencionadas p&uacute;blicamente como su inspiraci&oacute;n.<img alt="" src="/kcfinder/upload/images/twitter-opt.jpg" style="height:205px; width:500px" /></strong></p>\r\n\r\n<p style="text-align:center"><strong>&quot;&iexcl;Gracias a todos por hacernos la pel&iacute;cula N&ordm;1 de ayer! &iexcl;Y gracias a BrainPlus IQ por la inspiraci&oacute;n!</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tras varios a&ntilde;os y m&aacute;s de 2,000 pruebas realizadas en la Unidad de Pruebas Cl&iacute;nicas de Nottingham (NCTU, por sus siglas en ingl&eacute;s), las p&iacute;ldoras BrainPlus IQ est&aacute;n siendo fabricadas nuevamente, e informes recientes demuestran que las p&iacute;ldoras mejoradas son m&aacute;s potentes que nunca. &iquest;El secreto de la f&oacute;rmula mejorada? Huperzina A.</p>\r\n\r\n<p>La huperzina A es elogiada desde hace siglos por su capacidad de rejuvenecer y curar la mente. Entonces, &iquest;qu&eacute; tiene de especial ahora y por qu&eacute; no puedes simplemente tomarla sola? Pues bien, combinarla con los ingredientes ya potentes de <strong>BrainPlus IQ</strong>&nbsp;es lo que te da una claridad mental superior a la de un monje zen. Dando lugar a un aumento del 60% de &quot;materia gris&quot; en el cerebro,&nbsp;<strong>se mejoran el control muscular, la visi&oacute;n y la audici&oacute;n, la memoria, las emociones, el habla, la toma de decisiones y el autocontrol</strong>. En pocas palabras, te convertir&aacute;s en la versi&oacute;n perfecta de ti mismo. Muchas personas pensaban que faltaban muchos a&ntilde;os para algo como esto, pero el futuro lleg&oacute;.</p>\r\n\r\n<p>Una gran cantidad de famosos han confirmado usar la &quot;p&iacute;ldora de Limitless&quot; para estimular su rendimiento mental y mantener el ritmo de su agenda fren&eacute;tica de constantes apariciones publicitarias y entrevistas, todo mientras viven una vida social y profesional perfectamente equilibrada. Brad Pitt, George Clooney, Quentin Tarantino y Daniel Craig son algunos de los mejores artistas de Hollywood de quienes se ha informado que consumen&nbsp;<strong>BrainPlus IQ&nbsp;</strong>para producir sus mejores actuaciones y guiones.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/brain-15-opt.jpg" style="height:348px; width:500px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>(v&iacute;a: <a href="http://cnnespanol.cnn.com/category/espana/" target="_blank">CNN)</a></p>\r\n', 'post-1454862257.jpeg', '', '', '', '2016-02-06', '2016-02-06 07:37:38', 0, 0, 98, 1),
(101, 4, '¿Te-gusta-la-lasaña?-¡Aquí-tienes-una-receta-muy-saludable!', '¿Te gusta la lasaña? ¡Aquí tienes una receta muy saludable!', '', '<p style="text-align:center">Ricotta de almendras:</p>\r\n\r\n<p style="text-align:center">1 taza de almendras suaves</p>\r\n\r\n<p style="text-align:center">1/3 vaso de agua</p>\r\n\r\n<p style="text-align:center">2 cucharas de jugo de lim&oacute;n</p>\r\n\r\n<p style="text-align:center">1 cuchara de aceite de oliva</p>\r\n\r\n<p style="text-align:center">1/2 cuchara de sal</p>\r\n\r\n<p style="text-align:center">&frac14; de ajo en polvo</p>\r\n\r\n<p style="text-align:center">&frac14; cucharadita de pimienta blanca</p>\r\n\r\n<p style="text-align:center">1 cucharada de albahaca finamente picada</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">Salsa de tomate:</p>\r\n\r\n<p style="text-align:center">&frac12; taza de cebolla finamente picada</p>\r\n\r\n<p style="text-align:center">1 diente de ajo picado</p>\r\n\r\n<p style="text-align:center">1 cucharadita de or&eacute;gano</p>\r\n\r\n<p style="text-align:center">2 cucharas de tomate frito</p>\r\n\r\n<p style="text-align:center">1 cucharadita de sal</p>\r\n\r\n<p style="text-align:center">1 cucharadita de pimienta molida</p>\r\n\r\n<p style="text-align:center">2 cucharadas de albahaca finamente picada</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">Lasa&ntilde;a:</p>\r\n\r\n<p style="text-align:center">8 placas de lasa&ntilde;a</p>\r\n\r\n<p style="text-align:center">4 tazas de espinaca</p>\r\n\r\n<p style="text-align:center">1 calabac&iacute;n grande amarillo (o 2 peque&ntilde;os)</p>\r\n\r\n<p style="text-align:center">1 cucharadita de aceite de oliva</p>\r\n\r\n<p style="text-align:center">&frac14; cucharadita de nuez moscada</p>\r\n\r\n<p style="text-align:center">Sal y pimienta al gusto.</p>\r\n\r\n<p>Preparaci&oacute;n:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Se combinan en una licuadora todos los ingredientes de Ricotta de almendras excepto la albahaca.</p>\r\n	</li>\r\n	<li>\r\n	<p>Una vez que la mezcla est&eacute; suave, mezcla la albahaca picada en la mezcla de almendras con una cuchara, luego coloca una doble capa de gasa sobre un taz&oacute;n grande y vierte la mezcla de almendras en la gasa.</p>\r\n	</li>\r\n	<li>\r\n	<p>Toma el exceso de los extremos de la gasa y &aacute;tala a una cuchara de madera que puedas poner en la parte superior del recipiente de la mezcla, no deber&iacute;a estar tocando el fondo del recipiente.</p>\r\n	</li>\r\n	<li>\r\n	<p>Espera 24 horas. Despu&eacute;s del tiempo transcurrido quita la gasa y coloca la mezcla en un plato limpio.</p>\r\n	</li>\r\n	<li>\r\n	<p>Para hacer la salsa de tomate, calienta una sart&eacute;n y fr&iacute;e la cebolla durante 2 minutos con el aceite de oliva.</p>\r\n	</li>\r\n	<li>\r\n	<p>A continuaci&oacute;n, a&ntilde;ade el ajo picado y el or&eacute;gano, y espera 1 minuto.</p>\r\n	</li>\r\n	<li>\r\n	<p>Agrega el tomate frito hasta que el ajo y la cebolla est&eacute;n bien cubiertos. A continuaci&oacute;n, a&ntilde;ade la sal y la pimienta molida. Cubre la sart&eacute;n con una tapa, y cocina a fuego lento durante 20 minutos.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mientras que la salsa est&eacute; hirviendo precalienta el horno a 160&ordm; C.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hierve los fideos en agua con sal durante unos 5 minutos. Escurre los fideos en una toalla h&uacute;meda para evitar que se peguen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Finalmente corta el calabac&iacute;n en rebanadas con una mandolina.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pon otra sart&eacute;n a fuego medio y echa una cucharadita de aceite de oliva y a&ntilde;ade las espinacas y el calabac&iacute;n junto con la nuez moscada, la sal y la pimienta molida. D&eacute;jalo unos 4 minutos. Habr&aacute; un poco de exceso de agua por las verduras, as&iacute; que qu&iacute;tala de la sart&eacute;n antes de ponerlo en los rollos de lasa&ntilde;a.</p>\r\n	</li>\r\n	<li>\r\n	<p>Para montar los rollos toma una cucharadita de ricotta de almendras y exti&eacute;ndela por un lado de la lasa&ntilde;a hasta los bordes. Luego pon una capa de espinacas y calabac&iacute;n en la parte superior. Despu&eacute;s enr&oacute;llalos.</p>\r\n	</li>\r\n	<li>\r\n	<p>Vierte la mitad de la salsa de tomate en el fondo de un plato de vidrio para hornear. Coloca los rollos de lasa&ntilde;a y vierte la salsa restante sobre cada fila.</p>\r\n	</li>\r\n	<li>\r\n	<p>Cubre con papel aluminio y hornea durante 20 minutos. S&iacute;rvelo inmediatamente.</p>\r\n	</li>\r\n</ol>\r\n', 'post-1454863017.jpeg', '', '', '', '2016-02-06', '2016-02-06 07:45:35', 0, 0, 99, 1),
(102, 4, '¿Eres-un/a-amante-de-los-bizcochos?-¡Échale-un-vistazo-a-esta-delicia!', '¿Eres un/a amante de los bizcochos? ¡Échale un vistazo a esta delicia!', '', '<p>1 vaso de leche (vegetal)</p>\r\n\r\n<p>&frac12; vaso de az&uacute;car</p>\r\n\r\n<p>&frac12; vaso de aceita (de oliva preferentemente)</p>\r\n\r\n<p>Pl&aacute;tanos (de 1 a 3)</p>\r\n\r\n<p>1 sobre de levadura</p>\r\n\r\n<p>Az&uacute;car Glass (opcional)</p>\r\n\r\n<p>Cacao en polvo (al gusto)</p>\r\n\r\n<p>170 gr de harina</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mezcla el pl&aacute;tano con el az&uacute;car. Despu&eacute;s a&ntilde;ades medio vaso de aceite y uno entero de&nbsp;&nbsp;leche vegetal, y por &uacute;ltimo, el cacao.</p>\r\n\r\n<p>En un bol diferente tamizas la harina con levadura. Remueves y juntas todo en un mismo bol, hasta que quede lo m&aacute;s homog&eacute;neo posible.</p>\r\n\r\n<p>Lo metes en el horno a 180&ordm; hasta que est&eacute; bien hecho (unos 15 minutos).</p>\r\n\r\n<p>Por &uacute;ltimo, lo dejas enfriar y luego lo metes en la nevera.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'post-1454863229.jpeg', '', '', '', '2016-02-06', '2016-02-06 07:53:50', 0, 0, 100, 1),
(103, 1, 'La-mejor-manera-para-reducir-la-contaminación', 'La mejor manera para reducir la contaminación', '', '<p>Ya estar&aacute;s al tanto de que nuestro planeta se muere poco a poco gracias a la contaminaci&oacute;n que producimos los seres humanos, pues aqu&iacute; os damos la soluci&oacute;n. Mira el v&iacute;deo hasta el final:</p>\r\n', 'post-1454974796.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/qrBweqEp0vo" frameborder="0" allowfullscreen></iframe>', '', '2016-02-07', '2016-02-07 14:53:17', 0, 0, 101, 1),
(104, 3, '¿A-que-no-sabes-cuál-es-el-origen-de-Star-Wars?', '¿A que no sabes cuál es el origen de Star Wars?', '', '<p>A muchos cin&eacute;filos nos encanta la famosa saga de <em>Star Wars</em>,&nbsp;<em>La Guerra de las Galaxias</em>, pero seguro que casi nadie saber cu&aacute;l es el origen de estas fant&aacute;sticas pel&iacute;culas. Academia Play nos explica detalladamente c&oacute;mo ha sido creada esta obra de arte.&nbsp;</p>\r\n', 'post-1454983240.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/Rg6vU4dPYwo" frameborder="0" allowfullscreen></iframe>', '', '2016-02-07', '2016-02-07 17:14:01', 0, 0, 102, 1),
(105, 3, 'Capitán-América:-Civil-War-(2016)', 'Capitán América: Civil War (2016)', '', '<p>Todos hemos estado esperando la nueva de <em>Captain America</em>, y por fin tenemos el tr&aacute;iler definitivo, y lo m&aacute;s importante &iexcl;QUEDA POCO PARA SU ESTRENO!&nbsp;</p>\r\n\r\n<p><strong>Estreno en USA</strong>: 06/05/2016<br />\r\n<strong>Estreno en Espa&ntilde;a:</strong>&nbsp;29/04/2016</p>\r\n\r\n<p>Sinopsis:</p>\r\n\r\n<p>&ldquo;Captain America: Civil War&rdquo; de Marvel empieza donde lo dej&oacute; &quot;Los Vengadores: La Era de Ultr&oacute;n&quot; ya que Steve Rogers lidera el nuevo equipo de los Vengadores en su incesante tarea de proteger a la humanidad. Despu&eacute;s de que otro incidente internacional en el que se ven envueltos los Vengadores produzca da&ntilde;os colaterales, la presi&oacute;n pol&iacute;tica obliga a poner en marcha un sistema para depurar responsabilidades y un organismo rector que determine cu&aacute;ndo hay que recurrir a los servicios del equipo. El nuevo statu quo divide a los Vengadores mientras intentan proteger al mundo de un nuevo malvado.</p>\r\n', 'post-1455059802.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/4eck6rdMm3M" frameborder="0" allowfullscreen></iframe>', 'Civil War, Capitán América', '2016-02-08', '2016-02-08 14:30:03', 0, 0, 103, 1),
(106, 2, '¿Sabías-que-estos-famosos-tenían-un-secreto?', '¿Sabías que estos famosos tenían un secreto?', '', '<p>Johnny Depp: a los quince a&ntilde;os se refugi&oacute; en el alcohol y las drogas, y quiso convertirse en m&uacute;sico al dejar el instituto, todo esto ocurri&oacute; cuando se divorciaron sus padres.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Noticia-6459-johnny_depp_cumple_52_anos_1.jpg" style="height:263px; width:500px" /></p>\r\n\r\n<p>Angelina Jolie: cuando era ni&ntilde;a quer&iacute;a trabajar en una funeraria, por lo que estudi&oacute; embalsamamiento.&nbsp;&iquest;Os imagin&aacute;is a la bella actriz trabajando con cad&aacute;veres?</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/2015-11-25_12-11-17___9724.jpg" style="height:344px; width:500px" /></p>\r\n\r\n<p>Brad Pitt: lleva diez a&ntilde;os manteniendo relaciones homosexuales.</p>\r\n\r\n<p>Al menos es lo que asegura la revista estadounidense &ldquo;Star&rdquo;. Al parecer el actor paga por tener citas con hombres teniendo una mujer hermosa en casa (que tambi&eacute;n ha tenido relaciones l&eacute;sbicas.) Pero tranquilas, chicas, Brad es bisexual, o sea, que ten&eacute;is oportunidad para estar con &eacute;l.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Brad-Pitt.jpg" style="height:313px; width:500px" /></p>\r\n\r\n<p>Leonardo Dicaprio: su madre escogi&oacute; este nombre porque le dio una patada mientras contemplaba una obra de Leonardo Da Vinci.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/leonardo_dicaprio.jpg" style="height:281px; width:500px" /></p>\r\n\r\n<p>Anne Hathaway: se consideraba cat&oacute;lica hasta que su hermano sali&oacute; del armario, fue entonces cuando dej&oacute; de seguir a la iglesia.</p>\r\n\r\n<p>Ella quer&iacute;a hacerse monja, pero ha dejado la religi&oacute;n para apoyar a su hermano.</p>\r\n\r\n<p>&ldquo;La familia entera se convirti&oacute; al Episcopalianismo despu&eacute;s de que mi hermano saliera del atmario. &iquest;Por qu&eacute; deber&iacute;a apoyar una organizaci&oacute;n que tiene una visi&oacute;n limitada de mi hermano?&rdquo;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Anne-Hathaway_article_horizontal.jpeg" style="height:296px; width:500px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ryan Gosling: pudo haber sido el sexto Backstreet boy,</p>\r\n\r\n<p>pero lo rechaz&oacute; porque crey&oacute; que el grupo no iba a llegar a nada. Pero como sabemos, la mayor&iacute;a de nosotros se equivocaba.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Ryan-Gosling.jpg" style="height:294px; width:500px" /></p>\r\n\r\n<p>Paris Hilton se entretiene cazando ranas.</p>\r\n\r\n<p>Pero cuidado, antes de que los defensores de los animales salgan a protestar, quiero decir que ella no se los come, o sea, suelta todas las ranas que consigue atrapar ya que la cazadora es defensora de los derechos de los animales.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/paris-2.jpg" style="height:250px; width:500px" /></p>\r\n', 'post-1455060112.jpeg', '', '', '', '2016-02-08', '2016-02-08 14:35:13', 0, 0, 104, 1),
(107, 1, 'Leonardo-DiCaprio-sufrió-bullying-por-una-de-las-mejores-estrellas-de-Hollywood', 'Leonardo DiCaprio sufrió bullying por una de las mejores estrellas de Hollywood', '', '<p>.Nadie dijo que entrar en el mundo del cine fuese cosa f&aacute;cil, y mucho menos cuando eres apenas un adolescente prematuro con demasiadas ganas de resaltar. Si alguien sabe de esto es Leonardo DiCaprio, quien desde el principio de su carrera ha tenido que demostrar que en realidad es un gran actor.</p>\r\n\r\n<p>Aunque hoy DiCaprio sea una de las estrellas m&aacute;s importantes de la industria cinematogr&aacute;fica, hubo un tiempo en que incluso &eacute;l debi&oacute; soportar los maltratos y las antipat&iacute;as de otros grandes actores como Johnny Depp<strong>.</strong>&nbsp;Recientemente, durante el Festival Internacional de Cine de Santa B&aacute;rbara, Depp record&oacute; aquella &eacute;poca en la cual &eacute;l sol&iacute;a torturar a un jovenc&iacute;simo Leonardo.</p>\r\n\r\n<p>Johnny&nbsp;record&oacute; cuando debi&oacute; trabajar junto a DiCaprio en el set de&nbsp;<em>What&rsquo;s Eating Gilbert Grape</em>, cuando este ten&iacute;a apenas unos diecinueve a&ntilde;os de edad y era un gran fan&aacute;tico de los videojuegos y las computadoras.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/rs_560x389-151110131300-1024.Johnny-Depp-Leonardo-DiCaprio.ms.111015_copy.jpg" style="height:347px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">&ldquo;Fue una &eacute;poca dif&iacute;cil para mi, esa pel&iacute;cula, por alguna raz&oacute;n. No s&eacute; por qu&eacute;&rdquo;, record&oacute; Johnny, haciendo &eacute;nfasis en su trato hacia Leo. &ldquo;Yo lo torturaba. De verdad lo hac&iacute;a&rdquo;.</p>\r\n\r\n<p style="text-align: center;">&ldquo;&Eacute;l siempre estaba hablando sobre estos v&iacute;deojuegos, &iquest;sab&eacute;is? Les dije que era como una &eacute;poca muy oscura&rdquo;, se&ntilde;al&oacute;. &ldquo;&lsquo;No, Leo, no te dar&eacute; un poco&nbsp;de mi cigarro mientras te vuelves a esconder de tu madre&rsquo;&rdquo;.</p>\r\n\r\n<p>Sin embargo, Depp se reivindic&oacute; al asegurara que en realidad admira enormemente el trabajo y la dedicaci&oacute;n del actor de<em>&nbsp;The Revenant.</em></p>\r\n\r\n<p>&ldquo;Debo decir que la absoluta verdad es que yo respeto mucho a Leo&rdquo;, dijo Johnny. &ldquo;&Eacute;l trabaj&oacute; muy duro en esa pel&iacute;cula y pas&oacute; mucho tiempo investigando. &Eacute;l ven&iacute;a al set y estaba listo para trabajar y todo lo suyo estaba en orden&rdquo;.</p>\r\n', 'post-1455060738.jpeg', '', '', '', '2016-02-08', '2016-02-08 14:45:40', 0, 0, 105, 1),
(108, 1, 'La-nueva-entrega-de-Saw', 'La nueva entrega de Saw', '', '<p>&iquest;Eres un/a fan de los juegos del asesino m&aacute;s ingenioso de los &uacute;ltmos a&ntilde;os? Pues enhorabuena, Jigsaw (Puzzle) volver&aacute; a sacar otra pel&iacute;cula.</p>\r\n\r\n<p>La octava entrega de las sagas de &quot;terror&quot; m&aacute;s vistas de la historia se llamar&aacute; &quot;Saw: Legacy&quot;, pero todav&iacute;a no se sabe si se tratar&aacute; de una secuela al uso o de un reboot de la historia.</p>\r\n\r\n<p>Josh Stolberg y Peter Goldfinger van a ser los guionistas de esta pel&iacute;cula. James Wan tambi&eacute;n estar&aacute; en la nueva entrega, aunque parece que ejercer&aacute; como productor ejecutivo.</p>\r\n\r\n<p>Est&aacute; previsto que &quot;Saw: Legacy&quot; llegar&aacute; a los cines en el a&ntilde;o 2017, aunque no se sabe nada m&aacute;s todav&iacute;a.</p>\r\n\r\n<p>&iquest;Es o no es una gran noticia?</p>\r\n', 'post-1455154771.jpeg', '', '', '', '2016-02-09', '2016-02-09 16:52:52', 0, 0, 106, 1),
(109, 1, 'En-Londres-se-abre-un-supermercado-donde-todo-cuesta-30-céntimos', 'En Londres se abre un supermercado donde todo cuesta 30 céntimos', '', '<p>Seg&uacute;n ha explicado el empresario griego&nbsp;Stelios Haji-Ioannou, fundador del grupo, la decisi&oacute;n de entrar en el negocio de la alimentaci&oacute;n se debe a que todav&iacute;a hay&nbsp;un&nbsp;nicho de mercado en los supermercados de bajo coste como Aldi y Lidl.</p>\r\n\r\n<p>El eslogan elegido para su comunicaci&oacute;n es<strong><em>&nbsp;</em></strong><em><strong>No expensive brands. Just food honestly priced</strong></em><strong><em>&nbsp;</em></strong>(No marcas caras. S&oacute;lo comida a un precio justo).</p>\r\n\r\n<p>La primera tienda se ha abierto en la zona de&nbsp;<strong>Park Royal</strong>, un distrito al norte de Londres, emplazamiento que indica que el perfil de cliente que buscar easyFoodstore se compone de&nbsp;<strong>familias desfavorecidas</strong>&nbsp;de &eacute;sta y otras regiones.</p>\r\n\r\n<p><strong>El concepto se acerca m&aacute;s a un</strong>&nbsp;<strong>banco de alimentos</strong>&nbsp;que a un supermercado. &ldquo;Es la manera que tenemos de acercarnos a las poblaciones m&aacute;s desfavorecidas&rdquo;, explica<strong>&nbsp;</strong><strong>Stelios Haji-Ioannou</strong>.</p>\r\n\r\n<p>La tienda se dirige, por tanto, a los trabajadores con pocos recursos que no tienen acceso a los bancos de alimentos, pero que tampoco disponen de los medios para hacer sus compras en una tienda.</p>\r\n\r\n<p>Para obtener esos precios tan bajos,&nbsp;<strong>Easyfoodstore</strong>&nbsp;se surte en Euro Shopper, una central de compras holandesa que pertenece al grupo AMS,&nbsp;<strong>sociedad sin &aacute;nimo de lucro que opera en diez pa&iacute;ses europeos.</strong></p>\r\n\r\n<p><strong>(v&iacute;a: 20minutos)</strong></p>\r\n', 'post-1455155651.jpeg', '', '', '', '2016-02-09', '2016-02-09 17:07:32', 0, 0, 107, 1),
(110, 1, 'El-chat-de-Facebook-tiene-un-juego-oculto', 'El chat de Facebook tiene un juego oculto', '', '<h2>&nbsp;</h2>\r\n\r\n<h2>Lo &uacute;nico que debes hacer para activar el juego es abrir la conversaci&oacute;n con el amigo al que quieres retar y escribir &ldquo;@FBChees<strong>&nbsp;</strong>play&rdquo; y ver&aacute;s c&oacute;mo se despliega un tablero de ajedrez en la ventana.</h2>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Captura-de-pantalla-2016-02-09-a-las-9.40.00.png" style="height:484px; width:500px" /></p>\r\n\r\n<h2>Para jugarlo, debes escribir &ldquo;@FBChess play&rdquo; y, a continuaci&oacute;n, escribir la inicial de la pieza que deseas mover y la casilla a la que quieres que vaya.</h2>\r\n\r\n<h2><strong>La inicial de la pieza debe ser en ingl&eacute;s:</strong></h2>\r\n\r\n<ul>\r\n	<li><strong>K</strong>ing,&nbsp;el rey.</li>\r\n	<li><strong>Q</strong>ueen,&nbsp;la reina.</li>\r\n	<li><strong>B</strong>ishop,&nbsp;el alfil.</li>\r\n	<li>k<strong>N</strong>ight,&nbsp;el caballo&nbsp;(<em>usamos la N porque la K es del rey, claro</em>).</li>\r\n	<li><strong>R</strong>ook,&nbsp;la torre.</li>\r\n	<li><strong>P</strong>awn,&nbsp;el pe&oacute;n.</li>\r\n</ul>\r\n\r\n<h2>Si quieres mover a tu&nbsp;<strong>pe&oacute;n</strong>&nbsp;que est&aacute; en&nbsp;<strong>E2</strong>&nbsp;hacia la casilla&nbsp;<strong>E4</strong>, escribes:&nbsp;<strong>&ldquo;@FBChess PE4&rdquo;</strong></h2>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Chess_2564736b.jpg" style="height:312px; width:500px" /></p>\r\n\r\n<h2>Si, en alg&uacute;n momento, te asalta una duda, puedes escribir &ldquo;@FBChess Help&rdquo; y se desplegar&aacute; un listado con los comandos que necesitas para hacer cada movimiento. Lamentablemente todo el juego est&aacute; hecho s&oacute;lo en ingl&eacute;s, por ahora.</h2>\r\n', 'post-1455156120.jpeg', '', '', '', '2016-02-09', '2016-02-09 17:15:21', 0, 0, 108, 1);
INSERT INTO `cp_post` (`id`, `category`, `url_name`, `title`, `description`, `large_text`, `image`, `slider_image`, `video`, `teg`, `createdate`, `add-date`, `slider`, `favorite`, `pos`, `active`) VALUES
(111, 4, 'Varias-opciones-para-una-manicura-perfecta', 'Varias opciones para una manicura perfecta', '', '<p>Si eres una amante de la manicura &iexcl;este post es perfecto para ti!</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/1062005-650-1455023795-6.jpg" style="height:432px; width:500px" /><img alt="" src="/kcfinder/upload/images/large%284%29.jpg" style="height:494px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o2actbunKx1ufskjao1_1280.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o21pl97xaw1ufskjao1_500.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o21ro8tPeq1ufskjao1_1280.jpg" style="height:516px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o27iw0WQRK1uq9o0ao1_1280.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o27r8cu4JQ1uq9o0ao1_500.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o28yacnpnz1ufskjao1_1280.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o256c3bG0S1ufskjao1_500.jpg" style="height:487px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o259nddoCh1rwpbkao1_1280.jpg" style="height:889px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o278v90gx11ufskjao1_1280.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o296tiabNk1ufskjao1_1280.jpg" style="height:661px; width:500px" /></p>\r\n\r\n<p>&iexcl;Pero recuerda que lo sencillo siempre es lo mejor!</p>\r\n', 'post-1455156909.jpeg', '', '', '', '2016-02-09', '2016-02-09 17:28:30', 0, 0, 109, 1),
(112, 5, 'Esto-es-lo-que-pasaría-si-tu-perro-tuviese-WhatsApp', 'Esto es lo que pasaría si tu perro tuviese WhatsApp', '', '<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/edit-10453-1454512439-2.jpg" style="height:1047px; width:500px" /><img alt="" src="/kcfinder/upload/images/edit-14573-1454511362-4.jpg" style="height:939px; width:500px" /><img alt="" src="/kcfinder/upload/images/edit-32558-1454512175-2.jpg" style="height:996px; width:500px" /><img alt="" src="/kcfinder/upload/images/enhanced-10172-1454511328-1.png" style="height:943px; width:500px" /><img alt="" src="/kcfinder/upload/images/enhanced-10253-1454513258-1.png" style="height:940px; width:500px" /><img alt="" src="/kcfinder/upload/images/enhanced-10687-1454511767-6.png" style="height:941px; width:500px" /><img alt="" src="/kcfinder/upload/images/enhanced-12092-1454513050-1.png" style="height:945px; width:500px" /><img alt="" src="/kcfinder/upload/images/enhanced-16542-1454514203-9.png" style="height:972px; width:500px" /><img alt="" src="/kcfinder/upload/images/enhanced-20516-1454513620-12.png" style="height:945px; width:500px" /><img alt="" src="/kcfinder/upload/images/enhanced-27236-1454511866-1.png" style="height:940px; width:500px" /></p>\r\n\r\n<p>(V&iacute;a: BuzzFeed)</p>\r\n', 'post-1455308298.jpeg', '', '', '', '2016-02-11', '2016-02-11 11:31:39', 0, 0, 110, 1),
(113, 6, 'Imágenes-que-tienes-que-mirar-al-menos-dos-veces-para-entenderlas', 'Imágenes que tienes que mirar al menos dos veces para entenderlas', '', '<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/0c8eb9837677.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/1a0280a6c3b3.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/7e9dcac25da3.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/afcf029a7938.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/7fd98b036b6e.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/df37fda1d7da.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/c6b0615f88b0.jpg" style="height:500px; width:500px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/1448465676_1.jpg" style="height:404px; width:500px" /><img alt="" src="/kcfinder/upload/images/1448465620_5.jpg" style="height:632px; width:500px" /></p>\r\n', 'post-1455319048.jpeg', '', '', '', '2016-02-11', '2016-02-11 14:30:49', 0, 0, 111, 1),
(114, 3, 'Los-Simpson-hacen-homenajes-a-las-películas', 'Los Simpson hacen homenajes a las películas', '', '<p>Se podr&iacute;a decir que todos hemos visto esta maravillosa serie en alg&uacute;n momento de nuestra vida, y algunos, ya adultos, lo seguimos haciendo. Si nos fijamos bien, muchos episodios est&aacute;n basados en pel&iacute;culas muy famosas, &iexcl;&eacute;chale un vistazo!</p>\r\n', 'post-1455322127.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/5aMt8zC_vBM" frameborder="0" allowfullscreen></iframe>', '', '2016-02-11', '2016-02-11 15:22:08', 0, 0, 112, 1),
(115, 1, 'Titanic-II-zarpará-en-el-2018', 'Titanic II zarpará en el 2018', '', '<p>S&iacute;, has o&iacute;do bien. El nuevo Titanic zarpar&aacute; en 2018. Es una r&eacute;plica casi exacta del famoso barco que se hundi&oacute; en 1912, en el que murieron 1.503 personas. El buque tendr&aacute; casi 270 metros de largo y 53 de altura, y podr&aacute; alcanzar una velocidad de 24 nudos. En cuanto a su capacidad, podr&aacute; acomodar a 2.400 pasajeros, 177 m&aacute;s que el original.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/260433-818-460.jpg" style="height:281px; width:500px" /><img alt="" src="/kcfinder/upload/images/260435-818-460.jpg" style="height:281px; width:500px" /><img alt="" src="/kcfinder/upload/images/260436-818-460.jpg" style="height:281px; width:500px" /><img alt="" src="/kcfinder/upload/images/260438-944-511.jpg" style="height:271px; width:500px" /><img alt="" src="/kcfinder/upload/images/260439-818-460.jpg" style="height:281px; width:500px" /><img alt="" src="/kcfinder/upload/images/260440-818-460.jpg" style="height:281px; width:500px" /><img alt="" src="/kcfinder/upload/images/260441-818-460.jpg" style="height:281px; width:500px" /><img alt="" src="/kcfinder/upload/images/260443-818-460.jpg" style="height:281px; width:500px" /></p>\r\n', 'post-1455323024.jpeg', '', '', '', '2016-02-11', '2016-02-11 15:37:05', 0, 0, 113, 1),
(117, 5, 'Los-mejores-memes-de-San-Valentín', 'Los mejores memes de San Valentín', '', '<p>Hoy es el gran d&iacute;a que todas las parejas esperan cada a&ntilde;o, pero, &iquest;solo est&aacute; el 14 de febrero para demostrarse cari&ntilde;o el uno al otro? &iexcl;Venga ya!</p>\r\n\r\n<p>Aqu&iacute; te dejo los mejores memes de esta gran fiesta mundial. Para los enamorados, &iexcl;feliz d&iacute;a!</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/983.jpg" style="height:346px; width:500px" /><img alt="" src="/kcfinder/upload/images/MEME%209.png" style="height:503px; width:500px" /><img alt="" src="/kcfinder/upload/images/enhanced-468-1453828174-6.jpg" style="height:506px; width:500px" /><img alt="" src="/kcfinder/upload/images/amor-besos-desmotivaciones-4.jpg" style="height:483px; width:500px" /><img alt="" src="/kcfinder/upload/images/meme.JPG" style="height:331px; width:500px" /><img alt="" src="/kcfinder/upload/images/MEME3.JPG" style="height:294px; width:500px" /><img alt="" src="/kcfinder/upload/images/MEMES%206.JPG" style="height:413px; width:500px" /><img alt="" src="/kcfinder/upload/images/san-valentin%20%281%29.jpg" style="height:375px; width:500px" /><img alt="" src="/kcfinder/upload/images/san-valentin%20%282%29.jpg" style="height:375px; width:500px" /><img alt="" src="/kcfinder/upload/images/san-valentin.jpg" style="height:375px; width:500px" /><img alt="" src="/kcfinder/upload/images/san-valentin-1.jpeg" style="height:1005px; width:500px" /><img alt="" src="/kcfinder/upload/images/san-valentin-5.jpeg" style="height:317px; width:500px" /><img alt="" src="/kcfinder/upload/images/San-Valentin-sirve-morirse-risa_TINIMA20150213_0197_19.jpg" style="height:282px; width:500px" /><img alt="" src="/kcfinder/upload/images/1424104955262.jpg" style="height:487px; width:500px" /></p>\r\n', 'post-1455563428.png', '', '', '', '2016-02-14', '2016-02-14 10:23:50', 0, 0, 114, 1),
(118, 6, 'Rich-McCor-remodela-los-monumentos-más-emblemáticos-utilizando-papel', 'Rich McCor remodela los monumentos más emblemáticos utilizando papel', '', '<p>El joven londoniense Rich McCor ha convertido el Ojo de Londres en una bicicleta, el Big Ben en un reloj de mano y los leones de Trafalgar Square en gatitos juguetones.</p>\r\n\r\n<p>El artista solo tiene 28 a&ntilde;os de edad y trabaja en una agencia de publicidad, y claro, hace estas maravillosas fotograf&iacute;as usando solo papel y tijeras.</p>\r\n\r\n<p>Con unas simples fotograf&iacute;as este artista innovador ha transformado de manera impresionante algunos de los lugares m&aacute;s conocidos de la capital de su propia marca c&eacute;lebre de obtra peculiar.</p>\r\n\r\n<pre style="text-align:center">\r\n<img alt="" src="/kcfinder/upload/images/12654602_1047530061985976_9011599108928177239_n.jpg" style="height:500px; width:500px" />\r\n</pre>\r\n\r\n<div style="page-break-after: always"><span style="display:none">&nbsp;</span></div>\r\n\r\n<pre style="text-align:center">\r\n<img alt="" src="/kcfinder/upload/images/12661870_1047530155319300_8525747017693204849_n.jpg" style="height:500px; width:500px" />\r\n</pre>\r\n\r\n<div style="page-break-after: always"><span style="display:none">&nbsp;</span></div>\r\n\r\n<pre style="text-align:center">\r\n<img alt="" src="/kcfinder/upload/images/12662724_1047530118652637_4392220519264704212_n.jpg" style="height:368px; width:500px" />\r\n</pre>\r\n\r\n<div style="page-break-after: always"><span style="display:none">&nbsp;</span></div>\r\n\r\n<pre style="text-align:center">\r\n<img alt="" src="/kcfinder/upload/images/12669414_1047530165319299_7559166312163843980_n.jpg" style="height:500px; width:500px" />\r\n</pre>\r\n\r\n<div style="page-break-after: always"><span style="display:none">&nbsp;</span></div>\r\n\r\n<pre style="text-align:center">\r\n<img alt="" src="/kcfinder/upload/images/12687948_1047530111985971_7881218720182024387_n.jpg" style="height:364px; width:500px" />\r\n</pre>\r\n\r\n<div style="page-break-after: always"><span style="display:none">&nbsp;</span></div>\r\n\r\n<pre style="text-align:center">\r\n<img alt="" src="/kcfinder/upload/images/12715406_1047530138652635_3578685073892903063_n.jpg" style="height:500px; width:500px" />\r\n</pre>\r\n\r\n<div style="page-break-after: always"><span style="display:none">&nbsp;</span></div>\r\n\r\n<pre style="text-align:center">\r\n<img alt="" src="/kcfinder/upload/images/12715559_1047530101985972_5023799957932289176_n.jpg" style="height:500px; width:500px" />\r\n</pre>\r\n\r\n<div style="page-break-after: always"><span style="display:none">&nbsp;</span></div>\r\n\r\n<pre style="text-align:center">\r\n<img alt="" src="/kcfinder/upload/images/12728867_1047530058652643_2385063437855475041_n.jpg" style="height:500px; width:500px" />\r\n</pre>\r\n\r\n<div style="page-break-after: always"><span style="display:none">&nbsp;</span></div>\r\n\r\n<pre style="text-align:center">\r\n<img alt="" src="/kcfinder/upload/images/12742086_1047530065319309_5284957336368181359_n.jpg" style="height:500px; width:500px" />\r\n</pre>\r\n\r\n<div style="page-break-after: always"><span style="display:none">&nbsp;</span></div>\r\n\r\n<pre style="text-align:center">\r\n<img alt="" src="/kcfinder/upload/images/fotonoticia_20151029171047-15101486159_640.jpg" style="height:500px; width:500px" />\r\n</pre>\r\n\r\n<div style="page-break-after: always"><span style="display:none">&nbsp;</span></div>\r\n\r\n<pre style="text-align:center">\r\n<img alt="" src="/kcfinder/upload/images/fotonoticia_20151029171047-15101486219_640.jpg" style="height:500px; width:500px" />\r\n</pre>\r\n', 'post-1455564524.jpeg', '', '', '', '2016-02-14', '2016-02-14 10:42:05', 0, 0, 115, 1),
(119, 5, 'Si-los-hombres-tuvieran-el-periodo-así-serían-los-anuncios-de-tampones', 'Así serían los anuncios de tampones si los hombres tuvieran el periodo', '', '<p>&iquest;Te imaginas un mundo donde en vez de las mujeres fueran los hombres quienes tuvieran que pasar una masacre cada mes? Mira esta campa&ntilde;a publicitaria donde se refleja c&oacute;mo ser&iacute;a un hombre si tuviese el periodo. El resultado es muy divertido aunque detr&aacute;s de esto hay una raz&oacute;n horrible.</p>\r\n\r\n<p>En este momento hay 1,25 mil millones de mujeres que no tienen acceso a un inodoro durante sus periodos.</p>\r\n\r\n<p>&quot;Una de cada tres mujeres en todo el mundo no tiene acceso a un ba&ntilde;o durante sus periodos y tener que encontrar un lugar seguro despu&eacute;s de anochecer es adem&aacute;s de poco digno, algo muy arriesgado&quot;.</p>\r\n\r\n<p style="text-align:right">-Barbara Frost, directora general de WaterAid</p>\r\n\r\n<p>Y peor a&uacute;n son los mitos y estigmas que tiene este proceso natural que padecen las ni&ntilde;as y mujeres en alg&uacute;n momento de su vida.</p>\r\n\r\n<p>&quot;Millones de personas sufren discriminaci&oacute;n debido a las creencias de que est&aacute;n &quot;contamintadas&quot; o &quot;son impuras&quot;. El estigma sobre la menstruaci&oacute;n significa que las mujeres no buscan la ayuda e informaci&oacute;n que necesitan, mientras que la falta de instalaciones de higiene en las escuelas es una raz&oacute;n importante para las chicas j&oacute;venes para abandonar la educaci&oacute;n cuando llegan a la pubertad&quot;.</p>\r\n\r\n<h2 style="text-align:justify">&nbsp;</h2>\r\n', 'post-1455736487.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/fNkr-yXdW3Y" frameborder="0" allowfullscreen></iframe>', '', '2016-02-16', '2016-02-16 10:28:08', 0, 0, 116, 1),
(120, 3, '¿Fan-de-Leonardo-DiCaprio?', '¿Fan de Leonardo DiCaprio?', '', '<p>Este gran actor ha conseguido llegar a la perfecci&oacute;n y puede interpretar&nbsp;cualquier papel. Es uno de los mejores actores de nuestra &eacute;poca y puede hacer que riamos o lloremos de la emoci&oacute;n. &iexcl;Cada pel&iacute;cula suya es genial!&nbsp;Realmente se merece un &Oacute;scar, y todos sus fans esperamos que se lo den. &iexcl;Mucha suerte, Leo!</p>\r\n', 'post-1455737516.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/Zyfickp1q9Q" frameborder="0" allowfullscreen></iframe>', '', '2016-02-16', '2016-02-16 10:45:17', 0, 0, 117, 1),
(121, 6, 'El-motivador-discurso-de-Kate-Winslet-en-los-Bafta-', 'El motivador discurso de Kate Winslet en los Bafta ', '', '<p>Kate Winslet se ha lucido con el discursazo que ha dado en los Bafta. Esta preciosa actriz nos anima a seguir nuestros sue&ntilde;os aunque nos digan que no valemos nada. No dej&eacute;is de luchar por vuestros sue&ntilde;os.&nbsp;&iexcl;Mucho &aacute;nimo a todos!</p>\r\n', 'post-1455737892.jpeg', 'slider-1455996911.jpeg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/uDbfwiUbdnA" frameborder="0" allowfullscreen></iframe>', '', '2016-02-16', '2016-02-16 10:51:33', 0, 0, 118, 1),
(122, 1, 'Adidas-pone-en-su-lugar-a-los-homófobos-el-día-de-San-Valentín', 'Adidas pone en su lugar a los homófobos el día de San Valentín', '', '<p>La marca puso una foto de dos lesbianas en su Instagram para celebrar el d&iacute;a internacional del amor.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/73920_119835_ad_584_699.jpg" style="height:598px; width:500px" /></p>\r\n\r\n<p>&nbsp;&ldquo;El amor que recibes es proporcional al amor que das&rdquo;.</p>\r\n\r\n<p>La foto fue muy comentada y bien recibida por la mayor&iacute;a, pero siempre tiene que haber un hom&oacute;fobo criticando a los homosexuales. A algunas personas no les gust&oacute; que en la foto se celebrara el amor de dos mujeres, que dejaba a la imaginaci&oacute;n si las chicas se abrazaban o se daban un beso. Hubo algunos comentarios hom&oacute;fobos que intentaron faltar el respeto.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/73915_119825_ad_584_453.jpg" style="height:388px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">-&quot;&iexcl;Qu&eacute; verg&uuml;enza, Adidas! Me voy a Nike ahora mismo&quot;.<br />\r\nLa marca contesta con dos emoticonos de un beso y un abrazo.<br />\r\n- &quot;&iquest;Pero qu&eacute; c***, Adidas? San Valent&iacute;n es un d&iacute;a para un chico y una chica que sean pareja, no para lesbianas, est&uacute;pido Adidas&quot;.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_nzqvxebPcZ1qdkswoo1_400.gif" style="height:266px; width:500px" /><br />\r\nLa marca contesta de manera muy elegante que &quot;San Valent&iacute;n es el d&iacute;a del AMOR&quot;.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o1gt0jFNAs1qkejxno1_500.gif" style="height:375px; width:500px" /></p>\r\n', 'post-1455753275.jpeg', '', '', '', '2016-02-16', '2016-02-16 15:07:56', 0, 0, 119, 1),
(60, 2, '¿Sabías-que-estas-frutas-te-pueden-ayudar-a-vivir-mejor?', '¿Sabías que estas frutas te pueden ayudar a vivir mejor?', '', '<p>&iquest;Hab&iacute;as o&iacute;do hablar de estas s&uacute;per frutas? No todas las frutas son tan especiales. Aqu&iacute; te dejo 10 frutas llenas de antioxidantes, vitaminas, fibra y minerales, y otros nutrientes que te pueden ayudar a vivir m&aacute;s tiempo, verte mejor, e incluso prevenir enfermedades. Echa un vistazo a estas &ldquo;superfruits&rdquo;.</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/10625030_1657864331148389_7510787268947486099_n.jpg" style="height:400px; width:400px" /><img alt="" src="/kcfinder/upload/images/11223658_1657864431148379_2509333561369272415_n.jpg" style="height:400px; width:400px" /><img alt="" src="/kcfinder/upload/images/11230786_1657864327815056_8253356555565861397_n.jpg" style="height:400px; width:400px" /><img alt="" src="/kcfinder/upload/images/11917494_1657864401148382_1625805910091954264_n.jpg" style="height:400px; width:400px" /><img alt="" src="/kcfinder/upload/images/11988461_1657864357815053_3967977689057251075_n.jpg" style="height:400px; width:400px" /><img alt="" src="/kcfinder/upload/images/11990616_1657864407815048_507919935246144416_n.jpg" style="height:400px; width:400px" /><img alt="" src="/kcfinder/upload/images/12003950_1657864411148381_6698130312110098700_n.jpg" style="height:400px; width:400px" /><img alt="" src="/kcfinder/upload/images/12006271_1657864367815052_4998324463022972733_n.jpg" style="height:400px; width:400px" /><img alt="" src="/kcfinder/upload/images/12019951_1657864364481719_293043072676835637_n.jpg" style="height:400px; width:400px" /><img alt="" src="/kcfinder/upload/images/kozuka%20gothic%20pro.png" style="height:400px; width:400px" /></p>\r\n</div>\r\n', 'post-1454343096.jpeg', '', '', '', '2016-01-30', '2016-01-30 19:23:37', 0, 0, 60, 1),
(61, 3, 'Las-20-películas-románticas-que-debes-ver-antes-de-morir', 'Las 20 películas románticas que debes ver antes de morir', '', '<p>Seguro que piensas que eres un tipo duro y no ves pel&iacute;culas rom&aacute;nticas, pero recuerda que todos tenemos un lado dulce. Aqu&iacute; te dejo las 20 pel&iacute;culas rom&aacute;nticas (algunas comedia rom&aacute;ntica) que debes ver. Algunas te har&aacute;n llorar y otras te har&aacute;n re&iacute;r. &iexcl;Prepara los pa&ntilde;uelos!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Un paseo para recordar&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/tumblr_nfmhpvwiNu1sooveso1_500%281%29.jpg" style="height:363px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;El diario de Noa&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/tumblr_mbok60h0Wr1riys8bo1_500%281%29.jpg" /></p>\r\n</div>\r\n\r\n<p>&quot;Titanic&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/tumblr_ntcj8dPJSf1rpry93o1_400%281%29.jpg" style="height:500px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Siempre el mismo d&iacute;a&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/tumblr_nsw8cp7Mzl1spqq5go1_500%281%29.jpg" style="height:333px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Querido John&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/tumblr_nj9445CBXR1u0dq81o2_540%281%29.png" style="height:694px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Recu&eacute;rdame&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/large%281%29.jpg" style="height:332px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Posdata: te amo&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/1262785940753_f%281%29.jpg" style="height:667px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Dying Young&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/dying_young_imgcropped_1600x900%281%29.jpg" style="height:281px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Noviembre dulce&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/tumblr_lkwl6gvgGP1qf6e10o1_500%281%29.jpg" style="height:333px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Como la vida misma&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/tumblr_md2kwvddGO1rgjxx8o1_500%281%29.jpg" style="height:556px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Eterno resplandor de una mente sin recuerdos&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/tumblr_mnfa0nkpTN1r860coo1_500%281%29.png" style="height:700px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Pretty Woman&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/tumblr_nrqzpkrtsU1uajk3po1_500.jpg" style="height:503px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;La boda de mi mejor amigo&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/tumblr_mzko7iSfcA1tpek2ho1_500%281%29.jpg" style="height:443px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Antes de amanecer&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/before-sunrise-original%281%29.jpg" style="height:281px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Atonement&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/tumblr_nn5yiuhdfL1qicibqo1_540%281%29.png" style="height:333px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Votos de amor&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/tumblr_m4qnlzOyRV1rs426io1_500%283%29.jpg" style="height:600px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Ciudad de &aacute;ngeles&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/kinopoisk.ru-City-of-Angels-1416-w-1024%281%29.jpg" style="height:375px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;Ghost&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/1202943332_f%281%29.jpg" style="height:343px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;10 razones para odiarte&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/10-razones-para-odiarte%281%29.jpg" style="height:333px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&quot;El amor est&aacute; en el aire&quot;</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/foto-el-amor-esta-en-el-aire-2013-7-207%281%29.jpg" style="height:333px; width:500px" /></p>\r\n</div>\r\n', 'post-1454302122.jpeg', '', '', '', '2016-01-30', '2016-01-30 20:02:03', 0, 0, 61, 1),
(62, 6, '¿Has-visto-este-hermoso-cortometraje?', '¿Has visto este hermoso cortometraje?', '', '<p>Este impresionante corto est&aacute; protagonizado por el actor brit&aacute;nico Derek Jacobi y producido por Archer&rsquo;s Mark (una productora de cine independiente). La m&uacute;sica y la letra es de un m&uacute;sico llamado Keaton Henson.<br />\r\nPersonalmente, la voz y la forma de narrar de Derek me enamora. Resume maravillosamente la vida en solo 3 preciosos minutos.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'post-1454302786.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube-nocookie.com/embed/bQao54nSXoc?showinfo=0" frameborder="0" allowfullscreen></iframe>', '', '2016-01-30', '2016-01-30 20:11:49', 0, 0, 62, 1),
(69, 6, 'Mira-lo-que-hace-este-pez-globo-para-escapar-de-su-asesino', 'Mira lo que hace este pez globo para escapar de su asesino', '', '<p>El artista franc&eacute;s de tan solo 24 a&ntilde;os, Arthur Philippe, nos muestra en este peque&ntilde;o v&iacute;deo como este pobre pez intenta sobrevivir escapando del asesino que lo va a matar para complacer el paladar de algunos humanos. &iquest;Pero qu&eacute; pasar&aacute; al final? &iquest;Ganar&aacute; el asesino o el pececito que solo quiere ser libre?</p>\r\n<div align="center">\r\n\r\n<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/wKA86e_aWqw" width="560"></iframe></p>\r\n</div>', 'post-1454348940.jpeg', '', '', '', '2016-01-31', '2016-01-31 09:02:21', 0, 0, 68, 1),
(63, 6, 'Este-gran-fotógrafo-intenta-tomarle-fotos-a-su-novia-pero-ella-no-le-deja', 'Este gran fotógrafo intenta tomarle fotos a su novia pero ella no le deja', '', '<p>No todo el mundo est&aacute; c&oacute;modo/a delante de&nbsp;una c&aacute;mara, pero con el fot&oacute;grafo correcto, cualquiera puede ser objeto de una imagen magn&iacute;fica.</p>\r\n\r\n<p>Como prueba, echa un vistazo a la obra del fot&oacute;grafo Mika&euml;l Theimer. Sus fotograf&iacute;as cuentan lo t&iacute;mida que es Marion, su novia, frente a una c&aacute;mara.</p>\r\n\r\n<p>&ldquo;Todo empez&oacute; con la foto de la puerta del garaje rojo,&rdquo; dice el fot&oacute;grafo.</p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/screen-shot-2016-01-12-at-11-48-45-am.png" style="float:left; height:332px; width:500px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Le pregunt&eacute; a Marion si pod&iacute;a posar al lado de la puerta, pero ella no ten&iacute;a ganas. Entonces&nbsp;se lo ped&iacute;&nbsp;otra vez hasta que finalmente se puso de pie junto a la puerta. Pero como que yo no hab&iacute;a especificado c&oacute;mo quer&iacute;a que posase, ella se coloc&oacute; mirando a la pared. Pens&eacute; que era muy divertido, as&iacute; que no dije nada m&aacute;s y tom&eacute; la fotograf&iacute;a&rdquo;.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/asda.jpg" style="height:750px; width:500px" /></p>\r\n\r\n<p style="text-align:center">&ldquo;Ninguna de estas fotos est&aacute; planeada, a veces son 100% espont&aacute;neas&hellip;&rdquo;</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/mama-10.jpg" style="height:750px; width:500px" /></p>\r\n\r\n<p style="text-align:center">&ldquo;&hellip; a veces mientras estamos andando y veo una escena que me gusta le pido que pose para m&iacute;.&rdquo;</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/mama-14.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/mama-3.jpg" style="height:750px; width:500px" /></p>\r\n\r\n<p>&ldquo;Ella decide c&oacute;mo quiere posar.&rdquo;</p>\r\n\r\n<p style="text-align: center;">El resultado es algo muy bonito y divertido. Echa un vistazo a estas otras fotos de Marion.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/i-keep-trying-to-photograph-my-girlfriend-but-she-wont-let-me-2__880.jpg" style="float:left; height:333px; width:500px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/i-keep-trying-to-photograph-my-girlfriend-but-she-wont-let-me-9__880.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/mama-13.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/mama-20.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/mama-21.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">&nbsp;</p>\r\n', 'post-1454303904.jpeg', '', '', '', '2016-01-30', '2016-01-30 20:31:45', 0, 0, 63, 1),
(64, 6, '¿Te-gustan-los-gatitos-adorables-y-los-hombres-hermosos?', '¿Te gustan los gatitos adorables y los tíos buenos?', '', '<p>Si es as&iacute; entonces &eacute;chale un vistazo a esta cuenta de Instagram que ha creado un gran genio. Chicos y gatos, &iquest;qu&eacute; m&aacute;s quer&eacute;is pedir, chicas? Mirad a estos adorables gatitos y a estos ... &iexcl;aghhh!</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/c%20zczd.JPG" style="height:499px; width:500px" /></p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/Captura.JPG" style="height:503px; width:500px" /></p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/sdfgs.JPG" style="height:498px; width:500px" /></p>\r\n</div>\r\n\r\n<p>&iexcl;Sin duda es una mezcla perfecta!</p>\r\n\r\n<div>\r\n<p><img alt="" src="/kcfinder/upload/images/zcv.JPG" style="height:497px; width:500px" /></p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/dfhds.JPG" style="height:502px; width:500px" /></p>\r\n</div>\r\n\r\n<p>Mira su Instagram, te volver&aacute;s loco/a:</p>\r\n\r\n<p><a href="http://https://www.instagram.com/hotdudeswithkittens/" target="_blank">HotDudesWithKittens</a></p>\r\n', 'post-1454339236.jpeg', '', '', '', '2016-01-31', '2016-01-31 06:20:37', 0, 0, 64, 1),
(65, 4, 'Imágenes-de-maquillaje-que-te-horrorizarán', 'Imágenes de maquillaje que te horrorizarán', '', '<p>Cada d&iacute;a hay m&aacute;s y m&aacute;s chicas que se suman a la &quot;moda&quot; de llevar kilos y kilos de maquillaje en la cara. Muchas de ellas lo hacen por las inseguridades, que si le ha salido un grado, que si tiene una mancha en la cara... las excusas son infinitas.&nbsp;</p>\r\n\r\n<p>Pensamos que estamos m&aacute;s bonitas cuando llevamos cosm&eacute;ticos en la cara, pero &iquest;qui&eacute;n ha establecido ese canon de belleza? &iquest;Kim Kardashian? Ve a lo natural y deja que tu piel respire.</p>\r\n\r\n<p>En todo caso, aqu&iacute; tenemos unos desastres que har&aacute;n que no podamos dormir por las noches. Todos necesitamos un poco de pr&aacute;ctica.</p>\r\n\r\n<p>Cuando usas demasiado r&iacute;mel y pasa esto...</p>\r\n<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/Captura%281%29.JPG" style="height:258px; width:500px" /></p>\r\n</div>\r\n<p>Esta chica ha llegado a la locura.</p>\r\n<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/9174.jpg" style="height:376px; width:500px" /></p>\r\n</div>\r\n<p>Cuando tu cara pertenece a un fantasma...</p>\r\n<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/9171.jpg" style="height:375px; width:500px" /></p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/9173.jpg" style="height:620px; width:500px" /></p>\r\n</div>\r\n<p>Cuando el bronceado se vuelve de moda...</p>\r\n<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/dthyd.jpg" style="height:383px; width:500px" /></p>\r\n</div>\r\n<p>Cuando se te olvida difuminar el maquillaje. &iexcl;Oh, dios! &iquest;A qui&eacute;n no le ha pasado esto?</p>\r\n<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/jhghj.JPG" style="height:498px; width:500px" /></p>\r\n</div>\r\n<p>&iquest;Purpurina? &iquest;Eso qu&eacute; es? &iquest;Se pone en los ojos?</p>\r\n<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/jhkl%C3%B1.JPG" style="height:471px; width:500px" /></p>\r\n</div>\r\n<p>Cuando vas a maquillarte y &iexcl;vual&aacute;!</p>\r\n<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/kj.JPG" style="height:458px; width:500px" /></p>\r\n</div>\r\n<p>Cuando tu estuche de maquillaje se queda as&iacute;...</p>\r\n<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/kjhlo.JPG" style="height:447px; width:500px" /></p>\r\n</div>\r\n<p>Cuando intentas hacerte un &#39;cat eye&#39; y terminas con ojos de panda.</p>\r\n<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/lijl.JPG" style="height:501px; width:500px" /></p>\r\n</div>\r\n<p>Hay que decir la verdad, es muy complicado conseguir los labios perfectos.</p>\r\n<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/lik.JPG" style="height:342px; width:500px" /></p>\r\n</div>\r\n<p>&iexcl;La pesadilla de cualquier chica!</p>\r\n<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/%C3%B1ok.JPG" style="height:476px; width:500px" /></p>\r\n</div>\r\n<p>Sin palabras...</p>\r\n<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/oijl.JPG" style="height:613px; width:500px" /></p>\r\n</div>\r\n<p>Pero tranquilos/as, las famosas tambi&eacute;n tienen algunos deslices con el maquillaje.</p>\r\n<div align="center">\r\n<p><img alt="" src="/kcfinder/upload/images/l%C3%B1k%C3%B1.JPG" style="height:485px; width:500px" /></p>\r\n</div>', 'post-1454340503.jpeg', '', '', '', '2016-01-31', '2016-01-31 06:40:19', 0, 0, 65, 1),
(123, 3, 'Segundo-tráiler-en-español-de-''13-Horas:-Los-soldados-secretos-de-Bengasi''', 'Segundo tráiler en español de ''13 Horas: Los soldados secretos de Bengasi''', '', '<p style="text-align:center">Una historia real donde seis soldados pusieron sus vidas en peligro para salvar las vidas de sus compa&ntilde;eros.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/13_horas_49958.jpg" style="height:800px; width:540px" /></p>\r\n', 'post-1455886195.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/bEp85Sm4CEU" frameborder="0" allowfullscreen></iframe>', '', '2016-02-18', '2016-02-18 04:03:17', 0, 0, 120, 1),
(124, 3, 'Tom-Clancy’s-The-Division-Trailer', 'Tom Clancy’s The Division Trailer', '', '', 'post-1455922508.jpeg', '', '<iframe src="https://player.vimeo.com/video/155867635?autoplay=1&color=d61599" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', '', '2016-02-18', '2016-02-18 14:08:29', 0, 0, 121, 1),
(125, 6, '¡Esto-no-debería-estar-pasando!', '¡Esto no debería estar pasando!', '', '<p>&quot;&iquest;Es normal que los ni&ntilde;os tengan que ver esta imagen todos los d&iacute;as? No soy una persona con prejuicios y creo que cada uno puede hacer con su vida lo que quiera, pero es absurdo que me fuercen a ver una escena como esta. Lo que haga la gente en privado es problema de ellos, pero si&nbsp;lo hacen en p&uacute;blico pasa a ser algo que me concierne. Est&aacute;n desafiando las convenciones sociales, y eso puede ser peligroso. &iquest;Qu&eacute; pasa si ocurre una tragedia? O peor, &iquest;si alguien muere? &iquest;A qui&eacute;n culparemos? &iquest;Qu&eacute; pasar&iacute;a si un ni&ntilde;o viera esta escena todos los d&iacute;as? Los ni&ntilde;os pensar&aacute;n que es normal esperar al tren pisando la l&iacute;nea amarilla. As&iacute; que, no act&uacute;en como ese tipo de ah&iacute;. Sigue el ejemplo de las chicas. Espere el metro detr&aacute;s de la l&iacute;nea amarilla y no la cruce hasta que el convoy est&eacute; parado y con las puertas abiertas&rdquo;.</p>\r\n\r\n<p style="text-align: right;">-Nelson Felippe.</p>\r\n', 'post-1456009027.jpeg', '', '', '', '2016-02-19', '2016-02-19 14:10:28', 0, 0, 122, 1),
(126, 3, 'Así-son-las-canciones-de-las-princesas-Disney-en-su-idioma-original', 'Así son las canciones de las princesas Disney en su idioma original', '', '<p>&iquest;Has pensado alguna vez c&oacute;mo ser&iacute;an las canciones de nuestras queridas princesas Disney en su idioma original? Seguro que pensabas que eran todas inglesas, tranquilo/a, no eres la &uacute;nica persona.</p>\r\n', 'post-1456011989.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/5zZzTv3DCi0" frameborder="0" allowfullscreen></iframe>', '', '2016-02-19', '2016-02-19 14:59:51', 0, 0, 123, 1),
(127, 3, 'Algunos-de-los-directores-de-cine-de-nuestra-época-que-debes-conocer-sí-o-sí', 'Algunos de los directores de cine de nuestra época que debes conocer sí o sí', '', '<p style="text-align:center">Steven Spielberg</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/opko.jpg" style="height:281px; width:500px" /></p>\r\n\r\n<p style="text-align:center">Ha dirigido pel&iacute;culas como &quot;Parque Jur&aacute;sico&quot;, &quot;La lista de Schindler&quot;, &quot;Salvando al soldado Ryan&quot;, &quot;Atr&aacute;pame si puedes&quot; y muchas m&aacute;s obras de arte. &iexcl;Si eres un/a amante del cine no debes perderte ninguna de sus pel&iacute;culas!</p>\r\n\r\n<p style="text-align:center">Christopher Nolan</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/pegasus_LARGE_t_1581_106668763.JPG" style="height:359px; width:500px" /></p>\r\n\r\n<p style="text-align:center">Ha dirigido pel&iacute;culas como &quot;Memento&quot;, &quot;El caballero oscuro&quot;, &quot;Interstellar&quot;, &quot;Origen&quot;, &quot;El truco final&quot;, &quot;Insomnio&quot;... Despu&eacute;s de ver estos nombres tan famosos, &iquest;a qu&eacute; esperas a ver las dem&aacute;s pel&iacute;culas dirigidas por este genio?</p>\r\n\r\n<p style="text-align:center">Tim Burton</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/Fu3F5i-HNvY.jpg" style="height:364px; width:500px" /></p>\r\n\r\n<p style="text-align:center">A diferencia con otros, es uno de los directores m&aacute;s originales que tenemos, ha creado unas obras de arte como &quot;Eduardo Manostijeras&quot;, &quot;Charlie y la f&aacute;brica de chocolate&quot;, &quot;Ed Wood&quot;, &quot;Sleepy Hollow&quot;, &quot;Big Fish&quot;, &quot;Los mundos de Coraline&quot; y muchas m&aacute;s... Te invito a un viaje esplendido y maravilloso junto a Tim.&nbsp;</p>\r\n\r\n<p style="text-align:center">Woody Allen</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/CVJ9pI4U4AAZjxE.jpg" style="height:281px; width:500px" /></p>\r\n\r\n<p style="text-align:center">&iquest;A qui&eacute;n no le gustan las pel&iacute;culas de este loco y maravilloso hombre? Si no las has visto puedes buscar &quot;Manhattan&quot;, &quot;Medianoche en Par&iacute;s&quot;, &quot;Scoop&quot;, &quot;Magia a la luz de la luna&quot;...</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', 'post-1456014204.jpeg', '', '', '', '2016-02-19', '2016-02-19 15:36:45', 0, 0, 124, 1),
(128, 3, 'Vikingos-T4-Estreno-24-Febrero', 'Vikingos T4 Estreno 24 febrero', '', '<p><strong><em>Vikingos (Vikings)&nbsp;</em></strong>es una de las ficciones m&aacute;s vistas del momento y regresa con una esperada cuarta temporada con m&aacute;s sangre, pasi&oacute;n, batallas, sexo y ambici&oacute;n. La nueva entrega de la serie creada por&nbsp;<strong>Michael Hirst</strong>&nbsp;(<em><strong>Los Tudor, Elizabeth</strong></em>) llegar&aacute; a el&nbsp;<strong>24 de febrero a TNT</strong>, pocos d&iacute;as despu&eacute;s de su estreno en Estados Unidos, y contar&aacute; con 20 episodios, a diferencia de las temporadas pasadas, de diez cap&iacute;tulos cada una.</p>\r\n\r\n<p>Hasta ahora, los personajes de esta &eacute;pica serie han luchado por el poder, amado, traicionado y asesinado. Han mantenido relaciones con dioses y se han abierto a nuevas creencias. Han combatido, pactado, saqueado, conquistado y establecido asentamientos. Han alcanzado las costas inglesas y asediado las murallas de Par&iacute;s. &iquest;Cu&aacute;l ser&aacute; el pr&oacute;ximo objetivo de los guerreros n&oacute;rdicos? Muchas son las preguntas que los nuevos episodios tienen que resolver despu&eacute;s del impactante final de la tercera temporada.</p>\r\n\r\n<p>Quien seguro que no tendr&aacute; tiempo para aburrirse es<strong>&nbsp;Ragnar&nbsp;</strong>(Travis Fimmel), ya que en esta cuarta entrega deber&aacute; hacer frente a enemigos internos y externos, entre ellos su hermano&nbsp;<strong>Rollo</strong>, que pasar&aacute; a formar parte de la nobleza franca. El trono de este rey vikingo es demasiado ansiado por todos aquellos que le rodean y la cuarta temporada se centra, entre otras cosas, en la sucesi&oacute;n de&nbsp;<strong>Ragnar</strong>.</p>\r\n\r\n<p><strong>Travis Fimmel</strong>&nbsp;comparte reparto con&nbsp;<strong>Clive Standen</strong>&nbsp;(<em>El martillo de los dioses</em>),<strong>Katheryn Winnick&nbsp;</strong>(<em>Amor y otras drogas</em>),&nbsp;<strong>Gustaf Skarsg&aring;rd&nbsp;</strong>(<em>Camino a la libertad</em>),<strong>Alyssa Sutherland&nbsp;</strong>(<em>El diablo viste de Prada</em>) y&nbsp;<strong>Alexander Ludwig&nbsp;</strong>(L<em>os juegos del hambre</em>)&nbsp;<strong>Kevin Durand</strong>(The Strain, Perdidos) ha confirmado su presencia en varios de los episodios de esta cuarta entrega.</p>\r\n\r\n<p>Fuente:&nbsp;canaltnt.es</p>\r\n', 'post-1456014639.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/3PK2tIyENVA" frameborder="0" allowfullscreen></iframe>', 'Vikingos', '2016-02-19', '2016-02-19 15:44:00', 0, 0, 125, 1),
(129, 1, 'El-smartphone-más-barato-del-mundo-cuesta-menos-de-4$', 'El smartphone más barato del mundo cuesta menos de 4$', '', '<p>Tiene una pantalla de 4&quot;, 8GB de almacenamiento, 1GB de RAM, Android 5.1 y una c&aacute;mara de 3.2MP. Y solo cuesta 3,30 euros.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/freedom-251-movil-android-mas-barato-del-mundo.jpg" style="height:282px; width:500px" /></p>\r\n\r\n<p>Ringing Bells, una compa&ntilde;&iacute;a india, se prepara para lanzar al mercado el m&oacute;vil Android&nbsp;<a href="http://www.elconfidencial.com/android/">&nbsp;</a>m&aacute;s barato del planeta: Freedom 251. &iquest;El precio? 251 rupias, el equivalente a 3,30 euros. Y aunque no lo pareza, el terminal viene con unas especificaciones decentes: pantalla de 4&quot;, un procesador quad-core Snapdragon a 1,3 GHz y una bater&iacute;a de 1.450 mAh. Un almacenamiento de 8GB, 1GB de RAM y una c&aacute;mara trasera de 3,2MP completan la hoja t&eacute;cnica de este producto.</p>\r\n\r\n<p>Un equipo que, por el momento, va a ser complicado de encontrar en Espa&ntilde;a. Se vender&aacute; en India a partir de ma&ntilde;ana a las seis de la ma&ntilde;ana, hora local, y no vendr&aacute; con ning&uacute;n tipo de letra peque&ntilde;a: no hay que adherirse a ning&uacute;n plan ni firmar permanencia. S&oacute;lo hay que pagar las 251 rupias que costar&aacute; y que dan nombre al equipo.</p>\r\n\r\n<p>El tel&eacute;fono iba a entrar al mercado justo ayer, 18 de febrero de 2016, el&nbsp;sitio web est&aacute; ca&iacute;do&nbsp;por la ingente afluencia de curiosos y el p&uacute;blico quiere saber c&oacute;mo ha logrado esta&nbsp;empresa producir un m&oacute;vil&nbsp;tan&nbsp;econ&oacute;mico.<br />\r\n<a href="http://www.freedom251.com/">http://www.freedom251.com/</a><br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n', 'post-1456015991.jpeg', '', '', '', '2016-02-19', '2016-02-19 16:06:32', 0, 0, 126, 1),
(130, 1, 'Una-mujer-calmando-a-un-extraño-ha-conmovido-al-mundo', 'Una mujer calmando a un extraño ha conmovido al mundo', '', '<p>Hace un par de semanas, Ehab Taha, de 26 a&ntilde;os, de Canad&aacute;, iba en el transporte en el &aacute;rea metropolitana de la ciudad de Vancouver, cuando un hombre que &eacute;l mismo describe en Facebook como alguien &quot;que abusa de drogas o sufre una enfermedad mental&quot; comenz&oacute; a agredir&nbsp;en el vag&oacute;n donde iba.</p>\r\n\r\n<p>El hombre, cuyo nombre no se menciona, comenz&oacute; a comportarse de manera agresiva. Mientras todo el mundo estaba asustado, una mujer de 70 a&ntilde;os alarg&oacute; la mano, lo sujet&oacute; fuertemente hasta que &eacute;ste se calm&oacute;, se sent&oacute; en silencio y se le rodaron las l&aacute;grimas.</p>\r\n\r\n<p>Ehab cuenta junto con la foto publicada en Facebook, que m&aacute;s tarde habl&oacute; con la mujer, ella dijo: &quot;Soy una madre, y &eacute;l necesitaba a alguien que lo tocase&quot;. Y ella se puso a llorar.</p>\r\n\r\n<p>La publicaci&oacute;n termina diciendo: &ldquo;<strong>No temas ni juzgues al extra&ntilde;o en el autob&uacute;s: la vida no siempre es buena para con todas las personas</strong>&ldquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id="fb-root">&nbsp;</div>\r\n\r\n<div class="fb-post">\r\n<div class="fb-xfbml-parse-ignore">\r\n<blockquote>\r\n<p>I saw the most incredible display of humanity on the sky train. A six foot five man suffering from drug abuse and\\or...</p>\r\nPosted by <a href="https://www.facebook.com/ehab.taha.1610">Ehab Taha</a> on&nbsp;<a href="https://www.facebook.com/ehab.taha.1610/posts/10156505975075615">martes, 2 de febrero de 2016</a></blockquote>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 'post-1456019196.jpeg', '', '', '', '2016-02-19', '2016-02-19 16:59:57', 0, 0, 127, 1),
(136, 3, 'Ryan-Reynolds-entrevista-a-Hugh-Jackman-y-sale-esta-genialdad', 'Ryan Reynolds entrevista a Hugh Jackman y sale esta genialidad', '', '<p>Ryan Reynolds entrevista a Hugh Jackman por&nbsp;el estreno de &quot;Volando alto&quot;. Juntar a estos magn&iacute;ficos actores ha sido una gran idea.&nbsp;&nbsp;</p>\r\n', 'post-1456110089.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/Rau2xJh-o24" frameborder="0" allowfullscreen></iframe>', '', '2016-02-20', '2016-02-20 18:14:50', 0, 0, 133, 1),
(131, 5, 'Esta-desesperada-situación-le-suena-a-cualquiera', 'Esta desesperada situación le suena a cualquiera', '', '<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12705369_1202928953064463_1618016325401552146_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12741993_1202928999731125_5046730353048844634_n%281%29.png" style="height:538px; width:500px" /><img alt="" src="/kcfinder/upload/images/12717527_1202929029731122_6702511902575003501_n.png" style="height:536px; width:500px" /><img alt="" src="/kcfinder/upload/images/12744268_1202929066397785_3839068719971342143_n.png" style="height:1068px; width:500px" /><img alt="" src="/kcfinder/upload/images/12745533_1202929123064446_4180982703234962072_n.png" style="height:1063px; width:500px" /><img alt="" src="/kcfinder/upload/images/12744268_1202929979731027_8468015834483325522_n.png" style="height:876px; width:500px" /><img alt="" src="/kcfinder/upload/images/12743637_1202929999731025_5627595206117105911_n.png" style="height:759px; width:500px" /></p>\r\n\r\n<p style="text-align:center">Creo que nos ha pasado a todos. Lo mejor ser&iacute;a dejar de lado nuestras paranoias.&nbsp;</p>\r\n', 'post-1456102451.png', '', '', '', '2016-02-20', '2016-02-20 16:07:32', 0, 0, 128, 1),
(132, 6, 'Con-esta-sencilla-acción-puedes-cambiar-el-mundo', 'Con esta sencilla acción puedes cambiar el mundo', '', '<p>&quot;Las peque&ntilde;as cosas s&iacute; importan. Si no puedes hacer bien las cosas peque&ntilde;as, nunca podr&aacute;s hacer bien las cosas grandes.&quot;</p>\r\n', 'post-1456103701.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/oxvuqw3lZMk" frameborder="0" allowfullscreen></iframe>', '', '2016-02-20', '2016-02-20 16:28:22', 0, 0, 129, 1),
(133, 5, 'Sin-duda-el-peor-padre-del-año', 'Sin duda el peor padre del año', '', '', 'post-1456105432.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/RJFyZmB3WTo" frameborder="0" allowfullscreen></iframe>', '', '2016-02-20', '2016-02-20 16:57:13', 0, 0, 130, 1),
(134, 6, 'Grandes-palabras-de-un-"loco"', 'Grandes palabras de un "loco"', '', '<p>A veces los locos est&aacute;n m&aacute;s cuerdos que los cuerdos. Este hombre es realmente fant&aacute;stico, &iexcl;debes escuchar sus magn&iacute;ficas palabras!</p>\r\n', 'post-1456106680.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/U-3-JYRTXJQ" frameborder="0" allowfullscreen></iframe>', '', '2016-02-20', '2016-02-20 17:18:01', 0, 0, 131, 1),
(135, 5, 'Sobredosis-de-amor', 'Sobredosis de amor', '', '<p>Esta incre&iacute;ble parodia ha sido hecha por Korah (El canal de Korah).</p>\r\n', 'post-1456107491.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/5ix76Fdcz7w" frameborder="0" allowfullscreen></iframe>', '', '2016-02-20', '2016-02-20 17:31:32', 0, 0, 132, 1),
(137, 3, 'Por-fin-llega-la-segunda-temporada-de-Daredevil', 'Por fin llega la segunda temporada de Daredevil', '', '<p>Por fin llega la esperada segunda temporada de nuestro querido Daredevil. La fecha de estreno es el 18 de marzo de este mismo a&ntilde;o, y el tr&aacute;iler tiene una gran pinta. Esperamos que la serie no nos decepcione, aunque es imposible si est&aacute; realmente igual que el c&oacute;mic.</p>\r\n', 'post-1456110934.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/QHmu3G8dZaM" frameborder="0" allowfullscreen></iframe>', '', '2016-02-20', '2016-02-20 18:28:55', 0, 0, 134, 1),
(138, 3, 'Así-sería-el-tráiler-de-Guardianes-de-la-Galaxia-al-estilo-de-Escuadrón-Suicida', 'Así sería el tráiler de Guardianes de la Galaxia al estilo de Escuadrón Suicida', '', '', 'post-1456111919.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/Rf-RDJXgpco" frameborder="0" allowfullscreen></iframe>', '', '2016-02-20', '2016-02-20 18:45:20', 0, 0, 135, 1);
INSERT INTO `cp_post` (`id`, `category`, `url_name`, `title`, `description`, `large_text`, `image`, `slider_image`, `video`, `teg`, `createdate`, `add-date`, `slider`, `favorite`, `pos`, `active`) VALUES
(139, 1, 'Marina-Marroquí,-la-superviviente-de-la-violencia-de-género', 'Marina Marroquí, la superviviente de la violencia de género', '', '<p>Esta joven sufri&oacute; de violencia de g&eacute;nero 4 a&ntilde;os de su vida, desde los 15 hasta los 19 a&ntilde;os. Ahora es una &#39;superviviente&#39;, como dice ella, y se dedica a concienciar &nbsp;a la gente, sobre todo a los adolescentes, y va a los colegios para dar charlas muy interesantes y productivas.&nbsp;</p>\r\n\r\n<p>Aqu&iacute; tienes una parte de una de sus charlas:</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/wXj5nqCjsA8" width="560"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">Si has sufrido, sufres, ves a alguien sufrir o sabes de alguien que sufre la violencia de g&eacute;nero no dudes en<span style="font-size:28px"> </span><span style="font-size:36px"><cite>llamar</cite> </span>al&nbsp;<cite><span style="font-size:36px">016</span><span style="font-size:14px">.</span></cite></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', 'post-1456115661.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ZdjTFdbm0IA" frameborder="0" allowfullscreen></iframe>', '', '2016-02-20', '2016-02-20 19:47:42', 0, 0, 136, 1),
(140, 2, '¿Sabías-que...?', '¿Sabías que...?', '', '<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/dfhd.jpg" style="height:433px; width:500px" /><img alt="" src="/kcfinder/upload/images/dsgsgsd.jpg" style="height:433px; width:500px" /><img alt="" src="/kcfinder/upload/images/etat.jpg" style="height:433px; width:500px" /><img alt="" src="/kcfinder/upload/images/fgsgsd.jpg" style="height:433px; width:500px" /><img alt="" src="/kcfinder/upload/images/jok.jpg" style="height:433px; width:500px" /><img alt="" src="/kcfinder/upload/images/preview.jpg" style="height:433px; width:500px" /><img alt="" src="/kcfinder/upload/images/rgsg.jpg" style="height:433px; width:500px" /><img alt="" src="/kcfinder/upload/images/wewtsts.jpg" style="height:433px; width:500px" /></p>\r\n', 'post-1456157070.jpeg', '', '', '', '2016-02-21', '2016-02-21 07:17:51', 0, 0, 137, 1),
(141, 3, 'Alicia-a-través-del-espejo-(2016)-Trailer', 'Alicia a través del espejo (2016) Trailer', '', '<p><strong>Estreno en USA</strong>: 27/05/2016<br />\r\n<strong>Estreno en Espa&ntilde;a:</strong>&nbsp;27/05/2016&nbsp;</p>\r\n\r\n<p>Sinopsis:</p>\r\n\r\n<p>Alicia (Wasikowska) regresa al extravagante Submundo y retrocede en el tiempo para salvar al Sombrerero Loco (Depp).</p>\r\n', 'post-1456335459.jpeg', '', '<iframe width="853" height="480" src="https://www.youtube.com/embed/0twKRa3idcQ" frameborder="0" allowfullscreen></iframe>', '', '2016-02-23', '2016-02-23 08:51:00', 0, 0, 138, 1),
(142, 3, '9-cosas-que-debes-saber-sobre-el-diario-de-Noa', '9 cosas que debes saber sobre el diario de Noa', '', '<p>1. El director Nick Cassavetes eligi&oacute; a Ryan Gosling como Noa porque no era el t&iacute;pico guaperas. Quer&iacute;a que interpretase ese papel porque no se parec&iacute;a a ning&uacute;n joven de Hollywood, pensaba que era un chico normal &nbsp;y por eso le gust&oacute; tanto.</p>\r\n\r\n<p>2. Ryan tuvo que ponerse lentillas marrones porque James Garner, el que hac&iacute;a de Noa en la vejez, ten&iacute;a los ojos marrones.</p>\r\n\r\n<p>3. La pel&iacute;cula se ha grabado al rev&eacute;s. Primero grabaron las escenas de cuando la pareja est&aacute; ya en la vejez, y posteriormente se rodaron las escenas de su juventud, por lo que Ryan tuvo que adelgazar 10 kg y quitarse la barba de Noa.</p>\r\n\r\n<p>4. Seguramente todos record&eacute;is esa escena rom&aacute;ntica en el lago donde se hallan un mont&oacute;n de aves. A la hora de empezar a grabar la pel&iacute;cula los productores dijeron que era imposible encontrar aves. Por ello, el director, con su propio dinero, tuvo que comprar aves y criarlas cerca del lago para que se sintiese a gusto.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/thenotebook018le5.png" style="height:213px; width:500px" /></p>\r\n\r\n<p>5. Al principio los actores principales iban a ser Justin Timberlake y Britney Spears.</p>\r\n\r\n<p>6. Aunque en la pel&iacute;cula la relaci&oacute;n de la pareja parezca perfecta, no lo es. En la vida real Ryan Gosling y McAdams se odian. Llegaron hasta tal punto que Ryan pidi&oacute; que trajeran a otra chica para que pudiese ensayar con ella. Lo que consigui&oacute; el director ha sido algo &eacute;pico, hizo que Rachel y Ryan se gustasen al final, y estuviron dos a&ntilde;os juntos.</p>\r\n\r\n<p>7. Una de las escenas m&aacute;s rom&aacute;nticas de la pel&iacute;cula fue una improvisaci&oacute;n de parte del actor.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/giphy%20%281%29.gif" style="height:207px; width:500px" /></p>\r\n\r\n<p>8. El diario de Noa es la pel&iacute;cula que m&aacute;s &eacute;xito ha tenido entre todas las&nbsp;&nbsp;pel&iacute;culas en las que ha participado Ryan Gosling.</p>\r\n\r\n<p>9. La mesa en la que cenan Allie y Noa la ha hecho Ryan. El actor decidi&oacute; hacer bien su papel y sigui&oacute; la especialidad del personaje. Por ello fue a vivir en Carolina del Norte y fue ah&iacute; donde aprendi&oacute; un poco sobre la carpinter&iacute;a.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'post-1456338144.jpeg', '', '', '', '2016-02-23', '2016-02-23 09:35:45', 0, 0, 139, 1),
(143, 3, 'Secretos-de-El-renacido', 'Secretos de El renacido', '', '<p>Tan solo queda una semana para los Oscars, y &quot;El renacido&quot; nos revela sus secretos.</p>\r\n', 'post-1456339441.jpeg', '', '<iframe width="420" height="315" src="https://www.youtube.com/embed/npWM5hkeW1g" frameborder="0" allowfullscreen></iframe>', '', '2016-02-23', '2016-02-23 09:57:22', 0, 0, 140, 1),
(144, 6, 'Empieza-a-cortar-una-hoja-y-mira-lo-que-ocurre-después', 'Empieza a cortar una hoja y mira lo que ocurre después', '', '<p>Esta persona pone un trozo de pl&aacute;stico en su m&oacute;vil y lo que ocurre despu&eacute;s es realmente sorprendente.&nbsp;</p>\r\n', 'post-1456340237.jpeg', '', '<iframe width="420" height="315" src="https://www.youtube.com/embed/UgjZx5NFl0Y" frameborder="0" allowfullscreen></iframe>', '', '2016-02-23', '2016-02-23 10:10:38', 0, 0, 141, 1),
(145, 6, 'Mira-estas-preciosas-ilustraciones', 'Mira estas preciosas ilustraciones', '', '<p>&quot;Ilovedoodle&quot;, Liam Heng Sween, es un ilustrador y dise&ntilde;ador gr&aacute;fico que ha creado estas preciosas ilustraciones. La vida cotidiana es su principal inspiraci&oacute;n y con ello logra convertirse en un maestro en Internet.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/1-82.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/2-74.jpg" style="height:501px; width:500px" /><img alt="" src="/kcfinder/upload/images/3-67.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/5-57.jpg" style="height:496px; width:500px" /><img alt="" src="/kcfinder/upload/images/4-61.jpg" style="height:496px; width:500px" /><img alt="" src="/kcfinder/upload/images/7-45.jpg" style="height:499px; width:500px" /><img alt="" src="/kcfinder/upload/images/8-42.jpg" style="height:499px; width:500px" /><img alt="" src="/kcfinder/upload/images/9-40.jpg" style="height:496px; width:500px" /><img alt="" src="/kcfinder/upload/images/10-39.jpg" style="height:496px; width:500px" /><img alt="" src="/kcfinder/upload/images/poster_mockup_1_0a991df5-8a4d-4c9b-9fe3-2c083a829259_1024x1024.jpg" style="height:676px; width:500px" /><img alt="" src="/kcfinder/upload/images/poster_mockup_1_1c60c449-b840-4cb4-9b9b-2bd0441f39a9_1024x1024.jpg" style="height:648px; width:500px" /><img alt="" src="/kcfinder/upload/images/poster_mockup_1_74363a84-81de-4dc8-bd58-2d00e4cd7b4b_1024x1024.jpg" style="height:652px; width:500px" /><img alt="" src="/kcfinder/upload/images/poster_mockup_1_44492562-7290-4a35-86a9-6eea94e1e189_1024x1024.jpg" style="height:661px; width:500px" /><img alt="" src="/kcfinder/upload/images/poster_mockup_11_1024x1024.jpg" style="height:669px; width:500px" /><img alt="" src="/kcfinder/upload/images/poster_mockup_MD_8c429a23-eaec-4cc5-a036-d7453a898994_1024x1024.jpg" style="height:658px; width:500px" /></p>\r\n', 'post-1456441516.jpeg', '', '', '', '2016-02-24', '2016-02-24 14:18:37', 0, 0, 142, 1),
(146, 4, 'Observa-todo-lo-que-tienes-que-correr-para-quemar-las-calorías-de-estos-alimentos', 'Observa todo lo que tienes que correr para quemar las calorías de estos alimentos', '', '<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/15467-NQ4S5R.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/16065-NQG4F6.jpg" style="height:455px; width:500px" /><img alt="" src="/kcfinder/upload/images/37301-O170NV.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/drinks-icon.jpg" style="height:375px; width:500px" /><img alt="" src="/kcfinder/upload/images/fwx-mcdonalds-improves-its-fries.jpg" style="height:409px; width:500px" /><img alt="" src="/kcfinder/upload/images/Snickers.jpg" style="height:276px; width:500px" /><img alt="" src="/kcfinder/upload/images/beer.jpg" style="height:412px; width:500px" /></p>\r\n', 'post-1456443976.jpeg', '', '', '', '2016-02-24', '2016-02-24 14:59:37', 0, 0, 143, 1),
(147, 4, 'Fuentes-de-vitamina-que-todo-vegetariano-o-vegano-debe-conocer', 'Fuentes de vitamina que todo vegetariano o vegano debe conocer', '', '<p>Las prote&iacute;nas son los bloques de construcci&oacute;n de la vida. Se trata de uno de los bloques de construcci&oacute;n de los tejidos del cuerpo, e incluso funcionan como fuente de combustible para el desarrollo adecuado del cuerpo.</p>\r\n\r\n<p>Cuando se digiere, la prote&iacute;na se descompone en amino&aacute;cidos. Seg&uacute;n el Instituto de Medicina, las mujeres necesitan un m&iacute;nimo de 46 gramos y los hombres requieren por lo menos 56 gramos de prote&iacute;na al d&iacute;a.&nbsp;</p>\r\n\r\n<p>Las principales fuentes de prote&iacute;nas son las carnes, productos l&aacute;cteos, pescado y huevos. Sin embargo, esto no significa que los vegetarianos no pueden satisfacer sus necesidades de prote&iacute;nas. Casi todos los alimentos, excepto los productos de alimentos altamente refinados, alcohol y aceites, contienen algo de prote&iacute;na.&nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/56cdba4c54e33_ipurestockxtwo682433.jpg" style="height:349px; width:500px" /></p>\r\n\r\n<p>Adem&aacute;s, los beneficios de no comer carne para la prote&iacute;na son numerosas. Por ejemplo, puede ayudar a evitar el alto contenido de grasa saturada y colesterol en las fuentes de prote&iacute;nas de origen animal. Tambi&eacute;n es bueno para el medio ambiente y ayuda a ahorrar dinero.</p>\r\n\r\n<p>Varios alimentos tienen un alto contenido de prote&iacute;na que los vegetarianos pueden incluir f&aacute;cilmente en sus dietas. Si bien puede ser dif&iacute;cil obtener una dosis completa de prote&iacute;na por d&iacute;a de una fuente, incluyendo en tu dieta algunos ​​alimentos que no est&aacute;n basados en animales y que son ricos en prote&iacute;nas pueden ayudar a alcanzar tus metas de prote&iacute;nas.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/healthy_fruits_background-normal.jpg" style="height:375px; width:500px" /></p>\r\n\r\n<p>Las 10 mejores fuentes de prote&iacute;nas para los vegetarianos</p>\r\n\r\n<p>- Leche de soja</p>\r\n\r\n<p>- Alubias</p>\r\n\r\n<p>- Lentejas</p>\r\n\r\n<p>- Edamame</p>\r\n\r\n<p>- Guisantes verdes</p>\r\n\r\n<p>- Mantequilla de man&iacute;</p>\r\n\r\n<p>- Yogurt griego</p>\r\n\r\n<p>- Tofu</p>\r\n\r\n<p>- Quinoa</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12642477_10154607784143345_852445100985298207_n.jpg" style="height:346px; width:500px" /></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:26px">&iexcl;Dejemos de lado el especismo!</span></p>\r\n', 'post-1456444467.jpeg', '', '', '', '2016-02-24', '2016-02-24 15:07:48', 0, 0, 144, 1),
(148, 4, 'Lo-que-comemos-los-veganos', 'Lo que comemos los veganos', '', '<p>Cada d&iacute;a hay m&aacute;s gente vegana o vegetariana por el mundo, y claramente TODOS hemos recibido preguntas como: &iquest;Y qu&eacute; comes? &iquest;No mueres de hambre? &iquest;C&oacute;mo puedes vivir sin la carne? &iquest;Solo te alimentas con lechuga? La lista ser&iacute;a enorme si siguiera escribiendo. Pues bien, aqu&iacute; traigo la soluci&oacute;n. Los veganos no solo comemos esto:</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/155307039.jpg" style="height:366px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">En nuestra variada dieta tambi&eacute;n entran comidas como estas:</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/chocolate-layer-cakewith-nut-butter-chocolate-ganache-Recipe-by-VeganRicha-2107.jpg" style="height:750px; width:500px" /><img alt="" src="/kcfinder/upload/images/mushoom-lentil-lasagna-2.jpg" style="height:666px; width:500px" /><img alt="" src="/kcfinder/upload/images/peanutnoodles-2.jpg" style="height:376px; width:500px" /><img alt="" src="/kcfinder/upload/images/sweet-potato-chickpea-burger-3816-001.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o2hqxy6hjx1sreykbo1_500.jpg" style="height:625px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o2yw1j0qVt1t9ijf4o1_1280.jpg" style="height:667px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o31ce6Xqyy1tirpyoo1_500%281%29.jpg" style="height:750px; width:500px" /><img alt="" src="/kcfinder/upload/images/tumblr_o2534sjyLQ1ttakijo1_1280.png" style="height:501px; width:500px" /><img alt="" src="/kcfinder/upload/images/Galletas-Oreo.jpg" style="height:329px; width:500px" /></p>\r\n\r\n<p>Creo que con estas im&aacute;genes ha quedado bien claro que la dieta vegana o vegetariana no es solo comer ensaladas. Si buscas informaci&oacute;n sobre ello comprobar&aacute;s que es una dieta equilibrada. Como habr&aacute;s visto en las fotos la dieta vegana no significa que sea una dieta saludable, siempre tendremos mucho, much&iacute;simo az&uacute;car para consumir.&nbsp;</p>\r\n', 'post-1456447876.jpeg', '', '', '', '2016-02-24', '2016-02-24 16:04:37', 0, 0, 145, 1),
(149, 3, '¡Steven-S.-DeKnight-dirigirá-''Pacific-Rim-2''!', '¡Steven S. DeKnight dirigirá ''Pacific Rim 2''!', '', '<p style="text-align:center">Por fin la secuela &#39;<strong>Pacific Rim 2</strong>&#39; parece tomar el impulso necesario para seguir adelante. Seg&uacute;n informa Deadline, Legendary Pictures y Universal Pictures han encontrado director para la secuela en&nbsp;Steven S. DeKnight, conocido principalmente por su labor en las series&nbsp;<em>&#39;Spartacus&#39;</em>&nbsp;y&nbsp;<em>&#39;Marvel&rsquo;s Daredevil&#39;</em>. El cineasta realizar&aacute; su debut en un largometraje con esta secuela de la pel&iacute;cula de 2013.</p>\r\n\r\n<p style="text-align:center">Todo apuntaba a que el propio&nbsp;Guillermo del Toro&nbsp;dirigir&iacute;a la pel&iacute;cula, pero el director confirm&oacute; v&iacute;a Twitter la contrataci&oacute;n del nuevo director. Eso s&iacute;, del Toro seguir&aacute; involucrado como guionista y productor.</p>\r\n\r\n<p style="text-align:center">Inicialmente prevista para el 7 de abril de 2017, la pel&iacute;cula fue m&aacute;s tarde retrasada al 4 de agosto para finalmente ser directamente eliminada del calendario del estudio. El comunicado que en su d&iacute;a public&oacute; Universal dec&iacute;a que traer&iacute;an la secuela cuando tuvieran el equipo creativo perfecto para llevarla a cabo, algo que parece est&aacute; sucediendo con la contrataci&oacute;n de&nbsp;Steven S. DeKnight.</p>\r\n\r\n<p style="text-align:center">Protagonizada por&nbsp;Charlie Hunnam,&nbsp;Idris Elba,&nbsp;Rinko Kikuchi,&nbsp;Charlie Day,&nbsp;Robert Kazinsky,&nbsp;Max Martini&nbsp;y&nbsp;Ron Perlman, &#39;<em>Pacific Rim</em>&#39; recaud&oacute; 411 millones de d&oacute;lares en todo el mundo para un presupuesto de 190 millones. Le salv&oacute; la taquilla internacional, pues en los Estados Unidos tan solo recaud&oacute; 101 millones.</p>\r\n\r\n<p>Fuente: elseptimoarte</p>\r\n', 'post-1456498526.jpeg', '', '', '', '2016-02-25', '2016-02-25 06:08:47', 0, 0, 146, 1),
(150, 4, 'Los-tatuajes-más-impresionantes', 'Los tatuajes más impresionantes', '', '<p>A casi todos nos encantan los tatuajes, y muchos de nosotros nos queremos hacer uno o varios pero no sabemos con qu&eacute; figura podemos pasar el resto de nuestra vida. Aqu&iacute; te dejo unos cuantos tatuajes realmente preciosos para ayudarte a decidir:</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Alex-Bawn-11-620x620.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/blackwork-hand-poke-blame-max.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/Brandon-Crone-10.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/Alex-Bawn-13.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/Brandon-Crone-5.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/Brandon-Crone-13.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/Chuck-Loris-blast-over-1.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/lee-stewart-brush-stroke.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/LOiseau-2.jpg" style="height:732px; width:500px" /><img alt="" src="/kcfinder/upload/images/LOiseau-9.jpg" style="height:829px; width:500px" /><img alt="" src="/kcfinder/upload/images/seanfromtexas-tattoo.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/sketch-tattoos-nomi-chi.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/soltattoo-single-needle.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/yogi-barrett-mash-up.jpg" style="height:500px; width:500px" /></p>\r\n', 'post-1456533336.jpeg', '', '', '', '2016-02-25', '2016-02-25 15:48:57', 0, 0, 147, 1),
(151, 2, '¿Sabías-que-la-forma-correcta-de-colgar-los-cuadros-es-esta?', '¿Sabías que la forma correcta de colgar los cuadros es esta?', '', '', 'post-1456533693.jpeg', '', '<iframe width="640" height="480" src="https://www.youtube.com/embed/ZvslhufFps4" frameborder="0" allowfullscreen></iframe>', '', '2016-02-25', '2016-02-25 15:54:54', 0, 0, 148, 1),
(152, 5, 'Kanye-West-se-queda-dormido-mientras-está-de-compras-y-mira-lo-que-pasa', 'Kanye West se queda dormido mientras está de compras y mira lo que pasa', '', '<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/1280836_1209212472436111_5481521775080705078_n.jpg" style="height:281px; width:500px" /><img alt="" src="/kcfinder/upload/images/1508515_1209212362436122_6614841065517676577_n.jpg" style="height:284px; width:500px" /><img alt="" src="/kcfinder/upload/images/1531864_1209212349102790_4633086399390397959_n.jpg" style="height:282px; width:500px" /><img alt="" src="/kcfinder/upload/images/1891091_1209212562436102_6540227602968441858_n.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/1909883_1209212382436120_6508514698155084656_n.jpg" style="height:339px; width:500px" /><img alt="" src="/kcfinder/upload/images/1936320_1209212389102786_6477688501634208262_n.jpg" style="height:282px; width:500px" /><img alt="" src="/kcfinder/upload/images/10253987_1209211745769517_2758338845394100688_n.jpg" style="height:282px; width:500px" /><img alt="" src="/kcfinder/upload/images/10372558_1209212492436109_1244954408345228330_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/10624618_1209212552436103_9061909215202151821_n.jpg" style="height:282px; width:500px" /><img alt="" src="/kcfinder/upload/images/12661890_1209212549102770_5579612276742416539_n.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12718134_1209212345769457_8142209726176987037_n.png" style="height:340px; width:500px" /><img alt="" src="/kcfinder/upload/images/12734168_1209212489102776_5045190363527669754_n.jpg" style="height:682px; width:500px" /><img alt="" src="/kcfinder/upload/images/12742678_1209212392436119_4872414200157238947_n.jpg" style="height:725px; width:500px" /><img alt="" src="/kcfinder/upload/images/12743942_1209211752436183_883527901819852504_n.jpg" style="height:281px; width:500px" /><img alt="" src="/kcfinder/upload/images/12743949_1209212625769429_2162304274229127904_n.jpg" style="height:379px; width:500px" /><img alt="" src="/kcfinder/upload/images/12744240_1209212619102763_7307756634375254601_n.jpg" style="height:375px; width:500px" /><img alt="" src="/kcfinder/upload/images/12744308_1209212602436098_5656949531949527432_n.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12745824_1209211712436187_5482193620805505219_n.png" style="height:282px; width:500px" /><img alt="" src="/kcfinder/upload/images/a.jpg" style="height:500px; width:500px" /></p>\r\n', 'post-1456682925.jpeg', '', '', '', '2016-02-27', '2016-02-27 09:22:06', 0, 0, 149, 1),
(153, 5, 'Y-el-Óscar-al-mejor-actor-es-para...', 'Y el Óscar al mejor actor es para...', '', '<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/tumblr_o33iki5nQm1tlb56zo1_400.gif" style="height:494px; width:500px" /></p>\r\n', 'post-1456683266.jpeg', '', '', '', '2016-02-27', '2016-02-27 09:27:47', 0, 0, 150, 1),
(154, 5, 'Los-mejores-amigos-del-mundo', 'Los mejores amigos del mundo', '', '', 'post-1456683384.jpeg', '', '', '', '2016-02-27', '2016-02-27 09:29:45', 0, 0, 151, 1),
(155, 1, '¡Leo-por-fin-gana-el-Oscar!', '¡Leo por fin gana el Oscar!', '', '<p>29 de febrero, un d&iacute;a muy importante para nuestro querido actor Leonardo DiCaprio. A los 41 a&ntilde;os de edad por fin ha podido ganar el famoso Oscar que tanto dese&aacute;bamos que recibiera. Este premio ha sido gracias a la pel&iacute;cula &quot;El renacido&quot;,&nbsp;&nbsp;la famosa pel&iacute;cula de Alejandro G. I&ntilde;&aacute;rritu que optaba a doce premios de la Academia de Hollywood y se ha llevado tres.&nbsp;Con cuatro nominaciones anteriores a sus espaldas, una de ellas en la categor&iacute;a de mejor actor de reparto a los 20 a&ntilde;os por &iquest;<em>A qui&eacute;n ama Gilbert Grape?</em>, su excepcional trabajo ya hab&iacute;a sido reconocido, entre otros premios, en los Globos de Oro, los Bafta o los Critics Choice.&nbsp;Y a la quinta fue la vencida.&nbsp;</p>\r\n\r\n<p>Por fin dejar&aacute;n de re&iacute;r del actor y de gastar bromas como esta:</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/569912e7d5bbd.jpeg" style="height:330px; width:500px" /></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:26px">&iexcl;Enhorabuena Leo!</span></p>\r\n', 'post-1456868967.jpeg', '', '', '', '2016-02-29', '2016-02-29 13:02:48', 0, 0, 152, 1),
(156, 6, 'Este-hombre-pide-por-Internet-que-retoquen-esta-foto.-Mira-lo-que-ocurre-después', 'Este hombre pide por Internet que retoquen esta foto. Mira lo que ocurre después', '', '<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/8253_1728130287430379_7322102681976331684_n.jpg" style="height:442px; width:500px" /><br />\r\n<img alt="" src="/kcfinder/upload/images/10157227_1728130224097052_2926349519136295431_n.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/10346317_1728130254097049_8979063979398367229_n.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/10626584_1728130187430389_2576505173896321015_n.jpg" style="height:478px; width:500px" /><img alt="" src="/kcfinder/upload/images/12074972_1728130214097053_5713408592891948835_n.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12794346_1728130267430381_4820572195857867185_n.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12794634_1728130180763723_5177832704495740115_n.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12794635_1728130324097042_5509577790772496863_n.jpg" style="height:503px; width:500px" /><img alt="" src="/kcfinder/upload/images/12799065_1728130310763710_4418343224277065066_n.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12799383_1728130194097055_8809477911510362304_n.jpg" style="height:499px; width:500px" /><img alt="" src="/kcfinder/upload/images/12809637_1728130300763711_729040487652688496_n.jpg" style="height:500px; width:500px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'post-1456869533.jpeg', '', '', '', '2016-02-29', '2016-02-29 13:12:14', 0, 0, 153, 1),
(157, 3, 'Batman-v-Superman', 'Batman v Superman', '', '<p><strong>Estreno en USA</strong>: 25/03/2016<br />\r\n<strong>Estreno en Espa&ntilde;a:</strong>&nbsp;23/03/2016&nbsp;</p>\r\n\r\n<p><strong>Reparto:</strong>&nbsp;Henry Cavill,&nbsp;Ben Affleck,&nbsp;Jesse Eisenberg,&nbsp;Amy Adams,&nbsp;Diane Lane,&nbsp;Laurence Fishburne,&nbsp;Gal Gadot,&nbsp;Jason Momoa,&nbsp;Jeremy Irons,&nbsp;Holly Hunter,&nbsp;Callan Mulvey,&nbsp;Tao Okamoto,&nbsp;Ray Fisher,&nbsp;Scoot McNairy,&nbsp;Jena Malone,&nbsp;Lauren Cohan&nbsp;</p>\r\n\r\n<p>Sinopsis:</p>\r\n\r\n<p>Temiendo por el descontrol de las acciones de un superh&eacute;roe convertido en Dios, el extraordinario vigilante de la ciudad de Gotham se enfrentar&aacute; al venerado salvador de Metr&oacute;polis, mientras que el mundo lucha por ver qu&eacute; h&eacute;roe necesita realmente. Con Batman y Superman enfrentados en una guerra, una nueva amenaza surgir&aacute; poniendo a la humanidad en el mayor peligro que el hombre ha conocido.</p>\r\n', 'post-1457056078.jpeg', '', '<iframe width="853" height="480" src="https://www.youtube.com/embed/8h3gexQNdCA" frameborder="0" allowfullscreen></iframe>', '', '2016-03-02', '2016-03-02 17:01:19', 0, 0, 154, 1),
(158, 3, '19-actores-que-se-han-quedado-sin-Oscar', '19 actores que se han quedado sin Oscar', '', '<p style="text-align: center;">Johnny Depp</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/131.jpg" style="height:313px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Liam Neeson</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/liam-neeson-008.jpg" style="height:300px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">James Dean</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/1380551207002-inidc5-67eaxclj76c19ssbpgs0-original.jpg" style="height:263px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Amy Adams</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/amy-adams.jpg" style="height:375px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Bradley Cooper</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/bradley_0.jpg" style="height:287px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Brad Pitt</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/brad-pitt-bisexual1.jpg" style="height:313px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Cary Grant</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Cary-Grant_The-Epitome-of-Grace_HD_768x432-16x9.jpg" style="height:281px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Charles Chaplin</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/chaplin.jpg" style="height:281px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Edward Norton</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/edward_norton1.jpg" style="height:313px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Gary Oldman</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/gary-oldman000.jpg" style="height:181px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Harrison Ford</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Harrison-Ford-harrison-ford-33227740-600-896.jpg" style="height:747px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Joaquin Phoenix</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Joaquin-Phoenix-ComboGamer.jpg" style="height:375px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">John Travolta</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/johntravolta.jpg" style="height:375px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Mark Wahlberg</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Mark%20Wahlberg.jpg" style="height:281px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Ralph Fiennes</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Ralph%20Fiennes.jpg" style="height:375px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Robert Downey Jr.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Robert%20Downey%20Jr..jpg" style="height:309px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Tom Cruise</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tom-cruise-playboy-interview-660.jpg" style="height:281px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Will Smith</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Will-Smith.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">Ryan Gosling</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Ryan-Gosling%281%29.jpg" style="height:294px; width:500px" /></p>\r\n\r\n<p style="text-align: center;">&nbsp;</p>\r\n', 'post-1457097797.jpeg', '', '', '', '2016-03-03', '2016-03-03 04:36:38', 0, 0, 155, 1),
(159, 1, 'Un-tigre,-un-oso-y-un-león,-tres-amigos-inseparables-desde-hace-15-años', 'Un tigre, un oso y un león, tres amigos inseparables desde hace 15 años', '', '<p>Se trata de tres fant&aacute;sticos amigos que tienen un v&iacute;nculo muy especial que les permite vivir en paz y armon&iacute;a.</p>\r\n\r\n<p>Los tres fueron rescatados de un traficante de drogas de Atlanta que los ten&iacute;a en su casa como si fueran mascotas ex&oacute;ticas.</p>\r\n\r\n<p><br />\r\nEn este lugar, el tigre, el le&oacute;n y el oso han sido bautizados como<strong>&nbsp;Shere Khan, Leo y Baloo,&nbsp;</strong>respectivamente, donde son conocidos por todos.&nbsp;<br />\r\n<br />\r\nCuando llegaron al Santuario, los tres&nbsp;estaban desnutridos, plagados de par&aacute;sitos y aterrorizados.&nbsp;<br />\r\n<br />\r\nQuiz&aacute; eso fue lo que les uni&oacute; y<strong>&nbsp;desde entonces, han permanecido juntos.&nbsp;</strong>Despu&eacute;s, fueron llevados al Santuario donde los tres se recuperaron y permanecieron juntos como si fueran hermanos.&nbsp;<br />\r\n<br />\r\nUna bonita historia que&nbsp;<strong>demuestra que la verdadera amistad no tiene l&iacute;mites.</strong></p>\r\n\r\n<p style="text-align: center;"><strong><img alt="" src="/kcfinder/upload/images/35%20%281%29.jpg" style="height:313px; width:500px" /><img alt="" src="/kcfinder/upload/images/35%20%282%29%281%29.jpg" style="height:313px; width:500px" /><img alt="" src="/kcfinder/upload/images/35%20%283%29.jpg" style="height:313px; width:500px" /><img alt="" src="/kcfinder/upload/images/35%20%285%29.jpg" style="height:313px; width:500px" /><img alt="" src="/kcfinder/upload/images/35%20%284%29.jpg" style="height:313px; width:500px" /></strong></p>\r\n\r\n<p><strong>(v&iacute;a: antena3)</strong></p>\r\n', 'post-1457098373.jpeg', '', '', '', '2016-03-03', '2016-03-03 04:46:14', 0, 0, 156, 1),
(160, 3, 'El-día-en-que-Marlon-Brando-rechazó-el-Oscar', 'El día en que Marlon Brando rechazó el Oscar', '', '<p>Marlon Brando&nbsp;gan&oacute; el Oscar al mejor actor gracias a su gran interpretaci&oacute;n en&nbsp;<em>El padrino</em>, pero cuando iban a entregarle el premio esto es lo que pas&oacute;:</p>\r\n', 'post-1457098586.jpeg', '', '<iframe src="https://player.vimeo.com/video/157654777?autoplay=1" width="500" height="375" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="https://vimeo.com/157654777">Marlon Brando rechaza el premio &Oacute;scar por El Padrino (HQ-Sub. Esp.)</a> from <a href="https://vimeo.com/user49103595">interesate.net</a> on <a href="https://vimeo.com">Vimeo</a>.</p>', '', '2016-03-03', '2016-03-03 04:49:47', 0, 0, 157, 1),
(161, 6, 'Hay-dos-tipos-de-personas,-¿de-qué-lado-estás?', 'Hay dos tipos de personas, ¿de qué lado estás?', '', '<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/1449500805_350347_1449501085_album_normal.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1449500805_350347_1449501158_album_normal.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1449500805_350347_1449501227_album_normal.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1449500805_350347_1449501447_album_normal.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1449500805_350347_1451994415_album_normal.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1449500805_350347_1451994643_album_normal.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1449500805_350347_1451994743_album_normal.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1449500805_350347_1451994941_album_normal.jpg" style="height:250px; width:500px" /><img alt="" src="/kcfinder/upload/images/1449500805_350347_1451994980_album_normal.jpg" style="height:250px; width:500px" /></p>\r\n', 'post-1457099128.jpeg', '', '', '', '2016-03-03', '2016-03-03 04:58:49', 0, 0, 158, 1),
(162, 6, 'Esto-es-realmente-impresionante...', 'Esto es realmente impresionante...', '', '', 'post-1457099718.jpeg', '', '<iframe width="420" height="315" src="https://www.youtube.com/embed/nAXIyFbvIl4" frameborder="0" allowfullscreen></iframe>', '', '2016-03-03', '2016-03-03 05:08:39', 0, 0, 159, 1),
(163, 1, 'PlayGround-intenta-abrirnos-los-ojos-una-vez-más', 'PlayGround intenta abrirnos los ojos una vez más', '', '<p>PlayGround intenta abrirnos los ojos una vez m&aacute;s. Con este v&iacute;deo defendiendo la libertad de esta especie en particular intenta crear conciencia para que luchemos a causa de la liberaci&oacute;n de estos animales, supongo que es porque sentimos m&aacute;s empat&iacute;a por &quot;animales no humanos&quot; que se parecen m&aacute;s a la especie humana, &iquest;pero qu&eacute; pasa con los dem&aacute;s animales no humanos? Los elefantes, los tigres, los delfines y dem&aacute;s &quot;objetos&quot; que se usan para crear espect&aacute;culo. Concienciemos al mundo y abramos sus ojos ya que no solo los humanos tenemos la capacidad de sentir. Busquemos la igualdad y la armon&iacute;a entre todos nosotros.</p>\r\n', 'post-1457235798.jpeg', '', '<iframe width="420" height="315" src="https://www.youtube.com/embed/lNbo1zK_XUA" frameborder="0" allowfullscreen></iframe>', '', '2016-03-04', '2016-03-04 18:56:39', 0, 0, 160, 1),
(164, 6, 'Fotografías-de-la-NASA-que-te-darán-ganas-de-conocer-el-universo', 'Fotografías de la NASA que te darán ganas de conocer el universo', '', '<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/443811-nasa-wallpaper-hd.jpg" style="height:313px; width:500px" /><img alt="" src="/kcfinder/upload/images/489855-nasa-space-images.jpg" style="height:281px; width:500px" /><img alt="" src="/kcfinder/upload/images/nasa-wallpaper2.jpg" style="height:375px; width:500px" /><img alt="" src="/kcfinder/upload/images/outer%20space%20stars%20galaxies%20nasa_www.wallpaperhi.com_18.jpg" style="height:281px; width:500px" /><img alt="" src="/kcfinder/upload/images/photo-1447433553548-2fc162393482.jpg" style="height:218px; width:500px" /><img alt="" src="/kcfinder/upload/images/photo-1454789548928-9efd52dc4031.jpg" style="height:236px; width:500px" /></p>\r\n', 'post-1457236645.jpeg', '', '', '', '2016-03-04', '2016-03-04 19:10:46', 0, 0, 161, 1),
(165, 5, 'Cuando-creíamos-que-ya-no-se-harían-más-bromas-sobre-Leo-van-y-hacen-esto', 'Cuando creíamos que ya no se harían más bromas sobre Leo van y hacen esto', '', '<p>Pens&aacute;bamos que las bromas de Leonardo DiCaprio hab&iacute;an quedado en el pasado ya que ya tiene su merecido Oscar, pero no, nos equivoc&aacute;bamos, ahora ha pasado a otro nivel: la gente ha empezado a photoshopear esta foto del actor en los Oscar y mira los resultados:</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/1A2xLnIl.jpg" style="height:375px; width:500px" /><img alt="" src="/kcfinder/upload/images/buzz-2.jpg" style="height:889px; width:500px" /><img alt="" src="/kcfinder/upload/images/Captura-de-pantalla-2016-03-02-a-las-16.35.14.png" style="height:510px; width:500px" /><img alt="" src="/kcfinder/upload/images/Captura-de-pantalla-2016-03-02-a-las-16.35.22.png" style="height:543px; width:500px" /><img alt="" src="/kcfinder/upload/images/Captura-de-pantalla-2016-03-02-a-las-16.35.29.png" style="height:519px; width:500px" /><img alt="" src="/kcfinder/upload/images/Captura-de-pantalla-2016-03-02-a-las-16.35.37.png" style="height:479px; width:500px" /><img alt="" src="/kcfinder/upload/images/Captura-de-pantalla-2016-03-02-a-las-16.35.49.png" style="height:499px; width:500px" /><img alt="" src="/kcfinder/upload/images/giphy%20%281%29%281%29.gif" style="height:889px; width:500px" /><img alt="" src="/kcfinder/upload/images/titanic-1.jpg" style="height:374px; width:500px" /><img alt="" src="/kcfinder/upload/images/vacation-1.jpg" style="height:889px; width:500px" /><img alt="" src="/kcfinder/upload/images/walter-1.jpg" style="height:889px; width:500px" /></p>\r\n', 'post-1457387525.png', '', '', '', '2016-03-06', '2016-03-06 13:05:26', 0, 0, 162, 1),
(166, 6, 'La-web-más-rara-de-Internet', 'La web más rara de Internet', '', '<p>Esta p&aacute;gina web es una de las m&aacute;s raras de todo Internet. Solo tienes que pinchar al bot&oacute;n que dice &quot;please&quot; y te lleva a distintas p&aacute;ginas de Internet que no tienen NING&Uacute;N sentido. Es algo aleatorio, te puede tocar una se&ntilde;ora que no para de comer manzanas, o unos gatos que no paran de saltar, o un tel&eacute;fono que no para de sonar... Son p&aacute;ginas de dominio propio, o sea, &quot;.com&quot; que valen dinero. Hay gente rica y con mucho tiempo libre que se dedica a hacer estas tonter&iacute;as.&nbsp;&Eacute;chale un vistazo:&nbsp;<a href="http://www.theuselessweb.com/">http://www.theuselessweb.com/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'post-1457388072.jpeg', '', '', '', '2016-03-06', '2016-03-06 13:14:33', 0, 0, 163, 1),
(167, 5, '¿Que-por-qué-amamos-a-Channing-Tatum?', '¿Que por qué amamos a Channing Tatum?', '', '', 'post-1457388436.gif', '', '<iframe width="853" height="480" src="https://www.youtube.com/embed/vQBWyLSbnw4" frameborder="0" allowfullscreen></iframe>', '', '2016-03-06', '2016-03-06 13:20:37', 0, 0, 164, 1),
(168, 5, 'Estos-niños-son-unos-expertos-en-jugar-al-escondite', 'Estos niños son unos expertos en jugar al escondite', '', '<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/10363564_1212628652094493_5612069432260414308_n.jpg" style="height:669px; width:500px" /><img alt="" src="/kcfinder/upload/images/10399220_1212628382094520_7277014259002127396_n.jpg" style="height:750px; width:500px" /><img alt="" src="/kcfinder/upload/images/12705511_1212628478761177_4202484121598916906_n.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12745707_1212628775427814_5553604712339794721_n.jpg" style="height:669px; width:500px" /><img alt="" src="/kcfinder/upload/images/12790851_1212628688761156_1780859151698451449_n.jpg" style="height:360px; width:500px" /><img alt="" src="/kcfinder/upload/images/12794397_1212629098761115_2545604502338237261_n.jpg" style="height:588px; width:500px" /><img alt="" src="/kcfinder/upload/images/12798948_1212628825427809_9202692733522361425_n.jpg" style="height:422px; width:500px" /><img alt="" src="/kcfinder/upload/images/12799108_1212629048761120_543887220663756348_n.jpg" style="height:566px; width:500px" /><img alt="" src="/kcfinder/upload/images/12801252_1212629132094445_4509379512320571232_n.jpg" style="height:669px; width:500px" /><img alt="" src="/kcfinder/upload/images/12801501_1212628725427819_2205631833187153296_n.jpg" style="height:598px; width:500px" /><img alt="" src="/kcfinder/upload/images/12801674_1212628525427839_5537608475198428280_n.jpg" style="height:375px; width:500px" /><img alt="" src="/kcfinder/upload/images/12803192_1212629082094450_8044593453313533479_n.jpg" style="height:503px; width:500px" /><img alt="" src="/kcfinder/upload/images/12804606_1212629005427791_8164663687146063494_n.jpg" style="height:375px; width:500px" /><img alt="" src="/kcfinder/upload/images/12805734_1212628858761139_8049048097929646703_n.jpg" style="height:669px; width:500px" /><img alt="" src="/kcfinder/upload/images/12806178_1212628905427801_2824296019259543179_n.jpg" style="height:375px; width:500px" /><img alt="" src="/kcfinder/upload/images/12814099_1212628338761191_1516056405995284254_n.jpg" style="height:668px; width:500px" /></p>\r\n', 'post-1457389423.jpeg', '', '', '', '2016-03-06', '2016-03-06 13:37:04', 0, 0, 165, 1),
(169, 3, 'El-crossover-entre-‘23-Jump-Street''-y-''Men-in-Black’-sale-adelante', 'El crossover entre ‘23 Jump Street'' y ''Men in Black’ sale adelante', '', '<p style="text-align:center">&iquest;Se acuerdan que el famoso ciberataque sufrido por Sony Pictures a finales de 2014 revel&oacute; entre otras muchas, muchas cosas que el estudio estaba tanteando muy seriamente la posibilidad de hacer un crossover entre las franquicias de&nbsp;<em>&#39;Men in Black&#39;</em>&nbsp;e<em>&#39;Infiltrados en clase/la universidad&#39;</em>?</p>\r\n\r\n<p style="text-align:center">Pues bien, despu&eacute;s de todo tipo de especulaciones a lo largo de 2015 Variety ahora confirma que el proyecto est&aacute; muy vivo. Tanto, que Sony pretende fijar el comienzo de su producci&oacute;n para el pr&oacute;ximo mes de junio con vistas a su estreno en verano de 2017.</p>\r\n\r\n<p style="text-align:center">Jonah Hill&nbsp;y&nbsp;Channing Tatum&nbsp;repetir&aacute;n como protagonistas al tiempo que ejercen de productores junto a&nbsp;Phil Lord,&nbsp;Chris Miller, Neal H. Moritz, Walter Parkes y Laurie MacDonald. Qui&eacute;nes seguro no ser&aacute;n de la partida son los agentes a los que interpretaron&nbsp;Will Smith&nbsp;y&nbsp;Tommy Lee Jones, dado que el estudio quiere aprovechar la oportunidad para reiniciar la franquicia de &#39;Men in Black&#39; y, por lo tanto, tiene previsto contratar a dos nuevos &quot;agentes&quot; que aporten un nuevo aire y por supuesto sean, sobre todo, m&aacute;s j&oacute;venes.</p>\r\n\r\n<p style="text-align:center">El director de las tres entregas de &#39;Men in Black&#39;,&nbsp;Barry Sonnenfeld, tampoco parece que estar&aacute; involucrado en el proyecto, pues seg&uacute;n el citado medio el estudio ya negocia con&nbsp;James Bobin, director de &#39;<strong>Alicia a trav&eacute;s del espejo</strong>&#39;, para que se haga cargo de la pel&iacute;cula.</p>\r\n\r\n<p style="text-align:center">Rodney Rothman, qui&eacute;n ya colabor&oacute; en el gui&oacute;n/la producci&oacute;n de filmes como&nbsp;<em>&#39;Paso de ti&#39;</em>,&nbsp;<em>&#39;Todo sobre mi desmadre&#39;</em>,<em>&#39;Eternamente comprometidos&#39;</em>,&nbsp;<em>&#39;La gran revancha&#39;</em>&nbsp;o sin ir m&aacute;s lejos &#39;<em>Infiltrados en la universidad</em>&#39;, es qui&eacute;n se ha encargado de firmar un gui&oacute;n que reci&eacute;n acaba de entregar y que, seg&uacute;n menciona Variety, est&aacute; guardado celosamente en las oficinas de Sony.</p>\r\n\r\n<p style="text-align:center">Por &uacute;ltimo mencionar que el citado Rothman debutar&aacute; como director con &#39;<strong>The Something</strong>&#39;, comedia espacial para adultos que tambi&eacute;n ha escrito y que protagonizar&aacute;n&nbsp;Zach Galifianakis,&nbsp;Seth Rogen&nbsp;y&nbsp;Bill Hader&nbsp;para una Universal Pictures que justamente hoy mismo le ha puesto fecha de estreno (en Estados Unidos): el 26 de mayo de 2017, el mismo d&iacute;a que &#39;<em>Pirates of the Caribbean: Dead Men Tell No Tales</em>&#39;.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/83402.jpg" style="height:300px; width:700px" /></p>\r\n\r\n<p>Via: Elseptimoarte</p>\r\n', 'post-1457473373.jpeg', '', '', '', '2016-03-07', '2016-03-07 12:56:14', 0, 0, 166, 1),
(170, 1, 'Kit-Harington-aclara-el-destino-de-Jon-Nieve-en-''Juego-de-Tronos''', 'Kit Harington aclara el destino de Jon Nieve en ''Juego de Tronos''', '', '<p>A escasos dos meses del estreno de la sexta temporada de&nbsp;<strong>&#39;Juego de Tronos&#39;</strong>, son muchos los fans de la serie que se preguntan qu&eacute; ocurrir&aacute; con el destino de Jon Nieve, personaje interpretado por&nbsp;Kit Harington. En una entrevista con TimeOut, el actor quiso dejar claro de una vez por todas qu&eacute; pasar&aacute; con su personaje en la nueva temporada que HBO estrenar&aacute; el pr&oacute;ximo 24 de abril (alerto posibles SPOILERS):</p>\r\n\r\n<p><em>&quot;Mira, no estar&eacute; en la serie m&aacute;s. Definitivamente no estoy en la nueva temporada. Film&eacute; algunas escenas estando muerto. Es uno de mis mejores trabajos. No tengo ni idea de lo que ocurrir&aacute; en la sexta temporada. S&eacute; el tiempo que ser&eacute; cad&aacute;ver, &iexcl;pero eso no puedo dec&iacute;rtelo!&quot;</em></p>\r\n\r\n<p>Basada en la popular serie de libros &#39;A Song of Ice and Fire&#39; de George R.R. Martin, hablamos de una una historia &eacute;pica cuya raz&oacute;n de ser es la lucha por el poder. El elenco de la quinta temporada incluye a&nbsp;Peter Dinklage,&nbsp;Nikolaj Coster-Waldau,&nbsp;Lena Headey,&nbsp;Emilia Clarke,&nbsp;Aidan Gillen,&nbsp;Diana Rigg,&nbsp;Natalie Dormer,&nbsp;Maisie Williams&nbsp;y&nbsp;Sophie Turner.</p>\r\n\r\n<p>David Benioff, D.B. Weiss, Carolyn Strauss, Frank Doelger, Bernadette Caulfield, Guymon Casady, Vince Gerardis y George R.R. Martin son los productores ejecutivos de esta serie cuya sexta temporada constar&aacute; de diez episodios.</p>\r\n\r\n<p>Via: Elseptimoarte</p>\r\n', 'post-1457541126.jpeg', '', '', 'Juego de tronos', '2016-03-08', '2016-03-08 07:45:27', 0, 0, 167, 1),
(171, 2, '¿Sabías-que-el-Día-Internacional-de-la-Mujer-tiene-una-gran-razón?', '¿Sabías que el Día Internacional de la Mujer tiene una gran razón?', '', '<p>La tradici&oacute;n de conmemorar un d&iacute;a para reivindicar la igualdad de derechos de la mujer es centenaria. Hoy, 8 de marzo, se celebra el <strong>D&iacute;a Internacional de la Mujer</strong>&nbsp;en la mayor&iacute;a de los pa&iacute;ses. Sin embargo, hasta llegar a esta fecha se ha transitado mucho. Por el camino, la efem&eacute;ride ha evolucionado, ha cambiado de fecha y ha perdido la palabra &lsquo;trabajadora&rsquo; de su cabecera, que surgi&oacute; con su esp&iacute;ritu y concepci&oacute;n sindicalista. El 8 de marzo -declarado oficialmente por la ONU en 1975- se reivindica a todas las mujeres y la igualdad completa de derechos. Y este 2016 todav&iacute;a hay poco que celebrar, pero mucho que reclamar: el fin de la discriminacion, que se erradiquen las violencias machistas, que se alcance la igualdad salarial, la universalizaci&oacute;n de los cuidados, la libre elecci&oacute;n...</p>\r\n', 'post-1457547330.jpeg', '', '', '', '2016-03-08', '2016-03-08 09:28:51', 0, 0, 168, 1);
INSERT INTO `cp_post` (`id`, `category`, `url_name`, `title`, `description`, `large_text`, `image`, `slider_image`, `video`, `teg`, `createdate`, `add-date`, `slider`, `favorite`, `pos`, `active`) VALUES
(172, 1, 'Estas-personas-transgéneras-te-van-a-sorprender', 'Estas personas transgéneras te van a sorprender', '', '<p style="text-align:center"><em>Transg&eacute;nero:&nbsp;es un t&eacute;rmino gen&eacute;rico que se emplea para describir a personas que en diferentes formas se identifican con el g&eacute;nero opuesto al de sus caracter&iacute;sticas fisiol&oacute;gicas de nacimiento. En ese sentido, su identidad es transg&eacute;nero.</em></p>\r\n\r\n<p style="text-align:center">Balian Buschbaum</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/Balian%20Buschbaum.jpeg" style="height:340px; width:500px" /></p>\r\n\r\n<p style="text-align:center">&iexcl;Este t&iacute;o bueno una vez fue mujer!</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">Sofia Burset</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/Sofia%20Burset.jpeg" style="height:282px; width:500px" /></p>\r\n\r\n<p style="text-align:center">Sofia Burset es la primera persona transg&eacute;nera que ha aparecido en la portada de la revista<em> Time</em>.</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">Alicia Liu</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/Alicia%20Liu.png" style="height:333px; width:500px" /></p>\r\n\r\n<p style="text-align:center">Su historia era un secreto hasta que uno de sus compa&ntilde;eros de clase decidi&oacute; hacerlo p&uacute;blico. Pero ella lo lleva completamente bien.</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">Carmen Carrera</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/Carmen%20Carrera.jpeg" style="height:266px; width:500px" /></p>\r\n\r\n<p style="text-align:center">En 2013 ped&iacute;an a Carmen Carrera a que fuese una de las &aacute;ngeles de Victoria&#39;s Secret.</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">Caityln Jenner</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/kziqetvz8obbv4j9mq6w.jpeg" style="height:281px; width:500px" /></p>\r\n\r\n<p style="text-align:center">Creo que todos la conocemos.</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">Lili Elbe</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/Lili%20Elbe.jpeg" style="height:281px; width:500px" /></p>\r\n\r\n<p style="text-align:center">Esta fue una de las primeras operaciones de cambio de sexo que ocurri&oacute; en 1930. La operaci&oacute;n se complic&oacute; mucho y Lili no pudo sobrevivir a ella.&nbsp;</p>\r\n\r\n<p style="text-align:center">Hay una preciosa pel&iacute;cula que narra su vida&nbsp;<em>La chica danesa</em>, te invito a que la veas.</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', 'post-1457548279.jpeg', '', '', '', '2016-03-08', '2016-03-08 09:43:41', 0, 0, 169, 1),
(173, 3, 'Christian-Bale:-', 'Christian Bale: ''''Heath Ledger arruinó mi trabajo en ''''El caballero oscuro''''', '', '<p>Christian Bale no est&aacute; satisfecho con su papel de Batman en El caballero oscuro. En una entrevista con Yahoo Movies, el actor gal&eacute;s confiesa que en parte, qued&oacute; eclipsado por el trabajo de Heath Ledger como Joker. &quot;Yo no acababa de clavarlo. Heath simplemente apareci&oacute; y arruin&oacute; por completo mis planes. Lo &uacute;nico que se me ocurr&iacute;a pensar es que era mucho m&aacute;s interesante que yo y lo que estaba haciendo&quot;, dice Bale. &quot;Cuando me pon&iacute;a el traje era como... me siento como un idiota a no ser que utilice esto como medio para expresar el monstruo que habita en Bruce, y al que deja salir por las noches&quot;, a&ntilde;ade. &quot;No me desenvolv&iacute; tan bien como esperaba a lo largo de la trilog&iacute;a. Aunque Christopher (Nolan) qued&oacute; satisfecho con el resultado, mi sientimiento es que podr&iacute;a haber dado m&aacute;s de m&iacute; mismo&quot;, dijo.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/giphy.gif" style="height:375px; width:500px" /><br />\r\n<br />\r\n(Fuente: 20minutos)</p>\r\n', 'post-1457548756.jpeg', '', '', 'Christian Bale', '2016-03-08', '2016-03-08 09:52:38', 0, 0, 170, 1),
(174, 3, 'Los-5-mejores-vídeojuegos-', 'Los 5 mejores vídeojuegos ', '', '<p>1. Grand Theft Auto V</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/dsgsd.jpg" style="height:313px; width:500px" /></p>\r\n\r\n<p>2. The Witcher 3: Wild Hunt</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/witcher3_en_wallpaper_the_witcher_3_wild_hunt_geralt_with_trophies_1920x1080_1449484678.jpg" style="height:281px; width:500px" /></p>\r\n\r\n<p>3. Metal Gear Solid V: The Phantom Pain</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/lf8srpksbaxxhqn5mcwt.jpg" style="height:273px; width:500px" /></p>\r\n\r\n<p>4. Fallout 4</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/panoramic_big.jpg" style="height:273px; width:500px" /></p>\r\n\r\n<p>5. Metal Kombat X</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/KTudb.jpg" style="height:281px; width:500px" /></p>\r\n', 'post-1457550015.jpeg', '', '', '', '2016-03-08', '2016-03-08 10:13:36', 0, 0, 171, 1),
(175, 3, 'http://interesate.net/detail/175/', '"The division" Probablemente el juego del año (Análisis)', '', '<p>Hoy, d&iacute;a 8 de marzo se estrena el juego &quot;The division&quot;, &nbsp;os traigo un an&aacute;lisis de peri&oacute;dicos de &quot;3Djuegos&quot;. Todo apunta a que va a ser un juego de mucho &eacute;xito al que tendremos que echarle muchas horas.</p>\r\n', 'post-1457585477.jpeg', 'slider-1458608488.jpeg', '<iframe width="853" height="480" src="https://www.youtube.com/embed/redM5hjuejc" frameborder="0" allowfullscreen></iframe>', 'The division', '2016-03-08', '2016-03-08 19:56:03', 1, 0, 172, 1),
(176, 3, 'Juego-de-tronos-Temporada-6-Trailer', 'Juego de tronos Temporada 6 Tráiler', '', '', 'post-1457587155.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/EI0ib1NErqg" frameborder="0" allowfullscreen></iframe>', 'Juego de tronos', '2016-03-08', '2016-03-08 20:32:36', 0, 0, 173, 1),
(177, 3, 'Spiderman-en-Capitan-america:-Civil-war-y-segundo-trailer', 'Spiderman en Capitán América: Civil war y segundo tráiler', '', '<p>Como hemos visto en el segundo tr&aacute;iler de<strong> &quot;Capit&aacute;n AmErica: Civil war&quot;</strong> al final del tr&aacute;iler aparece <strong>&quot;Spiderman&quot;(Tom Holland)</strong> quitando el escudo a <strong>&quot;Capit&aacute;n Am&eacute;rica&quot;(Chris Evans)</strong>. Para muchos habr&aacute; sido una sorpresa muy grande igual que para m&iacute;. &iquest;Nos traer&aacute;&nbsp;m&aacute;s sorpresas la pel&iacute;cula una vez que se estrene?. &iquest;Crees que &quot;Capit&aacute;n Am&eacute;rica&quot; e<strong>&nbsp;&quot;Iron man&quot;(&nbsp;Robert Downey Jr)</strong> al final luchar&aacute;n juntos contra otro enemigo?</p>\r\n\r\n<p>Este es el chico <strong>(Tom Holland)</strong> que har&aacute;&nbsp;de Spiderman en la pelicula de &quot;Capit&aacute;n Am&eacute;rica&quot;</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/tom-holland.jpg" style="height:570px; width:400px" /></p>\r\n', 'post-1457740346.jpeg', '', '<iframe src="https://player.vimeo.com/video/158538548?autoplay=1&color=f000d0" width="720" height="300" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'Capitan america', '2016-03-10', '2016-03-10 15:05:48', 0, 0, 174, 1),
(178, 1, 'El-criminal-más-guapo-del-mundo-acaba-de-salir-de-la-cárcel-y-ya-tiene-contrato-de-modelo', 'El criminal más guapo del mundo acaba de salir de la cárcel y ya tiene contrato de modelo', '', '<p>Jeremy Meeks se convirti&oacute; en la fantas&iacute;a de muchas mujeres y hombres cuando fue nombrado &quot;el criminal m&aacute;s sexy del mundo&quot;. Este joven se hizo viral en las redes cuando la polic&iacute;a comparti&oacute; su foto por Facebook para informar que el Jeremy pertenec&iacute;a a un grupo de personas que se dedicaban a asaltar con violencia.&nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/jeremy-meeks-y-su-hermano.jpg" style="height:393px; width:500px" /></p>\r\n\r\n<p>Ha cumplido su pena y ha salido de la c&aacute;rcel preparado para la fama. No le ha faltado tiempo para firmar con la agencia&nbsp;<a href="http://www.whitecrossmanagement.com/" target="_blank">White Cross Management,</a>&nbsp;que ya le promociona como &ldquo;actor y modelo&rdquo;.&nbsp;De hecho, seg&uacute;n el manager, incluso hay propuestas cinematogr&aacute;ficas encima de la mesa.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/meeks.jpg" style="height:375px; width:500px" /></p>\r\n', 'post-1457742080.jpeg', '', '', '', '2016-03-10', '2016-03-10 15:34:41', 0, 0, 175, 1),
(179, 1, '¡Ayudemos-a-Hanako!', '¡Ayudemos a Hanako!', '', '', 'post-1457822116.jpeg', '', '<iframe width="420" height="315" src="https://www.youtube.com/embed/S-ZPSB5tsZM" frameborder="0" allowfullscreen></iframe>', '', '2016-03-11', '2016-03-11 13:48:37', 0, 0, 176, 1),
(180, 5, 'Divertidas-fotos-para-los-que-amamos-COMER', 'Divertidas fotos para los que amamos COMER', '', '<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/1936349_1217691651588193_6560764242155014853_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/10337688_1217691668254858_997243153639443676_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/10389006_1217691071588251_749362912575686282_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12670920_1217691824921509_4301182215485598040_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12670925_1217691088254916_7546698739659687333_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12794346_1217691628254862_5429200783179165124_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12794486_1217691044921587_1397954653505291631_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12798937_1217691604921531_4636991133103365245_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12799050_1217691901588168_6816343317420209061_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12804749_1217691618254863_6120247411690487852_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12804769_1217691511588207_4144718697682716761_n.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12805837_1217691981588160_4086069758522528340_n.jpg" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12809509_1217691808254844_7050291575406918815_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12809611_1217691841588174_7966690532893767267_n.png" style="height:500px; width:500px" /><img alt="" src="/kcfinder/upload/images/12809702_1217691938254831_8949242906263609780_n.png" style="height:466px; width:500px" /><img alt="" src="/kcfinder/upload/images/12832357_1217692041588154_6701040676683062834_n.png" style="height:500px; width:500px" /></p>\r\n', 'post-1457822786.png', '', '', '', '2016-03-11', '2016-03-11 13:59:47', 0, 0, 177, 1),
(181, 2, '¿Sabías-que-estos-famosos-eran-familia?', '¿Sabías que estos famosos eran familia?', '', '<p style="text-align: center;">Tom Cruise y William Mapother</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Tom-Cruise-and-William-Mapother.jpg" style="height:525px; width:700px" /></p>\r\n\r\n<p style="text-align: center;">Kate Hudson y Goldie Hawn</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/kate-hudson1-t.jpg" style="height:419px; width:700px" /></p>\r\n\r\n<p style="text-align: center;">Shirley Maclaine y Warren Beatty</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/shirley-maclaine-warren-beatty-red-carpet-2011-photo-split.jpg" style="height:470px; width:700px" /></p>\r\n\r\n<p style="text-align: center;">Rip Torn y Sissy Spacek</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/59487895.jpg" style="height:466px; width:700px" /></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align: center;">Jason Schwartzman, Sofia Coppola y Nicolas Cage</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Screen-Shot-2014-09-19-at-11.04.28.png" style="height:338px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><br />\r\n<br />\r\nTippi Hedren, Melanie Griffith, Dakota Johnson y Stella Banderas</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Dakota-Johnson-Tippi-Hedren-Melanie-Griffith-et-Stella-Banderas.jpg" style="height:394px; width:700px" /></p>\r\n\r\n<p style="text-align: center;">&nbsp;</p>\r\n\r\n<p style="text-align: center;">Alfie Allen y Lily Allen</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/alfie-evan-y-lily-allen.jpg" style="height:500px; width:700px" /></p>\r\n\r\n<p style="text-align: center;">&nbsp;</p>\r\n\r\n<p style="text-align: center;">Charlie Sheen y Emilio Estevez</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/estevez_emilio_sheen_charlie_42440l.jpg" style="height:560px; width:700px" /></p>\r\n\r\n<p style="text-align: center;">&nbsp;</p>\r\n\r\n<p style="text-align: center;">Snoop Dogg y Brandy</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/07-Brandy-Snoop-Dogg-related.jpg" style="height:500px; width:700px" /></p>\r\n', 'post-1458004256.jpeg', '', '', '', '2016-03-13', '2016-03-13 17:24:17', 0, 0, 178, 1),
(182, 6, 'Mira-la-evolución-del-peinado-de-los-hombres-durante-los-últimos-100-años', 'Mira la evolución del peinado de los hombres durante los últimos 100 años', '', '', 'post-1458006558.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/b-BmV08lx98" frameborder="0" allowfullscreen></iframe>', '', '2016-03-13', '2016-03-13 18:02:39', 0, 0, 179, 1),
(183, 6, 'Mira-este-vídeo-si-eres-un/a-fanático/a-de-los-gatos', 'Mira este vídeo si eres un/a fanático/a de los gatos', '', '', 'post-1458091220.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/XJ_NhOVk0uo" frameborder="0" allowfullscreen></iframe>', '', '2016-03-14', '2016-03-14 17:33:41', 0, 0, 180, 1),
(184, 6, 'Los-niños-deciden-entre-comprar-un-helado-o-ayudar-a-un-hombre-sin-hogar', 'Los niños deciden entre comprar un helado o ayudar a un hombre sin hogar', '', '<p>Estos chicos hacen un experimento social donde los protagonistas son los ni&ntilde;os. Ponen una caravana de helados y justo delante ponen a un hombre con un cartel que dice: &quot;necesito dinero&quot;. Estos ni&ntilde;os tienene que elegir entre ayudar o complacer su paladar y comprarse un helado, el resultado es impresionante. No s&eacute; cu&aacute;ndo dejamos de ser tan inocentes y buenos y nos convertimos en unos adultos amargados que no miran nada m&aacute;s que su bolsillo. Todos deber&iacute;amos aprender de estos peque&ntilde;os.</p>\r\n', 'post-1458092399.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/gH0QWdq_a30" frameborder="0" allowfullscreen></iframe>', '', '2016-03-14', '2016-03-14 17:53:20', 0, 0, 181, 1),
(185, 6, 'Una-realidad-muy-dura-pero-bonita-sobre-la-paternidad', 'Una realidad muy dura, pero bonita, sobre la paternidad', '', '', 'post-1458168741.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/XKSz9XC4XMw" frameborder="0" allowfullscreen></iframe>', '', '2016-03-15', '2016-03-15 15:05:42', 0, 0, 182, 1),
(186, 6, 'Tíos-buenos-en-la-COCINA', 'Tíos buenos en la COCINA', '', '<p>Despu&eacute;s de &quot;t&iacute;os buenos con gatos&quot; llega &quot;t&iacute;os buenos en la cocina&quot;. S&iacute;, estamos realmente locos. Hay una cuenta en Instagram en la que solo se suben fotos de t&iacute;os realmente cachas, que no a todos nos gustan, en la cocina. S&iacute;, es verdad, no solo las mujeres est&aacute;n bonitas en la cocina, a los hombres les queda genial. &iquest;Qu&eacute; mejor que un hombre cocinando para ti? &iquest;Hay algo m&aacute;s sexy? Mira estas fotos:&nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/dbgxsg.JPG" style="height:706px; width:700px" /><img alt="" src="/kcfinder/upload/images/dfgdfs.JPG" style="height:704px; width:700px" /><img alt="" src="/kcfinder/upload/images/dfhdfhd.JPG" style="height:616px; width:700px" /><img alt="" src="/kcfinder/upload/images/gfsfh.JPG" style="height:695px; width:700px" /><img alt="" src="/kcfinder/upload/images/gsdg.JPG" style="height:712px; width:700px" /><img alt="" src="/kcfinder/upload/images/hgdfhd.JPG" style="height:713px; width:700px" /><img alt="" src="/kcfinder/upload/images/rgsrgs.JPG" style="height:701px; width:700px" /><img alt="" src="/kcfinder/upload/images/sdgs.JPG" style="height:700px; width:700px" /></p>\r\n\r\n<p style="text-align: center;">No solo los tipos sin camiseta son guapos<img alt="" src="/kcfinder/upload/images/sfhsfghs.JPG" style="height:701px; width:700px" /></p>\r\n\r\n<p style="text-align: center;">Cuenta de Instagram: &quot;hotdudesinthekitchen&quot;</p>\r\n\r\n<p style="text-align: center;">&nbsp;</p>\r\n', 'post-1458170513.jpeg', '', '', '', '2016-03-15', '2016-03-15 15:35:14', 0, 0, 183, 1),
(187, 5, 'Si-están-en-silencio-algo-hacen', 'Si están en silencio algo hacen', '', '<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/242_905231182927913_3616089788405336164_n.jpg" style="height:518px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/10612998_905230762927955_9156319178935840722_n.jpg" style="height:700px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12705649_905231242927907_3308538418093637597_n.jpg" style="height:521px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12794590_905230982927933_5094235014818127036_n.jpg" style="height:935px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12798843_905230909594607_953903398884862273_n.jpg" style="height:688px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12798866_905230822927949_4525150355445845345_n.jpg" style="height:525px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12802949_905231012927930_6410151696368910201_n.jpg" style="height:930px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12803023_905231219594576_5291253050489468044_n.jpg" style="height:932px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12804776_905231136261251_8346976839126018240_n.jpg" style="height:892px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12805909_905231112927920_4900024930774749329_n.jpg" style="height:1028px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12806150_905230779594620_810942588291038987_n.jpg" style="height:875px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12809504_905230872927944_8953392885473716866_n.jpg" style="height:513px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12809533_905230682927963_7934462037614167938_n.jpg" style="height:927px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12809550_905231082927923_779493613802542161_n.jpg" style="height:534px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12814498_905231032927928_130569995836948721_n.jpg" style="height:481px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12814697_905230842927947_4607932831928236168_n.jpg" style="height:688px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12821421_905231159594582_6084589748507238318_n.jpg" style="height:525px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12832302_905231062927925_7849150121239644596_n.jpg" style="height:524px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12832381_905230722927959_8716235012687393_n.jpg" style="height:829px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/12832397_905230792927952_4239948122775565455_n.jpg" style="height:700px; width:700px" /></p>\r\n', 'post-1458170923.jpeg', '', '', '', '2016-03-15', '2016-03-15 15:42:04', 0, 0, 184, 1),
(188, 5, 'Cuando-tu-mejor-amigo-es-una-serpiente', 'Cuando tu mejor amigo es una serpiente', '', '', 'post-1458171933.jpeg', '', '<iframe width="853" height="480" src="https://www.youtube.com/embed/3sLoUaBdU_A" frameborder="0" allowfullscreen></iframe>', '', '2016-03-15', '2016-03-15 15:58:54', 0, 0, 185, 1),
(189, 6, 'Sonidos-que-te-llevarán-directamente-a-tu-infancia', 'Sonidos que te llevarán directamente a tu infancia', '', '', 'post-1458172735.jpeg', '', '<iframe width="853" height="480" src="https://www.youtube.com/embed/NOP2JDL9syQ" frameborder="0" allowfullscreen></iframe>', '', '2016-03-15', '2016-03-15 16:12:16', 0, 0, 186, 1),
(208, 5, 'Solo-la-gente-cruel-se-reirá-de-estas-imágenes', 'Solo la gente cruel se reirá con estas imágenes', '', '<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/enhanced-1881-1456966852-1.png" style="height:519px; width:700px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/enhanced-9461-1458152253-1.jpg" style="height:700px; width:700px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/enhanced-15711-1458154921-2.jpg" style="height:933px; width:700px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/enhanced-4374-1458154726-2.png" style="height:245px; width:700px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/enhanced-23801-1456966668-1.jpg" style="height:1252px; width:700px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/enhanced-27746-1458156598-13.png" style="height:552px; width:700px" /></p>\r\n', 'post-1458689729.jpeg', '', '', '', '2016-03-21', '2016-03-21 15:48:50', 0, 0, 205, 1),
(209, 6, 'Mira-esta-adorable-historia-sobre-una-pareja-que-se-reencuentra-70-años-después', 'Mira esta adorable historia sobre una pareja que se reencuentra 70 años después', '', '', 'post-1458690519.jpeg', '', '<iframe width="640" height="480" src="https://www.youtube.com/embed/kZR3K1Vi02E" frameborder="0" allowfullscreen></iframe>', '', '2016-03-21', '2016-03-21 16:02:00', 0, 0, 206, 1),
(210, 1, '¡Europa-rompe-una-de-las-principales-leyes-de-la-Declaración-de-Derechos-Humanos!', '¡Europa rompe una de las principales leyes de la Declaración de los Derechos Humanos!', '', '', 'post-1458691032.jpeg', '', '<iframe width="480" height="360" src="https://www.youtube.com/embed/2k7H_sC_Doc" frameborder="0" allowfullscreen></iframe>', '', '2016-03-21', '2016-03-21 16:10:33', 0, 0, 207, 1),
(211, 4, '¿En-busca-de-nuevos-peinados?', '¿En busca de nuevos peinados?', '', '<p style="text-align: center;">Simple y bonito</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4cryvsxBF1vo3na3o1_500.gif" style="height:338px; width:600px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4btnr1XBa1urf6bco1_1280.jpg" style="height:713px; width:600px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4c5hoVb6m1v62m49o1_500.jpg" style="height:899px; width:600px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4dr3efUUX1uly033o1_1280.jpg" style="height:993px; width:600px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4efgyZJcG1qg7juwo1_1280.jpg" style="height:1067px; width:600px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/wwII-1024.jpg" style="height:876px; width:600px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4dyb1HW9M1v7q527o1_500.png" style="height:600px; width:600px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4ck3bqs3p1vn30u0o1_500.jpg" style="height:570px; width:600px" /></p>\r\n\r\n<p style="text-align: center;">O puedes decantarte por algo m&aacute;s colorido...</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/large%285%29.jpg" style="height:800px; width:600px" /></p>\r\n', 'post-1458692001.jpeg', '', '', '', '2016-03-21', '2016-03-21 16:26:42', 0, 0, 208, 1),
(191, 6, 'Esta-chica-puede-imitar-a-los-Simpsons-de-una-forma-magnífica', 'Esta chica puede imitar a los Simpsons de una forma magnífica', '', '', 'post-1458348169.png', '', '<iframe width="853" height="480" src="https://www.youtube.com/embed/L9euPcpeBmQ" frameborder="0" allowfullscreen></iframe>', '', '2016-03-17', '2016-03-17 16:56:10', 0, 0, 188, 1),
(192, 3, 'X-Men:-Apocalipsis-', 'X-Men: Apocalipsis (Segundo Trailer)', '', '<p><strong>Estreno en USA</strong>: 27/05/2016<br />\r\n<strong>Estreno en Espa&ntilde;a:</strong>&nbsp;20/05/2016&nbsp;</p>\r\n\r\n<p><strong>Director:</strong>&nbsp;Bryan Singer&nbsp;<br />\r\n<strong>Gui&oacute;n:</strong>&nbsp;Mike Dougherty, Dan Harris, Simon Kinberg&nbsp;<br />\r\n<strong>Reparto:</strong>&nbsp;James McAvoy,&nbsp;Michael Fassbender,&nbsp;Jennifer Lawrence,&nbsp;Nicholas Hoult,&nbsp;Hugh Jackman,&nbsp;Oscar Isaac,&nbsp;Evan Peters,&nbsp;Alexandra Shipp,&nbsp;Sophie Turner,&nbsp;Tye Sheridan,&nbsp;Rose Byrne,&nbsp;Olivia Munn,&nbsp;Kodi Smit-McPhee,&nbsp;Ben Hardy,&nbsp;Lana Condor,&nbsp;Lucas Till&nbsp;</p>\r\n\r\n<p>Sinopsis:</p>\r\n\r\n<p>Desde los albores de la civilizaci&oacute;n, fue adorado como un dios. Apocalypse, el primer y m&aacute;s poderoso mutante del universo X-Men de Marvel, acumul&oacute; los poderes de muchos otros mutantes, convirti&eacute;ndose en inmortal e invencible. Pero al despertar tras miles de a&ntilde;os, se encuentra desilusionado con el mundo en que se encuentra y decide reclutar un equipo de mutantes poderosos, entre ellos a un descorazonado Magneto (Michael Fassbender), con el fin de limpiar la humanidad y crear una nueva orden mundial, sobre la cual &eacute;l reinar&aacute;. A medida que el destino de la tierra est&aacute; en juego, Raven (Jennifer Lawrence) con la ayuda del Profesor X (James McAvoy) se unir&aacute;n junto a un equipo de j&oacute;venes X-Men para detener a su mayor enemigo y salvar as&iacute; a la humanidad de la destrucci&oacute;n total.</p>\r\n', 'post-1458348659.png', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/5RmUZXjsJOo" frameborder="0" allowfullscreen></iframe>', 'X-Men', '2016-03-17', '2016-03-17 17:04:20', 0, 0, 189, 1),
(193, 3, 'La-Leyenda-de-Tarzán-Tráiler-', 'La Leyenda de Tarzán Tráiler ', '', '<p>Estreno en USA: 01/07/2016<br />\r\nEstreno en Espa&ntilde;a: 22/07/2016&nbsp;</p>\r\n\r\n<p>Reparto: Alexander Skarsg&aring;rd, Samuel L. Jackson, Christoph Waltz, Margot Robbie, Djimon Hounsou, John Hurt&nbsp;</p>\r\n\r\n<p>Sinopsis:<br />\r\nYa han pasado varios a&ntilde;os desde que Tarz&aacute;n (Skarsg&aring;rd) abandonara la jungla africana para llevar una vida aburguesada como John Clayton III, Lord Greystoke, junto a su amada esposa Jane (Robbie), pero ahora le han invitado a que vuelva al Congo para ejercer de embajador de comercio en el parlamento. En realidad, todo forma parte de un plan de venganza y avaricia ideado por el capit&aacute;n belga Leon Rom (Waltz), pero los responsables de esta estrategia homicida no tienen ni idea de lo que se les viene encima.</p>\r\n', 'post-1458349574.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/w56p1YVeknA" frameborder="0" allowfullscreen></iframe>', '', '2016-03-17', '2016-03-17 17:19:35', 0, 0, 190, 1),
(194, 3, 'Como-se-han-creado-los-efectos-especiales-de-', 'Cómo se han creado los efectos especiales de Deadpool', '', '', 'post-1458403079.jpeg', '', '<iframe width="1280" height="720" src="https://www.youtube.com/embed/cqAcECiX9Ck" frameborder="0" allowfullscreen></iframe>', 'deadpool', '2016-03-18', '2016-03-18 08:09:27', 0, 0, 191, 1),
(195, 4, 'Esta-es-la-Mejor-Manera-de-Bajar-la-Presión-Sanguínea-de-forma-Natural', 'Esta es la mejor forma de bajar la presión sanguínea de forma natural', '', '<p>La&nbsp;<strong>hipertensi&oacute;n arterial es una enfermedad</strong>&nbsp;en donde en el cuerpo suministra sangre a las arterias y las venas a una velocidad superior a la normal.</p>\r\n\r\n<p>Adem&aacute;s de los medicamentos hay remedios naturales disponibles que pueden controlar la presi&oacute;n arterial alta y en algunos casos incluso curar la misma.</p>\r\n\r\n<p><strong>El mejor remedio para hacer esto es mediante el consumo de remolacha.</strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/jugo-489x350.jpg" style="height:350px; width:489px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Las remolachas tienen nitratos, que son muy &uacute;tiles en la lucha contra la hipertensi&oacute;n. Las personas diagnosticadas con la presi&oacute;n arterial alta deber&iacute;an tratar de ingerir al menos una remolacha al d&iacute;a en cualquier forma.&nbsp;<strong>Puede ser hervida,&nbsp; en rodajas para hacer una ensalada o incluso jugo.</strong></p>\r\n\r\n<p>Inmediatamente despu&eacute;s de la digesti&oacute;n, los nitratos en la remolacha se convierten en &oacute;xido n&iacute;trico, lo que&nbsp;<strong>puede reducir la presi&oacute;n arterial en pocas horas</strong>.</p>\r\n\r\n<p>Tambi&eacute;n mejora la capacidad de los vasos sangu&iacute;neos para expandirse y contraerse en aproximadamente un 20%.</p>\r\n\r\n<p>El &oacute;xido n&iacute;trico relaja los vasos sangu&iacute;neos y los dilata. Esto ayuda a que la sangre fluya m&aacute;s f&aacute;cilmente disminuyendo as&iacute; la presi&oacute;n arterial.</p>\r\n\r\n<p>Las remolachas no son ni caras ni&nbsp; dif&iacute;ciles de origen. De hecho, si tienes un espacio adecuado, incluso puedes cultivar remolacha en su huerta o jard&iacute;n. Para obtener los mejores resultados, se recomienda que las remolachas se coman a diario, ya sea como ensaladas durante el almuerzo o se pueden tomar en forma de jugo en las ma&ntilde;anas.</p>\r\n\r\n<h3>C&oacute;mo se toma el jugo de remolacha para bajar la presi&oacute;n alta</h3>\r\n\r\n<p>El sabor del jugo de remolacha puede ser muy fuerte para algunas personas. Una buena opci&oacute;n es mezclarlo con jugo de manzana. La recomendaci&oacute;n general para bajar la presi&oacute;n es de 250 a 500 ml de jugo de remolacha al d&iacute;a.</p>\r\n\r\n<p>Personas con tendencia a piedras en los ri&ntilde;ones o piedras en la ves&iacute;cula no deben tomarlo.</p>\r\n\r\n<h3><strong>Adem&aacute;s el jugo de remolacha tiene los siguientes beneficios.</strong></h3>\r\n\r\n<ul>\r\n	<li>Estimula el apetito y facilita la digesti&oacute;n de los alimentos.</li>\r\n	<li>Est&aacute; repleto de antioxidantes, por lo que es excelente para combatir el envejecimiento de las c&eacute;lulas y prevenir algunos tipos de c&aacute;ncer.</li>\r\n	<li>Ayuda a reforzar el sistema inmunitario.</li>\r\n	<li>Favorece la eliminaci&oacute;n de toxinas y la depuraci&oacute;n del organismo.</li>\r\n</ul>\r\n\r\n<p>Si conoces y tienes experiencia a base de remolacha, d&eacute;janos en los comentarios.</p>\r\n\r\n<p>(Fuente: Abuelasabia)</p>\r\n', 'post-1458416431.jpeg', '', '', '', '2016-03-18', '2016-03-18 11:53:53', 0, 0, 192, 1),
(196, 1, 'SeaWorld-anuncia-el-final-de-la-reproducción-de-orcas-en-cautividad', 'SeaWorld anuncia el final de la reproducción de orcas en cautividad', '', '<p>La empresa estadounidense SeaWorld, que posee la mayor&iacute;a de las orcas para espect&aacute;culos en Estados Unidos y Europa,&nbsp;&nbsp;ha anunciado este jueves el final de su programa de reproducci&oacute;n de estos mam&iacute;feros marinos en cautividad, lo que significa un enorme logro para los defensores de los derechos de los animales. Pocas veces se ha producido una victoria tan contundente de David contra Goliat: desde el estreno en 2013 del documental&nbsp;<em>Black Fish</em>, el movimiento para la liberaci&oacute;n de las orcas se convirti&oacute; en &quot;una pesadilla de relaciones p&uacute;blicas&quot; para SeaWorld, seg&uacute;n reconoci&oacute; la propia compa&ntilde;&iacute;a. Al final, se ha rendido.</p>\r\n\r\n<p>El presidente de SeaWorld, Joel Manby, se&ntilde;al&oacute; en un comunicado de prensa: &quot;Nuestros clientes visitan los parques mar&iacute;timos, en parte, para ver orcas. Pero un creciente n&uacute;mero de personas piensa que las orcas no deben estar en cautividad. Al hacer que esta sea la &uacute;ltima generaci&oacute;n de orcas en cautividad y cambiando la forma en que nuestros visitantes contemplar&aacute;n a estos magn&iacute;ficos animales,&nbsp;estamos proporcionando una experiencia realmente importante&quot;. Por lo tanto, no solo dejar&aacute;n de reproducirse en cautividad &ndash;su captura est&aacute; prohibida en numerosos pa&iacute;ses&ndash;, sino que ya no organizar&aacute;n espect&aacute;culos con orcas.</p>\r\n\r\n<p>No est&aacute; claro todav&iacute;a c&oacute;mo esta decisi&oacute;n puede afectar a las cuatro orcas de SeaWorld que se encuentran en Loro Parque, en Santa Cruz de Tenerife, el &uacute;nico lugar de Espa&ntilde;a donde se ofrecen espect&aacute;culos con estos animales. El parque canario dispone de seis ejemplares. De ellas, cuatro pertenecen a la compa&ntilde;&iacute;a estadounidense, otra es Morgan, una orca que fue encontrada al borde de la muerte en la costa holandesa y trasladada all&iacute; en medio de una enorme pol&eacute;mica, y una sexta naci&oacute; en cautividad. Preguntado sobre el asunto, un portavoz de la compa&ntilde;&iacute;a se&ntilde;al&oacute; que estaban estudiando el comunicado de SeaWorld.</p>\r\n\r\n<p>Medio centenar de estos cet&aacute;ceos permanecen en cautividad y participan en espect&aacute;culos. En la Uni&oacute;n Europea solo el centro de Tenerife y el parque Marineland de la localidad francesa de Antibes, propiedad de la empresa espa&ntilde;ola Parques Reunidos y donde hay otros seis ejemplares, siguen teniendo orcas. Seg&uacute;n la organizaci&oacute;n WDC (Whale and Dophin Conservation), 46 orcas son utilizadas en espect&aacute;culos en Argentina, Canad&aacute;, Francia, Espa&ntilde;a, Estados Unidos y Jap&oacute;n, 35 de ellas nacidas en cautividad. Esta ONG mantiene que China y Rusia albergan 11 orcas capturadas desde 2012.</p>\r\n\r\n<p>SeaWorld es la principal empresa del sector con parques tem&aacute;ticos en Orlando y San Diego. En 2015, el n&uacute;mero de visitantes de sus parques se redujo ligeramente, 22,40 millones frente a 22,47 en 2014, mientras que los ingresos pasaron de 1.380 millones de d&oacute;lares en el ejercicio anterior a 1.370. Sus beneficios netos fueron de 49,1 millones frente a 49,9 hace un a&ntilde;o. Sin embargo, en 2014 sufri&oacute; una ca&iacute;da mucho m&aacute;s radical en las frecuentaciones, que cayeron en un 5,2% (8,3 millones de visitantes), seg&uacute;n explicaba la propia compa&ntilde;&iacute;a.</p>\r\n\r\n<p>El problema ahora es saber qu&eacute; hacer con las orcas en cautividad. La experiencia de la orca&nbsp;<em>Keiko</em>, sobre la que tambi&eacute;n se hizo una pel&iacute;cula,&nbsp;<em>Liberad a Willy</em>, fue muy compleja, porque el animal nunca se acostumbr&oacute; a vivir en libertad y siempre busc&oacute; la presencia de los humanos. Las orcas son animales muy sociales, que viven en familias toda su existencia y que cazan en grupo, a veces con t&aacute;cticas muy sofisticadas. En el caso de las orcas cautivas en la actualidad, la inmensa mayor&iacute;a no ha conocido la vida m&aacute;s all&aacute; de la piscina. &ldquo;Algunos cr&iacute;ticos quieren que vayamos m&aacute;s all&aacute; y que liberemos a las orcas que todav&iacute;a permanecen en cautividad. Pero no me parece una opci&oacute;n inteligente&rdquo;, prosigue el presidente de SeaWorld, Joel Manby, en el comunicado. En este punto estar&iacute;a de acuerdo con la mayor&iacute;a de los conservacionistas. &ldquo;La mayor&iacute;a de nuestras orcas nacieron en SeaWorld y las que nacieron en libertad han pasado la mayor&iacute;a de su vida en nuestros parques. Si las liberamos en el oc&eacute;ano, lo m&aacute;s probable es que mueran&rdquo;.</p>\r\n\r\n<p>Entrevistado el a&ntilde;o pasado, Ricardo Sagarminaga van Buiten, del centro de investigaci&oacute;n marino Alnitak, director cient&iacute;fico de Kai Marine Services y expresidente de la sociedad espa&ntilde;ola de cet&aacute;ceos, se mostr&oacute; totalmente contrario a la cautividad de las orcas; pero tambi&eacute;n a liberar a las que permanecen recluidas, no solo porque pone en peligro a los propios animales sino &ldquo;a las poblaciones existentes en libertad&rdquo;. El bi&oacute;logo mexicano Fernando Ugarte, que lleva casi una d&eacute;cada viviendo en Groenlandia como responsable del departamento de mam&iacute;feros marinos del Instituto de Recursos Naturales y que particip&oacute; en la liberaci&oacute;n de&nbsp;<em>Keiko</em>, apresada en Islandia en 1979 cuando ten&iacute;a unos tres a&ntilde;os y liberada en 2002, se mostraba hace un a&ntilde;o menos pesimista sobre aquella experiencia en declaraciones a este diario: &ldquo;Nad&oacute; hasta Noruega y all&iacute; busc&oacute; a la gente.&nbsp;<em>Keiko</em>&nbsp;era m&aacute;s feliz cuando estaba con humanos. Vivi&oacute; dos a&ntilde;os muy bien en un fiordo de Noruega, en un estado de semilibertad. Muri&oacute; de una neumon&iacute;a a una edad normal para una orca. Al no funcionar el plan A, liberarla con orcas, funcion&oacute; el plan B, libertad bajo cuidado humano. Y vivi&oacute; de lujo&rdquo;.</p>\r\n\r\n<p><em>Black Fish</em>, un documental multipremiado producido por la CNN, relataba la muerte de dos cuidadores de orcas, en Orlando y Tenerife, ataques que los expertos citados en la pel&iacute;cula atribuyen al estr&eacute;s que la cautividad provoca en estos animales. El documental tambi&eacute;n ofrece un espeluznante relato de la captura de orcas y de c&oacute;mo la manada segu&iacute;a al barco y se comunicaba con la cr&iacute;a apresada. Citada por la radio p&uacute;blica NPR, la directora de&nbsp;<em>Black Fish</em>, Gabriela Cowperthwaite, asegur&oacute; que la decisi&oacute;n de SeaWorld era &ldquo;un momento clave&rdquo;. &ldquo;El hecho de que SeaWorld haya decidido terminar con la reproducci&oacute;n de orcas en cautividad representa un cambio realmente profundo&rdquo;, dijo.</p>\r\n\r\n<p>Los problemas que genera la cautividad de las orcas no solo tienen que ver con su tama&ntilde;o &mdash;los machos pesan unas ocho toneladas, las hembras entre 3 y 5&mdash; o con el hecho de que recorran miles de kil&oacute;metros a lo largo de su existencia, sino, sobre todo, con su inteligencia. El bi&oacute;logo Carl Safina escribe en su libro&nbsp;<em>Beyond Worlds</em>, una obra que ha tenido un enorme impacto por la forma en que desaf&iacute;a nuestra visi&oacute;n de la inteligencia animal: &quot;Es un animal inteligente, maternal, que vive durante muchos a&ntilde;os, cooperativo, intensamente social, devoto de su familia. Son, como los humanos, mam&iacute;feros de sangre caliente que producen leche, no muy diferentes nosotros. S&oacute;lo son m&aacute;s grandes y mucho menos violentos. Sus cerebros, notablemente m&aacute;s grandes que los nuestros, les sirven para trazar lazos familiares, crear redes sociales y geogr&aacute;ficas y un minucioso an&aacute;lisis de los sonidos&quot;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'post-1458417074.jpeg', '', '', '', '2016-03-18', '2016-03-18 12:04:35', 0, 0, 193, 1),
(197, 4, 'Ten-en-cuenta-estos-consejos-sobre-tu-postura-para-estar-saludable', 'Ten en cuenta estos consejos sobre tu postura para estar saludable', '', '', 'post-1458419246.jpeg', '', '<iframe width="853" height="480" src="https://www.youtube.com/embed/6ocgYDYtAwE" frameborder="0" allowfullscreen></iframe>', '', '2016-03-18', '2016-03-18 12:12:01', 0, 0, 194, 1),
(198, 1, 'El-nacimiento-del-príncipe-de-Bután-se-celebra-plantando-108.000-árboles', 'El nacimiento del príncipe de Bután se celebra plantando 108.000 árboles', '', '<p>Como se sabe, el planeta atraviesa una situaci&oacute;n muy dif&iacute;cil por causa de la destrucci&oacute;n de territorios naturales, entre otros problemas, habiendo cada vez menos zonas verdes para que la Tierra pueda respirar. Si a eso le sumamos las pocas iniciativas para enmendar esto que se llegan a dar, entonces podr&iacute;amos decir que al planeta lo hemos sentenciado.</p>\r\n\r\n<p>Felizmente existen naciones donde esto es todav&iacute;a tema primordial. Uno de estos pa&iacute;ses: But&aacute;n, en donde recientemente se vio esta maravillosa iniciativa que llev&oacute; 108,000 nuevos &aacute;rboles plantados en la peque&ntilde;a monta&ntilde;a Unido, como parte de las celebraciones por la llegada del primer Real Ni&ntilde;o de Su Majestad, el Rey Jigme Khesar Namgyal Wangchuck; y Su Majestad, la Reina Jetsun Pema. Esta acci&oacute;n demuestra porqu&eacute; este pa&iacute;s del sur de Asia es considerado el pa&iacute;s m&aacute;s respetuoso con el medio ambiente.</p>\r\n\r\n<p>&ldquo;En el budismo, un &aacute;rbol es el proveedor y sustentador de todas las formas de vida,&rdquo; indic&oacute; Tenzin Lekphell, coordinador de la iniciativa. &ldquo;Simboliza la longevidad, la salud, la belleza e incluso la compasi&oacute;n&ldquo;, agrega.</p>\r\n\r\n<p>La constituci&oacute;n del Reino de But&aacute;n (nombre oficial) establece que al menos el 60% de la tierra debe mantenerse boscosa en todo momento. Es por ello que los esfuerzos por mantener estas &aacute;reas protegidas lo han catalogado como el pa&iacute;s m&aacute;s amigable con la ecolog&iacute;a del mundo.</p>\r\n\r\n<p>Anteriormente, But&aacute;n ya hab&iacute;a sido noticia por este tipo de acciones. En el 2015, el pa&iacute;s estableci&oacute; un r&eacute;cord Guinness por haber plantado casi 50,000 &aacute;rboles en s&oacute;lo una hora.&nbsp;</p>\r\n', 'post-1458419512.jpeg', '', '', '', '2016-03-18', '2016-03-18 12:45:13', 0, 0, 195, 1),
(199, 3, 'Las-mejores-imágenes-detrás-de-las-cámaras', 'Las mejores imágenes detrás de las cámaras', '', '<p style="text-align:center"><span style="font-size:16px">Star Wars</span></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/10-477x600.jpg" style="height:881px; width:700px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/1135.jpg" style="height:474px; width:700px" /></p>\r\n\r\n<p style="text-align:center">&iexcl;Muy buen rollo!</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/824.jpg" style="height:1077px; width:700px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/3074420508_7c856d8018.jpg" style="height:461px; width:700px" /></p>\r\n\r\n<p style="text-align:center">La maqueta de Star Wars<img alt="" src="/kcfinder/upload/images/maqueta%20star%20wars.jpg" style="height:467px; width:700px" /></p>\r\n\r\n<p style="text-align:center">El retorno del jedi<img alt="" src="/kcfinder/upload/images/el%20retorno%20del%20jedi.jpg" style="height:474px; width:700px" /></p>\r\n\r\n<p style="text-align:center">Regreso al futuro</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/regreso%20al%20futuro.jpg" style="height:464px; width:700px" /></p>\r\n\r\n<p style="text-align:center">Los Vengadores</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/72-600x400.jpg" style="height:467px; width:700px" /></p>\r\n\r\n<p style="text-align:center">El resplandor</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/24-600x374.jpg" style="height:436px; width:700px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/el%20resplandor.jpg" style="height:515px; width:700px" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">Jurassic Park II</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/Jurassic%20Park%20II.jpg" style="height:991px; width:700px" /></p>\r\n\r\n<p style="text-align:center">Indiana Jones</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/Indiana%20Jones.jpg" style="height:457px; width:700px" /></p>\r\n\r\n<p style="text-align:center">El gran Gatsby</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/el%20gran%20gatsby.jpg" style="height:579px; width:700px" /></p>\r\n\r\n<p style="text-align:center">Enterrado</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/enterrado.jpg" style="height:465px; width:700px" /></p>\r\n\r\n<p style="text-align:center">El se&ntilde;or de los anillos</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/el%20se%C3%B1or%20de%20los%20anillos.jpg" style="height:431px; width:700px" /></p>\r\n\r\n<p style="text-align:center">Big Fish</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/big%20fish.jpg" style="height:468px; width:700px" /></p>\r\n\r\n<p style="text-align:center">E.T.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/E.T..jpg" style="height:486px; width:700px" /></p>\r\n\r\n<p style="text-align:center">Eduardo Manostijeras</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/eduardo%20manostijeras.jpg" style="height:855px; width:700px" /></p>\r\n\r\n<p style="text-align:center">300</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/300.jpg" style="height:576px; width:700px" /></p>\r\n\r\n<p style="text-align:center">El planeta de los simios</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/el%20planeta%20de%20los%20simios.jpg" style="height:465px; width:700px" /></p>\r\n\r\n<p style="text-align:center">The monster</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/The%20monster.jpg" style="height:560px; width:700px" /></p>\r\n\r\n<p style="text-align:center">Origen</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/origen.jpg" style="height:757px; width:700px" /></p>\r\n\r\n<p style="text-align:center">El renacido</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/el%20renacido.jpg" style="height:700px; width:700px" /></p>\r\n\r\n<p style="text-align:center">Tibur&oacute;n</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/tibur%C3%B3n.jpg" style="height:504px; width:700px" /></p>\r\n\r\n<p style="text-align:center">&iexcl;Cu&eacute;ntanos! &iquest;Cu&aacute;l es tu favorita?</p>\r\n', 'post-1458420699.jpeg', '', '', '', '2016-03-18', '2016-03-18 13:05:00', 0, 0, 196, 1),
(200, 1, 'Uncharte-4-finaliza-su-desarrollo--', 'Uncharte 4 finaliza su desarrollo  ', '', '<p><strong>&quot;Naughty Dog&quot;</strong>&nbsp;ha confirmado que ya han terminado el desarrollo de <strong>&quot;&nbsp;Uncharted 4: A Thief&#39;s End&quot;&nbsp;</strong>y estan listos para empezar a crear los discos para ponerlos en venta el dia 10 de mayo en todo el mundo. El esperadisimo juego ocupara al rededor de 45 GB</p>\r\n', 'post-1458538992.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ku02FEjm7jI" frameborder="0" allowfullscreen></iframe>', 'uncharted', '2016-03-19', '2016-03-19 21:56:33', 0, 0, 197, 1),
(201, 5, '¡Esta-imitación-de-Channing-Tatum-seguramente-sea-la-mejor-del-mundo!', '¡Esta imitación de Channing Tatum seguramente sea la mejor del mundo!', '', '', 'post-1458672757.png', '', '<iframe width="853" height="480" src="https://www.youtube.com/embed/TW6zol0GEFY" frameborder="0" allowfullscreen></iframe>', '', '2016-03-21', '2016-03-21 11:05:58', 0, 0, 198, 1),
(202, 5, 'Después-de-ver-este-vídeo-amarás-la-policía-inglesa', 'Después de ver este vídeo amarás a la policía inglesa', '', '', 'post-1458673466.jpeg', '', '<iframe width="640" height="480" src="https://www.youtube.com/embed/JGm329jkZU4" frameborder="0" allowfullscreen></iframe>', '', '2016-03-21', '2016-03-21 11:17:47', 0, 0, 199, 1);
INSERT INTO `cp_post` (`id`, `category`, `url_name`, `title`, `description`, `large_text`, `image`, `slider_image`, `video`, `teg`, `createdate`, `add-date`, `slider`, `favorite`, `pos`, `active`) VALUES
(203, 4, 'Trucos-de-maquillaje-que-hacen-que-tu-rostro-se-vea-más-delgado', 'Trucos de maquillaje que hacen que tu rostro se vea más delgado', '', '<p style="text-align: center;"><span style="font-size:16px">Cat eyes</span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:16px"><img alt="" src="/kcfinder/upload/images/cat%20eyes.png" style="height:933px; width:700px" /></span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:16px">Counturing</span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:16px"><img alt="" src="/kcfinder/upload/images/tumblr_mkl51tTPQL1qk1aqmo1_400.jpg" style="height:680px; width:700px" />Cejas largas y pobladas</span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:16px"><img alt="" src="/kcfinder/upload/images/tumblr_o4cskc61ic1qmz1tjo1_1280.jpg" style="height:700px; width:700px" /></span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:16px">Ilumina el centro del rostro</span></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/Skin-lightening_1748789a.jpg" style="height:501px; width:700px" /></p>\r\n', 'post-1458674885.jpeg', '', '', '', '2016-03-21', '2016-03-21 11:41:26', 0, 0, 200, 1),
(204, 4, 'Looks-para-las-chicas-que-odian-llevar-tacones', 'Looks para las chicas que odian llevar tacones', '', '<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4bn9nauoM1r0t86no1_500.jpg" style="height:700px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4dqvhbhex1rc3b0io1_500.jpg" style="height:700px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4du84tJfl1rpyb4fo1_500.png" style="height:875px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4dufoxSIO1usyh8ho1_1280.jpg" style="height:786px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4dv7dgwST1t10qufo1_500.jpg" style="height:700px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4dwdzjhB01ry5naio1_1280.jpg" style="height:1046px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4e34qrwfu1uydd5jo1_500.jpg" style="height:1054px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4e57z1BQZ1sltqdjo1_500.jpg" style="height:700px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4e577O2rt1v4dbqgo1_540.jpg" style="height:1049px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4ckc3UEeP1ulhrazo1_500.png" style="height:700px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4dfyoMroG1udmmjlo1_400.jpg" style="height:1048px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o4dauvrICa1udmmjlo1_500.jpg" style="height:1069px; width:700px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_o34c61Rt9X1ulhrazo1_500.png" style="height:686px; width:700px" /></p>\r\n', 'post-1458678520.jpeg', '', '', '', '2016-03-21', '2016-03-21 12:42:01', 0, 0, 201, 1),
(205, 1, 'Nuevo-Iphone-se,-A9,-12MP-y-live-photos', 'Nuevo Iphone se, A9, 12MP y live photos', '', '<h2>iPhone SE, un iPhone 6s con dise&ntilde;o de 5s y de 4 pulgadas</h2>\r\n\r\n<p>MarK Gurman tambi&eacute;n acert&oacute; con todo lo dem&aacute;s, incluido el dise&ntilde;o que recuperar&iacute;a el metal en el centro y cristal en la parte superior e inferior. El iPhone SE tendr&aacute;:</p>\r\n\r\n<ul>\r\n	<li>Pantalla de 4 pulgadas.</li>\r\n	<li>Procesador A9 y co-procesador M9.</li>\r\n	<li>C&aacute;mara de 12MP.</li>\r\n	<li>Grabaci&oacute;n 4K.</li>\r\n	<li>Chip NFC para pagar con Apple Pay.</li>\r\n	<li>Compatibilidad con Live Photos (no ha nombrado el retina flash).</li>\r\n	<li>NO tiene 3D Touch.</li>\r\n	<li>Precio 399$ el modelo de 16GB y 499$ el modelo de 64GB.</li>\r\n</ul>\r\n', 'post-1458684453.png', '', '', ' Iphone', '2016-03-21', '2016-03-21 14:02:50', 0, 0, 202, 1),
(206, 6, 'Así-es-como-diferentes-personas-gastan-100$-', 'Este experimento nos enseña lo diferentes que pueden ser las personas a la hora de comprar', '', '', 'post-1458683698.png', '', '<iframe width="853" height="480" src="https://www.youtube.com/embed/Y5MkxN3HPEA" frameborder="0" allowfullscreen></iframe>', '', '2016-03-21', '2016-03-21 14:08:19', 0, 0, 203, 1),
(207, 5, 'Face-swap-ha-llegado-demasiado-lejos', 'Face-swap ha llegado demasiado lejos', '', '<p>&iexcl;Estas chicas son la bomba! Una de ellas se dibuja una cara en la teta y hacen el intercambio de la cara, lo que ocurre es realmente ASOMBROSO.&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', 'post-1458687404.jpeg', '', '<iframe width="853" height="480" src="https://www.youtube.com/embed/ZZYXcjNBPaM" frameborder="0" allowfullscreen></iframe>', '', '2016-03-21', '2016-03-21 15:09:51', 0, 0, 204, 1),
(212, 3, 'Ahora-me-ves-2-Trailer-(2016)', 'Ahora me ves 2 Tráiler (2016)', '', '<p><strong>Estreno en USA</strong>: 10/06/2016<br />\r\n<strong>Estreno en Espa&ntilde;a:</strong>&nbsp;22/07/2016</p>\r\n\r\n<p><strong>Director:</strong>&nbsp;Jon M. Chu&nbsp;</p>\r\n\r\n<p>Reparto: Woody Harrelson, Mark Ruffalo, Daniel Radcliffe, Michael Caine, Morgan Freeman, Jesse Eisenberg, Jay Chou, Lizzy Caplan, Dave Franco&nbsp;</p>\r\n\r\n<p>Sinopsis:</p>\r\n\r\n<p>Un a&ntilde;o despu&eacute;s de burlar al FBI y ganar la adulaci&oacute;n del p&uacute;blico con sus espect&aacute;culos alucinantes, &quot;Los Cuatro Jinetes&quot; resurgen en &#39;Now You See Me: The Second Act&#39;, donde se encontrar&aacute;n con un nuevo enemigo que les reclutar&aacute; para un trabajo todav&iacute;a m&aacute;s peligroso que el anterior.</p>\r\n', 'post-1458693292.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/MVEpW0EKa0w" frameborder="0" allowfullscreen></iframe>', 'Ahora me ves', '2016-03-21', '2016-03-21 16:48:13', 0, 0, 209, 1),
(213, 2, '¿Sabías-que-los-colibríes-son-los-únicos-pájaros-capaces-de-volar-hacia-delante-y-hacia-atrás?', '¿Sabías que los colibríes son los únicos pájaros capaces de volar hacia delante y hacia atrás?', '', '<p>&iexcl;El reino animal no deja de sorprendernos! Los colibr&iacute;es son unos p&aacute;jaros nativos de M&eacute;xico que pesan aproximadamente 8 gramos y son las &uacute;nicas aveces capaces de volar hacia delante y hacia atr&aacute;s.&nbsp;</p>\r\n\r\n<p>&nbsp;<em>Journal of Experimental Biology</em>&nbsp;ha descubierto que consumen la misma energ&iacute;a en las dos acciones, o sea, si vuelan hacia delante o hacia atr&aacute;s. Tambi&eacute;n han mencionado que mantienen el cuerpo mucho m&aacute;s recto cuando van hacia atr&aacute;s.</p>\r\n\r\n<p>Estos peque&ntilde;ines son capaces de hacer algo que ni un &aacute;guila puede hacer.&nbsp;</p>\r\n', 'post-1458693312.jpeg', '', '', '', '2016-03-21', '2016-03-21 16:48:34', 0, 0, 210, 1),
(214, 6, '¡Mira-cómo-estas-pequeñas-feministas-intentan-combatir-el-sexismo!', '¡Mira cómo estas pequeñas feministas intentan combatir el sexismo!', '', '<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/tumblr_ndu9pzgTEV1rm824jo1_500.gif" style="height:337px; width:600px" /></p>\r\n', 'post-1458707464.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/ARrYU50QnK8" frameborder="0" allowfullscreen></iframe>', '', '2016-03-21', '2016-03-21 20:44:25', 0, 0, 211, 1),
(215, 6, '¿Cuándo-dejamos-de-sentirnos-bonitas?', '¿Cuándo dejamos de sentirnos bonitas?', '', '', 'post-1458749259.jpeg', '', '<iframe width="480" height="360" src="https://www.youtube.com/embed/hLnxuF7SDYY" frameborder="0" allowfullscreen></iframe>', '', '2016-03-22', '2016-03-22 08:21:00', 0, 0, 212, 1),
(216, 6, 'Uncharted', 'Un juego de otro nivel ', '', '<p>Los de &quot;Naughty dog&quot; hablan sobre el desarrollo de &quot;Uncharted 4&quot; donde han llevado la tecnologia al limite.</p>\r\n', 'post-1458786397.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/67FqIQLwiSk" frameborder="0" allowfullscreen></iframe>', '', '2016-03-22', '2016-03-22 18:39:58', 0, 0, 213, 1),
(217, 2, '¿Sabías-que-hay-gente-que-se-enamora-de-la-inteligencia-y-no-del-físico?', '¿Sabías que hay gente que se enamora de la inteligencia y no del físico?', '', '', 'post-1458928431.jpeg', '', '<iframe width="480" height="360" src="https://www.youtube.com/embed/3EsbcRFpsxY" frameborder="0" allowfullscreen></iframe>', '', '2016-03-24', '2016-03-24 10:07:12', 0, 0, 214, 1),
(218, 5, 'Estas-señoras-tienen-más-estilo-que-muchas-veinteañeras', 'Estas abuelas tienen más estilo que muchas veinteañeras', '', '<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/947340_1094253703952369_41614870074943398_n.jpg" style="height:810px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/1505175_1094253827285690_7438491786899725918_n.jpg" style="height:801px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/1604422_1094253963952343_6712622206265136739_n.jpg" style="height:600px; width:600px" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12795285_1094253777285695_8752601711756115425_n.jpg" style="height:824px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12799358_1094253793952360_5669459722214193395_n.jpg" style="height:824px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12799363_1094253840619022_6001279407908279457_n.jpg" style="height:960px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12802748_1094253673952372_7799633153026863183_n.jpg" style="height:632px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12803226_1094253757285697_3073769950205913707_n.jpg" style="height:642px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12803291_1094253813952358_1109048913946177550_n.jpg" style="height:821px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12806001_1094253737285699_8234274030367523440_n.jpg" style="height:820px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12814038_1094253723952367_1631416257993167051_n.jpg" style="height:816px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12832297_1094253653952374_6836902374939720575_n.jpg" style="height:836px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/tumblr_n7e409XfeW1r5yz19o1_500.png" style="height:667px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/tumblr_o3o5fwolIk1qhb4wgo1_500.jpg" style="height:500px; width:600px" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', 'post-1458929316.jpeg', '', '', '', '2016-03-24', '2016-03-24 10:21:57', 0, 0, 215, 1),
(219, 1, 'Las-dos-drogas-más-consumidas-se-unen-para-formar-CRONTELLA', 'Las dos drogas más consumidas se unen para formar CHRONTELLA', '', '<p><span style="font-size:16px">Como si la Nutella no fuese una droga ya los expertos han intentado (y conseguido) a&ntilde;adirle a esta mezcla tan maravillosa una de las drogas m&aacute;s consumidas en todo el mundo, la marihuana.</span></p>\r\n\r\n<p><span style="font-size:16px">Esta gran invenci&oacute;n se llama Chrontella, y la gente se lo pasa realmente bien con ella.</span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:14px">En sus croisants</span></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12748203_715102168626276_649797402_n%281%29.jpg" style="height:600px; width:600px" /><span style="font-size:14px">En sus tostadas</span></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12558700_945082635576404_244477720_n.jpg" style="height:600px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><span style="font-size:14px">En sus bizcochos</span></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/enhanced-16542-1458577486-1.png" style="width:600px" /></p>\r\n\r\n<p style="text-align:center"><span style="font-size:14px">O en sus tartas</span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:14px"><img alt="" src="/kcfinder/upload/images/enhanced-20307-1458577416-6%282%29.png" style="height:602px; width:600px" /></span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px">Un frasco contiene 300 mg de cannabis y cuesta 23$. Seg&uacute;n <em>Vice,&nbsp;</em>Chrontella solo est&aacute; disponible en algunas tiendas de Canad&aacute;.</span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px">As&iacute; que, &iexcl;vamos all&aacute;, Canad&aacute;!</span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px"><img alt="" src="/kcfinder/upload/images/anigif_original-16356-1458577945-11.gif" style="height:402px; width:600px" /></span><br />\r\n&nbsp;</p>\r\n', 'post-1458932155.png', '', '', '', '2016-03-24', '2016-03-24 11:09:16', 0, 0, 216, 1),
(220, 4, 'Pequeños-cambios-que-harán-que-pierdas-peso', 'Pequeños cambios que harán que pierdas peso', '', '<p style="text-align:center">Proh&iacute;bete la comida en el sof&aacute;.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/anigif_optimized-1144-1455645037-27.gif" style="width:600px" /></p>\r\n\r\n<p style="text-align:center">Deja de pesarte, a menos que notes cierto cambio.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/caeae__tumblr_o4gedkp0wk1qf1y5qo1_500.jpg" style="height:600px; width:600px" /></p>\r\n\r\n<p style="text-align:center">O no te mires al espejo</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/tumblr_o4jpruXxBF1sijyd6o1_500.jpg" style="height:900px; width:600px" /></p>\r\n\r\n<p style="text-align:center">No intentes ocultar tus antojos, solo intenta acabar con ellos de una forma saludable.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/anigif_optimized-20415-1455649539-1.gif" style="height:338px; width:600px" /></p>\r\n\r\n<p style="text-align:center">Deja de comprar comida&nbsp;preparadas y empieza a cocinar t&uacute; mismo/a.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/tumblr_o4ixvo9cWl1tuqkmto1_500.jpg" style="height:750px; width:600px" /></p>\r\n\r\n<p style="text-align:center">Deja de usar ascensor, y ve por las escaleras.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/tumblr_o4icglxTOX1v32fb6o1_500.jpg" style="height:800px; width:600px" /></p>\r\n\r\n<p style="text-align:center">Empieza a tomas tu caf&eacute; sin leche.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/enhanced-29774-1455652204-1.png" style="height:599px; width:600px" /></p>\r\n\r\n<p style="text-align:center">Conv&eacute;ncete de que est&aacute;s genial.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/anigif_optimized-8891-1455655481-8.gif" style="height:244px; width:600px" /></p>\r\n\r\n<p style="text-align:center">Aseg&uacute;rate de estar bebiendo agua.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/tumblr_o10fvk33iv1v53vrbo1_400.gif" style="width:600px" /></p>\r\n', 'post-1458934765.jpeg', '', '', '', '2016-03-24', '2016-03-24 11:52:46', 0, 0, 217, 1),
(221, 1, 'Barcelona-se-declara-oficialmente-veg-friendly', 'Barcelona se declara oficialmente veg-friendly', '', '<p><span style="font-size:16px">&iexcl;Estamos haciendo grandes cambios!</span></p>\r\n', 'post-1459042032.jpeg', '', '<iframe width="480" height="360" src="https://www.youtube.com/embed/_8EXRRHK6ck" frameborder="0" allowfullscreen></iframe>', '', '2016-03-25', '2016-03-25 17:40:33', 0, 0, 218, 1),
(222, 6, 'Esto-le-puede-salvar-la-vida-a-más-de-uno', 'Esto le puede salvar la vida a más de uno', '', '', 'post-1459042247.jpeg', '', '<iframe width="480" height="360" src="https://www.youtube.com/embed/2X_pySUu47s" frameborder="0" allowfullscreen></iframe>', '', '2016-03-25', '2016-03-25 17:44:08', 0, 0, 219, 1),
(223, 6, 'Este-guardia-de-seguridad-no-se-puede-resistir-al-baile', 'Este sorprendente guardia de seguridad no se puede resistir al baile', '', '', 'post-1459042574.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/RyOtWfbKCYQ" frameborder="0" allowfullscreen></iframe>', '', '2016-03-25', '2016-03-25 17:49:35', 0, 0, 220, 1),
(224, 6, 'apple', 'El nuevo y diferente anuncio de Apple (The kiss)', '', '', 'post-1459094924.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/-F6tUN2j0Iw" frameborder="0" allowfullscreen></iframe>', '', '2016-03-26', '2016-03-26 08:22:05', 0, 0, 221, 1),
(225, 1, 'Rihanna-le-acerca-el-micrófono-a-un-fan-y-se-queda-alucinada', 'Rihanna le acerca el micrófono a un fan y se queda alucinada', '', '', 'post-1459212019.png', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/ukvI-_ktyy8" frameborder="0" allowfullscreen></iframe>', '', '2016-03-27', '2016-03-27 16:53:40', 0, 0, 222, 1),
(226, 2, 'Varias-fotos-que-te-ayudarán-a-no-cometer-faltas-de-ortografía', 'Varias fotos que te ayudarán a no cometer faltas de ortografía', '', '<p>Diferencias entre las palabras hom&oacute;fonas</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/ortografia-corregida.jpg" style="height:1287px; width:600px" /></p>\r\n\r\n<p>Se pronuncian igual pero se escriben de una forma diferente.</p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/infografia-educativa.jpg" style="height:1456px; width:600px" /></p>\r\n\r\n<p>Palabras con b y con v.</p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/b-y-v-ortografia.jpg" style="height:1270px; width:600px" /></p>\r\n\r\n<p>Se escribe con h.</p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/uso-de-la-hache.png" style="height:600px; width:600px" />&nbsp;</p>\r\n\r\n<p>Palabras con ll y con y.</p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/tip-semana33.jpg" style="height:1264px; width:600px" /></p>\r\n\r\n<p>Cinco formas de escribir por que.</p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/uso-de-porque.jpg" style="height:958px; width:600px" /></p>\r\n\r\n<p>Las tildes.</p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/Las-tildes-primaria.png" style="height:434px; width:600px" /></p>\r\n\r\n<p>No te comas las comas.</p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/comas-uso-infografia.png" style="height:1123px; width:600px" /></p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/Ortograf_a_Ilustrada_%281%29.jpeg" style="height:564px; width:600px" /></p>\r\n', 'post-1459212627.jpeg', '', '', '', '2016-03-27', '2016-03-27 17:03:48', 0, 0, 223, 1),
(227, 4, 'Cómo-evitar-los-pechos-caídos', 'Cómo evitar los pechos caídos', '', '<p style="text-align: center;"><span style="font-size:18px">Camina siempre con los brazos para arriba.</span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:18px"><img alt="" src="/kcfinder/upload/images/enhanced-13932-1458773725-1.jpg" style="height:549px; width:600px" /></span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:18px">P&aacute;sate una pluma para fomentar su elevaci&oacute;n.</span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:18px"><img alt="" src="/kcfinder/upload/images/enhanced-9724-1458773655-8.jpg" style="height:549px; width:600px" />Evita los ejercicios donde tengas que saltar, correr, andar. &iexcl;Simplemente no te muevas!</span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:18px"><img alt="" src="/kcfinder/upload/images/enhanced-2848-1458773854-2.jpg" style="height:549px; width:600px" />&iexcl;Lleva siempre el sujetador puesto!</span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:18px"><img alt="" src="/kcfinder/upload/images/enhanced-12293-1458773778-1.jpg" style="height:549px; width:600px" /></span></p>\r\n\r\n<p style="text-align: center;">&nbsp;</p>\r\n\r\n<p style="text-align: center;"><span style="font-size:18px">&Aacute;tate globos.</span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:18px"><img alt="" src="/kcfinder/upload/images/enhanced-8570-1458772791-3.jpg" style="height:549px; width:600px" />Haz abdominales, pero abdominales con las tetas.</span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:18px"><img alt="" src="/kcfinder/upload/images/enhanced-28441-1458773007-3.jpg" style="height:549px; width:600px" />No duermas boca abajo, ni boca arriba, ni de costado, &iexcl;simplemente no duermas!</span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:18px"><img alt="" src="/kcfinder/upload/images/enhanced-6577-1458773221-5.jpg" style="height:549px; width:600px" />Ponte una repisa de tetas.</span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:18px"><img alt="" src="/kcfinder/upload/images/enhanced-23639-1458772928-1.jpg" style="height:549px; width:600px" />Contrata a alguien para que vaya detr&aacute;s de ti sujet&aacute;ndote las tetas.</span></p>\r\n\r\n<p style="text-align: center;"><span style="font-size:18px"><img alt="" src="/kcfinder/upload/images/enhanced-30337-1458773472-2.jpg" style="height:549px; width:600px" /></span></p>\r\n', 'post-1459361732.jpeg', '', '', '', '2016-03-29', '2016-03-29 10:28:53', 0, 0, 224, 1),
(228, 3, 'En-2016-tendremos-una-nueva-entrega-de-Bridget-Jones:-El-bebé-de-Bridget-Jones', 'En 2016 tendremos una nueva entrega de Bridget Jones: El bebé de Bridget Jones', '', '<p>&iexcl;El 16 de septiembre podremos ver la tercera pel&iacute;cula de Bridget Jones!</p>\r\n', 'post-1459362482.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/UoFpK0MIynU" frameborder="0" allowfullscreen></iframe>', '', '2016-03-29', '2016-03-29 10:41:23', 0, 0, 225, 1),
(229, 6, 'Mira-este-vídeo-antes-de-volver-a-coger-el-coche', 'Mira este vídeo antes de volver a coger el coche', '', '', 'post-1459362721.jpeg', '', '<iframe width="480" height="360" src="https://www.youtube.com/embed/k9e-ruyfEFo" frameborder="0" allowfullscreen></iframe>', '', '2016-03-29', '2016-03-29 10:45:22', 0, 0, 226, 1),
(230, 5, '¿Creías-que-lo-habías-visto-todo?-Mira-este-divertido-vídeo-sobre-caballos', '¿Creías que lo habías visto todo? Mira este divertido vídeo sobre caballos', '', '', 'post-1459365549.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/EKGApPH30C0" frameborder="0" allowfullscreen></iframe>', '', '2016-03-29', '2016-03-29 11:32:30', 0, 0, 227, 1),
(231, 6, 'Esta-activista-casi-se-congela-intentando-concienciar-a-la-gente', 'Esta activista casi se congela intentando concienciar a la gente', '', '', 'post-1459366256.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/MhSnz-olWX4" frameborder="0" allowfullscreen></iframe>', '', '2016-03-29', '2016-03-29 11:44:17', 0, 0, 228, 1),
(232, 5, 'Esto-es-lo-que-pasa-cuando-interrumpes-una-conversación-entre-Batman-y-Superman', 'Esto es lo que pasa cuando interrumpes una conversación entre Batman y Superman', '', '', 'post-1459452418.jpeg', '', '<iframe src="https://player.vimeo.com/video/160941895?autoplay=1" width="500" height="375" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'Batman', '2016-03-30', '2016-03-30 11:40:20', 0, 0, 229, 1),
(233, 6, '¡Haz-este-precioso-marco-con-tus-propias-manos!', '¡Haz este precioso marco con tus propias manos!', '', '', 'post-1459454050.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/5P2qW3_lVUM" frameborder="0" allowfullscreen></iframe>', '', '2016-03-30', '2016-03-30 12:07:31', 0, 0, 230, 1),
(234, 2, '¿Sabías-que-el-25%-de-la-población-tiene-tetracromatismo?', '¿Sabías que el 25% de la población tiene tetracromatismo?', '', '<p>&iquest;Quieres saber si eres uno de los afortunados? Compru&eacute;balo con este test.</p>\r\n\r\n<p>&iquest;Cu&aacute;ntos matices de color ves en este arco iris?&nbsp;Cu&eacute;ntalos</p>\r\n\r\n<p>Observa la imagen inferior y cuenta&nbsp;<strong>cu&aacute;ntos colores distintos</strong>, matices,&nbsp;<strong>puedes ver</strong>.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/imagen-arcoiris-colores.jpg" style="height:136px; width:600px" /></p>\r\n\r\n<p>Tienes que ver una diferencia clara, si no la ves, no la cuentes.</p>\r\n\r\n<p>&iexcl;Comprueba tu resultado!</p>\r\n\r\n<p>Seguidamente te presentamos tu&nbsp;<strong>capacidad de distinguir los colores, y por lo tanto tu n&uacute;mero de tipos de cono,</strong>&nbsp;seg&uacute;n el n&uacute;mero de matices que hayas captado. &iquest;Ser&aacute;s un tetracr&oacute;mata?</p>\r\n\r\n<p>&ndash; He visto menos de 20 matices de color</p>\r\n\r\n<p>Si al contar los matices, el total ha sido menos de 20, eres un&nbsp;<strong>dicr&oacute;mata.</strong>&nbsp;Tienes&nbsp;<strong>dos tipos de conos</strong>, igual que los perros, y perteneces a un reducido&nbsp;<strong>25% de la poblaci&oacute;n</strong>. Seg&uacute;n los estudios, lo m&aacute;s probable es que seas una persona que prefiere vestirse de negro, azul y beige.</p>\r\n\r\n<p>&ndash; He captado&nbsp;entre 20 y 32 matices de color</p>\r\n\r\n<p>&iexcl;Ah&aacute;! &iquest;Sabes lo que significa eso? Eres un<strong>&nbsp;tricr&oacute;mata</strong>, lo que significa que cuentas con<strong>&nbsp;tres tipos de cono</strong>&nbsp;distintos, en las &aacute;reas azul/lila, roja y verde. &iexcl;Perteneces al&nbsp;<strong>50% de la poblaci&oacute;n</strong>! Los estudios aseguran que, al poder apreciar todos los colores, te&nbsp;sientes c&oacute;modo llevando ropa de cualquiera de ellos.</p>\r\n\r\n<p>&ndash; Yo veo entre 33 y 39 matices de color</p>\r\n\r\n<p>T&uacute;, amigo/a, eres un/a<strong>&nbsp;tetracr&oacute;mata</strong>. Tienes&nbsp;<strong>4 tipos de conos</strong>, tanto en el &aacute;rea roja, como en la verde, la azul/lila y, ojo, la amarilla. &iquest;C&oacute;mo qui&eacute;n? &iexcl;Como las abejas y el&nbsp;<strong>25% de la poblaci&oacute;n</strong>! Seg&uacute;n se ha comprobado, eres de esas personas en el armario de las cuales no encontrar&aacute;s prendas amarillas o muy pocas. &iquest;Por qu&eacute;? Porque es un color que te irrita un poco. Te interesar&aacute; saber tambi&eacute;n que las&nbsp;<strong>mujeres</strong>&nbsp;tienen m&aacute;s posibilidades de ser tetracr&oacute;matas. Para saber m&aacute;s sobre la tetracrom&iacute;a, puedes consultar este -&gt;&nbsp;<a href="http://supercurioso.com/eres-tetracromata/" target="_blank">art&iacute;culo de Supercurioso</a>.</p>\r\n\r\n<p>&ndash; &iexcl;Pues yo veo m&aacute;s de 39 matices!</p>\r\n\r\n<p>&iexcl;Te has pasado! S&oacute;lo hay 39 colores distintos y es muy posible que, dependiendo de la pantalla que tengas, s&oacute;lo llegue a mostrarte 35 de ellos. &iexcl;Vuelve a contarlos! &iexcl;A ver qu&eacute; resultado obtienes!</p>\r\n\r\n<p>Evidentemente, es importante destacar que este test es una<strong>&nbsp;aproximaci&oacute;n</strong>, para obtener un resultado m&aacute;s exacto existen dispositivos especializados que detectan con precisi&oacute;n&nbsp;cu&aacute;ntos tipos de cono tiene cada persona.</p>\r\n\r\n<p>&iquest;No es&nbsp;<strong>impresionante</strong>&nbsp;lo distinto que podemos llegar a ver el mundo seg&uacute;n el n&uacute;mero y distribuci&oacute;n de los conos que tengamos? &iexcl;Haz el&nbsp;<strong>test</strong>&nbsp;con tus amigos y comprobadlo!</p>\r\n', 'post-1459454734.jpeg', '', '<iframe width="480" height="360" src="https://www.youtube.com/embed/oxG1G_rrOUk" frameborder="0" allowfullscreen></iframe>', '', '2016-03-30', '2016-03-30 12:18:55', 0, 0, 231, 1),
(235, 3, 'Yo-antes-de-ti-tráiler-extendido', 'Yo antes de ti tráiler extendido', '', '<ul>\r\n	<li><strong>T&iacute;tulo original: Me Before You</strong></li>\r\n	<li><strong>A&ntilde;o: 2016</strong></li>\r\n	<li><strong>Director: Thea Sharrock (&oacute;pera prima)</strong></li>\r\n	<li><strong>Actores: Emilia Clarke, Sam Claflin</strong></li>\r\n	<li><strong>Fecha de estreno: 3 de junio del 2016</strong></li>\r\n</ul>\r\n\r\n<p>Daenerys Targaryen de Juego de Tronos y&nbsp;Finnick Odair de Los juegos del hambre se unen para hacer una preciosa pel&iacute;cula rom&aacute;ntica, &iquest;qui&eacute;n lo dir&iacute;a?</p>\r\n\r\n<p>La pel&iacute;cula est&aacute; inspirada en la novela de&nbsp;<strong>Jojo Moyes</strong>&nbsp;y explora la historia de Will Traynor y Louisa Clark: &eacute;l es un joven exitoso cuya vida se ve gravemente afectada por un accidente automovil&iacute;stico, mientras que ella es una chica sencilla y con pocas aspiraciones en la vida. Ambos caminos se cruzan cuando la protagonista es contratada para cuidar de nuestro atormentado personaje, abriendo el camino hacia una singular relaci&oacute;n amorosa.</p>\r\n\r\n<p>No se t&uacute;, pero a m&iacute; me recuerda much&iacute;simo a&nbsp;<em>Dying Young.&nbsp;</em>pel&iacute;cula protagonizada por Julia Roberts (muy recomendable).</p>\r\n', 'post-1459469610.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/PTKasrIfkwI" frameborder="0" allowfullscreen></iframe>', '', '2016-03-30', '2016-03-30 16:26:52', 0, 0, 232, 1),
(236, 14, '¡Mira-esta-increíble-propuesta-de-matrimonio!', '¡Mira esta increíble propuesta de matrimonio!', '', '<p>&iquest;Qu&eacute; chica rechazar&iacute;a una propuesta as&iacute;? Liam Cooper ha estado trabajando 5 meses para grabar un v&iacute;deo sorprendente para pedir la mano de su novia Amy. La pareja lleva saliendo m&aacute;s de 6 a&ntilde;os, y Liam ha decidido dar el gran paso en la relaci&oacute;n. Con la ayuda de sus amigos, llev&oacute; a Amy al cine a ver &ldquo;Focus&rdquo;, pero justo entonces fue al ba&ntilde;o para que pudieran proyectar la pel&iacute;cula que hab&iacute;an grabado. Te encantar&aacute; ver su incre&iacute;ble y original propuesta:</p>\r\n', 'post-1459470152.jpeg', '', '<iframe src="https://player.vimeo.com/video/161348713?color=d000f0&byline=0" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', '', '2016-03-30', '2016-03-30 16:35:53', 0, 0, 233, 1),
(239, 5, 'Mira-este-increíble-anuncio-de-LG-en-el-que-aparece-Jason-Statham', 'Mira este increíble anuncio de LG en el que aparece Jason Statham', '', '', 'post-1459644619.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/P34vTUVt4Bc" frameborder="0" allowfullscreen></iframe>', '', '2016-04-01', '2016-04-01 17:03:40', 0, 0, 234, 1),
(240, 4, 'Todo-lo-que-tenemos-que-sufrir-para-quemar-las-calorías-de-estas-sabrosas-comidas', 'Todo lo que tenemos que sufrir para quemar las calorías de estas sabrosas comidas', '', '<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/alex-crying.gif" style="height:263px; width:600px" /></p>\r\n', 'post-1459645331.jpeg', '', '<iframe width="480" height="360" src="https://www.youtube.com/embed/VMcjnwgD460" frameborder="0" allowfullscreen></iframe>', '', '2016-04-01', '2016-04-01 17:15:03', 0, 0, 235, 1),
(241, 4, 'Escucha-lo-que-tu-cuerpo-te-pide', 'Escucha lo que tu cuerpo te pide', '', '<p style="text-align:center">&nbsp;</p>\r\n\r\n<p>Algunas veces tenemos mareo, dolor de cabeza, hinchaz&oacute;n, lenta cicatrizaci&oacute;n o cualquier otro signo que ocurre solo cuando nuestro cuerpo intenta decirnos algo. Aqu&iacute; te dejo algunas razones del cu&aacute;l puede ser el motivo de estos problemas:</p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/12645215_732422490226442_709747792216514109_n.jpg" style="height:560px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12654633_732422466893111_7370226650710432640_n.jpg" style="height:559px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12662551_732422426893115_7082592733898680501_n.jpg" style="height:555px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/12669659_732422443559780_7372902020220341760_n.jpg" style="height:555px; width:600px" /></p>\r\n', 'post-1459646047.jpeg', '', '', '', '2016-04-01', '2016-04-01 17:27:28', 0, 0, 236, 1),
(242, 2, '¿Sabías-que-puedes-salvar-el-planeta-cambiando-esto-en-tu-dieta-diaria?', '¿Sabías que puedes salvar el planeta cambiando esto en tu dieta diaria?', '', '<p>As&iacute; es, reduciendo el consumo de la carne puedes ahorrar bastantes cosas y con ese ahorro salvar la vida de todos nosotros, y lo m&aacute;s importante, la vida de nuestro bello planeta. Es algo sencillo y f&aacute;cil de hacer. &iexcl;A&uacute;n estamos a tiempo!</p>\r\n', 'post-1459646443.jpeg', '', '<iframe width="480" height="360" src="https://www.youtube.com/embed/9Lb3Fz5zlk0" frameborder="0" allowfullscreen></iframe>', '', '2016-04-01', '2016-04-01 17:34:04', 0, 0, 237, 1),
(243, 1, 'Científicos-descubren-la-causa-del-cáncer-de-mama', 'Científicos descubren la causa del cáncer de mama', '', '<p>La investigaci&oacute;n que se ha realizado en Noruega ha demostrado que las mujeres que beben tres vasos de leche diaris tienen tres veces m&aacute;s de posibilidad de desarrollar c&aacute;ncer de mama que las mujeres que beben solo un vazo o incluso la mitad.</p>\r\n\r\n<p>As&iacute; es, al parecer una de las razones de esta enfermedad es el consumo de la leche.</p>\r\n\r\n<p>Previamente se cre&iacute;a que la leche &nbsp;aceleraba el avance del c&aacute;ncer que ya se ha desarrollado, sin embargo, ahora los investigadores dicen que podr&iacute;a ser el prop&oacute;sito detr&aacute;s de una expansi&oacute;n del crecimiento del c&aacute;ncer en una escala m&aacute;s amplia.</p>\r\n\r\n<p>Las partes dominantes de los pacientes son originales de Finlandia, Suecia, Gran Breta&ntilde;a, Canad&aacute; y Estados Unidos. Cada una de estas naciones son pioneras en el consumo de leche.<br />\r\n<br />\r\nEl estudio noruego descubri&oacute; que el c&aacute;ncer de mama&nbsp;es incre&iacute;blemente raro en sociedades en las que el consumo de leche est&aacute; a un nivel inferior.<br />\r\n<br />\r\nEs a partir de ahora cuando se dio cuenta de que las hormonas y componentes del desarrollo en la leche tienen gran potencial cancer&iacute;geno, y esto se aplica igualmente a los suplementos de vitamina D procesados, que mejoran peri&oacute;dicamente la leche y otros productos l&aacute;cteos.<br />\r\n<br />\r\nTambi&eacute;n hay otros factores a tener en cuenta. Reducci&oacute;n del consumo de verduras naturales y pescado, y el aumento del consumo de la pasta, az&uacute;car procesada y carne de cerdo han aumentado el n&uacute;mero de casos de c&aacute;ncer de mama.<br />\r\n<br />\r\n<strong>Por otra parte, los sujetadores, especialmente aquellos que son demasiado apretados,</strong>&nbsp;asimismo pueden causar c&aacute;ncer. Las mujeres que con frecuencia usan un sujetador durante 12 horas, tienen un peligro de desarrollar c&aacute;ncer de mama en 20 veces, en contraste con las personas que lo utilizan de vez en cuando o nunca, sobre todo en lo que respecta a los sostenes con soporte de metal.</p>\r\n\r\n<p style="text-align: center;"><span style="font-size:24px">Con la siguiente prueba podr&aacute;s comprobar por ti misma si sufres uno de los mayores problemas mundiales.&nbsp;</span></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/cancer_de_mama_3.png_1944408447.png" style="height:273px; width:600px" /></p>\r\n', 'post-1459734339.jpeg', '', '', '', '2016-04-02', '2016-04-02 17:59:00', 0, 0, 238, 1),
(244, 6, 'En-este-vídeo-se-ve-lo-duro-que-es-ser-el-cámera', 'En este vídeo se ve lo duro que es ser el cámara', '', '', 'post-1459805050.jpeg', '', '<iframe src="https://player.vimeo.com/video/161377967" width="500" height="282" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', '', '2016-04-03', '2016-04-03 13:37:31', 0, 0, 239, 1),
(246, 14, '5-cosas-que-no-debes-permitir-en-tu-relación-de-pareja', '5 cosas que no debes permitir en tu relación de pareja', '', '<p><span style="font-family:comic sans ms,cursive">Est&aacute; bien darlo todo siempre y cuando la otra persona nos responda. Jam&aacute;s dejes a un lado a familias y a amigos por tu pareja. Preg&uacute;ntate si esa persona que tienes al lado te aporta armon&iacute;a y tranquilidad y es con la que quieres envejecer.</span></p>\r\n\r\n<p>No hay nada m&aacute;s intenso y gratificante que el estar enamorado, que el disponer de una pareja que nos quiera y a quien querer. Pero debemos ir con cuidado y no caer en el error de darlo absolutamente todo por esa persona&hellip;Por ello,&nbsp;<strong>te explicamos qu&eacute; dimensiones debes proteger por encima de todo.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><span style="color:#ff33cc">Dimensiones que proteger en tu relaci&oacute;n de pareja</span></h1>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/amor1-500x500.jpg" style="height:500px; width:500px" /></p>\r\n\r\n<h2>1. No lo des &ldquo;todo&rdquo; sin recibir &ldquo;nunca&rdquo;nada a cambio</h2>\r\n\r\n<p>Es un error en el que solemos caer.&nbsp;Amar a alguien&nbsp;es abrir todas nuestras emociones sin encontrar l&iacute;mite alguno, d&aacute;ndolo todo por pasi&oacute;n y sincero altruismo. Y eso es bueno, sin duda. Pero siempre y cuando la otra persona nos responda y nos demuestre que todo esfuerzo merece la pena, que todo gesto se ve reforzado por un amor sincero donde no existe el ego&iacute;smo.&nbsp;<strong>Si lo damos todo sin recibir m&aacute;s que exigencias o reproches, llegar&aacute; un momento en que nos sintamos frustradas y muy vac&iacute;as. Esta sensaci&oacute;n es muy destructiva y hemos de tenerlo muy en cuenta. Ama, ofrece, da&hellip; pero recuerda que tambi&eacute;n mereces recibir lo mismo.</strong></p>\r\n\r\n<h2>2. Que no destruyan tu autoestima o tus valores</h2>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/Autoestima-1.jpg" style="height:315px; width:500px" /></p>\r\n\r\n<p><strong>En una pareja es habitual que hayan diferentes gustos, aficiones e incluso valores. Pero mientras haya respeto y reconocimiento todo funcionar&aacute; bien.&nbsp;</strong>T&uacute; puedes permitir que tu pareja por ejemplo, valore mucho la espontaneidad, la diversi&oacute;n, el salir mucho de fiesta&hellip; pero tambi&eacute;n exiges que ese tiempo lo comparta tambi&eacute;n contigo y que a su vez, valore el que t&uacute; de vez en cuando le pidas d&iacute;as m&aacute;s tranquilos e &iacute;ntimos en casa.<strong>&nbsp;Debe haber un equilibrio.</strong>&nbsp;Pero si la otra persona nos critica porque no somos &ldquo;tan divertidas&rdquo; o tan amantes de las fiestas, entonces nos sentiremos mal y empezaremos a dudar de nosotras mismas. &iquest;Ser&eacute; una persona aburrida de verdad? &iquest;ser&eacute; tal vez una persona con la que &eacute;l no puede ser feliz? Este tipo de preguntas pueden hacer&nbsp;mucho da&ntilde;o a tu autoestima. Nuestras parejas deben respetarnos y valorarnos. Es esencial.<strong>&nbsp;Si no existe respeto no podr&aacute; existir felicidad.</strong></p>\r\n\r\n<h2>3. Que no invadan ni destruyan tu espacio personal</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Todos nosotros disponemos de nuestras aficiones, de nuestros amigos, de nuestras pasiones&hellip; cosas a las que no podemos renunciar. Jam&aacute;s dejes a un lado a familias y a amigos por tu pareja.&nbsp;<strong>No renuncies a todo lo que te gusta por tu pareja, porque de lo contrario no te quedar&aacute; nada e ir&aacute;s perdiendo tu identidad.</strong>&nbsp;El espacio personal&nbsp;son esos espacios &iacute;ntimos donde se haya nuestra personalidad, nuestra vida social y nuestras pasiones. No lo pases por alto.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>4. Que no borren tus sue&ntilde;os y tus esperanzas</h2>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/Autoconfianza.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p><strong>En ocasiones, mantenemos&nbsp;relaciones afectivas con parejas t&oacute;xicas. Personas que nos cortan las alas y que nos dicen, d&iacute;a tras d&iacute;a, que no somos capaces de tal o cual cosa.</strong>&nbsp;Que no somos inteligentes para hacer determinada actividad, que ese trabajo que ansiamos conseguir no lo conseguiremos porque no damos la talla. Personalidades que d&iacute;a tras d&iacute;a van cort&aacute;ndonos las alas y nuestras aspiraciones haciendo de nuestra personalidad una caricatura donde apenas queda br&iacute;o ni energ&iacute;a. No lo permitas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>5. No permitas que te conviertan en una persona infeliz</h2>\r\n\r\n<p>Es lo m&aacute;s importante. Cuando te levantes cada ma&ntilde;ana preg&uacute;ntate si eres feliz. Preg&uacute;ntate si la persona que tienes al lado es esa con la que quieres envejecer, esa que acompa&ntilde;ar&aacute; tu madurez y que habr&aacute; de vivir junto a tu mano en armon&iacute;a y tranquilidad. Si te aporta seguridad, madurez e ilusi&oacute;n, no lo dudes,&nbsp;esa relaci&oacute;n vale la pena y debes luchar por ella.&nbsp;<strong>Peor si te sientes vac&iacute;a y percibes que esa pareja no te da sonrisas sino l&aacute;grimas, y que vives tus d&iacute;as con suma tristeza, deber&aacute;s reaccionar.&nbsp;Mereces ser feliz.&nbsp;Es el derecho vital de toda persona.</strong></p>\r\n\r\n<p>Fuente:&nbsp;mejorconsalud</p>\r\n', 'post-1459981293.jpeg', '', '', 'parejas', '2016-04-05', '2016-04-05 14:34:54', 0, 0, 241, 1),
(245, 6, 'Este-anuncio-de-Amazon-nos-derrite-el-corazón', 'Este anuncio de Amazon nos derrite el corazón', '', '', 'post-1459805658.jpeg', '', '<iframe src="https://player.vimeo.com/video/161379093" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> ', '', '2016-04-03', '2016-04-03 13:47:39', 0, 0, 240, 1),
(247, 6, 'iPhone-6S-Plus-vs.-Samsung-Galaxy-S7-Edge-congelados-en-Coca-cola', 'iPhone 6S Plus vs. Samsung Galaxy S7 Edge congelados en Coca-cola', '', '<p>Un youtuber tuvo una idea de enfrentar estos dos Gigantes del mercado &quot;iPhone 6S Plus vs. Samsung Galaxy S7 Edge&quot; Congelando en Coca-cola durante nueve horas, &iquest;crees que despues de este test tan duro aun funcionaran? Dinos que te ha parecido el video. &iquest;Con que movil te quedarias?</p>\r\n', 'post-1459985801.png', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/yWYHHNADK04" frameborder="0" allowfullscreen></iframe>', 'Smartphones', '2016-04-05', '2016-04-05 15:50:02', 0, 0, 242, 1),
(248, 3, 'Se-estanca-la-adaptación-de-''The-Last-of-Us''', 'Se estanca la adaptación de ''The Last of Us''', '', '<p style="text-align:center">Ha pasado m&aacute;s de un a&ntilde;o desde la &uacute;ltima vez que tuvimos noticias de la adaptaci&oacute;n a la gran pantalla del videojuego, &#39;<strong>The Last of Us</strong>&#39;. Seg&uacute;n ha desvelado a IGN su director,Neil Druckmann, la raz&oacute;n ser&iacute;a el estancamiento que sufre el proyecto despu&eacute;s de a&ntilde;o y medio sin ning&uacute;n avance:</p>\r\n\r\n<p><em>&ldquo;Hace un tiempo dije que ten&iacute;amos un buen gui&oacute;n y posiblemente no tardar&iacute;amos en comenzar a desarrollar la pel&iacute;cula. Pero desde entonces no ha habido ning&uacute;n tipo de adelanto. M&aacute;s de a&ntilde;o y medio sin trabajar&rdquo;</em>.</p>\r\n\r\n<p>Lo &uacute;ltimo que supimos de esta adaptaci&oacute;n fue la contrataci&oacute;n de la estrella de&nbsp;<em>&#39;Juego de Tronos&#39;</em>,&nbsp;Maisie Williams, como protagonista principal en el papel de Ellie, aunque visto el bucle en el que ha entrado la pel&iacute;cula, es muy posible que la actriz termine decant&aacute;ndose por otros proyectos.</p>\r\n\r\n<p>Respecto a la historia, la poblaci&oacute;n humana es diezmada por una extra&ntilde;a infecci&oacute;n que afecta a la raza humana. Joel, todo un superviviente y Ellie, una joven y valiente adolescente tremendamente madura para su edad, deben trabajar juntos si quieren sobrevivir en su viaje a trav&eacute;s de los Estados Unidos.</p>\r\n\r\n<p>Fuente: Elseptimoarte</p>\r\n', 'post-1459988124.png', '', '', 'The Last of Us', '2016-04-05', '2016-04-05 16:28:45', 0, 0, 243, 1),
(250, 6, 'fdsfsdf', 'fdsfsdf', '', '<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/FoCgcMTApac" width="560"></iframe></p>\r\n', '', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/NK_e5_fKtIo" frameborder="0" allowfullscreen></iframe>', '', '2016-04-05', '2016-04-05 17:29:56', 0, 0, 245, 0),
(249, 3, 'UNCHARTED-4:-EL-DESENLACE-DEL-LADRÓN.-PS4-gameplay-español', 'UNCHARTED 4: EL DESENLACE DEL LADRÓN. PS4', '', '', 'post-1459990352.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/IYzg2QL51XY" frameborder="0" allowfullscreen></iframe>', 'UNCHARTED 4', '2016-04-05', '2016-04-05 17:05:53', 0, 0, 244, 1),
(266, 3, 'Animales fantásticos y dónde encontrarlos-harry potter-', 'Animales fantásticos y dónde encontrarlos (2016)', '', '<p><strong>Estreno en USA</strong>: 18/11/2016<br />\r\n<strong>Estreno en Espa&ntilde;a:</strong>&nbsp;18/11/2016&nbsp;</p>\r\n\r\n<p><strong>Reparto:</strong>&nbsp;Eddie Redmayne,&nbsp;Katherine Waterston,&nbsp;Alison Sudol,&nbsp;Ezra Miller,&nbsp;Dan Fogler,Colin Farrell,&nbsp;Jenn Murray,&nbsp;Jon Voight,&nbsp;Carmen Ejogo,&nbsp;Gemma Chan,&nbsp;Faith Wood-Blagrove&nbsp;</p>\r\n\r\n<p>Sinopsis:</p>\r\n\r\n<p>En la cinta Newt Scamander, el preeminente magizo&oacute;logo del mundo de la magia, llega a la ciudad de Nueva York despu&eacute;s de haber viajado por todo el mundo buscando y documentando a las distintas criaturas m&aacute;gicas que lo pueblan.</p>\r\n', 'post-1460688109.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/cjecC5K7ZLc" frameborder="0" allowfullscreen></iframe>', 'Animales fantásticos', '2016-04-13', '2016-04-13 18:55:10', 0, 0, 260, 1);
INSERT INTO `cp_post` (`id`, `category`, `url_name`, `title`, `description`, `large_text`, `image`, `slider_image`, `video`, `teg`, `createdate`, `add-date`, `slider`, `favorite`, `pos`, `active`) VALUES
(267, 6, '7-comportamientos-tóxicos-de-los-que-no-son-conscientes-los-padres', '7 comportamientos tóxicos de los que no son conscientes los padres', '', '<p style="text-align: center;"><span style="font-family:comic sans ms,cursive">Cuando nacen, los ni&ntilde;os no vienen con un manual bajo el brazo que nos ense&ntilde;e a ser los mejores padres. De hecho, muchas veces caemos en ciertos comportamientos t&oacute;xicos que repercuten negativamente en su desarrollo</span></p>\r\n\r\n<p>Los padres siempre intentan<strong>&nbsp;educar a sus hijos lo mejor que saben y pueden.</strong></p>\r\n\r\n<p>No obstante, a veces no son conscientes de que tienen ciertos&nbsp;comportamientos t&oacute;xicos&nbsp;con ellos que pueden hacerles mucho m&aacute;s da&ntilde;o que bien. Esto es algo en lo que nos centraremos hoy, con el fin de abrir los ojos ante una realidad que, muchas veces, no logramos ver.</p>\r\n\r\n<h2><span style="color:#cc0066">Comportamientos t&oacute;xicos de los padres</span></h2>\r\n\r\n<p><span style="color:#cc0066"><img alt="" src="/kcfinder/upload/images/ni%C3%B1asola-710x473-500x333.jpg" style="height:333px; width:500px" /></span></p>\r\n\r\n<p>Aunque no lo creamos,&nbsp;<strong>las buenas intenciones por s&iacute; solas no bastan</strong>. Es necesario que hagamos autocr&iacute;tica y que sepamos identificar todos esos comportamientos t&oacute;xicos que pueden afectar a los hijos.</p>\r\n\r\n<p>M&aacute;s que nada, porque pueden afectar a su autoestima y provocarles graves problemas en el futuro.</p>\r\n\r\n<p>Pero&hellip; &iquest;Son los padres culpables de estos comportamientos t&oacute;xicos? No. A veces simplemente est&aacute;n &ldquo;copiando&rdquo; todo aquello que le vieron hacer a sus&nbsp;padres, porque&nbsp;<strong>no existe ninguna asignatura que nos ense&ntilde;e a ser padres</strong>.</p>\r\n\r\n<p>Es algo que aprendemos con la experiencia.</p>\r\n\r\n<p>Abordaremos, entonces, 7 comportamientos t&oacute;xicos con los que, tal vez, te sientas identificado. Es importante que no te cierres en banda y niegues que los cumples casi todos. Piensa que lo importante es tu hijo. &iexcl;Vamos all&aacute;!</p>\r\n\r\n<h2>1. Eres hipercr&iacute;tico</h2>\r\n\r\n<p>En muchas ocasiones no somos capaces de identificar lo cr&iacute;ticos que llegamos a ser con los hijos. Es bueno se&ntilde;alar los errores, porque esto ayuda al cambio y a que el ni&ntilde;o se d&eacute; cuenta de d&oacute;nde falla.</p>\r\n\r\n<p>Sin embargo, tambi&eacute;n debemos tener en cuenta que<strong>&nbsp;las cr&iacute;ticas continuadas no hacen ning&uacute;n bien</strong>. Ser excesivamente cr&iacute;tico puede provocar inseguridades en nuestros hijos y har&aacute; que ellos mismos desconf&iacute;en de sus propias capacidades y habilidades.</p>\r\n\r\n<h2>2. Castigas las emociones negativas</h2>\r\n\r\n<p>Solemos distinguir entre emociones positivas y negativas, cuando&nbsp;<strong>muchas emociones negativas son realmente positivas</strong>. El miedo, por ejemplo, puede salvarnos la vida en m&aacute;s de una ocasi&oacute;n.</p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/Nin%CC%83o-llorando-sen%CC%83alado-por-su-padre-con-el-dedo-500x333.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p>Es por esto por lo que debemos&nbsp;<strong>permitir a nuestros hijos que expresen sus emociones</strong>, que lloren, que muestren su tristeza, que si tienen miedo lo manifiesten&hellip; La represi&oacute;n nunca ser&aacute; buena porque, tarde o temprano, toda esa represi&oacute;n saldr&aacute; por alg&uacute;n lado.</p>\r\n\r\n<h2>3. Decidir por ellos</h2>\r\n\r\n<p>Los ni&ntilde;os son ni&ntilde;os, pero eso no significa que no puedan tener ni voz ni voto. Es cierto que hay determinadas decisiones en las que los padres tienen que intervenir, pero en otras &iexcl;no es necesario!</p>\r\n\r\n<p><strong>Perm&iacute;tele a tus hijos tomar las decisiones que puedan tomar</strong>, as&iacute; fomentar&aacute;s su seguridad y no provocar&aacute;s todo lo contrario.</p>\r\n\r\n<h2>4. Inculcarles miedo</h2>\r\n\r\n<p><strong>Los ni&ntilde;os deben vivir en un ambiente de seguridad y confianza</strong>, no en uno donde el miedo est&eacute; continuamente acech&aacute;ndoles. Los ni&ntilde;os necesitan cometererrores, explorar y empezar a experimentar la vida.</p>\r\n\r\n<p>Si tienen miedo, se convertir&aacute;n en personas inseguras y temerosas&nbsp;hasta de s&iacute; mismas. Es importante que no les inculquemos este sentimiento, porque vivir con miedo no es vivir.</p>\r\n\r\n<h2>5. Ellos no tienen la culpa</h2>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/Madre-mirando-a-su-hija-enfadada-mientras-llora-1-500x334.jpg" style="height:334px; width:500px" /></p>\r\n\r\n<p>A veces,&nbsp;<strong>los padres descargan sus frustraciones con los hijos haci&eacute;ndoles sentir culpables</strong>&nbsp;de cosas de las que no son responsables.</p>\r\n\r\n<p>Esto puede ocasionarles un gran problema el d&iacute;a de ma&ntilde;ana, en el cual el sentimiento de culpa lo llevar&aacute;n ya interiorizado. Nadie deber&iacute;a hacer sentir culpables a los dem&aacute;s, y menos los padres a sus hijos.</p>\r\n\r\n<h2>6. El amor no tiene condiciones</h2>\r\n\r\n<p>Este es un grave error en el que los padres caen sin darse cuenta.&nbsp;<strong>El amor de los padres por los hijos no debe tener condiciones</strong>, no debe depender de los logros o de los comportamientos que tengan los ni&ntilde;os.</p>\r\n\r\n<p>Esto solo originar&aacute; que sientan que no merecen ser amados y es algo que cargar&aacute;n siempre a sus espaldas.</p>\r\n\r\n<h2>7. No poner l&iacute;mites</h2>\r\n\r\n<p>A veces sucede cuando tenemos varios hijos o, simplemente, no tenemos intenci&oacute;n de ponerles tantos l&iacute;mites. Esto es un error.&nbsp;<strong>Los ni&ntilde;os necesitan l&iacute;mites</strong>&nbsp;que les permitan estar a salvo del mundo que est&aacute;n descubriendo.</p>\r\n\r\n<p><strong>Los l&iacute;mites son positivos</strong>, pues sin ellos&nbsp;pueden empezar a desarrollar un comportamiento negativo y desafiante.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Si te has sentido identificado como padre con algunos de estos comportamientos t&oacute;xicos, o si has visto a tus padres identificados en ellos, es importante que modifiques estos comportamientos y no los vuelvas a repetir.</p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/ni%C3%B1a-sujetando-un-osito-500x333.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p>Estamos formando a&nbsp;<strong>personas que tendr&aacute;n que vivir en este mundo y relacionarse</strong>. Todos estos comportamientos no les facilitar&aacute;n la vida, sino que se la har&aacute;n a&uacute;n m&aacute;s dif&iacute;cil.</p>\r\n\r\n<p>Fuente:&nbsp;mejorconsalud</p>\r\n', 'post-1460815123.jpeg', '', '', 'los padres', '2016-04-15', '2016-04-15 06:12:04', 0, 0, 261, 1),
(251, 6, 'Aprende-a-mover-el-trasero-como-', 'Aprende a mover el trasero como "lexy panterra"', '', '<p>Seguro que a muchas les gusta mover el culo igual que &quot;Lexy Panterra&quot; pues en estos Videotutoriales nos ense&ntilde;a que debemos hacer para conseguirlo..</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/GxMEsXqX7T8" width="640"></iframe></p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/FoCgcMTApac" width="640"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'post-1459992322.jpeg', '', '<iframe width="560" height="315" src="https://www.youtube.com/embed/NK_e5_fKtIo" frameborder="0" allowfullscreen></iframe>', 'Lexy Panterra', '2016-04-05', '2016-04-05 17:37:26', 0, 0, 246, 1),
(252, 2, '¿Sabías-que-existe-el-miedo-a-dormir?', '¿Sabías que existe el miedo a dormir?', '', '<p>A este trastorno se lo conoce como somnifobia u tambi&eacute;n conocido como oneirofobia y es mucho m&aacute;s habitual de lo que te puedas llegar a pensar; lo m&aacute;s normal es que ir a la cama sea una experiencia satisfactoria y que nos guste&hellip; pero para algunas personas puede llegar a ser algo completamente catastr&oacute;fico.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/Sabias-que-existe-el-miedo-a-dormir-640x373.jpg" style="height:373px; width:640px" /></p>\r\n\r\n<p>Estas personas empiezan a experimentar toda una serie de s&iacute;ntomas antes de irse a dormir que, l&oacute;gicamente, impedir&aacute;n que puedan llegar a conciliar el sue&ntilde;o: por ejemplo, pueden experimentar mareos, n&aacute;useas, sudoraci&oacute;n excesiva, boca seca, palpitaciones&hellip; adem&aacute;s de que los ataques de p&aacute;nico son muy habituales.</p>\r\n\r\n<p>Realmente no se saben las causas exactas, aunque todo apunta a que podr&iacute;a deberse a pesadillas que no paran de repetirse o a haber experimentado situaciones traum&aacute;ticas antes de ir a la cama.</p>\r\n\r\n<p>En el caso de que se experimente alguno de estos s&iacute;ntomas ser&aacute; de vital importancia ponerse en contacto con un especialista con el objetivo de que pueda iniciar un tratamiento desde el primer momento; de esta forma se podr&aacute; tratar a tiempo y el descanso siempre ser&aacute; &oacute;ptimo.</p>\r\n\r\n<p>Ahora ya conoces este miedo tan tedioso y esperamos que nunca te llegue a afectar a ti.</p>\r\n\r\n<p>Fuente:&nbsp;noticiasinteresantes</p>\r\n', 'post-1460068089.jpeg', '', '', '', '2016-04-06', '2016-04-06 14:39:35', 0, 0, 247, 1),
(253, 4, 'Cinco-peinados-que-puedes-hacerte-tu-sola', 'Cinco peinados que puedes hacerte tu sola', '', '', 'post-1460077730.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/5vXSJCGL8NM" frameborder="0" allowfullscreen></iframe>', 'peinados', '2016-04-06', '2016-04-06 17:22:12', 0, 0, 248, 1),
(254, 6, '7-maneras-para-saber-si-será-niño-o-niña,-pensarán-que-eres-Obstetra', '7 maneras para saber si será niño o niña, pensarán que eres Obstetra', '', '<p>Bueno, si el milagro de la vida lleg&oacute; a tu existencia, antes que nada te felicitamos, est&aacute;s por vivir la aventura m&aacute;s incre&iacute;ble de tu vida. Los primeros meses son una incertidumbre total porque todo mundo quiere saber si es ni&ntilde;o o ni&ntilde;a y t&uacute; con los nervios al mil por hora, pero tranquila, llegaste a la p&aacute;gina adecuada.</p>\r\n\r\n<p>Hoy te compartiremos siete trucos divertidos para saber si tendr&aacute;s una ni&ntilde;a o un ni&ntilde;o. Quiz&aacute; ya est&aacute;s en el tiempo de saber pero tu beb&eacute; no se ha dejado ver, pues aqu&iacute; le ganar&aacute;s la jugada y podr&aacute;s preparar todas sus cositas como mejor consideres. Toma nota y manos a la obra :</p>\r\n\r\n<h2>1.- El famoso truco de la aguja</h2>\r\n\r\n<p>Quiz&aacute; te lo platicaron tus t&iacute;as, mam&aacute; o abuelita. Coloca una hijo en una aguja y &aacute;talo como si fuera una cadena, ahora, sostenlo sobre la palma de tu mano izquierda y entre tus dedos pulgar e &iacute;ndice deja la aguja caer tres veces, ahora deja que la aguja cuelgue sobre la palma de tu mano, si hace c&iacute;rculos se trata de una ni&ntilde;a, si la aguja se mueve hacia enfrente y hacia atr&aacute;s, se trata de un ni&ntilde;o.</p>\r\n\r\n<h2><strong>2.- Por sus latidos</strong></h2>\r\n\r\n<p>&iquest;Has escuchado el coraz&oacute;n de tu beb&eacute;? Su rapidez podr&iacute;a ser una gran pista sobre su g&eacute;nero. Si son m&aacute;s de 140 latidos por minuto, es caracter&iacute;stica de una ni&ntilde;a, si por el contrario, son menos de 140 latidos por minuto, entonces podr&iacute;a ser un varoncito.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>3.- Por los antojos que te dan</strong></h2>\r\n\r\n<p>&iquest;Se dispar&oacute; tu apetito con cosas medio raras? Los antojos tambi&eacute;n podr&iacute;an delatar a la personita que crece dentro de ti. Si tienes muchas ganas de comer algo agridulce, es se&ntilde;al de que viene una ni&ntilde;a, si por el contrario, optas por cosas saladas o amargas, todo indica que ser&aacute; un ni&ntilde;o guap&iacute;simo.</p>\r\n\r\n<h2><strong>4.- Marcas de acn&eacute;</strong></h2>\r\n\r\n<p>Las mujeres que sufren de acn&eacute; en los embarazos suelen encontrarse con una ni&ntilde;a como resultado del proceso. En algunas culturas, se cre&iacute;a que el acn&eacute; aparec&iacute;a porque la ni&ntilde;a se alimentaba de la belleza de su madre.</p>\r\n\r\n<h2><strong>5.- Con tu anillo de bodas</strong></h2>\r\n\r\n<p>Col&oacute;calo dentro de una cadena o hilo. Ahora ac&eacute;rcalo a tu vientre como si fuera un p&eacute;ndulo. Si el anillo hace c&iacute;rculos es se&ntilde;al de que esperas un var&oacute;n, si el anillo se mueve hacia enfrente o atr&aacute;s, entonces llegar&aacute; a tu vida una bella ni&ntilde;a.</p>\r\n\r\n<h2><strong>6.- Con ayuda del calendario chino</strong></h2>\r\n\r\n<p>Busca en internet la tabla para determinar tu edad lunar, ya que tengas el resultado verifica el mes de concepci&oacute;n y la combinaci&oacute;n te arrojar&aacute; si lo que crece dentro de ti es un pr&iacute;ncipe o princesa.</p>\r\n\r\n<h2><strong>7.- Por la forma de la panza</strong></h2>\r\n\r\n<p>Las mujeres han observado que cuando la panza crece s&oacute;lo hacia el frente, se trata de un ni&ntilde;o, pero cuando la panza crece hacia enfrente y los lados, ser&aacute; un bella ni&ntilde;a.</p>\r\n\r\n<p>Esperamos que te diviertas con estos peculiares trucos que se han vuelto tradici&oacute;n en las mujeres del mundo, pero sobretodo, que disfrutes tu embarazo y a esa personita que est&aacute; por llegar.</p>\r\n\r\n<p>Plat&iacute;canos &iquest;conoces otros m&eacute;todos para adivinar el g&eacute;nero de tu beb&eacute;?</p>\r\n\r\n<p>Fuente: Abuelasabia</p>\r\n', 'post-1460079477.jpeg', '', '', 'bebes', '2016-04-06', '2016-04-06 17:51:18', 0, 0, 249, 1),
(255, 6, 'Señales-del-más-allá-', 'Señales del más allá ', '', '<p>&iquest;Cu&aacute;ntas veces hemos notado que un ser querido estaba a nuestro lado y no hemos sabido muy bien explicar porque lo hemos percibido o porque nos hemos dado cuenta? hay muchas formas de percibir a un ser querido; aqu&iacute; vamos a ver las que m&aacute;s percibimos.</p>\r\n\r\n<p><strong>Mediantes los olores:</strong><br />\r\n&iquest;Cuantas veces sentimos un olor que nos recuerda a un ser querido, tabaco, comida un perfume?&hellip; que nos hace sentir que a&uacute;n est&aacute;n cerca, es su forma de hacernos saber que siguen ah&iacute;.</p>\r\n\r\n<p><strong>Mientras so&ntilde;amos:</strong><br />\r\nEs la m&aacute;s com&uacute;n, so&ntilde;ar con un ser querido fallecido es la forma m&aacute;s com&uacute;n de hacernos ver que siguen ah&iacute;, la mayor&iacute;a de las veces nos ayudan con la resoluci&oacute;n de un conflicto o d&aacute;ndonos la tranquilidad de que todo saldr&aacute; bien.</p>\r\n\r\n<p><strong>Mediante voces:</strong><br />\r\nMuchas personas aseguran haber escuchado voces de un ser querido que ya no est&aacute;, pero en realidad ocurre solo dentro de su mente es lo que com&uacute;nmente se llama clariaudiencia.</p>\r\n\r\n<p><strong>&nbsp;Moviendo objetos:</strong><br />\r\nEsta es la forma que tienen los esp&iacute;ritus atrapados entre ambos mundos de hacernos saber que algo no va bien ocurre con frecuencia en los que tienen problemas de atenci&oacute;n.</p>\r\n\r\n<p><strong>La manifestaci&oacute;n:</strong><br />\r\nPor &uacute;ltimo y no menos importante tenemos la manifestaci&oacute;n, es la menos com&uacute;n pero la m&aacute;s intensa, ya que se da en contadas ocasiones</p>\r\n', 'post-1460157806.jpeg', '', '', '', '2016-04-07', '2016-04-07 15:36:47', 0, 0, 250, 1),
(256, 14, '10-Gestos-de-hombres-caballeros-que-derriten-a-cualquier-mujer', '10 Gestos de hombres caballeros que derriten a cualquier mujer', '', '<p>Aunque muchos dicen que los tiempos han cambiado y las reglas para enamorar ya no son las mismas, no se necesita una costosa demostraci&oacute;n de afecto para ganarse el coraz&oacute;n de las&nbsp;<strong>mujeres</strong>. S&oacute;lo se requiere un poco de sinceridad y demostrar algo de inter&eacute;s rom&aacute;ntico.</p>\r\n\r\n<p>La caballerosidad no ha muerto, y los hombres pueden seguir siendo atentos y sorprender a sus parejas o futuras enamoradas.</p>\r\n\r\n<p>Es por eso que resulta un alivio cuando nos topamos con uno de esos pocos&nbsp;caballeros que a&uacute;n quedan. Puedes ver su caballerosidad incluso en las acciones m&aacute;s peque&ntilde;as, y constantemente nos recuerdan que a&uacute;n existen hombres buenos en el mundo.</p>\r\n\r\n<p><strong>nteresante:&nbsp;</strong>11 cosas que toda MUJER desea en una relaci&oacute;n y todo hombre debe d&aacute;rselo</p>\r\n\r\n<p>Son peque&ntilde;as formas en las que los hombres demuestran que se preocupan por ti, de la misma forma en la que las mujeres tenemos ese instinto de proteger y cuidar a nuestros seres queridos.</p>\r\n\r\n<p>Para reconocer a un hombre caballero simplemente tienes que aprender a notar esos gestos sutiles y llenos de significado que a continuaci&oacute;n te mostramos:</p>\r\n\r\n<h2>1.&nbsp;Te abren la puerta</h2>\r\n\r\n<p>Un hombre que se da el tiempo de darse la vuelta para abrirte la puerta del coche es alguien que vale la pena. Puede parecer anticuado, pero es un gesto realmente bonito.</p>\r\n\r\n<h2>2.&nbsp;Te guarda el &uacute;ltimo pedazo de comida</h2>\r\n\r\n<p>Dicen que a los hombres hay que conquistarlos por el est&oacute;mago. As&iacute; que cuando te guarda ese &uacute;ltimo pedazo para ti, lo que te est&aacute; diciendo es que b&aacute;sicamente te quiere m&aacute;s que cualquier plato de comida que tenga en frente.</p>\r\n\r\n<h2>3.&nbsp;Pasa tiempo con tu familia</h2>\r\n\r\n<p>Un hombre que demuestra inter&eacute;s en mirar tus fotos de cuando eras beb&eacute;, le ense&ntilde;a a tu hermano peque&ntilde;o c&oacute;mo jugar a f&uacute;tbol y le dice a tu mam&aacute; lo rica que le qued&oacute; la comida, se merece todo tu cari&ntilde;o. Son gestos peque&ntilde;os, pero hablan muy bien de sus intenciones.</p>\r\n\r\n<h2>4.&nbsp;Te acompa&ntilde;a a ver pel&iacute;culas rom&aacute;nticas</h2>\r\n\r\n<p>Cuando un hombre se ofrece para ir a ver una pel&iacute;cula de chicas contigo porque sabe que es algo que te gusta, se gana puntos extras. (Y es incluso m&aacute;s importante si lo hace sin quejarse o esperar algo a cambio).</p>\r\n\r\n<h2>5.&nbsp;Te env&iacute;a flores</h2>\r\n\r\n<p>No me refiero de ese ramo de rosas de 300 soles que recibes el d&iacute;a de los enamorados. Me refiero a esa colecci&oacute;n de flores que compr&oacute; en el supermercado un martes mientras hac&iacute;a la compra de la semana y se acord&oacute; de ti. Hay algo inesperado en eso de recibir flores que siempre nos hace sonre&iacute;r.</p>\r\n\r\n<h2>6.&nbsp;Camina por fuera de la &nbsp;calle</h2>\r\n\r\n<p>La primera vez que alguien haga esto, quiz&aacute;s te confunda un poco. Pero luego comenzar&aacute;s a cuestionarte c&oacute;mo es posible que ninguno de los hombres con los que sal&iacute;as antes haya pensado en ponerse de tal manera que pudieran protegerte en caso que pasara alguna tragedia en la calle.</p>\r\n\r\n<h2>7.&nbsp;Te &nbsp;besa en la frente</h2>\r\n\r\n<p>Si ya tienes una relaci&oacute;n estable y duradera con este chico y hace esto, es un peque&ntilde;o gesto que te har&aacute; sentir lo mucho que te adora.</p>\r\n\r\n<h2>8.Te ayuda a vestir</h2>\r\n\r\n<p>Las mujeres somos totalmente capaces de ponernos nuestras casacas o sacos, pero esto no se trata de habilidad. Es muy caballeroso y amable que alguien la sostenga para que te la pongas o que te ofrezca prestarte la suya cuando tienes fr&iacute;o.</p>\r\n\r\n<h2>9.&nbsp;Maestro en la cama</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Muchas mujeres estamos dispuestas a darlo todo, pero pocas nos animamos a pedirlo, un hombre de verdad llegar&aacute; hacia abajo y te llevar&aacute; a la luna, y se siente riqu&iacute;simo,&nbsp;todas tenemos un lugarcito en nuestro cuerpo que cuando es besado o acariciado, se nos ponen los pelitos de punta y nos da ese escalofr&iacute;o, el hombre caballeroso lo sabe a la perfecci&oacute;n.</p>\r\n\r\n<h2>10. Es genial</h2>\r\n\r\n<p>&iexcl;Es&nbsp;Genial! Todas queremos&nbsp;estar con alguien que nos haga la vida m&aacute;s interesante. &iexcl;Nadie quiere una pareja aburrida! . &iexcl;Cualquier cosa que se amolde nuestra&nbsp;personalidad y nos&nbsp;mantenga haciendo cosas geniales juntos!</p>\r\n\r\n<p>Estas acciones no son aplicables a TODAS las mujeres TODO el tiempo, pero en la mayor&iacute;a de los casos, podr&iacute;an ser muy &uacute;tiles y acertadas. Apl&iacute;calas d&iacute;a a d&iacute;a.</p>\r\n\r\n<p>Fuente: abuelasabia</p>\r\n', 'post-1460158635.jpeg', '', '', '', '2016-04-07', '2016-04-07 15:50:36', 0, 0, 251, 1),
(257, 1, 'FAST-&-FURIOUS-8-FICHA-A-TORMUND-MATAGIGANTES', 'FAST & FURIOUS 8 FICHA A TORMUND MATAGIGANTES', '', '<p><strong>Kristofer Hivju</strong>, el actor noruego conocido por interpretar a Tormund Matagigantes en Juego de Tronos, ficha por&nbsp;<strong>Fast &amp; Furious 8</strong>, la octava entrega de la franquicia de acci&oacute;n y tuning (m&aacute;s de lo primero que de lo segundo) protagonizada por Vin Diesel.</p>\r\n\r\n<p>La incorporaci&oacute;n de Kristofer Hivju ha sido revelada por el portal<strong><a href="http://www.ew.com/article/2016/04/06/fast-8-game-thrones-kristofer-hivju" target="_blank">Entertainment Weekly</a></strong>. Esta misma web lanza la posibilidad de que el noruego sea quien encarne al villano de la cinta, ya que se desconoce al actor que le dar&aacute; vida y se ha ocultado, por el momento, el personaje al que interpretar&aacute; Hivju.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/to_mnxh%281%29.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p>Precisamente con respecto al villano, hace unos d&iacute;as sal&iacute;a a la luz el inter&eacute;s del director y el guionista del octavo episodio de la franquicia por crear un gran papel para un villana. Por el momento el &uacute;nico nombre que se ha vinculado a dicho papel es el de&nbsp;<strong>Charlize Theron</strong>, aunque todav&iacute;a no ha habido ning&uacute;n tipo de confirmaci&oacute;n por parte de la productora ni por la actriz.</p>\r\n\r\n<p>Universal Studios se ha decantado por&nbsp;<strong>F. Gary Gray</strong>&nbsp;para dirigir la octava entrega de la franquicia de acci&oacute;n y tuning m&aacute;s conocida del s&eacute;ptimo arte. Los principales trabajos de Gray en la gran pantalla han sido en&nbsp;<em>Diablo</em>, pel&iacute;cula en la que ya coincidi&oacute; con&nbsp;<strong>Vin Diesel</strong>, y&nbsp;<em>The Italian Job</em>, otra cinta repleta de persecuciones por las calles, pero con Mini en lugar de veh&iacute;culos de carreras o de alta gama.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/kcfinder/upload/images/galeria_fcq6.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p><strong>Fast &amp; Furious 8</strong>&nbsp;volver&aacute; a contar con Vin Diesel (Babylon y Las cr&oacute;nicas de Riddick), Dwayne Johnson (Tesoro del Amazonas y El rey escorpi&oacute;n), Michelle Rodriguez (Machete y Perdidos), Tyrese Gibson (Transformers y 2 Fast 2 Furious), Ludacris (Resac&oacute;n en las Vegas y A todo gas) y Jason Statham (Los Mercenarios y Snatch: cerdos y diamantes) en los papeles de Dominic Toretto, Hobbs, Ortiz, Roman Pearce, Tej Parker y Deckard Shaw respectivamente.</p>\r\n\r\n<p>Fuente: IGN Espa&ntilde;a</p>\r\n', 'post-1460162335.jpeg', '', '', 'Fast & Furious 8', '2016-04-07', '2016-04-07 16:52:17', 0, 0, 252, 1),
(258, 6, '10-Increíbles-Adolescentes-que-no-Creerás-que-Existen', '10 Increíbles Adolescentes que no Creerás que Existen', '', '<p>En esta lista te muestro 10 adolescentes que por sus condiciones m&eacute;dicas, habilidades y casos de superaci&oacute;n personal, se han ganado un lugar en el mundo.&nbsp;</p>\r\n', 'post-1460405029.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/Tyz6VlWJ4uI" frameborder="0" allowfullscreen></iframe>', '', '2016-04-10', '2016-04-10 12:17:10', 0, 0, 253, 1),
(259, 1, '¿Es-posible-absorber-la-energía-de-otras-personas?,-la-ciencia-esta-investigándolo', '¿Es posible absorber la energía de otras personas?, la ciencia esta investigándolo', '', '<p>Siempre se ha hablado de algunas personas que sienten como que otras les roba la energ&iacute;a&hellip; sin embargo, esto se ha asociado con temas espirituales y por eso se pon&iacute;a en duda. No obstante, ahora un equipo de investigadores de la Universidad de Bielefeld han descubierto algo que podr&iacute;a probar que esto es cierto.</p>\r\n\r\n<p>Han analizado plantas para llegar a la conclusi&oacute;n de que pueden extraer energ&iacute;a de otras plantas. En concreto se han encargado de estudiar un peculiar esp&eacute;cimen catalogado como&nbsp;<em>Chlamydomonas reinhardtii</em>;<strong>&nbsp;el cual para obtener energ&iacute;a realiza la fotos&iacute;ntesis (c&oacute;mo es normal), pero tambi&eacute;n es capaz de absorberla de otras plantas del entorno.</strong></p>\r\n\r\n<p>Aunque es cierto que no hay ning&uacute;n tipo de evidencia de que esto lo pueda llegar a hacer una persona, si que es verdad que se ha abierto una primera l&iacute;nea de investigaci&oacute;n que no sabemos muy bien en d&oacute;nde va a terminar. Estas plantas se comportan como una especie de esponja que son capaces de poder absorber la energ&iacute;a contenida en el ambiente en ese momento&hellip; por lo que, quiz&aacute;, tambi&eacute;n se podr&iacute;a llegar a extrapolar en humanos.</p>\r\n\r\n<p>&iquest;Qui&eacute;n sabe? Quiz&aacute; en el futuro desarrollemos nuevas maneras para poder extraer la energ&iacute;a de personas de nuestro entorno.</p>\r\n\r\n<p>Fuente:&nbsp;noticiasinteresantes</p>\r\n', 'post-1460405753.jpeg', '', '', '', '2016-04-10', '2016-04-10 12:29:14', 0, 0, 254, 1),
(260, 3, 'TOP-10-MEJORES-PAPELES-DE-CHARLIZE-THERON', 'TOP 10 MEJORES PAPELES DE CHARLIZE THERON', '', '<p>Charlize est&aacute; de moda por ser de nuevo la Reina Ravenna en la&nbsp;<strong>pel&iacute;cula de Blancanieves&nbsp;</strong>pero tambi&eacute;n por haber fichado como villana para la pr&oacute;xima entrega de&nbsp;<strong>Fast &amp; Furious 8.</strong></p>\r\n\r\n<p>A sus 40 a&ntilde;os de edad&nbsp;<strong>la sudafricana m&aacute;s bella del mundo del cine&nbsp;</strong>ha demostrado que se pueden hacer formidables papeles&nbsp;<strong>sin que el f&iacute;sico condicione o etiquete su figura o perfil.&nbsp;</strong>Su esplendor f&iacute;sico sigue siendo un portento pero su talento la acompa&ntilde;a, cosa de la que no pueden presumir otras actrices.</p>\r\n\r\n<p>Se dice que ser guapo o guapa ayuda pero tambi&eacute;n lastra y hay millones de ejemplos de rostros bellos que cayeron en el olvido.&nbsp;<strong>En cambio, Charlize Theron ha demostrado lo contrario.</strong>&nbsp;Vino para quedarse y a&uacute;n la veremos en much&iacute;simos otros grandes papeles. Seguro.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/charlize-theron_fzjq.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p>Hace poco defend&iacute;a en una entrevista promocional sobre<strong>&nbsp;<em>El cazador y la reina del hielo</em></strong><a href="http://es.ign.com/el-cazador-y-la-reina-del-hielo/101988/feature/critica-las-cronicas-de-blancanieves-el-cazador-y" target="_blank">&nbsp;</a>que apenas existen personajes femeninos interesantes en la actualidad y que &quot;<em>Los papeles serios de verdad van a parar a quienes parecen f&iacute;sicamente adecuada para ellos y se acab&oacute;. &iquest;Cu&aacute;ntos papeles hay para una modelo guapa de metro ochenta con vestidito? Cuando se trata de papeles sustanciosos, he estado ah&iacute; y la gente guapa es la primera en ser descartada. (...) Vivimos en una sociedad donde las mujeres se marchitan y los hombres envejecen como el buen vino.</em></p>\r\n\r\n<p>As&iacute; de clara y contundente se expresaba Charlize. Y no le falta cierta raz&oacute;n.</p>\r\n\r\n<p>Vamos a repasar&nbsp;<strong>los momentos m&aacute;s brillantes, hasta ahora, de la actriz.</strong>No hablamos del nivel de la pel&iacute;cula sino de su interpretaci&oacute;n en la misma, con independencia del resultado del film en conjunto.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style="color:#cc0066"><strong>Mad Max: Furia en la carretera (2015)</strong></span></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Una cinta maravillosa de la que hemos hablado much&iacute;simo. Nos encandil&oacute; en su momento y lo contamos&nbsp;<strong>en la cr&iacute;tica</strong>.&nbsp;Apostamos por ella como&nbsp;<strong>una de las cintas del a&ntilde;o pasado.&nbsp;</strong>Nos encant&oacute; que triunfara en las categor&iacute;as t&eacute;cnicas de los&nbsp;<strong>&uacute;ltimos premios Oscar</strong>.&nbsp;Desvelamos los secretos de&nbsp;<strong>su edici&oacute;n especial</strong>, apoyamos el papel&oacute;n y el punto de vista femenino que George Miller otorg&oacute; a Charlize Theron porque es uno de los mejores personajes vistos en los &uacute;ltimos a&ntilde;os en la gran pantalla (&iexcl;Viva esta Imperator Furiosa!).&nbsp;<strong>La queremos de vuelta con nueva peli.</strong></p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/GvsFoGIuRX4" width="640"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style="font-size:16px"><span style="color:#cc0066"><strong>Young Adult (2011)</strong></span></span></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Jason Reitman&nbsp;</strong>dirig&iacute;a a Charlize Theron en una original propuesta donde una mujer adulta que no termina de madurar sorprend&iacute;a a propios y extra&ntilde;os con este gui&oacute;n de&nbsp;<strong>Diablo Cody&nbsp;</strong>(quien ya triunf&oacute; con su historia de<strong><em>Juno</em></strong><strong>).&nbsp;</strong>El personaje de Theron no quiere crecer y se niega a ser adulta. Siempre quiere quedarse en ese limbo de la &quot;juventud&quot;, a pesar de que el tiempo empieza a dar se&ntilde;ales de que ya pas&oacute; su mejor momento. Theron era una escritora de novelas que sufr&iacute;a depresi&oacute;n y trataba de intentar retomar la relaci&oacute;n con su ex novio. Pero ya era demasiado tarde...</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/g7q4xQNLpiI" width="640"></iframe></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style="color:#cc0066"><strong>Blancanieves y la leyenda del cazador (2012)</strong></span></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Podr&iacute;amos incluir&nbsp;<strong>su precuela reci&eacute;n estrenada</strong>&nbsp;porque el personaje de Charlize Theron es el mismo (el de la reina Ravenna). Sin embargo,&nbsp;<strong>en la cinta de 2012 el protagonismo de Theron era mucho mayor</strong>&nbsp;y adem&aacute;s deslumbraba y salvaba la pel&iacute;cula. En esta reci&eacute;n llegada a los cines (<strong><em>El cazador y la reina del hielo</em></strong>) su presencia es tan escasa que ni la pobre Charlize logra mantener un metraje que queda como desprop&oacute;sito absoluto. Menuda forma de desaprovechar el talento de la actriz (y el de otras dos grandes como&nbsp;<strong>Emily Blunt y Jessica Chastain</strong>). Incre&iacute;ble, vaya.</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/n0veSWlz0Ko" width="640"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style="color:#cc0066"><strong>Monster (2003)</strong></span></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Es el papel m&aacute;s premiado de&nbsp;<strong>Charlize</strong>&nbsp;(le vali&oacute; hasta el premio&nbsp;<strong>Oscar a la mejor actriz</strong>&nbsp;de la gala de 2004, en la 76 edici&oacute;n. El rol de Aileen Wuornos, una ex prostituta y asesina en serie que iba quit&aacute;ndose del medio a tipos indeseables, le dio el gran premio de la Academia. Fue su primera nominaci&oacute;n y no fall&oacute;. El destino quiso que ganara el premio con un personaje que le obligaba a &quot;afear&quot; su rostro bajo una amplia capa de maquillaje. La cinta de&nbsp;<strong>Patty Jenkins</strong>&nbsp;produce escalofr&iacute;os en algunos momentos por su brutalidad.&nbsp;<strong>Y Theron est&aacute; extraordinaria.</strong></p>\r\n\r\n<p style="text-align:center"><strong><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/KjkyJ7aYQDs" width="480"></iframe></strong></p>\r\n\r\n<ul>\r\n	<li><span style="color:#cc0066"><span style="font-size:16px"><strong>Las normas de la casa de la sidra (1999)</strong></span></span></li>\r\n</ul>\r\n\r\n<p><strong>Lasse Hallstr&ouml;m&nbsp;</strong>realiz&oacute; una gran pel&iacute;cula que daba a dos actores una viveza total: eran el casi siempre perfecto&nbsp;<strong>Michael Caine y un gran Tobey Maguire</strong>. La novela de John Irving serv&iacute;a de base para mostrar c&oacute;mo este drama en un orfanato se rod&oacute; con elegancia y supremo cuidado.&nbsp;<strong>Charlize Theron</strong>&nbsp;pon&iacute;a (cuando sal&iacute;a) el lado femenino como Candy Kendall, personaje del que se enamoraba Maguire, aunque sin ser una mujer florero de relleno. Ten&iacute;a empat&iacute;a y gracilidad, aportando el contrapeso al protagonista.</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/l4D2Hog1tEA" width="480"></iframe></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style="color:#cc0066"><strong>En tierra de hombres (2005)</strong></span></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Charlize Theron&nbsp;</strong>fue nominada como mejor actriz de reparto pero no se alz&oacute; con la estatuilla dorada en esta ocasi&oacute;n. Su papel era el de una mujer que se ve obligada a subsistir en su pueblo de Minnesota, al que regresa como madre soltera. Su &uacute;nico modo de ganar algo de dinero para mantenerse es vivir de las minas de hierro, un trabajo que parece exclusivamente indicado para hombres. All&iacute; demostrar&aacute; que tiene mucho que decir una mujer en un ambiente tan hostil. Fue un caso real de denuncia de acoso en EE.UU. que abri&oacute; cauces legales y permiti&oacute; una concienciaci&oacute;n sobre la discriminaci&oacute;n laboral femenina. Junto a&nbsp;<strong>Theron</strong>ten&iacute;amos a&nbsp;<strong>Sissy Spacek</strong>,&nbsp;<strong>Frances McDormand y Woody Harrelson</strong>.</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/KO660ZkGFuE" width="640"></iframe></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style="color:#cc0066"><strong>En el valle de Elah (2007)</strong></span></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Fue la siguiente pel&iacute;cula del Oscarizado<strong>&nbsp;Paul Haggis (que gan&oacute; por la sobrevalorada Crash).</strong>&nbsp;Un joven desaparecido en una operaci&oacute;n en Irak donde se pone el punto de una investigaci&oacute;n con&nbsp;<strong>Charlize Theron</strong>&nbsp;como detective.&nbsp;<strong>Tomy Lee Jones</strong>&nbsp;(veterano de guerra y padre del joven) la acompa&ntilde;aba en el proceso de encontrar pruebas y saber qu&eacute; hab&iacute;a ocurrido. Jones con su carisma pon&iacute;a en un brete a la actriz pero demostraban ambos su elevado talento.</p>\r\n\r\n<p style="text-align:center"><strong><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/JUo1lptXd1E" width="640"></iframe></strong></p>\r\n\r\n<ul>\r\n	<li><span style="color:#cc0066"><span style="font-size:16px"><strong>Pactar con el diablo (1997)</strong></span></span></li>\r\n</ul>\r\n\r\n<p>El punto femenino del tri&aacute;ngulo que sosten&iacute;a la pel&iacute;cula. Tras un deslumbrante&nbsp;<strong>Al Pacino y un convincente Keanu Reeves</strong>, el otro v&eacute;rtice clave lo pon&iacute;a&nbsp;<strong>Charlize Theron</strong>, con una sensualidad muy alta. Su rol de esposa de Reeves en la cinta le daba poder&iacute;o y momentos de total desequilibrio en la mente de su personaje. Fue la primera &quot;gran&quot; cinta de cara al gran p&uacute;blico donde se la pudo conocer. El m&eacute;rito fue del director<strong>Taylor</strong><strong> Hackford</strong>. Desde entonces,&nbsp;<strong>Theron no dej&oacute; de crecer</strong>.</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/imOXQ_OiwrE" width="640"></iframe></p>\r\n\r\n<ul>\r\n	<li><span style="color:#cc0066"><span style="font-size:16px"><strong>Noviembre dulce (2001)</strong></span></span></li>\r\n</ul>\r\n\r\n<p>Melodrama rom&aacute;ntico. Para algunas listas de comedias y cintas rom&aacute;nticas es una de las m&aacute;s vistas, queridas y aclamadas. La pel&iacute;cula ten&iacute;a momentos cursis y flojos pero se dejaba ver por&nbsp;<strong>Charlize Theron</strong>, que manten&iacute;a su buena qu&iacute;mica con&nbsp;<strong>Keanu Reeves.&nbsp;<em>Love Story</em>&nbsp;</strong>estaba bastante mejor pero quiz&aacute; es hasta comprensible que se conozca menos, sobre todo por parte de las generaciones m&aacute;s j&oacute;venes.</p>\r\n\r\n<p style="text-align:center"><strong><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/kezeYWWNhvE" width="480"></iframe></strong></p>\r\n\r\n<ul>\r\n	<li><span style="color:#cc0066"><span style="font-size:16px"><strong>Prometheus (2012)</strong></span></span></li>\r\n</ul>\r\n\r\n<p>Se esperaba mucho de<strong>&nbsp;<em>Prometheus</em>&nbsp;</strong>porque<strong>&nbsp;Ridley Scott&nbsp;</strong>volv&iacute;a a su universo de&nbsp;<em><strong>Alien</strong></em>&nbsp;muchos a&ntilde;os despu&eacute;s.<strong>&nbsp;Noomi Rapace y Michael Fassbender&nbsp;</strong>eran los principales rostros de la cinta pero olvidarse de<strong>Charlize</strong><strong> Theron</strong>&nbsp;ser&iacute;a un crimen. De hecho, es uno de los personajes m&aacute;s complejos (el de la responsable de la corporaci&oacute;n que emprende la investigaci&oacute;n desde la nave&nbsp;<strong><em>Prometheus</em></strong>, Meredith Vickers). En la esperada secuela se espera a&nbsp;<strong>Theron</strong>&nbsp;como villana con papel m&aacute;s destacado todav&iacute;a.</p>\r\n\r\n<p style="text-align:center"><strong><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/7uwuVA6MsUk" width="640"></iframe></strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p>Fuente:IGN Espa&ntilde;a<br />\r\n&nbsp;</p>\r\n', 'post-1460408067.jpeg', '', '', 'Charlize Theron', '2016-04-10', '2016-04-10 13:07:48', 0, 0, 255, 1),
(261, 1, 'LA-SERIE-MISFITS-TAMBIÉN-TENDRÁ-REMAKE', 'LA SERIE MISFITS TAMBIÉN TENDRÁ REMAKE', '', '<p>Continuando con las&nbsp;<strong>adaptaciones, remakes y revivals</strong>, tanto televisivas como cinematogr&aacute;ficas, le toca el turno a la serie de 2009<strong>Misfists.</strong></p>\r\n\r\n<p>La serie brit&aacute;nica de j&oacute;venes superh&eacute;roes que mezclaba dosis de ciencia ficci&oacute;n, humor y drama, que fue todo un &eacute;xito en el pa&iacute;s, volver&aacute; de la mano de&nbsp;<strong>Freeform</strong>, la cadena anteriormente conocida por&nbsp;<strong>ABC&nbsp;Family</strong>. Originalmente fue emitida durante el a&ntilde;o 2009 y hasta el 2013 por medio de la cadena brit&aacute;nica&nbsp;<strong>E4</strong>. Una serie que estuvo formada por 5 temporadas y con un total de 37 episodios.</p>\r\n\r\n<p>La ficci&oacute;n contaba la historia de un grupo de j&oacute;venes con comportamientos antisociales que se ven obligados a trabajar juntos en un programa de servicios a la comunidad. Durante uno de estos trabajos, una extra&ntilde;a tormenta les dotar&aacute; de superpoderes. Unas capacidades que ir&aacute;n conociendo a medida que avanzan los cap&iacute;tulos.</p>\r\n\r\n<p>Por el momento poco se sabe de c&oacute;mo volver&aacute; esta serie a la peque&ntilde;a pantalla. Con la confirmaci&oacute;n oficial con la que se cuenta es la de&nbsp;<strong>Josh Schwartz</strong>&nbsp;y&nbsp;<strong>Stephanie Savage&nbsp;</strong>como guionistas y productores de la serie. Ambos conocidos por su trabajo en la serie de<strong>&nbsp;Gossip Girl.</strong></p>\r\n\r\n<p>En el caso de que la historia no empiece de cero si no que contin&uacute;e la trama original esta serie podr&iacute;a albergar otra vez su reparto original. Un elenco formado por,&nbsp;<strong>Antonia Thomas&nbsp;</strong>(Amanece en Edimburgo y Survivor),<strong>Robert Sheehan</strong>&nbsp;(Cazadores de sombras y En tiempo de brujas),&nbsp;<strong>Lauren Socha&nbsp;</strong>(Scummu Man),&nbsp;<strong>Nathan Stewart-Jarrett</strong>&nbsp;(Utopia y Dom Hemingway) y el m&aacute;s que conocido&nbsp;<strong>Iwan Rheon</strong>, bueno mejor dicho,&nbsp;<strong>Ramsay Bolton</strong>&nbsp;en<strong>Juego de Tronos</strong>.</p>\r\n\r\n<p>Para aquellos no visteis la serie aqu&iacute; os dejamos el tr&aacute;iler de la primera temporada de la Misfits brit&aacute;nica de 2009:</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/ud8AJDaAW7c" width="640"></iframe></p>\r\n', 'post-1460409421.jpeg', '', '', 'MISFITS', '2016-04-10', '2016-04-10 13:30:22', 0, 0, 256, 1),
(262, 3, 'Dark-Souls-III-–-Trailer-|-PS4-Trailer Español', 'Dark Souls III – Trailer Español', '', '<p>Se acabo la espera por fin esta a la venta&nbsp;Dark Souls III para PS4|Xboxone|PC</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/cWBwFhUv1-8" width="640"></iframe></p>\r\n', 'post-1460586225.jpeg', 'slider-1460600783.jpeg', '<iframe width="640" height="360" src="https://www.youtube.com/embed/-v_hlGRx-uA" frameborder="0" allowfullscreen></iframe>', 'Dark Souls III', '2016-04-12', '2016-04-12 14:36:44', 1, 0, 257, 1),
(264, 4, '10-Gadgets-De-Belleza-Completamente-Extraños,-', '10 Gadgets De Belleza Completamente Extraños, ', '', '<p>Los est&aacute;ndares de la belleza cambian continuamente en nuestro mundo y cultura. Algunos de esos est&aacute;ndares son muy extra&ntilde;os o dif&iacute;ciles de cumplir, por eso hay personas que se someten a cirug&iacute;as pl&aacute;sticas que pueden poner en riesgo su vida, todo por la belleza y la moda. Para aquellos que no pueden pagar grandes cantidades de dinero para realizarse ese tipo de cirug&iacute;as existen gadgets de belleza que podr&aacute;n ayudarte a lograr lo que quieres.</p>\r\n\r\n<p>Algunos de estos aparatos tambi&eacute;n sirven para ahorrar tiempo o evitarte algunos de esos momentos que puedan estresarte por completo.</p>\r\n\r\n<p>Aqu&iacute; te mostramos algunos de los aparatos y gadgets de moda m&aacute;s bizarros y extra&ntilde;os que ver&aacute;s. Obviamente varios de estos aparatos son proporcionados por nuestros amigos japoneses, conocidos por crear algunos de las cosas m&aacute;s sorprendentes del mundo.</p>\r\n\r\n<p>&iquest;Usar&iacute;as alguno de estos?</p>\r\n\r\n<h2>1. Enderezador de nariz</h2>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/10-gadgets-belleza-completamente-extranos-7-perturbo-146022748516233406.jpg.pagespeed.ce.-_l_ivBfFl.jpg" style="height:378px; width:450px" /></p>\r\n\r\n<p>Este aparato viene de Jap&oacute;n y dice que ayuda a levantar los huesos de la nariz, de esta manera tendr&aacute;s una forma m&aacute;s derecha y agraciada. El invento cuesta $51 d&oacute;lares. Debes usarlo 20 minutos por d&iacute;a.</p>\r\n\r\n<h2>2. Adelgazador de pelos del cuerpo</h2>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/x10-gadgets-belleza-completamente-extranos-7-perturbo-146022748527021696.jpg.pagespeed.ic.hXqASeL60k.jpg" style="height:511px; width:450px" /></p>\r\n\r\n<p>Este dispositivo est&aacute; hecho especialmente para hombres, para no asustar a todas esas mujeres que no son amantes de los hombres velludos.</p>\r\n\r\n<h2>3. Gafas anti-arrugas</h2>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/x10-gadgets-belleza-completamente-extranos-7-perturbo-146022748534107887.jpg.pagespeed.ic.n4XqdgrPyt.jpg" style="height:236px; width:450px" /></p>\r\n\r\n<p>Con tan solo utiilzar estos lentes por 5 minutos durante el d&iacute;a te ayudar&aacute; a reducir en gran medida las peque&ntilde;as arrugas alrededor de los ojos. Gran invento, &iquest;no?</p>\r\n\r\n<h2>4. Adelgazador de caras</h2>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/10-gadgets-belleza-completamente-extranos-7-perturbo-146022748541085125.jpg.pagespeed.ce.vetZGxqBEE.jpg" style="height:380px; width:450px" /></p>\r\n\r\n<p>La idea de este gadget es crear los labios perfectos.</p>\r\n\r\n<h2>5. Espejo para celulares</h2>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/10-gadgets-belleza-completamente-extranos-7-perturbo-146022748546699769.jpg.pagespeed.ce._zhJfhDBCa.jpg" style="height:424px; width:450px" /></p>\r\n\r\n<p>No importa donde est&eacute;s, este aparato que se adjunta al celular siempre tendr&aacute;s un espejo a la mano para poder retocar tu maquillaje.</p>\r\n\r\n<h2>6. Secador para u&ntilde;as</h2>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/10-gadgets-belleza-completamente-extranos-7-perturbo-146022748553947447.jpg.pagespeed.ce.1PkAwShNg_.jpg" style="height:298px; width:450px" /></p>\r\n\r\n<p>Despu&eacute;s de pintar tus u&ntilde;as, solamente debes poner tus dedos cerca de los peque&ntilde;os tubos y sacar el aire con su mecanismo. En segundos tendr&aacute;s tus u&ntilde;as secas.</p>\r\n\r\n<h2>7. Joyer&iacute;a que cambia de forma la cara</h2>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/10-gadgets-belleza-completamente-extranos-7-perturbo-146022748561459777.jpg.pagespeed.ce.q6ZiuXAQoY.jpg" style="height:1133px; width:450px" /></p>\r\n\r\n<p>Esta joyer&iacute;a se pone alrededor de tu cara, lo que la pone en extra&ntilde;as posiciones. Sigo pensando y no capto el concepto.</p>\r\n\r\n<h2>8. Agrandador de busto</h2>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/10-gadgets-belleza-completamente-extranos-7-perturbo-146022748571134702.jpg.pagespeed.ce.OU7RLMjKjP.jpg" style="height:182px; width:450px" /></p>\r\n\r\n<p>Es un aparato electr&oacute;nico que a trav&eacute;s de est&iacute;mulos alrededor de los pechos te ayudar&aacute; a agrandarlos, te har&aacute; olvidar de todos esos sostenes con relleno.</p>\r\n\r\n<h2>9. Alargador de cuello</h2>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/10-gadgets-belleza-completamente-extranos-7-perturbo-146022748577743477.jpg.pagespeed.ce.Qg_LOmdeEc.jpg" style="height:203px; width:450px" /></p>\r\n\r\n<p>Pones este gadget sobre tu cuello, como un collar, presionas el mecanismo con gentileza y har&aacute; que tu cuello siempre est&eacute; derecho. Solamente te costar&aacute; $26 d&oacute;lares.</p>\r\n\r\n<h2>10. Cubridor para pezones</h2>\r\n\r\n<p><img alt="" src="/kcfinder/upload/images/10-gadgets-belleza-completamente-extranos-7-perturbo-146022748582097102.jpg.pagespeed.ce.UV9pvyAOKG.jpg" style="height:480px; width:450px" /></p>\r\n\r\n<p>Que no te vuelvan a sorprender esas fotograf&iacute;as que te har&aacute;n morir de pena durante toda tu vida, con estos aditamentos puestos en tus pezones nunca m&aacute;s tendr&aacute;s esos problemas en tu vida.</p>\r\n\r\n<p>Fuente:estovalelapena</p>\r\n', 'post-1460600120.jpeg', '', '', '', '2016-04-12', '2016-04-12 18:28:41', 0, 0, 258, 1),
(265, 2, '¿Sabías-que-existe-una-mariposa-vampiro-(Calyptra-Thalictr)?', '¿Sabías que existe una mariposa vampiro (Calyptra Thalictr)?', '', '<h2>DESCUBRE A LAS MARIPOSAS VAMPIRO.</h2>\r\n\r\n<p>Se desconoce con exactitud quien fue el descubridor de este fascinante ejemplar de mariposa vampiro, aunque se tienen datos de que fue observada por primera vez en Siberia. Un grupo de investigadores estaba trabajando por la noche y de pronto vieron a una dulce mariposa hundir su afilada lengua en un animal para chuparle la sangre. Estos investigadores sorprendidos por la mariposa, capturaron un ejemplar y pudieron comprobar que su reacci&oacute;n al entrar en contacto con la piel humana era el de hendir su lengua para extraer la sangre.</p>\r\n\r\n<p>Otro grupo de bi&oacute;logos la observ&oacute; durante la noche en Sierra Leona, aliment&aacute;ndose de la sangre de un cervatillo moribundo. Ambos testimonios dejan claro que&nbsp;<strong>se trata de una mariposa nocturna</strong>&nbsp;y que por el d&iacute;a no es activa.</p>\r\n\r\n<p>El descubrimiento fue muy impactante porque se pensaba que las mariposas se alimentaban exclusivamente del n&eacute;ctar de las flores y vegetales. Las primeras investigaciones revelaron que&nbsp;<strong>s&oacute;lo los machos succionaban sangre para transmitir hierro y sal a sus larvas</strong>.</p>\r\n\r\n<p>Una vez m&aacute;s la naturaleza nos sorprende con adaptaciones al medio incre&iacute;bles y pintorescas, aunque en este caso un poco sangrientas.</p>\r\n', 'post-1460600287.jpeg', '', '', 'mariposa', '2016-04-12', '2016-04-12 18:31:28', 0, 0, 259, 1);
INSERT INTO `cp_post` (`id`, `category`, `url_name`, `title`, `description`, `large_text`, `image`, `slider_image`, `video`, `teg`, `createdate`, `add-date`, `slider`, `favorite`, `pos`, `active`) VALUES
(268, 14, '15-Cosas-que-siempre-debe-hacer-un-hombre-para-volverla-loca', '15 Cosas que siempre debe hacer un hombre para volverla loca', '', '<p>Dicen que a los hombres se les enamora a trav&eacute;s de la vista y a las mujeres por el o&iacute;do, es por eso que existen dichos como &ldquo;verbo mata carita&rdquo;.</p>\r\n\r\n<p>Lo cierto es que a cualquier mujer le derrite que un hombre le diga frases que la hagan sentir hermosa y querida.</p>\r\n\r\n<p><strong>Interesante:&nbsp;</strong>9 Cosas salvajes que tu novia quiere que le hagas pero le da pena pedirte</p>\r\n\r\n<p>Por eso, a continuaci&oacute;n te presentamos 15 cosas que un hombre nunca debe dejar de decirle a su chica&nbsp;para mantenerla enamorada.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/kcfinder/upload/images/perfecta-525x350.jpg" style="height:350px; width:525px" /></p>\r\n\r\n<h2>1. Tu voz suena sexy</h2>\r\n\r\n<p>Habla con ella en las ma&ntilde;anas, cuando se acaba de despertar y recu&eacute;rdale lo encantadora que suena su voz.</p>\r\n\r\n<h2>2. En verdad lo siento</h2>\r\n\r\n<p>Si en una ocasi&oacute;n tienen un mal entendido, p&iacute;dele disculpas. Esto lejos de mostrar debilidad te har&aacute; ver como un humbre maduro: &iquest;Qu&eacute; no es lo que toda mujer busca?</p>\r\n\r\n<h2>3.&nbsp;Traje algo de comer para ti</h2>\r\n\r\n<p>Este es un detalle que volver&aacute; loca a tu chica, pues le demostrar&aacute;s que te importa y te preocupas por ella. Y si le llevas el desayuno&nbsp;a la cama cuando acaba de despertar, ten por seguro que sumar&aacute;s puntos extras.</p>\r\n\r\n<h2>4.&nbsp;Te invito a una fiesta con mis amigos</h2>\r\n\r\n<p>Este es un gesto que le demuestra tu inter&eacute;s por integrarla a cada aspecto de tu vida.</p>\r\n\r\n<h2>&nbsp;5. Eres perfecta, no cambiar&iacute;a nada de ti</h2>\r\n\r\n<p>No hay frase que enamore m&aacute;s a una mujer que esto. El saber que no s&oacute;lo te gusta f&iacute;sicamente, sino que tambi&eacute;n amas su sentido del humor, su manera de vestir, de pensar, de actuar y todas esas peque&ntilde;as cosas que la hacen especial.</p>\r\n\r\n<h2>6. &nbsp;Tengo una sorpresa para ti, &iexcl;cierra los ojos!</h2>\r\n\r\n<p>Como lo mencionamos anteriormente, los detalles son los que enamoran a una chica, por m&aacute;s peque&ntilde;o que &eacute;ste sea. No tienes que comprarle algo car&iacute;simo o de marca, dicen que los mejores regalos son los que salen del coraz&oacute;n.</p>\r\n\r\n<h2>7. Siempre puedes llamarme a la hora que necesites</h2>\r\n\r\n<p>En verdad a una mujer le encanta saber que tiene tu apoyo incondicional a cualquier hora del d&iacute;a.</p>\r\n\r\n<h2>&nbsp;8.&nbsp;Me toca a m&iacute; consentirte, no te levantes</h2>\r\n\r\n<p>Decirle esto a una mujer, sobre todo cuando se encuentra en su per&iacute;odo, con esos insoportables c&oacute;licos y sinti&eacute;ndose devastada, o cuando est&aacute; enferma, es algo invaluable. Para ella es hermoso saber que te importa y que te das cuenta de lo que le est&aacute; sucediendo, as&iacute; que preparale un d&iacute;a de pel&iacute;culas en casa.</p>\r\n\r\n<h2>9.&nbsp;Tienes un cuerpo perfecto</h2>\r\n\r\n<p>Lamentablemente hay d&iacute;as en que tu chica, aunque tenga un cuerpo de infarto, no se siente segura de s&iacute; misma. As&iacute; que recu&eacute;rdale lo guapa que se ve y cu&aacute;nto&nbsp;te gusta, eso har&aacute; que se sienta sexy y segura.</p>\r\n\r\n<h2>10. Eres mi mejor amiga</h2>\r\n\r\n<p>Una mujer no s&oacute;lo busca ser tu novia, tambi&eacute;n quiere ser tu amiga y que conf&iacute;es en ella.</p>\r\n\r\n<h2>11. Si alg&uacute;n d&iacute;a tenemos una hija, quiero que sea como t&uacute; cuando peque&ntilde;a</h2>\r\n\r\n<p>Adem&aacute;s de saber que tienes planes a futuro con ella, &iquest;crees que haya algo m&aacute;s halagador&nbsp;que esto? &iexcl;Claro que no!</p>\r\n\r\n<h2>12. Me excit&auml;s demasiado</h2>\r\n\r\n<p>Ten por seguro que cuando le digas esto, la volver&aacute;s loca.</p>\r\n\r\n<h2>13. Me muero por verte, ya te extra&ntilde;o</h2>\r\n\r\n<p>No importa si han pasado unas cuantas horas o d&iacute;as enteros desde que se vieron por ultima vez, siempre ser&aacute; bueno que tu chica sepa que te hace falta y que deseas verla, seguro ella tambi&eacute;n te extra&ntilde;a a ti.</p>\r\n\r\n<h2>14. Eres bella a&uacute;n sin maquillaje</h2>\r\n\r\n<p>A cualquier mujer le fascina saber que te gusta a&uacute;n sin maquillaje.</p>\r\n\r\n<h2>15. Quiero que en mi futuro siempre est&eacute;s a mi lado</h2>\r\n\r\n<p>Nadie tiene el futuro comprado, pero incl&uacute;yela en tus planes a futuro; hazle saber que sin importar lo que pase, siempre te ves a su lado.</p>\r\n\r\n<p>Conoces alguna frase mas para volver loca a una mujer, d&eacute;janos en los comentarios.</p>\r\n\r\n<p>Fuente:&nbsp;abuelasabia</p>\r\n', 'post-1460818825.jpeg', '', '', '', '2016-04-15', '2016-04-15 07:13:46', 0, 0, 262, 1),
(269, 14, 'Cuando-él-quiere-cuidarte-y-amarte-de-verdad-antes-te-dirá-esto:', 'Cuando él quiere cuidarte y amarte de verdad antes te dirá esto:', '', '<p>No puedo responder a tus preguntas, porque el amor es de hoy y para hoy. No hay calendarios ni cuentas para decirte cuanto tiempo te podr&eacute; amar. El amor es como un estrella fugaz que a veces dura lo que tiene que durar. Ni m&aacute;s ni menos. Pero lo importante es que cada d&iacute;a dibujo en mi coraz&oacute;n una nueva estrella para ti. D&iacute;a a d&iacute;a; cada d&iacute;a distinta. Y sigo sintiendo el calor para hacerlo.</p>\r\n\r\n<p>Ser sincero a tus preguntas es responder que respires y vivas. Es decir que no sufras y que disfrutes del ahora. Es decir que no midas el tiempo ni la cantidad. S&oacute;lo ama el estar. Que aqu&iacute; estoy contigo. Que cuido de ti; s&eacute; que sientes que cuido de ti. Y tambi&eacute;n s&eacute; que sabes que te cuido a mi manera. Es as&iacute; c&oacute;mo puedo hacerlo ahora y es as&iacute; c&oacute;mo siempre lo har&eacute;. Tal vez por esto me amas.</p>\r\n\r\n<p>Lo &uacute;ltimo que podr&iacute;a hacer es prometerte el cielo y s&oacute;lo quedarme a medias. No llegar a tocarlo contigo. Prefiero acompa&ntilde;arte despacio y libre, sin mirar si nos acercamos a &eacute;l. Tal vez con el tiempo vivamos en &eacute;l sin darnos cuenta.</p>\r\n\r\n<p>Necesitamos vivir el amor sin miedos ni sufrimientos. Si est&aacute;s, bien, y si no, ya te buscar&eacute;. E igual debes hacer. Si me preguntas por mis sentimientos, que voy a saber yo, si el amor es de hoy. Hoy siento esto y ma&ntilde;ana no s&eacute; que sentir&eacute;. Tal vez sienta morir por ti. Quien sabe.</p>\r\n\r\n<p>Te acompa&ntilde;o, eres mi amiga y te amo a mi manera y tal vez es muy distinto a como t&uacute; crees que debo hacerlo. Es complicado&nbsp;explicarte porqu&eacute; es as&iacute;, pero ahora es posible bailar y que sientas mi alma en tu pecho. Es posible que sientas que te pienso y acaricio en el aire. Es posible que me preocupe que tu sonrisa sea presente cada d&iacute;a . Y es posible que el dolor que sientes t&uacute;, tambi&eacute;n lo sienta&nbsp;yo. Somos amigos.</p>\r\n\r\n<p>&iquest;Hasta cuando?</p>\r\n\r\n<p>Hasta que queramos. Hasta que esto siga siendo alegre. Hasta que no haya dolor innecesario. Hasta que te bese y sepas si deseas quedarte a mi lado.</p>\r\n\r\n<p>A mi manera y a la tuya, en un viaje tranquilo. De hechos sin palabras. De presencia sin preguntas. Sin conceptos de amor verdadero. Sin perder jam&aacute;s la cabeza. Pero entregando parte de mi coraz&oacute;n de una forma real y humana. &nbsp;</p>\r\n\r\n<p>Hasta que queramos. Pero claro&nbsp;que hoy te quiero. Y ante todo quiero ser honesto y real. Trasmitir siempre lo que siento. Lo que hoy siento. Lo que ahora siento. En ocasiones hay que entrar poco a poco, para saber en todo momento donde se est&aacute;. Mejor as&iacute;&nbsp;para m&iacute; y creo que para ti tambi&eacute;n lo ser&aacute;. No quiero responder a tus preguntas. Quiero que me nazca a m&iacute; y sobretodo dec&iacute;rtelo mir&aacute;ndote a los ojos. Si no, no&nbsp;tiene sentido.</p>\r\n\r\n<p>Quiero dec&iacute;rtelo cuando de verdad sienta que mi coraz&oacute;n te ama con todo su amor.</p>\r\n\r\n<p>Pero hoy: I love You, no se ma&ntilde;ana. S&oacute;lo as&iacute; podr&eacute; y puedo.</p>\r\n\r\n<p>Yo sigo aqu&iacute; amiga m&iacute;a.</p>\r\n\r\n<p>Fuente:&nbsp;albertespinola</p>\r\n', 'post-1460840777.jpeg', '', '', '', '2016-04-15', '2016-04-15 13:19:38', 0, 0, 263, 1),
(270, 6, 'Cosas-sencillas-que-hacer-para-ser-feliz-hoy-mismo…-¡Pruébalo!', 'Cosas sencillas que hacer para ser feliz hoy mismo… ¡Pruébalo!', '', '<p>No nos olvidemos de que la felicidad va ligada al bien estar c&oacute;mo persona; a la realizaci&oacute;n c&oacute;mo ser humano y al saber valorar y apreciar las peque&ntilde;as cosas de la vida. Cosas que en realidad son las m&aacute;s grandes e importantes.</p>\r\n', 'post-1460842482.jpeg', '', '', '', '2016-04-15', '2016-04-15 13:48:03', 0, 0, 264, 1),
(271, 3, 'Battlefield 1', 'El nuevo Battlefield 1 ', '', '<p>La verdad es que me esperaba un battlefield 5 ambientado en los a&ntilde;os actuales con armas de estos tiempos, que el juego sea de la primera guerra mundial me ha decepcionado un poco. &iquest;Que piensas tu sobre el battlefield 1?</p>\r\n', 'post-1462816345.jpeg', '', '<iframe width="640" height="360" src="https://www.youtube.com/embed/c7nRTF2SowQ" frameborder="0" allowfullscreen></iframe>', '', '2016-05-08', '2016-05-08 10:05:46', 0, 0, 265, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cp_user_admin`
--

CREATE TABLE IF NOT EXISTS `cp_user_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `insert_date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cp_user_admin`
--

INSERT INTO `cp_user_admin` (`id`, `username`, `password`, `name`, `surname`, `email`, `insert_date`, `status`) VALUES
(1, 'webdeveloper', 'nikusha2007', 'ვანო', 'მიტიჩაშვილი', 'vano.mitich@gmail.com', '2013-06-07 12:33:59', 1),
(2, 'natali', 'natali123', 'ნატალია', 'ნატალია', 'natali@gmail.com', '2013-07-10 10:30:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cp_views`
--

CREATE TABLE IF NOT EXISTS `cp_views` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE IF NOT EXISTS `directors` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `real_name` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `birth_loc` varchar(255) NOT NULL,
  `proff` varchar(255) NOT NULL,
  `height` double NOT NULL,
  `img` varchar(255) NOT NULL,
  `biography` text NOT NULL,
  `raiting` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`ID`, `name`, `real_name`, `birthdate`, `birth_loc`, `proff`, `height`, `img`, `biography`, `raiting`) VALUES
(1, 'director 1', '', '0000-00-00', '', '', 0, '', '', 0),
(2, 'director 2', '', '0000-00-00', '', '', 0, '', '', 0),
(3, 'director 3', '', '0000-00-00', '', '', 0, '', '', 0),
(4, 'director 4', '', '0000-00-00', '', '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fotos`
--

CREATE TABLE IF NOT EXISTS `fotos` (
  `ID` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`ID`, `name`) VALUES
(17, 'Action'),
(13, 'Adventure'),
(12, 'Animation'),
(14, 'Comedy'),
(15, 'Family'),
(18, 'Fantasy'),
(9, 'genre'),
(1, 'genre 1'),
(2, 'genre 2'),
(3, 'genre 3'),
(4, 'genre 4'),
(6, 'genre 6'),
(20, 'n/A'),
(19, 'Sci-Fi'),
(5, 'serials'),
(21, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL,
  `define` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `define`, `title`) VALUES
(1, '_read_more', 'Leer más'),
(2, '_send', 'Enviar'),
(3, '_share', 'Share'),
(4, '_nulla_venenatis', 'Nulla venenatis'),
(5, '_comments', 'Comentarios'),
(6, '_like', 'Like'),
(7, '_message', 'Mensaje'),
(8, '_freand_mail', 'Para: Correo electronico'),
(9, '_load_more_data', 'Cargar mas...'),
(10, '_no_more_records', 'No hay más noticias.'),
(11, '_loading_please_wait', 'Cargando...'),
(12, '_static', 'Desactivar'),
(13, '_animated', 'Activar'),
(14, '_choose_colour_style', 'Elegir color'),
(15, '_animations', 'animación '),
(16, '_home', 'Inicio'),
(17, '_custom_menu', 'Contacta con nosotros '),
(18, '_search', 'Buscar...'),
(19, '_toggle_navigation', 'Toggle navigation'),
(20, '_view_more', 'Ver más'),
(21, '_learn_more', 'Leer más'),
(22, '_news', 'Interesate.net | ¿Sabías que…?'),
(23, '_danger', '¡Error!'),
(24, '_error_message_not_sent', '¡ERROR! Mensaje no enviado.'),
(25, '_success', 'Enviado'),
(26, '_message_sent_successfully', 'Mensaje enviado Correctamente.'),
(27, '_the_following_error_occurred', 'Lo sentimos ha ocurrido un error:'),
(28, '_play', 'reproducir '),
(29, '_cancel', 'Cancelar'),
(30, '_sender_name', 'Tu nombre'),
(31, '_sender_mail', 'Tu Correo electronico'),
(32, '_interesate_net', 'Interesate'),
(33, '_contact', 'Contact');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`name`, `ID`) VALUES
('Spain', 1),
('English', 2),
('Russian', 3),
('Русский', 4),
('Italian', 5),
('Latino', 6);

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

CREATE TABLE IF NOT EXISTS `like` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `like`
--

INSERT INTO `like` (`id`, `post_id`, `ip_address`) VALUES
(2, 49, '176.73.139.125'),
(3, 50, '176.73.139.125'),
(4, 6, '176.73.139.125'),
(5, 51, '176.73.139.125'),
(6, 4, '84.120.51.1005'),
(7, 5, '84.120.51.1005'),
(8, 7, '84.120.51.1005'),
(9, 22, '84.120.48.465'),
(10, 2, '176.73.139.125'),
(11, 8, '176.73.139.125'),
(12, 18, '84.120.51.1005'),
(13, 20, '84.120.51.1005'),
(14, 1, '176.73.139.125'),
(15, 3, '84.120.51.1005'),
(16, 7, '176.73.139.125'),
(17, 3, '176.73.139.125'),
(18, 11, '176.73.139.125'),
(19, 48, '176.73.139.125'),
(20, 8, '176.73.139.12'),
(21, 11, '176.73.139.12'),
(22, 15, '176.73.139.12'),
(23, 14, '176.73.139.12'),
(24, 13, '176.73.139.12'),
(25, 16, '176.73.139.12'),
(26, 18, '176.73.139.12'),
(27, 17, '176.73.139.12'),
(28, 20, '176.73.139.12'),
(29, 19, '176.73.139.12'),
(30, 21, '176.73.139.12'),
(31, 24, '176.73.139.12'),
(32, 22, '176.73.139.12'),
(33, 23, '176.73.139.12'),
(34, 26, '176.73.139.12'),
(35, 25, '176.73.139.12'),
(36, 27, '176.73.139.12'),
(37, 30, '176.73.139.12'),
(38, 28, '176.73.139.12'),
(39, 29, '176.73.139.12'),
(40, 33, '176.73.139.12'),
(41, 31, '176.73.139.12'),
(42, 32, '176.73.139.12'),
(43, 7, '176.73.139.12'),
(44, 3, '176.73.139.12'),
(45, 15, '95.104.111.202'),
(46, 13, '95.104.111.202'),
(47, 2, '84.120.48.46'),
(48, 4, '84.120.51.100'),
(49, 1, '176.73.139.12'),
(50, 3, '84.120.51.100'),
(51, 11, '84.120.51.100'),
(52, 1, '95.104.111.202'),
(53, 16, '84.120.51.100'),
(54, 1, '84.120.51.100'),
(55, 9, '176.73.139.12'),
(56, 2, '176.73.139.12'),
(57, 4, '176.73.139.12'),
(58, 6, '176.73.139.12'),
(59, 5, '176.73.139.12'),
(60, 10, '176.73.139.12'),
(61, 12, '176.73.139.12'),
(62, 55, '176.73.139.12'),
(63, 36, '176.73.139.12'),
(64, 35, '176.73.139.12'),
(65, 41, '176.73.139.12'),
(66, 50, '176.73.139.12'),
(67, 42, '176.73.139.12'),
(68, 52, '176.73.139.12'),
(69, 43, '176.73.139.12'),
(70, 57, '176.73.139.12'),
(71, 57, '84.120.51.100'),
(72, 56, '84.120.51.100'),
(73, 55, '84.120.51.100'),
(74, 52, '84.120.51.100'),
(75, 53, '84.120.51.100'),
(76, 54, '84.120.51.100'),
(77, 6, '84.120.51.100'),
(78, 7, '84.120.51.100'),
(79, 8, '84.120.51.100'),
(80, 57, '84.120.48.46'),
(81, 56, '84.120.48.46'),
(82, 56, '176.73.139.12'),
(83, 59, '84.120.51.100'),
(84, 53, '5.178.194.222'),
(85, 50, '84.120.51.100'),
(86, 58, '176.73.139.12'),
(87, 59, '176.73.139.12'),
(88, 59, '84.120.48.46'),
(89, 52, '84.120.48.46'),
(90, 17, '84.120.51.100'),
(91, 58, '84.120.51.100'),
(92, 50, '84.120.48.46'),
(93, 52, '95.104.111.202'),
(94, 3, '95.104.111.202'),
(95, 5, '95.104.111.202'),
(96, 44, '176.73.139.12'),
(97, 48, '84.120.51.100'),
(98, 33, '84.120.51.100'),
(99, 34, '84.120.51.100'),
(100, 41, '84.120.48.46'),
(101, 59, '162.158.94.158'),
(102, 9, '188.114.111.253'),
(103, 60, '188.114.111.253'),
(104, 60, '188.114.110.254'),
(105, 82, '188.114.111.253'),
(106, 71, '141.101.104.113'),
(107, 62, '141.101.104.113'),
(108, 83, '141.101.104.113'),
(109, 60, '141.101.104.113'),
(110, 94, '141.101.104.113'),
(111, 93, '141.101.104.113'),
(112, 91, '141.101.104.113'),
(113, 88, '141.101.104.113'),
(114, 97, '141.101.104.127'),
(115, 95, '188.114.110.248'),
(116, 74, '188.114.111.253'),
(117, 96, '141.101.104.127'),
(118, 75, '141.101.104.127'),
(119, 110, '188.114.110.254'),
(120, 93, '162.158.210.243'),
(121, 94, '162.158.210.243'),
(122, 97, '162.158.210.243'),
(123, 96, '162.158.210.243'),
(124, 92, '162.158.210.243'),
(125, 90, '162.158.211.240'),
(126, 66, '162.158.210.243'),
(127, 96, '188.114.110.254'),
(128, 121, '162.158.211.240'),
(129, 137, '162.158.211.240'),
(130, 106, '141.101.104.127'),
(131, 143, '162.158.210.243'),
(132, 169, '162.158.210.243'),
(133, 168, '162.158.210.243'),
(134, 121, '162.158.210.243'),
(135, 82, '162.158.211.240'),
(136, 176, '188.114.110.247'),
(137, 175, '162.158.211.240'),
(138, 173, '162.158.211.240'),
(139, 61, '162.158.211.240'),
(140, 100, '162.158.211.240'),
(141, 107, '162.158.211.240'),
(142, 157, '162.158.211.240'),
(143, 171, '162.158.211.240'),
(144, 172, '162.158.211.240'),
(145, 168, '162.158.211.240'),
(146, 165, '162.158.211.240'),
(147, 130, '162.158.211.240'),
(148, 84, '162.158.211.240'),
(149, 115, '162.158.211.240'),
(150, 176, '162.158.211.240'),
(151, 160, '188.114.110.247'),
(152, 184, '188.114.110.254'),
(153, 200, '188.114.110.254'),
(154, 74, '162.158.211.240'),
(155, 189, '162.158.211.240'),
(156, 186, '162.158.211.240'),
(157, 200, '162.158.211.240'),
(158, 200, '162.158.210.243'),
(159, 188, '162.158.211.240'),
(160, 207, '162.158.211.240'),
(161, 106, '162.158.211.240'),
(162, 179, '162.158.211.240'),
(163, 210, '162.158.211.240'),
(164, 213, '188.114.110.254'),
(165, 211, '162.158.210.243'),
(166, 214, '162.158.210.243'),
(167, 212, '162.158.210.243'),
(168, 194, '162.158.211.240'),
(169, 225, '162.158.211.240'),
(170, 233, '162.158.211.240'),
(171, 234, '188.114.110.254'),
(172, 214, '162.158.211.240'),
(173, 236, '162.158.211.240'),
(174, 228, '162.158.211.240'),
(175, 218, '162.158.211.240'),
(176, 202, '162.158.211.240'),
(177, 234, '108.162.238.72'),
(178, 232, '198.41.227.219'),
(179, 248, '188.114.110.254'),
(180, 269, '162.158.95.221'),
(181, 266, '162.158.211.240'),
(182, 251, '162.158.211.240'),
(183, 248, '162.158.211.240'),
(184, 234, '162.158.211.240'),
(185, 232, '162.158.211.240'),
(186, 217, '162.158.211.240'),
(187, 211, '162.158.211.240'),
(188, 232, '162.158.56.23'),
(189, 269, '162.158.211.240'),
(190, 260, '162.158.211.240'),
(191, 213, '188.114.98.26'),
(192, 270, '162.158.95.196'),
(193, 270, '162.158.94.241'),
(194, 267, '162.158.95.196'),
(195, 271, '162.158.95.196'),
(196, 270, '162.158.95.235'),
(197, 248, '162.158.210.243');

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE IF NOT EXISTS `main` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `header-option` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sidebar-option` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `breadcrumb-option` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `breadcrumb-hidden` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `searchbar-hidden` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sidebar-collapsed` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `boxed` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`id`, `user_id`, `header-option`, `sidebar-option`, `breadcrumb-option`, `breadcrumb-hidden`, `searchbar-hidden`, `sidebar-collapsed`, `boxed`) VALUES
(1, 1, 'navbar-fixed-top', '', 'affix', '', '', '', ''),
(2, 2, '', '', '', '', '', '', ''),
(3, 3, 'navbar-fixed-top', 'affix', '', '', '', '', ''),
(4, 4, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `meta_k` varchar(100) NOT NULL,
  `meta_d` varchar(160) NOT NULL,
  `slug` varchar(60) NOT NULL,
  `slogan` varchar(160) NOT NULL,
  `year` year(4) NOT NULL,
  `durat` varchar(50) NOT NULL,
  `director_id` int(11) NOT NULL,
  `actor_id` varchar(255) NOT NULL,
  `budget` int(11) NOT NULL,
  `box_office` double NOT NULL,
  `descrip` text NOT NULL,
  `imdb` int(11) NOT NULL,
  `rates` int(11) NOT NULL,
  `genre_id` varchar(255) NOT NULL,
  `imdb_link` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `producers` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `draft` int(11) NOT NULL,
  `recom` set('0','1') NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`ID`, `name`, `meta_k`, `meta_d`, `slug`, `slogan`, `year`, `durat`, `director_id`, `actor_id`, `budget`, `box_office`, `descrip`, `imdb`, `rates`, `genre_id`, `imdb_link`, `date`, `producers`, `img`, `active`, `draft`, `recom`, `view`, `cover`) VALUES
(194, 'name 1', '', '', '', 'slogan 2', 2008, '01:15:00', 3, '5,4', 213213, 213214, 'description 2', 0, 6, '3,1,5', '', '2016-08-23 20:00:00', 'producer 1,producer 2', 'http://allanimes.net/assets/images/mov2.jpg', 0, 1, '1', 100, 'http://allanimes.net/assets/images/cover.jpg'),
(195, 'name 2', '', '', '', 'slogan ', 2008, '01:41:00', 4, '5,4', 2321, 32213, 'safasf', 0, 0, '3,2,1,5', '', '2016-08-22 20:00:00', '', 'http://allanimes.net/assets/images/mov2.jpg', 0, 1, '0', 90, 'http://allanimes.net/assets/images/cover.jpg'),
(196, 'name 3', '', '', '', 'slogan ', 2015, '00:00:00', 2, '6,4', 0, 0, 'asfasfafasf', 0, 0, '3,1,5', '', '2016-08-23 22:16:24', '', 'http://allanimes.net/assets/images/mov2.jpg', 0, 0, '0', 80, 'http://allanimes.net/assets/images/cover.jpg'),
(197, 'name 4', '', '', '', 'slogan ', 1998, '01:15:00', 3, '6,4', 0, 0, 'afasfafg', 0, 0, '3,1,5', '', '2016-08-22 20:00:00', '', 'http://allanimes.net/assets/images/mov2.jpg', 0, 0, '0', 70, 'http://allanimes.net/assets/images/cover.jpg'),
(198, 'name 5', '', '', '', 'slogan ', 2000, '01:41:00', 3, '5,4', 0, 0, 'afasfasf', 0, 0, '3,1,5', '', '2016-08-31 02:35:09', '', 'http://allanimes.net/assets/images/mov2.jpg', 0, 0, '0', 60, 'http://allanimes.net/assets/images/cover.jpg'),
(199, 'name 6', '', '', '', 'slogan ', 1999, '01:41:00', 3, '4', 0, 0, 'asfasfasf', 0, 0, '3,1,5', '', '2016-08-16 20:00:00', '', 'http://allanimes.net/assets/images/mov2.jpg', 0, 0, '0', 50, 'http://allanimes.net/assets/images/cover.jpg'),
(200, 'name 7', '', '', '', 'slogan ', 2011, '01:41:00', 4, '5,4', 0, 0, 'safasfssfsg', 0, 0, '3,1,5 ', '', '2016-08-14 20:00:00', '', 'http://allanimes.net/assets/images/mov2.jpg', 0, 0, '0', 40, 'http://allanimes.net/assets/images/cover.jpg'),
(201, 'name 8', '', '', '', 'slogan ', 2013, '01:41:00', 4, '5,4', 0, 0, 'asfasfa', 0, 0, '3,1,5 ', '', '2016-08-01 20:00:00', '', 'http://allanimes.net/assets/images/mov2.jpg', 0, 0, '0', 30, 'http://allanimes.net/assets/images/cover.jpg'),
(202, 'movie 9', '', '', '', 'ascascdcf', 2008, '01:15:00', 2, '6,5,4', 3, 4, 'dfwefwef', 8, 12412, '9,8,5', 'http://www.imdb.com/name/nm0001612/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=2540377442&pf_rd_r=1X56TBAX6G53YHDDHD44&pf_rd_s=center-8&pf_rd_t=15061&pf_rd_i=homepage&ref_=hm_brn_i_2', '0000-00-00 00:00:00', 'prod', 'http://allanimes.net/assets/images/mov2.jpg', 0, 1, '0', 20, ''),
(203, 'movie 10', '', '', '', 'rrwfgg', 2008, '01:15:00', 1, '6,5,4', 2141, 0, 'FAWCFFdV', 32535, 0, '8,7,5', '32432', '0000-00-00 00:00:00', '234324', 'http://allanimes.net/assets/images/mov2.jpg', 0, 1, '0', 10, ''),
(205, 'filmes all', '', '', '', 'hello', 2009, '01:45:00', 4, '5', 70000, 70000, 'filme is ', 9, 0, '4', 'imobie.com', '0000-00-00 00:00:00', 'jim', 'http://allanimes.net/source/blog4.jpg', 0, 1, '0', 0, ''),
(206, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(207, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(208, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(209, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(210, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(211, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(212, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(213, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(214, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(215, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(216, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(217, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(218, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(219, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(220, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(221, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(222, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(223, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(224, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(225, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(226, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(227, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(228, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(229, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(230, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(231, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(232, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(233, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(234, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(235, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(236, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(237, 'Escuadrón Suicida', '', '', '', 'Justice has a bad side.', 2005, '00:01:23', 0, '6,5,4', 2147483647, 15252555555, 'ghj', 7, 0, '10,9,8,7', 'http://www.imdb.com/title/tt1386697/', '0000-00-00 00:00:00', 'Atlas Entertainment', 'http://peliculas.lev/source/blog4.jpg', 0, 1, '0', 0, ''),
(238, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(239, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(240, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(241, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(242, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(243, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(244, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(245, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(246, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(247, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(248, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(249, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(250, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(251, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(252, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(253, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(254, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(255, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(256, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(257, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(258, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(259, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(260, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(261, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(262, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(263, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(264, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(265, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(266, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(267, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(268, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(269, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(270, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(271, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(272, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(273, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(274, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(275, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(276, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(277, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(278, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(279, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(280, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(281, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(282, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(283, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(284, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(285, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(286, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(287, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(288, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(289, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(290, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(291, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(292, '', '', '', '', '', 0000, '00:00:00', 0, '', 0, 0, '', 0, 0, '', '', '0000-00-00 00:00:00', '', '', 0, 1, '0', 0, ''),
(293, 'Jason Bourne', '', '', '', 'Justice has a bad side.', 2005, '00:01:23', 0, '275,274,273,272,271,270,269,268,267,266,265,264,263,262,261,260,259,258,257,256,255,254,253,252,251,250,249,248,247,246,245,244,243,242,241,240,239,238,237,236,235,234,233,232,231,230,229,228,227,226,225,224,223,222,221,220,219,218,217,216,215,214,213,212', 0, 0, '', 7, 0, '19,18,17,13,17,13,18,19', 'http://www.imdb.com/title/tt1386697/', '0000-00-00 00:00:00', 'Atlas Entertainment', 'http://peliculas.lev/source/movies/poster/tt1386697/poster.jpg', 0, 1, '0', 0, ''),
(294, 'Jason Bourne', '', '', '', 'You know his name', 2029, '00:01:23', 0, '917,916,725,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011', 0, 0, '', 7, 0, '17,17,21', 'http://www.imdb.com/title/tt4196776/', '0000-00-00 00:00:00', 'Captivate Entertainment', 'http://peliculas.lev/source/movies/poster/tt4196776/poster.jpg', 0, 1, '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `movies_quality`
--

CREATE TABLE IF NOT EXISTS `movies_quality` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_quality`
--

INSERT INTO `movies_quality` (`ID`, `name`) VALUES
(1, 'Full HD'),
(2, '1080i p'),
(3, 'HD Real 720'),
(7, 'DVD');

-- --------------------------------------------------------

--
-- Table structure for table `movie_links`
--

CREATE TABLE IF NOT EXISTS `movie_links` (
  `id` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `movie` int(11) NOT NULL,
  `lang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinemovie`
--

INSERT INTO `onlinemovie` (`id`, `movie_id`, `link`, `language`, `quality`, `servers`, `date`) VALUES
(151, 4, '1111', 6, 1, 4, ''),
(152, 4, '1111112', 2, 1, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `name_geo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name_eng` varchar(255) CHARACTER SET utf8 NOT NULL,
  `desc_geo` varchar(160) CHARACTER SET utf8 NOT NULL,
  `desc_eng` varchar(160) CHARACTER SET utf8 NOT NULL,
  `text_geo` text CHARACTER SET utf8 NOT NULL,
  `text_eng` text CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`, `name_geo`, `name_eng`, `desc_geo`, `desc_eng`, `text_geo`, `text_eng`, `date`) VALUES
(5, 'faqs', 'ხშირად დასმული კითხვები', '', 'სფსფსდფგdfsdf', '', '<p>sasfsfsaf</p>', '', '2015-12-11 16:42:43'),
(6, 'contact', 'contact', 'contact', '', '', '<p>contact</p>', '<p>contact</p>', '2015-12-11 16:51:28'),
(7, 'partners', 'partners', 'partners', '', '', '<p>partners</p>', '<p>partners</p>', '2015-12-11 16:51:44'),
(8, 'rules', 'საიტის მოხმარების და რეგისტრაციის წესები', 'საიტის მოხმარების და რეგისტრაციის წესები', '', '', '<p>ვებ-გვერდზე  www.hippo.ge  არსებული სარეგისტრიცაო ფორმის შევსებით მონაცემთა სუბიექტი (შემდგომში მომხმარებელი) თანახმაა და აძლევს უფლებას შპს „ჰიპპოს“ (საიდენტიფიკაციო კოდი 405126457), რომ დაამუშავოს მისი პერსონალური მონაცემები, <br /><br />კერძოდ: </p>\n<p>- სახელი<br />- გვარი<br />- პირადი ნომერი<br />- დაბადების თარიღი<br />- სქესი<br />- ტელეფონის ნომერი<br />- ელექტრონული ფოსტა<br />- მისამართი<br />- საქმიანობის სფერო<br />- შემოსავალი<br />- სამუშაო სტატუსი<br />-საკრედიტო ინფორმაცია სს კრედიტინფო საქართველოს (ს.კ.204470740) ბაზაში გადამოწმებით <br />- და სხვა მონაცემები.</p>\n<p><br />ზემოთ აღნიშნულ პერსონალურ მონაცემთა დამუშავება ხორციელდება მომხმარებლის განაცხადის განხილვის (მომსახურების გაწევის) და ნივთის გაქირავებაზე გადაწყვეტილების მიღების მიზნით. თუ მომხმარებელი უარს განაცხადებს აღნიშნული მონაცემების მიწოდებაზე, შპს „ჰიპპო“ უფლებას იტოვებს არ განიხილოს ეს განაცხადი.  მომხმარებელი ასევე თანახმაა, რომ შპს „ჰიპპომ“ შეამოწმოს მონაცემთა სუბიექტის მიერ წარდგენილი ინფორმაციის სისწორე.მომხმარებელი თანახმაა, ნებისმიერ დროს, შპს „ჰიპპოს“ მიერ შემდგომი შეტყობინების გარეშე, ნებისმიერი მარკეტინგული ან/და სხვა მიზნებისთვის (რაც შეზღუდვის გარეშე მოიცავს ნებისმიერ სახის სარეკლამო კამპანიას ან/და პრომო აქციას) შპს „ჰიპპოსგან“ ან/და სხვა პირებისგან მიიღოს ცნობა, წერილი, მოკლე ტექსტური ან ნებისმიერი სხვა შეტყობინება, ელექტრონული ფოსტა ან/და სხვა ნებისმიერი ფორმით მიწოდებული ნებისმიერი ინფორმაცია, მომხმარებლის მიერ განაცხადში მითითებულ რეკვიზიტებზე. ამასთან, ზემოთაღნიშნული რეკვიზიტების ცვლილების შემთხვევაში, შეცვლილ რეკვიზიტებთან მიმართებაში შპს „ჰიპპო“ უფლებამოსილი იქნება, გამოიყენოს წინამდებარე პუნქტით მისთვის მინიჭებული უფლებამოსილება მომხმარებლის შემდგომი თანხმობის გარეშე.</p>', '<p>ვებ-გვერდზე  <a href="../../../">www.hippo.ge</a>  არსებული სარეგისტრიცაო ფორმის შევსებით მონაცემთა სუბიექტი (შემდგომში მომხმარებელი) თანახმაა და აძლევს უფლებას <strong>შპს „ჰიპპოს“</strong> (საიდენტიფიკაციო კოდი 405126457), რომ დაამუშავოს მისი პერსონალური მონაცემები, <br /><br /><strong>კერძოდ:</strong> </p>\n<ul>\n<li>სახელი</li>\n<li>გვარი</li>\n<li>პირადი ნომერი</li>\n<li>დაბადების თარიღი</li>\n<li>სქესი</li>\n<li>ტელეფონის ნომერი</li>\n<li>ელექტრონული ფოსტა</li>\n<li>მისამართი</li>\n<li>საქმიანობის სფერო</li>\n<li>შემოსავალი</li>\n<li>სამუშაო სტატუსი</li>\n<li>საკრედიტო ინფორმაცია სს კრედიტინფო საქართველოს (ს.კ.204470740) ბაზაში გადამოწმებით</li>\n<li>და სხვა მონაცემები.</li>\n</ul>\n<p><br />ზემოთ აღნიშნულ პერსონალურ მონაცემთა დამუშავება ხორციელდება მომხმარებლის განაცხადის განხილვის (მომსახურების გაწევის) და ნივთის გაქირავებაზე გადაწყვეტილების მიღების მიზნით. თუ მომხმარებელი უარს განაცხადებს აღნიშნული მონაცემების მიწოდებაზე, შპს „ჰიპპო“ უფლებას იტოვებს არ განიხილოს ეს განაცხადი.  მომხმარებელი ასევე თანახმაა, რომ შპს „ჰიპპომ“ შეამოწმოს მონაცემთა სუბიექტის მიერ წარდგენილი ინფორმაციის სისწორე.მომხმარებელი თანახმაა, ნებისმიერ დროს, შპს „ჰიპპოს“ მიერ შემდგომი შეტყობინების გარეშე, ნებისმიერი მარკეტინგული ან/და სხვა მიზნებისთვის (რაც შეზღუდვის გარეშე მოიცავს ნებისმიერ სახის სარეკლამო კამპანიას ან/და პრომო აქციას) შპს „ჰიპპოსგან“ ან/და სხვა პირებისგან მიიღოს ცნობა, წერილი, მოკლე ტექსტური ან ნებისმიერი სხვა შეტყობინება, ელექტრონული ფოსტა ან/და სხვა ნებისმიერი ფორმით მიწოდებული ნებისმიერი ინფორმაცია, მომხმარებლის მიერ განაცხადში მითითებულ რეკვიზიტებზე. ამასთან, ზემოთაღნიშნული რეკვიზიტების ცვლილების შემთხვევაში, შეცვლილ რეკვიზიტებთან მიმართებაში შპს „ჰიპპო“ უფლებამოსილი იქნება, გამოიყენოს წინამდებარე პუნქტით მისთვის მინიჭებული უფლებამოსილება მომხმარებლის შემდგომი თანხმობის გარეშე.</p>', '2015-12-17 04:29:14'),
(9, 'hippo', 'რა არის Hippo?', 'რა არის Hippo?', '', '', '<p><strong>hippo</strong> არის შესაძლებლობა დაიქირავოთ საჭირო და სასურველი ნივთები მცირედი ყოველთვიური გადასახადის სანაცვლოდ.</p>\n<p>დღეიდან აღარ ინერვიულოთ საკრედიტო ვალდებულებებსა და შემოსავლების არასტაბილურობაზე -  თქვენ შეგიძლიათ იქირავოთ ნებისმიერი, თქვენთვის აქამდე საოცნებო ნივთი, ისიამოვნოთ მისი გამოყენებით და იმ შემთხვევაში თუ აღარ ისურვებთ ამ ნივთით სარგებლობას ან ვეღარ შეძლებთ ყოველთვიური გადასახადის გადახდას, შეწყვიტოთ კონტრაქტი და დაგვიბრუნოთ იგი. ხოლო თუ გინდათ, რომ ნივთი თქვენი გახდეს, გამოისყიდეთ ის ნებისმიერ დროს ან გადაიხადეთ ქირა კონტრაქტის ბოლომდე და ნივთი თქვენ საკუთრებაში გადმოვა.</p>\n<p>მიიღეთ სიამოვნება ცხოვრებისგან - ჩვენ გთავაზობთ ისარგებლოთ მრავალი დასახელების ნივთით, ყოველგვარი ფინანსური ვალდებულების აღების გარეშე, მარტივი და მოსახერხებელი პირობებით, ვიდრე მაგალითად სესხი ან განვადებაა. </p>\n<p>ჩვენთან ყველა ნივთი დაზღვეულია საქართველოში წამყვანი სადაზღვევო კომპანიის, "ჯი პი აი ჰოლდინგის" მიერ.<br /> <strong>hippo</strong> - თავისუფლება, ხელმისაწვდომობა, კომფორტი!</p>\n<p> </p>\n<p><br /> <strong>როდის </strong><strong>უნდა </strong><strong>ისარგებლოთ </strong><strong>hippo </strong><strong>მომსახურებით?</strong></p>\n<ul>\n<li>თუ საკრედიტო ისტორიის, არასტაბილური შემოსავლის ან სხვა მიზეზის გამო თქვენ არ გიმტკიცდებათ საბანკო განვადება ან კრედიტი.</li>\n<li>როცა თქვენთვის მნიშვნელოვანია მარტივად ისარგებლოთ ნივთებზე ეტაპობრივი გადახდით და არ დახარჯოთ დრო და ენერგია საბანკო პროცედურებზე.</li>\n<li>არ გინდათ საკუთარ თავზე აიღოთ ფინანსური ვალდებულებები და დაიტოვოთ არჩევანის უფლება დააბრუნოთ საქონელი უკან ნებისმიერ დროს.</li>\n<li>იმ შემთხვევაში, როცა თქვენ მიერ არჩეული ნივთების ღირებულება აღემატება საბანკო განვადების ლიმიტს.</li>\n<li>თუ გინდათ შენაძენი სახლიდან გაუსვლელად მიიღოთ. აარჩიეთ პროდუქტი ონლაინ <strong>hippo</strong>.ge -ზე და მიიღე ის სასურველ მისამართზე.</li>\n<li>ხართ სტუდენტი, დიპლომატიურ სამსახურში მყოფი ან სხვა საქმიანობით დაკავებული ადამიანი და გინდათ დროებით ნაქირავები საცხოვრებელი მოაწყოთ ისე, როგორც საკუთარი სახლი.</li>\n<li>თუ ძვირადღირებული ნივთის ქონა თქვენთის სარისკოა და ფიქრობთ რომ ვერ მოუფრთხილდებით ჩვენ გთავაზობთ დაზღვევას ისეთ შემთხვევებშიც კი როგორიცაა ქურდობა, დავარდნა, გატეხვა, წყლით დაზიანება და სხვა.</li>\n<li>არ ხართ დარწმუნებული გიღირთ თუ არა ძვირადღირებული ნივთის შეძენა - შეგიძლიათ ცოტა ხნით ისარგებლოთ, მოიფიქროთ და მხოლოდ მას შემდეგ გადაწყვიტოთ დააბრუნებთ მას თუ იყიდით.</li>\n<li>როცა სიახლეები თქვენი ცხოვრების წესია - გიყვართ, როცა პირველი სარგებლობთ უახლესი ტექნოლოგიური მიღწევებით და მუდმივად მისდევთ ტენდენციებს - <strong>hippo</strong> საშუალებას გაძლევთ ახალი მოდელის გამოსვლისთანავე ჩაანაცვლოთ ძველი.</li>\n</ul>\n<p><br /> </p>\n<p><strong>hippo </strong><strong>თქვენი </strong><strong>ბიზნესისთვის</strong></p>\n<ul>\n<li><strong>hippo</strong> ხელსაყრელია დამწყები, თუ უკვე გამოცდილი კომპანიებისთვის, ვისთვისაც მნიშვნელოვანია არ განახორციელოს გაუმართლებელი ინვესტიცია ისეთ ცვეთად და ნაკლებად ლიკვიდურ აქტივებში, როგორიც არის საოფისე ავეჯი და ტექნიკა.</li>\n<li>გაქვთ სასტუმრო ან რესტორანი სეზონურ კურორტზე, გინდათ თავიდან აირიდოთ კაპიტალური დანახარჯები. ამ შემთხვევაში <strong>hippo</strong> იდეალური გამოსავალია, რომელიც შესაძლებლობას მოგცემთ გამოყენებული ნივთები და ავეჯი, სეზონის ბოლოს კი უკან დააბრუნოთ.</li>\n<li>თუ ფიქრობთ გაფართოვებას და მოკლე პერიოდში ოფისის შეცვლას შეგიძლიათ ასევე დროებით ისარგებლოთ ავეჯით, კომპიუტერული ტექნიკით და სხვა მოწყობილობებით - ახალი სამუშაო გარემო კი ახალი ნივთებით აღჭურვოთ.</li>\n<li>თუ გსურთ რამდენიმე დღით მოაწყოთ ავეჯით, ტექნიკით, ინტერიერის აქსესუარებით საკონფერენციო, საგამოფენო ან სხვა სახის ღონისძიებისთვის და შეკრებისთვის განკუთვნილი ფართი.</li>\n<li>თავს არიდებთ საბანკო ვალდებულებებს - ლიზინგისგან, სესხისა და განვადებისგან განსხვავებით, იმ შემთხვევაში თუ ნივთების ღირებულების გადახდას ვეღარ შეძლებთ, მათ უბრალოდ დაგვიბრუნებთ.</li>\n</ul>\n<p> </p>\n<p><br /> <strong>როგორ </strong><strong>ვიქირაო </strong><strong>სასურველი </strong><strong>ნივთი?</strong></p>\n<ul>\n<li>მარტივი სარეგისტრაციო ფორმის შევსებით შექმენით თქვენი პროფილი.</li>\n<li>აარჩიეთ ერთი ან რამდენიმე სასურველი ნივთი ჩვენს ვებ-გვერდზე და დაამატეთ კალათში.</li>\n<li>ამოირჩიეთ კალათაში დამატებული სასურველი ნივთი და გამოგზავნეთ დაქირავების მოთხოვნა.</li>\n<li>დაელოდეთ დადასტურებას. მას შემდეგ, რაც მოხდება თქვენი მონაცემების და ნივთის ხელმისაწვდომობის გადამოწმება, თქვენ დაგიკავშირდებათ ჩვენი თანამშრომელი, შეკვეთის პირობების შესათანხმებლად.</li>\n<li>დადებითი გადაწყვეტილების შემდეგ თქვენ მიიღებთ შეტყობინებას სარეგისტრაციო ფორმაში მითითებულ მობილურ ნომერზე. <br /> <strong>hippo</strong> გთავაზობთ ნივთის მიწოდების 2 ალტერნატივას:<br />  ნივთის მაღაზიიდან წაღება კლიენტის მიერ<br /> •    კურიერის მომსახურება</li>\n</ul>\n<p> </p>\n<p>კურიერის მომსახურებით სარგებლობის შემთხვევაში ნივთს მიიღებთ 3-5 სამუშაო დღის განმავლობაში.</p>\n<p>თუ მოგბეზრდათ, დააბრუნეთ ნივთი ნებისმიერ დროს, ყოველგვარი დამატებითი ვალდებულებების გარეშე, რის შემდეგაც თქვენ ისევ შეძლებთ აირჩიოთ ახალი ნივთი და გააფორმოთ ახალი ხელშეკრულება.</p>\n<p>თუ გინდათ ნივთი საკუთრებაში დაიტოვოთ, თქვენ ნებისმიერ დროს შეგიძლიათ გამოისყიდოთ ის საბაზროზე დაბალ ფასად ან გადაიხადოთ ქირის გადასახადი ხელშეკრულების ვადის ბოლომდე, რის შემდეგაც ნივთი გადმოგეცემათ საკუთრებაში.<br /> <br /> <br /> <strong>როგორ </strong><strong>ხდება </strong><strong>ნივთის </strong><strong>ადგილზე </strong><strong>მიტანა?</strong></p>\n<ul>\n<li>ნივთის შეკვეთის დროს თქვენ შეგიძლიათ აირჩიოთ ნივთის მიღება ჩვენს ოფისში ან ადგილზე მიტანა. ნივთს ადგილზე ჩვენი კურიერი მოგიტანთ.</li>\n<li>შეკვეთის შემდეგ თქვენ დაგიკავშირდებათ ჩვენი ოპერატორი, რომელიც შეგითანხმებთ მოტანის სასურველ დროს და ადგილს.</li>\n</ul>\n<p> </p>\n<p>ჩვენ მაქსიმალურად შევეცდებით სწრაფად მოგიტანოთ ნივთი, ხოლო წინა დღეს SMS  შეტყობინების საშუალებით კიდევ ერთხელ შეგახსენებთ მოტანის დროს, რომ მითითებულ მისამართზე დაგეგმილი დროისათვის ნამდვილად იმყოფებოდეთ.</p>\n<p>სურვილის შემთხვევაში შესაძლებელია ნივთის წაღება ჩვენი პარტნიორი მაღაზიების შოურუმებიდან.<br /> <br /> <strong>გთხოვთ </strong><strong>გაითვალისწინოთ:</strong></p>\n<p>ნივთის მიტანის დღეს შესაძლებელი იყოს სარეგისტრაციო ფორმაში მითითებულ ნომერზე დაკავშირება.</p>\n<p>ნივთის მიღების დროს წარადგინეთ პირადობის დამადასტურებელი დოკუმენტი და მოაწერეთ ხელი ნივთის ქირავნობის ხელშეკრულებას. ნივთის მიღება შეუძლია მხოლოდ იმ პირს, რომლის მონაცემებიც არის მითითებული განაცხადში.</p>\n<p>თუ თქვენთან მოაქვთ განსაკუთრებული მახასიათებლების მქონე ნივთი (დიდი მოცულობის), გაითვალისწინეთ,  რომ კურიერი უზრუნველყოფს მხოლოდ მის ტრანსპორტირებას, ხოლო ნივთის განთავსების ადგილამდე მიტანაზე ზრუნავს თავად შემკვეთი.</p>\n<p>თუ შეიქმნება რაიმე სახის გაუგებრობა, დაგვიკავშირდით მითითებულ ნომერზე 2 680 888 ან მოგვწერეთ <a href="mailto:info@hippo.ge">info@<strong>hippo</strong>.ge</a> - ჩვენ აუცილებლად მოვაგვარებთ პრობლემას.<br /> <br /> <br /> <strong>ნივთის </strong><strong>დაბრუნება</strong><br /> <br /> დარეკეთ ნომერზე 2 680 888 და შეგვატყობინეთ, რომ საქონლის დაბრუნება გსურთ</p>\n<p>ან გამოგზავნეთ ელ. ფოსტა შემდეგ მისამართზე: info@<strong>hippo</strong>.ge. ელექტრონული ფოსტის სათაურში აუცილებლად მიუთითეთ ფრაზა „ნივთის დაბრუნება“, ხოლო წერილში შემდეგი სახის ინფორმაცია: <br /> •    თქვენი სახელი<br /> •    გვარი<br /> •    პირადი ნომერი<br /> •    იმ ნივთის ქირავნობის ხელშეკრულების ნომერი, რომლის დაბრუნებაც გადაწყვიტეთ<br /> •    ნივთის ადგილსამყოფელის მისამართი.</p>\n<p><br /> ნივთის დაბრუნების შემთხვევაშიც <strong>hippo</strong> გთავაზობთ 2 ალტერნატივას:<br /> •    ნივთის კლიენტის მიერ თავად მოტანა<br /> •    კურიერის მომსახურებით სარგებლობა</p>\n<p> </p>\n<p>გთხოვთ გაითვალისწინოთ, ნივთის დაბრუნების გადაწყვეტილების შესახებ აუცილებლად გვაცნობეთ მინიმუმ 1 კვირით ადრე დაბრუნების თარიღამდე.</p>\n<p><br /> <strong>ნივთის </strong><strong>მდგომარეობა</strong></p>\n<p><br /> გთხოვთ გაუფრთხილდით ტექნიკას, რათა თავიდან აირიდოთ შესამჩნევი ნაკაწრები, ბზარები და ზოგადად ყველაფერი, რაც მას მომავალში გამოსაყენებლად უვარგისს გახდის.</p>\n<p><br /> დაუშვებელია ნივთის ტექნიკური მონაცემების შეცვლა. ასევე დაუშვებელია მათი  პლომბების დაზიანება და ორიგინალი სტიკერების მოცლა (მაგალითად კომპიუტერიდან).</p>\n<p><br /> არ არის აუცილებელი დაბრუნების მომენტში ტექნიკა ახალივით გამოიყურებოდეს, მას უბრალოდ ეტყობოდეს რომ უფრთხილდებოდნენ.</p>\n<p><br /> თუ აღმოაჩენთ, რომ ნივთს თავიდანვე პრობლემა აქვს და არ/ცუდად ფუქნციონირებს, დაუყოვნებლივ დაგვიკავშირდით. ჩვენ ვიზრუნებთ, რომ მოხდეს გარანტიის ფარგლებში მისი გამოცვლა/შეკეთება.</p>\n<p><br /> არ დაგავიწყდეთ, რომ ყველა გაქირავებული ნივთი დაზღვეულია „ჯი პი აი ჰოლდინგის“ მიერ.</p>\n<p><br /> გთხოვთ გაითვალისწინოთ, რომ ნივთის დაბრუნებისას მოხდება ჩვენი ექსპერტის მიერ მისი ფიზიკური/ტექნიკური მდგომარეობის შეფასება და მისი დაბრუნება მოხდება ხელშეკრულებაში მოცემულ პირობებთან თავსებადობის შემთხვევაში.</p>\n<p><br /> <br /> <strong>გადახდის </strong><strong>წესები</strong></p>\n<p><br /> ყოველ თვეში, გადახდის თარიღამდე რამდენიმე დღით ადრე თქვენ მიიღებთ ინვოისს, რომელშიც მოცემული იქნება შესაბამისი თვის ქირის თანხა და სხვა აუცილებელი ინფორმაცია გადახდის განსახორციელებლად. ინვოისი მოგივათ იმ ელექტრონულ ფოსტაზე, რომელიც მითითებული გაქვთ სარეგისტრაციო ფორმაში.</p>\n<p><br /> დამატებით შეტყობინებას მიიღებთ ასევე სარეგისტრაციო ფორმაში მითითებულ მობილურის ნომერზე.</p>\n<p><br /> ნივთის დაქირავების შესახებ შეთანხმება ძალაში შედის მას შემდეგ, რაც თქვენ მიიღებთ ამ ნივთს. აქედან გამომდინარე, პირველი თვის გადასახადში შესაძლოა მითითებული იქნას არასრული თვის შესაბამისი თანხა (დარიცხვა მოხდეს ნივთის მიღების დღიდან იმ რიცხვამდე, რომელსაც თქვენ აირჩევთ), ხოლო მომდევნო თვიდან  გადასახდელი გექნებათ სრულ თვეზე დარიცხული შესაბამისი თანხა.</p>\n<p><br /> გადახდა შესაძლებელია შემდეგი არხებით:<br /> •    საბანკო გადარიცხვა<br /> •    ბარათით ანგარიშსწორება </p>\n<p><br /> საბანკო გადარიცხვის დროს აუცილებელია დანიშნულებაში მიეთითოს ინვოისში მოცემული ინფორმაცია. ბარათით ანგარიშსწორების შემთხვევაში რაიმე დამატებით ინფორმაციის მითითება საჭირო არ არის.</p>\n<p><br /> გთხოვთ გაითვალისწინოთ, რომ მნიშვნელოვანია ყოველთვიური იჯარა გადაიხადოთ არაუგვიანეს ინვოისში მითითებულ თარიღში, წინააღმდეგ შემთხვევაში ჩვენ იძულებული ვიქნებით დაგარიცხოთ ჯარიმა ყოველ ვადაგადაცილებულ დღეზე.</p>\n<p>ასევე არ დაგავიწყდეთ, რომ განვადების ან სესხისგან განსხვავებით, იმ შემთხვევაში თუ ვეღარ ახერხებთ იჯარის გადასახადის გადახდას, თქვენ შეგიძლიათ დააბრუნოთ ნივთი ყოველგვარი გართულებების გარეშე. ამ შემთხვევაში უბრალოდ გთხოვთ, რომ მინიმუმ 1 კვირით ადრე გვაცნობოთ ნივთის დაბრუნების შესახებ.</p>\n<p><br /> იმ შემთხვევაში, თუ თქვენ არ დააბრუნებთ ნივთს და ამავდროულად არ გადაიხდით ქირის გადასახადს, ჩვენ იძულებული ვიქნებით დაგარიცხოთ ჯარიმები და პარალელურად მივმართოთ სამართლებრივ მეთოდებს.</p>\n<p><br /> <br /> <strong>დაცულობა </strong></p>\n<p><strong>Hippo</strong> გაძლევთ შესაძლებლობას არა მხოლოდ მარტივად და მოსახერხებლად დაიქირავოთ ნივთი, არამედ უზრუნველყოფს მაქსიმალურ გარანტიებს - ნივთებზე მოქმედებს საგარანტიო ვადა და გარდა ამისა ყველა ნივთი დაზღვეულია "ჯი პი აი ჰოლდინგის" მიერ.</p>', '<p><strong>hippo</strong> არის შესაძლებლობა დაიქირავოთ საჭირო და სასურველი ნივთები მცირედი ყოველთვიური გადასახადის სანაცვლოდ.</p>\n<p>დღეიდან აღარ ინერვიულოთ საკრედიტო ვალდებულებებსა და შემოსავლების არასტაბილურობაზე -  თქვენ შეგიძლიათ იქირავოთ ნებისმიერი, თქვენთვის აქამდე საოცნებო ნივთი, ისიამოვნოთ მისი გამოყენებით და იმ შემთხვევაში თუ აღარ ისურვებთ ამ ნივთით სარგებლობას ან ვეღარ შეძლებთ ყოველთვიური გადასახადის გადახდას, შეწყვიტოთ კონტრაქტი და დაგვიბრუნოთ იგი. ხოლო თუ გინდათ, რომ ნივთი თქვენი გახდეს, გამოისყიდეთ ის ნებისმიერ დროს ან გადაიხადეთ ქირა კონტრაქტის ბოლომდე და ნივთი თქვენ საკუთრებაში გადმოვა.</p>\n<p>მიიღეთ სიამოვნება ცხოვრებისგან - ჩვენ გთავაზობთ ისარგებლოთ მრავალი დასახელების ნივთით, ყოველგვარი ფინანსური ვალდებულების აღების გარეშე, მარტივი და მოსახერხებელი პირობებით, ვიდრე მაგალითად სესხი ან განვადებაა. </p>\n<p>ჩვენთან ყველა ნივთი დაზღვეულია საქართველოში წამყვანი სადაზღვევო კომპანიის, "ჯი პი აი ჰოლდინგის" მიერ.<br /> <strong>hippo</strong> - თავისუფლება, ხელმისაწვდომობა, კომფორტი!</p>\n<p> </p>\n<p><br /> <strong>როდის </strong><strong>უნდა </strong><strong>ისარგებლოთ </strong><strong>hippo </strong><strong>მომსახურებით?</strong></p>\n<ul>\n<li>თუ საკრედიტო ისტორიის, არასტაბილური შემოსავლის ან სხვა მიზეზის გამო თქვენ არ გიმტკიცდებათ საბანკო განვადება ან კრედიტი.</li>\n<li>როცა თქვენთვის მნიშვნელოვანია მარტივად ისარგებლოთ ნივთებზე ეტაპობრივი გადახდით და არ დახარჯოთ დრო და ენერგია საბანკო პროცედურებზე.</li>\n<li>არ გინდათ საკუთარ თავზე აიღოთ ფინანსური ვალდებულებები და დაიტოვოთ არჩევანის უფლება დააბრუნოთ საქონელი უკან ნებისმიერ დროს.</li>\n<li>იმ შემთხვევაში, როცა თქვენ მიერ არჩეული ნივთების ღირებულება აღემატება საბანკო განვადების ლიმიტს.</li>\n<li>თუ გინდათ შენაძენი სახლიდან გაუსვლელად მიიღოთ. აარჩიეთ პროდუქტი ონლაინ <strong>hippo</strong>.ge -ზე და მიიღე ის სასურველ მისამართზე.</li>\n<li>ხართ სტუდენტი, დიპლომატიურ სამსახურში მყოფი ან სხვა საქმიანობით დაკავებული ადამიანი და გინდათ დროებით ნაქირავები საცხოვრებელი მოაწყოთ ისე, როგორც საკუთარი სახლი.</li>\n<li>თუ ძვირადღირებული ნივთის ქონა თქვენთის სარისკოა და ფიქრობთ რომ ვერ მოუფრთხილდებით ჩვენ გთავაზობთ დაზღვევას ისეთ შემთხვევებშიც კი როგორიცაა ქურდობა, დავარდნა, გატეხვა, წყლით დაზიანება და სხვა.</li>\n<li>არ ხართ დარწმუნებული გიღირთ თუ არა ძვირადღირებული ნივთის შეძენა - შეგიძლიათ ცოტა ხნით ისარგებლოთ, მოიფიქროთ და მხოლოდ მას შემდეგ გადაწყვიტოთ დააბრუნებთ მას თუ იყიდით.</li>\n<li>როცა სიახლეები თქვენი ცხოვრების წესია - გიყვართ, როცა პირველი სარგებლობთ უახლესი ტექნოლოგიური მიღწევებით და მუდმივად მისდევთ ტენდენციებს - <strong>hippo</strong> საშუალებას გაძლევთ ახალი მოდელის გამოსვლისთანავე ჩაანაცვლოთ ძველი.</li>\n</ul>\n<p><br /> </p>\n<p><strong>hippo </strong><strong>თქვენი </strong><strong>ბიზნესისთვის</strong></p>\n<ul>\n<li><strong>hippo</strong> ხელსაყრელია დამწყები, თუ უკვე გამოცდილი კომპანიებისთვის, ვისთვისაც მნიშვნელოვანია არ განახორციელოს გაუმართლებელი ინვესტიცია ისეთ ცვეთად და ნაკლებად ლიკვიდურ აქტივებში, როგორიც არის საოფისე ავეჯი და ტექნიკა.</li>\n<li>გაქვთ სასტუმრო ან რესტორანი სეზონურ კურორტზე, გინდათ თავიდან აირიდოთ კაპიტალური დანახარჯები. ამ შემთხვევაში <strong>hippo</strong> იდეალური გამოსავალია, რომელიც შესაძლებლობას მოგცემთ გამოყენებული ნივთები და ავეჯი, სეზონის ბოლოს კი უკან დააბრუნოთ.</li>\n<li>თუ ფიქრობთ გაფართოვებას და მოკლე პერიოდში ოფისის შეცვლას შეგიძლიათ ასევე დროებით ისარგებლოთ ავეჯით, კომპიუტერული ტექნიკით და სხვა მოწყობილობებით - ახალი სამუშაო გარემო კი ახალი ნივთებით აღჭურვოთ.</li>\n<li>თუ გსურთ რამდენიმე დღით მოაწყოთ ავეჯით, ტექნიკით, ინტერიერის აქსესუარებით საკონფერენციო, საგამოფენო ან სხვა სახის ღონისძიებისთვის და შეკრებისთვის განკუთვნილი ფართი.</li>\n<li>თავს არიდებთ საბანკო ვალდებულებებს - ლიზინგისგან, სესხისა და განვადებისგან განსხვავებით, იმ შემთხვევაში თუ ნივთების ღირებულების გადახდას ვეღარ შეძლებთ, მათ უბრალოდ დაგვიბრუნებთ.</li>\n</ul>\n<p> </p>\n<p><br /> <strong>როგორ </strong><strong>ვიქირაო </strong><strong>სასურველი </strong><strong>ნივთი?</strong></p>\n<ul>\n<li>მარტივი სარეგისტრაციო ფორმის შევსებით შექმენით თქვენი პროფილი.</li>\n<li>აარჩიეთ ერთი ან რამდენიმე სასურველი ნივთი ჩვენს ვებ-გვერდზე და დაამატეთ კალათში.</li>\n<li>ამოირჩიეთ კალათაში დამატებული სასურველი ნივთი და გამოგზავნეთ დაქირავების მოთხოვნა.</li>\n<li>დაელოდეთ დადასტურებას. მას შემდეგ, რაც მოხდება თქვენი მონაცემების და ნივთის ხელმისაწვდომობის გადამოწმება, თქვენ დაგიკავშირდებათ ჩვენი თანამშრომელი, შეკვეთის პირობების შესათანხმებლად.</li>\n<li>დადებითი გადაწყვეტილების შემდეგ თქვენ მიიღებთ შეტყობინებას სარეგისტრაციო ფორმაში მითითებულ მობილურ ნომერზე. <br /> <strong>hippo</strong> გთავაზობთ ნივთის მიწოდების 2 ალტერნატივას:<br />  ნივთის მაღაზიიდან წაღება კლიენტის მიერ<br /> •    კურიერის მომსახურება</li>\n</ul>\n<p> </p>\n<p>კურიერის მომსახურებით სარგებლობის შემთხვევაში ნივთს მიიღებთ 3-5 სამუშაო დღის განმავლობაში.</p>\n<p>თუ მოგბეზრდათ, დააბრუნეთ ნივთი ნებისმიერ დროს, ყოველგვარი დამატებითი ვალდებულებების გარეშე, რის შემდეგაც თქვენ ისევ შეძლებთ აირჩიოთ ახალი ნივთი და გააფორმოთ ახალი ხელშეკრულება.</p>\n<p>თუ გინდათ ნივთი საკუთრებაში დაიტოვოთ, თქვენ ნებისმიერ დროს შეგიძლიათ გამოისყიდოთ ის საბაზროზე დაბალ ფასად ან გადაიხადოთ ქირის გადასახადი ხელშეკრულების ვადის ბოლომდე, რის შემდეგაც ნივთი გადმოგეცემათ საკუთრებაში.<br /> <br /> <br /> <strong>როგორ </strong><strong>ხდება </strong><strong>ნივთის </strong><strong>ადგილზე </strong><strong>მიტანა?</strong></p>\n<ul>\n<li>ნივთის შეკვეთის დროს თქვენ შეგიძლიათ აირჩიოთ ნივთის მიღება ჩვენს ოფისში ან ადგილზე მიტანა. ნივთს ადგილზე ჩვენი კურიერი მოგიტანთ.</li>\n<li>შეკვეთის შემდეგ თქვენ დაგიკავშირდებათ ჩვენი ოპერატორი, რომელიც შეგითანხმებთ მოტანის სასურველ დროს და ადგილს.</li>\n</ul>\n<p> </p>\n<p>ჩვენ მაქსიმალურად შევეცდებით სწრაფად მოგიტანოთ ნივთი, ხოლო წინა დღეს SMS  შეტყობინების საშუალებით კიდევ ერთხელ შეგახსენებთ მოტანის დროს, რომ მითითებულ მისამართზე დაგეგმილი დროისათვის ნამდვილად იმყოფებოდეთ.</p>\n<p>სურვილის შემთხვევაში შესაძლებელია ნივთის წაღება ჩვენი პარტნიორი მაღაზიების შოურუმებიდან.<br /> <br /> <strong>გთხოვთ </strong><strong>გაითვალისწინოთ:</strong></p>\n<p>ნივთის მიტანის დღეს შესაძლებელი იყოს სარეგისტრაციო ფორმაში მითითებულ ნომერზე დაკავშირება.</p>\n<p>ნივთის მიღების დროს წარადგინეთ პირადობის დამადასტურებელი დოკუმენტი და მოაწერეთ ხელი ნივთის ქირავნობის ხელშეკრულებას. ნივთის მიღება შეუძლია მხოლოდ იმ პირს, რომლის მონაცემებიც არის მითითებული განაცხადში.</p>\n<p>თუ თქვენთან მოაქვთ განსაკუთრებული მახასიათებლების მქონე ნივთი (დიდი მოცულობის), გაითვალისწინეთ,  რომ კურიერი უზრუნველყოფს მხოლოდ მის ტრანსპორტირებას, ხოლო ნივთის განთავსების ადგილამდე მიტანაზე ზრუნავს თავად შემკვეთი.</p>\n<p>თუ შეიქმნება რაიმე სახის გაუგებრობა, დაგვიკავშირდით მითითებულ ნომერზე 2 680 888 ან მოგვწერეთ <a href="mailto:info@hippo.ge">info@<strong>hippo</strong>.ge</a> - ჩვენ აუცილებლად მოვაგვარებთ პრობლემას.<br /> <br /> <br /> <strong>ნივთის </strong><strong>დაბრუნება</strong><br /> <br /> დარეკეთ ნომერზე 2 680 888 და შეგვატყობინეთ, რომ საქონლის დაბრუნება გსურთ</p>\n<p>ან გამოგზავნეთ ელ. ფოსტა შემდეგ მისამართზე: info@<strong>hippo</strong>.ge. ელექტრონული ფოსტის სათაურში აუცილებლად მიუთითეთ ფრაზა „ნივთის დაბრუნება“, ხოლო წერილში შემდეგი სახის ინფორმაცია: <br /> •    თქვენი სახელი<br /> •    გვარი<br /> •    პირადი ნომერი<br /> •    იმ ნივთის ქირავნობის ხელშეკრულების ნომერი, რომლის დაბრუნებაც გადაწყვიტეთ<br /> •    ნივთის ადგილსამყოფელის მისამართი.</p>\n<p><br /> ნივთის დაბრუნების შემთხვევაშიც <strong>hippo</strong> გთავაზობთ 2 ალტერნატივას:<br /> •    ნივთის კლიენტის მიერ თავად მოტანა<br /> •    კურიერის მომსახურებით სარგებლობა</p>\n<p> </p>\n<p>გთხოვთ გაითვალისწინოთ, ნივთის დაბრუნების გადაწყვეტილების შესახებ აუცილებლად გვაცნობეთ მინიმუმ 1 კვირით ადრე დაბრუნების თარიღამდე.</p>\n<p><br /> <strong>ნივთის </strong><strong>მდგომარეობა</strong></p>\n<p><br /> გთხოვთ გაუფრთხილდით ტექნიკას, რათა თავიდან აირიდოთ შესამჩნევი ნაკაწრები, ბზარები და ზოგადად ყველაფერი, რაც მას მომავალში გამოსაყენებლად უვარგისს გახდის.</p>\n<p><br /> დაუშვებელია ნივთის ტექნიკური მონაცემების შეცვლა. ასევე დაუშვებელია მათი  პლომბების დაზიანება და ორიგინალი სტიკერების მოცლა (მაგალითად კომპიუტერიდან).</p>\n<p><br /> არ არის აუცილებელი დაბრუნების მომენტში ტექნიკა ახალივით გამოიყურებოდეს, მას უბრალოდ ეტყობოდეს რომ უფრთხილდებოდნენ.</p>\n<p><br /> თუ აღმოაჩენთ, რომ ნივთს თავიდანვე პრობლემა აქვს და არ/ცუდად ფუქნციონირებს, დაუყოვნებლივ დაგვიკავშირდით. ჩვენ ვიზრუნებთ, რომ მოხდეს გარანტიის ფარგლებში მისი გამოცვლა/შეკეთება.</p>\n<p><br /> არ დაგავიწყდეთ, რომ ყველა გაქირავებული ნივთი დაზღვეულია „ჯი პი აი ჰოლდინგის“ მიერ.</p>\n<p><br /> გთხოვთ გაითვალისწინოთ, რომ ნივთის დაბრუნებისას მოხდება ჩვენი ექსპერტის მიერ მისი ფიზიკური/ტექნიკური მდგომარეობის შეფასება და მისი დაბრუნება მოხდება ხელშეკრულებაში მოცემულ პირობებთან თავსებადობის შემთხვევაში.</p>\n<p><br /> <br /> <strong>გადახდის </strong><strong>წესები</strong></p>\n<p><br /> ყოველ თვეში, გადახდის თარიღამდე რამდენიმე დღით ადრე თქვენ მიიღებთ ინვოისს, რომელშიც მოცემული იქნება შესაბამისი თვის ქირის თანხა და სხვა აუცილებელი ინფორმაცია გადახდის განსახორციელებლად. ინვოისი მოგივათ იმ ელექტრონულ ფოსტაზე, რომელიც მითითებული გაქვთ სარეგისტრაციო ფორმაში.</p>\n<p><br /> დამატებით შეტყობინებას მიიღებთ ასევე სარეგისტრაციო ფორმაში მითითებულ მობილურის ნომერზე.</p>\n<p><br /> ნივთის დაქირავების შესახებ შეთანხმება ძალაში შედის მას შემდეგ, რაც თქვენ მიიღებთ ამ ნივთს. აქედან გამომდინარე, პირველი თვის გადასახადში შესაძლოა მითითებული იქნას არასრული თვის შესაბამისი თანხა (დარიცხვა მოხდეს ნივთის მიღების დღიდან იმ რიცხვამდე, რომელსაც თქვენ აირჩევთ), ხოლო მომდევნო თვიდან  გადასახდელი გექნებათ სრულ თვეზე დარიცხული შესაბამისი თანხა.</p>\n<p><br /> გადახდა შესაძლებელია შემდეგი არხებით:<br /> •    საბანკო გადარიცხვა<br /> •    ბარათით ანგარიშსწორება </p>\n<p><br /> საბანკო გადარიცხვის დროს აუცილებელია დანიშნულებაში მიეთითოს ინვოისში მოცემული ინფორმაცია. ბარათით ანგარიშსწორების შემთხვევაში რაიმე დამატებით ინფორმაციის მითითება საჭირო არ არის.</p>\n<p><br /> გთხოვთ გაითვალისწინოთ, რომ მნიშვნელოვანია ყოველთვიური იჯარა გადაიხადოთ არაუგვიანეს ინვოისში მითითებულ თარიღში, წინააღმდეგ შემთხვევაში ჩვენ იძულებული ვიქნებით დაგარიცხოთ ჯარიმა ყოველ ვადაგადაცილებულ დღეზე.</p>\n<p>ასევე არ დაგავიწყდეთ, რომ განვადების ან სესხისგან განსხვავებით, იმ შემთხვევაში თუ ვეღარ ახერხებთ იჯარის გადასახადის გადახდას, თქვენ შეგიძლიათ დააბრუნოთ ნივთი ყოველგვარი გართულებების გარეშე. ამ შემთხვევაში უბრალოდ გთხოვთ, რომ მინიმუმ 1 კვირით ადრე გვაცნობოთ ნივთის დაბრუნების შესახებ.</p>\n<p><br /> იმ შემთხვევაში, თუ თქვენ არ დააბრუნებთ ნივთს და ამავდროულად არ გადაიხდით ქირის გადასახადს, ჩვენ იძულებული ვიქნებით დაგარიცხოთ ჯარიმები და პარალელურად მივმართოთ სამართლებრივ მეთოდებს.</p>\n<p><br /> <br /> <strong>დაცულობა </strong></p>\n<p><strong>Hippo</strong> გაძლევთ შესაძლებლობას არა მხოლოდ მარტივად და მოსახერხებლად დაიქირავოთ ნივთი, არამედ უზრუნველყოფს მაქსიმალურ გარანტიებს - ნივთებზე მოქმედებს საგარანტიო ვადა და გარდა ამისა ყველა ნივთი დაზღვეულია "ჯი პი აი ჰოლდინგის" მიერ.</p>', '2015-12-19 14:16:03'),
(10, 'Payment Methods', 'გადახდის მეთოდები', 'Payment Methods', '', '', '<p><strong>TBC PAY</strong></p>\n<p>TBC PAY ტერმინალის მთავარი გვერდიდან აირჩევთ <strong>სხვადასხვა. </strong>შედიხართ <strong>კომერციული საიტები</strong>ს გვერდზე და ირჩევთ <strong>Hippo</strong>.</p>', '', '2016-04-23 07:07:35'),
(11, 'Delivery Terms', 'მიწოდების პირობები', 'Delivery Terms', '', '', '', '', '2016-04-23 07:59:07'),
(12, 'Insurance', 'დაზღვევის პირობები', 'Insurance', '', '', '<p><img src="../../../gebo/file-manager/upload/image/dazgveva.PNG" alt="" width="1113" height="629" /></p>', '<p><img src="../../../gebo/file-manager/upload/image/dazgveva.PNG" alt="" width="1113" height="629" /></p>', '2016-05-17 05:20:12'),
(14, 'about', 'ჩვენს შესახებ', '', '', '', '<p>ასფასფ</p>', '', '2016-07-20 13:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE IF NOT EXISTS `playlists` (
  `ID` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`ID`, `userId`, `name`, `date`) VALUES
(1, 1380, 'drama', '2016-08-22 12:41:04'),
(2, 1380, 'favorite', '2016-08-22 12:41:04'),
(3, 1380, 'new movies', '2016-08-21 20:00:00'),
(4, 1380, 'don''t watch', '2016-08-22 12:42:42'),
(36, 1380, 'dsafasfa', '2016-08-23 13:10:33'),
(35, 1380, 'dsafasfa', '2016-08-23 13:09:42'),
(33, 1380, 'fsbhsbhfh', '2016-08-23 13:05:43'),
(34, 1380, 'dsafasfa', '2016-08-23 13:08:24'),
(32, 1380, 'dddd', '2016-08-24 10:05:41'),
(31, 30, 'dddd', '2016-08-23 12:33:31'),
(30, 30, 'dddd', '2016-08-23 12:32:52'),
(29, 30, 'test2', '2016-08-23 12:32:27'),
(28, 30, 'test1', '2016-08-23 12:32:21'),
(27, 30, 'test', '2016-08-23 12:31:48'),
(26, 1380, 'fsdfsdf', '2016-08-23 12:29:04'),
(37, 30, 'tttt', '2016-08-23 13:54:00'),
(38, 1380, 'czvcVC ', '2016-08-23 14:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `plist_movies`
--

CREATE TABLE IF NOT EXISTS `plist_movies` (
  `ID` int(11) NOT NULL,
  `listId` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plist_movies`
--

INSERT INTO `plist_movies` (`ID`, `listId`, `movie_id`, `date`, `user`) VALUES
(32, 32, 197, '2016-08-24 10:08:32', 1380),
(31, 32, 198, '2016-08-24 10:05:14', 1380),
(25, 4, 200, '2016-08-23 14:16:54', 1380),
(33, 32, 199, '2016-08-24 10:08:51', 1380),
(34, 37, 198, '2016-09-02 18:41:32', 30);

-- --------------------------------------------------------

--
-- Table structure for table `posters`
--

CREATE TABLE IF NOT EXISTS `posters` (
  `ID` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE IF NOT EXISTS `servers` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servers`
--

INSERT INTO `servers` (`ID`, `name`) VALUES
(1, 'youvideos'),
(2, 'youtube'),
(4, 'new server');

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_menu`
--

CREATE TABLE IF NOT EXISTS `sidebar_menu` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `title_geo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title_eng` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title_rus` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sidebar_menu`
--

INSERT INTO `sidebar_menu` (`id`, `cat_id`, `icon`, `url`, `title_geo`, `title_eng`, `title_rus`, `pos`, `active`) VALUES
(1, 0, 'glyphicons-home', '', 'საწყისი გვერდი', 'Dashboard', 'Панель приборов', 1, 1),
(8, 0, 'glyphicons-book_open', 'index.php?do=pages&pages_id=1', 'გვერდები', 'Pages', 'страницы', 2, 1),
(11, 0, 'glyphicons-settings', '#resources', 'კონფიგურაცია', 'Configuring', 'Настройка', 11, 1),
(21, 11, 'glyphicons-globe_af', 'index.php?do=config/languages', 'ლექსიკონი', 'Languages', 'Языки', 21, 1),
(59, 0, 'glyphicons-show_thumbnails_with_lines', 'index.php?do=category', 'კატეგორია', '', '', 10, 1),
(23, 11, 'glyphicons-tag', 'index.php?do=config/seo', 'Seo', 'Seo', 'Seo', 23, 0),
(24, 11, 'glyphicons-global', 'index.php?do=config/social_networks', 'სოც,ქსელები', 'Social Networks', 'соціальні мережі', 24, 1),
(33, 11, 'glyphicons-inbox', 'modules/config/backup_database.php', 'რეზერვი', 'Backup Database', 'резервных копий баз', 33, 1),
(51, 0, 'glyphicons glyphicons-blog', 'index.php?do=table', 'პოსტები', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cover_img` varchar(255) NOT NULL,
  `trailer_link` varchar(255) NOT NULL,
  `film_link` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`ID`, `name`, `cover_img`, `trailer_link`, `film_link`) VALUES
(1, 'name 112', 'http://allanimes.net/assets/images/slider1.jpg', 'trailer 1', 'film_link'),
(2, 'name 2', 'http://allanimes.net/assets/images/slider2.jpg', 'trailer link 2', 'film link 2'),
(3, 'name 3', 'http://allanimes.net/assets/images/slider3.jpg', 'trailer link 3', 'film link 3'),
(4, 'name 4', 'http://allanimes.net/assets/images/slider1.jpg', 'trailer link 4', 'film link 4'),
(5, 'name 4', 'http://allanimes.net/assets/images/slider2.jpg', 'trailer link 4', 'film link 4'),
(6, 'name 4', 'http://allanimes.net/assets/images/slider3.jpg', 'trailer link 4', 'film link 4'),
(7, 'name 4', 'http://allanimes.net/assets/images/slider1.jpg', 'trailer link 4', 'film link 4'),
(8, 'name 4', 'http://allanimes.net/assets/images/slider2.jpg', 'trailer link 4', 'film link 4'),
(9, 'name 4', 'http://allanimes.net/assets/images/slider3.jpg', 'trailer link 4', 'film link 4');

-- --------------------------------------------------------

--
-- Table structure for table `social_networks`
--

CREATE TABLE IF NOT EXISTS `social_networks` (
  `id` int(11) NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_networks`
--

INSERT INTO `social_networks` (`id`, `icon`, `title`, `value`) VALUES
(1, 'fa-facebook', 'facebook', 'https://www.facebook.com/interesate.net/?ref=bookmarks'),
(7, 'fa-twitter', 'twitter', 'https://twitter.com/interesatenet'),
(13, 'fa-google-plus', 'google_plus', 'https://plus.google.com/u/0/b/116685069988545756671/116685069988545756671'),
(42, 'fa fa-envelope-o', 'email', 'bekabatsanadze@gmail.com'),
(19, 'fa-linkedin', 'linkedin', 'www.linkedin.com'),
(25, 'fa-skype', 'skype', 'beka_93_7'),
(31, 'fa-youtube', 'youtube', 'https://www.youtube.com/channel/UCQi24x5oLCBDIkx7lp9WWzw'),
(52, 'fa-map-marker', 'address', 'Address'),
(53, 'fa-phone', 'phone', '558907201');

-- --------------------------------------------------------

--
-- Table structure for table `soundtracks`
--

CREATE TABLE IF NOT EXISTS `soundtracks` (
  `ID` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `soundtracks`
--

INSERT INTO `soundtracks` (`ID`, `url`, `movie_id`) VALUES
(1, '32esacf,sfgfsg', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `torrentlinks`
--

INSERT INTO `torrentlinks` (`id`, `movie_id`, `link`, `language`, `quality`, `size`, `date`) VALUES
(1, 4, 'torrent link1', 3, '1', '', ''),
(2, 4, 'torrent link2', 3, '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `trailers`
--

CREATE TABLE IF NOT EXISTS `trailers` (
  `ID` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trailers`
--

INSERT INTO `trailers` (`ID`, `url`, `movie_id`) VALUES
(25, 'trailer url', 5),
(31, 'trailer', 0),
(32, 'trailer', 180),
(33, '', 181),
(34, '', 183),
(35, 'trailer url', 194),
(36, 'trailer url 2', 194),
(37, 'trailer url 2', 194),
(38, 'trailer url 2', 194),
(39, 'trailer url 2', 194),
(40, 'trailer url 2', 194),
(41, 'tr url', 195),
(42, 'sfsdfdssf', 202),
(43, 'DSGVDSVS', 203),
(44, '', 205),
(45, '', 205),
(46, '', 205),
(47, '', 205),
(48, '', 205),
(49, '', 205),
(50, '', 205),
(51, '', 205),
(52, '', 205),
(53, '', 205),
(54, '', 205),
(55, '', 205),
(56, '', 205),
(57, '', 205),
(58, '', 205),
(59, '', 205),
(60, 'translate.google.ge', 205),
(61, 'translate.google.ge', 205),
(62, 'translate.google.ge', 205),
(63, 'http://translate.google.ge', 205),
(64, 'http://translate.google.ge', 205),
(65, 'http://translate.google.ge', 205),
(66, 'http://translate.google.ge', 205),
(67, 'http://translate.google.ge', 205),
(68, 'http://translate.google.ge', 205),
(69, 'http://translate.google.ge', 205),
(70, 'http://translate.google.ge', 205),
(71, 'http://translate.google.ge', 205),
(72, 'http://translate.google.ge', 205),
(73, 'http://translate.google.ge', 205),
(74, 'http://translate.google.ge', 205),
(75, 'http://translate.google.ge', 205),
(76, 'http://translate.google.ge', 205),
(77, 'http://translate.google.ge', 205),
(78, 'http://translate.google.ge', 205),
(79, 'http://translate.google.ge', 205),
(80, 'http://translate.google.ge', 205),
(81, 'http://translate.google.ge', 205),
(82, '', 237),
(83, 'http://www.imdb.com/video/imdb/vi155694361/', 293),
(84, 'http://www.imdb.com/video/imdb/vi1805498137/', 294);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birth` varchar(100) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `regtime` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `firstlogin` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `activation` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `birth`, `gender`, `regtime`, `password`, `salt`, `firstlogin`, `status`, `activation`, `img`) VALUES
(1, 'levart', 'jmukhadze@gmail.com', '14-01-1987', 'M', '1475706685', '512700977b81bd793c3ddc5f0a7a129338790ed7f44d0592b308a1c69ca85c79hippo', '996695f1765cdcb', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE IF NOT EXISTS `views` (
  `id` int(11) NOT NULL,
  `movie_id` varchar(25) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `date` int(100) NOT NULL,
  `ip` varchar(16) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `movie_id`, `userid`, `date`, `ip`) VALUES
(1, '196', '', 1474920880, '127.0.0.1'),
(2, '198', '', 1474920886, '127.0.0.1'),
(3, '194', '', 1474920894, '127.0.0.1'),
(4, '197', '', 1474920918, '127.0.0.1'),
(5, '201', '', 1474920928, '127.0.0.1'),
(6, '205', '', 1474920933, '127.0.0.1'),
(7, '205', '', 1474920933, '127.0.0.1'),
(8, '202', '', 1474920938, '127.0.0.1'),
(9, '202', '', 1474920938, '127.0.0.1'),
(10, '203', '', 1474920942, '127.0.0.1'),
(11, '203', '', 1474920943, '127.0.0.1'),
(12, '200', '', 1474920950, '127.0.0.1'),
(13, '199', '', 1474920954, '127.0.0.1'),
(14, '199', '', 1474923780, '127.0.0.1'),
(15, '198', '', 1475355272, '127.0.0.1'),
(16, '196', '', 1475355281, '127.0.0.1'),
(17, '196', '', 1475355293, '127.0.0.1'),
(18, '198', '', 1475706157, '127.0.0.1'),
(19, '237', '2', 1477954229, '127.0.0.1'),
(20, '237', '2', 1477954231, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `wallpapers`
--

CREATE TABLE IF NOT EXISTS `wallpapers` (
  `ID` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `washlist`
--

CREATE TABLE IF NOT EXISTS `washlist` (
  `ID` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `washlist`
--

INSERT INTO `washlist` (`ID`, `movie_id`, `user`, `date`) VALUES
(23, 198, 30, '2016-09-02 18:41:34'),
(20, 199, 1380, '2016-08-24 14:33:25'),
(19, 198, 1380, '2016-08-24 14:33:18'),
(18, 196, 1380, '2016-08-24 12:27:11'),
(17, 195, 1380, '2016-08-24 12:27:02'),
(16, 194, 1380, '2016-08-24 12:26:53'),
(15, 200, 1380, '2016-08-24 12:26:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `blog_cats`
--
ALTER TABLE `blog_cats`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_post`
--
ALTER TABLE `cp_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_user_admin`
--
ALTER TABLE `cp_user_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_views`
--
ALTER TABLE `cp_views`
  ADD KEY `stat_id` (`post_id`),
  ADD KEY `views` (`views`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `define` (`define`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `movies_quality`
--
ALTER TABLE `movies_quality`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `movie_links`
--
ALTER TABLE `movie_links`
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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `plist_movies`
--
ALTER TABLE `plist_movies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `posters`
--
ALTER TABLE `posters`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sidebar_menu`
--
ALTER TABLE `sidebar_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `social_networks`
--
ALTER TABLE `social_networks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soundtracks`
--
ALTER TABLE `soundtracks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `torrentlinks`
--
ALTER TABLE `torrentlinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trailers`
--
ALTER TABLE `trailers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallpapers`
--
ALTER TABLE `wallpapers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `washlist`
--
ALTER TABLE `washlist`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1162;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `blog_cats`
--
ALTER TABLE `blog_cats`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cp_post`
--
ALTER TABLE `cp_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=272;
--
-- AUTO_INCREMENT for table `cp_user_admin`
--
ALTER TABLE `cp_user_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cp_views`
--
ALTER TABLE `cp_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fotos`
--
ALTER TABLE `fotos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `like`
--
ALTER TABLE `like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=198;
--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=295;
--
-- AUTO_INCREMENT for table `movies_quality`
--
ALTER TABLE `movies_quality`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `movie_links`
--
ALTER TABLE `movie_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `movie_views`
--
ALTER TABLE `movie_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `onlinemovie`
--
ALTER TABLE `onlinemovie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `plist_movies`
--
ALTER TABLE `plist_movies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `posters`
--
ALTER TABLE `posters`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sidebar_menu`
--
ALTER TABLE `sidebar_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `social_networks`
--
ALTER TABLE `social_networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `soundtracks`
--
ALTER TABLE `soundtracks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `torrentlinks`
--
ALTER TABLE `torrentlinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `trailers`
--
ALTER TABLE `trailers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wallpapers`
--
ALTER TABLE `wallpapers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `washlist`
--
ALTER TABLE `washlist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
