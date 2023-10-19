-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 19 oct. 2023 à 20:09
-- Version du serveur : 10.4.19-MariaDB
-- Version de PHP : 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tp1test`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `adresse` varchar(45) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `code_postal` varchar(10) DEFAULT NULL,
  `courriel` varchar(45) DEFAULT NULL,
  `ville` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `adresse`, `phone`, `code_postal`, `courriel`, `ville`) VALUES
(9, 'Paul', 'Dawson', '65454', '54343', 'gfhnkj@fdg', 'mtl'),
(10, 'Souj', 'Aduygfh', '5465427', 'h3d4r4', 'test@test.ca', 'washington'),
(11, 'Paulyyy', 'ytytytr', 'trytrytry', 'trtrytr', 'trytr2tfgj@ghj', 'trytrytry'),
(12, 'Alice Smith', '123 Main Street', '555-123-4567', 'A1B 2C3', 'alice@email.com', 'Toronto'),
(13, 'John Doe', '456 Elm Avenue', '555-987-6543', 'X0Y 1Z2', 'john@email.com', 'Vancouver'),
(14, 'Sarah Johnson', '789 Oak Road', '555-234-5678', 'M3N 4P5', 'sarah@email.com', 'Calgary'),
(15, 'Michael Brown', '101 Pine Lane', '555-876-5432', 'H6O 7Q8', 'michael@email.com', 'Montreal'),
(16, 'Emily Davis', '246 Cedar Street', '555-345-6789', 'J9K 1L2', 'emily@email.com', 'Ottawa'),
(17, 'James Wilson', '369 Maple Drive', '555-765-4321', 'E5R 6T7', 'james@email.com', 'Quebec'),
(18, 'Emma Taylor', '555 Birch Court', '555-432-8765', 'K4S 3D6', 'emma@email.com', 'Winnipeg'),
(19, 'Daniel Martinez', '789 Walnut Place', '555-678-5432', 'T2P 8Q9', 'daniel@email.com', 'Edmonton'),
(20, 'Olivia Anderson', '987 Pineapple Lane', '555-987-6543', 'R1W 2E3', 'olivia@email.com', 'Halifax'),
(21, 'William Jackson', '123 Cherry Street', '555-234-5678', 'U4V 5X6', 'william@email.com', 'Victoria'),
(22, 'Sophie Martin', '789 Oakwood Lane', '555-543-2345', 'B2A 3B4', 'sophie@email.com', 'Vancouver'),
(23, 'David Johnson', '456 Elm Street', '555-765-1234', 'X1Y 2Z3', 'david@email.com', 'Toronto'),
(24, 'Jessica White', '123 Pine Road', '555-987-6543', 'H3K 4L5', 'jessica@email.com', 'Calgary'),
(25, 'Matthew Brown', '369 Maple Avenue', '555-234-5678', 'M2N 5P6', 'matthew@email.com', 'Montreal'),
(26, 'Olivia Wilson', '987 Oak Lane', '555-876-5432', 'R3S 6T7', 'olivia@email.com', 'Ottawa'),
(27, 'Lucas Taylor', '101 Cedar Drive', '555-432-8765', 'T4K 7L8', 'lucas@email.com', 'Quebec'),
(28, 'Ella Davis', '555 Birch Street', '555-678-5432', 'K6E 8Q9', 'ella@email.com', 'Winnipeg'),
(29, 'Noah Smith', '789 Walnut Road', '555-234-5678', 'U7O 1P2', 'noah@email.com', 'Edmonton'),
(30, 'Ava Anderson', '987 Pineapple Avenue', '555-765-4321', 'N9W 3X4', 'ava@email.com', 'Halifax'),
(31, 'Liam Jackson', '123 Cherry Court', '555-987-6543', 'V1R 4S5', 'liam@email.com', 'Victoria');

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `emprunt_livre`
--

CREATE TABLE `emprunt_livre` (
  `emprunt_id` int(11) NOT NULL,
  `livre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `id` int(11) NOT NULL,
  `titre` varchar(45) NOT NULL,
  `auteur` varchar(54) NOT NULL,
  `annee` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id`, `titre`, `auteur`, `annee`) VALUES
(1, 'Le Petit Prince', 'Antoine de St-Exupéry', 1990),
(8, 'Les Misérables', 'Victor Hugo', 0),
(9, 'Orgueil et Préjugés', 'Jane Austen', 0),
(10, 'Le Seigneur des Anneaux', 'J.R.R. Tolkien', 1954),
(11, 'Guerre et Paix', 'Léon Tolstoï', 0),
(12, '1984', 'George Orwell', 1949),
(13, 'Le Vieil Homme et la Mer', 'Ernest Hemingway', 1952),
(14, 'Le Rouge et le Noir', 'Stendhal', 0),
(15, 'Le Parfum', 'Patrick Süskind', 1985),
(16, 'Le Château', 'Franz Kafka', 1926),
(17, 'Le Lion, la Sorcière blanche et l\'Armoire mag', 'C.S. Lewis', 1950),
(18, 'hgfhg', 'gfhgfd', 1902),
(19, 'Le Comte de Monte-Cristo', 'Alexandre Dumas', 2333),
(20, 'Anna Karénine', 'Léon Tolstoï', 1920),
(21, 'Le Hobbit', 'J.R.R. Tolkien', 1937),
(22, 'Les Fourmis', 'Bernard Werber', 1991),
(23, 'Le Guépard', 'Giuseppe Tomasi di Lampedusa', 1958),
(24, 'La Nuit des temps', 'René Barjavel', 1968),
(25, 'La Guerre des mondes', 'H.G. Wells', 1288),
(26, 'Cent ans de solitude', 'Gabriel García Márquez', 1967),
(27, 'Crime et Châtiment', 'Fiodor Dostoïevski', 0),
(28, 'Le Meilleur des mondes', 'Aldous Huxley', 1932);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Index pour la table `emprunt_livre`
--
ALTER TABLE `emprunt_livre`
  ADD PRIMARY KEY (`emprunt_id`,`livre_id`),
  ADD KEY `livre_id` (`livre_id`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `emprunt_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `emprunt_livre`
--
ALTER TABLE `emprunt_livre`
  ADD CONSTRAINT `emprunt_livre_ibfk_1` FOREIGN KEY (`emprunt_id`) REFERENCES `emprunt` (`id`),
  ADD CONSTRAINT `emprunt_livre_ibfk_2` FOREIGN KEY (`livre_id`) REFERENCES `livre` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
