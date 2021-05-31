-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2021 a las 04:42:07
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id_alumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `id_asig` int(11) NOT NULL,
  `descr` varchar(59) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cont_admin`
--

CREATE TABLE `cont_admin` (
  `id_cont` int(11) NOT NULL,
  `unidades` varchar(29) DEFAULT NULL,
  `evaluacion` date DEFAULT NULL,
  `rev_eva` date DEFAULT NULL,
  `entr_se` date DEFAULT NULL,
  `firma_se` blob DEFAULT NULL,
  `indice_rep` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuaderno_plan`
--

CREATE TABLE `cuaderno_plan` (
  `id_cuaderno` int(11) NOT NULL,
  `prog_est` varchar(20) DEFAULT NULL,
  `periodo` varchar(20) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `grupo` int(11) DEFAULT NULL,
  `id_asig` int(11) DEFAULT NULL,
  `id_docente` int(11) DEFAULT NULL,
  `competencia` varchar(60) DEFAULT NULL,
  `no_sec` int(11) DEFAULT NULL,
  `fecha_pC` date DEFAULT NULL,
  `fecha_uC` date DEFAULT NULL,
  `f_entregaP` date DEFAULT NULL,
  `firma_Doc` blob DEFAULT NULL,
  `firma_Acj` blob DEFAULT NULL,
  `sello` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id_docente` int(11) NOT NULL,
  `especialidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fuentes_inf`
--

CREATE TABLE `fuentes_inf` (
  `id_fuentes` int(11) NOT NULL,
  `descripcion` varchar(900) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefediv`
--

CREATE TABLE `jefediv` (
  `id_jefeD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2021_04_20_044650_create_sessions_table', 1),
(10, '2021_05_30_211919_planeacion', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_personas` int(11) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `ap` varchar(20) DEFAULT NULL,
  `am` varchar(29) DEFAULT NULL,
  `carrera` varchar(50) DEFAULT NULL,
  `correo` varchar(59) DEFAULT NULL,
  `id_docente` int(11) DEFAULT NULL,
  `id_jefeD` int(11) DEFAULT NULL,
  `id_alumno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planeacion`
--

CREATE TABLE `planeacion` (
  `id_plan` int(11) NOT NULL,
  `id_cuaderno` int(11) DEFAULT NULL,
  `id_cont` int(11) DEFAULT NULL,
  `id_sec` int(11) DEFAULT NULL,
  `id_seval` int(11) DEFAULT NULL,
  `id_ppro` int(11) DEFAULT NULL,
  `id_fuentes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_proy`
--

CREATE TABLE `plan_proy` (
  `id_ppro` int(11) NOT NULL,
  `no_pro` int(11) DEFAULT NULL,
  `unidad` int(11) DEFAULT NULL,
  `compet` varchar(80) DEFAULT NULL,
  `ponderacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sec_did`
--

CREATE TABLE `sec_did` (
  `id_sec` int(11) NOT NULL,
  `unidad` int(11) DEFAULT NULL,
  `tema` varchar(50) DEFAULT NULL,
  `no_ses` int(11) DEFAULT NULL,
  `ses_pr` int(11) DEFAULT NULL,
  `ses_tr` int(11) DEFAULT NULL,
  `compet` varchar(80) DEFAULT NULL,
  `no_sesion` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `subtema` varchar(90) DEFAULT NULL,
  `estrateg` varchar(90) DEFAULT NULL,
  `prod_esp` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ciCgLhoOyUsSHzHDgXDr9KqJwrcimeUU0I3IGDi0', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibkpWT3hZTUIzajE5QW9SQVVBVGR6NnpLRWF2SWtjVG9pYVIzcE1NWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91c3VhcmlvcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjE6e2k6MDtzOjc6Im1lc3NhZ2UiO31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCR3R3A4ZUsubHlKL0x5V0tlRjZTTUFlR2lWZTZPR0N0L3ZGcU5CUzN0aGxsRml0eWFndHYwbSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkd0dwOGVLLmx5Si9MeVdLZUY2U01BZUdpVmU2T0dDdC92RnFOQlMzdGhsbEZpdHlhZ3R2MG0iO30=', 1622428858);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sist_eval`
--

CREATE TABLE `sist_eval` (
  `id_seval` int(11) NOT NULL,
  `ejes` varchar(20) DEFAULT NULL,
  `compete` varchar(20) DEFAULT NULL,
  `criterios` varchar(20) DEFAULT NULL,
  `ponderacion` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `control_camb` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Alexis', 'alexisrebollarlopez02@gmail.com', NULL, '$2y$10$wGp8eK.lyJ/LyWKeF6SMAeGiVe6OGCt/vFqNBS3thllFityagtv0m', NULL, NULL, NULL, NULL, NULL, '2021-05-31 07:35:50', '2021-05-31 07:35:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `ap` varchar(50) NOT NULL,
  `am` varchar(50) NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `id_personas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nom`, `ap`, `am`, `especialidad`, `updated_at`, `created_at`, `id_personas`) VALUES
(1, 'Alexis', 'REBOLLAR', 'Lopez', 'Estudiante', '2021-05-31 02:40:58', '2021-05-31 02:40:58', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id_asig`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `cont_admin`
--
ALTER TABLE `cont_admin`
  ADD PRIMARY KEY (`id_cont`);

--
-- Indices de la tabla `cuaderno_plan`
--
ALTER TABLE `cuaderno_plan`
  ADD PRIMARY KEY (`id_cuaderno`),
  ADD KEY `id_asig` (`id_asig`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_docente`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `fuentes_inf`
--
ALTER TABLE `fuentes_inf`
  ADD PRIMARY KEY (`id_fuentes`);

--
-- Indices de la tabla `jefediv`
--
ALTER TABLE `jefediv`
  ADD PRIMARY KEY (`id_jefeD`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_personas`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_jefeD` (`id_jefeD`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- Indices de la tabla `planeacion`
--
ALTER TABLE `planeacion`
  ADD PRIMARY KEY (`id_plan`),
  ADD KEY `id_cuaderno` (`id_cuaderno`),
  ADD KEY `id_cont` (`id_cont`),
  ADD KEY `id_sec` (`id_sec`),
  ADD KEY `id_seval` (`id_seval`),
  ADD KEY `id_ppro` (`id_ppro`),
  ADD KEY `id_fuentes` (`id_fuentes`);

--
-- Indices de la tabla `plan_proy`
--
ALTER TABLE `plan_proy`
  ADD PRIMARY KEY (`id_ppro`);

--
-- Indices de la tabla `sec_did`
--
ALTER TABLE `sec_did`
  ADD PRIMARY KEY (`id_sec`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `sist_eval`
--
ALTER TABLE `sist_eval`
  ADD PRIMARY KEY (`id_seval`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indices de la tabla `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indices de la tabla `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

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
  ADD KEY `id_personas` (`id_personas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `id_asig` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cont_admin`
--
ALTER TABLE `cont_admin`
  MODIFY `id_cont` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuaderno_plan`
--
ALTER TABLE `cuaderno_plan`
  MODIFY `id_cuaderno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fuentes_inf`
--
ALTER TABLE `fuentes_inf`
  MODIFY `id_fuentes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jefediv`
--
ALTER TABLE `jefediv`
  MODIFY `id_jefeD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id_personas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `planeacion`
--
ALTER TABLE `planeacion`
  MODIFY `id_plan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plan_proy`
--
ALTER TABLE `plan_proy`
  MODIFY `id_ppro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sec_did`
--
ALTER TABLE `sec_did`
  MODIFY `id_sec` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sist_eval`
--
ALTER TABLE `sist_eval`
  MODIFY `id_seval` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `cuaderno_plan`
--
ALTER TABLE `cuaderno_plan`
  ADD CONSTRAINT `cuaderno_plan_ibfk_1` FOREIGN KEY (`id_asig`) REFERENCES `asignatura` (`id_asig`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`),
  ADD CONSTRAINT `personas_ibfk_2` FOREIGN KEY (`id_jefeD`) REFERENCES `jefediv` (`id_jefeD`),
  ADD CONSTRAINT `personas_ibfk_3` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id_alumno`);

--
-- Filtros para la tabla `planeacion`
--
ALTER TABLE `planeacion`
  ADD CONSTRAINT `planeacion_ibfk_1` FOREIGN KEY (`id_cuaderno`) REFERENCES `cuaderno_plan` (`id_cuaderno`),
  ADD CONSTRAINT `planeacion_ibfk_2` FOREIGN KEY (`id_cont`) REFERENCES `cont_admin` (`id_cont`),
  ADD CONSTRAINT `planeacion_ibfk_3` FOREIGN KEY (`id_sec`) REFERENCES `sec_did` (`id_sec`),
  ADD CONSTRAINT `planeacion_ibfk_4` FOREIGN KEY (`id_seval`) REFERENCES `sist_eval` (`id_seval`),
  ADD CONSTRAINT `planeacion_ibfk_5` FOREIGN KEY (`id_ppro`) REFERENCES `plan_proy` (`id_ppro`),
  ADD CONSTRAINT `planeacion_ibfk_6` FOREIGN KEY (`id_fuentes`) REFERENCES `fuentes_inf` (`id_fuentes`);

--
-- Filtros para la tabla `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_personas`) REFERENCES `personas` (`id_personas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
