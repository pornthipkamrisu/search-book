-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 15, 2020 at 06:42 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_infos`
--

CREATE TABLE `book_infos` (
  `BookNo` int(11) NOT NULL,
  `BookName` varchar(100) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book_infos`
--

INSERT INTO `book_infos` (`BookNo`, `BookName`, `Author`, `Description`) VALUES
(1, 'Engligh', 'Engligh-Author', ''),
(2, 'Math', 'A-math', ''),
(3, 'Science', 'Science-Author', ''),
(4, 'Operations Research', 'Operations Research-Author', ''),
(5, 'Chemistry', 'Chemistry-Author', ''),
(6, 'Digital Logic ', 'Digital Logic -Author', ''),
(7, 'Computer Engineering', 'Computer Engineering-Author', ''),
(8, 'physics', 'physics-Author', ''),
(9, 'Engineering Statistics', 'Engineering Statistics-Author', ''),
(10, 'Numerical Methods', 'Numerical Methods-Author', '');

-- --------------------------------------------------------

--
-- Table structure for table `borrows`
--

CREATE TABLE `borrows` (
  `BorrowID` int(11) NOT NULL,
  `BorrowDate` date NOT NULL,
  `BookNo` int(11) NOT NULL,
  `StudentCode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ReturnDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `borrows`
--

INSERT INTO `borrows` (`BorrowID`, `BorrowDate`, `BookNo`, `StudentCode`, `ReturnDate`) VALUES
(1, '2020-01-25', 1, '6140200010', '2020-02-01'),
(2, '0000-00-00', 2, '6140200011', '2020-02-04'),
(3, '2020-02-02', 3, '6140200012', '2020-02-07'),
(4, '2020-02-04', 4, '6140200013', '2020-02-07'),
(5, '2020-02-06', 5, '6140200014', '2020-02-10'),
(6, '2020-02-06', 6, '6102000015', '2020-02-12'),
(7, '2020-02-06', 7, '6140200016', '2020-02-12'),
(8, '2020-02-06', 8, '6140200017', '2020-02-14'),
(9, '2020-02-10', 9, '6140200018', '2020-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentCode` char(10) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `BirthDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentCode`, `StudentName`, `Department`, `BirthDate`) VALUES
('6140200001', 'Mr.A', 'วิศวกรรมคอมพิวเตอร์', '1999-02-09'),
('6140200002', 'Miss.B', 'วิศวกรรมคอมพิวเตอร์', '1999-03-10'),
('6140200003', 'Mr.C', 'วิศวกรรมคอมพิวเตอร์', '1999-03-15'),
('6140200004', 'Mr.D', 'วิศวกรรมคอมพิวเตอร์', '1999-03-19'),
('6140200005', 'Mr.E', 'วิศวกรรมคอมพิวเตอร์', '1999-03-15'),
('6140200006', 'Miss.F', 'วิศวกรรมคอมพิวเตอร์', '1999-03-30'),
('6140200007', 'Miss.G', 'วิศวกรรมคอมพิวเตอร์', '1999-04-01'),
('6140200008', 'Mr.H', 'วิศวกรรมคอมพิวเตอร์', '1999-04-05'),
('6140200009', 'Miss.I', 'วิศวกรรมคอมพิวเตอร์', '1999-04-10'),
('6140200010', 'Mr.J', 'วิศวกรรมคอมพิวเตอร์', '1999-04-11'),
('6140200011', 'Mr.K', 'วิศวกรรมคอมพิวเตอร์', '1999-04-19'),
('6140200012', 'Mr.L', 'วิศวกรรมคอมพิวเตอร์', '1999-04-22'),
('6140200013', 'Miss.M', 'วิศวกรรมคอมพิวเตอร์', '1999-04-20'),
('6140200014', 'Miss.N', 'วิศวกรรมคอมพิวเตอร์', '1999-04-30'),
('6140200015', 'Mr.O', 'วิศวกรรมคอมพิวเตอร์', '1999-05-01'),
('6140200016', 'Mr.P', 'วิศวกรรมคอมพิวเตอร์', '1999-04-30'),
('6140200017', 'Mr.Q', 'วิศวกรรมคอมพิวเตอร์', '1999-05-10'),
('6140200018', 'Mr.R', 'วิศวกรรมคอมพิวเตอร์', '1999-05-15'),
('6140200019', 'Mr.T', 'วิศวกรรมคอมพิวเตอร์', '1999-05-20'),
('6140200020', 'Mr.S', 'วิศวกรรมคอมพิวเตอร์', '1999-05-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_infos`
--
ALTER TABLE `book_infos`
  ADD PRIMARY KEY (`BookNo`);

--
-- Indexes for table `borrows`
--
ALTER TABLE `borrows`
  ADD PRIMARY KEY (`BorrowID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_infos`
--
ALTER TABLE `book_infos`
  MODIFY `BookNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `borrows`
--
ALTER TABLE `borrows`
  MODIFY `BorrowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
