-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2021 at 11:54 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipos`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`) VALUES
(3, 'Curry'),
(8, 'Electronics'),
(2, 'Rice'),
(10, 'Vachile'),
(9, 'Water');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice`
--

CREATE TABLE `tbl_invoice` (
  `invoice_id` int(11) NOT NULL,
  `cashier_name` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `time_order` varchar(50) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `total` float NOT NULL,
  `paid` float NOT NULL,
  `due` float NOT NULL,
  `profit` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_invoice`
--

INSERT INTO `tbl_invoice` (`invoice_id`, `cashier_name`, `order_date`, `time_order`, `customer_name`, `total`, `paid`, `due`, `profit`) VALUES
(24, 'brur', '2021-03-25', '01:14', NULL, 6750, 6000, 750, NULL),
(25, 'brur', '2021-03-25', '10:42', NULL, 18000, 10000, 8000, NULL),
(27, 'brur', '2021-03-25', '10:44', NULL, 48000, 40000, 8000, NULL),
(28, 'brur', '2021-03-26', '22:16', NULL, 38000, 30000, 8000, NULL),
(29, 'brur', '2021-03-26', '03:47', NULL, 70945, 50000, 70945, NULL),
(30, 'brur', '2021-03-26', '10:08', NULL, 1375, 1000, 375, NULL),
(31, 'brur', '2021-03-26', '17:56', NULL, 32000, 30000, 2000, NULL),
(32, 'saroar', '2021-03-28', '14:30', NULL, 32000, 30000, 2000, NULL),
(33, 'saroar', '2021-03-28', '14:30', NULL, 32000, 30000, 2000, NULL),
(34, 'saroar', '2021-03-28', '14:50', 'Kafi', 270, 200, 70, NULL),
(35, 'saroar', '2021-03-28', '15:15', 'sobuj', 16000, 15000, 1000, NULL),
(36, 'saroar', '2021-03-28', '15:17', 'hil kafi', 6000, 5000, 1000, NULL),
(37, 'saroar', '2021-03-28', '15:17', 'hil kafi', 6000, 5000, 1000, NULL),
(38, 'saroar', '2021-03-28', '15:17', 'hil kafi', 6000, 5000, 1000, NULL),
(39, 'saroar', '2021-03-28', '15:17', 'hil kafi', 6000, 5000, 1000, NULL),
(40, 'saroar', '2021-03-28', '15:17', 'hil kafi', 6000, 5000, 1000, NULL),
(41, 'saroar', '2021-03-28', '15:24', 'sobuj', 270, 200, 70, NULL),
(42, 'saroar', '2021-03-28', '15:27', 'sobuj', 135, 100, 35, NULL),
(43, 'saroar', '2021-03-28', '15:29', 'customer', 540, 500, 40, NULL),
(44, 'saroar', '2021-03-28', '15:35', 'fgsdfdds', 540, 540, 0, NULL),
(45, 'saroar', '2021-03-28', '15:38', 'sobuj', 27, 27, 0, NULL),
(46, 'saroar', '2021-03-28', '15:50', 'ghyjhu', 135, 135, 0, NULL),
(47, 'saroar', '2021-03-28', '15:52', 'hil kafi', 270, 250, 20, 40);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice_detail`
--

CREATE TABLE `tbl_invoice_detail` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` char(6) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_invoice_detail`
--

INSERT INTO `tbl_invoice_detail` (`id`, `invoice_id`, `product_id`, `product_code`, `product_name`, `qty`, `price`, `total`, `order_date`) VALUES
(27, 24, 6, 'IS5883', 'Potato', 250, 27, 6750, '2021-03-25'),
(28, 25, 7, 'IS4001', 'Cycle', 3, 6000, 18000, '2021-03-25'),
(30, 27, 3, 'IS2001', 'Samsung', 3, 16000, 48000, '2021-03-25'),
(31, 28, 3, 'IS2001', 'Samsung', 2, 16000, 32000, '2021-03-26'),
(32, 28, 7, 'IS4001', 'Cycle', 1, 6000, 6000, '2021-03-26'),
(33, 29, 6, 'IS5883', 'Potato', 1, 27, 27, '2021-03-26'),
(34, 29, 3, 'IS2001', 'Samsung', 1, 16000, 16000, '2021-03-26'),
(35, 29, 7, 'IS4001', 'Cycle', 1, 6000, 6000, '2021-03-26'),
(36, 29, 6, 'IS5883', 'Potato', 1, 27, 27, '2021-03-26'),
(37, 29, 3, 'IS2001', 'Samsung', 1, 16000, 16000, '2021-03-26'),
(38, 29, 3, 'IS2001', 'Samsung', 1, 16000, 16000, '2021-03-26'),
(39, 29, 6, 'IS5883', 'Potato', 1, 27, 27, '2021-03-26'),
(40, 29, 3, 'IS2001', 'Samsung', 1, 16000, 16000, '2021-03-26'),
(41, 29, 6, 'IS5883', 'Potato', 1, 27, 27, '2021-03-26'),
(42, 29, 6, 'IS5883', 'Potato', 25, 27, 675, '2021-03-26'),
(43, 29, 6, 'IS5883', 'Potato', 6, 27, 162, '2021-03-26'),
(44, 30, 11, 'IS5004', 'Rice', 25, 55, 1375, '2021-03-26'),
(45, 31, 3, 'IS2001', 'Samsung', 2, 16000, 32000, '2021-03-26'),
(46, 32, 3, 'IS2001', 'Samsung', 2, 16000, 32000, '2021-03-28'),
(47, 33, 3, 'IS2001', 'Samsung', 2, 16000, 32000, '2021-03-28'),
(48, 34, 6, 'IS5883', 'Potato', 10, 27, 270, '2021-03-28'),
(49, 35, 3, 'IS2001', 'Samsung', 1, 16000, 16000, '2021-03-28'),
(50, 36, 7, 'IS4001', 'Cycle', 1, 6000, 6000, '2021-03-28'),
(51, 37, 7, 'IS4001', 'Cycle', 1, 6000, 6000, '2021-03-28'),
(52, 38, 7, 'IS4001', 'Cycle', 1, 6000, 6000, '2021-03-28'),
(53, 39, 7, 'IS4001', 'Cycle', 1, 6000, 6000, '2021-03-28'),
(54, 40, 7, 'IS4001', 'Cycle', 1, 6000, 6000, '2021-03-28'),
(55, 41, 6, 'IS5883', 'Potato', 10, 27, 270, '2021-03-28'),
(56, 42, 6, 'IS5883', 'Potato', 5, 27, 135, '2021-03-28'),
(57, 43, 6, 'IS5883', 'Potato', 20, 27, 540, '2021-03-28'),
(58, 44, 6, 'IS5883', 'Potato', 20, 27, 540, '2021-03-28'),
(59, 45, 6, 'IS5883', 'Potato', 1, 27, 27, '2021-03-28'),
(60, 46, 6, 'IS5883', 'Potato', 5, 27, 135, '2021-03-28'),
(61, 47, 6, 'IS5883', 'Potato', 10, 27, 270, '2021-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_code` char(6) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_category` varchar(200) NOT NULL,
  `purchase_price` float(10,0) NOT NULL,
  `sell_price` float(10,0) NOT NULL,
  `stock` int(11) NOT NULL,
  `min_stock` int(11) NOT NULL,
  `product_Unit` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_code`, `product_name`, `product_category`, `purchase_price`, `sell_price`, `stock`, `min_stock`, `product_Unit`, `description`, `img`) VALUES
(3, 'IS2001', 'Samsung', 'Electronics', 15000, 16000, 17, 2, 'Piece', 'Android Mobile', '60240faa8e0f5.jpg'),
(6, 'IS5883', 'Potato', 'Curry', 23, 27, 494363, 500, 'kg', 'Potato', '60254d9733dbf.jpg'),
(7, 'IS4001', 'Cycle', 'Vachile', 5000, 6000, 0, 3, 'Piece', 'Cycle', '603623d037049.jpg'),
(11, 'IS5004', 'Rice', 'Curry', 50, 55, 1975, 10, 'kg', 'Rice', '605d596c57c45.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_units`
--

CREATE TABLE `tbl_units` (
  `kd_Unit` int(2) NOT NULL,
  `nm_Unit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_units`
--

INSERT INTO `tbl_units` (`kd_Unit`, `nm_Unit`) VALUES
(1, 'kg'),
(4, 'letter'),
(5, 'Piece');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(15) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `fullname`, `password`, `role`, `is_active`) VALUES
(4, 'saroar', 'Saroar Mahmud', 'cse6th', 'Operator', 1),
(5, 'brur', 'Begum Rokeya Univeristy', 'cse6th', 'Admin', 1),
(6, 'Mostafa', 'Mostafa Kamal', '123456', 'Operator', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`),
  ADD UNIQUE KEY `cat_name_2` (`cat_name`);

--
-- Indexes for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `tbl_invoice_detail`
--
ALTER TABLE `tbl_invoice_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_code` (`product_code`,`product_name`);

--
-- Indexes for table `tbl_units`
--
ALTER TABLE `tbl_units`
  ADD PRIMARY KEY (`kd_Unit`),
  ADD UNIQUE KEY `nm_satuan` (`nm_Unit`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_invoice_detail`
--
ALTER TABLE `tbl_invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_units`
--
ALTER TABLE `tbl_units`
  MODIFY `kd_Unit` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
