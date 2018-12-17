-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Sep 2018 pada 11.35
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lenproject`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alarm`
--

CREATE TABLE `alarm` (
  `kode_alarm` varchar(11) NOT NULL,
  `latency` varchar(5) NOT NULL,
  `alarm_type` enum('','failure','equipment','communication') NOT NULL,
  `status` enum('clear','major','minor') NOT NULL,
  `time_down` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alarm`
--

INSERT INTO `alarm` (`kode_alarm`, `latency`, `alarm_type`, `status`, `time_down`) VALUES
('Alarm001', '10ms', '', 'clear', 0),
('Alarm002', '10ms', '', 'clear', 0),
('Alarm003', '10ms', '', 'clear', 0),
('Alarm004', '10ms', '', 'clear', 0),
('Alarm005', '10ms', '', 'clear', 0),
('Alarm006', '10ms', '', 'clear', 0),
('Alarm007', '10ms', '', 'clear', 0),
('Alarm008', '10ms', '', 'clear', 0),
('Alarm009', '10ms', '', 'clear', 0),
('Alarm010', '10ms', '', 'clear', 0),
('Alarm011', '10ms', '', 'clear', 0),
('Alarm012', '20ms', '', 'clear', 0),
('Alarm013', '20ms', '', 'clear', 0),
('Alarm014', '20ms', '', 'clear', 0),
('Alarm015', '20ms', '', 'clear', 0),
('Alarm016', '20ms', '', 'clear', 0),
('Alarm017', '20ms', '', 'clear', 0),
('Alarm018', '20ms', '', 'clear', 0),
('Alarm019', '20ms', '', 'clear', 0),
('Alarm020', '20ms', '', 'clear', 0),
('Alarm021', '10ms', '', 'clear', 0),
('Alarm022', '10ms', '', 'clear', 0),
('Alarm023', '10ms', '', 'clear', 0),
('Alarm024', '10ms', '', 'clear', 0),
('Alarm025', '10ms', '', 'clear', 0),
('Alarm026', '10ms', '', 'clear', 0),
('Alarm027', '100ms', 'failure', 'major', 20),
('Alarm028', '100ms', 'failure', 'major', 30),
('Alarm029', '100ms', 'equipment', 'major', 31),
('Alarm030', '100ms', 'equipment', 'major', 20),
('Alarm031', '100ms', 'communication', 'major', 20),
('Alarm032', '100ms', 'communication', 'minor', 20),
('Alarm033', '100ms', 'failure', 'major', 30),
('Alarm034', '100ms', 'failure', 'major', 15),
('Alarm035', '100ms', 'equipment', 'major', 16),
('Alarm036', '100ms', 'equipment', 'major', 17),
('Alarm037', '10ms', '', 'clear', 0),
('Alarm038', '10ms', '', 'clear', 0),
('Alarm039', '10ms', '', 'clear', 0),
('Alarm040', '10ms', '', 'clear', 0),
('Alarm041', '10ms', '', 'clear', 0),
('Alarm042', '10ms', '', 'clear', 0),
('Alarm043', '10ms', '', 'clear', 0),
('Alarm044', '10ms', '', 'clear', 0),
('Alarm045', '10ms', '', 'clear', 0),
('Alarm046', '10ms', '', 'clear', 0),
('Alarm047', '10ms', '', 'clear', 0),
('Alarm048', '10ms', '', 'clear', 0),
('Alarm049', '10ms', '', 'clear', 0),
('Alarm050', '10ms', '', 'clear', 0),
('Alarm051', '10ms', '', 'clear', 0),
('Alarm052', '10ms', '', 'clear', 0),
('Alarm053', '10ms', '', 'clear', 0),
('Alarm054', '10ms', '', 'clear', 0),
('Alarm055', '100ms', 'failure', 'major', 18),
('Alarm056', '100ms', 'failure', 'major', 19),
('Alarm057', '100ms', 'equipment', 'major', 21),
('Alarm058', '100ms', 'equipment', 'major', 23),
('Alarm059', '20ms', '', 'clear', 0),
('Alarm060', '20ms', '', 'clear', 0),
('Alarm061', '10ms', '', 'clear', 0),
('Alarm062', '10ms', '', 'clear', 0),
('Alarm063', '10ms', '', 'clear', 0),
('Alarm064', '10ms', '', 'clear', 0),
('Alarm065', '10ms', '', 'clear', 0),
('Alarm066', '10ms', '', 'clear', 0),
('Alarm067', '10ms', '', 'clear', 0),
('Alarm068', '10ms', '', 'clear', 0),
('Alarm069', '10ms', '', 'clear', 0),
('Alarm070', '10ms', '', 'clear', 0),
('Alarm071', '10ms', '', 'clear', 0),
('Alarm072', '20ms', '', 'clear', 0),
('Alarm073', '20ms', '', 'clear', 0),
('Alarm074', '20ms', '', 'clear', 0),
('Alarm075', '20ms', '', 'clear', 0),
('Alarm076', '20ms', '', 'clear', 0),
('Alarm077', '20ms', '', 'clear', 0),
('Alarm078', '20ms', '', 'clear', 0),
('Alarm079', '20ms', '', 'clear', 0),
('Alarm080', '20ms', '', 'clear', 0),
('Alarm081', '10ms', '', 'clear', 0),
('Alarm082', '10ms', '', 'clear', 0),
('Alarm083', '10ms', '', 'clear', 0),
('Alarm084', '10ms', '', 'clear', 0),
('Alarm085', '10ms', '', 'clear', 0),
('Alarm086', '10ms', '', 'clear', 0),
('Alarm087', '100ms', 'failure', 'major', 22),
('Alarm088', '100ms', 'failure', 'major', 25),
('Alarm089', '100ms', 'equipment', 'major', 14),
('Alarm090', '100ms', 'equipment', 'major', 14),
('Alarm091', '100ms', 'communication', 'major', 14),
('Alarm092', '100ms', 'communication', 'minor', 14),
('Alarm093', '100ms', 'failure', 'major', 15),
('Alarm094', '100ms', 'failure', 'major', 15),
('Alarm095', '100ms', 'equipment', 'major', 15),
('Alarm096', '100ms', 'equipment', 'major', 15),
('Alarm097', '10ms', '', 'clear', 0),
('Alarm098', '10ms', '', 'clear', 0),
('Alarm099', '10ms', '', 'clear', 0),
('Alarm100', '10ms', '', 'clear', 0),
('Alarm101', '10ms', '', 'clear', 0),
('Alarm102', '10ms', '', 'clear', 0),
('Alarm103', '10ms', '', 'clear', 0),
('Alarm104', '10ms', '', 'clear', 0),
('Alarm105', '10ms', '', 'clear', 0),
('Alarm106', '10ms', '', 'clear', 0),
('Alarm107', '10ms', '', 'clear', 0),
('Alarm108', '10ms', '', 'clear', 0),
('Alarm109', '10ms', '', 'clear', 0),
('Alarm110', '10ms', '', 'clear', 0),
('Alarm111', '10ms', '', 'clear', 0),
('Alarm112', '10ms', '', 'clear', 0),
('Alarm113', '10ms', '', 'clear', 0),
('Alarm114', '10ms', '', 'clear', 0),
('Alarm115', '100ms', 'failure', 'major', 15),
('Alarm116', '100ms', 'failure', 'major', 15),
('Alarm117', '100ms', 'equipment', 'major', 15),
('Alarm118', '100ms', 'equipment', 'major', 15),
('Alarm119', '20ms', '', 'clear', 0),
('Alarm120', '20ms', '', 'clear', 0),
('Alarm121', '20ms', '', 'clear', 0),
('Alarm122', '10ms', '', 'clear', 0),
('Alarm123', '10ms', '', 'clear', 0),
('Alarm124', '10ms', '', 'clear', 0),
('Alarm125', '10ms', '', 'clear', 0),
('Alarm126', '10ms', '', 'clear', 0),
('Alarm127', '10ms', '', 'clear', 0),
('Alarm128', '10ms', '', 'clear', 0),
('Alarm129', '10ms', '', 'clear', 0),
('Alarm130', '10ms', '', 'clear', 0),
('Alarm131', '10ms', '', 'clear', 0),
('Alarm132', '20ms', '', 'clear', 0),
('Alarm133', '20ms', '', 'clear', 0),
('Alarm134', '20ms', '', 'clear', 0),
('Alarm135', '20ms', '', 'clear', 0),
('Alarm136', '20ms', '', 'clear', 0),
('Alarm137', '20ms', '', 'clear', 0),
('Alarm138', '20ms', '', 'clear', 0),
('Alarm139', '20ms', '', 'clear', 0),
('Alarm140', '20ms', '', 'clear', 0),
('Alarm141', '10ms', '', 'clear', 0),
('Alarm142', '10ms', '', 'clear', 0),
('Alarm143', '10ms', '', 'clear', 0),
('Alarm144', '10ms', '', 'clear', 0),
('Alarm145', '10ms', '', 'clear', 0),
('Alarm146', '10ms', '', 'clear', 0),
('Alarm147', '100ms', 'failure', 'major', 16),
('Alarm148', '100ms', 'failure', 'major', 16),
('Alarm149', '100ms', 'equipment', 'major', 16),
('Alarm150', '100ms', 'equipment', 'major', 17),
('Alarm151', '100ms', 'communication', 'major', 17),
('Alarm152', '100ms', 'communication', 'minor', 17),
('Alarm153', '100ms', 'failure', 'major', 17),
('Alarm154', '100ms', 'failure', 'major', 17),
('Alarm155', '100ms', 'equipment', 'major', 17),
('Alarm156', '100ms', 'equipment', 'major', 18),
('Alarm157', '10ms', '', 'clear', 0),
('Alarm158', '10ms', '', 'clear', 0),
('Alarm159', '10ms', '', 'clear', 0),
('Alarm160', '10ms', '', 'clear', 0),
('Alarm161', '10ms', '', 'clear', 0),
('Alarm162', '10ms', '', 'clear', 0),
('Alarm163', '10ms', '', 'clear', 0),
('Alarm164', '10ms', '', 'clear', 0),
('Alarm165', '10ms', '', 'clear', 0),
('Alarm166', '10ms', '', 'clear', 0),
('Alarm167', '10ms', '', 'clear', 0),
('Alarm168', '10ms', '', 'clear', 0),
('Alarm169', '10ms', '', 'clear', 0),
('Alarm170', '10ms', '', 'clear', 0),
('Alarm171', '10ms', '', 'clear', 0),
('Alarm172', '10ms', '', 'clear', 0),
('Alarm173', '10ms', '', 'clear', 0),
('Alarm174', '10ms', '', 'clear', 0),
('Alarm175', '100ms', 'failure', 'major', 18),
('Alarm176', '100ms', 'failure', 'major', 18),
('Alarm177', '100ms', 'equipment', 'major', 19),
('Alarm178', '100ms', 'equipment', 'major', 19),
('Alarm179', '20ms', '', 'clear', 0),
('Alarm180', '20ms', '', 'clear', 0),
('Alarm181', '20ms', '', 'clear', 0),
('Alarm182', '10ms', '', 'clear', 0),
('Alarm183', '10ms', '', 'clear', 0),
('Alarm184', '10ms', '', 'clear', 0),
('Alarm185', '10ms', '', 'clear', 0),
('Alarm186', '10ms', '', 'clear', 0),
('Alarm187', '10ms', '', 'clear', 0),
('Alarm188', '10ms', '', 'clear', 0),
('Alarm189', '10ms', '', 'clear', 0),
('Alarm190', '10ms', '', 'clear', 0),
('Alarm191', '10ms', '', 'clear', 0),
('Alarm192', '20ms', '', 'clear', 0),
('Alarm193', '20ms', '', 'clear', 0),
('Alarm194', '20ms', '', 'clear', 0),
('Alarm195', '20ms', '', 'clear', 0),
('Alarm196', '20ms', '', 'clear', 0),
('Alarm197', '20ms', '', 'clear', 0),
('Alarm198', '20ms', '', 'clear', 0),
('Alarm199', '20ms', '', 'clear', 0),
('Alarm200', '20ms', '', 'clear', 0),
('Alarm201', '10ms', '', 'clear', 0),
('Alarm202', '10ms', '', 'clear', 0),
('Alarm203', '10ms', '', 'clear', 0),
('Alarm204', '10ms', '', 'clear', 0),
('Alarm205', '10ms', '', 'clear', 0),
('Alarm206', '10ms', '', 'clear', 0),
('Alarm207', '100ms', 'failure', 'major', 10),
('Alarm208', '100ms', 'failure', 'major', 10),
('Alarm209', '100ms', 'equipment', 'major', 10),
('Alarm210', '100ms', 'equipment', 'major', 10),
('Alarm211', '100ms', 'communication', 'major', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daily`
--

CREATE TABLE `daily` (
  `id` int(11) NOT NULL,
  `kode_project` varchar(11) NOT NULL,
  `kode_alarm` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `packet_length` int(3) NOT NULL,
  `link_bandwith` int(3) NOT NULL,
  `reliability` int(3) NOT NULL,
  `availability` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daily`
--

INSERT INTO `daily` (`id`, `kode_project`, `kode_alarm`, `date`, `packet_length`, `link_bandwith`, `reliability`, `availability`) VALUES
(4, 'Len001', 'Alarm001', '2018-09-01', 100, 100, 100, 100),
(5, 'Len001', 'Alarm002', '2018-09-02', 100, 100, 100, 100),
(6, 'Len001', 'Alarm003', '2018-09-03', 100, 100, 100, 100),
(7, 'Len001', 'Alarm004', '2018-09-04', 100, 100, 100, 100),
(8, 'Len001', 'Alarm005', '2018-09-05', 100, 100, 100, 100),
(9, 'Len001', 'Alarm006', '2018-09-06', 100, 100, 100, 100),
(10, 'Len001', 'Alarm007', '2018-09-07', 100, 100, 100, 100),
(11, 'Len001', 'Alarm008', '2018-09-08', 100, 100, 100, 100),
(12, 'Len001', 'Alarm009', '2018-09-09', 100, 100, 100, 100),
(13, 'Len001', 'Alarm010', '2018-09-10', 100, 100, 100, 100),
(14, 'Len001', 'Alarm011', '2018-09-11', 100, 100, 100, 100),
(15, 'Len001', 'Alarm012', '2018-09-12', 100, 100, 100, 100),
(16, 'Len001', 'Alarm013', '2018-09-13', 100, 100, 100, 100),
(17, 'Len001', 'Alarm014', '2018-09-14', 100, 100, 100, 100),
(18, 'Len001', 'Alarm015', '2018-09-15', 100, 100, 100, 100),
(19, 'Len001', 'Alarm016', '2018-09-16', 100, 100, 100, 100),
(20, 'Len001', 'Alarm017', '2018-09-17', 100, 100, 100, 100),
(21, 'Len001', 'Alarm018', '2018-09-18', 100, 100, 100, 100),
(22, 'Len001', 'Alarm019', '2018-09-19', 100, 100, 100, 100),
(23, 'Len001', 'Alarm020', '2018-09-20', 100, 100, 100, 100),
(24, 'Len001', 'Alarm021', '2018-09-21', 100, 100, 100, 100),
(25, 'Len001', 'Alarm021', '2018-09-22', 100, 100, 100, 100),
(26, 'Len001', 'Alarm022', '2018-09-23', 100, 100, 100, 100),
(27, 'Len001', 'Alarm023', '2018-09-24', 100, 100, 100, 100),
(28, 'Len001', 'Alarm024', '2018-09-25', 100, 100, 100, 100),
(29, 'Len001', 'Alarm025', '2018-09-26', 50, 100, 50, 97),
(30, 'Len001', 'Alarm026', '2018-09-27', 10, 100, 10, 96),
(31, 'Len001', 'Alarm027', '2018-09-28', 30, 100, 30, 96),
(32, 'Len001', 'Alarm028', '2018-09-29', 8, 100, 8, 97),
(33, 'Len001', 'Alarm029', '2018-09-30', 7, 100, 7, 97),
(34, 'Len002', 'Alarm030', '2018-09-01', 20, 100, 20, 97),
(35, 'Len002', 'Alarm031', '2018-09-02', 30, 100, 30, 96),
(36, 'Len002', 'Alarm032', '2018-09-03', 40, 100, 40, 98),
(37, 'Len002', 'Alarm033', '2018-09-04', 35, 100, 35, 98),
(38, 'Len002', 'Alarm034', '2018-09-05', 34, 100, 34, 98),
(39, 'Len002', 'Alarm035', '2018-09-06', 100, 100, 100, 100),
(40, 'Len002', 'Alarm036', '2018-09-07', 100, 100, 100, 100),
(41, 'Len002', 'Alarm037', '2018-09-08', 100, 100, 100, 100),
(42, 'Len002', 'Alarm038', '2018-09-09', 100, 100, 100, 100),
(43, 'Len002', 'Alarm039', '2018-09-10', 100, 100, 100, 100),
(44, 'Len002', 'Alarm040', '2018-09-11', 100, 100, 100, 100),
(45, 'Len002', 'Alarm041', '2018-09-12', 100, 100, 100, 100),
(46, 'Len002', 'Alarm042', '2018-09-13', 100, 100, 100, 100),
(47, 'Len002', 'Alarm043', '2018-09-14', 100, 100, 100, 100),
(48, 'Len002', 'Alarm044', '2018-09-15', 100, 100, 100, 100),
(49, 'Len002', 'Alarm045', '2018-09-16', 100, 100, 100, 100),
(50, 'Len002', 'Alarm046', '2018-09-17', 100, 100, 100, 100),
(51, 'Len002', 'Alarm047', '2018-09-18', 100, 100, 100, 100),
(52, 'Len002', 'Alarm048', '2018-09-19', 100, 100, 100, 100),
(53, 'Len002', 'Alarm049', '2018-09-20', 100, 100, 100, 100),
(54, 'Len002', 'Alarm050', '2018-09-21', 100, 100, 100, 100),
(55, 'Len002', 'Alarm051', '2018-09-22', 100, 100, 100, 100),
(56, 'Len002', 'Alarm052', '2018-09-23', 100, 100, 100, 100),
(57, 'Len002', 'Alarm053', '2018-09-24', 13, 100, 13, 98),
(58, 'Len002', 'Alarm054', '2018-09-25', 14, 100, 14, 97),
(59, 'Len002', 'Alarm055', '2018-09-26', 15, 100, 15, 97),
(60, 'Len002', 'Alarm056', '2018-09-27', 13, 100, 13, 97),
(61, 'Len002', 'Alarm057', '2018-09-28', 100, 100, 100, 100),
(62, 'Len002', 'Alarm058', '2018-09-29', 100, 100, 100, 100),
(63, 'Len002', 'Alarm059', '2018-09-30', 100, 100, 100, 100),
(64, 'Len003', 'Alarm060', '2018-09-01', 100, 100, 100, 100),
(65, 'Len003', 'Alarm061', '2018-09-02', 100, 100, 100, 100),
(66, 'Len003', 'Alarm062', '2018-09-03', 100, 100, 100, 100),
(67, 'Len003', 'Alarm063', '2018-09-04', 100, 100, 100, 100),
(68, 'Len003', 'Alarm064', '2018-09-05', 100, 100, 100, 100),
(69, 'Len003', 'Alarm065', '2018-09-06', 100, 100, 100, 100),
(70, 'Len003', 'Alarm066', '2018-09-07', 100, 100, 100, 100),
(71, 'Len003', 'Alarm067', '2018-09-08', 100, 100, 100, 100),
(72, 'Len003', 'Alarm068', '2018-09-09', 100, 100, 100, 100),
(73, 'Len003', 'Alarm069', '2018-09-10', 100, 100, 100, 100),
(74, 'Len003', 'Alarm070', '2018-09-11', 100, 100, 100, 100),
(75, 'Len003', 'Alarm071', '2018-09-12', 100, 100, 100, 100),
(76, 'Len003', 'Alarm072', '2018-09-13', 100, 100, 100, 100),
(77, 'Len003', 'Alarm073', '2018-09-14', 100, 100, 100, 100),
(78, 'Len003', 'Alarm074', '2018-09-15', 100, 100, 100, 100),
(79, 'Len003', 'Alarm075', '2018-09-16', 100, 100, 100, 100),
(80, 'Len003', 'Alarm076', '2018-09-17', 100, 100, 100, 100),
(81, 'Len003', 'Alarm077', '2018-09-18', 100, 100, 100, 100),
(82, 'Len003', 'Alarm078', '2018-09-19', 100, 100, 100, 100),
(83, 'Len003', 'Alarm079', '2018-09-20', 100, 100, 100, 100),
(84, 'Len003', 'Alarm080', '2018-09-21', 100, 100, 100, 100),
(85, 'Len003', 'Alarm081', '2018-09-22', 100, 100, 100, 100),
(86, 'Len003', 'Alarm082', '2018-09-23', 100, 100, 100, 100),
(87, 'Len003', 'Alarm083', '2018-09-24', 100, 100, 100, 100),
(88, 'Len003', 'Alarm084', '2018-09-25', 100, 100, 100, 100),
(89, 'Len003', 'Alarm085', '2018-09-26', 14, 100, 14, 97),
(90, 'Len003', 'Alarm086', '2018-09-27', 17, 100, 17, 97),
(91, 'Len003', 'Alarm087', '2018-09-28', 34, 100, 34, 98),
(92, 'Len003', 'Alarm088', '2018-09-29', 32, 100, 32, 98),
(93, 'Len003', 'Alarm089', '2018-09-30', 33, 100, 33, 98),
(94, 'Len004', 'Alarm090', '2018-09-01', 21, 100, 21, 98),
(95, 'Len004', 'Alarm091', '2018-09-02', 22, 100, 22, 98),
(96, 'Len004', 'Alarm092', '2018-09-03', 14, 100, 14, 98),
(97, 'Len004', 'Alarm093', '2018-09-04', 13, 100, 13, 98),
(98, 'Len004', 'Alarm094', '2018-09-05', 14, 100, 14, 98),
(99, 'Len004', 'Alarm095', '2018-09-06', 100, 100, 100, 100),
(100, 'Len004', 'Alarm096', '2018-09-07', 100, 100, 100, 100),
(101, 'Len004', 'Alarm097', '2018-09-08', 100, 100, 100, 100),
(102, 'Len004', 'Alarm098', '2018-09-09', 100, 100, 100, 100),
(103, 'Len004', 'Alarm099', '2018-09-10', 100, 100, 100, 100),
(104, 'Len004', 'Alarm100', '2018-09-11', 100, 100, 100, 100),
(105, 'Len004', 'Alarm102', '2018-09-12', 100, 100, 100, 100),
(106, 'Len004', 'Alarm103', '2018-09-13', 100, 100, 100, 100),
(107, 'Len004', 'Alarm104', '2018-09-14', 100, 100, 100, 100),
(108, 'Len004', 'Alarm105', '2018-09-15', 100, 100, 100, 100),
(109, 'Len004', 'Alarm106', '2018-09-16', 100, 100, 100, 100),
(110, 'Len004', 'Alarm107', '2018-09-17', 100, 100, 100, 100),
(111, 'Len004', 'Alarm108', '2018-09-18', 100, 100, 100, 100),
(112, 'Len004', 'Alarm109', '2018-09-19', 100, 100, 100, 100),
(113, 'Len004', 'Alarm110', '2018-09-20', 100, 100, 100, 100),
(114, 'Len004', 'Alarm111', '2018-09-21', 100, 100, 100, 100),
(115, 'Len004', 'Alarm112', '2018-09-22', 100, 100, 100, 100),
(116, 'Len004', 'Alarm113', '2018-09-23', 100, 100, 100, 100),
(117, 'Len004', 'Alarm114', '2018-09-24', 16, 100, 16, 98),
(118, 'Len004', 'Alarm115', '2018-09-25', 12, 100, 12, 98),
(119, 'Len004', 'Alarm116', '2018-09-26', 13, 100, 13, 98),
(120, 'Len004', 'Alarm117', '2018-09-27', 16, 100, 16, 98),
(121, 'Len004', 'Alarm118', '2018-09-28', 100, 100, 100, 100),
(122, 'Len004', 'Alarm119', '2018-09-29', 100, 100, 100, 100),
(123, 'Len004', 'Alarm120', '2018-09-30', 100, 100, 100, 100),
(124, 'Len005', 'Alarm121', '2018-09-01', 100, 100, 100, 100),
(125, 'Len005', 'Alarm122', '2018-09-02', 100, 100, 100, 100),
(126, 'Len005', 'Alarm123', '2018-09-03', 100, 100, 100, 100),
(127, 'Len005', 'Alarm124', '2018-09-04', 100, 100, 100, 100),
(128, 'Len005', 'Alarm125', '2018-09-05', 100, 100, 100, 100),
(129, 'Len005', 'Alarm126', '2018-09-06', 100, 100, 100, 100),
(130, 'Len005', 'Alarm127', '2018-09-07', 100, 100, 100, 100),
(131, 'Len005', 'Alarm128', '2018-09-08', 100, 100, 100, 100),
(132, 'Len005', 'Alarm129', '2018-09-09', 100, 100, 100, 100),
(133, 'Len005', 'Alarm130', '2018-09-10', 100, 100, 100, 100),
(134, 'Len005', 'Alarm131', '2018-09-11', 100, 100, 100, 100),
(135, 'Len005', 'Alarm132', '2018-09-12', 100, 100, 100, 100),
(136, 'Len005', 'Alarm133', '2018-09-13', 100, 100, 100, 100),
(137, 'Len005', 'Alarm134', '2018-09-14', 100, 100, 100, 100),
(138, 'Len005', 'Alarm135', '2018-09-15', 100, 100, 100, 100),
(139, 'Len005', 'Alarm136', '2018-09-16', 100, 100, 100, 100),
(140, 'Len005', 'Alarm137', '2018-09-17', 100, 100, 100, 100),
(141, 'Len005', 'Alarm138', '2018-09-18', 100, 100, 100, 100),
(142, 'Len005', 'Alarm139', '2018-09-19', 100, 100, 100, 100),
(143, 'Len005', 'Alarm140', '2018-09-20', 100, 100, 100, 100),
(144, 'Len005', 'Alarm141', '2018-09-21', 100, 100, 100, 100),
(145, 'Len005', 'Alarm142', '2018-09-22', 100, 100, 100, 100),
(146, 'Len005', 'Alarm143', '2018-09-23', 100, 100, 100, 100),
(147, 'Len005', 'Alarm144', '2018-09-24', 100, 100, 100, 100),
(148, 'Len005', 'Alarm145', '2018-09-25', 100, 100, 100, 100),
(149, 'Len005', 'Alarm146', '2018-09-26', 23, 100, 23, 98),
(150, 'Len005', 'Alarm147', '2018-09-27', 33, 100, 33, 98),
(151, 'Len005', 'Alarm148', '2018-09-28', 23, 100, 23, 98),
(152, 'Len005', 'Alarm149', '2018-09-29', 12, 100, 12, 98),
(153, 'Len005', 'Alarm150', '2018-09-30', 23, 100, 23, 98),
(154, 'Len006', 'Alarm151', '2018-09-01', 32, 100, 32, 98),
(155, 'Len006', 'Alarm152', '2018-09-02', 21, 100, 21, 98),
(156, 'Len006', 'Alarm153', '2018-09-03', 22, 100, 22, 98),
(157, 'Len006', 'Alarm154', '2018-09-04', 15, 100, 15, 98),
(158, 'Len006', 'Alarm155', '2018-09-05', 14, 100, 14, 98),
(159, 'Len006', 'Alarm156', '2018-09-06', 100, 100, 100, 100),
(160, 'Len006', 'Alarm157', '2018-09-07', 100, 100, 100, 100),
(161, 'Len006', 'Alarm158', '2018-09-08', 100, 100, 100, 100),
(162, 'Len006', 'Alarm159', '2018-09-09', 100, 100, 100, 100),
(163, 'Len006', 'Alarm160', '2018-09-10', 100, 100, 100, 100),
(164, 'Len006', 'Alarm161', '2018-09-11', 100, 100, 100, 100),
(165, 'Len006', 'Alarm162', '2018-09-12', 100, 100, 100, 100),
(166, 'Len006', 'Alarm163', '2018-09-13', 100, 100, 100, 100),
(167, 'Len006', 'Alarm164', '2018-09-14', 100, 100, 100, 100),
(168, 'Len006', 'Alarm165', '2018-09-15', 100, 100, 100, 100),
(169, 'Len006', 'Alarm166', '2018-09-16', 100, 100, 100, 100),
(170, 'Len006', 'Alarm167', '2018-09-17', 100, 100, 100, 100),
(171, 'Len006', 'Alarm168', '2018-09-18', 100, 100, 100, 100),
(172, 'Len006', 'Alarm169', '2018-09-19', 100, 100, 100, 100),
(173, 'Len006', 'Alarm170', '2018-09-20', 100, 100, 100, 100),
(174, 'Len006', 'Alarm171', '2018-09-21', 100, 100, 100, 100),
(175, 'Len006', 'Alarm172', '2018-09-22', 100, 100, 100, 100),
(176, 'Len006', 'Alarm173', '2018-09-23', 100, 100, 100, 100),
(177, 'Len006', 'Alarm174', '2018-09-24', 15, 100, 15, 98),
(178, 'Len006', 'Alarm175', '2018-09-25', 13, 100, 13, 98),
(179, 'Len006', 'Alarm176', '2018-09-26', 14, 100, 14, 97),
(180, 'Len006', 'Alarm177', '2018-09-27', 17, 100, 17, 97),
(181, 'Len006', 'Alarm178', '2018-09-28', 100, 100, 100, 100),
(182, 'Len006', 'Alarm179', '2018-09-29', 100, 100, 100, 100),
(183, 'Len006', 'Alarm180', '2018-09-30', 100, 100, 100, 100),
(184, 'Len007', 'Alarm181', '2018-09-01', 100, 100, 100, 100),
(185, 'Len007', 'Alarm182', '2018-09-02', 100, 100, 100, 100),
(186, 'Len007', 'Alarm183', '2018-09-03', 100, 100, 100, 100),
(187, 'Len007', 'Alarm184', '2018-09-04', 100, 100, 100, 100),
(188, 'Len007', 'Alarm185', '2018-09-05', 100, 100, 100, 100),
(189, 'Len007', 'Alarm186', '2018-09-06', 100, 100, 100, 100),
(190, 'Len007', 'Alarm187', '2018-09-07', 100, 100, 100, 100),
(191, 'Len007', 'Alarm188', '2018-09-08', 100, 100, 100, 100),
(192, 'Len007', 'Alarm189', '2018-09-09', 100, 100, 100, 100),
(193, 'Len007', 'Alarm190', '2018-09-10', 100, 100, 100, 100),
(194, 'Len007', 'Alarm191', '2018-09-11', 100, 100, 100, 100),
(195, 'Len007', 'Alarm192', '2018-09-12', 100, 100, 100, 100),
(196, 'Len007', 'Alarm193', '2018-09-13', 100, 100, 100, 100),
(197, 'Len007', 'Alarm194', '2018-09-14', 100, 100, 100, 100),
(198, 'Len007', 'Alarm195', '2018-09-15', 100, 100, 100, 100),
(199, 'Len007', 'Alarm196', '2018-09-16', 100, 100, 100, 100),
(200, 'Len007', 'Alarm197', '2018-09-17', 100, 100, 100, 100),
(201, 'Len007', 'Alarm198', '2018-09-18', 100, 100, 100, 100),
(202, 'Len007', 'Alarm199', '2018-09-19', 100, 100, 100, 100),
(203, 'Len007', 'Alarm200', '2018-09-20', 100, 100, 100, 100),
(204, 'Len007', 'Alarm201', '2018-09-21', 100, 100, 100, 100),
(205, 'Len007', 'Alarm202', '2018-09-22', 100, 100, 100, 100),
(206, 'Len007', 'Alarm203', '2018-09-23', 100, 100, 100, 100),
(207, 'Len007', 'Alarm204', '2018-09-24', 100, 100, 100, 100),
(208, 'Len007', 'Alarm205', '2018-09-25', 100, 100, 100, 100),
(209, 'Len007', 'Alarm206', '2018-09-26', 36, 100, 36, 97),
(210, 'Len007', 'Alarm207', '2018-09-27', 45, 100, 45, 99),
(211, 'Len007', 'Alarm208', '2018-09-28', 22, 100, 22, 99),
(212, 'Len007', 'Alarm209', '2018-09-29', 13, 100, 13, 99),
(213, 'Len007', 'Alarm210', '2018-09-30', 18, 100, 18, 99);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `email`, `password`, `id_user`) VALUES
(123, 'alifia704@gmail.com', 'mutimut123', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `project`
--

CREATE TABLE `project` (
  `kode_project` varchar(11) NOT NULL,
  `site` varchar(20) NOT NULL,
  `province` varchar(30) NOT NULL,
  `link_site` varchar(50) NOT NULL,
  `site1` varchar(50) NOT NULL,
  `site2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `project`
--

INSERT INTO `project` (`kode_project`, `site`, `province`, `link_site`, `site1`, `site2`) VALUES
('Len001', 'Site001', 'Sulawesi Selatan', 'Bone - Makassar', '-4.742241, 120.149872', '-5.155807, 119.443850'),
('Len002', 'Site002', 'Sulawesi Utara', 'Manado - Minahasa', '1.471143, 124.841475', '1.165616, 124.942908'),
('Len003', 'Site003', 'Sulawesi Tenggara', 'Kendari - Baubau', '-4.002878, 122.512725', '-5.471441, 122.597116'),
('Len004', 'Site004', 'Kalimantan Selatan', 'Amuntai - Martapura', '-2.417623, 115.238984', '-3.413930, 114.844555'),
('Len005', 'Site005', 'Kalimantan Timur', 'Tengarong - Bengalon', '-0.433575, 116.989646', '0.883848, 117.404142'),
('Len006', 'Site006', 'Maluku', 'Ternate - Weda', '0.769996, 127.369892', '0.336537, 127.868868'),
('Len007', 'Site007', 'Papua Barat', 'Sorong - Manokwari', '-0.877481, 131.255405', '-0.862726, 134.062208');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `jenis_kelamin` enum('l','p') NOT NULL,
  `no_telpon` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `no_telpon`) VALUES
(1, 'Alifia', 'Anjani', 'p', '123456789');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alarm`
--
ALTER TABLE `alarm`
  ADD PRIMARY KEY (`kode_alarm`);

--
-- Indeks untuk tabel `daily`
--
ALTER TABLE `daily`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `login` (`id_user`);

--
-- Indeks untuk tabel `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`kode_project`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daily`
--
ALTER TABLE `daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
