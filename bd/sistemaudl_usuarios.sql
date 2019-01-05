-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2018 a las 22:00:25
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Estructura de tabla para la tabla `pagina`
--

CREATE TABLE `pagina` (
  `id_Pagina` int(11) NOT NULL,
  `descripcion_Pagina` varchar(45) NOT NULL,
  `nombre_Pagina` varchar(45) NOT NULL,
  `fhalta_pagina` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina_has_rol`
--

CREATE TABLE `pagina_has_rol` (
  `Pagina_id_Pagina` int(11) NOT NULL,
  `Rol_id_Rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_Rol` int(11) NOT NULL,
  `descripcion_Rol` varchar(45) NOT NULL,
  `fhalta_Rol` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_Usuario` int(11) NOT NULL,
  `codigo_Usuario` varchar(45) NOT NULL,
  `password_Usuario` varchar(45) NOT NULL,
  `estatus_Usuario` varchar(45) NOT NULL,
  `fhalta_Usuario` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Rol_id_Rol` int(11) NOT NULL,
  `Usuariocol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pagina`
--
ALTER TABLE `pagina`
  ADD PRIMARY KEY (`id_Pagina`);

--
-- Indices de la tabla `pagina_has_rol`
--
ALTER TABLE `pagina_has_rol`
  ADD PRIMARY KEY (`Pagina_id_Pagina`,`Rol_id_Rol`),
  ADD KEY `fk_Pagina_has_Rol_Rol1_idx` (`Rol_id_Rol`),
  ADD KEY `fk_Pagina_has_Rol_Pagina1_idx` (`Pagina_id_Pagina`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_Rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_Usuario`,`Rol_id_Rol`),
  ADD KEY `fk_Usuario_Rol1_idx` (`Rol_id_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pagina`
--
ALTER TABLE `pagina`
  MODIFY `id_Pagina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_Rol` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pagina_has_rol`
--
ALTER TABLE `pagina_has_rol`
  ADD CONSTRAINT `fk_Pagina_has_Rol_Pagina1` FOREIGN KEY (`Pagina_id_Pagina`) REFERENCES `pagina` (`id_Pagina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pagina_has_Rol_Rol1` FOREIGN KEY (`Rol_id_Rol`) REFERENCES `rol` (`id_Rol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_Rol1` FOREIGN KEY (`Rol_id_Rol`) REFERENCES `rol` (`id_Rol`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
