-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le :  lun. 02 août 2021 à 09:14
-- Version du serveur :  10.1.40-MariaDB
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cci_dwwm_2021_118_annonce`
--

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

CREATE TABLE `competence` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `competence`
--

INSERT INTO `competence` (`id`, `designation`) VALUES
(1, 'Développeur'),
(2, 'Permis B');

-- --------------------------------------------------------

--
-- Structure de la table `competence_offre`
--

CREATE TABLE `competence_offre` (
  `id_offre` int(11) NOT NULL,
  `id_competence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `competence_offre`
--

INSERT INTO `competence_offre` (`id_offre`, `id_competence`) VALUES
(1, 2),
(7, 1),
(7, 2);

-- --------------------------------------------------------

--
-- Structure de la table `competence_utilisateur`
--

CREATE TABLE `competence_utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `id_competence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `domaine`
--

CREATE TABLE `domaine` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `domaine`
--

INSERT INTO `domaine` (`id`, `designation`) VALUES
(1, 'Informatique'),
(2, 'Restauration');

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_domaine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`id`, `titre`, `description`, `id_utilisateur`, `id_domaine`) VALUES
(1, 'Saisonnier ', 'Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla ', 1, NULL),
(7, 'Développeur JAVA', 'un super poste !!!', 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `entreprise` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `pseudo`, `mot_de_passe`, `entreprise`) VALUES
(1, 'DevAndCo', '$2y$10$H6Lf5lqZCAfuG9JEs.PXMeZPJqOPwUsXNhepd1vKsnGz.L/gAZKKy', 1),
(2, 'titi', '$2y$10$m9jX1rjCGvfXQJvlOVEZd.rYUyP.pBCXYTPRSIc/UlOjHuWAXbFDO', 0),
(5, 'devCorp', '$2y$10$D9y9LwxwR0v5zjiUyYz2LO.3BQcJjdrEd/qskRtV7XUMCdh1zw.nS', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `competence`
--
ALTER TABLE `competence`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `competence_offre`
--
ALTER TABLE `competence_offre`
  ADD PRIMARY KEY (`id_offre`,`id_competence`),
  ADD KEY `fk_id_competence_offre` (`id_competence`);

--
-- Index pour la table `competence_utilisateur`
--
ALTER TABLE `competence_utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`,`id_competence`),
  ADD KEY `fk_id_competence_utilisateur` (`id_competence`);

--
-- Index pour la table `domaine`
--
ALTER TABLE `domaine`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_utilisateur` (`id_utilisateur`),
  ADD KEY `fk_id_domaine` (`id_domaine`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `competence`
--
ALTER TABLE `competence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `domaine`
--
ALTER TABLE `domaine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `competence_offre`
--
ALTER TABLE `competence_offre`
  ADD CONSTRAINT `fk_id_competence_offre` FOREIGN KEY (`id_competence`) REFERENCES `competence` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_offre_competence` FOREIGN KEY (`id_offre`) REFERENCES `offre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `competence_utilisateur`
--
ALTER TABLE `competence_utilisateur`
  ADD CONSTRAINT `fk_id_competence_utilisateur` FOREIGN KEY (`id_competence`) REFERENCES `competence` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_utilisateur_competence` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `offre`
--
ALTER TABLE `offre`
  ADD CONSTRAINT `fk_id_domaine` FOREIGN KEY (`id_domaine`) REFERENCES `domaine` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
