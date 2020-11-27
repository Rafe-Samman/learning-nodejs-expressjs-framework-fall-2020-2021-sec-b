-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 06:52 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agro-glow`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `catName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `catName`) VALUES
(8, 'Fertilizer'),
(9, 'Paddy'),
(10, 'Farming Tools'),
(11, 'Farming Vehicals'),
(13, 'kabab'),
(14, 'star kabab'),
(15, 'Tastey Treat'),
(16, 'Mr.Bakery');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `notificationType` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `userType` varchar(100) NOT NULL,
  `approval` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `description`, `notificationType`, `name`, `userType`, `approval`) VALUES
(13, 'I Want To Leave This System', 'leaveManager', 'arefin101', 'manager', 'pending'),
(14, 'I need More Products', 'leaveManager', 'arefin101', 'manager', 'pending'),
(15, 'I Want T Leave', 'Leave Seller', 'Samman', 'seller', 'pending'),
(16, 'We Need This More', 'More Product', 'Farmer1', 'farmer', 'pending'),
(17, 'I want To Leave This System', 'leaveManager', 'arefin101', 'manager', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `quantity` int(50) NOT NULL,
  `expDate` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `imageURL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `category`, `price`, `quantity`, `expDate`, `description`, `imageURL`) VALUES
(35, 'Tractor    ', 'Farming Vehicals', '4,00,000Tk', 5, '18th june 2022', 'Farming Velicals', 'tractor.jpg'),
(36, 'Rice', 'Rice', '60Tk/Kg', 20, '18th june 2022', 'Rice', 'rice.jpg'),
(37, 'Eri', 'Paddy', '40Tk/Kg', 200, '18th june 2022', 'One KInd Of Paddy', 'peddy123.jpg'),
(39, 'ricegh', 'kabab', '37', 0, 'dguygdiuys', 'def', 'IMG_20201111_194905_415-01.jpeg'),
(40, 'sabbirjbj', 'kabab', 'gvvgubijn', 0, 'bihulvuibuol', 'guvgikhlj', 'IMG_20171016_012223_544_copy_1859x1739 - Copy.jpg'),
(41, 'briyani', 'kabab', 'dhaka', 8, '220', 'good', 'IMG_0074.JPG'),
(42, 'Burger', 'kabab', 'Mirpur', 8, '50', 'Very good food', '12531-istock-637790866.jpg'),
(43, 'pizza', 'Tastey Treat', 'Puran dhaka', 8, '450', 'good', '0817-murray-mancini-dried-tomato-pie.jpg'),
(44, 'pasta', 'Mr.Bakery', 'dhanmondi', 6, '200', 'good', '20190503-delish-pineapple-baked-salmon-horizontal-ehg-450-1557771120.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `mobileNo` varchar(100) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userType` varchar(100) NOT NULL DEFAULT 'user',
  `validity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `DOB`, `mobileNo`, `userName`, `password`, `userType`, `validity`) VALUES
(1, 'Md.Rafe Samman', 'rafe@yahoo.com', '15th April 1997', '01829747029', 'arefin101', '', 'manager', 'valid'),
(12, 'Md. Nur', 'nur101@gmail.com', '1999/12/12', '0192216223', 'nur101', '1234', 'farmer', 'valid'),
(13, 'Shokal', 'shokal101@gmail.com', '19th july 1999', '01829716254', 'shokal101', '1234', 'admin', 'valid'),
(16, 'Super Man', 'super@yahoo.com', '1999/12/12', '0192216223', 'super101', '1234', 'seller', 'valid'),
(18, 'Wonder Woman', 'wonder101@gmail.com', '15th April 1997', '0192216223', 'wonder101', '1234', 'seller', 'invalid'),
(19, 'Spider Man', 'spider101@gamil.com', '15th April 1997', '0192216223', 'spider101', '1234', 'farmer', 'valid'),
(20, ' ', '', 'null', 'null', '', '', 'farmer', 'valid'),
(21, 'defgrtg fgf', 'ffh@ghjkf', 'null', 'null', 'fgfwrfrwg101', '1234', 'farmer', 'valid'),
(22, 'sabbircdcd cfd', 'fgfegf@bjnsdkf', 'null', 'null', 'sa', '1234', 'seller', 'valid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`email`),
  ADD UNIQUE KEY `UserName` (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
