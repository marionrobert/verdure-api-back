-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db.3wa.io
-- Généré le : ven. 29 mars 2024 à 15:05
-- Version du serveur :  5.7.33-0ubuntu0.18.04.1-log
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `marionrobert_verdure`
--

-- --------------------------------------------------------

--
-- Structure de la table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `plant_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` double NOT NULL,
  `photo` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `plant_id`, `name`, `quantity`, `total`, `photo`) VALUES
(32, 37, 2, 'Alocasia Zebrina', 2, 50, 'alocasia-zebrina.avif'),
(33, 37, 4, 'Alocasia', 1, 15, 'alocasia.avif'),
(34, 37, 35, 'Bananier', 1, 10, 'bananier.avif'),
(35, 38, 2, 'Alocasia Zebrina', 1, 25, 'alocasia-zebrina.avif'),
(36, 38, 5, 'Aloe vera', 1, 20, 'aloe-vera.avif'),
(37, 39, 2, 'Alocasia Zebrina', 1, 25, 'alocasia-zebrina.avif'),
(38, 39, 5, 'Aloe vera', 1, 20, 'aloe-vera.avif'),
(39, 39, 4, 'Alocasia', 1, 15, 'alocasia.avif'),
(40, 40, 2, 'Alocasia Zebrina', 1, 25, 'alocasia-zebrina.avif'),
(41, 40, 5, 'Aloe vera', 1, 20, 'aloe-vera.avif'),
(42, 40, 4, 'Alocasia', 1, 15, 'alocasia.avif'),
(43, 41, 2, 'Alocasia Zebrina', 2, 50, 'alocasia-zebrina.avif'),
(44, 41, 35, 'Bananier', 1, 10, 'bananier.avif'),
(45, 42, 35, 'Bananier', 1, 10, 'bananier.avif'),
(46, 43, 2, 'Alocasia Zebrina', 3, 75, 'alocasia-zebrina.avif'),
(47, 43, 4, 'Alocasia', 1, 15, 'alocasia.avif'),
(48, 43, 30, 'Anthurium', 1, 12, 'anthurium.avif'),
(49, 44, 30, 'Anthurium', 1, 12, 'anthurium.avif'),
(50, 45, 30, 'Anthurium', 1, 12, 'anthurium.avif'),
(51, 46, 4, 'Alocasia', 40, 600, 'alocasia.avif'),
(52, 47, 4, 'Alocasia', 3, 45, 'alocasia.avif'),
(53, 47, 5, 'Aloe vera', 1, 20, 'aloe-vera.avif'),
(54, 48, 30, 'Anthurium', 23, 276, 'anthurium.avif'),
(55, 49, 2, 'Alocasia Zebrina', 1, 25, 'alocasia-zebrina.avif'),
(56, 49, 5, 'Aloe vera', 3, 60, 'aloe-vera.avif'),
(57, 50, 4, 'Alocasia', 4, 60, 'alocasia.avif'),
(58, 50, 5, 'Aloe vera', 2, 40, 'aloe-vera.avif'),
(59, 51, 4, 'Alocasia', 4, 60, 'alocasia.avif'),
(60, 52, 2, 'Alocasia Zebrina', 3, 75, 'alocasia-zebrina.avif'),
(61, 52, 32, '', 2, 2, ''),
(62, 53, 2, 'Alocasia Zebrina', 3, 75, 'alocasia-zebrina.avif'),
(63, 53, 32, '', 2, 2, ''),
(64, 54, 2, 'Alocasia Zebrina', 3, 75, 'alocasia-zebrina.avif'),
(65, 54, 32, '', 2, 2, ''),
(66, 55, 2, 'Alocasia Zebrina', 3, 75, 'alocasia-zebrina.avif'),
(67, 60, 2, 'Alocasia Zebrina', 1, 25, 'alocasia-zebrina.avif'),
(68, 61, 2, 'Alocasia Zebrina', 1, 25, 'alocasia-zebrina.avif'),
(69, 62, 2, 'Alocasia Zebrina', 9, 225, 'alocasia-zebrina.avif'),
(70, 62, 4, 'Alocasia', 2, 30, 'alocasia.avif'),
(71, 63, 2, 'Alocasia Zebrina', 9, 225, 'alocasia-zebrina.avif'),
(72, 63, 4, 'Alocasia', 2, 30, 'alocasia.avif'),
(73, 64, 2, 'Alocasia Zebrina', 9, 225, 'alocasia-zebrina.avif'),
(74, 64, 4, 'Alocasia', 2, 30, 'alocasia.avif'),
(75, 65, 2, 'Alocasia Zebrina', 9, 225, 'alocasia-zebrina.avif'),
(76, 65, 4, 'Alocasia', 2, 30, 'alocasia.avif'),
(77, 66, 2, 'Alocasia Zebrina', 3, 75, 'alocasia-zebrina.avif'),
(78, 67, 5, 'Aloe vera', 4, 80, 'aloe-vera.avif'),
(79, 68, 2, 'Alocasia Zebrina', 3, 75, 'alocasia-zebrina.avif'),
(80, 68, 4, 'Alocasia', 4, 60, 'alocasia.avif'),
(81, 69, 2, 'Alocasia Zebrina', 3, 75, 'alocasia-zebrina.avif'),
(82, 69, 4, 'Alocasia', 4, 60, 'alocasia.avif'),
(83, 70, 2, 'Alocasia Zebrina', 3, 75, 'alocasia-zebrina.avif'),
(84, 70, 4, 'Alocasia', 4, 60, 'alocasia.avif'),
(85, 70, 5, 'Aloe vera', 2, 40, 'aloe-vera.avif'),
(86, 71, 2, 'Alocasia Zebrina', 5, 125, 'alocasia-zebrina.avif'),
(87, 71, 4, 'Alocasia', 6, 90, 'alocasia.avif'),
(88, 72, 4, 'Alocasia', 3, 45, 'alocasia.avif'),
(89, 72, 30, 'Anthurium', 7, 84, 'anthurium.avif'),
(90, 73, 34, 'Aphelandra', 8, 8, 'aphelandra.avif'),
(91, 73, 35, 'Bananier', 7, 70, 'bananier.avif'),
(92, 79, 2, 'Alocasia Zebrina', 3, 1368, 'alocasia-zebrina.avif'),
(93, 79, 4, 'Alocasia', 1, 25, 'alocasia.avif'),
(94, 80, 2, 'Alocasia Zebrina', 3, 1368, 'alocasia-zebrina.avif'),
(95, 80, 4, 'Alocasia', 1, 25, 'alocasia.avif'),
(96, 80, 5, 'Aloe vera', 5, 100, 'aloe-vera.avif'),
(97, 81, 2, 'Alocasia Zebrina', 3, 1368, 'alocasia-zebrina.avif'),
(98, 81, 4, 'Alocasia', 1, 25, 'alocasia.avif'),
(99, 81, 5, 'Aloe vera', 5, 100, 'aloe-vera.avif'),
(100, 82, 30, 'Anthurium', 1, 12, 'anthurium.avif'),
(101, 83, 30, 'Anthurium', 1, 12, 'anthurium.avif'),
(102, 84, 30, 'Anthurium', 1, 12, 'anthurium.avif'),
(103, 85, 30, 'Anthurium', 1, 12, 'anthurium.avif'),
(104, 86, 2, 'Alocasia Zebrina', 1, 456, 'alocasia-zebrina.avif'),
(105, 87, 2, 'Alocasia Zebrina', 1, 456, 'alocasia-zebrina.avif'),
(106, 88, 4, 'Alocasia', 2, 50, 'alocasia.avif'),
(107, 89, 5, 'Aloe vera', 2, 40, 'aloe-vera.avif'),
(108, 90, 34, 'Aphelandra', 3, 75, 'aphelandra.avif'),
(109, 91, 2, 'Alocasia Zebrina', 1, 456, 'alocasia-zebrina.avif'),
(110, 92, 2, 'Alocasia Zebrina', 1, 456, 'alocasia-zebrina.avif'),
(111, 93, 4, 'Alocasia', 1, 25, 'alocasia.avif'),
(112, 94, 30, 'Anthurium', 1, 12, 'anthurium.avif'),
(113, 95, 37, '', 1, 25, ''),
(114, 96, 2, 'Alocasia Zebrina', 1, 456, 'alocasia-zebrina.avif'),
(115, 97, 37, '', 1, 25, ''),
(116, 98, 4, 'Alocasia', 1, 25, 'alocasia.avif'),
(117, 107, 2, 'Alocasia Zebrina', 2, 912, 'alocasia-zebrina.avif'),
(118, 107, 4, 'Alocasia', 1, 25, 'alocasia.avif'),
(119, 108, 2, 'Alocasia Zebrina', 2, 912, 'alocasia-zebrina.avif'),
(120, 108, 4, 'Alocasia', 1, 25, 'alocasia.avif'),
(121, 109, 2, 'Alocasia Zebrina', 2, 912, 'alocasia-zebrina.avif'),
(122, 109, 4, 'Alocasia', 1, 25, 'alocasia.avif'),
(123, 110, 2, 'Alocasia Zebrina', 2, 912, 'alocasia-zebrina.avif'),
(124, 110, 4, 'Alocasia', 1, 25, 'alocasia.avif'),
(125, 111, 2, 'Alocasia Zebrina', 2, 912, 'alocasia-zebrina.avif'),
(126, 111, 4, 'Alocasia', 1, 25, 'alocasia.avif'),
(127, 112, 2, 'Alocasia Zebrina', 1, 456, 'alocasia-zebrina.avif'),
(128, 113, 2, 'Alocasia Zebrina', 2, 912, 'alocasia-zebrina.avif'),
(129, 113, 4, 'Alocasia', 1, 25, 'alocasia.avif'),
(130, 113, 5, 'Aloe vera', 3, 60, 'aloe-vera.avif'),
(131, 114, 2, 'Alocasia Zebrina', 2, 912, 'alocasia-zebrina.avif'),
(132, 114, 4, 'Alocasia', 2, 50, 'alocasia.avif'),
(133, 114, 5, 'Aloe vera', 4, 80, 'aloe-vera.avif'),
(134, 115, 34, 'Aphelandra', 2, 50, 'aphelandra.avif'),
(135, 116, 4, 'Alocasia', 1, 25, 'alocasia.avif'),
(136, 116, 5, 'Aloe vera', 1, 20, 'aloe-vera.avif'),
(137, 116, 37, 'Beaucarnea', 1, 25, 'beaucarnea.avif'),
(138, 119, 2, 'Alocasia Zebrina', 1, 456, 'alocasia-zebrina.avif'),
(139, 119, 30, 'Anthurium', 1, 12, 'anthurium.avif'),
(140, 120, 2, 'Alocasia Zebrina', 1, 456, 'alocasia-zebrina.avif'),
(141, 120, 37, 'Beaucarnea', 1, 25, 'beaucarnea.avif'),
(142, 121, 2, 'Alocasia Zebrina', 1, 41, 'alocasia-zebrina.avif'),
(143, 121, 35, 'Bananier', 1, 10, 'bananier.avif'),
(144, 122, 30, 'Anthurium', 3, 36, 'anthurium.avif');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `totalAmount` double NOT NULL,
  `creationTimestamp` datetime NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `totalAmount`, `creationTimestamp`, `status`) VALUES
(37, 1, 66, '2020-06-25 09:57:03', 'in_delivery'),
(38, 1, 45, '2020-06-25 10:38:42', 'delivered'),
(39, 1, 60, '2020-06-25 14:15:59', 'not_payed'),
(40, 1, 60, '2020-06-25 14:20:23', 'payed'),
(41, 1, 51, '2020-06-25 15:01:50', 'not_payed'),
(42, 1, 1, '2020-06-25 15:05:59', 'not_payed'),
(43, 1, 102, '2020-06-26 10:13:17', 'payed'),
(44, 1, 12, '2020-06-26 10:28:35', 'payed'),
(45, 1, 12, '2020-06-26 10:32:37', 'payed'),
(46, 1, 600, '2020-06-26 10:37:02', 'payed'),
(47, 1, 65, '2020-11-05 11:24:55', 'payed'),
(48, 1, 276, '2020-11-05 11:26:51', 'payed'),
(49, 11, 85, '2021-02-24 14:35:25', 'shipped'),
(50, 11, 100, '2021-11-17 10:02:29', 'payed'),
(51, 11, 60, '2021-11-17 12:39:52', 'payed'),
(52, 11, 77, '2021-11-23 12:35:25', 'shipped'),
(53, 11, 77, '2021-11-23 12:38:04', 'shipped'),
(54, 11, 77, '2021-11-23 12:54:21', 'shipped'),
(55, 11, 75, '2021-11-23 12:56:14', 'payed'),
(60, 1, 25, '2022-01-26 16:55:07', 'not_payed'),
(61, 1, 25, '2022-01-26 16:55:25', 'not_payed'),
(62, 11, 255, '2022-03-02 11:03:52', 'not_payed'),
(63, 11, 255, '2022-03-02 11:04:02', 'shipped'),
(64, 11, 255, '2022-03-02 11:04:11', 'finished'),
(65, 11, 255, '2022-03-02 11:05:13', 'shipped'),
(66, 11, 75, '2022-03-03 15:34:47', 'finished'),
(67, 11, 80, '2022-03-09 15:08:37', 'payed'),
(70, 11, 175, '2023-03-10 09:37:28', 'payed'),
(71, 11, 215, '2023-06-29 15:13:38', 'shipped'),
(72, 11, 129, '2023-06-30 10:29:55', 'payed'),
(73, 11, 78, '2023-06-30 10:32:23', 'finished'),
(80, 20, 1493, '2023-07-04 11:09:18', 'shipped'),
(81, 20, 1493, '2023-07-04 17:48:45', 'finished'),
(96, 22, 456, '2023-12-14 09:57:45', 'payed'),
(97, 22, 25, '2023-12-14 16:27:04', 'payed'),
(98, 22, 25, '2023-12-14 17:06:21', 'payed'),
(114, 20, 1042, '2023-12-15 14:00:56', 'payed'),
(115, 22, 50, '2023-12-22 10:31:23', 'shipped'),
(116, 22, 70, '2023-12-22 10:32:59', 'payed'),
(119, 22, 468, '2023-12-22 13:04:20', 'payed'),
(120, 20, 481, '2023-12-27 21:22:02', 'payed'),
(121, 22, 51, '2024-03-25 15:51:34', 'payed'),
(122, 1, 36, '2024-03-29 10:42:45', 'payed');

-- --------------------------------------------------------

--
-- Structure de la table `plants`
--

CREATE TABLE `plants` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `price` int(5) NOT NULL,
  `photo` varchar(90) NOT NULL,
  `quantity` int(11) NOT NULL,
  `watering` int(1) NOT NULL,
  `brightness` int(1) NOT NULL,
  `minTemperature` int(11) NOT NULL,
  `maxTemperature` int(11) NOT NULL,
  `creationTimestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `plants`
--

INSERT INTO `plants` (`id`, `name`, `description`, `price`, `photo`, `quantity`, `watering`, `brightness`, `minTemperature`, `maxTemperature`, `creationTimestamp`) VALUES
(2, 'Alocasia Zebrina', 'Originaire des îles de Luzon, Mindanao, Leyte, Samar, Biliran et Alabat aux Philippines, elle est couramment cultivée comme plante d\'intérieur dans le monde entier. Elle est connue localement sous le nom de tigre du gabing (\'tiger taro\') en tagalog. L\'Alocasia zebrina est répertorié à l\'échelle nationale comme une espèce menacée et la collecte d\' Alocasia zebrina dans la nature est illégale aux Philippines. Elle porte le nom de ses tiges de feuilles rayées distinctives. L\'Alocasia zebrina pousse à environ 1.8 m de haut. Ses feuilles sont d\'un vert brillant, plus ou moins foncé avec une texture ferme. Les fleurs sont portées par paires et sont autour de 16 cm de long. Ses fruits sont de couleur orange.', 41, 'alocasia-zebrina.avif', 123, 4, 4, 17, 28, '2020-06-17 17:28:07'),
(4, 'Alocasia', 'Alocasia est un genre de plantes vivaces rhizomateuses ou tubéreuses à larges feuilles de la famille des Aracées. C\'est une plante originaire des régions allant de l\'Asie tropicale et subtropicale à l\'Australie orientale, et largement cultivées ailleurs. L\'Alocasia présente de grandes feuilles cordées ou sagittées d\'une longueur de 20 à 90 cm sur de longs pétioles. Leurs fleurs aracées poussent au bout d\'une courte tige et sont souvent cachées derrière les pétioles des feuilles.\r\n\r\nLa tige (un rhizome ) est comestible, mais contient des cristaux d\'oxalate de calcium raphides ainsi que d\'autres irritants (peut-être une peptidase )2 susceptibles d\'engourdir et de provoquer un gonflement de la langue et du pharynx causant des difficultés respiratoires et de fortes douleurs de la gorge. Les parties inférieures contiennent plus de poison. Une ébullition prolongée avant de servir ou de transformer peut réduire les risques, et des fruits acides tels que le tamarin peuvent les dissoudre.\r\nLes Alocasia sont des plantes tropicales de plus en plus populaires3. Ils sont généralement cultivés en pot et en serre, où ils bénéficient de conditions adaptées. Redoutant la pénombre, ils ont besoin d\'un bon éclairage en intérieur et, comme toute autre plante tropicale, de nettoyages hebdomadaire des feuilles et d\'une brumisation fréquente.\r\n\r\nIls survivent rarement aux hivers froids ou à l\'air sec dû au chauffage artificiel et doivent être protégées des acariens ou des attaques d\'araignées rouges.', 45, 'alocasia.avif', 400000, 4, 4, 15, 30, '2020-06-17 17:28:07'),
(5, 'Aloe vera', 'L\'Aloe vera est une espèce d\'aloès (genre Aloe) d\'origine incertaine mais cultivée de longue date en région méditerranéenne, Afrique du Nord, aux îles Canaries et au Cap-Vert. Utilisé depuis l\'Antiquité, l\'Aloe vera a été adopté dans les médecines traditionnelles de nombreuses régions chaudes du monde, d\'Europe, du Moyen-Orient et d\'Afrique du Nord d\'abord, puis d\'Inde, de Chine et d\'Asie. Actuellement, le gel d\'aloès entre principalement dans la composition de cosmétiques ou de boissons.\r\nL’Aloe vera est une plante succulente, aux feuilles persistantes, aux racines peu profondes, poussant en touffes et même en colonies, en raison de son aptitude à produire des drageons. La tige à base ligneuse, est courte (au plus 50 cm de haut) et porte à l\'extrémité des feuilles alternes, enchâssées les unes dans les autres, distiques (particulièrement pour les jeunes plants) puis en vieillissant en rosette7.', 20, 'aloe-vera.avif', 10, 2, 2, 15, 25, '2020-06-17 17:28:07'),
(30, 'Anthurium', 'Anthurium est un genre de plantes de la famille des Araceae comportant de 600 à 800 espèces, voire 1 000 espèces : c\'est un des genres les plus importants et les plus complexes de la famille. De nouvelles espèces sont décrites chaque année.\r\n\r\nLes espèces ont une distribution néotropicale : la plupart croissent dans les forêts tropicales humides (voir Forêts décidues humides tropicales et subtropicales) d\'Amérique centrale et d\'Amérique du Sud mais quelques-unes poussent dans des milieux semi-arides.\r\n\r\nOn les trouve du nord du Mexique à l\'Argentine et plus particulièrement au Panama, en Colombie, au Brésil, en Guyane, en Haïti en Équateur. Elles seraient absentes d\'Asie bien qu\'on les trouve dans quelques forêts humides asiatiques où elles auraient été introduites : par exemple, l\'anthurium rouge au Sri Lanka.\r\n\r\nPlusieurs espèces sont multipliées comme plante d\'appartement pour la valeur ornementale de leur feuillage, comme Anthurium crystallinum, ou pour celle de leur inflorescence (spathe et spadice rouges), comme Anthurium scherzerianum.\r\n\r\nL\'anthurium est une plante dépolluante extrêmement efficace pour éliminer l\'ammoniac, dans une moindre mesure pour le xylène et le formaldéhyde.\r\n\r\nSon parfum peut également provoquer migraine et allergie.', 12, 'anthurium.avif', 123, 0, 0, 0, 0, '2020-06-24 12:49:24'),
(34, 'Aphelandra', 'Le genre Aphelandra, appartenant à la famille des Acanthacées, comprend environ 200 espèces.\r\n\r\nCe sont des arbustes ou des sous-arbrisseaux originaires des régions subtropicales à tropicales d\'Amérique.', 25, 'aphelandra.avif', 189, 3, 3, 15, 25, '2022-03-08 17:34:45'),
(35, 'Bananier', 'Le Bananier, Musa, est un genre de plantes monocotylédones vivaces de la famille des Musaceae dont les fruits, en général, sont les bananes.\r\n\r\nLe Bananier, contrairement aux apparences, n\'est pas un arbre mais une plante herbacée1. En effet, il ne possède pas de vrai tronc, mais un stipe, comme les palmiers : un empilement de gaines foliaires qui s\'accumulent.\r\n\r\nCe genre comprend environ soixante espèces, toutes tropicales, dont plusieurs sont largement cultivées pour la production de bananes. Certaines espèces ont un intérêt ornemental et sont cultivées en serres dans les pays tempérés2.\r\n\r\nLe terme « bananier » peut aussi être utilisé pour des espèces n\'appartenant pas au genre Musa. Les espèces du genre Ensete comme la fausse « banane » (Ensete ventricosum) sont aussi regroupées sous le terme de « bananiers ». Globalement, tous appartiennent à la famille des Musaceae.', 10, 'bananier.avif', 1, 3, 3, 20, 30, '2022-03-08 17:35:29'),
(37, 'Beaucarnea', 'Beaucarnea est un genre de plantes succulentes tropicales de la famille des Asparagaceae. Elles sont originaires du Mexique et d\'Amérique centrale. Il est inclus dans le genre Nolina par certains botanistes. Précédemment, il appartenait à la famille des Nolinaceae ou à celle des Agavaceae. Le nom de genre Beaucarnea est donné en hommage au notaire, collectionneur et phytogénéticien belge Jean-Baptiste Beaucarne qui découvrit cette plante au Mexique en 1861 et la ramena au jardin botanique de la Maison Beaucarne (nl), près de Ename. Cette plante, le Beaucarnea recurvata, lui permit, la même année, de remporter un prix horticole. Les individus font entre 6 et 10 m de haut, avec un tronc de 20 à 40 cm de diamètre renflé à la base, ce qui leur vaut parfois le nom de pied d’éléphant ou d\'arbre bouteille. Les jeunes plantes présentent une seule tige. De nouvelles branches n\'apparaissent qu\'après la floraison. Les feuilles persistantes sont de couleur verte et de forme très allongée : jusqu\'à 1,8 m de long mais seulement 2 cm de large. Les fleurs n\'apparaissent que sur les sujets âgés, formant une grande panicule de 75 à 110 cm de long. Les fleurs individuelles sont nombreuses mais insignifiantes (1,5 mm de diamètre), blanc-verdâtre, avec 6 pétales.', 25, 'beaucarnea.avif', 123, 4, 4, 17, 27, '2023-07-03 14:46:48'),
(39, 'Begonia', 'Les bégonias sont des plantes à fleurs du genre Begonia, qui représente la quasi-totalité de la famille des Bégoniacées, avec plus de 2 000 espèces décrites. À quelques exceptions près, les bégonias sont facilement reconnaissables à leurs feuilles asymétriques et aux fragiles fleurs à minuscule cœur jaune, parfois très dissemblables sur un même pied, selon qu\'elles sont mâles ou femelles, puisque ce sont des plantes monoïques strictes. Les autres caractères apparaissent au contraire très variables d\'une espèce à l\'autre, tant par la forme ou la couleur du feuillage et des fleurs, que par le port ou la hauteur, qui s\'échelonne de quelques centimètres à 3 ou 4 m. À ces espèces botaniques, il faut ajouter presque autant d\'hybrides et de multiples cultivars horticoles. Les bégonias sont principalement originaires des régions tropicales chaudes et humides d\'Amérique du Sud et d\'Amérique centrale, mais on trouve également des bégonias sauvages qui poussent en Afrique tropicale ou en Asie du Sud-Est.', 25, 'begonia.avif', 120, 4, 4, 17, 27, '2023-07-03 17:08:58'),
(40, 'Cactus', 'Les Cactus, Cactées ou encore Cactacées (Cactaceae) sont une famille de plantes à fleurs. Ce sont presque toutes des plantes grasses ou plantes succulentes, c\'est-à-dire des plantes xérophytes qui stockent dans leurs tissus des réserves de « suc » pour faire face aux longues périodes de sécheresse. Il ne faut pas confondre Cactus et plante succulente : toutes les plantes succulentes ne sont pas des Cactus. Ce sont des familles de plantes qui ont adopté les mêmes méthodes de lutte contre les périodes de sécheresse, comme les Asclepiadaceae ou les Crassulaceae. Pour distinguer les vrais cactus des plantes qui leur ressemblent, il faut se reporter aux critères d\'appartenance à la famille des Cactaceae. L\'identification se fait par la présence d\'aréoles, et, comme plus généralement en botanique, par les fleurs et les fruits.Contrairement aux croyances populaires, les Cactacées ne sont pas considérés comme étant des arbres. Les cactus couvrent un large éventail de formes et de tailles. On en trouve des sphériques, cylindriques, en forme de pilier, avec des feuilles pointues ou en forme de raquettes appelées cladodes… Le plus grand est Pachycereus pringlei, avec une taille mesurée de 19,2 m, le plus petit est Blossfeldia liliputana, d’1 cm de diamètre à sa taille adulte.', 20, 'cactus.avif', 38, 1, 4, 20, 35, '2023-07-04 17:54:48'),
(42, 'Syngonium', 'description de Syngonium', 123, 'syngonium.avif', 451, 2, 3, 12, 23, '2023-07-06 16:35:40'),
(49, 'Pilea', 'Pilea peperomioides, aussi connue sous l\'appellation plante à monnaie chinoise, (en) pancake plant, (en) lefse plantNote 1 ou plante du missionnaire, est une espèce de plante à fleurs (angiosperme) de la famille biologique des Urticaceae. Cette plante est endémique de la province du Yunnan dans le sud-ouest de la Chine. Très utilisée comme plante d\'intérieur, elle est facile à bouturer.', 789, 'pilea.avif', 12, 5, 5, 23, 25, '2023-07-06 17:38:52'),
(50, 'Caladium', 'Caladium est un genre d\'environ 12 espèces de plantes de la famille des Araceae. Les noms vernaculaires sont, selon les espèces : oreilles d\'éléphant (qu\'ils partagent avec les genres proches Alocasia, Colocasia, et Xanthosoma), cœur de Jésus et ailes d\'ange. Il y a plus de 1 000 cultivars de Caladium bicolor1.\n\nLe genre Caladium tire son nom du mot amérindien kelady2 et est indigène du Brésil et des régions voisines en Amérique du Sud et centrale. Les Caladium se développent dans des clairières de la forêt et sur les berges des rivières. Au cours de la saison sèche ils entrent en dormance. Les plantes sauvages font de 40 cm à 90 cm de hauteur, la plupart des feuilles font 15 cm de large sur 45 cm de long.\n\nToutes les parties de la plante sont toxiques, ne doivent pas être ingérées et peuvent irriter les peaux sensibles.', 35, 'caladium.avif', 45, 2, 1, 17, 25, '2023-12-27 22:50:16'),
(51, 'Calathea', 'Calathea est un genre de plantes monocotylédones appartenant à la famille des Marantaceae. Ce genre comprend aujourd\'hui 56 espèces de plantes herbacées. De nombreuses espèces autrefois classées dans le genre Calathea sont aujourd\'hui classées dans le genre Goeppertia. Quelques espèces sont cultivées pour leurs grandes feuilles.\n\nLe Calathea a pour origine l\'Amérique du sud et plus encore les forêts chaudes et humides.', 32, 'calathea.avif', 12, 3, 3, 18, 24, '2023-12-27 22:54:03'),
(52, 'Crassula', 'Crassula arborescens est une espèce de plantes ornementales de la famille des Crassulaceae originaire de la province du Cap (Afrique du Sud). Crassula arborescens est une plante grasse pouvant atteindre 0,6 à 1,2 m. Les feuilles sont bleu-vert et arrondies, parfois avec les bords rouges. Crassula arborescens fleurit en hiver; les fleurs sont de couleur blanc ou rose.', 23, 'crassula.avif', 23, 1, 1, 20, 30, '2023-12-27 23:00:43'),
(53, 'Ficus elastica', 'Le figuier à caoutchouc, ou plus couramment caoutchouc, (Ficus elastica) est un arbre sempervirent de la famille des Moracées, originaire d\'Asie. C\'est une plante qui produit du latex et qui est cultivée en pot comme plante d\'intérieur dans les pays tempérés[Quoi ?]. Cette espèce est en régression à la suite de la contamination des cultures par un champignon pathogène (en Asie du Sud-Est notamment).', 22, 'ficus-elastica.avif', 52, 4, 3, 12, 24, '2023-12-27 23:01:54'),
(54, 'Ficus Lyrata', 'Ficus lyrata est une espèce de figuier de la famille des Moraceae. Elle est originaire d\'Afrique de l\'Ouest. Son habitat va de l\'ouest du Cameroun à la Sierra Leone, dans la forêt tropicale pluvieuse. Il s\'agit d\'un arbre ornemental commun dans les jardins tropicaux et subtropicaux, parfois utilisée comme plante verte d\'intérieur.', 21, 'ficus-lyrata.avif', 44, 4, 4, 12, 23, '2023-12-27 23:03:55'),
(55, 'Maranta', 'Maranta est un genre des plantes monocotylédones de la famille des Marantaceae. Quelques espèces sont cultivées pour leurs grandes feuilles ou pour la cuisine, comme l\'arrow-root.\n\nLe nom du genre rend hommage au botaniste italien Bartolomeo Maranta (vers 1500-1571).\n\nCe genre est composé d\'environ 20 espèces de plantes vivaces rhizomateuses à feuillage persistant, poussant dans la forêt humide tropicale, en Amérique centrale et en Amérique du Sud. Les Maranta forment des touffes compactes.', 23, 'maranta-lemon.avif', 52, 2, 3, 14, 28, '2023-12-27 23:06:10'),
(56, 'Monstera deliciosa', 'Le faux philodendron (Monstera deliciosa) est une plante vivace appartenant au genre Monstera qui dépend de la famille des Araceae. Elle est très proche des philodendrons avec lesquels on la confond fréquemment en utilisant le nom de ce genre comme nom vernaculaire pour désigner les individus commercialisés comme plante ornementale d\'appartement.', 23, 'monstera-deliciosa.avif', 22, 2, 3, 20, 23, '2023-12-27 23:08:00'),
(57, 'Pachira', 'Pachira est un genre d\'arbres de la famille des Bombacaceae, selon la classification classique, ou de celle des Malvaceae, selon la classification phylogénétique.\n\nCe sont des arbres tropicaux des zones humides d\'Amérique centrale et d\'Amérique du Sud à feuilles palmées et à écorce verdâtre lisse. Il est aussi appelé châtaignier de Guyane1 en raison de la ressemblance de son feuillage.', 54, 'pachira.avif', 56, 2, 2, 14, 19, '2023-12-27 23:10:18'),
(58, 'Philodendron', 'Philodendron, du grec philo (ami) et dendron (arbre) est un genre de plantes de la famille des Araceae, comprenant plus de 700 espèces. Certaines d’entre elles sont connues comme plantes ornementales ou d’intérieur.', 22, 'philodendron.avif', 12, 2, 2, 22, 32, '2023-12-27 23:11:10'),
(59, 'Philodendron Birkin', 'Les Philodendrons ont tendance à facilement s’adapter à leur environnement. Un endroit lumineux fera leur bonheur, sans toutefois l’exposer aux rayons directs du soleil. Ils pourront tout de même s’en tirer dans un endroit ombrageux, mais leur croissance sera différente. On offrira à la plante un arrosage régulier, en prenant toutefois soin de laisser sécher le substrat de quelques pouces entre chaque dose d’eau.', 23, 'philodendron-birkin.avif', 56, 3, 3, 18, 26, '2023-12-29 11:20:46'),
(60, 'Polyscias', 'Le genre Polyscias regroupe environ 100 espèces de plantes herbacées et d\'arbustes de la famille des Araliaceae.\n\nPolyscias est un genre à feuilles persistantes rencontré sous les tropiques, dans les îles du Pacifique et en Australie, mais aussi répandu en Nouvelle-Guinée, Nouvelle-Calédonie et aux îles Mascareignes.\n\nIl se caractérise par des feuilles alternes, imparipennées, tripennées ou bipennées, avec un long pétiole. Les inflorescences sont disposées en panicules terminaux et forment des ombelles ou capitules composés de petites fleurs unisexuées ou bisexuées.', 23, 'polyscias.avif', 54, 3, 2, 23, 27, '2023-12-29 11:22:04'),
(61, 'Pothos', 'Epipremnum aureum ou Pothos ou Scindapsus doré est une plante de la famille des Aracées, originaire de Moorea (Polynésie française). À l’état sauvage, le pothos est une plante grimpante, sempervirente qui s’accroche aux troncs d’arbre et aux rochers au moyen de racines aériennes. C\'est par ailleurs une plante largement cultivée comme plante d\'intérieur.\n\nIl s\'agit d\'une plante épiphyte qui dans la nature, en zone tropicale humide, peut pousser jusqu\'à 20 m de hauteur en s\'enroulant et s\'accrochant par des racines aériennes aux branches des arbres et à d\'autres épiphytes. Ses tiges ne dépassent généralement pas 4 cm de diamètre et ne font que quelques mm en intérieur.\n\nLe pothos est vendu comme « plante dépolluante » mais bien que l’absorption du formaldéhyde soit incontestable en milieu contrôlé en laboratoire, l’effet n’a pas pu être significativement établi dans les conditions réelles d’une pièce à vivre.', 25, 'pothos.avif', 23, 3, 4, 23, 25, '2023-12-29 11:22:58'),
(62, 'Sarracenia', 'Les Sarracénies ou Sarracènes (le genre Sarracenia) sont un genre de plantes à fleurs de la famille des Sarracéniacées. Ce sont des plantes carnivores originaires du sud-est des États-Unis et du Canada. Ce sont des « carnivores à pièges passifs » (sans mouvement mécanique). Ces pièges sont des feuilles modifiées en forme d\'urne et protégées par une coiffe, sauf chez Sarracenia psittacina chez qui elle a disparu par soudure de ses bords. Le nom de la plante fait référence à Michel Sarrazin, chirurgien, médecin et naturaliste en Nouvelle-France.\nLe jardin botanique du muséum d\'histoire naturelle de Nantes a découvert en 2015 que des spécimens présents avaient capturé des frelons asiatiques ; n\'étant pas sélectives et piégeant trop peu de frelons, ces plantes ne peuvent pas être utilisées dans un système de piégeage de masse, cependant des chercheurs vont étudier la molécule odorante qui attirerait ces frelons afin d\'en produire un piège.', 26, 'sarracenia.avif', 12, 3, 3, 12, 24, '2023-12-29 11:24:29'),
(63, 'Schefflera', 'Le genre Schefflera constitue un groupe d’arbres tropicaux vivaces au luxuriant feuillage persistant de la famille des Araliaceae, originaires de l’Asie et de l’Amérique centrale, où ils peuvent atteindre 30 m de haut. Au Queensland en Australie, il forme un petit arbre pouvant mesurer jusqu’à 12 m. En zone humide, ils poussent aussi en épiphytes sur des rochers ou des arbres.', 23, 'schefflera.avif', 41, 2, 2, 23, 30, '2023-12-29 11:25:22'),
(64, 'Scindapsus', 'Généralement confondu avec le Pothos, le Scindapsus présente un niveau de difficulté très faible, ce qui en fait une plante très appréciée en intérieur et par les débutants. Arborant un aspect décoratif intéressant, elle peut être suspendues, en pot ou installée sur treillis. Cette plante tantôt rampante, tantôt grimpante est facile à cultiver en intérieur et possède une croissance rapide. Ses feuilles en forme de coeur, rarement unies et plutôt tachetées ou marbrées, la rendent unique.', 21, 'scindapsus.avif', 22, 3, 3, 23, 32, '2023-12-29 11:26:42'),
(65, 'Strelitzia nicolai', 'Strelitzia nicolai est une espèce d\'oiseau de paradis aux fleurs noires et blanchâtres de la famille des Strelitziaceae originaire d\'Afrique du Sud. Elle adopte un port arborescent sur un tronc qui peut atteindre six mètres de haut d\'où surgissent des feuilles gris-vert disposées en éventail, comme pour l\'arbre du voyageur, et qui peuvent mesurer près de deux mètres de long.', 25, 'strelizia-nicolai.avif', 32, 5, 4, 25, 29, '2023-12-29 11:27:38'),
(66, 'Syngonium', 'Syngonium, surnommé la plante à tête de flèche ou « Arrowhead » est une espèce d\'aroïde qui est populaire auprès des collectionneurs de plantes. L\'espèce est originaire d\'une vaste région d\'Amérique latine, du Mexique à la Bolivie, et naturalisée aux Antilles, en Floride, au Texas, et à Hawaï.', 26, 'syngonium.avif', 25, 2, 3, 22, 26, '2023-12-29 11:29:12'),
(67, ' Zamioculcas', 'Zamioculcas est un genre de plantes à fleurs de la famille des Araceae, contenant la seule espèce Zamioculcas zamiifolia. C\'est une plante herbacée vivace tropicale, originaire d\'Afrique de l\'Est, notamment du Kenya, du KwaZulu-Natal, du Malawi, du Mozambique, de la Tanzanie et du Zimbabwe.', 26, 'zamioculcas.avif', 51, 2, 2, 20, 30, '2023-12-29 11:31:41');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `email` varchar(90) NOT NULL,
  `password` varchar(120) NOT NULL,
  `role` varchar(15) NOT NULL,
  `address` varchar(60) NOT NULL,
  `zip` int(5) NOT NULL,
  `city` varchar(40) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `creationTimestamp` datetime NOT NULL,
  `connexionTimestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `role`, `address`, `zip`, `city`, `phone`, `creationTimestamp`, `connexionTimestamp`) VALUES
(1, 'User0', 'Test', 'user0-test-verdure@gmail.com', '$2b$10$oAG3/Kszj92X5cVAJgo13.6k92u5w3H3BBgK4ef45Lz/4kPjcTu.a', 'user', '32 rue de la paix', 75011, 'Paris', '0909090998', '2020-06-23 10:58:49', '2024-03-29 15:50:50'),
(2, 'Admin', 'Verdure', 'admin-verdure@gmail.com', '$2b$10$jBYHPgU9bd7TiAlfMYwao.jNZWIo5Sxth1oPiB2v36s8oEXshsZpu', 'admin', '10 rue de la paix', 75008, 'Paris', '0651508656', '2020-06-23 11:43:24', '2024-03-29 16:04:30'),
(11, 'User1', 'Test', 'user1-test-verdure@gmail.com', '$2b$10$oAG3/Kszj92X5cVAJgo13.6k92u5w3H3BBgK4ef45Lz/4kPjcTu.a', 'user', '22 rue des prairies', 38400, 'Saint Malo', '0214563258', '2020-06-26 15:52:53', '2024-03-29 15:51:48'),
(20, 'User3', 'Test', 'user3-test-verdure@gmail.com', '$2b$10$aG2DqIS6ZOhgpq5QqW5k3u.QrNC1Q3uqlpt8/lbeJ.SVj7onuRp6O', 'user', '32 rue de la Petite Cour', 75001, 'Paris', '0152124514', '2023-07-03 15:40:02', '2024-03-29 15:06:16'),
(22, 'User4', 'Test', 'user4-test-verdure@gmail.com', '$2b$10$oAG3/Kszj92X5cVAJgo13.6k92u5w3H3BBgK4ef45Lz/4kPjcTu.a', 'user', '36 rue des Petits Marrons', 78945, 'Versailles', '0356124512', '2023-07-05 16:59:55', '2024-03-29 15:18:31');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT pour la table `plants`
--
ALTER TABLE `plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
