-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2022 at 05:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `percobaanhotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `sex` enum('Male','Female') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `email`, `password`, `address`, `city`, `religion`, `sex`) VALUES
(1, 'Randi Syuja', 'syuja131202@gmail.com', 'f2234437732f6ff7a56c06665f97afee', '', '', '', 'Male'),
(2, 'Reva Surif', 'reavprina@gmail.com', '32f96b3220c08d39fa4c595b4195776d', '', '', '', 'Male'),
(5, 'Randi Aprina', 'randijordan8@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'citayeum', 'jakarta', 'Christian', 'Male'),
(6, 'Randi Surif', 'krisnabase@gmail.com', '4297f44b13955235245b2497399d7a93', 'Bekasi bro', 'jakarta', 'Christian', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `sex` enum('Male','Female') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `address`, `city`, `religion`, `sex`) VALUES
(1, 'Randi Syuja', 'syuja131202@gmail.com', '4297f44b13955235245b2497399d7a93', 'Bekasi bro', 'jakarta', 'Islam', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `indonesia`
--

CREATE TABLE `indonesia` (
  `kode_kamar` char(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `tipe_kamar` varchar(100) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `indonesia`
--

INSERT INTO `indonesia` (`kode_kamar`, `image`, `tipe_kamar`, `deskripsi`, `harga`) VALUES
('0001', 'twbaliee.jpg', 'Double Bed Room', 'assadadfa', 499000),
('0002', 'twin us.jpg', 'Twin Bed Room', 'anjay mabar', 349000);

-- --------------------------------------------------------

--
-- Table structure for table `japan`
--

CREATE TABLE `japan` (
  `kode_kamar` char(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `tipe_kamar` varchar(100) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `japan`
--

INSERT INTO `japan` (`kode_kamar`, `image`, `tipe_kamar`, `deskripsi`, `harga`) VALUES
('0001', 'twbaliee.jpg', 'Double Bed Room', 'assadadfa', 499000),
('0002', 'twin us.jpg', 'Twin Bed Room', 'anjay mabar', 349000);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `roomtype` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `swiss`
--

CREATE TABLE `swiss` (
  `kode_kamar` char(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `tipe_kamar` varchar(100) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
