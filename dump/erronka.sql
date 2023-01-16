-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2023 a las 10:13:23
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `erronka`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_16_093620_create_usuarios_table', 1),
(6, '2022_12_19_083425_create_partidas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidas`
--

CREATE TABLE `partidas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `juego1` int(11) NOT NULL,
  `juego2` int(11) NOT NULL,
  `usuario` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `partidas`
--

INSERT INTO `partidas` (`id`, `juego1`, `juego2`, `usuario`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2023-01-09 06:20:46', '2023-01-09 06:20:46'),
(2, 1, 1, 2, '2023-01-09 06:20:46', '2023-01-09 06:20:46'),
(3, 0, 0, 3, '2023-01-09 06:20:46', '2023-01-09 06:20:46'),
(4, 0, 0, 4, '2023-01-09 06:20:46', '2023-01-09 06:20:46'),
(5, 0, 0, 5, '2023-01-09 06:20:46', '2023-01-09 06:20:46'),
(6, 0, 0, 6, '2023-01-09 06:20:46', '2023-01-09 06:20:46'),
(7, 0, 0, 7, '2023-01-09 06:20:46', '2023-01-09 06:20:46'),
(8, 0, 0, 8, '2023-01-09 06:21:22', '2023-01-09 06:21:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `rol` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `usuario`, `pass`, `rol`, `foto`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin', 'admin', 1, 'default.png', 'png', '2023-01-09 06:20:45', '2023-01-09 06:20:45'),
(2, 'Rick', 'Fritz', 'Rick Fritz', 'Inf041', 0, 'default.png', 'png', '2023-01-09 06:20:45', '2023-01-09 06:20:45'),
(3, 'Morton', 'Hauck', 'Laron Kunze', 'Inf041', 0, 'default.png', 'png', '2023-01-09 06:20:46', '2023-01-09 06:20:46'),
(4, 'Toy', 'Collier', 'Mrs. Lorna Bernhard DVM', 'Inf041', 0, 'default.png', 'png', '2023-01-09 06:20:46', '2023-01-09 06:20:46'),
(5, 'Kadin', 'Kuvalis', 'Myrtice Macejkovic', 'Inf041', 0, 'default.png', 'png', '2023-01-09 06:20:46', '2023-01-09 06:20:46'),
(6, 'Alan', 'Hudson', 'Lexie Gibson', 'Inf041', 0, 'default.png', 'png', '2023-01-09 06:20:46', '2023-01-09 06:20:46'),
(7, 'Lenny', 'Rogahn', 'Janis D\'Amore DDS', 'Inf041', 0, 'default.png', 'png', '2023-01-09 06:20:46', '2023-01-09 06:20:46'),
(8, 'Paco', 'Paco', 'Paquito', 'Paco', 1, 'paquit0.png', 'png', '2023-01-09 06:21:22', '2023-01-10 11:10:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partidas_usuario_foreign` (`usuario`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_usuario_unique` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `partidas`
--
ALTER TABLE `partidas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD CONSTRAINT `partidas_usuario_foreign` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
