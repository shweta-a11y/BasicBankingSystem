-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 2, 2021 at 10:01 PM
-- Server version: 8.0.21
-- PHP Version: 7.2.33




SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(345680, 'Sumit Pandey', 'Ashutosh Singh', 3000, '2021-03-14 00:20:45');


-- --------------------------------------------------------

--
-- Table structure for table `view_customer`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `view_customer`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(345678 'Shweta Gupta', 'shweta@gmail.com', 10000),
(345679, 'Ashutosh Singh', 'ashu@gmail.com', 12000),
(345680, 'Sumit Pandey', 'sumit@gmail.com', 11000),
(345681, 'Guarav Singh', 'guarav@gmail.com', 9000),
(345682, 'Nidhi Pandey', 'nidhi@gmail.com', 8000),
(345683, 'Nikhil Mehta', 'nikhil@gmail.com', 15000),
(345684, 'Priya Sharma', 'priya@gmail.com', 16000),
(345685, 'Neha Patel', 'neha@gmail.com', 12000),
(345686, 'Avinash Singh', 'avinash@gmail.com', 6000),
(345687, 'Vishal Gupta', 'vishal@gmail.com', 8000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `view_customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `view_customer`
--
ALTER TABLE `view_customer`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;