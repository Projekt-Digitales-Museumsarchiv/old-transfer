-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Erstellungszeit: 28. Feb 2024 um 09:04
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
('dataface__modules', 1708704103),
('dataface__mtimes', 1708704142),
('dataface__preferences', 1708706286),
('dataface__record_mtimes', 1708707254),
('dataface__version', 1708704103),
('ebene1', 1708989449),
('ebene2', 1709032761),
('oberbegriff', 1708889595);

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
('09b6e3a3fa1e1405ca66f72f460bf566', 'oberbegriff?id=8', 1708889448),
('0b0b97cd50a9e08c892ab7f980b9608d', 'oberbegriff?id=9', 1708889494),
('10eb8557f816f5ed27ed63cec9cac96f', 'oberbegriff?id=10', 1708889507),
('1ce226863fdaee73c90b0220da5e4037', 'oberbegriff?id=11', 1708889522),
('202d906de7652d63388e905a5b0050f4', 'oberbegriff?id=7', 1708889432),
('391dac3685cf2cffdc74a6aaa96795b0', 'oberbegriff?id=5', 1708889393),
('3f61f09614646bacb4c6c1bf14552a8a', 'oberbegriff?id=16', 1708889581),
('44977bce48e144c7322d75f6038fbfbf', 'oberbegriff?id=3', 1708889313),
('4637d279cb1aa579df0b822c8a5220cd', 'ebene1?id=1', 1708891835),
('49e45f06e1bc23f874217331a1961cb5', 'oberbegriff?id=15', 1708889572),
('514018b4383e3f6080074d26639d0627', 'oberbegriff?id=13', 1708889549),
('6ef6ad7e7fd3322040c771657fb7bfdb', 'oberbegriff?id=6', 1708889405),
('7def2ca6cd9de3216f4deb65428dce38', 'ebene2?id=11', 1709032111),
('857618898fd71384b8af435a988feaf6', 'oberbegriff?id=14', 1708889559),
('ac0cc4b9689918a2037e6745f95db2dc', 'ebene1?id=14', 1708894038),
('ad93bfbe8987d06c05df34e5d10f8c5b', 'oberbegriff?id=17', 1708889595),
('c5de5d484a3a231896c3495dbd9f5172', 'oberbegriff?id=12', 1708889536),
('ccf0adbef8d4f61710ba6059add76fe3', 'oberbegriff?id=2', 1708804198),
('e0db67d3db63605ac42e8b1f05e4c573', 'ebene2?id=6', 1709031950),
('f5c29ba6aceeedef6291de28e8f3ea95', 'oberbegriff?id=4', 1708889376);

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
-- Tabellenstruktur für Tabelle `ebene1`
--

CREATE TABLE `ebene1` (
  `id` int(11) NOT NULL,
  `oberbegriff` int(11) NOT NULL,
  `subid` varchar(2) DEFAULT NULL,
  `kuerzel` varchar(4) DEFAULT NULL,
  `bezeichnung` varchar(100) DEFAULT NULL,
  `veraltet` tinyint(4) DEFAULT NULL,
  `angelegt` datetime DEFAULT NULL,
  `bearbeitet` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `ebene1`
--

INSERT INTO `ebene1` (`id`, `oberbegriff`, `subid`, `kuerzel`, `bezeichnung`, `veraltet`, `angelegt`, `bearbeitet`) VALUES
(1, 1, '01', 'A-01', 'VAG', 0, '2024-02-25 21:10:35', '2024-02-25 21:10:35'),
(2, 1, '02', 'A-02', 'Dr. Dillmann', NULL, '2024-02-25 21:37:42', '2024-02-25 21:37:42'),
(3, 1, '03', 'A-03', 'Walther Lambert', NULL, '2024-02-25 21:38:00', '2024-02-25 21:38:00'),
(4, 1, '04', 'A-04', 'Robert Binder', NULL, '2024-02-25 21:38:13', '2024-02-25 21:38:13'),
(5, 1, '05', 'A-05', 'Jürgen Heußner', NULL, '2024-02-25 21:38:28', '2024-02-25 21:38:28'),
(6, 1, '06', 'A-06', 'Verkehrspolitik in Nürnberg', 1, '2024-02-25 21:39:35', '2024-02-25 21:39:35'),
(7, 1, '99', 'A-99', 'Sonstige Aufsätze und Vorträge', 1, '2024-02-25 21:40:04', '2024-02-25 21:40:04'),
(8, 2, '01', 'B-01', 'Fachzeitschriften', NULL, '2024-02-25 21:44:58', '2024-02-25 21:44:58'),
(9, 2, '02', 'B-02', 'Nürnberger Zeitschriften', NULL, '2024-02-25 21:45:11', '2024-02-25 21:45:11'),
(10, 2, '03', 'B-03', 'Verkehrsbetriebe', 1, '2024-02-25 21:45:23', '2024-02-25 21:45:23'),
(11, 2, '04', 'B-04', 'Vereine', 1, '2024-02-25 21:46:13', '2024-02-25 21:46:13'),
(12, 2, '05', 'B-05', 'Modellbau', NULL, '2024-02-25 21:46:26', '2024-02-25 21:46:26'),
(13, 2, '06', 'B-06', 'Hersteller', NULL, '2024-02-25 21:46:37', '2024-02-25 21:46:37'),
(14, 2, '07', 'B-07', 'Modellbau-Hersteller', NULL, '2024-02-25 21:46:54', '2024-02-25 21:47:17'),
(15, 2, '99', 'B-99', 'Sonstige Zeitschriften', 1, '2024-02-25 21:48:08', '2024-02-25 21:48:08'),
(16, 3, '01', 'C-01', 'VAG Pressespiegel', NULL, '2024-02-25 23:32:04', '2024-02-25 23:32:04'),
(17, 3, '02', 'C-02', 'VAG Presseinfo', NULL, '2024-02-25 23:32:21', '2024-02-25 23:32:21'),
(18, 3, '03', 'C-03', 'VGN Pressespiegel', NULL, '2024-02-25 23:32:37', '2024-02-25 23:32:37'),
(19, 3, '04', 'C-04', 'VGN Presseinfo', NULL, '2024-02-25 23:32:53', '2024-02-25 23:32:53'),
(20, 3, '05', 'C-05', 'infra Presseinfo', NULL, '2024-02-25 23:33:15', '2024-02-25 23:33:15'),
(21, 3, '06', 'C-06', 'DB Presseinfo', NULL, '2024-02-25 23:34:02', '2024-02-25 23:34:02'),
(22, 3, '99', 'C-99', 'Sonstiges', 1, '2024-02-25 23:34:18', '2024-02-25 23:34:18'),
(23, 3, '01', 'C-01', 'Nahverkehr im Raum Nürnberg', 1, '2024-02-25 23:35:13', '2024-02-25 23:35:13'),
(24, 3, '02', 'C-02', 'Nürnberg-Fürther Straßenbahn', 1, '2024-02-25 23:35:38', '2024-02-25 23:35:38'),
(25, 3, '03', 'C-03', 'Verbundgebiet', 1, '2024-02-25 23:35:50', '2024-02-25 23:35:50'),
(26, 4, '01', 'D-01', 'Gleispläne', NULL, '2024-02-25 23:37:29', '2024-02-25 23:37:29'),
(27, 4, '02', 'D-02', 'Betriebshöfe und Werkstätten', NULL, '2024-02-25 23:37:57', '2024-02-25 23:37:57'),
(28, 4, '03', 'D-03', 'Weitere Baulichkeiten', NULL, '2024-02-25 23:38:12', '2024-02-25 23:38:12'),
(29, 4, '04', 'D-04', 'Stromversorgung', NULL, '2024-02-25 23:38:42', '2024-02-25 23:38:42'),
(30, 4, '05', 'D-05', 'Gleisbau', NULL, '2024-02-25 23:38:55', '2024-02-25 23:38:55'),
(31, 4, '06', 'D-06', 'Beschreibungen des Gleisnetzes', NULL, '2024-02-25 23:39:13', '2024-02-25 23:39:13'),
(32, 5, '04', 'E-04', 'Triebwagen', NULL, '2024-02-25 23:41:04', '2024-02-25 23:41:04'),
(33, 5, '05', 'E-05', 'Beiwagen', NULL, '2024-02-25 23:41:13', '2024-02-25 23:41:13'),
(34, 5, '01', 'E-01', 'Technik elektrischer Bahnen', 1, '2024-02-25 23:55:26', '2024-02-25 23:55:26'),
(35, 5, '02', 'E-02', 'Allgemeine Straßenbahntechnik', 1, '2024-02-25 23:56:01', '2024-02-25 23:56:01'),
(36, 5, '03', 'E-03', 'Technik der Straßenbahnfahrzeuge der Nürnberg-Fürther Straßenbahn', 1, '2024-02-25 23:56:30', '2024-02-25 23:56:30'),
(37, 5, '06', 'E-06', 'Arbeitswagen', NULL, '2024-02-25 23:56:48', '2024-02-25 23:56:48'),
(38, 5, '07', 'E-07', 'Sonstige Wagenparkunterlagen', 1, '2024-02-25 23:57:09', '2024-02-25 23:57:09'),
(39, 6, '01', 'F-01', 'Dienstanweisungen', NULL, '2024-02-25 23:59:46', '2024-02-25 23:59:46'),
(40, 6, '02', 'F-02', 'Geschäftsberichte', NULL, '2024-02-25 23:59:59', '2024-02-25 23:59:59'),
(41, 6, '03', 'F-03', 'Fahrplanänderungen', 1, '2024-02-26 00:00:24', '2024-02-26 00:00:24'),
(42, 6, '04', 'F-04', 'Taschenfahrpläne', NULL, '2024-02-26 00:00:40', '2024-02-26 00:00:40'),
(43, 6, '05', 'F-05', 'Zugfahrpläne', NULL, '2024-02-26 00:01:00', '2024-02-26 00:01:00'),
(44, 6, '06', 'F-06', 'Wageneinsatzlisten und Linienlängen', NULL, '2024-02-26 00:01:22', '2024-02-26 00:01:22'),
(45, 6, '07', 'F-07', 'Linienchroniken', NULL, '2024-02-26 00:01:37', '2024-02-26 00:01:37'),
(46, 6, '08', 'F-08', 'Sonstige Dienstvorschriften', 1, '2024-02-26 00:02:01', '2024-02-26 00:02:01'),
(47, 8, '01', 'G-01', 'Fahrausweise (regulär)', NULL, '2024-02-26 00:04:13', '2024-02-26 00:04:13'),
(48, 8, '02', 'G-02', 'Gedenkfahrscheine und Urkunden', NULL, '2024-02-26 00:04:29', '2024-02-26 00:04:29'),
(49, 8, '03', 'G-03', 'Straßenbahnnotgeld und Münzen', NULL, '2024-02-26 00:04:45', '2024-02-26 00:04:45'),
(50, 8, '04', 'G-04', 'Sonderstempel', NULL, '2024-02-26 00:04:58', '2024-02-26 00:04:58'),
(51, 8, '05', 'G-05', 'Fahrpreisordnungen', NULL, '2024-02-26 00:05:11', '2024-02-26 00:05:11'),
(52, 7, '01', 'H-01', 'Broschüren und Netzpläne', NULL, '2024-02-26 22:31:38', '2024-02-26 22:31:38'),
(53, 7, '02', 'H-02', 'Haltestellenaushang', NULL, '2024-02-26 22:31:54', '2024-02-26 22:31:54'),
(54, 7, '03', 'H-03', 'Fahrzeugplakate', NULL, '2024-02-26 22:32:12', '2024-02-26 22:32:12'),
(55, 7, '04', 'H-04', 'Presseinformation und Schriftwechsel VAG', 1, '2024-02-26 22:32:52', '2024-02-26 22:32:52'),
(56, 9, '01', 'I-01', 'U-Bahn Bautechnik', NULL, '2024-02-26 22:36:16', '2024-02-26 22:36:16'),
(57, 9, '02', 'I-02', 'Öffentlichkeitsarbeit', NULL, '2024-02-26 22:36:36', '2024-02-26 22:36:36'),
(58, 9, '03', 'I-03', 'U-Bahn Betrieb', NULL, '2024-02-26 22:36:55', '2024-02-26 22:36:55'),
(59, 9, '04', 'I-04', 'U-Bahnwagen', NULL, '2024-02-26 22:37:25', '2024-02-26 22:37:25'),
(60, 9, '05', 'I-05', 'Wagenparklisten', 1, '2024-02-26 22:38:30', '2024-02-26 22:38:30'),
(61, 9, '06', 'I-06', 'Arbeitswagen', NULL, '2024-02-26 22:39:41', '2024-02-26 22:39:41'),
(62, 9, '07', 'I-07', 'Gleispläne', NULL, '2024-02-26 22:39:55', '2024-02-26 22:39:55'),
(63, 10, '01', 'O-01', 'Omnibustechnik', NULL, '2024-02-26 22:42:08', '2024-02-26 22:42:08'),
(64, 10, '02', 'O-02', 'O-Bus Nürnberg', NULL, '2024-02-26 22:42:47', '2024-02-26 22:42:47'),
(65, 10, '03', 'O-03', 'Omnibusbetrieb VAG', 1, '2024-02-26 22:43:11', '2024-02-26 22:43:11'),
(66, 10, '04', 'O-04', 'Technik der KOM-Fahrzeuge Nürnberg', 1, '2024-02-26 22:43:42', '2024-02-26 22:43:42'),
(67, 10, '05', 'O-05', 'Wagenparklisten', 1, '2024-02-26 22:44:02', '2024-02-26 22:44:02'),
(68, 10, '05', 'O-05', 'Omnibusfahrzeuge', NULL, '2024-02-26 22:44:40', '2024-02-26 22:44:40'),
(69, 10, '06', 'O-06', 'Arbeitswagen', NULL, '2024-02-26 22:44:57', '2024-02-26 22:44:57'),
(70, 11, '01', 'L-01', 'S-Bahn Informationsmaterial', NULL, '2024-02-26 22:47:15', '2024-02-26 22:47:15'),
(71, 11, '02', 'I-02', 'S-Bahn Betrieb', 1, '2024-02-26 22:47:31', '2024-02-26 22:47:31'),
(72, 11, '03', 'L-03', 'S-Bahn Zeitungsartikel', 1, '2024-02-26 22:47:47', '2024-02-26 22:47:47'),
(73, 11, '04', 'I-04', 'Eisenbahn im ÖPNV', NULL, '2024-02-26 22:48:13', '2024-02-26 22:48:13'),
(74, 11, '05', 'I-05', 'GBB und OVF', NULL, '2024-02-26 22:48:33', '2024-02-26 22:48:33'),
(75, 11, '06', 'I-06', 'Liliputbahn im Tiergarten', NULL, '2024-02-26 22:48:52', '2024-02-26 22:48:52'),
(76, 12, '01', 'M-01', 'Eisenbahn', NULL, '2024-02-26 22:56:37', '2024-02-26 22:56:37'),
(77, 12, '02', 'M-02', 'Forschungsprojekte', NULL, '2024-02-26 22:56:47', '2024-02-26 22:56:47'),
(78, 12, '03', 'M-03', 'Eisenbahn-Zeitschriften', 1, '2024-02-26 22:57:01', '2024-02-26 22:57:01'),
(79, 13, '01', 'N-01', 'Gutachten', NULL, '2024-02-26 22:58:15', '2024-02-26 22:58:15'),
(80, 13, '02', 'N-02', 'Statistiken', NULL, '2024-02-26 22:58:30', '2024-02-26 22:58:30'),
(81, 13, '03', 'N-03', 'Protokolle', NULL, '2024-02-26 22:58:40', '2024-02-26 22:58:40'),
(82, 13, '04', 'N-04', 'BG-Bahnen', NULL, '2024-02-26 22:59:06', '2024-02-26 22:59:06'),
(83, 14, '01', 'O-01', 'Nürnberg', NULL, '2024-02-26 23:00:49', '2024-02-26 23:00:49'),
(84, 14, '02', 'O-02', 'Bayern', NULL, '2024-02-26 23:01:06', '2024-02-26 23:01:06'),
(85, 14, '03', 'O-03', 'Baden-Württemberg', NULL, '2024-02-26 23:01:27', '2024-02-26 23:01:27'),
(86, 14, '04', 'O-04', 'Hessen', NULL, '2024-02-26 23:01:41', '2024-02-26 23:01:41'),
(87, 14, '05', 'O-05', 'Nordrhein-Westfalen', NULL, '2024-02-26 23:05:23', '2024-02-26 23:05:23'),
(88, 14, '06', 'O-06', 'Rheinland-Pfalz', NULL, '2024-02-26 23:05:35', '2024-02-26 23:05:35'),
(89, 14, '07', 'O-07', 'Niedersachsen und Bremen', NULL, '2024-02-26 23:05:50', '2024-02-26 23:05:50'),
(90, 14, '08', 'O-08', 'Schleswig-Holstein und Hamburg', NULL, '2024-02-26 23:06:28', '2024-02-26 23:06:28'),
(91, 14, '09', 'O-09', 'Saarland', NULL, '2024-02-26 23:06:40', '2024-02-26 23:06:40'),
(92, 14, '10', 'O-10', 'Berlin und Brandenburg', NULL, '2024-02-26 23:08:50', '2024-02-26 23:08:50'),
(93, 14, '11', 'O-11', 'Sachsen und Sachsen-Anhalt', NULL, '2024-02-26 23:09:05', '2024-02-26 23:09:05'),
(94, 14, '12', 'O-12', 'Mecklenburg-Vorpommern', NULL, '2024-02-26 23:09:19', '2024-02-26 23:09:19'),
(95, 14, '13', 'O-13', 'Thüringen', NULL, '2024-02-26 23:10:32', '2024-02-26 23:10:32'),
(96, 14, '14', 'O-14', 'Deutschland', NULL, '2024-02-26 23:10:48', '2024-02-26 23:10:48'),
(97, 14, '15', 'O-15', 'Mittel- und Ostdeutschland', NULL, '2024-02-26 23:11:10', '2024-02-26 23:11:10'),
(98, 14, '16', 'O-16', 'Österreich', NULL, '2024-02-26 23:11:49', '2024-02-26 23:11:49'),
(99, 14, '17', 'O-17', 'Schweiz', NULL, '2024-02-26 23:12:24', '2024-02-26 23:12:24'),
(100, 14, '18', 'O-18', 'Europa', NULL, '2024-02-26 23:12:52', '2024-02-26 23:12:52'),
(101, 14, '19', 'O-19', 'Nord- und Südamerika', NULL, '2024-02-26 23:13:10', '2024-02-26 23:13:10'),
(102, 14, '20', 'O-20', 'Asien, Afrika und Australien', NULL, '2024-02-26 23:14:03', '2024-02-26 23:14:03'),
(103, 14, '21', 'O-21', 'Fahrzeuge und Technik', NULL, '2024-02-26 23:14:14', '2024-02-26 23:14:14'),
(104, 14, '22', 'O-22', 'Geschichte und Entwicklung', NULL, '2024-02-26 23:14:30', '2024-02-26 23:14:30'),
(105, 15, '01', 'P-01', 'Nürnberg', NULL, '2024-02-26 23:00:49', '2024-02-26 23:00:49'),
(106, 15, '02', 'P-02', 'Bayern', NULL, '2024-02-26 23:01:06', '2024-02-26 23:01:06'),
(107, 15, '03', 'P-03', 'Baden-Württemberg', NULL, '2024-02-26 23:01:27', '2024-02-26 23:01:27'),
(108, 15, '04', 'P-04', 'Hessen', NULL, '2024-02-26 23:01:41', '2024-02-26 23:01:41'),
(109, 15, '05', 'P-05', 'Nordrhein-Westfalen', NULL, '2024-02-26 23:05:23', '2024-02-26 23:05:23'),
(110, 15, '06', 'P-06', 'Rheinland-Pfalz', NULL, '2024-02-26 23:05:35', '2024-02-26 23:05:35'),
(111, 15, '07', 'P-07', 'Niedersachsen und Bremen', NULL, '2024-02-26 23:05:50', '2024-02-26 23:05:50'),
(112, 15, '08', 'P-08', 'Schleswig-Holstein und Hamburg', NULL, '2024-02-26 23:06:28', '2024-02-26 23:06:28'),
(113, 15, '09', 'P-09', 'Saarland', NULL, '2024-02-26 23:06:40', '2024-02-26 23:06:40'),
(114, 15, '10', 'P-10', 'Berlin und Brandenburg', NULL, '2024-02-26 23:08:50', '2024-02-26 23:08:50'),
(115, 15, '11', 'P-11', 'Sachsen und Sachsen-Anhalt', NULL, '2024-02-26 23:09:05', '2024-02-26 23:09:05'),
(116, 15, '12', 'P-12', 'Mecklenburg-Vorpommern', NULL, '2024-02-26 23:09:19', '2024-02-26 23:09:19'),
(117, 15, '13', 'P-13', 'Thüringen', NULL, '2024-02-26 23:10:32', '2024-02-26 23:10:32'),
(118, 15, '14', 'P-14', 'Deutschland', NULL, '2024-02-26 23:10:48', '2024-02-26 23:10:48'),
(119, 15, '15', 'P-15', 'Mittel- und Ostdeutschland', NULL, '2024-02-26 23:11:10', '2024-02-26 23:11:10'),
(120, 15, '16', 'P-16', 'Österreich', NULL, '2024-02-26 23:11:49', '2024-02-26 23:11:49'),
(121, 15, '17', 'P-17', 'Schweiz', NULL, '2024-02-26 23:12:24', '2024-02-26 23:12:24'),
(122, 15, '18', 'P-18', 'Europa', NULL, '2024-02-26 23:12:52', '2024-02-26 23:12:52'),
(123, 15, '19', 'P-19', 'Nord- und Südamerika', NULL, '2024-02-26 23:13:10', '2024-02-26 23:13:10'),
(124, 15, '20', 'P-20', 'Asien, Afrika und Australien', NULL, '2024-02-26 23:14:03', '2024-02-26 23:14:03'),
(125, 15, '21', 'P-21', 'Fahrzeuge und Technik', NULL, '2024-02-26 23:14:14', '2024-02-26 23:14:14'),
(126, 15, '22', 'P-22', 'Geschichte und Entwicklung', NULL, '2024-02-26 23:14:30', '2024-02-26 23:14:30'),
(127, 16, '00', 'U-00', 'Internes', NULL, '2024-02-27 00:12:59', '2024-02-27 00:12:59'),
(128, 16, '01', 'U-01', 'Nürnberg', NULL, '2024-02-26 23:00:49', '2024-02-26 23:00:49'),
(129, 16, '02', 'U-02', 'Bayern', NULL, '2024-02-26 23:01:06', '2024-02-26 23:01:06'),
(130, 16, '03', 'U-03', 'Baden-Württemberg', NULL, '2024-02-26 23:01:27', '2024-02-26 23:01:27'),
(131, 16, '04', 'U-04', 'Hessen', NULL, '2024-02-26 23:01:41', '2024-02-26 23:01:41'),
(132, 16, '05', 'U-05', 'Nordrhein-Westfalen', NULL, '2024-02-26 23:05:23', '2024-02-26 23:05:23'),
(133, 16, '06', 'U-06', 'Rheinland-Pfalz', NULL, '2024-02-26 23:05:35', '2024-02-26 23:05:35'),
(134, 16, '07', 'U-07', 'Niedersachsen und Bremen', NULL, '2024-02-26 23:05:50', '2024-02-26 23:05:50'),
(135, 16, '08', 'U-08', 'Schleswig-Holstein und Hamburg', NULL, '2024-02-26 23:06:28', '2024-02-26 23:06:28'),
(136, 16, '09', 'U-09', 'Saarland', NULL, '2024-02-26 23:06:40', '2024-02-26 23:06:40'),
(137, 16, '10', 'U-10', 'Berlin und Brandenburg', NULL, '2024-02-26 23:08:50', '2024-02-26 23:08:50'),
(138, 16, '11', 'U-11', 'Sachsen und Sachsen-Anhalt', NULL, '2024-02-26 23:09:05', '2024-02-26 23:09:05'),
(139, 16, '12', 'U-12', 'Mecklenburg-Vorpommern', NULL, '2024-02-26 23:09:19', '2024-02-26 23:09:19'),
(140, 16, '13', 'U-13', 'Thüringen', NULL, '2024-02-26 23:10:32', '2024-02-26 23:10:32'),
(141, 16, '14', 'U-14', 'Deutschland', NULL, '2024-02-26 23:10:48', '2024-02-26 23:10:48'),
(142, 16, '15', 'U-15', 'Mittel- und Ostdeutschland', NULL, '2024-02-26 23:11:10', '2024-02-26 23:11:10'),
(143, 16, '16', 'U-16', 'Österreich', NULL, '2024-02-26 23:11:49', '2024-02-26 23:11:49'),
(144, 16, '17', 'U-17', 'Schweiz', NULL, '2024-02-26 23:12:24', '2024-02-26 23:12:24'),
(145, 16, '18', 'U-18', 'Europa', NULL, '2024-02-26 23:12:52', '2024-02-26 23:12:52'),
(146, 16, '19', 'U-19', 'Nord- und Südamerika', NULL, '2024-02-26 23:13:10', '2024-02-26 23:13:10'),
(147, 16, '20', 'U-20', 'Asien, Afrika und Australien', NULL, '2024-02-26 23:14:03', '2024-02-26 23:14:03'),
(148, 16, '21', 'U-21', 'Fahrzeuge und Technik', NULL, '2024-02-26 23:14:14', '2024-02-26 23:14:14'),
(149, 16, '22', 'U-22', 'Geschichte und Entwicklung', NULL, '2024-02-26 23:14:30', '2024-02-26 23:14:30'),
(150, 16, '91', 'U-91', 'Modellbahn', NULL, '2024-02-27 00:17:00', '2024-02-27 00:17:00'),
(151, 16, 'D', 'U-D', 'DVD', 1, '2024-02-27 00:17:15', '2024-02-27 00:17:15'),
(152, 16, 'V', 'U-V', 'Videocassetten', 1, '2024-02-27 00:17:29', '2024-02-27 00:17:29'),
(153, 17, '01', 'W-01', 'Nürnberg', NULL, '2024-02-26 23:00:49', '2024-02-26 23:00:49'),
(154, 17, '02', 'W-02', 'Bayern', NULL, '2024-02-26 23:01:06', '2024-02-26 23:01:06'),
(155, 17, '03', 'W-03', 'Baden-Württemberg', NULL, '2024-02-26 23:01:27', '2024-02-26 23:01:27'),
(156, 17, '04', 'W-04', 'Hessen', NULL, '2024-02-26 23:01:41', '2024-02-26 23:01:41'),
(157, 17, '05', 'W-05', 'Nordrhein-Westfalen', NULL, '2024-02-26 23:05:23', '2024-02-26 23:05:23'),
(158, 17, '06', 'W-06', 'Rheinland-Pfalz', NULL, '2024-02-26 23:05:35', '2024-02-26 23:05:35'),
(159, 17, '07', 'W-07', 'Niedersachsen und Bremen', NULL, '2024-02-26 23:05:50', '2024-02-26 23:05:50'),
(160, 17, '08', 'W-08', 'Schleswig-Holstein und Hamburg', NULL, '2024-02-26 23:06:28', '2024-02-26 23:06:28'),
(161, 17, '09', 'W-09', 'Saarland', NULL, '2024-02-26 23:06:40', '2024-02-26 23:06:40'),
(162, 17, '10', 'W-10', 'Berlin und Brandenburg', NULL, '2024-02-26 23:08:50', '2024-02-26 23:08:50'),
(163, 17, '11', 'W-11', 'Sachsen und Sachsen-Anhalt', NULL, '2024-02-26 23:09:05', '2024-02-26 23:09:05'),
(164, 17, '12', 'W-12', 'Mecklenburg-Vorpommern', NULL, '2024-02-26 23:09:19', '2024-02-26 23:09:19'),
(165, 17, '13', 'W-13', 'Thüringen', NULL, '2024-02-26 23:10:32', '2024-02-26 23:10:32'),
(166, 17, '14', 'W-14', 'Deutschland', NULL, '2024-02-26 23:10:48', '2024-02-26 23:10:48'),
(167, 17, '15', 'W-15', 'Mittel- und Ostdeutschland', NULL, '2024-02-26 23:11:10', '2024-02-26 23:11:10'),
(168, 17, '16', 'W-16', 'Österreich', NULL, '2024-02-26 23:11:49', '2024-02-26 23:11:49'),
(169, 17, '17', 'W-17', 'Schweiz', NULL, '2024-02-26 23:12:24', '2024-02-26 23:12:24'),
(170, 17, '18', 'W-18', 'Europa', NULL, '2024-02-26 23:12:52', '2024-02-26 23:12:52'),
(171, 17, '19', 'W-19', 'Nord- und Südamerika', NULL, '2024-02-26 23:13:10', '2024-02-26 23:13:10'),
(172, 17, '20', 'W-20', 'Asien, Afrika und Australien', NULL, '2024-02-26 23:14:03', '2024-02-26 23:14:03'),
(173, 17, '21', 'W-21', 'Fahrzeuge und Technik', NULL, '2024-02-26 23:14:14', '2024-02-26 23:14:14'),
(174, 17, '22', 'W-22', 'Geschichte und Entwicklung', NULL, '2024-02-26 23:14:30', '2024-02-26 23:14:30');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ebene2`
--

CREATE TABLE `ebene2` (
  `id` int(11) NOT NULL,
  `ebene1` int(11) NOT NULL,
  `subid` varchar(2) DEFAULT NULL,
  `kuerzel` varchar(7) DEFAULT NULL,
  `bezeichnung` varchar(100) DEFAULT NULL,
  `veraltet` tinyint(4) DEFAULT NULL,
  `angelegt` datetime DEFAULT NULL,
  `bearbeitet` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `ebene2`
--

INSERT INTO `ebene2` (`id`, `ebene1`, `subid`, `kuerzel`, `bezeichnung`, `veraltet`, `angelegt`, `bearbeitet`) VALUES
(1, 8, '01', NULL, 'Der Stadtverkehr', NULL, '2024-02-27 11:58:35', '2024-02-27 11:58:35'),
(2, 8, '02', NULL, 'Bus und Bahn', NULL, '2024-02-27 11:58:46', '2024-02-27 11:58:46'),
(3, 8, '03', NULL, 'Blickpunkt Straßenbahn', NULL, '2024-02-27 11:58:58', '2024-02-27 11:58:58'),
(4, 8, '04', NULL, 'Straßenbahn-Magazin', NULL, '2024-02-27 11:59:08', '2024-02-27 11:59:08'),
(5, 8, '06', NULL, 'Die Straßenbahn', NULL, '2024-02-27 11:59:26', '2024-02-27 11:59:26'),
(6, 8, '07', NULL, 'Der Deutsche Verkehrs-Amateur', NULL, '2024-02-27 12:05:42', '2024-02-27 12:05:50'),
(7, 8, '08', NULL, 'Straßenbahn International', NULL, '2024-02-27 12:06:35', '2024-02-27 12:06:35'),
(8, 8, '09', NULL, 'Verkehr + Technik', NULL, '2024-02-27 12:06:49', '2024-02-27 12:06:49'),
(9, 8, '12', NULL, 'Verkehrsnachrichten', NULL, '2024-02-27 12:07:13', '2024-02-27 12:07:13'),
(10, 8, '13', NULL, 'Nahverkehr', NULL, '2024-02-27 12:07:22', '2024-02-27 12:07:22'),
(11, 8, '15', NULL, 'Lok-Magazin', NULL, '2024-02-27 12:08:00', '2024-02-27 12:08:31'),
(12, 8, '14', NULL, 'E', NULL, '2024-02-27 12:08:38', '2024-02-27 12:08:38'),
(13, 8, '16', NULL, 'tram', NULL, '2024-02-27 12:09:19', '2024-02-27 12:09:19'),
(14, 8, '17', NULL, 'ÖPNV Aktuell', NULL, '2024-02-27 12:11:18', '2024-02-27 12:11:18'),
(15, 8, '18', NULL, 'Internationales Verkehrswesen', NULL, '2024-02-27 12:11:37', '2024-02-27 12:11:37'),
(16, 8, '19', NULL, 'NaNa Nachrichten', NULL, '2024-02-27 12:12:05', '2024-02-27 12:12:05'),
(17, 8, '20', NULL, 'Tramways and urban transit', NULL, '2024-02-27 12:12:24', '2024-02-27 12:12:24'),
(18, 8, '21', NULL, 'Eisenbahntechnische Rundschau', NULL, '2024-02-27 12:12:38', '2024-02-27 12:12:38'),
(19, 8, '22', NULL, 'VDV-Magazin', NULL, '2024-02-27 12:19:21', '2024-02-27 12:19:21');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `oberbegriff`
--

CREATE TABLE `oberbegriff` (
  `id` int(11) NOT NULL,
  `kuerzel` varchar(2) DEFAULT NULL,
  `bezeichnung` varchar(100) DEFAULT NULL,
  `veraltet` tinyint(4) DEFAULT NULL,
  `angelegt` datetime DEFAULT NULL,
  `bearbeitet` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `oberbegriff`
--

INSERT INTO `oberbegriff` (`id`, `kuerzel`, `bezeichnung`, `veraltet`, `angelegt`, `bearbeitet`) VALUES
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

--
-- Indizes der exportierten Tabellen
--

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
-- Indizes für die Tabelle `ebene1`
--
ALTER TABLE `ebene1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_OBERBEGRIFF` (`oberbegriff`);

--
-- Indizes für die Tabelle `ebene2`
--
ALTER TABLE `ebene2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_EBENE1` (`ebene1`) USING BTREE;

--
-- Indizes für die Tabelle `oberbegriff`
--
ALTER TABLE `oberbegriff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `dataface__preferences`
--
ALTER TABLE `dataface__preferences`
  MODIFY `pref_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ebene1`
--
ALTER TABLE `ebene1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT für Tabelle `ebene2`
--
ALTER TABLE `ebene2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT für Tabelle `oberbegriff`
--
ALTER TABLE `oberbegriff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `ebene1`
--
ALTER TABLE `ebene1`
  ADD CONSTRAINT `FK_OBERBEGRIFF` FOREIGN KEY (`oberbegriff`) REFERENCES `oberbegriff` (`id`);

--
-- Constraints der Tabelle `ebene2`
--
ALTER TABLE `ebene2`
  ADD CONSTRAINT `FK_EBENE1` FOREIGN KEY (`ebene1`) REFERENCES `ebene1` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
