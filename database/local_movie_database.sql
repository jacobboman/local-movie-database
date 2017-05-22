-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 21 maj 2017 kl 15:03
-- Serverversion: 5.7.14
-- PHP-version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `local_movie_database`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `countries`
--

CREATE TABLE `countries` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'USA');

-- --------------------------------------------------------

--
-- Tabellstruktur `genres`
--

CREATE TABLE `genres` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Romance'),
(3, 'Science fiction'),
(4, 'Crime');

-- --------------------------------------------------------

--
-- Tabellstruktur `languages`
--

CREATE TABLE `languages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(1, 'English');

-- --------------------------------------------------------

--
-- Tabellstruktur `movies`
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
-- Dumpning av Data i tabell `movies`
--

INSERT INTO `movies` (`id`, `name`, `releaseDate`, `coverPhoto`, `trailerURL`, `genre_id`, `country_id`, `language_id`) VALUES
(101, 'Speed', '1994-07-22', 'https://images-na.ssl-images-amazon.com/images/M/MV5BYjc0MjYyN2EtZGRhMy00NzJiLWI2Y2QtYzhiYTU3NzAxNzg4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg', 'www.speedtrailer.com', 1, 1, 1),
(102, 'Face/Off', '1997-10-08', 'https://images-na.ssl-images-amazon.com/images/M/MV5BYzFjNzIxMmEtMzY5NS00YTgzLTkwYWEtN2FjMmY0NmNkZWY3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg', 'www.faceoffTrailer.com', 1, 1, 1),
(103, 'Pretty Woman', '1990-06-29', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNjk2ODQzNDYxNV5BMl5BanBnXkFtZTgwMTcyNDg4NjE@._V1_UX182_CR0,0,182,268_AL_.jpg', 'www.prettywomantrailer.com', 2, 1, 1),
(104, 'Gravity', '2013-10-25', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNjE5MzYwMzYxMF5BMl5BanBnXkFtZTcwOTk4MTk0OQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'www.gravitytrailer.com', 3, 1, 1),
(105, 'Ocean\'s Eleven', '2001-01-18', 'https://images-na.ssl-images-amazon.com/images/M/MV5BYzVmYzVkMmUtOGRhMi00MTNmLThlMmUtZTljYjlkMjNkMjJkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX182_CR0,0,182,268_AL_.jpg', 'www.ocean11trailer.com', 4, 1, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `movie_professional`
--

CREATE TABLE `movie_professional` (
  `movie_id` int(11) UNSIGNED NOT NULL,
  `proffessional_id` int(11) UNSIGNED NOT NULL,
  `actor` tinyint(1) NOT NULL,
  `director` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `movie_professional`
--

INSERT INTO `movie_professional` (`movie_id`, `proffessional_id`, `actor`, `director`) VALUES
(101, 1, 1, 0),
(102, 1, 1, 0),
(102, 3, 1, 0),
(102, 4, 1, 0),
(103, 5, 1, 0),
(103, 6, 1, 0),
(104, 2, 1, 0),
(104, 7, 1, 0),
(105, 7, 1, 0),
(105, 8, 1, 0),
(104, 9, 1, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `professionals`
--

CREATE TABLE `professionals` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `dayOfBirth` date NOT NULL,
  `gender` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `professionals`
--

INSERT INTO `professionals` (`id`, `name`, `dayOfBirth`, `gender`) VALUES
(1, 'Keanu Reeves', '1964-10-02', 1),
(2, 'Sandra Bullock', '1964-07-24', 0),
(3, 'John Travolta', '1954-02-18', 1),
(4, 'Nicolas Cage', '1964-01-07', 1),
(5, 'Richard Gere', '1949-08-31', 1),
(6, 'Julia Roberts', '1967-10-28', 0),
(7, 'George Clooney', '1961-05-06', 1),
(8, 'Brad Pitt', '1963-12-18', 1),
(9, 'Ed Harris', '1950-11-28', 1);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre` (`genre_id`),
  ADD KEY `country` (`country_id`),
  ADD KEY `language` (`language_id`);

--
-- Index för tabell `movie_professional`
--
ALTER TABLE `movie_professional`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `proffessional_id` (`proffessional_id`);

--
-- Index för tabell `professionals`
--
ALTER TABLE `professionals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT för tabell `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT för tabell `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT för tabell `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT för tabell `professionals`
--
ALTER TABLE `professionals`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_ibfk_1` FOREIGN KEY (`id`) REFERENCES `movies` (`country_id`);

--
-- Restriktioner för tabell `genres`
--
ALTER TABLE `genres`
  ADD CONSTRAINT `genres_ibfk_1` FOREIGN KEY (`id`) REFERENCES `movies` (`genre_id`);

--
-- Restriktioner för tabell `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`id`) REFERENCES `movies` (`language_id`);

--
-- Restriktioner för tabell `movie_professional`
--
ALTER TABLE `movie_professional`
  ADD CONSTRAINT `movie_professional_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movie_professional_ibfk_2` FOREIGN KEY (`proffessional_id`) REFERENCES `professionals` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
