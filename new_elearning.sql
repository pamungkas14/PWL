-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Mar 2020 pada 06.12
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_elearning`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_login`
--

CREATE TABLE `el_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL COMMENT '0=tidak,1=ya',
  `reset_kode` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_login`
--

INSERT INTO `el_login` (`id`, `username`, `password`, `siswa_id`, `pengajar_id`, `is_admin`, `reset_kode`) VALUES
(1, 'sidiqalfajar12@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', NULL, 1, 1, '17de5f50653ae14b14fe8d73b5376daf'),
(2, 'murid@gmail.com', 'cb2e3758e31399f183c8e75eb0055ef9', 1, NULL, 0, NULL),
(3, 'guru1l@gmail.com', '92afb435ceb16630e9827f54330c59c9', NULL, 2, 0, NULL),
(4, 'murid2@gmail.com', '6d24580569bcdc2a7e5405616bf388b9', 2, NULL, 0, NULL),
(5, 'murid3@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 3, NULL, 0, NULL),
(6, 'guru1@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 4, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_login_log`
--

CREATE TABLE `el_login_log` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `lasttime` datetime NOT NULL,
  `agent` text NOT NULL,
  `last_activity` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_login_log`
--

INSERT INTO `el_login_log` (`id`, `login_id`, `lasttime`, `agent`, `last_activity`) VALUES
(1, 1, '2019-12-14 00:05:18', '{\"is_mobile\":0,\"browser\":\"Chrome 70.0.3538.102\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36 Edge\\/18.18362\",\"ip\":\"::1\"}', 1576256924),
(2, 2, '2019-12-14 00:24:52', '{\"is_mobile\":0,\"browser\":\"Chrome 70.0.3538.102\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36 Edge\\/18.18362\",\"ip\":\"::1\"}', 1576257844),
(3, 1, '2019-12-14 00:26:23', '{\"is_mobile\":0,\"browser\":\"Chrome 70.0.3538.102\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36 Edge\\/18.18362\",\"ip\":\"::1\"}', 1576257967),
(4, 3, '2019-12-14 00:28:23', '{\"is_mobile\":0,\"browser\":\"Chrome 70.0.3538.102\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36 Edge\\/18.18362\",\"ip\":\"::1\"}', 1576260424),
(5, 1, '2019-12-14 00:40:18', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"::1\"}', 1576259433),
(6, 1, '2019-12-14 00:53:02', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"::1\"}', 1576259641),
(7, 1, '2019-12-14 00:58:43', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"::1\"}', 1576260072),
(8, 1, '2019-12-14 01:05:59', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"::1\"}', 1576260409),
(9, 1, '2019-12-14 01:32:20', '{\"is_mobile\":0,\"browser\":\"Chrome 70.0.3538.102\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36 Edge\\/18.18362\",\"ip\":\"::1\"}', 1576261830),
(10, 2, '2019-12-14 01:32:50', '{\"is_mobile\":0,\"browser\":\"Chrome 70.0.3538.102\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36 Edge\\/18.18362\",\"ip\":\"::1\"}', 1576261880),
(11, 1, '2019-12-14 01:34:00', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576261954),
(12, 2, '2019-12-14 01:34:52', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576262031),
(13, 1, '2019-12-14 01:36:13', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576262248),
(14, 1, '2019-12-14 01:40:12', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576262408),
(15, 3, '2019-12-14 01:42:39', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576262709),
(16, 2, '2019-12-14 01:47:27', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576262792),
(17, 1, '2019-12-14 01:48:47', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576262868),
(18, 1, '2019-12-14 18:42:00', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576323947),
(19, 1, '2019-12-14 18:52:48', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576325407),
(20, 1, '2019-12-14 19:27:29', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576326435),
(21, 2, '2019-12-14 19:29:32', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576326543),
(22, 1, '2019-12-14 19:31:19', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576326603),
(23, 2, '2019-12-14 19:32:22', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576326828),
(24, 1, '2019-12-14 19:36:03', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576327415),
(25, 1, '2019-12-18 03:40:38', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576615488),
(26, 1, '2019-12-18 03:53:17', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576616158),
(27, 1, '2019-12-18 03:56:56', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576616218),
(28, 1, '2019-12-18 03:57:45', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576616267),
(29, 1, '2019-12-18 04:01:14', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576616617),
(30, 1, '2019-12-18 04:04:42', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576617133),
(31, 1, '2019-12-20 10:13:59', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576812841),
(32, 1, '2019-12-20 11:49:12', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576820379),
(33, 1, '2019-12-20 12:42:23', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576820456),
(34, 1, '2019-12-20 13:10:57', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576823044),
(35, 5, '2019-12-20 13:26:20', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576823085),
(36, 1, '2019-12-20 13:27:03', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576823134),
(37, 1, '2019-12-20 13:28:29', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576823243),
(38, 3, '2019-12-20 13:29:43', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576823454),
(39, 5, '2019-12-20 13:33:28', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576823972),
(40, 1, '2019-12-23 15:16:39', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1577088930),
(41, 5, '2019-12-23 15:17:47', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1577089249),
(42, 1, '2019-12-28 19:11:44', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1577535120),
(43, 1, '2020-01-01 21:52:00', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1577890379),
(44, 1, '2020-01-03 20:04:32', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578056697),
(45, 1, '2020-01-04 01:54:09', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578077878),
(46, 1, '2020-01-04 02:08:50', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578078774),
(47, 1, '2020-01-06 10:49:53', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578282656),
(48, 1, '2020-01-06 10:52:34', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578282662),
(49, 1, '2020-01-06 10:53:34', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578282720),
(50, 4, '2020-01-06 10:54:10', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578283968),
(51, 1, '2020-01-19 18:54:48', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.130\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.130 Safari\\/537.36\",\"ip\":\"::1\"}', 1579434841),
(52, 1, '2020-01-19 18:56:12', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.130\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.130 Safari\\/537.36\",\"ip\":\"::1\"}', 1579435070),
(53, 1, '2020-02-20 21:46:52', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.116\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"ip\":\"::1\"}', 1582209927),
(54, 5, '2020-02-20 21:47:39', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.116\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"ip\":\"::1\"}', 1582212276);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `el_login`
--
ALTER TABLE `el_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`siswa_id`,`pengajar_id`),
  ADD KEY `username_2` (`username`,`siswa_id`,`pengajar_id`);

--
-- Indeks untuk tabel `el_login_log`
--
ALTER TABLE `el_login_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`),
  ADD KEY `login_id_2` (`login_id`),
  ADD KEY `login_id_3` (`login_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `el_login`
--
ALTER TABLE `el_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `el_login_log`
--
ALTER TABLE `el_login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
