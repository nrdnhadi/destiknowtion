-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 34.128.116.216
-- Generation Time: Dec 22, 2023 at 03:42 AM
-- Server version: 8.0.31-google
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Destiknowtion`
--

-- --------------------------------------------------------

--
-- Table structure for table `destinasi_db`
--

CREATE TABLE `destinasi_db` (
  `id` int NOT NULL,
  `nama_wisata` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` int NOT NULL,
  `category` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `rating` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `coordinate` varchar(255) NOT NULL,
  `image_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `destinasi_db`
--

INSERT INTO `destinasi_db` (`id`, `nama_wisata`, `description`, `price`, `category`, `city`, `rating`, `address`, `coordinate`, `image_link`) VALUES
(1, 'Pantai Kuta', 'Terletak di area wisata populer Kuta, pantai ini merupakan tempat yang paling ramai dan meriah di pulau. Apa pun yang Anda harapkan dari sebuah pantai ada di sini, termasuk berenang, berjemur, selancar, olahraga air, dan banyak lainnya. Anda bisa menyewa kursi berjemur hanya dengan IDR 50.000 saja dari salah satu penjaja dan memesan minuman dingin untuk dinikmati selagi bersantai di bawah sinar matahari.', 0, 'Pantai', 'Kabupaten Badung', 5, 'Kecamatan Kuta adalah sebuah Kecamatan di Kabupaten Badung, Provinsi Bali, Indonesia.', '-8.718431, 115.168871', 'https://storage.googleapis.com/destiknowtion/pantai%20kuta.jpg'),
(2, 'Pura Besakih', 'Pura Besakih adalah pura terbesar dan dianggap paling suci di Bali. Ramai dikenal sebagai “Pura Ibu”, pura ini terletak di lereng Gunung Agung di sisi sebelah timur pulau. Gunung Agung sebenarnya merupakan salah satu gunung berapi terbesar di pulau, dan merupakan titik tertinggi Bali, yakni 3.031 mdpl. Kompleks Pura Besakih, yang sebenarnya berada di lereng sebelah selatan gunung, terdiri dari 20 pura-pura lain yang tersebar di enam tingkat undakan. ', 60000, 'Situs Keagamaan', 'Kabupaten Karangasem', 5, 'Besakih, Rendang, Karangasem Regency, Bali 80863', '-8.373974, 115.452543', 'https://storage.googleapis.com/destiknowtion/pura%20besakih.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `refresh_tokens`
--

CREATE TABLE `refresh_tokens` (
  `user_id` int NOT NULL,
  `token` varchar(35) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refresh_tokens`
--

INSERT INTO `refresh_tokens` (`user_id`, `token`, `created_at`) VALUES
(1, 'fc40dad867d96f1873e59b4933c4e2cb', '2023-12-20 16:00:18'),
(2, 'a003b43a39c6fa275502260dcc360714', '2023-12-20 16:20:47'),
(2, '5bfb1811a996441553b0924411a5b76d', '2023-12-20 16:21:05'),
(2, '5dc8ce10df384e9fe88098d0b1aed0a2', '2023-12-20 16:21:26'),
(2, '68a47b70f0e4984f7ad2082fd3459cac', '2023-12-20 16:21:48'),
(3, '9fc77fed17fbc82af3886b954d2de40f', '2023-12-20 16:24:06'),
(3, 'a201bfb4bd8808030a8e635f142290d5', '2023-12-20 16:25:13'),
(1, 'c8221102bd3c9e61d0509ad74df4a708', '2023-12-20 16:30:25'),
(1, '02adbca28ac5d14175796e46dd42e8de', '2023-12-20 20:58:34'),
(1, '4f51e25837afed793fd588792e220767', '2023-12-20 21:24:53'),
(3, 'a335e8046c2d7406467a3f12639c63cc', '2023-12-21 05:48:40'),
(3, '36e99b584e4cd441b77c1fe2f9abe874', '2023-12-21 05:54:46'),
(3, '48ad88d9dd578a6853ed618500795129', '2023-12-21 05:57:09'),
(2, '7875012e95d70b0755d90fb0be8e4f32', '2023-12-21 05:58:06'),
(2, 'ad55c209340b047bd1540d011dad6773', '2023-12-21 05:58:54'),
(2, '04d6791a20ab5ad947f95985be805426', '2023-12-21 06:15:10'),
(3, '7caa0de50c57d6686984136f1f028fd3', '2023-12-21 06:33:12'),
(3, 'fbbf1c091a83c4aa600703a62be50726', '2023-12-21 06:34:10'),
(2, '8a35dc867845e892e93e2dc274d592df', '2023-12-21 07:22:53'),
(2, '64a4920935d06073f255c21b00e0d121', '2023-12-21 07:29:03'),
(2, 'b75df646434222a0c1fba5c9c97c6ec1', '2023-12-21 11:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(70) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'abdul', 'abdul@email.com', '$2b$10$FihvXSjo7CciOpNUywMeOOiVdsGbRp/E5.92sq2VYyIgdJ8M/jc56', '2023-12-20 16:00:05', '2023-12-20 16:00:05'),
(2, 'AmunahMaisah', 'amunahmaisah123@gmail.com', '$2b$10$7CevMClmT0lkp2mOECs7B.UntEwxHz50wb86kngVEVTHDQawx8qDu', '2023-12-20 16:20:28', '2023-12-20 16:20:28'),
(3, 'test', 'test123@gmail.com', '$2b$10$rfUnSaNCnhmxuavFq5ahOO9ZR36/TL8iA22ic.I2FV7I0ckS8qHO6', '2023-12-20 16:23:52', '2023-12-20 16:23:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destinasi_db`
--
ALTER TABLE `destinasi_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `token` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destinasi_db`
--
ALTER TABLE `destinasi_db`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  ADD CONSTRAINT `refresh_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
