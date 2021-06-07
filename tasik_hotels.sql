-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 11:52 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasik_hotels`
--

-- --------------------------------------------------------

--
-- Table structure for table `dining_reservation`
--

CREATE TABLE `dining_reservation` (
  `ID` int(2) NOT NULL,
  `FullName` varchar(30) NOT NULL,
  `Restaurant` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Seats` int(2) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `MobileNo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dining_reservation`
--

INSERT INTO `dining_reservation` (`ID`, `FullName`, `Restaurant`, `Date`, `Time`, `Seats`, `Email`, `MobileNo`) VALUES
(1, 'Atiqah Huzaini', 'Gordon Ramsay Bar & Grill', '2021-06-08', '03:30:00', 2, 'atiqahhuzaini00@gmail.com', '0192076425');

-- --------------------------------------------------------

--
-- Table structure for table `events_reservation`
--

CREATE TABLE `events_reservation` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(30) NOT NULL,
  `Hall` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `Package` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `MobileNo` int(11) NOT NULL,
  `Note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events_reservation`
--

INSERT INTO `events_reservation` (`ID`, `FullName`, `Hall`, `Date`, `Package`, `Email`, `MobileNo`, `Note`) VALUES
(1, 'Atiqah Huzaini', 'Boulevard Hall', '2021-06-08', '500 pax', 'atiqahhuzaini00@gmail.com', 192076425, 'Conference');

-- --------------------------------------------------------

--
-- Table structure for table `room_reservation`
--

CREATE TABLE `room_reservation` (
  `ID` int(2) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `FullName` varchar(30) NOT NULL,
  `Hotel` varchar(30) NOT NULL,
  `CheckIn` date NOT NULL,
  `CheckOut` date NOT NULL,
  `NoOfRooms` int(1) NOT NULL,
  `Adults` int(1) NOT NULL,
  `Children` int(1) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `MobileNo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_reservation`
--

INSERT INTO `room_reservation` (`ID`, `Address`, `FullName`, `Hotel`, `CheckIn`, `CheckOut`, `NoOfRooms`, `Adults`, `Children`, `Email`, `MobileNo`) VALUES
(2, 'Lot 2247, Jalan Kasban, Meru', 'Atiqah Huzaini', 'Tasik Hotels Kuala Lumpur', '2021-06-08', '2021-06-09', 1, 1, 0, 'atiqahhuzaini00@gmail.com', '0192076425');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dining_reservation`
--
ALTER TABLE `dining_reservation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `events_reservation`
--
ALTER TABLE `events_reservation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `room_reservation`
--
ALTER TABLE `room_reservation`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dining_reservation`
--
ALTER TABLE `dining_reservation`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events_reservation`
--
ALTER TABLE `events_reservation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `room_reservation`
--
ALTER TABLE `room_reservation`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
