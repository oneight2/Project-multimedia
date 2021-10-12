-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 09, 2021 at 10:07 AM
-- Server version: 10.3.30-MariaDB-cll-lve
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u9378978_multimedia`
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
(5, 'Pelatihan'),
(6, 'Toko Karakter'),
(7, 'SBB'),
(8, 'Umum'),
(9, 'Litbang'),
(10, 'SDM'),
(11, 'Markom'),
(12, 'Keuangan'),
(14, 'IT & MM'),
(15, 'ICE PHBK'),
(16, 'TK Karakter Tapos'),
(17, 'SD Karakter Tapos');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `id` int(11) NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `waktu_pengajuan` datetime NOT NULL,
  `nama_pengaju` varchar(250) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `nama_perangkat` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  `urgensitas` enum('tinggi','sedang','rendah') NOT NULL,
  `status` enum('Menunggu Diproses','Sedang Dikerjakan','Selesai','Ditolak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`id`, `id_departemen`, `id_pegawai`, `waktu_pengajuan`, `nama_pengaju`, `no_telp`, `nama_perangkat`, `deskripsi`, `urgensitas`, `status`) VALUES
(3, 8, 14, '2021-03-25 07:30:00', 'muhammad halim', '85234151407', 'Kabel untuk ruangan Markom', 'posisi kabel  tercopot di ruanga markom di meja pak halim', 'sedang', 'Selesai'),
(4, 8, 14, '2021-03-29 07:30:00', 'Aziz', '081389020024', 'LAN KOPERASI', 'Penyambungan kabel LAN &amp; pemasangan connector USB LAN', '', 'Selesai'),
(6, 1, 14, '2021-03-29 07:30:00', 'Neneng', '085714207142', 'Komputer', 'Tidak dapat memgetik', 'tinggi', 'Selesai'),
(7, 5, 14, '2021-03-29 07:30:00', 'Dera', '81381629418', 'Printer Canon PIXMA G1000', 'Status Ready tapi ga mau nge print, printer 1 lagi yg HP Laserjet P1102 juga sama kasusnya plus tinta hitam nya mau habis', 'tinggi', 'Selesai'),
(8, 7, 14, '2021-03-30 07:30:00', 'Yudha Aviratri', '81510999447', 'Laptop Asus', 'Office tidak berfungsi', 'tinggi', 'Selesai'),
(10, 8, 14, '2021-03-30 07:30:00', 'Sandi Nayowan', '87776179161', 'Printer Epson L360', 'Isi Tinta Printer Merah, Kuning, Hitam', 'tinggi', 'Selesai'),
(12, 12, 14, '2021-03-31 07:30:00', 'Sifa Sinthia', '81212027102', 'Laptop Asus Keuangan', 'Pemasangan SSD KArena Laptop LEmot', 'tinggi', 'Selesai'),
(13, 12, 14, '2021-03-31 07:30:00', 'Sheila', '85894885088', 'Komputer LG', 'Memori hampir penuh', 'sedang', 'Selesai'),
(14, 2, 14, '2021-04-01 07:30:00', 'Dian Ayu', '85693432224', 'PC Ruang guru', 'Sering tdk muncul apa2 dilayar, saat dinyalakan', 'sedang', 'Selesai'),
(15, 5, 14, '2021-04-05 07:30:00', 'Sariati', '081318175717', 'Pc', 'Lelet', 'tinggi', 'Selesai'),
(16, 10, 14, '2021-04-05 07:30:00', 'Wahyu Woro Estuti', '87887394503', 'PC', 'Setting printernya berubah', 'sedang', 'Selesai'),
(17, 5, 14, '2021-04-05 07:30:00', 'Anita', '8155022503', 'Komputer', 'Tidak bisa di buka layarnya, mouse tidak mau bergerak', '', 'Selesai'),
(18, 8, 14, '2021-04-05 07:30:00', 'Ismatun', '81413406797', 'Printer', 'Kuras dan Isi Ulang Tinta', 'sedang', 'Selesai'),
(19, 9, 14, '2021-04-05 07:30:00', 'Zulfa Y', '81318680966', 'Laptop Asus Pribadi', 'Menginstall Nitro Pro', 'sedang', 'Selesai'),
(20, 10, 14, '2021-04-05 07:30:00', 'Dewi', '81553106103', 'PC', 'Tidak bisa ngeprint padahal printer status ready', 'tinggi', 'Selesai'),
(21, 11, 14, '2021-04-06 07:30:00', 'HALIM', '83898714086', 'LAPTOP DELL', 'Install Program Laptop dari Sponsor 5 PC', 'sedang', 'Selesai'),
(22, 8, 14, '2021-04-07 07:30:00', 'Dewi', '81553106106', 'PC', 'Buka atau edit file bentuk Ms Word memakan waktu cukup lama. masalah mulai terjadi setelah pemadaman listrik kemarin', 'sedang', 'Selesai'),
(23, 8, 14, '2021-04-08 07:30:00', 'Reza', '81776673328', 'Komputer', 'Suka ngreboot sendiri', '', 'Selesai'),
(24, 11, 14, '2021-04-09 07:30:00', 'jumadi', '83898714086', 'CCTV HTC lt. 1', 'Mati', 'sedang', 'Selesai'),
(26, 14, 14, '2021-04-13 07:30:00', 'jumadi', '123', 'CPU RAKITAN', 'RAKIT PC UTK RUANG MARKOM (IVI)', 'tinggi', 'Selesai'),
(27, 14, 14, '2021-04-13 07:30:00', 'jumadi', '123', 'PC LABKOM', 'Merapihkan Jaringan INternet &amp; pengecekkan connection', 'sedang', 'Selesai'),
(28, 5, 14, '2021-04-13 07:30:00', 'Sariati', '081318175717', 'LG PC', 'Nga connect k server, ada beberapa aplikasi yg blm d install', 'tinggi', 'Selesai'),
(29, 8, 14, '2021-04-13 07:30:00', 'Reza', '81776673328', 'Pc', 'Harddisk sering tidak terbaca', 'tinggi', 'Selesai'),
(30, 8, 14, '2021-04-13 07:30:00', 'Ismatun', '81413406797', 'Komputer Percetakan', 'Layar LCD burem', 'sedang', 'Selesai'),
(31, 12, 14, '2021-04-15 07:30:00', 'Sandi Nayowan', '87776179161', 'PC Keuangan', 'Internet tidak tersambung', 'tinggi', 'Selesai'),
(32, 10, 14, '2021-04-20 07:30:00', 'reza', '456831', 'cpu', 'system error', 'sedang', 'Selesai'),
(33, 8, 14, '2021-04-20 07:30:00', 'Isma', '81413406797', 'Printer Epson L1800', 'Print out macet', 'sedang', 'Selesai'),
(34, 2, 14, '2021-04-20 07:30:00', 'Shila', '8561731938', 'Komputer LG Perpus 1', 'Connecting Komputer ke Printer Epson IP2700', 'sedang', 'Selesai'),
(35, 2, 14, '2021-04-20 07:30:00', 'Shila', '8561731938', 'WiFi', 'Wifi Perpus 1 mati', 'sedang', 'Selesai'),
(36, 12, 14, '2021-04-20 07:30:00', 'Nanda', '89633496572', 'Pengkabelan', 'Perbaikan Kabel Lan Ruang Keuangan Komputer Kasir Kecil', 'sedang', 'Selesai'),
(37, 9, 14, '2021-04-22 07:30:00', 'Ridwan Fauzi', '8985742948', 'Komputernya Faradita', 'ada error reboot and select proper boot device ketika dinyalakan', 'tinggi', 'Selesai'),
(38, 8, 14, '2021-04-22 07:30:00', 'Isma', '81413406797', 'Printer Canon IP 2700', 'Warna printout sudah ga bagus.\r\nHitam jadi pink.', 'tinggi', 'Selesai'),
(39, 2, 14, '2021-04-26 07:30:00', 'Chika Chairina', '82297195177', 'Komputer kelas Dell Optiplex 380', 'Sering lemot, terutama kalo baru dinyalain. sering not responding, misalnya ketika mau mengubah word ke pdf atau mengerjakan hal lain.', 'sedang', 'Selesai'),
(40, 2, 14, '2021-04-27 07:30:00', 'Yeni', '087781820957', 'Printer Epson L3310', 'printer kasir tidak bisa ngeprint lebih dari sekali di accurate', 'sedang', 'Selesai'),
(41, 2, 14, '2021-04-29 07:30:00', 'Paulina', '085771874959', 'Printer warna', 'Warnanya habis', 'sedang', 'Selesai'),
(42, 2, 14, '2021-04-29 07:30:00', 'Hana Fauziah', '85887738837', 'Laptop Acer Aspire 5', 'Install microsoft publisher', 'tinggi', 'Selesai'),
(43, 1, 14, '2021-04-29 07:30:00', 'Ines', '87889242285', 'PC di ruang guru tk', 'Pc tidak kondusif, hanya muncul lambang si monitor di layar', 'tinggi', 'Selesai'),
(44, 11, 14, '2021-04-30 07:30:00', 'Syarif', '89699838615', 'Printer Epson L3310', 'Kertas nyangkutt pakkk', 'sedang', 'Selesai'),
(45, 10, 14, '2021-04-30 07:30:00', 'Woro', '87887394503', 'Printer Canon IP2770', 'mau print unvailable Connect dan tambahkan tinta printernya', 'tinggi', 'Selesai'),
(46, 9, 14, '2021-04-30 07:30:00', 'Widy Rossani Rahayu', '82111010831', 'Laptop acer swift 3', 'Office ga bisa digunakan', 'tinggi', 'Selesai'),
(47, 6, 14, '2021-05-03 07:30:00', 'Maemunah', '82111701718', 'Laserjet Pro M102a', 'isi Tinta Printer', 'tinggi', 'Selesai'),
(48, 2, 14, '2021-05-04 07:30:00', 'Alya Karima', '81574181280', 'Laptop Asus A43S', 'Install Software Adobe Premiere', 'sedang', 'Selesai'),
(49, 12, 14, '2021-05-04 07:30:00', 'Silvia', '81282270612', 'Printer LX310', 'Tidak bisa sharing printer', 'tinggi', 'Selesai'),
(50, 2, 14, '2021-05-10 07:30:00', 'Fenny Muta\'ali', '8815301902', 'Komputer DeL Optiplex 380', 'Ketika zoom layar nyala-mati, lalu tiba-tiba bluescreen dan restart. Terimakasih banyak tim MM yang akan membantu terkhusus Pak Jumadi', 'sedang', 'Selesai'),
(51, 9, 14, '2021-05-11 07:30:00', 'faradita', '89520331488', 'HDD PC FARA (recovery data)', 'data hilang terhiden', 'tinggi', 'Selesai'),
(52, 14, 14, '2021-05-20 07:30:00', 'Jumadi', '123456789', 'DVR 2 Ged.2', 'HDD 2TB Bat Sector (Lemah)', 'tinggi', 'Selesai'),
(53, 12, 14, '2021-05-21 07:30:00', 'Nanda', '29633496572', 'Printer Epson L360', 'Ngelos terus Pak (Paper Jam)', 'sedang', 'Selesai'),
(54, 2, 14, '2021-05-24 07:30:00', 'Citra Media Pertiwi', '85697184591', 'LAN komputer kelas 4 kakap', 'Tidak tersambung', 'tinggi', 'Selesai'),
(55, 12, 14, '2021-05-24 07:30:00', 'Sandi Nayowan', '87776179161', 'Printer Epson L360', 'Rusak gak bisa ngeprint', 'tinggi', 'Selesai'),
(56, 12, 14, '2021-05-25 07:30:00', 'Aziz', '81389020024', 'Konektor LAN USB', 'Koneksi jaringan sering terputus', 'sedang', 'Selesai'),
(57, 8, 14, '2021-05-27 07:30:00', 'Isma', '81413406797', 'Printer Canon IP 2700', 'Print Out sudah jelek', 'tinggi', 'Selesai'),
(58, 8, 14, '2021-05-27 07:30:00', 'Isma', '81413406797', 'Printer Canon IP 2700', 'Print Out sudah jelek', 'tinggi', 'Selesai'),
(59, 2, 14, '2021-05-28 07:30:00', 'Yeni', '87781820957', 'Printer Epson L3310', 'printernya tidak bisa dirun ke komputer yeni', 'sedang', 'Selesai'),
(60, 2, 14, '2021-05-31 07:30:00', 'Dian ayu', '85693432224', 'Printer', 'Tdk bs ngeprint', 'tinggi', 'Selesai'),
(61, 14, 3, '2021-05-31 07:30:00', 'Jumadi', '3213546', 'CCTV Ged. Belakang Arah Studio Musik', 'Gambar Burem Banget', '', 'Selesai'),
(62, 9, 14, '2021-05-31 07:30:00', 'Dita', '4564', 'recovery ulang data', 'recovery ulang data', '', 'Selesai'),
(63, 10, 14, '2021-06-02 07:30:00', 'woro', '1313123', 'Print Server', 'Instalasi Print Server', '', 'Selesai'),
(64, 10, 14, '2021-06-02 07:30:00', 'woro', '1313123', 'Print Server', 'Instalasi Print Server', '', 'Selesai'),
(66, 2, 14, '2021-06-03 07:30:00', 'Hanifah Hathimadinda Hosen', '81290785657', 'PC Kelas 2 Kerapu', 'Lambat, sering freeze, kadang tidak terkoneksi ke internet, saat di nyalakan layar hanya hitam saja', 'sedang', 'Selesai'),
(67, 5, 14, '2021-06-03 07:30:00', 'Bu sari', '453644', 'PC', 'Blue Scren', '', 'Selesai'),
(68, 1, 14, '2021-06-03 07:30:00', 'r. tk', '1213545', 'printer canon IP 2770', 'Hasil Tidak Bagus', '', 'Selesai'),
(69, 5, 14, '2021-06-03 07:30:00', 'PElatihan', '131313', 'PC', 'Pindahan Sementara Hari Jum\'at tgl. 4 juni 2021', '', 'Selesai'),
(70, 1, 14, '2021-06-04 07:30:00', 'Henny', '8998829072', 'Komputer ruang rancang bangun', 'komputernya lama sepertinya perlu di upgrade:D', 'sedang', 'Selesai'),
(71, 10, 14, '2021-06-08 07:30:00', 'Dewi', '81553106106', 'PC, jaringan lan n printer', 'PC tdk konek internet dan printer', 'tinggi', 'Selesai'),
(72, 10, 14, '2021-06-08 07:30:00', 'Dewi', '81553106106', 'PC, printer n lan', 'PC tdk konek internet dan printer', 'tinggi', 'Selesai'),
(73, 1, 14, '2021-06-11 07:30:00', 'Bu Robi', '1321454', 'PC', 'Mainboard Rusak', '', 'Selesai'),
(74, 6, 14, '2021-06-11 07:30:00', 'lili', '13', 'PRinter Dotmatrix Lx-310', 'Tidak Bisa Narik KEras', '', 'Selesai'),
(76, 2, 14, '2021-06-15 07:30:00', 'adis', '2132', 'monitor dan PC', 'Monitor Sering Mati \r\nPC tidak connect ke internet', '', 'Selesai'),
(77, 2, 14, '2021-06-15 07:30:00', 'Laysa', '1231', 'printer canon IP 2770 Perpus.2', 'Hasil Print Tidak Bagus', '', 'Selesai'),
(78, 8, 14, '2021-06-15 07:30:00', 'isma', '81413406797', 'CPU', 'Eror, PC g mau nyala', 'tinggi', 'Selesai'),
(79, 8, 14, '2021-06-15 07:30:00', 'isma', '1413406797', 'Printer', 'Ga konek', 'tinggi', 'Selesai'),
(80, 5, 14, '2021-06-15 07:30:00', 'Ari Saptarini', '8111171027', 'Komputer', 'Data Hilang', 'tinggi', 'Selesai'),
(81, 6, 14, '2021-06-21 07:30:00', 'Lili Anggraeni', '82111701718', 'Printer Laser Jet P1005', 'Setting Printer untuk Accurate', 'sedang', 'Selesai'),
(82, 8, 14, '2021-06-22 07:30:00', 'isma', '81413406797', 'monitor percetakan', 'mati total', 'tinggi', 'Selesai'),
(83, 8, 14, '2021-06-22 07:30:00', 'isma', '81413406797', 'keyboard percetakan', 'mati total', 'tinggi', 'Selesai'),
(84, 8, 14, '2021-06-22 07:30:00', 'isma', '81413406797', 'printer canon 2700', 'tinta kuning ga mau naik', 'tinggi', 'Selesai'),
(85, 2, 14, '2021-06-22 07:30:00', 'Shila', '8561731938', 'Printer Canon iP2770', 'Tinta printer warna hitam ( habis )', 'sedang', 'Selesai'),
(86, 4, 14, '2021-06-24 07:30:00', 'Raisa Rakhmania', '81311347510', 'Komputer dan Printer Ruang Kepala Sekolah', 'Komputer lemot dan printer sudah beberapa kali perbaikan, tetapi tintanya tetap tidak keluar', 'sedang', 'Selesai'),
(87, 1, 14, '2021-06-25 07:30:00', 'Bu Robi', '1315', 'printer epson', 'Tidak Bisa Print', '', 'Selesai'),
(88, 2, 14, '2021-06-25 07:30:00', 'Mala', '085691402176', 'Komputer kelas', 'Ketika zoom ga bisa kamera dan suaranya. Sudah di restart malah ga hidup lagi/tidak perfungsi. Windows eror', 'tinggi', 'Selesai'),
(89, 2, 14, '2021-06-25 07:30:00', 'Mala', '085691402176', 'Komputer kelas', 'Ketika zoom ga bisa kamera dan suaranya. Sudah di restart malah ga hidup lagi/tidak perfungsi. Windows eror', 'tinggi', 'Selesai'),
(90, 6, 14, '2021-06-25 07:30:00', 'lili', '54616', 'cpu', 'upgrade', '', 'Selesai'),
(91, 2, 14, '2021-07-01 07:30:00', 'mala', '1245', 'Speaker', 'Suara tidak stabil', '', 'Selesai'),
(92, 10, 14, '2021-07-01 07:30:00', 'Bu dewi', '1231', 'Internet', 'Tidak Connect Internet', '', 'Selesai'),
(93, 2, 14, '2021-07-02 07:30:00', 'Citra', '85697184591', 'Kabel server', 'Kabel server gak nyambung ke komputer', 'tinggi', 'Selesai'),
(94, 12, 14, '2021-07-05 07:30:00', 'NANDA', '131', 'PRINTER', 'Pasang Printer L3110', '', 'Selesai'),
(95, 14, 14, '2021-07-05 07:30:00', 'Jumadi', '231', 'Proyektor Epson', 'Pemasangan Proyektor HTC', '', 'Selesai'),
(96, 2, 14, '2021-07-05 07:30:00', 'Masitoh', '135', 'Printer hp', 'Tidak Connect', '', 'Selesai'),
(97, 8, 14, '2021-07-07 07:30:00', 'Isma', '81313406797', 'Canon IR ADV 6075', 'Scan Lewat Mesin FC', '', 'Selesai'),
(98, 14, 14, '2021-07-08 07:30:00', 'Jumadi', '23418', 'Printer Perpus 1', 'Maintenance', '', 'Selesai'),
(99, 5, 14, '2021-07-15 07:30:00', 'Bu sari', '123', 'printer canon IP 2770', 'Hasil Print Tidak Bagus', '', 'Selesai'),
(100, 2, 14, '2021-07-15 07:30:00', 'hanifah', '4564', 'printer canon IP 2770', 'Tinta HitamTidak Keluar', '', 'Selesai'),
(101, 8, 14, '2021-07-19 07:30:00', 'isma', '81413406797', 'Mesin FC canon ir adv 6075', 'Clear history', 'tinggi', 'Selesai'),
(102, 8, 14, '2021-07-21 07:30:00', 'isma', '81413406797', 'Scanner', 'seting scanner ke komputer', 'tinggi', 'Selesai'),
(103, 6, 14, '2021-07-22 07:30:00', 'Maemunah', '089507350694', 'Wifi', 'Wifi Toko Mati', 'tinggi', 'Selesai'),
(104, 10, 14, '2021-07-22 07:30:00', 'dewi', '231', 'cpu', 'Tidk tampil', '', 'Selesai'),
(105, 8, 14, '2021-07-23 07:30:00', 'junjun', '234', 'CPU', 'Tidak bisa hidup', '', 'Selesai'),
(106, 14, 14, '2021-07-23 07:30:00', 'Jumadi', '4234', 'Printer Tapos Canon IP 2770', 'Maintenance 3 Printer punya Tapos', '', 'Selesai'),
(107, 2, 14, '2021-07-27 07:30:00', 'FAISAL PINEM', '85659058590', 'PC RUANG GURU Meja Bu Ayu', 'Ga bisa akses internet dan server', 'sedang', 'Selesai'),
(108, 2, 14, '2021-08-02 07:30:00', 'Shila', '8561737938', 'Laptop DELL', 'Exiting PXE Rom', 'tinggi', 'Selesai'),
(109, 2, 14, '2021-08-09 07:30:00', 'Adis', '87772100425', 'Komputer kelas 4 katuk', 'Sering ngelag, jika digunakan zoom dan mengerjakan kegiatan lain misal membuka Microsoft office.\r\nTiba-tiba tidak bisa diapa-apain. Harus mati paksa.', 'tinggi', 'Selesai'),
(110, 2, 14, '2021-08-10 07:30:00', 'Yulia Pratiwi', '85694138163', 'PC Lab Komputer', '15 PC akan digunakan untuk ANBK oada tanggal 23- 26 Agustus 2021', 'tinggi', 'Selesai'),
(111, 8, 14, '2021-08-12 07:30:00', 'isma', '81413406797', 'Komputer', 'Lemot', 'sedang', 'Selesai'),
(112, 1, 14, '2021-08-13 07:30:00', 'Catur', '85218329192', 'Computer', 'Error system', '', 'Selesai'),
(113, 1, 14, '2021-08-18 07:30:00', 'ines', '34342', 'PC R.Guru', 'tidak connect internet R.Guru TK', '', 'Selesai'),
(114, 2, 14, '2021-08-18 07:30:00', 'Dian Ayu', '32342', 'Printer Epson L3110', 'Tidak KEluar Warna', '', 'Selesai'),
(115, 5, 14, '2021-08-18 07:30:00', 'Ari', '3424', 'PRinter G1000', 'Tidak Keluar Warna', '', 'Selesai'),
(117, 2, 14, '2021-08-25 07:30:00', 'yudis', '1324', 'CPU', 'Tidak Connect INternet', '', 'Selesai'),
(118, 1, 14, '2021-08-25 07:30:00', 'Ines', '1231', 'Printer', 'Tabung Tinta Pembuangan Bocor', '', 'Selesai'),
(119, 2, 14, '2021-08-27 07:30:00', 'Trias Syaifulina', '87790678209', 'CPU Kelas 5 Basil', 'Kelas 5 Basil CPU nya kelas perlu repair karena fan CPU mati dan sepertinya kabel powernya agak kendor', 'tinggi', 'Selesai'),
(120, 2, 14, '2021-09-06 07:30:00', 'MASITOH', '3442', 'PC', 'Repair windows', '', 'Selesai'),
(121, 2, 14, '2021-09-06 07:30:00', 'Yudhistira Maulana Dama Cipta', '085156460390', 'Komputer', 'Repair', 'tinggi', 'Selesai'),
(122, 12, 14, '2021-09-06 07:30:00', 'Sheila', '85894885088', 'Printer Laserjet', 'pak jums printernya gasbisa ngeprint :(', 'sedang', 'Selesai'),
(123, 2, 14, '2021-09-07 07:30:00', 'Fenny', '8815301902', 'Komputer Dell kelas 2 Brokoli', 'Layar tidak bisa menyala', 'tinggi', 'Selesai'),
(124, 8, 14, '2021-09-13 07:30:00', 'Ismatun', '1413406797', 'Komputer Percetakan', 'Layar tidak mau menyala', 'tinggi', 'Selesai'),
(125, 8, 14, '2021-09-15 07:30:00', 'Isma', '81413406797', 'Printer Epson L1800', 'Reseting', 'tinggi', 'Selesai'),
(126, 3, 14, '2021-09-20 07:30:00', 'Yudi', '87880937894', 'Kabel lan / saluran kabel internet', 'Tidak bisa Conect ke leptop', 'sedang', 'Selesai'),
(127, 5, 14, '2021-09-21 07:30:00', 'Sariati', '3222222222', 'PC', 'Minta diinstal aplikasi editing video selain adobe premiere, misal filmora..dll', 'tinggi', 'Selesai'),
(128, 2, 14, '2021-09-21 07:30:00', 'uni', '45646', 'Printer Epson L3110', 'Kertas Nyangkut di Roller', '', 'Selesai'),
(129, 2, 5, '2021-09-22 07:30:00', 'Sherlita', '88291907002', 'Pembuatan Kabel LAN', 'Kabel LAN', 'sedang', 'Selesai'),
(130, 2, 14, '2021-09-27 07:30:00', 'Yudhistira', '85156460390', 'Komputer', 'Install ulang komputer bengkel kreatif', 'sedang', 'Selesai'),
(131, 15, 14, '2021-09-27 07:30:00', 'Tina Sugiharti', '85312412894', 'Proyektor kelas kuliah', 'Memindahkan proyektor kelas ICE-PHBK dari kelas lama ke kelas baru', 'tinggi', 'Selesai'),
(132, 10, 14, '2021-09-27 07:30:00', 'Woro', '87887394503', 'Printer Canon IP2770', 'Tintanya Habis', 'tinggi', 'Selesai'),
(133, 14, 14, '2021-09-28 07:30:00', 'Jumadi', '1345', 'cpu server', 'Terserang Negara Api', '', 'Selesai'),
(134, 14, 14, '2021-09-29 07:30:00', 'Jumadi', '121', 'CCTV Samping Hall', 'Berembun', '', 'Sedang Dikerjakan'),
(135, 14, 1, '2021-09-29 07:30:00', 'Jumadi', '123', 'CCTV Arah Parkiran Tengah', 'Tidak Tampil (Mati) Cek', '', 'Menunggu Diproses'),
(136, 5, 14, '2021-09-29 07:30:00', 'Anita', '123', 'PC', 'Cek Lemot', '', 'Selesai'),
(137, 2, 14, '2021-09-30 07:30:00', 'Mala', '85691402176', 'Printer canon perpus 2', 'Ga bisa ngeprint', 'tinggi', 'Selesai'),
(138, 2, 14, '2021-09-30 07:30:00', 'Ryma Maziyah Arsy', '81224084981', 'Webcam kelas', 'Tampilan video hitam', 'tinggi', 'Selesai'),
(139, 3, 1, '2021-10-04 07:30:00', 'devi pratiwi', '85772557458', 'Komputer kelas, kamera, mic, speaker', 'komputer di kelas 9 alexandria sangat lambat, komputer di kelas 9 sydney masih blm bisa digunakan katanya masih XP, kamaera di kelas 9 sydney masih blm bisa digunakan (yg bulet), mic dan seperangkat alat komunikasi kelas 9 helsinki awalnya ada diruang MM (lt3) kemudian di cek hari ini tidak ada, speaker kelas 9 helsinki belum ada. mohon tindakannya hari ini , karena sudah mulai PTMT. Terimakasih', 'tinggi', 'Menunggu Diproses'),
(140, 10, 14, '2021-10-04 07:30:00', 'Rani', '1231', 'CPU', 'Tidak Tampil', '', 'Selesai'),
(141, 1, 14, '2021-10-05 07:30:00', 'Ines', '87889242285', 'Webcam', 'Webcam tidak connect ke laptop', 'tinggi', 'Selesai'),
(142, 2, 14, '2021-10-05 07:30:00', 'Citra', '85697184591', 'Mic Kelas', 'Tidak bisa masuk suaranya', 'tinggi', 'Selesai'),
(143, 1, 5, '2021-10-06 07:30:00', 'Ines', '87889242285', 'Pc di ruang guru dengan nomor 192.168.11.60', 'Office tidak berfungsi dengan normal', 'sedang', 'Selesai'),
(144, 9, 1, '2021-10-06 07:30:00', 'Dewanti Nurcahyani', '85719425472', 'PC LITBANG IP 17', 'Tidak bisa convert dari publisher ke PDF, ketika sudah dicoba hasil file publisher dan PDF-nya dianggap tdk ada di komputer dan file jg tdk bisa dibuka (sepertinya Nitronya error), jadi minta diinstallin ulang aplikasi convert PDF. Terima kasih', 'tinggi', 'Menunggu Diproses'),
(146, 2, 14, '2021-10-06 07:30:00', 'Prishila Diah Maharani', '8561731938', 'Printer L2700', 'Tinta Printer', 'tinggi', 'Selesai'),
(147, 6, 14, '2021-10-06 07:30:00', 'Maemunah', '089507350694', 'Printer LeserJet Pro M102A', 'printer Kotor', 'tinggi', 'Sedang Dikerjakan'),
(148, 14, 1, '2021-10-06 07:30:00', 'jumadi', '-1', 'CCTV', 'Perbaikan CCTV Koperasi', '', 'Menunggu Diproses'),
(149, 2, 14, '2021-10-06 07:30:00', 'Yeni', '87781820957', 'printer epson L360', 'Tinta printer habis', 'tinggi', 'Selesai'),
(150, 1, 1, '2021-10-06 07:30:00', 'arifah', '85781425001', 'kamera kelas', 'kamera kelas lepas ke senggol', 'tinggi', 'Menunggu Diproses'),
(151, 2, 14, '2021-10-06 07:30:00', 'Amel', '82319510930', 'Komputer dan proyektor kelas', 'Komputernya tidak terhubung internet dan proyektonya kurang presisi', 'sedang', 'Selesai'),
(152, 2, 1, '2021-10-07 07:30:00', 'Yudhistira', '81957180842', 'Kabel external webcam kelas', 'kabel external longgar', 'tinggi', 'Menunggu Diproses');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(250) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `no_telp`, `foto`) VALUES
(1, 'Belum ada', '', NULL),
(2, 'Abdul', '6282113051350', 'default.jpg'),
(3, 'Bayu', '6283134468863', 'default.jpg'),
(4, 'Syarif', '6289699838615', 'default.jpg'),
(5, 'Dahlan', '6281297584571', 'default.jpg'),
(6, 'Fea', '6281219215065', 'default.jpg'),
(11, 'Halim', '6285234151407', 'default.jpg'),
(14, 'Jumadi', '6283898714086', 'default.jpg'),
(15, 'Vie', '62896388375798', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `nama_project` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `storyboard` text NOT NULL,
  `target_project` datetime NOT NULL,
  `link` text DEFAULT NULL,
  `id_jenis_project` longtext NOT NULL,
  `waktu_pengajuan` datetime NOT NULL,
  `tempat` enum('Cimanggis','Tapos') NOT NULL,
  `status` enum('Menunggu Diproses','Sedang Dikerjakan','Selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `nama`, `id_departemen`, `id_pegawai`, `nama_project`, `deskripsi`, `storyboard`, `target_project`, `link`, `id_jenis_project`, `waktu_pengajuan`, `tempat`, `status`) VALUES
(34, 'Edianna', 5, 3, 'Video Pembukaan Seminar Minamas', 'Video pembuka seperti video Parenting Akbar, Dira nyanyi Ibu Pertiwi. Tapi video Pak Restu dihilangkan, diganti gambar-gambar terkait guru mengajar pandemi.', '', '2021-03-26 00:00:00', '', '[\"Editing Video\"]', '2021-03-25 07:30:00', 'Cimanggis', 'Selesai'),
(36, 'Dewi', 10, 4, 'Fliyer Pertandingan Final Bulu Tangkis IHF', 'Membuat 1 fliyer berisi foto para kandidat juara bulu tangkis yang akan bertanding final nanti sor. fliyer ini akan di share saat FBI tgl 26 Maret 2021.\r\nkonsep fliyer adalah foto para pemain berjajar ala foto kejuaraan Esport (foto Azis, Nanda,Yazidah, Restu,Hendrik) dengan tulisan dibawahnya \'Final Kejuaraan IHF Cup 2021\'', '', '2021-03-26 00:00:00', '', '[\"Desain Gambar\"]', '2021-03-26 07:30:00', 'Cimanggis', 'Selesai'),
(37, 'Lili Anggraeni', 6, 15, 'Design Katalog', 'Design katalog baru dengan logo baru IHF', '', '2021-04-02 00:00:00', '', '[\"Desain Gambar\"]', '2021-03-26 07:30:00', 'Cimanggis', 'Selesai'),
(38, 'Mia', 2, 6, 'Virtual background SLC SD Karakter', 'Minta tolong dibuatkan virtual background utk SLC SD', '', '2021-03-26 00:00:00', '', '[\"Desain Gambar\"]', '2021-03-26 07:30:00', 'Tapos', 'Selesai'),
(40, 'Ines', 1, 6, 'Virtual background konferensi siswa', 'Bentuk png atau jpg Warna menarik, ada logo dan tulisan konferensi siswa. Target senin, 29 maret jam 07.00', '', '2021-03-29 00:00:00', '', '[\"Desain Gambar\"]', '2021-03-26 07:30:00', 'Tapos', 'Selesai'),
(41, 'Shelly', 1, 4, 'Desain foto wisuda', 'Pengambilan foto toga TK B dan shoot video singkat.\r\nmenggunakan photo-booth, plan B di HTC dengan dekorasi. \r\npengambilan foto berikut edit untuk slideshow toga.\r\n\r\ntanggal pengambilan foto: 19, 20, 21 April 2021', '', '2021-05-13 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-03-26 07:30:00', 'Cimanggis', 'Selesai'),
(42, 'Shelly', 1, 4, 'Video opening wisuda', 'berisi beberapa scene/footage video berikut editing. \r\nbahan hampir selesai tinggal footage foto toga.', '', '2021-12-05 00:00:00', '', '[\"Editing Video\"]', '2021-03-27 07:30:00', 'Cimanggis', 'Selesai'),
(43, 'Shelly', 1, 4, 'Video kompilasi jawaban anak untuk opening prosesi', 'video diambil saat proses foto wisuda tanggal 19, 20, 21 April. anak akan menjawab pertanyaan yang diajukan guru', '', '2021-10-05 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-03-27 07:30:00', 'Cimanggis', 'Selesai'),
(44, 'Shelly', 1, 4, 'Video kebutuhan penampil Pak Singgih', 'pertunjukkan sulap pak singgih yangdilakukan dengan kombinasi video dan live', '', '2021-05-20 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-03-27 07:30:00', 'Cimanggis', 'Selesai'),
(45, 'Shelly', 1, 4, 'Video countdown opening', 'berisi footage kepsek dan tim mm ready untuk wisuda', '', '2021-05-10 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-03-27 07:30:00', 'Cimanggis', 'Selesai'),
(46, 'Shelly', 1, 4, 'video teaser wisuda', 'konsep masih dalam diskusi', '', '2021-05-05 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-03-27 07:30:00', 'Cimanggis', 'Selesai'),
(47, 'Shelly', 1, 4, 'Video anak dan keluarga wisudawan', 'kompilasi video puisi berantai dari anak, diikuti dengan slideshow foto keluarga pake watermark dan ditutup dengan kompilasi foto ucapan terima kasih dan mozaic bentuk love.\r\nbahan dari ortu, kebutuhan studio hanya untuk editing', '', '2021-05-10 00:00:00', '', '[\"Editing Video\"]', '2021-03-27 07:30:00', 'Cimanggis', 'Selesai'),
(48, 'Shelly', 1, 4, 'Pembuatan undangan digital wisuda', 'desain undangan, konsep on process', '', '2021-05-05 00:00:00', '', '[\"Desain Gambar\"]', '2021-03-27 07:30:00', 'Cimanggis', 'Selesai'),
(49, 'Shelly', 1, 2, 'Video bts guru', 'seluruh bts guru selasam BDR plus ucapan dari pak Arif', '', '2021-10-05 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-03-27 07:30:00', 'Cimanggis', 'Selesai'),
(50, 'Shelly', 1, 4, 'Kolase foto wisudawan untuk menutup prosesi tiap kelas', 'berisi kolase foto toga untuk 3 kelas TK B', '', '2021-05-10 00:00:00', '', '[\"Desain Gambar\"]', '2021-03-27 07:30:00', 'Cimanggis', 'Selesai'),
(51, 'Yeni', 2, 6, 'Permohonan file untuk cetak kop surat dan amplop surat', 'softfile untuk cetak Kop dan amplop surat Sekolah Karakter :\r\n-Kop Surat A4 \r\n- Kop Surat F4\r\n- Amplop standar Uk, 23 x 11 cm\r\n\r\ndapat dikirimkan ke email : info@sekolahkarakter.sch.id', '', '2021-03-30 00:00:00', '', '[\"Desain Gambar\"]', '2021-03-29 07:30:00', 'Tapos', 'Selesai'),
(52, 'Rani', 8, 3, 'Design ulang plang dilarang merokok', 'ganti logo dan warna sesuai dengan branding', '', '2021-04-09 00:00:00', '', '[\"Desain Gambar\"]', '2021-03-29 07:30:00', 'Cimanggis', 'Selesai'),
(55, 'Nura', 2, 3, 'HIJRAH(Hidupkan Jiwa Ramadhan dari Rumah)', 'Live zoom acara:\r\n- definisi ramadhan\r\n-launcing (klub ramadhan/ Kelas ramadhan Asyik)', '29-03-21_NASKAH_HIJRAH2.docx', '2021-04-09 00:00:00', 'Contoh bumper Hijrah: https://www.youtube.com/watch?v=c9rGeQmFydU', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-03-29 07:30:00', 'Cimanggis', 'Selesai'),
(56, 'Maulady Virdausy (Vie)', 11, 4, 'Poster/Flyer Live IG ICE PHBK', 'Digunakan untuk publikasi kegiatan Live IG dalam rangka kegiatan &quot;Get to Know ICE PHBK&quot;.', '', '2021-03-30 00:00:00', 'https://www.instagram.com/p/CLrRrEjM1TJ/?igshid=11po7irw3fhzj', '[\"Desain Gambar\"]', '2021-03-29 07:30:00', 'Cimanggis', 'Selesai'),
(57, 'Shelly', 1, 4, 'Video pembelajaran TK', 'Percobaan gempa menggunakan lego', '', '2021-04-21 00:00:00', '', '{\"2\":0}', '2021-03-30 07:30:00', 'Cimanggis', 'Selesai'),
(58, 'Ari Saptarini', 5, 3, 'Video Ibu Ratna - Seminar Minamas', 'Memotong Video seminar Minamas khusus materi bu Ratna saja untuk di share ke korlas Sekolah Karakter. (Khusus Materi Ibu Ratna saja)', '', '2021-04-06 00:00:00', '', '[\"Editing Video\"]', '2021-03-30 07:30:00', 'Cimanggis', 'Selesai'),
(59, 'Ari Saptarini', 5, 3, 'Video Mars Sekolah SBB', 'Membuat Video lagu Mars Sekolah SBB berisi foto2 SBB disertai teks lagunya', '', '2021-04-09 00:00:00', '', '[\"Editing Video\"]', '2021-03-30 07:30:00', 'Cimanggis', 'Selesai'),
(60, 'Ines', 1, 4, 'Video pembelajaran TK', 'Sentra persiapan video gempa', '', '2021-04-16 00:00:00', '', '[\"Editing Video\"]', '2021-03-30 07:30:00', 'Cimanggis', 'Selesai'),
(68, 'Ari Saptarini', 5, 4, 'Hari Peduli Autisme Sedunia - Kontent April Minggu 1', 'Kontent Sosmed IHF', '30-03-21_Hari_Peduli_Autisme_Sedunia_-_Kontent_April_Minggu_1.docx', '2021-04-01 00:00:00', '', '[\"Desain Gambar\"]', '2021-03-30 07:30:00', 'Cimanggis', 'Selesai'),
(72, 'Laysa', 1, 3, 'Video pembelajaran TK', 'English corner on in under by', '', '2021-04-16 00:00:00', '', '[\"Editing Video\"]', '2021-03-30 07:30:00', 'Cimanggis', 'Selesai'),
(73, 'Henny', 1, 4, 'Video pembelajaran TK', 'Sentra persiapan', '', '2021-04-15 00:00:00', '', '[\"Editing Video\"]', '2021-03-30 07:30:00', 'Cimanggis', 'Selesai'),
(74, 'Ari Saptarini', 5, 4, 'Hari Nelayan - Kontent Sosmed', 'Kontent Sosmed IHF \r\nHari Nelayan', '30-03-21_Ikan_dan_kapal_nelayan.docx', '2021-04-04 00:00:00', '', '[\"Desain Gambar\"]', '2021-03-30 07:30:00', 'Cimanggis', 'Selesai'),
(75, 'Liani', 2, 3, 'Video Lomba Tari SD Karakter', 'Cut video awal dan akhir yg tidak dipakai', '', '2021-04-01 00:00:00', '', '[\"Editing Video\"]', '2021-03-31 07:30:00', 'Cimanggis', 'Selesai'),
(77, 'Video HIJRAH Ramadhan', 2, 3, 'Ceramah keutamaan Ramadhan', 'Buat seperti di televisi', '', '2021-04-06 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-03-31 07:30:00', 'Cimanggis', 'Selesai'),
(78, 'video pembelajaran Hany PAI', 2, 2, 'Doa dan dzikir', 'video pembelajaran', '', '2021-04-06 00:00:00', '', 'null', '2021-03-31 07:30:00', 'Cimanggis', 'Selesai'),
(79, 'Edianna', 5, 3, 'VIDEO ANAK SUSAH MENGERJAKAN SOAL CERITA MATEMATIKA', 'Pak Bayu yang mengeshoot anak SD kelas tinggi sedang mengerjakan soal cerita matematika. Anak tersebut tampak sekali dari wajahnya kesulitan mengerjakan soal tersebut.', '', '2021-04-02 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-03-31 07:30:00', 'Tapos', 'Selesai'),
(80, 'maulana', 2, 2, 'Video pembelajaran', 'Beriman kepada malaikat', '', '2021-04-02 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-03-31 07:30:00', 'Cimanggis', 'Selesai'),
(81, 'Edianna', 5, 3, 'VIDEO HUTANG', 'Pak Bayu menshoot orang dewasa yang sering hutang. Lalu orang tersebut flashback ke masa kecilnya waktu belajar matematika gurunya mengajarkan operasi bilangan bulat (positif negatif) dengan menggunakan kata hutang.', '', '2021-04-02 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-03-31 07:30:00', 'Tapos', 'Selesai'),
(82, 'Maulana', 2, 2, 'Video pembelajaran', 'Keteladanan kisah hidup Rasulallah SAW (masa kandungan - remaja)', '', '2021-04-15 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-03-31 07:30:00', 'Cimanggis', 'Selesai'),
(83, 'Maulady Virdausy (Vie)', 11, 4, 'Poster/Flyer Live IG ICE PHBK', 'Untuk kegiatan Get to Know ICE PHBK', '', '2021-04-02 00:00:00', 'https://www.instagram.com/p/CNEfEErnFob/?igshid=dln1zwm2vznn', '[\"Desain Gambar\"]', '2021-03-31 07:30:00', 'Cimanggis', 'Selesai'),
(84, 'Rani', 8, 3, 'Foto security', 'Back ground biru ukuran 2x3, 3x4 dan 4x6 masing-masing 2 lembar dan back ground merah ukuran 4x6 sebanyak 3 lembar', '', '2021-04-01 00:00:00', '', '[\"Shoot Video\"]', '2021-04-01 07:30:00', 'Cimanggis', 'Selesai'),
(85, 'Nura', 2, 3, 'Teaser Club Ramadhan', 'video pengenalan klub ramadhan', '01-04-21_NASKAH_TEASER.docx', '2021-04-08 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-01 07:30:00', 'Cimanggis', 'Selesai'),
(86, 'Nura', 2, 3, 'Footage launcing kegiatan Ramadhan', 'Video opening dan transisi launcing kegiatan ramadhan', '01-04-21_Video_footage_acara_launcing_kegiatan_ramadhan.docx', '2021-04-07 00:00:00', 'https://www.youtube.com/watch?v=c9rGeQmFydU', '[\"Editing Video\",\"Desain Gambar\"]', '2021-04-01 07:30:00', 'Cimanggis', 'Selesai'),
(87, 'Ari Saptarini', 5, 4, 'Kontent Sosmed April', 'Deadline akan ditentukan sesuai dengan yang ada di dalam excel', '', '2021-04-12 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-01 07:30:00', 'Cimanggis', 'Selesai'),
(90, 'Trias Syaifulina', 2, 3, 'Video Countdown Wisuda SD Karakter', 'Terlampir di storyboard', '04-04-21_1__Storyboard_COUNTDOWN_Wisuda_SD_Karakter_2021.docx', '2021-05-03 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-04 07:30:00', 'Cimanggis', 'Selesai'),
(91, 'Trias Syaifulina', 2, 3, 'Video Bumper Wisuda SD Karakter', 'Terlampir di storyboard', '04-04-21_2__Storyboard_BUMPER_Wisuda_SD_Karakter_2021.docx', '2021-05-03 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-04 07:30:00', 'Cimanggis', 'Selesai'),
(92, 'Trias Syaifulina', 2, 3, 'Video Opening Wisuda SD Karakter', 'Terlampir di storyboard', '04-04-21_3__Storyboard_OPENING_Wisuda_SD_Karakter_2021.docx', '2021-05-04 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-04 07:30:00', 'Cimanggis', 'Selesai'),
(93, 'Trias Syaifulina', 2, 3, 'Video Transisi Wisuda SD Karakter', 'Terlampir di storyboard', '04-04-21_10__Storyboard_VIDEO_TRANSISI_Wisuda_SD_Karakter_2021.docx', '2021-05-04 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-04 07:30:00', 'Cimanggis', 'Selesai'),
(94, 'Trias Syaifulina', 2, 3, 'Video Isi Cerita Wisuda SD Karakter', 'Terlampir dalam storyboard', '04-04-21_20__Storyboard_LAMUNAN_Wisuda_SD_Karakter_2021.docx', '2021-05-05 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-04 07:30:00', 'Cimanggis', 'Selesai'),
(95, 'Trias Syaifulina', 2, 3, 'Video Penutup Wisuda SD Karakter', 'Terlampir dalam storyboard', '04-04-21_21__Storyboard_PENUTUP_Wisuda_SD_Karakter_2021.docx', '2021-05-06 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-04 07:30:00', 'Cimanggis', 'Selesai'),
(96, 'Trias Syaifulina', 2, 3, 'Video Credit Wisuda SD Karakter', 'Terlampir dalam storyboard', '04-04-21_22__Storyboard_CREDIT_Wisuda_SD_Karakter_2021.docx', '2021-05-06 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-04 07:30:00', 'Cimanggis', 'Selesai'),
(97, 'Edianna', 5, 3, 'VIDEO PROFIL SEKOLAH MENGINSPIRASI', 'Video penjelasan mengenai program sekolah menginspirasi, seperti video profil IHF', '', '2021-04-05 00:00:00', 'https://drive.google.com/drive/folders/1vIBsRiIe7bQGSodop-eLpO7VFDXXr-Gi?usp=sharing', '[\"Editing Video\"]', '2021-04-04 07:30:00', 'Cimanggis', 'Selesai'),
(98, 'Edianna', 5, 3, 'BUMPER SEKOLAH MENGINSPIRASI', 'Bumper untuk pergantian acara', '', '2021-04-05 00:00:00', '', '[\"Editing Video\"]', '2021-04-04 07:30:00', 'Cimanggis', 'Selesai'),
(99, 'Edianna', 5, 4, 'VIDEO TESTIMONI SEKOLAH MENGINSPIRASI', 'Kumpulan testimoni-testimoni peserta pelatihan SD Negeri Jakarta', '', '2021-04-05 00:00:00', 'https://drive.google.com/drive/folders/1vIBsRiIe7bQGSodop-eLpO7VFDXXr-Gi?usp=sharing', '[\"Editing Video\"]', '2021-04-04 07:30:00', 'Cimanggis', 'Selesai'),
(100, 'Shelly', 1, 2, 'Video pilar', 'Video pilar cerita buku sayuran untuk kambing dan kelinci.', '', '2021-04-09 00:00:00', '', '[\"Editing Video\"]', '2021-04-05 07:30:00', 'Cimanggis', 'Selesai'),
(101, 'Fahriati', 10, 3, 'Flyer Ramadhan #Nasehat Ramadhan', 'Ini untuk postingan internal IHF', '05-04-21_Konten_Ramadhan.docx', '2021-04-12 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-05 07:30:00', 'Cimanggis', 'Selesai'),
(102, 'Citra', 2, 2, 'Video Virtual Fieldtrip', 'Video tentang kunjungan ke bank sampah dan daur ulang sampah', '', '2021-04-15 00:00:00', '', '[\"Editing Video\"]', '2021-04-06 07:30:00', 'Cimanggis', 'Selesai'),
(103, 'Citra', 2, 2, 'Video Virtual Fieldtrip', 'Video kunjungan ke bank sampah dan pengolahan sampah', '', '2021-04-15 00:00:00', '', '[\"Editing Video\"]', '2021-04-06 07:30:00', 'Cimanggis', 'Selesai'),
(104, 'Hanifah', 2, 3, 'Lagu Ramadhan Tiba', 'Sinkronin minus one dan rekaman nyanyi. Semangat pak bapak MM.', '', '2021-04-08 00:00:00', '', '[\"Editing Video\"]', '2021-04-07 07:30:00', 'Cimanggis', 'Selesai'),
(105, 'yazidah', 9, 4, 'Bumper video Kajian Online IHSAN', 'Kegiatan kajian ini merupakan agenda donasi untuk santunan ramadhan dari sekolah karakter.', '07-04-21_STORY_BOARD_bumper_Ihsan.docx', '2021-04-14 00:00:00', 'https://elements.envato.com/colorful-product-promo-Y8GMGP3', '[\"Editing Video\"]', '2021-04-07 07:30:00', 'Cimanggis', 'Selesai'),
(106, 'Nura', 2, 3, 'Video penjelasan keutamaan ramadhan', 'Video diberi frame TV\r\ndiujung pojok kanan atas ada tulisan TV Karakter seperti logo TV\r\nDiakhir diberikan efek seperti TV dimatikan', '08-04-21_keutamaan_ramadhan.docx', '2021-04-08 00:00:00', '', '[\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(107, 'Tika', 9, 2, 'Foto Studio Cimanggis dan Tapos', 'Foto suasana studio Cimanggis dan/atau Tapos. \r\n- Pembicara (guru) keliatan sedang menyampaikan materi.\r\n- Tampak screen dan keyboard pengarah acara', '', '2021-04-08 00:00:00', '', 'null', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(108, 'Fahriati', 10, 6, 'Flyer Jadwal Liburan', 'Proyek ini sudah pernah dibuatin sama Fea...jadi bisa lanjut Fea aja yang buatin yaa....jadwal idul fitri dan akhir semester 2', '08-04-21_Libur_Lebaran_dan_Akhir_Semester_2.docx', '2021-04-12 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-08 07:30:00', 'Tapos', 'Selesai'),
(109, 'Nurul', 1, 4, 'Video Pembelajaran TKA', 'Kebun-Menanam Kangkung', '', '2021-04-09 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(110, 'Neneng', 1, 2, 'Video Pembelajaran TKA', 'Seni Kreasi - Membuat Tenda', '', '2021-04-06 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(111, 'Liaw', 1, 2, 'Video Pembelajaran TKA', 'Rancang Bangun-Diorama Gunung', '', '2021-04-08 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(112, 'Catur', 1, 4, 'Video Pembelajaran TKA', 'Seni Kreasi - Menjahit Pola Awan', '', '2021-04-15 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(113, 'Catur', 1, 4, 'Video Pembelajaran TKA', 'Seni Kreasi - Melipat Topi', '', '2021-04-20 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(114, 'Inez', 1, 4, 'Video Pembelajaran TKB', 'Gempa', '', '2021-04-14 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(115, 'Shelly', 1, 2, 'Video Pembelajaran TKB', 'Akting Pilar Pemimpin yang adil', '', '2021-04-09 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(116, 'Hany Maria', 2, 2, 'Video Pembelajaran SD', 'Dzikir', '', '2021-04-06 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(117, 'Hany Maria', 2, 2, 'Video Pembelajaran SD', 'Doa Setelah Sholat', '', '2021-04-06 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(118, 'Hany Maria', 2, 2, 'Video Pembelajaran SD', 'Materi Tadarus', '', '2021-04-12 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(119, 'Hany Maria', 2, 2, 'Video Pembelajaran SD', 'Materi Tadarus', '', '2021-04-12 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(120, 'Hany Maria', 2, 2, 'Video Pembelajaran SD', 'Materi Nabi Ilyas', '', '2021-05-01 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(121, 'Ryma', 2, 2, 'Video Pembelajaran SD', 'Overhead Pecahan', '', '2021-04-08 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(122, 'Cut', 2, 2, 'Video Pembelajaran SD', 'Pecahan 1', '', '2021-03-25 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(123, 'Cut', 2, 2, 'Video Pembelajaran SD', 'Pecahan 2', '', '2021-04-02 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(124, 'Awfini', 2, 2, 'English Club', 'Video Countries', '', '2021-04-05 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(125, 'Awfini', 2, 2, 'Video Pembelajaran SD', 'English Club-World Organization', '', '2021-04-12 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(126, 'Ines', 1, 4, 'Template kegiatan ramadhan tk', 'Template kegiatan ramadhan tk yang bisa diisi foto anak gitu ya', '08-04-21_IMG-20210408-WA0022.jpg', '2021-04-10 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(127, 'Vie', 11, 4, 'Video Testimoni ICE PHBK', 'Menampilkan testimoni mahasiswa ICE PHBK untuk konten media sosial ICE PHBK', '', '2021-04-13 00:00:00', 'https://www.instagram.com/p/CNWxidFnWe8/', '[\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(128, 'Vie', 11, 4, 'Poster/Flyer Live IG Get to Know ICE PHBK', 'untuk kegiatan live ig GTK ICE PHBK', '', '2021-04-09 00:00:00', 'https://www.instagram.com/p/CNTlHBgHLDR/', '[\"Desain Gambar\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(129, 'Audyna Gustia Angre', 3, 6, 'Poster', 'Poster dan Bumper untuk Acara Santunan Ramadan Sekolah Karakter', '08-04-21_Santunan_Ramadan_Mokaru.docx', '2021-04-09 00:00:00', 'https://drive.google.com/file/d/184Z8Ia7mfcPrN8s1DvR2anDHzK5bHDMH/view?usp=sharing', '[\"Desain Gambar\"]', '2021-04-08 07:30:00', 'Tapos', 'Selesai'),
(130, 'Bu Nita', 2, 4, 'Video pembelajaran kls 3', 'Bagaimana benda bisa bergerak?', '', '2021-04-13 00:00:00', '', '[\"Editing Video\"]', '2021-04-08 07:30:00', 'Cimanggis', 'Selesai'),
(131, 'Lia Widyanti', 1, 3, 'Sentra eksplorasi membuat pelangi', 'Membuat pelangi dari penyemprot tanaman', '', '2021-04-12 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-09 07:30:00', 'Cimanggis', 'Selesai'),
(134, 'Nayla', 1, 5, 'Video Pembelajaran', 'Sentra Eksplorasi - Banjir', '', '2021-04-15 00:00:00', '', '[\"Editing Video\"]', '2021-04-09 07:30:00', 'Tapos', 'Selesai'),
(135, 'Shanti', 1, 5, 'Video Pembelajaran', 'Ramadan Sholat 5 Waktu', '', '2021-04-21 00:00:00', '', '[\"Editing Video\"]', '2021-04-09 07:30:00', 'Tapos', 'Selesai'),
(136, 'Khansa', 1, 5, 'Video Pembelajaran', 'Sentra Seni Kreasi - Monster Sampah', '', '2021-04-13 00:00:00', '', '[\"Editing Video\"]', '2021-04-09 07:30:00', 'Tapos', 'Selesai'),
(137, 'Shelly', 1, 2, 'TARHIB RAMADAN', 'TARHIB RAMADAN', '', '2021-04-10 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-09 07:30:00', 'Cimanggis', 'Selesai'),
(138, 'Muhammad Halim', 11, 4, 'Tutorial pengguna laptop dan infokus', 'Pembuatan video laptop dan infokua', '', '2021-04-15 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-13 07:30:00', 'Cimanggis', 'Selesai'),
(139, 'Fahriati Rahmi', 2, 2, 'Video Pembelajaran SD', 'Agama-5 kata Ajaib', '', '2021-04-15 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-13 07:30:00', 'Cimanggis', 'Selesai'),
(140, 'Maulana', 2, 2, 'Video pembelajaran pesawat sederhana', 'Video pembelajaran pesawat sederhana', '', '2021-04-14 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-13 07:30:00', 'Cimanggis', 'Selesai'),
(141, 'Dwi litania gumelar', 2, 5, 'Tema kelas 1 SD', 'Tema 6 (Rotasi dan revolusi bumi)', '', '2021-04-16 00:00:00', '', '[\"Editing Video\"]', '2021-04-13 07:30:00', 'Tapos', 'Selesai'),
(142, 'Laysa', 1, 3, 'English video (on-in -under), &amp; video gunung berapi', 'English video:up tgl 21 april(rabu), pakai suara \'criing&quot;(kalau benda ditemukan) \r\n, video gunung berapi (26 April, senin), fokus jantung pakai lagu instrumen :)', '', '2021-04-21 00:00:00', '', '[\"Editing Video\"]', '2021-04-13 07:30:00', 'Cimanggis', 'Selesai'),
(143, 'Laysa', 1, 3, 'Video English iedp', 'Ada tambahan efek suara &quot;cringg&quot;/ tepuk tangan (saat benda ditemukan)', '', '2021-04-21 00:00:00', '', '[\"Editing Video\"]', '2021-04-13 07:30:00', 'Cimanggis', 'Selesai'),
(144, 'Laysa', 1, 2, 'Video kegiatan ramadhan, kisah Rasulullah', 'Ada alunan musik instrumen', '', '2021-04-21 00:00:00', '', '[\"Editing Video\"]', '2021-04-13 07:30:00', 'Cimanggis', 'Selesai'),
(145, 'Egen', 3, 6, 'Pembuatan desain sertifikat wisuda kelas 9', 'Desain Sertifikat dan selempang wisuda', '', '2021-04-19 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-13 07:30:00', 'Tapos', 'Selesai'),
(146, 'Shelly', 1, 2, 'Video Tarhib Ramadan TK', 'Pengenalan huruf hijaiyyah', '', '2021-04-19 00:00:00', '', '[\"Editing Video\"]', '2021-04-14 07:30:00', 'Cimanggis', 'Selesai'),
(147, 'Shanti', 1, 5, 'Video Pembelajaran', 'Sentra Seni Kreasi', '', '2021-04-14 00:00:00', '', '[\"Editing Video\"]', '2021-04-14 07:30:00', 'Tapos', 'Selesai'),
(148, 'Audyna Gustia Angre', 3, 5, 'Foto credit konser amal', 'Foto Credit Konser Amal, di desain scrapbook', '14-04-21_Screenshot_2021-04-13-20-20-28-029_com_android_chrome.jpg', '2021-04-15 00:00:00', '', '[\"Shoot Video\"]', '2021-04-14 07:30:00', 'Tapos', 'Selesai'),
(150, 'henny', 1, 3, 'video pembelajaran', 'eksplorasi uara di sekitar kita', '', '2021-04-26 00:00:00', '', '[\"Editing Video\"]', '2021-04-14 07:30:00', 'Cimanggis', 'Selesai'),
(151, 'Lia Widyanti', 1, 3, 'Keterampilan hidup', 'Keterampilan hidup pakai jaket dan lipat selimut', '', '2021-04-19 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-14 07:30:00', 'Cimanggis', 'Selesai'),
(152, 'Nurul Fitri Annisa Rokoyah', 1, 3, 'Sentra Eksplorasi-Percobaan Terjadinya Hujan', 'Video kegiatan sentra. Syuting dilakukan di rumah Jerry', '', '2021-04-23 00:00:00', '', '[\"Editing Video\"]', '2021-04-14 07:30:00', 'Cimanggis', 'Selesai'),
(153, 'Neneng Syarifah', 1, 3, 'Pilar boneka tangan', 'Pilar 6 bineka tangan tentang pantang menyerah', '', '2021-04-23 00:00:00', '', '[\"Editing Video\"]', '2021-04-14 07:30:00', 'Cimanggis', 'Selesai'),
(154, 'Vie', 11, 4, 'Poster/Flyer Live IG ICE PHBK', 'untuk kegiatan get to know ice phbk', '', '2021-04-17 00:00:00', 'https://www.instagram.com/p/CNoDMq3HwJQ/', '[\"Desain Gambar\"]', '2021-04-15 07:30:00', 'Cimanggis', 'Selesai'),
(155, 'Nurul Fitri Annisa Rokoyah', 1, 4, 'Pilar TK', 'Pilar pantang menyerah pakai buku pilar', '', '2021-04-23 00:00:00', '', '[\"Editing Video\"]', '2021-04-15 07:30:00', 'Cimanggis', 'Selesai'),
(156, 'Nurul Fitri Annisa Rokoyah', 1, 2, 'Pembelajaran TK A', 'Sentra seni kreasi-mencetak (melukis) daun', '', '2021-04-20 00:00:00', '', '[\"Editing Video\"]', '2021-04-15 07:30:00', 'Cimanggis', 'Selesai'),
(157, 'Devi Pratiwi', 3, 2, 'Wisuda SMP', 'Wisuda SMP', '15-04-21_Story_Board_Wisuda_SMP.docx', '2021-05-28 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-04-15 07:30:00', 'Cimanggis', 'Selesai'),
(158, 'Ines', 1, 3, 'Video pembelajaran: sentra eksplorasi membuat playdough', 'Pas gw lagi nguleni, dipercepat aja', '', '2021-04-28 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-15 07:30:00', 'Cimanggis', 'Selesai'),
(159, 'Ines', 1, 3, 'Kegiatan ramadan: solat', 'Ada video yang perlu disisip ini linknya https://youtu.be/Zom6VBIY1I4', '', '2021-04-23 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-15 07:30:00', 'Cimanggis', 'Selesai'),
(160, 'catur', 1, 3, 'sentra seni kreasi', 'sentra seni kreasi , membuat bedug / gendang', '', '2021-04-30 00:00:00', '', '[\"Editing Video\"]', '2021-04-15 07:30:00', 'Cimanggis', 'Selesai'),
(161, 'Tim TK A', 1, 2, 'Pilar TK', 'Acting pilar pantang menyerah', '', '2021-04-27 00:00:00', '', '[\"Editing Video\"]', '2021-04-15 07:30:00', 'Cimanggis', 'Selesai'),
(162, 'catur', 1, 2, 'baca buku cerita', 'pilar , baca buku cerita (pantang menyerah)', '', '2021-04-29 00:00:00', '', '[\"Editing Video\"]', '2021-04-15 07:30:00', 'Cimanggis', 'Selesai'),
(163, 'Liaw', 1, 4, 'Pilar pantang menyerah', 'membaca buku pilar', '', '2021-04-22 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-15 07:30:00', 'Cimanggis', 'Selesai'),
(164, 'ines', 1, 3, 'VIDEO KLIP: RAMADAN', 'ada di story board', '15-04-21_STORY_BOARD.docx', '2021-04-19 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-04-15 07:30:00', 'Cimanggis', 'Selesai'),
(165, 'cut', 2, 2, 'video pembelajaran sd', 'Video perkalian dan pembagian pecahan', '', '2021-04-19 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-16 07:30:00', 'Cimanggis', 'Selesai'),
(167, 'RINI', 2, 2, 'Video Pembelajaran SD', 'Siklus Air', '', '2021-04-21 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-16 07:30:00', 'Cimanggis', 'Selesai'),
(168, 'RINI', 2, 2, 'Video Pembelajaran SD', 'Peristiwa Alam', '', '2021-04-21 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-16 07:30:00', 'Cimanggis', 'Selesai'),
(170, 'Siti', 4, 5, 'Editing video', 'Story telling SMA', '', '2021-04-20 00:00:00', '', '[\"Editing Video\"]', '2021-04-16 07:30:00', 'Tapos', 'Selesai'),
(171, 'Shofie', 2, 5, 'Video Pembelajaran', 'Agama Islam Kelas 1', '', '2021-04-19 00:00:00', '', '[\"Editing Video\"]', '2021-04-16 07:30:00', 'Tapos', 'Selesai'),
(172, 'Edianna Putri', 5, 3, 'THUMBNAIL KICK OFF', 'Logo IHF kiri atas, logo SBB kanan atas.\r\n\r\nTulisan di tengah:\r\nKick Off (besar banget)\r\nProgram Semai Benih Bangsa Akbar (agak besar)\r\nKegiatan Meningkatkan Kualitas Guru untuk Membangun Tumbuh Kembang dan Karakter Siswa PAUD/TK Dengan Model Pendidikan Holistik Berbasis Karakter (kecil)\r\n\r\nUkuran slide 16:9', '', '2021-04-19 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-16 07:30:00', 'Cimanggis', 'Selesai'),
(174, 'Edianna Putri', 5, 3, 'BUMPER KICK OFF', 'Musik bumper\r\nVideo dengan tulisan yang sama seperti thumbnail\r\n\r\nLogo IHF kiri dan SBB kanan di tengah atas\r\nTulisan di tengah:\r\nKick Off (besar)\r\nProgram Semai Benih Bangsa Akbar (agak besar)\r\nKegiatan Meningkatkan Kualitas Guru untuk Membangun Tumbuh Kembang dan Karakter Siswa PAUD/TK Dengan Model Pendidikan Holistik Berbasis Karakter (kecil)\r\n\r\nGambar peta Indonesia yang bergerak', '', '2021-04-19 00:00:00', '', '[\"Editing Video\"]', '2021-04-16 07:30:00', 'Cimanggis', 'Selesai'),
(175, 'Edianna Putri', 5, 3, 'VIDEO COUNTDOWN KICK OFF', 'Logo IHF\r\nLogo SBB\r\nTulisan:\r\nKICK OFF\r\nProgram Semai Benih Bangsa Akbar\r\nKegiatan Meningkatkan Kualitas Guru untuk Membangun Tumbuh Kembang dan Karakter Siswa PAUD/TK Dengan Model Pendidikan Holistik Berbasis Karakter\r\n\r\nPeta Indonesia\r\n\r\nMusik seperti opening Parenting Akbar yang ada foto IBN, Pak Nadiem, dll. atau seperti Minamas', '', '2021-04-19 00:00:00', '', '[\"Editing Video\"]', '2021-04-16 07:30:00', 'Cimanggis', 'Selesai'),
(177, 'Triani', 3, 6, 'Ucapan Selamat Menempuh Ujian', 'Logo sekolah, foto siswa kelas 9 yg sesuai, ucapan selamat menempuh ujian sekolah', '19-04-21_FORM_PEMESANAN_DESAIN_ucapan_selamat_ujian_sekolah-Triani.docx', '2021-04-19 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-19 07:30:00', 'Tapos', 'Selesai'),
(178, 'shelly', 1, 2, 'Video pembelajaran', 'percobaan gunung meletus', '', '2021-04-23 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-19 07:30:00', 'Cimanggis', 'Selesai'),
(179, 'shelly', 1, 2, 'video pilar', 'video pilar bijak', '', '2021-04-28 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-19 07:30:00', 'Cimanggis', 'Selesai'),
(180, 'Andriansyah Adha Pratama', 2, 3, 'Pengolahan Data: Median', 'Video pembelajaran matematika kelas 5', '', '2021-04-22 00:00:00', '', '[\"Editing Video\"]', '2021-04-19 07:30:00', 'Cimanggis', 'Selesai'),
(181, 'ines', 1, 2, 'video pilar tk b', 'pilar bijak konsep bijak (LK pilar)', '', '2021-04-28 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-19 07:30:00', 'Cimanggis', 'Selesai'),
(182, 'henny', 1, 3, 'pilar bijak henny boneka tangan', 'pilar bijak boneka tangan kodi dan gebi', '', '2021-04-26 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-19 07:30:00', 'Cimanggis', 'Selesai'),
(183, 'Laysa', 1, 3, 'Cerita pilar Bijak \'Barney\'', '-lagu pilar \'anak bijak\' di akhir, closing setelah bu laysa tepuk pilar  bijak', '', '2021-04-27 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-19 07:30:00', 'Cimanggis', 'Selesai'),
(185, 'Edianna Putri', 5, 3, 'VIDEO OPENING KICK OFF', 'Menggunakan video opening gebyar 20 tahun IHF\r\nBeberapa foto dan tulisan diganti disesuaikan dengan acara kick off\r\nBagian paling belakang video diganti dengan bagian paling akhir bumper', '', '2021-04-21 00:00:00', 'https://drive.google.com/drive/folders/1o4KQoTUE672AemaDgXTwhvGAcY6GVu9f?usp=sharing', '[\"Editing Video\"]', '2021-04-19 07:30:00', 'Cimanggis', 'Selesai'),
(186, 'Dwi Untary', 4, 5, 'sounding santunan', 'sounding santunan', '', '2021-04-15 00:00:00', '', '[\"Editing Video\"]', '2021-04-20 07:30:00', 'Tapos', 'Selesai'),
(187, 'Nayla', 1, 5, 'Video Pembelajaran', 'Pilar 1 Bersyukur', '', '2021-04-16 00:00:00', '', '[\"Editing Video\"]', '2021-04-20 07:30:00', 'Tapos', 'Selesai'),
(188, 'singgih', 1, 5, 'Video Pembelajaran', 'Pilar 1 Bersyukur', '', '2021-04-19 00:00:00', '', '[\"Editing Video\"]', '2021-04-20 07:30:00', 'Tapos', 'Selesai'),
(189, 'singgih', 1, 5, 'Video Pembelajaran', 'Sentra Seni Kreasi', '', '2021-04-19 00:00:00', '', '[\"Editing Video\"]', '2021-04-20 07:30:00', 'Tapos', 'Selesai'),
(190, 'singgih', 1, 5, 'Video Pembelajaran', 'Sentra', '', '2021-04-20 00:00:00', '', '[\"Editing Video\"]', '2021-04-20 07:30:00', 'Tapos', 'Selesai'),
(191, 'Maulana', 2, 2, 'Kisah Walisongo', 'Kisah Walisongo', '', '2021-04-29 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-20 07:30:00', 'Cimanggis', 'Selesai'),
(192, 'Maulana', 2, 2, 'Kisah Sahabat Rasulallah Al-Qomah', 'Pentingnya Keridhoan Orang Tua', '', '2021-04-23 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-20 07:30:00', 'Cimanggis', 'Selesai'),
(193, 'Vie', 11, 4, 'Video Testimoni ICE PHBK', 'untuk keperluan get to know ice phbk (postingan IG)', '', '2021-04-23 00:00:00', 'https://www.instagram.com/p/CNy_GzantAo/', '[\"Editing Video\"]', '2021-04-20 07:30:00', 'Cimanggis', 'Selesai'),
(194, 'Nayla', 1, 5, 'Video Pembelajaran', 'Sentra Seni Kreasi', '', '2021-04-20 00:00:00', '', '[\"Editing Video\"]', '2021-04-20 07:30:00', 'Tapos', 'Selesai'),
(195, 'khansa', 1, 5, 'Video Pembelajaran', 'Pilar 1 Bersyukur', '', '2021-04-20 00:00:00', '', '[\"Editing Video\"]', '2021-04-20 07:30:00', 'Tapos', 'Selesai'),
(196, 'Maes', 2, 5, 'Video Pembelajaran', 'Baba Gorila', '', '2021-04-21 00:00:00', '', '[\"Editing Video\"]', '2021-04-21 07:30:00', 'Tapos', 'Selesai'),
(197, 'Nurma', 4, 5, 'Video Acara Santunan', 'Mahasiswa/i', '', '2021-04-21 00:00:00', '', '[\"Editing Video\"]', '2021-04-21 07:30:00', 'Tapos', 'Selesai'),
(198, 'Trias Syaifulina', 2, 3, 'Undangan Wisuda SD Karakter', 'Desain gambar undangan untuk BC WA ke orang tua', '', '2021-05-03 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-21 07:30:00', 'Cimanggis', 'Selesai'),
(200, 'Trias Syaifulina', 2, 3, 'Video Teaser Wisuda SD Karakter', 'Video teaser seperti trailer film bisa di modifikasi dari bumper kurleb 1 menit', '', '2021-05-03 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-21 07:30:00', 'Cimanggis', 'Selesai'),
(201, 'Trias Syaifulina', 2, 3, 'Video Kenangan 1 Wisuda SD Karakter', 'Video kenangan kegiatan di sekolah dari kelas 1 sampai kelas 6 ditambah selipan adegan pak Andri dan Dziqry', '21-04-21_12__Storyboard_KENANGAN_1_Wisuda_SD_Karakter_2021.docx', '2021-05-05 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-21 07:30:00', 'Cimanggis', 'Selesai'),
(202, 'Trias Syaifulina', 2, 3, 'Flyer Countdown Wisuda SD Karakter', 'Desain flyer countdown H-3, H-2, H-1, bisa dimodifikasi dari desain undangan', '', '2021-05-03 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-21 07:30:00', 'Cimanggis', 'Selesai'),
(203, 'Devi Pratiwi', 3, 2, 'Opening Film (Animasi)', 'Dibuka dengan tulisan “ Eleternal Present Limitless” lalu ada seseorang yang membuka pintu kemudian masuk kegerbang sekolah, lalu berjalan kelorong kelas setelah itu dikelas sedang berlangsung KBM, dan guru tersebut mengambar bendera di papan tulis kemudian dari gambar bendera tersebut menzoom  dan berpindah scene ke kegiatan upacara yang sedang berlangsung, lalu menghadap kanan dan berubah scene ke kantin dan selesai. \r\n\r\nDurasi 1 menit\r\nvideo ini mengapa dibutuhkan lebih awal karena berkaitan dengan projek selanjutnya yaitu Film yang akan di buat oleh Tim SMP, sehingga diharapkan untuk openingnya sudah selesai di tanggal 30 April 2021. Terimakasih', '21-04-21_Projek_Wisuda_SMP_(MM).docx', '2021-04-30 00:00:00', 'https://www.youtube.com/watch?v=clD3nfQ38Sc', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-04-21 07:30:00', 'Cimanggis', 'Selesai'),
(204, 'Devi Pratiwi', 3, 2, 'Transisi Film', '• Tulisan “tahun 2018” (Latar Gedung sekolah pekapuran)\r\n• Tulisan “tahun 2019” (Latar Gedung sekolah pekapuran dengan angle berbeda )\r\n• Tulisan “tahun 2020” (Latar Gedung sekolah Podomoro)\r\n• Tulisan “tahun 2021” (Latar Lorong kelas 9 gedung podomoro)\r\n\r\nmasing-masing transisi durasinya 5-10 detik\r\nvideo ini mengapa dibutuhkan lebih awal karena berkaitan dengan projek selanjutnya yaitu Film yang akan di buat oleh Tim SMP, sehingga diharapkan untuk openingnya sudah selesai di tanggal 30 April 2021. Terimakasih', '21-04-21_Projek_Wisuda_SMP_(MM)1.docx', '2021-04-30 00:00:00', 'https://drive.google.com/file/d/1simo4lC4D4_F2iQiJ8DIof3nVMB8mhHm/view?usp=sharing', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-04-21 07:30:00', 'Cimanggis', 'Selesai'),
(205, 'Devi Pratiwi', 3, 2, 'Bumper wisuda', 'Bumper bertuliskan  &quot;SMP KARAKATER\'S Graduation&quot; yang muncul secara satu persatu. per kata \r\ndurasi  5 detik', '21-04-21_Projek_Wisuda_SMP_(MM)2.docx', '2021-05-07 00:00:00', '', '[\"Editing Video\",\"Desain Gambar\"]', '2021-04-21 07:30:00', 'Cimanggis', 'Selesai'),
(206, 'Devi Pratiwi', 3, 2, 'Shooting Video Pemutaraan menuju gala premier  film Gala', 'Alur cerita videonya : \r\n? Zoom tiket gala premier film \r\n? 2 Orang chattingan janjian untuk datang ke acara gala premier\r\n? Bersiap untuk berangkat + bercermin\r\n? Tiba2 temannya mengabarkan ada info gala premiernya berubah menjadi online karena covid\r\n? Cek email\r\nLayar gelap\r\n\r\nDurasi 3 menit', '21-04-21_Projek_Wisuda_SMP_(MM)3.docx', '2021-05-07 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-04-21 07:30:00', 'Cimanggis', 'Selesai'),
(207, 'Devi Pratiwi', 3, 2, 'Bumper Gala premier film ala Disney', 'Alur cerita videonya : \r\n? Zoom tiket gala premier film \r\n? 2 Orang chattingan janjian untuk datang ke acara gala premier\r\n? Bersiap untuk berangkat + bercermin\r\n? Tiba2 temannya mengabarkan ada info gala premiernya berubah menjadi online karena covid\r\n? Cek email\r\nLayar gelap\r\nFlip book yang terbuka berisi momen mereka (momennya diambil dari foto mereka saat kelas 7-9 dan bentuk fotonya jadi berupa sketsa item putih, seperti yang di bawah ini)  dan berakhir di bagian cover bertuliskan “eleven’s story board” yang munculnya satu persatu perhuruf hingga lengkap. Seperti contoh video ini \r\nhttps://youtu.be/BZE3QX3qNLE /  \r\nDurasi 1 menit \r\nuntuk gambar sketsa ada di storyboard yang kami lampirkan', '21-04-21_Projek_Wisuda_SMP_(MM)4.docx', '2021-05-07 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-04-21 07:30:00', 'Cimanggis', 'Selesai'),
(208, 'Shanti', 1, 5, 'Video Pembelajaran', 'Pilar 1 Bersyukur', '', '2021-04-21 00:00:00', '', '[\"Editing Video\"]', '2021-04-21 07:30:00', 'Tapos', 'Selesai'),
(209, 'Adis', 2, 6, 'Sertifikat Wisuda SD Karakter', 'Membuat desain sertifikat wisuda SD Karakter', '22-04-21_SERTIFIKAT_WISUDA_SD.pdf', '2021-05-03 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-22 07:30:00', 'Tapos', 'Selesai'),
(210, 'catur', 1, 2, 'sentra olah raga', 'yg dilpangan olah raga atas', '', '2021-05-05 00:00:00', '', '[\"Editing Video\"]', '2021-04-22 07:30:00', 'Cimanggis', 'Selesai'),
(211, 'Neneng Syarifah', 1, 2, 'eksplorasi api', 'percobaan memadamkan api', '', '2021-05-03 00:00:00', '', '[\"Editing Video\"]', '2021-04-22 07:30:00', 'Cimanggis', 'Selesai'),
(212, 'khansa', 1, 5, 'Video Pembelajaran', 'Sentra Eksplorasi Simulasi Gempa', '', '2021-04-22 00:00:00', '', '[\"Editing Video\"]', '2021-04-22 07:30:00', 'Tapos', 'Selesai'),
(213, 'Shanti', 1, 5, 'Video Pembelajaran', 'video pembelajaran', '', '2021-04-22 00:00:00', '', '[\"Editing Video\"]', '2021-04-22 07:30:00', 'Tapos', 'Selesai'),
(214, 'Ryma Maziyah Arsy', 2, 3, 'Video Agama Islam - Shiroh Nabi Muhammad', 'tambah musik pengiring dan ada video ini setelah salam penutup yaa pak. berikut folder videonya Y:\\0. SEKOLAH KARAKTER\\KARAKTER SCHOOL\\Folder Guru\\Ryma\\bahan ajar\\rindu muhammadku', '', '2021-04-26 00:00:00', '', '[\"Editing Video\"]', '2021-04-22 07:30:00', 'Cimanggis', 'Selesai'),
(215, 'Ryma Maziyah Arsy', 2, 3, 'Video Agama Islam - Dzikir sesudah sholat', 'ditambah video yaa pak. videonya ada disini Y:\\0. SEKOLAH KARAKTER\\KARAKTER SCHOOL\\Folder Guru\\Ryma\\bahan ajar\\Nussa_AyoBerdzikir', '22-04-21_Story_board_-_Dzikir_setelah_sholat.docx', '2021-05-11 00:00:00', '', '[\"Editing Video\"]', '2021-04-22 07:30:00', 'Cimanggis', 'Selesai'),
(216, 'Ryma Maziyah Arsy', 2, 3, 'Video Agama Islam - Do\'a sesudah sholat', 'ditambah video yaa pak. videonya ada di folder ini. terima kasiii\r\n\r\nY:\\0. SEKOLAH KARAKTER\\KARAKTER SCHOOL\\Folder Guru\\Ryma\\bahan ajar\\KISAH TELADAN AMALAN TIGA PEMUDA', '22-04-21_Story_board_-_Doa_setelah_sholat.docx', '2021-05-21 00:00:00', '', '[\"Editing Video\"]', '2021-04-22 07:30:00', 'Cimanggis', 'Selesai'),
(217, 'Riska Rahma Eka Putri', 1, 5, 'Kurma', 'Kolase Masjid-Kartu Ucapan Idul Fitri', '', '2021-04-26 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-23 07:30:00', 'Tapos', 'Selesai'),
(218, 'dwi', 2, 5, 'Video Pembelajaran', 'Hijrah', '', '2021-04-24 00:00:00', '', '[\"Editing Video\"]', '2021-04-24 07:30:00', 'Tapos', 'Selesai'),
(219, 'rara', 2, 5, 'Video Pembelajaran', 'Bentuk Energi', '', '2021-04-24 00:00:00', '', '[\"Editing Video\"]', '2021-04-24 07:30:00', 'Tapos', 'Selesai'),
(220, 'Mala', 2, 2, 'Video Pembelajaran SD', 'video 1= Hemat energi\r\nVideo 2 = Cerita Angin Utara dan matahari', '', '2021-04-28 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-26 07:30:00', 'Cimanggis', 'Selesai'),
(221, 'Mala', 2, 2, 'Video Pembelajaran SD', 'Video = cerita Angin Utara dan matahari', '', '2021-04-28 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-26 07:30:00', 'Cimanggis', 'Selesai'),
(222, 'shelly', 1, 2, 'Video pembelajaran TK pilar', 'Pilar akting anak yang bijak', '', '2021-04-30 00:00:00', '', '[\"Editing Video\"]', '2021-04-26 07:30:00', 'Cimanggis', 'Selesai'),
(223, 'Fakhri', 2, 6, 'Sertifikat Hijrah', 'Sertifikat sebagai ucapan terimakasih sudah mengikuti rangkaian kegiatan HIJRAH selama bulan Ramadhan.', '26-04-21_FORM_PEMESANAN_DESAIN_SD_Karakter.docx', '2021-05-04 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-26 07:30:00', 'Tapos', 'Selesai'),
(225, 'Fajar', 3, 6, 'Selempang Wisuda', 'Nama dan Kategori', '', '2021-04-28 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-27 07:30:00', 'Tapos', 'Selesai'),
(226, 'Lili Anggraeni', 6, 15, 'Flayer IG Toko', 'Flayer untuk IG Toko selama Bulan Mei 2021', '', '2021-04-30 00:00:00', 'abc', '[\"Desain Gambar\"]', '2021-04-27 07:30:00', 'Cimanggis', 'Selesai'),
(227, 'Khansa', 1, 6, 'Video Pembelajaran', 'Sentra Seni Kreasi - membuat Gunung Berapi dari Playdough', '', '2021-04-28 00:00:00', '', '[\"Editing Video\"]', '2021-04-27 07:30:00', 'Tapos', 'Selesai'),
(228, 'Nayla', 1, 5, 'Video Pembelajaran', 'Kurma Kartu Ucapan Idulfitri', '', '2021-04-27 00:00:00', '', '[\"Editing Video\"]', '2021-04-27 07:30:00', 'Tapos', 'Selesai'),
(229, 'Nayla', 1, 5, 'Sentra Eksplorasi', 'Percobaan gunung berapi', '', '2021-04-29 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-28 07:30:00', 'Tapos', 'Selesai'),
(230, 'Nayla', 1, 5, 'Sentra Eksplorasi', 'Percobaan gunung berapi', '', '2021-04-29 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-28 07:30:00', 'Tapos', 'Selesai'),
(231, 'ARI SAPTARINI', 5, 4, 'Kontent Sosmed Mei', 'Kontent untuk sosial media IHF dan ICE PHBK Bulan Mei 2021', '', '2021-05-01 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-28 07:30:00', 'Cimanggis', 'Selesai'),
(233, 'Yulia Pratiwi', 2, 2, 'Soft File Cap Legalisir Ijazah', 'Cap untuk legalisir ijazah, sama dengan yang sebelumnya hanya ganti nama kepsek. Soft file dan font apa perlu disesuaikan dengan branding IHF?', '28-04-21_1619589351874536485329621984635.jpg', '2021-05-06 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-28 07:30:00', 'Cimanggis', 'Selesai'),
(234, 'Hana Fauziah', 2, 6, 'Sertifikat komputer dan bahasa inggris', 'Pembuatan sertifikat komputer dan bahasa inggris kelas 6. Jumlah siswa sebanyak 66 siswa. Terlampir list nama siswa pada lampiran. format sertifikat disesuaikan dengan format pada tahun lalu.', '', '2021-06-14 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-28 07:30:00', 'Tapos', 'Selesai'),
(235, 'Laysa, ms', 1, 2, 'Storytelling \'odd one out\'', 'Over head camera', '', '2021-05-05 00:00:00', '', '[\"Editing Video\"]', '2021-04-29 07:30:00', 'Cimanggis', 'Selesai'),
(236, 'singgih', 1, 5, 'Video Pembelajaran', 'Video Pembelajaran', '', '2021-04-29 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-29 07:30:00', 'Tapos', 'Selesai'),
(237, 'Ines', 1, 2, 'Sentra eksplorasi: udara pada tumbuhan', 'Studio 2', '', '2021-04-22 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-29 07:30:00', 'Cimanggis', 'Selesai'),
(238, 'ines', 1, 2, 'Video pembelajaran', 'sentra eksplorasi menanam toge', '', '2021-05-06 00:00:00', '', '[\"Editing Video\"]', '2021-04-29 07:30:00', 'Cimanggis', 'Selesai'),
(239, 'henny', 1, 2, 'Video pembelajaran', 'sentra seni kreasi membuat layang-layang', '', '2021-05-06 00:00:00', '', '[\"Editing Video\"]', '2021-04-29 07:30:00', 'Cimanggis', 'Selesai'),
(240, 'Hernis', 2, 6, 'Cover Buku Klub Menulis', 'tulisan Klub Menulis diperbesar dan ditambah anak sedang mengetik', '', '2021-05-03 00:00:00', '', '[\"Desain Gambar\"]', '2021-04-30 07:30:00', 'Tapos', 'Selesai'),
(241, 'singgih', 1, 5, 'Video Pembelajaran', 'Kurma', '', '2021-05-03 00:00:00', '', '[\"Editing Video\"]', '2021-04-30 07:30:00', 'Tapos', 'Selesai'),
(242, 'singgih', 1, 6, 'Video Pembelajaran', 'Sentra', '', '2021-05-03 00:00:00', '', '[\"Editing Video\"]', '2021-04-30 07:30:00', 'Tapos', 'Selesai'),
(243, 'khansa', 1, 5, 'Video Pembelajaran', 'Sentra', '', '2021-04-30 00:00:00', '', '[\"Editing Video\"]', '2021-04-30 07:30:00', 'Tapos', 'Selesai'),
(244, 'Nayla', 1, 5, 'Video Pembelajaran', 'Sentra', '', '2021-05-03 00:00:00', '', '[\"Editing Video\"]', '2021-04-30 07:30:00', 'Tapos', 'Selesai'),
(245, 'Puput', 1, 5, 'Video Pembelajaran', 'Sentra', '', '2021-05-03 00:00:00', '', '[\"Editing Video\"]', '2021-04-30 07:30:00', 'Tapos', 'Selesai'),
(246, 'Ilham', 2, 2, 'Video Pembelajaran SD', 'Energi', '', '2021-04-30 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-30 07:30:00', 'Cimanggis', 'Selesai'),
(247, 'Inez', 1, 2, 'Video Pembelajaran TKB', 'Membuat Kincir Angin', '', '2021-05-03 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-30 07:30:00', 'Cimanggis', 'Selesai'),
(248, 'Inez', 1, 2, 'Video Pembelajaran TKB', 'Akting Pilar Bijak', '', '2021-05-05 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-30 07:30:00', 'Cimanggis', 'Selesai'),
(249, 'Nayla', 1, 5, 'Sentra Eksplorasi', 'Udara di sekitar kita (percobaan kipas-kipas benda)', '', '2021-05-02 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-30 07:30:00', 'Tapos', 'Selesai'),
(250, 'Nayla', 1, 5, 'Sentra', 'Membuat kincir angin', '', '2021-05-04 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-30 07:30:00', 'Tapos', 'Selesai'),
(251, 'Nayla', 1, 5, 'Sentra', 'Persiapan: Melanjutkan cerita berseri', '', '2021-05-05 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-30 07:30:00', 'Tapos', 'Selesai'),
(252, 'Khansa', 1, 5, 'Sentra', 'Eksplorasi: Pengamatan pernapasan tumbuhan', '', '2021-05-10 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-30 07:30:00', 'Tapos', 'Selesai'),
(253, 'Khansa', 1, 5, 'Literasi', 'Baca buku Selendang Bening', '', '2021-05-10 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-30 07:30:00', 'Tapos', 'Selesai'),
(254, 'Khansa', 1, 5, 'Sentra', 'Seni kreasi membuat layang-layang', '', '2021-05-11 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-04-30 07:30:00', 'Tapos', 'Selesai'),
(256, 'Shanti', 1, 5, 'Video Pembelajaran', 'IEDP Story Telling', '', '2021-05-04 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-04 07:30:00', 'Tapos', 'Selesai'),
(257, 'Shanti', 1, 5, 'Video Pembelajaran', 'Sentra olahraga', '', '2021-05-04 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-04 07:30:00', 'Tapos', 'Selesai'),
(258, 'Yulia Pratiwi', 2, 6, 'Cover Raport Semester 2 Sd Cimanggis dan Tapos', 'Cover Raport Pdf sama seperti semester 1 hanya edit tulisan', '', '2021-05-11 00:00:00', '', '[\"Desain Gambar\"]', '2021-05-05 07:30:00', 'Cimanggis', 'Selesai'),
(259, 'ARI SAPTARINI', 5, 3, 'Edit Video Ibu Ratna', 'Memotong bagian video khusus bu Ratna mengisi materi saja \r\nhttps://youtu.be/NfS_ZPRaeBA\r\nada di sini ya pak kegiatan kick offnya', '', '2021-05-25 00:00:00', 'https://drive.google.com/file/d/1MTsakg8aUsuOa_wGgsbRBQBw9g7TUnRQ/view?usp=sharing', '[\"Editing Video\"]', '2021-05-06 07:30:00', 'Cimanggis', 'Selesai'),
(260, 'Dewi Rakhma Indirani', 5, 3, 'Design Kartu Ucapan Idul Fitri', 'Design e-card ucapan Idul Fitri untuk dikirim via email/WA kepada sponsor/mitra IHF', '', '2021-05-10 00:00:00', 'https://drive.google.com/drive/folders/1kN2tbldOTDU_-fs0ZJW_iePKBUrsYiUn?usp=sharing', '[\"Desain Gambar\"]', '2021-05-07 07:30:00', 'Cimanggis', 'Selesai'),
(261, 'Anita Fitriasari', 5, 2, 'twibbone untuk SBB', '1. Selamat hari raya idul fitri 1442H &quot;mohon maaf lahir dan bathin&quot;\r\n2. &quot;Minal aidin wal faidzin mohon maaf lahir &amp; bathin&quot; SELAMAT HARI RAYA IDUL FITRI 1442H\r\n3. &quot;Taqobballahu minna wa minkum shiyamana wa shiyamakum&quot; Selamat idul fitri 1442 H Minalaidin  Wal Faizin, Mohon Maaf Lahir dan Bathin.', '', '2021-05-11 00:00:00', '', 'null', '2021-05-10 07:30:00', 'Cimanggis', 'Selesai'),
(262, 'Neneng Syarifah', 1, 2, 'kreativitas bebek', 'membuat bebek dari origami', '', '2021-06-02 00:00:00', '', '[\"Shoot Video\"]', '2021-05-10 07:30:00', 'Cimanggis', 'Selesai'),
(263, 'Nurul Fitri AR', 1, 2, 'Video pembelajaran TK A Sentra', 'Sentra Seni Kreasi Tema API, membuat APAR', '', '2021-05-21 00:00:00', '', '[\"Editing Video\"]', '2021-05-10 07:30:00', 'Cimanggis', 'Selesai'),
(264, 'Ines', 1, 5, 'Video pembelajaran: tema kreativitas', 'Dahlan studio tapos\r\nKegiatan kolase bunga matahari', '', '2021-06-03 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-05-10 07:30:00', 'Tapos', 'Selesai'),
(265, 'Ines', 1, 5, 'Video pembelajaran: tema kreativitas', 'Dahlan studio tapos\r\nKegiatan melukis dengan metode tiup sedotan', '', '2021-06-03 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-05-10 07:30:00', 'Tapos', 'Selesai'),
(266, 'henny herlina', 1, 5, 'Kreasi cetakan tangan kepiting', 'menbuat cetakan tangan bentuk kepiting', '', '2021-05-27 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-10 07:30:00', 'Tapos', 'Selesai'),
(267, 'henny herlina', 1, 5, 'membuat kirigami kupu kupu', 'membuat kirigami kupu kupu dari kertas origami', '', '2021-05-27 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-10 07:30:00', 'Tapos', 'Selesai');
INSERT INTO `pengajuan` (`id`, `nama`, `id_departemen`, `id_pegawai`, `nama_project`, `deskripsi`, `storyboard`, `target_project`, `link`, `id_jenis_project`, `waktu_pengajuan`, `tempat`, `status`) VALUES
(268, 'henny herlina', 1, 5, 'membuat ikan dari piring kertas', 'membuat ikan dari piring kertas di tempel buletan origami', '', '2021-05-27 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-10 07:30:00', 'Tapos', 'Selesai'),
(269, 'Shelly', 1, 5, 'kolase bunga dari biji bijian', 'membuat kolase biji bijian bentuk bunga', '', '2021-05-28 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-10 07:30:00', 'Tapos', 'Selesai'),
(270, 'Laysa', 1, 5, 'Video English \'the storm whale\'', '- bercerita dgn buku \'the storm whale\'\r\n-ada tambahan suara deburan ombak kecil (saat ada gambar pantai)', '', '2021-05-25 00:00:00', '', '[\"Editing Video\"]', '2021-05-10 07:30:00', 'Tapos', 'Selesai'),
(271, 'Laysa', 1, 5, '&quot;Video English: the caterpillar with shoes\'', '- film kartun \'caterpillar\' dikirim via WA \r\n- setelah closing ada lagu \'butterfly, ladybug\'', '', '2021-05-28 00:00:00', '', '[\"Editing Video\"]', '2021-05-10 07:30:00', 'Tapos', 'Selesai'),
(272, 'Laysa', 1, 5, '&quot;Video English: the caterpillar with shoes\'', '- film kartun \'caterpillar\' dikirim via WA \r\n- setelah closing ada lagu \'butterfly, ladybug\'', '', '2021-05-28 00:00:00', '', '[\"Editing Video\"]', '2021-05-10 07:30:00', 'Tapos', 'Selesai'),
(273, 'Riris', 1, 5, 'Pekan Kreativitas 2', 'Sentra Seni Kreasi Membuat Origami Eskrim', '', '2021-06-10 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-11 07:30:00', 'Tapos', 'Selesai'),
(274, 'Shanti', 1, 5, 'Review Pilar K4 Kebersihan', 'Buku Pilar', '', '2021-05-21 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-11 07:30:00', 'Tapos', 'Selesai'),
(275, 'Singgih', 1, 5, 'Review Pilar K4 Kebersihan', 'Buku Cerita Kuman', '', '2021-05-24 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-11 07:30:00', 'Tapos', 'Selesai'),
(276, 'Shanti', 1, 5, 'Sentra Seni Kreasi', 'Membuat Ayam dengan Teknik Handprint', '', '2021-06-09 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-11 07:30:00', 'Tapos', 'Selesai'),
(277, 'Shanti', 1, 5, 'Sentra Seni Kreasi', 'Membuat Gelang', '', '2021-06-16 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-11 07:30:00', 'Tapos', 'Selesai'),
(278, 'Lili Anggraeni', 6, 15, 'Design Promo Toko', 'Design untuk promo toko Back To School Juni 2021', '', '2021-05-24 00:00:00', '', '[\"Desain Gambar\"]', '2021-05-11 07:30:00', 'Cimanggis', 'Selesai'),
(279, 'Riris', 1, 5, 'Keterampilan Hidup', 'Meraut Pensil', '', '2021-06-03 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-19 07:30:00', 'Tapos', 'Selesai'),
(280, 'Fahriati Rahmi', 10, 3, 'Flyer Halal bi Halal 1442 H', 'Halal Bihalal IHF\r\n&quot;Bersilaturahim, bahagia dan sehat bersama&quot;\r\n\r\n28 Mei 2021\r\n09-11\r\n\r\nZoom By Online\r\n\r\n*Disedikan makan siang', '', '2021-05-24 00:00:00', '', '[\"Desain Gambar\"]', '2021-05-19 07:30:00', 'Cimanggis', 'Selesai'),
(281, 'shelly', 1, 2, 'Video pembelajaran', 'video pembelajaran TK cuci piring', '', '2021-06-03 00:00:00', '', '[\"Editing Video\"]', '2021-05-20 07:30:00', 'Cimanggis', 'Selesai'),
(282, 'Khansa', 1, 5, 'Video sentra', 'Seni kreasi membuat kirigami kupu-kupu', '', '2021-05-26 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-20 07:30:00', 'Tapos', 'Selesai'),
(283, 'Puput', 1, 5, 'Video sentra', 'Seni kreasi membuat ikan dari piring kertas', '', '2021-05-26 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-20 07:30:00', 'Tapos', 'Selesai'),
(284, 'Nayla', 1, 5, 'Video sentra', 'Eksplorasi membuat kepiting dari cetakan tangan', '', '2021-05-26 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-20 07:30:00', 'Tapos', 'Selesai'),
(285, 'Khansa', 1, 5, 'Video sentra', 'Seni kreasi anticoloring pot bunga', '', '2021-05-31 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-20 07:30:00', 'Tapos', 'Selesai'),
(286, 'Nayla', 1, 5, 'Video sentra', 'Seni kreasi membuat bunga matahari', '', '2021-05-31 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-20 07:30:00', 'Tapos', 'Selesai'),
(287, 'Khansa', 1, 6, 'Pilar', 'Boneka tangan pilar K4', '', '2021-05-25 00:00:00', '', '[\"Editing Video\"]', '2021-05-20 07:30:00', 'Tapos', 'Selesai'),
(288, 'Neneng Syarifah', 1, 2, 'video review pilar', 'pilar buku cerita', '', '2021-02-06 00:00:00', '', '[\"Shoot Video\"]', '2021-05-20 07:30:00', 'Cimanggis', 'Selesai'),
(289, 'Liaw', 1, 2, 'review pilar', 'boneka tangan', '', '2021-05-27 00:00:00', '', '[\"Editing Video\"]', '2021-05-20 07:30:00', 'Cimanggis', 'Selesai'),
(290, 'Nurul Fitri AR', 1, 2, 'Video pilar tk a', 'review pilar 7 pemimpin yang adil pakai buku LK pilar', '', '2021-05-28 00:00:00', '', '[\"Editing Video\"]', '2021-05-20 07:30:00', 'Cimanggis', 'Selesai'),
(291, 'Lili Anggraeni', 6, 15, 'Konten Plan Toko Karakter Juni 2021', 'Design IG untuk Toko Kartakter', '', '2021-05-30 00:00:00', '', '[\"Desain Gambar\"]', '2021-05-20 07:30:00', 'Cimanggis', 'Selesai'),
(292, 'Cut Aja Muliasari', 2, 3, 'Video Math - Desimal dan Persen', 'videonya dari yang kemarin sudah dishoot saja pak, tidak ada penambahan file dari luar. terima kasih pak, mohon maaf lahir batin', '', '2021-05-24 00:00:00', '', '[\"Editing Video\"]', '2021-05-24 07:30:00', 'Cimanggis', 'Selesai'),
(293, 'Fahriati', 10, 4, 'Video Kartu Lebaran ala Twibbon IHF dan Sekolah Karakter', 'Bentuknya video yang menampilkan foto-foto kartu lebaran dengan twibbon IHF dan Sekolah Karakter\r\n\r\nFoto2 ada di Link berikut : https://ihf.or.id/kartulebaran', '', '2021-05-27 00:00:00', '', '[\"Editing Video\"]', '2021-05-24 07:30:00', 'Cimanggis', 'Selesai'),
(294, 'ARI SAPTARINI', 5, 4, 'Kontent Sosmed JUNI 2021', 'Deadline mengikuti tanggal yang ada di excelnya', '', '2021-05-01 00:00:00', '', '[\"Desain Gambar\"]', '2021-05-24 07:30:00', 'Cimanggis', 'Selesai'),
(295, 'Khansa', 1, 6, 'Akting Review Pilar K4 Kebersihan', 'Pilar K4 Kebersihan', '', '2021-05-27 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-24 07:30:00', 'Tapos', 'Selesai'),
(296, 'Shanti', 1, 5, 'Sentra Seni Kreasi: Membuat Bebek', 'Pekan Kreativitas 1', '', '2021-06-02 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-24 07:30:00', 'Tapos', 'Selesai'),
(297, 'Nurul Fitri Annisa R', 1, 5, 'Video Pembelajaran Sentra Seni Kreasi', 'Sentra Seni Kreasi Membuat Es Krim dari Origami', '', '2021-06-04 00:00:00', '', '[\"Editing Video\"]', '2021-05-25 07:30:00', 'Tapos', 'Selesai'),
(298, 'ARI SAPTARINI', 5, 6, 'Cover Buku Kisah-Kisah Guru Sekolah Karakter', 'Judul Cover: Kami Belajar dari Pengalaman!\r\n(kumpulan cerita guru-guru karakter saat menghadapi tantangan mengajar di kelas).  ---- (Cover depan) Gambar guru sedang mengajar di kelas dengan siswa yang heboh dan ramai dan judul cover\r\nCover Belakang: ---- Berisi kumpulan kisah-kisah motivasi dari para guru sekolah karakter saat menghadapi kendala terkait siswa, orang tua siswa, manajemen kelas, pertemanan, dan kegiatan pembelajaran yang dilakukan.', '', '2021-06-02 00:00:00', '', '[\"Desain Gambar\"]', '2021-05-25 07:30:00', 'Tapos', 'Selesai'),
(299, 'Liaw', 1, 5, 'Finger paint cetak tangan seni kreasi', 'membuat gambar ayam dari cetak tangan', '', '2021-06-04 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-25 07:30:00', 'Tapos', 'Selesai'),
(300, 'Liaw', 1, 5, 'Membuat gelang tema kraetivitas', 'menghias dan membuat gelang', '', '2021-06-04 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-05-25 07:30:00', 'Tapos', 'Selesai'),
(301, 'Sentra seni kreasi', 1, 2, 'Membuat mahkota', 'Seni kreasi membuat mahkota', '', '2021-06-11 00:00:00', '', '[\"Editing Video\"]', '2021-05-27 07:30:00', 'Cimanggis', 'Selesai'),
(302, 'Nurul Fitri Annisa', 1, 5, 'Gerak dan Lagu TK A Cimanggis', 'Gerak dan lagu &quot;hati gembira&quot;', '', '2021-06-11 00:00:00', '', '[\"Editing Video\"]', '2021-05-27 07:30:00', 'Tapos', 'Selesai'),
(303, 'Nurma', 4, 6, 'PIN English Ambassador', 'PIN Sederhana yang berisii logo IEDP', '', '2021-05-28 00:00:00', '', '[\"Desain Gambar\"]', '2021-05-27 07:30:00', 'Tapos', 'Selesai'),
(304, 'Neneng Syarifah', 1, 5, 'Gerak dan Lagu &quot;Naik ke Puncak Gunung&quot;', 'Gerak dan lagu &quot;Naik ke Puncak Gunung&quot; sama Pak Catur', '', '2021-06-11 00:00:00', '', '[\"Editing Video\"]', '2021-05-28 07:30:00', 'Tapos', 'Selesai'),
(305, 'Catur Bowo Pamungkas', 1, 5, 'Seni Kreasi Membuat Amplop', 'video pembelajaran sentra seni kreasi buat amplop', '', '2021-06-04 00:00:00', '', '[\"Editing Video\"]', '2021-05-28 07:30:00', 'Tapos', 'Selesai'),
(306, 'Liaw', 1, 5, 'Gerak dan lagu &quot;Taman Kanak-Kanak&quot;', 'Gerak dan lagu &quot;Taman Kanak-Kanak&quot; sama Pak catur', '', '2021-06-11 00:00:00', '', '[\"Editing Video\"]', '2021-05-28 07:30:00', 'Tapos', 'Selesai'),
(307, 'Catur Bowo Pamungkas', 1, 2, 'Akting pilar tk a', 'Akting pilar pemimpin yang adil', '', '2021-05-31 00:00:00', '', '[\"Editing Video\"]', '2021-05-28 07:30:00', 'Cimanggis', 'Selesai'),
(308, 'Balgis Saskia', 2, 4, 'Photoshoot Kelas 1', 'Melakukan photoshoot anak-anak kelas 1 untuk keperluan Rapot. Photoshoot akan dilaksanakan di Perpus 2. \r\nHal tersebut dilakukan untuk keefektivitasan waktu kunjungan.', '', '2021-06-07 00:00:00', '', '[\"Shoot Video\"]', '2021-06-02 07:30:00', 'Cimanggis', 'Selesai'),
(310, 'Bu Nita', 2, 3, 'Sertifikat guru tamu', 'Namanya: Tisa Indah Aditya Pullah\r\nKegiatannya: guru tamu kelas 3', '', '2021-06-07 00:00:00', '', '[\"Desain Gambar\"]', '2021-06-04 07:30:00', 'Cimanggis', 'Selesai'),
(312, 'Puput', 1, 6, 'Cover Buku Rapot TKB Pemimpin', 'Membuat cover rapot TKB Pemimpin dengan desain yang baru dan foto terbaru', '', '2021-06-18 00:00:00', '', 'null', '2021-06-04 07:30:00', 'Tapos', 'Selesai'),
(313, 'Anita Fitriasari', 5, 4, 'shoot utk materi', '1. shoot kategori menyindir, membandingkan, menjatuhkan dengan kata2', '', '2021-06-08 00:00:00', '', '[\"Shoot Video\"]', '2021-06-07 07:30:00', 'Cimanggis', 'Selesai'),
(314, 'Yeni', 2, 6, 'Design Brosur Sekolah Karakter', 'Design Brosur Sekolah Karakter Cimanggis dan Tapos dengan logo baru', '', '2021-06-30 00:00:00', '', '[\"Desain Gambar\"]', '2021-06-07 07:30:00', 'Cimanggis', 'Selesai'),
(315, 'Shanti', 1, 5, 'Gerak dan Lagu', 'Gerak dan Lagu Puncak Tema Kreativitas', '', '2021-06-11 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-06-07 07:30:00', 'Tapos', 'Selesai'),
(316, 'Hany Maria', 2, 6, 'Flyer Idul Adha Sekolah Karakter', '3 flyer untuk disebar ke wa grup ortu', '08-06-21_Form_pemesanan_flyer_IDUL_ADHA_ke_MM.docx', '2021-06-15 00:00:00', '', '[\"Desain Gambar\"]', '2021-06-08 07:30:00', 'Cimanggis', 'Selesai'),
(317, 'Hany Maria', 2, 6, 'Flyer Idul Adha Sekolah Karakter', '3 flyer untuk dishare melalui wa grup orang tua di kelas', '08-06-21_Form_pemesanan_flyer_IDUL_ADHA_ke_MM1.docx', '2021-06-15 00:00:00', '', '[\"Desain Gambar\"]', '2021-06-08 07:30:00', 'Tapos', 'Selesai'),
(318, 'Puput', 1, 6, 'Foto Ijazah TKB Pemimpin', 'Membuat format foto anak TKB yang pakai seragam menjadi ukuran 3x4 dengan latar belakang merah', '', '2021-06-21 00:00:00', '', 'null', '2021-06-11 07:30:00', 'Tapos', 'Selesai'),
(319, 'Robi', 1, 4, 'Pas Foto 3x4', 'Pas foto anak-anak dibuat ukuran 3x4', '', '2021-06-17 00:00:00', '', 'null', '2021-06-14 07:30:00', 'Cimanggis', 'Selesai'),
(320, 'Dama', 2, 6, 'Cover Raport SD', 'Cover Raport', '', '2021-06-18 00:00:00', '', '[\"Desain Gambar\"]', '2021-06-16 07:30:00', 'Tapos', 'Selesai'),
(321, 'Rizal SMA', 4, 6, 'Sertifikat kelulusan SMA Karakter', 'Piagam / Sertifikat yang menandakan siswa/siswi tersebut telah menyelesaikan pendidikan setara Sekolah menengah atas di SMA Komunitas Karakter', '18-06-21_draft_sertif_SMA_wisuda_.jpg', '2021-07-09 00:00:00', '', '[\"Desain Gambar\"]', '2021-06-18 07:30:00', 'Tapos', 'Selesai'),
(322, 'Nayla', 1, 6, 'Template Buku Tahunan TK', 'Tema Belajar Dari Rumah, 1 anak 1 template (17 anak)', '', '2021-06-22 00:00:00', '', '[\"Desain Gambar\"]', '2021-06-21 07:30:00', 'Tapos', 'Selesai'),
(323, 'Edianna Putri', 5, 3, 'SEMINAR MINAMAS 2 (Video Senam Super Hero)', 'Video Senam Super Hero, seperti video senam IHF lainnya...\r\nTalent: Pak Singgih. Pak Catur, atau guru TK.', '', '2021-06-24 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-06-21 07:30:00', 'Cimanggis', 'Selesai'),
(324, 'Edianna Putri', 5, 3, 'SEMINAR MINAMAS 2 (Video Pengantar Materi Aktivitas Selama Pandemi))', 'Nah ini, masih perlu dipikir', '', '2021-06-24 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-06-21 07:30:00', 'Cimanggis', 'Selesai'),
(325, 'Edianna Putri', 5, 3, 'SEMINAR MINAMAS 2 (Bumper)', 'Seperti video bumper PSBBA, tapi gambar, tulisan, dan warna diganti.\r\nDetail storyboard ada di worksheet &quot;Bumper 2&quot;', '', '2021-06-24 00:00:00', 'https://drive.google.com/file/d/1PgBizdkHUYul4UNcOv6VTf1Gc7ky75yR/view?usp=sharing', 'null', '2021-06-21 07:30:00', 'Cimanggis', 'Selesai'),
(326, 'Edianna Putri', 5, 3, 'SEMINAR MINAMAS 2 (Video Sekilas Seminar 1)', 'Berisi foto-foto dan tulisan keterangan kegiatan hari 1.\r\nUrutan detail video di worksheet &quot;Video Sekilas H1&quot;', '', '2021-06-24 00:00:00', '', '[\"Editing Video\"]', '2021-06-21 07:30:00', 'Cimanggis', 'Selesai'),
(327, 'Putri', 3, 5, 'Pas Foto Ijazah SMP', 'Edit pas foto untuk ijazah', '', '2021-07-06 00:00:00', '', 'null', '2021-06-22 07:30:00', 'Tapos', 'Selesai'),
(328, 'ARI SAPTARINI', 5, 4, 'FLAYER SEMINAR MINAMAS', 'Seperti Seminar Sesi 1, beda desain dan ditambahkan Keynotespeaker: \r\nBMKG dan KLHK\r\n\r\nAcara Kamis, 8 Juli 2021 \r\n\r\nLink Zoom  https://ihf.or.id/seminar-minamas2', '', '2021-06-23 00:00:00', '', '[\"Desain Gambar\"]', '2021-06-22 07:30:00', 'Cimanggis', 'Selesai'),
(330, 'Arfida Luthfiyasari', 7, 3, 'Testimoni Sekolah Koordinator untuk Program PSBBA', 'Terlampir di berkas storyboard', '25-06-21_Pengajuan_storyboard_video_testimoni_PSBBA_.docx', '2021-07-02 00:00:00', '', '[\"Editing Video\"]', '2021-06-25 07:30:00', 'Cimanggis', 'Selesai'),
(332, 'Maes', 2, 6, 'Flyer parenting akademik', 'Tema : comingsoon BTS 2021. (Back to school)\r\nWaktu : Sabtu, 10 Juli 2021\r\nPemateri : ibu Ratna megawangi\r\nVia : zoom', '01-07-21_IMG-20210611-WA00051.jpg', '2021-07-02 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-01 07:30:00', 'Tapos', 'Selesai'),
(333, 'Ines', 1, 1, 'Syuting video pengantar KPA (BTS 21)', 'Storyboard nyusul yes senin????', '', '2021-07-08 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-07-02 07:30:00', 'Cimanggis', 'Selesai'),
(334, 'Ines', 1, 4, 'Bumper KPA (BTS 21)', 'Nyusul yes senin ????', '', '2021-07-07 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-07-02 07:30:00', 'Cimanggis', 'Selesai'),
(335, 'Ines', 1, 4, 'Video sambutan BTS 21', 'Nyusul senin yes', '', '2021-07-08 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-07-02 07:30:00', 'Cimanggis', 'Selesai'),
(336, 'AVI', 7, 3, 'BUMPER LAUCHING PSBBA', 'Digunakan untuk lauching PSBBA 2 tanggal 15 Juli\r\nmohon bantuannya untuk di buat tgl 7 ya pak...biar di review Bu Ratna dan bu Dona...terima kasih', '02-07-21_STORY_BOARD_LAUNCHING_PSBBA_2.docx', '2021-07-07 00:00:00', 'https://youtu.be/Nk0gHjFiQqI ', '[\"Editing Video\"]', '2021-07-02 07:30:00', 'Cimanggis', 'Selesai'),
(337, 'Halim', 11, 4, 'Video Futsal academy bersama Komite', 'pengerjaan  video testimoni pemain nasional untuk ikut acara futsal academy', '', '2021-07-03 00:00:00', '', '[\"Editing Video\"]', '2021-07-03 07:30:00', 'Cimanggis', 'Selesai'),
(338, 'Halim', 11, 4, 'PROJECT OISCA dan TBH Part 1', 'editi video dan pemberian subtitle', '', '2021-07-07 00:00:00', '', '[\"Editing Video\"]', '2021-07-03 07:30:00', 'Cimanggis', 'Sedang Dikerjakan'),
(339, 'Dika', 3, 5, 'Nama ruangan', '1.  R. Tata Usaha\r\n2.  R. Perpustakaan TK\r\n3.  R. Kepala Divisi dan Kepala Sekolah\r\n4. Ruang Bimbingan dan Konseling\r\n5. UKS 2\r\n6. R.KAYA\r\n7. R. OSIS\r\n8. R. Guru SMP\r\n9. R. Guru SMA\r\n10. R. Perlengkapan SMP dan Alat Olah Raga\r\n11. R. Perlengkapan SMA\r\n12.  R. ATK SMP dan SMA', '05-07-21_DSC_1729.JPG', '2021-07-09 00:00:00', 'File contoh sudah dikirim ', '[\"Desain Gambar\"]', '2021-07-05 07:30:00', 'Tapos', 'Selesai'),
(341, 'Sri Wahyuni Rahayu', 2, 4, 'Video Kompilasi Foto Kegiatan Sekolah', 'Judulnya : Kegiatan Sekolah Karakter\r\n\r\nTerus nanti ada tulisan TK, SD, SMP,SMA', '', '2021-07-07 00:00:00', '', '[\"Editing Video\"]', '2021-07-05 07:30:00', 'Cimanggis', 'Selesai'),
(342, 'Tina Sugiharti', 8, 6, 'Virtual Back Ground untuk Zoom Meeting - ICE-PHBK', 'Virtual Background Zoom Meeting :) untuk ICE-PHBK', '', '2021-07-09 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-06 07:30:00', 'Tapos', 'Selesai'),
(343, 'Lovea', 1, 6, 'Background foto perkenalan guuru tk tapos', 'Gambar background perkenalan guru tk dan logo tk', '', '2021-07-08 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-08 07:30:00', 'Tapos', 'Selesai'),
(344, 'Deka', 4, 6, 'Karbon-Karakter Bonding', 'Untuk mpls sma (Karbon)  tagline \'it\'s time to be a struggle \'. Kami butuh bantuan untuk membuat twibbon,  poster status untuk di sosmed,  background zoom,  poster untuk webinar (jd ada 4 item desain). Untuk tema warna kami lampirkan yaa...  Untuk foto n profile pembicara via WA pak dahlan...  Trimscii', '08-07-21_IMG-20210708-WA0008.jpg', '2021-07-13 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-08 07:30:00', 'Tapos', 'Selesai'),
(345, 'Arfida Luthfiyasari', 7, 3, 'video testimoni sekolah mitra (SM)', 'edit 2 video testimni sekolah mitra menjadi 1 video utuh', '09-07-21_Storyboard_untuk_video_testimoni_SEKOLAH_MITRA_revisi.docx', '2021-07-12 00:00:00', '', '[\"Editing Video\"]', '2021-07-09 07:30:00', 'Cimanggis', 'Selesai'),
(346, 'Arfida Luthfiyasari', 7, 3, 'video testimoni sekolah koordinator (SK)', 'edit video 2 testimoni sekolah koordinator (SK) menjadi satu video utuh', '09-07-21_Storyboard_untuk_video_testimoni_SEKOLAH_KOORDINATOR_revisi.docx', '2021-07-12 00:00:00', '', '[\"Editing Video\"]', '2021-07-09 07:30:00', 'Cimanggis', 'Selesai'),
(347, 'Arfida Luthfiyasari', 7, 4, 'VIDEO PENUTUP SEMINAR PSBBA 2', 'video kumpulan foto foto motivasi, penambah semangat untuk terus belajar menjadi guru yang baik', '09-07-21_STORY_LINE_VIDEO_PENUTUP_SEMINAR_PSBBA_2.docx', '2021-07-12 00:00:00', '', '[\"Editing Video\"]', '2021-07-09 07:30:00', 'Cimanggis', 'Selesai'),
(348, 'avi', 7, 3, 'thumbnail launching PSBBA 2', 'Mohon bantuannya ya MM\r\n\r\ndeskirpsi thumbnailnya ada di sheet thumbnail ya...\r\nterima kasih banyak', '', '2021-07-13 00:00:00', 'bebas spt acara sebelum-sebelumnya.. :D', '[\"Desain Gambar\"]', '2021-07-11 07:30:00', 'Cimanggis', 'Selesai'),
(351, 'Yulia Pratiwi', 2, 4, 'Cover Raport Kelas 1 di Print', 'Menambahkan foto cover raport kelas 1 dan kemudian di Print sesuai Size cover raport', '', '2021-07-23 00:00:00', 'https://drive.google.com/drive/folders/17CAf1ifwZW82-8uVgpjA0MgFY7RGpcJn?usp=sharing', '[\"Desain Gambar\"]', '2021-07-13 07:30:00', 'Cimanggis', 'Selesai'),
(352, 'Mira O.', 2, 6, 'Idul Adha 1442 H', 'Pembuatan Bumper Acara Live Zoom Idul Adha 1442H dengan deskripsi sbb:\r\nJudul bumper : Idul Adha 1442H\r\ntagline pada bumper (wajib ada di bumper): Sekolah Karakter Berkurban &quot;Kita Bisa Berbagi&quot;\r\nbgm bumper: suara takbiran lebaran \r\ntema/ konsep desain bumper: dibebaskan/ disesuikan dengan tagline bumper', '', '2021-07-19 00:00:00', '', '[\"Editing Video\"]', '2021-07-14 07:30:00', 'Cimanggis', 'Selesai'),
(356, 'Unie', 2, 6, 'Virtual Background TM Sad', 'Background zoom untuk TM SD.\r\n\r\n1. Ada tulisan Technical Meeting SD Karakter \r\n2. Ada logo sekolah karakter\r\n3. Desainnya yg bagus menurut bu fea aja...', '', '2021-07-15 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-14 07:30:00', 'Cimanggis', 'Selesai'),
(357, 'Rita', 2, 5, 'Video Pengenalan Sekolah', 'Video Pengenalan Sekolah', '', '2021-07-25 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-07-14 07:30:00', 'Tapos', 'Selesai'),
(358, 'Rita', 2, 5, 'rutinitas harian', 'video yg berisi rutinitas BDR anak', '', '2021-07-25 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-07-14 07:30:00', 'Cimanggis', 'Selesai'),
(359, 'Mira O.', 2, 3, 'Live Zoom Idul Adha 1442H SD citos', 'kami membutuhkan 1 kameramen yang dapat merekan proses live report pada tanggal 22 Juli 2021 di IHF.\r\nkonsep acara : akan ada MC live dari studio 1 dan ada reporter akan live melaporkan dari tempat penyembelihan/ pencacahan hewan kurban IHF via zoom meeting (konsep seperti live report berita di TV).\r\nuntuk keseluruhan rangkaian acara ada di bawah ini.', '15-07-21_STORYBOARD_IDUL_ADHA.docx', '2021-07-20 00:00:00', '', '[\"Shoot Video\"]', '2021-07-15 07:30:00', 'Cimanggis', 'Selesai'),
(360, 'Ines', 1, 6, 'Twibbon hari perdana ke sekolah', '?Ada tulisan judulnya *Senangnya ke sekolah*(ini ukurannya bisa lebih besar dari tulisan ini \r\n*TK Karakter 2021/2022*) \r\n\r\n?ada logo sekolah di pojok kanan atau kiri atas\r\n\r\n?foto diatas boleh diambil 1 sebagai background', '', '2021-07-19 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-15 07:30:00', 'Tapos', 'Selesai'),
(361, 'Tina Sugiharti', 4, 6, 'Virtual Back Ground untuk Zoom Meeting Kelas SMA', 'Judul: Sociology Time, ada  logo SMA Karakter', '', '2021-07-19 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-16 07:30:00', 'Tapos', 'Selesai'),
(362, 'Tina Sugiharti', 4, 6, 'Course Image untuk LMS', '-Sociology\r\n-X Meaningful \r\n-Logo Sekolah Karakter', '', '2021-07-19 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-16 07:30:00', 'Tapos', 'Selesai'),
(363, 'Fahriati', 10, 6, 'Flyer Isoman TGC', 'isinya kaya gambar yang dikirim, desainnya menyesuaikan saja dengan brand IHF, Nama dibawahnya TGC 19 IHF', '', '2021-07-21 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-16 07:30:00', 'Cimanggis', 'Selesai'),
(364, 'ARI SAPTARINI', 5, 3, 'POTONG VIDEO REKAMAN YOUTUBE', 'Bagian awal video rekaman di youtube ini ada koordinasi panitia dan MC, Mohon dipotong dan diberikan pembuka dengan logo IHF sebelum lagu (di awal) terima kasih . Berikut adalah google drive rekaman videonya https://drive.google.com/file/d/1qNCMPn1LOxG5d575KdD80UdCDI62fq4w/view?usp=sharing  (setelah selesai mohon di upload ke Youtube ihf karakter tanpa menghapus video sebelumnya)', '', '2021-07-23 00:00:00', '', '[\"Editing Video\"]', '2021-07-16 07:30:00', 'Cimanggis', 'Selesai'),
(365, 'Ari Saptarini', 5, 4, 'Kontent Sosmed AGUSTUS 2021', 'Kontent Sosmed terdiri dari Sosmed IHF -Syarif (Sheet 1)\r\nSosmed Sekolah - Bu Fea (Sheet 2)\r\nSosmed ICE PHBK - Bu Fea (Sheet 3)', '', '2021-08-02 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-16 07:30:00', 'Cimanggis', 'Selesai'),
(366, 'Shelly', 1, 3, 'Video pembelajaran TK', 'Video Area yang perlu pendampingan', '', '2021-07-21 00:00:00', '', '[\"Editing Video\"]', '2021-07-16 07:30:00', 'Cimanggis', 'Selesai'),
(367, 'Shelly', 1, 3, 'Video pembelajaran TK', 'Video toilet', '', '2021-07-26 00:00:00', '', '[\"Editing Video\"]', '2021-07-16 07:30:00', 'Cimanggis', 'Selesai'),
(368, 'Nurul Fitri Annisa', 1, 2, 'Video Pengenalan Area Bermain TK', 'Video pengenalan area bermain TK (opening&amp;closing dari gerbang TK, pengenalan ruang kelas, area playground TK, lapangan, hall, toilet, tempat cuci tangan)', '', '2021-07-21 00:00:00', '', '[\"Editing Video\"]', '2021-07-18 07:30:00', 'Cimanggis', 'Selesai'),
(369, 'Laysa', 1, 2, 'Video Pembelajaran Cuci Tangan', 'Tutorial cuci tangan di area cuci tangan TK', '', '2021-07-23 00:00:00', '', '[\"Editing Video\"]', '2021-07-18 07:30:00', 'Cimanggis', 'Selesai'),
(370, 'TK Karakter', 1, 2, 'Video Pengenalan Rutinitas Harian', 'Pengenalan rutinitas harian di rumah (syuting di rumah Jerry)', '', '2021-07-19 00:00:00', '', '[\"Editing Video\"]', '2021-07-18 07:30:00', 'Cimanggis', 'Selesai'),
(371, 'Yudhistira', 2, 6, 'Flyer Hari H Idul Adha 1442 H', 'Flyer ucapan Selamat Idul Adha 1442 H dibuat gambar bergerak dan ditambahkan musik idul adha. ukuran poster', '', '2021-07-20 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-19 07:30:00', 'Tapos', 'Selesai'),
(372, 'Tina Sugiharti', 15, 6, 'Cover Proposal Beasiswa', '-Memakai logo ST-ICE-PHBK\r\n-Tulisan: Proposal Beasiswa Biaya Pendidikan Program Sarjana S-1 Sekolah Tinggi Pendidikan Holistik Berbasis Karakter', '', '2021-07-22 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-19 07:30:00', 'Tapos', 'Selesai'),
(373, 'Tina Sugiharti', 15, 6, 'Cover depan dan belakang Proposal ICE PHBK (revisi pengajuan sblmnya)', '1. Cover depan: Proposal Beasiswa Biaya Pendidikan Program Sarjana (S1)\r\nSekolah Tinggi Pendidikan Holistik Berbasis Karakter. \r\n\r\n2. Cover belakang. Menyesuaikan', '', '2021-07-22 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-19 07:30:00', 'Tapos', 'Selesai'),
(374, 'Trias Syaifulina', 2, 3, 'Bumper BTS', 'Bumper BTS', '', '2021-07-21 00:00:00', '', '[\"Editing Video\",\"Desain Gambar\"]', '2021-07-21 07:30:00', 'Cimanggis', 'Selesai'),
(376, 'Shelly', 1, 3, 'Video Pilar untuk TM', 'Video Pilar untuk TM', '', '2021-07-17 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-07-21 07:30:00', 'Cimanggis', 'Selesai'),
(377, 'Neneng', 1, 2, 'Video Pilar untuk TM', 'Video Pilar untuk TM', '', '2021-07-17 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-07-21 07:30:00', 'Cimanggis', 'Selesai'),
(378, 'Noerlia Agustina', 4, 6, 'Template  LMS', 'Template LMS u/ guru mapel (contoh terlampir)', '21-07-21_IMG-20210721-WA0021.jpg', '2021-07-30 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-21 07:30:00', 'Tapos', 'Selesai'),
(379, 'Anita', 5, 4, 'Twibones utk SBB SD dan PAUD', 'Senangnya hatiku bersekolah di SBB - bersama guruku yang penyayang.', '', '2021-07-21 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-21 07:30:00', 'Cimanggis', 'Selesai'),
(380, 'Puput', 1, 5, 'Video pembelajaran', 'Video pekan 2', '', '2021-07-26 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-07-23 07:30:00', 'Tapos', 'Selesai'),
(381, 'Puput', 1, 5, 'Video iedp', 'Video IEDP TK Tapos', '', '2021-07-27 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-07-23 07:30:00', 'Tapos', 'Selesai'),
(382, 'Nurul Fitri Annisa Rokoyah', 1, 3, 'Pilar Mandiri TK', 'Pilar mandiri baca buku cerita', '', '2021-07-28 00:00:00', '', '[\"Editing Video\"]', '2021-07-26 07:30:00', 'Cimanggis', 'Selesai'),
(383, 'Nurul Fitri Annisa Rokoyah', 1, 3, 'Sentra Seni Kreasi membuat gantungan tas', 'Meronce manik2 buat gantungan tas', '', '2021-07-30 00:00:00', '', '[\"Editing Video\"]', '2021-07-26 07:30:00', 'Cimanggis', 'Selesai'),
(384, 'Nurul Fitri Annisa Rokoyah', 1, 3, 'Keterampilan hidup memakai sepatu sendiri', 'Video ajar tk a praktek memakai sepatu sendiri', '', '2021-07-30 00:00:00', '', '[\"Editing Video\"]', '2021-07-26 07:30:00', 'Cimanggis', 'Selesai'),
(385, 'Chika', 1, 3, 'Sentra Persiapan - Membaca Buku Cerita', 'Membaca buku cerita Banyak Teman', '', '2021-08-05 00:00:00', '', '[\"Editing Video\"]', '2021-07-26 07:30:00', 'Cimanggis', 'Selesai'),
(386, 'Ines', 1, 2, 'Yel yel dan lagu pengantar', 'Kita list dulu ya:\r\n1. Yel yel anak karakter *ines*\r\n2. Yel yel kb sayang *neng*\r\n3. Kling klong *neng*\r\n4. Buka tutup *neng*\r\n3. Senangnya senangnya *ines*\r\n4. Selamat pagi *ines*\r\n. Lagu sentra *Neng*\r\n9. Selebrasi (es krim, pop corn, coklat) *neng*', '', '2021-07-29 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-07-26 07:30:00', 'Cimanggis', 'Selesai'),
(387, 'Arifah', 1, 5, 'Video Pembelajaran', 'Video toilet training TKB', '', '2021-07-28 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-07-26 07:30:00', 'Tapos', 'Selesai'),
(390, 'Laysa', 1, 3, 'Video English \'counting 1-5\'', '-iringan musik ceria /pelan', '', '2021-08-02 00:00:00', '', '[\"Editing Video\"]', '2021-07-27 07:30:00', 'Cimanggis', 'Selesai'),
(391, 'Ines', 1, 2, 'Sentra rancang bangun panggung', 'Sentra rancang bangun panggung', '', '2021-08-02 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-07-27 07:30:00', 'Cimanggis', 'Selesai'),
(392, 'Tina Sugiharti', 15, 6, 'Cover Profil', 'ini untuk dokumen PwC. Bisa pakai cover yang sudah pernah dibuat (terlampir)\r\n-Judul atas : Profil Institute of Character Education Pendidikan Holistik Berbasis Karakter \r\n- Judul Bawah: Program Sarjana (S1)\r\n-Ganti logo ST-ICE PHBK\r\n- Ganti judul\r\n- Semoga siang ini udah jadi.. (kalau bisa)', '', '2021-07-28 00:00:00', '', '[\"Desain Gambar\"]', '2021-07-28 07:30:00', 'Tapos', 'Selesai'),
(393, 'Edianna Putri', 5, 3, 'VIDEO PERKENALAN IHF', 'Tanggal 30 Juli 2021 ada acara kick off program PAUD Adaro. Di dalam acara tersebut, IHF diminta u memperkenalkan diri. Konsepnya mau seperti video LEONI wisuda SD NOT TV. Gambar latarnya diganti dengan gedung IHF. Lagunya diganti dengan lagu lain yang ringan dan bersifat umum. List nama menyusul Kamis, foto menggunakan id card terbaru', '', '2021-07-29 00:00:00', '', '[\"Editing Video\"]', '2021-07-28 07:30:00', 'Cimanggis', 'Selesai'),
(394, 'Yulia', 2, 6, 'Flyer Duka Cita Resmi Sekolah Karakter', 'Menginfokan berita duka jika ada anggota keluarga siswa sekolah karakter meninggal dunia.bentuknya flyer duka cita tanpa foto.\r\n\r\natas nama:\r\nAlmarhumah Merry Delila\r\nibunda dari\r\nMuhammad Zidane Djuandi (kelas 9 Helsinski)\r\nMuhammad Fahrezy Djuandi (kelas 5 Mint)', '', '2021-07-30 00:00:00', 'https://www.itera.ac.id/turut-berduka-cita/desain-turut-berduka-cita-01/', '[\"Desain Gambar\"]', '2021-07-30 07:30:00', 'Cimanggis', 'Selesai'),
(395, 'Riani', 4, 5, 'Sejarah Wajib SMA Kelas 12', 'Video Pembelajaran', '', '2021-08-03 00:00:00', '', '[\"Editing Video\"]', '2021-07-30 07:30:00', 'Tapos', 'Selesai'),
(397, 'Putri', 3, 5, 'Video Pemebelajaran Bahasa Indonesia', 'Video bahasa indonesia', '', '2021-08-02 00:00:00', '', '[\"Editing Video\"]', '2021-07-30 07:30:00', 'Tapos', 'Selesai'),
(398, 'Qurrota Ayun', 2, 5, '2 SD - Matematika', 'Bilangan cacah 1-99', '', '2021-08-01 00:00:00', 'https://www.youtube.com/watch?v=DzfO4RGMz5k', '[\"Editing Video\"]', '2021-07-30 14:35:00', 'Tapos', 'Selesai'),
(399, 'Noerlia Agustina', 4, 5, 'Video Editing', 'Pembelajaran SMP', '', '2021-08-04 00:00:00', '', '[\"Editing Video\"]', '2021-08-02 07:30:00', 'Tapos', 'Selesai'),
(400, 'Woro', 10, 2, 'Sertifikat untuk siswa magang', 'untuk data siswanya dikirimkan by WA nya Pak Adul', '', '2021-08-09 00:00:00', '', 'null', '2021-08-02 07:30:00', 'Cimanggis', 'Selesai'),
(401, 'Puput', 1, 6, 'Video pembelajaran Sentra', 'Syuting dan edit video sentra persiapan', '', '2021-08-04 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-04 07:30:00', 'Tapos', 'Selesai'),
(402, 'Tina Sugiharti', 15, 6, 'Cover Panduan Akademik', '1. Cover Depan: Panduan Pelaksanaan Akademik Institute of Character Education\r\n2. Cover sub bab: Panduan Pelaksanaan Akademik Institute of Character Education Tahun Akademik 2021-2022\r\n3. Cover belakang: menyesuaikan', '', '2021-08-05 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-04 07:30:00', 'Tapos', 'Selesai'),
(405, 'Bu Citra dan Bu Lila', 2, 3, 'Video Kemerdekaan', 'Shoot video kemudian di edit menjadi video jaman dulu', '04-08-21_Storyboard_Perdebatan_Golongan_Muda_dan_Tua.docx', '2021-08-09 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-08-04 07:30:00', 'Cimanggis', 'Selesai'),
(406, 'Puput', 1, 5, 'Video Pilar', 'Video bu Arifah baca buku LK Pilar Tanggung jawab', '', '2021-08-13 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-05 07:30:00', 'Tapos', 'Selesai'),
(407, 'Singgih', 1, 6, 'Pilar Tanggung Jawab', 'Boneka Tangan', '', '2021-08-09 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-05 07:30:00', 'Tapos', 'Selesai'),
(408, 'Puput', 1, 5, 'Video Pilar', 'Video Pilar Puput - Buku Cerita Banyak Teman', '', '2021-08-16 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-05 07:30:00', 'Tapos', 'Selesai'),
(409, 'Wanda', 1, 6, 'Pilar Tanggung Jawab', 'Buku cerita Becak dan Delman', '', '2021-08-09 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-05 07:30:00', 'Tapos', 'Selesai'),
(410, 'Puput', 1, 6, 'Video Pilar', 'Video Pilar Riris - Boneka Tangan', '', '2021-08-18 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-05 07:30:00', 'Tapos', 'Selesai'),
(411, 'Puput', 1, 6, 'Video Pilar', 'Video Pilar TK Tapos - Akting Toleransi Puput Arifah Riris', '', '2021-08-19 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-05 07:30:00', 'Tapos', 'Selesai'),
(412, 'Riris', 1, 6, 'Acting Pilar Tanggung Jawab', 'Video acting', '', '2021-08-11 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-05 07:30:00', 'Tapos', 'Selesai'),
(413, 'Shanti', 1, 5, 'Lagu yel-yel kelas', 'Daftar video lagu yg di edit\r\n1. Lagu doa Tanganku ada dua\r\n2. Lagu doa Jika aku berdoa\r\n3. Yel-yel kelas KB Mandiri\r\n4. Lagu kegiatan pilar\r\n5. Lagu kegiatan literasi\r\n\r\nDijadikan 5 video terpisah dengan pembukaan dan penutup logo karakter yg dama', '', '2021-08-09 00:00:00', '', '[\"Editing Video\"]', '2021-08-05 07:30:00', 'Tapos', 'Selesai'),
(414, 'Laysa', 1, 2, 'Video cerita buku pilar 9', '-Ada suara \'cling\' saat tokoh cerita sdh cinta damai\r\nTrimakasih', '', '2021-08-09 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-06 07:30:00', 'Cimanggis', 'Selesai'),
(415, 'Nurul Fitri Annisa', 1, 2, 'Pilar Kedamaian TK', 'Acting pilar 9 cinta damai', '', '2021-08-20 00:00:00', '', '[\"Editing Video\"]', '2021-08-06 07:30:00', 'Cimanggis', 'Selesai'),
(416, 'Laysa, Miss', 1, 3, 'Video English \'let\'s counts 6-10\'', '- ada efek suara anak2 (cheers/yeaay...) setiap selesai menghitung, trimakasih\r\n-lagu English di akhir cerita :)', '', '2021-08-12 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-06 07:30:00', 'Cimanggis', 'Selesai'),
(417, 'Neneng', 1, 3, 'Biku cerita ceri vivi', 'Cerita tentang cinta Damai seri Vivu', '', '2021-08-24 00:00:00', '', '[\"Editing Video\"]', '2021-08-07 07:30:00', 'Cimanggis', 'Selesai'),
(418, 'ARI SAPTARINI', 5, 3, 'Edit Video Ibu Ratna', 'Potong Video, hanya materi bu Ratna saja yang diperlukan. Tambahkan video pembuka dan penutupnya', '', '2021-08-20 00:00:00', 'https://drive.google.com/file/d/17GVR9mR3XjWP7aQwmcl8NxGWk6icmXsz/view?usp=sharing', '[\"Editing Video\"]', '2021-08-10 07:30:00', 'Cimanggis', 'Selesai'),
(419, 'Annis Farhannisa', 4, 3, 'Kegiatan Nasionalisme SMA karakter', 'Poster, twibbon, dan Virtual background', '12-08-21_List_Kebutuhan_Desain_kegiatan_nasionalisme_SMA.docx', '2021-08-15 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-12 07:30:00', 'Cimanggis', 'Selesai'),
(420, 'Annis Farhannisa', 4, 6, 'Kegiatan Nasionalisme SMA karakter', 'Poster, twibbon, dan Virtual background', '12-08-21_List_Kebutuhan_Desain_kegiatan_nasionalisme_SMA1.docx', '2021-08-15 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-12 07:30:00', 'Tapos', 'Selesai'),
(421, 'Shanti', 1, 5, 'Triono cinta Indonesia', 'Editing pertandingan badminton triono', '', '2021-08-16 00:00:00', '', '[\"Editing Video\"]', '2021-08-12 07:30:00', 'Tapos', 'Selesai'),
(422, 'rahma', 2, 6, 'Karakter parents academy 3 Pelatihan literasi dan matematika menyenangkan', 'sabtu, 21 Agustus 2021\r\njam 08.00 - 11.00', '', '2021-08-16 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-13 07:30:00', 'Tapos', 'Selesai'),
(423, 'rahma', 2, 6, 'countdown Karakter parents academy 3 Pelatihan literasi dan matematika menyenangkan', 'H-1 Karakter parents academy 3 Pelatihan literasi dan matematika menyenangkan\r\nSabtu 21 Agustus 2021 08.00-11.00, live on zoom', '', '2021-08-12 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-13 07:30:00', 'Tapos', 'Selesai'),
(424, 'Lila', 2, 6, 'Twibbon 17an', 'Berjuang Bersama 17an', '', '2021-08-16 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-13 07:30:00', 'Tapos', 'Selesai'),
(425, 'Lila, Citra', 2, 3, 'Berjuang Bersama 17an', 'Bumper untuk acara puncak\r\ndurasi sekitar 30 detik, bergerak, bertemakan kemerdekaan', '', '2021-08-16 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-14 07:30:00', 'Cimanggis', 'Selesai'),
(426, 'Riris', 1, 5, 'Acara Hari Kemerdekaan', 'TK Karakter Tapos', '', '2021-08-18 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-14 07:30:00', 'Tapos', 'Selesai'),
(427, 'Raisa Rakhmania', 4, 6, 'Desain Sertifikat SMA (untuk kelulusan)', 'Membuat Desain sertifikat SMA', '16-08-21_Storyboard_sertifikat.docx', '0000-00-00 00:00:00', 'https://images.sampletemplates.com/wp-content/uploads/2014/07/05100133/High-School-Certificate-Templates.jpeg', '[\"Desain Gambar\"]', '2021-08-16 07:30:00', 'Tapos', 'Selesai'),
(428, 'Tina Sugiharti', 15, 6, 'Course Image untuk LMS ICE-PHBK', '-Ukuran maksimal 128 MB\r\n-Bentuk JPEG/GIF/PNG\r\n-Nama Mata Kuliah sbb:\r\nSEMESTER 1\r\n1. Matrikulasi PHBK\r\n2. Pendidikan Holistik: Pedagogi Membangun Karakter\r\n3. Aktivasi Kelas Menyenangkan\r\n4. Bahasa Inggris 1\r\n5. PHBK 1: Prinsip-prinsip PHBK\r\n6. Belajar Melalui Pedagogi Bermain\r\n7. Teori Perkembangan Anak dan Moral dalam Praktik Pedagogi Ramah Anak \r\n\r\nSEMESTER 3\r\n1. PHBK 3: Kurikulum Tematik Integratif, HOTS, dan Evaluasi Siswa\r\n2. Strategi Pendidikan Inklusif \r\n3. Pendidikan Pancasila Berbasis Karakter\r\n4. Pembelajaran Agama Berbasis Karakter/Akhlak Mulia\r\n5. Gerak, Seni dan Irama\r\n6. Pengasuhan Anak Berbasis Karakter', '', '2021-08-31 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-18 07:30:00', 'Tapos', 'Selesai'),
(429, 'Riani', 15, 6, 'Buku Panduan Mahasiswa', 'Mengganti cover dan tampilan halaman dari buku panduan sebelumnya.\r\nTahun akademik dituliskan di cover 2021-2025', '', '2021-09-10 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-18 07:30:00', 'Tapos', 'Selesai'),
(430, 'Yulia', 2, 6, 'Sertifikat Pengabdian Masyarakat', 'Dosen UI menjadi guru tamu dalam acara pengabdian masyarakat ke anak kelas 6. Jadi minta dibuatkan sertifikatnya atas nama: \r\n1. Dr. Fia Fridayanti Adam, M.Si.\r\n2. Kuncoro Haryo Pribadi, S.Sos,. M.Si.\r\n3. Yulial Hikmah, S.Si., M.Si. \r\n4. Andhita Yukihana Rahmayanti, S.E., M.Si. \r\n5. Ayunda Anisa Soleha\r\n\r\nsertifikatnya sudah beserta nama dosennya (5 sertifikat) dan dibawahnya mengetahui disertai ttd kepala sekolah sd cimanggis (Yulia) serta cap basah sekolah karakter', '18-08-21_Sertifikat.pdf', '2021-08-26 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-18 07:30:00', 'Cimanggis', 'Selesai'),
(431, 'Lila', 2, 3, 'Vidoe Peristiwa Rengasdengklok Bag.1', 'Vidoe Peristiwa Rengasdengklok Bag.1', '', '2021-08-16 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-19 07:30:00', 'Cimanggis', 'Selesai'),
(432, 'Lila', 2, 3, 'Vidoe Peristiwa Rengasdengklok Bag.2', 'Vidoe Peristiwa Rengasdengklok Bag.2', '', '2021-08-16 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-19 07:30:00', 'Cimanggis', 'Selesai'),
(433, 'Lila', 2, 3, 'Vidoe Peristiwa Rengasdengklok Bag.3', 'Vidoe Peristiwa Rengasdengklok Bag.3', '', '2021-08-16 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-19 07:30:00', 'Cimanggis', 'Selesai'),
(434, 'Lila', 2, 3, 'Vidoe Peristiwa Rengasdengklok Bag.4', 'Vidoe Peristiwa Rengasdengklok Bag.4', '', '2021-08-16 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-19 07:30:00', 'Cimanggis', 'Selesai'),
(435, 'Lila', 2, 3, 'Upacara', 'Upacara', '', '2021-08-16 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-19 07:30:00', 'Cimanggis', 'Selesai'),
(436, 'Yulia', 2, 3, 'Medley daerah', 'Medley daerah', '', '2021-08-16 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-19 07:30:00', 'Cimanggis', 'Selesai'),
(437, 'Wiwi', 2, 3, 'Video Pembelajaran Agama (Doa)', 'Video Pembelajaran Agama (Doa)', '', '2021-08-19 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-19 07:30:00', 'Cimanggis', 'Selesai'),
(438, 'Lovea', 1, 6, 'Ppdb online 2022-2023', 'Revisi skema alur ppdb ditambah point 3. Melakukan pembayaran formulir', '', '2021-08-20 00:00:00', '', 'null', '2021-08-19 07:30:00', 'Cimanggis', 'Selesai'),
(439, 'Riani', 15, 6, 'Tulisan pintu ruangan', 'Tolong dibuatkan tulisan untuk di depan pintu ruangan\r\n- R. Sholat\r\n- R. Kemahasiswaan', '', '2021-09-17 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-20 07:30:00', 'Tapos', 'Selesai'),
(440, 'Riani', 15, 5, 'Video Pembelajaran', 'Luas dan letak wilayah Indonesia', '', '2021-08-24 00:00:00', '', '[\"Editing Video\"]', '2021-08-20 07:30:00', 'Tapos', 'Selesai'),
(441, 'Robi', 1, 2, 'Program Khusus TK Karakter', 'Video dibuat dengan durasi pendek, sebagai gambaran orang tua terkait Program Khusus di TK Karakter. Judul backsound Guruku Tersayang ambil musiknya aja. Setiap part ditulis label kegiatan.', '', '2021-08-24 00:00:00', 'video School Tour TK', '[\"Editing Video\"]', '2021-08-20 07:30:00', 'Cimanggis', 'Selesai'),
(442, 'triani', 4, 6, 'design alur PPDB SMA', 'pembuatan alur pendaftaran dan proses PPDB yang akan disebar ke ortu', '23-08-21_ALUR_PPDB_SMA_KARAKTER.docx', '2021-08-24 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-23 07:30:00', 'Tapos', 'Selesai'),
(443, 'Sherlita', 2, 5, 'Matematika kelas 2', 'Membilang bilangan 100-120', '', '2021-08-23 00:00:00', '', '[\"Editing Video\"]', '2021-08-23 07:30:00', 'Tapos', 'Selesai'),
(444, 'Riris', 1, 5, 'Keterampilan Hidup', 'Merapihkan tempat tidur', '', '2021-08-27 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-23 07:30:00', 'Tapos', 'Selesai'),
(445, 'Nurul dan Trias', 1, 2, 'Publikasi PPDB Sekolah Karakter', 'Video singkat pengenalan Sekolah Karakter', '', '2021-08-26 00:00:00', '', '[\"Editing Video\"]', '2021-08-23 07:30:00', 'Cimanggis', 'Selesai'),
(446, 'Singgih', 1, 6, 'Keterampilan Hidup', 'Merapihkan mainan', '', '2021-08-25 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-24 07:30:00', 'Tapos', 'Selesai'),
(447, 'Singgih', 1, 5, 'Sentra Seni Kreasi', 'Menggambar Rumahku', '', '2021-08-23 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-24 07:30:00', 'Tapos', 'Selesai'),
(448, 'catur', 1, 3, 'video perkusi', 'video ke1 , berisi perform perkusi yg ada panci dll', '', '2021-08-27 00:00:00', '', '[\"Editing Video\"]', '2021-08-24 07:30:00', 'Cimanggis', 'Selesai'),
(449, 'catur', 1, 3, 'video perkusi , penjelasan single stroke', 'video ke 2 , perform nya pake ember yg single stroke', '', '2021-08-27 00:00:00', '', '[\"Editing Video\"]', '2021-08-24 07:30:00', 'Cimanggis', 'Selesai'),
(450, 'catur', 1, 2, 'video perkusi , penjelasan double stroke', 'video ke 3 , perform pake ember (double stroke)', '', '2021-08-27 00:00:00', '', '[\"Editing Video\"]', '2021-08-24 07:30:00', 'Cimanggis', 'Selesai'),
(451, 'catur', 1, 3, 'video perkusi , penggabungan ketukan single dan double stroke', 'video ke4 , perform pake ember gabungan single dan double stroke', '', '2021-08-27 00:00:00', '', '[\"Editing Video\"]', '2021-08-24 07:30:00', 'Cimanggis', 'Selesai'),
(452, 'Wanda', 1, 5, 'Sentra persiapan', 'Anticoloring kamar tidur impianku', '', '2021-08-27 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-24 07:30:00', 'Tapos', 'Selesai'),
(453, 'ARI SAPTARINI', 5, 3, 'Video Teaser Pelatihan Akbar SD', 'Video teaser dan lain lain menuju hari H PA SD. Untuk storyboard akan langsung di hubungi oleh bu Mia Pj Acara', '', '2021-08-26 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-24 07:30:00', 'Cimanggis', 'Selesai'),
(454, 'SARIATI', 5, 3, 'Spanduk 21 tahun IHF', 'Ada logo 21 tahun IHF\r\nTema: Tumbuh dan Melangkah\r\nAda foto yang sesuai (Misalkan anak bayi yang baru belajar melangkah)\r\nukurannya disesuaikan denganspanduk yang terpampang di atas pintu masuk parkiran', '', '2021-08-27 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-24 07:30:00', 'Cimanggis', 'Selesai'),
(455, 'khairil ganjar', 3, 3, 'flayer lomba Dongeng SBB', 'flayer ini berisi tentang persyaratan lomba Dongeng untuk Guru SBB dalam Rangka 21 tahun IHF', '24-08-21_PERSYARATAN_LOMBA_MENDONGENG_UNTUK_GURU_SBB.docx', '2021-08-27 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-24 07:30:00', 'Cimanggis', 'Selesai'),
(456, 'Sariati', 5, 3, 'Flyer Lomba menghias pintu Ruangan', 'LOMBA “MENGHIAS PINTU RUANGAN” UNTUK KARYAWAN IHF\r\n\r\nSYARAT DAN KETENTUAN:\r\n1. SETIAP DEPARTEMEN WAJIB MENGHIAS PINTU MASUK RUANGAN DENGAN TEMA “21 IHF”\r\n2. BAHAN YANG DIPAKAI BEBAS, BOLEH DARI BARANG-BARANG BEKAS, BAHAN ALAM, DLL\r\n3. MASING-MASING DEPARTEMEN DIPERBOLEH MELAKUKAN PEMBELIAN BAHAN DENGAN NILAI MAKSIMAL RP 100.000,- DAN DITANGGUNG OLEH MASING-MASING DEPARTEMEN\r\n4. LOMBA DIMULAI DARI TANGGAL 30 AGUSTUS S.D 3 SEPTEMBER\r\n5. PEMENANG DITENTUKAN OLEH JURI\r\n6. UNTUK INFO LEBIH LANJUT, HUBUNGI CP 081318175717 (SARIATI) \r\n\r\nPESERTA:\r\n1. TK Karakter Cimanggis\r\n2. SD Karakter Cimanggis\r\n3. TK Karakter Tapos\r\n4. SD Karakter Tapos\r\n5. SMP Karakter\r\n6. SMA Karakter\r\n7. Markom, IT dan Multimedia\r\n8. SDM\r\n9. Operasional\r\n10. Pelatihan dan SBB\r\n11. QC dan Litbang\r\n12. Keuangan\r\n13. ICE PHBK', '', '2021-08-26 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-24 07:30:00', 'Cimanggis', 'Selesai'),
(457, 'Riris', 1, 6, 'Pilar Dermawan', 'Buku Pilar', '', '2021-09-02 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-26 07:30:00', 'Tapos', 'Selesai'),
(458, 'Wanda', 1, 6, 'Pilar Dermawan', 'Buku Pilar', '', '2021-09-03 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-26 07:30:00', 'Tapos', 'Selesai'),
(459, 'Singgih', 1, 5, 'Pilar Dermawan', 'Boneka Tangan', '', '2021-09-06 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-26 07:30:00', 'Tapos', 'Selesai'),
(460, 'Riris', 1, 5, 'Acting Pilar Dermawan', 'Pilar Dermawan', '', '2021-09-06 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-26 07:30:00', 'Tapos', 'Selesai'),
(461, 'Riris', 1, 5, 'Pilar suka menolong', 'Buku cerita', '', '2021-09-07 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-26 07:30:00', 'Tapos', 'Selesai'),
(462, 'Noerlia Agustina', 4, 5, 'Video Open Sharing SMA', 'Durasi 3.5 menit dan Storyboard terlampir', '27-08-21_Story_Board.docx', '2021-09-10 00:00:00', 'https://www.youtube.com/watch?v=hPoSTdHxAfI', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-27 07:30:00', 'Tapos', 'Selesai'),
(463, 'Hanifah', 2, 4, 'Proyek Tema 1 Saya Suka Membaca (Kelas 1)', 'Temanya : Saya Suka Membaca. Proyeknya anak-anak membuat video membaca/menulis beberapa halaman buku cerita. dari satu anak  dilanjutkan ke anak lainnya.\r\n\r\n1. Bumper awalan : Nama video &quot;Panggung Literasi Menyenangkan&quot;\r\nMenggambarkan anak-anak yang suka membaca\r\n2. Bumper transisi : Untuk transisi satu video anak dengan anak lainnya.\r\n3. Tamplate bingkai pengganti greenscreen video anak-anak\r\n4. Lower third nama panggilan anak dan kelasnya\r\n5. Menyatukan all video per kelas (ada 6 kelas ya bapak-bapak. 1 Kecipir, 1 Kangkung, 1 Kenikir, 1 Tomat Ceri, 1 Tomat Apel dan 1 Tomat Anggur)\r\n\r\nBismillah selesai deh', '', '2021-10-08 00:00:00', 'https://www.youtube.com/watch?v=l1Y15bRrEYQ', '[\"Editing Video\"]', '2021-08-27 07:30:00', 'Cimanggis', 'Sedang Dikerjakan'),
(464, 'Mala Anna dkk kelas 2', 2, 2, 'Program TV Gebyar Budaya Nusantara (Kelas 2)', 'Anak-anak kelas 2 menampilkan kebudayaan Indonesia berupa tarian, nyanyian dan presentasi ensiklopedia (rumah adat, baju adat, budaya, makanan khas, rumah adat, wisata dll) \r\nanak-anak akan Shoot di studio cimanggis di hari rabu dan kamis 8-9 September. \r\nMinta tolong Desain :\r\n- video bumper.\r\n- video animasi pesawat terbang dari pulau ke pulau.(contoh https://youtu.be/Kfl-IqCq558  tambahin gambar pesawatnya. \r\n-untuk edit video akan dibantu dari kelas 2 (Bu Anna) \r\nTapi  minta tolong sharingnya, bantuannya dan sarannya untuk efek atau fitur video yang bisa digunakan jika kami kesulitan.\r\n\r\nNanya pak: \r\n1. waktu acara Agustusan anak2 nyanyi nya pakai alat apa? \r\n2. Cara rekam suara anak dg minus one ada trick nya? Apakah bisa dibantu MM?', '', '2021-09-13 00:00:00', 'https://www.youtube.com/watch?v=lSMDYjPoLoE', '[\"Shoot Video\",\"Desain Gambar\"]', '2021-08-27 07:30:00', 'Cimanggis', 'Selesai'),
(465, 'Shanti', 1, 5, 'Video pilar Dermawan', '2 buku pilar\r\nBuku cerita telur bergilir\r\nBoneka tangan\r\nAkting anak dermawan', '', '2021-08-30 00:00:00', '', '[\"Editing Video\"]', '2021-08-29 07:30:00', 'Tapos', 'Selesai'),
(466, 'Shanti', 1, 5, 'Video pilar suka menolong', '2 buku pilar\r\nBuku cerita\r\nBoneka tangan\r\nAkting anak suka menolong', '', '2021-09-06 00:00:00', '', '[\"Editing Video\"]', '2021-08-29 07:30:00', 'Tapos', 'Selesai'),
(467, 'Nurul', 1, 6, 'Publikasi Pendaftaran PPDB', 'Flyer pemberitahuan H-2, H-1 dan hari H Pendaftaran PPDB melalui link sekolah telah dibuka. Flyer diupload di ig sekolah tanggal 30, 31Agustus dan 1 September (hari H pendaftaran dibuka)', '29-08-21_Story_Board_Publikasi_Pendaftaran_PPDB_(30_Ags-1_Sept).docx', '2021-08-30 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-29 07:30:00', 'Cimanggis', 'Selesai'),
(468, 'Nurul', 1, 6, 'Publikasi Pendaftaran PPDB', 'Flyer pemberitahuan H-2, H-1 dan hari H Pendaftaran PPDB melalui link sekolah telah dibuka. Flyer diupload di ig sekolah tanggal 30, 31Agustus dan 1 September (hari H pendaftaran dibuka)', '29-08-21_Story_Board_Publikasi_Pendaftaran_PPDB_(30_Ags-1_Sept)1.docx', '2021-08-31 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-29 07:30:00', 'Cimanggis', 'Selesai'),
(469, 'Nurul', 1, 6, 'Publikasi Pendaftaran PPDB', 'Flyer pemberitahuan H-2, H-1 dan hari H Pendaftaran PPDB melalui link sekolah telah dibuka. Flyer diupload di ig sekolah tanggal 30, 31Agustus dan 1 September (hari H pendaftaran dibuka)', '29-08-21_Story_Board_Publikasi_Pendaftaran_PPDB_(30_Ags-1_Sept)2.docx', '2021-09-01 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-29 07:30:00', 'Cimanggis', 'Selesai'),
(470, 'Robi', 1, 4, 'GR dan Hari H Trial Class TK Cimanggis Tapos (Bagian dari rangkaian open house)', 'Zoom live untuk tanggal 10 September (GR) dan 11 September (hari H)\r\nKonsep acara: guru akan mengajar di studio. Yang diperlukan adalah kamera dan overhead.', '', '2021-09-11 00:00:00', '', 'null', '2021-08-30 07:30:00', 'Cimanggis', 'Selesai');
INSERT INTO `pengajuan` (`id`, `nama`, `id_departemen`, `id_pegawai`, `nama_project`, `deskripsi`, `storyboard`, `target_project`, `link`, `id_jenis_project`, `waktu_pengajuan`, `tempat`, `status`) VALUES
(471, 'Puput', 1, 5, 'Video english corner', 'Edit video', '', '2021-08-31 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-30 07:30:00', 'Tapos', 'Selesai'),
(472, 'Puput', 1, 5, 'Video pembelajaran Sentra', 'Sentra Imajinasi, Menyusun Maket', '', '2021-09-01 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-08-30 07:30:00', 'Tapos', 'Selesai'),
(474, 'Nurul', 1, 6, 'Publikasi Promosi Acara Bincang-Bincang IG PPDB 2022', 'Pembuatan flyer untuk sharing materi tentang Digital Parenting sebagai pengantar materi bincang-bincang IG, terdiri dari beberapa slide. Diposting di IG sekolah tanggal 1 September, sore hari. Konten terlampir', '31-08-21_Story_Board_Publikasi_Promosi_Bincang-Bincang_IG_(1-4_September).docx', '2021-09-01 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-31 07:30:00', 'Cimanggis', 'Selesai'),
(475, 'Nurul', 1, 6, 'Publikasi Promosi Acara Bincang-Bincang IG PPDB 2022', 'Pembuatan flyer untuk informasi acara bincang2 IG yang akan berlangsung tanggal 4 dan 5 September. Diposting di IG sekolah tanggal 2 September. Konten terlampir', '31-08-21_Story_Board_Publikasi_Promosi_Bincang-Bincang_IG_(1-4_September)1.docx', '2021-09-02 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-31 07:30:00', 'Cimanggis', 'Selesai'),
(476, 'Nurul', 1, 6, 'Publikasi Promosi Acara Bincang-Bincang IG PPDB 2022', 'Pembuatan flyer informasi khusus untuk acara bincang2 IG di tanggal 4 September. Diposting di IG sekolah tanggal 3. Konten terlampir.', '31-08-21_Story_Board_Publikasi_Promosi_Bincang-Bincang_IG_(1-4_September)2.docx', '2021-09-03 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-31 07:30:00', 'Cimanggis', 'Selesai'),
(477, 'Nurul', 1, 6, 'Publikasi Promosi Acara Bincang-Bincang IG PPDB 2022', 'Pembuatan flyer khusus untuk acara bincang2 IG di tanggal 5 September. Diposting di IG sekolah tanggal 4. Konten terlampir', '31-08-21_Story_Board_Publikasi_Promosi_Bincang-Bincang_IG_(1-4_September)3.docx', '2021-09-04 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-31 07:30:00', 'Cimanggis', 'Selesai'),
(478, 'Nada Hafizha', 4, 6, 'Sertifikat pembicara', 'Nama acara: Sharing Guru Tamu: Mengenal Dunia Offshore dan Pertambangan Minyak Bumi di Laut\r\n\r\nNama pembicara: Uden Hadiansah\r\n\r\nWaktu: Selasa,7 September 2021', '', '2021-09-03 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-31 07:30:00', 'Tapos', 'Selesai'),
(479, 'Ari Saptarini', 5, 4, 'Kontent sosmed September 2021', 'Menyiapkan konten sosmed Bulan September untuk postingan IG dan FB. File ada di G Drive Litbang', '', '2021-09-04 00:00:00', '', '[\"Desain Gambar\"]', '2021-08-31 07:30:00', 'Cimanggis', 'Selesai'),
(480, 'arifah', 2, 5, 'video klub', 'video klub seni rupa', '', '2021-09-02 00:00:00', '', '[\"Editing Video\"]', '2021-09-01 07:30:00', 'Tapos', 'Selesai'),
(481, 'arifah', 1, 5, 'video sentra persiapan', 'membuat buku aku', '', '2021-09-05 00:00:00', '', '[\"Editing Video\"]', '2021-09-01 07:30:00', 'Tapos', 'Selesai'),
(483, 'Nurul Fitri Annisa', 1, 2, 'Keterampilan hidup TK A', 'Membersihkan mainan', '', '2021-09-07 00:00:00', '', '[\"Editing Video\"]', '2021-09-01 07:30:00', 'Cimanggis', 'Selesai'),
(485, 'Nurul', 1, 6, 'Publikasi Promosi Acara Free Trial Class TK, SD, SMP', 'Flyer coming soon promosi acara free trial class sebagai rangkaian acara PPDB 2022. Diupload tanggal 4 September sore hari. Isi konten terlampir', '02-09-21_Story_Board_Publikasi_Promosi_Bincang-Bincang_IG_(1-4_September).docx', '2021-09-04 00:00:00', '', '[\"Desain Gambar\"]', '2021-09-02 07:30:00', 'Cimanggis', 'Selesai'),
(486, 'Robi', 1, 4, 'Bumper Karakter Open Days', 'Bumber untuk acara Karakter Open Days.\r\nDibuat yang karakter banget, simple, masuk utk level TK-SMA.\r\nBumper ada rumah pohon dan gedung sekolah karakter versi animasi', '', '2021-09-11 00:00:00', '', '[\"Desain Gambar\"]', '2021-09-02 07:30:00', 'Cimanggis', 'Selesai'),
(487, 'Puput', 1, 5, 'Video pilar LK', 'Buku pilar 5 suka menolong', '', '2021-09-10 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-09-02 07:30:00', 'Tapos', 'Selesai'),
(488, 'Lovea', 1, 5, 'Project pilar tk tapos', 'Ukuran kertas A3,  ada kolom  dan tulisan hari senin-minggu, warna ceria', '', '2021-09-06 00:00:00', '', '[\"Desain Gambar\"]', '2021-09-02 07:30:00', 'Tapos', 'Selesai'),
(489, 'Laysa', 1, 2, 'Video English H5p, drag n drop', 'Ada efek suara \'cring! \' setelah gambar&amp; tulisan (contoh games berhasil:gambar bola&amp;tulisan), tambahan efek splash/cipratan air, ditutup oleh lagu \'play with daddy\'', '', '2021-09-06 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-09-03 07:30:00', 'Cimanggis', 'Selesai'),
(490, 'Nurul', 1, 6, 'Publikasi Promosi Acara Free Trial Class TK, SD, SMP', 'Flyer informasi detail kegiatan trial class untuk TK, SD, dan SMP', '', '2021-09-06 00:00:00', '', '[\"Desain Gambar\"]', '2021-09-06 07:30:00', 'Cimanggis', 'Selesai'),
(492, 'Siti', 3, 5, 'Video Demo Praktikum', 'Pengenalan club sains dan melakukan percobaan sederhana', '', '2021-09-09 00:00:00', '', '[\"Editing Video\"]', '2021-09-06 07:30:00', 'Tapos', 'Selesai'),
(494, 'Lovea', 1, 4, 'Bumper trial class kbtk karakter', '* tulisan judul: TRIAL CLASS KBTK KARAKTER\r\nPPDB 2022-2023\r\n\r\n*tambahan tulisan:  berkarakter, cerdas, dan kreatif\r\n\r\n* foto kegiatan anak', '', '2021-09-09 00:00:00', 'https://youtu.be/BuBE736vDXo', '[\"Editing Video\"]', '2021-09-07 07:30:00', 'Cimanggis', 'Selesai'),
(495, 'Laysa', 1, 2, 'Video life skill cuci sandal', '- boleh bantu ditambah efek suara \'cring\'/ wuzz, dan stiker di bbrp part ya Pak..spy anak anak lebih semangat nontonya, Trimakasih sangaat, dan stiker tulisan di media alat cuci: sikat, sabun cair, wadah, kanebo, \r\nTrimakasih paak Adul!', '', '2021-09-10 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-09-07 07:30:00', 'Cimanggis', 'Selesai'),
(496, 'triani', 4, 6, 'cover rapot  dan cover rapot semester', '1. design cover rapot mid 1 tahun ajaran 2021/2022 (soft file yg bisa di edit untuk bisa ganti nama per siswa)-ukuran A4\r\n2. design cover rapot per anak untuk siswa kelas 10 (soft file yang bisa di edit untuk bisa diganti foto dan nama per siswa)-ukuran rapot narasi', '', '2021-09-10 00:00:00', '', '[\"Desain Gambar\"]', '2021-09-07 07:30:00', 'Tapos', 'Selesai'),
(497, 'Riris', 1, 5, 'Sentra Seni Kreasi_Membuat Kalung atau Gelang', 'TK B', '', '2021-09-13 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-09-07 07:30:00', 'Tapos', 'Selesai'),
(498, 'Nurul', 1, 6, 'Publikasi Promosi Acara Open Sharing TK-SMA', 'Flyer publikasi pemberitahuan coming soon Open Sharing. Rencana akan diupload ke ig sekolah tanggal 11 September. Isi flyer terlampir.', '08-09-21_Story_Board_Publikasi_Promosi_Open_Sharing_(11_dan_15_September).docx', '2021-09-10 00:00:00', '', '[\"Desain Gambar\"]', '2021-09-08 07:30:00', 'Cimanggis', 'Selesai'),
(499, 'Nurul', 1, 6, 'Publikasi Promosi Acara Open Sharing TK-SMA', 'Flyer publikasi pemberitahuan Acara Open Sharing. Rencana akan diupload ke ig sekolah tanggal 14 September. Isi flyer terlampir.', '08-09-21_Story_Board_Publikasi_Promosi_Open_Sharing_(11_dan_15_September)1.docx', '2021-09-14 00:00:00', '', '[\"Desain Gambar\"]', '2021-09-08 07:30:00', 'Cimanggis', 'Selesai'),
(500, 'Tina Sugiharti', 15, 6, 'Sertifikat Matrikulasi PHBK (desain dan cetak)', 'A. Bagian depan\r\n- Penghargaan \r\ndiberikan kepada:\r\nNama Mahasiswa\r\n- Telah Mengikuti Matrikulasi Pendidikan Holistik Berbasis Karakter (PHBK) sebagai mahasiswa ICE-PHBK pada tanggal 20 - 25 September 2021\r\n- Depok, 25 September 2021\r\n- Tanda tangan kiri: Dr. Ir. Ratna Megawangi, M.Sc (Ketua ICE-PHBK)\r\n- Tandan tangan kanan: Tina Sugiharti, S.P., M.Si. (Koordinator Matrikulasi PHBK)\r\n\r\nB. Bagian belakang\r\nMateri Matrikulasi\r\nInstitute of Character Education-Pendidikan Holistik Berbasis Karakter\r\nBentuk Tabel, isinya:\r\n1. Mencetak Generasi Unggul Abad ke-21\r\n2. Menjadi Pribadi Berkarakter\r\n3. Menjadi Pribadi yang Sehat\r\n4. Menjadi Pribadi yang Profesional\r\n5. Menjadi Pribadi yang Tangguh\r\n6. Menjadi Pribadi yang Lebih Baik', '', '2021-09-23 00:00:00', '', '[\"Desain Gambar\"]', '2021-09-14 07:30:00', 'Tapos', 'Selesai'),
(502, 'Tina Sugiharti', 15, 6, 'Kartu Mahasiswa ICE-PHBK angkatan 2021-2022 (Desain dan Cetak)', '1. Desain sama dengan tahun pertama\r\n2. Ditambah barcode untuk perpustakaan', '', '2021-09-24 00:00:00', '', '[\"Desain Gambar\"]', '2021-09-14 07:30:00', 'Tapos', 'Selesai'),
(503, 'Yulia', 2, 4, 'Background Karakter\'s Open Day', 'Kegiatan open sharing dan virtual school tour sekolah karakter\r\nsabtu 18 september 2021', '', '2021-09-17 00:00:00', '', '[\"Desain Gambar\"]', '2021-09-15 07:30:00', 'Cimanggis', 'Selesai'),
(504, 'Nurul Fitri Annisa', 1, 3, 'Video Pilar Kerjasama', 'Video membaca buku pilar kerjasama', '', '2021-09-17 00:00:00', '', '[\"Editing Video\"]', '2021-09-15 07:30:00', 'Cimanggis', 'Selesai'),
(505, 'Neneng', 1, 3, 'Video Pilar Kerjasama', 'Video acting pilar kerjasama', '', '2021-09-22 00:00:00', '', '[\"Editing Video\"]', '2021-09-15 07:30:00', 'Cimanggis', 'Selesai'),
(506, 'Chika', 1, 3, 'Video Pilar Kerjasama', 'Video membaca buku cerita pilar kerjasama (Semut)', '', '2021-09-20 00:00:00', '', '[\"Editing Video\"]', '2021-09-15 07:30:00', 'Cimanggis', 'Selesai'),
(507, 'Laysa', 1, 3, 'Cerita pilar kerjasama', 'Ada lagu pilar di akhir cerita/setelah guru closing :)', '', '2021-09-17 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-09-15 07:30:00', 'Cimanggis', 'Selesai'),
(508, 'Rita', 2, 6, 'sertifikat untuk ortu yg sharing di kegiatan ramah tamah', 'buatkan sertifikat yang isinya ucapan terimakasih kepada orangtua yang telah sharing (mengisi materi) di kegiatan tamah', '', '2021-09-20 00:00:00', 'seperti sertifikat guru tamu', '[\"Desain Gambar\"]', '2021-09-17 07:30:00', 'Tapos', 'Selesai'),
(509, 'Laysa', 1, 3, 'Sentra persiapan melengkapi gambar wajah', '-ada backsound, saat fokus jantung\r\n-aga dipercepat saat menggunting Lembar kerja, diberi musik yg sesuai/ceria\r\nTrimakasih:)', '', '2021-09-18 00:00:00', '', '[\"Editing Video\"]', '2021-09-18 07:30:00', 'Cimanggis', 'Selesai'),
(511, 'Dewi', 8, 4, 'Peta Polygon SMP Tapos', '&lt;p&gt;minta buatkan peta polygon lokasi SMP Karakter tapos , bentuk pdf&lt;/p&gt;', '', '2021-09-21 00:00:00', 'https://youtu.be/mv8fzn4yzzs', '[\"Desain Gambar\"]', '2021-09-20 07:30:00', 'Cimanggis', 'Selesai'),
(512, 'Riani', 4, 5, 'Video animasi pembelajaran', '&lt;p&gt;video animasi pembelajaran sejarah kelas 12&lt;/p&gt;', '', '2021-09-23 00:00:00', '', '[\"Editing Video\"]', '2021-09-20 07:30:00', 'Tapos', 'Selesai'),
(513, 'Putri', 3, 5, 'Video bahasa Indonesia', '&lt;p&gt;Video pembelajaran bahasa Indonesia&lt;/p&gt;', '', '2021-09-20 00:00:00', '', '[\"Editing Video\"]', '2021-09-20 07:30:00', 'Tapos', 'Selesai'),
(514, 'Zahra Nisa', 3, 6, 'Youth Newscaster', '&lt;p&gt;Minta tolong buatkan header untuk di website dan poster untuk dibagikan ke orang tua dan siswa.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;tema:&lt;/strong&gt; pembawa berita muda&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;isi website:&lt;/strong&gt; video mereka sebagai pembawa berita mancanegara (negara ASEAN), beritanya berbagai topik, ada kesehatan, budaya, wisata, teknologi, dll&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;kalimat motivasi di header dan websitenya adalah:&lt;/strong&gt; &quot;Knowing &amp; Waving The World&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;ukuran header:&lt;/strong&gt; 1280 x 333&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;ukuran poster:&lt;/strong&gt; 905 x 1280&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;waktu pelaksanaan:&lt;/strong&gt; Jumat, 1 Oktober 2021&lt;/p&gt;', '21-09-21_youth_newscaster.png', '2021-09-24 00:00:00', '', '[\"Desain Gambar\"]', '2021-09-21 07:30:00', 'Tapos', 'Selesai'),
(515, 'Singgih', 1, 5, 'Sentra Persiapan_Pemeriksaan Kesehatan', '&lt;p&gt;Panca Indra 2 (TK A)&lt;/p&gt;', '', '2021-09-24 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-09-22 07:30:00', 'Tapos', 'Selesai'),
(516, 'Singgih', 1, 5, 'Sentra Ibadah_bercerita tentang wudhu/Bartimus', '&lt;p&gt;Panca Indra 2 (TK A)&lt;/p&gt;', '', '2021-09-24 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-09-22 07:30:00', 'Tapos', 'Selesai'),
(517, 'Dahlan Nur Afandi', 14, 4, 'Edit nama-nama kepsek yang ada di website sekolah', '&lt;p&gt;edit nama kepsek yang ada di website sekolah&lt;/p&gt;', '', '2021-09-24 00:00:00', '', 'null', '2021-09-22 07:30:00', 'Cimanggis', 'Selesai'),
(518, 'Shelly', 1, 3, 'Video pilar', '&lt;p&gt;Storyboard sudah diprint, &lt;/p&gt;\r\n&lt;p&gt;Video pilar LK Pilar sopan dan santun Bu Indah &lt;/p&gt;', '', '2021-09-24 00:00:00', '', '[\"Editing Video\"]', '2021-09-23 07:30:00', 'Cimanggis', 'Selesai'),
(519, 'Shelly', 1, 3, 'Video pilar sopan santun', '&lt;p&gt;Bu Tysha LK Pilar &lt;/p&gt;\r\n&lt;p&gt;(Storyboard sudah diprint)&lt;/p&gt;', '', '2021-09-24 00:00:00', '', '[\"Editing Video\"]', '2021-09-23 07:30:00', 'Cimanggis', 'Selesai'),
(520, 'Shelly', 1, 4, 'Cut video pilar', '&lt;p&gt;Link youtube by WA, &lt;/p&gt;\r\n&lt;p&gt;Detik yang dicut sudah ada di storyboard&lt;/p&gt;', '', '2021-09-27 00:00:00', '', '[\"Editing Video\"]', '2021-09-23 07:30:00', 'Cimanggis', 'Selesai'),
(521, 'shelly', 1, 4, 'Edit video', '&lt;p&gt;Cut video pilar Bu Indah (link via wa)&lt;/p&gt;', '', '2021-09-24 00:00:00', '', '[\"Editing Video\"]', '2021-09-24 07:30:00', 'Cimanggis', 'Selesai'),
(522, 'shelly', 1, 3, 'Video sentra membuat marakas', '&lt;p&gt;Video sentra pak catur, Storyboard sudah diprint di pak adul&lt;/p&gt;', '', '2021-09-27 00:00:00', '', '[\"Editing Video\"]', '2021-09-24 07:30:00', 'Cimanggis', 'Selesai'),
(523, 'Sherlita', 2, 5, 'Matematika- Mengenal Konsep Pola', '&lt;p&gt;Matematika- Mengenal Konsep Pola&lt;/p&gt;', '', '2021-09-24 00:00:00', '', '[\"Editing Video\"]', '2021-09-24 07:30:00', 'Tapos', 'Selesai'),
(524, 'Puput', 1, 5, 'Video sentra', '&lt;p&gt;Sentra eksplorasi cuci alas kaki&lt;/p&gt;', '', '2021-09-29 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-09-27 07:30:00', 'Tapos', 'Selesai'),
(525, 'Vie', 11, 4, 'Flyer Pelatihan Berbayar IHF', '&lt;p&gt;flyer teaser dan pelatihan sesi 1&lt;/p&gt;', '28-09-21_referensi_3.png', '2021-09-29 00:00:00', '', '[\"Desain Gambar\"]', '2021-09-28 07:30:00', 'Cimanggis', 'Sedang Dikerjakan'),
(526, 'Wanda', 1, 5, 'Sentra memasak', '&lt;p&gt;Membuat sate untuk keluarga&lt;/p&gt;', '', '2021-10-01 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-09-28 07:30:00', 'Tapos', 'Selesai'),
(527, 'Wanda', 1, 5, 'Sentra olahraga', '&lt;p&gt;Bermain lempar bola&lt;/p&gt;', '', '2021-10-01 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-09-28 07:30:00', 'Tapos', 'Selesai'),
(528, 'Adis', 2, 4, 'Bumper &quot;Glitter&quot; Gebyar Literasi SD Karakter', '&lt;p&gt;Bumper untuk kegiatan Live zoom pembukaan dan penutupan acara Gebyar Literasi SD Karakter.&lt;/p&gt;\r\n&lt;p&gt;Rangkaian kegiatan nya berupa Dongeng, Puisi, Pantun, Cerpen, sambung cerita.&lt;/p&gt;\r\n&lt;p&gt;Rundown acara terlampir. Desain bumper disesuaikan saja. Terima kasih.&lt;/p&gt;', '28-09-21_Rundown_Pembukaan_GLITER_2021.docx', '2021-10-06 00:00:00', '', '[\"Editing Video\"]', '2021-09-28 07:30:00', 'Cimanggis', 'Sedang Dikerjakan'),
(529, 'Shelly', 1, 3, 'Video Sentra Eksplorasi', '&lt;p&gt;Judul : Sentra Eksplorasi \'Memasangkan wajah anggota keluarga dengan pakaian\' (Bu Tysha)&lt;/p&gt;\r\n&lt;p&gt;Opening &lt;/p&gt;\r\n&lt;p&gt;Isi (pas part mau masangin kepala ayah dan Ibu dicepetin aja)&lt;/p&gt;\r\n&lt;p&gt;Closing &lt;/p&gt;', '', '2021-10-01 00:00:00', '', '[\"Editing Video\"]', '2021-09-29 07:30:00', 'Cimanggis', 'Selesai'),
(530, 'Trias Syaifulina', 2, 3, 'Video Lirik Lagu Semangat Belajar', '&lt;p&gt;Video animasi beserta lirik subtitle&lt;/p&gt;', '', '2021-10-01 00:00:00', '', '[\"Editing Video\"]', '2021-09-29 07:30:00', 'Cimanggis', 'Selesai'),
(531, 'Rahma', 2, 5, 'Video pilar 4', '&lt;p&gt;Menggabungkan video dr shooting&lt;/p&gt;', '', '2021-10-01 00:00:00', '', '[\"Editing Video\"]', '2021-09-29 07:30:00', 'Tapos', 'Selesai'),
(532, 'arifah', 2, 5, 'video klub', '&lt;p&gt;video&lt;/p&gt;', '', '2021-09-29 00:00:00', '', '[\"Editing Video\"]', '2021-09-29 07:30:00', 'Tapos', 'Selesai'),
(533, 'Putri', 3, 5, 'Klub korea', '&lt;p&gt;Untuk klub korea&lt;/p&gt;', '', '2021-09-30 00:00:00', '', '[\"Editing Video\"]', '2021-09-29 07:30:00', 'Tapos', 'Selesai'),
(534, 'Sari', 5, 4, 'flyer Pelatihan AKM', '&lt;p&gt;Sudah di diskusikan dgn Syarif&lt;/p&gt;', '', '2021-10-01 00:00:00', '', '[\"Desain Gambar\"]', '2021-09-30 07:30:00', 'Cimanggis', 'Selesai'),
(535, 'Bu Dwi', 2, 5, 'Proyek Tema &quot;Aku dan Tubuhku&quot; Kelas Ceria', '&lt;p&gt;Urutan Video:&lt;/p&gt;\r\n&lt;p&gt;1. Bumper&lt;/p&gt;\r\n&lt;p&gt;2. Gambar + tulisan Proyek Tema &quot;Aku dan Tubuhku&quot; Kelas Ceria&lt;/p&gt;\r\n&lt;p&gt;3. Foto Paris + Nama Paris&lt;/p&gt;\r\n&lt;p&gt;4. Video Paris&lt;/p&gt;\r\n&lt;p&gt;5. Foto Arka + Nama Arka&lt;/p&gt;\r\n&lt;p&gt;6. Video Arka&lt;/p&gt;\r\n&lt;p&gt;7. Foto Nauli + Nama Nauli&lt;/p&gt;\r\n&lt;p&gt;8. Video Nauli&lt;/p&gt;\r\n&lt;p&gt;9. Video all kelas ceria + guru&lt;/p&gt;\r\n&lt;p&gt;10. Quota: Kami bersyukur telah diberikan anggota tubuh yang lengkap oleh Tuhan. Semoga kami bisa menjaganya selalu _Kelas Ceria_&lt;/p&gt;\r\n&lt;p&gt;11. Ucapa terimakasih&lt;/p&gt;\r\n&lt;p&gt;12. Bumper&lt;/p&gt;', '', '2021-10-06 00:00:00', '', '[\"Editing Video\"]', '2021-09-30 07:30:00', 'Tapos', 'Sedang Dikerjakan'),
(536, 'Puput', 1, 6, 'Video english corner', '&lt;p&gt;English Corner : Story Time &quot;Short &amp; Tall&quot;&lt;/p&gt;', '', '2021-10-04 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-09-30 07:30:00', 'Tapos', 'Selesai'),
(537, 'Riris', 1, 6, 'Pilar Pendengar yang Baik', '&lt;p&gt;Akting&lt;/p&gt;', '', '2021-10-06 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-10-03 07:30:00', 'Tapos', 'Selesai'),
(538, 'Rona Aulia Karimah', 2, 5, 'Proyek Tema 1 - Saya Suka Membaca', '&lt;p&gt;Proyek ini merupakan proyek akhir tema 1 - Saya Suka Membaca&lt;br&gt;Judul proyeknya adalah &quot;Panggung Literasi Menyenangkan&quot;&lt;/p&gt;\r\n&lt;p&gt;Berikut link gdrive bahan yang akan diedit&lt;br&gt;&lt;a href=&quot;https://drive.google.com/drive/folders/1uR4Ac-IPUE-OJ7oFkUxShp8jW7Qp-i_-?usp=sharing&quot;&gt;https://drive.google.com/drive/folders/1uR4Ac-IPUE-OJ7oFkUxShp8jW7Qp-i_-?usp=sharing&lt;/a&gt;&lt;br&gt;&lt;br&gt;Videonya ada 3 kelas, 1 Tomat Apel, 1 Tomat Ceri, 1 Tomat Anggur&lt;br&gt;1 kelas memiliki 3 kelompok bagian yaitu membaca buku literasi, menceritakan buku literasi, menggambar huruf menjadi sesuatu.&lt;br&gt;Anak-anak diminta membuat 2 video, yaitu video utama dan video testimoni.&lt;br&gt;&lt;br&gt;Nanti hasil videonya ada 5 dalam 1 kelas&lt;br&gt;- membaca buku literasi 1&lt;br&gt;- membaca buku literasi 2&lt;br&gt;- menceritakan buku literasi 1&lt;br&gt;- menceritakan buku literasi 2&lt;br&gt;- menggambar huruf&lt;/p&gt;\r\n&lt;p&gt;susunannya &lt;br&gt;testimoni 4 anak yg baca buku 1&lt;br&gt;membaca buku 1&lt;/p&gt;\r\n&lt;p&gt;testimoni 4 anak ceritakan kembali 1&lt;br&gt;ceritakan kembali 1&lt;br&gt;&lt;br&gt;Sekian,&lt;br&gt;Terimakasih &lt;br&gt;&lt;br&gt;Jika ada pertanyaan boleh dichatt wa&lt;/p&gt;', '', '2021-10-05 00:00:00', '', '[\"Editing Video\"]', '2021-10-03 07:30:00', 'Tapos', 'Sedang Dikerjakan'),
(539, 'hany', 1, 4, 'Syuting Rekaman Lagu Cinta Rasul', '&lt;p&gt;Video klip rekaman siswa saat nanyi dan memasukkan teks pada video klip&lt;/p&gt;', '', '2021-10-15 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-10-04 07:30:00', 'Tapos', 'Sedang Dikerjakan'),
(540, 'Mr Aan/ hany', 3, 1, 'Video klip lagu ttg cinta Rasul', '&lt;p&gt;video klip dengan rekaman lagu bersama siswa yang dibuat Mr aan&lt;/p&gt;', '', '2021-10-15 00:00:00', '', '[\"Shoot Video\",\"Editing Video\",\"Desain Gambar\"]', '2021-10-04 07:30:00', 'Cimanggis', 'Menunggu Diproses'),
(541, 'Wanda', 1, 4, 'Pilar', '&lt;p&gt;Pendengar yang baik&lt;/p&gt;', '', '2021-10-06 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-10-04 07:30:00', 'Tapos', 'Sedang Dikerjakan'),
(542, 'Puput', 1, 4, 'Video Pilar', '&lt;p&gt;Video Pilar Hormat dan Patuh (riris shanti arifah puput) &lt;/p&gt;', '', '2021-10-08 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-10-05 07:30:00', 'Tapos', 'Sedang Dikerjakan'),
(543, 'Puput', 1, 1, 'Video pembelajaran Sentra', '&lt;p&gt;Video Sentra Berkebun (Puput) &lt;/p&gt;', '', '2021-10-08 00:00:00', '', '[\"Shoot Video\",\"Editing Video\"]', '2021-10-05 07:30:00', 'Tapos', 'Menunggu Diproses'),
(544, 'Balgis Saskia', 2, 1, 'Photoshoot SD KELAS 1', '&lt;p&gt;Memfoto siswa kelas 1 di Perpus gedung 2. Dengan latar hijau. &lt;/p&gt;\r\n&lt;p&gt;MM stand by Pukul 8 pagi&lt;/p&gt;\r\n&lt;p&gt;Hari senin dan rabu&lt;/p&gt;\r\n&lt;p&gt;11 dan 13 Oktober 2021&lt;/p&gt;', '', '2021-10-11 00:00:00', '', '[\"Shoot Video\"]', '2021-10-05 07:30:00', 'Cimanggis', 'Menunggu Diproses'),
(545, 'Shelly', 1, 1, 'Video gerak dan lagu TK B', '&lt;p&gt;Judul : Tarian daerah &quot;Manuk Dadali&quot; (Bu Shelly) &lt;/p&gt;\r\n&lt;p&gt;Urutan video :&lt;/p&gt;\r\n&lt;p&gt;1. Salam sapa sampai jelasin kegiatan&lt;/p&gt;\r\n&lt;p&gt;2. Penjelasan kostum anak laki-laki dan perempuan &lt;/p&gt;\r\n&lt;p&gt;3. Penjelasan gerakan 1 - 4 (tiap gerakan kasih tulisan ya, misal gerakan 1)&lt;/p&gt;\r\n&lt;p&gt;4. Tarian full (pake musik, video dibuat 2 frame kasih tulisan yang pake kebaya orange &quot;anak perempuan&quot;, yang baju putih &quot;anak laki-laki&quot; &lt;/p&gt;\r\n&lt;p&gt;5. Closing&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', '', '2021-10-08 00:00:00', '', '[\"Editing Video\"]', '2021-10-05 07:30:00', 'Cimanggis', 'Menunggu Diproses'),
(546, 'Shelly', 1, 1, 'Video gerak dan lagu', '&lt;p&gt;Judul : Tarian Daerah &quot;Sajojo&quot; (Bu Indah)&lt;/p&gt;\r\n&lt;p&gt;Urutan :&lt;/p&gt;\r\n&lt;p&gt;1. Opening : salam sapa sampai kostum&lt;/p&gt;\r\n&lt;p&gt;2. Penjelasan gerakan (kasih tulisan misal &quot;gerakan 1)&lt;/p&gt;\r\n&lt;p&gt;3. Tarian pake musik (link musik send by WA)&lt;/p&gt;\r\n&lt;p&gt;4. Closing &lt;/p&gt;', '', '2021-10-08 00:00:00', '', '[\"Editing Video\"]', '2021-10-05 07:30:00', 'Cimanggis', 'Menunggu Diproses'),
(547, 'Hendrik Purnama', 4, 6, 'Logo OSIS SMA KARAKTER', '&lt;p&gt;logo sama seperti OSIS SMP, Namun beda tulisan sama warna saja &lt;/p&gt;', '', '2021-10-07 00:00:00', '081387113544', '[\"Desain Gambar\"]', '2021-10-06 07:30:00', 'Tapos', 'Sedang Dikerjakan'),
(548, 'Ediana', 15, 1, 'Video MEngajar', '&lt;p&gt;VideoMengajar Bu Triani&lt;/p&gt;', '', '2021-10-06 00:00:00', '', '[\"Editing Video\"]', '2021-10-06 07:30:00', 'Tapos', 'Menunggu Diproses'),
(549, 'Nurul', 1, 1, 'Rancang Bangun TK A', '&lt;p&gt;kegiatan rancang bangun membuat rumah untuk keluarga dari lego&lt;/p&gt;', '', '2021-10-08 00:00:00', '', '[\"Editing Video\"]', '2021-10-06 07:30:00', 'Cimanggis', 'Menunggu Diproses'),
(550, 'Yunita Hardian Putri', 2, 1, 'Pemotretan Cover Rapor', '&lt;p&gt;Foto cover rapor dan pembuatan cover rapor kelas 2 (susulan)&lt;/p&gt;\r\n&lt;p&gt;- Foto cover rapor dilakukan setelah foto cover rapor kelas 1 pada hari: Senin, 11 Oktober dan Rabu, 13 Oktober&lt;/p&gt;\r\n&lt;p&gt;- Jumlah anak yang akan di foto&lt;/p&gt;\r\n&lt;p&gt;Senin = 7 orang&lt;/p&gt;\r\n&lt;p&gt;Rabu = 9 orang&lt;/p&gt;\r\n&lt;p&gt;- Setelah itu, mohon tolong dibuatkan cover rapornya ya pak&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;Terima kasih ????&lt;/p&gt;', '', '2021-11-12 00:00:00', '', '[\"Desain Gambar\"]', '2021-10-07 07:30:00', 'Cimanggis', 'Menunggu Diproses'),
(551, 'Nurul', 1, 1, 'Publikasi Informasi Penutupan PPDB', '&lt;p&gt;Flyer informasi H-3 penutupan PPDB, diuopload tanggal 8 Oktober&lt;/p&gt;', '07-10-21_Story_Board_Publikasi_Info_Penutupan_Pendafataran_(8_Oktober).docx', '2021-10-08 00:00:00', '', '[\"Desain Gambar\"]', '2021-10-07 07:30:00', 'Cimanggis', 'Menunggu Diproses');

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
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departemen` (`id_departemen`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departemen` (`id_departemen`),
  ADD KEY `id_pegawai` (`id_pegawai`);

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
  MODIFY `id_departemen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id_departemen`),
  ADD CONSTRAINT `maintenance_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);

--
-- Constraints for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD CONSTRAINT `pengajuan_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id_departemen`),
  ADD CONSTRAINT `pengajuan_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
