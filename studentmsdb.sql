-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2025 at 06:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555558, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2025-01-01 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(1, '10', 'A', '2025-01-01 04:42:14'),
(2, '10', 'B', '2025-01-01 04:42:14'),
(3, '10', 'C', '2025-01-01 04:42:14'),
(4, '11', 'A', '2025-01-01 04:42:14'),
(5, '11', 'B', '2025-01-01 04:42:14'),
(6, '11', 'C', '2025-01-01 04:42:14'),
(7, '11', 'D', '2025-01-01 04:42:14'),
(8, '12', 'A', '2025-01-01 04:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblhomework`
--

CREATE TABLE `tblhomework` (
  `id` int(11) NOT NULL,
  `homeworkTitle` mediumtext DEFAULT NULL,
  `classId` int(11) DEFAULT NULL,
  `homeworkDescription` longtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `lastDateofSubmission` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblhomework`
--

INSERT INTO `tblhomework` (`id`, `homeworkTitle`, `classId`, `homeworkDescription`, `postingDate`, `lastDateofSubmission`) VALUES
(2, 'Test Title for homework', 1, 'This is for testing. This is for testing. This is for testing. This is for testing. This is for testing. This is for testing. ', '2024-12-31 10:26:56', '2024-12-08'),
(3, 'Test Homework Titlesssssss', 1, 'This is for testing. ', '2024-12-31 10:43:26', '2025-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: start;\"><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, ????, ??, SimSun, STXihei, ????, serif\"><span style=\"font-size: 26px;\">Student Management System Developed using PHP and MySQL</span></font><br></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', '890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'studentms@test.com', 1234567890, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext DEFAULT NULL,
  `MotherName` mediumtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(1, 'thousi', 'thousi@gmail.com', '4', 'Male', '2022-01-13', 'ui-99', 'bbmnb', 'mnbmb', 5465454645, 4646546565, 'J-908, Hariram Nagra New Delhi', 'kjhkjh', '202cb962ac59075b964b07152d234b70', 'ebcd036a0db50db993ae98ce380f64191642082944.png', '2024-12-31 18:30:04'),
(2, 'Kishore Sharma', 'kishore@gmail.com', '3', 'Male', '2019-01-05', '10A12345', 'Janak Sharma', 'Indra Devi', 7879879879, 7987979879, 'kjhkhjkhdkshfiludzshfiu\r\nfjedh\r\nk;jk', 'kishore2019', '202cb962ac59075b964b07152d234b70', '5bede9f47102611b4df6241c718af7fc1642314213.jpg', '2024-12-31 18:30:04'),
(3, 'Anshul', 'anshul@gmali.com', '2', 'Female', '1986-01-05', 'uii-990', 'Kailesg', 'jakinnm', 4646546546, 6546598798, 'jlkjkljoiujiouoil', 'anshul1986', '202cb962ac59075b964b07152d234b70', '4f0691cfe48c8f74fe413c7b92391ff41642605892.jpg', '2024-12-31 18:30:04'),
(4, 'John Doe', 'john@gmail.com', '1', 'Female', '2002-02-10', '10806121', 'Anuj Kumar', 'Garima Singh', 1234698741, 1234567890, 'New Delhi', 'john12', 'f925916e2754e5e03f75dd58a5733251', 'ebcd036a0db50db993ae98ce380f64191643825985.png', '2024-12-31 18:30:04'),
(5, 'Ranjith', 'akkr@gmail.com', '8', 'Male', '2001-05-30', '1080623', 'Bijendra Singh', 'Kamlesh Devi', 1472589630, 1236987450, 'New Delhi', 'anujk3', 'f925916e2754e5e03f75dd58a5733251', '2f413c4becfa2db4bc4fc2ccead84f651643828242.png', '2024-12-31 18:30:04'),
(9, 'thousifK', 'thousifk@email.com', '8', 'Male', '1999-02-21', 'UC-216', 'rdtcfgvnjkm', 'tdfghjkl', 9876543210, 9987654321, 'rzextcyvubhinjokml;', 'thousifk', '0b5978cbfb5d99e4ab94e3d082b8c32d', '11a276c873d0d10c1f88574989b1c55e1738082129.jpg', '2025-01-28 16:35:29'),
(10, 'BCAone', 'bcaone@email.com', '8', 'Male', '2000-01-03', 'BCA-1', 'rsdfrsgv', 'egfdsefghrgtb', 8794561230, 8946512465, 'rxtrfcygvuhbijnlkm;lub', 'bcaone', '44c98fa3c275469975f7631d80c885da', '28cf5ac4e44e1c4da3e1eab60f8391fe1738084259jpeg', '2025-01-28 17:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent2`
--

CREATE TABLE `tblstudent2` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext DEFAULT NULL,
  `MotherName` mediumtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent2`
--

INSERT INTO `tblstudent2` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(1, 'jghj', 'jhghjg@gmail.com', '4', 'Male', '2022-01-13', 'ui-99', 'bbmnb', 'mnbmb', 5465454645, 4646546565, 'J-908, Hariram Nagra New Delhi', 'kjhkjh', '202cb962ac59075b964b07152d234b70', 'ebcd036a0db50db993ae98ce380f64191642082944.png', '2024-12-31 13:00:04'),
(2, 'Kishore Sharma', 'kishore@gmail.com', '3', 'Male', '2019-01-05', '10A12345', 'Janak Sharma', 'Indra Devi', 7879879879, 7987979879, 'kjhkhjkhdkshfiludzshfiu\r\nfjedh\r\nk;jk', 'kishore2019', '202cb962ac59075b964b07152d234b70', '5bede9f47102611b4df6241c718af7fc1642314213.jpg', '2024-12-31 13:00:04'),
(3, 'Anshul', 'anshul@gmali.com', '2', 'Female', '1986-01-05', 'uii-990', 'Kailesg', 'jakinnm', 4646546546, 6546598798, 'jlkjkljoiujiouoil', 'anshul1986', '202cb962ac59075b964b07152d234b70', '4f0691cfe48c8f74fe413c7b92391ff41642605892.jpg', '2024-12-31 13:00:04'),
(4, 'John Doe', 'john@gmail.com', '1', 'Female', '2002-02-10', '10806121', 'Anuj Kumar', 'Garima Singh', 1234698741, 1234567890, 'New Delhi', 'john12', 'f925916e2754e5e03f75dd58a5733251', 'ebcd036a0db50db993ae98ce380f64191643825985.png', '2024-12-31 13:00:04'),
(5, 'Anuj kumar Singh', 'akkr@gmail.com', '8', 'Male', '2001-05-30', '1080623', 'Bijendra Singh', 'Kamlesh Devi', 1472589630, 1236987450, 'New Delhi', 'anujk3', 'f925916e2754e5e03f75dd58a5733251', '2f413c4becfa2db4bc4fc2ccead84f651643828242.png', '2024-12-31 13:00:04'),
(6, 'Rahul Kumar', 'Rahul12@gmail.com', '1', 'Male', '2009-01-01', '12331255', 'Ajay Singh', 'Apporva Singh', 1231231230, 1234567890, 'Test Address', 'rahul123', 'f925916e2754e5e03f75dd58a5733251', '30ab613af6f4a62713c6d98615fec4921735963847jpeg', '2025-01-03 22:40:47'),
(0, 'thousifk1', 'thousifk1@email.com', '8', 'Male', '2000-02-08', 'UC-217', 'awesrdftgh', 'cgvhbjknlm;', 9876543211, 9987654312, 'lkkhjghfgxcgvjhbkn', 'thousifk1', 'bf2844b9556b21f39c1e747b713e9149', '11a276c873d0d10c1f88574989b1c55e1738082211.jpg', '2025-01-28 16:36:51'),
(0, 'thousifkl', 'thousifkl@email.com', '8', 'Male', '2002-02-13', 'UC-123', 'esrtdfgyhubjnkml,', 'zextrcytuvh', 7894561300, 2318979765, 'a4estrdyuvbiujnokml', 'thousifkl', '8f78e93da002f3503c69659e81311b99', '28cf5ac4e44e1c4da3e1eab60f8391fe1738082310jpeg', '2025-01-28 16:38:30'),
(0, 'BCAtwo', 'bcatwo@email.com', '8', 'Male', '2000-05-05', 'BCA-2', 'ctuvyibujknlm', 'jhdgfvdvg', 8974561230, 9846654651, 'retdufygbhnjlkchtiljknfmgv', 'bcatwo', '2b7e4f45680c34a7591b3a9cfacb5b62', '28cf5ac4e44e1c4da3e1eab60f8391fe1738084371jpeg', '2025-01-28 17:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent3`
--

CREATE TABLE `tblstudent3` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext DEFAULT NULL,
  `MotherName` mediumtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent3`
--

INSERT INTO `tblstudent3` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(1, 'jghj', 'jhghjg@gmail.com', '4', 'Male', '2022-01-13', 'ui-99', 'bbmnb', 'mnbmb', 5465454645, 4646546565, 'J-908, Hariram Nagra New Delhi', 'kjhkjh', '202cb962ac59075b964b07152d234b70', 'ebcd036a0db50db993ae98ce380f64191642082944.png', '2024-12-31 13:00:04'),
(2, 'Kishore Sharma', 'kishore@gmail.com', '3', 'Male', '2019-01-05', '10A12345', 'Janak Sharma', 'Indra Devi', 7879879879, 7987979879, 'kjhkhjkhdkshfiludzshfiu\r\nfjedh\r\nk;jk', 'kishore2019', '202cb962ac59075b964b07152d234b70', '5bede9f47102611b4df6241c718af7fc1642314213.jpg', '2024-12-31 13:00:04'),
(3, 'Anshul', 'anshul@gmali.com', '2', 'Female', '1986-01-05', 'uii-990', 'Kailesg', 'jakinnm', 4646546546, 6546598798, 'jlkjkljoiujiouoil', 'anshul1986', '202cb962ac59075b964b07152d234b70', '4f0691cfe48c8f74fe413c7b92391ff41642605892.jpg', '2024-12-31 13:00:04'),
(4, 'John Doe', 'john@gmail.com', '1', 'Female', '2002-02-10', '10806121', 'Anuj Kumar', 'Garima Singh', 1234698741, 1234567890, 'New Delhi', 'john12', 'f925916e2754e5e03f75dd58a5733251', 'ebcd036a0db50db993ae98ce380f64191643825985.png', '2024-12-31 13:00:04'),
(5, 'Anuj kumar Singh', 'akkr@gmail.com', '8', 'Male', '2001-05-30', '1080623', 'Bijendra Singh', 'Kamlesh Devi', 1472589630, 1236987450, 'New Delhi', 'anujk3', 'f925916e2754e5e03f75dd58a5733251', '2f413c4becfa2db4bc4fc2ccead84f651643828242.png', '2024-12-31 13:00:04'),
(6, 'Rahul Kumar', 'Rahul12@gmail.com', '1', 'Male', '2009-01-01', '12331255', 'Ajay Singh', 'Apporva Singh', 1231231230, 1234567890, 'Test Address', 'rahul123', 'f925916e2754e5e03f75dd58a5733251', '30ab613af6f4a62713c6d98615fec4921735963847jpeg', '2025-01-03 22:40:47'),
(0, 'BCAthree', 'bcathree@email.com', '8', 'Male', '2000-09-04', 'BCA-3', 'bgsfvdrfvh', 'ighejlkbfnkdg', 9746519868, 5127894656, 'rftbgvnbtrnnbvuh', 'bcathree', '4fe31fac27dd8b4b7cc38a0356926298', '28cf5ac4e44e1c4da3e1eab60f8391fe1738084452jpeg', '2025-01-28 17:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbluploadedhomeworks`
--

CREATE TABLE `tbluploadedhomeworks` (
  `id` int(11) NOT NULL,
  `homeworkId` int(11) DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL,
  `homeworkDescription` longtext DEFAULT NULL,
  `homeworkFile` varchar(255) DEFAULT NULL,
  `postinDate` timestamp NULL DEFAULT current_timestamp(),
  `adminRemark` mediumtext DEFAULT NULL,
  `adminRemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluploadedhomeworks`
--

INSERT INTO `tbluploadedhomeworks` (`id`, `homeworkId`, `studentId`, `homeworkDescription`, `homeworkFile`, `postinDate`, `adminRemark`, `adminRemarkDate`) VALUES
(1, 2, 4, 'upload', '869d2b4df212b9b55402b8fca8e28870.pdf', '2025-01-01 05:47:45', 'ok', '2025-01-01 09:44:36'),
(2, 4, 6, 'Done', 'a375fcfbcac4b897b4574fbd4003467d.pdf', '2025-01-04 04:13:46', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblhomework`
--
ALTER TABLE `tblhomework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluploadedhomeworks`
--
ALTER TABLE `tbluploadedhomeworks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblhomework`
--
ALTER TABLE `tblhomework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbluploadedhomeworks`
--
ALTER TABLE `tbluploadedhomeworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
