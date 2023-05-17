-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Bulan Mei 2023 pada 17.29
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_saya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Programming', 'programming', '2022-04-17 02:01:42', '2022-04-17 02:01:42'),
(2, 'Web Design', 'web-design', '2022-04-17 02:07:27', '2022-04-17 02:07:27'),
(3, 'Personal', 'personal', '2022-04-17 02:08:47', '2022-04-17 02:08:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_09_144117_create_posts_table', 1),
(6, '2022_04_14_075152_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Judul Pertama', 'judul-pertama', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam, rem?', '<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis magni consectetur laborum blanditiis optio velit ducimus expedita, distinctio nemo consequatur aspernatur atque labore, saepe debitis quia ipsum placeat delectus neque sunt porro excepturi fugiat amet voluptas!</p>\r\n    <p> Natus corrupti eligendi laborum animi repudiandae impedit eveniet saepe numquam quia, aspernatur pariatur. Eaque molestiae vel distinctio ipsa unde obcaecati, laborum nisi. Obcaecati qui ipsam accusantium, natus ab quidem mollitia tempore corrupti earum dolorum.</p>\r\n    <p> exercitationem ea minima praesentium tempora molestias sequi adipisci amet, voluptas nostrum. Suscipit nihil eligendi mollitia, voluptatum non architecto. Numquam sunt quo porro pariatur adipisci illum natus perferendis temporibus optio animi vero consequuntur quaerat sequi mollitia sit, beatae magnam, quas placeat, rerum ratione? Aperiam perspiciatis voluptates maxime molestiae perferendis ratione mollitia?</p>', NULL, '2022-04-17 02:19:44', '2022-04-17 02:19:44'),
(2, 1, 'Judul Ke Dua', 'judul-ke-dua', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam, rem?', '<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis magni consectetur laborum blanditiis optio velit ducimus expedita, distinctio nemo consequatur aspernatur atque labore, saepe debitis quia ipsum placeat delectus neque sunt porro excepturi fugiat amet voluptas!</p>\r\n    <p> Natus corrupti eligendi laborum animi repudiandae impedit eveniet saepe numquam quia, aspernatur pariatur. Eaque molestiae vel distinctio ipsa unde obcaecati, laborum nisi. Obcaecati qui ipsam accusantium, natus ab quidem mollitia tempore corrupti earum dolorum.</p>\r\n    <p> exercitationem ea minima praesentium tempora molestias sequi adipisci amet, voluptas nostrum. Suscipit nihil eligendi mollitia, voluptatum non architecto. Numquam sunt quo porro pariatur adipisci illum natus perferendis temporibus optio animi vero consequuntur quaerat sequi mollitia sit, beatae magnam, quas placeat, rerum ratione? Aperiam perspiciatis voluptates maxime molestiae perferendis ratione mollitia?</p>', NULL, '2022-04-17 02:23:35', '2022-04-17 02:23:35'),
(3, 3, 'Judul Ke Tiga', 'judul-ke-tiga', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam, rem?', '<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis magni consectetur laborum blanditiis optio velit ducimus expedita, distinctio nemo consequatur aspernatur atque labore, saepe debitis quia ipsum placeat delectus neque sunt porro excepturi fugiat amet voluptas!</p>\r\n    <p> Natus corrupti eligendi laborum animi repudiandae impedit eveniet saepe numquam quia, aspernatur pariatur. Eaque molestiae vel distinctio ipsa unde obcaecati, laborum nisi. Obcaecati qui ipsam accusantium, natus ab quidem mollitia tempore corrupti earum dolorum.</p>\r\n    <p> exercitationem ea minima praesentium tempora molestias sequi adipisci amet, voluptas nostrum. Suscipit nihil eligendi mollitia, voluptatum non architecto. Numquam sunt quo porro pariatur adipisci illum natus perferendis temporibus optio animi vero consequuntur quaerat sequi mollitia sit, beatae magnam, quas placeat, rerum ratione? Aperiam perspiciatis voluptates maxime molestiae perferendis ratione mollitia?</p>', NULL, '2022-04-17 02:24:36', '2022-04-17 02:24:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

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
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
