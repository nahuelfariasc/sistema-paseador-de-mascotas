-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2026 a las 23:56:28
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `direcciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_paseador_mascotas`
--

CREATE TABLE `sistema_paseador_mascotas` (
  `idDirección` int(20) NOT NULL,
  `IdCliente` int(20) NOT NULL,
  `calle` varchar(20) NOT NULL,
  `altura` int(4) NOT NULL,
  `depto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sistema_paseador_mascotas`
--

INSERT INTO `sistema_paseador_mascotas` (`idDirección`, `IdCliente`, `calle`, `altura`, `depto`) VALUES
(1, 1, 'Av. Corrientes', 1554, '206'),
(2, 2, 'Maipú', 448, '5C'),
(5, 3, 'Charcas', 923, '4B'),
(6, 4, 'José A Cabrera', 1026, '8'),
(7, 5, 'Av. Diaz Velez', 1337, '11 A'),
(8, 6, 'Rocamora', 2225, '0403'),
(9, 7, 'Don Bosco', 258, 'F'),
(10, 8, 'Pringles', 1983, '2A'),
(11, 9, 'Franklin', 229, '24'),
(12, 10, 'Yerbal', 1033, 'casa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sistema_paseador_mascotas`
--
ALTER TABLE `sistema_paseador_mascotas`
  ADD PRIMARY KEY (`idDirección`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sistema_paseador_mascotas`
--
ALTER TABLE `sistema_paseador_mascotas`
  MODIFY `idDirección` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
