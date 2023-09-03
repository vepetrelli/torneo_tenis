-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-09-2023 a las 20:00:55
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `torneo_tenis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `edad_min` int(11) NOT NULL,
  `edad_max` int(11) NOT NULL,
  `sexo` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `edad_min`, `edad_max`, `sexo`) VALUES
(1, 'Damas A', 18, 34, 'Femenino'),
(2, 'Damas B', 35, 50, 'Femenino'),
(3, 'Damas C', 51, 100, 'Femenino'),
(4, 'Caballeros A', 18, 34, 'Masculino'),
(5, 'Caballeros B', 35, 50, 'Masculino'),
(6, 'Caballeros C', 51, 100, 'Masculino'),
(7, 'Juveniles varones', 13, 17, 'Masculino'),
(8, 'Juveniles mujeres', 13, 17, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `num_inscipcion` int(11) NOT NULL,
  `fecha_inscripcion` date NOT NULL,
  `abono_inscipcion` tinyint(1) NOT NULL,
  `fk_categoria` int(11) NOT NULL,
  `fk_participante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`num_inscipcion`, `fecha_inscripcion`, `abono_inscipcion`, `fk_categoria`, `fk_participante`) VALUES
(1, '2023-09-02', 1, 1, 1),
(2, '2023-09-03', 0, 4, 3),
(3, '2023-08-10', 1, 2, 4),
(4, '2023-08-23', 0, 2, 6),
(5, '2023-09-15', 1, 2, 8),
(6, '2023-09-05', 1, 4, 13),
(7, '2023-09-08', 1, 5, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes`
--

CREATE TABLE `participantes` (
  `id_participante` int(11) NOT NULL,
  `dni_participante` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `sexo` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `participantes`
--

INSERT INTO `participantes` (`id_participante`, `dni_participante`, `apellido`, `nombre`, `direccion`, `edad`, `telefono`, `sexo`) VALUES
(1, '123456789', 'Gómez', 'Ana', 'Calle 123, Ciudad', 30, '123-456-789', 'Femenino'),
(2, '123456789', 'Gómez', 'Ana', 'Calle 123, Ciudad', 30, '123-456-789', 'Femenino'),
(3, '234567890', 'Martínez', 'Juan', 'Avenida 456, Pueblo', 25, '234-567-890', 'Masculino'),
(4, '345678901', 'López', 'María', 'Calle 789, Villa', 40, '345-678-901', 'Femenino'),
(5, '456789012', 'González', 'Carlos', 'Avenida 012, Ciudad', 22, '456-789-012', 'Masculino'),
(6, '567890123', 'Rodríguez', 'Laura', 'Calle 345, Pueblo', 38, '567-890-123', 'Femenino'),
(7, '678901234', 'Fernández', 'Javier', 'Avenida 678, Villa', 29, '678-901-234', 'Masculino'),
(8, '789012345', 'Pérez', 'Marta', 'Calle 901, Ciudad', 42, '789-012-345', 'Femenino'),
(9, '890123456', 'Sánchez', 'Luis', 'Avenida 123, Pueblo', 27, '890-123-456', 'Masculino'),
(10, '901234567', 'Gutiérrez', 'Elena', 'Calle 456, Villa', 35, '901-234-567', 'Femenino'),
(11, '1234567890', 'Hernández', 'Pedro', 'Avenida 789, Ciudad', 24, '012-345-678', 'Masculino'),
(12, '2345678901', 'Díaz', 'Sofía', 'Calle 012, Pueblo', 37, '123-456-789', 'Femenino'),
(13, '3456789012', 'Vargas', 'Pablo', 'Avenida 345, Villa', 28, '234-567-890', 'Masculino'),
(14, '4567890123', 'Romero', 'Lorena', 'Calle 678, Ciudad', 31, '345-678-901', 'Femenino'),
(15, '5678901234', 'Fuentes', 'Jorge', 'Avenida 901, Pueblo', 26, '456-789-012', 'Masculino'),
(16, '6789012345', 'Cruz', 'Isabel', 'Calle 234, Villa', 39, '567-890-123', 'Femenino');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`num_inscipcion`),
  ADD KEY `fk_categoria` (`fk_categoria`),
  ADD KEY `fk_participante` (`fk_participante`);

--
-- Indices de la tabla `participantes`
--
ALTER TABLE `participantes`
  ADD PRIMARY KEY (`id_participante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `num_inscipcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `participantes`
--
ALTER TABLE `participantes`
  MODIFY `id_participante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`fk_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`fk_participante`) REFERENCES `participantes` (`id_participante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
