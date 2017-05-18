-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2017 at 01:21 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `local_movie_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `releaseDate` date NOT NULL,
  `coverPhoto` varchar(255) NOT NULL,
  `trailerURL` varchar(255) NOT NULL,
  `genre_id` int(11) UNSIGNED NOT NULL,
  `country_id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `releaseDate`, `coverPhoto`, `trailerURL`, `genre_id`, `country_id`, `language_id`) VALUES
(1, 'Persevering uniform secured line', '1991-04-07', 'http://dummyimage.com/246x209.jpg/ff4444/ffffff', 'http://dummyimage.com/116x150.jpg/cc0000/ffffff', 0, 0, 0),
(2, 'Enterprise-wide systematic migration', '2014-03-30', 'http://dummyimage.com/224x104.jpg/ff4444/ffffff', 'http://dummyimage.com/114x204.bmp/dddddd/000000', 0, 0, 0),
(3, 'Vision-oriented attitude-oriented attitude', '1995-01-02', 'http://dummyimage.com/212x168.bmp/ff4444/ffffff', 'http://dummyimage.com/132x192.bmp/dddddd/000000', 0, 0, 0),
(4, 'Vision-oriented local throughput', '2002-12-24', 'http://dummyimage.com/215x233.jpg/ff4444/ffffff', 'http://dummyimage.com/206x205.jpg/cc0000/ffffff', 0, 0, 0),
(5, 'Right-sized asymmetric projection', '1999-07-03', 'http://dummyimage.com/199x179.png/5fa2dd/ffffff', 'http://dummyimage.com/122x250.bmp/ff4444/ffffff', 0, 0, 0),
(6, 'Persistent 24 hour algorithm', '2012-09-21', 'http://dummyimage.com/198x116.png/cc0000/ffffff', 'http://dummyimage.com/151x154.jpg/5fa2dd/ffffff', 0, 0, 0),
(7, 'Diverse multi-tasking paradigm', '2013-01-13', 'http://dummyimage.com/203x155.jpg/dddddd/000000', 'http://dummyimage.com/169x203.bmp/ff4444/ffffff', 0, 0, 0),
(8, 'Visionary radical parallelism', '2007-03-26', 'http://dummyimage.com/223x117.bmp/dddddd/000000', 'http://dummyimage.com/245x143.jpg/dddddd/000000', 0, 0, 0),
(9, 'Streamlined 24 hour parallelism', '2012-12-09', 'http://dummyimage.com/224x189.bmp/cc0000/ffffff', 'http://dummyimage.com/182x120.bmp/dddddd/000000', 0, 0, 0),
(10, 'Reverse-engineered secondary attitude', '2004-03-01', 'http://dummyimage.com/196x170.bmp/dddddd/000000', 'http://dummyimage.com/133x233.bmp/5fa2dd/ffffff', 0, 0, 0),
(11, 'Proactive object-oriented model', '2010-05-31', 'http://dummyimage.com/220x237.png/5fa2dd/ffffff', 'http://dummyimage.com/238x164.png/ff4444/ffffff', 0, 0, 0),
(12, 'Front-line demand-driven system engine', '2012-11-02', 'http://dummyimage.com/220x215.png/5fa2dd/ffffff', 'http://dummyimage.com/247x222.jpg/5fa2dd/ffffff', 0, 0, 0),
(13, 'Streamlined secondary portal', '1992-08-04', 'http://dummyimage.com/187x123.bmp/cc0000/ffffff', 'http://dummyimage.com/168x225.jpg/dddddd/000000', 0, 0, 0),
(14, 'Customizable scalable local area network', '2002-11-02', 'http://dummyimage.com/132x244.jpg/5fa2dd/ffffff', 'http://dummyimage.com/170x166.jpg/5fa2dd/ffffff', 0, 0, 0),
(15, 'Stand-alone local interface', '2004-12-02', 'http://dummyimage.com/154x172.bmp/5fa2dd/ffffff', 'http://dummyimage.com/130x244.bmp/5fa2dd/ffffff', 0, 0, 0),
(16, 'Vision-oriented responsive parallelism', '2008-10-30', 'http://dummyimage.com/189x122.png/5fa2dd/ffffff', 'http://dummyimage.com/196x171.jpg/dddddd/000000', 0, 0, 0),
(17, 'Compatible bottom-line collaboration', '2003-01-25', 'http://dummyimage.com/113x124.png/cc0000/ffffff', 'http://dummyimage.com/170x160.bmp/5fa2dd/ffffff', 0, 0, 0),
(18, 'Face to face system-worthy leverage', '1992-11-02', 'http://dummyimage.com/194x230.bmp/cc0000/ffffff', 'http://dummyimage.com/122x109.bmp/cc0000/ffffff', 0, 0, 0),
(19, 'Networked attitude-oriented interface', '2012-08-07', 'http://dummyimage.com/169x226.bmp/cc0000/ffffff', 'http://dummyimage.com/107x107.jpg/5fa2dd/ffffff', 0, 0, 0),
(20, 'Configurable neutral groupware', '1997-11-06', 'http://dummyimage.com/248x105.jpg/ff4444/ffffff', 'http://dummyimage.com/235x232.png/dddddd/000000', 0, 0, 0),
(21, 'User-centric upward-trending middleware', '2010-05-26', 'http://dummyimage.com/130x199.bmp/cc0000/ffffff', 'http://dummyimage.com/239x209.png/5fa2dd/ffffff', 0, 0, 0),
(22, 'Versatile impactful initiative', '1992-10-29', 'http://dummyimage.com/196x109.png/5fa2dd/ffffff', 'http://dummyimage.com/243x123.png/cc0000/ffffff', 0, 0, 0),
(23, 'Phased fault-tolerant knowledge base', '2006-01-18', 'http://dummyimage.com/170x195.jpg/ff4444/ffffff', 'http://dummyimage.com/217x162.jpg/cc0000/ffffff', 0, 0, 0),
(24, 'Organized bottom-line functionalities', '2013-09-23', 'http://dummyimage.com/159x144.bmp/5fa2dd/ffffff', 'http://dummyimage.com/234x151.png/5fa2dd/ffffff', 0, 0, 0),
(25, 'Versatile fault-tolerant capacity', '1997-07-19', 'http://dummyimage.com/101x202.png/dddddd/000000', 'http://dummyimage.com/117x193.png/dddddd/000000', 0, 0, 0),
(26, 'Phased coherent groupware', '2014-03-24', 'http://dummyimage.com/163x113.jpg/5fa2dd/ffffff', 'http://dummyimage.com/176x192.jpg/ff4444/ffffff', 0, 0, 0),
(27, 'Multi-tiered bottom-line alliance', '2006-12-22', 'http://dummyimage.com/134x172.jpg/dddddd/000000', 'http://dummyimage.com/213x235.jpg/cc0000/ffffff', 0, 0, 0),
(28, 'Persistent foreground emulation', '2008-09-02', 'http://dummyimage.com/167x199.bmp/ff4444/ffffff', 'http://dummyimage.com/112x141.bmp/cc0000/ffffff', 0, 0, 0),
(29, 'Fully-configurable national utilisation', '2008-05-20', 'http://dummyimage.com/112x238.bmp/cc0000/ffffff', 'http://dummyimage.com/183x184.jpg/cc0000/ffffff', 0, 0, 0),
(30, 'Stand-alone dynamic initiative', '2001-04-12', 'http://dummyimage.com/192x200.png/ff4444/ffffff', 'http://dummyimage.com/172x188.bmp/dddddd/000000', 0, 0, 0),
(31, 'User-friendly maximized time-frame', '1992-07-06', 'http://dummyimage.com/104x206.png/ff4444/ffffff', 'http://dummyimage.com/178x164.jpg/ff4444/ffffff', 0, 0, 0),
(32, 'Managed neutral parallelism', '2014-07-10', 'http://dummyimage.com/131x112.png/5fa2dd/ffffff', 'http://dummyimage.com/210x172.jpg/5fa2dd/ffffff', 0, 0, 0),
(33, 'Adaptive needs-based concept', '2000-07-24', 'http://dummyimage.com/246x127.bmp/5fa2dd/ffffff', 'http://dummyimage.com/206x128.jpg/ff4444/ffffff', 0, 0, 0),
(34, 'Realigned well-modulated flexibility', '2006-11-28', 'http://dummyimage.com/112x242.png/cc0000/ffffff', 'http://dummyimage.com/127x205.png/ff4444/ffffff', 0, 0, 0),
(35, 'Advanced zero administration synergy', '1997-05-23', 'http://dummyimage.com/173x191.png/cc0000/ffffff', 'http://dummyimage.com/240x122.jpg/cc0000/ffffff', 0, 0, 0),
(36, 'Distributed clear-thinking installation', '2016-12-11', 'http://dummyimage.com/176x109.png/5fa2dd/ffffff', 'http://dummyimage.com/143x185.bmp/5fa2dd/ffffff', 0, 0, 0),
(37, 'Synchronised attitude-oriented Graphical User Interface', '2002-08-09', 'http://dummyimage.com/112x142.jpg/cc0000/ffffff', 'http://dummyimage.com/245x113.png/ff4444/ffffff', 0, 0, 0),
(38, 'Distributed zero tolerance open architecture', '2002-06-08', 'http://dummyimage.com/182x154.bmp/dddddd/000000', 'http://dummyimage.com/188x158.bmp/dddddd/000000', 0, 0, 0),
(39, 'Universal national emulation', '2005-03-15', 'http://dummyimage.com/176x111.bmp/5fa2dd/ffffff', 'http://dummyimage.com/236x115.bmp/ff4444/ffffff', 0, 0, 0),
(40, 'Upgradable multimedia productivity', '1998-12-29', 'http://dummyimage.com/119x151.bmp/5fa2dd/ffffff', 'http://dummyimage.com/167x247.bmp/cc0000/ffffff', 0, 0, 0),
(41, 'Extended empowering implementation', '2012-01-20', 'http://dummyimage.com/231x162.jpg/ff4444/ffffff', 'http://dummyimage.com/121x245.png/cc0000/ffffff', 0, 0, 0),
(42, 'Multi-channelled attitude-oriented knowledge user', '1995-03-02', 'http://dummyimage.com/130x149.png/cc0000/ffffff', 'http://dummyimage.com/203x224.bmp/cc0000/ffffff', 0, 0, 0),
(43, 'Distributed exuding info-mediaries', '2010-08-22', 'http://dummyimage.com/242x152.png/5fa2dd/ffffff', 'http://dummyimage.com/150x162.bmp/ff4444/ffffff', 0, 0, 0),
(44, 'Configurable actuating firmware', '1994-11-13', 'http://dummyimage.com/106x236.png/ff4444/ffffff', 'http://dummyimage.com/143x148.bmp/ff4444/ffffff', 0, 0, 0),
(45, 'Monitored needs-based hardware', '2011-02-11', 'http://dummyimage.com/126x212.bmp/dddddd/000000', 'http://dummyimage.com/136x246.jpg/cc0000/ffffff', 0, 0, 0),
(46, 'Innovative multi-state capacity', '2013-09-13', 'http://dummyimage.com/149x218.bmp/5fa2dd/ffffff', 'http://dummyimage.com/134x105.png/5fa2dd/ffffff', 0, 0, 0),
(47, 'Assimilated interactive archive', '2002-12-27', 'http://dummyimage.com/108x102.bmp/cc0000/ffffff', 'http://dummyimage.com/106x142.bmp/ff4444/ffffff', 0, 0, 0),
(48, 'Multi-lateral zero tolerance implementation', '2007-11-13', 'http://dummyimage.com/184x106.png/dddddd/000000', 'http://dummyimage.com/104x207.bmp/dddddd/000000', 0, 0, 0),
(49, 'Public-key 24 hour encoding', '1999-06-25', 'http://dummyimage.com/166x114.bmp/cc0000/ffffff', 'http://dummyimage.com/176x220.bmp/5fa2dd/ffffff', 0, 0, 0),
(50, 'Customizable holistic matrices', '2016-12-10', 'http://dummyimage.com/162x150.bmp/cc0000/ffffff', 'http://dummyimage.com/191x156.bmp/ff4444/ffffff', 0, 0, 0),
(51, 'Profound 6th generation help-desk', '1998-03-17', 'http://dummyimage.com/234x197.bmp/dddddd/000000', 'http://dummyimage.com/124x213.bmp/ff4444/ffffff', 0, 0, 0),
(52, 'Automated bifurcated core', '2011-10-30', 'http://dummyimage.com/205x139.bmp/ff4444/ffffff', 'http://dummyimage.com/130x247.png/dddddd/000000', 0, 0, 0),
(53, 'Right-sized responsive monitoring', '2008-02-17', 'http://dummyimage.com/232x115.jpg/5fa2dd/ffffff', 'http://dummyimage.com/144x119.png/5fa2dd/ffffff', 0, 0, 0),
(54, 'Balanced explicit help-desk', '1990-11-17', 'http://dummyimage.com/232x228.png/5fa2dd/ffffff', 'http://dummyimage.com/177x151.png/cc0000/ffffff', 0, 0, 0),
(55, 'Secured solution-oriented productivity', '1995-07-31', 'http://dummyimage.com/176x186.jpg/dddddd/000000', 'http://dummyimage.com/104x204.png/dddddd/000000', 0, 0, 0),
(56, 'Pre-emptive bi-directional framework', '1997-01-08', 'http://dummyimage.com/195x115.bmp/dddddd/000000', 'http://dummyimage.com/212x176.jpg/cc0000/ffffff', 0, 0, 0),
(57, 'Fully-configurable modular intranet', '2002-11-25', 'http://dummyimage.com/236x195.bmp/dddddd/000000', 'http://dummyimage.com/218x206.bmp/ff4444/ffffff', 0, 0, 0),
(58, 'Versatile coherent intranet', '2015-11-05', 'http://dummyimage.com/170x243.png/cc0000/ffffff', 'http://dummyimage.com/197x183.jpg/cc0000/ffffff', 0, 0, 0),
(59, 'Synchronised national hardware', '1998-12-15', 'http://dummyimage.com/203x173.jpg/5fa2dd/ffffff', 'http://dummyimage.com/229x156.jpg/dddddd/000000', 0, 0, 0),
(60, 'Compatible eco-centric workforce', '2000-12-13', 'http://dummyimage.com/193x187.png/cc0000/ffffff', 'http://dummyimage.com/106x123.png/cc0000/ffffff', 0, 0, 0),
(61, 'Right-sized 24/7 function', '1995-01-11', 'http://dummyimage.com/146x236.png/ff4444/ffffff', 'http://dummyimage.com/219x203.jpg/dddddd/000000', 0, 0, 0),
(62, 'Persevering eco-centric core', '1992-05-17', 'http://dummyimage.com/211x135.bmp/dddddd/000000', 'http://dummyimage.com/189x171.png/5fa2dd/ffffff', 0, 0, 0),
(63, 'Devolved neutral groupware', '2000-12-19', 'http://dummyimage.com/203x159.bmp/cc0000/ffffff', 'http://dummyimage.com/239x164.bmp/5fa2dd/ffffff', 0, 0, 0),
(64, 'Customizable local Graphic Interface', '2004-12-19', 'http://dummyimage.com/129x238.bmp/5fa2dd/ffffff', 'http://dummyimage.com/200x124.bmp/cc0000/ffffff', 0, 0, 0),
(65, 'Sharable uniform paradigm', '2001-06-12', 'http://dummyimage.com/236x167.bmp/5fa2dd/ffffff', 'http://dummyimage.com/122x110.png/ff4444/ffffff', 0, 0, 0),
(66, 'Expanded grid-enabled synergy', '2009-06-27', 'http://dummyimage.com/121x124.jpg/cc0000/ffffff', 'http://dummyimage.com/187x174.jpg/5fa2dd/ffffff', 0, 0, 0),
(67, 'Proactive needs-based intranet', '2001-11-09', 'http://dummyimage.com/141x159.jpg/cc0000/ffffff', 'http://dummyimage.com/155x245.png/ff4444/ffffff', 0, 0, 0),
(68, 'Adaptive 4th generation frame', '2014-01-05', 'http://dummyimage.com/111x183.bmp/5fa2dd/ffffff', 'http://dummyimage.com/172x118.jpg/ff4444/ffffff', 0, 0, 0),
(69, 'Upgradable national analyzer', '1994-11-27', 'http://dummyimage.com/121x234.jpg/dddddd/000000', 'http://dummyimage.com/122x132.png/ff4444/ffffff', 0, 0, 0),
(70, 'Operative asymmetric concept', '1993-07-12', 'http://dummyimage.com/109x166.bmp/ff4444/ffffff', 'http://dummyimage.com/197x225.bmp/5fa2dd/ffffff', 0, 0, 0),
(71, 'Innovative asynchronous product', '2013-02-04', 'http://dummyimage.com/112x204.png/cc0000/ffffff', 'http://dummyimage.com/164x167.png/5fa2dd/ffffff', 0, 0, 0),
(72, 'Intuitive composite flexibility', '2011-03-01', 'http://dummyimage.com/230x226.bmp/5fa2dd/ffffff', 'http://dummyimage.com/182x240.png/cc0000/ffffff', 0, 0, 0),
(73, 'Up-sized multi-tasking website', '2012-08-15', 'http://dummyimage.com/118x102.png/ff4444/ffffff', 'http://dummyimage.com/152x215.bmp/5fa2dd/ffffff', 0, 0, 0),
(74, 'Focused methodical toolset', '1997-01-20', 'http://dummyimage.com/236x206.png/dddddd/000000', 'http://dummyimage.com/178x159.jpg/dddddd/000000', 0, 0, 0),
(75, 'Team-oriented mobile projection', '2015-12-29', 'http://dummyimage.com/129x105.png/ff4444/ffffff', 'http://dummyimage.com/232x223.bmp/5fa2dd/ffffff', 0, 0, 0),
(76, 'Enhanced executive analyzer', '2005-05-08', 'http://dummyimage.com/249x139.jpg/5fa2dd/ffffff', 'http://dummyimage.com/153x159.bmp/5fa2dd/ffffff', 0, 0, 0),
(77, 'Multi-lateral eco-centric middleware', '2005-09-13', 'http://dummyimage.com/196x127.png/ff4444/ffffff', 'http://dummyimage.com/207x115.png/ff4444/ffffff', 0, 0, 0),
(78, 'Cloned human-resource leverage', '1997-04-04', 'http://dummyimage.com/112x110.png/5fa2dd/ffffff', 'http://dummyimage.com/143x128.jpg/dddddd/000000', 0, 0, 0),
(79, 'Reactive incremental extranet', '2003-10-21', 'http://dummyimage.com/140x236.bmp/cc0000/ffffff', 'http://dummyimage.com/170x197.jpg/cc0000/ffffff', 0, 0, 0),
(80, 'Customer-focused coherent collaboration', '2007-09-09', 'http://dummyimage.com/208x116.bmp/ff4444/ffffff', 'http://dummyimage.com/151x179.png/ff4444/ffffff', 0, 0, 0),
(81, 'Organized reciprocal task-force', '1999-07-24', 'http://dummyimage.com/122x152.jpg/cc0000/ffffff', 'http://dummyimage.com/209x177.png/dddddd/000000', 0, 0, 0),
(82, 'Sharable mission-critical hierarchy', '2005-12-08', 'http://dummyimage.com/120x202.png/cc0000/ffffff', 'http://dummyimage.com/173x129.png/cc0000/ffffff', 0, 0, 0),
(83, 'Horizontal explicit conglomeration', '2002-12-15', 'http://dummyimage.com/135x144.bmp/cc0000/ffffff', 'http://dummyimage.com/125x111.jpg/dddddd/000000', 0, 0, 0),
(84, 'Compatible human-resource parallelism', '2012-11-20', 'http://dummyimage.com/195x149.bmp/ff4444/ffffff', 'http://dummyimage.com/223x166.jpg/5fa2dd/ffffff', 0, 0, 0),
(85, 'Intuitive methodical analyzer', '1993-06-28', 'http://dummyimage.com/179x148.png/cc0000/ffffff', 'http://dummyimage.com/112x194.bmp/cc0000/ffffff', 0, 0, 0),
(86, 'Optional encompassing instruction set', '2013-02-17', 'http://dummyimage.com/243x120.bmp/cc0000/ffffff', 'http://dummyimage.com/105x127.png/dddddd/000000', 0, 0, 0),
(87, 'Profit-focused foreground productivity', '2008-09-02', 'http://dummyimage.com/221x210.jpg/dddddd/000000', 'http://dummyimage.com/244x174.png/5fa2dd/ffffff', 0, 0, 0),
(88, 'Re-engineered analyzing methodology', '2012-03-06', 'http://dummyimage.com/158x180.png/dddddd/000000', 'http://dummyimage.com/245x247.bmp/5fa2dd/ffffff', 0, 0, 0),
(89, 'Triple-buffered local structure', '1997-10-04', 'http://dummyimage.com/204x153.png/dddddd/000000', 'http://dummyimage.com/140x155.bmp/cc0000/ffffff', 0, 0, 0),
(90, 'Devolved tangible synergy', '1996-08-06', 'http://dummyimage.com/213x133.png/cc0000/ffffff', 'http://dummyimage.com/196x213.png/5fa2dd/ffffff', 0, 0, 0),
(91, 'Front-line full-range local area network', '2001-11-15', 'http://dummyimage.com/190x162.bmp/cc0000/ffffff', 'http://dummyimage.com/103x190.jpg/5fa2dd/ffffff', 0, 0, 0),
(92, 'De-engineered logistical frame', '2002-04-22', 'http://dummyimage.com/171x183.jpg/ff4444/ffffff', 'http://dummyimage.com/202x240.bmp/5fa2dd/ffffff', 0, 0, 0),
(93, 'Re-contextualized human-resource model', '1991-03-06', 'http://dummyimage.com/126x151.jpg/5fa2dd/ffffff', 'http://dummyimage.com/114x238.bmp/5fa2dd/ffffff', 0, 0, 0),
(94, 'Front-line holistic matrix', '2016-01-31', 'http://dummyimage.com/122x169.bmp/cc0000/ffffff', 'http://dummyimage.com/210x149.png/cc0000/ffffff', 0, 0, 0),
(95, 'Exclusive dedicated throughput', '2012-07-23', 'http://dummyimage.com/223x192.bmp/cc0000/ffffff', 'http://dummyimage.com/142x179.bmp/ff4444/ffffff', 0, 0, 0),
(96, 'Universal executive array', '1991-02-03', 'http://dummyimage.com/244x159.png/cc0000/ffffff', 'http://dummyimage.com/234x223.png/cc0000/ffffff', 0, 0, 0),
(97, 'Synergized hybrid policy', '1998-08-26', 'http://dummyimage.com/118x146.png/5fa2dd/ffffff', 'http://dummyimage.com/109x147.bmp/5fa2dd/ffffff', 0, 0, 0),
(98, 'Intuitive user-facing definition', '2014-02-22', 'http://dummyimage.com/246x240.bmp/cc0000/ffffff', 'http://dummyimage.com/202x194.jpg/dddddd/000000', 0, 0, 0),
(99, 'Advanced mission-critical encoding', '2016-05-26', 'http://dummyimage.com/154x233.jpg/5fa2dd/ffffff', 'http://dummyimage.com/241x186.jpg/cc0000/ffffff', 0, 0, 0),
(100, 'Multi-layered needs-based functionalities', '2002-12-17', 'http://dummyimage.com/165x103.bmp/ff4444/ffffff', 'http://dummyimage.com/102x115.jpg/cc0000/ffffff', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `moviexprofessionals`
--

CREATE TABLE `moviexprofessionals` (
  `movie_id` int(11) UNSIGNED NOT NULL,
  `pro_id` int(11) UNSIGNED NOT NULL,
  `actor` tinyint(1) NOT NULL,
  `director` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `moviexprofessionals`
--

INSERT INTO `moviexprofessionals` (`movie_id`, `pro_id`, `actor`, `director`) VALUES
(1, 1, 0, 1),
(1, 2, 1, 0),
(2, 1, 1, 0),
(2, 4, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `professionals`
--

CREATE TABLE `professionals` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `dayOfBirth` date NOT NULL,
  `gender` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professionals`
--

INSERT INTO `professionals` (`id`, `name`, `dayOfBirth`, `gender`) VALUES
(1, 'Vergil Gribbon', '1992-05-11', 0),
(2, 'Harley Lethebridge', '2011-01-10', 1),
(3, 'Veriee Randerson', '1925-03-27', 0),
(4, 'Bobby De Cruce', '1972-10-19', 1),
(5, 'Maurene Bowater', '1964-01-09', 0),
(6, 'Dorene Winear', '1999-10-15', 1),
(7, 'Milena Diegan', '1938-04-16', 1),
(8, 'Marc Dietsche', '1970-12-22', 1),
(9, 'Katine Cristou', '1926-05-20', 0),
(10, 'Fonsie Pughe', '1953-09-19', 0),
(11, 'Fredrick Nassie', '2014-06-09', 1),
(12, 'Eberto McElvine', '1942-03-27', 1),
(13, 'Inessa Render', '1968-08-17', 1),
(14, 'Darleen Looker', '1918-10-02', 0),
(15, 'North Briar', '1959-06-27', 1),
(16, 'Ernest Fundell', '1972-12-17', 0),
(17, 'Nanette Halms', '1966-12-20', 1),
(18, 'Barty Rustman', '1965-06-06', 0),
(19, 'Mae Le Houx', '1937-07-04', 1),
(20, 'Roxana Norvell', '1999-03-20', 1),
(21, 'Larissa Ruseworth', '1993-09-12', 1),
(22, 'Bartlet Joire', '1991-10-10', 0),
(23, 'Kania Kaminski', '2003-04-16', 1),
(24, 'Doe Thonason', '1929-09-15', 1),
(25, 'Orin Izatson', '1991-01-04', 1),
(26, 'Eolanda Paffett', '1982-11-10', 0),
(27, 'Oliver Berka', '1944-09-02', 0),
(28, 'Eamon Verity', '1977-09-04', 0),
(29, 'Agnella Hunday', '1910-10-31', 1),
(30, 'Robinet Haulkham', '1926-08-20', 1),
(31, 'Selinda Stebles', '1929-12-10', 1),
(32, 'Sarene Ockland', '1981-12-04', 1),
(33, 'Tina Gasnell', '1999-04-26', 1),
(34, 'Giles Schultheiss', '1905-02-18', 0),
(35, 'Jessalyn Mansel', '1910-03-11', 1),
(36, 'Harlen Parffrey', '1929-02-21', 1),
(37, 'Brianna Cunnow', '2001-02-09', 0),
(38, 'Lucie Brunnen', '2014-11-29', 1),
(39, 'Osmond Djorvic', '2006-12-30', 0),
(40, 'Reuben Elecum', '1948-07-12', 0),
(41, 'Judah Wyley', '1977-12-04', 0),
(42, 'Arlyn Rossi', '1918-06-19', 1),
(43, 'Rutger Kesley', '1999-06-09', 1),
(44, 'Sydney Zarfai', '1959-11-10', 0),
(45, 'Novelia Wey', '1935-09-20', 0),
(46, 'Eddie Sicely', '1944-10-20', 1),
(47, 'Stearn Horwell', '1922-10-26', 1),
(48, 'Tracy Blaasch', '2009-08-24', 1),
(49, 'Melvyn Squibb', '1904-07-22', 1),
(50, 'Corby O\'Loughane', '1925-08-07', 1),
(51, 'Vally Cadding', '1929-06-29', 1),
(52, 'Cindi Steffens', '1937-12-06', 0),
(53, 'Velvet Norris', '1991-10-22', 0),
(54, 'Gracia Esgate', '1993-06-02', 1),
(55, 'Tedie Rickaert', '1966-07-30', 1),
(56, 'Esdras Marchetti', '1968-07-23', 0),
(57, 'Ardelia Visco', '1975-04-23', 1),
(58, 'Reinald Hymer', '1913-12-28', 0),
(59, 'Jake Byrd', '1994-12-03', 0),
(60, 'Mikel Kalinowsky', '2001-11-29', 1),
(61, 'Bail Cryer', '1973-09-23', 0),
(62, 'Wilburt Hedworth', '2015-01-31', 1),
(63, 'Stephenie Doherty', '1969-09-05', 0),
(64, 'Blondie Klimochkin', '1935-09-11', 1),
(65, 'Waldon Davioud', '1904-09-10', 0),
(66, 'Hastie Du Fray', '1958-01-23', 0),
(67, 'Murdoch Debney', '1906-12-12', 0),
(68, 'Corabelle Hysom', '2015-03-09', 0),
(69, 'Philbert Tuckey', '1950-09-20', 1),
(70, 'Sissie Rosbotham', '1951-12-19', 0),
(71, 'Jodee Riccelli', '2002-08-06', 1),
(72, 'Jorge Hubane', '1959-11-01', 1),
(73, 'Barri Arney', '1958-06-05', 1),
(74, 'Marne Lowen', '1914-06-05', 0),
(75, 'Roarke Karleman', '2016-10-18', 0),
(76, 'Kristel Morshead', '2003-09-17', 0),
(77, 'Marlin Staff', '1955-02-03', 0),
(78, 'Antonino Cathesyed', '1932-10-07', 1),
(79, 'Asia Elgie', '2014-07-15', 0),
(80, 'Waldo Shaul', '1942-11-05', 0),
(81, 'Alberik Leel', '1967-02-17', 0),
(82, 'Paddie Adams', '1939-08-13', 0),
(83, 'Bran Glaister', '1992-07-07', 0),
(84, 'Silvio Glendining', '2007-02-14', 0),
(85, 'Sanson Callis', '1981-06-23', 0),
(86, 'Mabel Liffey', '1951-09-07', 0),
(87, 'Viola Hanlin', '1948-06-09', 0),
(88, 'Mozes Luno', '1982-03-16', 1),
(89, 'Silvia Koppelmann', '1972-08-31', 1),
(90, 'Glenda McRoberts', '1947-12-21', 1),
(91, 'Stanly Adolfsen', '2005-10-08', 0),
(92, 'Ashly Mathely', '1942-08-07', 0),
(93, 'Isidro Conaboy', '1922-08-14', 1),
(94, 'Lenette Meneo', '1969-05-10', 1),
(95, 'Brittne Strettle', '2014-12-08', 1),
(96, 'Janith Vernon', '1981-12-04', 0),
(97, 'Farah Mounfield', '1931-07-22', 0),
(98, 'Inger Srutton', '1992-06-20', 0),
(99, 'Tiebout Jiracek', '2006-05-03', 0),
(100, 'Elaina Jeeves', '1988-04-26', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre` (`genre_id`),
  ADD KEY `country` (`country_id`),
  ADD KEY `language` (`language_id`);

--
-- Indexes for table `moviexprofessionals`
--
ALTER TABLE `moviexprofessionals`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `professionals`
--
ALTER TABLE `professionals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `professionals`
--
ALTER TABLE `professionals`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `moviexprofessionals`
--
ALTER TABLE `moviexprofessionals`
  ADD CONSTRAINT `moviexprofessionals_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `moviexprofessionals_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `professionals` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
