-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 06:11 PM
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
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us', 'At Decor Delight, we\'re committed to providing our customers with high-quality products at competitive prices. We understand that shopping for home and lifestyle products can be overwhelming, which is why we strive to make the process as easy and enjoyable as possible.', 'Our Clothes section offers a variety of fashionable and comfortable clothing options. Whether you\'re looking for everyday wear or something for a special occasion, you\'ll find it here.\r\n\r\nIn our Cookware & Crockery section, you\'ll find everything you need to make your kitchen a culinary paradise. From pots and pans to plates and glasses, we\'ve got you covered.\r\n\r\nOur Tools and Home Improvements section is perfect for the DIY enthusiast. Whether you\'re a professional contractor or a weekend warrior, you\'ll find the tools and supplies you need to get the job done right.\r\n\r\nFinally, our Home & Furniture section offers a wide range of stylish and functional pieces to make your house feel like a home. From sofas and beds to lamps and decor, we have everything you need to create a space you love.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Administrator', 'admin@mail.com', 'Password@123', 'user-profile-min.png', '7777775500', 'Morocco', 'Front-End Developer', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical ');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Feminine', 'no', 'feminelg.png'),
(3, 'Kids', 'no', 'kidslg.jpg'),
(4, 'Others', 'no', 'othericon.png'),
(5, 'Men', 'no', 'malelg.png'),
(6, 'Tools & Home Improvements', 'no', 'home-improvement-tool.png'),
(7, 'Home & Furniture', 'no', 'OIP.jpeg'),
(8, 'Crockery & Cookware', 'no', 'crockery & cookware.jpeg'),
(9, 'Pocket-Friendly', 'no', 'pocketfriendly.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'ecomstore@mail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(5, 8, 'Sale', '10', 'Decore', 2, 1),
(6, 14, 'Sale', '65', 'Delight', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(2, 'user', 'user@ave.com', '123', 'United State', 'New York', '0092334566931', 'new york', 'user.jpg', '::1', ''),
(3, 'Demo Customer', 'demo@customer.com', 'Password123', 'DemoCountry', 'DemoCity', '700000000', 'DemoAddress', 'sample_image.jpg', '::1', ''),
(6, 'Sample Customer', 'customer@mail.com', 'Password123', 'Sample Country', 'Sample City', '7800000000', 'Sample Address', 'user-icn-min.png', '::1', '174829126'),
(7, 'Hi', 'hi@gmail.com', 'hihihi', 'India', 'Ahmedabad', '1234567890', 'here it is', 'Decore.png', '::1', '85044058');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 08:21:42', 'pending'),
(23, 3, 20, 1762810884, 1, 'Medium', '2021-09-14 08:35:57', 'Complete'),
(24, 4, 100, 1972602052, 1, 'Large', '2021-09-14 16:37:52', 'Complete'),
(25, 4, 90, 2008540778, 1, 'Medium', '2021-09-14 16:43:15', 'pending'),
(27, 5, 120, 2138906686, 1, 'Small', '2021-09-15 03:18:41', 'Complete'),
(28, 5, 180, 361540113, 2, 'Medium', '2021-09-15 03:25:42', 'Complete'),
(29, 3, 100, 858195683, 1, 'Large', '2021-09-15 03:14:01', 'Complete'),
(31, 6, 245, 901707655, 1, 'Medium', '2021-09-15 03:52:18', 'Complete'),
(32, 6, 75, 2125554712, 1, 'Large', '2021-09-15 03:52:58', 'pending'),
(33, 7, 0, 1195690538, 0, 'Select a Size', '2024-04-18 07:16:12', 'Complete'),
(34, 7, 35, 1871192580, 1, 'Select a Size', '2024-04-18 14:00:41', 'Complete'),
(35, 7, 90, 1871192580, 1, 'Select a Size', '2024-04-18 13:59:12', 'pending'),
(36, 7, 0, 1603037117, 0, 'Select a Size', '2024-04-23 12:04:43', 'pending'),
(37, 7, 0, 881515186, 0, 'Select a Size', '2024-04-23 12:07:05', 'pending'),
(38, 7, 799, 1310407252, 1, 'Select a Size', '2024-04-23 12:12:20', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Adidas', 'no', 'adilg.png'),
(3, 'Nike', 'no', 'niketransl.png'),
(4, 'Philip Plein', 'no', 'pplg.png'),
(5, 'Lacoste', 'no', 'lacostelg.png'),
(7, 'Polo', 'no', 'polobn.jpg'),
(8, 'Gildan 1800', 'no', 'sample_img360.png'),
(9, 'Tempur Sealy International', 'no', 'tempur.jpeg'),
(10, 'Bombay Dyeing', 'no', 'bombay.jpeg'),
(11, 'Casper Sleep Inc.', 'no', 'casper-sleep5764.jpg'),
(12, 'Durian', 'no', 'Durian-Logo.webp'),
(13, 'Zuari Furniture', 'no', 'zuari.webp'),
(14, 'Godrej Interio', 'no', 'godrej-logo-godrej-icon-free-free-vector.jpg'),
(15, 'Ethan Allen ', 'no', 'ethan allen.png'),
(16, 'Wooden Street', 'no', 'Wooden_Street-Logo.wine.png'),
(17, 'Urban Ladder', 'no', 'urban-ladder5877.jpg'),
(18, 'Tata Agrico', 'no', 'tataagrico.png'),
(20, 'Milwaukee', 'no', 'milwaukee.jpeg'),
(21, 'Bajaj Electricals', 'no', 'bajaj electricals.jpg'),
(23, 'Crompton Ltd', 'no', 'crompton.jpg'),
(24, 'CJP Ceramic Industries ', 'no', 'cjp.png'),
(25, 'Clay Craft India', 'no', 'clay craft.jpeg'),
(26, 'noritake', 'no', 'noritake.jpeg'),
(27, 'All Clad', 'no', 'all-clad-logo.jpg'),
(28, 'Anolon', 'yes', 'Anolon-Logo_ExtraLarge700_ID-1927098.jpg'),
(29, 'Tramontina', 'yes', 'Logo-Tramontina-1024x640.jpg'),
(30, 'Caraway', 'yes', 'caraway.jpeg'),
(31, 'Circulon', 'yes', 'Circulon-logo-red-500x150c.webp'),
(32, 'Nordicware', 'yes', 'NordicWare_75Logo_Main.png'),
(33, 'Inditradition', 'no', '48b7a451149c7a4f6b804779014a0412.w1397.h1304.jpg'),
(35, 'Hettich', 'no', 'OIP (1).jpg'),
(37, 'Scotch-brite', 'no', 'R.jpg'),
(38, 'Scotch-brite-Lite', 'no', '81Lwct7SqaL._SL1500_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni', 443, 865, '11/1/2016'),
(4, 6906, 400, 'Western Union', 101025780, 696950, 'January 1'),
(5, 10023, 20, 'Bank Code', 1000010101, 6969, '09/14/2021'),
(6, 69088, 100, 'Bank Code', 1010101022, 88669, '09/14/2021'),
(7, 1835758347, 480, 'Western Union', 1785002101, 66990, '09-04-2021'),
(8, 1835758347, 480, 'Bank Code', 1012125550, 66500, '09-14-2021'),
(9, 1144520, 480, 'Bank Code', 1025000020, 66990, '09-14-2021'),
(10, 2145000000, 480, 'Bank Code', 2147483647, 66580, '09-14-2021'),
(20, 858195683, 100, 'Bank Code', 1400256000, 47850, '09-13-2021'),
(21, 2138906686, 120, 'Bank Code', 1455000020, 202020, '09-13-2021'),
(22, 2138906686, 120, 'Bank Code', 1450000020, 202020, '09-15-2021'),
(23, 361540113, 180, 'Western Union', 1470000020, 12001, '09-15-2021'),
(24, 361540113, 180, 'UBL/Omni', 1258886650, 200, '09-15-2021'),
(25, 901707655, 245, 'Western Union', 1200002588, 88850, '09-15-2021'),
(27, 9784095, 4532, 'Bank Code', 45456, 2147483647, '14');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(17, 2, 1715523401, '9', 2, 'Large', 'pending'),
(23, 3, 1762810884, '12', 1, 'Medium', 'Complete'),
(29, 3, 858195683, '5', 1, 'Large', 'Complete'),
(31, 6, 901707655, '8', 1, 'Medium', 'Complete'),
(32, 6, 2125554712, '15', 1, 'Large', 'pending'),
(34, 7, 1871192580, '9', 1, 'Select a Size', 'Complete'),
(35, 7, 1871192580, '13', 1, 'Select a Size', 'pending'),
(36, 7, 1603037117, '39', 0, 'Select a Size', 'pending'),
(37, 7, 881515186, '15', 0, 'Select a Size', 'pending'),
(38, 7, 1310407252, '35', 1, 'Select a Size', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(5, 20, 9, 5, '2024-04-22 18:21:12', 'Denim Borg Lined Western Jacket', 'product-url-5', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-1-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-2-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0465-0064553-3-pdp_slider_l.jpg', 499, 399, '\r\n\r\n\r\nDenim Borg Lined Western Jacket\r\n\r\n\r\n\r\n', '\r\n\r\n\r\nDenim Borg Lined Western Jacket\r\nnavy-blue\r\njacket\r\n\r\n\r\n\r\n', '\r\n\r\n\r\nDecor Delight\r\n\r\n\r\n\r\n\r\n', 'Jackets', 'Gift', 'product'),
(8, 21, 9, 4, '2024-04-22 18:24:47', 'Sleeveless Flaux Fur Hybrid Coat', 'product-url-8', 'Black Blouse Versace Coat1.jpg', 'Black Blouse Versace Coat2.jpg', 'Black Blouse Versace Coat3.jpg', 999, 899, '\r\n\r\n\r\n\r\nSleeveless Flaux Fur Hybrid Coat\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nSleeveless Flaux Fur Hybrid Coat\r\nphilip plein\r\ncoats\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nDecor Delight\r\n\r\n\r\n\r\n\r\n\r\n', 'Coats', 'Sale', 'product'),
(9, 19, 9, 7, '2024-04-22 18:21:36', 'Long Sleeves Polo Shirt for Men', 'product-url-9', 'product-1.jpg', 'product-2.jpg', 'product-3.jpg', 299, 199, '\r\n\r\n\r\nLong Sleeves Polo Shirt for Men\r\n\r\n\r\n\r\n', '\r\n\r\n\r\nLong Sleeves Polo Shirt for Men\r\npolo t-shirt\r\nfor men\r\nfull sleeves\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\nDecor Delight\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'T-Shirt', 'Sale', 'product'),
(12, 20, 5, 2, '2024-04-22 18:25:44', 'Ultraboost 21 PrimeBlue Shoes', 'ultraboost-21-adidas', 'Ultraboost_21.jpg', 'Ultraboost_21_2.jpg', 'Ultraboost_21_3.jpg', 499, 399, '\r\n\r\n\r\n\r\nUltraboost 21 PrimeBlue Shoes\r\nThis product is made with Primeblue, a high-performance recycled material made in part with Parley Ocean Plastic. 50% of the upper is textile, 92% of the textile is Primeblue \r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nUltraboost 21 PrimeBlue Shoes\r\nComfortable and responsive, Ultraboost became our first shoe to be as popular in streetwear style as it is in performance running.\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nDecor Delight\r\n\r\n\r\n\r\n\r\n', 'sneakers adidas ultraboost shoes', 'Sale', 'product'),
(13, 19, 9, 3, '2024-04-22 18:25:17', 'Nike Sportswear Essential Collection', 'nike-sportswear-essen-col', 'nike-s.jpg', 'nike-s2.jpg', 'nike-s02.jpg', 299, 199, '\r\n\r\n\r\n\r\n\r\nNike Sportswear Essential Collection\r\nsportswear\r\ntrack\r\nnike\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\nNike Sportswear Essential Collection\r\neasy to wear\r\nvery comfortable\r\nnice colour\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\nDecor Delight\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'nike sportswear', 'Sale', 'product'),
(15, 5, 5, 8, '2021-09-15 03:46:42', 'Gildan 1800 Ultra Cotton Polo Shirt', 'cotton-polo-shirt', 'g18bulk.jpg', 'g18bulk2.jpg', 'g18bulk3.jpg', 88, 75, '\r\nTHIS IS A DEMO DESCRIPTION\r\n', '\r\n\r\nDEMO FEATURES\r\n\r\n', '\r\n\r\n\r\n\r\n', 'polo shirt', 'Sale', 'bundle'),
(16, 18, 8, 27, '2024-04-21 16:15:34', 'All-Clad D3 3-Ply Stainless Steel Cookware Set 7 Piece Induction Oven ', 'product-url-27', 'alc1p1.jpg', 'alc2p1.jpg', 'alc6p1.jpg', 6999, 4999, '\r\n\r\n\r\nComplete 7-piece stainless steel set includes: 10-inch fry pan, 2-quart saucepan with lid, 3-quart sauté pan with lid, and 6-quart stockpot with lid. Featuring the exceptional All-Clad D3 tri-ply construction for superior heat distribution and retention.\r\n\r\nFast and Even Heat - D3 tri-ply is fully bonded to the rim for professional performance & durability. The high-quality 18/10 stainless steel surface sears to perfection and is ideal to deglaze for pan sauces.\r\n\r\nDesign You Will Love - D3 has a professionally polished stainless steel finish. Our classic, double-riveted stainless steel handles ensure a secure grip.\r\n\r\nBuilt to Last - Trusted by generations of chefs and backed by All-Clads Limited Lifetime Warranty. Our cookware is oven & broiler safe up to 600F and compatible with any stovetop, including induction. Handwashing is recommended.\r\n\r\nBonded, Engineered, & Assembled in Canonsburg, PA - USA Since 1971.\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nMaterial	Stainless Steel\r\nColor	Silver\r\nBrand	AllClad\r\nSize	7-Piece\r\nHandle Material	Stainless,Stainless Steel\r\n\r\n\r\n\r\n\r\n\r\n', 'decordelight\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Crockery, Cookware', 'Gift', 'product'),
(17, 15, 6, 21, '2024-04-21 16:23:58', 'Bajaj New Shakti Neo 15L Vertical Storage Water Heater', 'product-url-21', 'b1p1.jpg', 'b5p1.jpg', 'b3p1.jpg', 12999, 9999, '\r\nTYPE: Storage Water Heater/Water Geyser, Capacity: 15 Litres, Wattage: 2000 Watts. The rated voltage is 230 volts, and the frequency is 50 Hz.\r\nWARRANTY: PRODUCT WARRANTY By Bajaj - 1 year. Tank Warranty by Bajaj - 5 years. Heating Element Warranty by Bajaj - 2 years.\r\nBUILD TO LAST with GLASSLINE INNER TANK, TITANIUM ARMOUR TECHNOLOGY & MAGNESIUM ANODE for zero erosion: These technologies prevent corrosion & rusting of the geyser inner tank and helps to fight hard water. Results in long tank life.\r\nTEMPERATURE CONTROL - Set the temperature of water as desired with the help of Adjustable Thermostat knob.\r\nENERGY EFFICIENT with SWIRL FLOW TECHNOLOGY - ENSURES 20percent MORE HOT WATER; PUF INSULATION - Traps the heat inside the tank, to keep water hot for longer period, thanks to the Polyurethane foam inserted between the outer and inner shells of water geyser body.\r\nSUITABLE FOR HIGH-RISE BUILDINGS - Pressure withstanding capacity up to 8 bars.\r\n\r\n', 'Brand	Bajaj\r\nProduct Dimensions	33.5W x 46.1H Centimeters\r\nColour	White\r\nWattage	2000 Watts\r\nVoltage	230 Volts\r\n	Capacity\r\n15 litres\r\n	Power Source\r\nElectric\r\n	Material\r\nMetal\r\n	Item Weight\r\n\r\n\r\n\r\n', 'Decor Delight\r\n\r\n\r\n', 'Bajaj', 'Sale', 'product'),
(18, 16, 8, 24, '2024-04-21 16:28:40', 'CJP Cera  Milk Mugs Large', 'product-url-24', 'cc1p1.jpg', 'cc2p2.jpg', 'cc1p1.jpg', 400, 310, 'SIMPLE DESIGN FOR REGULAR USE- Are you looking for a regular coffee mug or cup set? Those you find in a coffee shop, then this is the setting that works best for you. The smooth design gives them a simple and elegant appearance. Great for a hot cup of coffee, tea, or cocoa with friends or family.\r\n DISHWASHER & MICROWAVE SAFE- High quality lead-free and non-toxic special soft porcelain cup. It is made of high-quality kaolin and fired at a high temperature of over 1,000 degrees. Chip-resistant and more sturdy than stoneware. Dont worry about cracking or breaking in the dishwasher and microwave oven. Easy to clean.\r\n LARGE HANDLE SOLID CUP - Traditional C handle design, the handle is suitable for almost all hand sizes. There is enough space between the handle and the cup itself, with a perfect handle, the handle is round and smooth, the curve is beautiful, the size is suitable, easy to grasp, comfortable to hold, not easy to slip.\r\n A VARIETY OF USES- Mugs for hot and cold drinks. It is suitable for coffee, soup, tea, milk, hot cocoa, etc. The cup you have completed will be the best gift for your parents, sisters, brothers, lovers, friends.\r\nEASY TO CLEAN-The coffee mug does not stain, rust or scratch. They are easy to wipe or easy to wash by hand. The dishwasher is safe and clean.\r\n\r\n', 'Brand	Generic\r\nColour	Blue\r\nSpecial Feature	Microwave Safe, Dishwasher Safe, Mug\r\nStyle	Modern\r\nTheme	Holiday\r\nRecommended Uses For Product	Home\r\nIncluded Components	2 Mug\r\nShape	Round\r\nPattern	Solid\r\nProduct Care Instructions	Handle with Care\r\n', 'Decore Delight\r\n', 'Crockery, Cookware', 'Gift', 'product'),
(19, 16, 8, 25, '2024-04-21 16:32:47', 'Clay Craft Fine Ceramic  Floral Printed  Tea/Coffee Cups', 'product-url-25', 'ccfc1p1.jpg', 'ccfc2.jpg', 'ccfc3.jpg', 410, 330, 'Package Content - 6 Cups + 6 Saucers\r\nMaterial - Fine Ceramic\r\nMicrowave/Dishwasher Safe', 'Yellow Flower Tea Cups - Set of 6\r\nBrand	Clay Craft\r\nColour	White\r\nSpecial Feature	Freezer Safe, Microwave Safe, Scratch Resistant\r\nStyle	Contemporary\r\nTheme	Christmas, Holiday, Birthday, Floral, Valentine Day\r\nRecommended Uses For Product	Home\r\nIncluded Components	6 Tea Cups\r\nSpecific Uses For Product	Cold Drinks, Hot Drinks\r\nShape	U-Shape\r\nPattern	Floral\r\nSee more\r\n	Material\r\nCeramic\r\n	Capacity\r\n180 Milliliters\r\n	Occasion\r\nParty, Christmas, Housewarming, Anniversary, Valentine DayParty, Christmas, Housewarming, Anniversary, Valentine Day See more\r\n	Item Weight\r\n800 Grams\r\n\r\n', 'Decore Delight\r\n\r\n', 'Crockery, Cookware', 'Featured', 'product'),
(20, 15, 6, 23, '2024-04-21 16:43:03', 'Crompton Immensa Smart Batten 20 Watt IOT Wi-Fi Enabled LED Batten', 'product-url-23', 'c1p1.jpg', 'c2p1.jpg', 'c4p1.jpg', 2300, 1930, '\r\nIncludes: Wi-fi LED Batten with Clips and Screws\r\nWattage: 20 watts; Operating Voltage: 170-270 volts\r\nWarranty: 1 year on product from the date of invoice\r\nImmensa Wifi/Google Assitant/ IOT\r\nLong life\r\n\r\n\r\n', '\r\nBrand	Crompton\r\nLight Type	LED\r\nSpecial Feature	Energy Efficient, Dimmable, Adjustable Colour Temperature\r\nWattage	20 Watts\r\nBulb Base	E27\r\nIncandescent Equivalent Wattage	20 Watts\r\nSpecific Uses For Product	Lamps\r\nLight Colour	CCT Changing\r\nVoltage	240 Volts\r\n\r\n\r\n', '\r\nDecore Delight\r\n', 'Electricals', 'Featured', 'product'),
(21, 14, 6, 35, '2024-04-21 16:43:33', 'Hettich Door Closer with Standard arm (Model:HSA 10 X)', 'product-url-30', '21qdItdKYmL.jpg', '41IOQRPY7kL.jpg', 'th.jpg', 1800, 1500, '\r\nType: Surface mounted\r\nTechnology: Rack and pinion\r\nColor: Silver\r\nItem Dimension: 177 millimetre x 40 millimetre x 63 millimetre\r\nSuitable for left and right hand opening doors\r\nSuitable for door width: 850- 950 millimetre\r\n\r\n\r\n', '\r\nMaterial	Aluminium\r\nBrand	Generic\r\nColour	SILVER\r\nExterior Finish	Aluminium\r\nInstallation Type	Screw-In\r\n', '\r\nDecore Delight\r\n', 'Handtools', 'Gift', 'product'),
(22, 14, 6, 33, '2024-04-21 16:48:13', 'Inditradition 10 In 1 Multi-functional Pocket Hand Tool Set (Axe Hammer, Hatchet, Wrench, Cutter & More)', 'product-url-29', 'e1.jpg', 'e2.jpg', '71QutmdbOIL._SL1500_.jpg', 700, 500, '\r\nVery innovative hand tool with 10 different tools In 1 Integration design to save your tool kit space and expense. Must have product for day to day life whether at home or office.\r\n10 different tools in 1 :- Hatchet, Hammer, Pliers, Phillips head screwdriver, Mini wood Saw, Slotted point screwdriver, Wrench, Wire cutter, Nail file, Bottle opener tool.\r\nMust-have EDC multi tool - Ideal for camping, fishing, hiking, DIY jobs and a great multitool hammer! Can cut, pry, twist the screw, open fire hydrant, saw wood, strong enough to shatter the glass curtain wall, cut the rope curtain in a dangerous escape etc.\r\nThis multi-functional tool set is made up of durable 2CR13 stainless steel with nonstick coating. Covered with smooth wooden handle to prevent hurting your hands.\r\nDimensions - 7.09 x 0.98 x 3.54 Inch :: Weight - 400 Grams :: With free Carry Cover\r\n\r\n\r\n', '\r\nColour	Silver\r\nMaterial	Stainless Steel\r\nBrand	Inditradition\r\nItem Dimensions LxWxH	16 x 10 x 3 Centimeters\r\nItem Weight	39 Grams\r\n\r\n\r\n', '\r\nDecor Delight\r\n\r\n', 'Handtools', 'Sale', 'product'),
(23, 14, 6, 20, '2024-04-21 16:53:25', 'MILWAUKEE ELEC TOOL 48-32-5009 25PK 1', 'product-url-20', 'm1p1.jpg', 'm4p1.jpg', 'm3p1.jpg', 4700, 4500, '\r\nThe product is 25PK 1\" Magen Bit Holder\r\nEasy to use\r\nThe product is manufactured in China\r\n\r\n\r\n', '\r\nBrand	Milwaukee\r\nMaterial	Alloy Steel\r\nNumber of Pieces	25\r\n\r\n\r\n', '\r\nDecore Delight\r\n\r\n\r\n', 'Power', 'Gift', 'product'),
(24, 18, 8, 26, '2024-04-21 16:58:27', 'Noritake Japan - Porcelain Dinner Set of 5 pcs, Service for 1 - Luxury Dining and Kitchen Set', 'product-url-26', 'n1p1.jpg', 'n2p1.jpg', 'n3p1.jpg', 4952, 4100, 'ELEGANT DESIGN: Dinner set made using 24K gold on highly translucent, pure white porcelain. High glazing quality ensures lifelong shine, smoothness and resistance to cutlery marks. \r\nHIGH QUALITY MATERIALS: This tableware dinner set is lead-free, cadmium-free, food-grade, and has superior chip and breakage-resistance. \r\nCONVENIENT AND EASY CARE: This dinnerware is dishwasher, fridge, freezer and convection oven safe and does not require any extensive care. Avoid severe & sudden temperature changes, or using lemon based detergents. \r\nAN IDEAL GIFT: World-famous design and quality of Noritake, Japan, is ideal for entertaining guests, or gifting on occasions such as weddings, or to pass down the generation as an heirloom. \r\nPACKAGE CONTENTS: 1 dinner plate (26.8 cm), 1 half plate (21.2 cm), 1 cup (215 ml), 1 saucer (15.6 cm), 1 katori (220 ml) \r\n\r\n', 'Petite Fleur_ Dinner Set 5 pcs\r\nColour	PETIT FLEUR\r\nBrand	Noritake\r\nPattern	Floral\r\nCollection Name	All\r\nFinish Type	Glossy\r\n	Material\r\nPorcelain\r\n	Occasion\r\nMothers Day, Christmas, Wedding, Diwali, Housewarming, Anniversary, BirthdayMothers Day, Christmas, Wedding, Diwali, Housewarming, Anniversary,… See more\r\n	Shape\r\nRound\r\n	Is Dishwasher Safe\r\nYes\r\n\r\n', 'DecoreDelight\r\n\r\n', 'Power', 'Sale', 'product'),
(25, 14, 6, 18, '2024-04-21 17:06:32', 'AGRICO TATA Allen Key Set', 'product-url-18', 't1p1.jpg', 't2p1.jpg', 't3p1.jpg', 399, 200, 'AGRICO TATA Allen Key Set, Box packing (1.5 to 10 -Sizes in mm)\r\n\r\n\r\n', 'AGRICO TATA Allen Key Set, Box packing (1.5 to 10 -Sizes in mm)\r\n\r\n\r\n', 'Decor Delight\r\n\r\n', 'Power', 'Sale', 'product'),
(26, 11, 7, 17, '2024-04-22 16:27:48', 'Grey 300 TC Cotton Blend Size Bedsheet With Pillow Covers', 'product-url-17', 'ub1p1.jpg', 'ub1p2.jpg', 'ub3p1.jpg', 350, 250, 'Grey 300 TC Cotton Blend Size Bedsheet With Pillow Covers\r\n\r\n', 'Grey 300 TC Cotton Blend Size Bedsheet With Pillow Covers\r\nbedsheet cover\r\npillow cover\r\n', 'Decor Delight\r\n\r\n', 'bedding', 'Sale', 'product'),
(27, 23, 6, 37, '2024-04-22 17:24:19', 'Scotch-Brite 2-in-1 Bucket Spin Mop', 'product-url-31', 'c5p1.jpg', 'c2p1.jpg', 'c4 p1.jpg', 499, 399, 'Twin Bucket Spin Mop for easy wringing and rinsing\r\nMicrofibre technology helps lift and trap dirt with unique easy clean surface for superior clean\r\nDual refill ensures usage depending on cleaning occasion and frequency and ensures that it lasts longer\r\n', 'Purchase options and add-ons\r\nAccessories\r\nAccessories and add-onsAccessories and add-ons\r\nColour	Green\r\nMaterial	Plastic\r\nHandle Material	Plastic\r\nHandle Type	Spin Mop  Adjustable\r\nHead Material	Microfiber\r\n\r\n\r\n', 'Decor Delight\r\n\r\n', 'cleaning supplies', 'Gift', 'product'),
(28, 23, 6, 37, '2024-04-23 11:35:20', 'Scotch-Brite Sponge Wipe Resusable Kitchen Cleaning foam Cellulose wood Sponge', 'product-url-32', '71gQmy5CFcL._SL1500_.jpg', '71HtfRsW3GL._SL1500_.jpg', '71XdLLUEo9L._SL1500_.jpg', 299, 199, '\r\nThe cellulose based sponge cleans any mess in a single swipe\r\nDoes not leave behind any water marks\r\nAbsorbs water 10 times its own weight\r\nLint free and scratch free cleaning  Wash under running water before use\r\nSponge Wipe Size - Length:17 2cm  Width  19.8cm   Net Quantity  5N Pack\r\nCustomer ratings by feature\r\n\r\n\r\n', '\r\nBrand	Scotch-Brite\r\nMaterial	Cellulose\r\nSurface Recommendation	Plastic\r\nColour	Green\r\nSpecial Feature	Non-Scratch Eco-Friendly\r\nEasy to use\r\n\r\nEasy to clean\r\n\r\nAbsorbency\r\n\r\nLongevity\r\n\r\n\r\n\r\n', '\r\nDecor Delight\r\n\r\n\r\n', 'cleaning supplies', 'Featured', 'product'),
(29, 12, 7, 10, '2024-04-22 17:41:55', 'Bombay Dyeing All Season 246 GSM Polyester Teal Solid Double AC Blanket', 'product-url-10', 'bombay-dyeing-all-season-246-gsm-polyester-teal-solid-double-ac-blanket-travel-blanket-camping-product-images-orvghiuqrva-p608050291-0-202402180953.webp', 'bombay-dyeing-all-season-246-gsm-polyester-teal-solid-double-ac-blanket-travel-blanket-camping-product-images-orvghiuqrva-p608050291-1-202402180953.jpg', 'bombay-dyeing-all-season-246-gsm-polyester-teal-solid-double-ac-blanket-travel-blanket-camping-product-images-orvghiuqrva-p608050291-2-202402180953.jpg', 599, 499, '\r\nBombay Dyeing All Season 246 GSM Polyester Teal Solid Double AC Blanket,Travel Blanket & Camping.\r\nBrand	BOMBAY DYEING\r\nManufacturer	BOMBAY DYEING\r\nManufacturer Address	\r\nBombay Dyeing\r\n\r\n\r\n', '\r\nBombay Dyeing All Season 246 GSM Polyester Teal Solid Double AC Blanket,Travel Blanket & Camping.\r\nBrand	BOMBAY DYEING\r\nManufacturer	BOMBAY DYEING\r\nManufacturer Address	\r\nBombay Dyeing\r\n\r\n\r\n', '\r\nDecor Delight\r\n\r\n\r\n', 'soft furnishing', 'Gift', 'product'),
(30, 11, 7, 11, '2024-04-22 17:41:17', 'Casper Sleep Element, Medium Firm Twin Mattress', 'product-url-11', '61Nnrv-2xBL._AC_SL1000_.jpg', '917OJ63DPxL._AC_SL1500_.jpg', 'A1pE-H18iCL._AC_SL1500_.jpg', 5999, 4999, 'Casper Sleep Element, Medium Firm Twin Mattress - Memory Foam AirScape Cooling   Support  100 Night Trial  CertiPUR US Mattress  Grey\r\nItem  46454718\r\n\r\n', 'Special Feature	Durable,Premium\r\nFill Material	Memory Foam\r\nBrand	Casper\r\nProduct Dimensions	\r\nColor	Grey\r\nModel Name	Element\r\nProduct Care Instructions	Hand Wash Only\r\nComfort Layer Material	Comfort Foam\r\nIs Customizable	No\r\n\r\n', 'Decor Delight\r\n\r\n', 'bedding', 'Gift', 'product'),
(31, 11, 7, 12, '2024-04-22 17:46:05', 'Durian Furniture Jordon', 'product-url-12', '41UMX31y+7L._SX679_.jpg', '41zpw14q9RL._SX679_.jpg', '418G+MHmsDL._SX679_.jpg', 3999, 2999, 'Durian Furniture Jordon Adjustable Height Armrest 8 Hours Working Comfort Revolving Height Lift Self Adjusted Mechanism Highback Office Chair - Black\r\n\r\n', 'Brand	Durian\r\nColour	Black\r\nMaterial	Mesh\r\nProduct Dimensions	\r\nSize	One Seater\r\nBack Style	Solid Back\r\n\r\nBreathable mesh back\r\nMade with all BIFMA standard\r\nCentral console for lower back support\r\nSynchro Single Locking Mechanism.\r\nArm height adjustment\r\nTilt Tension Control\r\nHigh back for additional support\r\nHeadrest height adjustment\r\nStrong Chrome base with five castors\r\nPneumatic Height adjustment\r\n\r\n', 'Decor Delight\r\n\r\n', 'bedding', 'Sale', 'product'),
(32, 13, 7, 15, '2024-04-22 17:53:25', 'Ethan Allen Brass Wooden Chest', 'product-url-15', 'IMG_7183_980x1225 (1).webp', 'SNEP1081-1_880x880.webp', 'SNEP1081-3_880x880.webp', 9999, 8999, 'Ethan Allen Brass Wooden Chest\r\nSKU SNEP1081\r\n\r\n\r\n10\r\nQuantity\r\n10\r\nQuantity\r\nAdd to cart\r\nBulk Order\r\nShare this:\r\n   \r\nThe engraved intricate pattern design on this wooden chest renders a regal feel. This box showcases artistic talent and merges it beautifully with functionality.\r\n\r\n\r\n', 'Additional Information\r\nColour	Brown , Gold\r\nDimensions (Cms)\r\nFinish	Brass\r\nMaterial	Mango Wood\r\n\r\n', 'Decor Delight\r\n\r\n', 'home decor', 'Gift', 'product'),
(33, 13, 7, 14, '2024-04-22 17:57:03', 'StorEase 4-Door Display Unit With Glass & Steel Swing Doors', 'product-url-14', '30161803SD01738_01_803x602.jpg', '30161803SD01738_03_803x602.jpg', '30161803SD01738_A2_803x602.jpg', 9999, 8999, 'StorEase 4 Door Display Unit With Glass   Steel Swing Doors (Pale Green)\r\n1 Year Warranty  2 Shelves\r\nCOLOR   PaleGreen\r\nPaleGreen\r\n\r\n\r\nNet Weight (kg)\r\n56.7\r\n\r\nSales Package\r\n1 Steel Almirah\r\n\r\nFinish Color\r\nPale Green\r\n\r\n', 'Style\r\nContemporary & Modern\r\n\r\nWheels Included\r\nNo\r\n\r\nPrimary Material\r\nCRCA Steel\r\n\r\nWarranty\r\n1 Year Warranty\r\n\r\nWith Mirror\r\nNo\r\n\r\nNumber of Lockers\r\nNo Locker\r\n\r\nNumber of Drawers\r\nNo Drawer\r\n\r\nNumber of Shelves\r\n2 Shelves\r\n\r\nWith Overhead Unit\r\nNo\r\n\r\nDoor Type\r\nHinged\r\n\r\nDelivery Condition\r\nPre-assembled\r\n\r\nCountry Of Origin\r\nOman\r\n\r\n', 'Decor Delight\r\n\r\n', 'home decor', 'Sale', 'product'),
(35, 21, 9, 7, '2024-04-22 18:22:27', 'leather jacket', 'product-url-7', 'pp1.jpg', 'S19C-MLB0701-PLE029P_02_mf.jpg', 'S19C-MLB0701-PLE029P_02_mb.jpg', 999, 799, '\r\n\r\nIt is not easy to reinterpret the look of an iconic piece of clothing, but Philipp Plein is able to transform everything giving it a contemporary and unconventional look. Like this leather jacket or perfecto made of polished python skin and decorated with paddings and zipped pockets. Zip opening and cuffs. Inner lining.\r\n\r\n\r\n\r\n', '\r\n\r\nIt is not easy to reinterpret the look of an iconic piece of clothing, but Philipp Plein is able to transform everything giving it a contemporary and unconventional look. Like this leather jacket or perfecto made of polished python skin and decorated with paddings and zipped pockets. Zip opening and cuffs. Inner lining.\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'home decor', 'Sale', 'product'),
(38, 13, 7, 16, '2024-04-22 18:14:42', 'Wooden Street', 'product-url-16', '1.jpg', '2.jpg', '5.jpg', 1999, 1500, '\r\nWooden Street\r\nKestrel 3 Door Dresser Wardrobe With Mirror (Columbian Walnut White Finish)\r\nKestrel 3 Door Dresser Wardrobe With Mirror (Columbian Walnut White Finish)\r\n\r\n', '\r\nWooden Street\r\nKestrel 3 Door Dresser Wardrobe With Mirror (Columbian Walnut White Finish)\r\nKestrel 3 Door Dresser Wardrobe With Mirror (Columbian Walnut White Finish)\r\nMerchant Name:	The Woodenstreet Furnitures Pvt. Ltd.\r\n\r\n', 'Decor Delight\r\n\r\n\r\n\r\n', 'home decor', 'Gift', 'product'),
(39, 12, 7, 13, '2024-04-22 18:17:59', 'Zuari Nora Engineered Wood 2 Door Almirah with Full Mirror', 'product-url-13', '41iIJo+5TKL._SY300_SX300_.jpg', '61TnIZIbOoL._SX679_.jpg', '511aCLL4kkL._SX679_.jpg', 8999, 7999, 'Zuari Nora Engineered Wood 2 Door Almirah with Full Mirror\r\nBrand	Zuari\r\nColour	REDICCA WALNUT\r\nMaterial	Engineered Wood\r\n\r\n', 'Recommended Uses For Product	Medicine, Jewellery, Clothes, Files & Folders, Towels\r\nSpecial Feature	Chemical Resistant, Stackable, Heavy Duty, Lockable, Fire Resistant\r\nMounting Type	Floor Mount\r\nRoom Type	Bedroom\r\nDoor Style	Flat Panel\r\nIncluded Components	Shelves\r\n\r\n', 'Decor Delight\r\n\r\n', 'soft furnishing', 'Gift', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Coats', 'no', 'coaticn.png'),
(5, 'T-Shirts', 'no', 'tshirticn.png'),
(6, 'Sweater', 'no', 'sweatericn.png'),
(7, 'jackets', 'no', 'jacketicn.png'),
(8, 'Sneakers', 'no', 'sneakericn.png'),
(9, 'Trousers', 'no', 'trousericn.png'),
(11, 'Bedding', 'no', 'OIP (1).jpeg'),
(12, 'Soft Furnishing', 'no', 'Fotolia_56783306_M.jpg'),
(13, 'Home Decor', 'no', '15-ideas-for-exclusive-wall-decoration-with-squares-12-108.jpg'),
(14, 'Power & Handtool', 'no', 'handandtools.jpg'),
(15, 'Electricals', 'no', 'electricals.jpeg'),
(16, 'Ceramic', 'no', 'Ceramic.jpg'),
(17, 'Bakewares', 'no', 'bakewares.jpeg'),
(18, 'Unbreakable', 'no', 'unbreakable.jpg'),
(19, 'Under 299', 'no', 'under299.jpg'),
(20, 'Under 499', 'no', '499.webp'),
(21, 'Under 999', 'no', '999.webp'),
(23, 'Cleaning supplies', 'no', 'OIP (2).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_title` varchar(255) DEFAULT NULL,
  `service_image` varchar(255) DEFAULT NULL,
  `service_desc` text DEFAULT NULL,
  `service_button` varchar(100) DEFAULT NULL,
  `service_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'Ahmedabad Store', 'store (3).jpg', '<p style=\"text-align: center;\"><strong>180-182 RECENTS STREET, Ahmedabad,India</strong></p>\r\n<p>As far as I know, it has Multiplex, Gamezone, Foodstalls, Hamleys, and Premium branded shopping. Food brands like Domino\'s, McDonald, etc. Electronics stores Many are about to open. I think it will take 15 days to make it run fully. When you visit, you can find the list of the available shops on the ground floor. I will add more details once I will visit personally.\r\n\r\nBook your ultimate vacation on Yas Island Abu Dhabi\r\n\r\nAdidas, Max, Timezone, Wow China, PVR, Crosswords, Reebok, Pantaloons, Max, Jockey, Bata, H&M, and many more</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(5, 'Surat Store', 'store (1).png', '<p style=\"text-align: center;\"><strong>109 COLUMBUS CIRCLE, SURAT,INDIA </strong></p>\r\n<p>To the best of my knowledge, the establishment boasts a variety of attractions including a Multiplex cinema, an interactive Gamezone, an array of Foodstalls, the renowned toy store Hamleys, and a selection of Premium branded shopping outlets. Esteemed food chains such as Domino\'s and McDonald\'s are present, alongside a host of Electronics stores that are poised to commence operations soon. My estimation is that it will require approximately 15 days to reach full operational status. Upon your arrival, you will be able to discover a comprehensive list of all the operational shops located on the ground floor. I intend to provide additional details following my personal visit to the site.\r\n\r\nEnsure to plan your ultimate getaway on Yas Island Abu Dhabi, where you can explore a wide range of stores including Adidas, Max, Timezone, Wow China, PVR cinemas, Crosswords bookstore, Reebok, Pantaloons, Jockey, Bata, H&M, among numerous others.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(6, 'Surendranagar Store', 'store (2).jpg', '<p style=\"text-align: center;\"><strong>2133 RUE SAINT-HONORE,Surendranagar&nbsp;</strong></p>\r\n<p>Certainly! Allow me to craft an eloquent and embellished rendition of the information:\r\n\r\nIn contemplation of the establishment in question, an assemblage of captivating attractions awaits discerning patrons. Among these, a Multiplex cinema beckons cinephiles, while an interactive Gamezone tantalizes the playful spirit. The gastronomic offerings, arrayed in enticing Foodstalls, promise culinary delights. Notably, the venerable toy emporium, Hamleys, graces the premises alongside a constellation of Premium branded boutiques.\r\n\r\nMoreover, esteemed food purveyors such as Domino\'s and McDonald\'s have taken up residence, their savory offerings poised to satiate discerning palates. Furthermore, the imminent arrival of Electronics stores augurs well for tech enthusiasts. A mere fortnight stands between the present and the full operationalization of this multifaceted haven. Upon your visit, a comprehensive directory of ground-floor establishments shall greet you, providing a roadmap to retail nirvana.\r\n\r\nIn the realm of leisure and luxury, Yas Island Abu Dhabi beckons. Here, the discerning shopper can traverse a veritable tapestry of renowned brands. Adidas, Max, Timezone, Wow China, PVR cinemas, Crosswords bookstore, Reebok, Pantaloons, Jockey, Bata, and H&M await, each offering a symphony of style and substance.\r\n\r\nMay your sojourn to this retail utopia be nothing short of sublime! ???</p>', 'View Map', 'http://www.thedailylux.com/ecommerce');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Usage Agreement: Customers agree to the terms by using Decordelight Services, which include shopping, mobile applications, and other related services1.\r\nPrivacy: DecorDelights’s Privacy Notice outlines data handling practices1.\r\nElectronic Communications: Customers consent to electronic interactions with Amazon and acknowledge that all electronic communications satisfy legal requirements1.\r\nCopyright: Content on DecorDelight Services is protected by copyright laws, and customers must respect these rights1.\r\nTrademarks: Decordelight’s trademarks cannot be used in a way that causes confusion or discredits the company1.\r\n</p>'),
(2, 'Refund Policy', 'link2', 'Refund Methods and Timelines: For Fulfilled by Decor Delight (FBA) orders, once the return is received by Decor Delight, refunds are processed promptly. For Seller-Fulfilled orders, refunds occur after the seller notifies Decor Delight of the return receipt. Prepaid Orders: Decor Delight Pay Balance: Refunded within 4 hours. Credit Card/Debit Card: Refunded within 5 working days. Net Banking Account (Credited to Bank Account) and UPI Linked Bank Account: Refunded within 5 working days. Pay on Delivery Orders: NEFT to Bank Account: Refunded within 5 working days. Decor Delight Pay Balance: Refunded within 4 hours. Paper Cheque: Refunded within 10 working days (only in exceptional cases). Decor Delight Pay Balance: A sum of all balances associated with Decor Delight Gift Cards in your Decor Delight.in account. If the standard refund time-frame has expired and you haven’t received the refund, contact your credit/debit card issuer or bank. International customers should reach out to Customer Service for refunds. For Seller-Fulfilled orders, sellers authorize refunds for damaged/defective items. Decor Delight assists in facilitating refunds when the seller notifies them of the return receipts.'),
(3, 'Pricing and Promotions Policy', 'link3', 'Decor Delight’s Pricing & Promotions strategy is a comprehensive approach aimed at delivering value to customers and driving sales. Here’s a revised summary:\r\n\r\nDynamic Pricing: Central to Decor Delight’s strategy is dynamic pricing, which adjusts prices based on market conditions, competitor pricing, and customer behavior. This ensures that Decor Delight’s prices are competitive, fostering customer loyalty and encouraging repeat business.\r\n\r\nBuy Box: A key feature of Decor Delight’s platform is the Buy Box, which sellers aim to win. The Buy Box favors competitively priced items, and securing it can significantly boost a seller’s visibility and sales. Sellers who do not win the Buy Box can still achieve high rankings based on product price and shipping cost.\r\n\r\nPromotions: Decor Delight utilizes various promotional tactics to create urgency, clear inventory, and improve product visibility. These include time-limited discounts, coupons, and daily deals. Promotions not only motivate purchases but also help products move up the search rankings, leading to more organic sales.\r\n\r\nTechnology and Data: Decor Delight leverages advanced technology and data analytics to fine-tune its pricing and promotions. The company employs sophisticated algorithms to track and modify prices and promotions, ensuring they remain appealing to customers while also being profitable for sellers.\r\n\r\nCustomer-Centric Approach: Decor Delight’s pricing and promotions are part of a broader customer-centric philosophy. The company strives to provide value through competitive pricing, a wide selection of products, and convenient, fast delivery options. This strategy has helped Decor Delight become a prominent player in e-commerce, known for offering great deals and a seamless shopping experience.');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(3, 5, 13),
(4, 3, 13),
(5, 6, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
