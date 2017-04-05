-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2017 at 01:35 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `userdeatil`
--

CREATE TABLE `userdeatil` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdeatil`
--

INSERT INTO `userdeatil` (`id`, `name`, `occupation`, `age`, `phone`) VALUES
(1, 'test', 'hghfghgh', '04/26/2017', '54354646546'),
(2, 'test1', 'dddjgjgjgj', '04/13/2017', '7575757858558'),
(3, 'ff', 'dd', '04/12/2017', 'ddddd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `status`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 1),
(2, 'durgesh', 'durgesh@gmail.com', 'durgesh', 0),
(3, 'aman', 'aman@gmail.com', 'aman', 0),
(4, 'omkar', 'om@gmail.com', 'om', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userdeatil`
--
ALTER TABLE `userdeatil`
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
-- AUTO_INCREMENT for table `userdeatil`
--
ALTER TABLE `userdeatil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
