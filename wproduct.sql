-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 29 Des 2025 pada 09.12
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wproduct`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_alternatif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id`, `nama_alternatif`, `created_at`, `updated_at`) VALUES
(1, 'Layla Puri Nur Rahma', '2025-12-29 01:39:51', '2025-12-29 01:53:55'),
(2, 'Lisa Maryati S.Si', '2025-12-29 01:39:51', '2025-12-29 01:54:06'),
(3, 'Dyah Mardiyah S.Pd', '2025-12-29 01:39:51', '2025-12-29 01:54:15'),
(4, 'Salma Rodhatul Aisy S.Pd', '2025-12-29 01:39:51', '2025-12-29 01:54:25'),
(5, 'Amalia Alifatunnisa S.Pd', '2025-12-29 01:54:39', '2025-12-29 01:54:39'),
(6, 'Ismi Ariansyah Putri S.Pd', '2025-12-29 01:54:48', '2025-12-29 01:54:48'),
(7, 'Husen S.Sy', '2025-12-29 01:54:57', '2025-12-29 01:54:57'),
(8, 'Fenti Suryani S.Pd.I', '2025-12-29 01:55:08', '2025-12-29 01:55:08'),
(9, 'Firoh Maghfiroh M.Pd', '2025-12-29 01:55:18', '2025-12-29 01:55:18'),
(10, 'Indah Syafitri', '2025-12-29 01:55:24', '2025-12-29 01:55:24'),
(11, 'Desma Prihatini', '2025-12-29 01:55:30', '2025-12-29 01:55:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kriteria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` double NOT NULL,
  `atribut` enum('benefit','cost') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama_kriteria`, `bobot`, `atribut`, `created_at`, `updated_at`) VALUES
(1, 'Mengenal karakteristik peserta didik', 4, 'benefit', '2025-12-29 01:39:51', '2025-12-29 01:48:48'),
(2, 'penguasaan teori belajar dan prinsip pembelajaran', 3, 'benefit', '2025-12-29 01:39:51', '2025-12-29 01:56:32'),
(3, 'Pengembangan dan pelaksanaan kurikulum', 3, 'benefit', '2025-12-29 01:39:51', '2025-12-29 01:56:36'),
(4, 'Pelaksanaan kegiatan pembelajaran', 4, 'benefit', '2025-12-29 01:39:51', '2025-12-29 01:56:40'),
(5, 'Pengmbangan potensi peserta didik', 4, 'benefit', '2025-12-29 01:50:08', '2025-12-29 01:50:08'),
(6, 'Komunikasi dengan peserta didik', 4, 'benefit', '2025-12-29 01:50:22', '2025-12-29 01:50:22'),
(7, 'Pelaksanaan penilaian dan evaluasi pembelajaran', 4, 'benefit', '2025-12-29 01:50:44', '2025-12-29 01:50:44'),
(8, 'Sikap dan perilaku sesuai norma yang berlaku di sekolah', 4, 'benefit', '2025-12-29 01:50:58', '2025-12-29 01:50:58'),
(9, 'Kepribadian, kedewasaan dan keteladanan', 4, 'benefit', '2025-12-29 01:51:46', '2025-12-29 01:51:46'),
(10, 'Etos kerja dan tanggung jawab', 4, 'benefit', '2025-12-29 01:52:05', '2025-12-29 01:52:05'),
(11, 'Sikap objektif dan tidak diskriminatif', 3, 'benefit', '2025-12-29 01:52:17', '2025-12-29 01:56:51'),
(12, 'Komunikasi dengan sesama guru dan lingkungan sekolah', 4, 'benefit', '2025-12-29 01:52:34', '2025-12-29 01:52:34'),
(13, 'Penguasaan materi pelajaran yang diampu', 3, 'benefit', '2025-12-29 01:52:49', '2025-12-29 01:56:56'),
(14, 'Pengembangan profesional secara berkelanjutan', 3, 'benefit', '2025-12-29 01:53:12', '2025-12-29 01:57:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_29_083120_create_kriteria_table', 1),
(5, '2025_12_29_083127_create_alternatif_table', 1),
(6, '2025_12_29_083133_create_penilaian_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id` bigint UNSIGNED NOT NULL,
  `alternatif_id` bigint UNSIGNED NOT NULL,
  `kriteria_id` bigint UNSIGNED NOT NULL,
  `nilai` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id`, `alternatif_id`, `kriteria_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(2, 1, 2, 4, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(3, 1, 3, 4, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(4, 1, 4, 4, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(5, 2, 1, 2, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(6, 2, 2, 4, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(7, 2, 3, 3, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(8, 2, 4, 4, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(9, 3, 1, 3, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(10, 3, 2, 3, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(11, 3, 3, 2, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(12, 3, 4, 3, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(13, 4, 1, 2, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(14, 4, 2, 4, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(15, 4, 3, 3, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(16, 4, 4, 4, '2025-12-29 01:39:51', '2025-12-29 02:00:54'),
(17, 1, 5, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(18, 1, 6, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(19, 1, 7, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(20, 1, 8, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(21, 1, 9, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(22, 1, 10, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(23, 1, 11, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(24, 1, 12, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(25, 1, 13, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(26, 1, 14, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(27, 2, 5, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(28, 2, 6, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(29, 2, 7, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(30, 2, 8, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(31, 2, 9, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(32, 2, 10, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(33, 2, 11, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(34, 2, 12, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(35, 2, 13, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(36, 2, 14, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(37, 3, 5, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(38, 3, 6, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(39, 3, 7, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(40, 3, 8, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(41, 3, 9, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(42, 3, 10, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(43, 3, 11, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(44, 3, 12, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(45, 3, 13, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(46, 3, 14, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(47, 4, 5, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(48, 4, 6, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(49, 4, 7, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(50, 4, 8, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(51, 4, 9, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(52, 4, 10, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(53, 4, 11, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(54, 4, 12, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(55, 4, 13, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(56, 4, 14, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(57, 5, 1, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(58, 5, 2, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(59, 5, 3, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(60, 5, 4, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(61, 5, 5, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(62, 5, 6, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(63, 5, 7, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(64, 5, 8, 11, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(65, 5, 9, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(66, 5, 10, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(67, 5, 11, 1, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(68, 5, 12, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(69, 5, 13, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(70, 5, 14, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(71, 6, 1, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(72, 6, 2, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(73, 6, 3, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(74, 6, 4, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(75, 6, 5, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(76, 6, 6, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(77, 6, 7, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(78, 6, 8, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(79, 6, 9, 2, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(80, 6, 10, 4, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(81, 6, 11, 3, '2025-12-29 02:00:42', '2025-12-29 02:00:54'),
(82, 6, 12, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(83, 6, 13, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(84, 6, 14, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(85, 7, 1, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(86, 7, 2, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(87, 7, 3, 1, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(88, 7, 4, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(89, 7, 5, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(90, 7, 6, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(91, 7, 7, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(92, 7, 8, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(93, 7, 9, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(94, 7, 10, 1, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(95, 7, 11, 4, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(96, 7, 12, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(97, 7, 13, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(98, 7, 14, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(99, 8, 1, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(100, 8, 2, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(101, 8, 3, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(102, 8, 4, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(103, 8, 5, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(104, 8, 6, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(105, 8, 7, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(106, 8, 8, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(107, 8, 9, 1, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(108, 8, 10, 1, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(109, 8, 11, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(110, 8, 12, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(111, 8, 13, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(112, 8, 14, 1, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(113, 9, 1, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(114, 9, 2, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(115, 9, 3, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(116, 9, 4, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(117, 9, 5, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(118, 9, 6, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(119, 9, 7, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(120, 9, 8, 1, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(121, 9, 9, 1, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(122, 9, 10, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(123, 9, 11, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(124, 9, 12, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(125, 9, 13, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(126, 9, 14, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(127, 10, 1, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(128, 10, 2, 4, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(129, 10, 3, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(130, 10, 4, 4, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(131, 10, 5, 4, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(132, 10, 6, 4, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(133, 10, 7, 4, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(134, 10, 8, 4, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(135, 10, 9, 4, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(136, 10, 10, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(137, 10, 11, 4, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(138, 10, 12, 4, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(139, 10, 13, 4, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(140, 10, 14, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(141, 11, 1, 1, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(142, 11, 2, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(143, 11, 3, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(144, 11, 4, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(145, 11, 5, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(146, 11, 6, 1, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(147, 11, 7, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(148, 11, 8, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(149, 11, 9, 1, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(150, 11, 10, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(151, 11, 11, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(152, 11, 12, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(153, 11, 13, 3, '2025-12-29 02:00:43', '2025-12-29 02:00:54'),
(154, 11, 14, 2, '2025-12-29 02:00:43', '2025-12-29 02:00:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dqY3a5lLimia8x4SM2fBE27pIjApJQQoge3ALHEf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzdFNUMzc0pKbFEwcEdaTFNRODFWYktTWFY3WjhYS2FVbzY0S0V2SiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo5OiJkYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766999432);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penilaian_alternatif_id_foreign` (`alternatif_id`),
  ADD KEY `penilaian_kriteria_id_foreign` (`kriteria_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_alternatif_id_foreign` FOREIGN KEY (`alternatif_id`) REFERENCES `alternatif` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `penilaian_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
