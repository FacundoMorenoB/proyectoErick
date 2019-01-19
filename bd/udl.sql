-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2019 a las 03:26:41
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `udl`
--
CREATE DATABASE IF NOT EXISTS `udl` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `udl`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm_aulas`
--

DROP TABLE IF EXISTS `adm_aulas`;
CREATE TABLE IF NOT EXISTS `adm_aulas` (
  `ID_AULAS` int(11) NOT NULL,
  `AULA` varchar(50) NOT NULL,
  `DESCRIPCION` varchar(50) NOT NULL,
  `UBICACION` varchar(50) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime DEFAULT NULL,
  `TIPO_MOV` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_AULAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `adm_aulas`
--

INSERT INTO `adm_aulas` (`ID_AULAS`, `AULA`, `DESCRIPCION`, `UBICACION`, `ID_USUARIO`, `FECHA`, `HORA`, `TIPO_MOV`) VALUES
(1, '25', 'Laboratorio', 'Zona Sur', 1, '2019-01-08', NULL, 'alta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm_aulasmaterias`
--

DROP TABLE IF EXISTS `adm_aulasmaterias`;
CREATE TABLE IF NOT EXISTS `adm_aulasmaterias` (
  `ID_MATERIASAULAS` int(11) NOT NULL,
  `ID_MATERIA` int(11) NOT NULL,
  `ID_AULA` int(11) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime DEFAULT NULL,
  `TIPO_MOV` varchar(50) DEFAULT NULL,
  `ID_AULAS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_MATERIASAULAS`),
  KEY `IXFK_ADM_AULASMATERIAS_ADM_AULAS` (`ID_AULAS`),
  KEY `IXFK_ADM_AULASMATERIAS_ADM_MATERIAS` (`ID_MATERIA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `adm_aulasmaterias`
--

INSERT INTO `adm_aulasmaterias` (`ID_MATERIASAULAS`, `ID_MATERIA`, `ID_AULA`, `ID_USUARIO`, `FECHA`, `HORA`, `TIPO_MOV`, `ID_AULAS`) VALUES
(1, 10, 1, 1, '2019-01-12', '2019-01-11 16:28:16', 'ALTA', 1),
(2, 11, 1, 1, '2019-01-12', '2019-01-11 16:28:16', 'ALTA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm_ciclosescolares`
--

DROP TABLE IF EXISTS `adm_ciclosescolares`;
CREATE TABLE IF NOT EXISTS `adm_ciclosescolares` (
  `ID_CICLOESCOLAR` int(11) NOT NULL,
  `NUMERO` char(10) CHARACTER SET utf8 NOT NULL,
  `DESCRIPCIONCICESCOLAR` varchar(50) CHARACTER SET utf8 NOT NULL,
  `FINICIOCICLOESCOLAR` date NOT NULL,
  `FFINCICLOESCOLAR` date NOT NULL,
  `ID_TIPOCICLOS` int(11) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime DEFAULT NULL,
  `TIPO_MOV` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_CICLOESCOLAR`),
  KEY `IXFK_ADM_CICLOSESCOLARES_ADM_TIPOSCICLOS` (`ID_TIPOCICLOS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `adm_ciclosescolares`
--

INSERT INTO `adm_ciclosescolares` (`ID_CICLOESCOLAR`, `NUMERO`, `DESCRIPCIONCICESCOLAR`, `FINICIOCICLOESCOLAR`, `FFINCICLOESCOLAR`, `ID_TIPOCICLOS`, `ID_USUARIO`, `FECHA`, `HORA`, `TIPO_MOV`) VALUES
(2, '2', '7-2018 SEPT-DIC', '2019-01-11', '2019-01-11', 1, 1, '2019-01-11', '2019-01-11 16:39:23', 'ALTA'),
(3, '3', '8-2019 ENE-ABR', '2019-01-11', '2019-01-11', 1, 1, '2019-01-11', '2019-01-11 16:39:47', 'ALTA'),
(4, '4', '9-2019 MAY-AGO', '2019-01-11', '2019-01-11', 1, 1, '2019-01-11', '2019-01-11 16:40:10', 'ALTA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm_cuatrimestres`
--

DROP TABLE IF EXISTS `adm_cuatrimestres`;
CREATE TABLE IF NOT EXISTS `adm_cuatrimestres` (
  `ID_CUATRIMESTRE` int(11) NOT NULL,
  `NUMERO_CUATRIMESTRE` varchar(12) CHARACTER SET utf8 NOT NULL,
  `DESCRIPCION` varchar(20) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime DEFAULT NULL,
  `TIPO_MOV` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_CUATRIMESTRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `adm_cuatrimestres`
--

INSERT INTO `adm_cuatrimestres` (`ID_CUATRIMESTRE`, `NUMERO_CUATRIMESTRE`, `DESCRIPCION`, `ID_USUARIO`, `FECHA`, `HORA`, `TIPO_MOV`) VALUES
(1, '1 ER', 'CUATRIMESTRE', 1, '2019-01-12', '2019-01-11 16:28:16', 'ALTA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm_licenciaturas`
--

DROP TABLE IF EXISTS `adm_licenciaturas`;
CREATE TABLE IF NOT EXISTS `adm_licenciaturas` (
  `ID_LICENCIATURA` int(11) NOT NULL,
  `LICENCIATURA` varchar(50) CHARACTER SET utf8 NOT NULL,
  `AREA` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime DEFAULT NULL,
  `TIPO_MOV` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_LICENCIATURA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `adm_licenciaturas`
--

INSERT INTO `adm_licenciaturas` (`ID_LICENCIATURA`, `LICENCIATURA`, `AREA`, `ID_USUARIO`, `FECHA`, `HORA`, `TIPO_MOV`) VALUES
(1, 'Informatica', 'Ciencias', 1, '2019-01-11', '2019-01-11 16:28:16', 'ALTA'),
(2, 'Administracion', 'Economico administra', 1, '2019-01-12', '2019-01-11 16:28:45', 'ALTA'),
(3, 'Contabilidad', 'Economico administra', 1, '2019-01-11', '2019-01-11 16:29:19', 'ALT'),
(4, 'agronomia', 'ciencias', 1, '2019-01-01', '2019-01-11 16:28:16', 'ALTA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm_licenciatura_mterias`
--

DROP TABLE IF EXISTS `adm_licenciatura_mterias`;
CREATE TABLE IF NOT EXISTS `adm_licenciatura_mterias` (
  `ID_LNTRAMATERIA` int(11) NOT NULL,
  `ID_LICENCIATURA` int(11) NOT NULL,
  `ID_MATERIA` int(11) NOT NULL,
  `ID_CUATRIMESTRE` int(11) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime(6) DEFAULT NULL,
  `TIPO_MOV` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_LNTRAMATERIA`),
  KEY `IXFK_ADM_LICENCIATURA_MTERIAS_ADM_CUATRIMESTRES` (`ID_CUATRIMESTRE`),
  KEY `IXFK_ADM_LICENCIATURA_MTERIAS_ADM_LICENCIATURAS` (`ID_LICENCIATURA`),
  KEY `IXFK_ADM_LICENCIATURA_MTERIAS_ADM_MATERIAS` (`ID_MATERIA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `adm_licenciatura_mterias`
--

INSERT INTO `adm_licenciatura_mterias` (`ID_LNTRAMATERIA`, `ID_LICENCIATURA`, `ID_MATERIA`, `ID_CUATRIMESTRE`, `ID_USUARIO`, `FECHA`, `HORA`, `TIPO_MOV`) VALUES
(1, 4, 10, 1, 1, '2019-01-12', '2019-01-11 16:28:16.000000', 'ALTA'),
(2, 4, 11, 1, 1, '2019-01-12', '2019-01-11 16:28:16.000000', 'ALTA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm_materias`
--

DROP TABLE IF EXISTS `adm_materias`;
CREATE TABLE IF NOT EXISTS `adm_materias` (
  `ID_MATERIA` int(11) NOT NULL,
  `MATERIA` char(20) CHARACTER SET utf8 NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime(6) DEFAULT NULL,
  `TIPO_MOV` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_MATERIA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `adm_materias`
--

INSERT INTO `adm_materias` (`ID_MATERIA`, `MATERIA`, `ID_USUARIO`, `FECHA`, `HORA`, `TIPO_MOV`) VALUES
(3, 'Modelos de Comunicac', 1, '2019-01-11', '2019-01-11 16:51:42.000000', 'ALTA'),
(4, 'Fundamentos de Progr', 1, '2019-01-11', '2019-01-11 16:51:42.000000', 'ALTA'),
(5, 'Matemáticas Aplicada', 1, '2019-01-11', '2019-01-11 16:51:42.000000', 'ALTA'),
(6, 'Sistemas Digitales', 1, '2019-01-11', '2019-01-11 16:51:42.000000', 'ALTA'),
(7, 'Procesos Administrat', 1, '2019-01-11', '2019-01-11 16:51:42.000000', 'ALTA'),
(8, 'Estructura y Represe', 1, '2019-01-11', '2019-01-11 16:51:42.000000', 'ALTA'),
(9, 'Programación Estruct', 1, '2019-01-11', '2019-01-11 16:51:42.000000', 'ALTA'),
(10, 'analisis de tierra 1', 1, '2019-01-11', '2019-01-11 16:28:16.000000', 'ALTA'),
(11, 'analisis de tierra 2', 1, '2019-01-11', '2019-01-11 16:28:16.000000', 'alta'),
(12, 'analisis de tierra 3', 1, '2019-01-11', '2019-01-11 16:28:16.000000', 'alta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm_num_evaluaciones`
--

DROP TABLE IF EXISTS `adm_num_evaluaciones`;
CREATE TABLE IF NOT EXISTS `adm_num_evaluaciones` (
  `ID_NUMEVALUACIONES` int(11) NOT NULL,
  `TIPO` varchar(20) CHARACTER SET utf8 NOT NULL,
  `NUMERO` char(10) CHARACTER SET utf8 NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime(6) DEFAULT NULL,
  `TIPO_MOV` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_NUMEVALUACIONES`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `adm_num_evaluaciones`
--

INSERT INTO `adm_num_evaluaciones` (`ID_NUMEVALUACIONES`, `TIPO`, `NUMERO`, `ID_USUARIO`, `FECHA`, `HORA`, `TIPO_MOV`) VALUES
(1, 'PARCIAL', '1', 1, '2019-01-12', '2019-01-11 16:28:16.000000', 'ALTA'),
(2, 'PARCIAL', '2', 1, '2019-01-12', '2019-01-11 16:28:16.000000', 'ALTA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm_pagina_has_rol`
--

DROP TABLE IF EXISTS `adm_pagina_has_rol`;
CREATE TABLE IF NOT EXISTS `adm_pagina_has_rol` (
  `ID_USUARIO` int(11) DEFAULT NULL,
  `ID_PAGINA` int(11) NOT NULL,
  `ID_ROL` int(11) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime DEFAULT NULL,
  `TIPO_MOV` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_PAGINA`),
  KEY `IXFK_ADM_PAGINA_HAS_ROL_ADM_ROL` (`ID_ROL`),
  KEY `IXFK_ADM_PAGINA_HAS_ROL_ADM_USUARIOS` (`ID_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm_rol`
--

DROP TABLE IF EXISTS `adm_rol`;
CREATE TABLE IF NOT EXISTS `adm_rol` (
  `ID_ROL` int(11) NOT NULL,
  `DESCRIPCIONROL` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FAUFECHA` date DEFAULT NULL,
  `HORA` datetime DEFAULT NULL,
  `TIPO_MOV` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_ROL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm_tiposciclos`
--

DROP TABLE IF EXISTS `adm_tiposciclos`;
CREATE TABLE IF NOT EXISTS `adm_tiposciclos` (
  `ID_TIPOCICLOS` int(11) NOT NULL,
  `TIPO` varchar(20) CHARACTER SET utf8 NOT NULL,
  `DURACION MESES` char(10) CHARACTER SET utf8 NOT NULL,
  `ID_USUARIO` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime DEFAULT NULL,
  `TIPO_MOV` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_TIPOCICLOS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `adm_tiposciclos`
--

INSERT INTO `adm_tiposciclos` (`ID_TIPOCICLOS`, `TIPO`, `DURACION MESES`, `ID_USUARIO`, `FECHA`, `HORA`, `TIPO_MOV`) VALUES
(1, 'CUATRIMESTRE', '4', '1', '2019-01-11', '2019-01-11 16:34:39', 'ALTA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm_usuarios`
--

DROP TABLE IF EXISTS `adm_usuarios`;
CREATE TABLE IF NOT EXISTS `adm_usuarios` (
  `ID_USUARIO` int(11) NOT NULL,
  `ID_ROL` int(11) NOT NULL,
  `CLAVE_USUARIO` varchar(20) CHARACTER SET utf8 NOT NULL,
  `PASSWORD` varchar(20) CHARACTER SET utf8 NOT NULL,
  `TIPO_USUARIO` varchar(20) CHARACTER SET utf8 NOT NULL,
  `USUARIO` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ESTATUS_USUARIO` varchar(45) DEFAULT NULL,
  `FECHAALTAUSUARIO` date DEFAULT NULL,
  `HORA` datetime DEFAULT NULL,
  `TIPO_MOV` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `op_alumnos`
--

DROP TABLE IF EXISTS `op_alumnos`;
CREATE TABLE IF NOT EXISTS `op_alumnos` (
  `ID_ALUMNO` int(11) NOT NULL,
  `MATRICULA` char(12) CHARACTER SET utf8 NOT NULL,
  `NOMBRE_ALUMNO` varchar(20) NOT NULL,
  `A_PATERNO_ALUMNO` varchar(20) NOT NULL,
  `A_MATERNO_ALUMNO` varchar(20) NOT NULL,
  `FHNACIMIENTO_ALUMNO` varchar(20) NOT NULL,
  `DIRECCION_ALUMNO` varchar(50) DEFAULT NULL,
  `CURP_ALUMNO` varchar(50) DEFAULT NULL,
  `RFC_ALUMNO` varchar(50) NOT NULL,
  `TELEFONO` char(10) CHARACTER SET utf8 NOT NULL,
  `FECHAALTA_ALUMNO` datetime NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `HORA` datetime(6) DEFAULT NULL,
  `TIPO_MOV` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_ALUMNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `op_alumnos`
--

INSERT INTO `op_alumnos` (`ID_ALUMNO`, `MATRICULA`, `NOMBRE_ALUMNO`, `A_PATERNO_ALUMNO`, `A_MATERNO_ALUMNO`, `FHNACIMIENTO_ALUMNO`, `DIRECCION_ALUMNO`, `CURP_ALUMNO`, `RFC_ALUMNO`, `TELEFONO`, `FECHAALTA_ALUMNO`, `ID_USUARIO`, `FECHA`, `HORA`, `TIPO_MOV`) VALUES
(1, '1234', 'edwin darwin', 'lopez', 'perez', '1991-01-17', 'av imaginaria 123', 'sssaa123456', 'ed123456', '2345678', '2019-01-12 00:00:00', 1, '2019-01-12', '2019-01-11 16:28:16.000000', 'alta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `op_alumno_licenciatura`
--

DROP TABLE IF EXISTS `op_alumno_licenciatura`;
CREATE TABLE IF NOT EXISTS `op_alumno_licenciatura` (
  `ID_ALUMNO_LTRA` int(11) NOT NULL,
  `ID_ALUMNO` int(11) NOT NULL,
  `ID_LICENCIATURA` int(11) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime DEFAULT NULL,
  `TIPO_MOV` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_ALUMNO_LTRA`,`ID_ALUMNO`),
  UNIQUE KEY `UNICOALUMNO` (`ID_ALUMNO`),
  KEY `IXFK_OP_ALUMNO_LICENCIATURA_ADM_LICENCIATURAS` (`ID_LICENCIATURA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `op_alumno_licenciatura`
--

INSERT INTO `op_alumno_licenciatura` (`ID_ALUMNO_LTRA`, `ID_ALUMNO`, `ID_LICENCIATURA`, `ID_USUARIO`, `FECHA`, `HORA`, `TIPO_MOV`) VALUES
(1, 1, 4, 1, '2019-01-12', '2019-01-11 16:28:16', 'alta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `op_alumno_materia`
--

DROP TABLE IF EXISTS `op_alumno_materia`;
CREATE TABLE IF NOT EXISTS `op_alumno_materia` (
  `ID_ALUMNOMATERIA` int(11) NOT NULL,
  `ID_ALUMNO` int(11) NOT NULL,
  `ID_MATERIA` int(11) DEFAULT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime(6) DEFAULT NULL,
  `TIPO_MOV` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_ALUMNOMATERIA`),
  KEY `IXFK_OP_ALUMNO_MATERIA_ADM_MATERIAS` (`ID_MATERIA`),
  KEY `IXFK_OP_ALUMNO_MATERIA_OP_ALUMNOS` (`ID_ALUMNO`),
  KEY `IXFK_OP_ALUMNO_MATERIA_OP_ASISTENCIA` (`ID_ALUMNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `op_alumno_materia`
--

INSERT INTO `op_alumno_materia` (`ID_ALUMNOMATERIA`, `ID_ALUMNO`, `ID_MATERIA`, `ID_USUARIO`, `FECHA`, `HORA`, `TIPO_MOV`) VALUES
(1, 1, 10, 1, '2019-01-12', '2019-01-11 16:28:16.000000', 'ALTA'),
(2, 1, 11, 1, '2019-01-12', '2019-01-11 16:28:16.000000', 'ALTA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `op_asistencia`
--

DROP TABLE IF EXISTS `op_asistencia`;
CREATE TABLE IF NOT EXISTS `op_asistencia` (
  `ID_ASISTENCIA` int(11) NOT NULL,
  `ID_ALUMNO` int(11) DEFAULT NULL,
  `FECHA_ASISTENCIA` datetime NOT NULL,
  `ID_ALUMNOMATERIA` int(11) NOT NULL,
  `ID_MATERIA` int(11) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime(6) DEFAULT NULL,
  `TIPO_MOV` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_ASISTENCIA`),
  KEY `IXFK_OP_ASISTENCIA_OP_ALUMNO_MATERIA` (`ID_ALUMNOMATERIA`),
  KEY `IXFK_OP_ASISTENCIA_OP_ALUMNOS` (`ID_ALUMNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `op_calficaciones`
--

DROP TABLE IF EXISTS `op_calficaciones`;
CREATE TABLE IF NOT EXISTS `op_calficaciones` (
  `ID_CALIFICACIONES` int(11) NOT NULL,
  `ID_ALUMNO` int(11) NOT NULL,
  `ID_MATERIA` int(11) NOT NULL,
  `EVALUACIÓN` char(10) CHARACTER SET utf8 NOT NULL,
  `CALIFICACIÓN` decimal(10,2) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime DEFAULT NULL,
  `TIPO_MOV` varchar(20) DEFAULT NULL,
  `ID_NUMEVALUACIONES` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CALIFICACIONES`),
  KEY `IXFK_OP_CALFICACIONES_ADM_NUM_EVALUACIONES` (`ID_NUMEVALUACIONES`),
  KEY `IXFK_OP_CALFICACIONES_OP_ALUMNO_MATERIA` (`ID_ALUMNO`),
  KEY `IXFK_OP_CALFICACIONES_OP_ALUMNO_MATERIA_02` (`ID_MATERIA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `op_calficaciones`
--

INSERT INTO `op_calficaciones` (`ID_CALIFICACIONES`, `ID_ALUMNO`, `ID_MATERIA`, `EVALUACIÓN`, `CALIFICACIÓN`, `ID_USUARIO`, `FECHA`, `HORA`, `TIPO_MOV`, `ID_NUMEVALUACIONES`) VALUES
(1, 1, 1, 'PARCIAL', '8.00', 1, '2019-01-12', '2019-01-11 16:28:16', 'ALTA', 1),
(2, 1, 2, 'PARCIAL', '9.50', 1, '2019-01-12', '2019-01-11 16:28:16', 'ALTA', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `op_inscripciones`
--

DROP TABLE IF EXISTS `op_inscripciones`;
CREATE TABLE IF NOT EXISTS `op_inscripciones` (
  `ID_INSCRIPCION` int(11) NOT NULL,
  `ID_ALUMNO` int(11) NOT NULL,
  `ID_GRUPO` int(11) NOT NULL,
  `ID_CICLOESCOLAR` int(11) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` datetime DEFAULT NULL,
  `TIPO_MOV` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_INSCRIPCION`),
  KEY `IXFK_OP_INSCRIPCIONES_ADM_CICLOSESCOLARES` (`ID_CICLOESCOLAR`),
  KEY `IXFK_OP_INSCRIPCIONES_OP_ALUMNOS` (`ID_ALUMNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adm_aulasmaterias`
--
ALTER TABLE `adm_aulasmaterias`
  ADD CONSTRAINT `FK_ADM_AULASMATERIAS_ADM_AULAS` FOREIGN KEY (`ID_AULAS`) REFERENCES `adm_aulas` (`ID_AULAS`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ADM_AULASMATERIAS_ADM_MATERIAS` FOREIGN KEY (`ID_MATERIA`) REFERENCES `adm_materias` (`ID_MATERIA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `adm_licenciatura_mterias`
--
ALTER TABLE `adm_licenciatura_mterias`
  ADD CONSTRAINT `FK_ADM_LICENCIATURA_MTERIAS_ADM_CUATRIMESTRES` FOREIGN KEY (`ID_CUATRIMESTRE`) REFERENCES `adm_cuatrimestres` (`ID_CUATRIMESTRE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ADM_LICENCIATURA_MTERIAS_ADM_LICENCIATURAS` FOREIGN KEY (`ID_LICENCIATURA`) REFERENCES `adm_licenciaturas` (`ID_LICENCIATURA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ADM_LICENCIATURA_MTERIAS_ADM_MATERIAS` FOREIGN KEY (`ID_MATERIA`) REFERENCES `adm_materias` (`ID_MATERIA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `adm_pagina_has_rol`
--
ALTER TABLE `adm_pagina_has_rol`
  ADD CONSTRAINT `FK_ADM_PAGINA_HAS_ROL_ADM_ROL` FOREIGN KEY (`ID_ROL`) REFERENCES `adm_rol` (`ID_ROL`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ADM_PAGINA_HAS_ROL_ADM_USUARIOS` FOREIGN KEY (`ID_USUARIO`) REFERENCES `adm_usuarios` (`ID_USUARIO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `op_alumno_licenciatura`
--
ALTER TABLE `op_alumno_licenciatura`
  ADD CONSTRAINT `FK_OP_ALUMNO_LICENCIATURA_ADM_LICENCIATURAS` FOREIGN KEY (`ID_LICENCIATURA`) REFERENCES `adm_licenciaturas` (`ID_LICENCIATURA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_OP_ALUMNO_LICENCIATURA_OP_ALUMNOS` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `op_alumnos` (`ID_ALUMNO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `op_alumno_materia`
--
ALTER TABLE `op_alumno_materia`
  ADD CONSTRAINT `FK_OP_ALUMNO_MATERIA_ADM_MATERIAS` FOREIGN KEY (`ID_MATERIA`) REFERENCES `adm_materias` (`ID_MATERIA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_OP_ALUMNO_MATERIA_OP_ALUMNOS` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `op_alumnos` (`ID_ALUMNO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `op_asistencia`
--
ALTER TABLE `op_asistencia`
  ADD CONSTRAINT `FK_OP_ASISTENCIA_OP_ALUMNOS` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `op_alumnos` (`ID_ALUMNO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_OP_ASISTENCIA_OP_ALUMNO_MATERIA` FOREIGN KEY (`ID_ALUMNOMATERIA`) REFERENCES `op_alumno_materia` (`ID_ALUMNOMATERIA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `op_calficaciones`
--
ALTER TABLE `op_calficaciones`
  ADD CONSTRAINT `FK_OP_CALFICACIONES_ADM_NUM_EVALUACIONES` FOREIGN KEY (`ID_NUMEVALUACIONES`) REFERENCES `adm_num_evaluaciones` (`ID_NUMEVALUACIONES`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_OP_CALFICACIONES_OP_ALUMNO_MATERIA` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `op_alumno_materia` (`ID_ALUMNOMATERIA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_OP_CALFICACIONES_OP_ALUMNO_MATERIA_02` FOREIGN KEY (`ID_MATERIA`) REFERENCES `op_alumno_materia` (`ID_ALUMNOMATERIA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `op_inscripciones`
--
ALTER TABLE `op_inscripciones`
  ADD CONSTRAINT `FK_OP_INSCRIPCIONES_ADM_CICLOSESCOLARES` FOREIGN KEY (`ID_CICLOESCOLAR`) REFERENCES `adm_ciclosescolares` (`ID_CICLOESCOLAR`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_OP_INSCRIPCIONES_OP_ALUMNOS` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `op_alumnos` (`ID_ALUMNO`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
