-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2021 at 05:57 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phping`
--

-- --------------------------------------------------------

--
-- Table structure for table `ip`
--

CREATE TABLE `ip` (
  `id` int(11) NOT NULL,
  `number` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `priority` tinyint(1) NOT NULL,
  `lastupdate` datetime NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='monitor level:\r\n0: not monitored\r\n1: first priority\r\n2: less priority\r\n3: lesser priority\r\n4: lesser and lesser priority\r\n5: and so on....';

--
-- Dumping data for table `ip`
--

INSERT INTO `ip` (`id`, `number`, `name`, `priority`, `lastupdate`, `status`, `remarks`) VALUES
(1, '10.3.50.8', 'InforLN', 1, '0000-00-00 00:00:00', 1, ''),
(2, '10.3.50.45', 'Intranet', 1, '0000-00-00 00:00:00', 1, ''),
(3, '10.3.50.9', 'VMware', 1, '0000-00-00 00:00:00', 1, ''),
(4, '10.3.50.73', 'DC', 1, '0000-00-00 00:00:00', 1, ''),
(5, '10.3.50.40', 'Acronis', 1, '0000-00-00 00:00:00', 1, ''),
(6, '10.3.50.161', 'BridgeSIK1', 1, '0000-00-00 00:00:00', 1, ''),
(7, '10.3.50.162', 'BridgeSIK2', 1, '0000-00-00 00:00:00', 1, ''),
(8, '10.3.50.49', 'CCTVSIK1', 1, '0000-00-00 00:00:00', 1, ''),
(9, '10.3.50.50', 'CCTVSIK2', 1, '0000-00-00 00:00:00', 1, ''),
(10, '10.3.50.37', 'MCSIK1', 1, '0000-00-00 00:00:00', 1, ''),
(11, '10.3.50.39', 'MCSIK2', 1, '2021-03-26 13:25:47', 1, ''),
(12, '10.3.50.62', 'CCTVSIK1New', 1, '0000-00-00 00:00:00', 1, ''),
(13, '10.3.50.68', 'CCTVPRODSIK2', 1, '2021-03-26 09:14:49', 0, ''),
(14, '10.3.50.10', 'EfakturCeisa', 1, '0000-00-00 00:00:00', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ip`
--
ALTER TABLE `ip`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ip`
--
ALTER TABLE `ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
