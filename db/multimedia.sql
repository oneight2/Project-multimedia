-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2020 at 11:14 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multimedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id` int(11) NOT NULL,
  `nama_departemen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id`, `nama_departemen`) VALUES
(1, 'TK Karakter'),
(2, 'SD Karakter'),
(3, 'SMP Karakter'),
(4, 'SMA Karakter'),
(5, 'Divisi Pelatihan'),
(6, 'Toko Karakter');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `nama_project` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `story_board` text NOT NULL,
  `target_project` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `id_jenis_project` int(11) NOT NULL,
  `waktu_pengajuan` int(11) NOT NULL,
  `status` enum('Menunggu Diproses','Sedang Dikerjakan','Selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `nama`, `id_departemen`, `nama_project`, `deskripsi`, `story_board`, `target_project`, `link`, `id_jenis_project`, `waktu_pengajuan`, `status`) VALUES
(1, 'Syarif', 1, 'Hari Pahlawan', 'Tes', '', '2020-11-10', 'http://localhost/multimedia/home/project', 1, 0, 'Menunggu Diproses'),
(2, 'Syarif', 3, 'Hari Pahlawan', 'tes', '', '2020-11-13', 'http://localhost/multimedia/home/project', 1, 1604909360, 'Menunggu Diproses'),
(3, 'Syarif', 2, 'Hari Pahlawan', 'tes', '', '2020-11-26', 'http://localhost/multimedia/home/project', 1, 1604911800, 'Menunggu Diproses'),
(4, 'Syarif', 6, 'Hari Pahlawan', 'tes', '', '2020-11-18', 'http://localhost/multimedia/home/project', 1, 1604912491, 'Menunggu Diproses'),
(5, 'Syarif', 3, 'Hari Pahlawan', 'tes', '', '2020-11-20', 'http://localhost/multimedia/home/project', 1, 1604912642, 'Menunggu Diproses'),
(6, 'Syarif', 5, 'Hari Pahlawan', 'tes', '', '2020-11-05', 'http://localhost/multimedia/home/project', 1, 1604913099, 'Menunggu Diproses');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `jenis_project` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `jenis_project`) VALUES
(1, 'Shoot Video'),
(2, 'Editing Video'),
(3, 'Desain Gambar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departemen` (`id_departemen`),
  ADD KEY `id_jenis_project` (`id_jenis_project`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD CONSTRAINT `pengajuan_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id`),
  ADD CONSTRAINT `pengajuan_ibfk_2` FOREIGN KEY (`id_jenis_project`) REFERENCES `project` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
