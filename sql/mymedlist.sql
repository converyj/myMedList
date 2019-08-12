-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 12, 2019 at 02:27 PM
-- Server version: 10.3.17-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `converyj_mymedlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `caregiverpatientlist`
--

CREATE TABLE `caregiverpatientlist` (
  `userid` int(11) NOT NULL,
  `listid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `caregiverpatientlist`
--

INSERT INTO `caregiverpatientlist` (`userid`, `listid`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `listid` int(11) NOT NULL,
  `medid` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dose` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `frequency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `healthCareProvider` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  `userid` int(11) NOT NULL,
  `updatedTimestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedUserid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`listid`, `medid`, `name`, `dose`, `frequency`, `type`, `date`, `healthCareProvider`, `comment`, `instructions`, `timestamp`, `userid`, `updatedTimestamp`, `updatedUserid`) VALUES
(2, 8, 'Ginseng', '1 tablet ', '3', '5', '2018-12-12', 'Shoppers Drug Mart', 'For Nutrients', 'Take with Water', '2018-12-12 10:39:30', 1, '2018-12-12 15:45:12', 1),
(1, 3, 'ColdFx', '1 tablet', '3', '5', '2018-12-12', 'Shoppers Drug Mart', 'For Nutrients', 'Take with Water', '2018-12-12 10:30:16', 1, '2018-12-12 15:45:58', 1),
(1, 11, 'Advil', '1 tablet', '3', '5', '2018-12-12', 'Shoppers Drug Mart', 'For Headaches', 'Take with Water', '2018-12-12 10:51:22', 2, '2018-12-12 15:52:03', 1),
(3, 13, 'Tylenol', '1 tablet', '3', '5', '2018-12-12', 'Shoppers Drug Mart', 'For Back Pain', 'Take with Water', '2018-12-12 10:58:16', 4, '2018-12-12 16:04:55', 4),
(4, 18, 'qaswqw', '2', '3', '5', '2018-12-17', 'rer', 'rer', 'rerer', '2018-12-17 17:24:36', 5, '2018-12-17 22:24:57', 5);

-- --------------------------------------------------------

--
-- Table structure for table `medlist`
--

CREATE TABLE `medlist` (
  `listid` int(11) NOT NULL,
  `medid` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dose` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `frequency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `healthCareProvider` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medlist`
--

INSERT INTO `medlist` (`listid`, `medid`, `name`, `dose`, `frequency`, `type`, `date`, `healthCareProvider`, `comment`, `instructions`, `timestamp`, `userid`) VALUES
(1, 1, 'Fish Oil', '1000mg', '3', '5', '2018-12-12', 'Shoppers Drug Mart', 'For Nutrients ', 'Take with Water', '2018-12-12 15:24:27', 1),
(1, 2, 'Durezol', '1 drop', '4', '6', '2018-12-12', 'Dr. T', 'For eye', 'For right eye', '2018-12-12 15:28:19', 1),
(1, 4, 'Liposic Drops', '2 drops', '4', '6', '2018-12-12', 'Dr. T', 'For eyes', 'For Left and Right eye', '2018-12-12 15:32:26', 1),
(1, 5, 'Vitamin D3', '1 tablet', '3', '5', '2018-12-12', 'Shoppers Drug Mart', 'For Nutrients', 'Take with Water', '2018-12-12 15:33:42', 1),
(2, 6, 'Tylenol', '1 tablet', '4', '5', '2018-12-12', 'Shoppers Drug Mart', 'For Back Pain', 'Take with Water', '2018-12-12 15:35:18', 1),
(2, 7, 'Vigamox', '1 drop', '3', '5', '2018-12-12', 'Dr. Bill', 'For eye Infection', 'For Left eye', '2018-12-12 15:38:16', 1),
(2, 9, 'Prednisolone', '1 drop', '4', '6', '2018-12-12', 'Dr. Bill', 'For eye', 'For Right eye ', '2018-12-12 15:40:54', 1),
(2, 10, 'Dexilant', '1 capsule', '3', '6', '2018-12-12', 'Dr. Bill', 'For Digestion', 'Take with Water', '2018-12-12 15:43:49', 1),
(3, 12, 'APO-ATORVASTATIN', '1 tablet', '3', '6', '2018-12-12', 'Dr. Armo', 'For Chloesterol', 'Take with Water', '2018-12-12 15:56:54', 4),
(3, 14, 'RATIO-DOMPERIDONE', '1 tablet', '4', '6', '2018-12-12', 'Dr. Armo', 'For Acid Reflux', 'Take after meals', '2018-12-12 16:00:39', 4),
(3, 15, 'Combigan', '1 drop', '3', '5', '2018-12-12', 'Dr. Armo', 'For eye pressure', 'For Right eye', '2018-12-12 16:03:19', 4),
(3, 16, 'Dexilant', '1 capsule', '3', '6', '2018-12-12', 'Dr. Armo', 'For Digestion', 'Take with water', '2018-12-12 16:04:42', 4),
(4, 19, 'Dale DeServe', 'asaqs', '4', '5', '2018-12-17', 'lkjkj', 'hkjhk', 'kjhkjhk', '2018-12-17 22:25:22', 5);

-- --------------------------------------------------------

--
-- Table structure for table `medvalue`
--

CREATE TABLE `medvalue` (
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medvalue`
--

INSERT INTO `medvalue` (`type`, `code`, `value`) VALUES
('role', 1, 'Patient'),
('role', 2, 'Caregiver'),
('freq', 3, 'Once a day'),
('freq', 4, '2 times a day'),
('type', 5, 'Over-the-counter'),
('type', 6, 'Prescribed');

-- --------------------------------------------------------

--
-- Table structure for table `patientlist`
--

CREATE TABLE `patientlist` (
  `userid` int(11) NOT NULL,
  `listid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patientlist`
--

INSERT INTO `patientlist` (`userid`, `listid`) VALUES
(2, 1),
(3, 2),
(4, 3),
(5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `firstName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `firstName`, `lastName`, `username`, `password`, `email`, `timestamp`) VALUES
(1, 'Mary', 'Smith', 'msmith', 'user02', 'msmith@gmail.com', '2018-12-12 14:31:26'),
(2, 'John', 'Smith', 'jsmith', 'user01', 'jsmith@gmail.com', '2018-12-12 14:37:10'),
(3, 'Alex', 'Smith', 'asmith', 'user03', 'asmith@gmail.com', '2018-12-12 14:39:55'),
(4, 'Fred', 'Jones', 'fjones', 'user04', 'fj@gmail.com', '2018-12-12 15:53:26'),
(5, 'Wasim', 'Singh', 'w.singh@jupiter-spotless.', 'w.singh@jupiter-spotless.', 'w.singh@jupiter-spotless.com', '2018-12-17 22:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `userrole`
--

CREATE TABLE `userrole` (
  `userid` int(11) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userrole`
--

INSERT INTO `userrole` (`userid`, `role`) VALUES
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medlist`
--
ALTER TABLE `medlist`
  ADD PRIMARY KEY (`medid`);

--
-- Indexes for table `patientlist`
--
ALTER TABLE `patientlist`
  ADD PRIMARY KEY (`listid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medlist`
--
ALTER TABLE `medlist`
  MODIFY `medid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `patientlist`
--
ALTER TABLE `patientlist`
  MODIFY `listid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
