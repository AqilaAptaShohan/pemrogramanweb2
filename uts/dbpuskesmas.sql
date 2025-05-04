-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2025 at 07:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpuskesmas`
--

-- --------------------------------------------------------

--
-- Table structure for table `klurahan`
--

CREATE TABLE `klurahan` (
  `id` int(11) NOT NULL,
  `nama_kelurahan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klurahan`
--

INSERT INTO `klurahan` (`id`, `nama_kelurahan`) VALUES
(1, 'Pasirkuda'),
(2, 'Cibinong'),
(3, 'Mawar'),
(4, 'Cileungsi'),
(5, 'Karadenan'),
(6, 'Sukahati'),
(7, 'Sukaraja');

-- --------------------------------------------------------

--
-- Table structure for table `paramedik`
--

CREATE TABLE `paramedik` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `kategori` enum('Dokter','Perawat','Bidan') DEFAULT NULL,
  `telpon` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `unitkerja_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paramedik`
--

INSERT INTO `paramedik` (`id`, `nama`, `gender`, `tmp_lahir`, `tgl_lahir`, `kategori`, `telpon`, `alamat`, `unitkerja_id`) VALUES
(1, 'Muhammad Raihan', 'L', 'Jakarta', '1995-05-15', 'Dokter', '08123456789', 'Jl. Merdeka No. 1, Pasirkuda', 1),
(2, 'Aqila Apta', 'P', 'Bandung ', '1990-08-20', 'Perawat', '082345678901', 'Jl. Kebangsaan No. 2, Cibinong', 2),
(3, 'Assyifa Khoirunnisa', 'p', 'Surabaya', '1988-12-10', 'Bidan', '0834567890', 'Jl. Sehat No. 3, Mawar', 3),
(4, 'Muhammad Zulfikar', 'L', 'Medan', '1982-03-25', 'Dokter', '086789012', 'Jl. Cinta No. 4, Cileungsi', 4),
(5, 'Sofwatun Najwa', 'P', 'Semarang', '1995-07-30', 'Perawat', '08567890123', 'Jl. Damai No. 5, Karadenan', 5),
(6, 'Muhammad Alviansyah', 'L', 'Yogyakarta', '1980-11-11', 'Dokter', '08678901234', 'Jl. Bahagia No. 6, Sukahati', 6),
(7, 'Ayu Della', 'p', 'Bali', '1992-09-15', 'Bidan', '08789012345', 'Jl. Indah No. 7, Sukaraja', 5),
(8, 'Reza Firmansyah', 'L', 'Palembang', '1987-01-05', 'Dokter', '08890123456', 'Jl. Sejahtera No. 8, Pasirkuda', 2),
(9, 'Nurul Destiyana', 'P', 'Makassar', '1993-04-22', 'Perawat', '08901234567', 'Jl. Sukses No. 9, Cibinong', 1),
(10, 'Andhika Haikal', 'L', 'Bandung ', '1984-06-18', 'Dokter', '09012345678', 'Jl. Harapan No. 10, Mawar', 5),
(11, 'Cinta Melati', 'P', 'Jakarta', '1991-10-10', 'Bidan', '09123456789', 'Jl. Kesehatan No. 11, Cileungsi', 6),
(12, 'Fathi Farhan', 'L', 'Surabaya', '1986-02-14', 'Perawat', '09234567890', 'Jl. Cemerlang No. 12, Karadenan', 3),
(13, 'Eka Purnamasari', 'P', 'Medan', '1994-12-01', 'Bidan', '09345678901', 'Jl. Maju No. 13, Sukahati', 6),
(14, 'Dzikra Putra', 'L', 'Yogyakarta', '1983-08-28', 'Perawat', '09456789012', 'Jl. Aman No. 14, Sukaraja', 4),
(15, 'Dinta Fridayanti', 'P', 'Bali', '1996-05-05', 'Perawat', '09567890123', 'Jl. Ceria No. 15, Pasirkuda', 6);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `klurahan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `kode`, `nama`, `tmp_lahir`, `tgl_lahir`, `gender`, `email`, `alamat`, `klurahan_id`) VALUES
(1, 'P001', 'Meisha Teluma', 'Bogor', '1995-09-12', 'P', 'meisha0912@gmail.com', 'Jl. Kenangan No. 19\r\n', 6),
(2, 'P002', 'Ahmad Fauzan', 'Jakarta', '2000-09-05', 'L', 'fauzanahmad@gmail.com', 'Jl. Tegar Beriman No. 78', 2),
(3, 'P003', 'Dzikra Aulia', 'Depok', '2001-09-18', 'P', 'auldzik1809@gmail.com', 'Jl. Kebahagian No. 9', 1),
(4, 'P004', 'Quinnsha Qiana', 'Bogor', '2000-07-28', 'P', 'qiana2807@gmail.com', 'Jl. Kenangan No 67', 3),
(5, 'P005', 'Fikri Saputra', 'Bandung ', '2004-05-12', 'L', 'safikrr88@gmail.com', 'Jl. Galau No. 89', 7),
(6, 'P006', 'Syahrul Hidayat', 'Madura', '1990-01-17', 'L', 'hidayat171990@gmail.com', 'Jl. Galau No 87', 4),
(7, 'P007', 'Septiani Alifah', 'Cilacap', '1989-01-28', 'P', 'tianipah89@gmail.com', 'Jl. Kebahagian No 10', 2),
(8, 'P008', 'Aisyah Syafitri', 'Bandung', '1997-02-15', 'P', 'pipit0297@gmail.com', 'Jl. Kenangan Indah No 98', 6),
(9, 'P009', 'Ahmad Dhani', 'Cirebon', '2003-09-25', 'L', 'dhanimat39@gmail.com', 'Jl. HTS No 76', 1),
(10, 'P010', 'Siti Fadilah ', 'Bengkulu', '2004-08-12', 'P', 'dilaaa12@gmail.com', 'Jl. Kebanggaan No. 10', 5),
(11, 'P011', 'Verawati Fadillah', 'Makassar', '1991-10-21', 'P', 'rawati91@gmail.com', 'Jl. Kepastian No.19', 3),
(12, 'P012', 'Fikri Farhani', 'Jakarta', '1889-09-07', 'L', 'paungbooyahh@gmail.com', 'Jl. Tegar Beriman No. 54', 2),
(13, 'P013', 'Hugo Widya Dhana', 'Bogor', '2005-07-10', 'L', 'dhana07@gmail.com', 'Jl. Kenangan Indah No. 17', 7),
(14, 'P014', 'Maysella Sukarno', 'Kebumen', '2002-03-15', 'P', 'sukarno@gmail.com', 'Jl. Kebahagiaan No. 115', 4),
(15, 'P015', 'Muhammad Haikal Muzaki', 'Surabaya', '2003-10-15', 'L', 'muzakikal@gmail.com', 'Jl. HTS No. 12', 6),
(16, 'P016', 'Miftahul Fajri', 'Yogyakarta', '1999-08-05', 'L', 'fajrihul055@gmail.com', 'Jl. Kencayana Raya No. 18', 4),
(17, 'P017', 'Meivaza Haura ', 'Jakarta', '2024-05-25', 'P', 'hauramei25@gmail.com', 'Jl. LDR No. 94', 6),
(18, 'P018', 'Zevania Aura', 'Bandung ', '2025-02-19', 'P', 'zezeraa1919@gmail.com', 'Jl. Tulus No. 89', 1),
(19, 'P019', 'Azlan Mubarok', 'Jakarta', '2019-03-29', 'L', 'zlaaanmu29@gmail.com', 'Jl. Kebahagiaan No. 28', 4);

-- --------------------------------------------------------

--
-- Table structure for table `periksa`
--

CREATE TABLE `periksa` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `berat` double DEFAULT NULL,
  `tinggi` double DEFAULT NULL,
  `tensi` varchar(20) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `pasien_id` int(11) DEFAULT NULL,
  `dokter_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `periksa`
--

INSERT INTO `periksa` (`id`, `tanggal`, `berat`, `tinggi`, `tensi`, `keterangan`, `pasien_id`, `dokter_id`) VALUES
(1, '2025-10-01', 60, 70, '120/80', 'Pemeriksaan rutin, kondisi stabil', 1, 1),
(2, '2025-10-02', 55, 165, '110/70', 'Pemeriksaan kesehatan, tidak ada keluhan', 2, 2),
(3, '2025-10-03', 70, 175, '130/85', 'Pemeriksaan kesehatan, perlu diet', 3, 3),
(4, '2025-10-04', 80, 180, '140/90', 'Pemeriksaan kesehatan, hipertensi ringan', 4, 1),
(5, '2025-10-05', 65, 160, '115/75', 'Pemeriksaan kesehatan, kondisi baik', 5, 2),
(6, '2025-10-06', 75, 178, '135/88', 'Pemeriksaan kesehatan, perlu olahraga', 6, 4),
(7, '2025-10-07', 68, 165, '120/80', 'Pemeriksaan kesehatan, kondisi stabil', 7, 5),
(8, '2025-10-08', 72, 172, '125/82', 'Pemeriksaan kesehatan, tidak ada keluhan', 8, 15),
(9, '2025-10-09', 58, 160, '110/70', 'Pemeriksaan kesehatan, perlu peningkatan gizi', 9, 14),
(10, '2025-10-10', 62, 168, '118/76', 'Pemeriksaan kesehatan, kondisi baik', 10, 13),
(11, '2025-10-11', 64, 162, '119/77', 'Pemeriksaan kesehatan, tidak ada keluhan', 11, 12),
(12, '2025-10-12', 66, 170, '121/78', 'Pemeriksaan kesehatan, perlu kontrol diet', 12, 11),
(13, '2023-10-13', 69, 174, '123/79', 'Pemeriksaan kesehatan, kondisi stabil', 13, 10),
(14, '2025-10-14', 74, 177, '128/84', 'Pemeriksaan kesehatan, hipertensi ringan', 14, 9),
(15, '2025-10-15', 71, 173, '126/81', 'Pemeriksaan kesehatan, perlu olahraga', 15, 8),
(16, '2025-10-16', 63, 169, '117/75', 'Pemeriksaan kesehatan, kondisi stabil', 16, 7),
(17, '2025-10-17', 59, 161, '112/72', 'Pemeriksaan kesehatan, tidak ada keluhan', 17, 6),
(18, '2025-10-18', 12, 50, '85/55', 'Pemeriksaan kesehatan, kondisi baik,', 18, 7),
(19, '2025-10-19', 14, 95, '90/60', 'Pemeriksaan kesehatan, tidak ada keluhan', 19, 11);

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `id` int(11) NOT NULL,
  `kode_unit` varchar(50) NOT NULL,
  `nama_unit` varchar(100) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`id`, `kode_unit`, `nama_unit`, `keterangan`) VALUES
(1, 'UK001', 'UGD', 'Unit Gawat Darurat'),
(2, 'UK002', 'IGD', 'Instalasi Gawat Darurat'),
(3, 'UK003', 'RO', 'Ruang Operasi'),
(4, 'UK004', 'RUDO', 'Ruang Radiologi'),
(5, 'UK005', 'ICU', 'Unit Perawat Intensif'),
(6, 'UK006', 'HCU', 'High Care Unit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `klurahan`
--
ALTER TABLE `klurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paramedik`
--
ALTER TABLE `paramedik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unitkerja_id` (`unitkerja_id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `klurahan_id` (`klurahan_id`);

--
-- Indexes for table `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasien_id` (`pasien_id`),
  ADD KEY `dokter_id` (`dokter_id`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klurahan`
--
ALTER TABLE `klurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `paramedik`
--
ALTER TABLE `paramedik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `periksa`
--
ALTER TABLE `periksa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paramedik`
--
ALTER TABLE `paramedik`
  ADD CONSTRAINT `paramedik_ibfk_1` FOREIGN KEY (`unitkerja_id`) REFERENCES `unit_kerja` (`id`);

--
-- Constraints for table `pasien`
--
ALTER TABLE `pasien`
  ADD CONSTRAINT `pasien_ibfk_1` FOREIGN KEY (`klurahan_id`) REFERENCES `klurahan` (`id`);

--
-- Constraints for table `periksa`
--
ALTER TABLE `periksa`
  ADD CONSTRAINT `periksa_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`),
  ADD CONSTRAINT `periksa_ibfk_2` FOREIGN KEY (`dokter_id`) REFERENCES `paramedik` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
