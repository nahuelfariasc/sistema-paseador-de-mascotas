-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2026 at 01:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_paseador_mascotas`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL DEFAULT 'NULL',
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `direcciones`
--

CREATE TABLE `direcciones` (
  `idDirección` int(20) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `calle` varchar(20) NOT NULL,
  `altura` int(4) NOT NULL,
  `depto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mascotas`
--

CREATE TABLE `mascotas` (
  `idMascota` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL DEFAULT '0',
  `raza` varchar(20) NOT NULL DEFAULT '0',
  `edad` int(2) NOT NULL,
  `idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paseadores`
--

CREATE TABLE `paseadores` (
  `idPaseador` int(5) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `tarifa` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paseos`
--

CREATE TABLE `paseos` (
  `idPaseo` int(11) NOT NULL,
  `fechaHoraInicio` datetime DEFAULT NULL,
  `fechaHoraFin` datetime DEFAULT NULL,
  `estado` enum('Pendiente','Aceptado','En curso','Finalizado','Cancelado') NOT NULL DEFAULT 'Pendiente',
  `idMascota` int(11) NOT NULL,
  `idPaseador` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indexes for table `direcciones`
--
ALTER TABLE `direcciones`
  ADD PRIMARY KEY (`idDirección`),
  ADD KEY `IdCliente` (`idCliente`);

--
-- Indexes for table `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`idMascota`) USING BTREE,
  ADD KEY `idCliente` (`idCliente`);

--
-- Indexes for table `paseadores`
--
ALTER TABLE `paseadores`
  ADD PRIMARY KEY (`idPaseador`);

--
-- Indexes for table `paseos`
--
ALTER TABLE `paseos`
  ADD PRIMARY KEY (`idPaseo`),
  ADD KEY `idMascota` (`idMascota`),
  ADD KEY `idPaseador` (`idPaseador`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `direcciones`
--
ALTER TABLE `direcciones`
  MODIFY `idDirección` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `idMascota` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paseadores`
--
ALTER TABLE `paseadores`
  MODIFY `idPaseador` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paseos`
--
ALTER TABLE `paseos`
  MODIFY `idPaseo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `direcciones`
--
ALTER TABLE `direcciones`
  ADD CONSTRAINT `cliente_direccion` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `idCliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`);

--
-- Constraints for table `paseos`
--
ALTER TABLE `paseos`
  ADD CONSTRAINT `fk_paseos_paseadores` FOREIGN KEY (`idPaseador`) REFERENCES `paseadores` (`idPaseador`),
  ADD CONSTRAINT `idMascota` FOREIGN KEY (`idMascota`) REFERENCES `mascotas` (`idMascota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
