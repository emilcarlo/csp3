-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2018 at 08:25 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstoneiii`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Carlo Tapire', 'carlo@gmail.com', '$2y$10$N27KmmCtF6LOSXOkmpO4reCYlcHY8IPqIPI0Hd8.mbKkyksoX4Cd6', '4774119', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'Category', 'Category', '2018-03-07 06:01:35', '2018-03-07 06:01:35'),
(4, 'Blog', 'Blog', '2018-03-07 06:21:25', '2018-03-07 06:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 3, '2018-03-07 06:21:03', '2018-03-07 06:21:03'),
(3, 4, '2018-03-07 06:21:37', '2018-03-07 06:21:37'),
(4, 4, '2018-03-07 07:46:33', '2018-03-07 07:46:33'),
(10, 3, '2018-03-07 07:47:44', '2018-03-07 07:47:44'),
(5, 4, '2018-03-07 07:47:53', '2018-03-07 07:47:53'),
(8, 4, '2018-03-07 07:48:03', '2018-03-07 07:48:03'),
(11, 4, '2018-03-07 07:48:12', '2018-03-07 07:48:12'),
(6, 4, '2018-03-07 07:48:21', '2018-03-07 07:48:21'),
(7, 3, '2018-03-07 07:55:28', '2018-03-07 07:55:28'),
(13, 4, '2018-03-07 08:21:17', '2018-03-07 08:21:17');

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
(41, '2014_10_12_000000_create_users_table', 1),
(42, '2014_10_12_100000_create_password_resets_table', 1),
(43, '2018_03_06_160735_create_posts_table', 1),
(44, '2018_03_06_162724_create_tags_table', 1),
(45, '2018_03_06_162735_create_categories_table', 1),
(46, '2018_03_06_162856_create_category_posts_table', 1),
(47, '2018_03_06_162951_create_post_tags_table', 1),
(48, '2018_03_06_163101_create_admins_table', 1),
(49, '2018_03_06_163249_create_roles_table', 1),
(50, '2018_03_06_163410_create_admin_roles_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like` int(11) DEFAULT NULL,
  `dislike` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `slug`, `body`, `status`, `posted_by`, `image`, `like`, `dislike`, `created_at`, `updated_at`) VALUES
(3, 'Man must explore, and this is exploration at its greatest', 'Problems look mighty small from 150 miles up', 'man-must-explore-and-this-is-exploration-at-its-greatest', '<p>Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center because every point, or none, is center &mdash; an equal earth which all men occupy as equals. The airman&#39;s earth, if free men make it, will be truly round: a globe in practice, not in theory.</p>\r\n\r\n<p>Science cuts two ways, of course; its products can be used for both good and evil. But there&#39;s no turning back from science. The early warnings about technological dangers also come from science.</p>\r\n\r\n<p>What was most significant about the lunar voyage was not that man set foot on the Moon but that they set eye on the earth.</p>\r\n\r\n<p>A Chinese tale tells of some men sent to harm a young girl who, upon seeing her beauty, become her protectors rather than her violators. That&#39;s how I felt seeing the Earth for the first time. I could not help but love and cherish her.</p>\r\n\r\n<p>For those who have seen the Earth from space, and for the hundreds and perhaps thousands more who will, the experience most certainly changes your perspective. The things that we share in our world are far more valuable than those which divide us.</p>\r\n\r\n<h2>The Final Frontier</h2>\r\n\r\n<p>There can be no thought of finishing for &lsquo;aiming for the stars.&rsquo; Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>\r\n\r\n<p>There can be no thought of finishing for &lsquo;aiming for the stars.&rsquo; Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>\r\n\r\n<blockquote>The dreams of yesterday are the hopes of today and the reality of tomorrow. Science has not yet mastered prophecy. We predict too much for the next year and yet far too little for the next ten.</blockquote>\r\n\r\n<p>Spaceflights cannot be stopped. This is not the work of any one man or even a group of men. It is a historical process which mankind is carrying out in accordance with the natural laws of human development.</p>\r\n\r\n<h2>Reaching for the Stars</h2>\r\n\r\n<p>As we got further and further away, it [the Earth] diminished in size. Finally it shrank to the size of a marble, the most beautiful you can imagine. That beautiful, warm, living object looked so fragile, so delicate, that if you touched it with a finger it would crumble and fall apart. Seeing this has to change a man.</p>\r\n\r\n<p><a href=\"http://localhost:8000/post#\"><img alt=\"\" src=\"http://localhost:8000/img/post-sample-image.jpg\" /></a>To go places and do things that have never been done before &ndash; that&rsquo;s what living is all about.</p>\r\n\r\n<p>Space, the final frontier. These are the voyages of the Starship Enterprise. Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before.</p>\r\n\r\n<p>As I stand out here in the wonders of the unknown at Hadley, I sort of realize there&rsquo;s a fundamental truth to our nature, Man must explore, and this is exploration at its greatest.</p>\r\n\r\n<p>Placeholder text by&nbsp;<a href=\"http://spaceipsum.com/\">Space Ipsum</a>. Photographs by&nbsp;<a href=\"https://www.flickr.com/photos/nasacommons/\">NASA on The Commons</a>.</p>', 1, NULL, 'public/lvZ3r0h12vCCwIgrcT6MQO6HPSJgN9JoTiHPJ0me.jpeg', NULL, NULL, '2018-03-07 05:56:51', '2018-03-07 08:16:45'),
(4, '2nd', '2nd', '2nd', '<p><u><em><strong>2nd</strong></em></u></p>', 1, NULL, NULL, NULL, NULL, '2018-03-07 06:39:07', '2018-03-07 06:48:11'),
(5, '3rd', '3rd', '3rd', '<p>3rd</p>', 1, NULL, NULL, NULL, NULL, '2018-03-07 06:39:26', '2018-03-07 06:39:26'),
(6, '4th', '4th', '4th', '<p>4th</p>', 1, NULL, NULL, NULL, NULL, '2018-03-07 06:39:42', '2018-03-07 06:39:42'),
(7, '5th', '5th', '5th', '<p>5th</p>', 1, NULL, NULL, NULL, NULL, '2018-03-07 06:40:21', '2018-03-07 06:40:21'),
(8, '6th', '6th', '6th', '<p>6th</p>', 1, NULL, NULL, NULL, NULL, '2018-03-07 06:40:39', '2018-03-07 06:41:12'),
(9, '7th', '7th', '7th', '<p>7th</p>', 1, NULL, NULL, NULL, NULL, '2018-03-07 06:40:56', '2018-03-07 06:41:04'),
(10, '8th', '8th', '8th', '<p>8th</p>', 1, NULL, NULL, NULL, NULL, '2018-03-07 06:41:35', '2018-03-07 06:41:35'),
(11, '9th', '9th', '9th', '<p>9th</p>', 1, NULL, NULL, NULL, NULL, '2018-03-07 06:41:57', '2018-03-07 06:41:57'),
(12, '10th', '10th', '10th', '<p>10th</p>', 1, NULL, NULL, NULL, NULL, '2018-03-07 06:42:19', '2018-03-07 06:42:19'),
(13, 'Title', 'subtitle', 'Tag 1', '<p>Test</p>', 1, NULL, 'public/1znhVKf4czkjBDbHUaFWutMLNPZcfM0KQZ9M5EdQ.jpeg', NULL, NULL, '2018-03-07 08:21:17', '2018-03-07 08:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(3, 1, '2018-03-07 05:56:51', '2018-03-07 05:56:51'),
(3, 2, '2018-03-07 06:22:07', '2018-03-07 06:22:07'),
(4, 1, '2018-03-07 07:46:33', '2018-03-07 07:46:33'),
(4, 2, '2018-03-07 07:46:33', '2018-03-07 07:46:33'),
(6, 2, '2018-03-07 07:55:16', '2018-03-07 07:55:16'),
(7, 2, '2018-03-07 07:55:28', '2018-03-07 07:55:28'),
(13, 1, '2018-03-07 08:21:17', '2018-03-07 08:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tag 1', 'Tag 1', '2018-03-07 05:12:09', '2018-03-07 05:12:09'),
(2, 'Super', 'Super', '2018-03-07 06:21:53', '2018-03-07 06:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Standard User', 'standarduser@gmail.com', '$2y$10$N27KmmCtF6LOSXOkmpO4reCYlcHY8IPqIPI0Hd8.mbKkyksoX4Cd6', 'TEwLfhwttuypOxrFnmxJDeZ27qzyZn7cejzabKjwn5KbYa0DZjfxRwXFm1J7', '2018-03-07 08:32:10', '2018-03-07 08:32:10'),
(2, 'Standard User 2', 'standarduser2@gmail.com', '$2y$10$vcUL.9iA2CjyEPTTjSpjh.JoIyhmmwi2kbPjBZ5exSUN2b83UU8B6', 'ZRYkpPQ0Ljgi5zCtuop0oRVVlOheo4euCzIWPUNqsaxp4lp7Ytp5VopNYkhJ', '2018-03-07 08:32:55', '2018-03-07 08:32:55'),
(3, 'Standard User 3', 'standarduser3@gmail.com', '$2y$10$GBQV97KL43VnTNZlL1XaR.Wi/baUHitjzwIqI9x/MjWCADlEKUdnW', 'zuoawPkGGOFd4PN0KDqMxMOZ8QJMIGOILyI0fv9bn4lkUOFtKxv3K2uhHXBX', '2018-03-07 08:52:26', '2018-03-07 08:52:26'),
(4, 'standard user 4', 'standarduser4@gmail.com', '$2y$10$By9mISJjvWHWey0aw9arBez1nVuRd8nIBU9F88blzwstFVk4u6.36', 'GOz2vzb6evsZABhmnLV53dBRzNn8IkLHautBBmMPFsQNkoRpnylFCWOUS3BI', '2018-03-07 09:04:33', '2018-03-07 09:04:33'),
(5, 'Emil Carlo Tapire', 'emilcarlotapire@gmail.com', '$2y$10$duyElUu9S.Zh.pp.FLH2r.v90799REMbfTET6HHQsq5L0Cs3hEarm', 'ISFoBbUdYluSOpz1eyuL3YrNnbuR4U9BJFx5iPAWCPUjVueQVDh7YOrMGg7X', '2018-03-07 09:34:04', '2018-03-07 09:34:04'),
(6, 'New again', 'na@gmail.com', '$2y$10$myaMOFigqKhD/1RA9ARk/eVRUyAxMisF7hZzL.0veUSRblG7Nntvy', '4UNc0AvnEJD9pUtpy1LesPiykKMzL1Kb7l5wTNfw3nEZn6h0iupWf4xhZRfC', '2018-03-07 10:36:41', '2018-03-07 10:36:41'),
(7, 'New Again', 'nauser@gmail.com', '$2y$10$/YTEdlaLebarLpsbs3BKA.uNaikBseCfH88aJheDokespeGGLZXMq', 'TEoQCTBArAB7Fh7Hnm7QNszNbjJZkdGlvldwNAXFVbfIVaHnbmn2PPbzPGcy', '2018-03-07 10:43:47', '2018-03-07 10:43:47'),
(8, 'esyu', 'esyu@gmail.com', '$2y$10$uGpacktsPEj1Mzm3iyuCB.AD8BgTOw1CztaDHAOMVyw.d66Foo.5e', 'J5XtcsV3mQ1PsZkRStE0ygtiBAlTenj3BU1fVQaZpWX2JqfZ17NkSkkHKn19', '2018-03-07 10:47:31', '2018-03-07 10:47:31'),
(9, 'again', 'again@gmail.com', '$2y$10$Pgs8rh80tVHcVb7xnjnw3.j3qL5b7xXuE6BNb5PD/Bb3UoDG0QY/i', 'RLl9RRWcaqdKYCYknRe8TF7sQXYkmRUxwQbR4FPHgBiXW1DUqnmI2C02P80C', '2018-03-07 11:11:36', '2018-03-07 11:11:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD KEY `category_posts_post_id_index` (`post_id`),
  ADD KEY `category_posts_category_id_index` (`category_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_post_id_index` (`post_id`),
  ADD KEY `post_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
