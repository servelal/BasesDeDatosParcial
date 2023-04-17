-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-04-2023 a las 16:23:56
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
-- Base de datos: `uni_2023_mongodb_test_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `ID` varchar(5) NOT NULL,
  `code_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tect` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `import` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` decimal(4,0) NOT NULL,
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `code_id`, `tect`, `import`, `year`) VALUES
('00128', 'CS-101', '1', 'Fall', '2017'),
('00128', 'CS-347', '1', 'Fall', '2017'),
('12345', 'CS-101', '1', 'Fall', '2017'),
('12345', 'CS-190', '2', 'Spring', '2017'),
('12345', 'CS-315', '1', 'Spring', '2018'),
('12345', 'CS-347', '1', 'Fall', '2017'),
('19991', 'HIS-351', '1', 'Spring', '2018'),
('23121', 'FIN-201', '1', 'Spring', '2018'),
('44553', 'PHY-101', '1', 'Fall', '2017'),
('45678', 'CS-101', '1', 'Fall', '2017'),
('45678', 'CS-101', '1', 'Spring', '2018'),
('45678', 'CS-319', '1', 'Spring', '2018'),
('54321', 'CS-101', '1', 'Fall', '2017'),
('54321', 'CS-190', '2', 'Spring', '2017'),
('55739', 'MU-199', '1', 'Spring', '2018'),
('76543', 'CS-101', '1', 'Fall', '2017'),
('76543', 'CS-319', '2', 'Spring', '2018'),
('76653', 'EE-181', '1', 'Spring', '2017'),
('98765', 'CS-101', '1', 'Fall', '2017'),
('98765', 'CS-315', '1', 'Spring', '2018'),
('98988', 'BIO-101', '1', 'Summer', '2017'),
('98988', 'BIO-301', '1', 'Summer', '2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `ID` varchar(5) NOT NULL,
  `producto` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sucursal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `precio` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `dept_name` (`sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`ID`, `producto`, `sucursal`, `precio`) VALUES
('00128', 'pencils', 'Moscú', '9.20'),
('12345', 'cuadernos', 'Moscú', '3.50'),
('19991', 'Brandt', 'Luxemburgo', '9.39'),
('23121', 'Chavez', 'Luxemburgo', '4.70'),
('44553', 'Peltier', 'París', '5.40'),
('45678', 'Levy', 'París', '3.20'),
('54321', 'cartulinas', 'Moscú', '2.40'),
('55739', 'Sanchez', 'Music', '9.99'),
('70557', 'Snow', 'Physics', '0.00'),
('76543', 'Brown', 'Comp. Sci.', '9.99'),
('76653', 'Aoi', 'Elec. Eng.', '9.99'),
('98765', 'Bourikas', 'Elec. Eng.', '9.99'),
('98988', 'Tanaka', 'Biology', '9.99');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos` ADD FULLTEXT KEY `import` (`import`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `proveedor` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
