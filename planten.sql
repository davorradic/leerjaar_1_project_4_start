-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 04:42 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `planten`
--

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `plant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `merk`
--

INSERT INTO `merk` (`id`, `naam`, `plant_id`) VALUES
(1, 'Komkommer Marketmore EKO', 1);

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `beschrijving` text NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`id`, `naam`, `beschrijving`, `categorie_id`, `image`) VALUES
(1, 'komkommer', 'De komkommer is een plant waarvan de gelijknamige vrucht in Nederland en België vooral rauw als salade wordt gegeten. De komkommer behoort tot de soort Cucumis sativus, die al meer dan 3000 jaar gekweekt wordt. Aan één stengel kunnen tientallen komkommers groeien', 2, ''),
(2, 'tomaat', '', 2, ''),
(3, 'aardappel', '', 2, ''),
(4, 'appel', '', 1, ''),
(5, 'kers', '', 1, ''),
(6, 'aardbei', '', 1, ''),
(7, 'druiven', '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `plant_categorie`
--

CREATE TABLE `plant_categorie` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `beschrijving` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plant_categorie`
--

INSERT INTO `plant_categorie` (`id`, `naam`, `beschrijving`) VALUES
(1, 'fruit', ''),
(2, 'groente', '');

-- --------------------------------------------------------

--
-- Table structure for table `plant_log`
--

CREATE TABLE `plant_log` (
  `id` int(11) NOT NULL,
  `merk_id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `beschrijving` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plant_log`
--

INSERT INTO `plant_log` (`id`, `merk_id`, `naam`, `beschrijving`) VALUES
(20, 1, 'test', 'beschrijving'),
(21, 1, 'ggfgf', 'beschriving');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant_categorie`
--
ALTER TABLE `plant_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant_log`
--
ALTER TABLE `plant_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `merk`
--
ALTER TABLE `merk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plant_categorie`
--
ALTER TABLE `plant_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plant_log`
--
ALTER TABLE `plant_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
