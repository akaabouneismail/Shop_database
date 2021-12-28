-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 28 déc. 2021 à 15:43
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

CREATE TABLE `address` (
  `AddressID` int(5) NOT NULL,
  `AddressLine1` varchar(50) NOT NULL,
  `AddressLine2` varchar(50) DEFAULT NULL,
  `PostalCode` varchar(10) NOT NULL,
  `City` varchar(15) NOT NULL,
  `Country` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`AddressID`, `AddressLine1`, `AddressLine2`, `PostalCode`, `City`, `Country`) VALUES
(1, '21 Jump St', NULL, '2100', 'Boston', 'USA'),
(2, '56 Marion St', NULL, '5600', 'Philadelphia', 'USA'),
(3, '34 Collier Road', NULL, 'CB2 3AC', 'Cambridge', 'UK'),
(4, '10 Robinia St', NULL, '10000', 'Rabat', 'Morocco'),
(5, '44 Spurs Ave', NULL, '14221', 'London', 'UK'),
(6, '67 Don Road', NULL, '67288', 'Sao Paulo', 'Brazil'),
(7, '33 Exot St', NULL, 'AM21', 'Amsterdam', 'Netherlands'),
(8, '78 LaDecima St', NULL, '56GH', 'Madrid', 'Spain'),
(9, '34 Rue de La Victoire', NULL, 'NAM345', 'Namur', 'Belgium'),
(10, '45 Gun St', NULL, 'TX354', 'Austin', 'USA'),
(11, '67 Avenue de France', NULL, '11000', 'Rabat', 'Morocco'),
(12, 'CR7 Avenue', NULL, '67382', 'Madeira', 'Portugal'),
(13, '89 Karaoke St', NULL, 'KA567', 'Montreal', 'Canada'),
(14, '88 Koutoubia St', NULL, '23342', 'Marrakech', 'Morocco');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(9) NOT NULL,
  `Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`CategoryID`, `Name`) VALUES
(1, 'Running'),
(2, 'Lifting'),
(3, 'Lifestyle'),
(4, 'Basketball'),
(5, 'Football'),
(6, 'Golf');

-- --------------------------------------------------------

--
-- Structure de la table `clothing`
--

CREATE TABLE `clothing` (
  `ClothingID` int(5) NOT NULL,
  `Description` text NOT NULL,
  `CategoryID` int(10) NOT NULL,
  `Size` varchar(4) NOT NULL,
  `StarRating` decimal(6,2) NOT NULL,
  `NumberOfReviews` int(8) NOT NULL,
  `Color` varchar(10) NOT NULL,
  `Price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `clothing`
--

INSERT INTO `clothing` (`ClothingID`, `Description`, `CategoryID`, `Size`, `StarRating`, `NumberOfReviews`, `Color`, `Price`) VALUES
(1, 'panther hoodie', 2, 'M', '4.20', 788, 'Black', '89.99'),
(2, 'Sneaky Eagles Shorts', 1, 'S', '4.00', 674, 'Brown', '60.00'),
(3, 'Hungry Lion Jumper', 3, 'L', '3.90', 65, 'Yellow', '99.99'),
(4, 'Air Jordan Shirt', 4, 'S', '4.50', 899, 'Red', '120.00'),
(5, 'Tatum Flex shirt', 4, 'M', '3.80', 234, 'Green', '78.99'),
(6, 'Jaylen X44 Joggers', 4, 'L', '4.90', 1233, 'Red', '45.99'),
(7, 'Ricardo Kaka Brazil Shirt', 5, 'M', '4.70', 566, 'Yellow', '80.99'),
(8, 'Marcelo Real Madrid Jersey', 5, 'S', '4.80', 3433, 'White', '80.99'),
(9, 'Kemba Walker Boston Jersey', 4, 'L', '4.20', 2422, 'Black', '90.00');

-- --------------------------------------------------------

--
-- Structure de la table `headphones`
--

CREATE TABLE `headphones` (
  `HeadphonesID` int(10) NOT NULL,
  `Size` varchar(3) NOT NULL,
  `Color` varchar(10) NOT NULL,
  `Price` decimal(6,2) NOT NULL,
  `CategoryID` int(10) NOT NULL,
  `Description` text NOT NULL,
  `StarRating` decimal(5,2) NOT NULL,
  `NumberOfReviews` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `headphones`
--

INSERT INTO `headphones` (`HeadphonesID`, `Size`, `Color`, `Price`, `CategoryID`, `Description`, `StarRating`, `NumberOfReviews`) VALUES
(1, 'M', 'Blue', '60.00', 1, 'Speeder 35', '4.00', 987),
(2, 'L', 'Red', '87.00', 2, 'Beast 99', '3.00', 342),
(3, 'S', 'Yellow', '20.99', 3, 'Chill 87', '4.10', 654),
(4, 'L', 'Black', '32.50', 2, 'MO 89', '3.10', 432),
(5, 'S', 'Pink', '56.90', 1, 'EZ 67', '4.20', 667),
(6, 'S', 'Green', '59.23', 2, 'GRASS 55', '2.10', 3452),
(7, 'M', 'White', '45.66', 1, 'RUSH 71', '2.20', 321),
(8, 'L', 'Orange', '65.80', 2, 'ROLL 56', '2.00', 453);

-- --------------------------------------------------------

--
-- Structure de la table `orderr`
--

CREATE TABLE `orderr` (
  `OrderID` int(5) NOT NULL,
  `UserID` int(10) NOT NULL,
  `OrderDate` date NOT NULL,
  `DeliveryDate` date NOT NULL,
  `ClothingID` int(5) DEFAULT NULL,
  `HeadphonesID` int(11) DEFAULT NULL,
  `ShoeID` int(11) DEFAULT NULL,
  `AddressID` int(5) NOT NULL,
  `PaymentInfoID` int(10) NOT NULL,
  `TrackingNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orderr`
--

INSERT INTO `orderr` (`OrderID`, `UserID`, `OrderDate`, `DeliveryDate`, `ClothingID`, `HeadphonesID`, `ShoeID`, `AddressID`, `PaymentInfoID`, `TrackingNumber`) VALUES
(1, 1, '2019-12-10', '2019-12-13', 4, NULL, 6, 9, 1, '34134123'),
(2, 2, '2019-12-01', '2019-12-03', 6, 6, 8, 10, 2, '55BU5DDG553WF'),
(3, 3, '2019-09-09', '2019-09-19', 3, 4, 5, 11, 3, '6JT8FDB9VJ44'),
(4, 4, '2019-11-05', '2019-11-20', 7, 8, 2, 12, 4, 'JN8D8FF8H'),
(5, 5, '2019-10-01', '2019-10-23', 8, NULL, NULL, 13, 5, 'HHRY554456UJ'),
(6, 6, '2018-09-03', '2018-09-23', 5, 2, 3, 14, 6, 'JF7SD7SF9');

-- --------------------------------------------------------

--
-- Structure de la table `paymentinfo`
--

CREATE TABLE `paymentinfo` (
  `PaymentInfoID` int(10) NOT NULL,
  `CardNumber` varchar(16) NOT NULL,
  `Expires` date NOT NULL,
  `AddressID` int(10) NOT NULL,
  `CVV` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `paymentinfo`
--

INSERT INTO `paymentinfo` (`PaymentInfoID`, `CardNumber`, `Expires`, `AddressID`, `CVV`) VALUES
(1, '6754879675483746', '2020-02-07', 9, 454),
(2, '6754567890976543', '2020-03-13', 10, 677),
(3, '8756473645879687', '2020-08-20', 11, 980),
(4, '9856473645768795', '2021-02-19', 12, 431),
(5, '7586947564537485', '2022-06-18', 13, 590),
(6, '2847564839485768', '2024-12-28', 14, 367);

-- --------------------------------------------------------

--
-- Structure de la table `shoes`
--

CREATE TABLE `shoes` (
  `ShoeID` int(10) NOT NULL,
  `Description` text NOT NULL,
  `CategoryID` int(10) NOT NULL,
  `Size` decimal(3,1) NOT NULL,
  `StarRating` decimal(3,1) NOT NULL,
  `NumberOfReviews` int(7) NOT NULL,
  `Color` varchar(8) NOT NULL,
  `Price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `shoes`
--

INSERT INTO `shoes` (`ShoeID`, `Description`, `CategoryID`, `Size`, `StarRating`, `NumberOfReviews`, `Color`, `Price`) VALUES
(1, 'Air Ism 34', 5, '7.0', '4.9', 342, 'Black', '57.00'),
(2, 'FZ 564', 1, '6.0', '4.2', 3234, 'Pink', '87.00'),
(3, 'LAI 453', 6, '6.0', '3.9', 232, 'Blue', '77.99'),
(4, 'TY55', 2, '5.0', '3.7', 322, 'White', '45.99'),
(5, 'GH 76V', 1, '8.0', '4.5', 877, 'Black', '60.00'),
(6, 'RF32W', 1, '9.0', '4.3', 99, 'Red', '90.00'),
(7, 'Lebrons 45', 3, '7.0', '2.6', 344, 'Yellow', '100.00'),
(8, 'KDs 32', 4, '5.0', '3.1', 234, 'Black', '67.99'),
(9, 'EMERCE 45', 3, '7.0', '4.2', 652, 'Brown', '20.99'),
(10, 'TGSTP 78', 4, '9.0', '3.3', 76, 'Purple', '62.99');

-- --------------------------------------------------------

--
-- Structure de la table `store`
--

CREATE TABLE `store` (
  `StoreID` int(10) NOT NULL,
  `AddressID` int(10) NOT NULL,
  `StoreEmailAddress` varchar(30) NOT NULL,
  `StorePhoneNumber` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `store`
--

INSERT INTO `store` (`StoreID`, `AddressID`, `StoreEmailAddress`, `StorePhoneNumber`) VALUES
(1, 1, 'robiniashop@amazing.com', 662324354),
(2, 2, 'marionstshop@amazing.com', 373828732),
(3, 3, 'colliershop@amazing.com', 23823712),
(4, 4, 'robiniashop@amazing.com', 23382372),
(5, 5, 'spursshop@amazing.com', 464653453),
(6, 6, 'donroadshop@amazing.com', 73282255),
(7, 7, 'exotshop@amazing.com', 68477322),
(8, 8, 'ladecimashop@amazing.com', 98766765);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `UserID` int(10) NOT NULL,
  `FirstName` varchar(10) NOT NULL,
  `LastName` varchar(10) NOT NULL,
  `AddressID` int(5) NOT NULL,
  `EmailAddress` varchar(100) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `DateOfBirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`UserID`, `FirstName`, `LastName`, `AddressID`, `EmailAddress`, `Password`, `DateOfBirth`) VALUES
(1, 'Pripri', 'Parker', 9, 'pip@gmail.com', '123pass', '1998-12-02'),
(2, 'Brogdan', 'Cuzma', 10, 'boz@gmail.com', '32411', '1991-03-20'),
(3, 'Fatou', 'Anguissa', 11, 'fata@gmail.com', '88888', '1988-12-30'),
(4, 'Ricardo', 'Kaka', 12, 'ricky@gmail.com', '8107', '1982-04-22'),
(5, 'Isco', 'Fernandez', 13, 'iscoo@gmail.com', 'halamadrid', '1991-08-12'),
(6, 'Sergio', 'Ramos', 14, 'sr4@gmail.com', 'goal', '1997-02-06');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`AddressID`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Index pour la table `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`ClothingID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Index pour la table `headphones`
--
ALTER TABLE `headphones`
  ADD PRIMARY KEY (`HeadphonesID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Index pour la table `orderr`
--
ALTER TABLE `orderr`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `ProductID` (`ClothingID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `order_to_address` (`AddressID`),
  ADD KEY `ClothingID` (`ClothingID`),
  ADD KEY `DeliveryDate` (`DeliveryDate`),
  ADD KEY `HeadphonesID` (`HeadphonesID`),
  ADD KEY `order_to_shoes` (`ShoeID`),
  ADD KEY `PaymentInfo` (`PaymentInfoID`);

--
-- Index pour la table `paymentinfo`
--
ALTER TABLE `paymentinfo`
  ADD PRIMARY KEY (`PaymentInfoID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- Index pour la table `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`ShoeID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Index pour la table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`StoreID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `address`
--
ALTER TABLE `address`
  MODIFY `AddressID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `clothing`
--
ALTER TABLE `clothing`
  MODIFY `ClothingID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `headphones`
--
ALTER TABLE `headphones`
  MODIFY `HeadphonesID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `orderr`
--
ALTER TABLE `orderr`
  MODIFY `OrderID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `paymentinfo`
--
ALTER TABLE `paymentinfo`
  MODIFY `PaymentInfoID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `shoes`
--
ALTER TABLE `shoes`
  MODIFY `ShoeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `store`
--
ALTER TABLE `store`
  MODIFY `StoreID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `clothing`
--
ALTER TABLE `clothing`
  ADD CONSTRAINT `clothing_to_category` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);

--
-- Contraintes pour la table `headphones`
--
ALTER TABLE `headphones`
  ADD CONSTRAINT `Headphones_to_category` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);

--
-- Contraintes pour la table `orderr`
--
ALTER TABLE `orderr`
  ADD CONSTRAINT `order_to_address` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`),
  ADD CONSTRAINT `order_to_clothing` FOREIGN KEY (`ClothingID`) REFERENCES `clothing` (`ClothingID`),
  ADD CONSTRAINT `order_to_headphones` FOREIGN KEY (`HeadphonesID`) REFERENCES `headphones` (`HeadphonesID`),
  ADD CONSTRAINT `order_to_payment` FOREIGN KEY (`PaymentInfoID`) REFERENCES `paymentinfo` (`PaymentInfoID`),
  ADD CONSTRAINT `order_to_shoes` FOREIGN KEY (`ShoeID`) REFERENCES `shoes` (`ShoeID`),
  ADD CONSTRAINT `order_to_user` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Contraintes pour la table `paymentinfo`
--
ALTER TABLE `paymentinfo`
  ADD CONSTRAINT `payment_to_address` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`);

--
-- Contraintes pour la table `shoes`
--
ALTER TABLE `shoes`
  ADD CONSTRAINT `shoes_to_category` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);

--
-- Contraintes pour la table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_to_address` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_to_address` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
