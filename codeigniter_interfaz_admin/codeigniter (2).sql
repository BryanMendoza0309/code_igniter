-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-03-2024 a las 13:56:32
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `codeigniter`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleado`
--

CREATE TABLE `tbl_empleado` (
  `idtbl_empleado` bigint(20) NOT NULL,
  `tbl_empleado_cedula` varchar(45) DEFAULT NULL,
  `tbl_empleado_cdlaizq` varchar(45) DEFAULT NULL COMMENT '6 digitos primeros de la izquierda',
  `tbl_empleado_apellnomb` text DEFAULT NULL COMMENT 'apellidos y nombres',
  `tbl_empleado_apellido` text DEFAULT NULL,
  `tbl_empleado_nombres` text DEFAULT NULL,
  `tbl_empleado_fchanac` text DEFAULT NULL COMMENT 'fecha de nacimiento',
  `tbl_empleado_gnro` varchar(45) DEFAULT NULL COMMENT 'genero',
  `tbl_empleado_estcivil` varchar(1000) DEFAULT NULL COMMENT 'estado civil',
  `tbl_empleado_email` text DEFAULT NULL,
  `tbl_empleado_tlfnoConv` varchar(100) DEFAULT NULL COMMENT 'telefono convencional',
  `tbl_empleado_tlfnoCelar` varchar(100) DEFAULT NULL COMMENT 'telefono celular',
  `tbl_empleado_nacionalidad` varchar(500) DEFAULT NULL,
  `tbl_empleado_direccion` text DEFAULT NULL,
  `tbl_empleado_canton` text DEFAULT NULL,
  `tbl_empleado_cantonstr` text DEFAULT NULL,
  `tbl_empleado_parroquia` text DEFAULT NULL,
  `tbl_empleado_parroquiastr` text DEFAULT NULL,
  `tbl_empleado_nveledu` varchar(5000) DEFAULT NULL COMMENT 'nivel de educacion',
  `tbl_empleado_tloobt` text DEFAULT NULL COMMENT 'titulo obtenido',
  `tbl_empleado_entbcrbanco` text DEFAULT NULL COMMENT 'Si es el valor es 1 -> Banco caso de 2 es cooperativa.',
  `tbl_empleado_entbcrbancostr` text DEFAULT NULL,
  `tbl_empleado_entidadbancaria` text DEFAULT NULL,
  `tbl_empleado_tpocuenta` varchar(45) DEFAULT NULL COMMENT 'tipo de cuenta',
  `tbl_empleado_numcuenta` varchar(1000) DEFAULT NULL COMMENT 'numero de cuenta',
  `tbl_empleado_discapacidad` text DEFAULT NULL,
  `tbl_empleado_porcdisc` varchar(45) DEFAULT NULL,
  `tbl_empleado_numcndis` varchar(45) DEFAULT NULL,
  `tbl_empleado_url` text DEFAULT NULL COMMENT 'url para el pdf del curriculo',
  `tbl_empleado_fcharegistro` varchar(45) DEFAULT NULL,
  `tbl_empleado_fchaupdate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  ADD PRIMARY KEY (`idtbl_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  MODIFY `idtbl_empleado` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
