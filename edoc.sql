-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 04:06 PM
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
-- Database: `edoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aemail` varchar(255) NOT NULL,
  `apassword` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aemail`, `apassword`) VALUES
('admin@edoc.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appoid` int(11) NOT NULL,
  `pid` int(10) DEFAULT NULL,
  `apponum` int(3) DEFAULT NULL,
  `scheduleid` int(10) DEFAULT NULL,
  `appodate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appoid`, `pid`, `apponum`, `scheduleid`, `appodate`) VALUES
(4, 3, 1, 10, '2024-11-17'),
(3, 3, 1, 1, '2024-11-16'),
(5, 3, 2, 1, '2024-11-17'),
(6, 3, 2, 10, '2024-11-17');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docid` int(11) NOT NULL,
  `docemail` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docpassword` varchar(255) DEFAULT NULL,
  `docnic` varchar(15) DEFAULT NULL,
  `doctel` varchar(15) DEFAULT NULL,
  `specialties` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docid`, `docemail`, `docname`, `docpassword`, `docnic`, `doctel`, `specialties`) VALUES
(1, 'doctor@edoc.com', 'Test Doctor', '123', '000000000', '0110000000', 1),
(2, 'kabir@gmail.com', 'kabir singh', '123', '', '986457379782', 1),
(3, 'sanduk@edoc.com', 'Sanduk ruit', '123', '', '9845536626', 2),
(4, 'ranjit@spec1.com', 'Ranjit Thapa', '123', '1000000001', '9800001001', 1),
(5, 'binod@spec1.com', 'Binod Shrestha', '123', '1000000002', '9800001002', 1),
(6, 'suman@spec1.com', 'Suman Karki', '123', '1000000003', '9800001003', 1),
(7, 'prabin@spec1.com', 'Prabin Rai', '123', '1000000004', '9800001004', 1),
(8, 'alok@spec1.com', 'Alok Giri', '123', '1000000005', '9800001005', 1),
(9, 'sita@spec2.com', 'Sita Adhikari', '123', '1000000006', '9800001006', 2),
(10, 'rekha@spec2.com', 'Rekha Basnet', '123', '1000000007', '9800001007', 2),
(11, 'anita@spec2.com', 'Anita Bhandari', '123', '1000000008', '9800001008', 2),
(12, 'sunita@spec2.com', 'Sunita KC', '123', '1000000009', '9800001009', 2),
(13, 'rashmi@spec2.com', 'Rashmi Joshi', '123', '1000000010', '9800001010', 2),
(14, 'krishna@spec3.com', 'Krishna Paudel', '123', '1000000011', '9800001011', 3),
(15, 'manoj@spec3.com', 'Manoj Maharjan', '123', '1000000012', '9800001012', 3),
(16, 'dinesh@spec3.com', 'Dinesh Raut', '123', '1000000013', '9800001013', 3),
(17, 'anil@spec3.com', 'Anil Khadka', '123', '1000000014', '9800001014', 3),
(18, 'santosh@spec3.com', 'Santosh Lama', '123', '1000000015', '9800001015', 3),
(19, 'priya@spec4.com', 'Priya Maharjan', '123', '1000000016', '9800001016', 4),
(20, 'sujata@spec4.com', 'Sujata Rai', '123', '1000000017', '9800001017', 4),
(21, 'maya@spec4.com', 'Maya Bista', '123', '1000000018', '9800001018', 4),
(22, 'bishnu@spec4.com', 'Bishnu Thapa', '123', '1000000019', '9800001019', 4),
(23, 'kiran@spec4.com', 'Kiran Acharya', '123', '1000000020', '9800001020', 4),
(24, 'prakash@spec5.com', 'Prakash Subedi', '123', '1000000021', '9800001021', 5),
(25, 'rajan@spec5.com', 'Rajan Shrestha', '123', '1000000022', '9800001022', 5),
(26, 'deepak@spec5.com', 'Deepak Gurung', '123', '1000000023', '9800001023', 5),
(27, 'amit@spec5.com', 'Amit Shah', '123', '1000000024', '9800001024', 5),
(28, 'ramesh@spec5.com', 'Ramesh Adhikari', '123', '1000000025', '9800001025', 5),
(29, 'sanjay@spec6.com', 'Sanjay Yadav', '123', '1000000026', '9800001026', 6),
(30, 'kishor@spec6.com', 'Kishor Tamang', '123', '1000000027', '9800001027', 6),
(31, 'rajesh@spec6.com', 'Rajesh Shahi', '123', '1000000028', '9800001028', 6),
(32, 'bhuwan@spec6.com', 'Bhuwan Koirala', '123', '1000000029', '9800001029', 6),
(33, 'sandeep@spec6.com', 'Sandeep Maharjan', '123', '1000000030', '9800001030', 6),
(34, 'prabha@spec7.com', 'Prabha Neupane', '123', '1000000031', '9800001031', 7),
(35, 'usha@spec7.com', 'Usha Rimal', '123', '1000000032', '9800001032', 7),
(36, 'meena@spec7.com', 'Meena Dangol', '123', '1000000033', '9800001033', 7),
(37, 'milan@spec7.com', 'Milan Thapa', '123', '1000000034', '9800001034', 7),
(38, 'kriti@spec7.com', 'Kriti Devkota', '123', '1000000035', '9800001035', 7),
(39, 'abinash@spec8.com', 'Abinash Ghimire', '123', '1000000036', '9800001036', 8),
(40, 'srijana@spec8.com', 'Srijana Sharma', '123', '1000000037', '9800001037', 8),
(41, 'alok@spec8.com', 'Alok Dahal', '123', '1000000038', '9800001038', 8),
(42, 'kabita@spec8.com', 'Kabita Oli', '123', '1000000039', '9800001039', 8),
(43, 'roshan@spec8.com', 'Roshan Bhattarai', '123', '1000000040', '9800001040', 8),
(44, 'kapil@spec9.com', 'Kapil Sharma', '123', '1000000041', '9800001041', 9),
(45, 'ishan@spec9.com', 'Ishan Rana', '123', '1000000042', '9800001042', 9),
(46, 'ramila@spec9.com', 'Ramila Luitel', '123', '1000000043', '9800001043', 9),
(47, 'ishwori@spec9.com', 'Ishwori Chhetri', '123', '1000000044', '9800001044', 9),
(48, 'baburam@spec9.com', 'Baburam Regmi', '123', '1000000045', '9800001045', 9),
(49, 'sanjiv@spec10.com', 'Sanjiv Kharel', '123', '1000000046', '9800001046', 10),
(50, 'sabina@spec10.com', 'Sabina Joshi', '123', '1000000047', '9800001047', 10),
(51, 'laxmi@spec10.com', 'Laxmi Magar', '123', '1000000048', '9800001048', 10),
(52, 'hemanta@spec10.com', 'Hemanta Rai', '123', '1000000049', '9800001049', 10),
(53, 'shiva@spec10.com', 'Shiva Limbu', '123', '1000000050', '9800001050', 10),
(54, 'manisha@spec11.com', 'Manisha Raut', '123', '1000000051', '9800001051', 11),
(55, 'rajiv@spec11.com', 'Rajiv Khatri', '123', '1000000052', '9800001052', 11),
(56, 'gopal@spec11.com', 'Gopal Aryal', '123', '1000000053', '9800001053', 11),
(57, 'reema@spec11.com', 'Reema Pokharel', '123', '1000000054', '9800001054', 11),
(58, 'anish@spec11.com', 'Anish Bista', '123', '1000000055', '9800001055', 11),
(59, 'karuna@spec12.com', 'Karuna Singh', '123', '1000000056', '9800001056', 12),
(60, 'sachin@spec12.com', 'Sachin Shrestha', '123', '1000000057', '9800001057', 12),
(61, 'pratik@spec12.com', 'Pratik Adhikari', '123', '1000000058', '9800001058', 12),
(62, 'anjana@spec12.com', 'Anjana Rai', '123', '1000000059', '9800001059', 12),
(63, 'sudarshan@spec12.com', 'Sudarshan Poudel', '123', '1000000060', '9800001060', 12),
(64, 'nirmala@spec13.com', 'Nirmala Tamang', '123', '1000000061', '9800001061', 13),
(65, 'bishal@spec13.com', 'Bishal Karki', '123', '1000000062', '9800001062', 13),
(66, 'raju@spec13.com', 'Raju Maharjan', '123', '1000000063', '9800001063', 13),
(67, 'smriti@spec13.com', 'Smriti Khadka', '123', '1000000064', '9800001064', 13),
(68, 'arjun@spec13.com', 'Arjun Devkota', '123', '1000000065', '9800001065', 13),
(69, 'deepa@spec14.com', 'Deepa Koirala', '123', '1000000066', '9800001066', 14),
(70, 'bikash@spec14.com', 'Bikash Lamsal', '123', '1000000067', '9800001067', 14),
(71, 'kritika@spec14.com', 'Kritika Ghimire', '123', '1000000068', '9800001068', 14),
(72, 'alok@spec14.com', 'Alok Sharma', '123', '1000000069', '9800001069', 14),
(73, 'mahesh@spec14.com', 'Mahesh Bhatt', '123', '1000000070', '9800001070', 14),
(74, 'sunil@spec15.com', 'Sunil Bista', '123', '1000000071', '9800001071', 15),
(75, 'jagrit@spec15.com', 'Jagrit Sapkota', '123', '1000000072', '9800001072', 15),
(76, 'seema@spec15.com', 'Seema Pandey', '123', '1000000073', '9800001073', 15),
(77, 'pramesh@spec15.com', 'Pramesh Joshi', '123', '1000000074', '9800001074', 15),
(78, 'raju@spec15.com', 'Raju Shahi', '123', '1000000075', '9800001075', 15),
(79, 'suraj@spec16.com', 'Suraj Lama', '123', '1000000076', '9800001076', 16),
(80, 'bijay@spec16.com', 'Bijay Bhattarai', '123', '1000000077', '9800001077', 16),
(81, 'ramita@spec16.com', 'Ramita Thapa', '123', '1000000078', '9800001078', 16),
(82, 'santosh@spec16.com', 'Santosh KC', '123', '1000000079', '9800001079', 16),
(83, 'richa@spec16.com', 'Richa Nepal', '123', '1000000080', '9800001080', 16),
(84, 'aashish@spec17.com', 'Aashish Dhakal', '123', '1000000081', '9800001081', 17),
(85, 'amrit@spec17.com', 'Amrit Bhandari', '123', '1000000082', '9800001082', 17),
(86, 'pragya@spec17.com', 'Pragya Subedi', '123', '1000000083', '9800001083', 17),
(87, 'ujwal@spec17.com', 'Ujwal Ranjit', '123', '1000000084', '9800001084', 17),
(88, 'deepika@spec17.com', 'Deepika Sharma', '123', '1000000085', '9800001085', 17),
(89, 'bhim@spec18.com', 'Bhim Sapkota', '123', '1000000086', '9800001086', 18),
(90, 'rameshwor@spec18.com', 'Rameshwor Thapa', '123', '1000000087', '9800001087', 18),
(91, 'bijaya@spec18.com', 'Bijaya Chhetri', '123', '1000000088', '9800001088', 18),
(92, 'sarita@spec18.com', 'Sarita Kandel', '123', '1000000089', '9800001089', 18),
(93, 'arjun@spec18.com', 'Arjun Neupane', '123', '1000000090', '9800001090', 18),
(94, 'anurag@spec19.com', 'Anurag Giri', '123', '1000000091', '9800001091', 19),
(95, 'roshni@spec19.com', 'Roshni Regmi', '123', '1000000092', '9800001092', 19),
(96, 'bikas@spec19.com', 'Bikas Shahi', '123', '1000000093', '9800001093', 19),
(97, 'anjali@spec19.com', 'Anjali Rai', '123', '1000000094', '9800001094', 19),
(98, 'kishore@spec19.com', 'Kishore Joshi', '123', '1000000095', '9800001095', 19),
(99, 'meena@spec20.com', 'Meena Acharya', '123', '1000000096', '9800001096', 20),
(100, 'ravi@spec20.com', 'Ravi Pant', '123', '1000000097', '9800001097', 20),
(101, 'ram@spec20.com', 'Ram Karki', '123', '1000000098', '9800001098', 20),
(102, 'shristi@spec20.com', 'Shristi Basnet', '123', '1000000099', '9800001099', 20),
(103, 'nabin@spec20.com', 'Nabin Khatri', '123', '1000000100', '9800001100', 20),
(104, 'suman@spec21.com', 'Suman Rathi', '123', '1000000101', '9800001101', 21),
(105, 'bipana@spec21.com', 'Bipana Shrestha', '123', '1000000102', '9800001102', 21),
(106, 'santosh@spec21.com', 'Santosh Kumar', '123', '1000000103', '9800001103', 21),
(107, 'shivani@spec21.com', 'Shivani Jha', '123', '1000000104', '9800001104', 21),
(108, 'sanjay@spec21.com', 'Sanjay Joshi', '123', '1000000105', '9800001105', 21),
(109, 'kritika@spec22.com', 'Kritika Bhandari', '123', '1000000106', '9800001106', 22),
(110, 'rajendra@spec22.com', 'Rajendra Shrestha', '123', '1000000107', '9800001107', 22),
(111, 'sunita@spec22.com', 'Sunita Bhattarai', '123', '1000000108', '9800001108', 22),
(112, 'rohit@spec22.com', 'Rohit Gautam', '123', '1000000109', '9800001109', 22),
(113, 'neeraj@spec22.com', 'Neeraj Lamsal', '123', '1000000110', '9800001110', 22),
(114, 'neha@spec23.com', 'Neha Rajbhandari', '123', '1000000111', '9800001111', 23),
(115, 'madhav@spec23.com', 'Madhav Koirala', '123', '1000000112', '9800001112', 23),
(116, 'arun@spec23.com', 'Arun Pandey', '123', '1000000113', '9800001113', 23),
(117, 'pradeep@spec23.com', 'Pradeep Sharma', '123', '1000000114', '9800001114', 23),
(118, 'shyam@spec23.com', 'Shyam Kumar', '123', '1000000115', '9800001115', 23),
(119, 'nisha@spec24.com', 'Nisha Koirala', '123', '1000000116', '9800001116', 24),
(120, 'manoj@spec24.com', 'Manoj Thapa', '123', '1000000117', '9800001117', 24),
(121, 'purna@spec24.com', 'Purna Shrestha', '123', '1000000118', '9800001118', 24),
(122, 'bibek@spec24.com', 'Bibek Rai', '123', '1000000119', '9800001119', 24),
(123, 'maya@spec24.com', 'Maya Gurung', '123', '1000000120', '9800001120', 24),
(124, 'gita@spec25.com', 'Gita Lamsal', '123', '1000000121', '9800001121', 25),
(125, 'sachin@spec25.com', 'Sachin Karki', '123', '1000000122', '9800001122', 25),
(126, 'amit@spec25.com', 'Amit Sharma', '123', '1000000123', '9800001123', 25),
(127, 'bijaya@spec25.com', 'Bijaya Subedi', '123', '1000000124', '9800001124', 25),
(128, 'sita@spec25.com', 'Sita Chhetri', '123', '1000000125', '9800001125', 25),
(129, 'alok@spec26.com', 'Alok Thapa', '123', '1000000126', '9800001126', 26),
(130, 'nitesh@spec26.com', 'Nitesh Khadka', '123', '1000000127', '9800001127', 26),
(131, 'pramila@spec26.com', 'Pramila Rai', '123', '1000000128', '9800001128', 26),
(132, 'suraj@spec26.com', 'Suraj Maharjan', '123', '1000000129', '9800001129', 26),
(133, 'anushka@spec26.com', 'Anushka Nepal', '123', '1000000130', '9800001130', 26),
(134, 'rajesh@spec27.com', 'Rajesh Poudel', '123', '1000000131', '9800001131', 27),
(135, 'neeraj@spec27.com', 'Neeraj Bista', '123', '1000000132', '9800001132', 27),
(136, 'seema@spec27.com', 'Seema Gurung', '123', '1000000133', '9800001133', 27),
(137, 'kamal@spec27.com', 'Kamal Thapa', '123', '1000000134', '9800001134', 27),
(138, 'raju@spec27.com', 'Raju Adhikari', '123', '1000000135', '9800001135', 27),
(139, 'ramita@spec28.com', 'Ramita Pokharel', '123', '1000000136', '9800001136', 28),
(140, 'ajay@spec28.com', 'Ajay Rathi', '123', '1000000137', '9800001137', 28),
(141, 'pawan@spec28.com', 'Pawan Bhandari', '123', '1000000138', '9800001138', 28),
(142, 'suman@spec28.com', 'Suman Koirala', '123', '1000000139', '9800001139', 28),
(143, 'sanjana@spec28.com', 'Sanjana Chhetri', '123', '1000000140', '9800001140', 28),
(144, 'bipana@spec29.com', 'Bipana Shah', '123', '1000000141', '9800001141', 29),
(145, 'manoj@spec29.com', 'Manoj Aryal', '123', '1000000142', '9800001142', 29),
(146, 'alina@spec29.com', 'Alina Nepal', '123', '1000000143', '9800001143', 29),
(147, 'gokul@spec29.com', 'Gokul Gurung', '123', '1000000144', '9800001144', 29),
(148, 'som@spec29.com', 'Som Thapa', '123', '1000000145', '9800001145', 29),
(149, 'shyam@spec30.com', 'Shyam Gautam', '123', '1000000146', '9800001146', 30),
(150, 'hari@spec30.com', 'Hari Sharma', '123', '1000000147', '9800001147', 30),
(151, 'krishna@spec30.com', 'Krishna Yadav', '123', '1000000148', '9800001148', 30),
(152, 'rekha@spec30.com', 'Rekha Karki', '123', '1000000149', '9800001149', 30),
(153, 'ravi@spec30.com', 'Ravi Rathi', '123', '1000000150', '9800001150', 30),
(154, 'pradeep@spec31.com', 'Pradeep Chhetri', '123', '1000000151', '9800001151', 31),
(155, 'ram@spec31.com', 'Ram Bahadur', '123', '1000000152', '9800001152', 31),
(156, 'neelam@spec31.com', 'Neelam Singh', '123', '1000000153', '9800001153', 31),
(157, 'deepa@spec31.com', 'Deepa Koirala', '123', '1000000154', '9800001154', 31),
(158, 'sita@spec31.com', 'Sita Magar', '123', '1000000155', '9800001155', 31),
(159, 'neelam@spec32.com', 'Neelam Sharma', '123', '1000000156', '9800001156', 32),
(160, 'suman@spec32.com', 'Suman Thapa', '123', '1000000157', '9800001157', 32),
(161, 'bhanu@spec32.com', 'Bhanu Kumar', '123', '1000000158', '9800001158', 32),
(162, 'deepa@spec32.com', 'Deepa Yadav', '123', '1000000159', '9800001159', 32),
(163, 'rupa@spec32.com', 'Rupa Bhandari', '123', '1000000160', '9800001160', 32),
(164, 'gopal@spec33.com', 'Gopal Bista', '123', '1000000161', '9800001161', 33),
(165, 'neha@spec33.com', 'Neha Pokharel', '123', '1000000162', '9800001162', 33),
(166, 'aruna@spec33.com', 'Aruna Acharya', '123', '1000000163', '9800001163', 33),
(167, 'suraj@spec33.com', 'Suraj Rai', '123', '1000000164', '9800001164', 33),
(168, 'uma@spec33.com', 'Uma Lamsal', '123', '1000000165', '9800001165', 33),
(169, 'neeraj@spec34.com', 'Neeraj Shrestha', '123', '1000000166', '9800001166', 34),
(170, 'krishna@spec34.com', 'Krishna Gurung', '123', '1000000167', '9800001167', 34),
(171, 'kamal@spec34.com', 'Kamal Thapa', '123', '1000000168', '9800001168', 34),
(172, 'radha@spec34.com', 'Radha Bhattarai', '123', '1000000169', '9800001169', 34),
(173, 'maya@spec34.com', 'Maya Koirala', '123', '1000000170', '9800001170', 34),
(174, 'gokul@spec35.com', 'Gokul Kumar', '123', '1000000171', '9800001171', 35),
(175, 'sangita@spec35.com', 'Sangita Magar', '123', '1000000172', '9800001172', 35),
(176, 'anil@spec35.com', 'Anil Chaulagain', '123', '1000000173', '9800001173', 35),
(177, 'prabha@spec35.com', 'Prabha Gautam', '123', '1000000174', '9800001174', 35),
(178, 'kishor@spec35.com', 'Kishor Lamsal', '123', '1000000175', '9800001175', 35),
(179, 'kamal@spec36.com', 'Kamal Acharya', '123', '1000000176', '9800001176', 36),
(180, 'uma@spec36.com', 'Uma Yadav', '123', '1000000177', '9800001177', 36),
(181, 'pawan@spec36.com', 'Pawan Joshi', '123', '1000000178', '9800001178', 36),
(182, 'raju@spec36.com', 'Raju Bista', '123', '1000000179', '9800001179', 36),
(183, 'shivani@spec36.com', 'Shivani Subedi', '123', '1000000180', '9800001180', 36),
(184, 'sushma@spec37.com', 'Sushma Poudel', '123', '1000000181', '9800001181', 37),
(185, 'bishal@spec37.com', 'Bishal Sharma', '123', '1000000182', '9800001182', 37),
(186, 'nisha@spec37.com', 'Nisha Chaulagain', '123', '1000000183', '9800001183', 37),
(187, 'manoj@spec37.com', 'Manoj Bhandari', '123', '1000000184', '9800001184', 37),
(188, 'ramita@spec37.com', 'Ramita Thapa', '123', '1000000185', '9800001185', 37),
(189, 'sushma@spec38.com', 'Sushma Koirala', '123', '1000000186', '9800001186', 38),
(190, 'seema@spec38.com', 'Seema Rai', '123', '1000000187', '9800001187', 38),
(191, 'shiva@spec38.com', 'Shiva Shrestha', '123', '1000000188', '9800001188', 38),
(192, 'rajesh@spec38.com', 'Rajesh Maharjan', '123', '1000000189', '9800001189', 38),
(193, 'bipana@spec38.com', 'Bipana Adhikari', '123', '1000000190', '9800001190', 38),
(194, 'neelam@spec39.com', 'Neelam Gautam', '123', '1000000191', '9800001191', 39),
(195, 'purna@spec39.com', 'Purna Shrestha', '123', '1000000192', '9800001192', 39),
(196, 'suraj@spec39.com', 'Suraj Aryal', '123', '1000000193', '9800001193', 39),
(197, 'gokul@spec39.com', 'Gokul Sharma', '123', '1000000194', '9800001194', 39),
(198, 'alok@spec39.com', 'Alok Lamsal', '123', '1000000195', '9800001195', 39),
(199, 'ravi@spec40.com', 'Ravi Thapa', '123', '1000000196', '9800001196', 40),
(200, 'krishna@spec40.com', 'Krishna Yadav', '123', '1000000197', '9800001197', 40),
(201, 'shivani@spec40.com', 'Shivani Rai', '123', '1000000198', '9800001198', 40),
(202, 'sushila@spec40.com', 'Sushila Koirala', '123', '1000000199', '9800001199', 40),
(203, 'bijaya@spec40.com', 'Bijaya Sharma', '123', '1000000200', '9800001200', 40),
(204, 'neeraj@spec41.com', 'Neeraj Joshi', '123', '1000000201', '9800001201', 41),
(205, 'manoj@spec41.com', 'Manoj Acharya', '123', '1000000202', '9800001202', 41),
(206, 'kritika@spec41.com', 'Kritika Rai', '123', '1000000203', '9800001203', 41),
(207, 'sanjay@spec41.com', 'Sanjay Giri', '123', '1000000204', '9800001204', 41),
(208, 'suman@spec41.com', 'Suman Khatri', '123', '1000000205', '9800001205', 41),
(209, 'purnima@spec42.com', 'Purnima Rai', '123', '1000000206', '9800001206', 42),
(210, 'rajesh@spec42.com', 'Rajesh Gurung', '123', '1000000207', '9800001207', 42),
(211, 'shiva@spec42.com', 'Shiva Koirala', '123', '1000000208', '9800001208', 42),
(212, 'madhav@spec42.com', 'Madhav Bista', '123', '1000000209', '9800001209', 42),
(213, 'anu@spec42.com', 'Anu Thapa', '123', '1000000210', '9800001210', 42),
(214, 'sanjana@spec43.com', 'Sanjana Shrestha', '123', '1000000211', '9800001211', 43),
(215, 'rajendra@spec43.com', 'Rajendra Adhikari', '123', '1000000212', '9800001212', 43),
(216, 'krishna@spec43.com', 'Krishna Tamang', '123', '1000000213', '9800001213', 43),
(217, 'uma@spec43.com', 'Uma Bhandari', '123', '1000000214', '9800001214', 43),
(218, 'suraj@spec43.com', 'Suraj Giri', '123', '1000000215', '9800001215', 43),
(219, 'shiva@spec44.com', 'Shiva Chhetri', '123', '1000000216', '9800001216', 44),
(220, 'neeraj@spec44.com', 'Neeraj Rai', '123', '1000000217', '9800001217', 44),
(221, 'krishna@spec44.com', 'Krishna Sharma', '123', '1000000218', '9800001218', 44),
(222, 'suman@spec44.com', 'Suman Bista', '123', '1000000219', '9800001219', 44),
(223, 'ramita@spec44.com', 'Ramita Nepal', '123', '1000000220', '9800001220', 44),
(224, 'sushma@spec45.com', 'Sushma Koirala', '123', '1000000221', '9800001221', 45),
(225, 'neelam@spec45.com', 'Neelam Shrestha', '123', '1000000222', '9800001222', 45),
(226, 'bhanu@spec45.com', 'Bhanu Gautam', '123', '1000000223', '9800001223', 45),
(227, 'suman@spec45.com', 'Suman Bhandari', '123', '1000000224', '9800001224', 45),
(228, 'ritu@spec45.com', 'Ritu Rai', '123', '1000000225', '9800001225', 45),
(229, 'alok@spec46.com', 'Alok Thapa', '123', '1000000226', '9800001226', 46),
(230, 'sarita@spec46.com', 'Sarita Koirala', '123', '1000000227', '9800001227', 46),
(231, 'pradeep@spec46.com', 'Pradeep Yadav', '123', '1000000228', '9800001228', 46),
(232, 'pramod@spec46.com', 'Pramod Karki', '123', '1000000229', '9800001229', 46),
(233, 'krishna@spec46.com', 'Krishna Rai', '123', '1000000230', '9800001230', 46),
(234, 'nabin@spec47.com', 'Nabin Adhikari', '123', '1000000231', '9800001231', 47),
(235, 'rajesh@spec47.com', 'Rajesh Sharma', '123', '1000000232', '9800001232', 47),
(236, 'kritika@spec47.com', 'Kritika Bhattarai', '123', '1000000233', '9800001233', 47),
(237, 'uma@spec47.com', 'Uma Rai', '123', '1000000234', '9800001234', 47),
(238, 'suman@spec47.com', 'Suman Magar', '123', '1000000235', '9800001235', 47),
(239, 'gokul@spec48.com', 'Gokul Sharma', '123', '1000000236', '9800001236', 48),
(240, 'pradeep@spec48.com', 'Pradeep Subedi', '123', '1000000237', '9800001237', 48),
(241, 'sita@spec48.com', 'Sita Koirala', '123', '1000000238', '9800001238', 48),
(242, 'ram@spec48.com', 'Ram Bahadur', '123', '1000000239', '9800001239', 48),
(243, 'bishal@spec48.com', 'Bishal Thapa', '123', '1000000240', '9800001240', 48),
(244, 'shivani@spec49.com', 'Shivani Lamsal', '123', '1000000241', '9800001241', 49),
(245, 'bipin@spec49.com', 'Bipin Gurung', '123', '1000000242', '9800001242', 49),
(246, 'pradeep@spec49.com', 'Pradeep Karki', '123', '1000000243', '9800001243', 49),
(247, 'kamal@spec49.com', 'Kamal Sharma', '123', '1000000244', '9800001244', 49),
(248, 'aruna@spec49.com', 'Aruna Shrestha', '123', '1000000245', '9800001245', 49),
(249, 'ramita@spec50.com', 'Ramita Gurung', '123', '1000000246', '9800001246', 50),
(250, 'neeraj@spec50.com', 'Neeraj Subedi', '123', '1000000247', '9800001247', 50),
(251, 'ravi@spec50.com', 'Ravi Bhattarai', '123', '1000000248', '9800001248', 50),
(252, 'shiva@spec50.com', 'Shiva Yadav', '123', '1000000249', '9800001249', 50),
(253, 'suman@spec50.com', 'Suman Tamang', '123', '1000000250', '9800001250', 50),
(254, 'krishna@spec51.com', 'Krishna Sharma', '123', '1000000251', '9800001251', 51),
(255, 'alok@spec51.com', 'Alok Chhetri', '123', '1000000252', '9800001252', 51),
(256, 'manoj@spec51.com', 'Manoj Joshi', '123', '1000000253', '9800001253', 51),
(257, 'nisha@spec51.com', 'Nisha Rai', '123', '1000000254', '9800001254', 51),
(258, 'deepa@spec51.com', 'Deepa Koirala', '123', '1000000255', '9800001255', 51),
(259, 'gokul@spec52.com', 'Gokul Shrestha', '123', '1000000256', '9800001256', 52),
(260, 'ravi@spec52.com', 'Ravi Aryal', '123', '1000000257', '9800001257', 52),
(261, 'shivani@spec52.com', 'Shivani Koirala', '123', '1000000258', '9800001258', 52),
(262, 'kamal@spec52.com', 'Kamal Chaulagain', '123', '1000000259', '9800001259', 52),
(263, 'suman@spec52.com', 'Suman Joshi', '123', '1000000260', '9800001260', 52),
(264, 'alok@spec53.com', 'Alok Thapa', '123', '1000000261', '9800001261', 53),
(265, 'neeraj@spec53.com', 'Neeraj Bhandari', '123', '1000000262', '9800001262', 53),
(266, 'gokul@spec53.com', 'Gokul Giri', '123', '1000000263', '9800001263', 53),
(267, 'kamal@spec53.com', 'Kamal Adhikari', '123', '1000000264', '9800001264', 53),
(268, 'sushil@spec53.com', 'Sushil Yadav', '123', '1000000265', '9800001265', 53),
(269, 'shivani@spec54.com', 'Shivani Karki', '123', '1000000266', '9800001266', 54),
(270, 'bipin@spec54.com', 'Bipin Chhetri', '123', '1000000267', '9800001267', 54),
(271, 'pradeep@spec54.com', 'Pradeep Sharma', '123', '1000000268', '9800001268', 54),
(272, 'manoj@spec54.com', 'Manoj Giri', '123', '1000000269', '9800001269', 54),
(273, 'alok@spec54.com', 'Alok Rai', '123', '1000000270', '9800001270', 54),
(274, 'shiva@spec55.com', 'Shiva Koirala', '123', '1000000271', '9800001271', 55),
(275, 'neelam@spec55.com', 'Neelam Subedi', '123', '1000000272', '9800001272', 55),
(276, 'manoj@spec55.com', 'Manoj Tamang', '123', '1000000273', '9800001273', 55),
(277, 'krishna@spec55.com', 'Krishna Acharya', '123', '1000000274', '9800001274', 55),
(278, 'gokul@spec55.com', 'Gokul Aryal', '123', '1000000275', '9800001275', 55),
(279, 'ramita@spec56.com', 'Ramita Gurung', '123', '1000000276', '9800001276', 56),
(280, 'purna@spec56.com', 'Purna Gautam', '123', '1000000277', '9800001277', 56),
(281, 'suman@spec56.com', 'Suman Sharma', '123', '1000000278', '9800001278', 56),
(282, 'krishna@spec56.com', 'Krishna Rai', '123', '1000000279', '9800001279', 56),
(283, 'neelam@spec56.com', 'Neelam Subedi', '123', '1000000280', '9800001280', 56);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pid` int(11) NOT NULL,
  `pemail` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ppassword` varchar(255) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `pnic` varchar(15) DEFAULT NULL,
  `pdob` date DEFAULT NULL,
  `ptel` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `pemail`, `pname`, `ppassword`, `paddress`, `pnic`, `pdob`, `ptel`) VALUES
(1, 'patient@edoc.com', 'Test Patient', '123', 'Sri Lanka', '0000000000', '2000-01-01', '0120000000'),
(3, 'bibek@gmail.com', 'bibek karki', '123', 'kathmandu', '9823301171', '2024-08-20', ''),
(4, 'nima@gmail.com', 'nima  lama', '123', 'bir', '9887745532', '2024-11-28', ''),
(5, 'bipin@gmail.com', 'lshdb hb', '123', 'hb', '9823301171', '2024-11-21', '');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `scheduleid` int(11) NOT NULL,
  `docid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scheduledate` date DEFAULT NULL,
  `scheduletime` time DEFAULT NULL,
  `nop` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleid`, `docid`, `title`, `scheduledate`, `scheduletime`, `nop`) VALUES
(135, '54', 'Cancer Follow-up', '2025-03-05', '13:00:00', 7),
(134, '53', 'Consultation on Autoimmune Diseases', '2025-03-04', '12:00:00', 6),
(133, '52', 'Heart Health Review', '2025-03-03', '11:00:00', 10),
(132, '51', 'Checkup for Respiratory Issues', '2025-03-02', '10:00:00', 7),
(131, '50', 'Surgical Review', '2025-03-01', '09:00:00', 8),
(130, '49', 'Gastroenterology Checkup', '2025-02-28', '15:00:00', 6),
(129, '48', 'Orthopaedic Consultation', '2025-02-27', '14:00:00', 10),
(128, '47', 'Mental Health Screening', '2025-02-26', '13:00:00', 5),
(127, '46', 'Pre-surgery Check', '2025-02-25', '12:00:00', 7),
(126, '45', 'Emergency Session', '2025-02-24', '11:00:00', 6),
(125, '44', 'Physical Therapy', '2025-02-23', '10:00:00', 12),
(124, '43', 'Gynecology Screening', '2025-02-22', '09:00:00', 8),
(123, '42', 'Radiology Follow-up', '2025-02-21', '15:00:00', 10),
(122, '41', 'Health and Wellness Consultation', '2025-02-20', '14:00:00', 15),
(121, '40', 'Paediatric Surgery', '2025-02-19', '13:00:00', 7),
(120, '39', 'Checkup for Senior Citizens', '2025-02-18', '12:00:00', 10),
(119, '38', 'Surgical Consult', '2025-02-17', '11:00:00', 5),
(118, '37', 'Orthopaedic Follow-up', '2025-02-16', '10:00:00', 7),
(117, '36', 'Emergency Follow-up', '2025-02-15', '09:00:00', 8),
(116, '35', 'Rheumatology Consultation', '2025-02-14', '15:00:00', 6),
(115, '34', 'Neurological Consultation', '2025-02-13', '14:00:00', 9),
(114, '33', 'Radiology Consultation', '2025-02-12', '13:00:00', 10),
(113, '32', 'Psychiatric Follow-up', '2025-02-11', '12:00:00', 7),
(112, '31', 'Postpartum Care', '2025-02-10', '11:00:00', 6),
(111, '30', 'Endocrine Consultation', '2025-02-09', '10:00:00', 8),
(110, '29', 'Cardiology Follow-up', '2025-02-08', '09:00:00', 10),
(109, '28', 'Eye Health Check', '2025-02-07', '15:00:00', 18),
(108, '27', 'Neuro Consultation', '2025-02-06', '14:00:00', 8),
(107, '26', 'General Surgery Consultation', '2025-02-05', '13:00:00', 9),
(106, '25', 'Cancer Treatment Plan', '2025-02-04', '12:00:00', 5),
(105, '24', 'Diabetes Management', '2025-02-03', '11:00:00', 12),
(104, '23', 'Surgical Follow-up', '2025-02-02', '10:00:00', 6),
(103, '22', 'Infectious Diseases Consultation', '2025-02-01', '09:00:00', 7),
(102, '21', 'Paediatric Care', '2025-01-30', '15:00:00', 12),
(101, '20', 'Geriatric Care Consultation', '2025-01-29', '14:00:00', 10),
(100, '19', 'Obstetrics and Gynaecology', '2025-01-28', '13:00:00', 8),
(99, '18', 'General Health Checkup', '2025-01-27', '12:00:00', 15),
(98, '17', 'Psychiatric Consultation', '2025-01-26', '11:00:00', 6),
(97, '16', 'Post-Surgical Follow-up', '2025-01-25', '10:00:00', 7),
(96, '15', 'Cancer Treatment', '2025-01-24', '09:00:00', 5),
(95, '14', 'Maternity Consultation', '2025-01-23', '15:30:00', 10),
(94, '13', 'Health Screening', '2025-01-22', '14:30:00', 12),
(93, '12', 'Viral Infection Treatment', '2025-01-21', '13:30:00', 8),
(92, '11', 'Orthopaedic Consultation', '2025-01-20', '12:30:00', 10),
(91, '10', 'Mental Health Evaluation', '2025-01-19', '11:30:00', 5),
(90, '9', 'Pre-surgical Consultation', '2025-01-18', '10:30:00', 6),
(89, '8', 'Blood Pressure Monitoring', '2025-01-17', '09:30:00', 10),
(88, '7', 'Cancer Screening', '2025-01-16', '15:00:00', 7),
(87, '6', 'Diabetes Screening', '2025-01-15', '14:00:00', 10),
(86, '5', 'Eye Checkup', '2025-01-14', '13:00:00', 18),
(85, '4', 'Emergency Consultation', '2025-01-13', '12:00:00', 15),
(84, '3', 'Cardiology Consultation', '2025-01-12', '11:00:00', 12),
(83, '2', 'Surgical Consultation', '2025-01-11', '10:00:00', 8),
(82, '1', 'General Consultation', '2025-01-10', '09:00:00', 10),
(136, '55', 'Health Screening for Women', '2025-03-06', '14:00:00', 8),
(137, '56', 'General Health Checkup', '2025-03-07', '15:00:00', 15);

-- --------------------------------------------------------

--
-- Table structure for table `specialties`
--

CREATE TABLE `specialties` (
  `id` int(2) NOT NULL,
  `sname` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `specialties`
--

INSERT INTO `specialties` (`id`, `sname`) VALUES
(1, 'Accident and emergency medicine'),
(2, 'Allergology'),
(3, 'Anaesthetics'),
(4, 'Biological hematology'),
(5, 'Cardiology'),
(6, 'Child psychiatry'),
(7, 'Clinical biology'),
(8, 'Clinical chemistry'),
(9, 'Clinical neurophysiology'),
(10, 'Clinical radiology'),
(11, 'Dental, oral and maxillo-facial surgery'),
(12, 'Dermato-venerology'),
(13, 'Dermatology'),
(14, 'Endocrinology'),
(15, 'Gastro-enterologic surgery'),
(16, 'Gastroenterology'),
(17, 'General hematology'),
(18, 'General Practice'),
(19, 'General surgery'),
(20, 'Geriatrics'),
(21, 'Immunology'),
(22, 'Infectious diseases'),
(23, 'Internal medicine'),
(24, 'Laboratory medicine'),
(25, 'Maxillo-facial surgery'),
(26, 'Microbiology'),
(27, 'Nephrology'),
(28, 'Neuro-psychiatry'),
(29, 'Neurology'),
(30, 'Neurosurgery'),
(31, 'Nuclear medicine'),
(32, 'Obstetrics and gynecology'),
(33, 'Occupational medicine'),
(34, 'Ophthalmology'),
(35, 'Orthopaedics'),
(36, 'Otorhinolaryngology'),
(37, 'Paediatric surgery'),
(38, 'Paediatrics'),
(39, 'Pathology'),
(40, 'Pharmacology'),
(41, 'Physical medicine and rehabilitation'),
(42, 'Plastic surgery'),
(43, 'Podiatric Medicine'),
(44, 'Podiatric Surgery'),
(45, 'Psychiatry'),
(46, 'Public health and Preventive Medicine'),
(47, 'Radiology'),
(48, 'Radiotherapy'),
(49, 'Respiratory medicine'),
(50, 'Rheumatology'),
(51, 'Stomatology'),
(52, 'Thoracic surgery'),
(53, 'Tropical medicine'),
(54, 'Urology'),
(55, 'Vascular surgery'),
(56, 'Venereology');

-- --------------------------------------------------------

--
-- Table structure for table `webuser`
--

CREATE TABLE `webuser` (
  `email` varchar(255) NOT NULL,
  `usertype` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `webuser`
--

INSERT INTO `webuser` (`email`, `usertype`) VALUES
('admin@edoc.com', 'a'),
('doctor@edoc.com', 'd'),
('patient@edoc.com', 'p'),
('kabir@gmail.com', 'd'),
('bibek@gmail.com', 'p'),
('nima@gmail.com', 'p'),
('sanduk@edoc.com', 'd'),
('bipin@gmail.com', 'p');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aemail`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appoid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `scheduleid` (`scheduleid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`docid`),
  ADD KEY `specialties` (`specialties`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheduleid`),
  ADD KEY `docid` (`docid`);

--
-- Indexes for table `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webuser`
--
ALTER TABLE `webuser`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
