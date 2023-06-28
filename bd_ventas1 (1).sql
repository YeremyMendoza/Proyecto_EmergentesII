-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2023 a las 21:09:23
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_ventas1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `celular` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `correo`, `celular`) VALUES
(2, 'Limberth', '9943328', '73061345'),
(3, 'Brayan', '17582355', '7654321'),
(4, 'Crissel', '10654734', '78965342'),
(5, 'Mario Torrez', '6543467', '72076423'),
(6, 'Marco ', '9553748', '76549456'),
(7, 'Pablo', '954546', '7356547'),
(8, 'Marcelo', '67894564', '6568846'),
(9, 'Juan Pablo', '6434635', '7858648');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `formato` varchar(50) NOT NULL,
  `precio` float(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `formato`, `precio`) VALUES
(1, 'Mario Bros', 'SALA 3', '3D', 50.00),
(3, 'transformers', 'SALA 3', '2D', 50.00),
(4, 'Flash', 'SALA 3', '3D', 40.00),
(5, 'Ant-Man', 'SALA 3', '3D', 50.00),
(6, 'Misterio de vida', 'SALA 3', '3D', 40.00),
(7, 'Jung E', 'SALA 3', '3D', 50.00),
(8, 'John Wick 4', 'SALA 3', '3D', 50.00),
(9, 'Creed III', 'SALA 3', '3D', 50.00),
(10, 'Siete Reyes', 'SALA 3', '3D', 50.00),
(11, 'Culpa Mia', 'SALA 3', '3D', 50.00),
(12, 'Hambre', 'SALA 3', '3D', 50.00),
(13, 'Magic Mike', 'SALA 3', '3D', 50.00),
(14, 'Stann Lee', 'SALA 3', '3D', 50.00),
(15, 'Praise This', 'SALA 3', '3D', 50.00),
(16, 'Medellin', 'SALA 3', '3D', 50.00),
(17, 'Alias', 'SALA 3', '3D', 50.00),
(18, 'Shazam', 'SALA 3', '3D', 50.00),
(19, 'Sayen', 'SALA 3', '3D', 50.00),
(20, 'Scream 6', 'SALA 3', '3D', 50.00),
(21, 'Infesto', 'SALA 3', '3D', 50.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`) VALUES
(1, 'limberth@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `cliente_id` int(20) NOT NULL,
  `producto_id` int(20) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `cliente_id`, `producto_id`, `fecha`) VALUES
(1, 2, 4, '2023-06-05'),
(2, 4, 4, '2023-06-23'),
(3, 3, 3, '2023-06-23'),
(4, 5, 18, '2023-06-22'),
(5, 9, 13, '2023-06-30'),
(6, 9, 11, '2023-06-25'),
(7, 2, 13, '2023-06-17'),
(8, 3, 5, '2023-06-18'),
(9, 8, 19, '2023-06-29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
