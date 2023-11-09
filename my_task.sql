-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 08:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_task`
--

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_05_23_053718_create_products_table', 2),
(15, '2023_05_23_063049_create_product_carts_table', 3),
(44, '2023_05_27_045151_create_orders_table', 4),
(45, '2023_05_27_073350_create_order_details_table', 4),
(47, '2023_05_27_121305_create_multi_images_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `multi_img` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `multi_img`, `created_at`, `updated_at`) VALUES
(1, 'images/multi/6aee38c204d9300e56791fed829c3430.jpg', '2023-05-27 23:40:44', '2023-05-27 23:40:44'),
(2, 'images/multi/ef6d934a83de6e47873a969b1eef15f1.jpg', '2023-05-27 23:40:44', '2023-05-27 23:40:44'),
(3, 'images/multi/4b6d466e799acfa1c924fafb21a43109.jpg', '2023-05-27 23:40:44', '2023-05-27 23:40:44'),
(4, 'images/multi/16ee943679ec60dca64f376ec3e56989.jpg', '2023-05-27 23:40:44', '2023-05-27 23:40:44'),
(5, 'images/multi/f297592c2fa47be2a196187a33e12857.jpg', '2023-05-27 23:54:37', '2023-05-27 23:54:37'),
(6, 'images/multi/8cf405cb9bb59b7e1fbd34b6c47a718c.jpg', '2023-05-27 23:54:37', '2023-05-27 23:54:37'),
(7, 'images/multi/32da649f4a6f0c6ce9e040c8167ec4c6.jpg', '2023-05-27 23:54:37', '2023-05-27 23:54:37'),
(8, 'images/multi/a16d311bacf328b7d235fc57310080b0.jpg', '2023-05-28 00:24:42', '2023-05-28 00:24:42'),
(9, 'images/multi/1eaea3b9d8871cef85630f71acd6a61f.jpg', '2023-05-28 00:24:42', '2023-05-28 00:24:42'),
(10, 'images/multi/830c64ebb90601173847b25d98690aca.jpg', '2023-05-28 00:25:11', '2023-05-28 00:25:11'),
(11, 'images/multi/b28e928a45e5719de13afee066a22e90.jpg', '2023-05-28 00:25:12', '2023-05-28 00:25:12'),
(12, 'images/multi/b84c08d4a3f59985767debc6e1f7e325.jpg', '2023-05-28 00:25:12', '2023-05-28 00:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `product_name`, `product_price`, `product_description`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 8, 5, 'Serving Tray with Cups & Spoons Set', '25.00', 'Serving Tray with Cups & Spoons Set Serving Tray with Cups & Spoons Set', NULL, '2023-05-27 02:50:14', NULL),
(2, 8, 2, 'Second Product Title update', '36.65', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, '2023-05-27 02:50:14', NULL),
(3, 8, 3, 'Third Product Title update', '50.22', 'asiufg sdhuifywef s sdf', NULL, '2023-05-27 02:50:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `user_id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 3, 8, 'Ami', 'ami@gmail.com', '01546786454', 'Banglamotor, Dhaka', '2023-05-27 02:50:14', NULL);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_description`, `product_image`, `created_at`, `updated_at`) VALUES
(2, 'Second Product Title update', '36.65', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, '2023-05-23 03:51:14', '2023-05-23 03:51:14'),
(3, 'Third Product Title update', '50.22', 'asiufg sdhuifywef s sdf', NULL, '2023-05-23 03:50:44', '2023-05-23 03:50:44'),
(4, 'Lenovo QT81 TWS Bluetooth Headset', '13.00', 'The Brand new Lenovo QT81 TWS Bluetooth Headset For  your great looking buy now at a low price in Bangladesh.\r\n\r\nBluetooth version: 5.1\r\nCharging base battery capacity: 1200mah\r\nHeadphone battery capacity: 40mah\r\nSingle machine net weight: 55g\r\nPower: 3mW\r\nWaterproof performance: IPX5\r\nTalk time: 3-5 hours', NULL, '2023-05-26 23:23:14', NULL),
(5, 'Serving Tray with Cups & Spoons Set', '25.00', 'Serving Tray with Cups & Spoons Set Serving Tray with Cups & Spoons Set', NULL, '2023-05-26 23:24:44', NULL),
(6, 'Xiaomi USB Cable Type-B', '120', 'Xiaomi USB Cable Type-B buy now at a low price in Bangladesh.\r\nOriginal Xiaomi Micro USB 2.0 cable\r\nEco-friendly TPE cover, green and healthy\r\nMini and portable\r\nData sync and charge 2-in-1 design\r\nLength: 80cm', NULL, '2023-05-27 03:20:47', NULL),
(7, 'Key Ring Doyel Pakhi Motive', '45.89', 'Key Ring Doyel Pakhi Motive Key Ring Doyel Pakhi Motive', NULL, '2023-05-27 03:22:04', NULL),
(8, 'Decorative Wooden Flower Vase', '51.68', 'Decorative Wooden Flower Vase Decorative Wooden Flower Vase', NULL, '2023-05-27 03:32:43', NULL),
(9, 'Eco friendly Hand crafted kitchen Spoon Set', '74.29', 'Eco friendly Hand crafted kitchen Spoon Set Eco friendly Hand crafted kitchen Spoon Set', NULL, '2023-05-27 03:33:24', NULL),
(10, 'Philips Mixer HR3705/00', '275.00', 'Availability: instock\r\n\r\nCategories: Blender and Mixer, Home Appliances, Philips Blender\r\n\r\nPower: 300 W\r\n5 speeds plus turbo\r\nCord clip\r\nStainless Steel Strip Beaters and Dough Hook', NULL, '2023-05-27 03:35:51', '2023-05-27 03:35:51'),
(11, 'Kelvinator KHV-333FF Defrost Refrigerator', '476.99', 'Kelvinator KHV-333FF Defrost Refrigerator\r\n\r\nKey Features:\r\nRefrigerator Type	De Frost\r\nDoor Type	VCM Door\r\nNumber of Doors	02 [Two]\r\nShelves Type	Rack\r\nDoor Rack	In Refrigerator Section\r\nVegetable Drawer/Crisper	Available', NULL, '2023-05-27 03:35:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `session_id` text NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `product_id`, `session_id`, `product_name`, `product_price`, `product_description`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'rpVlsRYW2lNjoUb5t9Y3mT7RzBX7IX9rKlWeT0m4', 'First Product Title', '30.22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', NULL, '2023-05-23 01:33:18', NULL),
(2, 2, 'rpVlsRYW2lNjoUb5t9Y3mT7RzBX7IX9rKlWeT0m4', 'Second Product Title', '366', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, '2023-05-23 01:36:20', NULL),
(3, 1, 'R4HeI3gBf5F8WuZ23BsT7amM3pUqpUWcL3ntD3SC', 'First Product Title', '30.22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', NULL, '2023-05-23 01:36:40', NULL),
(4, 2, 'SENYKP0xbVCKjr7vrD2FNItkI92sjB5RGx79BMqK', 'Second Product Title', '366', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, '2023-05-23 02:01:52', NULL),
(5, 1, 'SENYKP0xbVCKjr7vrD2FNItkI92sjB5RGx79BMqK', 'First Product Title', '30.22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', NULL, '2023-05-23 02:01:55', NULL),
(6, 3, 'SENYKP0xbVCKjr7vrD2FNItkI92sjB5RGx79BMqK', 'Third Product Title', '30.22', 'asiufg sdhuifywef s', NULL, '2023-05-23 02:01:56', NULL),
(13, 4, '7EERbWX4YQLYBnvCsUIfaohffbj1swKdjx77Wzzh', 'Lenovo QT81 TWS Bluetooth Headset', '13.00', 'The Brand new Lenovo QT81 TWS Bluetooth Headset For  your great looking buy now at a low price in Bangladesh.\r\n\r\nBluetooth version: 5.1\r\nCharging base battery capacity: 1200mah\r\nHeadphone battery capacity: 40mah\r\nSingle machine net weight: 55g\r\nPower: 3mW\r\nWaterproof performance: IPX5\r\nTalk time: 3-5 hours', NULL, '2023-05-27 02:55:34', NULL),
(14, 3, '7EERbWX4YQLYBnvCsUIfaohffbj1swKdjx77Wzzh', 'Third Product Title update', '50.22', 'asiufg sdhuifywef s sdf', NULL, '2023-05-27 03:04:14', NULL),
(15, 11, '7EERbWX4YQLYBnvCsUIfaohffbj1swKdjx77Wzzh', 'Kelvinator KHV-333FF Defrost Refrigerator', '476.99', 'Kelvinator KHV-333FF Defrost Refrigerator\r\n\r\nKey Features:\r\nRefrigerator Type	De Frost\r\nDoor Type	VCM Door\r\nNumber of Doors	02 [Two]\r\nShelves Type	Rack\r\nDoor Rack	In Refrigerator Section\r\nVegetable Drawer/Crisper	Available', NULL, '2023-05-27 03:39:06', NULL),
(16, 5, '7EERbWX4YQLYBnvCsUIfaohffbj1swKdjx77Wzzh', 'Serving Tray with Cups & Spoons Set', '25.00', 'Serving Tray with Cups & Spoons Set Serving Tray with Cups & Spoons Set', NULL, '2023-05-27 03:39:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `otp_code` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `otp_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dipankar', 'dipankar', 'themedesigner3@gmail.com', NULL, '$2y$10$yjWkNl8.pO1Pm5cJEEI9n.mcfZeQz20kcDsKeOhxtghu1JZX4ulJW', NULL, NULL, NULL, NULL),
(4, 'Dip', 'dip', 'dipankar.devurweb@gmail.com', NULL, '$2y$10$L.FoJRU15LKOFo9o6zk0s.PkBVGg7yt9LQp1c9cSNRa8HPtIoKrnu', '179115', NULL, NULL, '2023-05-22 05:11:54'),
(6, 'Dipu', 'dipu', 'biswasdipankar242@gmail.com', NULL, '$2y$10$J0UympZ4AiNWlcUIuwhFP.NV.wI0oEfSbi435vuQefYHhqsikcpHa', NULL, NULL, NULL, NULL),
(7, 'Jiya', 'jiya', 'shakziaurrahmantito.official@gmail.com', NULL, '$2y$10$oSb68gPwhXO0R0UjxqQcYu21fY0hJJiC35SMWG81M.zGg7VMksloS', '753728', NULL, NULL, '2023-05-22 05:19:20'),
(8, 'Ami', 'ami', 'ami@gmail.com', NULL, '$2y$10$uPKgEWjmHnbPQMQz9qcI5.avxWw2ekA0V98uDVW6d0VwDm.hWCi5W', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
