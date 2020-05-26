-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: May 26, 2020 at 07:00 AM
-- Server version: 10.3.22-MariaDB-1:10.3.22+maria~bionic
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_hunt`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `banner_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `banner_picture`) VALUES
(1, 'Webapp', NULL),
(2, 'Mac', NULL),
(3, 'Photography', NULL),
(4, 'Games', NULL),
(5, 'Books', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `l_description` text NOT NULL,
  `s_description` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `l_description`, `s_description`, `logo`, `video`, `category_id`, `created_at`) VALUES
(1, 'ToDesktop', 'With ToDesktop you can convert your web app into a desktop app. A desktop app provides a much cleaner and less cluttered user interface. Users can download and install your app to their computer and launch it from the same place as other desktop apps', 'Convert your web app to a desktop app in 2 minutes.', 'https://ph-files.imgix.net/ddb7a4b7-d58d-403d-88e5-dc02f6d72618?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://youtu.be/nFY0r1H2xbM', 1, '2019-05-07 14:41:02'),
(2, 'Paintr', 'Paintr is a collaborative digital canvas where your smartphone becomes your paintbrush. ', 'Painting with your smartphone.', 'https://ph-files.imgix.net/1e81e230-c01d-4889-9df4-34ee9feed46f?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://youtu.be/s62hUhh05_c', 1, '2019-09-10 14:40:31'),
(3, 'Coronavirus Tracker 2.0', 'Track coronavirus curve flattening, growth rate and doubling days in your country. You can also see how many cases are doubling. You can check the daily cases, critical cases and the tests done. You can view the spread in the states and cities near you.', 'Track coronavirus curve flattening and doubling days', 'https://ph-files.imgix.net/58240f88-d1dd-4238-bb7b-66254497f38b?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://youtu.be/nVX7UbuwAFc', 1, '2020-03-10 14:41:17'),
(4, 'Journey app', 'Journey is the social network that motivates, inspires, and pushes you toward the things that matter to you. The social currency is your output — the cool shit you create and do and the support you give others — not how you look in a bikini. ', 'Social network that pushes you toward your goals', 'https://ph-files.imgix.net/c3611d03-26af-42bb-81b9-6691721ed19a?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://youtu.be/eyeqSR4X4KY', 1, '2019-12-31 14:41:30'),
(5, 'Generated Photos', 'New platform, new faces, new styles. ⠀\r\n⠀\r\nMeet Generated Photos — the most consistent AI-generated media available.⠀\r\n⠀\r\n• Radically improved quality\r\n• Natural styling option\r\n• Transparent backgrounds\r\n• 2 million+ faces\r\n• Advanced filtering and sorting', 'Rights-free faces made using AI', 'https://ph-files.imgix.net/7a1256df-cc31-4692-8ca5-ad469598e784?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://youtu.be/XTvmdCMtH2s', 3, '2019-10-20 14:42:03'),
(6, 'Scopio 3.0', 'Scopio is an image marketplace of more than 200,000 commercial and editorial photos from creators in over 150 countries. Our mission is to make stock photography more diverse, authentic and affordable.', 'Diverse, authentic and affordable images from 150+ countries', 'https://ph-files.imgix.net/862933f2-06f5-4c7c-9b91-b6505e65aafa?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://ph-files.imgix.net/65ffdb92-1dda-4d8b-b75b-a362bbfbbd93?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=634.1140215716487&h=380&fit=max', 3, '2019-12-10 14:44:41'),
(7, '100,000 Faces', 'We are happy to share with you a massive free resource of 100k faces, generated from scratch using AI. \r\nThis project showcases a glimpse into the technology we are building to create media on-demand.', 'Free resource of 100k diverse faces generated by AI', 'https://ph-files.imgix.net/93721bd3-9a19-475e-ad38-f7d3bb19fdd5?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://youtu.be/3VPb05GlWT4', 3, '2019-07-10 14:47:00'),
(8, 'Series', 'Series is an iOS app for creating photo layouts, optimized for sharing to Instagram.', 'Fast and flexible photo layout for iOS', 'https://ph-files.imgix.net/1cbec6a4-2abb-4987-982f-2d15c41b4078?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://ph-files.imgix.net/1c9a6e26-47ca-4669-b666-3209297d29e2?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=200&h=380&fit=max', 3, '2019-08-21 14:48:29'),
(9, 'Pandora', 'Pandora is a productivity tool made for people using Slack and Gmail.\r\n\r\nPandora is made for your mac\r\nBrowse your document history by file type\r\nUse your keyboard shortcuts to be faster\r\nBe more productive on day 1', 'Collect the content your co-workers have shared with you.', 'https://ph-files.imgix.net/2e92dc96-7fc6-4e4f-85f1-f0ecf28ab5c5?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://ph-files.imgix.net/d1c8ce5d-5162-42a1-b800-30cfdd96e93c?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=635.0358422939069&h=380&fit=max', 2, '2020-04-27 14:51:36'),
(10, 'Entity Pro\r\n', 'Glyph finder app with a passion for good typography. Find symbols you’re searching for instantly or explore new ones by browsing through the Card or List View! Inspect metrics like ascender, descender & x-heights.', 'Ultimate glyph finder for macOS', 'https://ph-files.imgix.net/727c68a1-d128-4243-83db-1c1b47124c8e?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://youtu.be/ObOSO7S4x9I', 2, '2018-07-04 14:53:16'),
(11, 'Clew', 'Clew is your central hub for workplace productivity. Search across all your tools in a snap. No need to dig through apps and folders when everything is searchable and shareable from one tool.', 'Universal search bar for all your cloud apps.', 'https://ph-files.imgix.net/6779c59c-b4c0-4117-9937-9409e28fba67?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://youtu.be/u-yl1XxVDRI', 2, '2017-11-16 14:57:09'),
(12, 'CoScreen', 'CoScreen is radically focused on highly agile teams. Any window you drag & drop to your extended screen appears on the extended screens of your peers and vice versa. Everyone has their own mouse pointer and can simultaneously interact with any window.', 'Radically different remote collaboration & screensharing', 'https://ph-files.imgix.net/0eca9d83-1826-4768-8d24-fd472ccd9867?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://youtu.be/gHI5-ne2F2I', 2, '2017-10-17 14:58:33'),
(13, 'Stay The Fuck Inside ', 'A video-chat ready drinking game designed to loosen up your next Zoom, FaceTime, or Hangouts call. Each game consists of 150 cards across 6 game modes that keep gameplay fresh & engaging. All profits are donated to Meals on Wheels. PLEASE STAY THE FUCK INSIDE.', '100% of profits go to COVID-19 relief. Perfect for Zoom.', 'https://ph-files.imgix.net/03e486e7-aeaa-4752-b053-c87fb624c0f0?auto=format&auto=compress&codec=mozjpeg&cs=strip&fit=crop', 'https://youtu.be/aAkc2gkCTA0', 4, '2019-10-02 15:00:13'),
(14, 'Qubes', 'QUBES is a fun puzzle game where you have to push the boxes to their happy places.', 'Fun puzzle game. Available to play online', 'https://ph-files.imgix.net/f96c3e91-83c9-4662-b1b3-344356966c39?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://youtu.be/0lP8Q6u1Shw', 4, '2020-05-03 15:02:40'),
(15, 'Password of The Day', 'Each day we text out the login info to a mystery account (like Netflix, Amazon Prime, Spotify, and so on). Players proceed to scour the internet and find what account that info is for. If you can login first, it’s yours.', 'Internet treasure hunt', 'https://ph-files.imgix.net/7db36406-b71e-4bf7-b7a4-d449dd557159?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://ph-files.imgix.net/ae8f251b-5c84-4580-8033-21371e120917?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=570&h=380&fit=max', 4, '2020-01-03 15:04:01'),
(16, 'Animar 2.0\r\n', 'We are pleased to announce the launch of brand new Animar with great new features!\r\n*Rescue wild animals from circus\r\n*Explore the world through the animal dreams in video format\r\n*Meditate with animals and improve your health\r\n*Play in 3D with gorgeous interiors', 'Augmented reality tamagotchi with real wild animals', 'https://ph-files.imgix.net/ae6c627d-5b78-4048-a9e2-4d7dbd16cd3b?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://youtu.be/8JIFDD2lebQ', 4, '2019-07-06 15:09:49'),
(17, 'Good Books', 'Good Books is a curated collection of book recommendations from the world\'s most successful, influential and interesting people. We\'ve spent 6 months analysing 15,000+ book recommendations and have handpicked the best to add to your reading list.', 'Largest curated collection of 6,500+ book recommendations.', 'https://ph-files.imgix.net/a8f78f31-239e-44a6-a3d1-d255b346f8c1?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://ph-files.imgix.net/ba14c68a-252d-4879-81b2-daf2021ffbed?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=635&h=380&fit=max', 5, '2020-05-05 15:12:08'),
(18, 'Get Ready', 'Stuck at home, everyone is experiencing new constraints - professional & personal - that have changed our lives forever. We wanted to share inspiring stories from our colleagues, customers & community about how they Get Ready for what\'s coming next.', 'Learn how the likes of Drift, Gong & Twilio adapt and learn.', 'https://ph-files.imgix.net/14924206-8c3a-42c7-bdf2-80b4f8d822d8?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://youtu.be/bWL5I35cXRI', 5, '2020-04-27 15:14:11'),
(19, 'NextBook', 'NextBook is a robust recommendation system to help you find the next book to read. Based on your preferences, we filter through 10K books from a diverse array of genres and over 6M ratings to curate the the best possible set of recommendations.', 'Discover the next book to read based on your preferences', 'https://ph-files.imgix.net/106fa353-788d-4494-b3e1-8686764a73b6?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://youtu.be/lBlrvloklig', 5, '2019-06-05 15:15:12'),
(20, 'Mystery Books', 'The COVID-19 pandemic has put many local shopkeepers at risk of closing. Mystery books supports independent bookstores deliver mystery books pack to  those bored of being stuck inside. All proceeds go to local book stores!', 'Support local independent bookstores in need', 'https://ph-files.imgix.net/6cd58a53-461f-40fa-afcb-9d6ac1021add?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=80&h=80&fit=crop', 'https://ph-files.imgix.net/6ae2621d-7833-4d67-9da4-bd75c4661a18?auto=format&auto=compress&codec=mozjpeg&cs=strip&w=635&h=380&fit=max', 5, '2019-10-09 15:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `ip_address`, `created_at`) VALUES
(1, 'Pierre', NULL, '2020-05-21 11:52:25'),
(2, 'Christophe', NULL, '2020-05-21 12:27:52'),
(3, 'Olivier', NULL, '2020-05-21 14:09:21'),
(4, 'sophie', NULL, '2020-05-21 16:55:10'),
(5, 'Hervé', NULL, '2020-05-22 07:33:05'),
(6, 'Bruno', NULL, '2020-05-22 07:40:29'),
(7, 'Nate', NULL, '2020-05-22 07:59:54'),
(8, 'Erwan', NULL, '2020-05-22 11:09:35'),
(9, 'Esther', NULL, '2020-05-22 11:28:47'),
(10, 'Maryon', NULL, '2020-05-22 11:32:15'),
(11, 'Simone', NULL, '2020-05-22 11:33:44'),
(12, 'Louise', NULL, '2020-05-22 11:36:52'),
(13, 'Pamela', NULL, '2020-05-22 12:02:53'),
(14, 'Irvin', NULL, '2020-05-22 12:06:32'),
(15, 'Ian', NULL, '2020-05-22 12:08:39'),
(16, 'Pauline', NULL, '2020-05-22 12:17:43'),
(17, 'Paco', NULL, '2020-05-22 12:36:02'),
(18, 'Nina', NULL, '2020-05-22 12:38:03'),
(19, 'Patrick', NULL, '2020-05-22 12:38:14'),
(20, 'Perle', NULL, '2020-05-22 13:21:12'),
(21, 'Pedro', NULL, '2020-05-22 13:47:22'),
(22, 'Audrène', NULL, '2020-05-22 14:03:44'),
(23, 'Audrey', NULL, '2020-05-22 14:05:51'),
(24, 'leo', NULL, '2020-05-23 14:00:59'),
(25, 'Ursulla', NULL, '2020-05-23 16:30:57'),
(26, 'rémi', NULL, '2020-05-23 17:00:31'),
(27, 'Arjunan', NULL, '2020-05-23 17:06:48'),
(28, 'Glenn', NULL, '2020-05-23 17:13:24'),
(29, 'Hermione', NULL, '2020-05-23 17:22:48'),
(30, 'William', NULL, '2020-05-23 17:32:24'),
(31, 'Leanne', NULL, '2020-05-23 17:39:57'),
(32, 'Luce', NULL, '2020-05-23 17:49:17'),
(33, 'simon', NULL, '2020-05-23 18:00:35'),
(34, 'Lola', NULL, '2020-05-24 17:36:33'),
(35, 'Flo', NULL, '2020-05-24 19:38:30'),
(36, 'Irvina', NULL, '2020-05-24 19:53:03'),
(37, 'Pol', NULL, '2020-05-24 19:54:03'),
(38, 'Clément', NULL, '2020-05-25 15:25:07');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `product_id`) VALUES
(30, 2, 2),
(31, 2, 1),
(32, 2, 3),
(33, 3, 2),
(34, 3, 1),
(35, 3, 3),
(36, 5, 2),
(37, 5, 3),
(38, 5, 4),
(39, 5, 1),
(40, 6, 1),
(41, 6, 3),
(42, 6, 2),
(43, 6, 5),
(44, 6, 6),
(45, 6, 7),
(46, 6, 4),
(47, 6, 10),
(48, 6, 9),
(49, 6, 8),
(50, 7, 1),
(51, 7, 3),
(52, 7, 4),
(53, 7, 2),
(54, 7, 6),
(55, 8, 1),
(56, 8, 4),
(57, 8, 2),
(58, 8, 3),
(59, 9, 1),
(60, 9, 2),
(61, 9, 4),
(62, 9, 3),
(63, 10, 1),
(64, 10, 2),
(65, 10, 3),
(66, 10, 4),
(67, 11, 1),
(68, 11, 2),
(69, 11, 4),
(70, 11, 3),
(71, 12, 1),
(72, 12, 2),
(73, 12, 4),
(74, 12, 3),
(78, 12, 6),
(80, 13, 1),
(81, 13, 2),
(82, 13, 3),
(83, 13, 4),
(84, 14, 4),
(85, 14, 3),
(86, 14, 2),
(87, 14, 1),
(88, 15, 3),
(89, 15, 1),
(90, 15, 4),
(91, 15, 2),
(92, 16, 2),
(93, 16, 1),
(94, 16, 3),
(95, 16, 4),
(96, 17, 2),
(97, 17, 4),
(98, 17, 1),
(99, 19, 2),
(100, 19, 4),
(101, 19, 3),
(102, 19, 1),
(103, 19, 6),
(104, 20, 1),
(105, 20, 2),
(106, 20, 3),
(107, 20, 4),
(108, 21, 2),
(109, 21, 1),
(110, 21, 4),
(111, 21, 3),
(112, 21, 6),
(113, 21, 7),
(114, 21, 8),
(115, 21, 5),
(116, 21, 9),
(117, 21, 10),
(118, 21, 17),
(119, 21, 14),
(120, 21, 18),
(121, 21, 15),
(122, 22, 4),
(123, 22, 3),
(124, 22, 1),
(125, 22, 2),
(126, 22, 6),
(127, 22, 5),
(128, 22, 7),
(129, 22, 8),
(130, 22, 9),
(131, 22, 10),
(132, 23, 6),
(133, 23, 5),
(134, 23, 7),
(135, 23, 8),
(136, 23, 9),
(137, 23, 10),
(138, 23, 14),
(139, 23, 15),
(140, 23, 17),
(141, 23, 18),
(142, 23, 3),
(143, 23, 1),
(144, 23, 2),
(145, 23, 4),
(146, 23, 20),
(147, 24, 2),
(148, 24, 1),
(149, 24, 3),
(150, 24, 4),
(151, 24, 6),
(152, 24, 5),
(153, 24, 7),
(154, 24, 8),
(155, 24, 14),
(156, 24, 17),
(157, 24, 18),
(158, 24, 10),
(159, 24, 9),
(160, 24, 15),
(161, 25, 1),
(162, 25, 2),
(163, 25, 3),
(164, 25, 4),
(165, 25, 10),
(166, 26, 1),
(167, 26, 2),
(168, 26, 3),
(169, 26, 4),
(170, 26, 6),
(171, 26, 10),
(172, 26, 5),
(173, 26, 9),
(174, 26, 18),
(175, 26, 17),
(176, 27, 1),
(177, 27, 2),
(178, 27, 3),
(179, 27, 4),
(180, 27, 6),
(181, 27, 10),
(182, 27, 15),
(183, 27, 14),
(184, 28, 2),
(185, 28, 6),
(186, 28, 4),
(187, 28, 10),
(188, 28, 3),
(189, 28, 5),
(190, 28, 1),
(191, 28, 18),
(192, 28, 17),
(193, 28, 15),
(194, 28, 14),
(195, 29, 1),
(196, 29, 2),
(197, 29, 3),
(198, 29, 4),
(199, 29, 8),
(200, 29, 15),
(201, 29, 14),
(202, 29, 6),
(203, 29, 10),
(204, 29, 5),
(205, 29, 9),
(206, 29, 7),
(207, 29, 17),
(208, 29, 18),
(209, 30, 3),
(210, 30, 2),
(211, 30, 6),
(212, 30, 1),
(213, 30, 4),
(214, 31, 17),
(215, 31, 3),
(216, 31, 14),
(217, 31, 4),
(218, 31, 6),
(219, 31, 18),
(220, 31, 2),
(221, 31, 5),
(222, 32, 1),
(223, 32, 6),
(224, 32, 4),
(225, 32, 3),
(226, 32, 15),
(227, 32, 2),
(228, 33, 4),
(229, 33, 14),
(230, 33, 9),
(231, 34, 1),
(232, 34, 3),
(233, 34, 5),
(234, 34, 17),
(235, 34, 4),
(236, 34, 6),
(237, 34, 14),
(238, 34, 2),
(239, 34, 10),
(240, 34, 18),
(241, 34, 7),
(242, 34, 8),
(243, 35, 3),
(244, 35, 1),
(245, 35, 4),
(246, 35, 6),
(247, 35, 18),
(248, 35, 7),
(249, 35, 15),
(250, 35, 8),
(251, 14, 8),
(252, 14, 7),
(253, 14, 18),
(254, 14, 5),
(255, 14, 10),
(256, 14, 6),
(257, 36, 2),
(258, 36, 3),
(259, 36, 17),
(260, 36, 4),
(261, 36, 1),
(262, 37, 1),
(263, 37, 4),
(264, 37, 6),
(265, 37, 2),
(266, 37, 10),
(267, 38, 2),
(268, 38, 4),
(269, 38, 3),
(270, 38, 10),
(271, 38, 7),
(272, 38, 17),
(273, 38, 14),
(274, 38, 18),
(275, 38, 9),
(276, 38, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

