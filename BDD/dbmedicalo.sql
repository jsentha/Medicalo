-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 23 mars 2020 à 09:01
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dbmedicalo`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(255) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `numero` int(10) UNSIGNED ZEROFILL NOT NULL,
  `email` varchar(100) NOT NULL,
  `mdp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `numero`, `email`, `mdp`) VALUES
(1, 'jean', 'pjean', 0673457388, 'mail@gmail.com', 'B7909B32622DC5F4A3C236B7044D27BB2E645998383DF82886E7D5744BB964A2927884B7'),
(2, 'jean', 'pjean', 0673457388, 'mail@gmail.com', 'B7909B32622DC5F4A3C236B7044D27BB2E645998383DF82886E7D5744BB964A2927884B7'),
(3, 'jean', 'pjean', 0673457388, 'maile@gmail.com', '7EA6045C3FB2D2B2699A6BA05A1DE9B058A1CE49D0091830A9C934FB553F60B3A8F5FE50'),
(4, 'francois', 'youn', 0668887899, 'mail1@gmail.com', 'F0E7AC697AB9DF7F5DAB837D929A5F785724990E1212769E69588DBE29B23386C55B3F1A'),
(5, 'michellle', 'younges', 0766777533, 'yonnng@gmail.com', 'BC69C2AEB63EC3D5A2016635065A47955AC9B21E32C3A5E4F501A6E9E7C57C244498AF95');

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `id` int(255) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `categorie` varchar(25) NOT NULL,
  `nomcabinet` varchar(50) NOT NULL,
  `adresse` varchar(60) NOT NULL,
  `codepostal` int(5) NOT NULL,
  `ville` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`id`, `nom`, `prenom`, `categorie`, `nomcabinet`, `adresse`, `codepostal`, `ville`) VALUES
(1, 'jacque', 'pascal', 'dermatologue', 'le meilleur de tout paris', '2 rue cherche midi', 75006, 'paris'),
(2, 'hugo', 'martin', 'dermatologue', 'citadelle', '23 rue de la victoire', 75016, 'paris'),
(3, 'roger', 'durant', 'generaliste', 'le guérisseur', '2 rue saintxavier', 75010, 'paris'),
(4, 'inspecteur', 'johnny', 'dermatologue', 'medicosaint', '26 rue bonne foix', 75002, 'paris'),
(5, 'ramzan', 'denis', 'dermatologue', 'tout frais', '11 rue rosiers', 75010, 'paris'),
(6, 'maitre', 'sako', 'dermatologue', 'la propreté du corps', '11 rue magique', 75110, 'paris'),
(7, 'maitre', 'chakoou', 'generaliste', 'la cité citadelle', '112 rue de la paix', 75017, 'paris');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `medecin`
--
ALTER TABLE `medecin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
