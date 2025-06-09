-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2025 a las 14:41:04
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
-- Base de datos: `tfg_paponazo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `cod_ingre` bigint(20) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`cod_ingre`, `nombre`) VALUES
(1, 'Alioli'),
(2, 'Queso'),
(3, 'Jamón York'),
(4, 'Maíz'),
(5, 'Aceitunas'),
(6, 'Tomate Frito'),
(13, 'Atún'),
(14, 'Palitos de Mar'),
(15, 'Pollo de Kebab'),
(16, 'Huevo'),
(17, 'Zanahoria'),
(18, 'Remolacha'),
(19, 'Salsa Boloñesa'),
(20, 'Salsa Rosa'),
(21, 'Salsa Roquefort'),
(22, 'Salsa Bechamel'),
(23, 'Champiñón'),
(24, 'Piña'),
(25, 'Salsa Brava'),
(26, 'Cebolla'),
(27, 'Aceite'),
(28, 'Sobrasada'),
(29, 'Salsa Kebab');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patatas`
--

CREATE TABLE `patatas` (
  `cod_patata` bigint(3) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` double NOT NULL,
  `descri` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `patatas`
--

INSERT INTO `patatas` (`cod_patata`, `nombre`, `precio`, `descri`, `img`) VALUES
(1, 'Paponazo', 4.5, 'La patata más famosa de Granada', '../img/admin/20250605_201926.jpg'),
(2, 'Andaluza', 4.5, 'Patata clasica de andalucia, con aceite y más', '../img/admin/20250605_211910.jpg'),
(4, 'Mediterránea', 5, 'Patata clásica de las costas mediterráneas', '../img/admin/20250605_200825.jpg'),
(5, 'Mallorquina', 4.5, 'Directamente de las islas Baleares', '../img/admin/20250606_222615.jpg'),
(6, 'Boloñesa', 5, 'Patata con salsa Italiana', '../img/admin/20250605_201926.jpg'),
(7, 'Brava', 4.8, 'Patata con un ligero sabor picante', '../img/admin/20250606_222615.jpg'),
(9, 'Tropical', 5, 'Patata muy veraniega', '../img/admin/20250605_200825.jpg'),
(10, 'Roquefort', 4.8, 'La patata de las más vendidas este mes', '../img/admin/20250605_200825.jpg'),
(12, 'Bechamel', 5, 'Con champiñones de la vega', '../img/admin/20250606_222615.jpg'),
(13, 'Kebab', 5, 'Como un kebab, pero en forma de patata asada.', '../img/admin/20250606_222615.jpg'),
(14, 'Sola', 2.5, 'Solo patata con sal o pimienta', '../img/admin/20250605_200825.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `cod_pedido` bigint(11) NOT NULL,
  `usuario` bigint(20) NOT NULL,
  `preciototal` double NOT NULL,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `realizado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poseen`
--

CREATE TABLE `poseen` (
  `cod_patata` bigint(3) NOT NULL,
  `cod_ingre` bigint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `poseen`
--

INSERT INTO `poseen` (`cod_patata`, `cod_ingre`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 3),
(2, 4),
(2, 13),
(2, 14),
(2, 27),
(4, 4),
(4, 5),
(4, 13),
(4, 14),
(4, 17),
(4, 20),
(5, 2),
(5, 3),
(5, 4),
(5, 27),
(5, 28),
(6, 3),
(6, 4),
(6, 5),
(6, 17),
(6, 18),
(6, 19),
(7, 1),
(7, 3),
(7, 4),
(7, 5),
(7, 17),
(7, 18),
(7, 25),
(9, 4),
(9, 14),
(9, 17),
(9, 20),
(9, 24),
(10, 3),
(10, 4),
(10, 5),
(10, 21),
(12, 3),
(12, 5),
(12, 17),
(12, 18),
(12, 22),
(12, 23),
(13, 2),
(13, 15),
(13, 16),
(13, 26),
(13, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienen`
--

CREATE TABLE `tienen` (
  `cod_pedido` bigint(3) NOT NULL,
  `cod_patata` bigint(3) NOT NULL,
  `cantidad` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `codigo` bigint(3) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `tlf` int(9) NOT NULL,
  `tipo` enum('n','a') NOT NULL DEFAULT 'n',
  `pw` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`codigo`, `nombre`, `apellido`, `email`, `tlf`, `tipo`, `pw`) VALUES
(17, 'admin', 'admin', 'admin@gmail.com', 123456789, 'a', '$2y$10$PaA4fo2AIJOr8/Pg8WhQWuqlRFQYUxqQVIiZ0zE1CR3E/2DRCuB3S');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`cod_ingre`);

--
-- Indices de la tabla `patatas`
--
ALTER TABLE `patatas`
  ADD PRIMARY KEY (`cod_patata`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`cod_pedido`),
  ADD KEY `fk_ped_usu` (`usuario`);

--
-- Indices de la tabla `poseen`
--
ALTER TABLE `poseen`
  ADD PRIMARY KEY (`cod_patata`,`cod_ingre`),
  ADD KEY `fk_pos_ing` (`cod_ingre`);

--
-- Indices de la tabla `tienen`
--
ALTER TABLE `tienen`
  ADD PRIMARY KEY (`cod_pedido`,`cod_patata`),
  ADD KEY `fk_tie_pat` (`cod_patata`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `cod_ingre` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `patatas`
--
ALTER TABLE `patatas`
  MODIFY `cod_patata` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `cod_pedido` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `codigo` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_ped_usu` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `poseen`
--
ALTER TABLE `poseen`
  ADD CONSTRAINT `fk_pos_ing` FOREIGN KEY (`cod_ingre`) REFERENCES `ingredientes` (`cod_ingre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pos_pat` FOREIGN KEY (`cod_patata`) REFERENCES `patatas` (`cod_patata`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tienen`
--
ALTER TABLE `tienen`
  ADD CONSTRAINT `fk_tie_pat` FOREIGN KEY (`cod_patata`) REFERENCES `patatas` (`cod_patata`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tie_ped` FOREIGN KEY (`cod_pedido`) REFERENCES `pedidos` (`cod_pedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
