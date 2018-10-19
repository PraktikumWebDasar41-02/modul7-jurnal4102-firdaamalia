-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2018 pada 05.05
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jurnal_firda`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal`
--

CREATE TABLE `jurnal` (
  `nama` varchar(20) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `program_studi` varchar(20) NOT NULL,
  `fakultas` varchar(20) NOT NULL,
  `asal` varchar(20) NOT NULL,
  `moto_hidup` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurnal`
--

INSERT INTO `jurnal` (`nama`, `nim`, `tanggal_lahir`, `jenis_kelamin`, `program_studi`, `fakultas`, `asal`, `moto_hidup`) VALUES
('Risma Ayu', '6701170057', '2006-07-21', 'perempuan', 'informatika', 'FTE', 'Bandung', 'be happy'),
('ibnu', '6701170060', '2018-10-06', 'Laki-Laki', 'sistem informasi', 'FIT', 'bogor', 'qonaah'),
('Firda Amalia', '6701170064', '1999-10-02', 'perempuan', 'D3 sistem informasi', 'FIT', 'Cirebon', 'bermanfaat '),
('Aji', '6701170088', '2017-10-06', 'Laki-Laki', 'informatika', 'FIT', 'Tasik', 'ceria'),
('Lintang', '7670117004', '2008-10-24', 'Laki-Laki', 'teknik komputer', 'FRI', 'Purwokerto', 'baerfaedah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
