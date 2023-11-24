-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 10:46 AM
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
-- Database: `plant-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_feedback`
--

CREATE TABLE `customer_feedback` (
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_feedback`
--

INSERT INTO `customer_feedback` (`name`, `email`, `place`, `message`) VALUES
('manusha', 'nishadimanusha@gmail.com', 'matara', 'good collection ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(61, 'chanaka', 'Madushan09', 'ae7be26cdaa742ca148068d5ac90eaca'),
(62, 'Manusha', 'Manusha08', '7b1f6dff14d8c2dfeb7da9487be0612d'),
(63, 'Manusha Shyamalee', 'Manusha8', '6bb209a0fa7560a3b09b50b5b69007c7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(1, 'Vegitable Plants', 'Plant_Category_351.jpeg', 'Yes', 'Yes'),
(2, 'Medicinal Plants', 'Plant_Category_534.jpeg', 'Yes', 'Yes'),
(3, 'Fruit Plant', 'Plant_Category_902.jpeg', 'No', 'Yes'),
(4, 'Flower Plant', 'Plant_Category_167.jpg', 'Yes', 'Yes'),
(5, 'Fancy Plant', 'Plant_Category_741.jpg', 'No', 'Yes'),
(23, 'fancy', 'Plant_Category_666.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `plant` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `plant`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'flower', 520.00, 3, 1560.00, '2023-11-14 03:48:23', 'On Delivery', 'EMP_DEPT', '0762477786', 'nishadimanusha@gmail.com', '36/A,kagalle'),
(3, 'garden plants', 200.00, 3, 600.00, '2023-11-14 03:56:23', 'Delivered', 'Nishadi', '0762477786', 'nishadimanusha@gmail.com', 'Nuwara Eliya'),
(7, 'garden plants', 200.00, 3, 600.00, '2023-11-14 03:59:02', 'Ordered', 'EMP_DEPT', '0762477786', 'nishadimanusha@gmail.com', ''),
(8, 'garden plants', 200.00, 2, 400.00, '2023-11-18 07:30:14', 'Delivered', 'EMP_DEPT', '0762477786', 'nishadimanusha@gmail.com', '23/ A, kagalle');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plant`
--

CREATE TABLE `tbl_plant` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_plant`
--

INSERT INTO `tbl_plant` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(16, 'Rose', 'beautifull rose and  it is growth at nuwara eliya', 250.00, 'Plant-Name7782.jpg', 17, 'Yes', 'Yes'),
(17, 'Birinjal', '', 120.00, 'Plant-Name-5263.jpeg', 11, 'No', 'Yes'),
(19, 'Indoor plants', 'outdoor plants is beautiful home decor in the modern world', 200.00, 'Plant-Name-6001.jpeg', 11, 'Yes', 'Yes'),
(20, 'komarika', 'sri lankan natural ayurway plants', 250.00, 'Plant-Name-9919.jpeg', 14, 'No', 'Yes'),
(21, 'Sun Flower', 'sun flower is very beautiful yellow color flower plant.', 350.00, 'Plant-Name-7622.jpg', 17, 'Yes', 'Yes'),
(22, 'Anturia ', 'Such a beautifull plant foryour garden grow', 450.00, 'Plant-Name-3978.jpeg', 17, 'Yes', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plant`
--
ALTER TABLE `tbl_plant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_plant`
--
ALTER TABLE `tbl_plant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
