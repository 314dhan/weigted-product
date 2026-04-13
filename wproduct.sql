-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Apr 2026 pada 08.19
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

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-boost:mcp:database-schema:mysql:users', 'a:3:{s:6:\"engine\";s:5:\"mysql\";s:6:\"tables\";a:1:{s:5:\"users\";a:5:{s:7:\"columns\";a:8:{s:2:\"id\";a:1:{s:4:\"type\";s:6:\"bigint\";}s:4:\"name\";a:1:{s:4:\"type\";s:7:\"varchar\";}s:5:\"email\";a:1:{s:4:\"type\";s:7:\"varchar\";}s:17:\"email_verified_at\";a:1:{s:4:\"type\";s:9:\"timestamp\";}s:8:\"password\";a:1:{s:4:\"type\";s:7:\"varchar\";}s:14:\"remember_token\";a:1:{s:4:\"type\";s:7:\"varchar\";}s:10:\"created_at\";a:1:{s:4:\"type\";s:9:\"timestamp\";}s:10:\"updated_at\";a:1:{s:4:\"type\";s:9:\"timestamp\";}}s:7:\"indexes\";a:2:{s:7:\"primary\";a:4:{s:7:\"columns\";a:1:{i:0;s:2:\"id\";}s:4:\"type\";s:5:\"btree\";s:9:\"is_unique\";b:1;s:10:\"is_primary\";b:1;}s:18:\"users_email_unique\";a:4:{s:7:\"columns\";a:1:{i:0;s:5:\"email\";}s:4:\"type\";s:5:\"btree\";s:9:\"is_unique\";b:1;s:10:\"is_primary\";b:0;}}s:12:\"foreign_keys\";a:0:{}s:8:\"triggers\";a:0:{}s:17:\"check_constraints\";a:0:{}}}s:6:\"global\";a:4:{s:5:\"views\";a:0:{}s:17:\"stored_procedures\";a:0:{}s:9:\"functions\";a:0:{}s:9:\"sequences\";a:0:{}}}', 1767109983),
('laravel-cache-boost.roster.scan', 'a:2:{s:6:\"roster\";O:21:\"Laravel\\Roster\\Roster\":3:{s:13:\"\0*\0approaches\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:11:\"\0*\0packages\";O:32:\"Laravel\\Roster\\PackageCollection\":2:{s:8:\"\0*\0items\";a:7:{i:0;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^12.0\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:LARAVEL\";s:14:\"\0*\0packageName\";s:17:\"laravel/framework\";s:10:\"\0*\0version\";s:7:\"12.44.0\";s:6:\"\0*\0dev\";b:0;}i:1;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.3.8\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PROMPTS\";s:14:\"\0*\0packageName\";s:15:\"laravel/prompts\";s:10:\"\0*\0version\";s:5:\"0.3.8\";s:6:\"\0*\0dev\";b:0;}i:2;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.5.1\";s:10:\"\0*\0package\";E:33:\"Laravel\\Roster\\Enums\\Packages:MCP\";s:14:\"\0*\0packageName\";s:11:\"laravel/mcp\";s:10:\"\0*\0version\";s:5:\"0.5.1\";s:6:\"\0*\0dev\";b:1;}i:3;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.24\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PINT\";s:14:\"\0*\0packageName\";s:12:\"laravel/pint\";s:10:\"\0*\0version\";s:6:\"1.26.0\";s:6:\"\0*\0dev\";b:1;}i:4;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.41\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:SAIL\";s:14:\"\0*\0packageName\";s:12:\"laravel/sail\";s:10:\"\0*\0version\";s:6:\"1.51.0\";s:6:\"\0*\0dev\";b:1;}i:5;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:7:\"^11.5.3\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PHPUNIT\";s:14:\"\0*\0packageName\";s:15:\"phpunit/phpunit\";s:10:\"\0*\0version\";s:7:\"11.5.46\";s:6:\"\0*\0dev\";b:1;}i:6;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:0:\"\";s:10:\"\0*\0package\";E:41:\"Laravel\\Roster\\Enums\\Packages:TAILWINDCSS\";s:14:\"\0*\0packageName\";s:11:\"tailwindcss\";s:10:\"\0*\0version\";s:6:\"4.1.18\";s:6:\"\0*\0dev\";b:1;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:21:\"\0*\0nodePackageManager\";E:43:\"Laravel\\Roster\\Enums\\NodePackageManager:NPM\";}s:9:\"timestamp\";i:1767108456;}', 1767194856);

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
(6, '2025_12_29_083133_create_penilaian_table', 1),
(7, '2025_12_30_155355_add_username_to_users_table', 2),
(8, '2025_12_31_000000_add_role_to_users_table', 3);

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
(1, 1, 1, 3, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(2, 1, 2, 4, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(3, 1, 3, 4, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(4, 1, 4, 4, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(5, 2, 1, 2, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(6, 2, 2, 4, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(7, 2, 3, 3, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(8, 2, 4, 4, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(9, 3, 1, 3, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(10, 3, 2, 3, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(11, 3, 3, 2, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(12, 3, 4, 3, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(13, 4, 1, 2, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(14, 4, 2, 4, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(15, 4, 3, 3, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(16, 4, 4, 4, '2025-12-29 01:39:51', '2026-01-01 23:46:27'),
(17, 1, 5, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(18, 1, 6, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(19, 1, 7, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(20, 1, 8, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(21, 1, 9, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(22, 1, 10, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(23, 1, 11, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(24, 1, 12, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(25, 1, 13, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(26, 1, 14, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(27, 2, 5, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(28, 2, 6, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(29, 2, 7, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(30, 2, 8, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(31, 2, 9, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(32, 2, 10, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(33, 2, 11, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(34, 2, 12, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(35, 2, 13, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(36, 2, 14, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(37, 3, 5, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(38, 3, 6, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(39, 3, 7, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(40, 3, 8, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(41, 3, 9, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(42, 3, 10, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(43, 3, 11, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(44, 3, 12, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(45, 3, 13, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(46, 3, 14, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(47, 4, 5, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(48, 4, 6, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(49, 4, 7, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(50, 4, 8, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(51, 4, 9, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(52, 4, 10, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(53, 4, 11, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(54, 4, 12, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(55, 4, 13, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(56, 4, 14, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(57, 5, 1, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(58, 5, 2, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(59, 5, 3, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(60, 5, 4, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(61, 5, 5, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(62, 5, 6, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(63, 5, 7, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(64, 5, 8, 1, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(65, 5, 9, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(66, 5, 10, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(67, 5, 11, 1, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(68, 5, 12, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(69, 5, 13, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(70, 5, 14, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(71, 6, 1, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(72, 6, 2, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(73, 6, 3, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(74, 6, 4, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(75, 6, 5, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(76, 6, 6, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(77, 6, 7, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(78, 6, 8, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(79, 6, 9, 2, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(80, 6, 10, 4, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(81, 6, 11, 3, '2025-12-29 02:00:42', '2026-01-01 23:46:27'),
(82, 6, 12, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(83, 6, 13, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(84, 6, 14, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(85, 7, 1, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(86, 7, 2, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(87, 7, 3, 1, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(88, 7, 4, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(89, 7, 5, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(90, 7, 6, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(91, 7, 7, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(92, 7, 8, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(93, 7, 9, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(94, 7, 10, 1, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(95, 7, 11, 4, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(96, 7, 12, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(97, 7, 13, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(98, 7, 14, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(99, 8, 1, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(100, 8, 2, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(101, 8, 3, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(102, 8, 4, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(103, 8, 5, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(104, 8, 6, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(105, 8, 7, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(106, 8, 8, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(107, 8, 9, 1, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(108, 8, 10, 1, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(109, 8, 11, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(110, 8, 12, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(111, 8, 13, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(112, 8, 14, 1, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(113, 9, 1, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(114, 9, 2, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(115, 9, 3, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(116, 9, 4, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(117, 9, 5, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(118, 9, 6, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(119, 9, 7, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(120, 9, 8, 1, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(121, 9, 9, 1, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(122, 9, 10, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(123, 9, 11, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(124, 9, 12, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(125, 9, 13, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(126, 9, 14, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(127, 10, 1, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(128, 10, 2, 4, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(129, 10, 3, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(130, 10, 4, 4, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(131, 10, 5, 4, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(132, 10, 6, 4, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(133, 10, 7, 4, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(134, 10, 8, 4, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(135, 10, 9, 4, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(136, 10, 10, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(137, 10, 11, 4, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(138, 10, 12, 4, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(139, 10, 13, 4, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(140, 10, 14, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(141, 11, 1, 1, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(142, 11, 2, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(143, 11, 3, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(144, 11, 4, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(145, 11, 5, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(146, 11, 6, 1, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(147, 11, 7, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(148, 11, 8, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(149, 11, 9, 1, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(150, 11, 10, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(151, 11, 11, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(152, 11, 12, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(153, 11, 13, 3, '2025-12-29 02:00:43', '2026-01-01 23:46:27'),
(154, 11, 14, 2, '2025-12-29 02:00:43', '2026-01-01 23:46:27');

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
('RQI8z2HkSM3cex1cg8LLiuAMT0gVaVG9wGzcLBqp', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSER5amVRSG93dm1MeTlOcVMyTjViVjVxY0JBNXVlaFhVTWJXWnR5cSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3BrLXJlc3VsdHMiO3M6NToicm91dGUiO3M6MTE6InNway5yZXN1bHRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1776067988);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin', NULL, NULL, '$2y$12$e5V09F2GhZOJ2Qt8wv257umilOB4y4TUBmM.9pnIGd7JUilUU8WiO', NULL, '2025-12-30 08:58:57', '2025-12-30 08:58:57'),
(3, 'Nurul Fadilah', 'kepsek', 'kepsek', 'kepsek@smamuhcilegon.sch.id', NULL, '$2y$12$rKtjA9FXCyZogTFBOWmRHOZQGdtRvXxrZRjlYglPx3D/0UREI1ioG', NULL, '2026-04-12 21:07:33', '2026-04-12 21:07:33');

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
  ADD UNIQUE KEY `users_username_unique` (`username`);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
