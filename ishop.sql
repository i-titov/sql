-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 05, 2023 at 08:52 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `name`, `description`, `price`, `created_at`, `update_date`) VALUES
(1, 'Wine - Magnotta - Cab Franc', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 440, '2023-12-04 11:32:21', NULL),
(2, 'Onions - Spanish', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.', 139, '2023-12-04 11:32:21', NULL),
(3, 'Hagen Daza - Dk Choocolate', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 956, '2023-12-04 11:32:21', NULL),
(4, 'Shrimp - Baby, Warm Water', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 130, '2023-12-04 11:32:21', NULL),
(5, 'Wine - Chablis 2003 Champs', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 531, '2023-12-04 11:32:21', NULL),
(6, 'Blueberries', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 316, '2023-12-04 11:32:21', NULL),
(7, 'Bandage - Finger Cots', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 782, '2023-12-04 11:32:21', NULL),
(8, 'Ice Cream Bar - Hagen Daz', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 582, '2023-12-04 11:32:21', NULL),
(9, 'Sugar - Brown, Individual', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 810, '2023-12-04 11:32:21', NULL),
(10, 'Rum - Light, Captain Morgan', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 934, '2023-12-04 11:32:21', NULL),
(11, 'Cherys', 'cherys yammy', 10, '2023-12-04 14:18:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `address_more` varchar(500) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `zip_code` varchar(100) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `first_name`, `last_name`, `tel`, `address`, `address_more`, `city`, `zip_code`, `company`, `birthday`) VALUES
(1, 'Françoise', 'Youdell', '764-309-4813', '16th Floor', NULL, 'Purorejo', '21465', NULL, '2001-12-13'),
(2, 'Judicaël', 'Locks', '970-129-6581', 'PO Box 15818', NULL, 'Grosuplje', '1290', NULL, '2005-06-07'),
(3, 'Maëly', 'Tuny', '249-596-2477', 'PO Box 59663', NULL, 'Cachoeirinha', '77915-000', NULL, '2004-01-04'),
(4, 'Styrbjörn', 'Tarbert', '605-287-4174', 'Room 1357', NULL, 'Skalánion', '21465', NULL, '2005-01-16'),
(5, 'Josée', 'Joney', '177-454-8564', 'Suite 49', NULL, 'Xiaolou', '21465', NULL, '2005-07-23'),
(6, 'Geneviève', 'Moar', '152-628-9093', 'Suite 53', NULL, 'Sabugueiro', '7040-704', NULL, '1994-01-08'),
(7, 'Måns', 'Buttel', '699-297-7483', '6th Floor', NULL, 'Biecz', '38-340', NULL, '2005-11-08'),
(8, 'Célestine', 'Casemore', '167-647-3940', 'Room 1580', NULL, 'Trzebunia', '32-438', NULL, '1981-04-28'),
(9, 'André', 'Schimek', '846-576-2406', 'PO Box 91947', NULL, 'Jelsa', '21465', NULL, '2003-09-15'),
(10, 'André', 'Jacobowitz', '612-110-7726', 'PO Box 29134', NULL, 'Nyala', '38-340', NULL, '1994-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fk_client_id` int(11) NOT NULL,
  `order_referance` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL,
  `delay` date DEFAULT NULL,
  `orders_articles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `fk_client_id`, `order_referance`, `created_at`, `update_at`, `delay`, `orders_articles_id`) VALUES
(1, 3, 'htrgfhcghfghfghfghfgh', '2023-12-04 14:19:21', NULL, NULL, 1),
(2, 6, 'psdoqkdkkdlsdd,c,c', '2023-12-05 08:44:22', NULL, NULL, 2),
(3, 7, 'ssqesqd', '2023-12-05 08:47:01', NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders_article`
--

CREATE TABLE `orders_article` (
  `order_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `price` float NOT NULL,
  `purchase` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_article`
--

INSERT INTO `orders_article` (`order_id`, `article_id`, `order_date`, `price`, `purchase`) VALUES
(1, 1, '2023-12-04 14:35:06', 2331, 1),
(1, 6, '2023-12-05 08:48:33', 20, 9),
(1, 11, '2023-12-04 14:21:20', 10, 1),
(2, 6, '2023-12-05 08:48:28', 23112, 2),
(2, 7, '2023-12-05 08:46:19', 221, 1),
(2, 9, '2023-12-05 08:45:58', 12, 1),
(3, 3, '2023-12-05 08:48:31', 454, 6),
(3, 4, '2023-12-05 08:48:25', 14, 4),
(3, 8, '2023-12-05 08:48:12', 12, 1),
(3, 10, '2023-12-05 08:48:37', 31, 12);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `client_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `pwd`, `client_id`) VALUES
(1, 'gsange0@who.int', '$2a$04$LrywTJltlEQUn3uHmHSa/.pYrm49VOpBcjNGu8clrqfXmQFpVmGSe', 2),
(2, 'tdiss1@google.ru', '$2a$04$QXKrw7DlwNXbA90MsX9hkOtPp.SXqW6906/GqRGTAFxb464hKT0Ym', 3),
(3, 'jlemmen2@twitter.com', '$2a$04$a77JXmfeVUIL9yY6Sd4Ov.7A284FKyIdznbRyRpujUVRdFeMTfSM2', 5),
(4, 'otoopin3@hostgator.com', '$2a$04$PMMD7BCE1uBJeK.56fXbw.DxFEBLoUFFByr/ZXhB9P1336hfaIJqq', 6),
(5, 'weagland4@nationalgeographic.com', '$2a$04$hsZCBvPWW5B7I8.62qjdue4zzINUCg2jvXsjzDiqYDdoR/W5ykw72', 1),
(6, 'dfifoot5@aol.com', '$2a$04$Edcxpw4nSshCkA8bb8hR/.A2MyJmOA4PqrxXvzyFQkC3jxfz1wJ2q', 9),
(7, 'rculbard6@goo.ne.jp', '$2a$04$uYcxbyfU2aUlbhHZ0gjjq.9hMot2ODBr3WdU4XhGboo2ERvNmJgam', 7),
(8, 'cdunks7@cloudflare.com', '$2a$04$Yuhs54u1Lgo1i.JC1pafYOUFUW5eXv5P950EAaB8JQ4bn8hXZpWP.', 8),
(9, 'slush8@e-recht24.de', '$2a$04$qwNhuhGqqkcmBkZ.DyJfu.ooVa4N4ApSqPeBmhMvxfO8dUmwT7zDm', 10),
(10, 'kklimko9@vinaora.com', '$2a$04$CHeVVSJQNQhxNEAYTbH8beU.ARTjAqBCaP6N4RftsSUE3ewSLbEI2', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_referance` (`order_referance`),
  ADD KEY `client_id` (`fk_client_id`);

--
-- Indexes for table `orders_article`
--
ALTER TABLE `orders_article`
  ADD PRIMARY KEY (`order_id`,`article_id`),
  ADD KEY `commande_id` (`order_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `client_id_2` (`client_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`fk_client_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `orders_article`
--
ALTER TABLE `orders_article`
  ADD CONSTRAINT `orders_article_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `orders_article_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- SELECT Article more 3 in orders
SELECT OA.purchase,AR.name, AR.price FROM orders_article OA
LEFT JOIN article AR ON AR.id = OA.article_id
WHERE OA.purchase > 3;

-- Show Article which does not exist in orders
SELECT AR.* FROM article AR
WHERE NOT EXISTS
(SELECT OA.* FROM orders_article OA WHERE OA.article_id = AR.id);