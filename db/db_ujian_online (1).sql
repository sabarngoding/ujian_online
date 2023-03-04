-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2023 at 03:40 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ujian_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `exam_session_id` bigint UNSIGNED NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `question_order` int NOT NULL,
  `answer_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` int NOT NULL,
  `is_correct` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `exam_id`, `exam_session_id`, `question_id`, `student_id`, `question_order`, `answer_order`, `answer`, `is_correct`, `created_at`, `updated_at`) VALUES
(114, 10, 10, 105, 7, 1, '5,3,2,1,4', 5, 'N', '2023-02-17 16:15:43', '2023-02-17 16:15:52'),
(115, 10, 10, 103, 7, 2, '4,5,2,3,1', 5, 'N', '2023-02-17 16:15:43', '2023-02-17 16:15:57'),
(116, 10, 10, 109, 7, 3, '5,3,4,2,1', 5, 'N', '2023-02-17 16:15:43', '2023-02-17 16:16:00'),
(117, 10, 10, 104, 7, 4, '4,2,1,5,3', 2, 'Y', '2023-02-17 16:15:43', '2023-02-17 16:16:03'),
(118, 10, 10, 108, 7, 5, '3,4,1,2,5', 3, 'N', '2023-02-17 16:15:43', '2023-02-17 16:16:05'),
(119, 10, 10, 106, 7, 6, '4,3,1,5,2', 3, 'N', '2023-02-17 16:15:43', '2023-02-17 16:16:09'),
(120, 10, 10, 107, 7, 7, '2,4,3,1,5', 2, 'Y', '2023-02-17 16:15:43', '2023-02-17 16:16:14'),
(121, 10, 10, 110, 7, 8, '4,2,5,1,3', 2, 'Y', '2023-02-17 16:15:43', '2023-02-17 16:16:17'),
(122, 10, 10, 102, 7, 9, '1,3,5,2,4', 1, 'N', '2023-02-17 16:15:43', '2023-02-17 16:16:21'),
(172, 13, 14, 160, 8, 1, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:30:18'),
(173, 13, 14, 161, 8, 2, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:30:22'),
(174, 13, 14, 162, 8, 3, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:30:25'),
(175, 13, 14, 163, 8, 4, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:30:27'),
(176, 13, 14, 164, 8, 5, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:30:30'),
(177, 13, 14, 165, 8, 6, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:30:33'),
(178, 13, 14, 166, 8, 7, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:30:36'),
(179, 13, 14, 167, 8, 8, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:30:40'),
(180, 13, 14, 168, 8, 9, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:30:43'),
(181, 13, 14, 169, 8, 10, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:30:47'),
(182, 13, 14, 170, 8, 11, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:30:50'),
(183, 13, 14, 171, 8, 12, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:30:55'),
(184, 13, 14, 172, 8, 13, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:00'),
(185, 13, 14, 173, 8, 14, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:03'),
(186, 13, 14, 174, 8, 15, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:07'),
(187, 13, 14, 175, 8, 16, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:11'),
(188, 13, 14, 176, 8, 17, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:14'),
(189, 13, 14, 177, 8, 18, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:18'),
(190, 13, 14, 178, 8, 19, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:21'),
(191, 13, 14, 179, 8, 20, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:24'),
(192, 13, 14, 180, 8, 21, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:27'),
(193, 13, 14, 181, 8, 22, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:30'),
(194, 13, 14, 182, 8, 23, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:33'),
(195, 13, 14, 183, 8, 24, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:36'),
(196, 13, 14, 184, 8, 25, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:39'),
(197, 13, 14, 185, 8, 26, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:42'),
(198, 13, 14, 186, 8, 27, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:14', '2023-02-19 14:31:45'),
(199, 13, 14, 187, 8, 28, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:31:47'),
(200, 13, 14, 188, 8, 29, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:31:51'),
(201, 13, 14, 189, 8, 30, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:31:53'),
(202, 13, 14, 190, 8, 31, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:31:56'),
(203, 13, 14, 191, 8, 32, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:31:59'),
(204, 13, 14, 192, 8, 33, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:02'),
(205, 13, 14, 193, 8, 34, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:06'),
(206, 13, 14, 194, 8, 35, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:09'),
(207, 13, 14, 195, 8, 36, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:14'),
(208, 13, 14, 196, 8, 37, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:18'),
(209, 13, 14, 197, 8, 38, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:23'),
(210, 13, 14, 198, 8, 39, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:26'),
(211, 13, 14, 199, 8, 40, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:29'),
(212, 13, 14, 200, 8, 41, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:31'),
(213, 13, 14, 201, 8, 42, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:34'),
(214, 13, 14, 202, 8, 43, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:36'),
(215, 13, 14, 203, 8, 44, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:39'),
(216, 13, 14, 204, 8, 45, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:41'),
(217, 13, 14, 205, 8, 46, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:46'),
(218, 13, 14, 206, 8, 47, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:49'),
(219, 13, 14, 207, 8, 48, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:52'),
(220, 13, 14, 208, 8, 49, '1,2,3,4,5', 3, 'Y', '2023-02-19 14:30:15', '2023-02-19 14:32:57'),
(221, 10, 10, 105, 8, 1, '1,2,3,4,5', 0, 'N', '2023-02-19 14:41:47', '2023-02-19 14:41:47'),
(222, 10, 10, 107, 8, 2, '1,2,3,4,5', 0, 'N', '2023-02-19 14:41:47', '2023-02-19 14:41:47'),
(223, 10, 10, 106, 8, 3, '1,2,3,4,5', 0, 'N', '2023-02-19 14:41:47', '2023-02-19 14:41:47'),
(224, 10, 10, 103, 8, 4, '1,2,3,4,5', 0, 'N', '2023-02-19 14:41:47', '2023-02-19 14:41:47'),
(225, 10, 10, 109, 8, 5, '1,2,3,4,5', 0, 'N', '2023-02-19 14:41:47', '2023-02-19 14:41:47'),
(226, 10, 10, 104, 8, 6, '1,2,3,4,5', 0, 'N', '2023-02-19 14:41:47', '2023-02-19 14:41:47'),
(227, 10, 10, 108, 8, 7, '1,2,3,4,5', 0, 'N', '2023-02-19 14:41:47', '2023-02-19 14:41:47'),
(228, 10, 10, 110, 8, 8, '1,2,3,4,5', 0, 'N', '2023-02-19 14:41:47', '2023-02-19 14:41:47'),
(229, 10, 10, 102, 8, 9, '1,2,3,4,5', 0, 'N', '2023-02-19 14:41:47', '2023-02-19 14:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'X RPL', '2023-02-07 06:40:38', '2023-02-07 06:40:38'),
(2, 'XI TKJ', '2023-02-07 06:40:49', '2023-02-07 06:40:49'),
(3, 'XII TKJ', '2023-02-07 06:42:58', '2023-02-07 06:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `duration` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `random_question` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `random_answer` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `show_answer` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `title`, `lesson_id`, `classroom_id`, `duration`, `description`, `random_question`, `random_answer`, `show_answer`, `created_at`, `updated_at`) VALUES
(10, 'UAS', 4, 3, 10, '<p>gerttn4tn43nn4</p>', 'Y', 'N', 'Y', '2023-02-17 16:10:22', '2023-02-19 14:41:10'),
(13, 'UJIAN AKHIR SEMESTER', 4, 3, 10, '<p>50</p>', 'N', 'N', 'Y', '2023-02-19 14:26:59', '2023-02-19 14:26:59'),
(14, 'SESI 1', 4, 2, 60, '<p>gasgarg</p>', 'Y', 'N', 'Y', '2023-02-20 08:05:24', '2023-02-20 08:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `exam_groups`
--

CREATE TABLE `exam_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `exam_session_id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_groups`
--

INSERT INTO `exam_groups` (`id`, `exam_id`, `exam_session_id`, `student_id`, `created_at`, `updated_at`) VALUES
(29, 13, 14, 7, '2023-02-19 14:29:02', '2023-02-19 14:29:02'),
(30, 13, 14, 8, '2023-02-19 14:29:02', '2023-02-19 14:29:02'),
(31, 10, 10, 7, '2023-02-19 14:40:45', '2023-02-19 14:40:45'),
(32, 10, 10, 8, '2023-02-19 14:40:45', '2023-02-19 14:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `exam_sessions`
--

CREATE TABLE `exam_sessions` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_sessions`
--

INSERT INTO `exam_sessions` (`id`, `exam_id`, `title`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(10, 10, 'SESI 1', '2023-02-19 21:40:00', '2023-02-19 21:45:00', '2023-02-17 16:15:03', '2023-02-19 14:40:26'),
(14, 13, 'SESI 1', '2023-02-19 21:30:00', '2023-02-19 21:35:00', '2023-02-19 14:28:52', '2023-02-19 14:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `exam_session_id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `duration` int NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `total_correct` int NOT NULL,
  `grade` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `exam_id`, `exam_session_id`, `student_id`, `duration`, `start_time`, `end_time`, `total_correct`, `grade`, `created_at`, `updated_at`) VALUES
(16, 10, 10, 7, 576000, '2023-02-17 23:15:43', '2023-02-17 23:16:29', 3, '33.33', '2023-02-17 16:15:37', '2023-02-17 16:16:29'),
(18, 10, 10, 8, 568000, '2023-02-19 21:41:47', '2023-02-19 21:52:56', 0, '0.00', '2023-02-19 14:29:17', '2023-02-19 14:52:56'),
(19, 13, 14, 8, 501000, '2023-02-19 21:30:14', '2023-02-19 21:33:07', 49, '100.00', '2023-02-19 14:29:17', '2023-02-19 14:33:07'),
(20, 13, 14, 7, 600000, NULL, NULL, 0, '0.00', '2023-02-19 14:38:16', '2023-02-19 14:38:16');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'DASAR DESAIN GRAFIS', '2023-02-07 06:26:26', '2023-02-07 06:29:53'),
(3, 'PEMROGRAMAN DASAR', '2023-02-07 06:38:15', '2023-02-07 06:38:15'),
(4, 'ADMINISTRASI INFRASTRUKTUR JARINGAN', '2023-02-08 01:28:19', '2023-02-08 01:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_06_140003_create_lessons_table', 1),
(6, '2023_02_06_140147_create_classrooms_table', 1),
(7, '2023_02_06_140330_create_exams_table', 1),
(8, '2023_02_06_140436_create_students_table', 1),
(9, '2023_02_06_140541_create_questions_table', 1),
(10, '2023_02_06_140702_create_exam_sessions_table', 1),
(11, '2023_02_06_140759_create_exam_groups_table', 1),
(12, '2023_02_06_140849_create_answers_table', 1),
(13, '2023_02_06_140949_create_grades_table', 1),
(14, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_1` text COLLATE utf8mb4_unicode_ci,
  `option_2` text COLLATE utf8mb4_unicode_ci,
  `option_3` text COLLATE utf8mb4_unicode_ci,
  `option_4` text COLLATE utf8mb4_unicode_ci,
  `option_5` text COLLATE utf8mb4_unicode_ci,
  `answer` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `exam_id`, `question`, `option_1`, `option_2`, `option_3`, `option_4`, `option_5`, `answer`, `created_at`, `updated_at`) VALUES
(102, 10, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '6', 2, '2023-02-17 16:13:46', '2023-02-17 16:13:46'),
(103, 10, 'Berapakah hasil dari 2 x 5 ?…', '2', '11', '15', '35', '46', 2, '2023-02-17 16:13:46', '2023-02-17 16:13:46'),
(104, 10, 'Berapakah hasil dari 2 + 2 ?…', '2', '19', '26', '65', '86', 2, '2023-02-17 16:13:46', '2023-02-17 16:13:46'),
(105, 10, 'Berapakah hasil dari 2 x 5 ?…', '2', '27', '37', '95', '126', 2, '2023-02-17 16:13:46', '2023-02-17 16:13:46'),
(106, 10, 'Berapakah hasil dari 2 + 2 ?…', '2', '35', '48', '125', '166', 2, '2023-02-17 16:13:46', '2023-02-17 16:13:46'),
(107, 10, 'Berapakah hasil dari 2 x 5 ?…', '2', '43', '59', '155', '206', 2, '2023-02-17 16:13:46', '2023-02-17 16:13:46'),
(108, 10, 'Berapakah hasil dari 2 + 2 ?…', '2', '51', '70', '185', '246', 2, '2023-02-17 16:13:46', '2023-02-17 16:13:46'),
(109, 10, 'Berapakah hasil dari 2 x 5 ?…', '2', '59', '81', '215', '286', 2, '2023-02-17 16:13:46', '2023-02-17 16:13:46'),
(110, 10, 'Berapakah hasil dari 2 + 2 ?…', '2', '67', '92', '245', '326', 2, '2023-02-17 16:13:46', '2023-02-17 16:13:46'),
(160, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '6', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(161, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '46', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(162, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '86', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(163, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '126', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(164, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '166', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(165, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '206', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(166, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '246', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(167, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '286', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(168, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '326', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(169, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '366', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(170, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '406', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(171, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '446', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(172, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '486', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(173, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '526', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(174, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '566', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(175, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '606', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(176, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '646', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(177, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '686', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(178, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '726', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(179, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '766', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(180, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '806', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(181, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '846', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(182, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '886', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(183, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '926', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(184, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '966', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(185, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '1006', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(186, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '1046', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(187, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '1086', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(188, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '1126', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(189, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '1166', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(190, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '1206', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(191, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '1246', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(192, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '1286', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(193, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '1326', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(194, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '1366', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(195, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '1406', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(196, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '1446', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(197, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '1486', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(198, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '1526', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(199, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '1566', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(200, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '1606', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(201, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '1646', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(202, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '1686', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(203, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '1726', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(204, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '1766', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(205, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '1806', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(206, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '1846', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(207, 13, 'Berapakah hasil dari 2 x 5 ?…', '10', '11', '15', '35', '1886', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36'),
(208, 13, 'Berapakah hasil dari 2 + 2 ?…', '2', '3', '4', '5', '1926', 3, '2023-02-19 14:27:36', '2023-02-19 14:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `nisn` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'L',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `classroom_id`, `nisn`, `name`, `password`, `gender`, `created_at`, `updated_at`) VALUES
(1, 1, 160212129, 'M. Sabarudin. Lb', 'sabar', 'L', '2023-02-07 06:54:09', '2023-02-07 06:54:09'),
(2, 1, 88888, 'udin', 'udin', 'L', '2023-02-07 07:05:25', '2023-02-07 07:05:25'),
(3, 2, 7777, 'cinta', 'cinta', 'P', '2023-02-07 07:05:25', '2023-02-07 07:05:25'),
(4, 2, 25252, 'dani', 'dani', 'L', '2023-02-07 07:35:28', '2023-02-07 07:35:28'),
(5, 2, 5155, 'deni', 'deni', 'L', '2023-02-07 07:35:28', '2023-02-07 07:35:28'),
(6, 1, 555, 'ayu', 'ayu', 'P', '2023-02-07 07:35:28', '2023-02-07 07:35:28'),
(7, 3, 6266, 'Sauki', 'sauki', 'L', '2023-02-08 01:36:04', '2023-02-08 01:36:04'),
(8, 3, 222, 'dandi', 'dandi', 'L', '2023-02-08 05:03:56', '2023-02-08 05:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$p2YzZfcfU7vO2znBp2rlwOhONC.NBPw4/8TSeeBVfMl5KKS3GIXfG', NULL, NULL, NULL, NULL, '2023-02-06 07:34:44', '2023-02-06 07:34:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_exam_id_foreign` (`exam_id`),
  ADD KEY `answers_exam_session_id_foreign` (`exam_session_id`),
  ADD KEY `answers_question_id_foreign` (`question_id`),
  ADD KEY `answers_student_id_foreign` (`student_id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `classrooms_title_unique` (`title`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_lesson_id_foreign` (`lesson_id`),
  ADD KEY `exams_classroom_id_foreign` (`classroom_id`);

--
-- Indexes for table `exam_groups`
--
ALTER TABLE `exam_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_groups_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_groups_exam_session_id_foreign` (`exam_session_id`),
  ADD KEY `exam_groups_student_id_foreign` (`student_id`);

--
-- Indexes for table `exam_sessions`
--
ALTER TABLE `exam_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_sessions_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_exam_id_foreign` (`exam_id`),
  ADD KEY `grades_exam_session_id_foreign` (`exam_session_id`),
  ADD KEY `grades_student_id_foreign` (`student_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lessons_title_unique` (`title`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_nisn_unique` (`nisn`),
  ADD KEY `students_classroom_id_foreign` (`classroom_id`);

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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `exam_groups`
--
ALTER TABLE `exam_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `exam_sessions`
--
ALTER TABLE `exam_sessions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_exam_session_id_foreign` FOREIGN KEY (`exam_session_id`) REFERENCES `exam_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exams_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_groups`
--
ALTER TABLE `exam_groups`
  ADD CONSTRAINT `exam_groups_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_groups_exam_session_id_foreign` FOREIGN KEY (`exam_session_id`) REFERENCES `exam_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_groups_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_sessions`
--
ALTER TABLE `exam_sessions`
  ADD CONSTRAINT `exam_sessions_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `grades_exam_session_id_foreign` FOREIGN KEY (`exam_session_id`) REFERENCES `exam_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `grades_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
