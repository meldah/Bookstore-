-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Време на генериране: 
-- Версия на сървъра: 5.5.16
-- Версия на PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данни: `lubopitko`
--

-- --------------------------------------------------------

--
-- Структура на таблица `klienti`
--

CREATE TABLE IF NOT EXISTS `klienti` (
  `klient_ID` int(11) NOT NULL,
  `ime` varchar(20) DEFAULT NULL,
  `adres` varchar(20) DEFAULT NULL,
  `telefon` varchar(8) DEFAULT NULL,
  `knigarnici_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`klient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `knigarnitzi`
--

CREATE TABLE IF NOT EXISTS `knigarnitzi` (
  `knigarnitci_ID` int(11) NOT NULL,
  `ime` varchar(20) DEFAULT NULL,
  `adres` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`knigarnitci_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `knigi`
--

CREATE TABLE IF NOT EXISTS `knigi` (
  `knigi_id` int(11) NOT NULL,
  `zaglavia` varchar(13) DEFAULT NULL,
  `avtor` varchar(13) DEFAULT NULL,
  `cena` decimal(65,0) DEFAULT NULL,
  `tematica_ID` int(11) DEFAULT NULL,
  `knigarnici_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`knigi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Ссхема на данните от таблица `knigi`
--

INSERT INTO `knigi` (`knigi_id`, `zaglavia`, `avtor`, `cena`, `tematica_ID`, `knigarnici_ID`) VALUES
(1, 'Burqta na vek', ' Stephen King', '15', 0, 0),
(2, 'Kudjo', ' Stephen King', '14', 0, 0),
(3, 'Kralqt v jult', 'Robert Chambe', '15', 0, 0),
(4, 'Ostani', ' Harlan Coben', '15', 0, 0);

-- --------------------------------------------------------

--
-- Структура на таблица `tematica`
--

CREATE TABLE IF NOT EXISTS `tematica` (
  `tematica_ID` int(11) NOT NULL,
  `tematica` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`tematica_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
