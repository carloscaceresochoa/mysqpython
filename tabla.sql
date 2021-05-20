-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-05-2021 a las 02:24:56
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdsena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

DROP TABLE IF EXISTS `estado`;
CREATE TABLE IF NOT EXISTS `estado` (
  `idestado` int(2) NOT NULL AUTO_INCREMENT,
  `nomestado` varchar(30) NOT NULL,
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`idestado`, `nomestado`) VALUES
(1, 'Soleado'),
(2, 'Parcialmente Nublado'),
(3, 'Nublado'),
(4, 'LLuvia'),
(5, 'Tormenta Electrica');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clima`
--

DROP TABLE IF EXISTS `clima`;
CREATE TABLE IF NOT EXISTS `clima` (
  `codigo` varchar(10) NOT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `cent` int(2) NOT NULL,
  `estado` int(2) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `estado` (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `clima`
  ADD CONSTRAINT `clima_ibfk_1` FOREIGN KEY (`estado`) REFERENCES `estado` (`idestado`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

--
-- Volcado de datos para la tabla `clima`
--

INSERT INTO `clima` (`codigo`, `municipio`, `cent`, `estado`) VALUES
('0001', 'leticia', 31, 1),
('0002', 'Santa fe Bogota', 30, 4),
('0003', 'Medellin', 20, 3),
('0004', 'Arauca', 30, 4),
('0005', 'Barranquilla', 25, 1),
('0006', 'Cartagena de Indias', 30, 4),
('0008', 'Manizales', 20, 2),
('0009', 'Florencia', 20, 3),
('0010', 'Yopal', 32, 1),
('0011', 'Popayan', 30, 4),
('0012', 'Valledupar', 20, 2),
('0013', 'Monteria', 29, 1),
('0014', 'Quibdo', 30, 4),
('0015', 'Inirida', 30, 4),
('0016', 'San Jose del Guaviare', 30, 4),
('0017', 'Neiva', 30, 4),
('0018', 'Riohacha', 24, 1),
('0019', 'Mangangue', 29, 3),
('0020', 'Santa Marta', 30, 4),
('0021', 'Cerete', 29, 1),
('0022', 'cienaga de oro', 38, 2),
('0023', 'juan algo', 30, 1),
('0024', 'pueblo nuevo', 30, 1);



