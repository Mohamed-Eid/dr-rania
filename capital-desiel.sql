-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2020 at 10:35 AM
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
-- Database: `capital-desiel`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_job_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualifications` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `years_of_experience` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `job_id`, `fullname`, `email`, `current_job_title`, `current_job_location`, `qualifications`, `years_of_experience`, `cv`, `created_at`, `updated_at`) VALUES
(1, 1, 'Soly', 'ss@ss.com', 'fornt end', 'Tecno Masr', '1', '1', '1603290157.pdf', '2020-10-21 14:22:37', '2020-10-21 14:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2020-10-24 10:05:55', '2020-10-24 10:05:55'),
(3, 1, '2020-10-24 10:07:28', '2020-10-24 10:07:28'),
(4, 1, '2020-10-24 10:07:39', '2020-10-24 10:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `area_translations`
--

CREATE TABLE `area_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `area_translations`
--

INSERT INTO `area_translations` (`id`, `area_id`, `name`, `locale`) VALUES
(1, 1, 'العباسية', 'ar'),
(2, 1, 'El Abasya', 'en'),
(5, 3, 'المنصورة', 'ar'),
(6, 3, 'El Mansoura', 'en'),
(7, 4, 'طلخا', 'ar'),
(8, 4, 'Talkha', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Qokap1Q4gs3Bv7wzK3qBWguroTnRBQniK2NSVqIl.jpeg', '2020-10-22 09:04:40', '2020-10-22 09:04:40'),
(2, NULL, '36xirxPgEG6I5Qgcqy59HEstY2RN8n07TzIHrFEW.jpeg', '2020-10-22 09:05:30', '2020-10-22 09:05:30'),
(3, NULL, '2tRFNY5OVoBXaMML04yaQeZEPyieJFn3y1MnFcMO.jpeg', '2020-10-22 09:05:51', '2020-10-22 09:05:51'),
(4, 1, NULL, '2020-10-22 09:24:40', '2020-10-22 09:24:40'),
(5, 3, NULL, '2020-10-22 09:32:09', '2020-10-22 09:32:09'),
(6, 3, NULL, '2020-10-22 09:51:58', '2020-10-22 09:51:58'),
(7, 3, NULL, '2020-10-22 09:56:52', '2020-10-22 09:56:52'),
(8, 3, NULL, '2020-10-22 09:57:03', '2020-10-22 09:57:03'),
(9, 1, NULL, '2020-10-22 09:57:26', '2020-10-22 09:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `description`, `locale`, `created_at`, `updated_at`) VALUES
(1, 1, 'تست', NULL, 'ar', NULL, NULL),
(2, 1, 'test', NULL, 'en', NULL, NULL),
(3, 2, 'قسم 2', NULL, 'ar', NULL, NULL),
(4, 2, 'Category 2', NULL, 'en', NULL, NULL),
(5, 3, 'كاتيجوري 3', NULL, 'ar', NULL, NULL),
(6, 3, 'Category 3', NULL, 'en', NULL, NULL),
(7, 4, 'تست 1', 'وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف', 'ar', NULL, NULL),
(8, 4, 'test 1', 'desc desc desc desc desc desc desc desc desc desc desc desc desc desc', 'en', NULL, NULL),
(9, 5, 'قسم فرعي', 'وصف قسم فرعي وصف قسم فرعي وصف قسم فرعي وصف قسم فرعي وصف قسم فرعي وصف قسم فرعي', 'ar', NULL, NULL),
(10, 5, 'SubCategory', 'SubCategory Desc SubCategory Desc SubCategory Desc SubCategory Desc SubCategory Desc SubCategory Desc', 'en', NULL, NULL),
(11, 6, 'قسم فرعي 2', 'قسم فرعي وصف 2 قسم فرعي وصف 2 قسم فرعي وصف 2 قسم فرعي وصف 2 قسم فرعي وصف 2 قسم فرعي وصف 2', 'ar', NULL, NULL),
(12, 6, 'Sub Category 2', 'Sub Category 2 desc Sub Category 2 desc Sub Category 2 desc Sub Category 2 desc Sub Category 2 desc Sub Category 2 desc Sub Category 2 desc Sub Category 2 desc Sub Category 2 desc Sub Category 2 desc Sub Category 2 desc Sub Category 2 desc Sub Category 2 desc Sub Category 2 desc Sub Category 2 desc', 'en', NULL, NULL),
(13, 7, 'Category 4', 'Category 4Category 4Category 4Category 4', 'ar', NULL, NULL),
(14, 7, 'Category 4', 'Category 4Category 4Category 4Category 4Category 4Category 4Category 4Category 4Category 4Category 4Category 4Category 4Category 4Category 4', 'en', NULL, NULL),
(15, 8, 'Category 5', 'Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5', 'ar', NULL, NULL),
(16, 8, 'Category 5', 'Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5', 'en', NULL, NULL),
(17, 9, 'Category 6', 'Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6', 'ar', NULL, NULL),
(18, 9, 'Category 6', 'Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6Category 6', 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`) VALUES
(1, '2020-10-24 09:49:06', '2020-10-24 09:49:06'),
(2, '2020-10-24 09:50:31', '2020-10-24 09:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

CREATE TABLE `city_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city_translations`
--

INSERT INTO `city_translations` (`id`, `city_id`, `name`, `locale`, `created_at`, `updated_at`) VALUES
(1, 1, 'الدقهليه', 'ar', NULL, NULL),
(2, 1, 'Ad Daqhlia', 'en', NULL, NULL),
(3, 2, 'القاهره', 'ar', NULL, NULL),
(4, 2, 'Cairo', 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `phone`, `subject`, `email`, `message`, `created_at`, `updated_at`) VALUES
(2, 'تستستست', '01015960452', NULL, 'medoeid50@gmail.com', 'تست تست تست تست ستتس تست تست تست', '2020-10-17 08:31:13', '2020-10-17 08:31:13'),
(3, 'تستستست', '1234124124', NULL, 'test@test.com', 'ewtgweryweryweyr', '2020-10-17 08:49:54', '2020-10-17 08:49:54'),
(4, 'تستستست', '1234124124', NULL, 'test@test.com', 'تستستستستستستت', '2020-10-17 10:58:40', '2020-10-17 10:58:40'),
(5, 'تستستست', '1234124124', NULL, 'test@test.com', 'QDAsf', '2020-10-17 11:00:09', '2020-10-17 11:00:09'),
(6, 'تستستست', '1234124124', NULL, 'medoeid50@gmail.com', 'szdgasdgasdg', '2020-10-17 11:00:26', '2020-10-17 11:00:26'),
(7, 'تستستست', '1234124124', NULL, 'test@test.com', 'qertyweryw', '2020-10-17 11:00:55', '2020-10-17 11:00:55'),
(8, 'تستستست', '1234124124', NULL, 'test@test.com', 'zdfgafdgarfd', '2020-10-17 11:01:24', '2020-10-17 11:01:24'),
(9, 'تستستست', '01015960452', NULL, 'medoeid50@gmail.com', 'zsdfgasdgsadfg', '2020-10-17 11:01:38', '2020-10-17 11:01:38'),
(10, 'كابتل ديزيل', NULL, 'aaaa', 'test@test.com', 'ADXasfdasdf', '2020-10-25 11:06:29', '2020-10-25 11:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `cultures`
--

CREATE TABLE `cultures` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cultures`
--

INSERT INTO `cultures` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Y5MJ2xwouhc27ZPI9sDHoXtwNxAIwRW1ZEnfBngD.jpeg', '2020-10-19 10:01:34', '2020-10-19 10:02:15'),
(2, 'Fdtg4jYD1N1oDBTOVXAjQd4eL9LJ3JBKr6SocIi5.jpeg', '2020-10-19 10:06:24', '2020-10-19 10:06:24'),
(3, 'pCqNvH4ULCoFr8uoDVXTOPR9NSHBCysJqNipwaeI.jpeg', '2020-10-19 10:06:55', '2020-10-19 10:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `culture_translations`
--

CREATE TABLE `culture_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `culture_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `culture_translations`
--

INSERT INTO `culture_translations` (`id`, `culture_id`, `name`, `job`, `body`, `locale`, `created_at`, `updated_at`) VALUES
(1, 1, 'سولي11', 'فرونت اند11', '<p>11بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;بايو&nbsp;</p>', 'ar', NULL, NULL),
(2, 1, 'Sloy11', 'front end11', '<p>11Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bi1o&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;Bio&nbsp;</p>', 'en', NULL, NULL),
(3, 2, 'سولي 2', 'فرونت اند 2', '<p>فرونت اند 2فرونت اند 2فرونت اند 2فرونت اند 2فرونت اند 2فرونت اند 2</p>', 'ar', NULL, NULL),
(4, 2, 'soly 2', 'front end 2', '<p>front end 2front end 2front end 2front end 2front end 2front end 2</p>', 'en', NULL, NULL),
(5, 3, 'تست 3', 'فورنت اند ديفولوبر', '<p>شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;شسبشسب&nbsp;</p>', 'ar', NULL, NULL),
(6, 3, 'test 3', 'Front end eveloper', '<p>test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;</p>', 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delars`
--

CREATE TABLE `delars` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delars`
--

INSERT INTO `delars` (`id`, `contact_info`, `map`, `city_id`, `area_id`, `created_at`, `updated_at`) VALUES
(3, '0100000, 010000000000 , 01 000000000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3418.9582766687977!2d31.375416185002408!3d31.027412078421893!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f79dcbe88f6c25%3A0x859ee8ea1a8da4ae!2z2LTYsdmD2Kkg2KrZg9mG2Ygg2YXYtdixINmE2YTYqNix2YXYrNmK2KfYqiDZiNiq2LXZhdmK2YUg2KfZhNmF2YjYp9mC2Lk!5e0!3m2!1sar!2seg!4v1603538104919!5m2!1sar!2seg\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 1, 4, '2020-10-26 12:13:54', '2020-10-26 12:13:54'),
(4, 'asfasf', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3418.9582766687977!2d31.375416185002408!3d31.027412078421893!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f79dcbe88f6c25%3A0x859ee8ea1a8da4ae!2z2LTYsdmD2Kkg2KrZg9mG2Ygg2YXYtdixINmE2YTYqNix2YXYrNmK2KfYqiDZiNiq2LXZhdmK2YUg2KfZhNmF2YjYp9mC2Lk!5e0!3m2!1sar!2seg!4v1603714493104!5m2!1sar!2seg\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 2, 1, '2020-10-26 12:15:07', '2020-10-26 12:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `delar_translations`
--

CREATE TABLE `delar_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `delar_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delar_translations`
--

INSERT INTO `delar_translations` (`id`, `delar_id`, `name`, `address`, `locale`) VALUES
(3, 3, 'تست 4', 'عنوان', 'ar'),
(4, 3, 'test 4', 'عنوان بالانجليزي', 'en'),
(5, 4, 'ديلر', 'asfasfas', 'ar'),
(6, 4, 'Delar', 'asfasf', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'DKdEPVOj0tUWxDAdtRcVhpAQYWYWSqIDG6deK4di.jpeg', '2020-10-21 11:50:40', '2020-10-21 11:50:40'),
(2, 'vG1LuLPt3DRN7WU9KRm9QMBThKtjVj0PCl2mflXQ.jpeg', '2020-10-21 11:51:29', '2020-10-21 11:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `department_translations`
--

CREATE TABLE `department_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_translations`
--

INSERT INTO `department_translations` (`id`, `department_id`, `name`, `locale`) VALUES
(1, 1, 'قسم الموارد البشريه', 'ar'),
(2, 1, 'HR1', 'en'),
(3, 2, 'قسم تكنولوجيا المعلومات', 'ar'),
(4, 2, 'IT', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surgery_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `surgery_id`, `created_at`, `updated_at`) VALUES
(11, 'OBAtZYJZ2RqWtTFF7GMJjxZ7WVWP0k2VoifD8A1B.jpeg', 1, '2020-10-12 09:02:14', '2020-10-12 09:02:14'),
(12, 'faDFfBwpZI0lecAAml709j4HMr2eqjytkOU7aaJP.png', 1, '2020-10-12 09:02:14', '2020-10-12 09:02:14'),
(13, 'FkcjlmG1rRlvqk1hR4fhUP7vw7RS0VmNjzmOnZ4O.jpeg', 1, '2020-10-12 12:15:07', '2020-10-12 12:15:07'),
(14, '9pbQNjFK7maU2nEf9B6edqlNM5ErBRfYQF9Xebhv.png', 1, '2020-10-12 12:15:07', '2020-10-12 12:15:07'),
(15, 'naN2Aq4F1ZVwMwzuF6D2bz3E4Gi0hwF5dVxjcDvF.jpeg', 1, '2020-10-12 12:15:07', '2020-10-12 12:15:07'),
(16, 'Whjz3Ln6KZBTx6mkGuFa2D9D8UuZ4onhtD7LZOWZ.jpeg', 3, '2020-10-12 12:15:28', '2020-10-12 12:15:28'),
(19, '8apimSYpD5LqqaWs46NSFqWWzpgY7CSM9AYKULju.png', 1, '2020-10-12 12:15:40', '2020-10-12 12:15:40'),
(21, 'VXdyomzXoxwmdWuuhSRzsjxVpCqjoEMiT2vTFYpM.jpeg', 1, '2020-10-12 12:15:41', '2020-10-12 12:15:41'),
(22, 'Jgery6YbQ9zexoWvVkphIwdgXUqzxKZX5P1qUrmg.jpeg', 1, '2020-10-12 14:15:58', '2020-10-12 14:15:58'),
(23, 'LHtXbgahF1iv2yZyMamJPgNRppi90LRsrsBDfRse.jpeg', 1, '2020-10-12 14:15:59', '2020-10-12 14:15:59'),
(24, 'lNMg49zJaEt2zZ5AJCCObNWREIYmlvcCbizK2jnA.jpeg', 1, '2020-10-12 14:15:59', '2020-10-12 14:15:59'),
(25, 'kjrPhxwanQl24YUr34JmXdBjcsP49mNcLY1CLfL2.jpeg', 1, '2020-10-12 14:15:59', '2020-10-12 14:15:59'),
(26, 'Bf4IssLQjMla6p3ZQqiT8fdMmtrzHbjICVjLjMAl.png', 1, '2020-10-13 23:14:59', '2020-10-13 23:14:59'),
(27, '1aGqIQLc656c9VdZEp1UeBYnqbvGWHU21xSx0HDD.png', 1, '2020-10-13 23:15:29', '2020-10-13 23:15:29'),
(28, '0i7bL5pbP5PLb0huU5sndWMmfaHr1MVhw6Q1jWTX.png', 1, '2020-10-13 23:15:30', '2020-10-13 23:15:30'),
(29, 'vnjb7HzcEH3hk1jV5fkWG3Pky91wMp5UrvFoqXQQ.jpeg', 1, '2020-10-13 23:15:30', '2020-10-13 23:15:30'),
(30, 'XA9Nkqb4ZZlMa61hUz4AeVSjamTKu1e2GEb8xCA4.png', 1, '2020-10-13 23:15:31', '2020-10-13 23:15:31'),
(31, 'sujxyiSLu435K8FvW9xACBGW8Scs3a6gKqg8aEx5.jpeg', 1, '2020-10-16 16:40:38', '2020-10-16 16:40:38'),
(32, 'rdUaNCvW2Z4NNpyZ1BiN8fIVduK8lR77CEaoRukW.jpeg', 1, '2020-10-16 16:40:44', '2020-10-16 16:40:44'),
(33, '1TJ99jqQQGaiiQMXIjG7bxzG00EohXAnyE1jqR5h.jpeg', 1, '2020-10-16 16:40:44', '2020-10-16 16:40:44'),
(34, 'SyoN4a26B5U7f99EdqEYue5hZu8sIYkg8BC2y93V.jpeg', 1, '2020-10-16 16:40:44', '2020-10-16 16:40:44'),
(35, 'y8RycwGe8PwAgWw2nPlkmcudEb5Y6gXhF0R6CJJi.jpeg', 1, '2020-10-16 16:40:45', '2020-10-16 16:40:45'),
(36, 'W4yEW3SaiUjATQhaXgf7qC2oKf5r0P1w5XvtrNTq.png', 1, '2020-10-16 16:40:45', '2020-10-16 16:40:45'),
(37, 'xkRT7ujrPYIGjWj0XLQoUNB5TbOIQ4R8qShDbn0l.jpeg', 1, '2020-10-16 16:40:45', '2020-10-16 16:40:45'),
(38, 'GNvKhAURBEFAGA8mPMITlAPH0341KDkboxMBWTdK.jpeg', 1, '2020-10-16 16:40:46', '2020-10-16 16:40:46'),
(41, '5tM67mUOw33vIUOhXqGGkdjzzYRADrA42tDtOJny.jpeg', 9, '2020-10-16 18:53:22', '2020-10-16 18:53:22'),
(42, 'Co1B0cLc6viCbMTXL30bitF2RzZ25mg2q3cIktjl.png', 9, '2020-10-16 18:53:22', '2020-10-16 18:53:22'),
(43, 'uLHDuxgs6gXQ7kYq7cGsDPlRiR1HzkMtbUu8JAFR.jpeg', 9, '2020-10-16 18:53:23', '2020-10-16 18:53:23'),
(44, 'MfCjdTh5a64Myidlhbwm7ADXm3HFNlZWgHMbJyKl.jpeg', 9, '2020-10-16 18:53:23', '2020-10-16 18:53:23'),
(45, '40bvaRdlEEb8Wani7OMS58Kr7jrbrmJse9gjnZ1x.jpeg', 9, '2020-10-16 18:53:24', '2020-10-16 18:53:24'),
(46, 'DxjzqEKQ2r0Irfuvz9RgmfhSqnoselz8XHPRruDS.jpeg', 9, '2020-10-16 18:53:24', '2020-10-16 18:53:24'),
(47, 'RXfkppasq3KeQh4AjE9hZgeNxq7jixMvPRGJo1nX.jpeg', 9, '2020-10-16 18:53:25', '2020-10-16 18:53:25'),
(48, '7XOoi8yhoIK2pQxSTtwmOY4fXrqgaHDXkVKM786b.png', 9, '2020-10-16 18:53:26', '2020-10-16 18:53:26'),
(49, 's4A9Y79CafAmoJ8nzubKaGC0lbcJnEnFbQE6tymh.jpeg', 9, '2020-10-16 18:53:26', '2020-10-16 18:53:26'),
(50, 'P07Bsi5qwpwmuseFYciPfk0pEu8ooFrnETSvFMFS.jpeg', 9, '2020-10-16 18:53:26', '2020-10-16 18:53:26'),
(51, 'HK10wTOww1kYkbC4DpVEqk1lS6qhuelZuh53kPeh.jpeg', 9, '2020-10-16 18:53:27', '2020-10-16 18:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `deadline` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `department_id`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 2, '2020-10-11', '2020-10-21 12:43:57', '2020-10-21 13:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `job_translations`
--

CREATE TABLE `job_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsabilities` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualifications` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `benefits` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reporting_line` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_translations`
--

INSERT INTO `job_translations` (`id`, `job_id`, `name`, `responsabilities`, `qualifications`, `salary`, `benefits`, `reporting_line`, `contract_type`, `locale`) VALUES
(1, 1, 'فرونت اند ديفولوبر', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', '5100 EGP per month', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 'Lorem Ipsum is simply dummy', 'Lorem Ipsum is simply dummy', 'ar'),
(2, 1, 'Frontnd Developer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', '5100 EGP per month', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 'Lorem Ipsum is simply dummy', 'Lorem Ipsum is simply dummy', 'en');

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
(137, '2020_10_25_130756_create_subscribers_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'DQx9ZevQw3dyxZRLYYD0dD95r6bche1INuwAHVOs.png', '2020-10-14 07:54:02', '2020-10-14 10:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `page_images`
--

CREATE TABLE `page_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_images`
--

INSERT INTO `page_images` (`id`, `image`, `page_id`, `created_at`, `updated_at`) VALUES
(12, 'ovJIWE8FnPZZsATrY8sO5pMjJvqfgrODfiQWmXic.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(13, 'OEdzPgVduqEI814MWWi9Ehs6jvrOGfQfpOmz81Oj.png', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(14, 'ILi6x4CGZC63UZpJ8FRTQdGp5tODD7nCrHVxvZwF.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(15, 'bDt02aa5UjgItKl47kNTuJElHidr2egVkdsNPEgf.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(16, 'xRMUrXqfSCct00MmIqJKUNBJ6agT98JqELga5m1z.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(17, '5u8oTBjLJ4HH52lkOzt1mtt0vw3KvUJCNYe1JaAB.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(18, 'qECZRXXO525DLEfXyRjKaaNOj2y2v1suq3XUq4Cp.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(19, 'k3FKsvC6UrbvwbWapOyFiWdeiAfe6LeFuAkaZldN.png', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(20, 'jKKLlqiETxiaZTjCPuB02eHvG63g0lwDi5WciGfT.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(21, '6MPtqxohi5gryNMMslAeP5LKOi6CmO22rJCSCEaY.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(22, 'ycBbpTosAEPf56bKtIRG8LuNGR2d7kJ4Crqr0bOi.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(23, 'k40gNRYRooZeIEHwIxlk0GRsuCKCZzELsQ4NzQQN.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(24, 'IiysByEWMrgX9OZmP6zgpFPQHiAmGkIbl4gpGPnR.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(25, 'Ywl5dlH37qwo8wjGaGv3ZVm1ahXmAtfdlD3kVgpu.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(26, 'djaeNS7lp3jm2VctZ28A7UEoowHqd3HdY9Ec2mLg.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(27, 'SK3NQpLACz1hHjQ3sVr27OQgkLFLhH4jESmnF9Pd.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(28, '1G34cJaia2GUIE4k0zL53QPlzVCtcT0fJQC7LP22.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `name`, `body`, `locale`) VALUES
(1, 1, 'من نحن', '<p>&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;</p>', 'ar'),
(2, 1, 'About Us', '<p>&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;</p>', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Z3EZMTMsLcuwDt3mgSoRQMSGvXVeTeK5V1ofZ6bm.png', '2020-10-18 14:05:52', '2020-10-18 14:05:52'),
(4, 'jWnBjp6X03TwgIz1Tggp6JpbXofmCAbIIpw4ENVj.png', '2020-10-18 14:06:03', '2020-10-18 14:06:03'),
(6, 'foI8miwsLkzDPAH5Ye4UJF5cL75iw3nVXe1Wkdjv.png', '2020-10-18 14:07:28', '2020-10-18 14:07:28'),
(7, 'mH2G6W2Xh3bDAst0Mt1Xg80eq2kEm3V11j1xgDU2.png', '2020-10-18 14:07:36', '2020-10-18 14:07:36'),
(8, 'Sqd0j5FnvK4JupZwTxqjoqBf89sW7qtWmOcZ7ISu.png', '2020-10-18 14:07:44', '2020-10-18 14:07:44'),
(9, 'G98a83drqgozU9RsdQNO4gLswIiGn0JApjBtE0uU.png', '2020-10-18 14:08:03', '2020-10-18 14:08:03'),
(10, '3pXDFKQa2ClcQbT5BzdKrbrRyDipebk4ohJSLkDd.png', '2020-10-18 14:08:12', '2020-10-18 14:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `partner_translations`
--

CREATE TABLE `partner_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `partner_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_translations`
--

INSERT INTO `partner_translations` (`id`, `partner_id`, `name`, `locale`, `created_at`, `updated_at`) VALUES
(5, 3, 'تست 3', 'ar', NULL, NULL),
(6, 3, 'test 3', 'en', NULL, NULL),
(7, 4, 'تست 3a', 'ar', NULL, NULL),
(8, 4, 'test 32a', 'en', NULL, NULL),
(11, 6, 'dsfgsd', 'ar', NULL, NULL),
(12, 6, 'dsfghsdf', 'en', NULL, NULL),
(13, 7, 'sdfgsd', 'ar', NULL, NULL),
(14, 7, 'asdgasdg', 'en', NULL, NULL),
(15, 8, 'asdgasdgfa', 'ar', NULL, NULL),
(16, 8, 'adgasdgads', 'en', NULL, NULL),
(17, 9, 'asdgasdgasgd', 'ar', NULL, NULL),
(18, 9, 'sgadsgasdg', 'en', NULL, NULL),
(19, 10, 'asdgasedgasdgasdg', 'ar', NULL, NULL),
(20, 10, 'asdgasdgasdgasdgas', 'en', NULL, NULL);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `image`, `created_at`, `updated_at`) VALUES
(2, 'RTT51lTFqFXvAbUW9pu4YiiktrhAOvbVkW9CPikr.jpeg', '2020-10-12 13:41:28', '2020-10-12 13:41:28'),
(3, 'R8fv0eqr5wvPO6SsBy0Q4w6AtBgGWZ01NmWIcy6J.jpeg', '2020-10-15 09:44:08', '2020-10-15 09:44:08'),
(4, 'vLBfqEbHDZ18W0XeGjwlU6ktj3XJRUNB8vBJaMiG.jpeg', '2020-10-15 09:44:53', '2020-10-15 09:44:53'),
(5, 'f6lkVVIDx4oFvaUc2KnyT4A5F5sSOIeOzUZCb4UB.jpeg', '2020-10-15 09:45:11', '2020-10-15 09:45:11'),
(6, 'P3d7WjYoiWpVu6Z9ftEh4j6OfGyTyiQToQNiEbOM.jpeg', '2020-10-15 13:25:03', '2020-10-15 13:25:03'),
(7, 'X0oq8tEalONRkX98Cbqkk1JbWcEcyhLeIxEdA5lU.jpeg', '2020-10-15 13:39:16', '2020-10-15 13:39:16'),
(8, 'rIT5SBR7ix2guky39TfIubICybHDyKAFhuVygYfU.jpeg', '2020-10-18 14:12:24', '2020-10-18 14:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `post_translations`
--

CREATE TABLE `post_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_translations`
--

INSERT INTO `post_translations` (`id`, `post_id`, `name`, `body`, `locale`) VALUES
(3, 2, 'تست 34', '<p>sdgsdg</p>', 'ar'),
(4, 2, 'test 34', '<p>sdfgdfg</p>', 'en'),
(5, 3, 'تست 312312312', '<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>', 'ar'),
(6, 3, 'test 312312312', '<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>', 'en');
INSERT INTO `post_translations` (`id`, `post_id`, `name`, `body`, `locale`) VALUES
(7, 4, 'من نحنasdf', '<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>', 'ar');
INSERT INTO `post_translations` (`id`, `post_id`, `name`, `body`, `locale`) VALUES
(8, 4, 'test 3asdf', '<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>', 'en');
INSERT INTO `post_translations` (`id`, `post_id`, `name`, `body`, `locale`) VALUES
(9, 5, 'asfasf', '<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>', 'ar');
INSERT INTO `post_translations` (`id`, `post_id`, `name`, `body`, `locale`) VALUES
(10, 5, 'asfasfasfasfasfa', '<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>', 'en'),
(11, 6, 'عنوان تدوينه', '<h1><strong>بوست&nbsp;بوست&nbsp;بوست</strong>&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;</h1>\r\n\r\n<p>بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;</p>', 'ar'),
(12, 6, 'post title', '<h1>post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;</h1>\r\n\r\n<p>post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;</p>', 'en'),
(13, 7, 'تست 3AD', '<h1>تستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتست</h1>', 'ar'),
(14, 7, 'test 3ASDASD', '<h1>تستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتست</h1>', 'en'),
(15, 8, 'الخريطهasdfasf', '<p>asdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsafasdfsadfsaf</p>', 'ar'),
(16, 8, 'sadfsadfasdf', '<p>sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;sfaf asf as&nbsp;</p>', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(1, '680', 5, '2020-10-22 12:58:21', '2020-10-22 12:58:21'),
(2, '11111', 4, '2020-10-22 13:27:03', '2020-10-22 13:27:03'),
(3, '1111111', 5, '2020-10-26 10:46:17', '2020-10-26 11:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '8zN5CkzLrAvGGIhj5SqplpnUOXHXWBfD7f8Gc69A.jpeg', 1, '2020-10-22 12:58:22', '2020-10-22 12:58:22'),
(2, 'tAzpRXGoCUQvxFs0LHntC54xzqrt4f3ZVMQcE8Z9.jpeg', 1, '2020-10-22 12:58:22', '2020-10-22 12:58:22'),
(3, '4Ss6WGGbEzlaGqxEtkyylfzUSHsAAYmoH0xjYxF9.jpeg', 1, '2020-10-22 12:58:22', '2020-10-22 12:58:22'),
(4, 'Z9N6oC6ZTGVzlEvUwCT5nT635Rcq2IPCuBaRVg3E.png', 2, '2020-10-22 13:27:03', '2020-10-22 13:27:03'),
(5, 'H4QvwS8pySjQ6HiGkF4xn0S1mWoWeFxqF1T0GXys.jpeg', 2, '2020-10-22 13:27:03', '2020-10-22 13:27:03'),
(6, 'XEbc2LxH211oq9hZUw4FZ557nL57HkfNlEGH4U9n.jpeg', 2, '2020-10-22 13:27:04', '2020-10-22 13:27:04'),
(7, '5blzu73lCKWX7J6QsNKUaBzRoBA0TJGBSUsBnnap.png', 2, '2020-10-22 13:27:04', '2020-10-22 13:27:04'),
(8, 'fK3ZkoCovdKqNzXiQUOXK6WTgYQ8JUih4wMFBUhD.jpeg', 2, '2020-10-22 13:27:04', '2020-10-22 13:27:04'),
(9, 'W7dvObhK0FH1S5Vdbd4F0nSJ9dnefcOiJmc8bcB0.jpeg', 2, '2020-10-22 13:27:04', '2020-10-22 13:27:04'),
(10, 'siFOlNm2dgNxx6MJpvyuXxorpB8gQyJLJGNfxw7J.jpeg', 2, '2020-10-22 13:27:04', '2020-10-22 13:27:04'),
(11, 'HDWbf3DXzQ0W7iXs8Y0RV4k6thVIvJzoK390pQLb.jpeg', 3, '2020-10-26 10:46:19', '2020-10-26 10:46:19'),
(12, 'cZRRc5kOYlcKa9Z5DPYhsliPa1azV5MJuSPM8gV6.jpeg', 3, '2020-10-26 10:46:19', '2020-10-26 10:46:19'),
(13, 'kXU71MhFU31BNYs60WTaG0RXGTJfZN9XYA0ZO2nR.jpeg', 3, '2020-10-26 10:46:19', '2020-10-26 10:46:19'),
(16, '09SytyosJWdRnreWg97HsEdrBuC7s8Y8dxW4ZWSq.jpeg', 3, '2020-10-26 11:08:03', '2020-10-26 11:08:03'),
(17, 'UFbLQjQUac4MTSqDvyCxrYqly8t0hnzbQdElGIwz.jpeg', 3, '2020-10-26 11:08:03', '2020-10-26 11:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `name`, `description`, `locale`, `created_at`, `updated_at`) VALUES
(1, 1, 'Christen Mcclain', 'Est at voluptates id', 'ar', NULL, NULL),
(2, 1, 'Karly Hammond', 'Libero reprehenderit', 'en', NULL, NULL),
(3, 2, 'منتج 2', 'منتج 2منتج 2منتج 2منتج 2منتج 2', 'ar', NULL, NULL),
(4, 2, 'product 2', 'product 2product 2product 2product 2product 2', 'en', NULL, NULL),
(5, 3, 'منتج جديد', 'وصف منتج جديد وصف منتج جديد وصف منتج جديد وصف منتج جديد', 'ar', NULL, NULL),
(6, 3, 'New Product', 'asfdafasfaSF', 'en', NULL, NULL);

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
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Fgk356LMUNmq2KlTtKiWqSESS2dvJX7B1tnwRAWC.jpeg', '2020-10-24 12:51:22', '2020-10-24 12:51:22'),
(2, '98fIhD33qgdof8MaBcfJrQnA1q07RfBLfWJFZK6s.jpeg', '2020-10-25 10:38:35', '2020-10-25 10:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `sector_translations`
--

CREATE TABLE `sector_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `sector_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sector_translations`
--

INSERT INTO `sector_translations` (`id`, `sector_id`, `name`, `description`, `locale`) VALUES
(1, 1, 'سيكتور 1', 'وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف', 'ar'),
(2, 1, 'Sector 1', 'description description description description description description', 'en'),
(3, 2, 'سيكتور 2', 'وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف', 'ar'),
(4, 2, 'sector 2', 'desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `one_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `one_value`, `type`, `class`, `image`, `created_at`, `updated_at`) VALUES
(41, 'slider_image_1', NULL, 'image', 'slider', 'utjMDdmA9JpiAkXVCFnZNZshIq1q9WvSrHabCXrC.jpeg', '2020-10-25 12:23:24', '2020-10-25 12:23:24'),
(42, 'slider_image_2', NULL, 'image', 'slider', 'bPcXQ7SMJUF7HTYyqpfapq0OsqQK8ziSSEv8yUwm.jpeg', '2020-10-25 12:24:22', '2020-10-25 12:24:22'),
(43, 'slider_image_3', NULL, 'image', 'slider', 'RXIhzntJZpCcVdZ7XktR3vhGZU9iyqzfk9qdRkBR.jpeg', '2020-10-25 12:25:09', '2020-10-25 12:25:09'),
(44, 'slider_image_4', NULL, 'image', 'slider', 'zJNWlm9qTWULhbMh5pDKFrM5HW3cCZhawfYnNJBy.jpeg', '2020-10-25 12:25:53', '2020-10-25 12:25:53'),
(45, 'slider_image_5', NULL, 'image', 'slider', 'omfHlZpVCfON5vthfqvyZg9RmE421k7Ea69OJvgZ.jpeg', '2020-10-25 12:26:35', '2020-10-25 12:26:35'),
(46, 'feature_1', NULL, 'image', 'features', 'Pz4a4c7UypZA2OSkdYe5DuBHQyGK2tg144Mx7EQB.png', '2020-10-25 12:38:00', '2020-10-25 12:38:00'),
(47, 'feature_2', NULL, 'image', 'features', 'gmvyrtO6eIJQWT4wvpnQvEHqAtTx1gQer0NSeVkP.png', '2020-10-25 12:38:48', '2020-10-25 12:38:48'),
(48, 'feature_3', NULL, 'image', 'features', 'jpTPSxjGjfgAy875ckiKluVnzAUyEOkItnDnbmb8.png', '2020-10-25 12:39:17', '2020-10-25 12:39:17'),
(49, 'feature_4', NULL, 'image', 'features', 'kmlvBsdiDbiqzr7NLTSHbhPGrRmd33iszz53MVDa.png', '2020-10-25 12:39:47', '2020-10-25 12:39:47'),
(50, 'email', 'info@example.com', 'text', 'contact', NULL, '2020-10-25 12:49:06', '2020-10-25 13:01:05'),
(51, 'address', 'Your address will display here, Cairo – Egypt, Cairo – Egypt', 'text', 'contact', NULL, '2020-10-25 12:49:39', '2020-10-25 13:01:05'),
(52, 'contact_info', '+2010000000000 -0101224564 - 0154377 -0124564454787', 'text', 'contact', NULL, '2020-10-25 12:50:27', '2020-10-25 13:01:05'),
(53, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3452.126808002631!2d31.32490691444457!3d30.090554423349182!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14583fd901f5756d%3A0x661a26a44d7c3894!2z2YXYrdi32Kkg2YXYqtix2Ygg2KfZhNij2YfYsdin2YU!5e0!3m2!1sen!2seg!4v1560917733588!5m2!1sen!2seg\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'text', 'contact', NULL, '2020-10-25 12:50:54', '2020-10-25 14:05:46'),
(54, 'facebook', 'facebook.com', 'text', 'contact', NULL, '2020-10-25 12:51:26', '2020-10-25 13:01:06'),
(55, 'linked_in', 'linkedin.com', 'text', 'contact', NULL, '2020-10-25 12:52:11', '2020-10-25 13:01:06'),
(56, 'twitter', 'twitter.com', 'text', 'contact', NULL, '2020-10-25 12:52:43', '2020-10-25 13:01:06'),
(57, 'about_header_image', NULL, 'image', 'about', 'ksZ5PtB4HgRfcKzsbntCs90OrztPlFOvXx8OwVoC.jpeg', '2020-10-25 13:10:20', '2020-10-25 13:55:13'),
(58, 'about_header_text', NULL, 'text', 'about', 'xWfTtjKNtrFq3Qi0BvLtKnQRZokz150Xe8TPnVfv.jpeg', '2020-10-25 13:11:00', '2020-10-25 13:54:31'),
(59, 'about_our_vision', NULL, 'text', 'about', NULL, '2020-10-25 13:11:34', '2020-10-25 13:11:34'),
(60, 'about_our_mission', NULL, 'text', 'about', NULL, '2020-10-25 13:12:14', '2020-10-25 13:12:14'),
(61, 'about_certifications', NULL, 'text', 'about', NULL, '2020-10-25 13:12:58', '2020-10-25 13:12:58'),
(62, 'about_certifications_image', NULL, 'image', 'about', 'YezAQWu8jDUujog935hziYw5LXNhQX6qlbtmxb3X.jpeg', '2020-10-25 13:13:54', '2020-10-25 13:54:21'),
(63, 'about_certifications_image_2', NULL, 'image', 'about', 'YadFyWFBOQK0QddovWZQ95OmGcZKRQHCKvvUJRpE.jpeg', '2020-10-25 13:14:31', '2020-10-25 13:14:31'),
(64, 'career_header', NULL, 'image', 'career', 'lnScnLbEeSoj3Qx5hDIB4utqj391vVL9OYRAcbbq.jpeg', '2020-10-25 14:10:07', '2020-10-25 14:23:32'),
(65, 'culture_header', NULL, 'image', 'culture', '7i6HBv806mPfMTPT8ZGXZMgQm4OFs95fi2qdCD93.jpeg', '2020-10-25 14:11:17', '2020-10-25 14:22:12'),
(66, 'default_language', 'ar', 'text', 'general', NULL, '2020-10-25 14:28:18', '2020-10-26 14:07:16'),
(67, 'copy_rights', NULL, 'text', 'general', NULL, '2020-10-25 14:28:54', '2020-10-25 14:28:54'),
(68, 'description', NULL, 'text', 'meta', NULL, '2020-10-27 08:08:20', '2020-10-27 08:08:20'),
(69, 'keywords', NULL, 'text', 'meta', NULL, '2020-10-27 08:08:44', '2020-10-27 08:08:44'),
(70, 'author', 'TechnoMasr.com', 'text', 'meta', NULL, '2020-10-27 08:09:15', '2020-10-27 08:19:42'),
(71, 'logo', NULL, 'image', 'meta', 'SZ6xBUw9hbrzu3t02Hwzlkby8ZAcbATXCxUfmgNc.png', '2020-10-27 08:11:15', '2020-10-27 08:11:15'),
(72, 'text_section', NULL, 'text', 'general', NULL, '2020-10-27 08:59:07', '2020-10-27 08:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `name`, `value`, `title`, `description`, `link`, `locale`) VALUES
(78, 41, 'صورة الاسلايدر #1', 'صورة اسلايدر', NULL, NULL, NULL, 'ar'),
(79, 41, 'Slider Image #1', 'Slider Images', NULL, NULL, NULL, 'en'),
(80, 42, 'صورة الاسلايدر #2', 'صورة اسلايدر 2', NULL, NULL, NULL, 'ar'),
(81, 42, 'Slider Image #2', 'Slider Image 2', NULL, NULL, NULL, 'en'),
(82, 43, 'صورة الاسلايدر #3', NULL, NULL, NULL, NULL, 'ar'),
(83, 43, 'Slider Image #3', NULL, NULL, NULL, NULL, 'en'),
(84, 44, 'صورة الاسلايدر #4', NULL, NULL, NULL, NULL, 'ar'),
(85, 44, 'Slider Image #4', NULL, NULL, NULL, NULL, 'en'),
(86, 45, 'صورة الاسلايدر #5', NULL, NULL, NULL, NULL, 'ar'),
(87, 45, 'Slider Image #5', NULL, NULL, NULL, NULL, 'en'),
(88, 46, 'مميزات الشركة #1', '1Feature', NULL, NULL, NULL, 'ar'),
(89, 46, 'Company Feature #1', 'Feature 1', NULL, NULL, NULL, 'en'),
(90, 47, 'مميزات الشركة #2', 'Feature Title', NULL, NULL, NULL, 'ar'),
(91, 47, 'Company Feature #2', 'Feature Title', NULL, NULL, NULL, 'en'),
(92, 48, 'مميزات الشركة #3', 'Feature Title', NULL, NULL, NULL, 'ar'),
(93, 48, 'Company Feature #3', 'Feature Title', NULL, NULL, NULL, 'en'),
(94, 49, 'مميزات الشركة #4', 'Feature Title', NULL, NULL, NULL, 'ar'),
(95, 49, 'Company Feature #4', 'Feature Title', NULL, NULL, NULL, 'en'),
(96, 50, 'البريد الإلكتروني', NULL, NULL, NULL, NULL, 'ar'),
(97, 50, 'Email', NULL, NULL, NULL, NULL, 'en'),
(98, 51, 'العنوان', NULL, NULL, NULL, NULL, 'ar'),
(99, 51, 'Address', NULL, NULL, NULL, NULL, 'en'),
(100, 52, 'أرقام التواصل', NULL, NULL, NULL, NULL, 'ar'),
(101, 52, 'Contact Numbers', NULL, NULL, NULL, NULL, 'en'),
(102, 53, 'الخريطه', NULL, NULL, NULL, NULL, 'ar'),
(103, 53, 'Map', NULL, NULL, NULL, NULL, 'en'),
(104, 54, 'رابط الفيسبوك', NULL, NULL, NULL, NULL, 'ar'),
(105, 54, 'Facebook Link', NULL, NULL, NULL, NULL, 'en'),
(106, 55, 'رابط لينكد إن', NULL, NULL, NULL, NULL, 'ar'),
(107, 55, 'LinkedIn url', NULL, NULL, NULL, NULL, 'en'),
(108, 56, 'رابط تويتر', NULL, NULL, NULL, NULL, 'ar'),
(109, 56, 'Twitter', NULL, NULL, NULL, NULL, 'en'),
(110, 57, 'صورة الهيدر', NULL, NULL, NULL, NULL, 'ar'),
(111, 57, 'Header Image', NULL, NULL, NULL, NULL, 'en'),
(112, 58, 'نص الهيدر', NULL, NULL, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', NULL, 'ar'),
(113, 58, 'Header text', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'en'),
(114, 59, 'رؤيتنا', NULL, NULL, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', NULL, 'ar'),
(115, 59, 'Our Vision', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'en'),
(116, 60, 'مهمتنا', NULL, NULL, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', NULL, 'ar'),
(117, 60, 'Our Mission', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'en'),
(118, 61, 'الشهادات', NULL, NULL, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', NULL, 'ar'),
(119, 61, 'Certifications', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'en'),
(120, 62, 'صورة الشهادات #1', NULL, NULL, NULL, NULL, 'ar'),
(121, 62, 'Certifications image #1', NULL, NULL, NULL, NULL, 'en'),
(122, 63, 'صورة الشهادات #2', NULL, NULL, NULL, NULL, 'ar'),
(123, 63, 'Certifications image #2', NULL, NULL, NULL, NULL, 'en'),
(124, 64, 'هيدر صفحه Careers', NULL, NULL, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', NULL, 'ar'),
(125, 64, 'Career Page Header', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'en'),
(126, 65, 'هيدر صفحة Culture', NULL, NULL, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', NULL, 'ar'),
(127, 65, 'Cultuer Page Header', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'en'),
(128, 66, 'اللغة الافتراضية', NULL, NULL, NULL, NULL, 'ar'),
(129, 66, 'Default Language', NULL, NULL, NULL, NULL, 'en'),
(130, 67, 'حقوق الملكيه', 'All rights reserved for Capital desiel © 2019', NULL, NULL, NULL, 'ar'),
(131, 67, 'Copy Rights', 'All rights reserved for Capital desiel © 2020', NULL, NULL, NULL, 'en'),
(132, 68, 'وصف الموقع', NULL, NULL, 'وصف وصف وصف وصف', NULL, 'ar'),
(133, 68, 'Description', NULL, NULL, 'desc desc desc', NULL, 'en'),
(134, 69, 'الكلمات الدلالية', NULL, NULL, 'كابيتال ديزل , كابيتال ديزل , كابيتال ديزل , كابيتال ديزل', NULL, 'ar'),
(135, 69, 'keywords', NULL, NULL, 'Capital Desiel , Capital Desiel , Capital Desiel , Capital Desiel , Capital Desiel', NULL, 'en'),
(136, 70, 'مالك الموقع', 'CapitalDesiel.com', NULL, NULL, NULL, 'ar'),
(137, 70, 'Author', NULL, NULL, NULL, NULL, 'en'),
(138, 71, 'لوجو الموقع', NULL, NULL, NULL, NULL, 'ar'),
(139, 71, 'Logo', NULL, NULL, NULL, NULL, 'en'),
(140, 72, 'نص السيكشن التاني في الصفحة الرئيسيه', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', NULL, NULL, NULL, 'ar'),
(141, 72, 'Text in section 2 in home page', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL, NULL, 'en');

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
(1, 'test@test.com', '2020-10-25 11:34:58', '2020-10-25 11:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `testmonials`
--

CREATE TABLE `testmonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testmonials`
--

INSERT INTO `testmonials` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'NMHK4370vX5rCPhwL9MS0AFtYAdhbyO5BJyAXAtb.jpeg', '2020-10-18 13:35:39', '2020-10-18 13:40:25'),
(2, 'CW7mdyzgoeCiCCcpWwWjffvwDPxUR0x8tPaBMUQ8.jpeg', '2020-10-18 13:42:07', '2020-10-18 13:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `testmonial_translations`
--

CREATE TABLE `testmonial_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `testmonial_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testmonial_translations`
--

INSERT INTO `testmonial_translations` (`id`, `testmonial_id`, `name`, `job`, `body`, `locale`, `created_at`, `updated_at`) VALUES
(1, 1, 'سليمان1', 'فورنت اند ديفولوبر11', '<p>11111تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;تست&nbsp;</p>', 'ar', NULL, NULL),
(2, 1, 'Soliman1', 'Front end eveloper1', '<p>t111est&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;</p>', 'en', NULL, NULL),
(3, 2, 'قريم', 'جرافيك دزاينر', '<p>تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;تستستش&nbsp;</p>', 'ar', NULL, NULL),
(4, 2, 'kareeeeeeeeeeem', 'graphic designer', '<p>test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;</p>', 'en', NULL, NULL);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicants_job_id_foreign` (`job_id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_city_id_foreign` (`city_id`);

--
-- Indexes for table `area_translations`
--
ALTER TABLE `area_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `area_translations_area_id_locale_unique` (`area_id`,`locale`),
  ADD KEY `area_translations_locale_index` (`locale`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `city_translations_city_id_locale_unique` (`city_id`,`locale`),
  ADD KEY `city_translations_locale_index` (`locale`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cultures`
--
ALTER TABLE `cultures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `culture_translations`
--
ALTER TABLE `culture_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `culture_translations_culture_id_locale_unique` (`culture_id`,`locale`),
  ADD KEY `culture_translations_locale_index` (`locale`);

--
-- Indexes for table `delars`
--
ALTER TABLE `delars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delars_city_id_foreign` (`city_id`),
  ADD KEY `delars_area_id_foreign` (`area_id`);

--
-- Indexes for table `delar_translations`
--
ALTER TABLE `delar_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delar_translations_delar_id_locale_unique` (`delar_id`,`locale`),
  ADD KEY `delar_translations_locale_index` (`locale`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_translations`
--
ALTER TABLE `department_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `department_translations_department_id_locale_unique` (`department_id`,`locale`),
  ADD KEY `department_translations_locale_index` (`locale`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_surgery_id_foreign` (`surgery_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_department_id_foreign` (`department_id`);

--
-- Indexes for table `job_translations`
--
ALTER TABLE `job_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_translations_job_id_locale_unique` (`job_id`,`locale`),
  ADD KEY `job_translations_locale_index` (`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_images`
--
ALTER TABLE `page_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_images_page_id_foreign` (`page_id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_translations_page_id_locale_unique` (`page_id`,`locale`),
  ADD KEY `page_translations_locale_index` (`locale`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_translations`
--
ALTER TABLE `partner_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `partner_translations_partner_id_locale_unique` (`partner_id`,`locale`),
  ADD KEY `partner_translations_locale_index` (`locale`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_translations_post_id_locale_unique` (`post_id`,`locale`),
  ADD KEY `post_translations_locale_index` (`locale`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`),
  ADD KEY `product_translations_locale_index` (`locale`);

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
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sector_translations`
--
ALTER TABLE `sector_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sector_translations_sector_id_locale_unique` (`sector_id`,`locale`),
  ADD KEY `sector_translations_locale_index` (`locale`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`),
  ADD KEY `setting_translations_locale_index` (`locale`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testmonials`
--
ALTER TABLE `testmonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testmonial_translations`
--
ALTER TABLE `testmonial_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `testmonial_translations_testmonial_id_locale_unique` (`testmonial_id`,`locale`),
  ADD KEY `testmonial_translations_locale_index` (`locale`);

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
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `area_translations`
--
ALTER TABLE `area_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cultures`
--
ALTER TABLE `cultures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `culture_translations`
--
ALTER TABLE `culture_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delars`
--
ALTER TABLE `delars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delar_translations`
--
ALTER TABLE `delar_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department_translations`
--
ALTER TABLE `department_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_translations`
--
ALTER TABLE `job_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `page_images`
--
ALTER TABLE `page_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `partner_translations`
--
ALTER TABLE `partner_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_translations`
--
ALTER TABLE `post_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sector_translations`
--
ALTER TABLE `sector_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testmonials`
--
ALTER TABLE `testmonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testmonial_translations`
--
ALTER TABLE `testmonial_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `area_translations`
--
ALTER TABLE `area_translations`
  ADD CONSTRAINT `area_translations_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD CONSTRAINT `city_translations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `culture_translations`
--
ALTER TABLE `culture_translations`
  ADD CONSTRAINT `culture_translations_culture_id_foreign` FOREIGN KEY (`culture_id`) REFERENCES `cultures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delars`
--
ALTER TABLE `delars`
  ADD CONSTRAINT `delars_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `delars_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delar_translations`
--
ALTER TABLE `delar_translations`
  ADD CONSTRAINT `delar_translations_delar_id_foreign` FOREIGN KEY (`delar_id`) REFERENCES `delars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `department_translations`
--
ALTER TABLE `department_translations`
  ADD CONSTRAINT `department_translations_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_surgery_id_foreign` FOREIGN KEY (`surgery_id`) REFERENCES `surgeries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_translations`
--
ALTER TABLE `job_translations`
  ADD CONSTRAINT `job_translations_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_images`
--
ALTER TABLE `page_images`
  ADD CONSTRAINT `page_images_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `partner_translations`
--
ALTER TABLE `partner_translations`
  ADD CONSTRAINT `partner_translations_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD CONSTRAINT `post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sector_translations`
--
ALTER TABLE `sector_translations`
  ADD CONSTRAINT `sector_translations_sector_id_foreign` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testmonial_translations`
--
ALTER TABLE `testmonial_translations`
  ADD CONSTRAINT `testmonial_translations_testmonial_id_foreign` FOREIGN KEY (`testmonial_id`) REFERENCES `testmonials` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
