-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-01-2019 a las 10:04:06
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
-- Estructura de tabla para la tabla `Pagina_has_Rol`
--

CREATE TABLE `Pagina_has_Rol` (
  `Pagina_id_Pagina` int(11) NOT NULL,
  `Rol_id_Rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Pagina_has_Rol`
--

INSERT INTO `Pagina_has_Rol` (`Pagina_id_Pagina`, `Rol_id_Rol`) VALUES
(1, 1),
(2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Pagina_has_Rol`
--
ALTER TABLE `Pagina_has_Rol`
  ADD PRIMARY KEY (`Pagina_id_Pagina`,`Rol_id_Rol`),
  ADD KEY `fk_Pagina_has_Rol_Rol1_idx` (`Rol_id_Rol`),
  ADD KEY `fk_Pagina_has_Rol_Pagina1_idx` (`Pagina_id_Pagina`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Pagina_has_Rol`
--
ALTER TABLE `Pagina_has_Rol`
  ADD CONSTRAINT `fk_Pagina_has_Rol_Pagina1` FOREIGN KEY (`Pagina_id_Pagina`) REFERENCES `Pagina` (`id_pagina`),
  ADD CONSTRAINT `fk_Pagina_has_Rol_Rol1` FOREIGN KEY (`Rol_id_Rol`) REFERENCES `Rol` (`id_rol`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
