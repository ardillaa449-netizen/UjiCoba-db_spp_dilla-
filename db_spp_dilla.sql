-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2026 pada 07.46
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spp_dilla`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
('1', 'XII', 'RPL'),
('2', 'XI', 'HTL'),
('9999', 'xii ', 'dpb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(10) NOT NULL,
  `no_bayar` varchar(11) DEFAULT NULL,
  `id_petugas` varchar(5) DEFAULT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `bulan_tagihan` varchar(12) NOT NULL,
  `tahun_tagihan` int(11) NOT NULL,
  `id_spp` varchar(5) NOT NULL,
  `keterangan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `no_bayar`, `id_petugas`, `nisn`, `tgl_pembayaran`, `bulan_tagihan`, `tahun_tagihan`, `id_spp`, `keterangan`) VALUES
(40, NULL, NULL, '9898', '0000-00-00', 'Juli', 2026, 'SPP1', ''),
(41, NULL, NULL, '9898', '0000-00-00', 'Agustus', 2026, 'SPP1', ''),
(42, NULL, NULL, '9898', '0000-00-00', 'September', 2026, 'SPP1', ''),
(43, NULL, NULL, '9898', '0000-00-00', 'Oktober', 2026, 'SPP1', ''),
(44, NULL, NULL, '9898', '0000-00-00', 'Nopember', 2026, 'SPP1', ''),
(45, NULL, NULL, '9898', '0000-00-00', 'Desember', 2026, 'SPP1', ''),
(46, NULL, NULL, '9898', '0000-00-00', 'Januari', 2027, 'SPP1', ''),
(47, NULL, NULL, '9898', '0000-00-00', 'Februari', 2027, 'SPP1', ''),
(48, NULL, NULL, '9898', '0000-00-00', 'Maret', 2027, 'SPP1', ''),
(49, NULL, NULL, '9898', '0000-00-00', 'April', 2027, 'SPP1', ''),
(50, NULL, NULL, '9898', '0000-00-00', 'Mei', 2027, 'SPP1', ''),
(51, NULL, NULL, '9898', '0000-00-00', 'Juni', 2027, 'SPP1', ''),
(52, '2609090001', 'A01', '7878', '2026-09-09', 'Juli', 2026, 'SPP0', 'LUNAS'),
(53, '2609090002', 'A01', '7878', '2026-09-09', 'Agustus', 2026, 'SPP0', 'LUNAS'),
(54, NULL, NULL, '7878', '0000-00-00', 'September', 2026, 'SPP0', ''),
(55, NULL, NULL, '7878', '0000-00-00', 'Oktober', 2026, 'SPP0', ''),
(56, NULL, NULL, '7878', '0000-00-00', 'Nopember', 2026, 'SPP0', ''),
(57, NULL, NULL, '7878', '0000-00-00', 'Desember', 2026, 'SPP0', ''),
(58, NULL, NULL, '7878', '0000-00-00', 'Januari', 2027, 'SPP0', ''),
(59, NULL, NULL, '7878', '0000-00-00', 'Februari', 2027, 'SPP0', ''),
(60, NULL, NULL, '7878', '0000-00-00', 'Maret', 2027, 'SPP0', ''),
(61, NULL, NULL, '7878', '0000-00-00', 'April', 2027, 'SPP0', ''),
(62, NULL, NULL, '7878', '0000-00-00', 'Mei', 2027, 'SPP0', ''),
(63, NULL, NULL, '7878', '0000-00-00', 'Juni', 2027, 'SPP0', ''),
(64, '2609090003', 'A01', '5656', '2026-09-09', 'Juli', 2026, 'SPP1', 'LUNAS'),
(65, '2609090004', 'A01', '5656', '2026-09-09', 'Agustus', 2026, 'SPP1', 'LUNAS'),
(66, '2609250001', 'A01', '5656', '2026-09-25', 'September', 2026, 'SPP1', 'LUNAS'),
(67, '2609250002', 'A01', '5656', '2026-09-25', 'Oktober', 2026, 'SPP1', 'LUNAS'),
(68, '2609250003', 'A01', '5656', '2026-09-25', 'Nopember', 2026, 'SPP1', 'LUNAS'),
(69, NULL, NULL, '5656', '0000-00-00', 'Desember', 2026, 'SPP1', ''),
(70, NULL, NULL, '5656', '0000-00-00', 'Januari', 2027, 'SPP1', ''),
(71, NULL, NULL, '5656', '0000-00-00', 'Februari', 2027, 'SPP1', ''),
(72, NULL, NULL, '5656', '0000-00-00', 'Maret', 2027, 'SPP1', ''),
(73, NULL, NULL, '5656', '0000-00-00', 'April', 2027, 'SPP1', ''),
(74, NULL, NULL, '5656', '0000-00-00', 'Mei', 2027, 'SPP1', ''),
(75, NULL, NULL, '5656', '0000-00-00', 'Juni', 2027, 'SPP1', ''),
(76, NULL, NULL, '9090', '0000-00-00', 'Juli', 2026, 'SPP1', ''),
(77, NULL, NULL, '9090', '0000-00-00', 'Agustus', 2026, 'SPP1', ''),
(78, NULL, NULL, '9090', '0000-00-00', 'September', 2026, 'SPP1', ''),
(79, NULL, NULL, '9090', '0000-00-00', 'Oktober', 2026, 'SPP1', ''),
(80, NULL, NULL, '9090', '0000-00-00', 'Nopember', 2026, 'SPP1', ''),
(81, NULL, NULL, '9090', '0000-00-00', 'Desember', 2026, 'SPP1', ''),
(82, NULL, NULL, '9090', '0000-00-00', 'Januari', 2027, 'SPP1', ''),
(83, NULL, NULL, '9090', '0000-00-00', 'Februari', 2027, 'SPP1', ''),
(84, NULL, NULL, '9090', '0000-00-00', 'Maret', 2027, 'SPP1', ''),
(85, NULL, NULL, '9090', '0000-00-00', 'April', 2027, 'SPP1', ''),
(86, NULL, NULL, '9090', '0000-00-00', 'Mei', 2027, 'SPP1', ''),
(87, NULL, NULL, '9090', '0000-00-00', 'Juni', 2027, 'SPP1', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('admin','petugas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
('A01', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'sasa', 'admin'),
('A02', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'Budi', 'petugas'),
('AO3', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Dizka', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `id_spp` varchar(5) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`, `jenis_kelamin`) VALUES
('5656', '0909', 'Aya', '1', 'Palm', '0886675465', 'SPP1', NULL),
('7878', '7678', 'Fany', '9999', 'Abadi 3', '0988798798', 'SPP0', NULL),
('9090', '7676', 'Dizka', '2', 'transs', '0988798798', 'SPP1', NULL),
('9898', '8787', 'Dilla', '2', 'Palm', '08876567', 'SPP1', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `id_spp` varchar(5) NOT NULL,
  `tahun` int(4) NOT NULL,
  `nominal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
('SPP0', 2011, 55000),
('SPP1', 2012, 65000),
('SPP2', 2013, 75000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `nisn` (`nisn`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indeks untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
