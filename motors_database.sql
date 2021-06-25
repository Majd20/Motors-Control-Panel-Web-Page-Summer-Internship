-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Generation Time: Jun 25, 2021 at 08:45 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `motors_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `motors_values`
--

CREATE TABLE `motors_values` (
  `id` bigint(20) NOT NULL,
  `motor1` int(10) NOT NULL,
  `motor2` int(10) NOT NULL,
  `motor3` int(10) NOT NULL,
  `motor4` int(10) NOT NULL,
  `motor5` int(10) NOT NULL,
  `motor6` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motors_values`
--

INSERT INTO `motors_values` (`id`, `motor1`, `motor2`, `motor3`, `motor4`, `motor5`, `motor6`) VALUES
(1, 90, 180, 0, 145, 30, 160),
(2, 119, 43, 132, 37, 160, 30);

-- --------------------------------------------------------

--
-- Table structure for table `off_button`
--

CREATE TABLE `off_button` (
  `id` bigint(20) NOT NULL,
  `IsOff` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `off_button`
--

INSERT INTO `off_button` (`id`, `IsOff`) VALUES
(1, 0),
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `on_button`
--

CREATE TABLE `on_button` (
  `id` bigint(20) NOT NULL,
  `IsOn` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `on_button`
--

INSERT INTO `on_button` (`id`, `IsOn`) VALUES
(1, 1),
(2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `motors_values`
--
ALTER TABLE `motors_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `motor1` (`motor1`),
  ADD KEY `motor2` (`motor2`),
  ADD KEY `motor3` (`motor3`),
  ADD KEY `motor4` (`motor4`),
  ADD KEY `motor5` (`motor5`),
  ADD KEY `motor6` (`motor6`);

--
-- Indexes for table `off_button`
--
ALTER TABLE `off_button`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IsOff` (`IsOff`);

--
-- Indexes for table `on_button`
--
ALTER TABLE `on_button`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IsOn` (`IsOn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `motors_values`
--
ALTER TABLE `motors_values`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `off_button`
--
ALTER TABLE `off_button`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `on_button`
--
ALTER TABLE `on_button`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
