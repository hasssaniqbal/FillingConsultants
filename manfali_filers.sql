-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 08:23 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manfali_filers`
--

-- --------------------------------------------------------

--
-- Table structure for table `businessdetail`
--

CREATE TABLE `businessdetail` (
  `Employed` char(3) NOT NULL,
  `Designation` char(15) NOT NULL,
  `Salary` int(11) NOT NULL,
  `Business` int(11) NOT NULL,
  `business_income` int(11) NOT NULL,
  `Cnic` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `businessdetail`
--

INSERT INTO `businessdetail` (`Employed`, `Designation`, `Salary`, `Business`, `business_income`, `Cnic`) VALUES
('Yes', 'f', 23141, 1, 13, '24234-2343252-4'),
('Yes', 'wdfwe', 4353, 1, 235235, '33235-4598900-9'),
('Yes', 'q', 1231, 1, 123242, '43524-5252452-5'),
('Yes', 'imam', 200000, 1, 123123, '82203-0925383-1');

-- --------------------------------------------------------

--
-- Table structure for table `cantonment`
--

CREATE TABLE `cantonment` (
  `Name` char(17) NOT NULL,
  `Status` char(11) NOT NULL,
  `Cnic` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cantonment`
--

INSERT INTO `cantonment` (`Name`, `Status`, `Cnic`) VALUES
('ali', 'yes', '82203-0925383-1');

-- --------------------------------------------------------

--
-- Table structure for table `fbr`
--

CREATE TABLE `fbr` (
  `Name` char(15) NOT NULL,
  `Status` char(11) NOT NULL,
  `Cnic` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fbr`
--

INSERT INTO `fbr` (`Name`, `Status`, `Cnic`) VALUES
('ali', 'yes', '82203-0925383-1');

-- --------------------------------------------------------

--
-- Table structure for table `personaldetail`
--

CREATE TABLE `personaldetail` (
  `Name` char(25) NOT NULL,
  `FatherName` char(25) NOT NULL,
  `Cnic` char(25) NOT NULL,
  `DOB` char(25) NOT NULL,
  `Nationality` char(25) NOT NULL,
  `Gender` char(25) NOT NULL,
  `Address` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personaldetail`
--

INSERT INTO `personaldetail` (`Name`, `FatherName`, `Cnic`, `DOB`, `Nationality`, `Gender`, `Address`) VALUES
('a', 'b', '09899-8090900-9', '12/12/3314', 'PK', 'Male', 'dfwefweferwrt645645'),
('hkk', 'f', '24234-2343252-4', '21/21/1334', 'pk', 'Female', 'erregth5r574rtb'),
('faiz', 'sohail', '32424-3545675-6', '12/03/1998', 'Pk', 'Male', 'sahdgqjssagdfkjwegj34635'),
('asd', 'wdfwe', '33235-4598900-9', '12/31/2313', 'op', 'Female', 'qwf2wq3tf2345'),
('a', 'b', '34235-2524542-5', '12/32/3122', 'PK', 'Male', 'dchhwuchwudu2342'),
('h', 'q', '43524-5252452-5', '12/31/2413', 'pk', 'Male', 'sgedesdgwrt434634'),
('ali', 'imam', '82203-0925383-1', '  /  /', 'pakistani', 'Male', 'house 1098A lane 4 toba t'),
('mehr', 'dani', '98765-4321098-1', '11/21/1990', 'Pk', 'Trans', 'adam street chur chowk Ra');

-- --------------------------------------------------------

--
-- Table structure for table `propertydetail`
--

CREATE TABLE `propertydetail` (
  `HouseOwned` int(11) NOT NULL,
  `house_marla` int(11) NOT NULL,
  `PlotOwned` int(11) NOT NULL,
  `plot_marla` int(11) NOT NULL,
  `shopOwned` char(4) NOT NULL,
  `shop_worth` int(11) NOT NULL,
  `CarsOwned` int(11) NOT NULL,
  `cars_worth` int(11) NOT NULL,
  `TotalProperties` int(11) NOT NULL,
  `Cnic` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `propertydetail`
--

INSERT INTO `propertydetail` (`HouseOwned`, `house_marla`, `PlotOwned`, `plot_marla`, `shopOwned`, `shop_worth`, `CarsOwned`, `cars_worth`, `TotalProperties`, `Cnic`) VALUES
(1, 11, 1, 12, 'YES', 12243, 3, 22323, 2, '09899-8090900-9'),
(2, 1, 3, 2, 'YES', 33, 2, 44, 1, '24234-2343252-4'),
(2, 12, 3, 3, 'YES', 11213, 1, 13123, 1, '32424-3545675-6'),
(3, 11, 1, 2, 'YES', 3, 4, 4, 3, '33235-4598900-9'),
(2, 12, 3, 5, 'YES', 12345, 1, 131211, 1, '34235-2524542-5'),
(2, 12, 3, 13, 'YES', 12324, 2, 24253, 1, '43524-5252452-5'),
(2, 12, 2, 5, 'YES', 2122312, 2, 3212321, 1, '82203-0925383-1'),
(1, 12, 2, 1, 'YES', 13123, 1, 1432, 1, '98765-4321098-1');

-- --------------------------------------------------------

--
-- Table structure for table `taxdetail`
--

CREATE TABLE `taxdetail` (
  `HouseTax` int(11) NOT NULL,
  `ShopTax` int(11) NOT NULL,
  `VehicleTax` int(11) NOT NULL,
  `BusinessTax` int(11) NOT NULL,
  `TotalTax` int(11) NOT NULL,
  `Cnic` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taxdetail`
--

INSERT INTO `taxdetail` (`HouseTax`, `ShopTax`, `VehicleTax`, `BusinessTax`, `TotalTax`, `Cnic`) VALUES
(1234, 5678, 91011, 121314, 219237, '24234-2343252-4'),
(1213, 33454, 9876, 44, 44587, '33235-4598900-9'),
(12, 334, 423, 342, 1111, '43524-5252452-5'),
(21323, 1233, 1323, 12312, 36191, '82203-0925383-1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `businessdetail`
--
ALTER TABLE `businessdetail`
  ADD UNIQUE KEY `Cnic` (`Cnic`);

--
-- Indexes for table `cantonment`
--
ALTER TABLE `cantonment`
  ADD UNIQUE KEY `Cnic` (`Cnic`);

--
-- Indexes for table `fbr`
--
ALTER TABLE `fbr`
  ADD UNIQUE KEY `Cnic` (`Cnic`);

--
-- Indexes for table `personaldetail`
--
ALTER TABLE `personaldetail`
  ADD PRIMARY KEY (`Cnic`) USING BTREE;

--
-- Indexes for table `propertydetail`
--
ALTER TABLE `propertydetail`
  ADD UNIQUE KEY `Cnic` (`Cnic`) USING BTREE;

--
-- Indexes for table `taxdetail`
--
ALTER TABLE `taxdetail`
  ADD UNIQUE KEY `Cnic` (`Cnic`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `businessdetail`
--
ALTER TABLE `businessdetail`
  ADD CONSTRAINT `cn` FOREIGN KEY (`Cnic`) REFERENCES `personaldetail` (`Cnic`);

--
-- Constraints for table `cantonment`
--
ALTER TABLE `cantonment`
  ADD CONSTRAINT `cantcnic` FOREIGN KEY (`Cnic`) REFERENCES `personaldetail` (`Cnic`);

--
-- Constraints for table `fbr`
--
ALTER TABLE `fbr`
  ADD CONSTRAINT `fbrcnic` FOREIGN KEY (`Cnic`) REFERENCES `personaldetail` (`Cnic`);

--
-- Constraints for table `taxdetail`
--
ALTER TABLE `taxdetail`
  ADD CONSTRAINT `cnnn` FOREIGN KEY (`Cnic`) REFERENCES `personaldetail` (`Cnic`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
