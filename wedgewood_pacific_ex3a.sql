-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2019 at 02:10 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedgewood pacific ex3a`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `ProjectID` int(11) NOT NULL,
  `EmployeeNumber` int(11) NOT NULL,
  `HoursWorked` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`ProjectID`, `EmployeeNumber`, `HoursWorked`) VALUES
(1000, 1, '30.00'),
(1000, 6, '50.00'),
(1000, 10, '50.00'),
(1000, 16, '75.00'),
(1000, 17, '75.00'),
(1100, 1, '30.00'),
(1100, 6, '75.00'),
(1100, 10, '55.00'),
(1100, 11, '55.00'),
(1200, 3, '20.00'),
(1200, 6, '40.00'),
(1200, 7, '45.00'),
(1200, 8, '45.00'),
(1300, 3, '25.00'),
(1300, 6, '40.00'),
(1300, 8, '50.00'),
(1300, 9, '50.00'),
(1400, 1, '30.00'),
(1400, 6, '50.00'),
(1400, 10, '50.00'),
(1400, 16, '75.00'),
(1400, 17, '75.00'),
(1500, 1, '30.00'),
(1500, 6, '75.00'),
(1500, 10, '55.00'),
(1500, 11, '55.00'),
(1600, 3, '20.00'),
(1600, 6, '40.00'),
(1600, 7, '45.00'),
(1600, 8, '45.00');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentName` char(35) NOT NULL,
  `BudgetCode` char(20) NOT NULL,
  `OfficeNumber` char(15) NOT NULL,
  `DepartmentPhone` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentName`, `BudgetCode`, `OfficeNumber`, `DepartmentPhone`) VALUES
('Accounting', 'BC-500-10', 'BLDG01-120', '360-285-8405'),
('Administration', 'BC-100-10', 'BLDG01-210', '360-285-8100'),
('Finance', 'BC-400-10', 'BLDG01-110', '360-285-8400'),
('Human Resources', 'BC-300-10', 'BLDG01-230', '360-285-8300'),
('InfoSystems', 'BC-700-10', 'BLDG02-210', '360-285-8600'),
('Legal', 'BC-200-10', 'BLDG01-220', '360-285-8200'),
('Production', 'BC-900-10', 'BLDG02-110', '360-285-8800'),
('Research and Development', 'BC-800-10', 'BLDG02-250', '360-285-8700'),
('Sales and Marketing', 'BC-600-10', 'BLDG01-250', '360-285-8500');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeNumber` int(11) NOT NULL,
  `FirstName` char(25) NOT NULL,
  `LastName` char(25) NOT NULL,
  `Department` char(35) NOT NULL DEFAULT 'Human Resources',
  `Position` char(35) DEFAULT NULL,
  `Supervisor` int(11) DEFAULT NULL,
  `OfficePhone` char(12) DEFAULT NULL,
  `EmailAddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeNumber`, `FirstName`, `LastName`, `Department`, `Position`, `Supervisor`, `OfficePhone`, `EmailAddress`) VALUES
(1, 'Mary', 'Jacobs', 'Administration', 'CEO', NULL, '360-285-8110', 'Mary.Jacobs@WP.com'),
(2, 'Rosalie', 'Jackson', 'Administration', 'Admin Assistant', 1, '360-285-8120', 'Rosalie.Jackson@WP.conm'),
(3, 'Richard', 'Bandalone', 'Legal', 'Attorney', 1, '360-285-8210', 'Richard.Bandalone@WP.com'),
(4, 'George', 'Smith', 'Human Resources', 'HR3', 1, '360-285-8310', 'George.Smith@WP.com'),
(5, 'Alan', 'Adams', 'Human Resources', 'HR1', 4, '360-285-8320', 'Alan.Adams@WP.com'),
(6, 'Ken', 'Evans', 'Finance', 'CFO', 1, '360-285-8410', 'Ken.Evans@WP.com'),
(7, 'Mary', 'Abernathy', 'Finance', 'FA3', 6, '360-285-8420', 'Mary.Abernathy@WP.com'),
(8, 'Tom', 'Caruthers', 'Accounting', 'FA2', 6, '360-285-8430', 'Tom.Caruthers@WP.com'),
(9, 'Heather', 'Jones', 'Accounting', 'FA2', 6, '360-285-8440', 'Heather.Jones@WP.com'),
(10, 'Ken', 'Numoto', 'Sales and Marketing', 'SM3', 1, '360-285-8510', 'Ken.Numoto@WP.com'),
(11, 'Linda', 'Granger', 'Sales and Marketing', 'SM2', 10, '360-285-8520', 'Linda.Granger@WP.com'),
(12, 'James', 'Nestor', 'InfoSystems', 'CIO', 1, '360-285-8610', 'James.Nestor@WP.com'),
(13, 'Rick', 'Brown', 'InfoSystems', 'IS2', 12, NULL, 'Rick.Brown@WP.com'),
(14, 'Mike', 'Nguyen', 'Research and Development', 'CTO', 1, '360-285-8710', 'Mike.Nguyen@WP.com'),
(15, 'Jason', 'Sleeman', 'Research and Development', 'RD3', 14, '360-285-8720', 'Jason.Sleeman@WP.com'),
(16, 'Mary', 'Smith', 'Production', 'OPS3', 1, '360-285-8810', 'Mary.Smith@WP.com'),
(17, 'Tom', 'Jackson', 'Production', 'OPS2', 16, '360-285-8820', 'Tom.Jackson@WP.com'),
(18, 'George', 'Jones', 'Production', 'OPS2', 16, '360-285-8830', 'George.Jackson@WP.com'),
(19, 'Julia', 'Hayakawa', 'Production', 'OPS1', 17, NULL, 'Julia.Hayakawa@WP.com'),
(20, 'Sam', 'Stewart', 'Production', 'OPS1', 17, NULL, 'Sam.Stewart@WP.com');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `ProjectID` int(11) NOT NULL,
  `ProjectName` char(50) NOT NULL,
  `Department` char(35) NOT NULL,
  `MaxHours` decimal(8,2) NOT NULL DEFAULT 100.00,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`ProjectID`, `ProjectName`, `Department`, `MaxHours`, `StartDate`, `EndDate`) VALUES
(1000, '2019 Q3 Production Plan', 'Production', '100.00', '2019-05-10', '2019-06-15'),
(1100, '2019 Q3 Marketing Plan', 'Sales and Marketing', '135.00', '2019-05-10', '2019-06-15'),
(1200, '2019 Q3 Portfolio Analysis', 'Finance', '120.00', '2019-07-05', '2019-07-25'),
(1300, '2019 Q3 Tax Preparation', 'Accounting', '145.00', '2019-08-10', '2019-10-15'),
(1400, '2019 Q4 Production Plan', 'Production', '100.00', '2019-08-10', '2019-09-15'),
(1500, '2019 Q4 Marketing Plan', 'Sales and Marketing', '135.00', '2019-08-10', '2019-09-15'),
(1600, '2019 Q4 Portfolio Analysis', 'Finance', '140.00', '2019-10-05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`ProjectID`,`EmployeeNumber`),
  ADD KEY `Assign_Emp_FK` (`EmployeeNumber`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentName`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeNumber`),
  ADD UNIQUE KEY `EmailAddress` (`EmailAddress`),
  ADD KEY `EMP_Depart_FK` (`Department`),
  ADD KEY `EMP_Super_FK` (`Supervisor`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`ProjectID`),
  ADD KEY `Proj_Depart_FK` (`Department`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `Assign_Emp_FK` FOREIGN KEY (`EmployeeNumber`) REFERENCES `employee` (`EmployeeNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Assign_Proj_FK` FOREIGN KEY (`ProjectID`) REFERENCES `project` (`ProjectID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `EMP_Depart_FK` FOREIGN KEY (`Department`) REFERENCES `department` (`DepartmentName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `EMP_Super_FK` FOREIGN KEY (`Supervisor`) REFERENCES `employee` (`EmployeeNumber`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `Proj_Depart_FK` FOREIGN KEY (`Department`) REFERENCES `department` (`DepartmentName`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
