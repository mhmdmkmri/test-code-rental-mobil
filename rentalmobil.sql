-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jul 2023 pada 12.44
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentalmobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cars`
--

CREATE TABLE `cars` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `license_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `price` int(10) UNSIGNED DEFAULT NULL,
  `penalty` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cars`
--

INSERT INTO `cars` (`id`, `manufacture_id`, `name`, `license_number`, `color`, `year`, `status`, `price`, `penalty`, `deleted_at`, `created_at`, `updated_at`) VALUES
('396b6deb-0501-4471-a4e3-d12de2e8b374', '86d14bc1-7f4d-4b0a-b4a4-9d2396dbce20', 'saya', '2123', 'birua', '12356', 'terpakai', 200000, 20000, NULL, '2023-07-21 02:19:33', '2023-07-24 00:36:07'),
('7ba9f1f2-47bc-4c14-b292-34bf4e2fec1c', '702f41f0-9ac0-4da2-9639-72163f8db6b0', 'badaang', 'd 2345 sjws', 'biru', '2002s', 'terpakai', 200000, 20000, NULL, '2023-07-24 01:01:39', '2023-07-24 03:13:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `car_images`
--

CREATE TABLE `car_images` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `car_images`
--

INSERT INTO `car_images` (`id`, `car_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
('386e3686-19e7-4ee1-8d93-93d8f2e6641c', '396b6deb-0501-4471-a4e3-d12de2e8b374', 'storage/image/car/361c4a03-a87c-4d1d-9a0d-4666f9276cf3.jpg', '2023-07-24 00:34:18', '2023-07-21 02:19:33', '2023-07-24 00:34:18'),
('dca3b3b0-565c-409f-b4a5-5110385e7dd8', '396b6deb-0501-4471-a4e3-d12de2e8b374', 'storage/image/car/75276ebd-67a1-426e-aeec-620603db5a5a.jpg', '2023-07-24 00:42:45', '2023-07-24 00:34:29', '2023-07-24 00:42:45'),
('b607cc4c-e6df-40d5-aa29-f88007b778dd', '396b6deb-0501-4471-a4e3-d12de2e8b374', 'storage/image/car/668c52b8-be64-4b13-817b-787e28a1846e.png', '2023-07-24 00:42:54', '2023-07-24 00:36:07', '2023-07-24 00:42:54'),
('d54d7456-fb7c-4acb-af3f-e39a0dc4cfa3', '396b6deb-0501-4471-a4e3-d12de2e8b374', 'storage/image/car/701bf686-10e5-4573-9f50-029827908453.jpg', '2023-07-24 00:43:07', '2023-07-24 00:40:27', '2023-07-24 00:43:07'),
('40543fc4-660e-4c53-a758-8f4346cf99a6', '396b6deb-0501-4471-a4e3-d12de2e8b374', 'storage/image/car/789cde5f-5488-4bac-90b1-65c64ade41b8.jpg', '2023-07-24 00:43:02', '2023-07-24 00:40:27', '2023-07-24 00:43:02'),
('1c7be734-4c56-484b-891d-24cd3dd3e311', '396b6deb-0501-4471-a4e3-d12de2e8b374', 'storage/image/car/19bc1543-7a88-400c-b9bb-a73c87c2b48f.png', '2023-07-24 00:42:39', '2023-07-24 00:40:27', '2023-07-24 00:42:39'),
('fdb9aa75-0431-4923-a065-feda5e5a8869', '7ba9f1f2-47bc-4c14-b292-34bf4e2fec1c', 'public/image/car/e80d948a-458b-4787-97ea-b9a9dcaf4adf.jpg', '2023-07-24 01:36:21', '2023-07-24 01:01:39', '2023-07-24 01:36:21'),
('2da35772-fb90-4f5c-971a-013b103a33fa', '7ba9f1f2-47bc-4c14-b292-34bf4e2fec1c', 'public/image/car/784ddc31-bb7a-48e0-b8ea-0ca0f601e257.png', '2023-07-24 01:36:25', '2023-07-24 01:01:39', '2023-07-24 01:36:25'),
('d55c3664-e2a7-48b8-b8a3-f4c2de2ff310', '7ba9f1f2-47bc-4c14-b292-34bf4e2fec1c', 'public/image/car/1d918319-3dc0-4365-bcd0-4b933869428f.png', '2023-07-24 01:36:27', '2023-07-24 01:01:39', '2023-07-24 01:36:27'),
('69969794-a6ec-4471-83a2-ab9d4483bad5', '7ba9f1f2-47bc-4c14-b292-34bf4e2fec1c', 'storage/image/car/00d4b481-446a-4356-8578-ce755e5f0326.jpg', NULL, '2023-07-24 01:36:42', '2023-07-24 01:36:42'),
('2a0f1cf8-4cac-4ff5-9a48-e4547236718f', '7ba9f1f2-47bc-4c14-b292-34bf4e2fec1c', 'storage/image/car/864b10cc-81cf-480b-a935-222d25b54ea3.jpg', NULL, '2023-07-24 01:36:42', '2023-07-24 01:36:42'),
('f4e74319-9255-4db0-9ac2-2e7b02855256', '7ba9f1f2-47bc-4c14-b292-34bf4e2fec1c', 'storage/image/car/4e847a8e-31a3-4604-9355-b0558aea1f05.png', NULL, '2023-07-24 01:36:42', '2023-07-24 01:36:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `nik` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `sex` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `name`, `slug`, `nik`, `sex`, `address`, `phone_number`, `email`, `deleted_at`, `created_at`, `updated_at`) VALUES
('987399d0-ade8-4bb7-9afc-0dee0f2b045e', '9ff9ef8f-f33e-41da-8798-b20aac1768cf', 'customer', 'customer', '12345678', 'laki-laki', 'customer alamat', '088946578321', 'customer@sport.com', NULL, '2023-07-24 02:43:31', '2023-07-24 02:43:31'),
('f314a676-c99e-4645-90e7-9ac1cd8301c9', '3ecd1a02-268e-4f60-b353-6494ba1bff19', 'user2', 'user2', '1234567890', 'perempuan', 'useralamat', '1234561342', 'user@sport.com', NULL, '2023-07-24 03:23:52', '2023-07-24 03:23:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manufactures`
--

CREATE TABLE `manufactures` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `manufactures`
--

INSERT INTO `manufactures` (`id`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
('92ceeaf9-7be2-4fb8-9f1c-7b82c63bb9ac', 'Toyota', 'toyota', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('69f0eaac-f144-4054-ac4f-9359a686d55f', 'Suzuki', 'suzuki', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('a6d967a3-8dec-4eff-8831-c1282ae0358f', 'Honda', 'honda', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('4366e917-94d7-4494-9b96-0f29815a0343', 'Mercedes-Benz', 'mercedes-benz', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('8c1bd3d0-3810-4321-bec5-ccff054ba9d3', 'BMW', 'bmw', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('f09b9509-65f2-4a05-9c07-65ac018338c4', 'Daihatsu', 'daihatsu', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('fe99785c-ea96-4c8a-9bcc-322b10fdff1d', 'Nissan', 'nissan', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('800e7ef0-2877-42f3-8e0a-c66dc30097f8', 'Isuzu', 'isuzu', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('86d14bc1-7f4d-4b0a-b4a4-9d2396dbce20', 'KIA', 'kia', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('378c5a8f-4645-4551-8796-e15fb7039539', 'Mitsubishi', 'mitsubishi', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('20abc1a8-5520-448b-9482-7fe7c396a021', 'Datsun', 'datsun', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('b53ab56b-8a0c-4361-b545-9ac120e5f4af', 'Mazda', 'mazda', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('ccef8d09-2d6b-4c98-ad07-b2651beab0e4', 'Hyundai', 'hyundai', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('702f41f0-9ac0-4da2-9639-72163f8db6b0', 'Chevrolet', 'chevrolet', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_05_110508_create_roles_table', 1),
(4, '2019_04_27_083809_create_settings_table', 1),
(5, '2019_05_14_082540_create_customers_table', 1),
(6, '2019_05_14_082600_create_transactions_table', 1),
(7, '2019_05_17_143152_create_manufactures_table', 1),
(8, '2019_05_17_143557_create_car_images_table', 1),
(9, '2019_05_17_143613_create_cars_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
('c2744339-3c63-4f3b-9b9e-efc405a756b3', 'Admin', 'admin', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('03002485-28cb-44c4-819a-76d230980a66', 'Super Admin', 'super-admin', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('64420065-cb52-4778-9391-f3016ae61751', 'User', 'user', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `name`, `slug`, `description`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
('9e8abd36-5fbb-46fa-a892-2eb6979c0032', 'Nama Toko', 'nama-toko', 'Rental Mobil', 'text', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('18d9e4be-69a6-4719-8ac6-6cc52437d27a', 'Alamat', 'alamat', 'ini alamat', 'text', NULL, '2020-12-09 04:46:04', '2023-07-24 03:34:59'),
('5f7c429e-8b77-41ae-bd4e-5081ce2d79da', 'Nomer Telepon', 'nomer-telepon', '08997713667', 'text', NULL, '2020-12-09 04:46:04', '2023-07-24 03:34:59'),
('e3e1c06b-1052-4c7b-8584-ee4d4597ca59', 'Email', 'email', 'mhmdmkmri@gmail.com', 'text', NULL, '2020-12-09 04:46:04', '2023-07-24 03:34:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `rent_date` datetime DEFAULT NULL,
  `back_date` datetime DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `penalty` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `car_id`, `invoice_no`, `rent_date`, `back_date`, `return_date`, `price`, `amount`, `penalty`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
('dbd9582e-bdb2-411f-a1f3-bbe09a910a75', '918fd78d-e5b6-4b5c-9cd5-44a88d167534', '396b6deb-0501-4471-a4e3-d12de2e8b374', 'TRX-210723-00001', '2023-07-21 00:00:00', '2023-07-24 00:00:00', '2023-07-28 00:00:00', 200000, 680000, 80000, 'selesai', NULL, '2023-07-21 02:20:26', '2023-07-21 02:20:48'),
('370c88c5-ee67-46fb-97f2-3d9ccaba8da0', '51e241d9-a9b8-4271-bbf6-05994b66a17b', '396b6deb-0501-4471-a4e3-d12de2e8b374', 'TRX-240723-00001', '2023-07-24 00:00:00', '2023-07-25 00:00:00', NULL, 200000, 200000, NULL, 'proses', NULL, '2023-07-23 23:26:17', '2023-07-23 23:26:17'),
('94b05128-b9d5-46a8-bcce-6100299ea9b4', '987399d0-ade8-4bb7-9afc-0dee0f2b045e', '7ba9f1f2-47bc-4c14-b292-34bf4e2fec1c', 'TRX-240723-00002', '2023-07-24 00:00:00', '2023-07-27 00:00:00', NULL, 200000, 600000, NULL, 'proses', NULL, '2023-07-24 03:13:24', '2023-07-24 03:13:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
('3487379f-1b01-4afb-b321-cb80406a1038', 'c2744339-3c63-4f3b-9b9e-efc405a756b3', 'Admin', 'admin', 'admin@google.com', NULL, '$2y$10$VouE59kw3V485AU3.nqdV.g2XTY4pG/DP5VfoI4fG1XygMNc/IuwS', NULL, NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('c016e6ef-6721-4783-a319-48d677b7c7b1', '64420065-cb52-4778-9391-f3016ae61751', 'saya', 'makmuri', 'aku@gmail.com', NULL, '$2y$10$QTQqGhXjocZkS7vdBIXAxOOWwgRMSlBVAZf2br/2e1MN5mf8aasom', NULL, NULL, '2023-07-21 02:17:10', '2023-07-21 02:17:10'),
('9ff9ef8f-f33e-41da-8798-b20aac1768cf', '64420065-cb52-4778-9391-f3016ae61751', 'customer', 'customer', 'customer@sport.com', NULL, '$2y$10$2CmMUy5DsFfh7ULNfC.srOIsd8B3n7MJE02bM9SpDBGumdbLRXEQK', NULL, NULL, '2023-07-24 02:43:31', '2023-07-24 02:43:31'),
('25c376b7-5e33-4d67-9ee1-7752253e4543', '03002485-28cb-44c4-819a-76d230980a66', 'Super Admin', 'super-admin', 'super-admin@google.com', NULL, '$2y$10$W6.ROxcj8AuNMWRSoK0ntO.Rg1A1Fka0PjMhCSl/vNqDa.89a/upW', NULL, NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('7a6368fd-fa0d-4630-8dbb-1065c89df898', '64420065-cb52-4778-9391-f3016ae61751', 'User', 'user', 'user@google.com', NULL, '$2y$10$Mbz1DwsbGKH1ejgkXZmJuu/UOsjdmyg0x9cmhxrdq4zS7BLGFJ3Iu', NULL, NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('3ecd1a02-268e-4f60-b353-6494ba1bff19', '64420065-cb52-4778-9391-f3016ae61751', 'user2', 'user2', 'user@sport.com', NULL, '$2y$10$wuQo9Y5fdtUtY/MGjXg9p.hFnQA8zMrkK0SeaZh6fmgkGuP5EIrn.', NULL, NULL, '2023-07-24 03:23:52', '2023-07-24 03:23:52');

--
-- Indexes for dumped tables
--

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
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
