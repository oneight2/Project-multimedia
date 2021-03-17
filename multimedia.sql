-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2021 at 05:14 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.3.24

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
  `id_departemen` int(11) NOT NULL,
  `nama_departemen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id_departemen`, `nama_departemen`) VALUES
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
  `storyboard` text NOT NULL,
  `target_project` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `id_jenis_project` longtext NOT NULL,
  `waktu_pengajuan` int(11) NOT NULL,
  `status` enum('Menunggu Diproses','Sedang Dikerjakan','Selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `nama`, `id_departemen`, `nama_project`, `deskripsi`, `storyboard`, `target_project`, `link`, `id_jenis_project`, `waktu_pengajuan`, `status`) VALUES
(13, 'Syarif', 2, 'Hari Pahlawan', 'tes', '15-02-21_Invoice_cctv11.pdf', '2021-02-17', 'http://localhost/multimedia/home/project', '2', 1613381590, 'Menunggu Diproses'),
(14, 'Syarif', 1, 'Hari Pahlawan', 'tes', '15-02-21_Invoice_vga.pdf', '2021-02-18', 'http://localhost/multimedia/home/project', '[\"1\",\"2\"]', 1613382647, 'Menunggu Diproses'),
(15, 'Syarif', 2, 'Hari Pahlawan', 'tes', '15-02-21_Invoice_wrode1.pdf', '2021-02-25', 'http://localhost/multimedia/home/project', '[\"1\",\"2\"]', 1613383768, 'Menunggu Diproses'),
(16, 'Syarif', 3, 'Hari Pahlawan', 'tesssssssssss', '15-02-21_Invoice_wrode18.pdf', '2021-02-25', 'http://localhost/multimedia/home/project', '[\"1\",\"2\"]', 1613384709, 'Menunggu Diproses'),
(17, 'Syarif', 3, 'Hari Pahlawan', 'asasas', '15-02-21_Invoice_Video_Capture2.pdf', '2021-02-26', 'http://localhost/multimedia/home/project', '[\"1\",\"3\"]', 1613386443, 'Menunggu Diproses'),
(18, 'Syarif', 6, 'Hari Pahlawan', 'asasaksaksjaskjaskajskaj', '16-02-21_Lowongan_Pekerjaan_-_Global_Patra_Sinertama.pdf', '2021-02-27', 'http://localhost/multimedia/home/project', '{\"1\":0,\"3\":1}', 1613457388, 'Menunggu Diproses');

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
  ADD PRIMARY KEY (`id_departemen`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departemen` (`id_departemen`);

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
  MODIFY `id_departemen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  ADD CONSTRAINT `pengajuan_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id_departemen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
