-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2021 at 01:24 PM
-- Server version: 10.1.25-MariaDB
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
-- Database: `dbujianonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `nama_user` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `nama_user`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nama_guru`, `username`, `password`) VALUES
(11111111, 'Ibu Guru 1', 'guru1', 'guru1'),
(22222222, 'Bapak Guru 1', 'guru2', 'guru2'),
(33333333, 'Ibu Guru 2', 'guru3', 'guru3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jawaban`
--

CREATE TABLE `tb_jawaban` (
  `id_jawaban` int(5) NOT NULL,
  `id_peserta` int(5) NOT NULL,
  `id_soal_ujian` int(5) NOT NULL,
  `jawaban` varchar(15) NOT NULL,
  `skor` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jawaban`
--

INSERT INTO `tb_jawaban` (`id_jawaban`, `id_peserta`, `id_soal_ujian`, `jawaban`, `skor`) VALUES
(1, 1, 1, 'D', '1'),
(2, 1, 2, 'E', '0'),
(3, 2, 1, 'C', '0'),
(4, 2, 2, 'C', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_ujian`
--

CREATE TABLE `tb_jenis_ujian` (
  `id_jenis_ujian` int(11) NOT NULL,
  `jenis_ujian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jenis_ujian`
--

INSERT INTO `tb_jenis_ujian` (`id_jenis_ujian`, `jenis_ujian`) VALUES
(1, 'UTS Ganjil '),
(4, 'UTS Genap'),
(5, 'UAS Ganjil'),
(6, 'UAS Genap');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'Kelas 7A'),
(2, 'Kelas 7B'),
(3, 'Kelas 8A'),
(4, 'Kelas 8B'),
(5, 'Kelas 9A'),
(6, 'Kelas 9B');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matapelajaran`
--

CREATE TABLE `tb_matapelajaran` (
  `id_matapelajaran` int(11) NOT NULL,
  `kode_matapelajaran` varchar(10) NOT NULL,
  `nama_matapelajaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_matapelajaran`
--

INSERT INTO `tb_matapelajaran` (`id_matapelajaran`, `kode_matapelajaran`, `nama_matapelajaran`) VALUES
(18, '002', 'Matematika'),
(19, '003', 'Bahasa Inggris'),
(23, '001', 'Bahasa Indonesia'),
(24, '004', 'IPA (Ilmu Pengetahuan Alam)'),
(25, '005', 'IPS (Ilmu Pengethuan Sosial)');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peserta`
--

CREATE TABLE `tb_peserta` (
  `id_peserta` int(11) NOT NULL,
  `id_matapelajaran` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_jenis_ujian` int(11) NOT NULL,
  `tanggal_ujian` date NOT NULL,
  `jam_ujian` time NOT NULL,
  `durasi_ujian` int(11) NOT NULL,
  `timer_ujian` int(11) NOT NULL,
  `status_ujian` tinyint(1) NOT NULL,
  `status_ujian_ujian` int(11) NOT NULL,
  `benar` varchar(20) NOT NULL,
  `salah` varchar(20) NOT NULL,
  `nilai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_peserta`
--

INSERT INTO `tb_peserta` (`id_peserta`, `id_matapelajaran`, `id_siswa`, `id_jenis_ujian`, `tanggal_ujian`, `jam_ujian`, `durasi_ujian`, `timer_ujian`, `status_ujian`, `status_ujian_ujian`, `benar`, `salah`, `nilai`) VALUES
(1, 23, 4, 4, '2021-01-09', '13:00:00', 120, 7200, 2, 2, '1', '1', '50'),
(2, 23, 5, 4, '2021-01-09', '13:00:00', 120, 7200, 2, 2, '0', '2', '0'),
(3, 18, 5, 4, '2021-01-09', '13:15:00', 120, 7200, 1, 1, '', '', ''),
(4, 24, 11, 4, '2021-01-09', '13:15:00', 120, 7200, 1, 0, '', '', ''),
(5, 24, 14, 4, '2021-01-09', '13:15:00', 120, 7200, 1, 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `nis` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `id_kelas`, `nama_siswa`, `nis`, `username`, `password`) VALUES
(4, 1, 'Nama Siswa 1', 1000001, 'siswa1', 'siswa1'),
(5, 2, 'Nama Siswa 2', 1000002, 'siswa2', 'siswa2'),
(11, 3, 'Nama Siswa 3', 1000003, 'siswa3', 'siswa3'),
(12, 4, 'Nama Siswa 4', 1000004, 'siswa4', 'siswa4'),
(13, 5, 'Nama Siswa 5', 1000005, 'siswa5', 'siswa5'),
(14, 6, 'Nama Siswa 6', 1000006, 'siswa6', 'siswa6');

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal_ujian`
--

CREATE TABLE `tb_soal_ujian` (
  `id_soal_ujian` int(11) NOT NULL,
  `id_matapelajaran` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `e` text NOT NULL,
  `kunci_jawaban` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_soal_ujian`
--

INSERT INTO `tb_soal_ujian` (`id_soal_ujian`, `id_matapelajaran`, `pertanyaan`, `a`, `b`, `c`, `d`, `e`, `kunci_jawaban`) VALUES
(1, 23, '<p>Baca teks laporan berikut ini untuk menjawab soal pada nomor 4 dan 5 :</p>\r\n\r\n<p>Hampir setiap hari kalian bisa menemukan tempat pemujaan didesaku. Taburan bunga kamboja yang banyak selalu menghiasi tempat pemujaan tersebut. Seperti pada bagian pinggir sebelah kiri tempat itu, terdapat seonggok tanah liat yang tak tahu mengapa benda itu harus berada di sana. Sedangkan di bagian sebelah kanan terdapat asap dari lampu sentir yang semakin lama menjadi menghitam.</p>\r\n\r\n<p>Potongan teks laporan di atas tersusun atas pola &hellip;</p>\r\n', 'Sebab-akibat', 'Waktu', 'Perbandingan', 'Ruang /Tempat', 'Kejadian', 'D'),
(2, 23, '<p>Berikut ini ialah contoh penggalan teks laporan yang disusun atas dasar pola urutan waktu yaitu &hellip;</p>\r\n', 'Kantor kelurahan menghadap arah depan mushola. Batas pagar mushola hanya berselang sekitar 3 meter saja.', 'Ketika istirahat kami makan bersama sambil mengobrol ringan sebagai periang istirahat kami.', 'Setelah melintasi pemakaman, sekitar 200 meter kamu akan menemukan toko buah. Disitulah rumah saya', 'Pak bejo namanya. Ia selalu beruntung dalam hal apapun sesuai dengan namanya', 'Semua Benar', 'B'),
(3, 18, '<p>Apabila nilai A = {2, 3, 4} sedangkan nilai B = {1, 3}, maka nilai dari A &cup; B adalah &hellip;.</p>\r\n', ' {3}', '{1, 2, 3, 4}', '{1, 3}', '{2, 4}', ' {1}', 'B'),
(4, 18, '<p>Diketahui bahwa nilai dari S = 50, A = (15 &ndash; x), serta B = (27 + x), maka jumlah dari irisan A dan B dari gambar yang ada di bawah ini yaitu &hellip;.</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/20027877-0b47-4097-ae12-59cb81118ec2\" width=\"308\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/93ef17a6-1005-4220-bdd1-fba7f059a6bc\" width=\"308\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/3a448da3-66e9-4fb8-8a25-d00f5ba9fe12\" width=\"308\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/8e3edcd2-b1cd-4b29-a4c4-6aaa8a5311e9\" width=\"308\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n', '5', '6', '7', '8', '9', 'D'),
(5, 19, '<p>Mr. Handoyo is eager to know about Anton&rsquo;s condition. He is not cheerful as usual.<br />\r\nMr. Handoyo : Anton, what is the matter with you? You do not look well this<br />\r\nmorning.<br />\r\nAnton : You are right, Sir. &hellip; I think I get cold.<br />\r\nMr. Handoyo : You&rsquo;d better take a rest at home, then.</p>\r\n', ' I am okay', ' I am just fine', ' I do not feel too well this morning', ' I do not feel bad', 'i am Ferry Okay', 'C'),
(6, 19, '<p>Mrs. Rossy : Good afternoon, students.<br />\r\nStudents : Good afternoon, Ma&rsquo;am.<br />\r\nMrs. Rossy : Well, I cannot teach you this afternoon. I have a meeting with the<br />\r\nheadmaster.<br />\r\nStudents : That is alright. We will study by ourselves, Ma&rsquo;am.<br />\r\nThe underlined utterance is an expression of &hellip;</p>\r\n', 'Greeting', ' Leave-taking', ' Introduction', 'Prohibition', 'Meeting', 'A'),
(7, 24, '<p>Secara umum, besaran dibagi kedalam dua kelompok, yaitu &hellip;</p>\r\n', 'Besaran pokok dan turunan', 'Besaran turunan dan besaran murni', 'Besaran nasional dan internasional', 'Besaran pokok dan besaran nasional', 'Semua Benar', 'A'),
(8, 24, '<p>Berikut ini manakah urutan yang paling tepat dari tingkatan taksonomi untuk flora dari yang tertinggi ke terendah yaitu &hellip;.</p>\r\n', 'Kingdom – Class – Division – Order – Familia – Genre – Art', 'Kingdom – Division – Order – Classis – Familia – Genus – Art', ' Species – Ordo – Genus – Familia – Class – Division – Kingdom', 'Kingdom – Division – Class – order – family – Species', 'Semua Benar', 'D'),
(9, 25, '<p>Negara Indonesia mempunyai dua musim yaitu, Musim Hujan dan Musim Kemarau. Salah satu penyebabnya yaitu, karena letak astronomisnya. Letak Astronomis Negara Indonesia adalah&hellip;</p>\r\n', '6LU–11LU dan 95BT-141BT  ', '6LU–11LS dan 95BT-141BT', ' 6LS–11LS dan 95BB-141BB  ', '6LU–11LS dan 95BB – 141BT', 'Semua Benar', 'B'),
(10, 25, '<p>Salah satu faktor yang menyebabkan Pulau Jawa lebih padat penduduknya dibandingkan pulau lainnya yaitu&hellip;</p>\r\n', 'Pulau Jawa lebih lebih padat penduduknya dibanding pulau lainnya', 'Pulau Jawa memiliki tanah yang sangat subur', 'Sudah menjadi kebijakan pemerintah', 'Pulau Jawa lebih kaya akan sumberdaya alam dibandingkan pulau lainnya', 'Pulau Jawa merupakan wilayah yang luas', 'B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `id_soal_ujian` (`id_soal_ujian`),
  ADD KEY `id_peserta` (`id_peserta`);

--
-- Indexes for table `tb_jenis_ujian`
--
ALTER TABLE `tb_jenis_ujian`
  ADD PRIMARY KEY (`id_jenis_ujian`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_matapelajaran`
--
ALTER TABLE `tb_matapelajaran`
  ADD PRIMARY KEY (`id_matapelajaran`);

--
-- Indexes for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  ADD PRIMARY KEY (`id_peserta`),
  ADD KEY `id_matakuliah` (`id_matapelajaran`),
  ADD KEY `id_mahasiswa` (`id_siswa`),
  ADD KEY `id_jenis_ujian` (`id_jenis_ujian`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `nim` (`nis`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `tb_soal_ujian`
--
ALTER TABLE `tb_soal_ujian`
  ADD PRIMARY KEY (`id_soal_ujian`),
  ADD KEY `id_matakuliah` (`id_matapelajaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  MODIFY `id_jawaban` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_jenis_ujian`
--
ALTER TABLE `tb_jenis_ujian`
  MODIFY `id_jenis_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_matapelajaran`
--
ALTER TABLE `tb_matapelajaran`
  MODIFY `id_matapelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tb_soal_ujian`
--
ALTER TABLE `tb_soal_ujian`
  MODIFY `id_soal_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
