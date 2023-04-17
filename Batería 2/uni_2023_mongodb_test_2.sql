-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-04-2023 a las 08:49:27
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uni_2023_mongodb_test_2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `ID` int NOT NULL,
  `producto` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sucursal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datos` json NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID`, `producto`, `sucursal`, `datos`) VALUES
(128, 'HBO.SA', 'Aruba', '{\"2017\": {\"Ganancia\": 7000, \"Proyectos\": 4}, \"2018\": {\"Ganancia\": 8000, \"Proyectos\": 9}, \"2019\": {\"Ganancia\": 5, \"Proyectos\": 5}}'),
(12345, 'HBA.SA', 'Moscú', '{\"2017\": {\"Ganancia\": 7000, \"Proyectos\": 4}, \"2018\": {\"Ganancia\": 8000, \"Proyectos\": 9}, \"2019\": {\"Ganancia\": 5, \"Proyectos\": 5}}'),
(19991, 'HAA.SA', 'Bélgica', '{\"2017\": {\"Ganancia\": 7000, \"Proyectos\": 4}, \"2018\": {\"Ganancia\": 8000, \"Proyectos\": 9}, \"2019\": {\"Ganancia\": 5, \"Proyectos\": 5}}'),
(23121, 'BBB.SA', 'Madrid', '{\"2017\": {\"Ganancia\": 7000, \"Proyectos\": 4}, \"2018\": {\"Ganancia\": 8000, \"Proyectos\": 9}, \"2019\": {\"Ganancia\": 5, \"Proyectos\": 5}}'),
(44553, 'HBZ.SA', 'Bélgica', '{\"2017\": {\"Ganancia\": 7000, \"Proyectos\": 4}, \"2018\": {\"Ganancia\": 8000, \"Proyectos\": 9}, \"2019\": {\"Ganancia\": 5, \"Proyectos\": 5}}'),
(45678, 'CCC.SA', 'Marruecos', '{\"2017\": {\"Ganancia\": 7000, \"Proyectos\": 4}, \"2018\": {\"Ganancia\": 8000, \"Proyectos\": 9}, \"2019\": {\"Ganancia\": 5, \"Proyectos\": 5}}'),
(54321, 'XCB.SA', 'Argel', '{\"2017\": {\"Ganancia\": 7000, \"Proyectos\": 4}, \"2018\": {\"Ganancia\": 8000, \"Proyectos\": 9}, \"2019\": {\"Ganancia\": 5, \"Proyectos\": 5}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `c_ID` int NOT NULL,
  `p_ID` int NOT NULL,
  `product` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(4,2) NOT NULL,
  PRIMARY KEY (`c_ID`,`p_ID`),
  KEY `p_ID` (`p_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`c_ID`, `p_ID`, `product`, `precio`) VALUES
(128, 12121, 'lápices', '4.60'),
(128, 22222, 'cuadernos', '5.60'),
(128, 33456, 'bolígrafos', '0.30'),
(12345, 22222, 'cartulinas', '0.70'),
(19991, 15151, 'clicks', '0.40'),
(19991, 22222, 'folios', '0.90'),
(19991, 32343, 'portadas', '0.30'),
(45678, 12121, 'presillas', '0.60'),
(45678, 33456, 'presillas', '0.20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `ID` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sucursal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valoration` decimal(4,2) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  `phone_extensions` set('"301"','"302"','"405"','"407"','"409"','"415"') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`ID`, `name`, `sucursal`, `valoration`, `activo`, `phone_extensions`) VALUES
(10101, 'Numero1', 'Aruba', '65.30', 0, '\"301\",\"302\",\"405\"'),
(12121, 'Numero2', 'Finance', '90.00', 1, '\"405\",\"407\"'),
(15151, 'Numero3', 'Music', '45.00', 0, '\"409\",\"415\"'),
(22222, 'Numero4', 'Physics', '95.50', 0, '\"302\",\"405\"'),
(32343, 'Numero5', 'History', '67.30', 1, '\"405\",\"407\"'),
(33456, 'Numero6', 'Physics', '87.67', 0, '\"407\",\"409\",\"415\"');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente` ADD FULLTEXT KEY `sucursal` (`sucursal`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor` ADD FULLTEXT KEY `sucursal` (`sucursal`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`c_ID`) REFERENCES `cliente` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`p_ID`) REFERENCES `proveedor` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
