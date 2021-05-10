-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 May 2021, 17:09:23
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `20190305022`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `busdetails`
--

CREATE TABLE `busdetails` (
  `bno` int(11) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `start` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `busdetails`
--

INSERT INTO `busdetails` (`bno`, `bname`, `start`, `destination`, `price`) VALUES
(1, 'İstanbul to Ankara', 'İstanbul', 'Ankara', 100),
(2, 'Edirne to Çanakkale', 'Edirne', 'Çanakkale', 75),
(3, 'Hatay to Samsun', 'Hatay', 'Samsun', 160),
(4, 'Adana to İstanbul', 'Adana', 'İstanbul', 200),
(5, 'Sivas to Erzincan', 'Sivas', 'Erzincan', 500);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reservation`
--

CREATE TABLE `reservation` (
  `pno` int(11) NOT NULL,
  `start` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `bno` int(11) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `reservation`
--

INSERT INTO `reservation` (`pno`, `start`, `destination`, `bno`, `bname`, `price`) VALUES
(1, 'İstanbul', 'Ankara', 1, 'İstanbul to Ankara', 100),
(2, 'Edirne', 'Çanakkale', 2, 'Edirne to Çanakkale', 75),
(3, 'Hatay', 'Samsun', 3, 'Hatay to Samsun', 160),
(4, 'Adana', 'İstanbul', 4, 'Adana to İstanbul', 200),
(5, 'Sivas', 'Erzincan', 5, 'Sivas to Erzincan', 500);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `busdetails`
--
ALTER TABLE `busdetails`
  ADD PRIMARY KEY (`bno`);

--
-- Tablo için indeksler `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`pno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
