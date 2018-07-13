-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 13, 2018 at 01:17 AM
-- Server version: 5.7.19
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jordersystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'HR Department'),
(2, 'Accounting'),
(3, 'Purchasing'),
(4, 'Cashier'),
(5, 'Delivery Room'),
(6, 'Operating Room'),
(7, 'Pharmacy'),
(8, 'Pedia Office'),
(9, 'CT Scan'),
(10, 'Nurse Supervisor Office'),
(11, 'CT Scan'),
(12, 'ISDU');

-- --------------------------------------------------------

--
-- Table structure for table `request_form`
--

DROP TABLE IF EXISTS `request_form`;
CREATE TABLE IF NOT EXISTS `request_form` (
  `jor_num` int(11) NOT NULL AUTO_INCREMENT,
  `requested_by` varchar(50) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `requested_to` varchar(50) DEFAULT NULL,
  `jor_title` varchar(100) DEFAULT NULL,
  `jor_description` varchar(500) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`jor_num`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_form`
--

INSERT INTO `request_form` (`jor_num`, `requested_by`, `dept_name`, `requested_to`, `jor_title`, `jor_description`, `order_date`, `status`) VALUES
(1, 'dff', 'fsdf', '1', 'ds', 'afsdf', '2018-06-12 10:34:09', 'pending'),
(2, 'Ruffa Mae Monte De Ramos', 'JUSTICE', '1', 'BROKEN HEART', 'I miss you, hmmmmmmmmmmmm,,, please call me, i love you hmmmmmmmmmmmm', '2018-06-12 10:34:09', 'pending'),
(3, 'Diana Cervantes Amazon', 'STORE', 'Engineering', 'KALIBANGON', 'maam, pwede libangan dira?', '2018-06-12 10:34:09', 'pending'),
(4, 'Malaya Kings', 'Delivery Room', 'Engineering', 'Defective Printer', 'dili na muprint. ', '2018-06-12 10:34:09', 'Pending'),
(5, 'Diana Cervantes Amazon', 'Delivery Room', 'ISDU', 'Defective Monitor', 'mag off2 sha', '2018-06-12 10:34:09', 'Pending'),
(6, 'Malaya Kings', 'Operating Room', 'ISDU', 'Defective Monitor', 'guba sha', '2018-07-10 09:30:50', 'Pending'),
(7, 'Reymart Casas', 'Mental', 'ISDU', 'Friendzone', 'Luoya hahaha', '2018-07-10 11:57:17', 'Pending'),
(8, '', '', '', '', '', '2018-07-10 03:22:16', 'Pending'),
(9, '', '', '', '', '', '2018-07-10 03:24:28', 'Pending'),
(10, 'Chandler Bing', 'Accounting', '', 'Defective System Unit', 'Saba kaayo. Kalagut!!', '2018-07-10 03:25:40', 'Pending'),
(11, 'Ben Geller', 'Purchasing', 'ISDU', 'Defective Printer', 'dili muprint', '2018-07-10 03:33:19', 'Pending'),
(12, 'Bruno', 'Hollywood', 'Engineering', 'Thats what I like', 'we;aseawleaweaoe awoeawe aw awoa w', '2018-07-10 04:30:30', 'Pending'),
(13, 'Jason Guzman', 'Delivery Room', 'ISDU', 'Defective Monitor', 'guba sha', '2018-07-12 08:15:20', 'Pending'),
(14, '', '', 'ISDU', 'KALIBANGON', 'hahah', '2018-07-12 10:34:56', 'Pending'),
(15, 'Jason Guzman', 'Delivery Room', 'ISDU', 'KALIBANGON', 'lol', '2018-07-12 10:37:32', 'Pending'),
(16, '', 'Delivery Room', 'Engineering', 'KALIBANGON', 'atay', '2018-07-12 10:43:55', 'Pending'),
(17, 'Jason Guzman', 'Delivery Room', 'ISDU', 'BROKEN HEART', 'aww', '2018-07-12 10:44:37', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fname`, `lname`, `user_id`, `dept_id`) VALUES
(001, 'nhardingz', 'nhardzhaha', 'Leonardo', 'Galos', 2, 3),
(002, 'cervantes', 'cervantes', 'Diane', 'Cervantes', 4, 4),
(003, 'ruff', 'ruff123', 'Ruffa Mae', 'Monte De Ramos', 4, 5),
(004, 'cassie', 'casas123', 'Reymart', 'Casas', 4, 10),
(005, 'jguzman', 'jguzman', 'Jason', 'Guzman', 3, 5),
(006, 'admin', 'admin', 'Guiller', 'Orola', 1, 12),
(007, 'starfish', 'pat3694', 'Patrick', 'Garcia', 4, 4),
(008, 'chandler', 'chandler', 'Chandler Muriel', 'Bing', 2, 5),
(009, 'ross', 'ross', 'Ross Eustace', 'Geller', 2, 8),
(010, 'monica', 'monica', 'Monica', 'Geller-Bing', 2, 9),
(011, 'pbuffay', 'pbuffay', 'Phoebe', 'Buffay-Hannigan', 2, 2),
(012, 'rach', 'rach', 'Rachel Karen', 'Green', 2, 6),
(013, 'joey', 'joey', 'Joseph Francis', 'Tribbiani', 2, 7),
(014, 'natsu', 'natsu', 'Natsu', 'Dragneel', 4, 7),
(015, 'gray', 'gray', 'Gray', 'Fullbuster', 4, 7),
(016, 'mav', 'mav', 'Mavis', 'Vermillion', 3, 7),
(017, 'macarov', 'macarov', 'Macarov', 'Dreyar', 4, 7),
(018, 'liza', 'liza', 'Liza', 'Soberano', 4, 5),
(019, 'angj', 'angj', 'Angelina', 'Jolie', 4, 5),
(020, 'harrybebe', 'harry', 'Harry James', 'Potter', 4, 10),
(021, 'snape', 'snape', 'Severus', 'Snape', 4, 4),
(022, 'slytherin', 'slytherin', 'Salazar', 'Slytherin', 3, 11),
(023, 'gryffindor', 'gryffindor', 'Godric', 'Gryffindor', 3, 6),
(024, 'ravenclaw', 'ravenclaw', 'Rowena', 'Ravenclaw', 3, 5),
(025, 'hufflepuff', 'hufflepuff', 'Helga', 'Hufflepuff', 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
CREATE TABLE IF NOT EXISTS `user_type` (
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_id`, `user_type`) VALUES
(1, 'Admin'),
(2, 'Department Head'),
(3, 'Unit Head'),
(4, 'Staff');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
