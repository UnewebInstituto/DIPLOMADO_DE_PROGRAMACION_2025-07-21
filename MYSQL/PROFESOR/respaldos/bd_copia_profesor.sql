-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2025 a las 16:27:31
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
-- Base de datos: `bd_copia_profesor`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_catergoria` (IN `categoria` INT)   select nombre as producto,
descripcion, 
precio, 
cantidad from productos where categoria_id = categoria$$

--
-- Funciones
--
CREATE DEFINER=`root`@`localhost` FUNCTION `cuadrado` (`numero` INT) RETURNS INT(11)  RETURN numero*numero$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `fecha_calificacion` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id`, `usuario_id`, `producto_id`, `calificacion`, `comentario`, `fecha_calificacion`) VALUES
(1, 1, 1, 5, 'Excelente smartphone, muy rápido y con una cámara increíble.', '2025-08-22 08:20:23'),
(2, 1, 2, 4, 'La laptop es ligera y potente, ideal para trabajar.', '2025-08-22 08:20:23'),
(3, 1, 3, 3, 'La licuadora funciona bien pero es un poco ruidosa.', '2025-08-22 08:20:23'),
(4, 1, 4, 5, 'Aspiradora muy eficiente, limpia muy bien.', '2025-08-22 08:20:23'),
(5, 1, 5, 4, 'Zapatillas cómodas para correr largas distancias.', '2025-08-22 08:20:23'),
(6, 1, 6, 5, 'Chaqueta de cuero de excelente calidad y diseño elegante.', '2025-08-22 08:20:23'),
(7, 1, 7, 4, 'Pelota de fútbol de buena calidad para entrenar.', '2025-08-22 08:20:23'),
(8, 1, 8, 5, 'Raqueta de tenis ligera y fácil de manejar.', '2025-08-22 08:20:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`) VALUES
(1, 'ELECTRÓNICA', 'Dispositivos electrónicos y gadgets'),
(2, 'HOGAR', 'Artículos para el hogar y la cocina'),
(3, 'MODA', 'Ropa, calzado y accesorios de moda'),
(4, 'DEPORTES', 'Equipamiento y ropa deportiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiquetas`
--

CREATE TABLE `etiquetas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `etiquetas`
--

INSERT INTO `etiquetas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'NUEVO', 'Producto nuevo en el catálogo'),
(2, 'OFERTA', 'Producto en oferta especial'),
(3, 'POPULAR', 'Producto popular entre los clientes'),
(4, 'LIMITADO', 'Producto de edición limitada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `archivo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `producto_id`, `archivo`) VALUES
(1, 1, 'smartphone_xyz.jpg'),
(2, 2, 'laptop_abc.jpg'),
(3, 3, 'licuadora_123.jpg'),
(4, 4, 'aspiradora_456.jpg'),
(5, 5, 'zapatillas_deportivas.jpg'),
(6, 6, 'chaqueta_cuero.jpg'),
(7, 7, 'pelota_futbol.jpg'),
(8, 8, 'raqueta_tenis.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `nombre`, `descripcion`, `precio`, `cantidad`) VALUES
(1, 1, 'SMARTPHONE ABC', 'Smartphone de última generación con pantalla OLED y cámara de 48MP', 699.99, 50),
(2, 1, 'LAPTOP ABC', 'Laptop ultraligera con procesador Intel i7 y 16GB de RAM', 1199.99, 30),
(3, 2, 'LICUADORA 123', 'Licuadora potente con múltiples velocidades y vaso de vidrio', 89.99, 100),
(4, 2, 'ASPIRADORA 456', 'Aspiradora sin bolsa con tecnología ciclónica y filtro HEPA', 149.99, 40),
(5, 3, 'ZAPATILLAS DEPORTIVAS', 'Zapatillas cómodas y ligeras para correr y entrenar', 79.99, 200),
(6, 3, 'CHAQUETA DE CUERO', 'Chaqueta de cuero auténtico para un estilo elegante y moderno', 199.99, 25),
(7, 4, 'PELOTA DE FÚTBOL', 'Pelota oficial de fútbol para entrenamientos y partidos', 29.99, 150),
(8, 4, 'RAQUETA DE TENIS', 'Raqueta ligera con marco de grafito para mayor potencia y control', 89.99, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_etiquetas`
--

CREATE TABLE `productos_etiquetas` (
  `producto_id` int(11) NOT NULL,
  `etiqueta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_etiquetas`
--

INSERT INTO `productos_etiquetas` (`producto_id`, `etiqueta_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 3),
(4, 4),
(5, 1),
(6, 2),
(7, 3),
(8, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `descripcion`) VALUES
(1, 'ADMINISTRADOR', 'Usuario con privilegios de administrador del sistema'),
(2, 'CLIENTE', 'Usuario con privilegios de cliente para comprar productos'),
(3, 'VENDEDOR', 'Usuario con privilegios de vendedor para gestionar productos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento_triggers`
--

CREATE TABLE `seguimiento_triggers` (
  `id` int(11) NOT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `tabla` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seguimiento_triggers`
--

INSERT INTO `seguimiento_triggers` (`id`, `accion`, `tabla`, `fecha`) VALUES
(1, 'SE HA CREADO UN NUEVO USUARIO', 'usuarios', '2025-08-22 09:53:10'),
(2, 'SE HA ACTUALIZADO UN USUARIO', 'usuarios', '2025-08-22 10:06:17'),
(3, 'SE HA BORRADO UN USUARIO', 'usuarios', '2025-08-22 10:11:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `clave_secreta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `rol_id`, `nombre`, `apellido`, `correo_electronico`, `clave_secreta`) VALUES
(1, 1, 'ANA', 'VASQUEZ', 'AV@GMAIL.COM', '58073af4306fa0d9827904ce8237a500');

--
-- Disparadores `usuarios`
--
DELIMITER $$
CREATE TRIGGER `auditar_usuario` BEFORE INSERT ON `usuarios` FOR EACH ROW insert INTO seguimiento_triggers(accion,tabla) values('SE HA CREADO UN NUEVO USUARIO','usuarios')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `auditar_usuario_del` BEFORE DELETE ON `usuarios` FOR EACH ROW INSERT INTO seguimiento_triggers(accion,tabla) values('SE HA BORRADO UN USUARIO','usuarios')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `auditar_usuario_upd` BEFORE UPDATE ON `usuarios` FOR EACH ROW INSERT INTO seguimiento_triggers(accion,tabla) values('SE HA ACTUALIZADO UN USUARIO','usuarios')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_productos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_productos` (
`producto` varchar(100)
,`descripcion` text
,`precio` decimal(10,2)
,`cantidad` int(11)
,`categoria` varchar(50)
,`imagen` text
,`etiqueta` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_productos`
--
DROP TABLE IF EXISTS `vista_productos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_productos`  AS SELECT `productos`.`nombre` AS `producto`, `productos`.`descripcion` AS `descripcion`, `productos`.`precio` AS `precio`, `productos`.`cantidad` AS `cantidad`, `categorias`.`nombre` AS `categoria`, `imagenes`.`archivo` AS `imagen`, `etiquetas`.`nombre` AS `etiqueta` FROM ((((`productos` join `categorias`) join `imagenes`) join `etiquetas`) join `productos_etiquetas`) WHERE `productos`.`categoria_id` = `categorias`.`id` AND `productos`.`id` = `imagenes`.`producto_id` AND `productos`.`id` = `productos_etiquetas`.`producto_id` AND `etiquetas`.`id` = `productos_etiquetas`.`etiqueta_id` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `etiquetas`
--
ALTER TABLE `etiquetas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `productos_etiquetas`
--
ALTER TABLE `productos_etiquetas`
  ADD PRIMARY KEY (`producto_id`,`etiqueta_id`),
  ADD KEY `etiqueta_id` (`etiqueta_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seguimiento_triggers`
--
ALTER TABLE `seguimiento_triggers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol_id` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `etiquetas`
--
ALTER TABLE `etiquetas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `seguimiento_triggers`
--
ALTER TABLE `seguimiento_triggers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `imagenes_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos_etiquetas`
--
ALTER TABLE `productos_etiquetas`
  ADD CONSTRAINT `productos_etiquetas_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `productos_etiquetas_ibfk_2` FOREIGN KEY (`etiqueta_id`) REFERENCES `etiquetas` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
