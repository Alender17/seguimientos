-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-03-2023 a las 23:14:58
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pqrs_plc`
--
CREATE DATABASE IF NOT EXISTS `pqrs_plc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pqrs_plc`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adjuntos`
--

CREATE TABLE `adjuntos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `ruta` varchar(255) NOT NULL,
  `radicado_id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Requerimiento, 2 - respuesta',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `adjuntos`
--

INSERT INTO `adjuntos` (`id`, `nombre`, `ruta`, `radicado_id`, `type`, `created_at`, `updated_at`) VALUES
(3, 'Nuevo documento de texto (2).txt', '1677016284Nuevo documento de texto (2).txt', 21, 1, '2023-02-21 21:51:24', '2023-02-21 21:51:24'),
(4, 'dondo_c.png', '1677069001dondo_c.png', 21, 1, '2023-02-22 12:30:01', '2023-02-22 12:30:01'),
(5, 'VALORES CORPORATIVOS FINAL COMPLETA.jpg', '1677071993VALORES CORPORATIVOS FINAL COMPLETA.jpg', 21, 2, '2023-02-22 13:19:53', '2023-02-22 13:19:53'),
(6, 'VALORES CORPORATIVOS FINAL COMPLETA.jpg', '1677072909VALORES CORPORATIVOS FINAL COMPLETA.jpg', 21, 2, '2023-02-22 13:35:09', '2023-02-22 13:35:09'),
(7, 'VALORES CORPORATIVOS FINAL COMPLETA.jpg', '1677073100VALORES CORPORATIVOS FINAL COMPLETA.jpg', 21, 2, '2023-02-22 13:38:20', '2023-02-22 13:38:20'),
(8, 'VALORES CORPORATIVOS FINAL COMPLETA.jpg', '1677081215VALORES CORPORATIVOS FINAL COMPLETA.jpg', 1, 1, '2023-02-22 15:53:35', '2023-02-22 15:53:35'),
(9, 'VALORES CORPORATIVOS FINAL COMPLETA.jpg', '1677081597VALORES CORPORATIVOS FINAL COMPLETA.jpg', 2, 1, '2023-02-22 15:59:57', '2023-02-22 15:59:57'),
(10, 'VALORES CORPORATIVOS FINAL COMPLETA.jpg', '1677526432VALORES CORPORATIVOS FINAL COMPLETA.jpg', 1, 1, '2023-02-27 19:33:52', '2023-02-27 19:33:52'),
(11, 'Captura de pantalla (6).png', '1677527373Captura de pantalla (6).png', 1, 2, '2023-02-27 19:49:33', '2023-02-27 19:49:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_procesos`
--

CREATE TABLE `area_procesos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` smallint(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `area_procesos`
--

INSERT INTO `area_procesos` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PAD BGA', 1, '2023-02-27 13:24:14', '2023-02-27 13:24:14'),
(2, 'PAD VELEZ', 1, '2023-02-27 13:24:38', '2023-02-27 13:24:38'),
(3, 'PAD BARRANCA', 1, '2023-02-27 13:33:47', '2023-02-27 13:33:47'),
(4, 'PAD ECP', 1, '2023-02-27 13:33:54', '2023-02-27 13:33:54'),
(5, 'PAD IBAGUE-TOLIMA', 1, '2023-02-27 13:34:01', '2023-02-27 13:34:01'),
(6, 'CLINICA DE HERIDAS BGA', 1, '2023-02-27 13:34:08', '2023-02-27 13:34:08'),
(7, 'CLINICA DE HERIDAS IBAGUE - TOLIMA', 1, '2023-02-27 13:34:17', '2023-02-27 13:34:17'),
(8, 'CLINICA DE HERIDAS BARRANCA', 1, '2023-02-27 13:34:27', '2023-02-27 13:34:27'),
(9, 'CLINICA DE HERIDAS VELEZ', 1, '2023-02-27 13:34:40', '2023-02-27 13:34:40'),
(10, 'FARMACIA BGA', 1, '2023-02-27 13:35:35', '2023-02-27 13:35:35'),
(11, 'FARMACIA BARRANCA', 1, '2023-02-27 13:35:49', '2023-02-27 13:35:49'),
(12, 'FARMACIA VELEZ', 1, '2023-02-27 13:35:58', '2023-02-27 13:35:58'),
(13, 'FARMACIA IBAGUE', 1, '2023-02-27 13:37:37', '2023-02-27 13:37:37'),
(14, 'RHB DM BGA', 1, '2023-02-27 13:37:45', '2023-02-27 13:37:45'),
(15, 'RHB DM BGA ECP', 1, '2023-02-27 13:37:56', '2023-02-27 13:37:56'),
(16, 'RHB DM IBAGUE', 1, '2023-02-27 13:38:05', '2023-02-27 13:38:05'),
(17, 'RHB DM BARRANCA', 1, '2023-02-27 13:38:57', '2023-02-27 13:38:57'),
(18, 'RHB DM VELEZ', 1, '2023-02-27 13:39:05', '2023-02-27 13:39:05'),
(19, 'RHB AMB BARRANCA', 1, '2023-02-27 13:39:13', '2023-02-27 13:39:13'),
(20, 'RHB AMB BGA', 1, '2023-02-27 13:40:05', '2023-02-27 13:40:05'),
(21, 'RHB AMB BGA ECP', 1, '2023-02-27 13:40:21', '2023-02-27 13:40:21'),
(22, 'RHB AMB BARRANCA', 1, '2023-02-27 13:40:29', '2023-02-27 13:40:29'),
(23, 'ENF BARRANCA', 1, '2023-02-27 13:40:35', '2023-02-27 13:40:35'),
(24, 'ENF BGA', 1, '2023-02-27 13:40:42', '2023-02-27 13:40:42'),
(25, 'ENF ECP', 1, '2023-02-27 13:40:55', '2023-02-27 13:40:55'),
(26, 'ENF IBAGUE TOLIMA', 1, '2023-02-27 13:41:10', '2023-02-27 13:41:10'),
(27, 'ENF VELEZ', 1, '2023-02-27 13:43:46', '2023-02-27 13:43:46'),
(28, 'ENF BARRANCA', 1, '2023-02-27 13:43:56', '2023-02-27 13:43:56'),
(29, 'AUTORIZACIONES', 1, '2023-02-27 13:44:07', '2023-02-27 13:44:07'),
(30, 'AMBULANCIAS', 1, '2023-02-27 13:44:19', '2023-02-27 13:44:19'),
(31, 'JURIDICA ASISTENCIAL', 1, '2023-02-27 13:45:00', '2023-02-27 13:45:00'),
(32, 'JURIDICA NAVARRO', 1, '2023-02-27 13:45:06', '2023-02-27 13:45:06'),
(33, 'CLINICA DE LA MEMORIA/NEUROPROJECT', 1, '2023-02-27 13:45:14', '2023-02-27 13:45:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacoras`
--

CREATE TABLE `bitacoras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_radicado` bigint(20) UNSIGNED NOT NULL,
  `fecha_bitacora` date NOT NULL,
  `observaciones` text NOT NULL,
  `nombre_bitacora` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificaciones`
--

CREATE TABLE `clasificaciones` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clasificaciones`
--

INSERT INTO `clasificaciones` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FELICITACIÓN', 1, '2023-02-13 22:34:20', '2023-02-13 22:34:20'),
(2, 'QUEJA', 1, '2023-02-13 22:34:27', '2023-02-13 22:34:27'),
(3, 'SOLUCITUD', 1, '2023-02-13 22:34:38', '2023-02-13 22:34:38'),
(4, 'RECLAMO', 1, '2023-02-13 22:34:50', '2023-02-13 22:34:50'),
(5, 'PETICIÓN', 1, '2023-02-13 22:35:04', '2023-02-13 22:35:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `accion` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `name`, `accion`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PENDIENTE', 1, 1, '2021-12-21 23:27:14', NULL),
(2, 'GESTIONADA', 2, 1, '2021-12-21 23:27:14', NULL),
(3, 'FINALIZADO', 3, 1, '2021-12-21 23:28:25', NULL),
(4, 'SEGUIMIENTO CERRADO', 4, 1, '2023-02-28 13:01:48', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_quejas`
--

CREATE TABLE `estado_quejas` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estado_quejas`
--

INSERT INTO `estado_quejas` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ATRIBUIBLE', 1, '2023-02-13 22:43:27', '2023-02-13 22:43:27'),
(2, 'NO ATRIBUIBLE', 1, '2023-02-13 22:43:38', '2023-02-13 22:43:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_radicados`
--

CREATE TABLE `estado_radicados` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estado_radicados`
--

INSERT INTO `estado_radicados` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PENDIENTE', 1, '2023-02-13 22:41:19', '2023-02-13 22:41:19'),
(2, 'REALIZADO O CULMINADO', 1, '2023-02-13 22:41:30', '2023-02-13 22:41:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `nivel` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `orden` smallint(6) DEFAULT NULL,
  `submenu` tinyint(3) UNSIGNED DEFAULT NULL,
  `rol_id` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `nivel`, `nombre`, `icon`, `url`, `orden`, `submenu`, `rol_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'Home', 'home', 'home', 1, NULL, NULL, NULL, NULL, NULL),
(3, 0, 'Configuracion', 'cog', '', 5, NULL, '1,2', NULL, NULL, NULL),
(4, 1, 'Tipo de Servicio', 'check-circle', 'type_service', 13, 3, '1,2', NULL, NULL, NULL),
(5, 1, 'Permisos', 'check-circle', 'permission', 8, 3, '1', NULL, NULL, NULL),
(7, 1, 'Roles', 'check-circle', 'rol', 10, 3, '1', NULL, NULL, NULL),
(9, 1, 'Administradores', 'user-plus', 'usuario', 1, 3, '1,2', NULL, NULL, NULL),
(11, 1, 'Tipificación', 'check-circle', 'tipificacion', 11, 3, '1,2', NULL, NULL, NULL),
(12, 1, 'Clasificaciones', 'check-circle', 'clasificacion', 3, 3, '1,2', NULL, NULL, NULL),
(13, 1, 'Estado del Radicado', 'check-circle', 'estadoradicado', 5, 3, '1,2', NULL, NULL, NULL),
(14, 1, 'Estado de las Quejas', 'check-circle', 'quejas', 4, 3, '1,2', NULL, NULL, NULL),
(15, 1, 'Tipo Atribuible', 'check-circle', 'tipoatribuible', 12, 3, '1,2', NULL, NULL, NULL),
(16, 1, 'Metodos', 'check-circle', 'metodo', 6, 3, '1,2', NULL, NULL, NULL),
(17, 1, 'Relacion de Pacientes', 'users-medical', 'relacion_paciente', 9, 3, '1,2', NULL, NULL, NULL),
(18, 1, 'Motivo de la PQRS', 'check-circle', 'motivo', 7, 3, '1,2', NULL, NULL, NULL),
(19, 1, 'Areas de proceso', 'layer-group', 'area_proceso', 2, 3, '1,2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodos`
--

CREATE TABLE `metodos` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metodos`
--

INSERT INTO `metodos` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ORAL', 1, '2023-02-13 23:09:35', '2023-02-13 23:09:35'),
(2, 'ESCRITO', 1, '2023-02-13 23:09:46', '2023-02-13 23:09:46'),
(3, 'EMAIL', 1, '2023-02-13 23:09:58', '2023-02-13 23:09:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivos_pqrs`
--

CREATE TABLE `motivos_pqrs` (
  `id` tinyint(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `motivos_pqrs`
--

INSERT INTO `motivos_pqrs` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CAMBIO DE MEDICO', 1, '2023-02-22 15:12:18', '2023-02-22 15:12:18'),
(2, 'CAMBIO DE AUXILIAR DE ENFERMERÍA', 1, '2023-02-22 15:16:23', '2023-02-22 15:16:23'),
(3, 'CAMBIO DE CUIDADOR', 1, '2023-02-22 15:16:32', '2023-02-22 15:16:32'),
(4, 'CAMBIO DE TERAPEUTA FISICO', 1, '2023-02-22 15:16:38', '2023-02-22 15:16:38'),
(5, 'CAMBIO DE TERAPEUTA RESPIRATORIO', 1, '2023-02-22 15:16:46', '2023-02-22 15:16:46'),
(6, 'CAMBIO DE TERAPEUTA LENGUAJE', 1, '2023-02-22 15:16:56', '2023-02-22 15:16:56'),
(7, 'CAMBIO DE TERAPEUTA OCUPACIONAL', 1, '2023-02-22 15:17:04', '2023-02-22 15:17:04'),
(8, 'CAMBIO DE TERAPEUTA COGNITIVO', 1, '2023-02-22 15:17:14', '2023-02-22 15:17:14'),
(9, 'CAMBIO DE AUXILIAR DE PROCEDIMIENTO', 1, '2023-02-22 15:17:22', '2023-02-22 15:17:22'),
(10, 'CAMBIO DE TRABAJOR SOCIAL', 1, '2023-02-22 15:17:28', '2023-02-22 15:17:28'),
(11, 'CAMBIO DE PSICOLOGO', 1, '2023-02-22 15:17:34', '2023-02-22 15:17:34'),
(12, 'CAMBIO DE PROFESIONAL EN NUTRICIÓN', 1, '2023-02-22 15:17:41', '2023-02-22 15:17:41'),
(13, 'ENVÍO DE HISTORIAS CLINICA MG', 1, '2023-02-22 15:17:53', '2023-02-22 15:17:53'),
(14, 'ENVÍO DE HISTORIAS CLINICA NUTRICION', 1, '2023-02-22 15:18:01', '2023-02-22 15:18:01'),
(15, 'ENVÍO DE HISTORIAS CLINICA TRABAJO SOCIAL', 1, '2023-02-22 15:18:12', '2023-02-22 15:18:12'),
(16, 'ENVÍO DE HISTORIAS CLINICA PSICOLOGÍA', 1, '2023-02-22 15:18:18', '2023-02-22 15:18:18'),
(17, 'ENVÍO DE HISTORIAS CLINICA ME', 1, '2023-02-22 15:18:34', '2023-02-22 15:18:34'),
(18, 'ENVÍO DE MIPRES DE ALIMENTO', 1, '2023-02-22 15:18:42', '2023-02-22 15:18:42'),
(19, 'ENVÍO DE MIPRES DE PAÑALES', 1, '2023-02-22 15:18:53', '2023-02-22 15:18:53'),
(20, 'CORRECIONES DE ORDENES MEDICAS', 1, '2023-02-22 15:18:59', '2023-02-22 15:18:59'),
(21, 'CORRECIONES DE INCAPACIDAD', 1, '2023-02-22 15:19:06', '2023-02-22 15:19:06'),
(22, 'CANTIDAD DEL ORDENAMIENTO DE TERAPIAS', 1, '2023-02-22 15:19:13', '2023-02-22 15:19:13'),
(23, 'PACIENTE DESCUBIERTO SERVICIO DE AUX ENFERMERÍA/CUIDADOR', 1, '2023-02-22 15:19:21', '2023-02-22 15:19:21'),
(24, 'PACIENTE DESCUBIERTO POR RHB', 1, '2023-02-22 15:19:31', '2023-02-22 15:19:31'),
(25, 'SOLICITUD DE RECOLECCIÓN DE RESIDUOS', 1, '2023-02-22 15:21:26', '2023-02-22 15:21:26'),
(26, 'SOLICITUD DE VALORACION MEDICA MG', 1, '2023-02-22 15:21:32', '2023-02-22 15:21:32'),
(27, 'SOLICITUD DE VALORACION MEDICA ME', 1, '2023-02-22 15:21:41', '2023-02-22 15:21:41'),
(28, 'SOLICITUD DE VALORACION POR NUTRICION', 1, '2023-02-22 15:21:46', '2023-02-22 15:21:46'),
(29, 'SOLICITUD DE VALORACION POR TRABAJO SOCIAL', 1, '2023-02-22 15:21:54', '2023-02-22 15:21:54'),
(30, 'SOLICITUD DE VALORACION POR PSICOLOGIA', 1, '2023-02-22 15:22:10', '2023-02-22 15:22:10'),
(31, 'AUMENTO DE LA HORAS DEL SERVICIO DE CUIDADOR / AUX ENFERMERÍA', 1, '2023-02-22 15:22:17', '2023-02-22 15:22:17'),
(32, 'AUMENTO DE LAS TERAPIAS DE RHB', 1, '2023-02-22 15:22:26', '2023-02-22 15:22:26'),
(33, 'SOLICITUD DE ACOMPAÑAMIENTO DEL CUIDADOR/AUX ENF A CITAS MEDICAS', 1, '2023-02-22 15:22:34', '2023-02-22 15:22:34'),
(34, 'ASIGNACION DE CITAS DE RHB AMBULATORIA TF', 1, '2023-02-22 15:22:46', '2023-02-22 15:22:46'),
(35, 'ASIGNACION DE CITAS DE RHB AMBULATORIA TL', 1, '2023-02-22 15:23:00', '2023-02-22 15:23:00'),
(36, 'ASIGNACION DE CITAS DE RHB AMBULATORIA TO', 1, '2023-02-22 15:23:13', '2023-02-22 15:23:13'),
(37, 'ASIGNACION DE CITAS DE RHB AMBULATORIA TC', 1, '2023-02-22 15:23:20', '2023-02-22 15:23:20'),
(38, 'ASIGNACION DE CITAS DE RHB AMBULATORIA PRUEBA COGNITIVA', 1, '2023-02-22 15:23:26', '2023-02-22 15:23:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LECTURA', 1, '2021-12-05 22:54:34', '2021-12-05 22:54:34'),
(2, 'ESCRITURA', 1, '2021-12-05 22:54:45', '2021-12-05 22:54:45'),
(3, 'CONTROL TOTAL', 1, '2021-12-05 22:55:01', '2021-12-05 22:55:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `radicados`
--

CREATE TABLE `radicados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `radicado` varchar(55) DEFAULT 'SIN RADICADO',
  `sede_empresa_id` bigint(20) NOT NULL,
  `sede_empresa_rehabilitacion_id` bigint(20) NOT NULL,
  `fecha_llegada` date NOT NULL,
  `hora_llegada` time NOT NULL,
  `paciente` varchar(255) NOT NULL,
  `documento_identidad` varchar(55) NOT NULL,
  `nombre_radica` varchar(255) NOT NULL,
  `id_relacion_paciente` int(11) NOT NULL,
  `entidad_id` bigint(20) UNSIGNED NOT NULL,
  `type_service_id` tinyint(3) UNSIGNED NOT NULL,
  `usuario_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_tratante_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `fuente_queja` varchar(255) NOT NULL,
  `motivo_id` tinyint(11) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `seguimiento` int(11) DEFAULT 0 COMMENT '0 = NO, \r\n1 = SI \r\n',
  `tipificacion_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `clasificacion_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `estado_queja_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `tipo_atribuible_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `area_proceso_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fecha_respuesta` date DEFAULT NULL,
  `oportunidad_respuesta` int(11) DEFAULT NULL,
  `metodo_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `respuesta_lider` int(11) NOT NULL,
  `quien_respondio` bigint(20) UNSIGNED DEFAULT NULL,
  `estado_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_pacientes`
--

CREATE TABLE `relacion_pacientes` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `relacion_pacientes`
--

INSERT INTO `relacion_pacientes` (`id`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'FUNCIONARIO NEPS', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'FUNCIONARIO FAMISANAR', 1, '2023-02-16 20:54:39', NULL),
(3, 'FUNCIONARIO ASMET SALUD', 1, '2023-02-16 20:54:39', NULL),
(4, 'FUNCIONARIO ECOPETROL', 1, '2023-02-16 20:55:52', NULL),
(5, 'USUARIO', 1, '2023-02-16 20:55:52', NULL),
(6, 'FAMILIAR DEL PACIENTE', 1, '2023-02-16 20:56:41', NULL),
(7, 'FUNCIONARIO SANITAS EPS', 1, '2023-02-16 20:56:41', NULL),
(8, 'ABOGADOS NAVARRO BOHORQUEZ ', 1, '2023-02-16 20:56:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` smallint(6) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `status`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 'SUPER ADMINISTRADOR', 1, 3, '2021-12-05 23:21:53', '2022-12-18 21:28:22'),
(2, 'ADMINISTRADO', 1, 3, '2021-12-05 23:22:44', '2022-12-18 21:28:34'),
(3, 'PROFESIONAL SIAU', 1, 2, '2021-12-05 23:23:01', '2022-12-19 22:26:03'),
(4, 'AUXILIAR SIAU', 1, 2, '2022-12-19 22:26:30', '2022-12-19 22:26:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimientos`
--

CREATE TABLE `seguimientos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_radicado` bigint(20) UNSIGNED NOT NULL,
  `fecha_seguimiento` date NOT NULL,
  `observaciones` text NOT NULL,
  `nombre_seguimiento` bigint(20) UNSIGNED NOT NULL,
  `estado` smallint(6) DEFAULT 0 COMMENT '0 = seguimiento\r\n1 = cerrado\r\n',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipificaciones`
--

CREATE TABLE `tipificaciones` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipificaciones`
--

INSERT INTO `tipificaciones` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'EJECUCION PRESTACIÓN SERVICIOS PAD', 1, '2023-02-13 22:30:45', '2023-02-13 22:30:45'),
(2, 'NO ORDENAMIENTO DE SERVICIOS DE CUIDADOR', 1, '2023-02-13 22:30:56', '2023-02-13 22:30:56'),
(3, 'NO PRESTACION ATENCION DOMICILIARIA', 1, '2023-02-13 22:31:05', '2023-02-13 22:31:05'),
(4, 'OPORTUNIDAD DE INICIO DEL PLAN DE REHABILITACION', 1, '2023-02-13 22:31:15', '2023-02-13 22:31:15'),
(5, 'OPORTUNIDAD PRESTACION DEL SERVICIO DE CUIDADOR', 1, '2023-02-13 22:31:34', '2023-02-13 22:31:34'),
(6, 'SERVICIO NO CONTRATADO Y/O PRESTADO POR LA IPS', 1, '2023-03-08 20:15:42', '2023-03-08 20:15:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_atribuibles`
--

CREATE TABLE `tipo_atribuibles` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_atribuibles`
--

INSERT INTO `tipo_atribuibles` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SI', 1, '2023-02-13 22:47:43', '2023-02-13 22:47:43'),
(2, 'NO', 1, '2023-02-13 22:47:50', '2023-02-13 22:47:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_services`
--

CREATE TABLE `type_services` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `type_services`
--

INSERT INTO `type_services` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PAD', 1, '2021-12-05 20:33:43', '2022-07-22 22:19:44'),
(2, 'FARMACIA', 1, '2021-12-05 20:33:43', '2022-07-22 22:19:57'),
(3, 'RHB', 1, '2021-12-05 21:52:28', '2022-07-22 22:20:10'),
(4, 'ENFERMERIA', 1, '2022-01-19 22:19:21', '2022-07-22 22:20:24'),
(5, 'RHB AMBULATORIO', 1, '2022-01-19 22:19:34', '2022-07-22 22:20:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user_id`, `rol_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 1553, 1, 1, '2022-01-07 21:45:45', '2022-01-07 21:45:45'),
(5, 5483, 1, 1, '2022-01-14 03:48:44', '2022-01-14 03:48:44'),
(6, 2499, 2, 0, '2022-01-19 22:13:30', '2023-02-21 17:16:37'),
(7, 6666, 1, 0, '2022-03-08 15:30:03', '2022-04-11 20:45:04'),
(8, 4637, 3, 1, '2022-04-13 17:09:59', '2023-03-08 20:02:21'),
(9, 17, 2, 0, '2022-12-18 21:50:18', '2022-12-18 21:50:18'),
(10, 6682, 1, 1, '2023-02-16 17:08:09', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adjuntos`
--
ALTER TABLE `adjuntos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjunto_ticket_id` (`radicado_id`);

--
-- Indices de la tabla `area_procesos`
--
ALTER TABLE `area_procesos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bitacoras`
--
ALTER TABLE `bitacoras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bitacoras_radicados` (`id_radicado`);

--
-- Indices de la tabla `clasificaciones`
--
ALTER TABLE `clasificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado_quejas`
--
ALTER TABLE `estado_quejas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado_radicados`
--
ALTER TABLE `estado_radicados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_memus_menus` (`submenu`);

--
-- Indices de la tabla `metodos`
--
ALTER TABLE `metodos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `motivos_pqrs`
--
ALTER TABLE `motivos_pqrs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `radicados`
--
ALTER TABLE `radicados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_radicados_sede_empresas` (`sede_empresa_id`),
  ADD KEY `fk_radicados_sede_empresas_rehabilitacion` (`sede_empresa_rehabilitacion_id`),
  ADD KEY `fk_radicados_type_services` (`type_service_id`),
  ADD KEY `fk_radicados_usuarios` (`usuario_id`),
  ADD KEY `fk_radicados_tipificaciones` (`tipificacion_id`),
  ADD KEY `fk_radicados_clasificaciones` (`clasificacion_id`),
  ADD KEY `fk_radicados_estado_quejas` (`estado_queja_id`),
  ADD KEY `fk_radicados_tipo_atribuibles` (`tipo_atribuible_id`),
  ADD KEY `fk_radicados_entidades` (`entidad_id`),
  ADD KEY `fk_radicados_metodos` (`metodo_id`),
  ADD KEY `fk_radicados_quien_respondio` (`quien_respondio`),
  ADD KEY `fk_radicados_estados` (`estado_id`),
  ADD KEY `doctor_tratante_id` (`doctor_tratante_id`),
  ADD KEY `fk_radicados_motivos` (`motivo_id`),
  ADD KEY `fk_radicados_tipo_relacion` (`id_relacion_paciente`),
  ADD KEY `fk_radicados_area_proceso` (`area_proceso_id`);

--
-- Indices de la tabla `relacion_pacientes`
--
ALTER TABLE `relacion_pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_permission` (`permission_id`);

--
-- Indices de la tabla `seguimientos`
--
ALTER TABLE `seguimientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seguimientos_id_radicado` (`id_radicado`);

--
-- Indices de la tabla `tipificaciones`
--
ALTER TABLE `tipificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_atribuibles`
--
ALTER TABLE `tipo_atribuibles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_services`
--
ALTER TABLE `type_services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_roles` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adjuntos`
--
ALTER TABLE `adjuntos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `area_procesos`
--
ALTER TABLE `area_procesos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `bitacoras`
--
ALTER TABLE `bitacoras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clasificaciones`
--
ALTER TABLE `clasificaciones`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estado_quejas`
--
ALTER TABLE `estado_quejas`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estado_radicados`
--
ALTER TABLE `estado_radicados`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `metodos`
--
ALTER TABLE `metodos`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `motivos_pqrs`
--
ALTER TABLE `motivos_pqrs`
  MODIFY `id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `radicados`
--
ALTER TABLE `radicados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `relacion_pacientes`
--
ALTER TABLE `relacion_pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `seguimientos`
--
ALTER TABLE `seguimientos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipificaciones`
--
ALTER TABLE `tipificaciones`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_atribuibles`
--
ALTER TABLE `tipo_atribuibles`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `type_services`
--
ALTER TABLE `type_services`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adjuntos`
--
ALTER TABLE `adjuntos`
  ADD CONSTRAINT `adjuntos_radicados` FOREIGN KEY (`radicado_id`) REFERENCES `radicados` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `bitacoras`
--
ALTER TABLE `bitacoras`
  ADD CONSTRAINT `bitacoras_radicados` FOREIGN KEY (`id_radicado`) REFERENCES `radicados` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_memus_menus` FOREIGN KEY (`submenu`) REFERENCES `menu` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `radicados`
--
ALTER TABLE `radicados`
  ADD CONSTRAINT `fk_radicados_area_proceso` FOREIGN KEY (`area_proceso_id`) REFERENCES `area_procesos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_radicados_clasificaciones` FOREIGN KEY (`clasificacion_id`) REFERENCES `clasificaciones` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_radicados_entidades` FOREIGN KEY (`entidad_id`) REFERENCES `projection`.`entidad` (`id_entidad`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_radicados_estado_quejas` FOREIGN KEY (`estado_queja_id`) REFERENCES `estado_quejas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_radicados_estados` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_radicados_metodos` FOREIGN KEY (`metodo_id`) REFERENCES `metodos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_radicados_motivos` FOREIGN KEY (`motivo_id`) REFERENCES `motivos_pqrs` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_radicados_sede_empresas` FOREIGN KEY (`sede_empresa_id`) REFERENCES `projection`.`sede_empresa` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_radicados_sede_empresas_rehabilitacion` FOREIGN KEY (`sede_empresa_rehabilitacion_id`) REFERENCES `projection`.`sede_empresa_rehabilitacion` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_radicados_tipificaciones` FOREIGN KEY (`tipificacion_id`) REFERENCES `tipificaciones` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_radicados_tipo_atribuibles` FOREIGN KEY (`tipo_atribuible_id`) REFERENCES `tipo_atribuibles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_radicados_tipo_relacion` FOREIGN KEY (`id_relacion_paciente`) REFERENCES `relacion_pacientes` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_permission` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `seguimientos`
--
ALTER TABLE `seguimientos`
  ADD CONSTRAINT `seguimientos_id_radicado` FOREIGN KEY (`id_radicado`) REFERENCES `radicados` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuario_roles` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
