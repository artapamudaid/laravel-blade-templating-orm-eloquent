-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 06, 2021 at 01:55 PM
-- Server version: 8.0.27
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `football_analytic_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` bigint UNSIGNED NOT NULL,
  `stadiums_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` longtext COLLATE utf8mb4_unicode_ci,
  `url` longtext COLLATE utf8mb4_unicode_ci,
  `thropy` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `stadiums_id`, `name`, `logo`, `url`, `thropy`, `created_at`, `updated_at`) VALUES
(1, 1, 'Chelsea FC', 'https://resources.premierleague.com/premierleague/badges/t8.svg', 'www.chelseafc.com', 19, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(2, 2, 'Arsenal', 'https://resources.premierleague.com/premierleague/badges/t3.svg', 'www.arsenal.com', 8, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(3, 3, 'Manchester United', 'https://resources.premierleague.com/premierleague/badges/t1.svg', 'www.manutd.com', 20, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(4, 4, 'Manchester City', 'https://resources.premierleague.com/premierleague/badges/t43.svg', 'www.mancity.com', 12, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(5, 5, 'Liverpool', 'https://resources.premierleague.com/premierleague/badges/t14.svg', 'www.liverpoolfc.com', 11, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(6, 6, 'Tottenham Hotspur', 'https://resources.premierleague.com/premierleague/badges/t6.svg', 'www.tottenhamhotspur.com', 1, '2021-03-20 17:00:00', '2021-03-20 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` bigint UNSIGNED NOT NULL,
  `clubs_id` bigint UNSIGNED DEFAULT NULL,
  `photo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `clubs_id`, `photo`, `name`, `old`, `nationality`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://resources.premierleague.com/premierleague/photos/players/250x250/man39237.png', 'Thomas Tuchel', '47', 'Germany', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(2, 2, 'https://resources.premierleague.com/premierleague/photos/players/250x250/man51018.png', 'Mikel Arteta', '38', 'Spain', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(3, 3, 'https://resources.premierleague.com/premierleague/photos/players/250x250/man40342.png', 'Ralf Rangnick', '48', 'Germany', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(4, 4, 'https://resources.premierleague.com/premierleague/photos/players/250x250/man37974.png', 'Josep Guardiola', '50', 'Spain', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(5, 5, 'https://resources.premierleague.com/premierleague/photos/players/250x250/man279.png', 'Jurgen Klopp', '53', 'Germany', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(6, 6, 'https://resources.premierleague.com/premierleague/photos/players/250x250/man134.png', 'Antonio Conte', '58', 'Italy', '2021-03-20 17:00:00', '2021-03-20 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` bigint UNSIGNED NOT NULL,
  `clubs_id` bigint UNSIGNED DEFAULT NULL,
  `rivals_id` bigint UNSIGNED DEFAULT NULL,
  `schedule` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `clubs_id`, `rivals_id`, `schedule`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2021-08-25 00:00:00', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(2, 2, 1, '2021-08-25 00:00:00', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(3, 3, 4, '2021-08-25 00:00:00', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(4, 4, 3, '2021-08-25 00:00:00', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(5, 5, 6, '2021-08-25 00:00:00', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(6, 6, 5, '2021-08-25 00:00:00', '2021-03-20 17:00:00', '2021-03-20 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2021_12_04_141400_create_clubs_table', 1),
(28, '2021_12_04_141552_create_stadiums_table', 1),
(29, '2021_12_04_141606_create_players_table', 1),
(30, '2021_12_04_141616_create_managers_table', 1),
(31, '2021_12_04_141628_create_matches_table', 1),
(32, '2021_12_04_143456_add_foreign_key_to_clubs', 1),
(33, '2021_12_04_144252_add_foreign_key_to_managers', 1),
(34, '2021_12_04_144327_add_foreign_key_to_players', 1),
(35, '2021_12_04_144417_add_foreign_key_to_matches', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint UNSIGNED NOT NULL,
  `clubs_id` bigint UNSIGNED DEFAULT NULL,
  `photo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` int NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `clubs_id`, `photo`, `name`, `height`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p165153.png', 'Timo Werner', 180, 'Forward', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(2, 1, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p184341.png', 'Mason Mount', 178, 'Midfielder', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(3, 2, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p184029.png', 'Martin Ødegaard', 178, 'Midfielder', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(4, 2, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p182539.png', 'Bukayo Saka', 179, 'Midfielder', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(5, 3, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p106760.png', 'Luke Shaw', 185, 'Defender', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(6, 3, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p141746.png', 'Bruno Fernandes', 179, 'Midfielder', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(7, 4, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p121160.png', 'Ederson', 188, 'Goalkeeper', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(8, 4, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p103025.png', 'Riyard Mahrez', 179, 'Forward', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(9, 5, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p194634.png', 'Diogo Jota', 178, 'Forward', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(10, 5, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p97032.png', 'Virgil van Dijk', 193, 'Defender', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(11, 6, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p36903.png', 'Gareth Bale', 185, 'Forward', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(12, 6, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p199249.png', 'Sergio Reguilon', 178, 'Defender', '2021-03-20 17:00:00', '2021-03-20 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `stadiums`
--

CREATE TABLE `stadiums` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stadiums`
--

INSERT INTO `stadiums` (`id`, `name`, `capacity`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Stamford Bridge', 40000, 'Stamford Bridge, Fulham Road, London, SW6 1HS', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(2, 'Emirates Stadium', 60000, 'Highbury House, 75 Drayton Park, London, N5 1BU', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(3, 'Old Trafford', 74000, 'Sir Matt Busby Way, Old Trafford, Manchester, M16 0RA', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(4, 'Etihad Stadium', 55000, 'Etihad Stadium, Etihad Campus, Manchester, M11 3FF', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(5, 'Anfield', 53000, 'Anfield, Anfield Road, Liverpool, L4 0TH', '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(6, 'Tottenham Hotspur Stadium', 62000, 'Lilywhite House, 782 High Road, Tottenham, London, N17 0BX', '2021-03-20 17:00:00', '2021-03-20 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stadium_id_fk1_idx` (`stadiums_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clubs_id_fk3_idx` (`clubs_id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clubs_id_fk4_idx` (`clubs_id`),
  ADD KEY `rivals_id_fk5_idx` (`rivals_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clubs_id_fk2_idx` (`clubs_id`);

--
-- Indexes for table `stadiums`
--
ALTER TABLE `stadiums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stadiums`
--
ALTER TABLE `stadiums`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clubs`
--
ALTER TABLE `clubs`
  ADD CONSTRAINT `stadiums_id_fk1` FOREIGN KEY (`stadiums_id`) REFERENCES `stadiums` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `managers`
--
ALTER TABLE `managers`
  ADD CONSTRAINT `clubs_id_fk3` FOREIGN KEY (`clubs_id`) REFERENCES `clubs` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `clubs_id_fk4` FOREIGN KEY (`clubs_id`) REFERENCES `clubs` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `rivals_id_fk5` FOREIGN KEY (`rivals_id`) REFERENCES `clubs` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `clubs_id_fk2` FOREIGN KEY (`clubs_id`) REFERENCES `clubs` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
