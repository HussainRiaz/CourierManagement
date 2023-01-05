-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2022 at 12:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(30) NOT NULL,
  `branch_code` varchar(50) NOT NULL,
  `street` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `country` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_code`, `street`, `city`, `state`, `zip_code`, `country`, `contact`, `date_created`) VALUES
(1, 'vzTL0PqMogyOWhF', 'Branch 1 St., Quiapo', 'Manila', 'Metro Manila', '1001', 'Philippines', '+2 123 455 623', '2020-11-26 11:21:41'),
(3, 'KyIab3mYBgAX71t', 'SAmple', 'Cebu', 'Cebu', '6000', 'Philippines', '+1234567489', '2020-11-26 16:45:05'),
(4, 'dIbUK5mEh96f0Zc', 'Sample', 'Sample', 'Sample', '123456', 'Philippines', '123456', '2020-11-27 13:31:49'),
(5, 'gNhp2XJbEZk5wrF', 'New York', 'Nevada', 'Nevada', '123111', 'USA', '03022011212', '2022-08-04 19:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `parcels`
--

CREATE TABLE `parcels` (
  `id` int(30) NOT NULL,
  `reference_number` varchar(100) NOT NULL,
  `sender_name` text NOT NULL,
  `sender_address` text NOT NULL,
  `sender_contact` text NOT NULL,
  `recipient_name` text NOT NULL,
  `recipient_address` text NOT NULL,
  `recipient_contact` text NOT NULL,
  `type` int(1) NOT NULL COMMENT '1 = Deliver, 2=Pickup',
  `from_branch_id` varchar(30) NOT NULL,
  `to_branch_id` varchar(30) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `width` varchar(100) NOT NULL,
  `length` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parcels`
--

INSERT INTO `parcels` (`id`, `reference_number`, `sender_name`, `sender_address`, `sender_contact`, `recipient_name`, `recipient_address`, `recipient_contact`, `type`, `from_branch_id`, `to_branch_id`, `weight`, `height`, `width`, `length`, `price`, `status`, `date_created`, `email`) VALUES
(4, '514912669061', 'Adrian Mercurio', 'Brgy. Su-ay Himamaylan City, Negros Occidental', '+123456', 'Adones Evangelista', 'Brgy. Tan-awan Kabankalan City, Negros Occidental', '+12345', 2, '1', '3', '23kg', '12in', '12in', '15in', 1900, 0, '2020-11-27 13:52:14', NULL),
(6, '505604168988', 'Adrian Mercurio', 'Brgy. Su-ay Himamaylan City, Negros Occidental', '+123456', 'angel jude suarez', 'Manila, Philippines', '+12345', 2, '1', '3', '23kg', '12in', '12in', '15in', 2500, 6, '2020-11-27 14:06:42', NULL),
(7, '756763049527', 'Hussain Riaz', 'Fb Area', '03042231980', 'Muzammil Kamran', 'Street no', '03052231980', 2, '3', '4', '5', '6', '6', '4', 1900, 0, '2022-08-04 19:27:16', NULL),
(9, '599462896367', 'Hussain Riaz', 'Fb Area', '03042231980', 'Hussain Riaz', 'Fb Area', '03323213', 2, '4', '3', '54', '5', '8', '7', 2000, 0, '2022-08-04 20:59:04', NULL),
(10, '832179335583', 'Muzammil', 'Kamran', '03042231980', 'Hussain Riaz', 'Fb Area', '03323213', 2, '5', '3', '54', '5', '8', '7', 2000, 0, '2022-08-04 22:45:02', NULL),
(11, '139024054560', 'Hussain Riaz', 'Fb Area', '03042231980', 'Hussain Riaz', 'Fb Area', '03052231980', 1, '5', '', '5', '5', '6', '7', 2000, 0, '2022-08-04 23:37:37', NULL),
(12, '849553053448', 'Hussain Riaz', 'Fb Area', '03042231980', 'Hussain Riaz', 'Fb Area', '03052231980', 2, '5', '3', '5', '5', '6', '7', 2000, 0, '2022-08-04 23:38:02', NULL),
(13, '956069876394', 'Hussain Riaz', 'Fb Area', '03042231980', 'Hussain Riaz', 'Fb Area', '03323213', 1, '10', '', '54', '6', '8', '4', 2000, 0, '2022-08-05 14:33:37', 'hussainriaz@hotmail.com'),
(14, '566324758678', 'Hussain Riaz', 'Fb Area', '03042231980', 'Unknown', 'Fb Area', '03323213', 2, '3', '5', '54', '6', '8', '7', 2000, 0, '2022-08-05 14:50:03', 'hussainriaz@hotmail.com'),
(15, '939803443452', 'Hussain Riaz', 'Fb Area', '03042231980', 'Hussain Riaz', 'Fb Area', '03323213', 1, '3', '', '54', '6', '8', '7', 2000, 0, '2022-08-05 15:33:26', 'hussainriaz@hotmail.com'),
(16, '136157964503', 'Unknown', 'Fb Area', '03042231980', 'Hussain Riaz', 'Fb Area', '03323213', 2, '4', '1', '54', '6', '8', '7', 2000, 0, '2022-08-05 15:34:05', 'hussainriaz@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `parcel_tracks`
--

CREATE TABLE `parcel_tracks` (
  `id` int(30) NOT NULL,
  `parcel_id` int(30) NOT NULL,
  `status` int(2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parcel_tracks`
--

INSERT INTO `parcel_tracks` (`id`, `parcel_id`, `status`, `date_created`) VALUES
(1, 2, 1, '2020-11-27 09:53:27'),
(2, 3, 1, '2020-11-27 09:55:17'),
(3, 1, 1, '2020-11-27 10:28:01'),
(4, 1, 2, '2020-11-27 10:28:10'),
(5, 1, 3, '2020-11-27 10:28:16'),
(6, 1, 4, '2020-11-27 11:05:03'),
(7, 1, 5, '2020-11-27 11:05:17'),
(8, 1, 7, '2020-11-27 11:05:26'),
(9, 3, 2, '2020-11-27 11:05:41'),
(10, 6, 1, '2020-11-27 14:06:57'),
(11, 6, 0, '2022-07-28 18:13:48'),
(12, 6, 9, '2022-07-28 18:14:10'),
(13, 6, 0, '2022-07-28 18:14:20'),
(14, 6, 2, '2022-08-02 17:36:58'),
(15, 6, 6, '2022-08-02 17:54:14'),
(16, 8, 7, '2022-08-04 20:05:35'),
(17, 8, 4, '2022-08-04 20:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Courier Management System APTECH', '-', '-', '--', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1 = admin, 2 = staff',
  `branch_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `branch_id`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, 10, '2020-11-26 10:57:04'),
(2, 'Coco', 'Martin', 'coco@sample.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, 1, '2020-11-26 11:52:04'),
(4, 'Hussain', 'Riaz', 'agent@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, 5, '2022-07-28 18:10:38'),
(5, 'Hussain', 'Riaz', 'hussainspam990@gmail.com', '12345', 2, 0, '2022-08-04 16:13:11'),
(6, 'Hussain', 'Riaz', 'sajwadiaonline@gmail.com', '22121', 2, 0, '2022-08-04 16:13:48'),
(7, 'Hussain', 'Riaz', 'tahseenriaz125@gmail.com', '12345', 2, 0, '2022-08-04 18:36:38'),
(8, 'Hussain', 'Riaz', 'hussain@fgmail.com', '1213', 2, 0, '2022-08-04 18:37:11'),
(9, 'Hussain', 'Riaz', '21313', '$2y$10$SXsVQSnYXfcy4UAF7r70dOdbYks25ZJEW/gtrehuZ1YGxVsFR4JTC', 2, 0, '2022-08-04 19:07:48'),
(10, 'Hussain', 'Riaz', '11233', '60e4ac6a656ef4b4fd82aaaf25f14736', 2, 0, '2022-08-04 19:19:01'),
(11, 'Hussain', 'Riaz', 'Hussainrrrr@gmail.com', '82680bfec0fa08346c1b10d30a3e3d4a', 2, 0, '2022-08-04 19:20:12'),
(12, 'Hussain', 'Riaz', 'hussainriaz@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 3, 0, '2022-08-04 19:25:30'),
(13, 'Hussain', 'Riaz', 'unknown@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, 0, '2022-08-04 21:29:16'),
(14, 'Muzammil', 'Kamran', 'muzammil@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 3, 0, '2022-08-04 21:37:36'),
(15, 'Hussain', 'Riaz', 'unknown2@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 3, 3, '2022-08-04 21:38:23'),
(16, 'Hussain', 'Riaz', 'kamran@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, 4, '2022-08-04 21:44:26'),
(17, 'Hassan', 'Shakeel', 'hassan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 3, 0, '2022-08-04 22:42:32'),
(18, 'Hussain', 'Riaz', 'customer@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 3, 0, '2022-08-05 13:54:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcels`
--
ALTER TABLE `parcels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcel_tracks`
--
ALTER TABLE `parcel_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
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
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parcels`
--
ALTER TABLE `parcels`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `parcel_tracks`
--
ALTER TABLE `parcel_tracks`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
