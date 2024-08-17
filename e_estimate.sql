-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2024 at 03:48 AM
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
-- Database: `e_estimate`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_ID` int(11) NOT NULL,
  `adminname` varchar(255) NOT NULL,
  `a_username` varchar(255) NOT NULL,
  `a_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clients`
--

CREATE TABLE `tbl_clients` (
  `client_ID` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `Contract_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_costo_design`
--

CREATE TABLE `tbl_costo_design` (
  `design_id` int(11) NOT NULL,
  `order_ID` int(11) NOT NULL,
  `designdetails` varchar(255) NOT NULL,
  `transaction_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_ID` int(11) NOT NULL,
  `client_ID` int(11) NOT NULL,
  `product_ID` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `Quantity` int(11) NOT NULL,
  `total price` int(11) NOT NULL,
  `design` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_ID` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `transaction_ID` int(11) NOT NULL,
  `order_ID` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_numcash` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userdetails`
--

CREATE TABLE `tbl_userdetails` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `contractnumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_userdetails`
--

INSERT INTO `tbl_userdetails` (`id`, `fullname`, `age`, `sex`, `location`, `contractnumber`) VALUES
(1, 'asdfa', 332, 'Male', 'asdf', '342'),
(2, 'Elmer Adaza', 21, 'Male', 'Brgy. San Francisco, San Pablo City', '911111111');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userdetails_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `userdetails_id`) VALUES
(3, 'adfas', '$2y$10$bdQD/YrZWOAg64fcspPJueFhNypuSJ/jftA.JA6yVDZmXHIEAm85O', 1),
(4, 'elmer123', '$2y$10$G/B.8DFLntRAukPn/dTbieCM2dDgNa5NB1x1BmyyCLrUkPoH6RrBK', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_ID`);

--
-- Indexes for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  ADD PRIMARY KEY (`client_ID`);

--
-- Indexes for table `tbl_costo_design`
--
ALTER TABLE `tbl_costo_design`
  ADD PRIMARY KEY (`design_id`),
  ADD KEY `order_ID` (`order_ID`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `client_ID` (`client_ID`),
  ADD KEY `product_ID` (`product_ID`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_ID`);

--
-- Indexes for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD PRIMARY KEY (`transaction_ID`),
  ADD KEY `order_ID` (`order_ID`);

--
-- Indexes for table `tbl_userdetails`
--
ALTER TABLE `tbl_userdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userdetails_id` (`userdetails_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  MODIFY `client_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_costo_design`
--
ALTER TABLE `tbl_costo_design`
  MODIFY `design_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `transaction_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_userdetails`
--
ALTER TABLE `tbl_userdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_costo_design`
--
ALTER TABLE `tbl_costo_design`
  ADD CONSTRAINT `tbl_costo_design_ibfk_1` FOREIGN KEY (`order_ID`) REFERENCES `tbl_transaction` (`order_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`client_ID`) REFERENCES `tbl_clients` (`client_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`product_ID`) REFERENCES `tbl_product` (`product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD CONSTRAINT `tbl_transaction_ibfk_1` FOREIGN KEY (`order_ID`) REFERENCES `tbl_order` (`order_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `tbl_users_ibfk_1` FOREIGN KEY (`userdetails_id`) REFERENCES `tbl_userdetails` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
