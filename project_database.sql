-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 12:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Sari Tania Puspita', NULL, NULL),
(2, 'Diki Alfarabi Hadi', NULL, NULL),
(3, 'Luluh Sinaga', NULL, NULL),
(4, 'Lamar Putra', NULL, NULL),
(5, 'Banawi Kuswoyo', NULL, NULL),
(6, 'Ratih Wijayanti', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_hadiah`
--

CREATE TABLE `anggota_hadiah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `hadiah_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota_hadiah`
--

INSERT INTO `anggota_hadiah` (`id`, `anggota_id`, `hadiah_id`, `created_at`, `updated_at`) VALUES
(1, 6, 6, NULL, NULL),
(2, 2, 5, NULL, NULL),
(3, 6, 10, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 6, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 4, 11, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 6, 6, NULL, NULL),
(11, 3, 2, NULL, NULL),
(12, 2, 3, NULL, NULL),
(13, 1, 8, NULL, NULL),
(14, 6, 8, NULL, NULL),
(15, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `judul`, `created_at`, `updated_at`) VALUES
(1, 'Placeat saepe ea possimus provident quos est molestiae reiciendis.', '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(2, 'Totam laudantium molestiae similique sit.', '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(3, 'Aut consequatur ducimus ut non voluptatem voluptas.', '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(4, 'Ad sit voluptatem qui ut dolorem.', '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(5, 'Qui consequatur eum fuga corrupti.', '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(6, 'Quos nesciunt blanditiis amet odio.', '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(7, 'Ex doloremque consequuntur velit alias repellendus ullam.', '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(8, 'Perspiciatis a quo beatae nobis et suscipit illo.', '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(9, 'Maiores voluptate animi est enim totam.', '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(10, 'Rerum expedita inventore nulla voluptates perferendis placeat.', '2024-05-29 18:48:11', '2024-05-29 18:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `umur`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'Hardi Asmadi Uwais S.Ked', 26, '2024-05-24 16:33:12', '2024-06-28 19:40:22', '2024-06-28 19:40:22'),
(10, 'Gina Halimah', 39, '2024-05-24 16:33:12', '2024-05-24 16:33:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hadiah`
--

CREATE TABLE `hadiah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_hadiah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hadiah`
--

INSERT INTO `hadiah` (`id`, `nama_hadiah`, `created_at`, `updated_at`) VALUES
(1, 'Kulkas', NULL, NULL),
(2, 'Lemari', NULL, NULL),
(3, 'Rumah', NULL, NULL),
(4, 'Mobil', NULL, NULL),
(5, 'Sepeda Motor', NULL, NULL),
(6, 'Pulpen', NULL, NULL),
(7, 'Tas', NULL, NULL),
(8, 'Sepatu', NULL, NULL),
(9, 'Voucher', NULL, NULL),
(10, 'Mouse', NULL, NULL),
(11, 'Laptop', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nim` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_24_005151_create_mahasiswa_table', 1),
(6, '2024_05_24_012614_create_pegawais_table', 2),
(7, '2024_05_24_070054_create_pegawais_table', 3),
(8, '2024_05_24_080441_create_pegawai2s_table', 4),
(9, '2024_05_24_105504_create_pegawai2_table', 5),
(10, '2024_05_24_123006_create_guru_table', 6),
(11, '2024_05_30_020232_create_pengguna_table', 7),
(12, '2024_05_30_020506_create_telepon_table', 8),
(13, '2024_05_30_023925_create_articles_table', 9),
(14, '2024_05_30_024103_create_tags_table', 9),
(15, '2024_05_30_223021_create_anggota_table', 10),
(16, '2024_05_30_223201_create_hadiah_table', 10),
(17, '2024_05_30_224221_create_anggota_hadiah_table', 11),
(18, '2024_06_29_024952_create_users_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_nama` varchar(50) NOT NULL,
  `pegawai_jabatan` varchar(20) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`) VALUES
(1, 'Haddad Alwi', 'Direktur Utama', 20, 'Jl.Cendrawasih'),
(2, 'Diki Alfarabi Hadi', 'Staff IT', 26, 'Jl. Merak Putih'),
(4, 'Malas Ngoding', 'Programmer', 30, 'Jl. Cendrawasih nomor 31'),
(7, 'Joni', 'Web Designer', 25, 'Jl. Panglateh'),
(8, 'Elma Sudiati', 'quo', 38, 'Gg. Cikapayang'),
(9, 'Slamet Lega Rajata S.Farm', 'voluptatem', 32, 'Gg. Supono'),
(10, 'Jaya Naradi Situmorang', 'quasi', 33, 'Dk. Imam Bonjol'),
(11, 'Rendy Habibi S.Psi', 'sit', 37, 'Gg. Basuki'),
(12, 'Yahya Sinaga', 'enim', 26, 'Ki. Industri'),
(13, 'Hesti Janet Hasanah S.Sos', 'est', 35, 'Dk. Wahidin Sudirohusodo'),
(14, 'Sari Rahmi Melani', 'laborum', 36, 'Psr. Dipatiukur'),
(15, 'Clara Wahyuni', 'eveniet', 38, 'Jln. Otista'),
(16, 'Dasa Jais Maheswara', 'esse', 32, 'Kpg. Radio, Bali'),
(17, 'Viktor Prasasta', 'sunt', 27, 'Jln. BKR, NTB'),
(18, 'Lurhur Damanik', 'nemo', 29, 'Psr. Salak, SulSel'),
(19, 'Zelaya Nasyidah', 'sit', 29, 'Jr. Kali, Gorontalo'),
(20, 'Oman Damanik', 'maiores', 28, 'Psr. Taman, Maluku'),
(21, 'Lili Anggraini', 'id', 25, 'Jr. Baranang, JaTim'),
(22, 'Harto Prabowo', 'quos', 38, 'Jln. Ki Hajar Dewantara, Jambi'),
(23, 'Kanda Habibi', 'nam', 35, 'Kpg. Baan, Lampung'),
(24, 'Wani Prastuti', 'doloremque', 33, 'Gg. Bakau, Papua'),
(25, 'Vero Natsir', 'illum', 34, 'Ds. Salak, KalTeng'),
(26, 'Paris Hani Nuraini S.IP', 'quo', 39, 'Ds. Dahlia, KalTeng'),
(27, 'Padma Salimah Suartini S.H.', 'ab', 38, 'Ds. Bawal, Papua'),
(28, 'Kasiran Pangeran Prasetyo', 'aut', 35, 'Ki. Fajar, Aceh'),
(29, 'Aslijan Sirait', 'repellendus', 25, 'Gg. Ujung, MalUt'),
(30, 'Ira Nuraini', 'magnam', 36, 'Gg. Yohanes, SumSel'),
(31, 'Kiandra Puspita', 'enim', 40, 'Dk. Kali, MalUt'),
(32, 'Harsaya Prayoga', 'esse', 25, 'Kpg. Dago, Bali'),
(33, 'Mala Lailasari', 'cupiditate', 25, 'Dk. Wahidin Sudirohusodo, Bali'),
(34, 'Ayu Zizi Kuswandari', 'voluptas', 32, 'Psr. Laksamana, KalSel'),
(35, 'Adika Wasita', 'cum', 29, 'Jr. Ki Hajar Dewantara, Gorontalo'),
(36, 'Najib Omar Anggriawan', 'omnis', 25, 'Kpg. Suniaraja, SumUt'),
(37, 'Edward Tomi Saptono M.M.', 'praesentium', 29, 'Dk. Sadang Serang, SulTeng'),
(38, 'Ajimat Ardianto M.Kom.', 'excepturi', 40, 'Gg. Bakti, Maluku'),
(39, 'Carub Gamblang Prasasta S.H.', 'inventore', 34, 'Gg. Cikutra Barat, SumUt'),
(40, 'Dimaz Prabowo S.Gz', 'libero', 26, 'Ds. Baya Kali Bungur, Lampung'),
(41, 'Siti Farida', 'autem', 37, 'Dk. Hang, SumUt'),
(42, 'Uchita Astuti', 'recusandae', 40, 'Ki. Sutami, JaTim'),
(43, 'Zalindra Ghaliyati Puspita S.E.I', 'saepe', 39, 'Ki. Flores, SulSel'),
(44, 'Respati Tampubolon', 'facere', 31, 'Jr. Bagas Pati, SulTeng'),
(45, 'Zulaikha Puspita', 'quam', 40, 'Gg. Baan, KalBar'),
(46, 'Maya Andriani', 'voluptatibus', 39, 'Kpg. Warga, Jambi'),
(47, 'Tantri Putri Namaga S.T.', 'voluptatem', 29, 'Kpg. Laswi, KalUt'),
(48, 'Dimaz Rajasa M.M.', 'sit', 39, 'Gg. Madiun, SulUt'),
(49, 'Lintang Lalita Astuti S.Psi', 'beatae', 33, 'Kpg. Baja, PapBar'),
(50, 'Sakura Widiastuti', 'exercitationem', 35, 'Dk. Cokroaminoto, Gorontalo'),
(51, 'Laksana Hidayat', 'sunt', 40, 'Ds. Bakau Griya Utama, Bandar Lampung, SumSel'),
(52, 'Faizah Kusmawati S.Ked', 'tempora', 37, 'Ds. Badak, SumSel'),
(53, 'Tami Nilam Widiastuti', 'esse', 40, 'Psr. Bahagia, Maluku'),
(54, 'Tina Maryati', 'est', 36, 'Jln. Lumban Tobing, SumUt'),
(55, 'Enteng Habibi S.Pd', 'voluptate', 39, 'Jr. Achmad Yani, JaBar'),
(56, 'Waluyo Samosir', 'ipsum', 39, 'Ki. Badak, SulTeng'),
(57, 'Malika Eli Kusmawati', 'exercitationem', 32, 'Ds. Banda, Gorontalo'),
(221001035, 'Joni', 'Web Designer', 25, 'Jl.Penglateh'),
(221001036, 'Erin', 'manager', 13, 'Lempeh');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai2`
--

CREATE TABLE `pegawai2` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai2`
--

INSERT INTO `pegawai2` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(2, 'Parman Simanjuntak', 'Gg. B.Agam 1 No. 677, Mataram 57000, Sumsel', NULL, NULL),
(3, 'Capa Gunawan', 'Jln. Wahidin No. 301, Samarinda 84109, Jateng', NULL, NULL),
(4, 'Kamal Mustofa S.Sos', 'Psr. Bahagia  No. 74, Singkawang 17849, Sumut', NULL, NULL),
(5, 'Hasna Nuraini', 'Gg. Radio No. 497, Banda Aceh 41954, Jabar', NULL, NULL),
(6, 'Bakidin Yahya Marbun S.Pd', 'Psr. Bahagia  No. 769, Probolinggo 41066, Jambi', NULL, NULL),
(7, 'Eli Iriana Purnawati S.H.', 'Ds. Cihampelas No. 804, Bengkulu 93264, Sulsel', NULL, NULL),
(8, 'Jasmani Hendra Sihombing', 'Psr. Industri No. 88, Tangerang 23901, Jabar', NULL, NULL),
(9, 'Prakosa Jailani S.T.', 'Jln. Soekarno Hatta No. 434, Banda Aceh 45198, Sultra', NULL, NULL),
(10, 'Embuh Jailani', 'Ki. Cokroaminoto No. 918, Tarakan 40133, Sulsel', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Padmi Kamila Hassanah S.Farm', NULL, NULL),
(2, 'Julia Oktaviani', NULL, NULL),
(3, 'Darmana Sitompul', NULL, NULL),
(4, 'Naradi Nainggolan', NULL, NULL),
(5, 'Tedi Winarno', NULL, NULL),
(6, 'Ulya Yani Permata S.Pt', NULL, NULL),
(7, 'Maida Uyainah', NULL, NULL),
(8, 'Putri Dian Nasyidah M.Pd', NULL, NULL),
(9, 'Lantar Uwais', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'dolores', 2, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(2, 'culpa', 3, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(3, 'sit', 4, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(4, 'quasi', 3, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(5, 'inventore', 5, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(6, 'ut', 7, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(7, 'quisquam', 5, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(8, 'fugiat', 7, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(9, 'perspiciatis', 5, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(10, 'voluptatem', 3, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(11, 'non', 2, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(12, 'ducimus', 5, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(13, 'tempora', 4, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(14, 'voluptatem', 10, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(15, 'nisi', 3, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(16, 'exercitationem', 10, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(17, 'sed', 2, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(18, 'tempora', 6, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(19, 'laudantium', 7, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(20, 'a', 6, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(21, 'consequuntur', 9, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(22, 'omnis', 1, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(23, 'rerum', 9, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(24, 'ut', 1, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(25, 'amet', 10, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(26, 'atque', 9, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(27, 'at', 4, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(28, 'hic', 3, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(29, 'itaque', 1, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(30, 'quia', 9, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(31, 'consequatur', 8, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(32, 'non', 9, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(33, 'explicabo', 10, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(34, 'eos', 6, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(35, 'eveniet', 5, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(36, 'dolor', 10, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(37, 'magnam', 10, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(38, 'aut', 1, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(39, 'et', 6, '2024-05-29 18:48:11', '2024-05-29 18:48:11'),
(40, 'ut', 10, '2024-05-29 18:48:11', '2024-05-29 18:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `telepon`
--

CREATE TABLE `telepon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(255) NOT NULL,
  `pengguna_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telepon`
--

INSERT INTO `telepon` (`id`, `nomor_telepon`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, '(+62) 878 0989 834', 1, NULL, NULL),
(2, '(+62) 509 9868 0557', 2, NULL, NULL),
(3, '023 9503 4379', 3, NULL, NULL),
(4, '(+62) 24 1120 052', 4, NULL, NULL),
(5, '0535 3676 2454', 5, NULL, NULL),
(6, '0614 0945 4128', 6, NULL, NULL),
(7, '0460 8541 5478', 7, NULL, NULL),
(8, '(+62) 713 5497 976', 8, NULL, NULL),
(9, '(+62) 653 4057 294', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Haddad alwi', 'haddad@progate.com', '$2y$10$r.stzck33qvLuN/6rcvMVef.BpIjbgzrLkw4./qMkEhHvYAAbM07y', '2024-06-28 18:59:22', '2024-06-28 18:59:22'),
(2, 'Haddadcool', 'haddadalwi864@gmail.com', '$2y$10$E7ci4ILdIaNz.OCr.YurIu.8W849EUwFEsSrmsYfz/i2PONxuBau6', '2024-06-28 19:37:38', '2024-06-28 19:37:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_hadiah_anggota_id_foreign` (`anggota_id`),
  ADD KEY `anggota_hadiah_hadiah_id_foreign` (`hadiah_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hadiah`
--
ALTER TABLE `hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indexes for table `pegawai2`
--
ALTER TABLE `pegawai2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_article_id_foreign` (`article_id`);

--
-- Indexes for table `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `telepon_pengguna_id_foreign` (`pengguna_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hadiah`
--
ALTER TABLE `hadiah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221001037;

--
-- AUTO_INCREMENT for table `pegawai2`
--
ALTER TABLE `pegawai2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `telepon`
--
ALTER TABLE `telepon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  ADD CONSTRAINT `anggota_hadiah_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anggota_hadiah_hadiah_id_foreign` FOREIGN KEY (`hadiah_id`) REFERENCES `hadiah` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `telepon`
--
ALTER TABLE `telepon`
  ADD CONSTRAINT `telepon_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
