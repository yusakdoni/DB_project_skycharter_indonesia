-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 09, 2024 at 10:42 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skycharter_indonesia`
--

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `transaction_id` int(11) NOT NULL,
  `transaction_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `transaction_type` enum('Income','Expense') DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`transaction_id`, `transaction_date`, `amount`, `transaction_type`, `description`) VALUES
(1, '2023-09-01', '1000000.00', 'Income', 'Ticket Sales'),
(2, '2023-09-02', '500000.00', 'Expense', 'Aircraft Maintenance'),
(3, '2023-09-03', '300000.00', 'Income', 'Charter Service'),
(4, '2023-09-04', '700000.00', 'Income', 'Cargo Transport'),
(5, '2023-09-05', '200000.00', 'Expense', 'Fuel Purchase'),
(6, '2023-09-06', '400000.00', 'Income', 'Merchandise Sales'),
(7, '2023-09-07', '150000.00', 'Expense', 'Employee Salaries'),
(8, '2023-09-08', '600000.00', 'Income', 'Advertising Revenue'),
(9, '2023-09-09', '100000.00', 'Expense', 'Office Supplies'),
(10, '2023-09-10', '350000.00', 'Income', 'Membership Fees'),
(11, '2023-09-11', '450000.00', 'Expense', 'Insurance Payments'),
(12, '2023-09-12', '250000.00', 'Income', 'Event Sponsorship'),
(13, '2023-09-13', '300000.00', 'Expense', 'Maintenance Supplies'),
(14, '2023-09-14', '800000.00', 'Income', 'Flight Operations'),
(15, '2023-09-15', '550000.00', 'Expense', 'Marketing Costs'),
(16, '2023-09-16', '650000.00', 'Income', 'Online Bookings'),
(17, '2023-09-17', '300000.00', 'Expense', 'Staff Training'),
(18, '2023-09-18', '200000.00', 'Income', 'Baggage Fees'),
(19, '2023-09-19', '500000.00', 'Expense', 'Airport Fees'),
(20, '2023-09-20', '700000.00', 'Income', 'Loyalty Program'),
(21, '2023-09-21', '450000.00', 'Expense', 'Repairs and Maintenance'),
(22, '2023-09-22', '600000.00', 'Income', 'Food and Beverage Sales'),
(23, '2023-09-23', '400000.00', 'Expense', 'Utilities'),
(24, '2023-09-24', '550000.00', 'Income', 'Private Charters'),
(25, '2023-09-25', '350000.00', 'Expense', 'Travel Expenses'),
(26, '2023-09-26', '300000.00', 'Income', 'Gift Shop Revenue'),
(27, '2023-09-27', '200000.00', 'Expense', 'Licensing Fees'),
(28, '2023-09-28', '500000.00', 'Income', 'Aircraft Leasing'),
(29, '2023-09-29', '300000.00', 'Expense', 'Legal Fees'),
(30, '2023-09-30', '100000.00', 'Income', 'Investment Returns');

-- --------------------------------------------------------

--
-- Table structure for table `human_resource`
--

CREATE TABLE `human_resource` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `human_resource`
--

INSERT INTO `human_resource` (`employee_id`, `first_name`, `last_name`, `date_of_birth`, `hire_date`, `department`, `salary`) VALUES
(1, 'John', 'Doe', '1985-05-15', '2020-01-10', 'Operations', '75000.00'),
(2, 'Jane', 'Smith', '1990-08-20', '2021-03-15', 'HR', '60000.00'),
(3, 'Alice', 'Johnson', '1988-12-30', '2019-07-22', 'Finance', '70000.00'),
(4, 'Bob', 'Brown', '1992-04-18', '2020-05-16', 'Technical', '80000.00'),
(5, 'Charlie', 'Davis', '1987-07-25', '2018-09-30', 'Sales', '65000.00'),
(6, 'Emily', 'Wilson', '1995-03-14', '2022-06-01', 'Operations', '72000.00'),
(7, 'Michael', 'Taylor', '1982-11-11', '2017-08-20', 'HR', '75000.00'),
(8, 'Sophia', 'Martinez', '1986-02-07', '2019-12-10', 'Finance', '68000.00'),
(9, 'James', 'Anderson', '1991-06-03', '2020-09-25', 'Technical', '82000.00'),
(10, 'Olivia', 'Thomas', '1989-09-19', '2021-01-17', 'Sales', '62000.00'),
(11, 'David', 'Jackson', '1984-10-30', '2018-03-12', 'Operations', '77000.00'),
(12, 'Isabella', 'White', '1993-07-22', '2020-04-28', 'HR', '59000.00'),
(13, 'Ethan', 'Harris', '1981-01-29', '2016-11-11', 'Finance', '73000.00'),
(14, 'Mia', 'Martin', '1994-05-05', '2021-05-21', 'Technical', '80000.00'),
(15, 'Daniel', 'Thompson', '1990-12-15', '2018-07-30', 'Sales', '64000.00'),
(16, 'Ava', 'Garcia', '1983-03-28', '2019-10-14', 'Operations', '71000.00'),
(17, 'Lucas', 'Martinez', '1996-08-10', '2023-01-05', 'HR', '64000.00'),
(18, 'Zoe', 'Robinson', '1992-03-02', '2022-11-18', 'Finance', '67000.00'),
(19, 'Nathan', 'Clark', '1988-05-22', '2020-06-30', 'Technical', '79000.00'),
(20, 'Chloe', 'Rodriguez', '1995-09-30', '2021-02-08', 'Sales', '62000.00');

-- --------------------------------------------------------

--
-- Table structure for table `legal`
--

CREATE TABLE `legal` (
  `contract_id` int(11) NOT NULL,
  `contract_name` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `legal`
--

INSERT INTO `legal` (`contract_id`, `contract_name`, `start_date`, `end_date`, `department`) VALUES
(1, 'Maintenance Agreement', '2023-01-01', '2023-12-31', 'Technical'),
(2, 'Consulting Contract', '2023-03-01', '2024-03-01', 'Legal'),
(3, 'Insurance Policy', '2023-02-01', '2024-02-01', 'Finance'),
(4, 'Supplier Agreement', '2023-04-15', '2024-04-15', 'Procurement'),
(5, 'Service Level Agreement', '2023-05-10', '2024-05-10', 'Operations'),
(6, 'Lease Agreement', '2023-06-01', '2024-05-31', 'Real Estate'),
(7, 'Partnership Agreement', '2023-07-01', '2024-07-01', 'Business Development'),
(8, 'Employment Contract', '2023-08-01', '2024-08-01', 'Human Resources'),
(9, 'Non-Disclosure Agreement', '2023-09-01', '2024-09-01', 'Legal'),
(10, 'License Agreement', '2023-10-01', '2024-10-01', 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_sales`
--

CREATE TABLE `marketing_sales` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `conctact_info` varchar(255) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `flight_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_sales`
--

INSERT INTO `marketing_sales` (`customer_id`, `customer_name`, `conctact_info`, `booking_date`, `flight_id`) VALUES
(61, 'Alice', 'alice@example.com', '2023-08-25', NULL),
(62, 'Bob', 'bob@example.com', '2023-08-26', NULL),
(63, 'Charlie', 'charlie@example.com', '2023-08-27', NULL),
(64, 'David', 'david@example.com', '2023-08-28', NULL),
(65, 'Eve', 'eve@example.com', '2023-08-29', NULL),
(66, 'Frank', 'frank@example.com', '2023-08-30', NULL),
(67, 'Grace', 'grace@example.com', '2023-08-31', NULL),
(68, 'Hannah', 'hannah@example.com', '2023-09-01', NULL),
(69, 'Ivan', 'ivan@example.com', '2023-09-02', NULL),
(70, 'Jack', 'jack@example.com', '2023-09-03', NULL),
(71, 'Kathy', 'kathy@example.com', '2023-09-04', NULL),
(72, 'Leo', 'leo@example.com', '2023-09-05', NULL),
(73, 'Megan', 'megan@example.com', '2023-09-06', NULL),
(74, 'Nathan', 'nathan@example.com', '2023-09-07', NULL),
(75, 'Olivia', 'olivia@example.com', '2023-09-08', NULL),
(76, 'Paul', 'paul@example.com', '2023-09-09', NULL),
(77, 'Quincy', 'quincy@example.com', '2023-09-10', NULL),
(78, 'Rachel', 'rachel@example.com', '2023-09-11', NULL),
(79, 'Steve', 'steve@example.com', '2023-09-12', NULL),
(80, 'Tina', 'tina@example.com', '2023-09-13', NULL),
(81, 'Uma', 'uma@example.com', '2023-09-14', NULL),
(82, 'Victor', 'victor@example.com', '2023-09-15', NULL),
(83, 'Wendy', 'wendy@example.com', '2023-09-16', NULL),
(84, 'Xander', 'xander@example.com', '2023-09-17', NULL),
(85, 'Yvonne', 'yvonne@example.com', '2023-09-18', NULL),
(86, 'Zack', 'zack@example.com', '2023-09-19', NULL),
(87, 'Liam', 'liam@example.com', '2023-09-20', NULL),
(88, 'Sophie', 'sophie@example.com', '2023-09-21', NULL),
(89, 'Lucas', 'lucas@example.com', '2023-09-22', NULL),
(90, 'Chloe', 'chloe@example.com', '2023-09-23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `operation`
--

CREATE TABLE `operation` (
  `flight_id` int(11) NOT NULL,
  `flight_number` varchar(10) DEFAULT NULL,
  `departure` varchar(50) DEFAULT NULL,
  `arrival` varchar(50) DEFAULT NULL,
  `departure_time` datetime DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `status` enum('Scheduled','Delayed','Canceled') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operation`
--

INSERT INTO `operation` (`flight_id`, `flight_number`, `departure`, `arrival`, `departure_time`, `arrival_time`, `status`) VALUES
(177, 'CS100', 'Jakarta', 'Bali', '2023-09-01 08:00:00', '2023-09-01 09:30:00', 'Scheduled'),
(180, 'CS101', 'Bali', 'Jakarta', '2023-09-01 10:00:00', '2023-09-01 11:30:00', 'Delayed'),
(181, 'CS102', 'Jakarta', 'Surabaya', '2023-09-01 12:00:00', '2023-09-01 13:30:00', 'Canceled'),
(220, 'CS103', 'Surabaya', 'Jakarta', '2023-09-01 14:00:00', '2023-09-01 15:30:00', 'Scheduled'),
(221, 'CS104', 'Jakarta', 'Medan', '2023-09-01 16:00:00', '2023-09-01 18:00:00', 'Scheduled'),
(222, 'CS105', 'Medan', 'Jakarta', '2023-09-01 19:00:00', '2023-09-01 21:00:00', 'Delayed'),
(223, 'CS106', 'Jakarta', 'Yogyakarta', '2023-09-01 22:00:00', '2023-09-01 23:30:00', 'Canceled'),
(224, 'CS107', 'Yogyakarta', 'Jakarta', '2023-09-02 08:00:00', '2023-09-02 09:30:00', 'Scheduled'),
(225, 'CS108', 'Jakarta', 'Bali', '2023-09-02 10:00:00', '2023-09-02 11:30:00', 'Scheduled'),
(226, 'CS109', 'Bali', 'Jakarta', '2023-09-02 12:00:00', '2023-09-02 13:30:00', 'Delayed'),
(227, 'CS110', 'Jakarta', 'Bali', '2023-09-02 14:00:00', '2023-09-02 15:30:00', 'Canceled'),
(228, 'CS111', 'Bali', 'Jakarta', '2023-09-02 16:00:00', '2023-09-02 17:30:00', 'Scheduled'),
(229, 'CS112', 'Jakarta', 'Surabaya', '2023-09-02 18:00:00', '2023-09-02 19:30:00', 'Scheduled'),
(230, 'CS113', 'Surabaya', 'Jakarta', '2023-09-03 08:00:00', '2023-09-03 09:30:00', 'Delayed'),
(231, 'CS114', 'Jakarta', 'Medan', '2023-09-03 10:00:00', '2023-09-03 12:00:00', 'Canceled'),
(232, 'CS115', 'Medan', 'Jakarta', '2023-09-03 14:00:00', '2023-09-03 16:00:00', 'Scheduled'),
(233, 'CS116', 'Jakarta', 'Bali', '2023-09-03 18:00:00', '2023-09-03 19:30:00', 'Scheduled'),
(234, 'CS117', 'Bali', 'Jakarta', '2023-09-04 08:00:00', '2023-09-04 09:30:00', 'Delayed'),
(235, 'CS118', 'Jakarta', 'Yogyakarta', '2023-09-04 10:00:00', '2023-09-04 11:30:00', 'Canceled'),
(236, 'CS119', 'Yogyakarta', 'Jakarta', '2023-09-04 12:00:00', '2023-09-04 13:30:00', 'Scheduled'),
(237, 'CS120', 'Jakarta', 'Surabaya', '2023-09-04 14:00:00', '2023-09-04 15:30:00', 'Scheduled'),
(238, 'CS121', 'Surabaya', 'Jakarta', '2023-09-05 08:00:00', '2023-09-05 09:30:00', 'Delayed'),
(239, 'CS122', 'Jakarta', 'Medan', '2023-09-05 10:00:00', '2023-09-05 12:00:00', 'Canceled'),
(240, 'CS123', 'Medan', 'Jakarta', '2023-09-05 14:00:00', '2023-09-05 16:00:00', 'Scheduled'),
(241, 'CS124', 'Jakarta', 'Bali', '2023-09-05 18:00:00', '2023-09-05 19:30:00', 'Scheduled'),
(242, 'CS125', 'Bali', 'Jakarta', '2023-09-06 08:00:00', '2023-09-06 09:30:00', 'Delayed'),
(243, 'CS126', 'Jakarta', 'Yogyakarta', '2023-09-06 10:00:00', '2023-09-06 11:30:00', 'Canceled'),
(244, 'CS127', 'Yogyakarta', 'Jakarta', '2023-09-06 12:00:00', '2023-09-06 13:30:00', 'Scheduled'),
(245, 'CS128', 'Jakarta', 'Surabaya', '2023-09-06 14:00:00', '2023-09-06 15:30:00', 'Scheduled'),
(246, 'CS129', 'Surabaya', 'Jakarta', '2023-09-07 08:00:00', '2023-09-07 09:30:00', 'Delayed'),
(247, 'CS130', 'Jakarta', 'Medan', '2023-09-07 10:00:00', '2023-09-07 12:00:00', 'Canceled'),
(248, 'CS131', 'Medan', 'Jakarta', '2023-09-07 14:00:00', '2023-09-07 16:00:00', 'Scheduled'),
(249, 'CS132', 'Jakarta', 'Bali', '2023-09-07 18:00:00', '2023-09-07 19:30:00', 'Scheduled'),
(250, 'CS133', 'Bali', 'Jakarta', '2023-09-08 08:00:00', '2023-09-08 09:30:00', 'Delayed'),
(251, 'CS134', 'Jakarta', 'Yogyakarta', '2023-09-08 10:00:00', '2023-09-08 11:30:00', 'Canceled'),
(252, 'CS135', 'Yogyakarta', 'Jakarta', '2023-09-08 12:00:00', '2023-09-08 13:30:00', 'Scheduled'),
(253, 'CS136', 'Jakarta', 'Surabaya', '2023-09-08 14:00:00', '2023-09-08 15:30:00', 'Scheduled'),
(254, 'CS137', 'Surabaya', 'Jakarta', '2023-09-08 16:00:00', '2023-09-08 17:30:00', 'Delayed'),
(255, 'CS138', 'Jakarta', 'Medan', '2023-09-08 18:00:00', '2023-09-08 20:00:00', 'Canceled'),
(256, 'CS139', 'Medan', 'Jakarta', '2023-09-09 08:00:00', '2023-09-09 10:00:00', 'Scheduled'),
(257, 'CS140', 'Jakarta', 'Bali', '2023-09-09 12:00:00', '2023-09-09 13:30:00', 'Scheduled'),
(258, 'CS141', 'Bali', 'Jakarta', '2023-09-09 14:00:00', '2023-09-09 15:30:00', 'Scheduled'),
(259, 'CS142', 'Jakarta', 'Yogyakarta', '2023-09-09 16:00:00', '2023-09-09 17:30:00', 'Delayed'),
(260, 'CS143', 'Yogyakarta', 'Jakarta', '2023-09-09 18:00:00', '2023-09-09 19:30:00', 'Canceled'),
(261, 'CS144', 'Jakarta', 'Medan', '2023-09-10 08:00:00', '2023-09-10 10:00:00', 'Scheduled'),
(262, 'CS145', 'Medan', 'Jakarta', '2023-09-10 12:00:00', '2023-09-10 14:00:00', 'Delayed'),
(263, 'CS146', 'Jakarta', 'Bali', '2023-09-10 16:00:00', '2023-09-10 17:30:00', 'Canceled'),
(264, 'CS147', 'Bali', 'Jakarta', '2023-09-10 18:00:00', '2023-09-10 19:30:00', 'Scheduled'),
(265, 'CS148', 'Jakarta', 'Surabaya', '2023-09-11 08:00:00', '2023-09-11 09:30:00', 'Delayed'),
(266, 'CS149', 'Surabaya', 'Jakarta', '2023-09-11 10:00:00', '2023-09-11 11:30:00', 'Canceled'),
(267, 'CS150', 'Jakarta', 'Yogyakarta', '2023-09-11 12:00:00', '2023-09-11 13:30:00', 'Scheduled'),
(268, 'CS151', 'Yogyakarta', 'Jakarta', '2023-09-11 14:00:00', '2023-09-11 15:30:00', 'Delayed'),
(269, 'CS152', 'Jakarta', 'Medan', '2023-09-11 16:00:00', '2023-09-11 18:00:00', 'Canceled'),
(270, 'CS153', 'Medan', 'Jakarta', '2023-09-12 08:00:00', '2023-09-12 10:00:00', 'Scheduled'),
(271, 'CS154', 'Jakarta', 'Bali', '2023-09-12 12:00:00', '2023-09-12 13:30:00', 'Delayed'),
(272, 'CS155', 'Bali', 'Jakarta', '2023-09-12 14:00:00', '2023-09-12 15:30:00', 'Canceled'),
(273, 'CS156', 'Jakarta', 'Surabaya', '2023-09-12 16:00:00', '2023-09-12 17:30:00', 'Scheduled'),
(274, 'CS157', 'Surabaya', 'Jakarta', '2023-09-12 18:00:00', '2023-09-12 19:30:00', 'Delayed'),
(275, 'CS158', 'Jakarta', 'Yogyakarta', '2023-09-13 08:00:00', '2023-09-13 09:30:00', 'Canceled'),
(276, 'CS159', 'Yogyakarta', 'Jakarta', '2023-09-13 10:00:00', '2023-09-13 11:30:00', 'Scheduled'),
(277, 'CS160', 'Jakarta', 'Medan', '2023-09-13 12:00:00', '2023-09-13 14:00:00', 'Delayed'),
(278, 'CS161', 'Medan', 'Jakarta', '2023-09-13 16:00:00', '2023-09-13 18:00:00', 'Canceled'),
(279, 'CS162', 'Jakarta', 'Bali', '2023-09-14 08:00:00', '2023-09-14 10:00:00', 'Scheduled'),
(280, 'CS163', 'Bali', 'Jakarta', '2023-09-14 12:00:00', '2023-09-14 13:30:00', 'Delayed'),
(281, 'CS164', 'Jakarta', 'Yogyakarta', '2023-09-14 14:00:00', '2023-09-14 15:30:00', 'Canceled'),
(282, 'CS165', 'Yogyakarta', 'Jakarta', '2023-09-14 16:00:00', '2023-09-14 17:30:00', 'Scheduled'),
(283, 'CS166', 'Jakarta', 'Medan', '2023-09-15 08:00:00', '2023-09-15 10:00:00', 'Delayed'),
(284, 'CS167', 'Medan', 'Jakarta', '2023-09-15 12:00:00', '2023-09-15 14:00:00', 'Canceled'),
(285, 'CS168', 'Jakarta', 'Bali', '2023-09-15 16:00:00', '2023-09-15 17:30:00', 'Scheduled'),
(286, 'CS169', 'Bali', 'Jakarta', '2023-09-15 18:00:00', '2023-09-15 19:30:00', 'Delayed'),
(287, 'CS170', 'Jakarta', 'Surabaya', '2023-09-16 08:00:00', '2023-09-16 09:30:00', 'Canceled'),
(288, 'CS171', 'Surabaya', 'Jakarta', '2023-09-16 10:00:00', '2023-09-16 11:30:00', 'Scheduled'),
(289, 'CS172', 'Jakarta', 'Yogyakarta', '2023-09-16 12:00:00', '2023-09-16 13:30:00', 'Delayed'),
(290, 'CS173', 'Yogyakarta', 'Jakarta', '2023-09-16 14:00:00', '2023-09-16 15:30:00', 'Canceled'),
(291, 'CS174', 'Jakarta', 'Medan', '2023-09-16 16:00:00', '2023-09-16 18:00:00', 'Scheduled'),
(292, 'CS175', 'Medan', 'Jakarta', '2023-09-16 18:00:00', '2023-09-16 20:00:00', 'Delayed');

-- --------------------------------------------------------

--
-- Table structure for table `technical`
--

CREATE TABLE `technical` (
  `maintenance_id` int(11) NOT NULL,
  `aircraft_id` varchar(10) DEFAULT NULL,
  `maintenance_date` date DEFAULT NULL,
  `maintenance_type` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `technical`
--

INSERT INTO `technical` (`maintenance_id`, `aircraft_id`, `maintenance_date`, `maintenance_type`, `notes`) VALUES
(1, 'A320', '2023-08-15', 'Routine Check', 'No issues found'),
(2, 'B737', '2023-08-20', 'Engine Overhaul', 'Replaced engine parts'),
(3, 'B777', '2023-09-01', 'Safety Inspection', 'Passed all tests'),
(4, 'A330', '2023-09-10', 'Routine Check', 'No issues found'),
(5, 'B747', '2023-09-12', 'Landing Gear Inspection', 'Minor wear noted'),
(6, 'A350', '2023-09-15', 'Engine Maintenance', 'Cleaned fuel injectors'),
(7, 'B767', '2023-09-18', 'Safety Inspection', 'Passed all tests'),
(8, 'E190', '2023-09-20', 'Routine Check', 'No issues found'),
(9, 'CRJ900', '2023-09-25', 'Engine Overhaul', 'Replaced oil seals'),
(10, 'A220', '2023-09-28', 'Safety Inspection', 'Minor adjustments needed'),
(11, 'A321', '2023-10-01', 'Cabin Maintenance', 'Updated safety equipment'),
(12, 'B737 MAX', '2023-10-03', 'Routine Check', 'No issues found'),
(13, 'B757', '2023-10-05', 'Engine Maintenance', 'Replaced fuel filters'),
(14, 'A380', '2023-10-07', 'Safety Inspection', 'Passed all tests'),
(15, 'B737 NG', '2023-10-09', 'Landing Gear Inspection', 'No issues found');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `human_resource`
--
ALTER TABLE `human_resource`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `legal`
--
ALTER TABLE `legal`
  ADD PRIMARY KEY (`contract_id`);

--
-- Indexes for table `marketing_sales`
--
ALTER TABLE `marketing_sales`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `technical`
--
ALTER TABLE `technical`
  ADD PRIMARY KEY (`maintenance_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `human_resource`
--
ALTER TABLE `human_resource`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `legal`
--
ALTER TABLE `legal`
  MODIFY `contract_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `marketing_sales`
--
ALTER TABLE `marketing_sales`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `operation`
--
ALTER TABLE `operation`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `technical`
--
ALTER TABLE `technical`
  MODIFY `maintenance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `marketing_sales`
--
ALTER TABLE `marketing_sales`
  ADD CONSTRAINT `marketing_sales_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `operation` (`flight_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
