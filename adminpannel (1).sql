-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2025 at 06:07 AM
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
-- Database: `adminpannel`
--

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `ID` int(11) NOT NULL,
  `Domain` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`ID`, `Domain`) VALUES
(1, 'Java'),
(3, 'Scrum Master');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `ID` int(11) NOT NULL,
  `examName` text NOT NULL,
  `questions` text NOT NULL,
  `duration` text NOT NULL,
  `negativeMarks` text NOT NULL,
  `autoSubmit` tinyint(1) NOT NULL,
  `examAvailability` text NOT NULL,
  `countDown` tinyint(1) NOT NULL,
  `domainName` text NOT NULL,
  `section` text NOT NULL,
  `endDateTime` text NOT NULL,
  `startDateTime` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`ID`, `examName`, `questions`, `duration`, `negativeMarks`, `autoSubmit`, `examAvailability`, `countDown`, `domainName`, `section`, `endDateTime`, `startDateTime`) VALUES
(6, 'fhgf', '10', '00:15', '0', 0, 'Available on specific time', 0, 'Java', 'Aptiude', '2025-01-14T06:30:00.000Z', '2025-01-02T01:30:00.000Z'),
(7, 'Omkar Exam', '10', '00:15', '0', 0, 'Available on specific time', 0, 'Java', 'Aptiude', '2025-01-10T13:45:00.000Z', '2025-01-08T11:05:00.000Z'),
(8, 'Java Exam', '20', '00:45', '0', 1, '0', 1, 'Java', 'Aptiude', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `section` text NOT NULL,
  `questionName` text NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`)),
  `description` text NOT NULL,
  `questionType` text NOT NULL,
  `correctAnswer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`correctAnswer`)),
  `score` text NOT NULL,
  `negativeMarks` tinyint(1) NOT NULL,
  `QID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`section`, `questionName`, `options`, `description`, `questionType`, `correctAnswer`, `score`, `negativeMarks`, `QID`) VALUES
('Aptiude', 'SSR', '[\"SSR\",\"SSR\",\"SSR\",\"SSR\"]', 'SSR', 'singleCorrect', '[\"SSR\"]', '1', 0, 1),
('Aptiude', 'SSR', '[\"SSR\",\"SSR\",\"SSR\",\"TSSR\"]', 'SSR', 'singleCorrect', '[\"SSR\"]', '1', 0, 2),
('Reasoning', 'what is this..?', '[\"1\",\"2\",\"3\",\"4\"]', 'iuukfgjdjh', 'singleCorrect', '[\"4\"]', '1', 2, 3),
('Aptiude', 'Why is testing important in software development?', '[\"It ensures customer satisfaction\",\" It helps reduce development costs in the long run\",\"It improves product security and quality\",\"All of the above\\r\\n\"]', 'Testing is critical because it helps to improve product quality, enhance security, ensure customer satisfaction, and reduce costs by identifying issues early.', 'singleCorrect', '[null]', '1', 0, 4),
('Aptiude', 'What is smoke testing primarily used for?', '[\"To test payment gateways\",\"To verify that the major features of an application work\",\"To test voice-enabled devices\",\"To validate APIs\"]', 'Smoke testing is a preliminary test to check whether the major functionalities of an application are working before deeper testing occurs.', 'singleCorrect', '[\"To test voice-enabled devices\"]', '1', 0, 5),
('Aptiude', 'What is the main purpose of exploratory testing?', '[\"To validate API performance\",\"To ensure users with disabilities can use the product\",\"To allow testers to freely explore the software and identify potential issues\",\"To check whether the system can handle large amounts of data\"]', 'Exploratory testing relies on the experience and creativity of testers to find unexpected issues without following predefined test cases.', 'singleCorrect', '[\"To check whether the system can handle large amounts of data\"]', '1', 0, 6),
('Aptiude', 'Which testing method involves automated tools to execute repetitive tasks?', '[\"Exploratory Testing\",\"Regression Testing\",\"Automation Testing\",\"Payment Testing\"]', 'Automation testing uses tools to perform repetitive tasks, which may be time-consuming and prone to errors when done manually', 'multipleCorrect', '[]', '1', 0, 7),
('Aptiude', 'What is the focus of security testing?', '[{\"label\":\"Yes\",\"isSelected\":false},{\"label\":\"No\",\"isSelected\":true}]', 'Security testing ensures that the product is secure and free from vulnerabilities that could be exploited by malicious users', 'yesno', '[\"No\"]', '1', 0, 8),
('Aptiude', 'Which of the following types of testing is mainly focused on ensuring that changes made to the software do not affect its existing functionalities?', '[\" Smoke Testing\",\"Regression Testing\",\"Exploratory Testing\",\"Usability Testing\"]', 'Regression testing ensures that new changes or updates do not introduce errors into previously working functionalities.', 'singleCorrect', '[\"Exploratory Testing\"]', '1', 0, 9),
('Aptiude', 'What is the focus of security testing?', '[{\"label\":\"Yes\",\"isSelected\":false},{\"label\":\"No\",\"isSelected\":true}]', 'Security testing ensures that the product is secure and free from vulnerabilities that could be exploited by malicious users', 'yesno', '[\"No\"]', '1', 0, 10),
('Aptiude', 'What is the main goal of software testing?', '[\"To create new features\",\"To identify and fix issues before product release\",\"To increase the product costs\",\"To eliminate all types of programming languages\"]', 'The primary goal of software testing is to find bugs, gaps, or missing requirements to ensure the software functions as expected, improving quality and customer satisfaction.', 'singleCorrect', '[\"To increase the product costs\"]', '1', 0, 11),
('Aptiude', 'What is smoke testing primarily used for?', '[\"To test payment gateways\",\"To verify that the major features of an application work\",\"To test voice-enabled devices\",\"Option 4\"]', 'Smoke testing is a preliminary test to check whether the major functionalities of an application are working before deeper testing occurs.', 'singleCorrect', '[\"To test voice-enabled devices\"]', '1', 0, 12),
('Aptiude', 'What is the main purpose of exploratory testing?', '[\"To validate API performance\",\"To ensure users with disabilities can use the product\",\"To allow testers to freely explore the software and identify potential issues\",\"To check whether the system can handle large amounts of data\"]', 'Exploratory testing relies on the experience and creativity of testers to find unexpected issues without following predefined test cases.', 'singleCorrect', '[\"To check whether the system can handle large amounts of data\"]', '1', 0, 13),
('Aptiude', 'Which testing method involves automated tools to execute repetitive tasks?', '[\"Exploratory Testing\",\"Regression Testing\",\"Automation Testing\",\"Payment Testing\"]', 'Automation testing uses tools to perform repetitive tasks, which may be time-consuming and prone to errors when done manually', 'multipleCorrect', '[]', '1', 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `ID` int(11) NOT NULL,
  `Section` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`ID`, `Section`) VALUES
(1, 'Aptiude'),
(2, 'Reasoning');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`QID`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `QID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
