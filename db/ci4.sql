-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2023 pada 03.54
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(5, 'Haikyuu!!', 'haikyuu', 'Haruichi Furudate', 'Shueisha', 'Haikyuu.jpg', NULL, '2023-01-03 23:00:52'),
(6, 'Tensei Shitara Slime Datta Ken', 'tensei-shitara-slime-datta-ken', 'Fuse', 'Elex Media Computindo', 'Tensura.jpg', NULL, NULL),
(33, 'menambah', 'menambah', 'tambah', 'ditambahkan', '1673231601_e4e8667b608d44b2fe0e.jpeg', '2023-01-08 20:33:21', '2023-01-08 20:33:21'),
(34, 'yang ubah hanya judul', 'yang-ubah-hanya-judul', 'be', 'askjsk', '1673233612_adc51de68db604930a23.jpg', '2023-01-08 21:05:00', '2023-01-08 21:06:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manusia`
--

CREATE TABLE `manusia` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `manusia`
--

INSERT INTO `manusia` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Jessica Alika Andriani S.Kom', 'Ki. Gedebage Selatan No. 475, Metro 47311, Banten', '2019-05-10 19:12:57', '2023-01-09 23:18:42'),
(2, 'Yoga Simanjuntak', 'Jln. Adisucipto No. 18, Depok 40239, NTB', '2022-02-05 09:02:45', '2023-01-09 23:18:42'),
(3, 'Titi Yolanda', 'Kpg. Batako No. 147, Madiun 32667, Sumut', '1977-03-12 09:55:09', '2023-01-09 23:18:42'),
(4, 'Zulaikha Bella Laksita', 'Ds. Babakan No. 286, Bau-Bau 53769, Pabar', '2009-05-15 23:28:44', '2023-01-09 23:18:42'),
(5, 'Malika Astuti S.IP', 'Ds. Thamrin No. 937, Surabaya 20417, Jambi', '1982-10-17 03:59:22', '2023-01-09 23:18:42'),
(6, 'Genta Mulyani', 'Jr. Madiun No. 186, Madiun 31832, Kalteng', '2012-05-24 10:22:02', '2023-01-09 23:18:42'),
(7, 'Adiarja Lazuardi', 'Kpg. Achmad No. 404, Surakarta 32121, Papua', '1977-09-03 09:05:11', '2023-01-09 23:18:42'),
(8, 'Kurnia Surya Marbun S.Kom', 'Gg. Ketandan No. 548, Lubuklinggau 85795, Jatim', '1970-05-08 09:39:28', '2023-01-09 23:18:42'),
(9, 'Devi Hasna Agustina S.Pt', 'Jr. Baabur Royan No. 587, Bima 18735, Pabar', '2017-03-11 15:58:45', '2023-01-09 23:18:42'),
(10, 'Elma Astuti', 'Psr. Banal No. 938, Medan 98523, Pabar', '2009-03-03 19:46:34', '2023-01-09 23:18:42'),
(11, 'Amelia Haryanti S.T.', 'Gg. Industri No. 586, Banjar 49895, Bali', '2021-11-15 00:27:48', '2023-01-09 23:18:42'),
(12, 'Kamal Kemal Sihotang M.Pd', 'Gg. Cikapayang No. 946, Cimahi 67346, Jatim', '2007-08-31 02:50:59', '2023-01-09 23:18:42'),
(13, 'Kamila Widiastuti', 'Psr. Abang No. 869, Sibolga 53031, Bengkulu', '2014-02-14 22:02:38', '2023-01-09 23:18:42'),
(14, 'Darman Budiman', 'Ki. Yogyakarta No. 113, Langsa 34481, NTT', '1992-11-21 17:39:19', '2023-01-09 23:18:42'),
(15, 'Winda Halimah', 'Gg. Pasir Koja No. 279, Lhokseumawe 43466, Kepri', '2021-07-17 01:52:18', '2023-01-09 23:18:42'),
(16, 'Gangsar Salahudin', 'Ds. Cikapayang No. 102, Ternate 55359, Sultra', '1983-12-19 07:22:45', '2023-01-09 23:18:42'),
(17, 'Cindy Wulandari', 'Ki. Kebonjati No. 172, Padangsidempuan 80008, Sulteng', '2017-02-24 13:10:48', '2023-01-09 23:18:42'),
(18, 'Dinda Yunita Prastuti', 'Gg. B.Agam Dlm No. 452, Bau-Bau 48334, Kaltara', '2021-10-07 02:27:57', '2023-01-09 23:18:42'),
(19, 'Heru Sihombing S.Gz', 'Dk. Asia Afrika No. 75, Metro 88206, Banten', '2000-11-27 20:18:00', '2023-01-09 23:18:42'),
(20, 'Lala Lailasari S.T.', 'Jr. Kalimantan No. 770, Padangpanjang 85906, Sumbar', '2017-10-01 20:38:19', '2023-01-09 23:18:42'),
(21, 'Betania Nuraini', 'Gg. Urip Sumoharjo No. 239, Gunungsitoli 24729, Kalteng', '2010-07-07 15:35:40', '2023-01-09 23:18:42'),
(22, 'Slamet Samsul Prasasta', 'Gg. Cihampelas No. 727, Pasuruan 11670, Riau', '1974-12-11 23:03:14', '2023-01-09 23:18:42'),
(23, 'Eka Prabowo', 'Jln. Sudiarto No. 521, Sabang 58473, Banten', '2012-04-06 03:46:50', '2023-01-09 23:18:42'),
(24, 'Prayogo Najmudin', 'Ki. Yosodipuro No. 980, Pariaman 94190, Kaltara', '1978-10-03 08:36:27', '2023-01-09 23:18:42'),
(25, 'Langgeng Nababan', 'Psr. HOS. Cjokroaminoto (Pasirkaliki) No. 160, Pontianak 47004, NTB', '1985-11-25 10:51:02', '2023-01-09 23:18:42'),
(26, 'Faizah Anggraini S.Sos', 'Jr. Madrasah No. 962, Padangsidempuan 10763, NTT', '2015-01-20 11:17:04', '2023-01-09 23:18:42'),
(27, 'Ciaobella Diah Usada', 'Ki. W.R. Supratman No. 187, Binjai 51746, Gorontalo', '1993-03-23 13:47:30', '2023-01-09 23:18:42'),
(28, 'Caturangga Kuswoyo S.Sos', 'Jln. M.T. Haryono No. 85, Palopo 83598, DKI', '1994-12-13 11:15:53', '2023-01-09 23:18:42'),
(29, 'Nurul Usada', 'Jr. Pasir Koja No. 796, Kendari 93670, Sumut', '1974-07-25 21:20:16', '2023-01-09 23:18:42'),
(30, 'Ana Uchita Pudjiastuti', 'Jln. Teuku Umar No. 690, Gorontalo 47799, Babel', '1984-05-16 17:37:52', '2023-01-09 23:18:42'),
(31, 'Bagya Sitorus', 'Dk. Barat No. 967, Palangka Raya 21646, Lampung', '2015-11-02 02:24:13', '2023-01-09 23:18:42'),
(32, 'Ajiono Nashiruddin', 'Dk. Yos No. 597, Padangpanjang 48343, Sulbar', '2014-10-20 00:11:50', '2023-01-09 23:18:42'),
(33, 'Dina Namaga', 'Dk. Jakarta No. 357, Serang 37284, Sulut', '1978-01-18 02:50:56', '2023-01-09 23:18:42'),
(34, 'Ella Janet Oktaviani', 'Ki. Cut Nyak Dien No. 131, Pagar Alam 20884, Jatim', '1976-09-07 13:18:52', '2023-01-09 23:18:42'),
(35, 'Cindy Shania Fujiati', 'Kpg. Gajah Mada No. 529, Administrasi Jakarta Barat 72028, Sultra', '2015-09-10 21:34:54', '2023-01-09 23:18:42'),
(36, 'Tami Queen Hariyah S.T.', 'Gg. Kalimalang No. 410, Surabaya 18535, DKI', '1987-03-25 20:54:57', '2023-01-09 23:18:42'),
(37, 'Galak Siregar', 'Kpg. Padang No. 339, Langsa 49085, Papua', '1985-08-10 20:10:17', '2023-01-09 23:18:42'),
(38, 'Catur Kariman Sihombing S.Ked', 'Gg. Bara Tambar No. 65, Tual 92697, Sulbar', '1991-07-16 23:08:20', '2023-01-09 23:18:42'),
(39, 'Tira Suryatmi', 'Ds. Umalas No. 911, Tual 57953, Gorontalo', '2006-01-15 14:31:11', '2023-01-09 23:18:42'),
(40, 'Yusuf Setiawan', 'Ds. Padang No. 540, Batu 79123, NTT', '1970-11-21 05:30:27', '2023-01-09 23:18:42'),
(41, 'Tri Prayoga', 'Ki. Yos No. 322, Payakumbuh 98702, Sultra', '2022-07-04 09:44:33', '2023-01-09 23:18:42'),
(42, 'Usyi Nasyiah', 'Gg. Ujung No. 147, Pangkal Pinang 83620, Bengkulu', '1989-08-05 09:16:33', '2023-01-09 23:18:42'),
(43, 'Karsa Hutapea', 'Ki. Baan No. 511, Gorontalo 57646, Kepri', '2009-02-03 12:43:33', '2023-01-09 23:18:42'),
(44, 'Yessi Aryani', 'Ki. Adisumarmo No. 260, Pontianak 88916, Kaltim', '2017-06-18 02:36:08', '2023-01-09 23:18:42'),
(45, 'Irsad Nababan M.Farm', 'Jln. Jagakarsa No. 182, Pekalongan 93027, Sumbar', '1973-06-03 20:19:40', '2023-01-09 23:18:42'),
(46, 'Among Firgantoro', 'Gg. Supomo No. 316, Cimahi 14244, Jateng', '1981-05-15 22:54:54', '2023-01-09 23:18:42'),
(47, 'Kasusra Warsita Marbun M.Farm', 'Kpg. Sadang Serang No. 788, Probolinggo 14419, Jatim', '1989-09-20 12:24:20', '2023-01-09 23:18:42'),
(48, 'Jelita Handayani S.Kom', 'Kpg. Asia Afrika No. 490, Manado 89994, Kaltara', '1994-09-28 09:56:02', '2023-01-09 23:18:42'),
(49, 'Olga Bagus Januar S.Pt', 'Ki. Wahidin No. 87, Cirebon 17962, Bali', '1976-03-11 10:07:19', '2023-01-09 23:18:42'),
(50, 'Rahman Putra', 'Jln. Suryo Pranoto No. 468, Palangka Raya 58671, Lampung', '2005-04-28 19:21:05', '2023-01-09 23:18:42'),
(51, 'Widya Mulyani S.E.', 'Jln. Jagakarsa No. 338, Tebing Tinggi 77193, Sulsel', '1979-06-22 11:07:31', '2023-01-09 23:18:42'),
(52, 'Agnes Rahimah', 'Psr. Bara No. 886, Tanjung Pinang 36358, Jambi', '2003-11-18 06:46:11', '2023-01-09 23:18:42'),
(53, 'Ina Wastuti', 'Dk. Jayawijaya No. 298, Bau-Bau 17735, DKI', '1988-11-20 16:57:21', '2023-01-09 23:18:42'),
(54, 'Cayadi Nainggolan', 'Jln. Moch. Yamin No. 952, Malang 91745, Kepri', '2012-09-19 07:02:48', '2023-01-09 23:18:43'),
(55, 'Gilda Maimunah Mandasari', 'Ki. Bah Jaya No. 397, Gorontalo 56948, Riau', '2008-10-15 22:39:01', '2023-01-09 23:18:43'),
(56, 'Tomi Saputra S.H.', 'Dk. Siliwangi No. 711, Parepare 58789, Kaltim', '2007-04-17 15:11:49', '2023-01-09 23:18:43'),
(57, 'Paris Sari Anggraini M.TI.', 'Psr. Elang No. 255, Bima 87695, Kaltara', '1985-07-18 14:11:25', '2023-01-09 23:18:43'),
(58, 'Puput Paris Padmasari S.Pd', 'Dk. S. Parman No. 787, Tual 61948, Sultra', '1997-11-12 23:31:09', '2023-01-09 23:18:43'),
(59, 'Talia Puspa Purnawati S.Farm', 'Ki. Barasak No. 356, Parepare 55317, Papua', '1987-01-21 19:18:17', '2023-01-09 23:18:43'),
(60, 'Edi Pradana', 'Jr. Bhayangkara No. 240, Magelang 95358, Jateng', '2015-10-10 03:50:26', '2023-01-09 23:18:43'),
(61, 'Gandi Hardiansyah', 'Jln. Dr. Junjunan No. 921, Sorong 55187, Sulut', '1985-09-22 00:07:15', '2023-01-09 23:18:43'),
(62, 'Karma Budiman', 'Jln. Cokroaminoto No. 787, Singkawang 58258, Lampung', '1981-04-27 17:13:42', '2023-01-09 23:18:43'),
(63, 'Cecep Utama', 'Ds. Yogyakarta No. 249, Singkawang 53454, Sulut', '2016-08-10 08:43:21', '2023-01-09 23:18:43'),
(64, 'Narji Setiawan', 'Jr. Daan No. 643, Banda Aceh 34559, Riau', '1987-11-07 01:10:06', '2023-01-09 23:18:43'),
(65, 'Najwa Yance Novitasari', 'Psr. Bakaru No. 681, Yogyakarta 60152, DIY', '1970-08-04 17:19:03', '2023-01-09 23:18:43'),
(66, 'Maida Kuswandari S.T.', 'Kpg. Ters. Pasir Koja No. 545, Sibolga 59825, Lampung', '1971-10-09 14:01:30', '2023-01-09 23:18:43'),
(67, 'Juli Zulaika', 'Kpg. Yos No. 559, Solok 81413, Gorontalo', '2001-05-22 18:03:34', '2023-01-09 23:18:43'),
(68, 'Hardi Hardi Damanik', 'Psr. Yogyakarta No. 20, Balikpapan 33014, Papua', '1997-12-08 04:55:24', '2023-01-09 23:18:43'),
(69, 'Olivia Widiastuti', 'Gg. Industri No. 631, Surakarta 73150, Sumsel', '1971-05-15 06:00:28', '2023-01-09 23:18:43'),
(70, 'Fathonah Permata S.Pt', 'Dk. Bayam No. 785, Palembang 29611, Sulut', '2003-04-27 10:23:52', '2023-01-09 23:18:43'),
(71, 'Patricia Rahmawati', 'Dk. Reksoninten No. 975, Cirebon 21051, Kaltim', '1979-11-12 04:37:48', '2023-01-09 23:18:43'),
(72, 'Fitriani Haryanti', 'Ki. Imam No. 43, Payakumbuh 65557, Lampung', '1996-09-03 22:50:58', '2023-01-09 23:18:43'),
(73, 'Cornelia Hana Melani', 'Ki. Moch. Ramdan No. 728, Cirebon 35641, Papua', '1975-12-05 06:57:28', '2023-01-09 23:18:43'),
(74, 'Ibrahim Jailani', 'Dk. Cut Nyak Dien No. 942, Salatiga 51805, Lampung', '1986-03-29 00:08:35', '2023-01-09 23:18:43'),
(75, 'Eka Suartini', 'Ki. Baabur Royan No. 546, Pangkal Pinang 51073, Sumsel', '1990-09-19 05:23:59', '2023-01-09 23:18:43'),
(76, 'Shania Usamah S.E.I', 'Jln. Sutan Syahrir No. 100, Pasuruan 32227, Bengkulu', '2016-06-10 11:43:15', '2023-01-09 23:18:43'),
(77, 'Ana Nurul Prastuti S.E.I', 'Dk. Gotong Royong No. 972, Balikpapan 66999, DIY', '2005-08-18 06:43:59', '2023-01-09 23:18:43'),
(78, 'Cahyono Anggabaya Pangestu S.Psi', 'Psr. Otista No. 284, Tanjung Pinang 98314, Kalsel', '1980-01-03 15:00:05', '2023-01-09 23:18:43'),
(79, 'Cahyo Zulkarnain', 'Jln. Yohanes No. 484, Madiun 49629, Gorontalo', '1991-04-28 17:01:41', '2023-01-09 23:18:43'),
(80, 'Ibrahim Firgantoro', 'Dk. Laksamana No. 642, Tasikmalaya 10564, Sultra', '2003-12-07 09:09:33', '2023-01-09 23:18:43'),
(81, 'Caturangga Pratama', 'Jln. Imam Bonjol No. 718, Palembang 41537, Sulbar', '2006-10-16 23:51:07', '2023-01-09 23:18:43'),
(82, 'Taswir Tampubolon', 'Gg. Yoga No. 732, Batam 94173, Sulsel', '2011-11-23 11:08:35', '2023-01-09 23:18:43'),
(83, 'Halim Taufan Dabukke S.Pt', 'Ds. Babadak No. 830, Tasikmalaya 25881, Sulut', '1979-01-20 00:13:32', '2023-01-09 23:18:43'),
(84, 'Limar Galar Napitupulu S.Sos', 'Ki. Bagonwoto  No. 569, Jambi 73209, Sumbar', '1978-08-10 10:34:51', '2023-01-09 23:18:43'),
(85, 'Harjaya Waluyo', 'Jln. Sentot Alibasa No. 232, Tangerang 94425, Jambi', '2020-11-10 23:37:46', '2023-01-09 23:18:43'),
(86, 'Gawati Syahrini Padmasari', 'Ds. Bambu No. 216, Malang 99098, Jabar', '2021-08-12 14:22:31', '2023-01-09 23:18:43'),
(87, 'Karimah Riyanti', 'Dk. Baladewa No. 263, Langsa 14444, DKI', '1975-11-25 19:40:10', '2023-01-09 23:18:43'),
(88, 'Bancar Setiawan', 'Kpg. Bambu No. 891, Samarinda 81557, Kalbar', '1984-03-09 06:17:02', '2023-01-09 23:18:43'),
(89, 'Kayla Gabriella Yolanda', 'Ds. Rajawali No. 170, Madiun 56040, Sulbar', '1988-03-08 03:02:11', '2023-01-09 23:18:43'),
(90, 'Ifa Kuswandari', 'Dk. Babah No. 466, Bima 27673, Kaltim', '1991-09-16 10:32:14', '2023-01-09 23:18:43'),
(91, 'Vanya Widiastuti M.Pd', 'Jr. Lembong No. 875, Kediri 12933, Kalbar', '1975-03-24 18:02:33', '2023-01-09 23:18:43'),
(92, 'Zulfa Suartini', 'Gg. M.T. Haryono No. 232, Bogor 76457, Lampung', '1997-03-04 21:06:01', '2023-01-09 23:18:43'),
(93, 'Panca Manullang', 'Ds. Gedebage Selatan No. 978, Payakumbuh 97145, Lampung', '1993-02-18 08:13:27', '2023-01-09 23:18:43'),
(94, 'Garan Karsana Iswahyudi M.Pd', 'Gg. Balikpapan No. 270, Semarang 65661, DKI', '1994-11-17 21:03:51', '2023-01-09 23:18:43'),
(95, 'Humaira Wahyuni', 'Jr. Bakau Griya Utama No. 939, Malang 51663, DIY', '2001-08-26 10:42:08', '2023-01-09 23:18:43'),
(96, 'Gasti Namaga M.Pd', 'Jln. Rajawali Timur No. 753, Banjar 96136, Sultra', '1983-09-17 23:31:55', '2023-01-09 23:18:43'),
(97, 'Wirda Lala Rahimah S.I.Kom', 'Psr. Villa No. 17, Prabumulih 53203, Kalbar', '2008-04-02 11:51:20', '2023-01-09 23:18:43'),
(98, 'Elma Maida Rahayu', 'Jln. Pasirkoja No. 85, Pagar Alam 71978, Banten', '1997-02-17 07:21:01', '2023-01-09 23:18:43'),
(99, 'Almira Jelita Uyainah S.Gz', 'Psr. Pahlawan No. 553, Mataram 10606, Gorontalo', '2003-12-05 03:15:42', '2023-01-09 23:18:43'),
(100, 'Bahuwirya Pranowo S.Pt', 'Ki. Bakin No. 501, Palangka Raya 47152, Maluku', '1990-04-26 06:16:18', '2023-01-09 23:18:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-01-09-061912', 'App\\Database\\Migrations\\Manusia', 'default', 'App', 1673245866, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `manusia`
--
ALTER TABLE `manusia`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `manusia`
--
ALTER TABLE `manusia`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
