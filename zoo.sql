-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 07 août 2021 à 10:35
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `zoo`
--

-- --------------------------------------------------------

--
-- Structure de la table `animal`
--

DROP TABLE IF EXISTS `animal`;
CREATE TABLE IF NOT EXISTS `animal` (
  `Id_animal` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `male` tinyint(1) DEFAULT NULL,
  `Id_cage` int(11) NOT NULL,
  PRIMARY KEY (`Id_animal`),
  KEY `Id_cage` (`Id_cage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cage`
--

DROP TABLE IF EXISTS `cage`;
CREATE TABLE IF NOT EXISTS `cage` (
  `Id_cage` int(11) NOT NULL AUTO_INCREMENT,
  `surface` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_cage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `nouriture`
--

DROP TABLE IF EXISTS `nouriture`;
CREATE TABLE IF NOT EXISTS `nouriture` (
  `Id_nouriture` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_nouriture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `Id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) DEFAULT NULL,
  `mot_de_passe` varchar(100) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`Id_utilisateur`, `pseudo`, `mot_de_passe`, `admin`) VALUES
(1, 'adam', '$2y$10$2ZxxscJDjUCSwEnaV8eq.eBEpKTEnRoy6v/SHXY8FLHQGIEeWAIDm', 1),
(2, 'adam', '$2y$10$s3QQvOx2xeSupuDdLBN6aeTpni4TQlxK488J9oau4Xkisa3ThIVWG', 1),
(3, 'samba', '$2y$10$lR9aOGPV5Gaee4QNsJZuOehg/xM/TTrR9chwfBqaYJqf6f2DpO2aW', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`Id_cage`) REFERENCES `cage` (`Id_cage`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
