-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 12:03 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `alamat`, `no_telp`, `email`, `username`, `password`, `pass`) VALUES
(1, 'Mohammad Nur Fawaiq', 'Desa Gajahmati Rt:03 Rw:02 Kec. Pati Kab. Pati Jawa Tengah', '085786447406', 'nurfawaiq@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` longtext NOT NULL,
  `tgl_posting` date NOT NULL,
  `penerbit` varchar(10) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `judul`, `isi`, `tgl_posting`, `penerbit`, `status`) VALUES
(2, 'Pengunguman Maintenance Aplikasi E-Learning', 'Sehubung dengan adanya maintenance dikarenakan aplikasi E-Learning masih dalam uji coba, maka akses login Siswa tidak bisa di jam 10  malam sampai jam 5 pagi.', '2015-08-16', '1', 'aktif'),
(4, 'Manfaat Menulis', 'Jadi temen2, manfaat menulis ialah bla bla bla.\r\n\r\ndfdhfhdifd fhdudfdf gfudfhudhf.\r\n\r\nfdfjdfjdf d.d\r\nfd\r\nfdfdfdfdf', '2015-08-16', '10', 'tidak aktif'),
(7, 'Mata Pelajaran Matematika', 'Untuk pengumpulan tugas/quiz mata Pelajaran Matematika sementara tidak bisa di akes untuk siswa.', '2022-06-07', '8', 'aktif'),
(8, 'Bahasa Indonesia', 'Ulangan akan diadakan besok hari Rabu 8 Juni 2022', '2022-06-07', '8', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_file_materi`
--

CREATE TABLE `tb_file_materi` (
  `id_materi` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `id_kelas` int(4) NOT NULL,
  `id_mapel` int(4) NOT NULL,
  `nama_file` varchar(250) NOT NULL,
  `tgl_posting` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `hits` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_file_materi`
--

INSERT INTO `tb_file_materi` (`id_materi`, `judul`, `id_kelas`, `id_mapel`, `nama_file`, `tgl_posting`, `pembuat`, `hits`) VALUES
(3, 'Modul Latihan', 3, 2, 'Cetak Soal Tryout P1.pdf', '2015-08-15', 'admin', 0),
(4, 'Modul 1', 1, 1, 'kumpulan_soal_20152.pdf', '2015-08-15', '1', 9),
(5, 'Modul 2', 1, 1, '2072-P1-SPK-Rekayasa Perangkat Lunak.doc', '2015-08-15', '1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jawaban`
--

CREATE TABLE `tb_jawaban` (
  `id` int(11) NOT NULL,
  `id_tq` int(4) NOT NULL,
  `id_soal` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jawaban`
--

INSERT INTO `tb_jawaban` (`id`, `id_tq`, `id_soal`, `id_siswa`, `jawaban`) VALUES
(49, 1, 4, 8, 'Gak tau'),
(50, 1, 2, 8, 'Gak tau'),
(54, 2, 6, 2, 'Bengawan Solo'),
(55, 2, 5, 2, 'Jusuf Kalla'),
(56, 2, 1, 2, 'Semarang'),
(57, 1, 2, 1, 'mejikuhibiniu'),
(58, 1, 4, 1, 'Ir. Soekarno'),
(59, 2, 1, 9, ''),
(60, 2, 5, 9, 'Jusuf kala'),
(61, 2, 6, 9, 'Bengawan solo');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `wali_kelas` int(5) NOT NULL,
  `ketua_kelas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`, `ruang`, `wali_kelas`, `ketua_kelas`) VALUES
(1, 'Kelas 1', '1', 8, 1),
(2, 'Kelas 2', '2', 1, 2),
(3, 'Kelas 3', '3', 10, 0),
(4, 'Kelas 4', '4', 0, 0),
(5, 'Kelas 5', '5', 0, 0),
(6, 'Kelas 6', '6', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas_ajar`
--

CREATE TABLE `tb_kelas_ajar` (
  `id` int(11) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas_ajar`
--

INSERT INTO `tb_kelas_ajar` (`id`, `id_kelas`, `id_pengajar`, `keterangan`) VALUES
(1, 1, 1, 'Halo'),
(2, 1, 8, 'aaa'),
(4, 3, 8, 'bbb'),
(5, 2, 1, 'Halo');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id` int(11) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `mapel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`id`, `kode_mapel`, `mapel`) VALUES
(1, 'A1', 'Bahasa Indonesia'),
(2, 'A2', 'Matematika'),
(3, 'A3', 'Bahasa Inggris'),
(4, 'A4', 'TIK');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel_ajar`
--

CREATE TABLE `tb_mapel_ajar` (
  `id` int(11) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mapel_ajar`
--

INSERT INTO `tb_mapel_ajar` (`id`, `id_mapel`, `id_kelas`, `id_pengajar`, `keterangan`) VALUES
(6, 1, 2, 1, 'aaa'),
(7, 1, 1, 1, 'Kelas baik'),
(9, 3, 2, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai_essay`
--

CREATE TABLE `tb_nilai_essay` (
  `id` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai_essay`
--

INSERT INTO `tb_nilai_essay` (`id`, `id_tq`, `id_siswa`, `nilai`) VALUES
(4, 2, 2, 90),
(11, 1, 1, 95);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai_pilgan`
--

CREATE TABLE `tb_nilai_pilgan` (
  `id` int(11) NOT NULL,
  `id_tq` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `benar` int(4) NOT NULL,
  `salah` int(4) NOT NULL,
  `tidak_dikerjakan` int(4) NOT NULL,
  `presentase` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai_pilgan`
--

INSERT INTO `tb_nilai_pilgan` (`id`, `id_tq`, `id_siswa`, `benar`, `salah`, `tidak_dikerjakan`, `presentase`) VALUES
(25, 1, 8, 2, 3, 0, 40),
(27, 2, 2, 2, 0, 0, 100),
(30, 5, 1, 2, 0, 0, 100),
(31, 1, 1, 5, 0, 0, 100),
(32, 2, 9, 0, 2, 0, 0),
(33, 6, 9, 2, 0, 0, 100),
(34, 8, 1, 1, 0, 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengajar`
--

CREATE TABLE `tb_pengajar` (
  `id_pengajar` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `web` varchar(60) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengajar`
--

INSERT INTO `tb_pengajar` (`id_pengajar`, `nip`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_telp`, `email`, `alamat`, `jabatan`, `foto`, `web`, `username`, `password`, `pass`, `status`) VALUES
(1, '7676656', 'Ahmad', 'Rembang', '1989-06-10', 'L', 'Islam', '0867785365xx', 'hhuh@hd.vom', 'Rembang, Indonesia', 'Guru', '11539603_672029272928710_5015884061222980920_n.jpg', 'http://ilmu-lengkap.com', 'ahmad', '61243c7b9a4022cb3f8dc3106767ed12', 'ahmad', 'aktif'),
(8, '123', 'Ubab', 'Rembang', '2015-07-03', 'L', 'Islam', '87857565', '', 'Rembang', 'Guru', 'anonim.png', '', 'ubab', '1e71f0128a74222155076585a012cbde', 'ubab', 'aktif'),
(10, '274378434', 'Jajal', 'London', '1990-07-18', 'P', 'Islam', '089676778xx', 'jajal@yahoo.com', 'London, English', 'Guru', 'anonim.png', '', 'jajal', '0ce39f78d16cab3888366d5f4f5485eb', 'jajal', 'tidak aktif'),
(11, '898', 'Mbuh', 'Jepara', '2015-07-15', 'P', 'Katholik', '98993', '', 'Jepara', 'Guru', 'anonim.png', '', 'mbuh', '4cb3a57aafa5238fb25202ac75f6944f', 'mbuh', 'aktif'),
(12, '878', 'Mpok', 'Jakarat', '2015-07-25', 'P', 'Kristen', '7676', '', 'Jakarta', 'Guru', 'anonim.png', '', 'mpok', 'f9cfa808be96e05153f43ee98c51e7cf', 'mpok', 'aktif'),
(14, '77989', 'Lee Min Ho', 'Korea', '1990-07-16', 'L', 'Konghucu', '089681898xxx', 'leeminho@yahoo.com', 'Seoul, Korea', 'Guru Bahasa Korea', '10672295_1463699220608256_6533316162177641215_n.jpg', 'http://ilmu-lengkap.com', 'lee', 'b0f8b49f22c718e9924f5b1165111a67', 'lee', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `thn_masuk` int(5) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `nama_ayah`, `nama_ibu`, `no_telp`, `email`, `alamat`, `id_kelas`, `thn_masuk`, `foto`, `username`, `password`, `pass`, `status`) VALUES
(1, '12065', 'Mohammad', 'Tuban', '1996-07-06', 'L', 'Islam', 'Ahmad', 'Wiwik', '085786447xxx', 'mohnurfawaiq@yahoo.com', 'Pati', '1', 2015, '60534a74dd249ccfec329b6a2989be04.jpg', 'moh', '94e510ecc1b1d7a405c0e7aa18db792b', 'moh', 'aktif'),
(2, '1212', 'Rifaatul Firdaus', 'Pati', '1997-08-20', 'P', 'Islam', 'Rifa\'i', 'Basyiroh', '63767343', 'sjdhsjdh@sdjsd.co', 'Pati, Jawa Tengah', '2', 2014, 'lucu2.jpg', 'firda', '5ed291923179b73cbc6ef968b35361ff', 'firda', 'aktif'),
(7, '776', 'Didik', 'Rembang', '2015-08-01', 'L', 'Konghucu', 'Kamto', 'Rudah', '', '', 'Punjulharjo, Rembang', '3', 2015, 'anonim.png', 'didik', '2ff462bc49e322708a48d3d5e3ca4bab', 'didik', 'aktif'),
(8, '65656', 'Jajang', 'Majalengka', '1996-02-02', 'L', 'Islam', 'Gak Tau', 'Gak Tau', '085454583', '', 'Majalengka', '1', 2015, 'anonim.png', 'jajang', 'b56b57039c86f8626ece5a1a35f86175', 'jajang', 'aktif'),
(9, '330224', 'Filipus Rio', 'Boyolali 23 Januari', '2001-06-17', 'L', 'Kristen', 'Joko', 'Nanda', '089772383332', 'filipusrio123@gmail.com', 'fefrhht', '2', 2018, 'ucap syukur Bapak Welly.png', 'filipus13', 'c552a7c6d2500356fd8bdbeb96f52d0b', 'filipus123', 'aktif'),
(10, '330224', 'Tiwuk Dari Setya Asih', 'Boyolali 23 Januari', '2022-05-12', 'P', 'Kristen', 'Joko', 'Nanda', '1634871572', 'filipusrio123@gmail.com', 'Jebol', '5', 2015, 'anonim.png', 'tiwuk12', 'f81a364f8287237aae8da5ab6d1463a9', 'tiwuk12', 'aktif'),
(11, '23423', 'Tukuk', 'Boyolali 11 Mei', '2022-05-09', 'L', 'Kristen', 'jwef', 'wefwf', '34234433', 'pakdendobel5656@gmail.com', 'Jebol', '3', 2011, '60534a74dd249ccfec329b6a2989be04.jpg', 'tukul12', '798b7c8f4081b56ef8374c95e298cacd', 'tukul12', 'tidak aktif'),
(12, '2153454', 'Joko', 'Boyolali 23 Januari', '2022-05-05', 'L', 'Kristen', 'edfefergr', 'ergegre', '43536454', 'pakdendobel5656@gmail.com', 'dafgeg', '4', 2018, '01af4639abbd57dc77648e8a9d79618a.png', 'joko12', 'd20d481c5693134fec616cdb80373197', 'joko12', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal_essay`
--

CREATE TABLE `tb_soal_essay` (
  `id_essay` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_soal_essay`
--

INSERT INTO `tb_soal_essay` (`id_essay`, `id_tq`, `pertanyaan`, `gambar`, `tgl_buat`) VALUES
(1, 2, 'Apa nama ibukota Provinsi Jawa Tengah ?', '11330004_917546658327011_8090069200033803302_n.jpg', '2015-08-05'),
(2, 1, 'Apa warna pelangi ?', '11330004_917546658327011_8090069200033803302_n.jpg', '2015-08-09'),
(4, 1, 'Siapa presiden pertama Indonesia ?', '', '2015-08-09'),
(5, 2, 'Siapa wakil presiden Indonesia ?', '', '2015-08-11'),
(6, 2, 'Apa sungai terpanjang di jawa ?', '', '2015-08-11'),
(7, 3, 'What is your hobby ?', '', '2015-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal_pilgan`
--

CREATE TABLE `tb_soal_pilgan` (
  `id_pilgan` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `pil_a` text NOT NULL,
  `pil_b` text NOT NULL,
  `pil_c` text NOT NULL,
  `pil_d` text NOT NULL,
  `pil_e` text NOT NULL,
  `kunci` varchar(2) NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_soal_pilgan`
--

INSERT INTO `tb_soal_pilgan` (`id_pilgan`, `id_tq`, `pertanyaan`, `gambar`, `pil_a`, `pil_b`, `pil_c`, `pil_d`, `pil_e`, `kunci`, `tgl_buat`) VALUES
(2, 1, 'Apa huruf pertama dalam alphabet ?', 'lucu.jpg', 'H', 'I', 'O', 'Z', 'A', 'E', '2015-08-05'),
(3, 1, 'Apa nama ibukota negara Indonesia ?', '', 'Pati', 'Semarang', 'Surabaya', 'Jakarta', 'Medan', 'D', '2015-08-05'),
(4, 1, 'Apa arti sinomin ?', '', 'Perlawanan', 'Persamaan', 'Perbedaan', 'Pertengkaran', 'Persatuan', 'B', '2015-08-06'),
(5, 2, 'Tanggal berapa Indonesia merdeka ?', '', '17 Agustus 1965', '17 September 1945', '18 Agustus 1945', '17 Agustus 1995', '17 Agustus 1945', 'E', '2015-08-09'),
(8, 1, 'Apa arti antonim ?', '', 'Perlawanan', 'Persamaan', 'Kemiripan', 'Pertengkaran', 'Kesejahteraan', 'A', '2015-08-09'),
(9, 1, 'Siapa presiden ke-7 Negara Indonesia ?', '', 'Susiso Bambang Yudhoyono', 'Soekarno', 'Soeharto', 'Megawati Soekarno Putri', 'Joko Widodo', 'E', '2015-08-09'),
(10, 2, 'Apa ibukota Provinsi Jawa Timur ?', '', 'Surabaya', 'Semarang', 'Bandung', 'Pati', 'Rembang', 'A', '2015-08-11'),
(11, 5, 'Berapakah hasil 1 + 1 ?', '', '6', '4', '3', '2', '8', 'D', '2015-08-12'),
(12, 5, 'Berapakah hasil 8 x 7 ?', '', '24', '54', '67', '83', '56', 'E', '2015-08-12'),
(13, 3, 'Are you tired ?', '', 'Yes, I am', 'Apa sih', 'No, I am handsome', 'What ?', 'Ok', 'A', '2015-08-14'),
(14, 3, 'What is the meaning of \"Cruel\" ?', '', 'Rendah hati', 'Pendiam', 'Sombong', 'Kejam', 'Ganteng', 'D', '2015-08-14'),
(15, 6, 'Siapa kah Presiden di Indonesia ini sekarang?', '', 'Joko Widodo', 'Suharno', 'Puan Maharani', 'Jusuf Kala', 'Bastian Stell', 'A', '2022-03-21'),
(16, 6, 'Kapan kah Indonesia Merdeka?', '', '17 Juni', '11 Mei', '17 Agustus', '19 Maret', '18 Desember', 'C', '2022-03-21'),
(17, 8, 'Mana yang benar di bawah ini yang termasuk hadware komputer?', '', 'Adobe XD', 'Photoshop', 'Keyboard', 'Smadav', 'Microsoft Word', 'C', '2022-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_topik_quiz`
--

CREATE TABLE `tb_topik_quiz` (
  `id_tq` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `tgl_buat` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `waktu_soal` int(8) NOT NULL,
  `info` varchar(250) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_topik_quiz`
--

INSERT INTO `tb_topik_quiz` (`id_tq`, `judul`, `id_kelas`, `id_mapel`, `tgl_buat`, `pembuat`, `waktu_soal`, `info`, `status`) VALUES
(1, 'Ulangan Harian 1', 1, 1, '2015-08-03', '1', 300, 'Ulangan tanggal 4-8-2015', 'aktif'),
(2, 'Ulangan Harian 1', 2, 2, '2015-08-05', 'admin', 1200, 'Ulangan hari Kamis', 'aktif'),
(3, 'Latihan Soal', 3, 3, '2015-08-05', '10', 1500, 'Jangan mencontek', 'aktif'),
(4, 'Ulangan Tengah Semester 1', 4, 1, '2015-08-07', 'admin', 600, 'Kerjakan dengan teliti', 'aktif'),
(5, 'Ulangan Remidial 1', 1, 2, '2015-08-11', 'admin', 1200, 'Kerjakan dengan jujur dan teliti', 'tidak aktif'),
(6, 'Ulangan 2', 2, 1, '2022-03-21', '13', 1200, 'Kerjakan tepat waktu', 'aktif'),
(7, '', 0, 1, '2022-03-21', '13', 1200, 'Kerjakan tepat waktu', 'aktif'),
(8, 'TIK UL Harian', 1, 4, '2022-06-23', '8', 3600, 'Dikerjakan semaksimal mungkin', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tb_file_materi`
--
ALTER TABLE `tb_file_materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_kelas_ajar`
--
ALTER TABLE `tb_kelas_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mapel_ajar`
--
ALTER TABLE `tb_mapel_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai_essay`
--
ALTER TABLE `tb_nilai_essay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai_pilgan`
--
ALTER TABLE `tb_nilai_pilgan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  ADD PRIMARY KEY (`id_pengajar`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_soal_essay`
--
ALTER TABLE `tb_soal_essay`
  ADD PRIMARY KEY (`id_essay`);

--
-- Indexes for table `tb_soal_pilgan`
--
ALTER TABLE `tb_soal_pilgan`
  ADD PRIMARY KEY (`id_pilgan`);

--
-- Indexes for table `tb_topik_quiz`
--
ALTER TABLE `tb_topik_quiz`
  ADD PRIMARY KEY (`id_tq`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_file_materi`
--
ALTER TABLE `tb_file_materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_kelas_ajar`
--
ALTER TABLE `tb_kelas_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_mapel_ajar`
--
ALTER TABLE `tb_mapel_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_nilai_essay`
--
ALTER TABLE `tb_nilai_essay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_nilai_pilgan`
--
ALTER TABLE `tb_nilai_pilgan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  MODIFY `id_pengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_soal_essay`
--
ALTER TABLE `tb_soal_essay`
  MODIFY `id_essay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_soal_pilgan`
--
ALTER TABLE `tb_soal_pilgan`
  MODIFY `id_pilgan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_topik_quiz`
--
ALTER TABLE `tb_topik_quiz`
  MODIFY `id_tq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
