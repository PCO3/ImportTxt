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

--
-- Déchargement des données de la table `of`
--

INSERT INTO `of` (`OFID`, `EXC_NBR`, `Site`, `Statut`, `Article`, `Description`, `AchatPlanif`, `OP`, `Statut_OP`, `Centre_charge`, `Desc_centre_charge`, `Date_debut_reelle_OP`, `Date_echeance_OF`, `Date_debut_OP`, `Date_fin_OP`, `Qte_lancee_OF`, `Qte_OF_Rejet`, `Qte_terminee`, `Qte_ouverte_OF`, `Remarque`, `Qte_encours_OP`, `Charge`, `Charge_2`, `Machine`) VALUES
(1062953, 3204513, 'BESAC', 'P', '140RU01Z01*/TC', 'TC/140RU01Z01/TOUS TYPES ', 'FANTI', 10, '', 51031, 'V513-RU-Nettoyage', '?', '2011-09-17', '2009-08-17', '2009-08-17', 14, 0, 0, 14, '', 14, 0, 0, ''),
(1062953, 3204513, 'BESAC', 'P', '140RU01Z01*/TC', 'TC/140RU01Z01/TOUS TYPES ', 'FANTI', 20, '', 51030, 'V513-RU-Boite ? gants', '?', '2011-09-17', '2011-08-17', '2011-08-17', 14, 0, 0, 14, '', 14, 1, 1, ''),
(1062953, 3204513, 'BESAC', 'P', '140RU01Z01*/TC', 'TC/140RU01Z01/TOUS TYPES ', 'FANTI', 25, '', 51132, 'V513-CTRL HERMETICITE', '?', '2011-09-17', '2016-08-17', '2016-08-17', 14, 0, 0, 14, '', 14, 0, 0, ''),
(1062953, 3204513, 'BESAC', 'P', '140RU01Z01*/TC', 'TC/140RU01Z01/TOUS TYPES ', 'FANTI', 35, '', 58100, 'V58-CONTROLE/RECEPTION', '?', '2011-09-17', '2006-09-17', '2006-09-17', 14, 0, 0, 14, '', 14, 0, 0, ''),
(1062953, 3204513, 'BESAC', 'P', '140RU01Z01*/TC', 'TC/140RU01Z01/TOUS TYPES ', 'FANTI', 50, '', 51130, 'V513-Controle final', '?', '2011-09-17', '2006-09-17', '2006-09-17', 14, 0, 0, 14, '', 14, 0, 0, ''),
(1062953, 3204513, 'BESAC', 'P', '140RU01Z01*/TC', 'TC/140RU01Z01/TOUS TYPES ', 'FANTI', 300, '', 51130, 'V513-Controle final', '?', '2011-09-17', '2007-09-17', '2007-09-17', 14, 0, 0, 14, '', 14, 0, 0, ''),
(1062953, 3204513, 'BESAC', 'P', '140RU01Z01*/TC', 'TC/140RU01Z01/TOUS TYPES ', 'FANTI', 500, '', 51130, 'V513-Controle final', '?', '2011-09-17', '2011-09-17', '2011-09-17', 14, 0, 0, 14, '', 14, 0, 0, ''),
(106461, 7090837, 'BESAC', 'P', '880UN01S4BB5P', 'INVERSEUR ', 'V511/ORD', 10, '', 51006, 'V511-MC-100PS-Assemblage', '?', '2023-10-17', '2017-10-17', '2017-10-17', 4, 0, 0, 4, '', 4, 0, 0, 'bloc'),
(106461, 7090837, 'BESAC', 'P', '880UN01S4BB5P', 'INVERSEUR ', 'V511/ORD', 20, '', 51012, 'V511-800/900UN-Assemblag', '?', '2023-10-17', '2018-10-17', '2018-10-17', 4, 0, 0, 4, '', 4, 0, 0, ''),
(106461, 7090837, 'BESAC', 'P', '880UN01S4BB5P', 'INVERSEUR ', 'V511/ORD', 30, '', 51012, 'V511-800/900UN-Assemblag', '?', '2023-10-17', '2019-10-17', '2019-10-17', 4, 0, 0, 4, '', 4, 0, 0, ''),
(106461, 7090837, 'BESAC', 'P', '880UN01S4BB5P', 'INVERSEUR ', 'V511/ORD', 90, '', 51110, 'V511-Controle final', '?', '2023-10-17', '2020-10-17', '2020-10-17', 4, 0, 0, 4, '', 4, 0, 0, ''),
(106461, 7090837, 'BESAC', 'P', '880UN01S4BB5P', 'INVERSEUR ', 'V511/ORD', 500, '', 51110, 'V511-Controle final', '?', '2023-10-17', '2023-10-17', '2023-10-17', 4, 0, 0, 4, '', 4, 0, 0, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
