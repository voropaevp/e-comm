-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2019 at 09:26 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info`
(
    `admin_id`       int(10)      NOT NULL,
    `admin_name`     varchar(100) NOT NULL,
    `admin_email`    varchar(300) NOT NULL,
    `admin_password` varchar(300) NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`)
VALUES (1, 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands`
(
    `brand_id`    int(100) NOT NULL,
    `brand_title` text     NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`)
VALUES (1, 'DVD'),
       (2, 'BlueRay');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart`
(
    `id`      int(10)      NOT NULL,
    `p_id`    int(10)      NOT NULL,
    `ip_add`  varchar(250) NOT NULL,
    `user_id` int(10) DEFAULT NULL,
    `qty`     int(10)      NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Dumping data for table `cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories`
(
    `cat_id`    int(100) NOT NULL,
    `cat_title` text     NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`)
VALUES (1, 'Modern'),
       (2, 'Retro'),
       (3, 'Musicals'),
       (4, 'Romance'),
       (5, 'Comedy'),
       (6, 'Collection'),
       (7, 'Action');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info`
(
    `email_id` int(100) NOT NULL,
    `email`    text     NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`)
VALUES (3, 'aaa@aaa.aa'),
       (4, 'bbb@bbb.bb'),
       (5, 'ccc@ccc.cc'),
       (6, 'ddd@ddd.dd');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders`
(
    `order_id`   int(11)      NOT NULL,
    `user_id`    int(11)      NOT NULL,
    `product_id` int(11)      NOT NULL,
    `qty`        int(11)      NOT NULL,
    `trx_id`     varchar(255) NOT NULL,
    `p_status`   varchar(20)  NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info`
(
    `order_id`   int(10)      NOT NULL,
    `user_id`    int(11)      NOT NULL,
    `f_name`     varchar(255) NOT NULL,
    `email`      varchar(255) NOT NULL,
    `address`    varchar(255) NOT NULL,
    `city`       varchar(255) NOT NULL,
    `state`      varchar(255) NOT NULL,
    `zip`        varchar(10)  NOT NULL,
    `cardname`   varchar(255) NOT NULL,
    `cardnumber` varchar(20)  NOT NULL,
    `expdate`    varchar(255) NOT NULL,
    `prod_count` int(15)               DEFAULT NULL,
    `total_amt`  int(15)               DEFAULT NULL,
    `cvv`        int(5)       NOT NULL,
    `status`     int(11)      NOT NULL DEFAULT '0'
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Dumping data for table `orders_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products`
(
    `order_pro_id` int(10) NOT NULL,
    `order_id`     int(11) NOT NULL,
    `product_id`   int(11) NOT NULL,
    `qty`          int(15) DEFAULT NULL,
    `amt`          int(15) DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Dumping data for table `order_products`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products`
(
    `product_id`       int(100)     NOT NULL,
    `product_cat`      int(100)     NOT NULL,
    `product_brand`    int(100)     NOT NULL,
    `product_title`    varchar(255) NOT NULL,
    `product_price`    int(100)     NOT NULL,
    `product_desc`     text         NOT NULL,
    `product_image`    text         NOT NULL,
    `product_keywords` text         NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`,
                        `product_image`, `product_keywords`)
VALUES (1, 1, 2, 'Ad Astra', 12, 'Ad Astra', 'AdAstraDVDCovercopy-950x638.jpg', ''),
       (2, 1, 2, 'Cross Rise', 11, 'Cross Rise', 'Cross-RiseOfTheVillains2019R1Custom-950x638.jpg', ''),
       (3, 4, 1, 'Glen Miller', 15, 'Glen Miller', 'glen-miller-950x637.jpg', ''),
       (4, 6, 2, 'Jira Knithley 2002-2005', 15, 'Jira Knithley 2002-2005', 'KKFC-S2-950x638.jpg', ''),
       (5, 6, 2, 'Jira Knithley 2016-2019', 15, 'Jira Knithley 2016-2019', 'KKFC-S6-950x638.jpg', ''),
       (6, 1, 1, 'Joker', 10, 'Joker white copy', 'okerDVDCoverwhitecopy-950x638.jpg', ''),
       (7, 3, 2, 'Phantom Of The Opera The Royal Albert Hall', 12, 'Phantom Of The Opera The Royal Albert Hall',
        'PHANTOMOFTHEOPERAATTHEROYALALBERTHALLBLURAYCOVER-950x534.jpg', ''),
       (8, 7, 1, 'South Pacific 50 Anniversary', 13, 'South Pacific 50 Anniversary',
        'SOUTHPACIFIC50THANNIVERSARYBLURAYCOVER-950x535.jpg', ''),
       (9, 2, 1, 'The Five Pennies', 8, 'The Five Pennies', 'the five pennies-950x637.jpg', ''),
       (10, 2, 1, 'The Gang\'s All Here', 5, 'The Gang\'s All Here', 'THE GANG’S ALL HERE-950x662.jpg', ''),
       (11, 2, 1, 'The Gay Divorcee', 5, 'The Gay Divorcee', 'THE GAY DIVORCEE -950x647.jpg', ''),
       (12, 5, 1, 'The Fantastics', 5, 'The Fantastics', 'THEFANTASTICKS-950x635.jpg', ''),
       (13, 3, 1, 'The First Musical', 5, 'The First Musical',
        'THEFIRSTNUDIEMUSICAL26THANNIVERSARYDVDCOVER-950x631.jpg', ''),
       (14, 3, 1, 'Yellow Submarine', 10, 'Yellow Submarine', 'YELLOWSUBMARINEBLURAYSLIPCOVER-950x556.jpg', 'l');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating`
(
    `id`         int(11)      NOT NULL,
    `product_id` int(11)      NOT NULL,
    `name`       varchar(255) NOT NULL,
    `email`      varchar(255) NOT NULL,
    `review`     text         NOT NULL,
    `rating`     int(2)       NOT NULL,
    `timestamp`  timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info`
(
    `user_id`    int(10)       NOT NULL,
    `first_name` varchar(100)  NOT NULL,
    `last_name`  varchar(100)  NOT NULL,
    `email`      varchar(300)  NOT NULL,
    `password`   varchar(300)  NOT NULL,
    `mobile`     varchar(10)   NOT NULL,
    `address1`   varchar(300)  NOT NULL,
    `address2`   varchar(3300) NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`)
VALUES (1, 'aa ', 'aa', 'aa@aa.aa', 'aa', '1111111', 'aa', 'aa'),
       (2, 'bb ', 'bb', 'bb@bb.bb', 'bb', '1111111', 'bb', 'bb'),
       (3, 'cc ', 'cc', 'cc@cc.cc', 'cc', '1111111', 'cc', 'cc');

-- --------------------------------------------------------


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
    ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
    ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
    ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
    ADD PRIMARY KEY (`email_id`);


--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
    ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
    ADD PRIMARY KEY (`order_id`),
    ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
    ADD PRIMARY KEY (`order_pro_id`),
    ADD KEY `order_products` (`order_id`),
    ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
    ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
    ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
    MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
    MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
    MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 218;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
    MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 8;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
    MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
    MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
    MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 12;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
    MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 109;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
    MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 84;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 16;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
    MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 27;


--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
    ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
    ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
    ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
