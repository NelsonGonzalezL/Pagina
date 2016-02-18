-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2016 a las 23:54:22
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ocrendbb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Mi Categoría'),
(2, 'Otra categoría'),
(3, 'Otra categoría más');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foros`
--

CREATE TABLE IF NOT EXISTS `foros` (
  `id` int(200) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descrip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad_mensajes` bigint(250) NOT NULL DEFAULT '0',
  `cantidad_temas` bigint(250) NOT NULL DEFAULT '0',
  `id_categoria` int(70) NOT NULL DEFAULT '1',
  `estado` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `foros`
--

INSERT INTO `foros` (`id`, `nombre`, `descrip`, `cantidad_mensajes`, `cantidad_temas`, `id_categoria`, `estado`) VALUES
(1, 'Mi primer foro', 'Esta es la <b>descripción!</b>', 0, 0, 1, 0),
(3, 'Otro Foro', 'Esta descripción en <strong>HTML</strong>', 0, 0, 2, 1),
(5, 'forooooo', 'Esto es otro foro', 0, 0, 2, 0),
(6, 'Más foroooooo', 'otrooooo', 2, 2, 1, 1),
(7, 'Blbalblaabla', 'blabalal', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE IF NOT EXISTS `temas` (
  `id` bigint(255) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contenido` longtext COLLATE utf8_unicode_ci NOT NULL,
  `id_foro` int(255) NOT NULL,
  `id_dueno` int(255) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `tipo` tinyint(1) NOT NULL DEFAULT '1',
  `fecha` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '01/02/2016',
  `visitas` int(255) NOT NULL DEFAULT '0',
  `respuestas` int(255) NOT NULL DEFAULT '0',
  `id_ultimo` int(255) NOT NULL,
  `fecha_ultimo` varchar(21) COLLATE utf8_unicode_ci NOT NULL DEFAULT '01/02/2016 3:10pm'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`id`, `titulo`, `contenido`, `id_foro`, `id_dueno`, `estado`, `tipo`, `fecha`, `visitas`, `respuestas`, `id_ultimo`, `fecha_ultimo`) VALUES
(4, 'Mi nuevo temaaaaaa', '\r\nasssssssssss\r\nspasopsaosa\r\naspsaoaspoxaax\r\nax\r\nxa\r\ncacacassa\r\nss\r\na\r\nsaca\r\nsa\r\ns\r\nas\r\ns\r\nascaas ao oe porpraopaosapos pas ops oa psoas pasopaoaepopaeoepaoaepeoae\r\napaeopeaoeapoaepaeopaeo pao peaoapsoapsosapaso totkeoasas\r\nsasapsòeraeoooooxxxxxxxxxxxxx\r\nasssssssssss\r\nspasopsaosa\r\naspsaoaspoxaax\r\nax\r\nxa\r\ncacacassa\r\nss\r\na\r\nsaca\r\nsa\r\ns\r\nas\r\ns\r\nascaas ao oe porpraopaosapos pas ops oa psoas pasopaoaepopaeoepaoaepeoae\r\napaeopeaoeapoaepaeopaeo pao peaoapsoapsosapaso totkeoasas\r\nsasapsòeraeoooooxxxxxxxxxxxxxasssssssssss\r\nspasopsaosa\r\naspsaoaspoxaax\r\nax\r\nxa\r\ncacacassa\r\nss\r\na\r\nsaca\r\nsa\r\ns\r\nas\r\ns\r\nascaas ao oe porpraopaosapos pas ops oa psoas pasopaoaepopaeoepaoaepeoae\r\napaeopeaoeapoaepaeopaeo pao peaoapsoapsosapaso totkeoasas\r\nsasapsòeraeoooooxxxxxxxxxxxxx', 6, 3, 1, 1, '06/02/2016 ', 0, 0, 3, '06/02/2016 05:34 pm'),
(5, 'Mi nuevo temaaxxxaxxa', 'Mi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxaMi nuevo temaaxxxaxxa', 6, 3, 1, 1, '06/02/2016 ', 0, 0, 3, '06/02/2016 05:39 pm'),
(6, 'America/CaracasAmerica/C', 'America/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/CaracasAmerica/Caracas', 7, 3, 1, 1, '06/02/2016 ', 0, 0, 3, '06/02/2016 12:11 pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(255) NOT NULL,
  `user` varchar(17) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `permisos` int(1) NOT NULL DEFAULT '0',
  `activo` int(1) NOT NULL DEFAULT '0',
  `keyreg` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keypass` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `new_pass` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ultima_conexion` int(32) NOT NULL DEFAULT '0',
  `no_leidos` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user`, `pass`, `email`, `permisos`, `activo`, `keyreg`, `keypass`, `new_pass`, `ultima_conexion`, `no_leidos`) VALUES
(1, 'prinick', 'c0784027b45aa11e848a38e890f8416c', 'princk093@gmail.com', 2, 1, '', '8c8fa3ee85d7dd2920913e744ccdc1b3', '05102EB5', 0, ''),
(3, 'UserTest', 'c0784027b45aa11e848a38e890f8416c', 'user@gmail.com', 0, 1, '', '', '', 0, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `foros`
--
ALTER TABLE `foros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `temas`
--
ALTER TABLE `temas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `foros`
--
ALTER TABLE `foros`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `temas`
--
ALTER TABLE `temas`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
