-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 25 nov. 2025 à 13:08
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
  `a_reference` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `a_designation` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `a_marque` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `a_quantite` smallint NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `g_article`
--

INSERT INTO `g_article` (`a_id`, `a_reference`, `a_designation`, `a_marque`, `a_quantite`) VALUES
(1, '48541232', 'filtre a air', 'VALEO', 10),
(2, '7858746', 'essuie-glace', 'VALEO', 1),
(3, '7858747', 'essuie-glace arrière', 'VALEO', 2),
(4, '48541232', 'filtre à air', 'MANN', 5),
(6, '32587469', 'plaquettes de frein avant', 'BREMBO', 4),
(7, '32587470', 'plaquettes de frein arr.', 'BREMBO', 6),
(8, '21457896', 'ampoule H7 12V', 'PHILIPS', 20),
(9, '21457897', 'ampoule H4 12V', 'OSRAM', 15),
(10, '65874123', 'bougie d’allumage', 'NGK', 12),
(11, '74859612', 'courroie de distribution', 'DAYCO', 3),
(12, '84579631', 'filtre habitacle', 'PURFLUX', 7);

-- --------------------------------------------------------

--
-- Structure de la table `g_voiture`
--

DROP TABLE IF EXISTS `g_voiture`;
CREATE TABLE IF NOT EXISTS `g_voiture` (
  `v_id` int NOT NULL AUTO_INCREMENT,
  `v_marque` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_energie` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_fk_article_id` int NOT NULL,
  PRIMARY KEY (`v_id`),
  KEY `article_fk` (`v_fk_article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_voiture`
--

INSERT INTO `g_voiture` (`v_id`, `v_marque`, `v_type`, `v_energie`, `v_fk_article_id`) VALUES
(1, 'Renault', 'Clio 4', 'diesel', 1),
(2, 'Renault', 'CLIO 3', 'diesel', 3),
(3, 'Renault', 'CLIO 4', 'essence', 1),
(4, 'Peugeot', '208', 'diesel', 2),
(5, 'Peugeot', '308', 'essence', 3),
(6, 'Citroën', 'C3', 'essence', 4),
(8, 'Volkswagen', 'Golf 7', 'diesel', 6),
(9, 'Volkswagen', 'Polo', 'essence', 7),
(10, 'Toyota', 'Yaris', 'hybride', 8),
(11, 'Toyota', 'Corolla', 'hybride', 9),
(12, 'Dacia', 'Duster', 'diesel', 10);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `g_voiture`
--
ALTER TABLE `g_voiture`
  ADD CONSTRAINT `article_fk` FOREIGN KEY (`v_fk_article_id`) REFERENCES `g_article` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
