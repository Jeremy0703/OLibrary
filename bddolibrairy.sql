-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 05 Mai 2017 à 12:17
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cours`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `nom`, `prenom`, `email`, `password`) VALUES
(1, 'gaby', 'gaby', 'caca', '68e18c13237884aa15c9bbc988be74ce');

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `Auteur_ID` int(11) NOT NULL,
  `Auteur_Nom` varchar(25) DEFAULT NULL,
  `Auteur_Prenom` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `Client_ID` int(11) NOT NULL,
  `Client_Nom` varchar(25) DEFAULT NULL,
  `Client_Prenom` varchar(25) DEFAULT NULL,
  `Client_Telephone` int(11) DEFAULT NULL,
  `Client_Adresse` char(250) DEFAULT NULL,
  `Client_Code_Postale` varchar(25) DEFAULT NULL,
  `Client_Ville` varchar(25) DEFAULT NULL,
  `Client_Email` varchar(250) DEFAULT NULL,
  `Client_Login` varchar(25) DEFAULT NULL,
  `Client_Password` varchar(25) DEFAULT NULL,
  `Client_Naissance` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `editeur`
--

CREATE TABLE `editeur` (
  `Editeur_ID` int(11) NOT NULL,
  `Editeur_Nom` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `Genre_ID` int(11) NOT NULL,
  `Genre_Nom` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `historique_client`
--

CREATE TABLE `historique_client` (
  `Emprunt_ID` int(11) NOT NULL,
  `Historique_Ouvrage_ID` int(11) DEFAULT NULL,
  `Historique_Ouvrage_Titre` varchar(25) DEFAULT NULL,
  `Historique_Nombre_Ouvrage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `historique_ouvrage`
--

CREATE TABLE `historique_ouvrage` (
  `Emprunt_ID` int(11) NOT NULL,
  `Historique_Client_ID` int(11) DEFAULT NULL,
  `Historique_Client_Titre` varchar(25) DEFAULT NULL,
  `Historique_Nombre_Client` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ouvrages`
--

CREATE TABLE `ouvrages` (
  `Ouvrage_ID` int(11) NOT NULL,
  `Ouvrage_Titre` varchar(25) DEFAULT NULL,
  `Ouvrage_Pages` int(11) DEFAULT NULL,
  `Date_Publication` int(11) DEFAULT NULL,
  `Editeur_ID` int(11) DEFAULT NULL,
  `Genre_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `Stock_ID` int(11) NOT NULL,
  `Stock_Nb_Ouvrages` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `email`, `password`) VALUES
(1, 'gabygaby', 'gaby', 'gaby', '68e18c13237884aa15c9bbc988be74ce'),
(3, 'zamora', 'robinoux', 'robin.zamora@ynov.com', 'd41d8cd98f00b204e9800998ecf8427e'),
(4, 'mafat', 'remi', 'remi.mafat@ynov.com', 'f1067e7173c7b9e6714ec7c88cf04bb1'),
(6, 'ol', 'projet', 'projet.ol@ynov.com', '9d5da4f31eddc5eea1c1222da1d7ff12'),
(7, 'ol', 'projet', 'projet.ol@ynov.com', '9d5da4f31eddc5eea1c1222da1d7ff12');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`Auteur_ID`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Client_ID`);

--
-- Index pour la table `editeur`
--
ALTER TABLE `editeur`
  ADD PRIMARY KEY (`Editeur_ID`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`Genre_ID`);

--
-- Index pour la table `historique_client`
--
ALTER TABLE `historique_client`
  ADD PRIMARY KEY (`Emprunt_ID`);

--
-- Index pour la table `historique_ouvrage`
--
ALTER TABLE `historique_ouvrage`
  ADD PRIMARY KEY (`Emprunt_ID`);

--
-- Index pour la table `ouvrages`
--
ALTER TABLE `ouvrages`
  ADD PRIMARY KEY (`Ouvrage_ID`),
  ADD KEY `FK_Ouvrages_Editeur_ID` (`Editeur_ID`),
  ADD KEY `FK_Ouvrages_Genre_ID` (`Genre_ID`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`Stock_ID`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `ouvrages`
--
ALTER TABLE `ouvrages`
  ADD CONSTRAINT `FK_Ouvrages_Editeur_ID` FOREIGN KEY (`Editeur_ID`) REFERENCES `editeur` (`Editeur_ID`),
  ADD CONSTRAINT `FK_Ouvrages_Genre_ID` FOREIGN KEY (`Genre_ID`) REFERENCES `genre` (`Genre_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
