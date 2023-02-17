-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 08, 2023 at 05:21 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `addressbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `ContactId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ContactNumber` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  PRIMARY KEY (`ContactId`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `contacts`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UserId` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `RoleName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `Password`, `RoleName`, `Email`, `Name`) VALUES
('admin', 'e99a18c428cb38d5f260853678922e03', 'Admin', 'admin@addressbook.com', 'Administrator'),
('amish15', '63e87c1cca01d232d81b53948e1fa0f8', 'Member', 'esingh611@gmail.com', 'anish gupta'),
('anish', '63e87c1cca01d232d81b53948e1fa0f8', 'Member', 'esingh611@gmail.com', 'anish gupta'),
('anish15', '63e87c1cca01d232d81b53948e1fa0f8', 'Member', 'esingh611@gmail.com', 'anish gupta'),
('dhag', 'bcc896c9bc3f07863482d1cc142da57a', 'Member', 'dhagarra@yahoo.com', 'Nagendra Dhagarra'),
('dhagarra', 'bcc896c9bc3f07863482d1cc142da57a', 'Member', 'dhagarra@yahoo.com', 'Nagendra Dhagarra'),
('ekta', 'dbf3f5759307e3cd4f789edb55e1ad4e', 'Member', 'ruchipatna58@gmail.com', 'ruchisingh'),
('ektasingh', '2865a5b14e5a70273a7d311bfc150f4f', 'Member', 'ekta_osho@yahoo.com', 'ekta'),
('ishfaq', '02cab77f96d18419c28ce09c83cca61f', 'Member', 'ishfaq.teli@yahoo.in', 'ishfaq'),
('nagendra', 'e99a18c428cb38d5f260853678922e03', 'Member', 'dhagarra@yahoo.com', 'Nagendra Dhagarra'),
('ruchi', 'ba41b2ec72c8b58508be22554527aad7', 'Member', 'esingh611@gmail.com', 'ruchi'),
('sunita', '270bc4393030fbfb947e9ec35b9c82e1', 'Member', 'ruchipatna58@gmail.com', 'sunita'),
('umar', '92deb3f274aaee236194c05729bfa443', 'Member', 'umar@gmail.com', 'umar');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
