-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: May 19, 2020 at 10:08 AM
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
(140, 'Sophie', NULL, '2020-05-13 10:14:28'),
(141, 'Olivier', NULL, '2020-05-13 10:15:08'),
(142, 'Véro', NULL, '2020-05-13 11:04:05'),
(143, 'luke', NULL, '2020-05-14 13:46:40'),
(144, 'Roy', NULL, '2020-05-14 15:38:07'),
(145, 'sfqdsf', NULL, '2020-05-14 15:43:07'),
(146, 'Paul', NULL, '2020-05-14 16:20:50'),
(147, 'Matthias', NULL, '2020-05-14 17:51:36'),
(148, 'Pierre', NULL, '2020-05-14 17:57:40'),
(149, 'Juan', NULL, '2020-05-14 18:01:02'),
(150, 'Sylvain', NULL, '2020-05-14 18:02:12'),
(151, 'yo', NULL, '2020-05-14 18:02:48'),
(152, 'lol', NULL, '2020-05-14 18:03:47'),
(153, 'zorro', NULL, '2020-05-14 18:30:28'),
(154, 'maryon', NULL, '2020-05-14 20:33:50'),
(155, 'Lucas', NULL, '2020-05-14 20:41:18'),
(156, 'Sil', NULL, '2020-05-14 20:44:34'),
(157, 'Vincent', NULL, '2020-05-14 20:49:32'),
(158, 'Pedro', NULL, '2020-05-15 09:54:52'),
(159, 'Jen', NULL, '2020-05-15 11:19:25'),
(160, 'Pablo', NULL, '2020-05-15 11:24:25'),
(161, 'Liv', NULL, '2020-05-15 11:25:52'),
(162, 'tina', NULL, '2020-05-15 13:21:42'),
(163, 'Paola', NULL, '2020-05-15 13:27:46'),
(164, 'Nina', NULL, '2020-05-15 13:46:50'),
(165, 'LEON', NULL, '2020-05-15 14:38:40'),
(166, 'Bjork', NULL, '2020-05-15 15:48:45'),
(167, 'David', NULL, '2020-05-15 15:51:39'),
(168, 'GAEL', NULL, '2020-05-15 16:15:25'),
(169, 'Marie', NULL, '2020-05-15 17:19:57'),
(170, 'ruth', NULL, '2020-05-15 17:49:26'),
(171, 'alice', NULL, '2020-05-15 18:14:31'),
(172, 'Louise', NULL, '2020-05-15 18:48:16'),
(173, 'rémi', NULL, '2020-05-15 18:51:43'),
(174, 'barbie', NULL, '2020-05-15 18:55:37'),
(175, 'mathis', NULL, '2020-05-15 20:41:12'),
(176, 'mathilde', NULL, '2020-05-16 10:00:33'),
(177, 'simmone', NULL, '2020-05-16 12:12:52'),
(178, 'greg', NULL, '2020-05-16 18:35:11'),
(179, 'sami', NULL, '2020-05-16 21:53:12'),
(180, 'hervé', NULL, '2020-05-16 23:14:14'),
(181, 'Lola', NULL, '2020-05-16 23:14:50'),
(182, 'Loul', NULL, '2020-05-17 10:16:40'),
(183, 'leojen23', NULL, '2020-05-17 17:58:01'),
(184, 'rené', NULL, '2020-05-17 18:59:16'),
(185, 'paolo', NULL, '2020-05-17 19:07:01'),
(186, 'rita', NULL, '2020-05-17 21:56:05'),
(187, 'Janette', NULL, '2020-05-18 09:07:27');

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
(290, 186, 3),
(54, 168, 8),
(87, 170, 8),
(186, 179, 8),
(218, 181, 8),
(263, 185, 8),
(82, 152, 9),
(41, 168, 9),
(95, 170, 9),
(184, 179, 9),
(215, 181, 9),
(149, 141, 10),
(40, 168, 10),
(158, 175, 10),
(185, 179, 10),
(229, 182, 10),
(287, 186, 10),
(48, 168, 11),
(98, 170, 11),
(34, 168, 12),
(103, 171, 12),
(142, 141, 13),
(8, 148, 13),
(81, 152, 13),
(4, 164, 13),
(18, 165, 13),
(27, 167, 13),
(31, 168, 13),
(72, 169, 13),
(89, 170, 13),
(99, 171, 13),
(118, 172, 13),
(131, 173, 13),
(139, 174, 13),
(154, 175, 13),
(172, 178, 13),
(201, 180, 13),
(213, 181, 13),
(230, 182, 13),
(259, 185, 13),
(145, 141, 14),
(11, 148, 14),
(86, 152, 14),
(20, 165, 14),
(22, 166, 14),
(24, 167, 14),
(30, 168, 14),
(75, 169, 14),
(111, 171, 14),
(123, 172, 14),
(153, 175, 14),
(195, 180, 14),
(208, 181, 14),
(222, 182, 14),
(238, 183, 14),
(256, 184, 14),
(257, 185, 14),
(284, 186, 14),
(292, 187, 14),
(141, 141, 15),
(12, 148, 15),
(76, 152, 15),
(3, 164, 15),
(21, 165, 15),
(35, 168, 15),
(91, 170, 15),
(112, 171, 15),
(126, 172, 15),
(135, 173, 15),
(151, 175, 15),
(194, 180, 15),
(203, 181, 15),
(221, 182, 15),
(286, 186, 15),
(1, 140, 17),
(2, 141, 17),
(80, 152, 17),
(56, 168, 17),
(164, 175, 17),
(236, 182, 17),
(255, 184, 17),
(261, 185, 17),
(150, 141, 18),
(78, 152, 18),
(42, 168, 18),
(88, 170, 18),
(165, 175, 18),
(216, 181, 18),
(144, 141, 19),
(84, 152, 19),
(5, 164, 19),
(29, 168, 19),
(71, 169, 19),
(93, 170, 19),
(110, 171, 19),
(121, 172, 19),
(133, 173, 19),
(152, 175, 19),
(169, 176, 19),
(183, 179, 19),
(196, 180, 19),
(204, 181, 19),
(223, 182, 19),
(239, 183, 19),
(258, 185, 19),
(285, 186, 19),
(83, 152, 20),
(39, 168, 20),
(100, 171, 20),
(217, 181, 20),
(228, 182, 20),
(289, 186, 20);

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
  ADD UNIQUE KEY `product_id` (`product_id`,`user_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

