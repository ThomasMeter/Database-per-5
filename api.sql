-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 16 okt 2020 om 17:38
-- Serverversie: 10.4.6-MariaDB
-- PHP-versie: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `naam` varchar(256) CHARACTER SET utf8 NOT NULL,
  `beschrijving` text CHARACTER SET utf8 NOT NULL,
  `toegevoegd_op` datetime NOT NULL,
  `gewijzigd_op` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `naam` varchar(32) NOT NULL,
  `beschrijving` text NOT NULL,
  `prijs` decimal(10,0) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `toegevoegd_op` datetime NOT NULL,
  `gewijzigd_op` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `naam`, `beschrijving`, `prijs`, `categorie_id`, `toegevoegd_op`, `gewijzigd_op`) VALUES
(7, 'Thomas', 'Thomas Meter', '1000000', 0, '2020-10-16 00:00:00', '2020-10-16 15:24:47');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
