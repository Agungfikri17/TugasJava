-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Des 2021 pada 15.45
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblkas`
--

CREATE TABLE `tblkas` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `debit` varchar(20) NOT NULL,
  `kredit` varchar(20) NOT NULL,
  `saldo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tblkas`
--

INSERT INTO `tblkas` (`id`, `tanggal`, `keterangan`, `debit`, `kredit`, `saldo`) VALUES
(1, '02/12/2021', 'saldo awal', 'Rp.3.000.000', '', 'Rp.3.000.000'),
(3, '02/12/2022', 'biaya listrik', '', 'Rp.300.000', 'Rp.2.700.000'),
(4, '02/12/2021', 'keutungan bagi hasil', 'Rp.3.000.0000', '', 'Rp.5.700.000'),
(5, '02/12/2021', 'Pembelian Bahan Baku', '', 'Rp.500.000', 'Rp.5.200.000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tblkas`
--
ALTER TABLE `tblkas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tblkas`
--
ALTER TABLE `tblkas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
