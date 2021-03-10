-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2021 at 05:44 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE `exam_result` (
  `Reg_Number` int(11) DEFAULT NULL,
  `roll` int(11) NOT NULL,
  `Gpa` float(3,2) DEFAULT NULL,
  `Groups` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_result`
--

INSERT INTO `exam_result` (`Reg_Number`, `roll`, `Gpa`, `Groups`) VALUES
(20172, 101, 3.60, 'Arts'),
(20171, 102, 3.25, 'science'),
(20173, 103, 4.00, 'Science'),
(20174, 104, 3.50, 'Commerce'),
(20176, 105, 4.00, 'Science'),
(20175, 106, 3.60, 'Arts'),
(20178, 110, 3.56, 'science');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Roll` int(3) NOT NULL,
  `Name` varchar(12) DEFAULT NULL,
  `Gender` varchar(7) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `GPA` float(3,2) DEFAULT NULL,
  `City` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Roll`, `Name`, `Gender`, `Age`, `GPA`, `City`) VALUES
(101, 'Rahim', 'Male', 18, 3.44, 'Sylhet'),
(102, 'Hasina', 'Female', 17, 4.50, 'Dhaka'),
(103, 'Sabul', 'Male', 18, 3.70, 'Sylhet'),
(104, 'Suhan', 'Male', 17, 4.50, 'Khulna'),
(105, 'Rashid', 'Male', 18, 3.44, 'Barishal'),
(106, 'Tanvir', 'Male', 17, 4.50, 'Sylhet'),
(107, 'Hazira', 'Female', 18, 3.44, 'Sylhet'),
(108, 'Hafiza', 'Female', 17, 4.50, 'Dhaka'),
(109, 'Rodry', 'Female', 21, 4.50, 'Dhaka'),
(110, 'Rodoshi', 'Female', 19, 3.98, 'Khulna');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `Roll` int(11) NOT NULL,
  `Name` varchar(12) DEFAULT NULL,
  `Gender` varchar(7) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`Roll`, `Name`, `Gender`, `Age`) VALUES
(101, 'Rahim', 'Male', 18),
(102, 'Rahim', 'Male', 18),
(103, 'Farzana', 'Female', 17),
(104, 'MahfuZ', 'Male', 18),
(105, 'Farjana', 'Male', 18),
(106, 'Rodry', 'Female', 20);

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_view`
-- (See below for the actual view)
--
CREATE TABLE `student_view` (
`Roll` int(11)
,`name` varchar(12)
,`gender` varchar(7)
,`age` int(11)
,`gpa` float(3,2)
,`groups` varchar(8)
);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(12) NOT NULL,
  `salary` double(12,2) DEFAULT NULL,
  `Department` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `salary`, `Department`) VALUES
(1001, 'Sawom', 60000.00, 'CSE'),
(1002, 'Alok Saha', 75000.00, 'Civil'),
(1003, 'Tanjina', 85000.00, 'Civil'),
(1004, 'Shopon', 70000.00, 'Pharmacy'),
(1005, 'Sultan', 60000.00, 'EEE'),
(1006, 'Sayma', 50000.00, 'ENG'),
(1007, 'Sanjeet', 70000.00, 'Civil'),
(1008, 'Aysha', 75000.00, 'CSE'),
(1009, 'Jannat', 75000.00, 'CSE');

-- --------------------------------------------------------

--
-- Structure for view `student_view`
--
DROP TABLE IF EXISTS `student_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_view`  AS SELECT `exam_result`.`roll` AS `Roll`, `student_details`.`Name` AS `name`, `student_details`.`Gender` AS `gender`, `student_details`.`Age` AS `age`, `exam_result`.`Gpa` AS `gpa`, `exam_result`.`Groups` AS `groups` FROM (`student_details` join `exam_result`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD PRIMARY KEY (`roll`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Roll`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`Roll`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `Roll` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
