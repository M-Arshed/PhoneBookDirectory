-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2018 at 07:14 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phonedirectory`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `landline` bigint(12) DEFAULT NULL,
  `emailcontact` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  `emailfk` varchar(123) NOT NULL,
  `contactid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`fname`, `lname`, `mobile`, `landline`, `emailcontact`, `email`, `address`, `emailfk`, `contactid`) VALUES
('Arshed', 'Ali', 2147483647, 2147483647, 'arshedseo@gmail.com', 'rehan1122@gmail.com', 'lahore', '', 13),
('Gulraiz', 'Ahmad', 3047989709, 3004920136, 'gulraiz1122@yahoo.com', 'rehan1122@gmail.com', 'lahore', 'ahsan@gmail.com', 15),
('adnan', 'arif awan', 3047989709, 3004920136, 'adnan1122@gmail.com', 'ars1122@gmail.com', 'depalpur', '', 16),
('Arshed', 'Arshed', 3047989709, 3004920136, 'arshedseo@gmail.com', 'rehan1122@gmail.com', 'lahore', '', 21),
('Ahsan', 'Farhan', 3041234567, 3001234567, 'ahsan@hotmail.com', 'rehan1122@gmail.com', 'Gulshan Ravi Lahore', '', 23),
('Muhammad', 'Arshed', 3074160276, 3047989719, 'arshed1122@gmail.com', 'arshed@gmail.com', 'Kalma Chok Metro Station Lahore', '', 24),
('Muhammad', 'farzan', 3047989899, 3054720136, 'farzan1133@gmail.com', 'arshed@gmail.com', 'Ghulshan Ravi Lahore', '', 25),
('Rehan', 'Ahmad', 3089989709, 3204920122, 'rehan11222@gmail.com', 'arshed@gmail.com', 'bank Stop Lahore', '', 26),
('Ahsan', 'Ahmad', 3047989709, 3004920123, 'ahsan@gmail.com', 'ahsan@gmail.com', 'Lahore', 'ahsan@gmail.com', 27),
('Arshed', 'SEO', 3364160235, 3004912356, 'arshedseo@gmail.com', 'arshedseo@gmail.com', 'Okara', '', 28),
('Ahsan', 'Shah', 3084160236, 3044160236, 'ahsanshah@gmail.com', 'arshedseo@gmail.com', 'Lahore', '', 29),
('Imran', 'Butt', 3074160236, 3047989709, 'imran@gmail.com', 'arshedseo@gmail.com', 'Multan', '', 30),
('farzan', 'Wadood', 3045698742, 12345678955, 'arshedseo@gmail.com', 'arshedseo@gmail.com', 'Lahore', 'bilal@yahoo.com', 31),
('abc', 'xyz', 3004789654, 3004920125, 'abc@outlook.com', 'arshedseo@gmail.com', 'lahore', 'arshedseo@gmail.com', 32),
('M', 'Iqbal', 3047989709, 3004920136, 'arshedseo@gmail.com', 'arshedseo@gmail.com', 'depalpur', '', 33),
('Arshad', 'Iqbal', 3047989709, 30004897895, 'arshad123@gmail.com', 'bilal@yahoo.com', 'Lahore', '', 34);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fname`, `lname`, `dob`, `mobile`, `email`, `password`) VALUES
('Ahsan', 'Numan', '2018-10-11', 3074160239, 'ahsan@gmail.com', '24f0c2c9bf16f6c0829d0e3e6d69b943'),
('M', 'Arshed', '2018-09-02', 3047989709, 'ars1122@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
('arshed', 'seo', '2018-10-10', 1234567, 'arshedseo@gmail.com', '24f0c2c9bf16f6c0829d0e3e6d69b943'),
('Bilal', 'Waris', '2018-10-03', 304789457, 'bilal@yahoo.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
