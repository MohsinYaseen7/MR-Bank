-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 09, 2022 at 12:18 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mr_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `acc_num` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `current_balance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `acc_num`, `email`, `current_balance`) VALUES
(1, 'Mohsin', 'mr00100', 'mohsin@gmail.com', 45513),
(2, 'Reha', 'mr00200', 'reha@gmail.com', 49919),
(3, 'Mubeen', 'mr00300', 'mubeen@gmail.com', 50100),
(4, 'Saad', 'mr00400', 'saad@gmail.com', 5000),
(5, 'Haider', 'mr00500', 'haider@gmail.com', 2782),
(6, 'Hassan', 'mr00600', 'hassan@gmail.com', 9345),
(7, 'Ishaq', 'mr00700', 'ishaq@gmail.com', 7341),
(8, 'Khalid', 'mr00800', 'khalid@gmail.com', 5000),
(9, 'Gurya', 'mr00900', 'gurya@yahoo.com', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `from_acc` varchar(16) NOT NULL,
  `to_acc` varchar(16) NOT NULL,
  `amount` int(16) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `tid` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`from_acc`, `to_acc`, `amount`, `time`, `tid`) VALUES
('mr00100', 'mr00300', 100, '2022-01-09 11:04:35.641815', 1),
('mr00100', 'mr00200', 2387, '2022-01-09 11:14:52.571856', 2),
('mr00500', 'mr00700', 2341, '2022-01-09 11:15:00.298772', 3),
('mr00200', 'mr00600', 4345, '2022-01-09 11:15:10.522783', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `tid` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
