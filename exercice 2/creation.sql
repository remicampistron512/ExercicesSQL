-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 26 nov. 2025 à 08:33
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `garage`
--

-- --------------------------------------------------------

--
-- Structure de la table `g_article`
--

DROP TABLE IF EXISTS `g_article`;
CREATE TABLE IF NOT EXISTS `g_article` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `a_reference` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_designation` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_marque` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_quantite` int NOT NULL,
  `a_fk_catalogue_voiture` int NOT NULL,
  PRIMARY KEY (`a_id`),
  KEY `a_fk_catalogue_voiture` (`a_fk_catalogue_voiture`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `g_catalogue_voiture`
--

DROP TABLE IF EXISTS `g_catalogue_voiture`;
CREATE TABLE IF NOT EXISTS `g_catalogue_voiture` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_marque` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_energie` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `g_client`
--

DROP TABLE IF EXISTS `g_client`;
CREATE TABLE IF NOT EXISTS `g_client` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_adresse` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_tel` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `g_or`
--

DROP TABLE IF EXISTS `g_or`;
CREATE TABLE IF NOT EXISTS `g_or` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `o_heures_passees` float NOT NULL,
  `o_prix_unitaire` float NOT NULL,
  `o_fk_client` int NOT NULL,
  `o_fk_voiture_client` int NOT NULL,
  PRIMARY KEY (`o_id`),
  KEY `o_fk_client` (`o_fk_client`),
  KEY `o_fk_voiture_client` (`o_fk_voiture_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `g_voiture_client`
--

DROP TABLE IF EXISTS `g_voiture_client`;
CREATE TABLE IF NOT EXISTS `g_voiture_client` (
  `v_id` int NOT NULL AUTO_INCREMENT,
  `v_plaque` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_annee` smallint NOT NULL,
  `v_fk_cataloque_voiture` int NOT NULL,
  `v_fk_client` int NOT NULL,
  PRIMARY KEY (`v_id`),
  KEY `v_fk_cataloque_voiture` (`v_fk_cataloque_voiture`),
  KEY `v_fk_client` (`v_fk_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `g_article`
--
ALTER TABLE `g_article`
  ADD CONSTRAINT `g_article_ibfk_1` FOREIGN KEY (`a_fk_catalogue_voiture`) REFERENCES `g_catalogue_voiture` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `g_or`
--
ALTER TABLE `g_or`
  ADD CONSTRAINT `g_or_ibfk_1` FOREIGN KEY (`o_fk_client`) REFERENCES `g_client` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `g_or_ibfk_2` FOREIGN KEY (`o_fk_voiture_client`) REFERENCES `g_voiture_client` (`v_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `g_voiture_client`
--
ALTER TABLE `g_voiture_client`
  ADD CONSTRAINT `g_voiture_client_ibfk_1` FOREIGN KEY (`v_fk_cataloque_voiture`) REFERENCES `g_catalogue_voiture` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `g_voiture_client_ibfk_2` FOREIGN KEY (`v_fk_client`) REFERENCES `g_client` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
