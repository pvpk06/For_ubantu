-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 10:41 AM
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
-- Database: `mydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingId` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `movieTitle` varchar(255) DEFAULT NULL,
  `theater` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `screen` varchar(255) NOT NULL,
  `selectedSeats` varchar(50) DEFAULT NULL,
  `selectedDate` date DEFAULT NULL,
  `selectedShowtime` time DEFAULT NULL,
  `totalSeatsPrice` decimal(10,2) DEFAULT NULL,
  `convenienceFee` decimal(10,2) DEFAULT NULL,
  `totalAmount` decimal(10,2) DEFAULT NULL,
  `paymentId` varchar(255) DEFAULT NULL,
  `bookingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingId`, `userId`, `movieTitle`, `theater`, `location`, `screen`, `selectedSeats`, `selectedDate`, `selectedShowtime`, `totalSeatsPrice`, `convenienceFee`, `totalAmount`, `paymentId`, `bookingDate`) VALUES
('BMS-1733848205373-952', 1, 'Lucky Baskhar', 'Cinepolis', 'Ameerpet', 'Screen 02', '[\"K13\"]', '2024-12-01', '12:00:00', 350.00, 35.00, 385.00, 'PVXWvdjcR1KmZj', '2024-11-30 14:30:05'),
('BMS-1733849042333-596', 1, 'Amaran', 'INOX Cinemas ', 'Hitech City', 'Screen 01', '[\"G12\",\"G13\"]', '2024-12-10', '11:00:00', 400.00, 40.00, 440.00, 'PVXlZUAM3ssMJg', '2024-12-10 16:44:02'),
('BMS-1733857216747-495', 1, 'Red One', 'PVR Cinemas', 'Banjara Hills', 'Screen 02', '[\"B13\",\"B14\"]', '2024-12-13', '12:00:00', 200.00, 20.00, 220.00, 'PVa5UCc4BLgJuO', '2024-12-10 19:00:16'),
('BMS-1733889600989-662', 2, 'Sikandar Ka Muqaddar', 'INOX Cinemas', 'Hitech City', 'Screen 02', '[\"L12\",\"L13\"]', '2024-12-11', '02:00:00', 700.00, 70.00, 770.00, 'PVjHchLDzURgd8', '2024-12-11 04:00:00'),
('BMS-1733889940154-530', 2, 'Elevation', 'PVR Cinemas', 'Banjara Hills', 'Screen 02', '[\"M14\",\"M15\"]', '2024-12-11', '03:00:00', 700.00, 70.00, 770.00, 'PVjNbUy6Tsp5OA', '2024-12-11 04:05:40'),
('BMS-1733937633279-444', 1, 'Matka', 'PVR Cinemas', 'Banjara Hills', 'Screen 02', '[\"K13\",\"K14\"]', '2024-12-11', '03:00:00', 700.00, 70.00, 770.00, 'PVrgy6peuMLsRY', '2024-12-11 17:20:33'),
('BMS-1733977911033-474', 2, 'Kanguva', 'PVR Cinemas', 'Banjara Hills', 'Screen 02', '[\"K11\",\"K12\"]', '2024-12-16', '03:00:00', 700.00, 70.00, 770.00, 'PW8MKFhz9qhTjA', '2024-12-12 04:31:51'),
('BMS-1733978090989-877', 2, 'Kraven the Hunter', 'Cineworld', 'Madhapur', 'Screen 04', '[\"K11\",\"K12\"]', '2024-12-15', '07:00:00', 700.00, 70.00, 770.00, 'PW8PXBbB1wRDEK', '2024-12-12 04:34:50'),
('BMS-1734157477530-737', 1, 'Sikandar Ka Muqaddar', 'AAA Cinemas', 'Ameerpet', 'Screen 03', '[\"D12\",\"D13\"]', '2024-12-18', '06:00:00', 200.00, 20.00, 220.00, 'PWxLlTUsaqalbB', '2024-12-14 06:24:37'),
('BMS-1734162407245-607', 1, 'Pushpa 2 - The Rule', 'AAA Cinemas', 'Ameerpet', 'Screen 01', '[\"N3\",\"N4\",\"N5\"]', '2024-12-14', '09:30:00', 1050.00, 105.00, 1155.00, 'PWykWVRfJOx33d', '2024-12-14 07:46:47'),
('BMS-1734369159024-801', 1, 'Moana 2', 'Aparna Cinemas', 'Nallagandla', 'Screen 04', '[\"J8\",\"J9\"]', '2024-12-16', '23:00:00', 400.00, 40.00, 440.00, 'PXvSUsnLbwug7E', '2024-12-16 17:12:39'),
('BMS-1734371523064-387', 1, 'Mufasa: The Lion King', 'AAA Cinemas', 'Ameerpet', 'Screen 02', '[\"K11\",\"K12\"]', '2024-12-18', '09:30:00', 700.00, 70.00, 770.00, 'PXw88ysmUsB1WZ', '2024-12-16 17:52:03'),
('BMS-1734413014589-839', 1, 'Amaran', 'AAA Cinemas', 'Ameerpet', 'Screen 02', '[\"A13\",\"A14\"]', '2024-12-17', '12:00:00', 200.00, 20.00, 220.00, 'PY7uWCjoj0eprs', '2024-12-17 05:23:34'),
('BMS-1734416978292-526', 1, 'Watchmen: Chapter II', 'AAA Cinemas', 'Ameerpet', 'Screen 02', '[\"K12\",\"K13\"]', '2024-12-17', '15:00:00', 700.00, 70.00, 770.00, 'PY92M1duQCTbBK', '2024-12-17 06:29:38'),
('BMS-1734417402671-442', 1, 'Watchmen: Chapter II', 'AAA Cinemas', 'Ameerpet', 'Screen 02', '[\"K12\",\"K13\"]', '2024-12-17', '15:00:00', 700.00, 70.00, 770.00, 'PY99rsFp2OINI8', '2024-12-17 06:36:42'),
('BMS-1734506878305-994', 5, 'Robinhood', 'AMB Cinemas', 'Gachibowli', 'Screen 03', '[\"I1\",\"I2\",\"I3\",\"I4\",\"I5\",\"I6\"]', '2024-12-18', '16:00:00', 1200.00, 120.00, 1320.00, 'PYYZA6eAvCxugn', '2024-12-18 07:27:58'),
('BMS-1734520711578-694', 8, 'Kraven the Hunter', 'Aparna Cinemas', 'Nallagandla', 'Screen 03', '[\"D12\",\"D13\"]', '2024-12-18', '17:00:00', 200.00, 20.00, 220.00, 'PYcUhvQqraOPI8', '2024-12-18 11:18:31'),
('BMS-1734596241354-638', 1, 'Red One', 'AAA Cinemas', 'Ameerpet', 'Screen 02', '[\"G12\",\"G13\"]', '2024-12-19', '15:00:00', 400.00, 40.00, 440.00, 'PYxwQwVyfjPAqr', '2024-12-19 08:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `mobile`, `email`, `password`) VALUES
(1, 'Amit Kumar', '7991147784', 'amitkumar5031997@gmail.com', 'Amit@1234'),
(2, 'Indra Kumar', '9573232368', 'indrakumar@gmail.com', 'Indra@123'),
(3, 'KrishnaKanth Tiwari', '9473037994', 'Krishnakanthtiwari@gmail.com', 'Krishna@1234'),
(5, 'Kartheek', '8106954321', 'Kartheek@gmail.com', 'Kartheek@12'),
(6, 'Omkar', '9876541230', 'omkar@gmail.com', 'Omkar@123'),
(7, 'kkk', '6305797850', 'pkaleemkhan97@gmail.com', 'Kaleem@1997'),
(8, 'ravi', '9030177611', 'sunny5805@gmail.com', 'Sunny@5805');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingId`),
  ADD UNIQUE KEY `paymentId` (`paymentId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
