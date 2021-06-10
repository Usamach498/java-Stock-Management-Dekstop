-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 11:34 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `firstname` varchar(12) NOT NULL,
  `lastname` varchar(12) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
(1, '', '', 'admin', 'admin'),
(3, 'amin', 'majid', 'amin.com', 'amin');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `barcode` int(11) NOT NULL,
  `cprice` int(11) NOT NULL,
  `rprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `rlevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `description`, `barcode`, `cprice`, `rprice`, `qty`, `rlevel`) VALUES
(1, 'mobile', 'xyz', 12345, 15000, 17000, 111, 4),
(2, 'mobile', 'xyz', 12345, 15000, 17000, 112, 4),
(3, 'laptop', 'xyz', 373, 72, 80000, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `subtotal` int(12) NOT NULL,
  `pay` int(12) NOT NULL,
  `bal` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `date`, `vendor`, `subtotal`, `pay`, `bal`) VALUES
(1, '2021-05-30', 'usama', 170000, 1324, 12345),
(2, '2021-05-30', 'usama', 170000, 7000, 12345),
(3, '2021-05-30', 'usama', 1530000, 15000, 12345),
(4, '2021-05-30', 'usama', 136000, 6000, 130000);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

CREATE TABLE `purchaseitem` (
  `id` int(11) NOT NULL,
  `purid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `rprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchaseitem`
--

INSERT INTO `purchaseitem` (`id`, `purid`, `pid`, `rprice`, `qty`, `total`) VALUES
(1, 2, 12345, 17000, 10, 170000),
(2, 3, 12345, 17000, 90, 1530000),
(3, 4, 12345, 17000, 8, 136000);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `name`, `phone`, `email`, `address`) VALUES
(1, 'usama', 12345, 'usama@gamil', 'lahore'),
(2, 'mishal', 576786543, 'mishal@xyz', 'lahor'),
(3, 'laiba', 57658, 'laiba@', 'lahore'),
(4, 'faizi', 3322333, 'faizi@gmail.com', 'pakpattan'),
(5, 'ahsan', 74, 'ahsan233@gmail.com', 'cantabd'),
(6, 'ahsan', 399374, 'ahsan@gmail.com', 'cantabd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
