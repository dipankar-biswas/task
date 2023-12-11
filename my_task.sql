-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2023 at 10:29 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `code`, `name`) VALUES
(1, '#000000', 'Black'),
(2, '#040720', 'Black Blue'),
(3, '#0C090A', 'Night'),
(4, '#34282C', 'Charcoal'),
(5, '#3B3131', 'Oil'),
(6, '#3A3B3C', 'Dark Gray'),
(7, '#454545', 'Light Black'),
(8, '#413839', 'Black Cat'),
(9, '#3D3C3A', 'Iridium'),
(10, '#463E3F', 'Black Eel'),
(11, '#4C4646', 'Black Cow'),
(12, '#504A4B', 'Gray Wolf'),
(13, '#565051', 'Vampire Gray'),
(14, '#52595D', 'Iron Gray'),
(15, '#5C5858', 'Gray Dolphin'),
(16, '#625D5D', 'Carbon Gray'),
(17, '#666362', 'Ash Gray'),
(18, '#696969', 'DimGray'),
(19, '#686A6C', 'Nardo Gray'),
(20, '#6D6968', 'Cloudy Gray'),
(21, '#726E6D', 'Smokey Gray'),
(22, '#736F6E', 'Alien Gray'),
(23, '#757575', 'Sonic Silver'),
(24, '#797979', 'Platinum Gray'),
(25, '#837E7C', 'Granite'),
(26, '#808080', 'Gray'),
(27, '#848482', 'Battleship Gray'),
(28, '#8C8C8C', 'Dark Gainsboro'),
(29, '#8D918D', 'Gunmetal Gray'),
(30, '#A9A9A9', 'DarkGray'),
(31, '#B6B6B4', 'Gray Cloud'),
(32, '#C0C0C0', 'Silver'),
(33, '#C9C0BB', 'Pale Silver'),
(34, '#D1D0CE', 'Gray Goose'),
(35, '#CECECE', 'Platinum Silver'),
(36, '#D3D3D3', 'LightGray'),
(37, '#DADBDD', 'Silver White'),
(38, '#DCDCDC', 'Gainsboro'),
(39, '#E5E4E2', 'Platinum'),
(40, '#BCC6CC', 'Metallic Silver'),
(41, '#98AFC7', 'Blue Gray'),
(42, '#838996', 'Roman Silver'),
(43, '#778899', 'LightSlateGray'),
(44, '#708090', 'SlateGray'),
(45, '#6D7B8D', 'Rat Gray'),
(46, '#657383', 'Slate Granite Gray'),
(47, '#616D7E', 'Jet Gray'),
(48, '#646D7E', 'Mist Blue'),
(49, '#566D7E', 'Marble Blue'),
(50, '#737CA1', 'Slate Blue Grey'),
(51, '#728FCE', 'Light Purple Blue'),
(52, '#4863A0', 'Azure Blue'),
(53, '#2F539B', 'Estoril Blue'),
(54, '#2B547E', 'Blue Jay'),
(55, '#36454F', 'Charcoal Blue'),
(56, '#29465B', 'Dark Blue Grey'),
(57, '#2B3856', 'Dark Slate'),
(58, '#123456', 'Deep-Sea Blue'),
(59, '#151B54', 'Night Blue'),
(60, '#191970', 'MidnightBlue'),
(61, '#000080', 'Navy'),
(62, '#151B8D', 'Denim Dark Blue'),
(63, '#00008B', 'DarkBlue'),
(64, '#15317E', 'Lapis Blue'),
(65, '#0000A0', 'New Midnight Blue'),
(66, '#0000A5', 'Earth Blue'),
(67, '#0020C2', 'Cobalt Blue'),
(68, '#0000CD', 'MediumBlue'),
(69, '#0041C2', 'Blueberry Blue'),
(70, '#2916F5', 'Canary Blue'),
(71, '#0000FF', 'Blue'),
(72, '#0002FF', 'Samco Blue'),
(73, '#0909FF', 'Bright Blue'),
(74, '#1F45FC', 'Blue Orchid'),
(75, '#2554C7', 'Sapphire Blue'),
(76, '#1569C7', 'Blue Eyes'),
(77, '#1974D2', 'Bright Navy Blue'),
(78, '#2B60DE', 'Balloon Blue'),
(79, '#4169E1', 'RoyalBlue'),
(80, '#2B65EC', 'Ocean Blue'),
(81, '#306EFF', 'Blue Ribbon'),
(82, '#157DEC', 'Blue Dress'),
(83, '#1589FF', 'Neon Blue'),
(84, '#1E90FF', 'DodgerBlue'),
(85, '#368BC1', 'Glacial Blue Ice'),
(86, '#4682B4', 'SteelBlue'),
(87, '#488AC7', 'Silk Blue'),
(88, '#357EC7', 'Windows Blue'),
(89, '#3090C7', 'Blue Ivy'),
(90, '#659EC7', 'Blue Koi'),
(91, '#87AFC7', 'Columbia Blue'),
(92, '#95B9C7', 'Baby Blue'),
(93, '#6495ED', 'CornflowerBlue'),
(94, '#6698FF', 'Sky Blue Dress'),
(95, '#56A5EC', 'Iceberg'),
(96, '#38ACEC', 'Butterfly Blue'),
(97, '#00BFFF', 'DeepSkyBlue'),
(98, '#3BB9FF', 'Midday Blue'),
(99, '#5CB3FF', 'Crystal Blue'),
(100, '#79BAEC', 'Denim Blue'),
(101, '#82CAFF', 'Day Sky Blue'),
(102, '#87CEFA', 'LightSkyBlue'),
(103, '#87CEEB', 'SkyBlue'),
(104, '#A0CFEC', 'Jeans Blue'),
(105, '#B7CEEC', 'Blue Angel'),
(106, '#B4CFEC', 'Pastel Blue'),
(107, '#ADDFFF', 'Light Day Blue'),
(108, '#C2DFFF', 'Sea Blue'),
(109, '#C6DEFF', 'Heavenly Blue'),
(110, '#BDEDFF', 'Robin Egg Blue'),
(111, '#B0E0E6', 'PowderBlue'),
(112, '#AFDCEC', 'Coral Blue'),
(113, '#ADD8E6', 'LightBlue'),
(114, '#B0CFDE', 'LightSteelBlue'),
(115, '#C9DFEC', 'Gulf Blue'),
(116, '#D5D6EA', 'Pastel Light Blue'),
(117, '#E3E4FA', 'Lavender Blue'),
(118, '#DBE9FA', 'White Blue'),
(119, '#E6E6FA', 'Lavender'),
(120, '#EBF4FA', 'Water'),
(121, '#F0F8FF', 'AliceBlue'),
(122, '#F8F8FF', 'GhostWhite'),
(123, '#F0FFFF', 'Azure'),
(124, '#E0FFFF', 'LightCyan'),
(125, '#CCFFFF', 'Light Slate'),
(126, '#9AFEFF', 'Electric Blue'),
(127, '#7DFDFE', 'Tron Blue'),
(128, '#57FEFF', 'Blue Zircon'),
(129, '#00FFFF', 'Cyan'),
(130, '#0AFFFF', 'Bright Cyan'),
(131, '#50EBEC', 'Celeste'),
(132, '#4EE2EC', 'Blue Diamond'),
(133, '#16E2F5', 'Bright Turquoise'),
(134, '#8EEBEC', 'Blue Lagoon'),
(135, '#AFEEEE', 'PaleTurquoise'),
(136, '#CFECEC', 'Pale Blue Lily'),
(137, '#B3D9D9', 'Light Teal'),
(138, '#81D8D0', 'Tiffany Blue'),
(139, '#77BFC7', 'Blue Hosta'),
(140, '#92C7C7', 'Cyan Opaque'),
(141, '#78C7C7', 'Northern Lights Blue'),
(142, '#7BCCB5', 'Blue Green'),
(143, '#66CDAA', 'MediumAquaMarine'),
(144, '#93E9BE', 'Aqua Seafoam Green'),
(145, '#AAF0D1', 'Magic Mint'),
(146, '#93FFE8', 'Light Aquamarine'),
(147, '#7FFFD4', 'Aquamarine'),
(148, '#01F9C6', 'Bright Teal'),
(149, '#40E0D0', 'Turquoise'),
(150, '#48D1CC', 'MediumTurquoise'),
(151, '#48CCCD', 'Deep Turquoise'),
(152, '#46C7C7', 'Jellyfish'),
(153, '#43C6DB', 'Blue Turquoise'),
(154, '#00CED1', 'DarkTurquoise'),
(155, '#43BFC7', 'Macaw Blue Green'),
(156, '#20B2AA', 'LightSeaGreen'),
(157, '#3EA99F', 'Seafoam Green'),
(158, '#5F9EA0', 'CadetBlue'),
(159, '#3B9C9C', 'Deep-Sea'),
(160, '#008B8B', 'DarkCyan'),
(161, '#00827F', 'Teal Green'),
(162, '#008080', 'Teal'),
(163, '#007C80', 'Teal Blue'),
(164, '#045F5F', 'Medium Teal'),
(165, '#045D5D', 'Dark Teal'),
(166, '#033E3E', 'Deep Teal'),
(167, '#25383C', 'DarkSlateGray'),
(168, '#2C3539', 'Gunmetal'),
(169, '#3C565B', 'Blue Moss Green'),
(170, '#4C787E', 'Beetle Green'),
(171, '#5E7D7E', 'Grayish Turquoise'),
(172, '#307D7E', 'Greenish Blue'),
(173, '#348781', 'Aquamarine Stone'),
(174, '#438D80', 'Sea Turtle Green'),
(175, '#4E8975', 'Dull-Sea Green'),
(176, '#1F6357', 'Dark Green Blue'),
(177, '#306754', 'Deep-Sea Green'),
(178, '#006A4E', 'Bottle Green'),
(179, '#2E8B57', 'SeaGreen'),
(180, '#1B8A6B', 'Elf Green'),
(181, '#31906E', 'Dark Mint'),
(182, '#00A36C', 'Jade'),
(183, '#34A56F', 'Earth Green'),
(184, '#1AA260', 'Chrome Green'),
(185, '#3EB489', 'Mint'),
(186, '#50C878', 'Emerald'),
(187, '#22CE83', 'Isle Of Man Green'),
(188, '#3CB371', 'MediumSeaGreen'),
(189, '#7C9D8E', 'Metallic Green'),
(190, '#78866B', 'Camouflage Green'),
(191, '#848B79', 'Sage Green'),
(192, '#617C58', 'Hazel Green'),
(193, '#728C00', 'Venom Green'),
(194, '#6B8E23', 'OliveDrab'),
(195, '#808000', 'Olive'),
(196, '#555D50', 'Ebony'),
(197, '#556B2F', 'DarkOliveGreen'),
(198, '#4E5B31', 'Military Green'),
(199, '#3A5F0B', 'Green Leaves'),
(200, '#4B5320', 'Army Green'),
(201, '#667C26', 'Fern Green'),
(202, '#4E9258', 'Fall Forest Green'),
(203, '#08A04B', 'Irish Green'),
(204, '#387C44', 'Pine Green'),
(205, '#347235', 'Medium Forest Green'),
(206, '#27742C', 'Racing Green'),
(207, '#347C2C', 'Jungle Green'),
(208, '#227442', 'Cactus Green'),
(209, '#228B22', 'ForestGreen'),
(210, '#008000', 'Green'),
(211, '#006400', 'DarkGreen'),
(212, '#056608', 'Deep Green'),
(213, '#046307', 'Deep Emerald Green'),
(214, '#355E3B', 'Hunter Green'),
(215, '#254117', 'Dark Forest Green'),
(216, '#004225', 'Lotus Green'),
(217, '#437C17', 'Seaweed Green'),
(218, '#347C17', 'Shamrock Green'),
(219, '#6AA121', 'Green Onion'),
(220, '#8A9A5B', 'Moss Green'),
(221, '#3F9B0B', 'Grass Green'),
(222, '#4AA02C', 'Green Pepper'),
(223, '#41A317', 'Dark Lime Green'),
(224, '#12AD2B', 'Parrot Green'),
(225, '#3EA055', 'Clover Green'),
(226, '#73A16C', 'Dinosaur Green'),
(227, '#6CBB3C', 'Green Snake'),
(228, '#6CC417', 'Alien Green'),
(229, '#4CC417', 'Green Apple'),
(230, '#32CD32', 'LimeGreen'),
(231, '#52D017', 'Pea Green'),
(232, '#4CC552', 'Kelly Green'),
(233, '#54C571', 'Zombie Green'),
(234, '#89C35C', 'Green Peas'),
(235, '#85BB65', 'Dollar Bill Green'),
(236, '#99C68E', 'Frog Green'),
(237, '#A0D6B4', 'Turquoise Green'),
(238, '#8FBC8F', 'DarkSeaGreen'),
(239, '#829F82', 'Basil Green'),
(240, '#A2AD9C', 'Gray Green'),
(241, '#B8BC86', 'Light Olive Green'),
(242, '#9CB071', 'Iguana Green'),
(243, '#8FB31D', 'Citron Green'),
(244, '#B0BF1A', 'Acid Green'),
(245, '#B2C248', 'Avocado Green'),
(246, '#9DC209', 'Pistachio Green'),
(247, '#A1C935', 'Salad Green'),
(248, '#9ACD32', 'YellowGreen'),
(249, '#77DD77', 'Pastel Green'),
(250, '#7FE817', 'Hummingbird Green'),
(251, '#59E817', 'Nebula Green'),
(252, '#57E964', 'Stoplight Go Green'),
(253, '#16F529', 'Neon Green'),
(254, '#5EFB6E', 'Jade Green'),
(255, '#36F57F', 'Lime Mint Green'),
(256, '#00FF7F', 'SpringGreen'),
(257, '#00FA9A', 'MediumSpringGreen'),
(258, '#12E193', 'Aqua Green'),
(259, '#5FFB17', 'Emerald Green'),
(260, '#00FF00', 'Lime'),
(261, '#7CFC00', 'LawnGreen'),
(262, '#66FF00', 'Bright Green'),
(263, '#7FFF00', 'Chartreuse'),
(264, '#87F717', 'Yellow Lawn Green'),
(265, '#98F516', 'Aloe Vera Green'),
(266, '#B1FB17', 'Dull Green Yellow'),
(267, '#ADF802', 'Lemon Green'),
(268, '#ADFF2F', 'GreenYellow'),
(269, '#BDF516', 'Chameleon Green'),
(270, '#DAEE01', 'Neon Yellow Green'),
(271, '#E2F516', 'Yellow Green Grosbeak'),
(272, '#CCFB5D', 'Tea Green'),
(273, '#BCE954', 'Slime Green'),
(274, '#64E986', 'Algae Green'),
(275, '#90EE90', 'LightGreen'),
(276, '#6AFB92', 'Dragon Green'),
(277, '#98FB98', 'PaleGreen'),
(278, '#98FF98', 'Mint Green'),
(279, '#B5EAAA', 'Green Thumb'),
(280, '#E3F9A6', 'Organic Brown'),
(281, '#C3FDB8', 'Light Jade'),
(282, '#C2E5D3', 'Light Mint Green'),
(283, '#DBF9DB', 'Light Rose Green'),
(284, '#E8F1D4', 'Chrome White'),
(285, '#F0FFF0', 'HoneyDew'),
(286, '#F5FFFA', 'MintCream'),
(287, '#FFFACD', 'LemonChiffon'),
(288, '#FFFFC2', 'Parchment'),
(289, '#FFFFCC', 'Cream'),
(290, '#FFFDD0', 'Cream White'),
(291, '#FAFAD2', 'LightGoldenRodYellow'),
(292, '#FFFFE0', 'LightYellow'),
(293, '#F5F5DC', 'Beige'),
(294, '#FFF8DC', 'Cornsilk'),
(295, '#FBF6D9', 'Blonde'),
(296, '#FAEBD7', 'AntiqueWhite'),
(297, '#FFF0DB', 'Light Beige'),
(298, '#FFEFD5', 'PapayaWhip'),
(299, '#F7E7CE', 'Champagne'),
(300, '#FFEBCD', 'BlanchedAlmond'),
(301, '#FFE4C4', 'Bisque'),
(302, '#F5DEB3', 'Wheat'),
(303, '#FFE4B5', 'Moccasin'),
(304, '#FFE5B4', 'Peach'),
(305, '#FED8B1', 'Light Orange'),
(306, '#FFDAB9', 'PeachPuff'),
(307, '#FBD5AB', 'Coral Peach'),
(308, '#FFDEAD', 'NavajoWhite'),
(309, '#FBE7A1', 'Golden Blonde'),
(310, '#F3E3C3', 'Golden Silk'),
(311, '#F0E2B6', 'Dark Blonde'),
(312, '#F1E5AC', 'Light Gold'),
(313, '#F3E5AB', 'Vanilla'),
(314, '#ECE5B6', 'Tan Brown'),
(315, '#E8E4C9', 'Dirty White'),
(316, '#EEE8AA', 'PaleGoldenRod'),
(317, '#F0E68C', 'Khaki'),
(318, '#EDDA74', 'Cardboard Brown'),
(319, '#EDE275', 'Harvest Gold'),
(320, '#FFE87C', 'Sun Yellow'),
(321, '#FFF380', 'Corn Yellow'),
(322, '#FAF884', 'Pastel Yellow'),
(323, '#FFFF33', 'Neon Yellow'),
(324, '#FFFF00', 'Yellow'),
(325, '#FFEF00', 'Canary Yellow'),
(326, '#F5E216', 'Banana Yellow'),
(327, '#FFDB58', 'Mustard Yellow'),
(328, '#FFDF00', 'Golden Yellow'),
(329, '#F9DB24', 'Bold Yellow'),
(330, '#EED202', 'Safety Yellow'),
(331, '#FFD801', 'Rubber Ducky Yellow'),
(332, '#FFD700', 'Gold'),
(333, '#FDD017', 'Bright Gold'),
(334, '#FFCE44', 'Chrome Gold'),
(335, '#EAC117', 'Golden Brown'),
(336, '#F6BE00', 'Deep Yellow'),
(337, '#F2BB66', 'Macaroni and Cheese'),
(338, '#FBB917', 'Saffron'),
(339, '#FDBD01', 'Neon Gold'),
(340, '#FBB117', 'Beer'),
(341, '#FFAE42', 'Yellow Orange'),
(342, '#FFA62F', 'Cantaloupe'),
(343, '#FFA600', 'Cheese Orange'),
(344, '#FFA500', 'Orange'),
(345, '#EE9A4D', 'Brown Sand'),
(346, '#F4A460', 'SandyBrown'),
(347, '#E2A76F', 'Brown Sugar'),
(348, '#C19A6B', 'Camel Brown'),
(349, '#E6BF83', 'Deer Brown'),
(350, '#DEB887', 'BurlyWood'),
(351, '#D2B48C', 'Tan'),
(352, '#C8AD7F', 'Light French Beige'),
(353, '#C2B280', 'Sand'),
(354, '#BCB88A', 'Sage'),
(355, '#C8B560', 'Fall Leaf Brown'),
(356, '#C9BE62', 'Ginger Brown'),
(357, '#C9AE5D', 'Bronze Gold'),
(358, '#BDB76B', 'DarkKhaki'),
(359, '#BAB86C', 'Olive Green'),
(360, '#B5A642', 'Brass'),
(361, '#C7A317', 'Cookie Brown'),
(362, '#D4AF37', 'Metallic Gold'),
(363, '#E9AB17', 'Bee Yellow'),
(364, '#E8A317', 'School Bus Yellow'),
(365, '#DAA520', 'GoldenRod'),
(366, '#D4A017', 'Orange Gold'),
(367, '#C68E17', 'Caramel'),
(368, '#B8860B', 'DarkGoldenRod'),
(369, '#C58917', 'Cinnamon'),
(370, '#CD853F', 'Peru'),
(371, '#CD7F32', 'Bronze'),
(372, '#C88141', 'Tiger Orange'),
(373, '#B87333', 'Copper'),
(374, '#AA6C39', 'Dark Gold'),
(375, '#A97142', 'Metallic Bronze'),
(376, '#AB784E', 'Dark Almond'),
(377, '#966F33', 'Wood'),
(378, '#806517', 'Oak Brown'),
(379, '#665D1E', 'Antique Bronze'),
(380, '#8E7618', 'Hazel'),
(381, '#8B8000', 'Dark Yellow'),
(382, '#827839', 'Dark Moccasin'),
(383, '#8A865D', 'Khaki Green'),
(384, '#93917C', 'Millennium Jade'),
(385, '#9F8C76', 'Dark Beige'),
(386, '#AF9B60', 'Bullet Shell'),
(387, '#827B60', 'Army Brown'),
(388, '#786D5F', 'Sandstone'),
(389, '#483C32', 'Taupe'),
(390, '#4A412A', 'Dark Grayish Olive'),
(391, '#493D26', 'Mocha'),
(392, '#513B1C', 'Milk Chocolate'),
(393, '#3D3635', 'Gray Brown'),
(394, '#3B2F2F', 'Dark Coffee'),
(395, '#49413F', 'Western Charcoal'),
(396, '#43302E', 'Old Burgundy'),
(397, '#622F22', 'Red Brown'),
(398, '#5C3317', 'Bakers Brown'),
(399, '#644117', 'Pullman Brown'),
(400, '#654321', 'Dark Brown'),
(401, '#704214', 'Sepia Brown'),
(402, '#804A00', 'Dark Bronze'),
(403, '#6F4E37', 'Coffee'),
(404, '#835C3B', 'Brown Bear'),
(405, '#7F5217', 'Red Dirt'),
(406, '#7F462C', 'Sepia'),
(407, '#A0522D', 'Sienna'),
(408, '#8B4513', 'SaddleBrown'),
(409, '#8A4117', 'Dark Sienna'),
(410, '#7E3817', 'Sangria'),
(411, '#7E3517', 'Blood Red'),
(412, '#954535', 'Chestnut'),
(413, '#9E4638', 'Coral Brown'),
(414, '#C34A2C', 'Chestnut Red'),
(415, '#B83C08', 'Ginger Red'),
(416, '#C04000', 'Mahogany'),
(417, '#EB5406', 'Red Gold'),
(418, '#C35817', 'Red Fox'),
(419, '#B86500', 'Dark Bisque'),
(420, '#B5651D', 'Light Brown'),
(421, '#B76734', 'Petra Gold'),
(422, '#C36241', 'Rust'),
(423, '#CB6D51', 'Copper Red'),
(424, '#C47451', 'Orange Salmon'),
(425, '#D2691E', 'Chocolate'),
(426, '#CC6600', 'Sedona'),
(427, '#E56717', 'Papaya Orange'),
(428, '#E66C2C', 'Halloween Orange'),
(429, '#FF6700', 'Neon Orange'),
(430, '#FF5F1F', 'Bright Orange'),
(431, '#FE632A', 'Fluro Orange'),
(432, '#F87217', 'Pumpkin Orange'),
(433, '#FF7900', 'Safety Orange'),
(434, '#F88017', 'Carrot Orange'),
(435, '#FF8C00', 'DarkOrange'),
(436, '#F87431', 'Construction Cone Orange'),
(437, '#FF7722', 'Indian Saffron'),
(438, '#E67451', 'Sunrise Orange'),
(439, '#FF8040', 'Mango Orange'),
(440, '#FF7F50', 'Coral'),
(441, '#F88158', 'Basket Ball Orange'),
(442, '#F9966B', 'Light Salmon Rose'),
(443, '#FFA07A', 'LightSalmon'),
(444, '#F89880', 'Pink Orange'),
(445, '#E9967A', 'DarkSalmon'),
(446, '#E78A61', 'Tangerine'),
(447, '#DA8A67', 'Light Copper'),
(448, '#FF8674', 'Salmon Pink'),
(449, '#FA8072', 'Salmon'),
(450, '#F98B88', 'Peach Pink'),
(451, '#F08080', 'LightCoral'),
(452, '#F67280', 'Pastel Red'),
(453, '#E77471', 'Pink Coral'),
(454, '#F75D59', 'Bean Red'),
(455, '#E55451', 'Valentine Red'),
(456, '#CD5C5C', 'IndianRed'),
(457, '#FF6347', 'Tomato'),
(458, '#E55B3C', 'Shocking Orange'),
(459, '#FF4500', 'OrangeRed'),
(460, '#FF0000', 'Red'),
(461, '#FD1C03', 'Neon Red'),
(462, '#FF2400', 'Scarlet Red'),
(463, '#F62217', 'Ruby Red'),
(464, '#F70D1A', 'Ferrari Red'),
(465, '#F62817', 'Fire Engine Red'),
(466, '#E42217', 'Lava Red'),
(467, '#E41B17', 'Love Red'),
(468, '#DC381F', 'Grapefruit'),
(469, '#C24641', 'Cherry Red'),
(470, '#C11B17', 'Chilli Pepper'),
(471, '#B22222', 'FireBrick'),
(472, '#B21807', 'Tomato Sauce Red'),
(473, '#A52A2A', 'Brown'),
(474, '#A70D2A', 'Carbon Red'),
(475, '#9F000F', 'Cranberry'),
(476, '#931314', 'Saffron Red'),
(477, '#990000', 'Crimson Red'),
(478, '#990012', 'Red Wine'),
(479, '#8B0000', 'DarkRed'),
(480, '#8F0B0B', 'Maroon Red'),
(481, '#800000', 'Maroon'),
(482, '#8C001A', 'Burgundy'),
(483, '#7E191B', 'Vermilion'),
(484, '#800517', 'Deep Red'),
(485, '#733635', 'Garnet Red'),
(486, '#660000', 'Red Blood'),
(487, '#551606', 'Blood Night'),
(488, '#560319', 'Dark Scarlet'),
(489, '#3F000F', 'Chocolate Brown'),
(490, '#3D0C02', 'Black Bean'),
(491, '#2F0909', 'Dark Maroon'),
(492, '#2B1B17', 'Midnight'),
(493, '#550A35', 'Purple Lily'),
(494, '#810541', 'Purple Maroon'),
(495, '#7D0541', 'Plum Pie'),
(496, '#7D0552', 'Plum Velvet'),
(497, '#872657', 'Dark Raspberry'),
(498, '#7E354D', 'Velvet Maroon'),
(499, '#7F4E52', 'Rosy-Finch'),
(500, '#7F525D', 'Dull Purple'),
(501, '#7F5A58', 'Puce'),
(502, '#997070', 'Rose Dust'),
(503, '#B1907F', 'Pastel Brown'),
(504, '#B38481', 'Rosy Pink'),
(505, '#BC8F8F', 'RosyBrown'),
(506, '#C5908E', 'Khaki Rose'),
(507, '#C48793', 'Lipstick Pink'),
(508, '#CC7A8B', 'Dusky Pink'),
(509, '#C48189', 'Pink Brown'),
(510, '#C08081', 'Old Rose'),
(511, '#D58A94', 'Dusty Pink'),
(512, '#E799A3', 'Pink Daisy'),
(513, '#E8ADAA', 'Rose'),
(514, '#C9A9A6', 'Dusty Rose'),
(515, '#C4AEAD', 'Silver Pink'),
(516, '#E6C7C2', 'Gold Pink'),
(517, '#ECC5C0', 'Rose Gold'),
(518, '#FFCBA4', 'Deep Peach'),
(519, '#F8B88B', 'Pastel Orange'),
(520, '#EDC9AF', 'Desert Sand'),
(521, '#FFDDCA', 'Unbleached Silk'),
(522, '#FDD7E4', 'Pig Pink'),
(523, '#F2D4D7', 'Pale Pink'),
(524, '#FFE6E8', 'Blush'),
(525, '#FFE4E1', 'MistyRose'),
(526, '#FFDFDD', 'Pink Bubble Gum'),
(527, '#FBCFCD', 'Light Rose'),
(528, '#FFCCCB', 'Light Red'),
(529, '#F6C6BD', 'Warm Pink'),
(530, '#FBBBB9', 'Deep Rose'),
(531, '#FFC0CB', 'Pink'),
(532, '#FFB6C1', 'LightPink'),
(533, '#FFB8BF', 'Soft Pink'),
(534, '#FFB2D0', 'Powder Pink'),
(535, '#FAAFBE', 'Donut Pink'),
(536, '#FAAFBA', 'Baby Pink'),
(537, '#F9A7B0', 'Flamingo Pink'),
(538, '#FEA3AA', 'Pastel Pink'),
(539, '#E7A1B0', 'Rose Pink'),
(540, '#E38AAE', 'Cadillac Pink'),
(541, '#F778A1', 'Carnation Pink'),
(542, '#E5788F', 'Pastel Rose'),
(543, '#E56E94', 'Blush Red'),
(544, '#DB7093', 'PaleVioletRed'),
(545, '#D16587', 'Purple Pink'),
(546, '#C25A7C', 'Tulip Pink'),
(547, '#C25283', 'Bashful Pink'),
(548, '#E75480', 'Dark Pink'),
(549, '#F660AB', 'Dark Hot Pink'),
(550, '#FF69B4', 'HotPink'),
(551, '#FC6C85', 'Watermelon Pink'),
(552, '#F6358A', 'Violet Red'),
(553, '#F52887', 'Hot Deep Pink'),
(554, '#FF007F', 'Bright Pink'),
(555, '#FF1493', 'DeepPink'),
(556, '#F535AA', 'Neon Pink'),
(557, '#FF33AA', 'Chrome Pink'),
(558, '#FD349C', 'Neon Hot Pink'),
(559, '#E45E9D', 'Pink Cupcake'),
(560, '#E759AC', 'Royal Pink'),
(561, '#E3319D', 'Dimorphotheca Magenta'),
(562, '#DA1884', 'Barbie Pink'),
(563, '#E4287C', 'Pink Lemonade'),
(564, '#FA2A55', 'Red Pink'),
(565, '#E30B5D', 'Raspberry'),
(566, '#DC143C', 'Crimson'),
(567, '#C32148', 'Bright Maroon'),
(568, '#C21E56', 'Rose Red'),
(569, '#C12869', 'Rogue Pink'),
(570, '#C12267', 'Burnt Pink'),
(571, '#CA226B', 'Pink Violet'),
(572, '#CC338B', 'Magenta Pink'),
(573, '#C71585', 'MediumVioletRed'),
(574, '#C12283', 'Dark Carnation Pink'),
(575, '#B3446C', 'Raspberry Purple'),
(576, '#B93B8F', 'Pink Plum'),
(577, '#DA70D6', 'Orchid'),
(578, '#DF73D4', 'Deep Mauve'),
(579, '#EE82EE', 'Violet'),
(580, '#FF77FF', 'Fuchsia Pink'),
(581, '#F433FF', 'Bright Neon Pink'),
(582, '#FF00FF', 'Magenta'),
(583, '#E238EC', 'Crimson Purple'),
(584, '#D462FF', 'Heliotrope Purple'),
(585, '#C45AEC', 'Tyrian Purple'),
(586, '#BA55D3', 'MediumOrchid'),
(587, '#A74AC7', 'Purple Flower'),
(588, '#B048B5', 'Orchid Purple'),
(589, '#B666D2', 'Rich Lilac'),
(590, '#D291BC', 'Pastel Violet'),
(591, '#A17188', 'Rosy'),
(592, '#915F6D', 'Mauve Taupe'),
(593, '#7E587E', 'Viola Purple'),
(594, '#614051', 'Eggplant'),
(595, '#583759', 'Plum Purple'),
(596, '#5E5A80', 'Grape'),
(597, '#4E5180', 'Purple Navy'),
(598, '#6A5ACD', 'SlateBlue'),
(599, '#6960EC', 'Blue Lotus'),
(600, '#5865F2', 'Blurple'),
(601, '#736AFF', 'Light Slate Blue'),
(602, '#7B68EE', 'MediumSlateBlue'),
(603, '#7575CF', 'Periwinkle Purple'),
(604, '#6667AB', 'Very Peri'),
(605, '#6F2DA8', 'Bright Grape'),
(606, '#6A0DAD', 'Bright Purple'),
(607, '#6C2DC7', 'Purple Amethyst'),
(608, '#5539CC', 'Dark Blurple'),
(609, '#5453A6', 'Deep Periwinkle'),
(610, '#483D8B', 'DarkSlateBlue'),
(611, '#4E387E', 'Purple Haze'),
(612, '#571B7E', 'Purple Iris'),
(613, '#4B0150', 'Dark Purple'),
(614, '#36013F', 'Deep Purple'),
(615, '#2E1A47', 'Midnight Purple'),
(616, '#461B7E', 'Purple Monster'),
(617, '#4B0082', 'Indigo'),
(618, '#342D7E', 'Blue Whale'),
(619, '#663399', 'RebeccaPurple'),
(620, '#6A287E', 'Purple Jam'),
(621, '#8B008B', 'DarkMagenta'),
(622, '#800080', 'Purple'),
(623, '#86608E', 'French Lilac'),
(624, '#9932CC', 'DarkOrchid'),
(625, '#9400D3', 'DarkViolet'),
(626, '#8D38C9', 'Purple Violet'),
(627, '#A23BEC', 'Jasmine Purple'),
(628, '#B041FF', 'Purple Daffodil'),
(629, '#842DCE', 'Clematis Violet'),
(630, '#8A2BE2', 'BlueViolet'),
(631, '#7A5DC7', 'Purple Sage Bush'),
(632, '#7F38EC', 'Lovely Purple'),
(633, '#9D00FF', 'Neon Purple'),
(634, '#8E35EF', 'Purple Plum'),
(635, '#893BFF', 'Aztech Purple'),
(636, '#9370DB', 'MediumPurple'),
(637, '#8467D7', 'Light Purple'),
(638, '#9172EC', 'Crocus Purple'),
(639, '#9E7BFF', 'Purple Mimosa'),
(640, '#967BB6', 'Lavender Purple'),
(641, '#B09FCA', 'Rose Purple'),
(642, '#CCCCFF', 'Periwinkle'),
(643, '#DCD0FF', 'Pale Lilac'),
(644, '#C8A2C8', 'Lilac'),
(645, '#E0B0FF', 'Mauve'),
(646, '#D891EF', 'Bright Lilac'),
(647, '#C38EC7', 'Purple Dragon'),
(648, '#DDA0DD', 'Plum'),
(649, '#E6A9EC', 'Blush Pink'),
(650, '#F2A2E8', 'Pastel Purple'),
(651, '#F9B7FF', 'Blossom Pink'),
(652, '#C6AEC7', 'Wisteria Purple'),
(653, '#D2B9D3', 'Purple Thistle'),
(654, '#D8BFD8', 'Thistle'),
(655, '#DFD3E3', 'Purple White'),
(656, '#E9CFEC', 'Periwinkle Pink'),
(657, '#FCDFFF', 'Cotton Candy'),
(658, '#EBDDE2', 'Lavender Pinocchio'),
(659, '#E1D9D1', 'Dark White'),
(660, '#E9E4D4', 'Ash White'),
(661, '#EFEBD8', 'Warm White'),
(662, '#EDE6D6', 'White Chocolate'),
(663, '#F8F0E3', 'Off White'),
(664, '#FAF0DD', 'Soft Ivory'),
(665, '#FFF8E7', 'Cosmic Latte'),
(666, '#F8F6F0', 'Pearl White'),
(667, '#F3E8EA', 'Red White'),
(668, '#FFF0F5', 'LavenderBlush'),
(669, '#FDEEF4', 'Pearl'),
(670, '#FFF9E3', 'Egg Shell'),
(671, '#FEF0E3', 'OldLace'),
(672, '#EAEEE9', 'White Ice'),
(673, '#FAF0E6', 'Linen'),
(674, '#FFF5EE', 'SeaShell'),
(675, '#F9F6EE', 'Bone White'),
(676, '#FAF5EF', 'Rice'),
(677, '#FFFAF0', 'FloralWhite'),
(678, '#FFFFF0', 'Ivory'),
(679, '#FFFFF4', 'White Gold'),
(680, '#FFFFF7', 'Light White'),
(681, '#F5F5F5', 'WhiteSmoke'),
(682, '#FBFBF9', 'Cotton'),
(683, '#FFFAFA', 'Snow'),
(684, '#FEFCFF', 'Milk White'),
(685, '#FFFEFA', 'Half White'),
(686, '#FFFFFF', 'White');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_compresses`
--

CREATE TABLE `image_compresses` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_compresses`
--

INSERT INTO `image_compresses` (`id`, `image`, `created_at`, `updated_at`) VALUES
(17, 'uploads/compress/banner.webp', '2023-09-27 00:28:30', '2023-09-27 00:28:30'),
(18, 'uploads/compress/testimonial04.webp', '2023-09-27 00:28:52', '2023-09-27 00:28:52'),
(20, 'uploads/compress/testimonial02.webp', '2023-09-27 00:29:17', '2023-09-27 00:29:17'),
(21, 'uploads/compress/testimonial01.webp', '2023-09-27 00:29:27', '2023-09-27 00:29:27'),
(22, 'uploads/compress/testimonial03.webp', '2023-09-27 00:38:03', '2023-09-27 00:38:03'),
(23, 'uploads/compress/portfolio09.webp', '2023-09-27 00:39:15', '2023-09-27 00:39:15'),
(24, 'uploads/compress/portfolio08.webp', '2023-09-27 00:39:29', '2023-09-27 00:39:29'),
(25, 'uploads/compress/portfolio07.webp', '2023-09-27 00:39:50', '2023-09-27 00:39:50'),
(26, 'uploads/compress/portfolio06.webp', '2023-09-27 00:40:02', '2023-09-27 00:40:02'),
(27, 'uploads/compress/portfolio04.webp', '2023-09-27 00:40:10', '2023-09-27 00:40:10'),
(28, 'uploads/compress/portfolio02.webp', '2023-09-27 00:40:18', '2023-09-27 00:40:18'),
(29, 'uploads/compress/portfolio01.webp', '2023-09-27 00:40:26', '2023-09-27 00:40:26'),
(32, 'uploads/compress/gallery12.webp', '2023-09-27 00:42:29', '2023-09-27 00:42:29'),
(33, 'uploads/compress/gallery11.webp', '2023-09-27 00:42:39', '2023-09-27 00:42:39'),
(34, 'uploads/compress/gallery10.webp', '2023-09-27 00:42:47', '2023-09-27 00:42:47'),
(35, 'uploads/compress/gallery09.webp', '2023-09-27 00:42:57', '2023-09-27 00:42:57'),
(36, 'uploads/compress/gallery08.webp', '2023-09-27 00:43:09', '2023-09-27 00:43:09'),
(37, 'uploads/compress/gallery07.webp', '2023-09-27 00:43:21', '2023-09-27 00:43:21'),
(38, 'uploads/compress/gallery06.webp', '2023-09-27 00:43:35', '2023-09-27 00:43:35'),
(39, 'uploads/compress/gallery05.webp', '2023-09-27 00:43:49', '2023-09-27 00:43:49'),
(40, 'uploads/compress/gallery04.webp', '2023-09-27 00:44:02', '2023-09-27 00:44:02'),
(41, 'uploads/compress/gallery03.webp', '2023-09-27 00:44:13', '2023-09-27 00:44:13'),
(42, 'uploads/compress/gallery02.webp', '2023-09-27 00:44:24', '2023-09-27 00:44:24'),
(43, 'uploads/compress/gallery01.webp', '2023-09-27 00:44:35', '2023-09-27 00:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_05_23_053718_create_products_table', 2),
(15, '2023_05_23_063049_create_product_carts_table', 3),
(44, '2023_05_27_045151_create_orders_table', 4),
(45, '2023_05_27_073350_create_order_details_table', 4),
(47, '2023_05_27_121305_create_multi_images_table', 5),
(48, '2023_07_16_084247_create_brands_table', 6),
(49, '2023_07_16_084812_create_categories_table', 6),
(50, '2023_07_25_081023_create_image_compresses_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint UNSIGNED NOT NULL,
  `multi_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `multi_img`, `created_at`, `updated_at`) VALUES
(1, 'uploads/multi/6aee38c204d9300e56791fed829c3430.jpg', '2023-05-27 23:40:44', '2023-07-16 00:26:03'),
(2, 'uploads/multi/ef6d934a83de6e47873a969b1eef15f1.jpg', '2023-05-27 23:40:44', '2023-07-16 00:26:03'),
(3, 'uploads/multi/4b6d466e799acfa1c924fafb21a43109.jpg', '2023-05-27 23:40:44', '2023-07-16 00:26:03'),
(4, 'uploads/multi/16ee943679ec60dca64f376ec3e56989.jpg', '2023-05-27 23:40:44', '2023-07-16 00:26:03'),
(6, 'uploads/multi/8cf405cb9bb59b7e1fbd34b6c47a718c.jpg', '2023-05-27 23:54:37', '2023-07-16 00:26:03'),
(7, 'uploads/multi/32da649f4a6f0c6ce9e040c8167ec4c6.jpg', '2023-05-27 23:54:37', '2023-07-16 00:26:03'),
(8, 'uploads/multi/a16d311bacf328b7d235fc57310080b0.jpg', '2023-05-28 00:24:42', '2023-07-16 00:26:03'),
(9, 'uploads/multi/1eaea3b9d8871cef85630f71acd6a61f.jpg', '2023-05-28 00:24:42', '2023-07-16 00:26:03'),
(10, 'uploads/multi/830c64ebb90601173847b25d98690aca.jpg', '2023-05-28 00:25:11', '2023-07-16 00:26:03'),
(11, 'uploads/multi/b28e928a45e5719de13afee066a22e90.jpg', '2023-05-28 00:25:12', '2023-07-16 00:26:03'),
(12, 'uploads/multi/b84c08d4a3f59985767debc6e1f7e325.jpg', '2023-05-28 00:25:12', '2023-07-16 00:26:03'),
(13, 'uploads/multi/ERFTWERTY.jpg', '2023-06-11 02:40:04', '2023-07-16 00:26:03'),
(17, 'uploads/multi/8K-Ultra-HD-HDMI-compatible-V2-1-Cable-8K-60-4K-120Hz-Video-for-Xiaomi-Mi.jpg_ (1).webp', '2023-07-10 03:38:15', '2023-07-16 00:26:03'),
(18, 'uploads/multi/8K-Ultra-HD-HDMI-compatible-V2-1-Cable-8K-60-4K-120Hz-Video-for-Xiaomi-Mi.jpg_ (2).webp', '2023-07-10 03:38:15', '2023-07-16 00:26:03'),
(19, 'uploads/multi/8K-Ultra-HD-HDMI-compatible-V2-1-Cable-8K-60-4K-120Hz-Video-for-Xiaomi-Mi.jpg_ (3).webp', '2023-07-10 03:38:15', '2023-07-16 00:26:03'),
(20, 'uploads/multi/8K-Ultra-HD-HDMI-compatible-V2-1-Cable-8K-60-4K-120Hz-Video-for-Xiaomi-Mi.jpg_ (4).webp', '2023-07-10 03:38:15', '2023-07-16 00:26:03'),
(21, 'uploads/multi/8K-Ultra-HD-HDMI-compatible-V2-1-Cable-8K-60-4K-120Hz-Video-for-Xiaomi-Mi.jpg_ (5).webp', '2023-07-10 03:38:15', '2023-07-16 00:26:03'),
(22, 'uploads/multi/8K-Ultra-HD-HDMI-compatible-V2-1-Cable-8K-60-4K-120Hz-Video-for-Xiaomi-Mi.jpg_.webp', '2023-07-10 03:38:15', '2023-07-16 00:26:03'),
(23, 'uploads/multi/LINNHUE-Fishing-Reel-HE500-7000-Max-Drag-10kg-Metal-Spool-Grip-Spinning-Reel-For-Carp-Reel.jpg_ (1).webp', '2023-07-10 03:42:57', '2023-07-16 00:26:03'),
(24, 'uploads/multi/LINNHUE-Fishing-Reel-HE500-7000-Max-Drag-10kg-Metal-Spool-Grip-Spinning-Reel-For-Carp-Reel.jpg_.webp', '2023-07-10 03:42:57', '2023-07-16 00:26:03'),
(25, 'uploads/multi/Men-S-Classic-Striped-Polo-Shirt-Cotton-Short-Sleeve-2023-Summer-Plus-Oversize-M-XXXXL.jpg_ (1).webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(26, 'uploads/multi/Men-S-Classic-Striped-Polo-Shirt-Cotton-Short-Sleeve-2023-Summer-Plus-Oversize-M-XXXXL.jpg_.webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(27, 'uploads/multi/Portable-4-Port-USB-3-0-Hub-High-Speed-USB-Cable-Divider-Charger-Extension-Cables-USB.jpg_ (1).webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(28, 'uploads/multi/Portable-4-Port-USB-3-0-Hub-High-Speed-USB-Cable-Divider-Charger-Extension-Cables-USB.jpg_ (2).webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(29, 'uploads/multi/Portable-4-Port-USB-3-0-Hub-High-Speed-USB-Cable-Divider-Charger-Extension-Cables-USB.jpg_ (3).webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(30, 'uploads/multi/Portable-4-Port-USB-3-0-Hub-High-Speed-USB-Cable-Divider-Charger-Extension-Cables-USB.jpg_ (4).webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(31, 'uploads/multi/Portable-4-Port-USB-3-0-Hub-High-Speed-USB-Cable-Divider-Charger-Extension-Cables-USB.jpg_ (5).webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(32, 'uploads/multi/Portable-4-Port-USB-3-0-Hub-High-Speed-USB-Cable-Divider-Charger-Extension-Cables-USB.jpg_.webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(33, 'uploads/multi/Xiaomi-U-Drive-Original-2TB-1024GB-512GB-USB-3-1-Type-C-Interface-Mobile-Phone-Computer.jpg_ (1).webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(34, 'uploads/multi/Xiaomi-U-Drive-Original-2TB-1024GB-512GB-USB-3-1-Type-C-Interface-Mobile-Phone-Computer.jpg_ (2).webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(35, 'uploads/multi/Xiaomi-U-Drive-Original-2TB-1024GB-512GB-USB-3-1-Type-C-Interface-Mobile-Phone-Computer.jpg_ (3).webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(36, 'uploads/multi/Xiaomi-U-Drive-Original-2TB-1024GB-512GB-USB-3-1-Type-C-Interface-Mobile-Phone-Computer.jpg_ (4).webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(37, 'uploads/multi/Xiaomi-U-Drive-Original-2TB-1024GB-512GB-USB-3-1-Type-C-Interface-Mobile-Phone-Computer.jpg_ (5).webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(38, 'uploads/multi/Xiaomi-U-Drive-Original-2TB-1024GB-512GB-USB-3-1-Type-C-Interface-Mobile-Phone-Computer.jpg_.webp', '2023-07-10 03:44:06', '2023-07-16 00:26:03'),
(39, 'uploads/multi/2023-New-Sunglasses-Men-s-Driving-Anti-UV-Sunglasses-Concave-Shape-Ladies-Long-Frame-Sunglasses-gafas.jpg_ (1).webp', '2023-07-10 22:40:40', '2023-07-16 00:26:03'),
(40, 'uploads/multi/2023-New-Sunglasses-Men-s-Driving-Anti-UV-Sunglasses-Concave-Shape-Ladies-Long-Frame-Sunglasses-gafas.jpg_ (2).webp', '2023-07-10 22:40:40', '2023-07-16 00:26:03'),
(41, 'uploads/multi/2023-New-Sunglasses-Men-s-Driving-Anti-UV-Sunglasses-Concave-Shape-Ladies-Long-Frame-Sunglasses-gafas.jpg_ (3).webp', '2023-07-10 22:40:40', '2023-07-16 00:26:03'),
(42, 'uploads/multi/2023-New-Sunglasses-Men-s-Driving-Anti-UV-Sunglasses-Concave-Shape-Ladies-Long-Frame-Sunglasses-gafas.jpg_ (4).webp', '2023-07-10 22:40:40', '2023-07-16 00:26:03'),
(43, 'uploads/multi/2023-New-Sunglasses-Men-s-Driving-Anti-UV-Sunglasses-Concave-Shape-Ladies-Long-Frame-Sunglasses-gafas.jpg_ (5).webp', '2023-07-10 22:40:40', '2023-07-16 00:26:03'),
(44, 'uploads/multi/2023-New-Sunglasses-Men-s-Driving-Anti-UV-Sunglasses-Concave-Shape-Ladies-Long-Frame-Sunglasses-gafas.jpg_.webp', '2023-07-10 22:40:40', '2023-07-16 00:26:03'),
(45, 'uploads/multi/Car-Speed-Gearbox-Gear-Head-Keychain-Manual-Transmission-Lever-Metal-Key-Ring-Car-Refitting-Metal-Pendant.jpg_ (1).webp', '2023-07-10 22:40:40', '2023-07-16 00:26:03'),
(46, 'uploads/multi/Car-Speed-Gearbox-Gear-Head-Keychain-Manual-Transmission-Lever-Metal-Key-Ring-Car-Refitting-Metal-Pendant.jpg_ (2).webp', '2023-07-10 22:40:40', '2023-07-16 00:26:03'),
(47, 'uploads/multi/Car-Speed-Gearbox-Gear-Head-Keychain-Manual-Transmission-Lever-Metal-Key-Ring-Car-Refitting-Metal-Pendant.jpg_ (3).webp', '2023-07-10 22:40:40', '2023-07-16 00:26:03'),
(48, 'uploads/multi/Car-Speed-Gearbox-Gear-Head-Keychain-Manual-Transmission-Lever-Metal-Key-Ring-Car-Refitting-Metal-Pendant.jpg_ (4).webp', '2023-07-10 22:40:40', '2023-07-16 00:26:03'),
(49, 'uploads/multi/Car-Speed-Gearbox-Gear-Head-Keychain-Manual-Transmission-Lever-Metal-Key-Ring-Car-Refitting-Metal-Pendant.jpg_.webp', '2023-07-10 22:40:40', '2023-07-16 00:26:03'),
(50, 'uploads/multi/New-Bluetooth-Wireless-Earphone-Sport-Headset-Waterproof-Earbuds-Neckband-Magnetic-Headphone-With-Mic-For-SamrtPhones.jpg_ (1).webp', '2023-07-10 22:47:37', '2023-07-16 00:26:03'),
(51, 'uploads/multi/New-Bluetooth-Wireless-Earphone-Sport-Headset-Waterproof-Earbuds-Neckband-Magnetic-Headphone-With-Mic-For-SamrtPhones.jpg_ (2).webp', '2023-07-10 22:47:37', '2023-07-16 00:26:03'),
(52, 'uploads/multi/New-Bluetooth-Wireless-Earphone-Sport-Headset-Waterproof-Earbuds-Neckband-Magnetic-Headphone-With-Mic-For-SamrtPhones.jpg_ (3).webp', '2023-07-10 22:47:37', '2023-07-16 00:26:03'),
(53, 'uploads/multi/New-Bluetooth-Wireless-Earphone-Sport-Headset-Waterproof-Earbuds-Neckband-Magnetic-Headphone-With-Mic-For-SamrtPhones.jpg_ (4).webp', '2023-07-10 22:47:37', '2023-07-16 00:26:03'),
(54, 'uploads/multi/New-Bluetooth-Wireless-Earphone-Sport-Headset-Waterproof-Earbuds-Neckband-Magnetic-Headphone-With-Mic-For-SamrtPhones.jpg_.webp', '2023-07-10 22:47:37', '2023-07-16 00:26:03'),
(55, 'uploads/multi/Qearfun-Flash-Light-Cute-Cat-Ear-Headphones-Wireless-with-Mic-Can-close-LED-Kids-Girl-Stereo.jpg_ (1).webp', '2023-07-10 22:47:37', '2023-07-16 00:26:03'),
(56, 'uploads/multi/Qearfun-Flash-Light-Cute-Cat-Ear-Headphones-Wireless-with-Mic-Can-close-LED-Kids-Girl-Stereo.jpg_ (2).webp', '2023-07-10 22:47:37', '2023-07-16 00:26:03'),
(57, 'uploads/multi/Qearfun-Flash-Light-Cute-Cat-Ear-Headphones-Wireless-with-Mic-Can-close-LED-Kids-Girl-Stereo.jpg_ (3).webp', '2023-07-10 22:47:37', '2023-07-16 00:26:03'),
(58, 'uploads/multi/Qearfun-Flash-Light-Cute-Cat-Ear-Headphones-Wireless-with-Mic-Can-close-LED-Kids-Girl-Stereo.jpg_ (4).webp', '2023-07-10 22:47:37', '2023-07-16 00:26:03'),
(59, 'uploads/multi/Qearfun-Flash-Light-Cute-Cat-Ear-Headphones-Wireless-with-Mic-Can-close-LED-Kids-Girl-Stereo.jpg_ (5).webp', '2023-07-10 22:47:37', '2023-07-16 00:26:03'),
(60, 'uploads/multi/Qearfun-Flash-Light-Cute-Cat-Ear-Headphones-Wireless-with-Mic-Can-close-LED-Kids-Girl-Stereo.jpg_.webp', '2023-07-10 22:47:37', '2023-07-16 00:26:03'),
(61, 'uploads/multi/Makita-DTD171-Impact-Driver-18V-BL-Motor-Bare-Tool-Unit-BRUSHLESS-Impact-Driver-18V-Brushless.jpg_ (1).webp', '2023-07-10 22:50:35', '2023-07-16 00:26:03'),
(62, 'uploads/multi/Makita-DTD171-Impact-Driver-18V-BL-Motor-Bare-Tool-Unit-BRUSHLESS-Impact-Driver-18V-Brushless.jpg_ (2).webp', '2023-07-10 22:50:35', '2023-07-16 00:26:03'),
(63, 'uploads/multi/Makita-DTD171-Impact-Driver-18V-BL-Motor-Bare-Tool-Unit-BRUSHLESS-Impact-Driver-18V-Brushless.jpg_ (3).webp', '2023-07-10 22:50:35', '2023-07-16 00:26:03'),
(64, 'uploads/multi/Makita-DTD171-Impact-Driver-18V-BL-Motor-Bare-Tool-Unit-BRUSHLESS-Impact-Driver-18V-Brushless.jpg_ (4).webp', '2023-07-10 22:50:35', '2023-07-16 00:26:03'),
(65, 'uploads/multi/Makita-DTD171-Impact-Driver-18V-BL-Motor-Bare-Tool-Unit-BRUSHLESS-Impact-Driver-18V-Brushless.jpg_ (5).webp', '2023-07-10 22:50:35', '2023-07-16 00:26:03'),
(66, 'uploads/multi/Makita-DTD171-Impact-Driver-18V-BL-Motor-Bare-Tool-Unit-BRUSHLESS-Impact-Driver-18V-Brushless.jpg_.webp', '2023-07-10 22:50:35', '2023-07-16 00:26:03'),
(67, 'uploads/multi/3-5mm-Jack-Male-to-2-RCA-Female-Jack-RCA-Stereo-Audio-Cable-Converter-Adapter-High.jpg_ (1).webp', '2023-07-10 22:53:16', '2023-07-16 00:26:03'),
(68, 'uploads/multi/3-5mm-Jack-Male-to-2-RCA-Female-Jack-RCA-Stereo-Audio-Cable-Converter-Adapter-High.jpg_ (2).webp', '2023-07-10 22:53:16', '2023-07-16 00:26:03'),
(69, 'uploads/multi/3-5mm-Jack-Male-to-2-RCA-Female-Jack-RCA-Stereo-Audio-Cable-Converter-Adapter-High.jpg_ (3).webp', '2023-07-10 22:53:16', '2023-07-16 00:26:03'),
(70, 'uploads/multi/3-5mm-Jack-Male-to-2-RCA-Female-Jack-RCA-Stereo-Audio-Cable-Converter-Adapter-High.jpg_.webp', '2023-07-10 22:53:16', '2023-07-16 00:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `product_name`, `product_price`, `product_description`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 8, 5, 'Serving Tray with Cups & Spoons Set', '25.00', 'Serving Tray with Cups & Spoons Set Serving Tray with Cups & Spoons Set', NULL, '2023-05-27 02:50:14', NULL),
(2, 8, 2, 'Second Product Title update', '36.65', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, '2023-05-27 02:50:14', NULL),
(3, 8, 3, 'Third Product Title update', '50.22', 'asiufg sdhuifywef s sdf', NULL, '2023-05-27 02:50:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `user_id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 3, 8, 'Ami', 'ami@gmail.com', '01546786454', 'Banglamotor, Dhaka', '2023-05-27 02:50:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_description`, `product_image`, `created_at`, `updated_at`) VALUES
(2, 'Second Product Title update', '36.65', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, '2023-06-11 05:25:06', '2023-06-11 05:25:06'),
(3, 'Third Product Title update', '50.22', 'asiufg sdhuifywef s sdf', NULL, '2023-06-11 05:25:06', '2023-06-11 05:25:06'),
(4, 'Lenovo QT81 TWS Bluetooth Headset', '13', 'The Brand new Lenovo QT81 TWS Bluetooth Headset For  your great looking buy now at a low price in Bangladesh.\n\nBluetooth version: 5.1\nCharging base battery capacity: 1200mah\nHeadphone battery capacity: 40mah\nSingle machine net weight: 55g\nPower: 3mW\nWaterproof performance: IPX5\nTalk time: 3-5 hours', NULL, '2023-06-11 05:25:06', '2023-06-11 05:25:06'),
(5, 'Serving Tray with Cups & Spoons Set', '25', 'Serving Tray with Cups & Spoons Set Serving Tray with Cups & Spoons Set', NULL, '2023-06-11 05:25:06', '2023-06-11 05:25:06'),
(6, 'Xiaomi USB Cable Type-B', '120', 'Xiaomi USB Cable Type-B buy now at a low price in Bangladesh.\nOriginal Xiaomi Micro USB 2.0 cable\nEco-friendly TPE cover, green and healthy\nMini and portable\nData sync and charge 2-in-1 design\nLength: 80cm', NULL, '2023-06-11 05:25:06', '2023-06-11 05:25:06'),
(7, 'Key Ring Doyel Pakhi Motive', '45.89', 'Key Ring Doyel Pakhi Motive Key Ring Doyel Pakhi Motive', NULL, '2023-06-11 05:25:06', '2023-06-11 05:25:06'),
(8, 'Decorative Wooden Flower Vase', '51.68', 'Decorative Wooden Flower Vase Decorative Wooden Flower Vase', NULL, '2023-06-11 05:25:06', '2023-06-11 05:25:06'),
(9, 'Eco friendly Hand crafted kitchen Spoon Set', '74.29', 'Eco friendly Hand crafted kitchen Spoon Set Eco friendly Hand crafted kitchen Spoon Set', NULL, '2023-06-11 05:25:06', '2023-06-11 05:25:06'),
(10, 'Philips Mixer HR3705/00', '275', 'Availability: instock\n\nCategories: Blender and Mixer, Home Appliances, Philips Blender\n\nPower: 300 W\n5 speeds plus turbo\nCord clip\nStainless Steel Strip Beaters and Dough Hook', NULL, '2023-06-11 05:25:06', '2023-06-11 05:25:06'),
(11, 'Kelvinator KHV-333FF Defrost Refrigerator', '476.99', 'Kelvinator KHV-333FF Defrost Refrigerator\n\nKey Features:\nRefrigerator Type	De Frost\nDoor Type	VCM Door\nNumber of Doors	02 [Two]\nShelves Type	Rack\nDoor Rack	In Refrigerator Section\nVegetable Drawer/Crisper	Available', NULL, '2023-06-11 05:25:06', '2023-06-11 05:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `session_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `product_id`, `session_id`, `product_name`, `product_price`, `product_description`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'rpVlsRYW2lNjoUb5t9Y3mT7RzBX7IX9rKlWeT0m4', 'First Product Title', '30.22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', NULL, '2023-05-23 01:33:18', NULL),
(2, 2, 'rpVlsRYW2lNjoUb5t9Y3mT7RzBX7IX9rKlWeT0m4', 'Second Product Title', '366', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, '2023-05-23 01:36:20', NULL),
(3, 1, 'R4HeI3gBf5F8WuZ23BsT7amM3pUqpUWcL3ntD3SC', 'First Product Title', '30.22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', NULL, '2023-05-23 01:36:40', NULL),
(4, 2, 'SENYKP0xbVCKjr7vrD2FNItkI92sjB5RGx79BMqK', 'Second Product Title', '366', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, '2023-05-23 02:01:52', NULL),
(5, 1, 'SENYKP0xbVCKjr7vrD2FNItkI92sjB5RGx79BMqK', 'First Product Title', '30.22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', NULL, '2023-05-23 02:01:55', NULL),
(6, 3, 'SENYKP0xbVCKjr7vrD2FNItkI92sjB5RGx79BMqK', 'Third Product Title', '30.22', 'asiufg sdhuifywef s', NULL, '2023-05-23 02:01:56', NULL),
(13, 4, '7EERbWX4YQLYBnvCsUIfaohffbj1swKdjx77Wzzh', 'Lenovo QT81 TWS Bluetooth Headset', '13.00', 'The Brand new Lenovo QT81 TWS Bluetooth Headset For  your great looking buy now at a low price in Bangladesh.\r\n\r\nBluetooth version: 5.1\r\nCharging base battery capacity: 1200mah\r\nHeadphone battery capacity: 40mah\r\nSingle machine net weight: 55g\r\nPower: 3mW\r\nWaterproof performance: IPX5\r\nTalk time: 3-5 hours', NULL, '2023-05-27 02:55:34', NULL),
(14, 3, '7EERbWX4YQLYBnvCsUIfaohffbj1swKdjx77Wzzh', 'Third Product Title update', '50.22', 'asiufg sdhuifywef s sdf', NULL, '2023-05-27 03:04:14', NULL),
(15, 11, '7EERbWX4YQLYBnvCsUIfaohffbj1swKdjx77Wzzh', 'Kelvinator KHV-333FF Defrost Refrigerator', '476.99', 'Kelvinator KHV-333FF Defrost Refrigerator\r\n\r\nKey Features:\r\nRefrigerator Type	De Frost\r\nDoor Type	VCM Door\r\nNumber of Doors	02 [Two]\r\nShelves Type	Rack\r\nDoor Rack	In Refrigerator Section\r\nVegetable Drawer/Crisper	Available', NULL, '2023-05-27 03:39:06', NULL),
(16, 5, '7EERbWX4YQLYBnvCsUIfaohffbj1swKdjx77Wzzh', 'Serving Tray with Cups & Spoons Set', '25.00', 'Serving Tray with Cups & Spoons Set Serving Tray with Cups & Spoons Set', NULL, '2023-05-27 03:39:09', NULL),
(21, 4, 'A1R1gLhOm88TApphLmg8Taxz5beuPYOntH1G3gzN', 'Lenovo QT81 TWS Bluetooth Headset', '13', 'The Brand new Lenovo QT81 TWS Bluetooth Headset For  your great looking buy now at a low price in Bangladesh.\n\nBluetooth version: 5.1\nCharging base battery capacity: 1200mah\nHeadphone battery capacity: 40mah\nSingle machine net weight: 55g\nPower: 3mW\nWaterproof performance: IPX5\nTalk time: 3-5 hours', NULL, '2023-08-07 23:34:04', NULL),
(22, 9, 'A1R1gLhOm88TApphLmg8Taxz5beuPYOntH1G3gzN', 'Eco friendly Hand crafted kitchen Spoon Set', '74.29', 'Eco friendly Hand crafted kitchen Spoon Set Eco friendly Hand crafted kitchen Spoon Set', NULL, '2023-08-07 23:34:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `facebook_id`, `email_verified_at`, `password`, `otp_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Dip', 'dip', 'dipankar.devurweb@gmail.com', NULL, NULL, '$2y$10$L.FoJRU15LKOFo9o6zk0s.PkBVGg7yt9LQp1c9cSNRa8HPtIoKrnu', '179115', NULL, NULL, '2023-05-22 05:11:54'),
(6, 'Dipu', 'dipu', 'biswasdipankar242@gmail.com', NULL, NULL, '$2y$10$J0UympZ4AiNWlcUIuwhFP.NV.wI0oEfSbi435vuQefYHhqsikcpHa', NULL, NULL, NULL, NULL),
(7, 'Jiya', 'jiya', 'shakziaurrahmantito.official@gmail.com', NULL, NULL, '$2y$10$oSb68gPwhXO0R0UjxqQcYu21fY0hJJiC35SMWG81M.zGg7VMksloS', '753728', NULL, NULL, '2023-05-22 05:19:20'),
(8, 'Ami', 'ami', 'ami@gmail.com', NULL, NULL, '$2y$10$uPKgEWjmHnbPQMQz9qcI5.avxWw2ekA0V98uDVW6d0VwDm.hWCi5W', NULL, NULL, NULL, NULL),
(14, 'Dipankar Biswas', NULL, 'dipankarbiswasofficials@gmail.com', NULL, NULL, '$2y$10$wfzfkxDd1s9zQvCwjow/PeM1pWn9qCH0..5Lf3y9iKKdF8lBk5PsG', NULL, NULL, '2023-11-11 00:20:13', '2023-11-11 00:20:13'),
(15, 'Heart Song24', NULL, 'cpidipu2018@gmail.com', NULL, NULL, '$2y$10$pSGfdIMi91wJixbwm9rmJeRyxx7K.eQh8SdGCgQkydPGzRPxNVRmm', NULL, NULL, '2023-11-11 00:20:50', '2023-11-11 00:20:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `image_compresses`
--
ALTER TABLE `image_compresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=687;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_compresses`
--
ALTER TABLE `image_compresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
