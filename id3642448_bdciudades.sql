-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2017 a las 17:49:24
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id3642448_bdciudades`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbciudades`
--

CREATE TABLE `tbciudades` (
  `id` int(4) NOT NULL,
  `ciudad` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tbciudades`
--

INSERT INTO `tbciudades` (`id`, `ciudad`, `descripcion`, `activo`) VALUES
(2, 'Madrid', 'De Madrid al cielo', 1),
(3, 'Londres', 'La City', 1),
(4, 'ParÃ­s', 'París, Bon Amour!', 0),
(5, 'Roma', 'La ciudad eterna', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbimagenes`
--

CREATE TABLE `tbimagenes` (
  `id` int(5) NOT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `idciudad` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tbimagenes`
--

INSERT INTO `tbimagenes` (`id`, `imagen`, `idciudad`) VALUES
(1, 'uploads/1_ciudad3.jpg', 2),
(2, 'uploads/2_Fuente_de_Cibeles.jpg', 2),
(3, 'uploads/3_Madrid_May_2014-45a.jpg', 2),
(4, 'uploads/4_Gran_VÃ­a_(Madrid)_1.jpg', 2),
(5, 'uploads/5_', 3),
(6, 'uploads/6_640px-MI6_Vauxhall_Cross.jpg', 3),
(7, 'uploads/7_640px-MI6_Vauxhall_Cross.jpg', 3),
(8, 'uploads/8_32758235272_6afc2bbe1d_z.jpg', 4),
(9, 'uploads/9_Stadt_Paris.JPG', 4),
(10, 'uploads/10_Notre-Dame_(Paris)_(3).jpg', 4),
(11, 'uploads/11_tour-paris-notre-dame-espanol.jpg', 4),
(12, 'uploads/12_tour-paris-notre-dame-espanol.jpg', 4),
(13, 'uploads/13_300px-Capitoline_she-wolf_Musei_Capitolini_MC1181.jpg', 5),
(14, 'uploads/14_Castel-Sant-Angelo-Rome.jpg', 5),
(15, 'uploads/15_dummy-640x480-Tax.jpg', 5),
(16, 'uploads/16_P1510617.JPG', 5),
(17, 'uploads/17_london.jpg', 3),
(18, 'uploads/18_1426895-london-1496559374-699-640x480 - copia.jpg', 3),
(19, 'uploads/19_descarga.jpg', 3),
(20, 'uploads/20_london (1).jpg', 3),
(21, 'uploads/21_skyline-londres-800x600.jpg', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbusuarios`
--

CREATE TABLE `tbusuarios` (
  `id` int(3) NOT NULL,
  `nombreCompleto` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `user` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `pass` varchar(200) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tbusuarios`
--

INSERT INTO `tbusuarios` (`id`, `nombreCompleto`, `user`, `pass`) VALUES
(1, 'JUAN ALBERTO PEÑALVER ALVAREZ', 'japan8x@gmail.com', '376aa9395c5dd0846122bdcafccc752e');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbciudades`
--
ALTER TABLE `tbciudades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbimagenes`
--
ALTER TABLE `tbimagenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbciudades`
--
ALTER TABLE `tbciudades`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tbimagenes`
--
ALTER TABLE `tbimagenes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `tbusuarios`
--
ALTER TABLE `tbusuarios`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
