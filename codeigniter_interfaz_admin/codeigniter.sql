-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-03-2024 a las 14:43:09
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `codeigniter`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombre` text DEFAULT NULL,
  `apellido` text DEFAULT NULL,
  `edad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `apellido`, `edad`) VALUES(1, 'jjj', 'ddd', 30);
INSERT INTO `personas` (`id`, `nombre`, `apellido`, `edad`) VALUES(2, 'sss', 'ggg', 23);
INSERT INTO `personas` (`id`, `nombre`, `apellido`, `edad`) VALUES(3, 'sdsd', '', NULL);
INSERT INTO `personas` (`id`, `nombre`, `apellido`, `edad`) VALUES(4, 'eee', 'eee', NULL);
INSERT INTO `personas` (`id`, `nombre`, `apellido`, `edad`) VALUES(5, 'eee', 'eee', 23);
INSERT INTO `personas` (`id`, `nombre`, `apellido`, `edad`) VALUES(6, 'www', 'www', 22);
INSERT INTO `personas` (`id`, `nombre`, `apellido`, `edad`) VALUES(7, 'www', 'www', 34);
INSERT INTO `personas` (`id`, `nombre`, `apellido`, `edad`) VALUES(8, 'rrr', 'tt', 35);
INSERT INTO `personas` (`id`, `nombre`, `apellido`, `edad`) VALUES(9, 'ty', 'yt', 34);
INSERT INTO `personas` (`id`, `nombre`, `apellido`, `edad`) VALUES(10, 'wwa', 're', 23);
INSERT INTO `personas` (`id`, `nombre`, `apellido`, `edad`) VALUES(11, 'w', 'e', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_canton`
--

CREATE TABLE `tbl_canton` (
  `id` bigint(20) NOT NULL,
  `canton` text NOT NULL,
  `id_provincia` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_canton`
--

INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(1, 'Cuenca', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(2, 'Girón', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(3, 'Gualaceo', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(4, 'Nabón', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(5, 'Paute', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(6, 'Pucara', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(7, 'San Fernando', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(8, 'Santa Isabel', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(9, 'Sigsig', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(10, 'Oña', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(11, 'Chordeleg', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(12, 'El Pan', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(13, 'Sevilla de Oro', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(14, 'Guachapala', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(15, 'Camilo Ponce Enríquez', 1);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(16, 'Guaranda', 2);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(17, 'Chillanes', 2);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(18, 'Chimbo', 2);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(19, 'Echeandía', 2);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(20, 'San Miguel', 2);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(21, 'Caluma', 2);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(22, 'Las Naves', 2);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(23, 'Azogues', 3);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(24, 'Biblián', 3);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(25, 'Cañar', 3);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(26, 'La Troncal', 3);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(27, 'El Tambo', 3);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(28, 'Déleg', 3);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(29, 'Suscal', 3);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(30, 'Tulcán', 4);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(31, 'Bolívar', 4);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(32, 'Espejo', 4);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(33, 'Mira', 4);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(34, 'Montúfar', 4);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(35, 'San Pedro de Huaca', 4);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(36, 'Latacunga', 5);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(37, 'La Maná', 5);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(38, 'Pangua', 5);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(39, 'Pujili', 5);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(40, 'Salcedo', 5);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(41, 'Saquisilí', 5);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(42, 'Sigchos', 5);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(43, 'Riobamba', 6);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(44, 'Alausi', 6);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(45, 'Colta', 6);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(46, 'Chambo', 6);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(47, 'Chunchi', 6);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(48, 'Guamote', 6);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(49, 'Guano', 6);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(50, 'Pallatanga', 6);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(51, 'Penipe', 6);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(52, 'Cumandá', 6);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(53, 'Machala', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(54, 'Arenillas', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(55, 'Atahualpa', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(56, 'Balsas', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(57, 'Chilla', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(58, 'El Guabo', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(59, 'Huaquillas', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(60, 'Marcabelí', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(61, 'Pasaje', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(62, 'Piñas', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(63, 'Portovelo', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(64, 'Santa Rosa', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(65, 'Zaruma', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(66, 'Las Lajas', 7);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(67, 'Esmeraldas', 8);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(68, 'Eloy Alfaro', 8);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(69, 'Muisne', 8);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(70, 'Quinindé', 8);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(71, 'San Lorenzo', 8);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(72, 'Atacames', 8);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(73, 'Rioverde', 8);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(74, 'La Concordia', 8);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(75, 'Guayaquil', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(76, 'Alfredo Baquerizo Moreno (Juján)', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(77, 'Balao', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(78, 'Balzar', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(79, 'Colimes', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(80, 'Daule', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(81, 'Durán', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(82, 'El Empalme', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(83, 'El Triunfo', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(84, 'Milagro', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(85, 'Naranjal', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(86, 'Naranjito', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(87, 'Palestina', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(88, 'Pedro Carbo', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(89, 'Samborondón', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(90, 'Santa Lucía', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(91, 'Salitre (Urbina Jado)', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(92, 'San Jacinto de Yaguachi', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(93, 'Playas', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(94, 'Simón Bolívar', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(95, 'Coronel Marcelino Maridueña', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(96, 'Lomas de Sargentillo', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(97, 'Nobol', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(98, 'General Antonio Elizalde', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(99, 'Isidro Ayora', 9);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(100, 'Ibarra', 10);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(101, 'Antonio Ante', 10);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(102, 'Cotacachi', 10);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(103, 'Otavalo', 10);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(104, 'Pimampiro', 10);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(105, 'San Miguel de Urcuquí', 10);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(106, 'Loja', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(107, 'Calvas', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(108, 'Catamayo', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(109, 'Celica', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(110, 'Chaguarpamba', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(111, 'Espíndola', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(112, 'Gonzanamá', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(113, 'Macará', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(114, 'Paltas', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(115, 'Puyango', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(116, 'Saraguro', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(117, 'Sozoranga', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(118, 'Zapotillo', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(119, 'Pindal', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(120, 'Quilanga', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(121, 'Olmedo', 11);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(122, 'Babahoyo', 12);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(123, 'Baba', 12);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(124, 'Montalvo', 12);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(125, 'Puebloviejo', 12);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(126, 'Quevedo', 12);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(127, 'Urdaneta', 12);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(128, 'Ventanas', 12);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(129, 'Vínces', 12);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(130, 'Palenque', 12);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(131, 'Buena Fé', 12);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(132, 'Valencia', 12);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(133, 'Mocache', 12);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(134, 'Quinsaloma', 12);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(135, 'Portoviejo', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(136, 'Bolívar', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(137, 'Chone', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(138, 'El Carmen', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(139, 'Flavio Alfaro', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(140, 'Jipijapa', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(141, 'Junín', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(142, 'Manta', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(143, 'Montecristi', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(144, 'Paján', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(145, 'Pichincha', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(146, 'Rocafuerte', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(147, 'Santa Ana', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(148, 'Sucre', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(149, 'Tosagua', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(150, '24 de Mayo', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(151, 'Pedernales', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(152, 'Olmedo', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(153, 'Puerto López', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(154, 'Jama', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(155, 'Jaramijó', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(156, 'San Vicente', 13);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(157, 'Morona', 14);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(158, 'Gualaquiza', 14);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(159, 'Limón Indanza', 14);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(160, 'Palora', 14);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(161, 'Santiago', 14);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(162, 'Sucúa', 14);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(163, 'Huamboya', 14);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(164, 'San Juan Bosco', 14);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(165, 'Taisha', 14);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(166, 'Logroño', 14);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(167, 'Pablo Sexto', 14);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(168, 'Tiwintza', 14);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(169, 'Tena', 15);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(170, 'Archidona', 15);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(171, 'El Chaco', 15);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(172, 'Quijos', 15);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(173, 'Carlos Julio Arosemena Tola', 15);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(174, 'Pastaza', 16);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(175, 'Mera', 16);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(176, 'Santa Clara', 16);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(177, 'Arajuno', 16);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(178, 'Quito', 17);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(179, 'Cayambe', 17);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(180, 'Mejia', 17);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(181, 'Pedro Moncayo', 17);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(182, 'Rumiñahui', 17);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(183, 'San Miguel de Los Bancos', 17);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(184, 'Pedro Vicente Maldonado', 17);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(185, 'Puerto Quito', 17);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(186, 'Ambato', 18);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(187, 'Baños de Agua Santa', 18);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(188, 'Cevallos', 18);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(189, 'Mocha', 18);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(190, 'Patate', 18);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(191, 'Quero', 18);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(192, 'San Pedro de Pelileo', 18);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(193, 'Santiago de Píllaro', 18);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(194, 'Tisaleo', 18);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(195, 'Zamora', 19);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(196, 'Chinchipe', 19);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(197, 'Nangaritza', 19);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(198, 'Yacuambi', 19);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(199, 'Yantzaza (Yanzatza)', 19);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(200, 'El Pangui', 19);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(201, 'Centinela del Cóndor', 19);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(202, 'Palanda', 19);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(203, 'Paquisha', 19);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(204, 'San Cristóbal', 20);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(205, 'Isabela', 20);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(206, 'Santa Cruz', 20);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(207, 'Lago Agrio', 21);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(208, 'Gonzalo Pizarro', 21);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(209, 'Putumayo', 21);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(210, 'Shushufindi', 21);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(211, 'Sucumbíos', 21);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(212, 'Cascales', 21);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(213, 'Cuyabeno', 21);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(214, 'Orellana', 22);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(215, 'Aguarico', 22);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(216, 'La Joya de Los Sachas', 22);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(217, 'Loreto', 22);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(218, 'Santo Domingo', 23);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(219, 'Santa Elena', 24);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(220, 'La Libertad', 24);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(221, 'Salinas', 24);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(222, 'Las Golondrinas', 25);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(223, 'Manga del Cura', 25);
INSERT INTO `tbl_canton` (`id`, `canton`, `id_provincia`) VALUES(224, 'El Piedrero', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleado`
--

CREATE TABLE `tbl_empleado` (
  `idtbl_empleado` bigint(20) NOT NULL,
  `tbl_empleado_cedula` varchar(45) DEFAULT NULL,
  `tbl_empleado_cdlaizq` varchar(45) DEFAULT NULL COMMENT '6 digitos primeros de la izquierda',
  `tbl_empleado_apellnomb` text DEFAULT NULL COMMENT 'apellidos y nombres',
  `tbl_empleado_apellido` text DEFAULT NULL,
  `tbl_empleado_nombres` text DEFAULT NULL,
  `tbl_empleado_fchanac` text DEFAULT NULL COMMENT 'fecha de nacimiento',
  `tbl_empleado_gnro` varchar(45) DEFAULT NULL COMMENT 'genero',
  `tbl_empleado_estcivil` varchar(1000) DEFAULT NULL COMMENT 'estado civil',
  `tbl_empleado_email` text DEFAULT NULL,
  `tbl_empleado_tlfnoConv` varchar(100) DEFAULT NULL COMMENT 'telefono convencional',
  `tbl_empleado_tlfnoCelar` varchar(100) DEFAULT NULL COMMENT 'telefono celular',
  `tbl_empleado_nacionalidad` varchar(500) DEFAULT NULL,
  `tbl_empleado_direccion` text DEFAULT NULL,
  `tbl_empleado_canton` text DEFAULT NULL,
  `tbl_empleado_cantonstr` text DEFAULT NULL,
  `tbl_empleado_parroquia` text DEFAULT NULL,
  `tbl_empleado_parroquiastr` text DEFAULT NULL,
  `tbl_empleado_nveledu` varchar(5000) DEFAULT NULL COMMENT 'nivel de educacion',
  `tbl_empleado_tloobt` text DEFAULT NULL COMMENT 'titulo obtenido',
  `tbl_empleado_entbcrbanco` text DEFAULT NULL COMMENT 'Si es el valor es 1 -> Banco caso de 2 es cooperativa.',
  `tbl_empleado_entbcrbancostr` text DEFAULT NULL,
  `tbl_empleado_entidadbancaria` text DEFAULT NULL,
  `tbl_empleado_tpocuenta` varchar(45) DEFAULT NULL COMMENT 'tipo de cuenta',
  `tbl_empleado_numcuenta` varchar(1000) DEFAULT NULL COMMENT 'numero de cuenta',
  `tbl_empleado_discapacidad` text DEFAULT NULL,
  `tbl_empleado_porcdisc` varchar(45) DEFAULT NULL,
  `tbl_empleado_numcndis` varchar(45) DEFAULT NULL,
  `tbl_empleado_url` text DEFAULT NULL COMMENT 'url para el pdf del curriculo',
  `tbl_empleado_fcharegistro` varchar(45) DEFAULT NULL,
  `tbl_empleado_fchaupdate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_empleado`
--

INSERT INTO `tbl_empleado` (`idtbl_empleado`, `tbl_empleado_cedula`, `tbl_empleado_cdlaizq`, `tbl_empleado_apellnomb`, `tbl_empleado_apellido`, `tbl_empleado_nombres`, `tbl_empleado_fchanac`, `tbl_empleado_gnro`, `tbl_empleado_estcivil`, `tbl_empleado_email`, `tbl_empleado_tlfnoConv`, `tbl_empleado_tlfnoCelar`, `tbl_empleado_nacionalidad`, `tbl_empleado_direccion`, `tbl_empleado_canton`, `tbl_empleado_cantonstr`, `tbl_empleado_parroquia`, `tbl_empleado_parroquiastr`, `tbl_empleado_nveledu`, `tbl_empleado_tloobt`, `tbl_empleado_entbcrbanco`, `tbl_empleado_entbcrbancostr`, `tbl_empleado_entidadbancaria`, `tbl_empleado_tpocuenta`, `tbl_empleado_numcuenta`, `tbl_empleado_discapacidad`, `tbl_empleado_porcdisc`, `tbl_empleado_numcndis`, `tbl_empleado_url`, `tbl_empleado_fcharegistro`, `tbl_empleado_fchaupdate`) VALUES(1, '1316445418', '445418', 'sddfs sdfdsf', 'sddfs', 'sdfdsf', '10/05/1994', 'Hombre', 'Soltero/A', 'dfg@gmail.com', '3123123', '213123', 'Ecuatoriana', 'test de direccion', '135', 'Portoviejo', '827', 'Portoviejo', 'Básica Elemental', 'test', '1', 'BANCO', 'BANCO PICHINCHA', 'Cuenta de Ahorro', '12312312', '', '', '', 'uploads/20240314033524.pdf', '2024-03-14', NULL);
INSERT INTO `tbl_empleado` (`idtbl_empleado`, `tbl_empleado_cedula`, `tbl_empleado_cdlaizq`, `tbl_empleado_apellnomb`, `tbl_empleado_apellido`, `tbl_empleado_nombres`, `tbl_empleado_fchanac`, `tbl_empleado_gnro`, `tbl_empleado_estcivil`, `tbl_empleado_email`, `tbl_empleado_tlfnoConv`, `tbl_empleado_tlfnoCelar`, `tbl_empleado_nacionalidad`, `tbl_empleado_direccion`, `tbl_empleado_canton`, `tbl_empleado_cantonstr`, `tbl_empleado_parroquia`, `tbl_empleado_parroquiastr`, `tbl_empleado_nveledu`, `tbl_empleado_tloobt`, `tbl_empleado_entbcrbanco`, `tbl_empleado_entbcrbancostr`, `tbl_empleado_entidadbancaria`, `tbl_empleado_tpocuenta`, `tbl_empleado_numcuenta`, `tbl_empleado_discapacidad`, `tbl_empleado_porcdisc`, `tbl_empleado_numcndis`, `tbl_empleado_url`, `tbl_empleado_fcharegistro`, `tbl_empleado_fchaupdate`) VALUES(2, '1316445419', '445419', 'test2 test2', 'test2', 'test2', '10/05/1994', 'Hombre', 'Soltero/A', 'j@gmail.com', '23123', '12321', 'Ecuatoriana', 'wew', '135', 'Portoviejo', '828', '12 de Marzo', 'Básica Elemental', 'wrerer', '1', 'BANCO', 'BANCO PICHINCHA', 'Cuenta de Ahorro', '23123', 'no', '', '', 'uploads/20240314052102.pdf', '2024-03-14', NULL);
INSERT INTO `tbl_empleado` (`idtbl_empleado`, `tbl_empleado_cedula`, `tbl_empleado_cdlaizq`, `tbl_empleado_apellnomb`, `tbl_empleado_apellido`, `tbl_empleado_nombres`, `tbl_empleado_fchanac`, `tbl_empleado_gnro`, `tbl_empleado_estcivil`, `tbl_empleado_email`, `tbl_empleado_tlfnoConv`, `tbl_empleado_tlfnoCelar`, `tbl_empleado_nacionalidad`, `tbl_empleado_direccion`, `tbl_empleado_canton`, `tbl_empleado_cantonstr`, `tbl_empleado_parroquia`, `tbl_empleado_parroquiastr`, `tbl_empleado_nveledu`, `tbl_empleado_tloobt`, `tbl_empleado_entbcrbanco`, `tbl_empleado_entbcrbancostr`, `tbl_empleado_entidadbancaria`, `tbl_empleado_tpocuenta`, `tbl_empleado_numcuenta`, `tbl_empleado_discapacidad`, `tbl_empleado_porcdisc`, `tbl_empleado_numcndis`, `tbl_empleado_url`, `tbl_empleado_fcharegistro`, `tbl_empleado_fchaupdate`) VALUES(3, '1316445410', '445410', 'TEST3 TEST3', 'TEST3', 'TEST3', '10/05/1994', 'HOMBRE', 'SOLTERO/A', 'test3@gmail.com', '23213', '213213', 'ECUATORIANA', 'DFEW', '135', 'PORTOVIEJO', '829', 'COLóN', 'BáSICA ELEMENTAL', 'TEST3', '1', 'BANCO', 'BANCO PICHINCHA', 'CUENTA DE AHORRO', '43242', 'NO', '', '', 'uploads/20240315115908.pdf', '2024-03-15', NULL);
INSERT INTO `tbl_empleado` (`idtbl_empleado`, `tbl_empleado_cedula`, `tbl_empleado_cdlaizq`, `tbl_empleado_apellnomb`, `tbl_empleado_apellido`, `tbl_empleado_nombres`, `tbl_empleado_fchanac`, `tbl_empleado_gnro`, `tbl_empleado_estcivil`, `tbl_empleado_email`, `tbl_empleado_tlfnoConv`, `tbl_empleado_tlfnoCelar`, `tbl_empleado_nacionalidad`, `tbl_empleado_direccion`, `tbl_empleado_canton`, `tbl_empleado_cantonstr`, `tbl_empleado_parroquia`, `tbl_empleado_parroquiastr`, `tbl_empleado_nveledu`, `tbl_empleado_tloobt`, `tbl_empleado_entbcrbanco`, `tbl_empleado_entbcrbancostr`, `tbl_empleado_entidadbancaria`, `tbl_empleado_tpocuenta`, `tbl_empleado_numcuenta`, `tbl_empleado_discapacidad`, `tbl_empleado_porcdisc`, `tbl_empleado_numcndis`, `tbl_empleado_url`, `tbl_empleado_fcharegistro`, `tbl_empleado_fchaupdate`) VALUES(4, '1316445412', '445412', 'TEST3 TEST3', 'TEST3', 'TEST3', '10/05/1994', 'HOMBRE', 'SOLTERO/A', 'test3@gmail.com', '23213', ' / 213213', 'ECUATORIANA', 'DFEW', '135', 'PORTOVIEJO', '829', 'COLóN', 'BáSICA ELEMENTAL', 'TEST3', '1', 'BANCO', 'BANCO PICHINCHA', 'CUENTA DE AHORRO', '43242', 'NO', '', '', 'uploads/20240315120553.pdf', '2024-03-15', NULL);
INSERT INTO `tbl_empleado` (`idtbl_empleado`, `tbl_empleado_cedula`, `tbl_empleado_cdlaizq`, `tbl_empleado_apellnomb`, `tbl_empleado_apellido`, `tbl_empleado_nombres`, `tbl_empleado_fchanac`, `tbl_empleado_gnro`, `tbl_empleado_estcivil`, `tbl_empleado_email`, `tbl_empleado_tlfnoConv`, `tbl_empleado_tlfnoCelar`, `tbl_empleado_nacionalidad`, `tbl_empleado_direccion`, `tbl_empleado_canton`, `tbl_empleado_cantonstr`, `tbl_empleado_parroquia`, `tbl_empleado_parroquiastr`, `tbl_empleado_nveledu`, `tbl_empleado_tloobt`, `tbl_empleado_entbcrbanco`, `tbl_empleado_entbcrbancostr`, `tbl_empleado_entidadbancaria`, `tbl_empleado_tpocuenta`, `tbl_empleado_numcuenta`, `tbl_empleado_discapacidad`, `tbl_empleado_porcdisc`, `tbl_empleado_numcndis`, `tbl_empleado_url`, `tbl_empleado_fcharegistro`, `tbl_empleado_fchaupdate`) VALUES(5, '1316445411', '445411', 'TEST3 TEST3', 'TEST3', 'TEST3', '10/05/1994', 'HOMBRE', 'SOLTERO/A', 'test3@gmail.com', '23213', ' / 213213', 'ECUATORIANA', 'DFEW', '135', 'PORTOVIEJO', '829', 'COLóN', 'BáSICA ELEMENTAL', 'TEST3', '1', 'BANCO', 'BANCO PICHINCHA', 'CUENTA DE AHORRO', '43242', 'NO', '', '', 'uploads/20240315120742.pdf', '2024-03-15', NULL);
INSERT INTO `tbl_empleado` (`idtbl_empleado`, `tbl_empleado_cedula`, `tbl_empleado_cdlaizq`, `tbl_empleado_apellnomb`, `tbl_empleado_apellido`, `tbl_empleado_nombres`, `tbl_empleado_fchanac`, `tbl_empleado_gnro`, `tbl_empleado_estcivil`, `tbl_empleado_email`, `tbl_empleado_tlfnoConv`, `tbl_empleado_tlfnoCelar`, `tbl_empleado_nacionalidad`, `tbl_empleado_direccion`, `tbl_empleado_canton`, `tbl_empleado_cantonstr`, `tbl_empleado_parroquia`, `tbl_empleado_parroquiastr`, `tbl_empleado_nveledu`, `tbl_empleado_tloobt`, `tbl_empleado_entbcrbanco`, `tbl_empleado_entbcrbancostr`, `tbl_empleado_entidadbancaria`, `tbl_empleado_tpocuenta`, `tbl_empleado_numcuenta`, `tbl_empleado_discapacidad`, `tbl_empleado_porcdisc`, `tbl_empleado_numcndis`, `tbl_empleado_url`, `tbl_empleado_fcharegistro`, `tbl_empleado_fchaupdate`) VALUES(6, '1316445413', '445413', 'TEST3 TEST3', 'TEST3', 'TEST3', '10/05/1994', 'HOMBRE', 'SOLTERO/A', 'test3@gmail.com', '23213', '23213', 'ECUATORIANA', 'DFEW', '135', 'PORTOVIEJO', '829', 'COLóN', 'BáSICA ELEMENTAL', 'TEST3', '1', 'BANCO', 'BANCO PICHINCHA', 'CUENTA DE AHORRO', '43242', 'NO', '', '', 'uploads/20240315121256.pdf', '2024-03-15', NULL);
INSERT INTO `tbl_empleado` (`idtbl_empleado`, `tbl_empleado_cedula`, `tbl_empleado_cdlaizq`, `tbl_empleado_apellnomb`, `tbl_empleado_apellido`, `tbl_empleado_nombres`, `tbl_empleado_fchanac`, `tbl_empleado_gnro`, `tbl_empleado_estcivil`, `tbl_empleado_email`, `tbl_empleado_tlfnoConv`, `tbl_empleado_tlfnoCelar`, `tbl_empleado_nacionalidad`, `tbl_empleado_direccion`, `tbl_empleado_canton`, `tbl_empleado_cantonstr`, `tbl_empleado_parroquia`, `tbl_empleado_parroquiastr`, `tbl_empleado_nveledu`, `tbl_empleado_tloobt`, `tbl_empleado_entbcrbanco`, `tbl_empleado_entbcrbancostr`, `tbl_empleado_entidadbancaria`, `tbl_empleado_tpocuenta`, `tbl_empleado_numcuenta`, `tbl_empleado_discapacidad`, `tbl_empleado_porcdisc`, `tbl_empleado_numcndis`, `tbl_empleado_url`, `tbl_empleado_fcharegistro`, `tbl_empleado_fchaupdate`) VALUES(7, '1316445414', '445414', 'TEST3 TEST3', 'TEST3', 'TEST3', '10/05/1994', 'HOMBRE', 'SOLTERO/A', 'test3@gmail.com', '23213', '23213 / 213213', 'ECUATORIANA', 'DFEW', '135', 'PORTOVIEJO', '829', 'COLóN', 'BáSICA ELEMENTAL', 'TEST3', '1', 'BANCO', 'BANCO PICHINCHA', 'CUENTA DE AHORRO', '43242', 'NO', '', '', 'uploads/20240315121651.pdf', '2024-03-15', NULL);
INSERT INTO `tbl_empleado` (`idtbl_empleado`, `tbl_empleado_cedula`, `tbl_empleado_cdlaizq`, `tbl_empleado_apellnomb`, `tbl_empleado_apellido`, `tbl_empleado_nombres`, `tbl_empleado_fchanac`, `tbl_empleado_gnro`, `tbl_empleado_estcivil`, `tbl_empleado_email`, `tbl_empleado_tlfnoConv`, `tbl_empleado_tlfnoCelar`, `tbl_empleado_nacionalidad`, `tbl_empleado_direccion`, `tbl_empleado_canton`, `tbl_empleado_cantonstr`, `tbl_empleado_parroquia`, `tbl_empleado_parroquiastr`, `tbl_empleado_nveledu`, `tbl_empleado_tloobt`, `tbl_empleado_entbcrbanco`, `tbl_empleado_entbcrbancostr`, `tbl_empleado_entidadbancaria`, `tbl_empleado_tpocuenta`, `tbl_empleado_numcuenta`, `tbl_empleado_discapacidad`, `tbl_empleado_porcdisc`, `tbl_empleado_numcndis`, `tbl_empleado_url`, `tbl_empleado_fcharegistro`, `tbl_empleado_fchaupdate`) VALUES(8, '1316445415', '445415', 'TEST3 TEST3', 'TEST3', 'TEST3', '10/05/1994', 'HOMBRE', 'SOLTERO/A', 'test3@gmail.com', '23213', '23213', 'ECUATORIANA', 'DFEW', '135', 'PORTOVIEJO', '829', 'COLóN', 'BáSICA ELEMENTAL', 'TEST3', '1', 'BANCO', 'BANCO PICHINCHA', 'CUENTA DE AHORRO', '43242', 'NO', '', '', 'uploads/20240315121738.pdf', '2024-03-15', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_parroquia`
--

CREATE TABLE `tbl_parroquia` (
  `id` bigint(20) NOT NULL,
  `parroquia` text NOT NULL,
  `id_canton` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_parroquia`
--

INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1, 'Bellavista', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(2, 'Cañaribamba', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(3, 'El Batán', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(4, 'El Sagrario', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(5, 'El Vecino', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(6, 'Gil Ramírez Dávalos', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(7, 'Huaynacápac', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(8, 'Machángara', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(9, 'Monay', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(10, 'San Blas', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(11, 'San Sebastián', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(12, 'Sucre', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(13, 'Totoracocha', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(14, 'Yanuncay', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(15, 'Hermano Miguel', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(16, 'Cuenca', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(17, 'Baños', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(18, 'Cumbe', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(19, 'Chaucha', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(20, 'Checa (Jidcay)', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(21, 'Chiquintad', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(22, 'Llacao', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(23, 'Molleturo', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(24, 'Nulti', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(25, 'Octavio Cordero Palacios (Santa Rosa)', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(26, 'Paccha', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(27, 'Quingeo', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(28, 'Ricaurte', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(29, 'San Joaquín', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(30, 'Santa Ana', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(31, 'Sayausí', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(32, 'Sidcay', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(33, 'Sinincay', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(34, 'Tarqui', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(35, 'Turi', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(36, 'Valle', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(37, 'Victoria del Portete (Irquis)', 1);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(38, 'Girón', 2);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(39, 'Asunción', 2);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(40, 'San Gerardo', 2);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(41, 'Gualaceo', 3);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(42, 'Chordeleg', 3);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(43, 'Daniel Córdova Toral (El Oriente)', 3);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(44, 'Jadán', 3);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(45, 'Mariano Moreno', 3);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(46, 'Principal', 3);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(47, 'Remigio Crespo Toral (Gúlag)', 3);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(48, 'San Juan', 3);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(49, 'Zhidmad', 3);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(50, 'Luis Cordero Vega', 3);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(51, 'Simón Bolívar (Cab. En Gañanzol)', 3);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(52, 'Nabón', 4);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(53, 'Cochapata', 4);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(54, 'El Progreso (Cab.En Zhota)', 4);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(55, 'Las Nieves (Chaya)', 4);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(56, 'Oña', 4);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(57, 'Paute', 5);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(58, 'Amaluza', 5);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(59, 'Bulán (José Víctor Izquierdo)', 5);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(60, 'Chicán (Guillermo Ortega)', 5);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(61, 'El Cabo', 5);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(62, 'Guachapala', 5);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(63, 'Guarainag', 5);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(64, 'Palmas', 5);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(65, 'Pan', 5);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(66, 'San Cristóbal (Carlos Ordóñez Lazo)', 5);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(67, 'Sevilla de Oro', 5);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(68, 'Tomebamba', 5);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(69, 'Dug Dug', 5);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(70, 'Pucará', 6);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(71, 'Camilo Ponce Enríquez (Cab. En Río 7 de Mollepongo)', 6);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(72, 'San Rafael de Sharug', 6);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(73, 'San Fernando', 7);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(74, 'Chumblín', 7);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(75, 'Santa Isabel (Chaguarurco)', 8);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(76, 'Abdón Calderón (La Unión)', 8);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(77, 'El Carmen de Pijilí', 8);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(78, 'Zhaglli (Shaglli)', 8);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(79, 'San Salvador de Cañaribamba', 8);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(80, 'Sigsig', 9);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(81, 'Cuchil (Cutchil)', 9);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(82, 'Gima', 9);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(83, 'Guel', 9);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(84, 'Ludo', 9);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(85, 'San Bartolomé', 9);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(86, 'San José de Raranga', 9);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(87, 'San Felipe de Oña Cabecera Cantonal', 10);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(88, 'Susudel', 10);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(89, 'Chordeleg', 11);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(90, 'Principal', 11);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(91, 'La Unión', 11);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(92, 'Luis Galarza Orellana (Cab.En Delegsol)', 11);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(93, 'San Martín de Puzhio', 11);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(94, 'El Pan', 12);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(95, 'Amaluza', 12);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(96, 'Palmas', 12);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(97, 'San Vicente', 12);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(98, 'Sevilla de Oro', 13);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(99, 'Amaluza', 13);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(100, 'Palmas', 13);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(101, 'Guachapala', 14);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(102, 'Camilo Ponce Enríquez', 15);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(103, 'El Carmen de Pijilí', 15);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(104, 'Ángel Polibio Cháves', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(105, 'Gabriel Ignacio Veintimilla', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(106, 'Guanujo', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(107, 'Guaranda', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(108, 'Facundo Vela', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(109, 'Guanujo', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(110, 'Julio E. Moreno (Catanahuán Grande)', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(111, 'Las Naves', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(112, 'Salinas', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(113, 'San Lorenzo', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(114, 'San Simón (Yacoto)', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(115, 'Santa Fé (Santa Fé)', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(116, 'Simiátug', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(117, 'San Luis de Pambil', 16);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(118, 'Chillanes', 17);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(119, 'San José del Tambo (Tambopamba)', 17);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(120, 'San José de Chimbo', 18);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(121, 'Asunción (Asancoto)', 18);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(122, 'Caluma', 18);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(123, 'Magdalena (Chapacoto)', 18);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(124, 'San Sebastián', 18);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(125, 'Telimbela', 18);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(126, 'Echeandía', 19);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(127, 'San Miguel', 20);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(128, 'Balsapamba', 20);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(129, 'Bilován', 20);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(130, 'Régulo de Mora', 20);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(131, 'San Pablo (San Pablo de Atenas)', 20);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(132, 'Santiago', 20);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(133, 'San Vicente', 20);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(134, 'Caluma', 21);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(135, 'Las Mercedes', 22);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(136, 'Las Naves', 22);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(137, 'Las Naves', 22);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(138, 'Aurelio Bayas Martínez', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(139, 'Azogues', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(140, 'Borrero', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(141, 'San Francisco', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(142, 'Azogues', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(143, 'Cojitambo', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(144, 'Déleg', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(145, 'Guapán', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(146, 'Javier Loyola (Chuquipata)', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(147, 'Luis Cordero', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(148, 'Pindilig', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(149, 'Rivera', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(150, 'San Miguel', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(151, 'Solano', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(152, 'Taday', 23);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(153, 'Biblián', 24);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(154, 'Nazón (Cab. En Pampa de Domínguez)', 24);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(155, 'San Francisco de Sageo', 24);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(156, 'Turupamba', 24);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(157, 'Jerusalén', 24);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(158, 'Cañar', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(159, 'Chontamarca', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(160, 'Chorocopte', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(161, 'General Morales (Socarte)', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(162, 'Gualleturo', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(163, 'Honorato Vásquez (Tambo Viejo)', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(164, 'Ingapirca', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(165, 'Juncal', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(166, 'San Antonio', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(167, 'Suscal', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(168, 'Tambo', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(169, 'Zhud', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(170, 'Ventura', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(171, 'Ducur', 25);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(172, 'La Troncal', 26);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(173, 'Manuel J. Calle', 26);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(174, 'Pancho Negro', 26);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(175, 'El Tambo', 27);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(176, 'Déleg', 28);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(177, 'Solano', 28);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(178, 'Suscal', 29);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(179, 'González Suárez', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(180, 'Tulcán', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(181, 'Tulcán', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(182, 'El Carmelo (El Pun)', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(183, 'Huaca', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(184, 'Julio Andrade (Orejuela)', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(185, 'Maldonado', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(186, 'Pioter', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(187, 'Tobar Donoso (La Bocana de Camumbí)', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(188, 'Tufiño', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(189, 'Urbina (Taya)', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(190, 'El Chical', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(191, 'Mariscal Sucre', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(192, 'Santa Martha de Cuba', 30);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(193, 'Bolívar', 31);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(194, 'García Moreno', 31);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(195, 'Los Andes', 31);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(196, 'Monte Olivo', 31);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(197, 'San Vicente de Pusir', 31);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(198, 'San Rafael', 31);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(199, 'El Ángel', 32);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(200, '27 de Septiembre', 32);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(201, 'El Angel', 32);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(202, 'El Goaltal', 32);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(203, 'La Libertad (Alizo)', 32);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(204, 'San Isidro', 32);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(205, 'Mira (Chontahuasi)', 33);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(206, 'Concepción', 33);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(207, 'Jijón Y Caamaño (Cab. En Río Blanco)', 33);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(208, 'Juan Montalvo (San Ignacio de Quil)', 33);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(209, 'González Suárez', 34);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(210, 'San José', 34);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(211, 'San Gabriel', 34);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(212, 'Cristóbal Colón', 34);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(213, 'Chitán de Navarrete', 34);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(214, 'Fernández Salvador', 34);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(215, 'La Paz', 34);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(216, 'Piartal', 34);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(217, 'Huaca', 35);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(218, 'Mariscal Sucre', 35);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(219, 'Eloy Alfaro (San Felipe)', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(220, 'Ignacio Flores (Parque Flores)', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(221, 'Juan Montalvo (San Sebastián)', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(222, 'La Matriz', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(223, 'San Buenaventura', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(224, 'Latacunga', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(225, 'Alaques (Aláquez)', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(226, 'Belisario Quevedo (Guanailín)', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(227, 'Guaitacama (Guaytacama)', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(228, 'Joseguango Bajo', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(229, 'Las Pampas', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(230, 'Mulaló', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(231, '11 de Noviembre (Ilinchisi)', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(232, 'Poaló', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(233, 'San Juan de Pastocalle', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(234, 'Sigchos', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(235, 'Tanicuchí', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(236, 'Toacaso', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(237, 'Palo Quemado', 36);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(238, 'El Carmen', 37);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(239, 'La Maná', 37);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(240, 'El Triunfo', 37);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(241, 'La Maná', 37);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(242, 'Guasaganda (Cab.En Guasaganda', 37);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(243, 'Pucayacu', 37);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(244, 'El Corazón', 38);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(245, 'Moraspungo', 38);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(246, 'Pinllopata', 38);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(247, 'Ramón Campaña', 38);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(248, 'Pujilí', 39);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(249, 'Angamarca', 39);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(250, 'Chucchilán (Chugchilán)', 39);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(251, 'Guangaje', 39);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(252, 'Isinlibí (Isinliví)', 39);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(253, 'La Victoria', 39);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(254, 'Pilaló', 39);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(255, 'Tingo', 39);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(256, 'Zumbahua', 39);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(257, 'San Miguel', 40);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(258, 'Antonio José Holguín (Santa Lucía)', 40);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(259, 'Cusubamba', 40);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(260, 'Mulalillo', 40);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(261, 'Mulliquindil (Santa Ana)', 40);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(262, 'Pansaleo', 40);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(263, 'Saquisilí', 41);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(264, 'Canchagua', 41);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(265, 'Chantilín', 41);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(266, 'Cochapamba', 41);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(267, 'Sigchos', 42);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(268, 'Chugchillán', 42);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(269, 'Isinliví', 42);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(270, 'Las Pampas', 42);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(271, 'Palo Quemado', 42);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(272, 'Lizarzaburu', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(273, 'Maldonado', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(274, 'Velasco', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(275, 'Veloz', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(276, 'Yaruquíes', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(277, 'Riobamba', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(278, 'Cacha (Cab. En Machángara)', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(279, 'Calpi', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(280, 'Cubijíes', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(281, 'Flores', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(282, 'Licán', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(283, 'Licto', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(284, 'Pungalá', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(285, 'Punín', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(286, 'Quimiag', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(287, 'San Juan', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(288, 'San Luis', 43);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(289, 'Alausí', 44);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(290, 'Achupallas', 44);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(291, 'Cumandá', 44);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(292, 'Guasuntos', 44);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(293, 'Huigra', 44);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(294, 'Multitud', 44);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(295, 'Pistishí (Nariz del Diablo)', 44);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(296, 'Pumallacta', 44);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(297, 'Sevilla', 44);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(298, 'Sibambe', 44);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(299, 'Tixán', 44);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(300, 'Cajabamba', 45);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(301, 'Sicalpa', 45);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(302, 'Villa La Unión (Cajabamba)', 45);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(303, 'Cañi', 45);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(304, 'Columbe', 45);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(305, 'Juan de Velasco (Pangor)', 45);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(306, 'Santiago de Quito (Cab. En San Antonio de Quito)', 45);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(307, 'Chambo', 46);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(308, 'Chunchi', 47);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(309, 'Capzol', 47);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(310, 'Compud', 47);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(311, 'Gonzol', 47);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(312, 'Llagos', 47);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(313, 'Guamote', 48);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(314, 'Cebadas', 48);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(315, 'Palmira', 48);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(316, 'El Rosario', 49);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(317, 'La Matriz', 49);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(318, 'Guano', 49);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(319, 'Guanando', 49);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(320, 'Ilapo', 49);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(321, 'La Providencia', 49);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(322, 'San Andrés', 49);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(323, 'San Gerardo de Pacaicaguán', 49);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(324, 'San Isidro de Patulú', 49);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(325, 'San José del Chazo', 49);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(326, 'Santa Fé de Galán', 49);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(327, 'Valparaíso', 49);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(328, 'Pallatanga', 50);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(329, 'Penipe', 51);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(330, 'El Altar', 51);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(331, 'Matus', 51);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(332, 'Puela', 51);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(333, 'San Antonio de Bayushig', 51);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(334, 'La Candelaria', 51);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(335, 'Bilbao (Cab.En Quilluyacu)', 51);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(336, 'Cumandá', 52);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(337, 'La Providencia', 53);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(338, 'Machala', 53);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(339, 'Puerto Bolívar', 53);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(340, 'Nueve de Mayo', 53);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(341, 'El Cambio', 53);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(342, 'Machala', 53);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(343, 'El Cambio', 53);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(344, 'El Retiro', 53);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(345, 'Arenillas', 54);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(346, 'Chacras', 54);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(347, 'La Libertad', 54);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(348, 'Las Lajas (Cab. En La Victoria)', 54);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(349, 'Palmales', 54);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(350, 'Carcabón', 54);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(351, 'Paccha', 55);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(352, 'Ayapamba', 55);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(353, 'Cordoncillo', 55);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(354, 'Milagro', 55);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(355, 'San José', 55);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(356, 'San Juan de Cerro Azul', 55);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(357, 'Balsas', 56);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(358, 'Bellamaría', 56);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(359, 'Chilla', 57);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(360, 'El Guabo', 58);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(361, 'Barbones (Sucre)', 58);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(362, 'La Iberia', 58);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(363, 'Tendales (Cab.En Puerto Tendales)', 58);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(364, 'Río Bonito', 58);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(365, 'Ecuador', 59);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(366, 'El Paraíso', 59);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(367, 'Hualtaco', 59);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(368, 'Milton Reyes', 59);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(369, 'Unión Lojana', 59);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(370, 'Huaquillas', 59);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(371, 'Marcabelí', 60);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(372, 'El Ingenio', 60);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(373, 'Bolívar', 61);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(374, 'Loma de Franco', 61);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(375, 'Ochoa León (Matriz)', 61);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(376, 'Tres Cerritos', 61);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(377, 'Pasaje', 61);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(378, 'Buenavista', 61);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(379, 'Casacay', 61);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(380, 'La Peaña', 61);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(381, 'Progreso', 61);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(382, 'Uzhcurrumi', 61);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(383, 'Cañaquemada', 61);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(384, 'La Matriz', 62);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(385, 'La Susaya', 62);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(386, 'Piñas Grande', 62);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(387, 'Piñas', 62);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(388, 'Capiro (Cab. En La Capilla de Capiro)', 62);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(389, 'La Bocana', 62);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(390, 'Moromoro (Cab. En El Vado)', 62);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(391, 'Piedras', 62);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(392, 'San Roque (Ambrosio Maldonado)', 62);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(393, 'Saracay', 62);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(394, 'Portovelo', 63);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(395, 'Curtincapa', 63);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(396, 'Morales', 63);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(397, 'Salatí', 63);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(398, 'Santa Rosa', 64);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(399, 'Puerto Jelí', 64);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(400, 'Balneario Jambelí (Satélite)', 64);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(401, 'Jumón (Satélite)', 64);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(402, 'Nuevo Santa Rosa', 64);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(403, 'Santa Rosa', 64);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(404, 'Bellavista', 64);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(405, 'Jambelí', 64);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(406, 'La Avanzada', 64);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(407, 'San Antonio', 64);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(408, 'Torata', 64);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(409, 'Victoria', 64);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(410, 'Bellamaría', 64);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(411, 'Zaruma', 65);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(412, 'Abañín', 65);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(413, 'Arcapamba', 65);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(414, 'Guanazán', 65);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(415, 'Guizhaguiña', 65);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(416, 'Huertas', 65);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(417, 'Malvas', 65);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(418, 'Muluncay Grande', 65);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(419, 'Sinsao', 65);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(420, 'Salvias', 65);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(421, 'La Victoria', 66);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(422, 'Platanillos', 66);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(423, 'Valle Hermoso', 66);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(424, 'La Victoria', 66);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(425, 'La Libertad', 66);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(426, 'El Paraíso', 66);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(427, 'San Isidro', 66);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(428, 'Bartolomé Ruiz (César Franco Carrión)', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(429, '5 de Agosto', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(430, 'Esmeraldas', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(431, 'Luis Tello (Las Palmas)', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(432, 'Simón Plata Torres', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(433, 'Esmeraldas', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(434, 'Atacames', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(435, 'Camarones (Cab. En San Vicente)', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(436, 'Crnel. Carlos Concha Torres (Cab.En Huele)', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(437, 'Chinca', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(438, 'Chontaduro', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(439, 'Chumundé', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(440, 'Lagarto', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(441, 'La Unión', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(442, 'Majua', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(443, 'Montalvo (Cab. En Horqueta)', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(444, 'Río Verde', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(445, 'Rocafuerte', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(446, 'San Mateo', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(447, 'Súa (Cab. En La Bocana)', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(448, 'Tabiazo', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(449, 'Tachina', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(450, 'Tonchigüe', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(451, 'Vuelta Larga', 67);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(452, 'Valdez (Limones)', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(453, 'Anchayacu', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(454, 'Atahualpa (Cab. En Camarones)', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(455, 'Borbón', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(456, 'La Tola', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(457, 'Luis Vargas Torres (Cab. En Playa de Oro)', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(458, 'Maldonado', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(459, 'Pampanal de Bolívar', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(460, 'San Francisco de Onzole', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(461, 'Santo Domingo de Onzole', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(462, 'Selva Alegre', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(463, 'Telembí', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(464, 'Colón Eloy del María', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(465, 'San José de Cayapas', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(466, 'Timbiré', 68);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(467, 'Muisne', 69);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(468, 'Bolívar', 69);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(469, 'Daule', 69);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(470, 'Galera', 69);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(471, 'Quingue (Olmedo Perdomo Franco)', 69);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(472, 'Salima', 69);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(473, 'San Francisco', 69);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(474, 'San Gregorio', 69);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(475, 'San José de Chamanga (Cab.En Chamanga)', 69);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(476, 'Rosa Zárate (Quinindé)', 70);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(477, 'Cube', 70);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(478, 'Chura (Chancama) (Cab. En El Yerbero)', 70);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(479, 'Malimpia', 70);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(480, 'Viche', 70);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(481, 'La Unión', 70);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(482, 'San Lorenzo', 71);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(483, 'Alto Tambo (Cab. En Guadual)', 71);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(484, 'Ancón (Pichangal) (Cab. En Palma Real)', 71);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(485, 'Calderón', 71);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(486, 'Carondelet', 71);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(487, '5 de Junio (Cab. En Uimbi)', 71);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(488, 'Concepción', 71);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(489, 'Mataje (Cab. En Santander)', 71);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(490, 'San Javier de Cachaví (Cab. En San Javier)', 71);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(491, 'Santa Rita', 71);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(492, 'Tambillo', 71);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(493, 'Tululbí (Cab. En Ricaurte)', 71);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(494, 'Urbina', 71);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(495, 'Atacames', 72);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(496, 'La Unión', 72);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(497, 'Súa (Cab. En La Bocana)', 72);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(498, 'Tonchigüe', 72);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(499, 'Tonsupa', 72);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(500, 'Rioverde', 73);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(501, 'Chontaduro', 73);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(502, 'Chumundé', 73);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(503, 'Lagarto', 73);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(504, 'Montalvo (Cab. En Horqueta)', 73);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(505, 'Rocafuerte', 73);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(506, 'La Concordia', 74);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(507, 'Monterrey', 74);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(508, 'La Villegas', 74);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(509, 'Plan Piloto', 74);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(510, 'Ayacucho', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(511, 'Bolívar (Sagrario)', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(512, 'Carbo (Concepción)', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(513, 'Febres Cordero', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(514, 'García Moreno', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(515, 'Letamendi', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(516, 'Nueve de Octubre', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(517, 'Olmedo (San Alejo)', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(518, 'Roca', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(519, 'Rocafuerte', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(520, 'Sucre', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(521, 'Tarqui', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(522, 'Urdaneta', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(523, 'Ximena', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(524, 'Pascuales', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(525, 'Guayaquil', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(526, 'Chongón', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(527, 'Juan Gómez Rendón (Progreso)', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(528, 'Morro', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(529, 'Pascuales', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(530, 'Playas (Gral. Villamil)', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(531, 'Posorja', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(532, 'Puná', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(533, 'Tenguel', 75);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(534, 'Alfredo Baquerizo Moreno (Juján)', 76);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(535, 'Balao', 77);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(536, 'Balzar', 78);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(537, 'Colimes', 79);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(538, 'San Jacinto', 79);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(539, 'Daule', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(540, 'La Aurora (Satélite)', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(541, 'Banife', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(542, 'Emiliano Caicedo Marcos', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(543, 'Magro', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(544, 'Padre Juan Bautista Aguirre', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(545, 'Santa Clara', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(546, 'Vicente Piedrahita', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(547, 'Daule', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(548, 'Isidro Ayora (Soledad)', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(549, 'Juan Bautista Aguirre (Los Tintos)', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(550, 'Laurel', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(551, 'Limonal', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(552, 'Lomas de Sargentillo', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(553, 'Los Lojas (Enrique Baquerizo Moreno)', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(554, 'Piedrahita (Nobol)', 80);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(555, 'Eloy Alfaro (Durán)', 81);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(556, 'El Recreo', 81);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(557, 'Eloy Alfaro (Durán)', 81);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(558, 'Velasco Ibarra (El Empalme)', 82);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(559, 'Guayas (Pueblo Nuevo)', 82);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(560, 'El Rosario', 82);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(561, 'El Triunfo', 83);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(562, 'Milagro', 84);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(563, 'Chobo', 84);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(564, 'General Elizalde (Bucay)', 84);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(565, 'Mariscal Sucre (Huaques)', 84);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(566, 'Roberto Astudillo (Cab. En Cruce de Venecia)', 84);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(567, 'Naranjal', 85);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(568, 'Jesús María', 85);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(569, 'San Carlos', 85);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(570, 'Santa Rosa de Flandes', 85);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(571, 'Taura', 85);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(572, 'Naranjito', 86);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(573, 'Palestina', 87);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(574, 'Pedro Carbo', 88);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(575, 'Valle de La Virgen', 88);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(576, 'Sabanilla', 88);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(577, 'Samborondón', 89);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(578, 'La Puntilla (Satélite)', 89);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(579, 'Samborondón', 89);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(580, 'Tarifa', 89);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(581, 'Santa Lucía', 90);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(582, 'Bocana', 91);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(583, 'Candilejos', 91);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(584, 'Central', 91);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(585, 'Paraíso', 91);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(586, 'San Mateo', 91);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(587, 'El Salitre (Las Ramas)', 91);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(588, 'Gral. Vernaza (Dos Esteros)', 91);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(589, 'La Victoria (Ñauza)', 91);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(590, 'Junquillal', 91);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(591, 'San Jacinto de Yaguachi', 92);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(592, 'Crnel. Lorenzo de Garaicoa (Pedregal)', 92);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(593, 'Crnel. Marcelino Maridueña (San Carlos)', 92);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(594, 'Gral. Pedro J. Montero (Boliche)', 92);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(595, 'Simón Bolívar', 92);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(596, 'Yaguachi Viejo (Cone)', 92);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(597, 'Virgen de Fátima', 92);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(598, 'General Villamil (Playas)', 93);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(599, 'Simón Bolívar', 94);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(600, 'Crnel.Lorenzo de Garaicoa (Pedregal)', 94);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(601, 'Coronel Marcelino Maridueña (San Carlos)', 95);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(602, 'Lomas de Sargentillo', 96);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(603, 'Isidro Ayora (Soledad)', 96);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(604, 'Narcisa de Jesús', 97);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(605, 'General Antonio Elizalde (Bucay)', 98);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(606, 'Isidro Ayora', 99);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(607, 'Caranqui', 100);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(608, 'Guayaquil de Alpachaca', 100);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(609, 'Sagrario', 100);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(610, 'San Francisco', 100);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(611, 'La Dolorosa del Priorato', 100);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(612, 'San Miguel de Ibarra', 100);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(613, 'Ambuquí', 100);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(614, 'Angochagua', 100);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(615, 'Carolina', 100);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(616, 'La Esperanza', 100);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(617, 'Lita', 100);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(618, 'Salinas', 100);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(619, 'San Antonio', 100);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(620, 'Andrade Marín (Lourdes)', 101);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(621, 'Atuntaqui', 101);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(622, 'Atuntaqui', 101);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(623, 'Imbaya (San Luis de Cobuendo)', 101);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(624, 'San Francisco de Natabuela', 101);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(625, 'San José de Chaltura', 101);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(626, 'San Roque', 101);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(627, 'Sagrario', 102);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(628, 'San Francisco', 102);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(629, 'Cotacachi', 102);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(630, 'Apuela', 102);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(631, 'García Moreno (Llurimagua)', 102);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(632, 'Imantag', 102);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(633, 'Peñaherrera', 102);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(634, 'Plaza Gutiérrez (Calvario)', 102);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(635, 'Quiroga', 102);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(636, '6 de Julio de Cuellaje (Cab. En Cuellaje)', 102);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(637, 'Vacas Galindo (El Churo) (Cab.En San Miguel Alto', 102);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(638, 'Jordán', 103);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(639, 'San Luis', 103);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(640, 'Otavalo', 103);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(641, 'Dr. Miguel Egas Cabezas (Peguche)', 103);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(642, 'Eugenio Espejo (Calpaquí)', 103);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(643, 'González Suárez', 103);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(644, 'Pataquí', 103);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(645, 'San José de Quichinche', 103);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(646, 'San Juan de Ilumán', 103);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(647, 'San Pablo', 103);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(648, 'San Rafael', 103);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(649, 'Selva Alegre (Cab.En San Miguel de Pamplona)', 103);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(650, 'Pimampiro', 104);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(651, 'Chugá', 104);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(652, 'Mariano Acosta', 104);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(653, 'San Francisco de Sigsipamba', 104);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(654, 'Urcuquí Cabecera Cantonal', 105);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(655, 'Cahuasquí', 105);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(656, 'La Merced de Buenos Aires', 105);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(657, 'Pablo Arenas', 105);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(658, 'San Blas', 105);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(659, 'Tumbabiro', 105);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(660, 'El Sagrario', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(661, 'San Sebastián', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(662, 'Sucre', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(663, 'Valle', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(664, 'Loja', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(665, 'Chantaco', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(666, 'Chuquiribamba', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(667, 'El Cisne', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(668, 'Gualel', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(669, 'Jimbilla', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(670, 'Malacatos (Valladolid)', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(671, 'San Lucas', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(672, 'San Pedro de Vilcabamba', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(673, 'Santiago', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(674, 'Taquil (Miguel Riofrío)', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(675, 'Vilcabamba (Victoria)', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(676, 'Yangana (Arsenio Castillo)', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(677, 'Quinara', 106);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(678, 'Cariamanga', 107);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(679, 'Chile', 107);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(680, 'San Vicente', 107);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(681, 'Cariamanga', 107);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(682, 'Colaisaca', 107);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(683, 'El Lucero', 107);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(684, 'Utuana', 107);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(685, 'Sanguillín', 107);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(686, 'Catamayo', 108);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(687, 'San José', 108);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(688, 'Catamayo (La Toma)', 108);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(689, 'El Tambo', 108);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(690, 'Guayquichuma', 108);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(691, 'San Pedro de La Bendita', 108);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(692, 'Zambi', 108);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(693, 'Celica', 109);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(694, 'Cruzpamba (Cab. En Carlos Bustamante)', 109);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(695, 'Chaquinal', 109);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(696, '12 de Diciembre (Cab. En Achiotes)', 109);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(697, 'Pindal (Federico Páez)', 109);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(698, 'Pozul (San Juan de Pozul)', 109);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(699, 'Sabanilla', 109);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(700, 'Tnte. Maximiliano Rodríguez Loaiza', 109);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(701, 'Chaguarpamba', 110);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(702, 'Buenavista', 110);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(703, 'El Rosario', 110);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(704, 'Santa Rufina', 110);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(705, 'Amarillos', 110);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(706, 'Amaluza', 111);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(707, 'Bellavista', 111);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(708, 'Jimbura', 111);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(709, 'Santa Teresita', 111);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(710, '27 de Abril (Cab. En La Naranja)', 111);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(711, 'El Ingenio', 111);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(712, 'El Airo', 111);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(713, 'Gonzanamá', 112);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(714, 'Changaimina (La Libertad)', 112);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(715, 'Fundochamba', 112);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(716, 'Nambacola', 112);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(717, 'Purunuma (Eguiguren)', 112);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(718, 'Quilanga (La Paz)', 112);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(719, 'Sacapalca', 112);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(720, 'San Antonio de Las Aradas (Cab. En Las Aradas)', 112);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(721, 'General Eloy Alfaro (San Sebastián)', 113);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(722, 'Macará (Manuel Enrique Rengel Suquilanda)', 113);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(723, 'Macará', 113);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(724, 'Larama', 113);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(725, 'La Victoria', 113);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(726, 'Sabiango (La Capilla)', 113);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(727, 'Catacocha', 114);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(728, 'Lourdes', 114);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(729, 'Catacocha', 114);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(730, 'Cangonamá', 114);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(731, 'Guachanamá', 114);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(732, 'La Tingue', 114);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(733, 'Lauro Guerrero', 114);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(734, 'Olmedo (Santa Bárbara)', 114);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(735, 'Orianga', 114);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(736, 'San Antonio', 114);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(737, 'Casanga', 114);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(738, 'Yamana', 114);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(739, 'Alamor', 115);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(740, 'Ciano', 115);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(741, 'El Arenal', 115);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(742, 'El Limo (Mariana de Jesús)', 115);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(743, 'Mercadillo', 115);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(744, 'Vicentino', 115);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(745, 'Saraguro', 116);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(746, 'El Paraíso de Celén', 116);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(747, 'El Tablón', 116);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(748, 'Lluzhapa', 116);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(749, 'Manú', 116);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(750, 'San Antonio de Qumbe (Cumbe)', 116);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(751, 'San Pablo de Tenta', 116);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(752, 'San Sebastián de Yúluc', 116);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(753, 'Selva Alegre', 116);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(754, 'Urdaneta (Paquishapa)', 116);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(755, 'Sumaypamba', 116);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(756, 'Sozoranga', 117);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(757, 'Nueva Fátima', 117);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(758, 'Tacamoros', 117);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(759, 'Zapotillo', 118);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(760, 'Mangahurco (Cazaderos)', 118);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(761, 'Garzareal', 118);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(762, 'Limones', 118);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(763, 'Paletillas', 118);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(764, 'Bolaspamba', 118);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(765, 'Pindal', 119);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(766, 'Chaquinal', 119);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(767, '12 de Diciembre (Cab.En Achiotes)', 119);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(768, 'Milagros', 119);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(769, 'Quilanga', 120);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(770, 'Fundochamba', 120);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(771, 'San Antonio de Las Aradas (Cab. En Las Aradas)', 120);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(772, 'Olmedo', 121);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(773, 'La Tingue', 121);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(774, 'Clemente Baquerizo', 122);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(775, 'Dr. Camilo Ponce', 122);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(776, 'Barreiro', 122);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(777, 'El Salto', 122);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(778, 'Babahoyo', 122);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(779, 'Barreiro (Santa Rita)', 122);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(780, 'Caracol', 122);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(781, 'Febres Cordero (Las Juntas)', 122);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(782, 'Pimocha', 122);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(783, 'La Unión', 122);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(784, 'Baba', 123);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(785, 'Guare', 123);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(786, 'Isla de Bejucal', 123);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(787, 'Montalvo', 124);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(788, 'Puebloviejo', 125);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(789, 'Puerto Pechiche', 125);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(790, 'San Juan', 125);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(791, 'Quevedo', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(792, 'San Camilo', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(793, 'San José', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(794, 'Guayacán', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(795, 'Nicolás Infante Díaz', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(796, 'San Cristóbal', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(797, 'Siete de Octubre', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(798, '24 de Mayo', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(799, 'Venus del Río Quevedo', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(800, 'Viva Alfaro', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(801, 'Quevedo', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(802, 'Buena Fé', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(803, 'Mocache', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(804, 'San Carlos', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(805, 'Valencia', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(806, 'La Esperanza', 126);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(807, 'Catarama', 127);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(808, 'Ricaurte', 127);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(809, '10 de Noviembre', 128);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(810, 'Ventanas', 128);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(811, 'Quinsaloma', 128);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(812, 'Zapotal', 128);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(813, 'Chacarita', 128);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(814, 'Los Ángeles', 128);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(815, 'Vinces', 129);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(816, 'Antonio Sotomayor (Cab. En Playas de Vinces)', 129);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(817, 'Palenque', 129);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(818, 'Palenque', 130);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(819, 'San Jacinto de Buena Fé', 131);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(820, '7 de Agosto', 131);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(821, '11 de Octubre', 131);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(822, 'San Jacinto de Buena Fé', 131);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(823, 'Patricia Pilar', 131);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(824, 'Valencia', 132);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(825, 'Mocache', 133);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(826, 'Quinsaloma', 134);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(827, 'Portoviejo', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(828, '12 de Marzo', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(829, 'Colón', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(830, 'Picoazá', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(831, 'San Pablo', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(832, 'Andrés de Vera', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(833, 'Francisco Pacheco', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(834, '18 de Octubre', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(835, 'Simón Bolívar', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(836, 'Portoviejo', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(837, 'Abdón Calderón (San Francisco)', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(838, 'Alhajuela (Bajo Grande)', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(839, 'Crucita', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(840, 'Pueblo Nuevo', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(841, 'Riochico (Río Chico)', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(842, 'San Plácido', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(843, 'Chirijos', 135);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(844, 'Calceta', 136);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(845, 'Membrillo', 136);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(846, 'Quiroga', 136);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(847, 'Chone', 137);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(848, 'Santa Rita', 137);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(849, 'Chone', 137);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(850, 'Boyacá', 137);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(851, 'Canuto', 137);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(852, 'Convento', 137);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(853, 'Chibunga', 137);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(854, 'Eloy Alfaro', 137);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(855, 'Ricaurte', 137);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(856, 'San Antonio', 137);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(857, 'El Carmen', 138);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(858, '4 de Diciembre', 138);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(859, 'El Carmen', 138);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(860, 'Wilfrido Loor Moreira (Maicito)', 138);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(861, 'San Pedro de Suma', 138);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(862, 'Flavio Alfaro', 139);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(863, 'San Francisco de Novillo (Cab. En', 139);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(864, 'Zapallo', 139);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(865, 'Dr. Miguel Morán Lucio', 140);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(866, 'Manuel Inocencio Parrales Y Guale', 140);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(867, 'San Lorenzo de Jipijapa', 140);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(868, 'Jipijapa', 140);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(869, 'América', 140);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(870, 'El Anegado (Cab. En Eloy Alfaro)', 140);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(871, 'Julcuy', 140);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(872, 'La Unión', 140);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(873, 'Machalilla', 140);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(874, 'Membrillal', 140);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(875, 'Pedro Pablo Gómez', 140);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(876, 'Puerto de Cayo', 140);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(877, 'Puerto López', 140);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(878, 'Junín', 141);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(879, 'Los Esteros', 142);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(880, 'Manta', 142);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(881, 'San Mateo', 142);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(882, 'Tarqui', 142);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(883, 'Eloy Alfaro', 142);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(884, 'Manta', 142);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(885, 'San Lorenzo', 142);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(886, 'Santa Marianita (Boca de Pacoche)', 142);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(887, 'Anibal San Andrés', 143);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(888, 'Montecristi', 143);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(889, 'El Colorado', 143);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(890, 'General Eloy Alfaro', 143);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(891, 'Leonidas Proaño', 143);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(892, 'Montecristi', 143);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(893, 'Jaramijó', 143);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(894, 'La Pila', 143);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(895, 'Paján', 144);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(896, 'Campozano (La Palma de Paján)', 144);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(897, 'Cascol', 144);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(898, 'Guale', 144);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(899, 'Lascano', 144);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(900, 'Pichincha', 145);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(901, 'Barraganete', 145);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(902, 'San Sebastián', 145);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(903, 'Rocafuerte', 146);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(904, 'Santa Ana', 147);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(905, 'Lodana', 147);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(906, 'Santa Ana de Vuelta Larga', 147);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(907, 'Ayacucho', 147);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(908, 'Honorato Vásquez (Cab. En Vásquez)', 147);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(909, 'La Unión', 147);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(910, 'Olmedo', 147);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(911, 'San Pablo (Cab. En Pueblo Nuevo)', 147);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(912, 'Bahía de Caráquez', 148);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(913, 'Leonidas Plaza Gutiérrez', 148);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(914, 'Bahía de Caráquez', 148);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(915, 'Canoa', 148);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(916, 'Cojimíes', 148);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(917, 'Charapotó', 148);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(918, '10 de Agosto', 148);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(919, 'Jama', 148);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(920, 'Pedernales', 148);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(921, 'San Isidro', 148);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(922, 'San Vicente', 148);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(923, 'Tosagua', 149);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(924, 'Bachillero', 149);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(925, 'Angel Pedro Giler (La Estancilla)', 149);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(926, 'Sucre', 150);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(927, 'Bellavista', 150);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(928, 'Noboa', 150);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(929, 'Arq. Sixto Durán Ballén', 150);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(930, 'Pedernales', 151);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(931, 'Cojimíes', 151);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(932, '10 de Agosto', 151);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(933, 'Atahualpa', 151);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(934, 'Olmedo', 152);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(935, 'Puerto López', 153);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(936, 'Machalilla', 153);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(937, 'Salango', 153);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(938, 'Jama', 154);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(939, 'Jaramijó', 155);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(940, 'San Vicente', 156);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(941, 'Canoa', 156);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(942, 'Macas', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(943, 'Alshi (Cab. En 9 de Octubre)', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(944, 'Chiguaza', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(945, 'General Proaño', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(946, 'Huasaga (Cab.En Wampuik)', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(947, 'Macuma', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(948, 'San Isidro', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(949, 'Sevilla Don Bosco', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(950, 'Sinaí', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(951, 'Taisha', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(952, 'Zuña (Zúñac)', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(953, 'Tuutinentza', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(954, 'Cuchaentza', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(955, 'San José de Morona', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(956, 'Río Blanco', 157);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(957, 'Gualaquiza', 158);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(958, 'Mercedes Molina', 158);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(959, 'Gualaquiza', 158);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(960, 'Amazonas (Rosario de Cuyes)', 158);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(961, 'Bermejos', 158);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(962, 'Bomboiza', 158);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(963, 'Chigüinda', 158);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(964, 'El Rosario', 158);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(965, 'Nueva Tarqui', 158);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(966, 'San Miguel de Cuyes', 158);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(967, 'El Ideal', 158);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(968, 'General Leonidas Plaza Gutiérrez (Limón)', 159);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(969, 'Indanza', 159);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(970, 'Pan de Azúcar', 159);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(971, 'San Antonio (Cab. En San Antonio Centro', 159);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(972, 'San Carlos de Limón (San Carlos del', 159);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(973, 'San Juan Bosco', 159);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(974, 'San Miguel de Conchay', 159);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(975, 'Santa Susana de Chiviaza (Cab. En Chiviaza)', 159);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(976, 'Yunganza (Cab. En El Rosario)', 159);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(977, 'Palora (Metzera)', 160);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(978, 'Arapicos', 160);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(979, 'Cumandá (Cab. En Colonia Agrícola Sevilla del Oro)', 160);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(980, 'Huamboya', 160);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(981, 'Sangay (Cab. En Nayamanaca)', 160);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(982, 'Santiago de Méndez', 161);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(983, 'Copal', 161);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(984, 'Chupianza', 161);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(985, 'Patuca', 161);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(986, 'San Luis de El Acho (Cab. En El Acho)', 161);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(987, 'Santiago', 161);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(988, 'Tayuza', 161);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(989, 'San Francisco de Chinimbimi', 161);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(990, 'Sucúa', 162);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(991, 'Asunción', 162);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(992, 'Huambi', 162);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(993, 'Logroño', 162);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(994, 'Yaupi', 162);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(995, 'Santa Marianita de Jesús', 162);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(996, 'Huamboya', 163);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(997, 'Chiguaza', 163);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(998, 'Pablo Sexto', 163);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(999, 'San Juan Bosco', 164);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1000, 'Pan de Azúcar', 164);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1001, 'San Carlos de Limón', 164);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1002, 'San Jacinto de Wakambeis', 164);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1003, 'Santiago de Pananza', 164);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1004, 'Taisha', 165);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1005, 'Huasaga (Cab. En Wampuik)', 165);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1006, 'Macuma', 165);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1007, 'Tuutinentza', 165);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1008, 'Pumpuentsa', 165);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1009, 'Logroño', 166);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1010, 'Yaupi', 166);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1011, 'Shimpis', 166);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1012, 'Pablo Sexto', 167);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1013, 'Santiago', 168);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1014, 'San José de Morona', 168);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1015, 'Tena', 169);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1016, 'Ahuano', 169);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1017, 'Carlos Julio Arosemena Tola (Zatza-Yacu)', 169);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1018, 'Chontapunta', 169);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1019, 'Pano', 169);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1020, 'Puerto Misahualli', 169);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1021, 'Puerto Napo', 169);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1022, 'Tálag', 169);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1023, 'San Juan de Muyuna', 169);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1024, 'Archidona', 170);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1025, 'Avila', 170);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1026, 'Cotundo', 170);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1027, 'Loreto', 170);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1028, 'San Pablo de Ushpayacu', 170);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1029, 'Puerto Murialdo', 170);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1030, 'El Chaco', 171);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1031, 'Gonzalo Díaz de Pineda (El Bombón)', 171);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1032, 'Linares', 171);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1033, 'Oyacachi', 171);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1034, 'Santa Rosa', 171);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1035, 'Sardinas', 171);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1036, 'Baeza', 172);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1037, 'Cosanga', 172);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1038, 'Cuyuja', 172);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1039, 'Papallacta', 172);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1040, 'San Francisco de Borja (Virgilio Dávila)', 172);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1041, 'San José del Payamino', 172);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1042, 'Sumaco', 172);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1043, 'Carlos Julio Arosemena Tola', 173);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1044, 'Puyo', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1045, 'Arajuno', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1046, 'Canelos', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1047, 'Curaray', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1048, 'Diez de Agosto', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1049, 'Fátima', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1050, 'Montalvo (Andoas)', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1051, 'Pomona', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1052, 'Río Corrientes', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1053, 'Río Tigre', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1054, 'Santa Clara', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1055, 'Sarayacu', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1056, 'Simón Bolívar (Cab. En Mushullacta)', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1057, 'Tarqui', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1058, 'Teniente Hugo Ortiz', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1059, 'Veracruz (Indillama) (Cab. En Indillama)', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1060, 'El Triunfo', 174);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1061, 'Mera', 175);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1062, 'Madre Tierra', 175);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1063, 'Shell', 175);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1064, 'Santa Clara', 176);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1065, 'San José', 176);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1066, 'Arajuno', 177);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1067, 'Curaray', 177);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1068, 'Belisario Quevedo', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1069, 'Carcelén', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1070, 'Centro Histórico', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1071, 'Cochapamba', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1072, 'Comité del Pueblo', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1073, 'Cotocollao', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1074, 'Chilibulo', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1075, 'Chillogallo', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1076, 'Chimbacalle', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1077, 'El Condado', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1078, 'Guamaní', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1079, 'Iñaquito', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1080, 'Itchimbía', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1081, 'Jipijapa', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1082, 'Kennedy', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1083, 'La Argelia', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1084, 'La Concepción', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1085, 'La Ecuatoriana', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1086, 'La Ferroviaria', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1087, 'La Libertad', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1088, 'La Magdalena', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1089, 'La Mena', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1090, 'Mariscal Sucre', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1091, 'Ponceano', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1092, 'Puengasí', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1093, 'Quitumbe', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1094, 'Rumipamba', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1095, 'San Bartolo', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1096, 'San Isidro del Inca', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1097, 'San Juan', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1098, 'Solanda', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1099, 'Turubamba', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1100, 'Quito Distrito Metropolitano', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1101, 'Alangasí', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1102, 'Amaguaña', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1103, 'Atahualpa', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1104, 'Calacalí', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1105, 'Calderón', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1106, 'Conocoto', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1107, 'Cumbayá', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1108, 'Chavezpamba', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1109, 'Checa', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1110, 'El Quinche', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1111, 'Gualea', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1112, 'Guangopolo', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1113, 'Guayllabamba', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1114, 'La Merced', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1115, 'Llano Chico', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1116, 'Lloa', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1117, 'Mindo', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1118, 'Nanegal', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1119, 'Nanegalito', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1120, 'Nayón', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1121, 'Nono', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1122, 'Pacto', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1123, 'Pedro Vicente Maldonado', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1124, 'Perucho', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1125, 'Pifo', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1126, 'Píntag', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1127, 'Pomasqui', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1128, 'Puéllaro', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1129, 'Puembo', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1130, 'San Antonio', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1131, 'San José de Minas', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1132, 'San Miguel de Los Bancos', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1133, 'Tababela', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1134, 'Tumbaco', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1135, 'Yaruquí', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1136, 'Zambiza', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1137, 'Puerto Quito', 178);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1138, 'Ayora', 179);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1139, 'Cayambe', 179);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1140, 'Juan Montalvo', 179);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1141, 'Cayambe', 179);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1142, 'Ascázubi', 179);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1143, 'Cangahua', 179);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1144, 'Olmedo (Pesillo)', 179);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1145, 'Otón', 179);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1146, 'Santa Rosa de Cuzubamba', 179);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1147, 'Machachi', 180);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1148, 'Alóag', 180);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1149, 'Aloasí', 180);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1150, 'Cutuglahua', 180);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1151, 'El Chaupi', 180);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1152, 'Manuel Cornejo Astorga (Tandapi)', 180);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1153, 'Tambillo', 180);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1154, 'Uyumbicho', 180);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1155, 'Tabacundo', 181);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1156, 'La Esperanza', 181);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1157, 'Malchinguí', 181);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1158, 'Tocachi', 181);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1159, 'Tupigachi', 181);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1160, 'Sangolquí', 182);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1161, 'San Pedro de Taboada', 182);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1162, 'San Rafael', 182);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1163, 'Sangolqui', 182);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1164, 'Cotogchoa', 182);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1165, 'Rumipamba', 182);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1166, 'San Miguel de Los Bancos', 183);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1167, 'Mindo', 183);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1168, 'Pedro Vicente Maldonado', 183);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1169, 'Puerto Quito', 183);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1170, 'Pedro Vicente Maldonado', 184);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1171, 'Puerto Quito', 185);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1172, 'Atocha – Ficoa', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1173, 'Celiano Monge', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1174, 'Huachi Chico', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1175, 'Huachi Loreto', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1176, 'La Merced', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1177, 'La Península', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1178, 'Matriz', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1179, 'Pishilata', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1180, 'San Francisco', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1181, 'Ambato', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1182, 'Ambatillo', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1183, 'Atahualpa (Chisalata)', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1184, 'Augusto N. Martínez (Mundugleo)', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1185, 'Constantino Fernández (Cab. En Cullitahua)', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1186, 'Huachi Grande', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1187, 'Izamba', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1188, 'Juan Benigno Vela', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1189, 'Montalvo', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1190, 'Pasa', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1191, 'Picaigua', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1192, 'Pilagüín (Pilahüín)', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1193, 'Quisapincha (Quizapincha)', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1194, 'San Bartolomé de Pinllog', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1195, 'San Fernando (Pasa San Fernando)', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1196, 'Santa Rosa', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1197, 'Totoras', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1198, 'Cunchibamba', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1199, 'Unamuncho', 186);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1200, 'Baños de Agua Santa', 187);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1201, 'Lligua', 187);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1202, 'Río Negro', 187);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1203, 'Río Verde', 187);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1204, 'Ulba', 187);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1205, 'Cevallos', 188);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1206, 'Mocha', 189);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1207, 'Pinguilí', 189);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1208, 'Patate', 190);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1209, 'El Triunfo', 190);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1210, 'Los Andes (Cab. En Poatug)', 190);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1211, 'Sucre (Cab. En Sucre-Patate Urcu)', 190);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1212, 'Quero', 191);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1213, 'Rumipamba', 191);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1214, 'Yanayacu - Mochapata (Cab. En Yanayacu)', 191);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1215, 'Pelileo', 192);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1216, 'Pelileo Grande', 192);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1217, 'Pelileo', 192);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1218, 'Benítez (Pachanlica)', 192);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1219, 'Bolívar', 192);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1220, 'Cotaló', 192);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1221, 'Chiquicha (Cab. En Chiquicha Grande)', 192);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1222, 'El Rosario (Rumichaca)', 192);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1223, 'García Moreno (Chumaqui)', 192);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1224, 'Guambaló (Huambaló)', 192);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1225, 'Salasaca', 192);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1226, 'Ciudad Nueva', 193);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1227, 'Píllaro', 193);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1228, 'Píllaro', 193);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1229, 'Baquerizo Moreno', 193);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1230, 'Emilio María Terán (Rumipamba)', 193);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1231, 'Marcos Espinel (Chacata)', 193);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1232, 'Presidente Urbina (Chagrapamba -Patzucul)', 193);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1233, 'San Andrés', 193);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1234, 'San José de Poaló', 193);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1235, 'San Miguelito', 193);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1236, 'Tisaleo', 194);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1237, 'Quinchicoto', 194);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1238, 'El Limón', 195);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1239, 'Zamora', 195);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1240, 'Zamora', 195);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1241, 'Cumbaratza', 195);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1242, 'Guadalupe', 195);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1243, 'Imbana (La Victoria de Imbana)', 195);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1244, 'Paquisha', 195);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1245, 'Sabanilla', 195);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1246, 'Timbara', 195);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1247, 'Zumbi', 195);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1248, 'San Carlos de Las Minas', 195);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1249, 'Zumba', 196);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1250, 'Chito', 196);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1251, 'El Chorro', 196);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1252, 'El Porvenir del Carmen', 196);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1253, 'La Chonta', 196);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1254, 'Palanda', 196);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1255, 'Pucapamba', 196);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1256, 'San Francisco del Vergel', 196);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1257, 'Valladolid', 196);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1258, 'San Andrés', 196);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1259, 'Guayzimi', 197);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1260, 'Zurmi', 197);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1261, 'Nuevo Paraíso', 197);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1262, '28 de Mayo (San José de Yacuambi)', 198);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1263, 'La Paz', 198);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1264, 'Tutupali', 198);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1265, 'Yantzaza (Yanzatza)', 199);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1266, 'Chicaña', 199);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1267, 'El Pangui', 199);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1268, 'Los Encuentros', 199);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1269, 'El Pangui', 200);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1270, 'El Guisme', 200);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1271, 'Pachicutza', 200);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1272, 'Tundayme', 200);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1273, 'Zumbi', 201);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1274, 'Paquisha', 201);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1275, 'Triunfo-Dorado', 201);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1276, 'Panguintza', 201);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1277, 'Palanda', 202);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1278, 'El Porvenir del Carmen', 202);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1279, 'San Francisco del Vergel', 202);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1280, 'Valladolid', 202);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1281, 'La Canela', 202);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1282, 'Paquisha', 203);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1283, 'Bellavista', 203);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1284, 'Nuevo Quito', 203);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1285, 'Puerto Baquerizo Moreno', 204);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1286, 'El Progreso', 204);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1287, 'Isla Santa María (Floreana) (Cab. En Pto. Velasco Ibarra)', 204);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1288, 'Puerto Villamil', 205);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1289, 'Tomás de Berlanga (Santo Tomás)', 205);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1290, 'Puerto Ayora', 206);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1291, 'Bellavista', 206);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1292, 'Santa Rosa (Incluye La Isla Baltra)', 206);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1293, 'Nueva Loja', 207);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1294, 'Cuyabeno', 207);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1295, 'Dureno', 207);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1296, 'General Farfán', 207);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1297, 'Tarapoa', 207);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1298, 'El Eno', 207);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1299, 'Pacayacu', 207);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1300, 'Jambelí', 207);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1301, 'Santa Cecilia', 207);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1302, 'Aguas Negras', 207);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1303, 'El Dorado de Cascales', 208);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1304, 'El Reventador', 208);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1305, 'Gonzalo Pizarro', 208);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1306, 'Lumbaquí', 208);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1307, 'Puerto Libre', 208);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1308, 'Santa Rosa de Sucumbíos', 208);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1309, 'Puerto El Carmen del Putumayo', 209);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1310, 'Palma Roja', 209);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1311, 'Puerto Bolívar (Puerto Montúfar)', 209);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1312, 'Puerto Rodríguez', 209);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1313, 'Santa Elena', 209);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1314, 'Shushufindi', 210);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1315, 'Limoncocha', 210);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1316, 'Pañacocha', 210);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1317, 'San Roque (Cab. En San Vicente)', 210);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1318, 'San Pedro de Los Cofanes', 210);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1319, 'Siete de Julio', 210);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1320, 'La Bonita', 211);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1321, 'El Playón de San Francisco', 211);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1322, 'La Sofía', 211);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1323, 'Rosa Florida', 211);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1324, 'Santa Bárbara', 211);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1325, 'El Dorado de Cascales', 212);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1326, 'Santa Rosa de Sucumbíos', 212);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1327, 'Sevilla', 212);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1328, 'Tarapoa', 213);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1329, 'Cuyabeno', 213);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1330, 'Aguas Negras', 213);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1331, 'Puerto Francisco de Orellana (El Coca)', 214);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1332, 'Dayuma', 214);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1333, 'Taracoa (Nueva Esperanza: Yuca)', 214);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1334, 'Alejandro Labaka', 214);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1335, 'El Dorado', 214);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1336, 'El Edén', 214);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1337, 'García Moreno', 214);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1338, 'Inés Arango (Cab. En Western)', 214);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1339, 'La Belleza', 214);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1340, 'Nuevo Paraíso (Cab. En Unión', 214);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1341, 'San José de Guayusa', 214);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1342, 'San Luis de Armenia', 214);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1343, 'Tipitini', 215);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1344, 'Nuevo Rocafuerte', 215);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1345, 'Capitán Augusto Rivadeneyra', 215);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1346, 'Cononaco', 215);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1347, 'Santa María de Huiririma', 215);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1348, 'Tiputini', 215);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1349, 'Yasuní', 215);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1350, 'La Joya de Los Sachas', 216);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1351, 'Enokanqui', 216);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1352, 'Pompeya', 216);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1353, 'San Carlos', 216);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1354, 'San Sebastián del Coca', 216);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1355, 'Lago San Pedro', 216);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1356, 'Rumipamba', 216);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1357, 'Tres de Noviembre', 216);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1358, 'Unión Milagreña', 216);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1359, 'Loreto', 217);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1360, 'Avila (Cab. En Huiruno)', 217);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1361, 'Puerto Murialdo', 217);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1362, 'San José de Payamino', 217);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1363, 'San José de Dahuano', 217);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1364, 'San Vicente de Huaticocha', 217);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1365, 'Abraham Calazacón', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1366, 'Bombolí', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1367, 'Chiguilpe', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1368, 'Río Toachi', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1369, 'Río Verde', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1370, 'Santo Domingo de Los Colorados', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1371, 'Zaracay', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1372, 'Santo Domingo de Los Colorados', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1373, 'Alluriquín', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1374, 'Puerto Limón', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1375, 'Luz de América', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1376, 'San Jacinto del Búa', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1377, 'Valle Hermoso', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1378, 'El Esfuerzo', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1379, 'Santa María del Toachi', 218);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1380, 'Ballenita', 219);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1381, 'Santa Elena', 219);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1382, 'Santa Elena', 219);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1383, 'Atahualpa', 219);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1384, 'Colonche', 219);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1385, 'Chanduy', 219);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1386, 'Manglaralto', 219);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1387, 'Simón Bolívar (Julio Moreno)', 219);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1388, 'San José de Ancón', 219);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1389, 'La Libertad', 220);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1390, 'Carlos Espinoza Larrea', 221);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1391, 'Gral. Alberto Enríquez Gallo', 221);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1392, 'Vicente Rocafuerte', 221);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1393, 'Santa Rosa', 221);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1394, 'Salinas', 221);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1395, 'Anconcito', 221);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1396, 'José Luis Tamayo (Muey)', 221);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1397, 'Las Golondrinas', 222);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1398, 'Manga del Cura', 222);
INSERT INTO `tbl_parroquia` (`id`, `parroquia`, `id_canton`) VALUES(1399, 'El Piedrero', 222);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_provincia`
--

CREATE TABLE `tbl_provincia` (
  `id` bigint(20) NOT NULL,
  `provincia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_provincia`
--

INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(1, 'Azuay');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(2, 'Bolívar');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(3, 'Cañar');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(4, 'Carchi');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(5, 'Cotopaxi');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(6, 'Chimborazo');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(7, 'El Oro');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(8, 'Esmeraldas');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(9, 'Guayas');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(10, 'Imbabura');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(11, 'Loja');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(12, 'Los Rios');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(13, 'Manabi');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(14, 'Morona Santiago');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(15, 'Napo');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(16, 'Pastaza');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(17, 'Pichincha');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(18, 'Tungurahua');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(19, 'Zamora Chinchipe');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(20, 'Galápagos');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(21, 'Sucumbíos');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(22, 'Orellana');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(23, 'Santo Domingo de Los Tsáchilas');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(24, 'Santa Elena');
INSERT INTO `tbl_provincia` (`id`, `provincia`) VALUES(25, 'Zonas No Delimitadas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `idtbl_usuarios` bigint(20) NOT NULL,
  `nombres` varchar(1000) DEFAULT NULL,
  `apellidos` varchar(1000) DEFAULT NULL,
  `username` varchar(1000) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `tpo_usuario` varchar(1000) DEFAULT NULL,
  `tbl_empleado_idtbl_empleado` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`idtbl_usuarios`, `nombres`, `apellidos`, `username`, `password`, `tpo_usuario`, `tbl_empleado_idtbl_empleado`) VALUES(1, 'BARREIRO PINARGOTE', 'JEFFERSON ISAAC', '1315681575', '05c9cdf07f33111760b7b0e4e2bdd530', 'admin', NULL);
INSERT INTO `tbl_usuarios` (`idtbl_usuarios`, `nombres`, `apellidos`, `username`, `password`, `tpo_usuario`, `tbl_empleado_idtbl_empleado`) VALUES(2, 'sdfdsf', 'sddfs', '1316445418', '99c932980a925c19605d6173ab751ed7', 'usuario', 1);
INSERT INTO `tbl_usuarios` (`idtbl_usuarios`, `nombres`, `apellidos`, `username`, `password`, `tpo_usuario`, `tbl_empleado_idtbl_empleado`) VALUES(3, 'test2', 'test2', '1316445419', '1079938794915f54cb1f98ea95cfa1f7', 'usuario', 2);
INSERT INTO `tbl_usuarios` (`idtbl_usuarios`, `nombres`, `apellidos`, `username`, `password`, `tpo_usuario`, `tbl_empleado_idtbl_empleado`) VALUES(4, 'test3', 'test3', '1316445410', '45a1946284f2bd75a3d530a872990d71', 'usuario', 3);
INSERT INTO `tbl_usuarios` (`idtbl_usuarios`, `nombres`, `apellidos`, `username`, `password`, `tpo_usuario`, `tbl_empleado_idtbl_empleado`) VALUES(5, 'test3', 'test3', '1316445412', 'c3bbe13d672065818b17c0e7f3eb44ef', 'usuario', 4);
INSERT INTO `tbl_usuarios` (`idtbl_usuarios`, `nombres`, `apellidos`, `username`, `password`, `tpo_usuario`, `tbl_empleado_idtbl_empleado`) VALUES(6, 'test3', 'test3', '1316445411', '47e51c95ab50298ce9ca831b1a4b215d', 'usuario', 5);
INSERT INTO `tbl_usuarios` (`idtbl_usuarios`, `nombres`, `apellidos`, `username`, `password`, `tpo_usuario`, `tbl_empleado_idtbl_empleado`) VALUES(7, 'test3', 'test3', '1316445413', '233d5e9f67cd56dc943475883715c094', 'usuario', 6);
INSERT INTO `tbl_usuarios` (`idtbl_usuarios`, `nombres`, `apellidos`, `username`, `password`, `tpo_usuario`, `tbl_empleado_idtbl_empleado`) VALUES(8, 'test3', 'test3', '1316445414', '778af40152aba683c7532932e1a01d19', 'usuario', 7);
INSERT INTO `tbl_usuarios` (`idtbl_usuarios`, `nombres`, `apellidos`, `username`, `password`, `tpo_usuario`, `tbl_empleado_idtbl_empleado`) VALUES(9, 'test3', 'test3', '1316445415', '2eef1f53aa47eef343fde54ab1f7bfe3', 'usuario', 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_canton`
--
ALTER TABLE `tbl_canton`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_canton_tbl_provincia_id` (`id_provincia`);

--
-- Indices de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  ADD PRIMARY KEY (`idtbl_empleado`);

--
-- Indices de la tabla `tbl_parroquia`
--
ALTER TABLE `tbl_parroquia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_parroquia_tbl_canton_id` (`id_canton`);

--
-- Indices de la tabla `tbl_provincia`
--
ALTER TABLE `tbl_provincia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`idtbl_usuarios`),
  ADD KEY `fk_tbl_usuarios_tbl_empleado1_idx` (`tbl_empleado_idtbl_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_canton`
--
ALTER TABLE `tbl_canton`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  MODIFY `idtbl_empleado` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tbl_parroquia`
--
ALTER TABLE `tbl_parroquia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1400;

--
-- AUTO_INCREMENT de la tabla `tbl_provincia`
--
ALTER TABLE `tbl_provincia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `idtbl_usuarios` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_canton`
--
ALTER TABLE `tbl_canton`
  ADD CONSTRAINT `FK_tbl_canton_tbl_provincia_id` FOREIGN KEY (`id_provincia`) REFERENCES `tbl_provincia` (`id`);

--
-- Filtros para la tabla `tbl_parroquia`
--
ALTER TABLE `tbl_parroquia`
  ADD CONSTRAINT `FK_tbl_parroquia_tbl_canton_id` FOREIGN KEY (`id_canton`) REFERENCES `tbl_canton` (`id`);

--
-- Filtros para la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD CONSTRAINT `fk_tbl_usuarios_tbl_empleado1` FOREIGN KEY (`tbl_empleado_idtbl_empleado`) REFERENCES `tbl_empleado` (`idtbl_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
