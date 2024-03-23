-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Erstellungszeit: 23. Mrz 2024 um 18:06
-- Server-Version: 11.2.3-MariaDB-1:11.2.3+maria~ubu2204
-- PHP-Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `larchiv`
--
CREATE DATABASE IF NOT EXISTS `larchiv` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `larchiv`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `category0` varchar(2) DEFAULT NULL,
  `category1` varchar(2) DEFAULT NULL,
  `category2` varchar(2) DEFAULT NULL,
  `category3` varchar(2) DEFAULT NULL,
  `asset` varchar(64) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `type_asset` int(11) DEFAULT NULL,
  `room` varchar(2) DEFAULT NULL,
  `locker` varchar(4) DEFAULT NULL,
  `shelf` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `category0`
--

CREATE TABLE `category0` (
  `id` int(11) NOT NULL,
  `category0` varchar(2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `outdated` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `category0`
--

INSERT INTO `category0` (`id`, `category0`, `description`, `outdated`, `created`, `changed`) VALUES
(1, 'A', 'Schriften über die Nürnberg-Fürther Straßenbahn', NULL, '2024-02-23 17:17:20', '2024-02-23 17:17:20'),
(2, 'B', 'Zeitschriften', 0, '2024-02-23 17:54:13', '2024-02-24 20:49:58'),
(3, 'C', 'Zeitungsartikel', 0, '2024-02-25 20:28:33', '2024-02-25 20:28:33'),
(4, 'D', 'Bahnanlagen und Bauten', 0, '2024-02-25 20:29:36', '2024-02-25 20:29:36'),
(5, 'E', 'Straßenbahnfahrzeuge', 0, '2024-02-25 20:29:52', '2024-02-25 20:29:52'),
(6, 'F', 'Betriebliche Schriften', 0, '2024-02-25 20:30:05', '2024-02-25 20:30:05'),
(7, 'H', 'Fahrgastinformation', 0, '2024-02-25 20:30:20', '2024-02-25 20:30:32'),
(8, 'G', 'Fahrausweise', 0, '2024-02-25 20:30:48', '2024-02-25 20:30:48'),
(9, 'I', 'U-Bahn', 0, '2024-02-25 20:31:34', '2024-02-25 20:31:34'),
(10, 'K', 'Kraftfahrzeuge', 0, '2024-02-25 20:31:47', '2024-02-25 20:31:47'),
(11, 'L', 'Sonstiger Nahverkehr', 0, '2024-02-25 20:32:01', '2024-02-25 20:32:01'),
(12, 'M', 'Schienenverkehr allgemein', 0, '2024-02-25 20:32:16', '2024-02-25 20:32:16'),
(13, 'N', 'Verkehrspolitik', 0, '2024-02-25 20:32:29', '2024-02-25 20:32:29'),
(14, 'O', 'Vereine und Museen', 0, '2024-02-25 20:32:39', '2024-02-25 20:32:39'),
(15, 'P', 'Bücher', 0, '2024-02-25 20:32:52', '2024-02-25 20:32:52'),
(16, 'U', 'Videos', 0, '2024-02-25 20:33:01', '2024-02-25 20:33:01'),
(17, 'W', 'Fremdbetriebe', 0, '2024-02-25 20:33:15', '2024-02-25 20:33:15');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `category1`
--

CREATE TABLE `category1` (
  `id` int(11) NOT NULL,
  `category0` varchar(2) DEFAULT NULL,
  `category1` varchar(2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `outdated` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `category1`
--

INSERT INTO `category1` (`id`, `category0`, `category1`, `description`, `outdated`, `created`, `changed`) VALUES
(1, 'A', '01', 'VAG', 0, '2024-02-25 21:10:35', '2024-02-25 21:10:35'),
(2, 'A', '02', 'Dr. Dillmann', NULL, '2024-02-25 21:37:42', '2024-02-25 21:37:42'),
(3, 'A', '03', 'Walther Lambert', NULL, '2024-02-25 21:38:00', '2024-02-25 21:38:00'),
(4, 'A', '04', 'Robert Binder', NULL, '2024-02-25 21:38:13', '2024-02-25 21:38:13'),
(5, 'A', '05', 'Jürgen Heußner', NULL, '2024-02-25 21:38:28', '2024-02-25 21:38:28'),
(6, 'A', '06', 'Verkehrspolitik in Nürnberg', 1, '2024-02-25 21:39:35', '2024-02-25 21:39:35'),
(7, 'A', '99', 'Sonstige Aufsätze und Vorträge', 1, '2024-02-25 21:40:04', '2024-02-25 21:40:04'),
(8, 'B', '01', 'Fachzeitschriften', NULL, '2024-02-25 21:44:58', '2024-02-25 21:44:58'),
(9, 'B', '02', 'Nürnberger Zeitschriften', NULL, '2024-02-25 21:45:11', '2024-02-25 21:45:11'),
(10, 'B', '03', 'Verkehrsbetriebe', 1, '2024-02-25 21:45:23', '2024-02-25 21:45:23'),
(11, 'B', '04', 'Vereine', 1, '2024-02-25 21:46:13', '2024-02-25 21:46:13'),
(12, 'B', '05', 'Modellbau', NULL, '2024-02-25 21:46:26', '2024-02-25 21:46:26'),
(13, 'B', '06', 'Hersteller', NULL, '2024-02-25 21:46:37', '2024-02-25 21:46:37'),
(14, 'B', '07', 'Modellbau-Hersteller', NULL, '2024-02-25 21:46:54', '2024-02-25 21:47:17'),
(15, 'B', '99', 'Sonstige Zeitschriften', 1, '2024-02-25 21:48:08', '2024-02-25 21:48:08'),
(16, 'C', '01', 'VAG Pressespiegel', NULL, '2024-02-25 23:32:04', '2024-02-25 23:32:04'),
(17, 'C', '02', 'VAG Presseinfo', NULL, '2024-02-25 23:32:21', '2024-02-25 23:32:21'),
(18, 'C', '03', 'VGN Pressespiegel', NULL, '2024-02-25 23:32:37', '2024-02-25 23:32:37'),
(19, 'C', '04', 'VGN Presseinfo', NULL, '2024-02-25 23:32:53', '2024-02-25 23:32:53'),
(20, 'C', '05', 'infra Presseinfo', NULL, '2024-02-25 23:33:15', '2024-02-25 23:33:15'),
(21, 'C', '06', 'DB Presseinfo', NULL, '2024-02-25 23:34:02', '2024-02-25 23:34:02'),
(22, 'C', '99', 'Sonstiges', 1, '2024-02-25 23:34:18', '2024-02-25 23:34:18'),
(23, 'C', '01', 'Nahverkehr im Raum Nürnberg', 1, '2024-02-25 23:35:13', '2024-02-25 23:35:13'),
(24, 'C', '02', 'Nürnberg-Fürther Straßenbahn', 1, '2024-02-25 23:35:38', '2024-02-25 23:35:38'),
(25, 'C', '03', 'Verbundgebiet', 1, '2024-02-25 23:35:50', '2024-02-25 23:35:50'),
(26, 'D', '01', 'Gleispläne', NULL, '2024-02-25 23:37:29', '2024-02-25 23:37:29'),
(27, 'D', '02', 'Betriebshöfe und Werkstätten', NULL, '2024-02-25 23:37:57', '2024-02-25 23:37:57'),
(28, 'D', '03', 'Weitere Baulichkeiten', NULL, '2024-02-25 23:38:12', '2024-02-25 23:38:12'),
(29, 'D', '04', 'Stromversorgung', NULL, '2024-02-25 23:38:42', '2024-02-25 23:38:42'),
(30, 'D', '05', 'Gleisbau', NULL, '2024-02-25 23:38:55', '2024-02-25 23:38:55'),
(31, 'D', '06', 'Beschreibungen des Gleisnetzes', NULL, '2024-02-25 23:39:13', '2024-02-25 23:39:13'),
(32, 'E', '04', 'Triebwagen', NULL, '2024-02-25 23:41:04', '2024-02-25 23:41:04'),
(33, 'E', '05', 'Beiwagen', NULL, '2024-02-25 23:41:13', '2024-02-25 23:41:13'),
(34, 'E', '01', 'Technik elektrischer Bahnen', 1, '2024-02-25 23:55:26', '2024-02-25 23:55:26'),
(35, 'E', '02', 'Allgemeine Straßenbahntechnik', 1, '2024-02-25 23:56:01', '2024-02-25 23:56:01'),
(36, 'E', '03', 'Technik der Straßenbahnfahrzeuge der Nürnberg-Fürther Straßenbahn', 1, '2024-02-25 23:56:30', '2024-02-25 23:56:30'),
(37, 'E', '06', 'Arbeitswagen', NULL, '2024-02-25 23:56:48', '2024-02-25 23:56:48'),
(38, 'E', '07', 'Sonstige Wagenparkunterlagen', 1, '2024-02-25 23:57:09', '2024-02-25 23:57:09'),
(39, 'F', '01', 'Dienstanweisungen', NULL, '2024-02-25 23:59:46', '2024-02-25 23:59:46'),
(40, 'F', '02', 'Geschäftsberichte', NULL, '2024-02-25 23:59:59', '2024-02-25 23:59:59'),
(41, 'F', '03', 'Fahrplanänderungen', 1, '2024-02-26 00:00:24', '2024-02-26 00:00:24'),
(42, 'F', '04', 'Taschenfahrpläne', NULL, '2024-02-26 00:00:40', '2024-02-26 00:00:40'),
(43, 'F', '05', 'Zugfahrpläne', NULL, '2024-02-26 00:01:00', '2024-02-26 00:01:00'),
(44, 'F', '06', 'Wageneinsatzlisten und Linienlängen', NULL, '2024-02-26 00:01:22', '2024-02-26 00:01:22'),
(45, 'F', '07', 'Linienchroniken', NULL, '2024-02-26 00:01:37', '2024-02-26 00:01:37'),
(46, 'F', '08', 'Sonstige Dienstvorschriften', 1, '2024-02-26 00:02:01', '2024-02-26 00:02:01'),
(47, 'G', '01', 'Fahrausweise (regulär)', NULL, '2024-02-26 00:04:13', '2024-02-26 00:04:13'),
(48, 'G', '02', 'Gedenkfahrscheine und Urkunden', NULL, '2024-02-26 00:04:29', '2024-02-26 00:04:29'),
(49, 'G', '03', 'Straßenbahnnotgeld und Münzen', NULL, '2024-02-26 00:04:45', '2024-02-26 00:04:45'),
(50, 'G', '04', 'Sonderstempel', NULL, '2024-02-26 00:04:58', '2024-02-26 00:04:58'),
(51, 'G', '05', 'Fahrpreisordnungen', NULL, '2024-02-26 00:05:11', '2024-02-26 00:05:11'),
(52, 'H', '01', 'Broschüren und Netzpläne', NULL, '2024-02-26 22:31:38', '2024-02-26 22:31:38'),
(53, 'H', '02', 'Haltestellenaushang', NULL, '2024-02-26 22:31:54', '2024-02-26 22:31:54'),
(54, 'H', '03', 'Fahrzeugplakate', NULL, '2024-02-26 22:32:12', '2024-02-26 22:32:12'),
(55, 'H', '04', 'Presseinformation und Schriftwechsel VAG', 1, '2024-02-26 22:32:52', '2024-02-26 22:32:52'),
(56, 'I', '01', 'U-Bahn Bautechnik', NULL, '2024-02-26 22:36:16', '2024-02-26 22:36:16'),
(57, 'I', '02', 'Öffentlichkeitsarbeit', NULL, '2024-02-26 22:36:36', '2024-02-26 22:36:36'),
(58, 'I', '03', 'U-Bahn Betrieb', NULL, '2024-02-26 22:36:55', '2024-02-26 22:36:55'),
(59, 'I', '04', 'U-Bahnwagen', NULL, '2024-02-26 22:37:25', '2024-02-26 22:37:25'),
(60, 'I', '05', 'Wagenparklisten', 1, '2024-02-26 22:38:30', '2024-02-26 22:38:30'),
(61, 'I', '06', 'Arbeitswagen', NULL, '2024-02-26 22:39:41', '2024-02-26 22:39:41'),
(62, 'I', '07', 'Gleispläne', NULL, '2024-02-26 22:39:55', '2024-02-26 22:39:55'),
(63, 'K', '01', 'Omnibustechnik', NULL, '2024-02-26 22:42:08', '2024-02-26 22:42:08'),
(64, 'K', '02', 'O-Bus Nürnberg', NULL, '2024-02-26 22:42:47', '2024-02-26 22:42:47'),
(65, 'K', '03', 'Omnibusbetrieb VAG', 1, '2024-02-26 22:43:11', '2024-02-26 22:43:11'),
(66, 'K', '04', 'Technik der KOM-Fahrzeuge Nürnberg', 1, '2024-02-26 22:43:42', '2024-02-26 22:43:42'),
(67, 'K', '05', 'Wagenparklisten', 1, '2024-02-26 22:44:02', '2024-02-26 22:44:02'),
(68, 'K', '05', 'Omnibusfahrzeuge', NULL, '2024-02-26 22:44:40', '2024-02-26 22:44:40'),
(69, 'K', '06', 'Arbeitswagen', NULL, '2024-02-26 22:44:57', '2024-02-26 22:44:57'),
(70, 'L', '01', 'S-Bahn Informationsmaterial', NULL, '2024-02-26 22:47:15', '2024-02-26 22:47:15'),
(71, 'L', '02', 'S-Bahn Betrieb', 1, '2024-02-26 22:47:31', '2024-02-26 22:47:31'),
(72, 'L', '03', 'S-Bahn Zeitungsartikel', 1, '2024-02-26 22:47:47', '2024-02-26 22:47:47'),
(73, 'L', '04', 'Eisenbahn im ÖPNV', NULL, '2024-02-26 22:48:13', '2024-02-26 22:48:13'),
(74, 'L', '05', 'GBB und OVF', NULL, '2024-02-26 22:48:33', '2024-02-26 22:48:33'),
(75, 'L', '06', 'Liliputbahn im Tiergarten', NULL, '2024-02-26 22:48:52', '2024-02-26 22:48:52'),
(76, 'M', '01', 'Eisenbahn', NULL, '2024-02-26 22:56:37', '2024-02-26 22:56:37'),
(77, 'M', '02', 'Forschungsprojekte', NULL, '2024-02-26 22:56:47', '2024-02-26 22:56:47'),
(78, 'M', '03', 'Eisenbahn-Zeitschriften', 1, '2024-02-26 22:57:01', '2024-02-26 22:57:01'),
(79, 'N', '01', 'Gutachten', NULL, '2024-02-26 22:58:15', '2024-02-26 22:58:15'),
(80, 'N', '02', 'Statistiken', NULL, '2024-02-26 22:58:30', '2024-02-26 22:58:30'),
(81, 'N', '03', 'Protokolle', NULL, '2024-02-26 22:58:40', '2024-02-26 22:58:40'),
(82, 'N', '04', 'BG-Bahnen', NULL, '2024-02-26 22:59:06', '2024-02-26 22:59:06'),
(83, 'O', '01', 'Nürnberg', NULL, '2024-02-26 23:00:49', '2024-02-26 23:00:49'),
(84, 'O', '02', 'Bayern', NULL, '2024-02-26 23:01:06', '2024-02-26 23:01:06'),
(85, 'O', '03', 'Baden-Württemberg', NULL, '2024-02-26 23:01:27', '2024-02-26 23:01:27'),
(86, 'O', '04', 'Hessen', NULL, '2024-02-26 23:01:41', '2024-02-26 23:01:41'),
(87, 'O', '05', 'Nordrhein-Westfalen', NULL, '2024-02-26 23:05:23', '2024-02-26 23:05:23'),
(88, 'O', '06', 'Rheinland-Pfalz', NULL, '2024-02-26 23:05:35', '2024-02-26 23:05:35'),
(89, 'O', '07', 'Niedersachsen und Bremen', NULL, '2024-02-26 23:05:50', '2024-02-26 23:05:50'),
(90, 'O', '08', 'Schleswig-Holstein und Hamburg', NULL, '2024-02-26 23:06:28', '2024-02-26 23:06:28'),
(91, 'O', '09', 'Saarland', NULL, '2024-02-26 23:06:40', '2024-02-26 23:06:40'),
(92, 'O', '10', 'Berlin und Brandenburg', NULL, '2024-02-26 23:08:50', '2024-02-26 23:08:50'),
(93, 'O', '11', 'Sachsen und Sachsen-Anhalt', NULL, '2024-02-26 23:09:05', '2024-02-26 23:09:05'),
(94, 'O', '12', 'Mecklenburg-Vorpommern', NULL, '2024-02-26 23:09:19', '2024-02-26 23:09:19'),
(95, 'O', '13', 'Thüringen', NULL, '2024-02-26 23:10:32', '2024-02-26 23:10:32'),
(96, 'O', '14', 'Deutschland', NULL, '2024-02-26 23:10:48', '2024-02-26 23:10:48'),
(97, 'O', '15', 'Mittel- und Ostdeutschland', NULL, '2024-02-26 23:11:10', '2024-02-26 23:11:10'),
(98, 'O', '16', 'Österreich', NULL, '2024-02-26 23:11:49', '2024-02-26 23:11:49'),
(99, 'O', '17', 'Schweiz', NULL, '2024-02-26 23:12:24', '2024-02-26 23:12:24'),
(100, 'O', '18', 'Europa', NULL, '2024-02-26 23:12:52', '2024-02-26 23:12:52'),
(101, 'O', '19', 'Nord- und Südamerika', NULL, '2024-02-26 23:13:10', '2024-02-26 23:13:10'),
(102, 'O', '20', 'Asien, Afrika und Australien', NULL, '2024-02-26 23:14:03', '2024-02-26 23:14:03'),
(103, 'O', '21', 'Fahrzeuge und Technik', NULL, '2024-02-26 23:14:14', '2024-02-26 23:14:14'),
(104, 'O', '22', 'Geschichte und Entwicklung', NULL, '2024-02-26 23:14:30', '2024-02-26 23:14:30'),
(105, 'P', '01', 'Nürnberg', NULL, '2024-02-26 23:00:49', '2024-02-26 23:00:49'),
(106, 'P', '02', 'Bayern', NULL, '2024-02-26 23:01:06', '2024-02-26 23:01:06'),
(107, 'P', '03', 'Baden-Württemberg', NULL, '2024-02-26 23:01:27', '2024-02-26 23:01:27'),
(108, 'P', '04', 'Hessen', NULL, '2024-02-26 23:01:41', '2024-02-26 23:01:41'),
(109, 'P', '05', 'Nordrhein-Westfalen', NULL, '2024-02-26 23:05:23', '2024-02-26 23:05:23'),
(110, 'P', '06', 'Rheinland-Pfalz', NULL, '2024-02-26 23:05:35', '2024-02-26 23:05:35'),
(111, 'P', '07', 'Niedersachsen und Bremen', NULL, '2024-02-26 23:05:50', '2024-02-26 23:05:50'),
(112, 'P', '08', 'Schleswig-Holstein und Hamburg', NULL, '2024-02-26 23:06:28', '2024-02-26 23:06:28'),
(113, 'P', '09', 'Saarland', NULL, '2024-02-26 23:06:40', '2024-02-26 23:06:40'),
(114, 'P', '10', 'Berlin und Brandenburg', NULL, '2024-02-26 23:08:50', '2024-02-26 23:08:50'),
(115, 'P', '11', 'Sachsen und Sachsen-Anhalt', NULL, '2024-02-26 23:09:05', '2024-02-26 23:09:05'),
(116, 'P', '12', 'Mecklenburg-Vorpommern', NULL, '2024-02-26 23:09:19', '2024-02-26 23:09:19'),
(117, 'P', '13', 'Thüringen', NULL, '2024-02-26 23:10:32', '2024-02-26 23:10:32'),
(118, 'P', '14', 'Deutschland', NULL, '2024-02-26 23:10:48', '2024-02-26 23:10:48'),
(119, 'P', '15', 'Mittel- und Ostdeutschland', NULL, '2024-02-26 23:11:10', '2024-02-26 23:11:10'),
(120, 'P', '16', 'Österreich', NULL, '2024-02-26 23:11:49', '2024-02-26 23:11:49'),
(121, 'P', '17', 'Schweiz', NULL, '2024-02-26 23:12:24', '2024-02-26 23:12:24'),
(122, 'P', '18', 'Europa', NULL, '2024-02-26 23:12:52', '2024-02-26 23:12:52'),
(123, 'P', '19', 'Nord- und Südamerika', NULL, '2024-02-26 23:13:10', '2024-02-26 23:13:10'),
(124, 'P', '20', 'Asien, Afrika und Australien', NULL, '2024-02-26 23:14:03', '2024-02-26 23:14:03'),
(125, 'P', '21', 'Fahrzeuge und Technik', NULL, '2024-02-26 23:14:14', '2024-02-26 23:14:14'),
(126, 'P', '22', 'Geschichte und Entwicklung', NULL, '2024-02-26 23:14:30', '2024-02-26 23:14:30'),
(127, 'U', '00', 'Internes', NULL, '2024-02-27 00:12:59', '2024-02-27 00:12:59'),
(128, 'U', '01', 'Nürnberg', NULL, '2024-02-26 23:00:49', '2024-02-26 23:00:49'),
(129, 'U', '02', 'Bayern', NULL, '2024-02-26 23:01:06', '2024-02-26 23:01:06'),
(130, 'U', '03', 'Baden-Württemberg', NULL, '2024-02-26 23:01:27', '2024-02-26 23:01:27'),
(131, 'U', '04', 'Hessen', NULL, '2024-02-26 23:01:41', '2024-02-26 23:01:41'),
(132, 'U', '05', 'Nordrhein-Westfalen', NULL, '2024-02-26 23:05:23', '2024-02-26 23:05:23'),
(133, 'U', '06', 'Rheinland-Pfalz', NULL, '2024-02-26 23:05:35', '2024-02-26 23:05:35'),
(134, 'U', '07', 'Niedersachsen und Bremen', NULL, '2024-02-26 23:05:50', '2024-02-26 23:05:50'),
(135, 'U', '08', 'Schleswig-Holstein und Hamburg', NULL, '2024-02-26 23:06:28', '2024-02-26 23:06:28'),
(136, 'U', '09', 'Saarland', NULL, '2024-02-26 23:06:40', '2024-02-26 23:06:40'),
(137, 'U', '10', 'Berlin und Brandenburg', NULL, '2024-02-26 23:08:50', '2024-02-26 23:08:50'),
(138, 'U', '11', 'Sachsen und Sachsen-Anhalt', NULL, '2024-02-26 23:09:05', '2024-02-26 23:09:05'),
(139, 'U', '12', 'Mecklenburg-Vorpommern', NULL, '2024-02-26 23:09:19', '2024-02-26 23:09:19'),
(140, 'U', '13', 'Thüringen', NULL, '2024-02-26 23:10:32', '2024-02-26 23:10:32'),
(141, 'U', '14', 'Deutschland', NULL, '2024-02-26 23:10:48', '2024-02-26 23:10:48'),
(142, 'U', '15', 'Mittel- und Ostdeutschland', NULL, '2024-02-26 23:11:10', '2024-02-26 23:11:10'),
(143, 'U', '16', 'Österreich', NULL, '2024-02-26 23:11:49', '2024-02-26 23:11:49'),
(144, 'U', '17', 'Schweiz', NULL, '2024-02-26 23:12:24', '2024-02-26 23:12:24'),
(145, 'U', '18', 'Europa', NULL, '2024-02-26 23:12:52', '2024-02-26 23:12:52'),
(146, 'U', '19', 'Nord- und Südamerika', NULL, '2024-02-26 23:13:10', '2024-02-26 23:13:10'),
(147, 'U', '20', 'Asien, Afrika und Australien', NULL, '2024-02-26 23:14:03', '2024-02-26 23:14:03'),
(148, 'U', '21', 'Fahrzeuge und Technik', NULL, '2024-02-26 23:14:14', '2024-02-26 23:14:14'),
(149, 'U', '22', 'Geschichte und Entwicklung', NULL, '2024-02-26 23:14:30', '2024-02-26 23:14:30'),
(150, 'U', '91', 'Modellbahn', NULL, '2024-02-27 00:17:00', '2024-02-27 00:17:00'),
(151, 'U', 'D', 'DVD', 1, '2024-02-27 00:17:15', '2024-02-27 00:17:15'),
(152, 'U', 'V', 'Videocassetten', 1, '2024-02-27 00:17:29', '2024-02-27 00:17:29'),
(153, 'W', '01', 'Nürnberg', NULL, '2024-02-26 23:00:49', '2024-02-26 23:00:49'),
(154, 'W', '02', 'Bayern', NULL, '2024-02-26 23:01:06', '2024-02-26 23:01:06'),
(155, 'W', '03', 'Baden-Württemberg', NULL, '2024-02-26 23:01:27', '2024-02-26 23:01:27'),
(156, 'W', '04', 'Hessen', NULL, '2024-02-26 23:01:41', '2024-02-26 23:01:41'),
(157, 'W', '05', 'Nordrhein-Westfalen', NULL, '2024-02-26 23:05:23', '2024-02-26 23:05:23'),
(158, 'W', '06', 'Rheinland-Pfalz', NULL, '2024-02-26 23:05:35', '2024-02-26 23:05:35'),
(159, 'W', '07', 'Niedersachsen und Bremen', NULL, '2024-02-26 23:05:50', '2024-02-26 23:05:50'),
(160, 'W', '08', 'Schleswig-Holstein und Hamburg', NULL, '2024-02-26 23:06:28', '2024-02-26 23:06:28'),
(161, 'W', '09', 'Saarland', NULL, '2024-02-26 23:06:40', '2024-02-26 23:06:40'),
(162, 'W', '10', 'Berlin und Brandenburg', NULL, '2024-02-26 23:08:50', '2024-02-26 23:08:50'),
(163, 'W', '11', 'Sachsen und Sachsen-Anhalt', NULL, '2024-02-26 23:09:05', '2024-02-26 23:09:05'),
(164, 'W', '12', 'Mecklenburg-Vorpommern', NULL, '2024-02-26 23:09:19', '2024-02-26 23:09:19'),
(165, 'W', '13', 'Thüringen', NULL, '2024-02-26 23:10:32', '2024-02-26 23:10:32'),
(166, 'W', '14', 'Deutschland', NULL, '2024-02-26 23:10:48', '2024-02-26 23:10:48'),
(167, 'W', '15', 'Mittel- und Ostdeutschland', NULL, '2024-02-26 23:11:10', '2024-02-26 23:11:10'),
(168, 'W', '16', 'Österreich', NULL, '2024-02-26 23:11:49', '2024-02-26 23:11:49'),
(169, 'W', '17', 'Schweiz', NULL, '2024-02-26 23:12:24', '2024-02-26 23:12:24'),
(170, 'W', '18', 'Europa', NULL, '2024-02-26 23:12:52', '2024-02-26 23:12:52'),
(171, 'W', '19', 'Nord- und Südamerika', NULL, '2024-02-26 23:13:10', '2024-02-26 23:13:10'),
(172, 'W', '20', 'Asien, Afrika und Australien', NULL, '2024-02-26 23:14:03', '2024-02-26 23:14:03'),
(173, 'W', '21', 'Fahrzeuge und Technik', NULL, '2024-02-26 23:14:14', '2024-02-26 23:14:14'),
(174, 'W', '22', 'Geschichte und Entwicklung', NULL, '2024-02-26 23:14:30', '2024-02-26 23:14:30');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `category2`
--

CREATE TABLE `category2` (
  `id` int(11) NOT NULL,
  `category0` varchar(2) DEFAULT NULL,
  `category1` varchar(2) DEFAULT NULL,
  `category2` varchar(2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `outdated` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `category2`
--

INSERT INTO `category2` (`id`, `category0`, `category1`, `category2`, `description`, `outdated`, `created`, `changed`) VALUES
(1, 'B', '01', '01', 'Der Stadtverkehr', NULL, '2024-02-27 11:58:35', '2024-02-27 11:58:35'),
(2, 'B', '01', '02', 'Bus und Bahn', NULL, '2024-02-27 11:58:46', '2024-02-27 11:58:46'),
(3, 'B', '01', '03', 'Blickpunkt Straßenbahn', NULL, '2024-02-27 11:58:58', '2024-02-27 11:58:58'),
(4, 'B', '01', '04', 'Straßenbahn-Magazin', NULL, '2024-02-27 11:59:08', '2024-02-27 11:59:08'),
(5, 'B', '01', '06', 'Die Straßenbahn', NULL, '2024-02-27 11:59:26', '2024-02-27 11:59:26'),
(6, 'B', '01', '07', 'Der Deutsche Verkehrs-Amateur', NULL, '2024-02-27 12:05:42', '2024-02-27 12:05:50'),
(7, 'B', '01', '08', 'Straßenbahn International', NULL, '2024-02-27 12:06:35', '2024-02-27 12:06:35'),
(8, 'B', '01', '09', 'Verkehr + Technik', NULL, '2024-02-27 12:06:49', '2024-02-27 12:06:49'),
(9, 'B', '01', '12', 'Verkehrsnachrichten', NULL, '2024-02-27 12:07:13', '2024-02-27 12:07:13'),
(10, 'B', '01', '13', 'Nahverkehr', NULL, '2024-02-27 12:07:22', '2024-02-27 12:07:22'),
(11, 'B', '01', '15', 'Lok-Magazin', NULL, '2024-02-27 12:08:00', '2024-02-27 12:08:31'),
(12, 'B', '01', '14', 'E', NULL, '2024-02-27 12:08:38', '2024-02-27 12:08:38'),
(13, 'B', '01', '16', 'tram', NULL, '2024-02-27 12:09:19', '2024-02-27 12:09:19'),
(14, 'B', '01', '17', 'ÖPNV Aktuell', NULL, '2024-02-27 12:11:18', '2024-02-27 12:11:18'),
(15, 'B', '01', '18', 'Internationales Verkehrswesen', NULL, '2024-02-27 12:11:37', '2024-02-27 12:11:37'),
(16, 'B', '01', '19', 'NaNa Nachrichten', NULL, '2024-02-27 12:12:05', '2024-02-27 12:12:05'),
(17, 'B', '01', '20', 'Tramways and urban transit', NULL, '2024-02-27 12:12:24', '2024-02-27 12:12:24'),
(18, 'B', '01', '21', 'Eisenbahntechnische Rundschau', NULL, '2024-02-27 12:12:38', '2024-02-27 12:12:38'),
(19, 'B', '01', '22', 'VDV-Magazin', NULL, '2024-02-27 12:19:21', '2024-02-27 12:19:21');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `category3`
--

CREATE TABLE `category3` (
  `id` int(11) NOT NULL,
  `category0` varchar(2) DEFAULT NULL,
  `category1` varchar(2) DEFAULT NULL,
  `category2` varchar(2) DEFAULT NULL,
  `category3` varchar(2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `outdated` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `category3`
--

INSERT INTO `category3` (`id`, `category0`, `category1`, `category2`, `category3`, `description`, `outdated`, `created`, `changed`) VALUES
(1, 'B', '01', '01', '01', 'Testkategorie', 1, '2024-02-28 22:39:54', '2024-02-28 22:39:54');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dataface__modules`
--

CREATE TABLE `dataface__modules` (
  `module_name` varchar(255) NOT NULL,
  `module_version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dataface__mtimes`
--

CREATE TABLE `dataface__mtimes` (
  `name` varchar(255) NOT NULL,
  `mtime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Daten für Tabelle `dataface__mtimes`
--

INSERT INTO `dataface__mtimes` (`name`, `mtime`) VALUES
('asset', 1709317986),
('category0', 1709124073),
('category1', 1709149225),
('category2', 1709127302),
('category3', 1709156394),
('dataface__modules', 1708704103),
('dataface__mtimes', 1708704142),
('dataface__preferences', 1708706286),
('dataface__record_mtimes', 1708707254),
('dataface__version', 1708704103),
('ebene1', 1708989449),
('ebene2', 1709032761),
('locker', 1709323686),
('oberbegriff', 1708889595),
('room', 1709473940),
('shelf', 1709324465),
('type__asset', 1709211031),
('type__locker', 1709213340);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dataface__preferences`
--

CREATE TABLE `dataface__preferences` (
  `pref_id` int(11) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `table` varchar(128) NOT NULL,
  `record_id` varchar(255) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dataface__record_mtimes`
--

CREATE TABLE `dataface__record_mtimes` (
  `recordhash` varchar(32) NOT NULL,
  `recordid` varchar(255) NOT NULL,
  `mtime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Daten für Tabelle `dataface__record_mtimes`
--

INSERT INTO `dataface__record_mtimes` (`recordhash`, `recordid`, `mtime`) VALUES
('059422681f1e6605a49a3e29a19c0d49', 'shelf?id=30', 1709324361),
('0599c41ac4b1275ddd1e09c1eb24bca3', 'type__asset?id=3', 1709211023),
('09b6e3a3fa1e1405ca66f72f460bf566', 'oberbegriff?id=8', 1708889448),
('0b0b97cd50a9e08c892ab7f980b9608d', 'oberbegriff?id=9', 1708889494),
('0eb13cbdf87a0367a277bb707c1b3503', 'asset?id=5', 1709306740),
('10eb8557f816f5ed27ed63cec9cac96f', 'oberbegriff?id=10', 1708889507),
('110a9ba29994521f34c93cb703ab9d18', 'asset?id=2', 1709156426),
('18268ae4b01f0b0b1b0797c8f11d1dc3', 'category3?id=1', 1709156394),
('1ce226863fdaee73c90b0220da5e4037', 'oberbegriff?id=11', 1708889522),
('202d906de7652d63388e905a5b0050f4', 'oberbegriff?id=7', 1708889432),
('2fd3fc2b51d1467d6c1492f547dfcf6d', 'shelf?id=38', 1709324426),
('34c00bf20553a55e118042ab9b39ab08', 'room?id=3', 1709470227),
('391dac3685cf2cffdc74a6aaa96795b0', 'oberbegriff?id=5', 1708889393),
('399e7d9789098a19d57779d637b3867b', 'shelf?id=36', 1709324426),
('3f61f09614646bacb4c6c1bf14552a8a', 'oberbegriff?id=16', 1708889581),
('40d6d91246f64afecfef4a74fe248419', 'type__asset?id=2', 1709210960),
('44790bf498adaeb09f69aa91b500182b', 'locker?id=3', 1709303270),
('44977bce48e144c7322d75f6038fbfbf', 'oberbegriff?id=3', 1708889313),
('4637d279cb1aa579df0b822c8a5220cd', 'ebene1?id=1', 1708891835),
('46b7a9825d5da2cc984d7cf3b864ec35', 'type__locker?id=6', 1709213140),
('49e45f06e1bc23f874217331a1961cb5', 'oberbegriff?id=15', 1708889572),
('4d313881a82fc058728b81a6b1f9f2b8', 'shelf?id=39', 1709324426),
('514018b4383e3f6080074d26639d0627', 'oberbegriff?id=13', 1708889549),
('5a68c3ee71ff7adc9c299a995c099a97', 'room?id=5', 1709473940),
('5d7003a8da7bb93b9b8c45f6bb69393c', 'shelf?id=18', 1709324240),
('64b2ae5f543cca4410caf1921399a21f', 'shelf?id=35', 1709324405),
('66006c204c9107480356e93fcc88f43b', 'type__locker?id=5', 1709213103),
('693a8dded9a5c265b6fc25789f99cfc7', 'shelf?id=1', 1709305707),
('6a2d9ca4fa05ccafbc3f0549be67a05d', 'room?id=2', 1709469956),
('6c31114665388955595a404835c4253e', 'shelf?id=19', 1709324240),
('6d38aba5d247d7d0eea8ab13917d146c', 'type__locker?id=4', 1709213070),
('6ef6ad7e7fd3322040c771657fb7bfdb', 'oberbegriff?id=6', 1708889405),
('7099706f8e413f358b12f05176d5784c', 'locker?id=11', 1709318638),
('7114956b3ae20233a7f5c921d8f4bc0e', 'type__locker?id=3', 1709213058),
('797a4fda9dbfb75ec21d48fd7177ada5', 'shelf?id=33', 1709324405),
('7a63ef8634c05dedeb58ace5f4d9a03c', 'locker?id=1', 1709305666),
('7cf80a89bfe7871e01e04b3ddd91ba60', 'asset?id=4', 1709303850),
('7def2ca6cd9de3216f4deb65428dce38', 'ebene2?id=11', 1709032111),
('7e872504d039fe162776189ac8012a46', 'shelf?id=32', 1709324405),
('80a02209dc71732b33b295d16959d0de', 'shelf?id=40', 1709324426),
('831ac2e8c4f7118bb335bc62d4d3e208', 'type__locker?id=2', 1709213011),
('857618898fd71384b8af435a988feaf6', 'oberbegriff?id=14', 1708889559),
('8cff2783817da73894995d338c3b4fc0', 'type__locker?id=7', 1709213323),
('9fd3aa39705afa7190de5e0fd2e86c50', 'category1?id=176', 1709149206),
('a4af833804f920a33ef4e1396a5b300a', 'type__asset?id=4', 1709211031),
('a83f7d9f3a0b7bf25b795fd034101b42', 'asset?id=1', 1709299657),
('ac0cc4b9689918a2037e6745f95db2dc', 'ebene1?id=14', 1708894038),
('ad93bfbe8987d06c05df34e5d10f8c5b', 'oberbegriff?id=17', 1708889595),
('b01295a786a5b0c6a58f6fbf9d79dbca', 'shelf?id=37', 1709324426),
('badfb5c6cf3b7e9108bec2cdc89f1ac9', 'shelf?id=20', 1709324240),
('bfeaacaf248cd011b20a99d9aeb1f0bb', 'locker?id=2', 1709221212),
('c5de5d484a3a231896c3495dbd9f5172', 'oberbegriff?id=12', 1708889536),
('ccf0adbef8d4f61710ba6059add76fe3', 'oberbegriff?id=2', 1708804198),
('d77352e08e0b2430d57233d048a2a373', 'shelf?id=6', 1709324046),
('d88c8cd33c8a9b63459ba8d31b0c2afe', 'type__locker?id=1', 1709213000),
('dbc00bfde3b65121919644e004b4901a', 'shelf?id=31', 1709324405),
('e0db67d3db63605ac42e8b1f05e4c573', 'ebene2?id=6', 1709031950),
('e1808aa624c754dadfe1b4f87e9295f4', 'shelf?id=34', 1709324405),
('e550d992189ef752cc3f1096421149a0', 'shelf?id=16', 1709324240),
('e64b5f726ae1aa0b35d5760cf0fc856f', 'asset?id=3', 1709156472),
('e67e9ed241547a53103c7b8c68def50c', 'shelf?id=27', 1709324361),
('e7ea07523e675a309f35511f7f1685b1', 'shelf?id=28', 1709324361),
('ede0894e0575d0c0f98be579e9b769c6', 'room?id=1', 1709219992),
('ee89331cc0a37c2545f9ba01cb481e16', 'room?id=4', 1709472672),
('efa90f9465d12d2243c269c78625846d', 'type__asset?id=1', 1709210953),
('f5c29ba6aceeedef6291de28e8f3ea95', 'oberbegriff?id=4', 1708889376),
('fb0ea4ea2ac509ff4b3dff840eac9069', 'shelf?id=17', 1709324240),
('fbeddf449800a63294e53be4ef2c1b1a', 'type__locker?id=8', 1709213340),
('fdd8cd4c2c319cde5f04e611a2335c74', 'shelf?id=26', 1709324361),
('fe1de952d72aeccb00051d9c5d427acc', 'shelf?id=29', 1709324361);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dataface__version`
--

CREATE TABLE `dataface__version` (
  `version` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `dataface__version`
--

INSERT INTO `dataface__version` (`version`) VALUES
(0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `locker`
--

CREATE TABLE `locker` (
  `id` int(11) NOT NULL,
  `room` varchar(2) DEFAULT NULL,
  `locker` varchar(4) DEFAULT NULL,
  `type_locker` int(11) DEFAULT NULL,
  `count_shelves` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `outdated` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `locker`
--

INSERT INTO `locker` (`id`, `room`, `locker`, `type_locker`, `count_shelves`, `description`, `outdated`, `created`, `changed`) VALUES
(1, '1', '1.1', 3, 5, 'Vereinsbibliothek / Nürnberg, Bayern, BaWü', 0, '2024-02-29 16:39:09', '2024-03-01 16:07:45'),
(2, '1', '1.2', 4, 2, 'Vereinsbibliothek / div. gebundene Zeitschriften', 0, '2024-02-29 16:40:12', '2024-02-29 16:40:12'),
(4, '1', '2.1', 3, 5, 'Vereinsbibliothek', NULL, '2024-03-01 19:35:22', '2024-03-01 19:35:22'),
(5, '1', '2.2', 4, 2, NULL, NULL, '2024-03-01 19:35:45', '2024-03-01 19:35:45'),
(6, '1', '3.1', 1, 5, 'Vereinsbibliothek', NULL, '2024-03-01 19:38:43', '2024-03-01 19:38:43'),
(7, '1', '3.2', 2, 2, NULL, NULL, '2024-03-01 19:39:15', '2024-03-01 19:39:15'),
(8, '1', '4.1', 1, 5, 'Vereinsbibliothek', NULL, '2024-03-01 19:38:43', '2024-03-01 19:38:43'),
(9, '1', '4.2', 2, 2, NULL, NULL, '2024-03-01 19:39:15', '2024-03-01 19:39:15'),
(10, '1', '5.1', 1, 5, 'Vereinsbibliothek / Eisenbahnbücher', NULL, '2024-03-01 19:38:43', '2024-03-01 19:38:43'),
(11, '1', '5.2', 2, 2, NULL, NULL, '2024-03-01 19:39:15', '2024-03-01 19:43:58'),
(12, '1', '6.1', 1, 5, 'Gebundene Exemplare \"Straßenbahn-Magazin\", Sammelplatz für Buchbinderin', NULL, '2024-03-01 19:38:43', '2024-03-01 19:38:43'),
(13, '1', '6.2', 2, 2, NULL, NULL, '2024-03-01 19:39:15', '2024-03-01 19:43:58'),
(14, '1', '7.1', 1, 5, 'Vereinsbibliothek', NULL, '2024-03-01 19:38:43', '2024-03-01 19:38:43'),
(15, '1', '7.2', 2, 2, NULL, NULL, '2024-03-01 19:39:15', '2024-03-01 19:43:58'),
(16, '1', '8.1', 1, 5, 'Vereinsbibliothek', NULL, '2024-03-01 19:38:43', '2024-03-01 19:38:43'),
(17, '1', '8.2', 2, 2, NULL, NULL, '2024-03-01 19:39:15', '2024-03-01 19:43:58');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `room` varchar(2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `plan` varchar(256) DEFAULT NULL,
  `plan_mimetype` varchar(64) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `room`
--

INSERT INTO `room` (`id`, `room`, `description`, `plan`, `plan_mimetype`, `created`, `changed`) VALUES
(1, '1', 'Eingangsraum (Vereinsbibliothek)', 'Lageplan_Raum_1.png', 'image/png', '2024-02-29 14:38:28', '2024-02-29 16:19:51'),
(2, '2', 'Arbeitsplätze, Scanner', 'Lageplan_Raum_2.png', 'image/png', '2024-02-29 14:39:02', '2024-03-03 13:45:56'),
(3, '3', 'Arbeitsplätze, Bildarchiv', 'Lageplan_Raum_3.png', 'image/png', '2024-02-29 14:39:17', '2024-03-03 13:50:27'),
(4, '4', 'Durchgang zum \"Kloarchiv\"', 'Lageplan_Raum_4.png', 'image/png', '2024-02-29 14:39:31', '2024-03-03 14:31:12'),
(5, '5', '\"Kloarchiv\"', 'Lageplan_Raum_5.png', 'image/png', '2024-02-29 14:39:45', '2024-03-03 14:52:20');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `shelf`
--

CREATE TABLE `shelf` (
  `id` int(11) NOT NULL,
  `room` varchar(2) DEFAULT NULL,
  `locker` varchar(4) DEFAULT NULL,
  `shelf` varchar(2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `shelf`
--

INSERT INTO `shelf` (`id`, `room`, `locker`, `shelf`, `description`, `created`, `changed`) VALUES
(1, '1', '1.1', '1', 'Nürnberg', '2024-02-29 17:23:37', '2024-03-01 16:08:27'),
(2, '1', '1.1', '2', NULL, '2024-03-01 21:09:13', '2024-03-01 21:09:13'),
(3, '1', '1.1', '3', NULL, '2024-03-01 21:09:19', '2024-03-01 21:09:19'),
(4, '1', '1.1', '4', NULL, '2024-03-01 21:09:28', '2024-03-01 21:09:28'),
(5, '1', '1.1', '5', NULL, '2024-03-01 21:09:34', '2024-03-01 21:09:34'),
(6, '1', '2.1', '1', '', '2024-02-29 17:23:37', '2024-03-01 21:14:06'),
(7, '1', '2.1', '2', NULL, '2024-03-01 21:09:13', '2024-03-01 21:09:13'),
(8, '1', '2.1', '3', NULL, '2024-03-01 21:09:19', '2024-03-01 21:09:19'),
(9, '1', '2.1', '4', NULL, '2024-03-01 21:09:28', '2024-03-01 21:09:28'),
(10, '1', '2.1', '5', NULL, '2024-03-01 21:09:34', '2024-03-01 21:09:34'),
(11, '1', '3.1', '1', 'Nürnberg', '2024-02-29 17:23:37', '2024-03-01 16:08:27'),
(12, '1', '3.1', '2', NULL, '2024-03-01 21:09:13', '2024-03-01 21:09:13'),
(13, '1', '3.1', '3', NULL, '2024-03-01 21:09:19', '2024-03-01 21:09:19'),
(14, '1', '3.1', '4', NULL, '2024-03-01 21:09:28', '2024-03-01 21:09:28'),
(15, '1', '3.1', '5', NULL, '2024-03-01 21:09:34', '2024-03-01 21:09:34'),
(16, '1', '4.1', '1', '', '2024-02-29 17:23:37', '2024-03-01 21:17:20'),
(17, '1', '4.1', '2', NULL, '2024-03-01 21:09:13', '2024-03-01 21:17:20'),
(18, '1', '4.1', '3', NULL, '2024-03-01 21:09:19', '2024-03-01 21:17:20'),
(19, '1', '4.1', '4', NULL, '2024-03-01 21:09:28', '2024-03-01 21:17:20'),
(20, '1', '4.1', '5', NULL, '2024-03-01 21:09:34', '2024-03-01 21:17:20'),
(21, '1', '5.1', '1', 'Nürnberg', '2024-02-29 17:23:37', '2024-03-01 16:08:27'),
(22, '1', '5.1', '2', NULL, '2024-03-01 21:09:13', '2024-03-01 21:09:13'),
(23, '1', '5.1', '3', NULL, '2024-03-01 21:09:19', '2024-03-01 21:09:19'),
(24, '1', '5.1', '4', NULL, '2024-03-01 21:09:28', '2024-03-01 21:09:28'),
(25, '1', '5.1', '5', NULL, '2024-03-01 21:09:34', '2024-03-01 21:09:34'),
(26, '1', '6.1', '1', '', '2024-02-29 17:23:37', '2024-03-01 21:19:20'),
(27, '1', '6.1', '2', NULL, '2024-03-01 21:09:13', '2024-03-01 21:19:21'),
(28, '1', '6.1', '3', NULL, '2024-03-01 21:09:19', '2024-03-01 21:19:21'),
(29, '1', '6.1', '4', NULL, '2024-03-01 21:09:28', '2024-03-01 21:19:21'),
(30, '1', '6.1', '5', NULL, '2024-03-01 21:09:34', '2024-03-01 21:19:21'),
(31, '1', '7.1', '1', 'Nürnberg', '2024-02-29 17:23:37', '2024-03-01 21:20:05'),
(32, '1', '7.1', '2', NULL, '2024-03-01 21:09:13', '2024-03-01 21:20:05'),
(33, '1', '7.1', '3', NULL, '2024-03-01 21:09:19', '2024-03-01 21:20:05'),
(34, '1', '7.1', '4', NULL, '2024-03-01 21:09:28', '2024-03-01 21:20:05'),
(35, '1', '7.1', '5', NULL, '2024-03-01 21:09:34', '2024-03-01 21:20:05'),
(36, '1', '8.1', '1', '', '2024-02-29 17:23:37', '2024-03-01 21:20:26'),
(37, '1', '8.1', '2', NULL, '2024-03-01 21:09:13', '2024-03-01 21:20:26'),
(38, '1', '8.1', '3', NULL, '2024-03-01 21:09:19', '2024-03-01 21:20:26'),
(39, '1', '8.1', '4', NULL, '2024-03-01 21:09:28', '2024-03-01 21:20:26'),
(40, '1', '8.1', '5', NULL, '2024-03-01 21:09:34', '2024-03-01 21:20:26'),
(41, '1', '1.2', '1', NULL, '2024-03-01 21:21:00', '2024-03-01 21:21:00'),
(42, '1', '1.2', '2', NULL, '2024-03-01 21:21:05', '2024-03-01 21:21:05'),
(43, '1', '2.2', '1', NULL, '2024-03-01 21:21:00', '2024-03-01 21:21:00'),
(44, '1', '2.2', '2', NULL, '2024-03-01 21:21:05', '2024-03-01 21:21:05'),
(45, '1', '3.2', '1', NULL, '2024-03-01 21:21:00', '2024-03-01 21:21:00'),
(46, '1', '3.2', '2', NULL, '2024-03-01 21:21:05', '2024-03-01 21:21:05'),
(47, '1', '4.2', '1', NULL, '2024-03-01 21:21:00', '2024-03-01 21:21:00'),
(48, '1', '4.2', '2', NULL, '2024-03-01 21:21:05', '2024-03-01 21:21:05'),
(49, '1', '5.2', '1', NULL, '2024-03-01 21:21:00', '2024-03-01 21:21:00'),
(50, '1', '5.2', '2', NULL, '2024-03-01 21:21:05', '2024-03-01 21:21:05'),
(51, '1', '6.2', '1', NULL, '2024-03-01 21:21:00', '2024-03-01 21:21:00'),
(52, '1', '6.2', '2', NULL, '2024-03-01 21:21:05', '2024-03-01 21:21:05'),
(53, '1', '7.2', '1', NULL, '2024-03-01 21:21:00', '2024-03-01 21:21:00'),
(54, '1', '7.2', '2', NULL, '2024-03-01 21:21:05', '2024-03-01 21:21:05'),
(55, '1', '8.2', '1', NULL, '2024-03-01 21:21:00', '2024-03-01 21:21:00'),
(56, '1', '8.2', '2', NULL, '2024-03-01 21:21:05', '2024-03-01 21:21:05');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `type__asset`
--

CREATE TABLE `type__asset` (
  `id` int(11) NOT NULL,
  `description` varchar(64) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `type__asset`
--

INSERT INTO `type__asset` (`id`, `description`, `created`, `changed`) VALUES
(1, 'Buch', '2024-02-29 13:49:13', '2024-02-29 13:49:13'),
(2, 'Stehsammler', '2024-02-29 13:49:19', '2024-02-29 13:49:19'),
(3, 'Ordner, breit', '2024-02-29 13:50:23', '2024-02-29 13:50:23'),
(4, 'Ordner, schmal', '2024-02-29 13:50:31', '2024-02-29 13:50:31');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `type__locker`
--

CREATE TABLE `type__locker` (
  `id` int(11) NOT NULL,
  `description` varchar(64) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `type__locker`
--

INSERT INTO `type__locker` (`id`, `description`, `created`, `changed`) VALUES
(1, 'Standardschrank 90x50', '2024-02-29 14:23:08', '2024-02-29 14:23:20'),
(2, 'Oberschrank 90x50', '2024-02-29 14:23:30', '2024-02-29 14:23:30'),
(3, 'Standardschrank 120x50', '2024-02-29 14:24:18', '2024-02-29 14:24:18'),
(4, 'Oberschrank 120x50', '2024-02-29 14:24:30', '2024-02-29 14:24:30'),
(5, 'Unterschrank 90x50', '2024-02-29 14:25:03', '2024-02-29 14:25:03'),
(6, 'Unterschrank 90x50 mit Schiebetüren', '2024-02-29 14:25:40', '2024-02-29 14:25:40'),
(7, 'Holzoberschrank 80x50', '2024-02-29 14:28:43', '2024-02-29 14:28:43'),
(8, 'Holz-Aufsetzregal 80x50', '2024-02-29 14:29:00', '2024-02-29 14:29:00');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `category0`
--
ALTER TABLE `category0`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `category1`
--
ALTER TABLE `category1`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `category2`
--
ALTER TABLE `category2`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `category3`
--
ALTER TABLE `category3`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `dataface__modules`
--
ALTER TABLE `dataface__modules`
  ADD PRIMARY KEY (`module_name`);

--
-- Indizes für die Tabelle `dataface__mtimes`
--
ALTER TABLE `dataface__mtimes`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `dataface__preferences`
--
ALTER TABLE `dataface__preferences`
  ADD PRIMARY KEY (`pref_id`),
  ADD KEY `username` (`username`),
  ADD KEY `table` (`table`),
  ADD KEY `record_id` (`record_id`);

--
-- Indizes für die Tabelle `dataface__record_mtimes`
--
ALTER TABLE `dataface__record_mtimes`
  ADD PRIMARY KEY (`recordhash`);

--
-- Indizes für die Tabelle `locker`
--
ALTER TABLE `locker`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `shelf`
--
ALTER TABLE `shelf`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `type__asset`
--
ALTER TABLE `type__asset`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `type__locker`
--
ALTER TABLE `type__locker`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `category0`
--
ALTER TABLE `category0`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `category1`
--
ALTER TABLE `category1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT für Tabelle `category2`
--
ALTER TABLE `category2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT für Tabelle `category3`
--
ALTER TABLE `category3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `dataface__preferences`
--
ALTER TABLE `dataface__preferences`
  MODIFY `pref_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `locker`
--
ALTER TABLE `locker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `shelf`
--
ALTER TABLE `shelf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT für Tabelle `type__asset`
--
ALTER TABLE `type__asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `type__locker`
--
ALTER TABLE `type__locker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
