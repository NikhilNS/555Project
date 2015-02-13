-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2015 at 03:46 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gedcom`
--

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE IF NOT EXISTS `family` (
  `FNo` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FatherName` varchar(255) NOT NULL,
  `ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gedcom`
--

CREATE TABLE IF NOT EXISTS `gedcom` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Sex` varchar(255) NOT NULL,
  `FatherName` varchar(255) NOT NULL,
  `MotherName` varchar(255) NOT NULL,
  `FamilyName` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `gedcom`
--

INSERT INTO `gedcom` (`ID`, `FirstName`, `LastName`, `Sex`, `FatherName`, `MotherName`, `FamilyName`) VALUES
(12, 'neel', 'patel', 'm', 'bhavesh', 'pratima', '1'),
(13, 'drasty', 'patel', 'f', 'harish', 'rekha', '2'),
(14, 'priyanka', 'patel', 'f', 'bhavesh', 'pratima', '1'),
(15, 'manthan', 'patel', 'm', 'harish', 'rekha', '2'),
(16, 'juhi', 'udani', 'f', 'harshad', 'bhavini', '5'),
(17, 'kinjal', 'udani', 'f', 'harshad', 'bhavini', '5'),
(18, 'neel1', 'patel', 'm', 'bhavesh', 'pratima', '1'),
(19, 'neel3', 'patel', 'm', 'bhavesh', 'pratima', '1');
--
-- Database: `google`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `company_Id` int(10) NOT NULL,
  `branch_name` varchar(30) NOT NULL,
  `branch_id` varchar(10) NOT NULL,
  `branch_address` varchar(30) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `ph_no` int(10) NOT NULL,
  PRIMARY KEY (`branch_id`),
  KEY `company_Id` (`company_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`company_Id`, `branch_name`, `branch_id`, `branch_address`, `longitude`, `latitude`, `ph_no`) VALUES
(24, '1', '1', 'college', 12.447179, 52.511467, 3);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_Id` int(10) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(20) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `no_emp` varchar(10) NOT NULL,
  `no_vacancy` varchar(20) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `no_branches` int(11) NOT NULL,
  `established_in` int(11) NOT NULL,
  `no_product` int(11) NOT NULL,
  `company_turnover` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `company_mail_id` varchar(255) NOT NULL,
  PRIMARY KEY (`company_Id`),
  KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_Id`, `company_name`, `company_address`, `no_emp`, `no_vacancy`, `contact_no`, `no_branches`, `established_in`, `no_product`, `company_turnover`, `username`, `product_name`, `company_mail_id`) VALUES
(1, '8', '67687', '687', '687', 687, 987, 687, 87, 687, 'ankit', '6876', '6'),
(2, '8', '67687', '687', '687', 687, 987, 687, 87, 687, 'ankit', '6876', '6'),
(15, '1212', '12', '1', '2', 12, 1, 1, 1, 1, 'ankit', '2', '2'),
(16, '1212', '12', '1', '2', 12, 1, 1, 1, 1, 'ankit', '2', '2'),
(17, '1212', '12', '1', '2', 12, 1, 1, 1, 1, 'ankit', '2', '2'),
(18, '1212', '12', '1', '2', 12, 1, 1, 1, 1, 'ankit', '2', '2'),
(19, '1212', '12', '1', '2', 12, 1, 1, 1, 1, 'ankit', '2', '2'),
(20, '1212', '12', '1', '2', 12, 1, 1, 1, 1, 'ankit', '2', '2'),
(21, '1212', '12', '1', '2', 12, 1, 1, 1, 1, 'ankit', '2', '2'),
(22, '1212', '12', '1', '2', 12, 1, 1, 1, 1, 'ankit', '2', '2'),
(23, '1212', '12', '1', '2', 12, 1, 1, 1, 1, 'ankit', '2', '2'),
(24, '1212', '12', '1', '2', 12, 1, 1, 1, 1, 'ankit', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `comapny_Id` int(10) NOT NULL,
  `b_id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submit`
--

CREATE TABLE IF NOT EXISTS `submit` (
  `username` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `user_email_id` varchar(255) NOT NULL,
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submit`
--

INSERT INTO `submit` (`username`, `feedback`, `user_email_id`) VALUES
('dhyanvi', 'aefsna', ''),
('abc', 'WEVCd ', ''),
('drasty', 'hello', ''),
('xyz', 'jdjsa', 'null'),
('xyz', 'xyz', 'null'),
('null', 'null', 'null'),
('dsad', 'dssdas', 'xddf'),
('sadas', 'sadsad', 'sadsad');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `user_type_id` int(10) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `company_Id` (`user_type_id`),
  KEY `user_type_id` (`user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `firstname`, `lastname`, `email`, `user_type_id`) VALUES
('abc', 'abc', 'abc', 'abc', 'abc@gmail.com', 3),
('admin', 'admin', 'dhyanvi', 'sarda', 'dhyanvi92@gmail.com', 1),
('ankit', 'ankit123', 'ANkit', 'Virparia', 'ankit@ankit.co', 2),
('ankit12', 'tyyyuu', 'ANkit', 'Virparia', 'ankit@ankit.co', 2),
('dhyanvi', 'dhyanvi', 'dhyanvi', 'sarda', 'dhyanvi92@gmail.com', 3),
('drashti', 'patel', 'drasty', 'patel', 'drashti_patel04@yahoo.in', 2),
('drasty', 'drasty', 'drasty', 'patel', 'drasty4@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `user_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(10) NOT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `user_type`) VALUES
(1, 'admin'),
(2, 'Company'),
(3, 'Registered');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`company_Id`) REFERENCES `company` (`company_Id`);

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`user_type_id`);
--
-- Database: `test`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
