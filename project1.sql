-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2025 at 05:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `club_name` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `introduction` text DEFAULT NULL,
  `mission` text DEFAULT NULL,
  `staff_coordinator_name` varchar(255) NOT NULL,
  `staff_coordinator_email` varchar(255) NOT NULL,
  `staff_coordinator_photo` varchar(255) DEFAULT NULL,
  `year_started` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `club_name`, `logo`, `introduction`, `mission`, `staff_coordinator_name`, `staff_coordinator_email`, `staff_coordinator_photo`, `year_started`, `created_at`, `updated_at`) VALUES
(1, 'IoT', 'club_logos/N9yXe9zUvInJTFuelHpmDvHIHNYnkcKYlArOTjFA.png', 'The IoT Club centers around the Internet of Things and its industrial and societal applications. The club promotes sensor-based innovations, smart home prototypes, and real-time monitoring projects. Its social contributions include community automation projects such as smart irrigation and energy-saving devices.', 'To empower students with hands-on skills in the Internet of Things by fostering innovation, collaboration, and real-world problem-solving through workshops, projects engagement.', 'C.V.Nisha', 'cvnait@faculty.tce.edu', 'staff_photos/loXsJoLeRTjoKnHohpj2sxNRLmvdBTkW6cYlc0Rp.jpg', 2012, '2025-06-21 00:31:40', '2025-06-24 09:44:01'),
(3, 'App Development', 'club_logos/6GIs6qsVaTJGN3XyHsfTwZTyN6XkDvwNpOwfb7Gr.png', 'Empowers students to build Android & iOS apps.', 'To create apps that solve real-world problems.', 'Ms. Anjali Rao', 'anjali.app@college.edu', 'staff_photos/08ia4Zzhs45DeS1Y6s1UEk3iAMFKwznp18Z2tRQV.jpg', 2019, NULL, '2025-06-24 09:45:12'),
(4, 'AR/VR', 'club_logos/xuZU6zm2uCvwEfPtLJ1iEP7aw5yJeSgiWKf1tK2n.png', 'Dive into augmented and virtual reality tech.', 'To enhance interaction through immersive tech.', 'Mr. Karthik S', 'karthik.ar@college.edu', 'staff_photos/ucgkF4pbUE1wU6c0A06T4ycGDpH2YbBwrtqAagCI.jpg', 2020, NULL, '2025-06-24 09:45:28'),
(5, 'Prometheans', 'club_logos/WkWsFkL3uG17aghOJRoK9OfLD1hmh74H3jN7dHmd.png', 'Fosters innovation and curiosity.', 'To ignite the flame of creation in every student.', 'Ms. Nivetha R', 'nivetha.prometheans@college.edu', 'staff_photos/4iU8bk8dX1K9ESPEUg9xHkPYKPABOm41x924SjEh.webp', 2017, NULL, '2025-06-24 09:45:45'),
(6, 'Eureka', 'club_logos/SR2QK7pgFyTbQ2VA2dzNFRttZY4nyowQCIp3jSI1.png', 'Where curiosity meets discovery.', 'To inspire research and experimentation.', 'Dr. Suresh P', 'suresh.eureka@college.edu', 'staff_photos/djpAUdLAGwJJ6xdXrCwzcMfnnwY4WINWxlnIVrUf.jpg', 2016, NULL, '2025-06-24 08:09:14'),
(7, 'Coders Club', 'club_logos/LOWxyQurYkz862KaXDXQar4SvT2RA8K6Y2b7TwEx.png', 'For those who love to code.', 'To empower students through problem solving and programming.', 'Mr. Aravind R', 'aravind.coders@college.edu', 'staff_photos/35s4OImhdKkjmG64Dh1HyJYdMUseRrXBDYsCmn92.jpg', 2015, NULL, '2025-06-24 09:46:20'),
(8, 'Ekalayva', 'club_logos/VsAihPvNKsBxP3hkE67ps3tXswsWcxro1v5RpdnM.png', 'Self-learning is our strength.', 'To promote independent learning through projects.', 'Ms. Raji M', 'raji.ekalayva@college.edu', 'staff_photos/ypLyMvtiO5NGZO5dqzMPJI10Zjol2jgWDqKRwxF4.jpg', 2020, NULL, '2025-06-24 09:53:47'),
(9, 'SAE Collegiate Club', 'club_logos/VvTi90cmXsBAxpRBXnLHsF5QpCMnbbcCcXxZWT5E.png', 'Automobile and design lovers unite.', 'To build engineers passionate about vehicles.', 'Mr. Manoj B', 'manoj.sae@college.edu', 'staff_photos/6wxUDMYw4rLMFL16jS9QMIWHaelYlRHEGa8K9ASN.jpg', 2014, NULL, '2025-06-25 06:48:13'),
(10, 'ISHARE Students Chapter', 'club_logos/Oq4lxfyadktL5trhqskRTb86Pjpzj5xZ0GRFphSI.png', 'HVAC knowledge at your fingertips.', 'To spread awareness on refrigeration & air-conditioning.', 'Ms. Priya V', 'priya.ishare@college.edu', 'staff_photos/ek2DbKG7H1m1DBHuTEQIEoJo4Akpylyp7PagQP3J.jpg', 2019, NULL, '2025-06-25 06:48:37'),
(11, 'YUKTA Racing', 'club_logos/59TrJak3Rz3Ym9G8ksjZlt7h7H0fXwtsI4y25Wfu.png', 'Fuel your dreams with speed.', 'To design and race efficient student-built vehicles.', 'Mr. Rajesh D', 'rajesh.yukta@college.edu', 'staff_photos/qXVEQJuCA9ocPVKeapCTgDl9lHeEqaJOMz2taf4I.jpg', 2016, NULL, '2025-06-25 06:48:54'),
(12, 'Algo Geeks', 'club_logos/YFWkACMopbTlxvwWbVGODPBY79SlTRuznz6bDo4N.png', 'Love for algorithms and DSA.', 'To master the art of competitive programming.', 'Ms. Sneha P', 'sneha.algo@college.edu', 'staff_photos/PWSJP6SSFGoTCPWBFM4LSJoZ3fF36tQXCGvhy0pz.webp', 2018, NULL, '2025-06-24 10:59:48'),
(13, 'IEI student chapter', 'club_logos/giNqq5zKAONjFnaK7CuyE5iC7WuutFKQm0xRnED5.png', 'An interdisciplinary platform.', 'To connect engineering disciplines for collaboration.', 'Dr. Kumar R', 'kumar.iei@college.edu', 'staff_photos/cIcEryVxMrLQEErbYXFiMHmUvHV8eAVpDcFBbWR1.jpg', 2013, NULL, '2025-06-25 06:49:20'),
(14, 'Ascenders', 'club_logos/c8nH7qRAxM8gInC8l35KOZAaEMwRlwjOVMQEhnmp.png', 'Rise and evolve together.', 'To build leadership and career readiness.', 'Ms. Divya T', 'divya.ascenders@college.edu', 'staff_photos/bKD7LPIBf0oP1GORCptnpppt89iGY36bM7DDKHAT.jpg', 2020, NULL, '2025-06-25 06:49:36'),
(15, 'Quizzards', 'club_logos/ovyYEbnBULDRDvsv2iEJ3YEDPT7Jek3adNejfyGl.png', 'Quiz lovers’ paradise.', 'To challenge and expand general knowledge.', 'Mr. Nilesh V', 'nilesh.quiz@college.edu', 'staff_photos/wkf2ndFjVWO0sP9oLEtDAtQFg8nKOoqIzjwpdTbg.jpg', 2017, NULL, '2025-06-25 06:49:55'),
(16, 'IEEE student chapter', 'club_logos/1G2EH0Io1HjQDvRR4hYrnSWws7ANvu9sNOsFVI56.png', 'Engineering innovation.', 'To explore electronics, computing, and research.', 'Dr. Srivatsan K', 'srivatsan.ieee@college.edu', 'staff_photos/WjVHdiGm7s0lOiTb5veAxvfOgSxQpi6jMy6DTYKx.jpg', 2012, NULL, '2025-06-25 06:53:17'),
(17, 'Anglophile Longue', 'club_logos/BfZ5kbGih4wuMvGeGFkMXoiCIEsCOTZxjEZznltD.png', 'Celebrate English language.', 'To develop public speaking and literature skills.', 'Ms. Sangeetha J', 'sangeetha.anglo@college.edu', 'staff_photos/Se2GCyJVlbE1kHqQJ6fRduS0ugWrjMqcMKmTPbKP.jpg', 2021, NULL, '2025-06-25 06:53:37'),
(18, 'IETE student chapter', 'club_logos/KmVOOvZR4LtcYaNQZDl1BrR27PpXAPEmaceUlN9z.png', 'Electronics and telecommunication geeks.', 'To promote advanced studies in telecom.', 'Mr. Ashok R', 'ashok.iete@college.edu', 'staff_photos/XACpy6Gzevy0iI47a89GZ3WQ4UM7Jwa6AdGIuh7Q.jpg', 2011, NULL, '2025-06-25 06:54:58'),
(19, 'Ventura', 'club_logos/g4TtCosaFf9u1A2RhLFnB6vWlOnh233KFVA6ThKZ.png', 'Entrepreneurship development cell.', 'To turn ideas into startups.', 'Ms. Keerthi M', 'keerthi.ventura@college.edu', 'staff_photos/ldwofIs8IkRdrGG8pRfzxzK8SLOYiROzlxxJaBs6.jpg', 2018, NULL, '2025-06-25 06:55:22'),
(20, 'Innov CHEM', 'club_logos/WoG6TkgwH6fVPaAWT7EFYEKNssirMuVU17lvwKWi.png', 'For future chemical engineers.', 'To build process understanding and safety.', 'Dr. Mahesh B', 'mahesh.chem@college.edu', 'staff_photos/IJp0Bjyo4vFM84ymygdYyMmASTihvaBRsWbubgJi.jpg', 2016, NULL, '2025-06-25 06:56:01'),
(21, 'Sports & Culturals', 'club_logos/otGwNcofWy5IweX1Nx70y22wWN7kbtPMVfOwBlZ1.png', 'Talent beyond academics.', 'To nurture sportsmanship and culture.', 'Mr. Akash S', 'akash.sports@college.edu', 'staff_photos/iyDE2fRHd1yH8RkiWCICFZWUOQ7oV6g7upQTKfRk.jpg', 2014, NULL, '2025-06-25 06:55:44'),
(22, 'Foreign language club', 'club_logos/Mu0VjNoXT1aphsrZVnOZb5Ovz237ya3Yo8k5nBLF.png', 'Bonjour! Konichiwa! Hola!', 'To explore languages and cultures worldwide.', 'Ms. Aarthi N', 'aarthi.lang@college.edu', 'staff_photos/xL8v5GwHL46qRCavoUhaLoAz3HvcYBlX2lCzsfph.jpg', 2019, NULL, '2025-06-25 06:56:45'),
(23, 'Happy Hive', 'club_logos/lXTxxHfD654GXtvwh3hswmgMWxGszzB0HqhWiCra.png', 'Your mental health buddy.', 'To promote mental well-being and happiness.', 'Ms. Shruthi V', 'shruthi.hive@college.edu', 'staff_photos/Df8TzTZYqT1M4o70ev0FVPFcAebeZFi5Pcu73b2m.jpg', 2021, NULL, '2025-06-25 06:57:03'),
(24, 'Kernel Club', 'club_logos/Jod4TkOQXIo1FlOiR6iRnKzhn6KD8X0JDFND5oNH.png', 'Systems and Linux lovers unite.', 'To deep dive into OS, kernel, and security.', 'Mr. Vishnu K', 'vishnu.kernel@college.edu', 'staff_photos/3vv2PM18nFS2y1tj23HMxgV485dGMfCdUsytLWBT.jpg', 2018, NULL, '2025-06-25 06:57:22'),
(25, 'Math Club', 'club_logos/qh0INKzh9UEqIN75vx9Tj0BMKdoHaBFmoypJGlau.png', 'Beyond numbers.', 'To build mathematical intuition and fun.', 'Dr. Latha G', 'latha.math@college.edu', 'staff_photos/dAu1FGQheZ4ppK7phjg2vQW6I9FWEcBIrBUfI0cx.jpg', 2015, NULL, '2025-06-25 06:57:49'),
(26, 'Spark Club', 'club_logos/CgvhX0B2OMfe49fNocWGWP1W9taayrNDRXpH3b4F.png', 'Where ideas spark.', 'To promote ideation and innovation.', 'Ms. Renu A', 'renu.spark@college.edu', 'staff_photos/nSk9g1WMzzA540FXrjFGkLF0cweCPyF3URamSJ6X.jpg', 2020, NULL, '2025-06-25 06:58:26'),
(27, 'TECHXPLORERS', 'club_logos/eb43zxHJ7EziFG5yyUQ7EfTtyOh2QYP0mxKYj3Q6.png', 'Exploring tech beyond textbooks.', 'To explore, build, and break technology barriers.', 'Mr. Santhosh T', 'santhosh.techx@college.edu', 'staff_photos/5g5jDdCcn8fBKEwnD9yeP7fKkzoMvLYdrWAZPurJ.jpg', 2021, NULL, '2025-06-25 06:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `club_registration`
--

CREATE TABLE `club_registration` (
  `id` bigint(20) NOT NULL,
  `registration_id` bigint(20) UNSIGNED NOT NULL,
  `club_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `club_registration`
--

INSERT INTO `club_registration` (`id`, `registration_id`, `club_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-06-22 06:03:56', '2025-06-22 06:03:56'),
(2, 2, 1, '2025-06-22 06:08:38', '2025-06-22 06:08:38'),
(3, 3, 1, '2025-06-22 06:16:21', '2025-06-22 06:16:21'),
(4, 4, 1, '2025-06-22 06:20:06', '2025-06-22 06:20:06'),
(5, 5, 1, '2025-06-22 06:27:25', '2025-06-22 06:27:25'),
(6, 6, 5, '2025-06-22 06:33:10', '2025-06-22 06:33:10'),
(7, 6, 6, '2025-06-22 06:33:10', '2025-06-22 06:33:10'),
(8, 6, 11, '2025-06-22 06:33:10', '2025-06-22 06:33:10'),
(9, 7, 1, '2025-06-22 23:34:21', '2025-06-22 23:34:21'),
(10, 7, 4, '2025-06-22 23:34:21', '2025-06-22 23:34:21'),
(11, 7, 7, '2025-06-22 23:34:21', '2025-06-22 23:34:21'),
(12, 8, 8, '2025-06-23 01:09:36', '2025-06-23 01:09:36'),
(13, 8, 12, '2025-06-23 01:09:36', '2025-06-23 01:09:36'),
(14, 8, 14, '2025-06-23 01:09:36', '2025-06-23 01:09:36'),
(15, 9, 3, '2025-06-24 08:06:46', '2025-06-24 08:06:46'),
(16, 9, 6, '2025-06-24 08:06:46', '2025-06-24 08:06:46'),
(17, 9, 7, '2025-06-24 08:06:46', '2025-06-24 08:06:46'),
(18, 10, 1, '2025-06-24 08:18:02', '2025-06-24 08:18:02'),
(19, 10, 4, '2025-06-24 08:18:02', '2025-06-24 08:18:02'),
(20, 10, 8, '2025-06-24 08:18:02', '2025-06-24 08:18:02'),
(21, 11, 1, '2025-06-24 08:26:22', '2025-06-24 08:26:22'),
(22, 11, 6, '2025-06-24 08:26:22', '2025-06-24 08:26:22'),
(23, 11, 8, '2025-06-24 08:26:22', '2025-06-24 08:26:22'),
(24, 12, 3, '2025-06-24 08:49:31', '2025-06-24 08:49:31'),
(25, 12, 7, '2025-06-24 08:49:31', '2025-06-24 08:49:31'),
(26, 12, 9, '2025-06-24 08:49:31', '2025-06-24 08:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `club_id` bigint(20) UNSIGNED NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `club_id`, `event_name`, `description`, `date`, `time`, `image_path`, `created_at`, `updated_at`) VALUES
(6, 1, 'sensors hunt', 'decode that sensor', '2025-06-24', '15:30:00', 'event_images/QdMdXttjzUyrZP35Cxl88KWHTRxd52ET7lLKOJHi.png', '2025-06-22 01:11:38', '2025-06-24 05:22:03'),
(8, 6, 'Invent New', 'Idea pitching event', '2025-06-10', '09:30:00', 'event_images/fF0DgtGgOlbCK7Mx0WNrWFwKlfrviywsh3LnpQW0.jpg', '2025-06-22 09:29:42', '2025-06-24 08:09:32'),
(9, 3, 'App Mentor', 'Create new apps', '2025-07-03', '16:30:00', 'event_images/9WJYHcvyBEjyZkUgnk4jE7Q2DVrjk04l5nyC60DJ.png', '2025-06-22 09:55:31', '2025-06-24 11:34:03'),
(10, 4, 'Hello', 'hi hello', '2025-06-04', '17:56:00', 'event_images/4m1CLVkp8Dg5eJZtZSTtZkVqnC9uuPBYor85h7lo.png', '2025-06-22 10:03:41', '2025-06-24 11:35:47'),
(11, 7, 'CodeFest', 'Coding in C program', '2025-06-07', '13:25:00', 'event_images/IkJ6ANX0JcKLOawDa8PQQAkcTxB6W2sIcJP4D1db.png', '2025-06-22 11:01:36', '2025-06-24 11:35:08'),
(12, 7, 'Hackfest', 'Coding in hackerrank', '2025-06-27', '14:00:00', 'event_images/nu7dKeThHRiVL6kDhpZBkeJ5pvfEtce0uaQffJsm.png', '2025-06-22 11:02:18', '2025-06-24 11:35:19'),
(13, 4, 'Crime Scene', 'Identify the murderer using clues', '2025-07-12', '17:08:00', 'event_images/7qj9TqOYljGzwSQIOhRHSVxZTdL3MN5sdE2LyySo.png', '2025-06-22 11:03:24', '2025-06-24 11:34:34'),
(14, 1, 'rtredwdf', 'eewffdwffew', '2025-07-03', '18:14:00', 'event_images/Ptuiv9Ez7Pr0ufsisI94QcsdJgYr5nPWi5ibniBi.png', '2025-06-23 01:05:32', '2025-06-24 05:25:41'),
(15, 1, 'efdcdc', 'fwffscdfef', '2025-06-27', '20:22:00', 'event_images/Bx2tRa1hHB5Hhg16LNibITgxtuFoVpxtJMO9tgZL.png', '2025-06-24 04:18:02', '2025-06-24 04:18:02'),
(16, 3, 'dfdfdf', 'fdadaewrewr', '2025-07-12', '15:44:00', 'event_images/GIdkGjGULper3rw6SyHlQJNjQvyxpUfDA5Vn9H1D.png', '2025-06-24 04:44:29', '2025-06-24 04:44:29'),
(18, 1, 'senthil', 'erewfee', '2025-07-04', '12:51:00', 'event_images/3yqFq1RNzR62XeSX20YZUN9qoli5TdX4pxXpVvkX.png', '2025-06-24 08:46:06', '2025-06-24 08:46:06');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_20_140631_create_clubs_table', 1),
(5, '2025_06_20_142828_create_student_coordinators_table', 1),
(6, '2025_06_21_052824_add_logo_to_clubs_table', 1);

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
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `roll_no` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `department` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `name`, `roll_no`, `email`, `phone`, `photo`, `department`, `created_at`, `updated_at`) VALUES
(1, 'Aburvaa', '660423', 'aburvaasenthilkumarias@gmail.com', '8248224408', 'photos/KL4Tp8dYEQahzMkcbLrfpRF0g2r1geX4EPrKf9n9.jpg', 'IT', '2025-06-22 06:03:56', '2025-06-22 06:03:56'),
(2, 'Kiruthika', '789330', 'kiru@gmail.com', '8248224890', 'photos/gTxJLQ3ysjXQb2B1UJftwMApbyXCmnCEVcRFBsGT.jpg', 'IT', '2025-06-22 06:08:38', '2025-06-22 06:08:38'),
(3, 'Nikitha', '898442', 'niki@gmail.com', '8766590998', 'photos/TGtOSk51XnHsdAk7SLXGIxy6hbXkT9KgjyOcKZ2s.png', 'CIVIL', '2025-06-22 06:16:21', '2025-06-22 06:16:21'),
(4, 'Varshini', '373290', 'vars@gmail.com', '9843779092', 'photos/fJ9rPgnjzTUe5U5b9mRfzDK4B3vqCoLotAxSnq7K.jpg', 'ECE', '2025-06-22 06:20:06', '2025-06-22 06:20:06'),
(5, 'Harshini', '445321', 'harsh@gmail.com', '9787659235', 'photos/LvmyM1J6jgMa47tRNTkrhqIxKafwySC2Z06nq31t.png', 'AI-ML', '2025-06-22 06:27:25', '2025-06-22 06:27:25'),
(6, 'Ganga', '334223', 'ganga@gmail.com', '8763342231', 'photos/WPur9Cu8XD5Dw9RT1roEMxjBO1LeScn5Cz0lyFbf.png', 'ROBOTICS', '2025-06-22 06:33:10', '2025-06-22 06:33:10'),
(7, 'Kaviya', '532133', 'kaviya@gmail.com', '9363333418', 'photos/5nGkQAk0CRD748b3rlWO30CSEaufeGOg2wOS8h52.jpg', 'IT', '2025-06-22 23:34:21', '2025-06-22 23:34:21'),
(8, 'Valli', '987665', 'valli@gmail.com', '8765490887', 'photos/jZpA2g2bMAHLLf4yPpQyjsTHkafuTF4aZT5AbM4I.jpg', 'CSE', '2025-06-23 01:09:36', '2025-06-23 01:09:36'),
(9, 'fewrrewfdfd', '342413', 'harshinidharsh@gmail.com', '9787644321', 'photos/udWk8hpep0tQL6ExSg5n6bFg8ITonoAfOdLm9JHh.png', 'CIVIL', '2025-06-24 08:06:46', '2025-06-24 08:06:46'),
(10, 'Abinaya', '654221', 'abi@gmail.com', '7865432190', 'photos/TCEOy2pyIgoay21mpWN4BOW3PtHWn1bshBOvcS2s.png', 'CSE', '2025-06-24 08:18:02', '2025-06-24 08:18:02'),
(11, 'Abinaya Sri', '654223', 'abinaya@gmail.com', '7865432148', 'photos/znEV2mpgUUIWxk2uI9rbwtAIJ54Uj6a9gsvih46M.jpg', 'ECE', '2025-06-24 08:26:22', '2025-06-24 08:26:22'),
(12, 'Senthil', '776543', 'senthil@gmail.com', '9843779093', 'photos/RIVR5EwqBErQGQkUi6juCQQeSWT3vNEJ6828oxjN.jpg', 'EEE', '2025-06-24 08:49:31', '2025-06-24 08:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dKQO72WR0mj54eXtliOKKI6XvLAstEW1Mdpw4Zzk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXlTZFl3Q1ZMMkhIZjk3Tm9jU3VSRGxldTZCck9kamRzclBzdnNMZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90Y2Uvc3VwZXJhZG1pbi9jbHVicy9lZGl0LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751364110),
('DvIXPr1SGNiX8T71zM0YX4H9PLRs1RTVkBPwlYYa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGlZZHhyRDNHcWZLTk0xT015Q0NldE1FQzJ1ek1aZ0hZeEdrYWFWbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90Y2Uvc3R1ZGVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750867787);

-- --------------------------------------------------------

--
-- Table structure for table `student_coordinators`
--

CREATE TABLE `student_coordinators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `club_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_coordinators`
--

INSERT INTO `student_coordinators` (`id`, `club_id`, `name`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nikitha A S', 'student_photos/0glD64wjDD1PnvGotZRcpcWl2DlXgU5nyJA7iF1k.png', '2025-06-21 00:31:40', '2025-06-22 23:01:46'),
(2, 1, 'Kiruthika B', 'student_photos/hbsrQUZ2YTUIC36f9teQGooeVKaQ5EqwlxwrcQHv.png', '2025-06-22 04:02:15', '2025-06-22 23:01:46'),
(3, 1, 'Jayanthi B', 'student_photos/uSqvkHJOico27S7x9vrt4BMHG50uZqSyt83LFMs1.png', '2025-06-22 04:03:13', '2025-06-24 05:21:43');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club_registration`
--
ALTER TABLE `club_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_id` (`registration_id`),
  ADD KEY `club_id` (`club_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_club_id_foreign` (`club_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `student_coordinators`
--
ALTER TABLE `student_coordinators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_coordinators_club_id_foreign` (`club_id`);

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
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `club_registration`
--
ALTER TABLE `club_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_coordinators`
--
ALTER TABLE `student_coordinators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `club_registration`
--
ALTER TABLE `club_registration`
  ADD CONSTRAINT `club_registration_ibfk_1` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `club_registration_ibfk_2` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_club_id_foreign` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_coordinators`
--
ALTER TABLE `student_coordinators`
  ADD CONSTRAINT `student_coordinators_club_id_foreign` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
