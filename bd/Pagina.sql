-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-01-2019 a las 10:03:38
-- Versión del servidor: 8.0.13
-- Versión de PHP: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemaudl`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pagina`
--

CREATE TABLE `Pagina` (
  `id_Pagina` int(11) NOT NULL,
  `descripcion_Pagina` varchar(45) NOT NULL,
  `nombre_Pagina` varchar(45) NOT NULL,
  `fhalta_pagina` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Pagina`
--

INSERT INTO `Pagina` (`id_Pagina`, `descripcion_Pagina`, `nombre_Pagina`, `fhalta_pagina`) VALUES
(1, 'Pagina para registro de asistencia alumno', 'asistencia.php', '2019-01-08 00:00:00'),
(2, 'Pagina para administra calificacion y materi', 'materias.php', '2019-01-08 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Pagina`
--
ALTER TABLE `Pagina`
  ADD PRIMARY KEY (`id_Pagina`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Pagina`
--
ALTER TABLE `Pagina`
  MODIFY `id_Pagina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
