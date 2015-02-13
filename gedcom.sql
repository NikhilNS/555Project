-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2015 at 05:32 AM
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
-- Table structure for table `gedcom`
--

CREATE TABLE IF NOT EXISTS `gedcom` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Sex` varchar(255) NOT NULL,
  `FatherName` varchar(255) NOT NULL,
  `MotherName` varchar(255) NOT NULL,
  `FamilyName` int(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `gedcom`
--

INSERT INTO `gedcom` (`ID`, `FirstName`, `LastName`, `Sex`, `FatherName`, `MotherName`, `FamilyName`) VALUES
(1, 'neel', 'patel', 'm', 'bhavesh', 'pratima', 1),
(2, 'priyanka', 'patel', 'f', 'bhavesh', 'pratima', 1),
(3, 'drasty', 'patel', 'F', 'harish', 'rekha', 2),
(4, 'manthan', 'patel', 'm', 'harish', 'rekha', 2),
(5, 'bhavesh', 'patel', 'm', 'rati', 'kanta', 3),
(6, 'pratima', 'patel', 'f', 'ambu', 'kamla', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
