-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2025 at 03:11 PM
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
-- Database: `pegawai_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `agamas`
--

CREATE TABLE `agamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agamas`
--

INSERT INTO `agamas` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Islam', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(2, 'Kristen', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(3, 'Katolik', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(4, 'Hindu', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(5, 'Buddha', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(6, 'Konghucu', '2025-11-15 06:11:11', '2025-11-15 06:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eselon`
--

CREATE TABLE `eselon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eselon`
--

INSERT INTO `eselon` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'I', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(2, 'II', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(3, 'III', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(4, 'IV', '2025-11-15 06:11:11', '2025-11-15 06:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'IV/e', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(2, 'IV/d', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(3, 'IV/c', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(4, 'IV/b', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(5, 'IV/a', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(6, 'III/d', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(7, 'III/c', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(8, 'III/b', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(9, 'III/a', '2025-11-15 06:11:11', '2025-11-15 06:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Sekretariat Utama', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(2, 'Penyusun Laporan Keuangan', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(3, 'Surveyor Pemetaan Pertama', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(4, 'Analis Data Survei dan Pemetaan', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(5, 'Perancang Per-UU-an', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(6, 'Kepala Biro Perencanaan, Kepegawaian dan Hukum', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(7, 'Widyaiswara Utama', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(8, 'Analis Kepegawaian Madya', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(9, 'Kepala Sub Bidang Kerjasama dan Pelayanan Riset, DKP', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(10, 'Analis Hukum', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(11, 'Peneliti Pertama', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(12, 'Surveyor Pemetaan Muda', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(13, 'Analis Jabatan', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(14, 'Kepala Subbag Kepegawaian', '2025-11-15 06:11:11', '2025-11-15 06:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_15_130133_create_agamas_table', 1),
(5, '2025_11_15_130341_create_unit_kerja_table', 1),
(6, '2025_11_15_130402_create_golongan_table', 1),
(7, '2025_11_15_130417_create_eselon_table', 1),
(8, '2025_11_15_130433_create_jabatan_table', 1),
(9, '2025_11_15_130450_create_pegawai_table', 1),
(10, '2025_11_15_132302_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` enum('L','P') NOT NULL,
  `alamat` text DEFAULT NULL,
  `agama_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_kerja_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jabatan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `golongan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `eselon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tempat_tugas` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `npwp` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `alamat`, `agama_id`, `unit_kerja_id`, `jabatan_id`, `golongan_id`, `eselon_id`, `tempat_tugas`, `no_hp`, `npwp`, `foto`, `created_at`, `updated_at`) VALUES
(1, '1742512894', 'Tugiman Wahyudin', 'Sungai Penuh', '1991-12-01', 'L', 'Ds. Babah No. 289, Palangka Raya 13367, Sulbar', 2, 1, 1, 2, 1, 'Keuangan', '088050625677', '200557547321010', '1763361367-admin.png', '2025-11-16 23:33:16', '2025-11-16 23:36:07'),
(2, '4176098669', 'Wirda Farida', 'Batam', '1997-06-10', 'L', 'Gg. Ki Hajar Dewantara No. 281, Tanjung Pinang 94823, Kaltim', 1, 1, 2, 3, 2, 'Pemetaan', '086888418121', '129430666569217', '1763361388-do.png', '2025-11-16 23:33:16', '2025-11-16 23:36:28'),
(3, '7707249334', 'Arsipatra Ismail Tamba', 'Depok', '1980-07-09', 'P', 'Jln. Ekonomi No. 924, Kotamobagu 85831, Papua', 6, 1, 3, 1, 1, 'Kepala Sekretariat Utama', '086174020061', '430422859543582', '1763361397-prod.png', '2025-11-16 23:33:16', '2025-11-16 23:36:37'),
(4, '9582241285', 'Paris Shania Mandasari S.IP', 'Dumai', '1999-08-02', 'L', 'Psr. Suryo Pranoto No. 600, Tomohon 59976, Bali', 2, 1, 4, 8, 4, 'DKP', '080148914897', '525508718755535', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(5, '8708701731', 'Ian Pranowo', 'Administrasi Jakarta Utara', '1975-04-11', 'L', 'Kpg. Bagonwoto  No. 516, Medan 15373, Aceh', 5, 1, 5, 5, 4, 'Kepala Sekretariat Utama', '086026016381', '933224694418650', '1763361410-do.png', '2025-11-16 23:33:16', '2025-11-16 23:36:50'),
(6, '7549588313', 'Lala Laksmiwati', 'Palembang', '1980-11-11', 'L', 'Gg. HOS. Cjokroaminoto (Pasirkaliki) No. 438, Gunungsitoli 75165, DKI', 4, 1, 6, 1, 4, 'Bidang Perencanaan', '085723518852', '161902337932115', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(7, '9189732162', 'Ghani Budiman', 'Pekanbaru', '1992-10-17', 'L', 'Psr. Jamika No. 23, Lhokseumawe 32286, Jabar', 3, 1, 7, 9, 3, 'Kepala Sekretariat Utama', '087384518327', '678553736651274', '1763361423-prod.png', '2025-11-16 23:33:16', '2025-11-16 23:37:03'),
(8, '6261751229', 'Shakila Yulianti', 'Pematangsiantar', '1983-02-14', 'P', 'Jln. Diponegoro No. 415, Padangsidempuan 80662, Sumsel', 1, 1, 8, 1, 4, 'Keuangan', '081202896475', '269713858296182', '1763361433-do.png', '2025-11-16 23:33:16', '2025-11-16 23:37:13'),
(9, '4484158656', 'Caket Wahyudin', 'Sibolga', '1990-01-27', 'P', 'Dk. Taman No. 764, Mataram 92774, Jatim', 1, 1, 9, 5, 3, 'Pemetaan', '084807877308', '331943985930084', '1763361454-markting.png', '2025-11-16 23:33:16', '2025-11-16 23:37:34'),
(10, '3951478615', 'Raihan Among Wibowo', 'Administrasi Jakarta Utara', '1973-08-01', 'P', 'Ki. Ters. Buah Batu No. 295, Malang 84207, Pabar', 1, 1, 10, 8, 3, 'Bidang Perencanaan', '084818881070', '976652508517521', '1763361442-fo.png', '2025-11-16 23:33:16', '2025-11-16 23:37:22'),
(11, '121212121212121212', 'Puput Andriani', 'Tegal', '1997-12-06', 'P', 'Jr. Ters. Pasir Koja No. 447, Sawahlunto 51704, Pabar', 2, 1, 11, 1, 3, 'Keuangan', '085754653211', '029163753367713', '1763387612-markting.png', '2025-11-16 23:33:16', '2025-11-17 06:53:32'),
(12, '5319258857', 'Mahdi Samosir', 'Kotamobagu', '1974-10-10', 'P', 'Jr. Bhayangkara No. 24, Probolinggo 63980, Lampung', 6, 1, 12, 4, 2, 'Bidang Kepegawaian', '086467247383', '000259939017222', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(13, '8977144981', 'Jessica Fujiati', 'Padang', '1979-08-11', 'P', 'Dk. Tambun No. 668, Jambi 17991, Kaltim', 6, 1, 13, 3, 2, 'Bidang Kepegawaian', '087672164688', '748553752401428', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(14, '2368275227', 'Jagaraga Adikara Suwarno M.Ak', 'Binjai', '1978-02-05', 'P', 'Kpg. Bakin No. 82, Pekalongan 24225, Babel', 6, 1, 14, 6, 2, 'Bidang Kepegawaian', '086994110222', '973559355373865', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(15, '8923916721', 'Intan Melinda Laksmiwati M.Kom.', 'Tomohon', '1993-04-27', 'P', 'Ds. Salak No. 881, Pagar Alam 53875, Kalteng', 5, 2, 1, 9, 3, 'Pemetaan', '083559297669', '668802399145447', '1763361473-fo.png', '2025-11-16 23:33:16', '2025-11-16 23:37:53'),
(16, '3080173472', 'Karta Wage Ramadan', 'Tanjung Pinang', '1994-01-20', 'L', 'Jr. Merdeka No. 262, Magelang 69572, Kalsel', 4, 2, 2, 3, 3, 'Bidang Perencanaan', '080737740603', '218894534486017', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(17, '6659874755', 'Wasis Prayoga', 'Payakumbuh', '1978-08-13', 'L', 'Psr. Baan No. 415, Pekanbaru 79893, Jatim', 5, 2, 3, 1, 1, 'Kepala Sekretariat Utama', '089708046041', '729573571766799', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(18, '2885919690', 'Langgeng Pratama', 'Surakarta', '1986-06-25', 'P', 'Ki. W.R. Supratman No. 315, Surabaya 37726, Pabar', 2, 2, 4, 8, 1, 'Kepala Biro Perencanaan', '080824503963', '508692939330471', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(19, '4159916853', 'Oni Hamima Agustina', 'Makassar', '1978-12-02', 'L', 'Psr. Padang No. 174, Bengkulu 99159, Kaltim', 4, 2, 5, 1, 3, 'Bidang Kepegawaian', '086063212140', '735878317085222', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(20, '5691298663', 'Najib Mangunsong', 'Malang', '1991-10-29', 'L', 'Dk. Otista No. 595, Pontianak 67201, Sumbar', 1, 2, 6, 7, 4, 'Keuangan', '087353282510', '133209102925414', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(21, '3304214964', 'Rika Keisha Namaga M.M.', 'Tidore Kepulauan', '1999-07-30', 'P', 'Jln. Ketandan No. 443, Pangkal Pinang 37412, Kaltim', 3, 2, 7, 2, 3, 'Kepala Sekretariat Utama', '087806379065', '723671249071855', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(22, '3991139951', 'Ina Julia Farida M.Kom.', 'Malang', '1989-06-06', 'L', 'Jln. Suryo Pranoto No. 515, Batam 77861, Bali', 3, 2, 8, 4, 2, 'DKP', '089442812447', '185334397377143', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(23, '9230875052', 'Johan Nugraha Habibi S.Psi', 'Medan', '1990-06-23', 'P', 'Psr. Adisucipto No. 975, Pariaman 99011, Kalsel', 4, 2, 9, 8, 2, 'Pemetaan', '083892039402', '336262947012383', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(24, '4379927832', 'Gamani Uwais', 'Administrasi Jakarta Barat', '1992-05-28', 'L', 'Ki. Ujung No. 302, Sawahlunto 93799, Kaltara', 6, 2, 10, 2, 2, 'Bidang Kepegawaian', '089724187690', '843328013646880', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(25, '8826075409', 'Darman Sitorus', 'Tangerang', '1972-05-22', 'P', 'Kpg. Basoka Raya No. 169, Tanjung Pinang 11361, DKI', 3, 2, 11, 2, 2, 'DKP', '081483498707', '921165424237226', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(26, '6686169545', 'Kiandra Kasiyah Safitri', 'Semarang', '1986-08-07', 'L', 'Psr. Basoka No. 329, Palopo 98982, Jambi', 3, 2, 12, 4, 1, 'Pemetaan', '085918775199', '363486581909094', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(27, '0516842837', 'Bella Andriani S.Farm', 'Kendari', '1994-10-08', 'P', 'Kpg. Bawal No. 650, Sibolga 97532, Sultra', 4, 2, 13, 1, 1, 'Bidang Perencanaan', '086915048220', '106546550960171', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(28, '7035001749', 'Leo Irawan S.Farm', 'Pariaman', '1983-11-25', 'P', 'Jr. Diponegoro No. 765, Tangerang Selatan 79950, Gorontalo', 5, 2, 14, 2, 3, 'Bidang Kepegawaian', '086771871741', '312484896321272', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(29, '2145558412', 'Elisa Fujiati S.I.Kom', 'Payakumbuh', '1973-02-15', 'P', 'Kpg. Baranangsiang No. 13, Tidore Kepulauan 54640, Lampung', 1, 3, 1, 5, 1, 'DKP', '088463236664', '082443273299333', '1763361507-fo.png', '2025-11-16 23:33:16', '2025-11-16 23:38:27'),
(30, '7331768390', 'Safina Aisyah Rahmawati S.Ked', 'Denpasar', '1975-03-26', 'L', 'Psr. Bahagia  No. 488, Ternate 76934, Kalbar', 6, 3, 2, 1, 4, 'Bidang Perencanaan', '083692132846', '200311244368138', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(31, '1874416560', 'Zizi Diana Riyanti', 'Depok', '1973-02-22', 'L', 'Ki. Setiabudhi No. 454, Tegal 27507, NTB', 6, 3, 3, 4, 2, 'Bidang Kepegawaian', '086226201660', '066175263299847', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(32, '7516442131', 'Kayla Pudjiastuti', 'Pangkal Pinang', '1994-08-09', 'P', 'Psr. Kalimantan No. 188, Sungai Penuh 21766, Sumbar', 3, 3, 4, 2, 3, 'Kepala Sekretariat Utama', '089975095768', '872130569336988', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(33, '7318997178', 'Violet Wastuti', 'Ternate', '1973-05-01', 'L', 'Dk. Daan No. 682, Administrasi Jakarta Barat 91939, Sumut', 4, 3, 5, 3, 4, 'DKP', '080752349257', '993536218464510', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(34, '8874820906', 'Eli Sarah Nuraini', 'Padangpanjang', '1976-04-11', 'P', 'Jr. Kalimantan No. 440, Bukittinggi 71609, Riau', 4, 3, 6, 5, 2, 'Kepala Sekretariat Utama', '085878004502', '765091116052778', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(35, '3426251255', 'Yuliana Rina Zulaika', 'Padangpanjang', '1986-01-31', 'P', 'Dk. Pahlawan No. 375, Administrasi Jakarta Utara 23429, Jatim', 5, 3, 7, 9, 3, 'Pemetaan', '083257852432', '520598583372721', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(36, '5675749125', 'Darmaji Maheswara S.Psi', 'Prabumulih', '1973-08-09', 'P', 'Jr. Banal No. 668, Sorong 52152, Kaltim', 2, 3, 8, 2, 3, 'Kepala Biro Perencanaan', '083042083303', '758512039197375', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(37, '0083327013', 'Indra Kala Hutagalung S.Sos', 'Banjarmasin', '1983-09-04', 'P', 'Dk. Radio No. 19, Magelang 13690, Kaltara', 3, 3, 9, 5, 2, 'DKP', '082991069140', '264132652925499', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(38, '3612721416', 'Balamantri Saadat Firgantoro', 'Semarang', '1977-03-26', 'P', 'Kpg. Ronggowarsito No. 38, Tegal 29141, Aceh', 3, 3, 10, 2, 1, 'Keuangan', '089333281759', '171570931380797', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(39, '5387564692', 'Tari Halimah S.I.Kom', 'Administrasi Jakarta Timur', '1997-06-22', 'P', 'Ds. HOS. Cjokroaminoto (Pasirkaliki) No. 228, Makassar 30637, Gorontalo', 3, 3, 11, 1, 3, 'Keuangan', '083253711065', '573615095654097', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(40, '2184450542', 'Maya Melani', 'Sungai Penuh', '1992-09-25', 'L', 'Kpg. Arifin No. 892, Semarang 18280, Papua', 1, 3, 12, 9, 1, 'DKP', '085336272163', '642014442147348', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(41, '7624021519', 'Zahra Zizi Astuti', 'Langsa', '1988-09-18', 'P', 'Jln. Baiduri No. 452, Tegal 97342, Lampung', 3, 3, 13, 9, 3, 'Kepala Biro Perencanaan', '084276090079', '296225502564406', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(42, '4872116962', 'Damar Tamba', 'Tarakan', '1972-01-13', 'L', 'Dk. Astana Anyar No. 865, Padangsidempuan 55648, DKI', 1, 3, 14, 2, 1, 'DKP', '081813375409', '548545045371758', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(43, '3658551044', 'Olivia Rahmi Hariyah', 'Cimahi', '1994-01-08', 'P', 'Psr. Jambu No. 375, Mataram 43603, Sulteng', 3, 4, 1, 6, 3, 'Kepala Biro Perencanaan', '083939036267', '786578082870177', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(44, '8733150343', 'Rendy Saadat Utama S.Gz', 'Dumai', '1985-10-23', 'L', 'Dk. Jayawijaya No. 598, Balikpapan 32728, Kalsel', 4, 4, 2, 8, 3, 'Kepala Biro Perencanaan', '082227154025', '502278396199738', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(45, '8219040775', 'Mujur Rajasa', 'Lhokseumawe', '1990-08-13', 'L', 'Dk. Bayam No. 779, Sorong 92154, Gorontalo', 5, 4, 3, 7, 4, 'Keuangan', '084567287117', '402853407436026', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(46, '6184798539', 'Cici Ophelia Safitri S.I.Kom', 'Metro', '1983-01-14', 'L', 'Kpg. Radio No. 723, Malang 35993, Babel', 1, 4, 4, 4, 3, 'Keuangan', '081505562696', '273607202013121', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(47, '6931499564', 'Rafi Dongoran', 'Medan', '1986-12-31', 'L', 'Psr. Kalimantan No. 681, Padangpanjang 55740, DKI', 2, 4, 5, 3, 4, 'Keuangan', '089501452750', '823931589329449', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(48, '5638239884', 'Eka Melani', 'Serang', '1974-07-28', 'L', 'Psr. Haji No. 269, Serang 67725, Sumbar', 6, 4, 6, 7, 4, 'Pemetaan', '088793200391', '347418108853385', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(49, '5252745784', 'Halima Oktaviani', 'Administrasi Jakarta Selatan', '1985-05-27', 'L', 'Jr. Camar No. 171, Pagar Alam 88399, Banten', 2, 4, 7, 1, 2, 'Bidang Kepegawaian', '083391128495', '707170676746583', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(50, '8161353282', 'Hasim Ramadan', 'Kendari', '1973-09-18', 'L', 'Dk. Kalimalang No. 924, Jayapura 78074, Banten', 1, 4, 8, 5, 2, 'Keuangan', '083468622308', '828318875298392', NULL, '2025-11-16 23:33:16', '2025-11-16 23:33:16'),
(51, '7811317429', 'Maida Haryanti M.Kom.', 'Binjai', '1982-08-19', 'P', 'Jln. Jayawijaya No. 170, Administrasi Jakarta Selatan 17109, Jabar', 5, 4, 9, 9, 3, 'Bidang Perencanaan', '088578985991', '559601604150444', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(52, '3094331280', 'Vega Hutasoit', 'Dumai', '1980-05-28', 'L', 'Ds. Dewi Sartika No. 412, Administrasi Jakarta Utara 73500, Maluku', 3, 4, 10, 7, 2, 'Kepala Sekretariat Utama', '082948545822', '381425886604753', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(53, '8864082755', 'Suci Usamah', 'Padang', '1972-07-10', 'P', 'Ki. K.H. Maskur No. 1, Kendari 24707, Sumbar', 6, 4, 11, 1, 2, 'Bidang Perencanaan', '081451306674', '940315037137620', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(54, '4966540950', 'Tirta Rajata', 'Payakumbuh', '1990-04-01', 'L', 'Ki. Umalas No. 620, Bitung 12497, Kalsel', 1, 4, 12, 8, 1, 'Bidang Kepegawaian', '085182189171', '238465723776808', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(55, '1864334432', 'Winda Shakila Zulaika', 'Bau-Bau', '1977-08-16', 'P', 'Jln. Taman No. 921, Bima 67565, Bengkulu', 4, 4, 13, 6, 3, 'Pemetaan', '086655182436', '487782589479791', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(56, '3632779235', 'Ulva Oktaviani', 'Banda Aceh', '1972-05-28', 'L', 'Jln. Peta No. 858, Tegal 83945, Jambi', 1, 4, 14, 9, 4, 'Bidang Perencanaan', '082396814788', '312905085306754', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(57, '5982218254', 'Putri Purwanti', 'Probolinggo', '1982-11-24', 'P', 'Ki. Barat No. 388, Tidore Kepulauan 98767, Pabar', 3, 5, 1, 7, 3, 'Keuangan', '082944942507', '311484082113953', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(58, '1446562066', 'Rendy Empluk Sinaga S.H.', 'Bengkulu', '1970-11-29', 'L', 'Jln. Merdeka No. 276, Medan 23324, Riau', 2, 5, 2, 4, 4, 'Kepala Biro Perencanaan', '083549306959', '178445780096694', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(59, '4360308559', 'Galang Manullang', 'Ambon', '1977-09-01', 'P', 'Psr. Yohanes No. 972, Pontianak 97046, Lampung', 2, 5, 3, 1, 3, 'Pemetaan', '082088382322', '133762092127561', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(60, '1513380798', 'Kemal Iswahyudi', 'Tasikmalaya', '1971-08-02', 'L', 'Psr. Suryo Pranoto No. 614, Ambon 22520, Malut', 2, 5, 4, 8, 3, 'Bidang Perencanaan', '089620174714', '584487430412801', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(61, '2429247960', 'Genta Wahyuni', 'Bukittinggi', '1989-05-30', 'P', 'Ki. Bayan No. 62, Lubuklinggau 77568, Malut', 6, 5, 5, 5, 1, 'DKP', '085907765863', '720571964920051', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(62, '6235093919', 'Johan Maryadi', 'Tebing Tinggi', '1993-11-17', 'P', 'Jln. Uluwatu No. 142, Pangkal Pinang 63990, Sulsel', 3, 5, 6, 7, 4, 'Kepala Biro Perencanaan', '083575012965', '190798572470581', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(63, '4980775219', 'Iriana Andriani M.Farm', 'Kediri', '1989-11-25', 'L', 'Ds. Basuki No. 425, Gunungsitoli 43560, Sulut', 3, 5, 7, 5, 1, 'Pemetaan', '087754272002', '605443747048894', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(64, '4336455284', 'Lili Cinta Rahmawati M.M.', 'Semarang', '1987-10-10', 'L', 'Jln. Padma No. 790, Kupang 24641, Sulsel', 1, 5, 8, 7, 2, 'Bidang Perencanaan', '083853939298', '015783032704678', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(65, '9251981564', 'Prabu Zulkarnain', 'Langsa', '1999-09-11', 'L', 'Ds. Muwardi No. 899, Tasikmalaya 73181, Bali', 1, 5, 9, 8, 1, 'DKP', '083372010665', '864024686685755', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(66, '8499123422', 'Jelita Lidya Sudiati', 'Sungai Penuh', '1978-03-03', 'P', 'Gg. Yogyakarta No. 261, Bandar Lampung 34246, NTB', 4, 5, 10, 1, 3, 'Pemetaan', '088904121555', '049212353006008', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(67, '1737160628', 'Prabawa Argono Habibi S.IP', 'Kendari', '1976-09-15', 'P', 'Psr. Hasanuddin No. 687, Payakumbuh 41787, Babel', 2, 5, 11, 6, 2, 'DKP', '080169818316', '615809101884891', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(68, '0084756757', 'Amalia Hafshah Nurdiyanti S.Ked', 'Pekalongan', '1973-08-22', 'L', 'Ki. Bagas Pati No. 718, Administrasi Jakarta Timur 28633, Kalteng', 2, 5, 12, 3, 1, 'Bidang Perencanaan', '080540175153', '320370351715545', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(69, '5028515738', 'Nabila Anggraini', 'Cimahi', '1993-01-16', 'P', 'Ki. Madiun No. 976, Yogyakarta 30139, Jambi', 3, 5, 13, 6, 2, 'Pemetaan', '081814313723', '832487725783378', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(70, '0009107290', 'Shania Vicky Mardhiyah', 'Tebing Tinggi', '1993-07-28', 'L', 'Ds. Abang No. 979, Binjai 30684, Sulbar', 3, 5, 14, 6, 3, 'Pemetaan', '087818873447', '703499334911206', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(71, '8169757823', 'Putu Wardi Hutagalung', 'Banjarmasin', '1978-09-19', 'L', 'Jln. Dewi Sartika No. 43, Mojokerto 46483, Papua', 1, 6, 1, 5, 1, 'Kepala Biro Perencanaan', '080130960514', '309836652845857', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(72, '5674954265', 'Hasta Jailani M.TI.', 'Bima', '1987-03-22', 'L', 'Gg. Bara Tambar No. 594, Pasuruan 66283, Gorontalo', 2, 6, 2, 7, 4, 'Bidang Perencanaan', '082864319648', '919728869027018', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(73, '7697659977', 'Vanya Fujiati', 'Jayapura', '1990-08-29', 'L', 'Kpg. Gajah No. 281, Bima 26915, Jateng', 4, 6, 3, 9, 1, 'Kepala Sekretariat Utama', '081477941479', '842119557745994', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(74, '7200342513', 'Restu Kusmawati', 'Blitar', '1984-08-29', 'P', 'Jr. Gardujati No. 186, Sawahlunto 82692, Bengkulu', 2, 6, 4, 5, 1, 'Keuangan', '088887799899', '900079675131060', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(75, '8896296468', 'Taufan Cahyadi Tampubolon', 'Jayapura', '1977-10-30', 'P', 'Gg. Sugiyopranoto No. 807, Bogor 76152, Sulut', 6, 6, 5, 2, 1, 'Pemetaan', '084958454220', '257338670358280', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(76, '7686016953', 'Garang Radika Pangestu', 'Cimahi', '1996-10-01', 'L', 'Ds. Flores No. 815, Padangpanjang 38519, Malut', 6, 6, 6, 5, 3, 'Keuangan', '085008032187', '345592639433118', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(77, '6237035512', 'Natalia Agustina', 'Pematangsiantar', '1985-05-30', 'P', 'Ki. Cikutra Timur No. 134, Malang 60309, Lampung', 2, 6, 7, 8, 4, 'Pemetaan', '081606575608', '146873110975834', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(78, '9066125616', 'Jail Rizki Prabowo', 'Cilegon', '1973-05-04', 'L', 'Jr. Antapani Lama No. 378, Sawahlunto 13864, NTB', 5, 6, 8, 7, 4, 'Bidang Perencanaan', '087551201140', '353493525753272', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(79, '0855642328', 'Rina Yunita Oktaviani', 'Serang', '1984-02-17', 'P', 'Jr. Lada No. 198, Gunungsitoli 15912, Jateng', 6, 6, 9, 2, 2, 'Pemetaan', '088636350741', '190599427752999', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(80, '6201406798', 'Xanana Hutagalung', 'Batam', '1990-01-09', 'L', 'Psr. Salatiga No. 992, Binjai 85702, DKI', 6, 6, 10, 3, 3, 'Kepala Sekretariat Utama', '082000100059', '432173184660202', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(81, '5785426177', 'Almira Yuniar', 'Bima', '1997-12-12', 'L', 'Jln. Abdul Rahmat No. 497, Manado 11275, Malut', 1, 6, 11, 2, 4, 'Keuangan', '089942122223', '631790112292469', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(82, '7503254458', 'Cakrawala Prabowo', 'Lubuklinggau', '1980-04-18', 'L', 'Jln. Lembong No. 889, Balikpapan 43728, Bali', 6, 6, 12, 5, 2, 'DKP', '086960769497', '313209776889351', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(83, '2084543514', 'Ajimat Latupono', 'Ambon', '1975-07-06', 'L', 'Jr. Cokroaminoto No. 595, Tangerang 87648, NTT', 1, 6, 13, 4, 4, 'Kepala Sekretariat Utama', '082069521066', '839079784890074', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(84, '9181450890', 'Paulin Kania Uyainah', 'Kendari', '1990-04-01', 'L', 'Jr. Bahagia  No. 662, Banjarbaru 70531, Gorontalo', 6, 6, 14, 8, 4, 'Kepala Biro Perencanaan', '088591316867', '401204992687174', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(85, '3452743910', 'Darmaji Kemal Wibowo M.Ak', 'Pekalongan', '1999-12-22', 'P', 'Ds. Baya Kali Bungur No. 282, Singkawang 37298, Kalsel', 3, 7, 1, 7, 1, 'Kepala Biro Perencanaan', '087862686635', '655971306821984', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(86, '4456717992', 'Wulan Pudjiastuti', 'Tual', '1988-07-08', 'P', 'Gg. Mulyadi No. 101, Jayapura 45920, Pabar', 3, 7, 2, 3, 2, 'Keuangan', '089469260094', '899440542643758', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(87, '9962017096', 'Jono Sitompul', 'Ambon', '1986-08-12', 'P', 'Jln. Batako No. 225, Pontianak 78504, Banten', 2, 7, 3, 8, 1, 'Kepala Biro Perencanaan', '083462239507', '429848357006815', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(88, '1202880756', 'Vanya Namaga', 'Bima', '1996-01-15', 'L', 'Jln. Pasteur No. 865, Tomohon 82277, Papua', 3, 7, 4, 2, 2, 'Keuangan', '085100201673', '146142667060375', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(89, '6737767137', 'Oliva Padma Haryanti M.Pd', 'Jayapura', '1971-08-03', 'L', 'Jr. Bambon No. 945, Banjarbaru 19182, Sultra', 5, 7, 5, 2, 4, 'Keuangan', '089292764132', '837303984547607', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(90, '3485123558', 'Viman Siregar M.Pd', 'Singkawang', '1999-07-31', 'P', 'Gg. Nakula No. 431, Palu 75670, Papua', 6, 7, 6, 2, 3, 'Kepala Biro Perencanaan', '081897024698', '848575497905468', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(91, '7339798144', 'Patricia Wahyuni', 'Tarakan', '1992-04-06', 'L', 'Jr. HOS. Cjokroaminoto (Pasirkaliki) No. 760, Surabaya 60847, Jateng', 3, 7, 7, 8, 2, 'DKP', '086185729956', '746631076334516', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(92, '0189129578', 'Gilda Mulyani', 'Sorong', '1973-09-03', 'L', 'Ki. K.H. Wahid Hasyim (Kopo) No. 142, Tomohon 31790, Sulut', 4, 7, 8, 4, 4, 'Kepala Sekretariat Utama', '080213804815', '778299738623386', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(93, '2906727191', 'Febi Maryati', 'Mojokerto', '1997-11-20', 'P', 'Jr. Laksamana No. 52, Depok 76689, Sulut', 2, 7, 9, 9, 3, 'Pemetaan', '081257784001', '197019307123309', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(94, '6976096459', 'Danuja Januar', 'Medan', '1992-04-14', 'P', 'Ds. Juanda No. 633, Kupang 86366, Sumsel', 1, 7, 10, 6, 1, 'Kepala Sekretariat Utama', '085538166361', '169803983334455', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(95, '9888966180', 'Jaeman Widodo M.Farm', 'Subulussalam', '1993-03-09', 'L', 'Ki. Lada No. 1, Bekasi 79650, NTT', 4, 7, 11, 7, 4, 'Kepala Biro Perencanaan', '087669454358', '082797847549311', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(96, '5473436330', 'Tina Calista Puspasari S.Sos', 'Gunungsitoli', '1973-01-18', 'L', 'Psr. Rajawali Barat No. 972, Surabaya 53608, Kalsel', 1, 7, 12, 9, 2, 'Kepala Sekretariat Utama', '087403953370', '169066893463651', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(97, '9952314400', 'Betania Siska Zulaika S.E.I', 'Bekasi', '1973-09-30', 'P', 'Ds. Ciwastra No. 832, Binjai 14112, Sulteng', 5, 7, 13, 8, 4, 'Keuangan', '082508676644', '780160563654660', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(98, '3885403513', 'Marwata Saptono', 'Surakarta', '1992-02-05', 'L', 'Kpg. W.R. Supratman No. 661, Bogor 45196, Pabar', 1, 7, 14, 7, 3, 'Kepala Biro Perencanaan', '088236106505', '669181327209767', NULL, '2025-11-16 23:33:17', '2025-11-16 23:33:17'),
(99, '12838727382372372832', 'Serena', 'Lampung', '1991-10-17', 'P', 'Lampung Tengah,', 2, 2, 6, 3, 2, 'Jakarta Utara', '082893828893289', '211232232332322', '1763387494-fo.png', '2025-11-17 06:51:34', '2025-11-17 06:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Wbw11kyGpGLFaSdFjUKA7mzLHyHPqdy3ggoWi3kw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVI2TWhVT1hSTGcxTTF2ZWo4eUZ6YmdnNGlETjlLZndMVnd0RXFadSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZWdhd2FpIjtzOjU6InJvdXRlIjtzOjEzOiJwZWdhd2FpLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763215129);

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Sekretariat Utama', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(2, 'Keuangan', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(3, 'Pemetaan', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(4, 'Bidang Perencanaan', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(5, 'Bidang Kepegawaian', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(6, 'DKP', '2025-11-15 06:11:11', '2025-11-15 06:11:11'),
(7, 'Kepala Biro Perencanaan', '2025-11-15 06:11:11', '2025-11-15 06:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin 1', 'admin@example.com', NULL, '$2y$12$fL0zpcxk83DCT2a8hCVYUOz0.CYohlKhzN2UHy.35BEvvvBFmmDya', 'admin', NULL, '2025-11-16 01:07:51', '2025-11-17 06:31:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `eselon`
--
ALTER TABLE `eselon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawai_agama_id_foreign` (`agama_id`),
  ADD KEY `pegawai_unit_kerja_id_foreign` (`unit_kerja_id`),
  ADD KEY `pegawai_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `pegawai_golongan_id_foreign` (`golongan_id`),
  ADD KEY `pegawai_eselon_id_foreign` (`eselon_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `eselon`
--
ALTER TABLE `eselon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `golongan`
--
ALTER TABLE `golongan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_agama_id_foreign` FOREIGN KEY (`agama_id`) REFERENCES `agamas` (`id`),
  ADD CONSTRAINT `pegawai_eselon_id_foreign` FOREIGN KEY (`eselon_id`) REFERENCES `eselon` (`id`),
  ADD CONSTRAINT `pegawai_golongan_id_foreign` FOREIGN KEY (`golongan_id`) REFERENCES `golongan` (`id`),
  ADD CONSTRAINT `pegawai_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`id`),
  ADD CONSTRAINT `pegawai_unit_kerja_id_foreign` FOREIGN KEY (`unit_kerja_id`) REFERENCES `unit_kerja` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
