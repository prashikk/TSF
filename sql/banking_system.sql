-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2021 at 08:22 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `c_id` int(3) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_mail` varchar(20) DEFAULT NULL,
  `c_balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`c_id`, `c_name`, `c_mail`, `c_balance`) VALUES
(101, 'Gayatri', 'gayatri@gmail.com', 86500),
(102, 'Monika', 'monu@gmail.com', 23499),
(103, 'Gauri D.', 'gauri@gmail.com', 24001),
(104, 'S. Gaikwad', 'gaikwad@gmail.com', 54000),
(105, 'Yogita.', 'chhakuli@gmail.com', 83994),
(106, 'Shraddha D.', 'shraddha@gmail.com', 60000),
(107, 'Anushka', 'anushka@gmail.com', 4000),
(108, 'priti T.', 'priti@gmail.com', 6006);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sr_no` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(10) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sr_no`, `sender`, `receiver`, `balance`, `date_time`) VALUES
(2, 'S. Gaikwad', 'Gauri D.', 1000, '2021-08-20 11:06:28'),
(3, 'Monika', 'Gayatri', 1500, '2021-08-20 11:15:15'),
(4, 'Yogita.', 'priti T.', 1006, '2021-08-20 11:21:51'),
(5, 'Gayatri', 'S. Gaikwad', 10000, '2021-08-20 11:34:01'),
(6, 'Monika', 'Gauri D.', 1, '2021-08-22 09:30:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_mail` (`c_mail`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `c_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sr_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
