-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 19, 2026 at 08:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zenspirit_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(1, 'Burgundy set', 'Clothes', 199.00, 'clothes/burgundy.jpg'),
(2, 'Brown set', 'Clothes', 179.00, 'clothes/brown.jpg'),
(3, 'Grey set', 'Clothes', 99.00, 'clothes/grey.jpg'),
(4, 'Red set', 'Clothes', 299.00, 'clothes/red.jpg'),
(5, 'Baby blue set', 'Clothes', 159.00, 'clothes/white.jpg'),
(6, 'Green set', 'Clothes', 129.00, 'clothes/green.jpg'),
(7, 'Eco-Grip Mat', 'Mats', 85.00, 'mats/brown.jpg'),
(8, 'Pro Alignment', 'Mats', 95.00, 'mats/pink.jpg'),
(9, 'Travel Lite', 'Mats', 50.00, 'mats/green.jpg'),
(10, 'Cork Master', 'Mats', 105.00, 'mats/purple.jpg'),
(11, 'Cloud Cushion', 'Mats', 90.00, 'mats/blue.jpg'),
(12, 'Earth Rubber', 'Mats', 110.00, 'mats/grey.jpg'),
(13, 'Vanilla Sticks', 'Incenses', 15.00, 'incenses/in4.jpg'),
(14, 'Sage Bundles', 'Incenses', 12.00, 'incenses/sage.jpg'),
(15, 'Lavender Sticks', 'Incenses', 10.00, 'incenses/in3.jpg'),
(16, 'Palo Santo Wood', 'Incenses', 18.00, 'incenses/palo_santo.jpg'),
(17, 'Nag Champa', 'Incenses', 8.00, 'incenses/in5.jpg'),
(18, 'Frankincense', 'Incenses', 20.00, 'incenses/in6.jpg'),
(19, 'Magnesium Glycinate', 'Supplements', 28.00, 'supplements/s1.jpg'),
(21, 'Vegan Omega-3', 'Supplements', 35.00, 'supplements/s3.jpg'),
(22, 'Turmeric Curcumin', 'Supplements', 25.00, 'supplements/s4.jpg'),
(23, 'Plant-Based B12', 'Supplements', 22.00, 'supplements/s5.jpg'),
(24, 'Mushroom Focus Blend', 'Supplements', 40.00, 'supplements/s6.jpg'),
(27, 'Black mat', 'Mats', 45.00, 'mats/grey.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
