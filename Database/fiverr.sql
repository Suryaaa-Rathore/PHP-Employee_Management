-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 07, 2021 at 01:28 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fiverr`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `sno` int(11) NOT NULL,
  `user_no` int(15) NOT NULL,
  `source` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(22) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `reference` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`sno`, `user_no`, `source`, `name`, `number`, `amount`, `reference`, `date`, `time`) VALUES
(1, 1, 'stanbic', 'Kunal', '779390326', '6000', 'ZIPIT 58241603', '2021-02-14', '20:19:15'),
(2, 2, 'stanbic', 'Surya', '45862310', '45820.25', 'KILPIT4586', '2021-03-11', '10:28:41'),
(3, 2, 'stanbiccccc', 'Kunal D Patil', '4586232423', '4521.22', 'My Reference', '2021-03-09', '12:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_sno` int(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_contact` varchar(20) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_sno`, `username`, `user_password`, `user_contact`, `user_email`, `user_role`) VALUES
(1, 'admin', '$2y$10$TOIgZwWbYNz4knINrz8YCu232q/T.zioSJ95wUE1IBiBin2OsB/NS', '7987173994', 'admin@admin', 1),
(2, 'test', '$2y$10$/kiF/GDdfZBbTuc7tE/nAe8zhKJWJuyiHVINNKboYgDndaPvfCX/e', '12345', 'test@test', 0),
(3, 'newadmin', '$2y$10$ytzO2tc.zSCcrgsmhYOLZuKXHDUmbzees3THXrK/VzaUZRn0D.HIC', '785462348', 'admin@admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_sno` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
