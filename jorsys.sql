-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 26, 2018 at 09:52 AM
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
-- Database: `jorsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `dept_code` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dept_code`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_code`, `dept_name`) VALUES
(001, 'ISDU'),
(002, 'Engineering'),
(003, 'Operating Room'),
(004, 'Delivery Room'),
(005, 'HR Department');

-- --------------------------------------------------------

--
-- Table structure for table `joheader`
--

DROP TABLE IF EXISTS `joheader`;
CREATE TABLE IF NOT EXISTS `joheader` (
  `jo_num` int(11) NOT NULL AUTO_INCREMENT,
  `jodate` datetime DEFAULT NULL,
  `reqdept` varchar(50) DEFAULT NULL,
  `todept` varchar(50) DEFAULT NULL,
  `jotitle` varchar(100) DEFAULT NULL,
  `jorem` varchar(200) DEFAULT NULL,
  `reqby` varchar(50) DEFAULT NULL,
  `apprby1` varchar(10) DEFAULT NULL,
  `apprby2` varchar(10) DEFAULT NULL,
  `apprv1_date` datetime DEFAULT NULL,
  `apprv2_date` datetime DEFAULT NULL,
  PRIMARY KEY (`jo_num`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `joheader`
--

INSERT INTO `joheader` (`jo_num`, `jodate`, `reqdept`, `todept`, `jotitle`, `jorem`, `reqby`, `apprby1`, `apprby2`, `apprv1_date`, `apprv2_date`) VALUES
(1, '2018-07-19 14:02:22', '005', '001', 'Defective Monitor', 'Guba jud sha do..', 'PTL', NULL, 'CMB', NULL, '2018-07-22 16:46:24'),
(2, '2018-07-19 15:19:03', '004', '001', 'Defective Monitor', 'Guba sha uy.', 'JRG', 'JRG', NULL, '2018-07-22 16:39:45', NULL),
(3, '2018-07-19 15:22:35', '004', '002', 'Busted Lamp', 'Guba na pud sha rag daut.', 'DTC', 'JRG', 'REG', '2018-07-22 17:13:19', '2018-07-24 15:07:44'),
(4, '2018-07-19 15:23:33', '004', '002', 'Busted Lamp', 'Di musiga hahaha', 'RRM', 'JRG', NULL, '2018-07-22 17:14:21', NULL),
(5, '2018-07-19 15:26:39', '005', '001', 'Defective Printer', 'Mag error daw', 'CMB', NULL, NULL, NULL, NULL),
(6, '2018-07-19 16:21:32', '004', '001', 'Defective Printer', 'Gubaon', 'DTC', 'JRG', NULL, '2018-07-22 17:15:03', NULL),
(7, '2018-07-19 16:40:28', '004', '001', 'Defective Monitor', 'Geg blink2', 'RRM', 'JRG', NULL, '2018-07-24 14:55:19', NULL),
(8, '2018-07-21 20:50:22', '004', '001', 'Defective', '', 'DTC', 'JRG', NULL, '2018-07-22 16:29:22', NULL),
(9, '2018-07-21 20:50:56', '004', '001', 'test', 'test', 'DTC', 'JRG', NULL, '2018-07-26 13:38:11', NULL),
(10, '2018-07-21 20:51:36', '004', '002', 'test', 'test', 'DTC', NULL, NULL, NULL, NULL),
(11, '2018-07-21 20:52:40', '004', '001', 'lastnajud', 'lastnajudni', 'DTC', 'JRG', 'REG', '2018-07-22 17:15:18', '2018-07-24 15:08:25'),
(12, '2018-07-21 20:53:14', '004', '001', 'test', 'test', 'DTC', NULL, NULL, NULL, NULL),
(13, '2018-07-21 20:54:43', '004', '001', 'test', 'test', 'RRM', NULL, NULL, NULL, NULL),
(14, '2018-07-21 21:00:20', '004', '001', 'test', 'testing', 'JRG', NULL, NULL, NULL, NULL),
(15, '2018-07-21 21:12:38', '004', '001', 'sad', '', 'RRM', NULL, NULL, NULL, NULL),
(16, '2018-07-21 21:12:50', '004', '001', 'sadfa', 'fafa', 'RRM', NULL, NULL, NULL, NULL),
(17, '2018-07-21 22:04:12', '004', '001', 'Defective Monitor', 'Test Testing', 'DTC', NULL, NULL, NULL, NULL),
(18, '2018-07-21 22:05:13', '004', '002', 'Busted Lamp', 'Ayaw ng umilaw. Parang sira!!', 'RRM', NULL, NULL, NULL, NULL),
(19, '2018-07-21 22:10:00', '005', '001', 'Defective Printer', 'Guba sha', 'PTL', NULL, NULL, NULL, NULL),
(20, '2018-07-22 09:12:55', '005', '001', 'Defective Printer', 'Error printing', 'PTL', NULL, 'CMB', NULL, '2018-07-22 16:45:30'),
(21, '2018-07-22 09:14:37', '005', '002', 'Broken Door', 'Di na masirado', 'CMB', NULL, NULL, NULL, NULL),
(22, '2018-07-22 11:56:26', '004', '001', 'Test', 'Testing', 'JRG', NULL, NULL, NULL, NULL),
(23, '2018-07-22 12:07:34', '004', '001', 'Defective Monitor', 'Blue Screen', 'DTC', NULL, NULL, NULL, NULL),
(24, '2018-07-22 12:09:00', '004', '002', 'Broken Door', 'Di na masirado', 'RRM', NULL, NULL, NULL, NULL),
(25, '2018-07-22 12:09:40', '004', '001', 'test', 'test', 'JRG', 'JRG', NULL, '2018-07-24 15:51:02', NULL),
(26, '2018-07-22 12:10:21', '004', '001', 'test2', 'testing2', 'DTC', 'JRG', NULL, '2018-07-22 16:37:08', NULL),
(27, '2018-07-22 12:11:09', '004', '001', 'test3', 'testing3', 'RRM', 'JRG', NULL, '2018-07-22 16:32:57', NULL),
(28, '2018-07-22 12:12:05', '004', '002', 'test', 'test', 'DTC', NULL, NULL, NULL, NULL),
(29, '2018-07-22 12:29:41', '004', '002', 'test test', 'testing testing lamangs', 'JRG', NULL, NULL, NULL, NULL),
(30, '2018-07-22 12:30:16', '004', '002', 'defective', 'defective', 'DTC', NULL, NULL, NULL, NULL),
(31, '2018-07-22 12:30:48', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(32, '2018-07-22 12:31:26', '004', '001', 'defective', 'defective', 'DTC', NULL, NULL, NULL, NULL),
(33, '2018-07-22 12:32:00', '004', '001', 'last na jud ni', 'PRAMIS', 'DTC', 'JRG', NULL, '2018-07-22 16:28:14', NULL),
(34, '2018-07-22 17:12:10', '004', '001', 'Install Job Order System', 'I am a newbie and I do not have any access to the Job order system. I would like to request an installment of it on my unit. Thank you!', 'DTC', 'JRG', NULL, '2018-07-22 17:12:51', NULL),
(35, '2018-07-22 17:21:09', '004', '002', 'Broken chair', 'Nalaglag man gud sha sa stair tas walang nagsalo ba so na broken sha huhu. Need na jud nako ang new chair ayy. Please send me new one. Thank you po....', 'JRG', NULL, NULL, NULL, NULL),
(36, '2018-07-22 17:23:26', '004', '002', 'Guba ang sink', 'Nakakatawa man ito uy, para man gud shang sira!', 'JRG', NULL, NULL, NULL, NULL),
(37, '2018-07-23 09:02:07', '004', '002', 'defective', 'ghj', 'JRG', NULL, NULL, NULL, NULL),
(38, '2018-07-23 09:12:34', '004', '002', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(39, '2018-07-23 09:13:38', '004', '002', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(40, '2018-07-23 13:40:58', '004', '001', 'Defective mouse', 'Di sha maclick', 'DTC', NULL, NULL, NULL, NULL),
(41, '2018-07-23 20:45:45', '004', '002', 'defective', 'test', 'JRG', 'JRG', NULL, '2018-07-24 09:49:55', NULL),
(42, '2018-07-24 10:28:42', '004', '002', 'defective', 'jguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzmanjguzman', 'JRG', 'JRG', NULL, '2018-07-24 13:36:48', NULL),
(43, '2018-07-24 14:22:13', '004', '001', 'defective defectivedefectivedefectivedefectivedefectivedefectivedefectivedefectivedefective', 'DEFECTIVE KAY GRABE NA JUD KA GUBA TABANG LORD', 'JRG', NULL, NULL, NULL, NULL),
(44, '2018-07-24 14:48:37', '004', '001', 'DEFECTIVE SHEE DEFECTIVE SHEE DEFECTIVE SHEE DEFECTIVE SHEE ', 'DEFECTIVE SHEE DEFECTIVE SHEE DEFECTIVE SHEE DEFECTIVE SHEE DEFECTIVE SHEE DEFECTIVE SHEE DEFECTIVE', 'JRG', 'JRG', NULL, '2018-07-24 14:54:09', NULL),
(45, '2018-07-24 14:57:09', '004', '001', 'Defective Keyboard', 'Di mapislit', 'JRG', 'JRG', NULL, '2018-07-25 07:55:23', NULL),
(46, '2018-07-24 16:26:25', '004', '001', 'Defective Keyboard', '- Dli mo function ang @ key sa keyboard\n- luag ang usb port', 'JRG', NULL, NULL, NULL, NULL),
(47, '2018-07-24 16:27:58', '004', '001', 'Dapat mao ni', 'Mao nani', 'JRG', 'JRG', NULL, '2018-07-24 16:35:12', NULL),
(48, '2018-07-24 17:16:33', '004', '002', ' MONTHLY CENSUS PATIENT', 'BLAH BLAH BLAH', 'DTC', 'JRG', 'REG', '2018-07-24 17:18:13', '2018-07-24 17:19:23'),
(49, '2018-07-25 10:28:49', '004', '001', 'I need new set of computer and system unit', 'Naga share ra mi sa mi Maam Blah sa isa ka unit tas hasol kaayo sha so I need new one. Please need jud nako kaayo sha..', 'RRM', 'JRG', NULL, '2018-07-25 15:31:16', NULL),
(50, '2018-07-25 10:32:02', '004', '001', 'test', 'test', 'DTC', NULL, NULL, NULL, NULL),
(51, '2018-07-25 10:32:50', '004', '002', 'test', 'test', 'DTC', NULL, NULL, NULL, NULL),
(52, '2018-07-25 11:14:58', '', '001', 'test123', 'test123', '', NULL, NULL, NULL, NULL),
(53, '2018-07-25 11:17:14', '', '001', 'test123', 'test123', '', NULL, NULL, NULL, NULL),
(54, '2018-07-25 11:20:13', '', '001', 'test123', 'test123', '', NULL, NULL, NULL, NULL),
(55, '2018-07-25 11:20:14', '', '001', 'test123', 'test123', '', NULL, NULL, NULL, NULL),
(56, '2018-07-25 11:20:16', '', '001', 'test123', 'test123', '', NULL, NULL, NULL, NULL),
(57, '2018-07-25 11:22:20', '004', '001', 'test123', 'test123', 'JRG', NULL, NULL, NULL, NULL),
(58, '2018-07-25 11:22:22', '004', '001', 'test123', 'test123', 'JRG', NULL, NULL, NULL, NULL),
(59, '2018-07-25 11:22:23', '004', '001', 'test123', 'test123', 'JRG', NULL, NULL, NULL, NULL),
(60, '2018-07-25 11:22:23', '004', '001', 'test123', 'test123', 'JRG', NULL, NULL, NULL, NULL),
(61, '2018-07-25 11:23:44', '004', '001', 'var t1 = $(\'#t1\').val();', 'var t1 = $(\'#t1\').val();var t2 = $(\'#t2\').val(); var todept = $(\'#todept\').val();\n                             ', 'JRG', NULL, NULL, NULL, NULL),
(62, '2018-07-25 11:23:45', '004', '001', 'var t1 = $(\'#t1\').val();', 'var t1 = $(\'#t1\').val();var t2 = $(\'#t2\').val(); var todept = $(\'#todept\').val();\n                             ', 'JRG', NULL, NULL, NULL, NULL),
(63, '2018-07-25 11:23:45', '004', '001', 'var t1 = $(\'#t1\').val();', 'var t1 = $(\'#t1\').val();var t2 = $(\'#t2\').val(); var todept = $(\'#todept\').val();\n                             ', 'JRG', 'JRG', NULL, '2018-07-26 09:42:13', NULL),
(64, '2018-07-25 11:23:46', '004', '001', 'var t1 = $(\'#t1\').val();', 'var t1 = $(\'#t1\').val();var t2 = $(\'#t2\').val(); var todept = $(\'#todept\').val();\n                             ', 'JRG', NULL, NULL, NULL, NULL),
(65, '2018-07-25 11:23:46', '004', '001', 'var t1 = $(\'#t1\').val();', 'var t1 = $(\'#t1\').val();var t2 = $(\'#t2\').val(); var todept = $(\'#todept\').val();\n                             ', 'JRG', NULL, NULL, NULL, NULL),
(66, '2018-07-25 11:23:46', '004', '001', 'var t1 = $(\'#t1\').val();', 'var t1 = $(\'#t1\').val();var t2 = $(\'#t2\').val(); var todept = $(\'#todept\').val();\n                             ', 'JRG', NULL, NULL, NULL, NULL),
(67, '2018-07-25 11:23:46', '004', '001', 'var t1 = $(\'#t1\').val();', 'var t1 = $(\'#t1\').val();var t2 = $(\'#t2\').val(); var todept = $(\'#todept\').val();\n                             ', 'JRG', NULL, NULL, NULL, NULL),
(68, '2018-07-25 11:23:46', '004', '001', 'var t1 = $(\'#t1\').val();', 'var t1 = $(\'#t1\').val();var t2 = $(\'#t2\').val(); var todept = $(\'#todept\').val();\n                             ', 'JRG', NULL, NULL, NULL, NULL),
(69, '2018-07-25 11:23:47', '004', '001', 'var t1 = $(\'#t1\').val();', 'var t1 = $(\'#t1\').val();var t2 = $(\'#t2\').val(); var todept = $(\'#todept\').val();\n                             ', 'JRG', 'JRG', NULL, '2018-07-25 11:28:44', NULL),
(70, '2018-07-25 11:25:34', '004', '001', '$(\'#body\').text(\'Wait..\');', '$(\'#body\').text(\'Wait..\');', 'JRG', 'JRG', NULL, '2018-07-26 09:35:16', NULL),
(71, '2018-07-25 11:25:35', '004', '001', '$(\'#body\').text(\'Wait..\');', '$(\'#body\').text(\'Wait..\');', 'JRG', NULL, NULL, NULL, NULL),
(72, '2018-07-25 11:25:36', '004', '001', '$(\'#body\').text(\'Wait..\');', '$(\'#body\').text(\'Wait..\');', 'JRG', NULL, NULL, NULL, NULL),
(73, '2018-07-25 11:25:37', '004', '001', '$(\'#body\').text(\'Wait..\');', '$(\'#body\').text(\'Wait..\');', 'JRG', NULL, NULL, NULL, NULL),
(74, '2018-07-25 11:26:43', '004', '001', 'setTimeout(function() { window.location = \"index.php\"; }, 25);', 'setTimeout(function() { window.location = \"index.php\"; }, 25);', 'JRG', 'JRG', NULL, '2018-07-26 08:52:29', NULL),
(75, '2018-07-25 16:01:30', '004', '001', 'AMMAMM', 'mamamMAWME', 'JRG', 'JRG', NULL, '2018-07-26 08:49:08', NULL),
(76, '2018-07-26 09:46:28', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(77, '2018-07-26 09:46:30', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(78, '2018-07-26 09:46:31', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(79, '2018-07-26 09:46:49', '004', '001', 'test', 'test', 'DTC', NULL, NULL, NULL, NULL),
(80, '2018-07-26 09:46:50', '004', '001', 'test', 'test', 'DTC', NULL, NULL, NULL, NULL),
(81, '2018-07-26 09:47:28', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(82, '2018-07-26 09:47:29', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(83, '2018-07-26 09:47:30', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(84, '2018-07-26 09:48:06', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(85, '2018-07-26 09:48:07', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(86, '2018-07-26 09:48:07', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(87, '2018-07-26 09:48:08', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(88, '2018-07-26 09:49:02', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(89, '2018-07-26 09:49:03', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(90, '2018-07-26 09:49:04', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(91, '2018-07-26 09:50:18', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(92, '2018-07-26 09:50:19', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(93, '2018-07-26 09:50:19', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(94, '2018-07-26 09:50:53', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(95, '2018-07-26 09:50:54', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(96, '2018-07-26 09:50:55', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(97, '2018-07-26 09:50:56', '004', '001', 'test', 'test', 'JRG', NULL, NULL, NULL, NULL),
(98, '2018-07-26 09:54:46', '004', '001', 'test1', 'test1', 'DTC', NULL, NULL, NULL, NULL),
(99, '2018-07-26 09:57:45', '004', '001', 'test2', 'test2', 'DTC', NULL, NULL, NULL, NULL),
(100, '2018-07-26 10:10:15', '004', '001', 'test3', 'test3', 'RRM', 'JRG', NULL, '2018-07-26 13:30:23', NULL),
(101, '2018-07-26 10:11:25', '004', '001', 'test4', 'test4', 'RRM', NULL, NULL, NULL, NULL),
(102, '2018-07-26 11:28:49', '004', '001', 'bwesit', 'bwesit ka .!.', 'DTC', NULL, NULL, NULL, NULL),
(103, '2018-07-26 13:50:46', '004', '001', 'atay', 'atay', 'JRG', NULL, NULL, NULL, NULL),
(104, '2018-07-26 13:52:06', '004', '001', 'haha', 'haha', 'JRG', NULL, NULL, NULL, NULL),
(105, '2018-07-26 13:53:29', '004', '001', 'gg', 'gg', 'JRG', NULL, NULL, NULL, NULL),
(106, '2018-07-26 13:55:25', '004', '001', 'gay', 'gay', 'JRG', NULL, NULL, NULL, NULL),
(107, '2018-07-26 16:39:27', '004', '001', 'test123', 'test123', 'JRG', NULL, NULL, NULL, NULL);

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
  `user_id` int(11) NOT NULL,
  `dept_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `init` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fname`, `user_id`, `dept_id`, `init`) VALUES
(001, 'nhardz', 'nhardz', 'Leonardo A. Galos', 2, 003, 'LAG'),
(002, 'cervantes', 'cervantes', 'Diane T. Cervantes', 4, 004, 'DTC'),
(003, 'ruff', 'ruff123', 'Ruffa Mae R. Monte De Ramos', 4, 004, 'RRM'),
(004, 'cassie', 'casas123', 'Reymart C. Casas', 4, 003, 'RCC'),
(005, 'jguzman', 'jguzman', 'Jayson R. Guzman', 3, 004, 'JRG'),
(006, 'admin', 'admin', 'Guiller M. Orola', 1, 001, 'GMO'),
(007, 'starfish', 'starfish', 'Patrick T. Lowkey', 3, 005, 'PTL'),
(008, 'chandler', 'chandler', 'Chandler Muriel Bing', 2, 005, 'CMB'),
(009, 'ross', 'ross', 'Ross Eustace Geller', 2, 004, 'REG'),
(010, 'monica', 'monica', 'Monica', 2, 009, NULL),
(011, 'pbuffay', 'pbuffay', 'Phoebe', 2, 002, NULL),
(012, 'rach', 'rach', 'Rachel Karen', 2, 006, NULL),
(013, 'joey', 'joey', 'Joseph Francis', 2, 007, NULL),
(014, 'natsu', 'natsu', 'Natsu', 4, 007, NULL),
(015, 'gray', 'gray', 'Gray', 4, 007, NULL),
(016, 'mav', 'mav', 'Mavis', 3, 007, NULL),
(017, 'macarov', 'macarov', 'Macarov', 4, 007, NULL),
(018, 'liza', 'liza', 'Liza', 4, 005, NULL),
(019, 'angj', 'angj', 'Angelina', 4, 005, NULL),
(020, 'harrybebe', 'harry', 'Harry James', 4, 010, NULL),
(021, 'snape', 'snape', 'Severus', 4, 004, NULL),
(022, 'slytherin', 'slytherin', 'Salazar', 3, 011, NULL),
(023, 'gryffindor', 'gryffindor', 'Godric', 3, 006, NULL),
(024, 'ravenclaw', 'ravenclaw', 'Rowena', 3, 005, NULL),
(025, 'hufflepuff', 'hufflepuff', 'Helga', 3, 009, NULL);

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
