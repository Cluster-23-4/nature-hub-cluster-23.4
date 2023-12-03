-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 05:27 PM
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
-- Table structure for table `customer_comment`
--

CREATE TABLE `customer_comment` (
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_comment`
--

INSERT INTO `customer_comment` (`name`, `email`, `comment`) VALUES
('manusha', 'nishadimanusha@gmail.com', 'amazing experience ');

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
('manusha', 'nishadimanusha@gmail.com', 'matara', 'good collection '),
('manusha', 'nisha@gmail.com', 'matara', 'good');

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
(64, 'Vihangi Thenabadu', 'Vihangi5', '5fccd451c05e45480d089ec406ad5007');

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
(2, 'Medicinal Plants', 'Plant_Category_646.jpg', 'Yes', 'Yes'),
(3, 'Fruit Plant', 'Plant_Category_79.jpg', 'No', 'Yes'),
(4, 'Flower Plant', 'Plant_Category_649.jpeg', 'Yes', 'Yes'),
(24, 'Indoor Plant', 'Plant_Category_587.jpg', 'Yes', 'Yes'),
(25, 'Fancy Plant', 'Plant_Category_997.jpg', 'Yes', 'Yes');

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
(8, 'garden plants', 200.00, 2, 400.00, '2023-11-18 07:30:14', 'Delivered', 'EMP_DEPT', '0762477786', 'nishadimanusha@gmail.com', '23/ A, kagalle'),
(9, 'Rose', 250.00, 1, 250.00, '2023-11-30 04:37:24', 'Ordered', 'EMP_DEPT', '0762477786', 'nishadimanusha@gmail.com', 'kagalle');

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
(16, 'Rose', 'beautifull rose and  it is growth at nuwara eliya', 250.00, 'Plant-Name7782.jpg', 4, 'Yes', 'Yes'),
(17, 'Birinjal', '', 120.00, 'Plant-Name-5263.jpeg', 1, 'No', 'Yes'),
(23, 'Sun flower', 'such a beautiful plant', 200.00, 'Plant-Name-2335.jpg', 4, 'Yes', 'Yes'),
(24, 'Komarika', 'Komarika is useful plant for produce the ayurway products and beauty products.', 750.00, 'Plant-Name-1227.jpeg', 2, 'Yes', 'Yes'),
(25, 'Indoor plant', 'House plant ', 400.00, 'Plant-Name-4656.jpg', 24, 'Yes', 'Yes'),
(26, 'Indoor Plants', '', 400.00, 'Plant-Name-9062.jpeg', 24, 'Yes', 'Yes'),
(27, 'Mango Plant', '', 200.00, 'Plant-Name-2505.png', 3, 'Yes', 'Yes'),
(28, 'Delum plants', '', 250.00, 'Plant-Name-3902.jpg', 3, 'Yes', 'Yes'),
(29, 'Fancy Plant', 'Indian fancy plants', 500.00, 'Plant-Name-5471.jpg', 1, 'Yes', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_comment`
--
ALTER TABLE `customer_comment`
  ADD UNIQUE KEY `email` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_plant`
--
ALTER TABLE `tbl_plant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
