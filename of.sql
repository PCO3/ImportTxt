-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 22 déc. 2017 à 08:41
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `testcode`
--

-- --------------------------------------------------------

--
-- Structure de la table `of`
--

DROP TABLE IF EXISTS `of`;
CREATE TABLE IF NOT EXISTS `of` (
  `OFID` int(11) NOT NULL,
  `EXC_NBR` int(11) NOT NULL,
  `Site` varchar(50) NOT NULL,
  `Statut` char(5) NOT NULL,
  `Article` text NOT NULL,
  `Description` text NOT NULL,
  `AchatPlanif` varchar(70) NOT NULL,
  `OP` int(11) NOT NULL,
  `Statut_OP` char(5) DEFAULT NULL,
  `Centre_charge` int(11) DEFAULT NULL,
  `Desc_centre_charge` text,
  `Date_debut_reelle_OP` varchar(15) DEFAULT NULL,
  `Date_echeance_OF` date DEFAULT NULL,
  `Date_debut_OP` date DEFAULT NULL,
  `Date_fin_OP` date DEFAULT NULL,
  `Qte_lancee_OF` int(11) DEFAULT NULL,
  `Qte_OF_Rejet` int(11) DEFAULT NULL,
  `Qte_terminee` int(11) DEFAULT NULL,
  `Qte_ouverte_OF` int(11) DEFAULT NULL,
  `Remarque` text,
  `Qte_encours_OP` int(11) DEFAULT NULL,
  `Charge` float DEFAULT NULL,
  `Charge_2` float DEFAULT NULL,
  `Machine` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
