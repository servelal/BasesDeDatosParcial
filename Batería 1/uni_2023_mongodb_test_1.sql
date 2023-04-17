-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-04-2023 a las 08:47:03
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
-- Estructura de tabla para la tabla `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `ID` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `tot_cred` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `student`
--

INSERT INTO `student` (`ID`, `name`, `dept_name`, `tot_cred`) VALUES
('00128', 'Zhang', 'Comp. Sci.', '102'),
('12345', 'Shankar', 'Comp. Sci.', '32'),
('19991', 'Brandt', 'History', '80'),
('23121', 'Chavez', 'Finance', '110'),
('44553', 'Peltier', 'Physics', '56'),
('45678', 'Levy', 'Physics', '46'),
('54321', 'Williams', 'Comp. Sci.', '54'),
('55739', 'Sanchez', 'Music', '38'),
('70557', 'Snow', 'Physics', '0'),
('76543', 'Brown', 'Comp. Sci.', '58'),
('76653', 'Aoi', 'Elec. Eng.', '60'),
('98765', 'Bourikas', 'Elec. Eng.', '98'),
('98988', 'Tanaka', 'Biology', '120');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `takes`
--

DROP TABLE IF EXISTS `takes`;
CREATE TABLE IF NOT EXISTS `takes` (
  `ID` varchar(5) NOT NULL,
  `course_id` varchar(8) NOT NULL,
  `sec_id` varchar(8) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `year` decimal(4,0) NOT NULL,
  `grade` varchar(2) DEFAULT NULL,
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `takes`
--

INSERT INTO `takes` (`ID`, `course_id`, `sec_id`, `semester`, `year`, `grade`) VALUES
('00128', 'CS-101', '1', 'Fall', '2017', 'A'),
('00128', 'CS-347', '1', 'Fall', '2017', 'A-'),
('12345', 'CS-101', '1', 'Fall', '2017', 'C'),
('12345', 'CS-190', '2', 'Spring', '2017', 'A'),
('12345', 'CS-315', '1', 'Spring', '2018', 'A'),
('12345', 'CS-347', '1', 'Fall', '2017', 'A'),
('19991', 'HIS-351', '1', 'Spring', '2018', 'B'),
('23121', 'FIN-201', '1', 'Spring', '2018', 'C+'),
('44553', 'PHY-101', '1', 'Fall', '2017', 'B-'),
('45678', 'CS-101', '1', 'Fall', '2017', 'F'),
('45678', 'CS-101', '1', 'Spring', '2018', 'B+'),
('45678', 'CS-319', '1', 'Spring', '2018', 'B'),
('54321', 'CS-101', '1', 'Fall', '2017', 'A-'),
('54321', 'CS-190', '2', 'Spring', '2017', 'B+'),
('55739', 'MU-199', '1', 'Spring', '2018', 'A-'),
('76543', 'CS-101', '1', 'Fall', '2017', 'A'),
('76543', 'CS-319', '2', 'Spring', '2018', 'A'),
('76653', 'EE-181', '1', 'Spring', '2017', 'C'),
('98765', 'CS-101', '1', 'Fall', '2017', 'C-'),
('98765', 'CS-315', '1', 'Spring', '2018', 'B'),
('98988', 'BIO-101', '1', 'Summer', '2017', 'A'),
('98988', 'BIO-301', '1', 'Summer', '2018', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `takes`
--
ALTER TABLE `takes` ADD FULLTEXT KEY `semester` (`semester`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `takes`
--
ALTER TABLE `takes`
  ADD CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `student` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
