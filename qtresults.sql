-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 03:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qtresults`
--

-- --------------------------------------------------------

--
-- Table structure for table `meritresults`
--

CREATE TABLE `meritresults` (
  `Exam ID` varchar(255) DEFAULT NULL,
  `Rank` varchar(255) DEFAULT NULL,
  `Candidate Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Group` varchar(255) DEFAULT NULL,
  `Exam Name` varchar(255) DEFAULT NULL,
  `Percentage` varchar(255) DEFAULT NULL,
  `Exam Status` varchar(255) DEFAULT NULL,
  `Total question` varchar(255) DEFAULT NULL,
  `Time taken` varchar(255) DEFAULT NULL,
  `Total correct` varchar(255) DEFAULT NULL,
  `Total incorrect` varchar(255) DEFAULT NULL,
  `Total partially correct` varchar(255) DEFAULT NULL,
  `Total unanswered` varchar(255) DEFAULT NULL,
  `Attempt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meritresults`
--

INSERT INTO `meritresults` (`Exam ID`, `Rank`, `Candidate Name`, `Email`, `Group`, `Exam Name`, `Percentage`, `Exam Status`, `Total question`, `Time taken`, `Total correct`, `Total incorrect`, `Total partially correct`, `Total unanswered`, `Attempt`) VALUES
('536', '1', 'Ram Prasad', 'ramprasad@ramanasoft.com', 'openaccess', 'Cyber Security Scholarship Test 2024', '31.667', 'Completed', '60', '390', '19', '41', '0', '0', '1'),
('535', '3', 'Praneeth Simhadri', 'ramanasoftmock@gmail.com', 'openaccess', 'Cyber Security Scholarship Test 2024', '0', 'Terminated', '60', '29', '0', '0', '0', '60', '1'),
('534', '2', 'Ram Garikipati', 'ram@qualitythought.in', 'openaccess', 'Cyber Security Scholarship Test 2024', '18.333', 'Completed', '60', '242', '11', '49', '0', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `No` varchar(255) DEFAULT NULL,
  `Candidate ID` varchar(255) DEFAULT NULL,
  `Attempt` varchar(255) DEFAULT NULL,
  `Candidate Name` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `GroupName` varchar(255) DEFAULT NULL,
  `Exam` varchar(255) DEFAULT NULL,
  `Exam ID` varchar(255) DEFAULT NULL,
  `Marks or Points` varchar(255) DEFAULT NULL,
  `Percentage` varchar(255) DEFAULT NULL,
  `examstatus` varchar(255) DEFAULT NULL,
  `TimeTaken` varchar(255) DEFAULT NULL,
  `Start_DateTime` varchar(255) DEFAULT NULL,
  `Finish_DateTime` varchar(255) DEFAULT NULL,
  `Mode` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Mobile` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Street` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Zip` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Certificateid` varchar(255) DEFAULT NULL,
  `CandidateRegisteredon` varchar(255) DEFAULT NULL,
  `No of suspicious Activity` varchar(255) DEFAULT NULL,
  `Exam's Remark` varchar(255) DEFAULT NULL,
  `Hall Ticket Number` varchar(255) DEFAULT NULL,
  `Qualification` varchar(255) DEFAULT NULL,
  `Year of Passed Out` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`No`, `Candidate ID`, `Attempt`, `Candidate Name`, `Username`, `GroupName`, `Exam`, `Exam ID`, `Marks or Points`, `Percentage`, `examstatus`, `TimeTaken`, `Start_DateTime`, `Finish_DateTime`, `Mode`, `Email`, `Mobile`, `Phone`, `Street`, `City`, `Zip`, `State`, `Country`, `Certificateid`, `CandidateRegisteredon`, `No of suspicious Activity`, `Exam's Remark`, `Hall Ticket Number`, `Qualification`, `Year of Passed Out`) VALUES
('1', '535', '1', 'Praneeth Simhadri', NULL, 'openaccess', 'Cyber Security Scholarship Test 2024', '104', '0 Out of 60', '0', 'Terminated', '0:0:29', '45618.7776736111', '45618.7780092593', 'Test Mode', 'ramanasoftmock@gmail.com', '9652106699', NULL, NULL, NULL, NULL, 'Ap', NULL, '0', '45618.7774768519', '11', NULL, '1234', 'BA', '2024'),
('2', '536', '1', 'Ram Prasad', NULL, 'openaccess', 'Cyber Security Scholarship Test 2024', '104', '19 Out of 60', '32', 'Completed', '0:6:30', '45618.7930439815', '45618.7975578704', 'Test Mode', 'ramprasad@ramanasoft.com', '9666704647', NULL, NULL, NULL, NULL, 'Andhra Pradesh', NULL, '0', '45618.7928703704', '7', NULL, '123456', 'Btech', '2006'),
('3', '534', '1', 'Ram Garikipati', NULL, 'openaccess', 'Cyber Security Scholarship Test 2024', '104', '11 Out of 60', '18', 'Completed', '0:4:2', '45618.7739930556', '45618.7767939815', 'Test Mode', 'ram@qualitythought.in', '9848441868', NULL, NULL, NULL, NULL, 'Telangana', NULL, '0', '45618.7738310185', '8', NULL, 'QT005', 'MBA', 'NA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
