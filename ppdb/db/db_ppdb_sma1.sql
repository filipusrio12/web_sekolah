-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 14, 2018 at 12:09 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ppdb_sma1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai_unbk`
--

DROP TABLE IF EXISTS `tbl_nilai_unbk`;
CREATE TABLE IF NOT EXISTS `tbl_nilai_unbk` (
  `id_nilai_unbk` int(11) NOT NULL AUTO_INCREMENT,
  `mapel_unbk` varchar(100) DEFAULT NULL,
  `nilai_unbk` int(10) DEFAULT NULL,
  `no_pendaftaran` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_nilai_unbk`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nilai_unbk`
--

INSERT INTO `tbl_nilai_unbk` (`id_nilai_unbk`, `mapel_unbk`, `nilai_unbk`, `no_pendaftaran`) VALUES
(8, 'Matematika', 80, 'PSB18004001'),
(6, 'Ilmu Pengetahuan Alam (IPA)', 80, 'PSB18004001'),
(9, 'Bahasa Indonesia', 80, 'PSB18004001'),
(10, 'Bahasa Inggris', 80, 'PSB18004001'),
(11, 'Ilmu Pengetahuan Alam (IPA)', 80, 'PSB18004002'),
(13, 'Matematika', 80, 'PSB18004002'),
(14, 'Bahasa Indonesia', 80, 'PSB18004002'),
(15, 'Bahasa Inggris', 80, 'PSB18004002'),
(16, 'Ilmu Pengetahuan Alam (IPA)', 80, 'PSB18004003'),
(17, 'Matematika', 80, 'PSB18004003'),
(18, 'Bahasa Indonesia', 80, 'PSB18004003'),
(19, 'Bahasa Inggris', 80, 'PSB18004003'),
(21, 'Ilmu Pengetahuan Alam (IPA)', 80, 'PSB18004004'),
(22, 'Matematika', 80, 'PSB18004004'),
(23, 'Bahasa Indonesia', 80, 'PSB18004004'),
(24, 'Bahasa Inggris', 80, 'PSB18004004');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai_usbn`
--

DROP TABLE IF EXISTS `tbl_nilai_usbn`;
CREATE TABLE IF NOT EXISTS `tbl_nilai_usbn` (
  `id_nilai_usbn` int(10) NOT NULL AUTO_INCREMENT,
  `mapel_usbn` varchar(100) DEFAULT NULL,
  `nilai_usbn` varchar(100) DEFAULT NULL,
  `no_pendaftaran` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_nilai_usbn`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nilai_usbn`
--

INSERT INTO `tbl_nilai_usbn` (`id_nilai_usbn`, `mapel_usbn`, `nilai_usbn`, `no_pendaftaran`) VALUES
(1, 'Pendidikan Agama', '80', 'PSB18004003'),
(2, 'PKN', '80', 'PSB18004003'),
(3, 'Bahasa Indonesia', '80', 'PSB18004003'),
(4, 'Bahasa Inggris', '80', 'PSB18004003'),
(5, 'Matematika', '80', 'PSB18004003'),
(6, 'Ilmu Pengetahuan Alam (IPA)', '80', 'PSB18004003'),
(7, 'Ilmu Pengetahuan Sosial (IPS)', '80', 'PSB18004003'),
(8, 'Pendidikan Agama', '80', 'PSB18004004'),
(9, 'PKN', '80', 'PSB18004004'),
(10, 'Bahasa Indonesia', '80', 'PSB18004004'),
(11, 'Bahasa Inggris', '80', 'PSB18004004'),
(12, 'Matematika', '80', 'PSB18004004'),
(13, 'Ilmu Pengetahuan Alam (IPA)', '80', 'PSB18004004'),
(14, 'Ilmu Pengetahuan Sosial (IPS)', '80', 'PSB18004004'),
(15, 'Pendidikan Agama', '70', 'PSB18004001'),
(16, 'PKN', '80', 'PSB18004001'),
(17, 'Bahasa Inggris', '76', 'PSB18004001'),
(18, 'Bahasa Indonesia', '77', 'PSB18004001'),
(19, 'Matematika', '79', 'PSB18004001'),
(20, 'Ilmu Pengetahuan Alam (IPA)', '80', 'PSB18004001'),
(21, 'Ilmu Pengetahuan Sosial (IPS)', '78', 'PSB18004001');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pdd`
--

DROP TABLE IF EXISTS `tbl_pdd`;
CREATE TABLE IF NOT EXISTS `tbl_pdd` (
  `id_pdd` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pdd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_pdd`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pdd`
--

INSERT INTO `tbl_pdd` (`id_pdd`, `nama_pdd`) VALUES
(1, 'Tdk Sekolah'),
(2, 'SD/MI'),
(3, 'SMP/MTs'),
(4, 'SMA/SMK/MA'),
(5, 'DIPLOMA'),
(6, 'S1'),
(7, 'S2'),
(8, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pekerjaan`
--

DROP TABLE IF EXISTS `tbl_pekerjaan`;
CREATE TABLE IF NOT EXISTS `tbl_pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pekerjaan` varchar(100) DEFAULT NULL,
  `ket_pekerjaan` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pekerjaan`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pekerjaan`
--

INSERT INTO `tbl_pekerjaan` (`id_pekerjaan`, `nama_pekerjaan`, `ket_pekerjaan`) VALUES
(1, 'Buruh', 'ayah'),
(2, 'Tani', 'ayah'),
(3, 'Wiraswasta', 'ayah'),
(4, 'PNS', 'ayah'),
(5, 'TNI/POLRI', 'ayah'),
(6, 'Perangkat Desa', 'ayah'),
(7, 'Nelayan', 'ayah'),
(8, 'Lain-lain ', 'ayah'),
(9, 'Ibu Rumah Tangga\r\n', 'ibu'),
(10, 'Buruh', 'ibu'),
(11, 'Tani', 'ibu'),
(12, 'Wiraswasta', 'ibu'),
(13, 'PNS', 'ibu'),
(14, 'TNI/POLRI', 'ibu'),
(15, 'Perangkat Desa', 'ibu'),
(16, 'Nelayan', 'ibu'),
(17, 'Lain-lain', 'ibu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penghasilan`
--

DROP TABLE IF EXISTS `tbl_penghasilan`;
CREATE TABLE IF NOT EXISTS `tbl_penghasilan` (
  `id_penghasilan` int(10) NOT NULL AUTO_INCREMENT,
  `nama_penghasilan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_penghasilan`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penghasilan`
--

INSERT INTO `tbl_penghasilan` (`id_penghasilan`, `nama_penghasilan`) VALUES
(1, '< 500rb'),
(2, '500-1jt'),
(3, '1jt-3jt'),
(4, '3jt-5jt'),
(5, '5jt-10jt'),
(6, '>10jt');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

DROP TABLE IF EXISTS `tbl_pengumuman`;
CREATE TABLE IF NOT EXISTS `tbl_pengumuman` (
  `id_pengumuman` int(10) NOT NULL AUTO_INCREMENT,
  `ket_pengumuman` text,
  `tgl_pengumuman` datetime DEFAULT NULL,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`id_pengumuman`, `ket_pengumuman`, `tgl_pengumuman`) VALUES
(1, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><strong><u>Keterangan :</u></strong></span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;1.&nbsp;Registrasi daftar ulang dilaksanakan pada tanggal 8 &ndash; 11 Juli 2018 pukul 08.00 &ndash; 14.00 </span></span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;2. Mencetak dan membawa Surat Pengumuman ini sebagai bukti&nbsp; lulus seleksi</span></span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\">&nbsp; &nbsp; &nbsp; &nbsp; 3.&nbsp;Membawa materi Rp. 6000,- sebanyak 2 lembar</span></span></span></span></p>\r\n</body>\r\n</html>\r\n', '2018-04-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rapor`
--

DROP TABLE IF EXISTS `tbl_rapor`;
CREATE TABLE IF NOT EXISTS `tbl_rapor` (
  `id_rapor` int(10) NOT NULL AUTO_INCREMENT,
  `mapel` varchar(100) DEFAULT NULL,
  `semester1` int(10) DEFAULT NULL,
  `semester2` int(10) DEFAULT NULL,
  `semester3` int(10) DEFAULT NULL,
  `semester4` int(10) DEFAULT NULL,
  `semester5` int(10) DEFAULT NULL,
  `rata_rata_nilai` int(10) DEFAULT NULL,
  `no_pendaftaran` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_rapor`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rapor`
--

INSERT INTO `tbl_rapor` (`id_rapor`, `mapel`, `semester1`, `semester2`, `semester3`, `semester4`, `semester5`, `rata_rata_nilai`, `no_pendaftaran`) VALUES
(16, 'Ilmu Pengetahuan Alam (IPA)', 80, 70, 80, 80, 80, 78, 'PSB18004002'),
(15, 'Bahasa Inggris', 80, 80, 80, 80, 80, 80, 'PSB18004001'),
(14, 'Bahasa Indonesia', 60, 80, 80, 80, 80, 76, 'PSB18004001'),
(13, 'Matematika', 60, 80, 60, 80, 80, 72, 'PSB18004001'),
(12, 'Ilmu Pengetahuan Sosial (IPS)', 70, 70, 70, 70, 70, 70, 'PSB18004001'),
(11, 'Ilmu Pengetahuan Alam (IPA)', 80, 80, 80, 80, 80, 80, 'PSB18004001'),
(17, 'Ilmu Pengetahuan Sosial (IPS)', 80, 70, 80, 70, 80, 76, 'PSB18004002'),
(18, 'Matematika', 80, 80, 80, 80, 90, 82, 'PSB18004002'),
(19, 'Bahasa Indonesia', 80, 80, 80, 80, 50, 74, 'PSB18004002'),
(20, 'Bahasa Inggris', 80, 80, 80, 80, 80, 80, 'PSB18004002'),
(21, 'Ilmu Pengetahuan Alam (IPA)', 60, 50, 78, 68, 80, 67, 'PSB18004003'),
(22, 'Ilmu Pengetahuan Sosial (IPS)', 59, 80, 81, 67, 66, 71, 'PSB18004003'),
(23, 'Matematika', 80, 83, 54, 55, 78, 70, 'PSB18004003'),
(24, 'Bahasa Indonesia', 78, 98, 78, 88, 86, 86, 'PSB18004003'),
(25, 'Bahasa Inggris', 89, 89, 88, 80, 80, 85, 'PSB18004003'),
(26, 'Ilmu Pengetahuan Alam (IPA)', 80, 80, 80, 80, 80, 80, 'PSB18004004'),
(27, 'Ilmu Pengetahuan Sosial (IPS)', 80, 80, 80, 80, 80, 80, 'PSB18004004'),
(28, 'Matematika', 80, 80, 80, 80, 80, 80, 'PSB18004004'),
(29, 'Bahasa Indonesia', 80, 80, 80, 80, 80, 80, 'PSB18004004'),
(30, 'Bahasa Inggris', 80, 80, 80, 80, 80, 80, 'PSB18004004');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

DROP TABLE IF EXISTS `tbl_siswa`;
CREATE TABLE IF NOT EXISTS `tbl_siswa` (
  `id_siswa` int(100) NOT NULL AUTO_INCREMENT,
  `no_pendaftaran` varchar(20) NOT NULL,
  `password` text,
  `nis` int(30) DEFAULT NULL,
  `nisn` int(30) DEFAULT NULL,
  `nik` int(30) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `jk` varchar(12) DEFAULT NULL,
  `tempat_lahir` text,
  `tgl_lahir` varchar(10) DEFAULT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `status_keluarga` varchar(30) DEFAULT NULL,
  `alamat_siswa` text,
  `no_hp_siswa` varchar(14) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `pdd_ayah` varchar(100) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `no_hp_ayah` varchar(14) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `pdd_ibu` varchar(100) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `no_hp_ibu` varchar(14) DEFAULT NULL,
  `nama_wali` varchar(100) DEFAULT NULL,
  `pdd_wali` varchar(100) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(100) DEFAULT NULL,
  `no_hp_wali` varchar(14) DEFAULT NULL,
  `npsn_sekolah` varchar(100) DEFAULT NULL,
  `nama_sekolah` varchar(100) DEFAULT NULL,
  `status_sekolah` varchar(100) DEFAULT NULL,
  `model_un` varchar(100) DEFAULT NULL,
  `alamat_sekolah` text,
  `thn_lulus` year(4) DEFAULT NULL,
  `rayonisasi` varchar(100) DEFAULT NULL,
  `foto` text,
  `tgl_siswa` datetime DEFAULT NULL,
  `status_verifikasi` varchar(30) DEFAULT NULL,
  `status_pendaftaran` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_siswa`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id_siswa`, `no_pendaftaran`, `password`, `nis`, `nisn`, `nik`, `nama_lengkap`, `jk`, `tempat_lahir`, `tgl_lahir`, `agama`, `status_keluarga`, `alamat_siswa`, `no_hp_siswa`, `nama_ayah`, `pdd_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `no_hp_ayah`, `nama_ibu`, `pdd_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `no_hp_ibu`, `nama_wali`, `pdd_wali`, `pekerjaan_wali`, `penghasilan_wali`, `no_hp_wali`, `npsn_sekolah`, `nama_sekolah`, `status_sekolah`, `model_un`, `alamat_sekolah`, `thn_lulus`, `rayonisasi`, `foto`, `tgl_siswa`, `status_verifikasi`, `status_pendaftaran`) VALUES
(5, 'PSB18004002', '43596', 5, 43596, 4569, 'sjhgbjksdgbj', 'Laki-Laki', 'dfgfdh', '01-01-1990', 'Islam', 'Anak Kandung', 'sdjghj', '3535', 'sdjghdflg', 'SMA/SMK/MA', 'Wiraswasta', '1jt-3jt', '454543', 'dfjghdjk', 'Tdk Sekolah', 'Ibu Rumah Tangga\r\n', '500-1jt', '4545', 'gfdgdrg', 'SMP/MTs', 'Wiraswasta', '< 500rb', '56464', '544546', 'sfdgfdhfd', 'NEGERI', 'UNBK', 'fdgfdh', 2018, 'Lintas Rayon', NULL, '2018-04-10 21:48:09', '0', 'tidak lulus'),
(4, 'PSB18004001', '1', 1, 1, 4543534, 'Anwar Saputra', 'Laki-Laki', 'gfdhfdh', '01-01-1990', 'Islam', 'Anak Kandung', 'sfgfdg', '4535', 'dgfdhfh', 'SMA/SMK/MA', 'Tani', '500-1jt', '4545', 'dfgfdg', 'SMA/SMK/MA', 'Ibu Rumah Tangga\r\n', '1jt-3jt', '4545', 'fdfdhfd', 'DIPLOMA', 'Buruh', '< 500rb', '44545', '454543', 'dfhfdhfdhd', 'NEGERI', 'UNBK', 'dfgfdhfd', 2018, 'Lintas Rayon', NULL, '2018-04-10 21:33:26', '0', 'tidak lulus'),
(6, 'PSB18004003', '45363', 6, 45363, 4536, 'sdg4dg', 'Laki-Laki', 'kdflgjfdkl', '01-02-1990', 'Islam', 'Anak Kandung', 'fdgfdh', '4654654', 'sdgdfsg', 'DIPLOMA', 'Tani', '1jt-3jt', '34534534', 'fdhgfdhd', 'SMA/SMK/MA', 'Wiraswasta', '500-1jt', '4545', 'fdgdfhd', 'SMA/SMK/MA', 'PNS', '500-1jt', '6565', '564645', 'fdghdfhd', 'NEGERI', 'UNBK', 'rgfdhdfh', 2018, 'Lintas Rayon', NULL, '2018-04-11 12:47:03', '0', 'lulus'),
(7, 'PSB18004004', '54654', 7, 54654, 5654, 'dhfdh', 'Laki-Laki', 'dfgfdg', '01-01-1990', 'Islam', 'Anak Kandung', 'fdhfdh', '46', 'fdgfg', 'Tdk Sekolah', 'Buruh', '< 500rb', '5454', 'dfg', 'Tdk Sekolah', 'Ibu Rumah Tangga\r\n', '< 500rb', '4545', 'dfhfdh', 'Tdk Sekolah', 'Buruh', '< 500rb', '545', '45', 'fgfdhg', 'NEGERI', 'UNBK', 'fgfg', 2018, 'Lintas Rayon', NULL, '2018-04-11 16:25:26', '1', 'lulus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` text,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `tgl_daftar` datetime DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama_lengkap`, `level`, `tgl_daftar`) VALUES
(1, 'admin', 'admin', 'SMA Negeri 1 Belitang', 'admin', '2018-04-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verifikasi`
--

DROP TABLE IF EXISTS `tbl_verifikasi`;
CREATE TABLE IF NOT EXISTS `tbl_verifikasi` (
  `id_verifikasi` int(10) NOT NULL AUTO_INCREMENT,
  `isi` text,
  `ket` text,
  `tgl_verifikasi` datetime DEFAULT NULL,
  PRIMARY KEY (`id_verifikasi`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_verifikasi`
--

INSERT INTO `tbl_verifikasi` (`id_verifikasi`, `isi`, `ket`, `tgl_verifikasi`) VALUES
(1, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><u>Materi Tes Potensi Akdemik :</u></strong></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><u> </u></strong></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp;1.&nbsp;Bahasa Indonesia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 25 soal </span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;&nbsp; &nbsp; &nbsp; 2.&nbsp;Bahasa Inggris&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 25 soal </span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;&nbsp; &nbsp; &nbsp; 3.&nbsp;Matematika&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 25 soal&nbsp;&nbsp; </span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;&nbsp; &nbsp; &nbsp; 4. IPA </span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Fisika&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 12 soal</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Biologi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;: 13 soal </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><u>Hari Tanggal tes : </u></strong></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;tanggal 3 s.d 5 Juli 2018</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><u>Waktu Tes potensi Akademik :</u></strong></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; Sesi 1&nbsp; : 07.00 - 09.00</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; Sesi 2&nbsp; : 09.30 - 11.30<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Sesi 3&nbsp; : 12.00 - 14.00</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; Sesi 4&nbsp; : 14.30 - 16.30</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><strong><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">*<em>catatan : </em></span></span></strong><br />\r\n<strong><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em>jadwal ujian bisa berubah sewaktu - waktu&nbsp; Update infomasi di web PPDB </em></span></span><em><span style=\"font-size:11.0pt\">peserta ujian datang 15&nbsp; menit sebelun tes dimulai.</span></em></strong></p>\r\n</body>\r\n</html>\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web`
--

DROP TABLE IF EXISTS `tbl_web`;
CREATE TABLE IF NOT EXISTS `tbl_web` (
  `id_web` int(10) NOT NULL AUTO_INCREMENT,
  `status_ppdb` varchar(30) DEFAULT NULL,
  `tgl_diubah` datetime DEFAULT NULL,
  PRIMARY KEY (`id_web`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_web`
--

INSERT INTO `tbl_web` (`id_web`, `status_ppdb`, `tgl_diubah`) VALUES
(1, 'buka', '2018-04-13 19:07:28');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
