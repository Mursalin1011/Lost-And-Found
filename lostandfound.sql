-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 15, 2022 at 01:06 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lostandfound`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_08_01_212348_create_posts_table', 1),
(3, '2022_08_02_110537_create_user_table', 1),
(4, '2022_08_02_110956_create_message_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `urgent` tinyint(1) NOT NULL,
  `reported` tinyint(1) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` set('Dhaka','Chittagong','Khulna') COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` set('Electronics','Documents','Pet and Animals') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` set('archived','active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_email` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `date`, `urgent`, `reported`, `description`, `location`, `category`, `status`, `phone`, `email`, `show_email`) VALUES
(1, 'iphone 8', '2021-11-12', 0, 0, 'Old iphone 8 white color with broken display', 'Khulna', 'Electronics', 'active', '01732165498', 'azwad@abc.com', 1),
(2, 'iphone 8', '2022-07-11', 0, 0, 'iphone 8 pink color lost in bashundhara R/A road 2', 'Dhaka', 'Electronics', 'active', '', '', 0),
(3, 'IUB id card', '2021-12-09', 0, 0, 'id card lost in IUB. Name: \r\n Abdul Azwad Bhuiyan. Department CSC. Blood group: B+', 'Dhaka', 'Documents', 'active', '', '', 0),
(4, 'IUB admission form', '2022-06-28', 0, 0, 'admission form of IUB with student name Yeard', 'Dhaka', 'Documents', 'active', '', '', 0),
(5, 'Black kitten', '2021-09-29', 0, 0, 'Black kitten lost in block D Bashundhara R/A. Color Black, Age 2-3months. Eye color green', 'Khulna', 'Pet and Animals', 'active', '', '', 0),
(6, 'iphone 11 pro max', '2022-04-28', 0, 1, 'Green iphone 11 pro max imei: 121232677', 'Dhaka', 'Electronics', 'active', '', '', 0),
(7, 'leather bag', '2021-12-25', 0, 1, 'Office leather bag lost in airport', 'Chittagong', 'Documents', 'active', '01855599911', 'azwad@abc.com', 0),
(8, 'iphone 12 pro max', '2021-09-16', 1, 0, 'White iphone 12 pro max lost in kagoji bari lane with rainbow wallpaper', 'Khulna', 'Electronics', 'active', '01300000147', 'azwad@abc.com', 0),
(9, 'birth certificate', '2022-07-05', 1, 0, 'Birth certificate lost in khilgaon road 2. Name: Umme Hani', 'Chittagong', 'Documents', 'archived', '', '', 0),
(10, 'voter id card', '2021-09-10', 1, 0, 'Voter ID card lost in sonadanga. Name: Farhan, Blood group A+', 'Khulna', 'Documents', 'active', '', '', 0),
(11, 'Samsung S20 FE', '2022-08-12', 1, 0, 'This phone was lost in new market. ', 'Dhaka', 'Electronics', 'active', '01825856542', 'azwad_bhuiyan@lostandfound.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'Azwad Bhuiyan', 'azwad@abc.com', '$2y$10$5kWI6.BHPPS2I9RVRz.YW.WSD5CnO73rWP7nGKdRZNpNGd8rCZA3G', '01710000000'),
(2, 'Farhan noor dehan', 'farhan@abc.com', '$2y$10$GsNTzZmbBHieMphaRXEpg.ZXSuwND0hDGq/Q61euee6sUJ9NmZn8W', '01800000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
