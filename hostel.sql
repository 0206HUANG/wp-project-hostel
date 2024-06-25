-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2024 at 01:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommanager`
--

CREATE TABLE `accommanager` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accommanager`
--

INSERT INTO `accommanager` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'manager', 'manager@gmail.com', 'Manager@1234', '2024-01-31 20:31:45', '2024-02-10'),
(1, 'manager', 'manager@gmail.com', 'Manager@1234', '2024-01-31 20:31:45', '2024-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@gmail.com', 'Test@1234', '2024-01-31 20:31:45', '2024-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2024-02-14 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2024-02-14 19:31:42'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2024-02-14 19:31:42'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2024-02-14 19:31:42'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2024-02-14 19:31:42'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2024-02-14 19:31:42'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2024-02-14 19:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPostcode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL, -- Correct column name
  `pmntPostcode` int(11) DEFAULT NULL,
  `updationDate` varchar(500) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPostcode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPostcode`, `updationDate`) VALUES
(2, 100, 2, 500, 'Bachelor  of Technology', 10806121, 'Aisyah', '', 'Mawaddah', 'female', 1234567890, 'am@gmail.com', 1236547890, 'mohd', 'Father', 98756320000, '15 Jln Seri', 'Kuantan', 'Pahang', 110001, '15 Jln Seri', 'Kuantan', 'Pahang', 01800, 2024),
(3, 200, 2, 500, 'Bachelor  of Science', 108061233, 'Izzati', '', 'Athirah', 'female', 1425362514, 'izzati@gmail.com', 456312058, 'isa', 'Father', 1234567890, '18 Jln Kenanga ', 'Kuala Perlis', 'Perlis', 167001, '18 Jln Kenanga ', 'Kuala Perlis', 'Perlis', 3400, 2024),
(4, 200, 2, 500, 'Bachelor Of Commerce ', 10806121, 'Farah', '', 'Izzati', 'female', 1234567890, 'farah@gmail.com', 546456546, 'yusni', 'Father', 46456456, '21 Jln Ros', 'Changlun', 'Kedah', 123123, '21 Jln Ros', 'Changlun', 'Kedah', 89000, 2024),
(5, 100, 2, 500, 'Bachelor  of Technology', 14563213, 'Huang', '', 'Bosheng', 'male', 8956237845, 'huang@gmail.com', 7845123698, 'huang', 'Father', 5623894178, 'H-899, Dong Apartment', 'Kuala Terengganu', 'Terengganu', 551007, 'H-899, Dong Apartment', 'Kuala Terengganu', 'Terengganu', 12300, 2024),
(6, 132, 1, 1000, 'Bachelor  of Technology', 14563213, 'Arvin', 'Kumar', 'Singh', 'male', 9632587412, 'arvin@gmail.com', 8563145621, 'Ram Singh', 'Father', 4563245631, '86 Jln Kembangan ', 'Bentong', 'Pahang', 110092, '86 Jln Kembangan ', 'Bentong', 'Pahang', 78098, 2024);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 2, 100, 500, '2024-02-19 22:45:43'),
(2, 2, 201, 500, '2024-02-19 22:45:43'),
(3, 2, 200, 500, '2024-02-19 22:45:43'),
(4, 2, 112, 500, '2024-02-19 22:45:43'),
(5, 1, 132, 1000, '2024-02-19 22:45:43'),
(6, 1, 145, 1000, '2024-04-17 11:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Johor'),
(2, 'Kedah'),
(3, 'Kelantan'),
(4, 'Kuala Lumpur (FT)'),
(5, 'Labuan (FT)'),
(6, 'Melaka'),
(7, 'Negeri Sembilan'),
(8, 'Pahang'),
(9, 'Penang'),
(10, 'Perak'),
(11, 'Perlis'),
(12, 'Putrajaya (FT)'),
(13, 'Sabah'),
(14, 'Sarawak'),
(15, 'Selangor'),
(16, 'Terengganu');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 4, 'izzati@gmail.com', 0x3a3a31, '', '', '2024-03-14 05:15:31'),
(2, 4, 'izzati@gmail.com', 0x3a3a31, '', '', '2024-03-14 06:09:44'),
(3, 4, 'izzati@gmail.com', 0x3a3a31, '', '', '2024-04-07 18:19:48'),
(4, 4, 'izzati@gmail.com', 0x3a3a31, '', '', '2024-04-07 18:19:49'),
(5, 3, 'farah@gmail.com', 0x3a3a31, '', '', '2024-04-07 18:22:03'),
(6, 5, 'huang@gmail.com', 0x3a3a31, '', '', '2024-04-09 05:06:35'),
(7, 5, 'huang@gmail.com', 0x3a3a31, '', '', '2024-04-09 06:23:52'),
(8, 5, 'huang@gmail.com', 0x3a3a31, '', '', '2024-04-17 11:29:34'),
(9, 6, 'arvin@gmail.com', 0x3a3a31, '', '', '2024-04-17 11:34:03'),
(10, 6, 'arvin@gmail.com', 0x3a3a31, '', '', '2024-04-17 17:13:08'),
(11, 7, 'sara@gmail.com', 0x3a3a31, '', '', '2024-06-16 10:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(3, '10806121', 'Farah', '', 'Izzati', 'female', 1234567890, 'farah@gmail.com', 'Test@123', '2024-03-01 14:56:18', NULL, NULL),
(4, '108061233', 'Izzati', '', 'Athirah', 'female', 1425362514, 'izzati@gmail.com', 'Test@123', '2024-03-14 05:15:01', NULL, NULL),
(5, '14563213', 'Huang', '', 'Bosheng ', 'male', 8956237845, 'huang@gmail.com', '123', '2024-04-09 05:04:55', NULL, NULL),
(6, '14563213', 'Arvin', 'Kumar', 'Singh', 'male', 9632587412, 'arvingmail.com', 'Test@123', '2024-04-17 11:33:55', '17-04-2024 05:12:02', NULL),
(7, '123445678', 'Sara', '', 'Yasmin', 'female', 9632907412, 'sara@gmail.com', 'sara', '2024-06-16 09:59:34', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- ALTER TABLE `registration`
-- ADD COLUMN `status` VARCHAR(20) DEFAULT 'Pending' AFTER `updationDate`;

ALTER TABLE registration ADD COLUMN status VARCHAR(20) DEFAULT 'Pending';
ALTER TABLE `registration` ADD COLUMN `postingDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE `userRegistration` ADD COLUMN `updationDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
ALTER TABLE `registration` ADD COLUMN `total_fee` INT DEFAULT 0;
