-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2015 at 05:33 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ir`
--

-- --------------------------------------------------------

--
-- Table structure for table `products1`
--

CREATE TABLE IF NOT EXISTS `products1` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products1`
--

INSERT INTO `products1` (`id`, `product_code`, `product_name`, `product_desc`, `product_image`, `price`, `stock`) VALUES
(1, 'PD1001', 'Dell Computer', '4 mega pixel camera\r\n250 gega ram\r\n12.2 inches', 'images (1).jpg', '200.00', 2),
(2, 'PD1002', 'Samsung tab', 'A touch-tablet \r\n10.2 inch\r\n4 gega ram', 'images (2).jpg', '300.00', 0),
(3, 'PD1003', 'Iphone 4', 'the third version of the Iphone series\r\n8 gega ram hard \r\n4.2 inches', 'download.jpg', '700.00', 0),
(4, 'PD123', 'Camera Nikon ', '24 mega pixel \r\nhigh resolution\r\nwith capability to video capture', 'images (3).jpg', '500.00', 0),
(5, 'PD134', 'HP printer', 'lazer printer \r\nblack & white printer', 'images (4).jpg', '250.00', 0),
(6, 'PD567', 'IPhone 3g', 'It is the oldest version of iphone', 'images.jpg', '130.00', 0),
(7, 'PD843', 'IPhone 3gs', 'it is an old but strong phone', 'images (5).jpg', '120.00', 0),
(8, 'PD333', 'Camera Samsung', 'This is a high camera resolution 16 mega pixel', 'images (6).jpg', '750.00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products1`
--
ALTER TABLE `products1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products1`
--
ALTER TABLE `products1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
