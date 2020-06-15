-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2020 at 09:52 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `author`, `body`) VALUES
(2, 10, 'JANE INSTRUCTOR', 'THIS IS COMMENT FOR ID 10'),
(8, 10, 'ghjhgg', 'jhhjkkhjhkj');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `filename` varchar(255) NOT NULL,
  `alternate_text` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `caption`, `description`, `filename`, `alternate_text`, `type`, `size`, `user_id`) VALUES
(10, 'Some title', 'new caption', 'nex description', 'images-12.jpg', 'new alternative text', 'image/jpeg', 18540, 0),
(15, '2', '', '', 'images-5.jpg', '', 'image/jpeg', 33192, 0),
(16, '3', '', '', 'images-9.jpg', '', 'image/jpeg', 21108, 0),
(17, '45', '', '', 'images-22.jpg', '', 'image/jpeg', 21133, 0),
(18, '3232', '', '', 'images-28.jpg', '', 'image/jpeg', 17662, 0),
(20, 'da', '', '', '_large_image_1.jpg', '', 'image/jpeg', 479843, 0),
(21, '1q', '', '', '_large_image_2.jpg', '', 'image/jpeg', 309568, 0),
(22, '3q', '', '', '_large_image_4.jpg', '', 'image/jpeg', 554659, 0),
(23, '22q', '', '', 'images-50.jpg', '', 'image/jpeg', 21652, 0),
(24, '441', '', '', 'images-44.jpg', '', 'image/jpeg', 29486, 0),
(25, '33', '', '', 'images-38.jpg', '', 'image/jpeg', 21857, 0),
(26, '', '', '', 'images-13.jpg', '', 'image/jpeg', 22082, 0),
(27, '', '', '', '_large_image_3.jpg', '', 'image/jpeg', 165053, 0),
(28, '', '', '', 'images-42.jpg', '', 'image/jpeg', 22401, 0),
(29, '', '', '', 'images-41.jpg', '', 'image/jpeg', 16296, 0),
(30, '', '', '', 'images-43.jpg', '', 'image/jpeg', 27955, 0),
(31, '', '', '', 'images-2.jpg', '', 'image/jpeg', 18578, 0),
(32, '', '', '', 'images-3.jpg', '', 'image/jpeg', 18096, 0),
(33, '', '', '', 'images-4.jpg', '', 'image/jpeg', 23270, 0),
(34, '', '', '', 'images-8.jpg', '', 'image/jpeg', 20810, 0),
(35, '', '', '', 'images-10.jpg', '', 'image/jpeg', 20401, 0),
(36, '', '', '', 'images-11.jpg', '', 'image/jpeg', 27916, 0),
(37, '', '', '', 'images-16.jpg', '', 'image/jpeg', 21133, 0),
(38, '', '', '', 'images-17.jpg', '', 'image/jpeg', 22792, 0),
(39, '', '', '', 'images-18.jpg', '', 'image/jpeg', 27595, 0),
(40, '', '', '', 'images-19.jpg', '', 'image/jpeg', 22792, 0),
(41, '', '', '', 'images-20.jpg', '', 'image/jpeg', 22942, 0),
(42, '', '', '', 'images-21.jpg', '', 'image/jpeg', 19957, 0),
(43, '', '', '', 'images-23.jpg', '', 'image/jpeg', 22792, 0),
(44, '', '', '', 'images-24.jpg', '', 'image/jpeg', 29850, 0),
(45, '', '', '', 'images-25.jpg', '', 'image/jpeg', 19363, 0),
(46, '', '', '', 'images-26.jpg', '', 'image/jpeg', 21802, 0),
(47, '', '', '', 'images-27.jpg', '', 'image/jpeg', 17662, 0),
(48, '', '', '', 'images-29.jpg', '', 'image/jpeg', 25493, 0),
(49, '', '', '', 'images-30.jpg', '', 'image/jpeg', 20257, 0),
(50, '', '', '', 'images-31.jpg', '', 'image/jpeg', 20928, 0),
(51, '', '', '', 'images-32.jpg', '', 'image/jpeg', 22772, 0),
(52, '', '', '', 'images-33.jpg', '', 'image/jpeg', 16855, 0),
(53, '', '', '', 'images-34.jpg', '', 'image/jpeg', 23587, 0),
(54, '', '', '', 'images-35.jpg', '', 'image/jpeg', 23672, 0),
(55, '', '', '', 'images-36.jpg', '', 'image/jpeg', 21672, 0),
(56, '', '', '', 'images-37.jpg', '', 'image/jpeg', 20381, 0),
(57, '', '', '', 'images-39.jpg', '', 'image/jpeg', 24969, 0),
(58, '', '', '', 'images-40.jpg', '', 'image/jpeg', 24385, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_role` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_role`, `username`, `password`, `first_name`, `last_name`, `user_image`) VALUES
(18, 1, 'jane', 'jane', 'jane', 'jane', 'images-38.jpg'),
(20, 1, 'user10', 'useruser', 'user10', 'user10', 'images-1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`photo_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
