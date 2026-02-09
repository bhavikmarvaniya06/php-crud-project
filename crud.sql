-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2026 at 02:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `address`, `created_at`) VALUES
(2, 'Neha Shah', 'neha.shah@gmail.com', '9898989898', 'Surat, Gujarat', '2026-02-08 11:08:20'),
(3, 'Rahul Mehta', 'rahul.mehta@gmail.com', '9812345678', 'Vadodara, Gujarat', '2026-02-08 11:08:20'),
(4, 'Pooja Desai', 'pooja.desai@gmail.com', '9823456789', 'Rajkot, Gujarat', '2026-02-08 11:08:20'),
(5, 'Karan Joshi', 'karan.joshi@gmail.com', '9900112233', 'Bhavnagar, Gujarat', '2026-02-08 11:08:20'),
(6, 'Sneha Trivedi', 'sneha.trivedi@gmail.com', '9911223344', 'Jamnagar, Gujarat', '2026-02-08 11:08:20'),
(7, 'Vikas Parmar', 'vikas.parmar@gmail.com', '9922334455', 'Junagadh, Gujarat', '2026-02-08 11:08:20'),
(8, 'Riya Kapoor', 'riya.kapoor@gmail.com', '9933445566', 'Gandhinagar, Gujarat', '2026-02-08 11:08:20'),
(9, 'Harshil Rana', 'harshil.rana@gmail.com', '9944556677', 'Morbi, Gujarat', '2026-02-08 11:08:20'),
(10, 'Anjali Verma', 'anjali.verma@gmail.com', '9955667788', 'Mumbai, Maharashtra', '2026-02-08 11:08:20'),
(11, 'rahul', 'rahul@gmail.com', '8128650667', 'Nandanvan', '2026-02-09 03:50:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
