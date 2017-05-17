-- phpMyAdmin SQL Dump
-- version 4.4.8
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 17 maj 2017 kl 11:41
-- Serverversion: 5.6.24
-- PHP-version: 5.6.10RC1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `local_movie_database`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `professionals`
--

CREATE TABLE IF NOT EXISTS `professionals` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `dayOfBirth` date NOT NULL,
  `gender` int(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `professionals`
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
(50, 'Corby O''Loughane', '1925-08-07', 1),
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
-- Index för dumpade tabeller
--

--
-- Index för tabell `professionals`
--
ALTER TABLE `professionals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `professionals`
--
ALTER TABLE `professionals`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
