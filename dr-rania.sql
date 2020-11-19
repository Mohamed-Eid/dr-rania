-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2020 at 03:36 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dr-rania`
--

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `image`, `country`, `year`, `created_at`, `updated_at`) VALUES
(1, 'Award 1', 'AYAwzTH0Eie48NpmUNt8MJRKot05dYbaR3nVZkFN.jpeg', 'Egypt', '2011', '2020-11-10 10:37:28', '2020-11-10 11:34:45'),
(2, 'Award 2', 'U7P4tgCst2ZGtnRfYICeGpYGUwuS8S48TlrGNhmC.png', 'Egypt', '2020', '2020-11-10 11:26:50', '2020-11-10 11:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `center_awards`
--

CREATE TABLE `center_awards` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `center_awards`
--

INSERT INTO `center_awards` (`id`, `title`, `image`, `year`, `created_at`, `updated_at`) VALUES
(3, 'Tempor excepturi off', 'mXKPeANld0Y4ENkK65lwQxBjm07c6lSRli726zCw.jpeg', '2020', '2020-11-17 11:26:05', '2020-11-18 08:01:51'),
(4, 'Award 1', 'WF6VVTcrnq93eWqFQrisM4BgQF02hJUWGmXc1bhE.png', '2013', '2020-11-18 10:58:44', '2020-11-18 10:58:44'),
(5, 'Laborum Dolore pers', 'iM12MWYFe5R7OGew3ytGf0oj7sBp2WLMO5PenBTA.png', '2010', '2020-11-18 10:59:05', '2020-11-18 10:59:05'),
(6, 'Et suscipit nesciunt', 'dVMpFVimPZ0JALqmfd2tNZYEQNSpCBgYNUomIyPF.png', '2017', '2020-11-18 10:59:14', '2020-11-18 10:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `center_photo_albums`
--

CREATE TABLE `center_photo_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `center_photo_albums`
--

INSERT INTO `center_photo_albums` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Eu aute est blandit', '9ctSREcbl00LcqShKEwKKgJlBxVYITQPOCfI68B5.jpeg', '2020-11-18 09:25:23', '2020-11-18 09:25:23'),
(2, 'Quo ab earum id dele', 'IfABs4Raji8u6R90q0IO9qI6R8hJVYxeAbRDGi52.jpeg', '2020-11-18 11:11:26', '2020-11-18 11:11:26'),
(3, 'Award 1', 'XXm0jj6JxOfxs5mT9fAoVgMUK7SzLGn0iToD4YJa.jpeg', '2020-11-18 11:11:41', '2020-11-18 11:11:41'),
(4, 'title', 'e2byT3nY0vCw0oTh8Pug9eihmv9z0vrIn6cYzFFj.jpeg', '2020-11-18 11:11:54', '2020-11-18 11:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `center_publications`
--

CREATE TABLE `center_publications` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `center_publications`
--

INSERT INTO `center_publications` (`id`, `title`, `author`, `publisher`, `year`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ex error et la', 'Qui ab iusto quisqua', 'Laborum laborum reru', '2019', 'S6Thltb44tK6Gpz4HrMbVwDZGKo8oZDinENnsXPr.png', '2020-11-18 08:30:42', '2020-11-18 08:33:38'),
(2, 'Consectetur quos qui', 'Ab nisi tempora dign', 'Qui culpa sunt qui', '2019', '38WeGbPH1rmhpru1QgFNWudzkG6zEbenE0iJ6Hsl.jpeg', '2020-11-18 11:02:50', '2020-11-18 11:02:50'),
(3, 'Aut quis reiciendis', 'Ipsam consequuntur i', 'Maxime adipisci cupi', '1971', 'wZGjA3XH0yOona8iTrRwMgeJFOLU503iVGZqb25i.jpeg', '2020-11-18 11:03:04', '2020-11-18 11:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `center_videos`
--

CREATE TABLE `center_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `center_videos`
--

INSERT INTO `center_videos` (`id`, `title`, `body`, `link`, `created_at`, `updated_at`) VALUES
(1, 'title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'https://www.youtube.com/watch?v=PaHZTeN_wSY', '2020-11-18 09:09:22', '2020-11-18 09:17:32'),
(2, 'Id perferendis volup', 'Non sit qui animi', 'https://www.youtube.com/watch?v=s1V_A5eG7t4', '2020-11-18 11:10:49', '2020-11-18 11:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `center_workshops`
--

CREATE TABLE `center_workshops` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `center_workshops`
--

INSERT INTO `center_workshops` (`id`, `title`, `body`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Magnam ea nisi a est', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '9Rxul8buBXpWhx3pSj0zRzN6JbCbJPe4hBsvSPsd.jpeg', '2020-11-18 08:50:41', '2020-11-18 11:08:21'),
(2, 'Ea exercitation exer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,', 'NoJZCsnOoYBlBaxKVvwWq6bIjgqwSVF7tFKP4Ash.jpeg', '2020-11-18 11:06:50', '2020-11-18 11:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `major` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certifications`
--

INSERT INTO `certifications` (`id`, `title`, `major`, `year`, `grade`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Voluptatum eu fuga', 'Eum officia voluptat', '2012', 'S+', 'qg4ExRNY5nf3sioWIjd0fUnkqWZktYVQsCgD8Okc.png', '2020-11-10 13:25:00', '2020-11-10 13:25:00'),
(3, 'Rerum proident in m', 'Minima saepe qui ab', '2002', 'Commodo qui odio ull', '6IHT5PzyxYNLTD7uZ601NjF3mKiPxboMd0ueW8Sw.png', '2020-11-14 13:44:31', '2020-11-14 13:44:31'),
(4, 'Unde consequatur mol', 'Irure quisquam labor', '1989', 'SSS', 'qiHhy852FvSKyiSEy2rt9xYSkkpnn95IfxWvsm4y.png', '2020-11-14 13:44:56', '2020-11-14 13:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `esteems`
--

CREATE TABLE `esteems` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `esteemable_id` int(11) DEFAULT NULL,
  `esteemable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `esteems`
--

INSERT INTO `esteems` (`id`, `name`, `title`, `body`, `date`, `image`, `type`, `esteemable_id`, `esteemable_type`, `created_at`, `updated_at`) VALUES
(1, 'Gannon Mays', 'Animi sit modi corr', 'Culpa cupiditate qu', '1981-12-10', 'u8El0C5Kt0wvo8Z8Sgbcs7b3P1B2bxE9XIDqJ1cr.jpeg', 'congress', 2, 'App\\Event', '2020-11-12 10:20:50', '2020-11-12 10:20:50'),
(3, 'Forrest Mullen', 'Accusamus itaque ad', 'Excepturi cumque ex', '1982-05-05', 'y0xNyXZkrT8Wk81ZFq37RuVNkey4In7K2QEXPMKA.jpeg', 'home', NULL, NULL, '2020-11-12 10:21:50', '2020-11-12 10:21:50'),
(4, 'Wyatt Hicks', 'Ducimus eum deserun', 'Numquam quae aliqua', '1992-07-10', 'IVkJ3CGZO6k8UemVErxNyrEmZm2UP2SxgFwS66Or.jpeg', 'congress', 2, 'App\\Event', '2020-11-14 14:22:25', '2020-11-14 14:22:25'),
(5, 'Theodore Morales', 'Unde nostrud et corp', 'Dolores culpa elit', '1997-02-24', 'OmmZ3gg3DSTpp6jsbdYyVH2UIttzByGwM000CQhE.jpeg', 'workshop', 3, 'App\\Event', '2020-11-14 14:22:35', '2020-11-19 11:32:48'),
(6, 'Erasmus Schroeder', 'Hic illum adipisci', 'Autem praesentium qu', '2002-09-18', '2Ev320II7xOHbBuIyf28Ewinw11oIs3sCCFs3Inx.jpeg', 'workshop', 2, 'App\\Workshop', '2020-11-14 14:22:52', '2020-11-19 11:33:14'),
(7, 'Fredericka Sargent', 'Dolor dolore obcaeca', 'Ducimus dolores ven', '2019-10-21', 'X6yxlK6JVceRVBNDeQEi2MxzCVqhLQ401VDdkMP1.png', 'workshop', 2, 'App\\Workshop', '2020-11-19 11:31:06', '2020-11-19 11:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `congress_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `congress_title`, `role`, `event_title`, `date`, `location`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Sit Nam vero hic re', 'Eum ad nostrud conse', 'Quis aliquam quidem', '2019-02-03', 'Et voluptas sint exp', 'VDhqqM5u5De6kvhkYfjWUj1sTSphzdOr8oIUDwbw.jpeg', '2020-11-10 12:21:37', '2020-11-10 12:21:37'),
(3, 'Deserunt ipsum est', 'Perspiciatis nobis', 'Eveniet cupidatat d', '1992-05-02', 'Enim aliqua Eu adip', 'od1kRZHW2SZrIUMlK5NvbKkC4mEJKJcoCeUrGOTS.jpeg', '2020-11-14 09:47:51', '2020-11-14 09:47:51'),
(4, 'Dolores et aute labo', 'Voluptates quia atqu', 'Enim quidem non anim', '2010-04-29', 'Non occaecat vel cul', 'SIpztlH0deT0sbgstL5BtIVn88GjPVl0DZBQuCrC.png', '2020-11-14 12:46:14', '2020-11-14 12:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `title`, `body`, `video`, `created_at`, `updated_at`) VALUES
(3, 'Rerum quis nulla ani', 'Vero sunt qui unde e', 'https://www.youtube.com/watch?v=hQ-_-wwhB0o', '2020-11-11 09:26:19', '2020-11-11 09:26:19'),
(4, 'Commodo repellendus', 'Reiciendis et eos d', 'https://www.youtube.com/watch?v=tuuDhwQ_t8A', '2020-11-11 09:26:47', '2020-11-11 09:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'general',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `phone`, `email`, `body`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Caesar Black', '+1 (818) 349-4769', 'leryq@mailinator.com', 'Ex sed voluptatem A', 'general', '2020-11-19 09:47:11', '2020-11-19 09:47:11'),
(2, 'Elliott Arnold', '+1 (568) 889-1912', 'lofixi@mailinator.com', 'Deserunt ea dolorem', 'general', '2020-11-19 09:47:41', '2020-11-19 09:47:41'),
(3, 'Nell Walls', '+1 (572) 563-5484', 'ryba@mailinator.com', 'Doloribus voluptatib', 'general', '2020-11-19 09:48:18', '2020-11-19 09:48:18'),
(4, 'Azalia Lott', NULL, 'sevyqo@mailinator.com', 'Dolorum ad consequat', 'center', '2020-11-19 10:11:38', '2020-11-19 10:11:38'),
(5, 'Cecilia Carroll', NULL, 'fyje@mailinator.com', 'Expedita dolore sed', 'center', '2020-11-19 10:46:10', '2020-11-19 10:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2020_04_07_204105_laratrust_setup_tables', 1),
(75, '2020_10_11_110146_create_surgeries_table', 2),
(76, '2020_10_11_110204_create_surgery_translations_table', 2),
(77, '2020_10_11_153605_create_images_table', 3),
(80, '2020_10_11_154317_create_question_answers_table', 4),
(81, '2020_10_11_155409_create_question_answer_translations_table', 4),
(82, '2020_10_11_153938_create_videos_table', 5),
(83, '2020_10_11_155938_create_video_translations_table', 5),
(84, '2020_10_12_130505_create_posts_table', 6),
(85, '2020_10_12_130518_create_post_translations_table', 6),
(88, '2020_10_14_013113_create_pages_table', 7),
(89, '2020_10_14_013650_create_page_translations_table', 7),
(90, '2020_10_14_113808_create_page_images_table', 8),
(93, '2020_10_14_133815_create_settings_table', 9),
(94, '2020_10_15_010316_create_setting_translations_table', 9),
(95, '2020_10_15_023103_create_contact_messages_table', 10),
(100, '2020_10_16_192550_create_expectations_table', 11),
(101, '2020_10_16_192734_create_expectation_translations_table', 11),
(102, '2020_10_18_132547_create_partners_table', 12),
(103, '2020_10_18_132639_create_partner_translations_table', 12),
(104, '2020_10_18_140613_create_testmonials_table', 13),
(105, '2020_10_18_140636_create_testmonial_translations_table', 13),
(106, '2020_10_19_114135_create_cultures_table', 14),
(107, '2020_10_19_114450_create_culture_translations_table', 14),
(108, '2020_10_21_120315_create_departments_table', 15),
(109, '2020_10_21_120507_create_department_translations_table', 15),
(110, '2020_10_21_120524_create_jobs_table', 15),
(111, '2020_10_21_120539_create_job_translations_table', 15),
(112, '2020_10_21_120632_create_applicants_table', 15),
(115, '2020_10_22_104135_create_categories_table', 16),
(116, '2020_10_22_104337_create_category_translations_table', 16),
(120, '2020_10_22_123148_create_products_table', 17),
(121, '2020_10_22_123639_create_product_translations_table', 17),
(122, '2020_10_22_123656_create_product_images_table', 17),
(129, '2020_10_24_111000_create_cities_table', 18),
(130, '2020_10_24_111103_create_areas_table', 18),
(131, '2020_10_24_111126_create_delars_table', 18),
(132, '2020_10_24_111244_create_city_translations_table', 18),
(133, '2020_10_24_111319_create_area_translations_table', 18),
(134, '2020_10_24_111331_create_delar_translations_table', 18),
(135, '2020_10_24_143351_create_sectors_table', 19),
(136, '2020_10_24_143421_create_sector_translations_table', 19),
(137, '2020_10_25_130756_create_subscribers_table', 20),
(138, '2020_11_10_112012_create_awards_table', 21),
(139, '2020_11_10_140246_create_events_table', 22),
(140, '2020_11_10_150628_create_certifications_table', 23),
(142, '2020_11_10_153330_create_publications_table', 24),
(143, '2020_11_10_163356_create_theses_table', 25),
(144, '2020_11_11_103554_create_lectures_table', 26),
(145, '2020_11_11_113107_create_workshops_table', 27),
(147, '2020_11_11_135039_create_esteems_table', 28),
(148, '2020_11_12_140913_create_settings_table', 29),
(149, '2020_11_17_123840_create_center_awards_table', 30),
(150, '2020_11_17_124027_create_center_publications_table', 30),
(151, '2020_11_17_124040_create_center_workshops_table', 30),
(152, '2020_11_17_124051_create_center_videos_table', 30),
(153, '2020_11_17_124104_create_center_photo_albums_table', 30),
(154, '2020_11_18_114205_create_sliders_table', 31),
(155, '2020_11_18_114517_create_services_table', 31),
(156, '2020_11_19_111157_create_contact_messages_table', 32),
(157, '2020_11_19_111412_create_subscribers_table', 32);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`id`, `title`, `body`, `date`, `pdf`, `icon`, `image`, `type`, `created_at`, `updated_at`) VALUES
(2, 'Dolorum id commodo o', 'Aut et incidunt ex', '1998-03-10', '1605017996.pdf', 'KJUjSVV7sAzLXFDo6JJ4cIanaV3FkXhAfWoiOw2c.png', NULL, 'book', '2020-11-10 14:19:56', '2020-11-10 14:19:56'),
(4, 'Deserunt nihil simil', 'Omnis minima tempor', '1977-02-14', '1605344851.pdf', 'Z6Kr7qOmf8X23xGrczM7ybJYBg3KFVvHW8DNI6T1.jpeg', NULL, 'research', '2020-11-14 09:07:31', '2020-11-14 09:07:31'),
(5, 'Aut nemo laborum hic', 'Cupidatat numquam de', '1981-08-18', '1605344899.pdf', '8mRdE8fkKUpfONHFvTJMvTO1Ps6GP5EGftBshxV0.jpeg', NULL, 'article', '2020-11-14 09:08:19', '2020-11-14 09:08:41'),
(6, 'Similique hic ullamc', 'Corrupti cumque fug', '1985-05-11', '1605360702.pdf', 'ir98VvCKxVuQ1qN7A6hX0Sp9lsaf9VfW0vufoXYn.png', NULL, 'book', '2020-11-14 13:31:42', '2020-11-14 13:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'Super Admin', 'Super Admin', '2020-04-13 18:56:16', '2020-04-13 18:56:16'),
(2, 'admin', 'Admin', 'Admin', '2020-04-13 18:56:21', '2020-04-13 18:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(2, 7, 'App\\User'),
(2, 8, 'App\\User'),
(2, 9, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `body`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Culpa sint quia sed', 'Commodo adipisicing', 'YMBCGHl7sZNqzsSpvIFcOOblr7us8sMfz5v0tQ7G.jpeg', '2020-11-18 10:37:48', '2020-11-18 10:37:48'),
(2, 'Et laudantium velit', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'S2pTWuDuxawsfqIu3xGScypZ14ELjGMTChXte395.jpeg', '2020-11-18 11:52:34', '2020-11-18 11:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `field_name`, `key`, `value`, `image`, `type`, `class`, `created_at`, `updated_at`) VALUES
(3, '', 'center_of_excellence_title', 'Pelvic Floor Center Of Excellence 2', NULL, 'string', 'center_of_excellence', NULL, '2020-11-19 08:45:44'),
(4, '', 'center_of_excellence_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 'text', 'center_of_excellence', NULL, NULL),
(5, '', 'center_of_excellence_image', NULL, 'xyRDvhfhKnmVSLDZcKOsB0hhq0mCxHofSolBsoFZ.jpeg', 'image', 'center_of_excellence', NULL, '2020-11-19 08:48:06'),
(6, '', 'center_of_cairo_title', 'Pelvic Floor In Cairo University 2', NULL, 'string', 'center_of_cairo', NULL, '2020-11-19 08:58:29'),
(7, '', 'center_of_cairo_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 'text', 'center_of_cairo', NULL, NULL),
(8, '', 'center_of_cairo_image', '', 'Wd5etTgtgz1cJRi0w0eSIAASVkrM4oyWVbAGThpe.jpeg', 'image', 'center_of_cairo', NULL, '2020-11-19 08:53:30'),
(9, 'Facebook link', 'center_facebook_url', 'https://ar-ar.facebook.com/', NULL, 'string', 'center_social', NULL, '2020-11-19 10:29:02'),
(10, 'Linked In link', 'center_linkedin_url', 'https://fantasy.premierleague.com/', NULL, 'string', 'center_social', NULL, NULL),
(11, 'Twitter link', 'center_twitter_url', 'https://fantasy.premierleague.com/', NULL, 'string', 'center_social', NULL, NULL),
(12, 'Email', 'center_email', 'email@email.com', NULL, 'string', 'center_social', NULL, '2020-11-19 10:45:16'),
(13, 'Phone 1', 'center_phone_1', '010101010', NULL, 'string', 'center_social', NULL, NULL),
(14, 'Phone 2', 'center_phone_2', '0501123456', NULL, 'string', 'center_social', NULL, NULL),
(15, 'Facebook link', 'dr_facebook_url', 'https://ar-ar.facebook.com/', NULL, 'string', 'dr_social', NULL, '2020-11-19 10:43:06'),
(16, 'Linked In link', 'dr_linkedin_url', 'https://ar-ar.facebook.com/', NULL, 'string', 'dr_social', NULL, '2020-11-19 10:29:15'),
(17, 'Twitter link', 'dr_twitter_url', 'https://www.twitter.com/', NULL, 'string', 'dr_social', NULL, '2020-11-19 10:43:06'),
(18, 'Email', 'dr_email', 'test@test.com', NULL, 'string', 'dr_social', NULL, '2020-11-19 10:38:26'),
(19, 'Phone 1', 'dr_phone_1', '010101010', NULL, 'string', 'dr_social', NULL, NULL),
(20, 'Phone 2', 'dr_phone_2', '0501123456', NULL, 'string', 'dr_social', NULL, NULL),
(21, 'Map', 'center_map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3418.9582766687977!2d31.375416185002408!3d31.027412078421893!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f79dcbe88f6c25%3A0x859ee8ea1a8da4ae!2z2LTYsdmD2Kkg2KrZg9mG2Ygg2YXYtdixINmE2YTYqNix2YXYrNmK2KfYqiDZiNiq2LXZhdmK2YUg2KfZhNmF2YjYp9mC2Lk!5e0!3m2!1sar!2seg!4v1605781850164!5m2!1sar!2seg\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL, 'text', 'center_social', NULL, NULL),
(22, 'Name', 'dr_name', 'Rania Farouk El Sayed', NULL, 'string', 'basic_info', NULL, NULL),
(23, 'Bio', 'dr_bio', 'MD, PhD\r\nLecturer in the Radiology Department\r\nCairo University, Cairo, Egypt.', NULL, 'text', 'basic_info', NULL, '2020-11-19 12:40:23'),
(24, 'Text', 'dr_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 'text', 'basic_info', NULL, '2020-11-19 12:40:23'),
(25, 'Image', 'dr_image', '', 'sJIiYZDFylzIgdTpeijUpE3qRad11fP5A8PHZtvM.png', 'image', 'basic_info', NULL, '2020-11-19 12:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'slider image 1', 'qNCPTM7XZzeCw9LArRu79HghXQDXNuWV85hbuztf.jpeg', '2020-11-18 10:35:19', '2020-11-18 10:37:26'),
(2, 'title', 'gbqi8mDWzDc2AdRv722TM2jFjZStPSnL7Fn9fwmu.jpeg', '2020-11-18 11:44:05', '2020-11-18 11:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'test@test.com', '2020-11-19 10:06:02', '2020-11-19 10:06:02'),
(2, 'test@test.com', '2020-11-19 10:07:56', '2020-11-19 10:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `theses`
--

CREATE TABLE `theses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supervisors` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discussion_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theses`
--

INSERT INTO `theses` (`id`, `title`, `degree`, `student_name`, `supervisors`, `discussion_year`, `image`, `pdf`, `created_at`, `updated_at`) VALUES
(2, 'Quo pariatur Velit', 'Magnam labore accusa', 'Blaine Vazquez', 'Eiusmod occaecat vol', '1992', 'Oyys9VuART6IejceEUOBMdzwaVaUOVcMDUJGczl3.jpeg', '1605083406.pdf', '2020-11-11 08:30:06', '2020-11-11 08:30:06'),
(3, 'Excepturi voluptate', 'In corporis officia', 'Shellie William', 'Eveniet qui et est', '1987', '6UmKryI4Qcp7Hu79SXjgSiEJQTqlF0AOWHhsFs4g.png', '1605350503.pdf', '2020-11-14 10:41:43', '2020-11-14 10:41:43'),
(4, 'Autem ex lorem qui q', 'Non ea facilis magni', 'Yolanda Martinez', 'Odio dolores obcaeca', '1975', 'hoeTk6X3d3Fe7SZd1DEdfXj5ZmRorhBq61Qo6nqc.jpeg', '1605350567.pdf', '2020-11-14 10:42:47', '2020-11-14 10:42:47'),
(5, 'Sint ut sint non co', 'Excepteur optio mag', 'Riley Gay', 'Magna qui veniam ea', '1984', 'CLo10MMU63ch4x3Ujo6l7H0HpqztI89l1GtLvVOI.png', '1605350609.pdf', '2020-11-14 10:43:29', '2020-11-14 10:43:29'),
(6, 'Et ea qui ut exercit', 'Modi ex reprehenderi', 'Quinlan Wilkinson', 'Ut possimus nulla c', '1982', 'GX4WYavav8yPeZ5RlgD3njfCsDBGOXihqHGanbT5.jpeg', '1605350641.pdf', '2020-11-14 10:44:01', '2020-11-14 10:44:01'),
(7, 'In ut tempore earum', 'Sint unde esse duis', 'Branden Riddle', 'In ea laudantium ut', '1971', 'dHxtrVcMcn5FZRE2xlECPhXBzP7FN3VEWQIUEuoP.jpeg', '1605350669.pdf', '2020-11-14 10:44:29', '2020-11-14 10:44:29'),
(8, 'Voluptatem in volupt', 'Facere tenetur vitae', 'Bevis Greene', 'Sed tenetur dolor su', '1995', '8ykwxFBU9YEuexKVwxvMDYTIbUMjhzh9dMcrgE4i.jpeg', '1605350694.pdf', '2020-11-14 10:44:54', '2020-11-14 10:44:54'),
(9, 'Do magnam occaecat m', 'Est in deserunt sae', 'Aurelia Kirk', 'Voluptatibus volupta', '1988', 'nFrBr31bDEqxyBnICXpXXg0Jr5Has5BiTsOWN9Nf.png', '1605350737.pdf', '2020-11-14 10:45:37', '2020-11-14 10:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `image`, `email_verified_at`, `password`, `api_token`, `fcm_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Backend', 'Dev', 'test@test.com', 'By3aVg45STBdNWXaZvumWAYovN1JLAsziqqL7ABd.jpeg', NULL, '$2y$10$zHxBlli8LvQmJKnmmNntXu0NWIVvxvk5hWfmwAlNU1KsjmhHJAJGy', NULL, NULL, 'Bw1P6sbaFtZt0TDjRVgnKM5jdWYmdK3NVXciGbMwA5b351jYxGV7nQR2hcny', '2020-06-16 21:49:58', '2020-10-26 14:16:12'),
(8, 'test', 'tets', 'test2@test.com', 'default.png', NULL, '$2y$10$pcQ2j7gwpcatrW1FHRUh6OnyXHGv9T83dOwyLppZBm/XM0bzwXGvO', NULL, NULL, NULL, '2020-10-17 11:26:56', '2020-10-17 11:26:56'),
(9, 'test', 'tets', 'test3@test.com', 'default.png', NULL, '$2y$10$FAlI4GNV9L2FKKsCwLhXoO0/oTG8mYQMj8C96K1tzFrmF3HPZFnKC', NULL, NULL, NULL, '2020-10-17 14:29:07', '2020-10-17 14:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workshops`
--

INSERT INTO `workshops` (`id`, `title`, `body`, `country`, `year`, `image`, `created_at`, `updated_at`) VALUES
(2, 'title', 'body', 'Egypt', '2020', 'R39mHeGtl21aJSdBEhKntHY05NifmwkASW56YtMG.png', '2020-11-11 10:00:31', '2020-11-11 10:00:52'),
(3, 'Nulla eos et volupt', 'Nihil sit provident', 'Sed in aut odit eum', '2000', 'W8uaAPCZsYmyEs9Dzs0nt3cdUd6DiJIDm0XDvTjs.jpeg', '2020-11-14 08:55:08', '2020-11-14 08:55:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `center_awards`
--
ALTER TABLE `center_awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `center_photo_albums`
--
ALTER TABLE `center_photo_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `center_publications`
--
ALTER TABLE `center_publications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `center_videos`
--
ALTER TABLE `center_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `center_workshops`
--
ALTER TABLE `center_workshops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `esteems`
--
ALTER TABLE `esteems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theses`
--
ALTER TABLE `theses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `center_awards`
--
ALTER TABLE `center_awards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `center_photo_albums`
--
ALTER TABLE `center_photo_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `center_publications`
--
ALTER TABLE `center_publications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `center_videos`
--
ALTER TABLE `center_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `center_workshops`
--
ALTER TABLE `center_workshops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `esteems`
--
ALTER TABLE `esteems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `theses`
--
ALTER TABLE `theses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
