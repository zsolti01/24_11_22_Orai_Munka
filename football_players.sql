-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 22. 12:07
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `24_11_22_orai_munka`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `football_players`
--

CREATE TABLE `football_players` (
  `Id` int(11) NOT NULL,
  `Name` varchar(37) NOT NULL,
  `Height` int(11) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Nationality` varchar(37) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `football_players`
--

INSERT INTO `football_players` (`Id`, `Name`, `Height`, `Weight`, `Nationality`) VALUES
(4, 'Beniamino Etherington', 162, 91, 'China'),
(6, 'Gregory Semrad', 162, 80, 'Poland'),
(7, 'Leena Pummery', 190, 120, 'Ukraine'),
(10, 'Rosene Jenckes', 210, 73, 'China'),
(12, 'Toby Townby', 203, 75, 'China'),
(18, 'Bruno Huggan', 163, 118, 'China'),
(19, 'Winnifred McKinless', 207, 104, 'Argentina'),
(20, 'Jackson Crockley', 182, 90, 'Indonesia'),
(21, 'Garfield Beecham', 171, 100, 'Colombia'),
(40, 'Rene Baulk', 192, 120, 'Peru'),
(46, 'Ekaterina Opy', 182, 64, 'Panama');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `football_players`
--
ALTER TABLE `football_players`
  ADD PRIMARY KEY (`Id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `football_players`
--
ALTER TABLE `football_players`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
