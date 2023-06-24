-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2023 at 03:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `embassy-solution`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `passport_number` varchar(255) NOT NULL,
  `passport_issue_date` date NOT NULL,
  `passport_expire_date` date NOT NULL,
  `date_of_birth` date NOT NULL,
  `place_of_birth` varchar(255) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `married` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `medical_center` varchar(255) NOT NULL,
  `medical_issue_date` date NOT NULL,
  `medical_expire_date` date NOT NULL,
  `driving_licence` varchar(255) NOT NULL,
  `police` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_delete` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `passport_number`, `passport_issue_date`, `passport_expire_date`, `date_of_birth`, `place_of_birth`, `father`, `mother`, `religion`, `married`, `gender`, `address`, `medical_center`, `medical_issue_date`, `medical_expire_date`, `driving_licence`, `police`, `created_at`, `updated_at`, `is_delete`) VALUES
(1, 'reer', '4', '2023-06-16', '2023-06-30', '2023-06-01', 'ere,ttyt', 'Mohammed shaha alam', 'alamtaz begum', 'muslim', 'Married', NULL, 'badnikathi', 'dr ere wewaa', '2023-06-10', '2023-06-24', '3', '2', '2023-06-23 04:53:59', '2023-06-23 04:53:59', 0),
(2, 'reer', '1', '2023-06-02', '2023-06-30', '2021-02-02', 'ere,ttyt', 'Mohammed shaha alam', 'alamtaz begum', 'muslim', 'Married', NULL, 'badnikathi', 'dr ere wewaa', '2023-06-03', '2023-07-07', '154', '21', '2023-06-23 04:57:24', '2023-06-23 04:57:24', 0),
(3, 'reer', '1', '2023-06-02', '2023-06-30', '2021-02-02', 'ere,ttyt', 'Mohammed shaha alam', 'alamtaz begum', 'muslim', 'Married', NULL, 'badnikathi', 'dr ere wewaa', '2023-06-03', '2023-07-07', '154', '21', '2023-06-23 04:57:39', '2023-06-23 04:57:39', 0);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_23_091055_create_candidates_table', 1),
(6, '2023_06_23_115133_create_visa_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `licence_name` varchar(100) NOT NULL,
  `rl_no` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `office_address` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `embassy_man_name` varchar(50) NOT NULL,
  `embassy_man_phone` varchar(50) NOT NULL,
  `updated_at` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `is_delete` int(10) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `licence_name`, `rl_no`, `phone`, `office_address`, `email`, `password`, `embassy_man_name`, `embassy_man_phone`, `updated_at`, `created_at`, `is_delete`, `role`) VALUES
(13, 'demo', '12121', '01609317035', 'badnikathi', 'shakilhossain1007@gmail.com', 'eyJpdiI6InJ2UEZOSmthNzNhamQwTUdwN3llNlE9PSIsInZhbHVlIjoiMkRRNVREQS9YMGhkb1BackpxclBDZz09IiwibWFjIjoiNTI2YWFmNDE1ZTZhNmNjZmNhOWJjZTE4Mjg1N2FmMGY3NWI5ZGU4MjlhYjIyOGVlOWM1NTFjN2JmZTdmMDgwNCIsInRhZyI6IiJ9', '', '', '2023-06-22 13:35:25', '2023-06-22 13:35:25', 0, ''),
(14, 'sfasfifaasf', '12121', '01609317035', 'badnikathi', 'sallusoft166@gmail.com', 'eyJpdiI6IlJjbzhzeGVWdnMyTU9NMjNtTFlkcVE9PSIsInZhbHVlIjoiNEJWMTdNS2Z3ZlV0ZkFKcGJxRzVWZz09IiwibWFjIjoiNDUyNjFkOWE1Y2JmNTczNjkxY2IyM2MwYjFjYjViNDJlMTg1YzgwNmFiZGUyNzU2MDE3YmY2ZmU4MGQ1ZjdiYiIsInRhZyI6IiJ9', '', '', '2023-06-22 14:37:55', '2023-06-22 14:37:55', 0, 'user'),
(15, 'sdf', '22', '01609317035', 'badnikathi', 'shakil@gmail.com', 'eyJpdiI6IlN6clhadDJTN1laZDJybmh1SnBacXc9PSIsInZhbHVlIjoiY0JHaTNEQ1c2Nk80d3QzMnVaU1RzQT09IiwibWFjIjoiZmViZmViZTU3OGY1YzY2NWY3Njc4NzcxMWQ5NDJjNTNlNGNjZTFjMjZlN2NlMTJiZjNhMzY1NjYyMzM0MTUyNSIsInRhZyI6IiJ9', '', '', '2023-06-23 08:42:26', '2023-06-23 08:42:26', 0, 'user');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visa`
--

CREATE TABLE `visa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visa_no` varchar(255) NOT NULL,
  `candidate_id` bigint(20) UNSIGNED NOT NULL,
  `sponsor_id` bigint(20) UNSIGNED NOT NULL,
  `visa_date` date NOT NULL,
  `salary` varchar(255) NOT NULL,
  `sponsor_name_arabic` varchar(255) NOT NULL,
  `sponsor_name_english` varchar(255) NOT NULL,
  `profession_arabic` varchar(255) NOT NULL,
  `profession_english` varchar(255) NOT NULL,
  `mofa_no` varchar(255) NOT NULL,
  `mofa_date` date NOT NULL,
  `okala_no` varchar(255) NOT NULL,
  `musaned_no` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visa`
--
ALTER TABLE `visa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visa_candidate_id_foreign` (`candidate_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visa`
--
ALTER TABLE `visa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `visa`
--
ALTER TABLE `visa`
  ADD CONSTRAINT `visa_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
