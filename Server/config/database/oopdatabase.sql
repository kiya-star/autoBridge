-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 01, 2021 at 06:35 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oopdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `cartNumber` varchar(300) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itemname` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `totalPrice` int(11) DEFAULT NULL,
  `customer` varchar(200) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `wereda` varchar(100) DEFAULT NULL,
  `kebele` varchar(100) DEFAULT NULL,
  `housenumber` varchar(100) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL,
  `orderTime` datetime NOT NULL DEFAULT current_timestamp(),
  `delivered` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `cartNumber`, `itemid`, `itemname`, `quantity`, `price`, `totalPrice`, `customer`, `phone`, `email`, `city`, `wereda`, `kebele`, `housenumber`, `note`, `status`, `uid`, `orderTime`, `delivered`) VALUES
(118, '5011866453736870428014153736', 22, 'Car jack 2018 model', 1, 1500, 1500, 'abebe', '0986426844', 'abebe@yahoo.com', 'Nazrit', '03', '14', '0975/543', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley', 1, 2, '2021-02-17 12:26:16', 1),
(166, '5011866453736880432418253736', 19, 'Bride Stone tyre', 2, 3000, 6000, 'adye', '09423424545', 'adye@yahoo.com', 'Addis', '03', '14', '042/234', 'near 22', 1, 2, '2021-02-25 15:45:26', 0),
(167, '5011866453736880432418253736', 20, 'alternator', 1, 119, 119, 'bruk', '094234535', 'bruk@yahoo.com', 'Addis ', '04', '21', '9343/34', '', 1, 2, '2021-02-25 15:46:44', 0),
(168, '5011866453736880432418253736', 22, 'Car jack 2018 model', 1, 1500, 1500, 'bruk', '094234535', 'bruk@yahoo.com', 'Addis', '04', '21', '9343/34', '', 1, 3, '2021-02-25 15:46:47', 0),
(169, '5011866453736880432418253736', 25, 'tire weel', 1, 400, 400, 'yayne', '094343521', 'yayne@yahoo.com', 'Addis', '04', '18', '86432/23', '', 1, 2, '2021-02-25 15:48:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `cid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`cid`, `email`, `message`, `seen`, `date`) VALUES
(1, 'blen@yahoo.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ullamcorper leo, eget euismod orci. Cum sociis natoque penatibus et', 1, '2021-02-10'),
(2, 'yayne@yahoo.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ullamcorper leo, eget euismod orci. Cum sociis natoque penatibus et', 1, '2021-02-16'),
(4, 'blen@yahoo.com', 'im looking for alitanator 2020 model can i get one ?', 1, '2021-02-04'),
(5, 'helo@yahoo.com', 'hello how are you doing sir', 1, '2021-02-06'),
(32, 'kiay@sds.com', 'hello how are you doing ?', 1, '2021-02-11'),
(47, 'test@dsd', 'test', 1, '2021-02-15'),
(49, 'kiya@yoo.cpm', 'hello', 1, '2021-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `fromm` varchar(100) NOT NULL,
  `too` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `at` varchar(200) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `fromm`, `too`, `message`, `at`, `uid`) VALUES
(39, 'blen@yahoo.com', 'israle@yahoo.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lorem tortor, consectetur sed tellus posuere, posuere ullamcorper nibh. Aliquam erat volutpat. Duis at fermentum turpis. Sed porta volutpat arcu, a facilisis ex euismod et. ', 'Fri, 19 Feb 2021 08:23:41 GMT', 2),
(40, 'israle@yahoo.com', 'blen@yahoo.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lorem tortor, consectetur sed tellus posuere, posuere ullamcorper nibh. Aliquam erat volutpat. Duis at fermentum turpis. Sed porta volutpat arcu, a facilisis ex euismod et. ', 'Fri, 19 Feb 2021 08:23:58 GMT', 1),
(41, 'israle@yahoo.com', 'blen@yahoo.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lorem tortor, consectetur sed tellus posuere, posuere ullamcorper nibh. Aliquam erat volutpat. Duis at fermentum turpis. Sed porta volutpat arcu, a facilisis ex euismod et. ', 'Fri Feb 19 2021 11:28 GMT+0300 (East Africa Time)', 1),
(97, 'blen@yahoo.com', 'israle@yahoo.com', 'hello', 'Mon, 22 Feb 2021 17:32:34 GMT', 2),
(98, 'blen@yahoo.com', 'israle@yahoo.com', 'how are you?', 'Mon, 22 Feb 2021 17:32:34 GMT', 2),
(99, 'israle@yahoo.com', 'blen@yahoo.com', 'im fine', 'Mon, 22 Feb 2021 17:32:34 GMT', 1),
(100, 'israle@yahoo.com', 'blen@yahoo.com', 'how about you?', 'Mon, 22 Feb 2021 17:32:34 GMT', 1),
(101, 'israle@yahoo.com', 'haile@yahoo.com', 'mr admin', 'Mon, 22 Feb 2021 17:32:34 GMT', 1),
(102, 'blen@yahoo.com', 'israle@yahoo.com', 'hi', 'Tue, 23 Feb 2021 08:22:07 GMT', 2),
(103, 'blen@yahoo.com', 'israle@yahoo.com', 'how are you', 'Tue, 23 Feb 2021 08:22:07 GMT', 2),
(104, 'israle@yahoo.com', 'blen@yahoo.com', 'hi', 'Tue, 23 Feb 2021 08:22:07 GMT', 1),
(105, 'israle@yahoo.com', 'blen@yahoo.com', 'selam dear', 'Tue, 23 Feb 2021 08:22:07 GMT', 1),
(106, 'israle@yahoo.com', 'blen@yahoo.com', 'HI', 'Tue, 23 Feb 2021 09:08:21 GMT', 1),
(107, 'israle@yahoo.com', 'blen@yahoo.com', 'hii', 'Tue, 23 Feb 2021 09:09:03 GMT', 1),
(108, 'israle@yahoo.com', 'blen@yahoo.com', 'how are you', 'Tue, 23 Feb 2021 09:09:03 GMT', 1),
(109, 'israle@yahoo.com', 'blen@yahoo.com', 'man', 'Tue, 23 Feb 2021 09:12:49 GMT', 1),
(110, 'israle@yahoo.com', 'blen@yahoo.com', 'are you fine', 'Tue, 23 Feb 2021 09:12:49 GMT', 1),
(111, 'israle@yahoo.com', 'blen@yahoo.com', '?', 'Tue, 23 Feb 2021 09:12:49 GMT', 1),
(112, 'israle@yahoo.com', 'abc@yahoo.com', 'selam', 'Tue, 23 Feb 2021 09:12:49 GMT', 1),
(113, 'israle@yahoo.com', 'blen@yahoo.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lorem tortor, consectetur sed tellus posuere, posuere ullamcorper nibh. Aliquam erat volutpat. Duis at fermentum turpis. Sed porta volutpat arcu, a facilisis ex euismod et.', 'Tue, 23 Feb 2021 09:12:49 GMT', 1),
(114, 'blen@yahoo.com', 'israle@yahoo.com', 'hello', 'Tue, 23 Feb 2021 16:55:47 GMT', 2),
(115, 'blen@yahoo.com', 'israle@yahoo.com', 'hello', 'Thu, 25 Feb 2021 10:21:56 GMT', 2),
(116, 'blen@yahoo.com', 'israle@yahoo.com', 'how are you?', 'Thu, 25 Feb 2021 10:21:56 GMT', 2),
(117, 'blen@yahoo.com', 'israle@yahoo.com', 'Lorem adipisicing elit. Nihil, molestias natus! odio cumque quas recusandae, distinctio corporiquaerat!', 'Thu, 25 Feb 2021 10:21:56 GMT', 2);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `action` varchar(300) NOT NULL,
  `timeAction` varchar(100) NOT NULL,
  `FromDevice` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `action`, `timeAction`, `FromDevice`) VALUES
(1, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 05:37:53 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(4, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 05:41:13 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(5, 'israle@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 05:42:29 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(6, 'israle@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 05:44:35 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(7, 'New User samson registered', 'Sat, 27 Feb 2021 05:44:35 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(8, 'israle@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 05:50:42 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(9, 'new notice with title \"lorium \"  posted', 'Sat, 27 Feb 2021 05:50:42 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(10, 'Notice id \" 22 \" Deleted', 'Sat, 27 Feb 2021 05:50:42 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(11, 'User(dealer) with id of\" 93 \" Deleted', 'Sat, 27 Feb 2021 05:56:16 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(12, 'israle@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 06:16:12 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(13, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 06:16:12 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(14, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 06:16:42 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(15, 'israle@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 06:16:42 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(16, 'israle@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 06:37:28 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(17, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 06:37:28 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(18, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 06:43:20 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(19, 'israle@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 06:43:20 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(20, 'israle@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 08:21:37 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(21, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 08:21:37 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(22, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 08:32:58 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(23, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 08:32:58 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(24, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 08:43:07 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(25, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 08:43:31 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(26, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 08:48:49 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(27, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 08:48:49 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(28, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 08:50:23 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(29, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 08:50:23 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(30, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 08:52:49 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(31, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 08:55:40 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(32, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 09:23:43 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(33, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 09:23:43 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(34, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 09:24:57 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(35, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 09:24:57 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(36, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 10:24:30 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(37, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 10:24:30 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(38, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 14:59:52 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(39, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 14:59:52 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(40, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 15:02:03 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(41, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 15:02:03 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(42, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 15:20:14 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(43, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 15:21:16 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(44, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 15:30:29 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(45, 'israle@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 15:30:29 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(46, 'User  updated information', 'Sat, 27 Feb 2021 15:39:35 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(47, 'User information of e-mail \" israle@yahoo.com \" updated ', 'Sat, 27 Feb 2021 15:41:35 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(48, 'israle@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 15:42:00 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(49, 'israle@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 15:42:47 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(50, 'israle@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 16:30:28 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(51, 'israle@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 16:30:28 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(52, 'israle@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 16:39:56 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(53, 'israle@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 16:39:56 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(54, 'israle@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 16:41:51 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(55, 'israle@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 16:41:51 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(56, 'israle@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 16:42:13 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(57, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 16:42:13 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(58, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 16:42:27 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(59, 'blen@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 16:42:27 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(60, 'blen@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 16:44:09 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(61, 'israle@yahoo.com Is Logged IN', 'Sat, 27 Feb 2021 16:44:09 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(62, 'israle@yahoo.com Is Logged Out', 'Sat, 27 Feb 2021 17:15:04 GMT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `body`, `time`) VALUES
(21, 'what do you think ?', 'Lorium consectetur adipiscing elit. Curabitur lorem tortor, consectetur loriumconsectetur adipiscing elit. Curabitur lorem tortor, consectetur loriumconsectetur adipiscing elit. Curabitur lorem tortor, consectetur lorium', 'Thu, 25 Feb 2021 16:47:30 GMT');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `pname` varchar(100) NOT NULL,
  `pcode` varchar(100) NOT NULL,
  `pprice` int(11) NOT NULL,
  `totalQ` int(11) NOT NULL,
  `leftQ` int(11) DEFAULT 0,
  `sold` int(11) NOT NULL DEFAULT 0,
  `pmodel` varchar(100) NOT NULL,
  `make` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `pdescription` varchar(500) NOT NULL,
  `pcountry` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `entryTime` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `status`, `pname`, `pcode`, `pprice`, `totalQ`, `leftQ`, `sold`, `pmodel`, `make`, `year`, `pdescription`, `pcountry`, `image`, `user_id`, `likes`, `entryTime`) VALUES
(19, 1, 'Bride Stone ', 'b321', 3000, 10, 7, 1, 'b65009', 'b2020', 1970, ' consectetur adipiscing elit. Curabitur lorem tortor, consectetur lorium', 'JAPAN', 'image_1613141354789.jpg', 2, 2, '2021-02-12'),
(20, 1, 'alternator', 'alt535', 119, 12, 11, 0, 'alt2019', 'alt42', 2020, 'Lorem  adipisicing elit. Nihil, molestias natus! odio cumque ', 'Canada', 'image_1613141532946.png', 2, 1, '2021-02-12'),
(21, 1, 'alternator 2015 model', 'yrllow553', 200, 4, 4, 0, 'yellow098', 'y2015', 2015, 'Lorem ipsum dolor sit ag elit. Nihil, molestias natus! Similique ernatur quaerat!', 'Ethiopia', 'image_1613141500602.png', 63, 2, '2021-02-12'),
(22, 1, 'Car jack 2018 model', 'blue0092', 1500, 8, 6, 1, 'blue-424', 'y2018', 2018, 'Lorem ipsum  adipisicing elit. Nihil, molestias natus! Similique facere optio odio cumque quas recusandae, distinctio c', 'Ethiopia', 'image_1612809923849.png', 3, 1, '2021-02-12'),
(25, 1, 'tire weel', 'tire4234', 400, 4, 3, 1, 'tire2019', 'tt2019', 2019, 'Lorem ipsum dolor sit amet consectetur ', 'Canada', 'image_1613197215060.jpg', 2, 1, '2021-02-13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `role` varchar(10) NOT NULL DEFAULT 'dealer',
  `photo` varchar(300) DEFAULT 'login.png',
  `regTime` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `pass`, `phone`, `description`, `companyname`, `status`, `role`, `photo`, `regTime`) VALUES
(1, 'israel', 'kuma', 'israle@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '0966541135', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, molestias natus! S', 'Auto Bridge', 1, 'admin', 'profile_1614444092347.JPG', '2021-02-10'),
(2, 'Blen', 'mamo', 'blen@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '0954921290', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus similique eum fugiat tempora obcaecati eveniet odio eius assumenda, error reiciendis. Voluptate omnis vero obcaecati iure error provident ducimus, magni odit?', 'Bishoftu Campany', 1, 'dealer ', 'profile_1614444228078.JPG', '2021-02-10'),
(3, 'haile', 'gslalse', 'haile@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '0954349212', 'Lorem ipsum consectetur adipisicing elit. Nihil, s, nam quae odit', 'Haile Motters', 1, 'dealer', 'login.png', '2021-02-10'),
(63, 'belay', 'solomon', 'belay@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '0942862221', 'Lorem ipsum dolor sit amet consectetur  natus! Similique facere optio odio cumque quas ', 'Belayab motters', 1, 'dealer', 'login.png', '2021-02-12'),
(64, 'abebe', 'grima', 'hayu@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '09434434', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil,', 'Hayunday ', 1, 'dealer', 'login.png', '2021-02-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemid` (`itemid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `pname` (`pname`),
  ADD UNIQUE KEY `pcode` (`pcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `companyname` (`companyname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `products` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
