-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 01 avr. 2023 à 12:04
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fos_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_ip` varchar(20) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `client_ip`, `user_id`, `product_id`, `qty`) VALUES
(42, '', 3, 6, 1),
(43, '', 3, 7, 2),
(44, '', 3, 4, 2),
(48, '', 4, 15, 0),
(49, '', 4, 21, 0),
(73, '', 11, 30, 1),
(74, '::1', 0, 8, -1);

-- --------------------------------------------------------

--
-- Structure de la table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category_list`
--

INSERT INTO `category_list` (`id`, `name`) VALUES
(1, 'Beverages'),
(3, 'Best Sellers'),
(4, 'Meals'),
(5, 'Snacks'),
(6, 'BONBON'),
(7, 'MANGUE'),
(8, '');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `mobile`, `email`, `status`, `date`) VALUES
(1, 'James Smith', 'adasdasd asdadasd', '4756463215', 'jsmith@sample.com', 1, '2022-03-24 21:05:56'),
(2, 'James Smith', 'adasdasd asdadasd', '4756463215', 'jsmith@sample.com', 1, '2022-03-24 21:05:56'),
(3, 'Kledjeni Arouna Traoré', 'lomess', '05 54 87 6', 'kledjeniarouna.1995@gmail.com', 1, '2022-03-27 23:22:27'),
(19, 'ZIE Traoré', 'lomess', '05 54 87 6', 'kledjeniarouna.1995@gmail.com', 1, '2022-03-30 20:16:00'),
(20, 'Kledjeni Arouna Traoré', 'lomess', '05 54 87 6', 'kledjeniarouna.1995@gmail.com', 1, '2022-03-31 10:43:49'),
(21, 'Kledjeni Arouna Traoré', 'lomess', '05 54 87 6', 'kledjeniarouna.1995@gmail.com', 1, '2023-03-06 16:30:19'),
(22, 'Zanga koné', 'cocody\r\n', '0555876416', 'kolo@gmail.com', 1, '2022-04-04 10:58:47'),
(23, 'ali kone', 'Abobo', '0000000000', 'abobo@gmail.com', 1, '2022-04-23 13:51:11'),
(24, 'ali kone', 'Abobo', '0000000000', 'abobo@gmail.com', 0, '2022-04-23 14:49:19'),
(25, 'ali kone', 'Abobo', '0000000000', 'abobo@gmail.com', 1, '2023-03-19 22:25:28'),
(26, 'Eric Diby', 'Abidjan', '0000000000', 'contact@wealthtechinnovations.com', 1, '2022-07-01 09:57:41'),
(27, 'Koné Arouna', 'Abobo ', '0575357643', 'arouna@gmail.com', 1, '2022-07-01 09:58:37'),
(28, 'Ib Silué', 'COCODY', '0545487893', 'silue@gmail.com', 1, '2023-02-23 07:16:22'),
(29, 'Ib Silué', 'COCODY', '0545487893', 'silue@gmail.com', 0, '2022-10-06 21:30:43'),
(30, 'SIRIKI KONE', 'ABOBO', '0747728702', 'siriki@gmail.com', 0, '2023-02-23 07:37:37'),
(31, 'SIRIKI KONE', 'ABOBO', '0747728702', 'siriki@gmail.com', 0, '2023-02-23 07:38:19'),
(32, 'SIRIKI KONE', 'ABOBO', '0747728702', 'siriki@gmail.com', 1, '2023-02-23 07:40:47'),
(33, 'abdoul Traore', 'abobo diallo', '02020202', 'diallo@gmail.com', 1, '2023-03-06 16:19:15'),
(34, 'BEMA KONE', 'ABOBO', '00000000', 'kone@gmail.com', 1, '2023-03-11 11:07:24');

-- --------------------------------------------------------

--
-- Structure de la table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `qty`, `date`) VALUES
(1, 1, 3, 1, '2022-03-24 21:11:14'),
(2, 1, 5, 1, '2022-03-24 21:11:14'),
(3, 1, 3, 1, '2022-03-24 21:11:14'),
(4, 1, 6, 3, '2022-03-24 21:11:14'),
(21, 13, 5, 1, '2022-03-24 22:10:31'),
(22, 14, 5, 1, '2022-03-24 22:31:56'),
(23, 15, 3, 4, '2022-03-25 09:50:45'),
(24, 16, 6, 0, '2022-03-25 14:23:08'),
(25, 16, 5, 4, '2022-03-25 14:23:08'),
(26, 17, 6, 2, '2022-03-26 21:24:04'),
(27, 17, 6, 2, '2022-03-26 21:24:04'),
(28, 17, 3, 1, '2022-03-26 21:24:04'),
(29, 17, 6, 2, '2022-03-26 21:24:05'),
(30, 17, 3, 2, '2022-03-26 21:24:05'),
(31, 17, 6, 1, '2022-03-26 21:24:05'),
(32, 17, 4, 7, '2022-03-26 21:24:05'),
(33, 18, 7, 3, '2022-03-27 11:58:36'),
(34, 19, 3, 2, '2022-03-29 20:23:41'),
(35, 19, 7, 4, '2022-03-29 20:23:41'),
(36, 20, 8, 2, '2022-03-30 12:10:48'),
(37, 21, 5, 1, '2022-03-31 09:14:02'),
(38, 22, 8, 0, '2022-04-03 21:25:10'),
(39, 22, 15, 1, '2022-04-03 21:25:10'),
(40, 22, 15, 1, '2022-04-03 21:25:11'),
(41, 23, 7, 0, '2022-04-23 13:49:48'),
(42, 23, 23, 0, '2022-04-23 13:49:48'),
(43, 23, 23, 3, '2022-04-23 13:49:48'),
(44, 24, 14, 1, '2022-04-23 14:49:19'),
(45, 25, 33, 1, '2022-05-06 08:44:42'),
(46, 26, 31, 2, '2022-05-22 08:34:25'),
(47, 27, 15, 3, '2022-07-01 09:39:38'),
(48, 28, 15, 0, '2022-09-10 05:12:03'),
(49, 28, 10, 1, '2022-09-10 05:12:03'),
(50, 29, 32, 1, '2022-10-06 21:30:43'),
(51, 29, 8, 1, '2022-10-06 21:30:43'),
(52, 29, 30, 1, '2022-10-06 21:30:44'),
(53, 29, 14, 1, '2022-10-06 21:30:44'),
(54, 30, 11, -5, '2023-02-23 07:37:37'),
(55, 30, 21, 0, '2023-02-23 07:37:37'),
(56, 30, 15, 0, '2023-02-23 07:37:37'),
(57, 30, 33, 0, '2023-02-23 07:37:37'),
(58, 30, 21, 0, '2023-02-23 07:37:37'),
(59, 30, 18, 1, '2023-02-23 07:37:37'),
(60, 31, 8, 1, '2023-02-23 07:38:19'),
(61, 32, 36, 1, '2023-02-23 07:39:35'),
(62, 33, 31, 1, '2023-03-03 09:52:50'),
(63, 34, 15, 2, '2023-03-11 11:03:13');

-- --------------------------------------------------------

--
-- Structure de la table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= unavailable, 2 Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `name`, `description`, `price`, `img_path`, `status`) VALUES
(7, 3, 'hamburger', 'Un cheeseburger ou hamburger au fromage est un hamburger dans lequel une tranche de fromage accompagne la viande..', 2000, '1648118520_g-1.jpg', 1),
(8, 3, 'Pizza', 'Les pâtes se classent peut-être plus haut sur la liste des exportations culturelles et gastronomiques dont les Italiens sont les plus fiers, mais on pourrait affirmer que la pizza est plus largement appréciée.', 3500, '1648474020_home-img-3.png', 1),
(10, 3, 'Gaufre', 'Une Gaufre est une pâtisserie confectionnée Avec Une Pâte légère cuite dans un fer à Gaufre constitué de deux plaques métalliques, articulées entre elles par une ou plusieurs Charnières, ..', 2000, '1648736580_menu-4.jpg', 1),
(11, 3, 'Torta Alfajor', 'Alfajor une super recette !! Trop Trop Bon !! Ingrédients 150 G De margarine ramollie.', 2200, '1648774260_menu-5.jpg', 1),
(12, 3, 'Cupcake Glace', '\r\nIncontournable de la patisserie le citron-meringué se décline aussi en Cupcake. faites-vous plaisir avec notre recette riche en goûts.', 3300, '1648774440_menu-6.jpg', 1),
(13, 3, 'Crêpe', 'Crêpe délicieuse...', 3200, '1648775040_about-img.png', 1),
(14, 3, 'Jus (Boisson)', 'Boisson sucrée ... pour les Amoureux.', 1500, '1648775160_menu-7.jpg', 1),
(15, 3, 'Poulet Frit', 'Bon poulet pour tous...', 4500, '1648881960_home-img-2.png', 1),
(16, 3, 'Nouille Epicée', 'Un plat spécial...', 500, '1648882080_home-img-1.png', 1),
(17, 3, 'Nugget De Poulet', 'Fait à la base de la chaire de poulet...', 1500, '1648882260_dish-2.png', 1),
(18, 3, 'Cookie Aux Pépites De Chocolat', 'Fait à la base du chocolat. 100% naturel.', 500, '1648882380_dish-5.png', 1),
(19, 3, 'Poulet Frit', 'Viande de poulet bien cuit ...', 1000, '1648882440_dish-6.png', 1),
(20, 3, 'Açaí Na Tigela', 'Délicieuse nourriture', 950, '1648882560_menu-8.jpg', 1),
(21, 3, 'Orange&Citron', 'Bon appétit', 400, '1648883220_menu-9.jpg', 1),
(22, 3, 'Tchep', 'Ce plat est exceptionnel...', 800, '1649073480_senegal.jpg', 1),
(23, 3, 'Cabato', 'Cette recette est très nourrissante..', 300, '1649073720_cabato.jpg', 1),
(24, 3, 'Bon Tchep', 'Plat Spécial...', 2000, '1649101740_bon tchèp.jpg', 1),
(25, 3, 'Chawarma', 'Chawarma Chap_Chap la livraison..', 2000, '1649101860_chawarma.jpg', 1),
(26, 3, 'Sauce Bawin', 'Le gout de cette sauce fait vivre...', 400, '1649101980_bawin.jpg', 1),
(27, 3, 'Chawarma', 'déjà près pour vous... ', 2000, '1649102040_chawa.jpg', 1),
(28, 3, 'Foutou Banane', 'Fait à base de banane en CI...', 1000, '1649102220_images.jpg', 1),
(29, 3, 'Hamburger', 'Nourriture savoureuse...', 2000, '1649102340_home-img.png', 1),
(30, 3, 'Cabato', 'Nourriture délicieuse...', 500, '1649102400_caba.jpg', 1),
(31, 3, 'foutou sauce arachide', 'Foutou accompagné de sauce arachide..', 500, '1649102520_foutou sauce arachide.jpg', 1),
(32, 3, 'Sauce Tchonron', 'Une sauce à vitamine illimitée...', 500, '1649102700_tchonron.jpg', 1),
(33, 3, 'Panini', 'Le Panini de mouton...', 400, '1649102760_pan.jpg', 1),
(34, 3, 'Tchep au poulet', 'Nourriture délicieuse...', 2000, '1649102880_tcep au poulet.jpg', 1),
(35, 3, 'Riz sauce arachide', 'Un plat Spécial...', 500, '1649102940_riz sauce arachide.jpg', 1),
(36, 3, 'Repart Sénégal', 'Les Spécialistes dans le Tchep son connu', 2000, '1649103060_repart senegal.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'klo', 'kledjeniarouna.1995@gmail.com', '+255 0554876416', '1600654680_photo-1504674900247-0877df9cc836.jpg', '&lt;p style=&quot;margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Merriweather, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; background-color: rgb(238, 238, 238);&quot;&gt;klo&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrateur', 'klêdjeni', 'kledjess10', 1),
(2, 'kledjess', 'kled', '0202', 2);

-- --------------------------------------------------------

--
-- Structure de la table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address`) VALUES
(1, 'James', 'Smith', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', '4756463215', 'adasdasd asdadasd'),
(2, 'kledjess', 'traoré', 'kledjess@gmail.com', '1040', '0505050404', 'lomara'),
(3, 'Kledjeni Arouna', 'Traoré', 'kledjeniarouna.1995@gmail.com', '537d9b6c927223c796cac288cced29df', '05 54 87 6', 'lomess'),
(4, 'za', 'koné', 'kolo@gmail.com', '2c404b2a96dd6e40ee170c3ed4951ee6', '0555876416', 'cocody\r\n'),
(9, 'SIRIKI', 'KONE', 'siriki@gmail.com', '1fe3e07aeb0a317d943e610d4a8a9c28', '0747728702', 'ABOBO'),
(10, 'abdoul', 'Traore', 'diallo@gmail.com', '6299b4bf69960e53b6d9a0bd27342660', '02020202', 'abobo diallo'),
(11, 'BEMA', 'KONE', 'kone@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '00000000', 'ABOBO');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT pour la table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
