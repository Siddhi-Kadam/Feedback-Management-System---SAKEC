-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 07:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedbackcomputer`
--
CREATE DATABASE IF NOT EXISTS `feedbackcomputer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `feedbackcomputer`;

-- --------------------------------------------------------

--
-- Table structure for table `alfeedback`
--

CREATE TABLE `alfeedback` (
  `email` varchar(50) NOT NULL,
  `registration_no` int(11) NOT NULL,
  `Q1` int(1) NOT NULL,
  `Q2` int(1) NOT NULL,
  `Q3` int(1) NOT NULL,
  `Q4` int(1) NOT NULL,
  `Q5` int(1) NOT NULL,
  `Q6` int(1) NOT NULL,
  `Q7` int(1) NOT NULL,
  `Q8` int(1) NOT NULL,
  `Q9` int(1) NOT NULL,
  `Q10` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `alquestions`
--

CREATE TABLE `alquestions` (
  `question_no` varchar(5) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cefeedback`
--

CREATE TABLE `cefeedback` (
  `std_id` int(5) NOT NULL,
  `division` varchar(11) NOT NULL,
  `subject_no` varchar(32) NOT NULL,
  `Q1` int(1) NOT NULL,
  `Q2` int(1) NOT NULL,
  `Q3` int(1) NOT NULL,
  `Q4` int(1) NOT NULL,
  `Q5` int(1) NOT NULL,
  `Q6` int(1) NOT NULL,
  `Q7` int(1) NOT NULL,
  `Q8` int(1) NOT NULL,
  `Q9` int(1) NOT NULL,
  `Q10` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cequestions`
--

CREATE TABLE `cequestions` (
  `subject_no` varchar(32) NOT NULL,
  `semester` varchar(8) NOT NULL,
  `question_no` varchar(5) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coafeedback`
--

CREATE TABLE `coafeedback` (
  `std_id` int(5) NOT NULL,
  `division` varchar(11) NOT NULL,
  `Q1` int(1) NOT NULL,
  `Q2` int(1) NOT NULL,
  `Q3` int(1) NOT NULL,
  `Q4` int(1) NOT NULL,
  `Q5` int(1) NOT NULL,
  `Q6` int(1) NOT NULL,
  `Q7` int(1) NOT NULL,
  `Q8` int(1) NOT NULL,
  `Q9` int(1) NOT NULL,
  `Q10` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coaquestions`
--

CREATE TABLE `coaquestions` (
  `question_no` varchar(5) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coaquestions`
--

INSERT INTO `coaquestions` (`question_no`, `question`) VALUES
('1', 'Continuous learning?'),
('2', 'Exploring new areas of knowledge?'),
('3', 'Improving academic performance?'),
('4', 'Improving your problem-solving abilities?'),
('5', 'Identifying your own area of interest?'),
('6', 'Identify your strengths and weaknesses?'),
('7', 'Exploring hidden talents and creative abilities in yourself?'),
('8', 'Improving your ability to work in a team?'),
('9', 'Developing leadership qualities?'),
('10', 'Improving your ability to communicate with others?'),
('11', 'Inculcating moral and ethical values?'),
('12', 'Overall personality development and growth?');

-- --------------------------------------------------------

--
-- Table structure for table `ecafeedback`
--

CREATE TABLE `ecafeedback` (
  `std_id` int(5) NOT NULL,
  `division` varchar(11) NOT NULL,
  `Q1` int(1) NOT NULL,
  `Q2` int(1) NOT NULL,
  `Q3` int(1) NOT NULL,
  `Q4` int(1) NOT NULL,
  `Q5` int(1) NOT NULL,
  `Q6` int(1) NOT NULL,
  `Q7` int(1) NOT NULL,
  `Q8` int(1) NOT NULL,
  `Q9` int(1) NOT NULL,
  `Q10` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ecaquestions`
--

CREATE TABLE `ecaquestions` (
  `question_no` varchar(5) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ecaquestions`
--

INSERT INTO `ecaquestions` (`question_no`, `question`) VALUES
('1', 'Exploring hidden talents and creative abilities?'),
('2', 'Improving physical strength?'),
('3', 'Improving mental strength?'),
('4', 'Improving your problem-solving abilities?'),
('5', 'Improving your communication abilities?'),
('6', 'Improving your ability to work in a team?'),
('7', 'Developing leadership qualities?'),
('8', 'Identifying your own area of interest?'),
('9', 'Identifying your strengths and weaknesses?'),
('10', 'Inculcating moral and ethical values?'),
('11', 'Overall personality development and growth?'),
('12', 'Increasing awareness about your social and environmental responsibilities?');

-- --------------------------------------------------------

--
-- Table structure for table `facilityfeedback`
--

CREATE TABLE `facilityfeedback` (
  `std_id` int(5) NOT NULL,
  `division` varchar(11) NOT NULL,
  `Q1` int(1) NOT NULL,
  `Q2` int(1) NOT NULL,
  `Q3` int(1) NOT NULL,
  `Q4` int(1) NOT NULL,
  `Q5` int(1) NOT NULL,
  `Q6` int(1) NOT NULL,
  `Q7` int(1) NOT NULL,
  `Q8` int(1) NOT NULL,
  `Q9` int(1) NOT NULL,
  `Q10` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `facilityquestions`
--

CREATE TABLE `facilityquestions` (
  `question_no` varchar(5) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facilityquestions`
--

INSERT INTO `facilityquestions` (`question_no`, `question`) VALUES
('1', 'E-Learning facility e.g. NPTEL, Spoken Tutorials'),
('2', 'Availability and accessibility of Digital Library (IEEE, ACM, Springer etc.)'),
('3', 'Canteen/Cafeteria facilities'),
('4', 'Availability of prescribed books/reading materials & reading room and common room'),
('5', 'Availability of reading room and common room'),
('6', 'Infrastructural facilities'),
('8', 'Protection against ragging'),
('9', 'Approachability of the faculty'),
('10', 'Bank Facility in Campus'),
('11', 'Internet Facility'),
('12', 'Placement activities'),
('13', 'Well equipped Gymkhana facility');

-- --------------------------------------------------------

--
-- Table structure for table `lefeedback`
--

CREATE TABLE `lefeedback` (
  `std_id` int(5) NOT NULL,
  `division` varchar(11) NOT NULL,
  `subject_no` varchar(32) NOT NULL,
  `Q1` int(1) NOT NULL,
  `Q2` int(1) NOT NULL,
  `Q3` int(1) NOT NULL,
  `Q4` int(1) NOT NULL,
  `Q5` int(1) NOT NULL,
  `Q6` int(1) NOT NULL,
  `Q7` int(1) NOT NULL,
  `Q8` int(1) NOT NULL,
  `Q9` int(1) NOT NULL,
  `Q10` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lequestions`
--

CREATE TABLE `lequestions` (
  `lab_no` varchar(32) NOT NULL,
  `semester` varchar(8) NOT NULL,
  `question_no` varchar(5) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `peffeedback`
--

CREATE TABLE `peffeedback` (
  `std_id` int(5) NOT NULL,
  `division` varchar(11) NOT NULL,
  `Q1` int(1) NOT NULL,
  `Q2` int(1) NOT NULL,
  `Q3` int(1) NOT NULL,
  `Q4` int(1) NOT NULL,
  `Q5` int(1) NOT NULL,
  `Q6` int(1) NOT NULL,
  `Q7` int(1) NOT NULL,
  `Q8` int(1) NOT NULL,
  `Q9` int(1) NOT NULL,
  `Q10` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pefquestions`
--

CREATE TABLE `pefquestions` (
  `question_no` int(2) NOT NULL,
  `question` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pefquestions`
--

INSERT INTO `pefquestions` (`question_no`, `question`) VALUES
(1, 'Your ability to apply knowledge of mathematics, science and engineering fundamentals.'),
(2, 'Your ability to design, model and simulate system components and processes for computer engineering '),
(3, 'Your ability to design an algorithm, component or a computing system which will be useful for the so'),
(4, 'Your ability to design an algorithm, component or a computing system which will be useful for the so'),
(5, 'Your ability to work as an efficient team member for the group activities such as project to success'),
(6, 'Your ability to communicate effectively as a team member for sharing your ideas and views for contri'),
(7, 'Your ability to use computer hardware/software equipments and tools for understanding different Prog'),
(8, 'Your ability to use techniques, skills and engineering tools necessary for computer engineering prac'),
(9, 'Your understanding of professional and ethical responsibility such as attentiveness when you are per'),
(10, 'Your ability to perform different co-curricular and extracurricular activities to keep abreast with '),
(11, 'Your ability to work in interdisciplinary projects.'),
(12, 'Your ability to engage in lifelong learning by keeping abreast with the latest technologies.');

-- --------------------------------------------------------

--
-- Table structure for table `pfeedback`
--

CREATE TABLE `pfeedback` (
  `std_id` int(5) NOT NULL,
  `division` varchar(11) NOT NULL,
  `batch` varchar(2) NOT NULL,
  `teacher_id` varchar(11) NOT NULL,
  `subject_no` varchar(32) NOT NULL,
  `Q1` int(1) NOT NULL,
  `Q2` int(1) NOT NULL,
  `Q3` int(1) NOT NULL,
  `Q4` int(1) NOT NULL,
  `Q5` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pfeedback`
--

INSERT INTO `pfeedback` (`std_id`, `division`, `batch`, `teacher_id`, `subject_no`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`) VALUES
(503, 'TE3', 'B', 'N432', 'CSL601', 0, 0, 0, 0, 0),
(503, 'TE4', 'B', 'N595', 'CSL601', 0, 0, 0, 0, 0),
(503, 'TED', 'B', 'N459', 'CSL601', 3, 3, 3, 3, 3),
(503, 'TE4', 'B', 'N595', 'CSL601', 0, 0, 0, 0, 0),
(503, 'TE4', 'B', 'N595', 'CSL601', 0, 0, 0, 0, 0),
(503, 'TED', 'B', 'N459', 'CSL601', 3, 3, 3, 3, 3),
(503, 'TE3', 'B', 'N709', 'CSL604', 0, 0, 0, 0, 0),
(503, 'TE4', 'B', 'N339', 'CSL604', 0, 0, 0, 0, 0),
(503, 'TED', 'B', 'N459', 'CSL601', 3, 3, 3, 3, 3),
(503, 'TED', 'B', 'N387', 'CSL604', 3, 3, 3, 3, 3),
(503, 'TED', 'B', 'N432', 'CSL603', 3, 3, 3, 3, 3),
(503, 'TED', 'B', '442', 'CSL602', 3, 3, 3, 3, 3),
(503, 'TED', 'B', 'N616', 'CSP605', 3, 3, 3, 3, 3),
(191, 'SE3', 'A', 'N323', 'CSL401', 0, 0, 0, 0, 0),
(191, 'SE3', 'A', 'N677', 'CSL402', 0, 0, 0, 0, 0),
(191, 'SE3', 'A', 'N380', 'CSL403', 0, 0, 0, 0, 0),
(191, 'SE3', 'A', 'N387', 'CSL404', 0, 0, 0, 0, 0),
(191, 'SE3', 'A', 'N677', 'CSL405', 0, 0, 0, 0, 0),
(705, 'BED', 'B', 'N627', 'CSL801', 0, 0, 0, 0, 0),
(705, 'BED', 'B', '562', 'CSL802', 0, 0, 0, 0, 0),
(705, 'BED', 'B', 'N458', 'CSL803', 0, 0, 0, 0, 0),
(705, 'BED', 'B', 'N395', 'CSL804', 0, 0, 0, 0, 0),
(705, 'BED', 'B', 'N459', 'CSP805', 0, 0, 0, 0, 0),
(503, 'TED', 'B', 'N459', 'CSL601', 3, 3, 3, 3, 3),
(503, 'TED', 'B', 'N387', 'CSL604', 3, 3, 3, 3, 3),
(503, 'TED', 'B', 'N432', 'CSL603', 3, 3, 3, 3, 3),
(503, 'TED', 'B', '442', 'CSL602', 3, 3, 3, 3, 3),
(503, 'TED', 'B', 'N616', 'CSP605', 3, 3, 3, 3, 3),
(503, 'TED', 'B', 'N459', 'CSL601', 3, 3, 3, 3, 3),
(503, 'TED', 'B', 'N387', 'CSL604', 3, 3, 3, 3, 3),
(503, 'TED', 'B', 'N432', 'CSL603', 3, 3, 3, 3, 3),
(503, 'TED', 'B', '442', 'CSL602', 3, 3, 3, 3, 3),
(503, 'TED', 'B', 'N616', 'CSP605', 3, 3, 3, 3, 3),
(519, 'TED', 'C', 'N595', 'CSL601', 4, 4, 4, 4, 4),
(519, 'TED', 'C', 'N339', 'CSL604', 4, 4, 4, 4, 4),
(519, 'TED', 'C', 'N726', 'CSL603', 4, 4, 4, 4, 4),
(519, 'TED', 'C', 'n592', 'CSL602', 4, 4, 4, 4, 4),
(520, 'TED', 'C', 'N595', 'CSL601', 4, 4, 4, 4, 4),
(520, 'TED', 'C', 'N339', 'CSL604', 3, 3, 3, 3, 3),
(520, 'TED', 'C', 'N726', 'CSL603', 4, 4, 4, 4, 4),
(520, 'TED', 'C', 'n592', 'CSL602', 4, 4, 4, 4, 4),
(520, 'TED', 'C', 'N311', 'CSP605', 4, 4, 4, 4, 4),
(519, 'TED', 'C', 'N311', 'CSP605', 4, 4, 4, 4, 4),
(526, 'TED', 'C', 'N595', 'CSL601', 4, 4, 3, 4, 3),
(529, 'TED', 'C', 'N595', 'CSL601', 3, 4, 4, 3, 3),
(526, 'TED', 'C', 'N339', 'CSL604', 4, 3, 4, 3, 3),
(529, 'TED', 'C', 'N339', 'CSL604', 3, 4, 4, 4, 3),
(529, 'TED', 'C', 'N726', 'CSL603', 2, 4, 4, 2, 3),
(526, 'TED', 'C', 'N726', 'CSL603', 4, 4, 4, 4, 4),
(526, 'TED', 'C', 'n592', 'CSL602', 3, 2, 2, 3, 3),
(529, 'TED', 'C', 'n592', 'CSL602', 2, 2, 4, 2, 4),
(529, 'TED', 'C', 'N311', 'CSP605', 4, 2, 4, 3, 3),
(526, 'TED', 'C', 'N311', 'CSP605', 3, 3, 4, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pquestions`
--

CREATE TABLE `pquestions` (
  `question_no` varchar(5) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pquestions`
--

INSERT INTO `pquestions` (`question_no`, `question`) VALUES
('1', 'Is the teacher helpful and punctual in conducting the laboratory?'),
('2', 'Is the teacher available during the complete laboratory session?'),
('3', 'Was the laboratory course supported by adequate resources (tools/software) required for execution of practical?'),
('4', 'Does the teacher encourage students to perform out of syllabus experiments and to participate in seminars/workshops relevant to the subject?'),
('5', 'Does the teacher impose proper discipline during the laboratory session?');

-- --------------------------------------------------------

--
-- Table structure for table `tfeedback`
--

CREATE TABLE `tfeedback` (
  `std_id` int(5) NOT NULL,
  `division` varchar(11) NOT NULL,
  `teacher_id` varchar(11) NOT NULL,
  `subject_no` varchar(32) NOT NULL,
  `Q1` int(1) NOT NULL,
  `Q2` int(1) NOT NULL,
  `Q3` int(1) NOT NULL,
  `Q4` int(1) NOT NULL,
  `Q5` int(1) NOT NULL,
  `Q6` int(1) NOT NULL,
  `Q7` int(1) NOT NULL,
  `Q8` int(1) NOT NULL,
  `Q9` int(1) NOT NULL,
  `Q10` int(1) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tfeedback`
--

INSERT INTO `tfeedback` (`std_id`, `division`, `teacher_id`, `subject_no`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`, `Q6`, `Q7`, `Q8`, `Q9`, `Q10`, `semester`) VALUES
(503, 'TED', 'N555', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N595', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N555', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N595', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N555', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N595', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N555', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N595', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N555', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N595', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N555', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N595', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N555', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N595', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N187', 'CSC603', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N432', 'CSC603', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N339', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N387', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N339', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N387', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N339', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N387', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N339', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N387', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N339', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N387', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N339', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N387', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N187', 'CSC603', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N432', 'CSC603', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N339', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N387', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N339', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N387', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N555', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N595', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N187', 'CSC603', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N432', 'CSC603', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N339', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N387', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'N146', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'N311', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'N146', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'N311', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'N146', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'N311', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'N146', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'N311', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'N146', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'N311', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(191, 'SE3', 'N028', 'CSC401', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(191, 'SE3', 'N027', 'CSC401', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(191, 'SE3', 'N563', 'CSC402', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(191, 'SE3', 'N555', 'CSC403', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(191, 'SE3', 'N380', 'CSC403', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(191, 'SE3', 'N257', 'CSC404', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(191, 'SE3', 'N-605', 'CSC404', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(191, 'SE3', 'N387', 'CSC405', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(191, 'SE3', 'N730', 'CSC405', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(705, 'BED', 'N674', 'CSC801', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8),
(705, 'BED', 'N525', 'CSC801', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8),
(705, 'BED', 'N311', 'CSC802', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8),
(705, 'BED', '562', 'CSC802', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8),
(705, '', 'BED', 'DLO8013', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(705, '', 'BED', 'DLO8013', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(705, '', 'BED', 'DLO8013', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(705, '', 'BED', 'DLO8013', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(705, '', 'BED', 'DLO8013', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(705, '', 'BED', 'DLO8013', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(705, '', 'N459', 'ILO8021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(705, '', 'N538', 'ILO8021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'TED', 'N555', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N595', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N187', 'CSC603', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N432', 'CSC603', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N339', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N387', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'N146', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'N311', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(705, 'BED', 'N674', 'CSC801', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8),
(705, 'BED', 'N525', 'CSC801', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8),
(705, 'BED', 'N311', 'CSC802', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8),
(705, 'BED', '562', 'CSC802', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8),
(705, '', 'BED', 'DLO8013', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(705, '', 'BED', 'DLO8013', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(705, '', 'N459', 'ILO8021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(705, '', 'N538', 'ILO8021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'TED', 'N555', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N595', 'CSC601', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N187', 'CSC603', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N432', 'CSC603', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N339', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'TED', 'N387', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(503, 'N146', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 'N616', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(519, 'TED', 'N555', 'CSC601', 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 6),
(519, 'TED', 'N595', 'CSC601', 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 6),
(520, 'TED', 'N555', 'CSC601', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6),
(520, 'TED', 'N595', 'CSC601', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6),
(519, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(519, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(520, 'TED', 'N233', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(520, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(519, 'TED', 'N187', 'CSC603', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6),
(519, 'TED', 'N432', 'CSC603', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6),
(520, 'TED', 'N187', 'CSC603', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6),
(520, 'TED', 'N432', 'CSC603', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6),
(519, 'TED', 'N339', 'CSC604', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6),
(519, 'TED', 'N387', 'CSC604', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6),
(520, 'TED', 'N339', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(520, 'TED', 'N387', 'CSC604', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(519, 'N146', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(519, 'N616', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(520, 'N146', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(520, 'N616', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(526, 'TED', 'N555', 'CSC601', 3, 3, 3, 2, 2, 3, 2, 2, 3, 2, 6),
(526, 'TED', 'N595', 'CSC601', 4, 4, 3, 3, 4, 4, 4, 4, 4, 4, 6),
(529, 'TED', 'N555', 'CSC601', 3, 3, 3, 3, 3, 4, 4, 3, 3, 3, 6),
(529, 'TED', 'N595', 'CSC601', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6),
(526, 'TED', 'N233', 'CSC602', 2, 2, 3, 3, 2, 3, 2, 2, 3, 3, 6),
(526, 'TED', 'n592', 'CSC602', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(529, 'TED', 'N233', 'CSC602', 2, 2, 2, 3, 3, 2, 2, 2, 3, 3, 6),
(529, 'TED', 'n592', 'CSC602', 4, 4, 4, 1, 3, 1, 4, 1, 4, 1, 6),
(529, 'TED', 'N187', 'CSC603', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6),
(529, 'TED', 'N432', 'CSC603', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6),
(526, 'TED', 'N187', 'CSC603', 3, 3, 3, 3, 4, 3, 3, 4, 3, 4, 6),
(526, 'TED', 'N432', 'CSC603', 3, 4, 3, 3, 4, 4, 3, 4, 4, 4, 6),
(526, 'TED', 'N339', 'CSC604', 3, 3, 3, 4, 3, 4, 3, 3, 4, 4, 6),
(526, 'TED', 'N387', 'CSC604', 4, 4, 4, 4, 3, 3, 4, 4, 4, 4, 6),
(529, 'TED', 'N339', 'CSC604', 4, 2, 4, 2, 3, 4, 3, 2, 4, 3, 6),
(529, 'TED', 'N387', 'CSC604', 3, 3, 4, 4, 4, 4, 2, 4, 4, 3, 6),
(529, 'N146', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(529, 'N616', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(526, 'N146', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(526, 'N616', 'TED', 'CSDLO6021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tfquestions`
--

CREATE TABLE `tfquestions` (
  `question_no` varchar(5) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tfquestions`
--

INSERT INTO `tfquestions` (`question_no`, `question`) VALUES
('1', 'Is the teacher innovative and enthusiastic about teaching the subject?'),
('2', 'Does the teacher discuss engineering applications and concepts of the subject?'),
('3', 'Is the lecture well planned and organized?'),
('4', 'Is the teacher?s communication and speed of delivery good?'),
('5', 'Is the lecture interactive?'),
('6', 'Is the teacher regular in conducting classes?'),
('7', 'Is the discipline of the class maintained?'),
('8', 'How is the presentation of the teacher with different teaching aids?'),
('9', 'Does the teacher recommends additional learning resources?(NPTEL, Swayam, digital library etc)'),
('10', 'Does the teacher supports in clearing doubts and provides assistance/help?');
--
-- Database: `feedbackdb`
--
CREATE DATABASE IF NOT EXISTS `feedbackdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `feedbackdb`;

-- --------------------------------------------------------

--
-- Table structure for table `elective_subject`
--

CREATE TABLE `elective_subject` (
  `subject_no` varchar(20) NOT NULL COMMENT 'References subject_table (subject_no)',
  `subject_name` varchar(40) NOT NULL COMMENT 'References subject_table (subject_name)',
  `program` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `year` varchar(32) NOT NULL,
  `division` varchar(11) NOT NULL,
  `batch` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `elective_subject`
--

INSERT INTO `elective_subject` (`subject_no`, `subject_name`, `program`, `semester`, `year`, `division`, `batch`) VALUES
('CSDLO6021', 'Machine Learning', 'Computer', 6, 'THIRD', 'TE3', 'A'),
('CSDLO6021', 'Machine Learning', 'Computer', 6, 'THIRD', 'TE3', 'B'),
('CSDLO6021', 'Machine Learning', 'Computer', 6, 'THIRD', 'TE3', 'C'),
('CSDLO6021', 'Machine Learning', 'Computer', 6, 'THIRD', 'TE3', 'D'),
('CSDLO6021', 'Machine Learning', 'Computer', 6, 'THIRD', 'TE4', 'A'),
('CSDLO6021', 'Machine Learning', 'Computer', 6, 'THIRD', 'TE4', 'B'),
('CSDLO6021', 'Machine Learning', 'Computer', 6, 'THIRD', 'TE4', 'C'),
('CSDLO6021', 'Machine Learning', 'Computer', 6, 'THIRD', 'TE4', 'D'),
('CSDLO6021', 'Machine Learning', 'Computer', 6, 'THIRD', 'TED', 'A'),
('CSDLO6021', 'Machine Learning', 'Computer', 6, 'THIRD', 'TED', 'B'),
('CSDLO6021', 'Machine Learning', 'Computer', 6, 'THIRD', 'TED', 'C'),
('CSDLO6024', 'Advance Computer Network', 'Computer', 6, 'THIRD', 'TED', 'D'),
('DLO8012', 'Natural Language Processing', 'Computer', 8, 'FINAL', 'BE3', 'A'),
('DLO8012', 'Natural Language Processing', 'Computer', 8, 'FINAL', 'BE3', 'B'),
('DLO8012', 'Natural Language Processing', 'Computer', 8, 'FINAL', 'BE3', 'C'),
('DLO8012', 'Natural Language Processing', 'Computer', 8, 'FINAL', 'BE3', 'D'),
('DLO8012', 'Natural Language Processing', 'Computer', 8, 'FINAL', 'BE4', 'C'),
('DLO8012', 'Natural Language Processing', 'Computer', 8, 'FINAL', 'BE4', 'D'),
('DLO8013', 'Adhoc Wireless Network', 'Computer', 8, 'FINAL', 'BE4', 'A'),
('DLO8013', 'Adhoc Wireless Network', 'Computer', 8, 'FINAL', 'BE4', 'B'),
('DLO8012', 'Natural Language Processing', 'Computer', 8, 'FINAL', 'BED', 'A'),
('DLO8013', 'Adhoc Wireless Network', 'Computer', 8, 'FINAL', 'BED', 'B'),
('DLO8013', 'Adhoc Wireless Network', 'Computer', 8, 'FINAL', 'BED', 'C'),
('DLO8013', 'Adhoc Wireless Network', 'Computer', 8, 'FINAL', 'BED', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `iloc_subject`
--

CREATE TABLE `iloc_subject` (
  `subject_no` varchar(20) NOT NULL COMMENT 'References subject_table (subject_no)',
  `subject_name` varchar(40) NOT NULL COMMENT 'References subject_table (subject_name)',
  `program` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `division` varchar(11) NOT NULL,
  `batch` varchar(5) NOT NULL,
  `std_roll_no` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iloc_subject`
--

INSERT INTO `iloc_subject` (`subject_no`, `subject_name`, `program`, `semester`, `division`, `batch`, `std_roll_no`) VALUES
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 1),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 2),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 3),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 4),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 5),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 6),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 7),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 8),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 9),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 10),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 11),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 12),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 13),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 14),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 15),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 16),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 17),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'A', 18),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 19),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 20),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 21),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 22),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 23),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 24),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 25),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 26),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 27),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 28),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 29),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 30),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 31),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 32),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 33),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 34),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 35),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'B', 36),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'C', 37),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'C', 38),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'C', 39),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'C', 40),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'C', 41),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'C', 42),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE3', 'C', 43),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'C', 44),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'C', 45),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'C', 46),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'C', 47),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'C', 48),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'C', 49),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'C', 50),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'C', 51),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'C', 52),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'C', 53),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'C', 54),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 55),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 56),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 57),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 58),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 59),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 60),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 61),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 62),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 63),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 64),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 65),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 66),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 67),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 68),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 69),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 70),
('ILO8021', 'Project Management', 'Computer', 8, 'BE3', 'D', 71),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'A', 1),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'A', 2),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'A', 3),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'A', 4),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'A', 5),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'A', 6),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'A', 7),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'A', 8),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'A', 9),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'A', 10),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'A', 11),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'A', 12),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'A', 13),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'A', 14),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'A', 15),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 16),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 17),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 18),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 19),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 20),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 21),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 22),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 23),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 24),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 25),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 26),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 27),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 28),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 29),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 30),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'B', 31),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 32),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 33),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 34),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 35),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 36),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 37),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 38),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 39),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 40),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 41),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 42),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 43),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 44),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 45),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 46),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 47),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 48),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 49),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 50),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 51),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'C', 52),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'D', 53),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'D', 54),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'D', 55),
('ILO8023', 'Entrepreneurship Development and Managem', 'Computer', 8, 'BE4', 'D', 56),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 57),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 58),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 59),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 60),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 61),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 62),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 63),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 64),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 65),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 66),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 67),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 68),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 69),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 70),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 71),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 72),
('ILO8021', 'Project Management', 'Computer', 8, 'BE4', 'D', 73),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 1),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 2),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 3),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 4),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 5),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 6),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 7),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 8),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 9),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 10),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 11),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 12),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 13),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 14),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 15),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 16),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 17),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'A', 18),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 19),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 20),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 21),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 22),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 23),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 24),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 25),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 26),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 27),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 28),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 29),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 30),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 31),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'B', 32),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'C', 33),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'C', 34),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'C', 35),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'C', 36),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'C', 37),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'C', 38),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'C', 39),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'C', 40),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'C', 41),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'C', 42),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'C', 43),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'C', 44),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'C', 45),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'D', 46),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'D', 47),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'D', 48),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'D', 49),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'D', 50),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'D', 51),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'D', 52),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'D', 53),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'D', 54),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'D', 55),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'D', 56),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'D', 57),
('ILO8021', 'Project Management', 'Computer', 8, 'BED', 'D', 58);

-- --------------------------------------------------------

--
-- Table structure for table `lab_table`
--

CREATE TABLE `lab_table` (
  `id` int(11) NOT NULL,
  `lab_no` varchar(32) NOT NULL,
  `lab_name` varchar(72) CHARACTER SET utf8 NOT NULL,
  `teacher1_id` varchar(11) DEFAULT NULL COMMENT 'References users(user_name)',
  `teacher2_id` varchar(11) DEFAULT NULL COMMENT 'References users(user_name)',
  `year` varchar(11) NOT NULL COMMENT 'References intake(year)',
  `division` varchar(11) NOT NULL COMMENT 'References intake(division)',
  `semester` varchar(32) CHARACTER SET utf8 NOT NULL,
  `batch` varchar(11) NOT NULL,
  `program` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_table`
--

INSERT INTO `lab_table` (`id`, `lab_no`, `lab_name`, `teacher1_id`, `teacher2_id`, `year`, `division`, `semester`, `batch`, `program`) VALUES
(1, 'CSL801', 'Human Machine Interaction Lab ', 'N525', NULL, 'FINAL', 'BE3', '8', 'A', 'Computer'),
(2, 'CSL801', 'Human Machine Interaction Lab ', 'N674', NULL, 'FINAL', 'BE3', '8', 'B', 'Computer'),
(3, 'CSL801', 'Human Machine Interaction Lab ', 'N627', NULL, 'FINAL', 'BE3', '8', 'C', 'Computer'),
(4, 'CSL801', 'Human Machine Interaction Lab ', 'n-511', NULL, 'FINAL', 'BE3', '8', 'D', 'Computer'),
(5, 'CSL801', 'Human Machine Interaction Lab ', 'N627', NULL, 'FINAL', 'BE4', '8', 'A', 'Computer'),
(6, 'CSL801', 'Human Machine Interaction Lab ', 'N525', NULL, 'FINAL', 'BE4', '8', 'B', 'Computer'),
(7, 'CSL801', 'Human Machine Interaction Lab ', 'n-511', NULL, 'FINAL', 'BE4', '8', 'C', 'Computer'),
(8, 'CSL801', 'Human Machine Interaction Lab ', 'N674', NULL, 'FINAL', 'BE4', '8', 'D', 'Computer'),
(9, 'CSL801', 'Human Machine Interaction Lab ', 'N674', NULL, 'FINAL', 'BED', '8', 'A', 'Computer'),
(10, 'CSL801', 'Human Machine Interaction Lab ', 'N627', NULL, 'FINAL', 'BED', '8', 'B', 'Computer'),
(11, 'CSL801', 'Human Machine Interaction Lab ', 'N674', NULL, 'FINAL', 'BED', '8', 'C', 'Computer'),
(12, 'CSL801', 'Human Machine Interaction Lab ', 'N525', NULL, 'FINAL', 'BED', '8', 'D', 'Computer'),
(13, 'CSL802', 'Distributed Computing Lab', 'N311', NULL, 'FINAL', 'BE3', '8', 'A', 'Computer'),
(14, 'CSL802', 'Distributed Computing Lab', 'N311', NULL, 'FINAL', 'BE3', '8', 'B', 'Computer'),
(15, 'CSL802', 'Distributed Computing Lab', 'N257', NULL, 'FINAL', 'BE3', '8', 'C', 'Computer'),
(16, 'CSL802', 'Distributed Computing Lab', '562', NULL, 'FINAL', 'BE3', '8', 'D', 'Computer'),
(17, 'CSL802', 'Distributed Computing Lab', 'N323', NULL, 'FINAL', 'BE4', '8', 'A', 'Computer'),
(18, 'CSL802', 'Distributed Computing Lab', 'N257', NULL, 'FINAL', 'BE4', '8', 'B', 'Computer'),
(19, 'CSL802', 'Distributed Computing Lab', 'N323', NULL, 'FINAL', 'BE4', '8', 'C', 'Computer'),
(20, 'CSL802', 'Distributed Computing Lab', 'N323', NULL, 'FINAL', 'BE4', '8', 'D', 'Computer'),
(21, 'CSL802', 'Distributed Computing Lab', '562', NULL, 'FINAL', 'BED', '8', 'A', 'Computer'),
(22, 'CSL802', 'Distributed Computing Lab', '562', NULL, 'FINAL', 'BED', '8', 'B', 'Computer'),
(23, 'CSL802', 'Distributed Computing Lab', '562', NULL, 'FINAL', 'BED', '8', 'C', 'Computer'),
(24, 'CSL802', 'Distributed Computing Lab', 'N311', NULL, 'FINAL', 'BED', '8', 'D', 'Computer'),
(25, 'CSL803', 'Cloud Computing Lab ', 'N616', NULL, 'FINAL', 'BE3', '8', 'A', 'Computer'),
(26, 'CSL803', 'Cloud Computing Lab ', 'N709', NULL, 'FINAL', 'BE3', '8', 'B', 'Computer'),
(27, 'CSL803', 'Cloud Computing Lab ', 'N325', NULL, 'FINAL', 'BE3', '8', 'C', 'Computer'),
(28, 'CSL803', 'Cloud Computing Lab ', '562', NULL, 'FINAL', 'BE3', '8', 'D', 'Computer'),
(29, 'CSL803', 'Cloud Computing Lab ', 'N616', NULL, 'FINAL', 'BE4', '8', 'A', 'Computer'),
(30, 'CSL803', 'Cloud Computing Lab ', 'N300', NULL, 'FINAL', 'BE4', '8', 'B', 'Computer'),
(31, 'CSL803', 'Cloud Computing Lab ', 'N325', NULL, 'FINAL', 'BE4', '8', 'C', 'Computer'),
(32, 'CSL803', 'Cloud Computing Lab ', 'N709', NULL, 'FINAL', 'BE4', '8', 'D', 'Computer'),
(33, 'CSL803', 'Cloud Computing Lab ', 'N735', NULL, 'FINAL', 'BED', '8', 'A', 'Computer'),
(34, 'CSL803', 'Cloud Computing Lab ', 'N458', NULL, 'FINAL', 'BED', '8', 'B', 'Computer'),
(35, 'CSL803', 'Cloud Computing Lab ', 'N735', NULL, 'FINAL', 'BED', '8', 'C', 'Computer'),
(36, 'CSL803', 'Cloud Computing Lab ', 'n-511', NULL, 'FINAL', 'BED', '8', 'D', 'Computer'),
(37, 'CSL804', 'Computational Lab-II ', 'n592', NULL, 'FINAL', 'BE3', '8', 'A', 'Computer'),
(38, 'CSL804', 'Computational Lab-II ', 'N187', 'N726', 'FINAL', 'BE3', '8', 'B', 'Computer'),
(39, 'CSL804', 'Computational Lab-II ', 'N726', NULL, 'FINAL', 'BE3', '8', 'C', 'Computer'),
(40, 'CSL804', 'Computational Lab-II ', 'n592', NULL, 'FINAL', 'BE3', '8', 'D', 'Computer'),
(41, 'CSL804', 'Computational Lab-II ', 'N674', NULL, 'FINAL', 'BE4', '8', 'A', 'Computer'),
(42, 'CSL804', 'Computational Lab-II ', 'N665', NULL, 'FINAL', 'BE4', '8', 'B', 'Computer'),
(43, 'CSL804', 'Computational Lab-II ', 'N726', NULL, 'FINAL', 'BE4', '8', 'C', 'Computer'),
(44, 'CSL804', 'Computational Lab-II ', 'N563', NULL, 'FINAL', 'BE4', '8', 'D', 'Computer'),
(45, 'CSL804', 'Computational Lab-II ', 'N563', NULL, 'FINAL', 'BED', '8', 'A', 'Computer'),
(46, 'CSL804', 'Computational Lab-II ', 'N395', '562', 'FINAL', 'BED', '8', 'B', 'Computer'),
(47, 'CSL804', 'Computational Lab-II ', 'N674', NULL, 'FINAL', 'BED', '8', 'C', 'Computer'),
(48, 'CSL804', 'Computational Lab-II ', 'N395', 'N665', 'FINAL', 'BED', '8', 'D', 'Computer'),
(49, 'CSP805', 'Major Project-II ', 'N459', 'N538', 'FINAL', 'BE3', '8', 'A', 'Computer'),
(50, 'CSP805', 'Major Project-II ', 'N459', 'N538', 'FINAL', 'BE3', '8', 'B', 'Computer'),
(51, 'CSP805', 'Major Project-II ', 'N459', 'N538', 'FINAL', 'BE3', '8', 'C', 'Computer'),
(52, 'CSP805', 'Major Project-II ', 'N459', 'N538', 'FINAL', 'BE3', '8', 'D', 'Computer'),
(53, 'CSP805', 'Major Project-II ', 'N459', 'N538', 'FINAL', 'BE4', '8', 'A', 'Computer'),
(54, 'CSP805', 'Major Project-II ', 'N459', 'N538', 'FINAL', 'BE4', '8', 'B', 'Computer'),
(55, 'CSP805', 'Major Project-II ', 'N459', 'N538', 'FINAL', 'BE4', '8', 'C', 'Computer'),
(56, 'CSP805', 'Major Project-II ', 'N459', 'N538', 'FINAL', 'BE4', '8', 'D', 'Computer'),
(57, 'CSP805', 'Major Project-II ', 'N459', 'N538', 'FINAL', 'BED', '8', 'A', 'Computer'),
(58, 'CSP805', 'Major Project-II ', 'N459', 'N538', 'FINAL', 'BED', '8', 'B', 'Computer'),
(59, 'CSP805', 'Major Project-II ', 'N459', 'N538', 'FINAL', 'BED', '8', 'C', 'Computer'),
(60, 'CSP805', 'Major Project-II ', 'N459', 'N538', 'FINAL', 'BED', '8', 'D', 'Computer'),
(61, 'CSL601', 'Software Engineering Lab ', 'N595', NULL, 'THIRD', 'TE3', '6', 'A', 'Computer'),
(62, 'CSL601', 'Software Engineering Lab ', 'N432', NULL, 'THIRD', 'TE3', '6', 'B', 'Computer'),
(63, 'CSL601', 'Software Engineering Lab ', 'N605', NULL, 'THIRD', 'TE3', '6', 'C', 'Computer'),
(64, 'CSL601', 'Software Engineering Lab ', 'N555', NULL, 'THIRD', 'TE3', '6', 'D', 'Computer'),
(65, 'CSL601', 'Software Engineering Lab ', 'N459', NULL, 'THIRD', 'TE4', '6', 'A', 'Computer'),
(66, 'CSL601', 'Software Engineering Lab ', 'N595', NULL, 'THIRD', 'TE4', '6', 'B', 'Computer'),
(67, 'CSL601', 'Software Engineering Lab ', 'N432', NULL, 'THIRD', 'TE4', '6', 'C', 'Computer'),
(68, 'CSL601', 'Software Engineering Lab ', 'N605', NULL, 'THIRD', 'TE4', '6', 'D', 'Computer'),
(69, 'CSL601', 'Software Engineering Lab ', 'N555', NULL, 'THIRD', 'TED', '6', 'A', 'Computer'),
(70, 'CSL601', 'Software Engineering Lab ', 'N459', NULL, 'THIRD', 'TED', '6', 'B', 'Computer'),
(71, 'CSL601', 'Software Engineering Lab ', 'N595', NULL, 'THIRD', 'TED', '6', 'C', 'Computer'),
(72, 'CSL601', 'Software Engineering Lab ', 'N595', NULL, 'THIRD', 'TED', '6', 'D', 'Computer'),
(73, 'CSL604', 'System Security Lab ', 'N339', NULL, 'THIRD', 'TE3', '6', 'A', 'Computer'),
(74, 'CSL604', 'System Security Lab ', 'N709', NULL, 'THIRD', 'TE3', '6', 'B', 'Computer'),
(75, 'CSL604', 'System Security Lab ', 'N233', 'N709', 'THIRD', 'TE3', '6', 'C', 'Computer'),
(76, 'CSL604', 'System Security Lab ', 'N339', NULL, 'THIRD', 'TE3', '6', 'D', 'Computer'),
(77, 'CSL604', 'System Security Lab ', 'N300', NULL, 'THIRD', 'TE4', '6', 'A', 'Computer'),
(78, 'CSL604', 'System Security Lab ', 'N339', NULL, 'THIRD', 'TE4', '6', 'B', 'Computer'),
(79, 'CSL604', 'System Security Lab ', 'N300', NULL, 'THIRD', 'TE4', '6', 'C', 'Computer'),
(80, 'CSL604', 'System Security Lab ', 'N233', 'N709', 'THIRD', 'TE4', '6', 'D', 'Computer'),
(81, 'CSL604', 'System Security Lab ', 'N387', NULL, 'THIRD', 'TED', '6', 'A', 'Computer'),
(82, 'CSL604', 'System Security Lab ', 'N387', NULL, 'THIRD', 'TED', '6', 'B', 'Computer'),
(83, 'CSL604', 'System Security Lab ', 'N339', NULL, 'THIRD', 'TED', '6', 'C', 'Computer'),
(84, 'CSL604', 'System Security Lab ', 'N300', NULL, 'THIRD', 'TED', '6', 'D', 'Computer'),
(85, 'CSL603', 'Data Warehousing & Mining Lab', 'N735', NULL, 'THIRD', 'TE3', '6', 'A', 'Computer'),
(86, 'CSL603', 'Data Warehousing & Mining Lab', 'N726', NULL, 'THIRD', 'TE3', '6', 'B', 'Computer'),
(87, 'CSL603', 'Data Warehousing & Mining Lab', 'N665', NULL, 'THIRD', 'TE3', '6', 'C', 'Computer'),
(88, 'CSL603', 'Data Warehousing & Mining Lab', 'N726', NULL, 'THIRD', 'TE3', '6', 'D', 'Computer'),
(89, 'CSL603', 'Data Warehousing & Mining Lab', 'N665', NULL, 'THIRD', 'TE4', '6', 'A', 'Computer'),
(90, 'CSL603', 'Data Warehousing & Mining Lab', 'N187', 'N726', 'THIRD', 'TE4', '6', 'B', 'Computer'),
(91, 'CSL603', 'Data Warehousing & Mining Lab', 'N665', NULL, 'THIRD', 'TE4', '6', 'C', 'Computer'),
(92, 'CSL603', 'Data Warehousing & Mining Lab', 'N395', 'N735', 'THIRD', 'TE4', '6', 'D', 'Computer'),
(93, 'CSL603', 'Data Warehousing & Mining Lab', 'N432', 'N735', 'THIRD', 'TED', '6', 'A', 'Computer'),
(94, 'CSL603', 'Data Warehousing & Mining Lab', 'N432', NULL, 'THIRD', 'TED', '6', 'B', 'Computer'),
(95, 'CSL603', 'Data Warehousing & Mining Lab', 'N726', NULL, 'THIRD', 'TED', '6', 'C', 'Computer'),
(96, 'CSL603', 'Data Warehousing & Mining Lab', 'N187', NULL, 'THIRD', 'TED', '6', 'D', 'Computer'),
(97, 'CSL602', 'System software Lab', 'n592', NULL, 'THIRD', 'TE3', '6', 'A', 'Computer'),
(98, 'CSL602', 'System software Lab', 'N380', NULL, 'THIRD', 'TE3', '6', 'B', 'Computer'),
(99, 'CSL602', 'System software Lab', 'N525', NULL, 'THIRD', 'TE3', '6', 'C', 'Computer'),
(100, 'CSL602', 'System software Lab', '442', NULL, 'THIRD', 'TE3', '6', 'D', 'Computer'),
(101, 'CSL602', 'System software Lab', 'N525', NULL, 'THIRD', 'TE4', '6', 'A', 'Computer'),
(102, 'CSL602', 'System software Lab', '442', 'N525', 'THIRD', 'TE4', '6', 'B', 'Computer'),
(103, 'CSL602', 'System software Lab', 'N380', NULL, 'THIRD', 'TE4', '6', 'C', 'Computer'),
(104, 'CSL602', 'System software Lab', 'n592', NULL, 'THIRD', 'TE4', '6', 'D', 'Computer'),
(105, 'CSL602', 'System software Lab', '442', NULL, 'THIRD', 'TED', '6', 'A', 'Computer'),
(106, 'CSL602', 'System software Lab', '442', NULL, 'THIRD', 'TED', '6', 'B', 'Computer'),
(107, 'CSL602', 'System software Lab', 'n592', NULL, 'THIRD', 'TED', '6', 'C', 'Computer'),
(108, 'CSL602', 'System software Lab', 'N233', NULL, 'THIRD', 'TED', '6', 'D', 'Computer'),
(109, 'CSP605', 'Mini-Project ', 'N458', '', 'THIRD', 'TE3', '6', 'A', 'Computer'),
(110, 'CSP605', 'Mini-Project ', 'N459', NULL, 'THIRD', 'TE3', '6', 'B', 'Computer'),
(111, 'CSP605', 'Mini-Project ', 'N411', NULL, 'THIRD', 'TE3', '6', 'C', 'Computer'),
(112, 'CSP605', 'Mini-Project ', 'N595', NULL, 'THIRD', 'TE3', '6', 'D', 'Computer'),
(113, 'CSP605', 'Mini-Project ', 'N387', NULL, 'THIRD', 'TE4', '6', 'A', 'Computer'),
(114, 'CSP605', 'Mini-Project ', 'N146', NULL, 'THIRD', 'TE4', '6', 'B', 'Computer'),
(115, 'CSP605', 'Mini-Project ', 'N339', 'N709', 'THIRD', 'TE4', '6', 'C', 'Computer'),
(116, 'CSP605', 'Mini-Project ', 'N538', NULL, 'THIRD', 'TE4', '6', 'D', 'Computer'),
(117, 'CSP605', 'Mini-Project ', 'N715', 'N555', 'THIRD', 'TED', '6', 'A', 'Computer'),
(118, 'CSP605', 'Mini-Project ', 'N616', 'N748', 'THIRD', 'TED', '6', 'B', 'Computer'),
(119, 'CSP605', 'Mini-Project ', 'N311', 'N432', 'THIRD', 'TED', '6', 'C', 'Computer'),
(120, 'CSP605', 'Mini-Project ', 'N257', 'N735', 'THIRD', 'TED', '6', 'D', 'Computer'),
(121, 'CSL401', 'Analysis of Algorithms Lab', 'N715', NULL, 'SECOND', 'SE4', '4', 'A', 'Computer'),
(122, 'CSL401', 'Analysis of Algorithms Lab', 'N458', NULL, 'SECOND', 'SE4', '4', 'B', 'Computer'),
(123, 'CSL401', 'Analysis of Algorithms Lab', 'N458', NULL, 'SECOND', 'SE4', '4', 'C', 'Computer'),
(124, 'CSL401', 'Analysis of Algorithms Lab', 'N458', NULL, 'SECOND', 'SE4', '4', 'D', 'Computer'),
(125, 'CSL402', 'Computer Graphics Lab', 'N538', NULL, 'SECOND', 'SE4', '4', 'A', 'Computer'),
(126, 'CSL402', 'Computer Graphics Lab', 'N677', NULL, 'SECOND', 'SE4', '4', 'B', 'Computer'),
(127, 'CSL402', 'Computer Graphics Lab', 'N257', 'N538', 'SECOND', 'SE4', '4', 'C', 'Computer'),
(128, 'CSL402', 'Computer Graphics Lab', 'N605', NULL, 'SECOND', 'SE4', '4', 'D', 'Computer'),
(129, 'CSL403', 'Processor Architecture Lab ', 'N715', NULL, 'SECOND', 'SE4', '4', 'A', 'Computer'),
(130, 'CSL403', 'Processor Architecture Lab ', 'N555', NULL, 'SECOND', 'SE4', '4', 'B', 'Computer'),
(131, 'CSL403', 'Processor Architecture Lab ', 'N715', NULL, 'SECOND', 'SE4', '4', 'C', 'Computer'),
(132, 'CSL403', 'Processor Architecture Lab ', 'N380', NULL, 'SECOND', 'SE4', '4', 'D', 'Computer'),
(133, 'CSL404', 'Operating System Lab ', 'N748', NULL, 'SECOND', 'SE4', '4', 'A', 'Computer'),
(134, 'CSL404', 'Operating System Lab ', 'N748', NULL, 'SECOND', 'SE4', '4', 'B', 'Computer'),
(135, 'CSL404', 'Operating System Lab ', 'N411', NULL, 'SECOND', 'SE4', '4', 'C', 'Computer'),
(136, 'CSL404', 'Operating System Lab ', 'N748', NULL, 'SECOND', 'SE4', '4', 'D', 'Computer'),
(137, 'CSL405', 'Open Source Tech Lab ', 'N315', NULL, 'SECOND', 'SE4', '4', 'A', 'Computer'),
(138, 'CSL405', 'Open Source Tech Lab ', 'N270', NULL, 'SECOND', 'SE4', '4', 'B', 'Computer'),
(139, 'CSL405', 'Open Source Tech Lab ', 'N339', NULL, 'SECOND', 'SE4', '4', 'C', 'Computer'),
(140, 'CSL405', 'Open Source Tech Lab ', 'N677', NULL, 'SECOND', 'SE4', '4', 'D', 'Computer'),
(141, 'CSL401', 'Analysis of Algorithms  Lab ', 'N323', NULL, 'SECOND', 'SE3', '4', 'A', 'Computer'),
(142, 'CSL401', 'Analysis of Algorithms  Lab ', 'N563', NULL, 'SECOND', 'SE3', '4', 'B', 'Computer'),
(143, 'CSL401', 'Analysis of Algorithms  Lab ', 'N715', NULL, 'SECOND', 'SE3', '4', 'C', 'Computer'),
(144, 'CSL401', 'Analysis of Algorithms  Lab ', 'N323', NULL, 'SECOND', 'SE3', '4', 'D', 'Computer'),
(145, 'CSL402', 'Computer Graphics Lab ', 'N677', NULL, 'SECOND', 'SE3', '4', 'A', 'Computer'),
(146, 'CSL402', 'Computer Graphics Lab ', 'N257', NULL, 'SECOND', 'SE3', '4', 'B', 'Computer'),
(147, 'CSL402', 'Computer Graphics Lab ', 'N538', NULL, 'SECOND', 'SE3', '4', 'C', 'Computer'),
(148, 'CSL402', 'Computer Graphics Lab ', 'N605', NULL, 'SECOND', 'SE3', '4', 'D', 'Computer'),
(149, 'CSL403', 'Processor Architecture Lab ', 'N380', NULL, 'SECOND', 'SE3', '4', 'A', 'Computer'),
(150, 'CSL403', 'Processor Architecture Lab ', 'N555', NULL, 'SECOND', 'SE3', '4', 'B', 'Computer'),
(151, 'CSL403', 'Processor Architecture Lab ', 'N555', NULL, 'SECOND', 'SE3', '4', 'C', 'Computer'),
(152, 'CSL403', 'Processor Architecture Lab ', 'N715', NULL, 'SECOND', 'SE3', '4', 'D', 'Computer'),
(153, 'CSL404', 'Operating System Lab', 'N387', NULL, 'SECOND', 'SE3', '4', 'A', 'Computer'),
(154, 'CSL404', 'Operating System Lab', 'N748', NULL, 'SECOND', 'SE3', '4', 'B', 'Computer'),
(155, 'CSL404', 'Operating System Lab', 'N730', NULL, 'SECOND', 'SE3', '4', 'C', 'Computer'),
(156, 'CSL404', 'Operating System Lab', 'N730', NULL, 'SECOND', 'SE3', '4', 'D', 'Computer'),
(157, 'CSL405', 'Open Source Tech Lab ', 'N677', NULL, 'SECOND', 'SE3', '4', 'A', 'Computer'),
(158, 'CSL405', 'Open Source Tech Lab ', 'N748', NULL, 'SECOND', 'SE3', '4', 'B', 'Computer'),
(159, 'CSL405', 'Open Source Tech Lab ', 'N270', NULL, 'SECOND', 'SE3', '4', 'C', 'Computer'),
(160, 'CSL405', 'Open Source Tech Lab ', 'N748', NULL, 'SECOND', 'SE3', '4', 'D', 'Computer');

-- --------------------------------------------------------

--
-- Table structure for table `sem_details`
--

CREATE TABLE `sem_details` (
  `semester` int(11) NOT NULL,
  `program` varchar(32) NOT NULL,
  `total_labs` int(2) NOT NULL,
  `total_theory` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sem_details`
--

INSERT INTO `sem_details` (`semester`, `program`, `total_labs`, `total_theory`) VALUES
(3, 'Computer', 4, 6),
(4, 'Computer', 5, 5),
(5, 'Computer', 5, 4),
(6, 'Computer', 5, 4),
(7, 'Computer', 5, 2),
(8, 'Computer', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_table2`
--

CREATE TABLE `student_table2` (
  `std_id` int(11) NOT NULL,
  `std_roll_no` int(2) NOT NULL,
  `student_name` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `s_phone` varchar(32) NOT NULL,
  `p_phone` varchar(32) NOT NULL,
  `smart_card_no` varchar(20) DEFAULT NULL,
  `admission_year` int(5) DEFAULT NULL,
  `program` varchar(10) NOT NULL,
  `registration_no` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `year` varchar(32) NOT NULL,
  `division` varchar(11) NOT NULL,
  `batch` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_table2`
--

INSERT INTO `student_table2` (`std_id`, `std_roll_no`, `student_name`, `email`, `s_phone`, `p_phone`, `smart_card_no`, `admission_year`, `program`, `registration_no`, `semester`, `year`, `division`, `batch`) VALUES
(42, 56, 'ADEPU SAIVIGNESH BHUMESH JAMUNA', 'saivignesh.adepu_19@sakec.ac.in', '7718099231', '9892011249', 'G2019CM113', 2019, 'Computer', 15256, 2, 'FIRST', 'FE3', 'C'),
(543, 1, 'AGRAWAL YASH RADHESHYAM', 'yash.agrawal@sakec.ac.in', '8422941033', '8422941031', 'G2016CM111', 2016, 'Computer', 13258, 8, 'FINAL', 'BE3', 'A'),
(108, 57, 'AHMAD RUMMAAN ZAFARUL NIKHAT', 'rummaan.ahmad_19@sakec.ac.in', '9920980225', '9920927297', 'G2019CM113', 2019, 'Computer', 15259, 2, 'FIRST', 'FE4', 'C'),
(333, 1, 'AKOLIYA SUMIT HARI DATT', 'sumit.akoliya@sakec.ac.in', '9869051326', '8655001845', 'I2017CM101', 2017, 'Computer', 13616, 6, 'THIRD', 'TE3', 'A'),
(334, 2, 'ALAIYA SIDDHI DIPAN', 'siddhi.alaiya@sakec.ac.in', '9820559188', '9167771734', 'M2017CM107', 2017, 'Computer', 13876, 6, 'THIRD', 'TE3', 'A'),
(1, 1, 'ALAM MO. ISRAIL MO. MAQSOOD RAJI', 'mo.israil.alam_19@sakec.ac.in', '7977435942', '9967228141', 'C2019CM108', 2019, 'Computer', 15150, 2, 'FIRST', 'FE3', 'A'),
(687, 1, 'ARKATE ANAM MUNAWAR', 'anam.arkate@sakec.ac.in', '9833027997', '9867171087', 'C2017CM-D2', 2017, 'Computer', 14186, 8, 'FINAL', 'BED', 'A'),
(129, 1, 'ARTEHIYA NIKHIL JIVRAJ VANITA', 'nikhil.artehiya_19@sakec.ac.in', '9987974797', '9987974737', 'M2019CM101', 2019, 'Computer', 14935, 2, 'FIRST', 'FE9', 'A'),
(190, 1, 'AUTI ABHINAV SITARAM', 'abhinav.auti@sakec.ac.in', '9867672866', '8879011029', 'I2018CM100', 2018, 'Computer', 14304, 4, 'SECOND', 'SE3', 'A'),
(614, 1, 'AVDUTH VISHAL BALRAM', 'vishal.avduth@sakec.ac.in', '8379833987', '9881055433', 'C2016CM112', 2016, 'Computer', 13551, 8, 'FINAL', 'BE4', 'A'),
(263, 1, 'AYARE KEDAR VILAS', 'kedar.ayare@sakec.ac.in', '8692056124', '9819806859', 'G2018CM110', 2018, 'Computer', 14642, 4, 'SECOND', 'SE4', 'A'),
(191, 2, 'BAFNA SHUBHAM DINESH', 'shubham.bafna@sakec.ac.in', '9892884875', '9821757505', 'G2018CM111', 2018, 'Computer', 14684, 4, 'SECOND', 'SE3', 'A'),
(64, 2, 'BAGRECHA RAJ ABHAYKUMAR MANISHA', 'raj.bagrecha_19@sakec.ac.in', '8805840280', '8668647290', 'C2019CM112', 2019, 'Computer', 15232, 2, 'FIRST', 'FE4', 'A'),
(130, 2, 'BAILUR ADITI AJAY SANGEETA', 'aditi.bailur_19@sakec.ac.in', '9372007536', '7045267285', 'C2019CM109', 2019, 'Computer', 15166, 2, 'FIRST', 'FE9', 'A'),
(645, 32, 'BALE SAGAR RAMESH', 'sagar.bale@sakec.ac.in', '7498066986', '9422486596', 'C2016CM109', 2016, 'Computer', 13192, 8, 'FINAL', 'BE4', 'C'),
(705, 19, 'BALEKAR TANMAY SHAILESH', 'tanmay.balekar@sakec.ac.in', '8097832652', '9167690033', 'C2017CM-D2', 2017, 'Computer', 14215, 8, 'FINAL', 'BED', 'B'),
(626, 13, 'BAMANE NIKHIL DILIP', 'nikhil.bamane@sakec.ac.in', '8806980562', '7758899605', 'C2017CM201', 2017, 'Computer', 14184, 8, 'FINAL', 'BE4', 'A'),
(414, 1, 'BAMBOLI NIRAJ TEJRAJ', 'niraj.bamboli@sakec.ac.in', '7710013400', '9773977103', 'G2017CM111', 2017, 'Computer', 14046, 6, 'THIRD', 'TE4', 'A'),
(415, 2, 'BANGA AVNIT SINGH HARPAL SINGH', 'avnitsingh.banga@sakec.ac.in', '9920840993', '9820940993', 'I2017CM101', 2017, 'Computer', 13610, 6, 'THIRD', 'TE4', 'A'),
(264, 2, 'BASAK MUGDHA RADHANATH', 'mugdha.basak@sakec.ac.in', '9223392772', '9223392773', 'C2018CM106', 2018, 'Computer', 14474, 4, 'SECOND', 'SE4', 'A'),
(544, 2, 'BHABAD SHUBHAM ASHOK', 'shubham.bhabad@sakec.ac.in', '8857972225', '9021155533', 'C2016CM108', 2016, 'Computer', 13127, 8, 'FINAL', 'BE3', 'A'),
(192, 3, 'BHADRA HARSH RAJESH', 'harsh.bhadra@sakec.ac.in', '8767090949', '9820110576', 'G2018CM102', 2018, 'Computer', 14326, 4, 'SECOND', 'SE3', 'A'),
(176, 61, 'BHALERAO SHREYASH SANJAY MANDA', 'shreyash.bhalerao_19@sakec.ac.in', '8291723727', '9820161347', 'G2019CM116', 2019, 'Computer', 15326, 2, 'FIRST', 'FE9', 'C'),
(531, 44, 'BHAMBHERA SOHAIL ABBAS SABIR ALI', 'sohailabbas.bhambhera@sakec.ac.in', '7506949613', '8976476977', 'M2018CM-D2', 2018, 'Computer', 14725, 6, 'THIRD', 'TED', 'D'),
(627, 14, 'BHANPURWALA MOHAMMAD SHABBIR', 'mohammad.bhanpurwala@sakec.ac.in', '9139495553', '9552311053', 'M2017CM200', 2017, 'Computer', 14071, 8, 'FINAL', 'BE4', 'A'),
(545, 3, 'BHANUSHALI ANKEET PRATAP', 'ankeet.bhanushali@sakec.ac.in', '9619717709', '7977374265', 'M2016CM105', 2016, 'Computer', 13042, 8, 'FINAL', 'BE3', 'A'),
(688, 2, 'BHANUSHALI BHAVIN PRAVIN', 'bhavin.bhanushali@sakec.ac.in', '9920552712', '9920126202', 'C2017CM-D2', 2017, 'Computer', 14131, 8, 'FINAL', 'BED', 'A'),
(646, 33, 'BHANUSHALI DEEP NANJI', 'deep.bhanushali@sakec.ac.in', '9930881910', '9819151740', 'M2016CM109', 2016, 'Computer', 13182, 8, 'FINAL', 'BE4', 'C'),
(416, 3, 'BHANUSHALI DEVANSH JITENDRA', 'devansh.bhanushali@sakec.ac.in', '9224611084', '9224611084', 'G2017CM108', 2017, 'Computer', 13970, 6, 'THIRD', 'TE4', 'A'),
(586, 44, 'BHANUSHALI DHAVAL JITENDRA', 'dhaval.bhanushali@sakec.ac.in', '7045372237', '9833722237', 'M2016CM105', 2016, 'Computer', 13032, 8, 'FINAL', 'BE3', 'C'),
(417, 4, 'BHANUSHALI HARDIK AMIT', 'hardik.bhanushali@sakec.ac.in', '8080022219', '8898041429', 'G2017CM111', 2017, 'Computer', 14044, 6, 'THIRD', 'TE4', 'A'),
(647, 34, 'BHANUSHALI KAUSHIK MAVJI BHAI', 'kaushik.bhanushali@sakec.ac.in', '8879517958', '9167013933', 'M2016CM108', 2016, 'Computer', 13136, 8, 'FINAL', 'BE4', 'C'),
(648, 35, 'BHANUSHALI MANAN RAJESH', 'manan.bhanushali@sakec.ac.in', '8080967878', '9322239417', 'M2016CM107', 2016, 'Computer', 13099, 8, 'FINAL', 'BE4', 'C'),
(706, 20, 'BHANUSHALI NIKITA KHIMJI', 'nikita.bhanushali@sakec.ac.in', '9022724071', '9594498260', 'M2017CM-D2', 2017, 'Computer', 14096, 8, 'FINAL', 'BED', 'B'),
(335, 3, 'BHANUSHALI VED HARSHAD', 'ved.bhanushali@sakec.ac.in', '8879297939', '9930137610', 'G2017CM110', 2017, 'Computer', 14037, 6, 'THIRD', 'TE3', 'A'),
(488, 1, 'BHARADIYA KANCHAN PRAKASH', 'kanchan.bharadiya@sakec.ac.in', '8691840765', '9324798423', 'I2018CM-D2', 2018, 'Computer', 14885, 6, 'THIRD', 'TED', 'A'),
(131, 3, 'BHARADWAJ DARSH DINESH DARSHANA', 'darsh.bharadwaj_19@sakec.ac.in', '8369461300', '9987434452', 'M2019CM107', 2019, 'Computer', 15094, 2, 'FIRST', 'FE9', 'A'),
(587, 45, 'BHAT AMAN AJAY KUMAR BHAT', 'aman.bhat@sakec.ac.in', '9419294747', '9419631158', 'C2016CM102', 2016, 'Computer', 12921, 8, 'FINAL', 'BE3', 'C'),
(2, 4, 'BHAT RISHIKA MAHARAJ KRISHAN SAN', 'rishika.bhat_19@sakec.ac.in', '9149721664', '7006073633', 'C2019CM103', 2019, 'Computer', 14976, 2, 'FIRST', 'FE3', 'A'),
(628, 15, 'BHATT AAKASH PADMANABH', 'aakash.bhatt@sakec.ac.in', '9619601191', '9820703586', 'G2016CM112', 2016, 'Computer', 13287, 8, 'FINAL', 'BE4', 'A'),
(707, 21, 'BHATT JAY DHARMENDRA', 'jay.bhatt@sakec.ac.in', '9702631699', '8291872999', 'M2017CM-D2', 2017, 'Computer', 14223, 8, 'FINAL', 'BED', 'B'),
(670, 57, 'BHATT NIDHI ASHOK', 'nidhi.bhatt@sakec.ac.in', '8652596037', '9820718389', 'M2016CM107', 2016, 'Computer', 13110, 8, 'FINAL', 'BE4', 'D'),
(336, 4, 'BHEDA RUTVI JITEN', 'rutvi.bheda@sakec.ac.in', '9029399705', '9004899887', 'G2017CM100', 2017, 'Computer', 13603, 6, 'THIRD', 'TE3', 'A'),
(337, 5, 'BHIMANI DARSH NIMESH', 'darsh.bhimani@sakec.ac.in', '9029965861', '9821147497', '', 2017, 'Computer', 13780, 6, 'THIRD', 'TE3', 'A'),
(265, 3, 'BHIST KOMAL PRAKASH', 'komal.bhist@sakec.ac.in', '9702059586', '9869544995', 'G2018CM102', 2018, 'Computer', 14336, 4, 'SECOND', 'SE4', 'A'),
(65, 4, 'BHONDAVE RUPESH RAMDAS ROHINI', 'rupesh.bhondave_19@sakec.ac.in', '9359886138', '8149896812', 'C2019CM102', 2019, 'Computer', 14968, 2, 'FIRST', 'FE4', 'A'),
(418, 5, 'BHOSALE PRATIK VIJAY', 'pratik.bhosale@sakec.ac.in', '9987554120', '9594210470', 'C2017CM104', 2017, 'Computer', 13738, 6, 'THIRD', 'TE4', 'A'),
(338, 6, 'BHUTA NIKHIL', '', '', '', '', 2016, 'Computer', 0, 6, 'THIRD', 'TE3', 'A'),
(339, 7, 'BODAS JESICA RAJESH', 'jesica.bodas@sakec.ac.in', '8080854998', '9768387362', 'I2017CM101', 2017, 'Computer', 13615, 6, 'THIRD', 'TE3', 'A'),
(266, 4, 'BORHADE VAISHNAV RAJENDRA', 'vaishnav.borhade@sakec.ac.in', '9619722023', '9619722023', 'G2018CM103', 2018, 'Computer', 14366, 4, 'SECOND', 'SE4', 'A'),
(267, 5, 'BORICHA RITIKA SHARAD', 'ritika.boricha@sakec.ac.in', '7715872219', '9920059123', 'M2018CM105', 2018, 'Computer', 14445, 4, 'SECOND', 'SE4', 'A'),
(132, 4, 'CHAKKARWAR RUCHI SUMEDH VANITA', 'ruchi.chakkarwar_19@sakec.ac.in', '9820756508', '9819936602', 'C2019CM104', 2019, 'Computer', 15021, 2, 'FIRST', 'FE9', 'A'),
(340, 8, 'CHAMARIA DHRUV SUBHASH', 'dhruv.chamaria@sakec.ac.in', '7977568992', '9699909805', 'C2018CM200', 2018, 'Computer', 14769, 6, 'THIRD', 'TE3', 'A'),
(3, 5, 'CHAUDHARI TUSHAR DILIP REKHA', 'tushar.chaudhari_19@sakec.ac.in', '9145054520', '9421515927', 'C2019CM104', 2019, 'Computer', 15014, 2, 'FIRST', 'FE3', 'A'),
(341, 9, 'CHAUDHARY MANJYOT SINGH SATNAM S', 'manjyotsingh.chaudhary@sakec.ac.in', '9969164687', '9820562999', 'C2017CM103', 2017, 'Computer', 13712, 6, 'THIRD', 'TE3', 'A'),
(588, 46, 'CHAUDHARY PRANIT BALKRISHNA', 'pranit.chaudhary@sakec.ac.in', '7710801104', '9869924253', 'I2016CM105', 2016, 'Computer', 13021, 8, 'FINAL', 'BE3', 'C'),
(66, 5, 'CHAUHAN ASHUTOSH SINGH KAILASH S', 'ashutoshsingh.chauhan_19@sakec.ac.in', '9372694727', '9372694727', 'C2019CM109', 2019, 'Computer', 15174, 2, 'FIRST', 'FE4', 'A'),
(183, 68, 'CHAUHAN MANOJSINH VIJAYSINH MANI', 'manojsinh.chauhan_19@sakec.ac.in', '9158706478', '7977715500', 'G2019CM116', 2019, 'Computer', 15363, 2, 'FIRST', 'FE9', 'C'),
(133, 5, 'CHAUHAN PARTH GIRISH SURBHI', 'parth.chauhan_19@sakec.ac.in', '8425958106', '9029917119', 'M2019CM108', 2019, 'Computer', 15153, 2, 'FIRST', 'FE9', 'A'),
(489, 2, 'CHAURASIYA ANJALI SUNIL', 'anjali.chaurasiya@sakec.ac.in', '8433674929', '8433674929', 'C2018CM-D2', 2018, 'Computer', 14866, 6, 'THIRD', 'TED', 'A'),
(589, 47, 'CHAVAN ADITI ANIL', 'aditi.chavan@sakec.ac.in', '8976205975', '7738628257', 'I2016CM101', 2016, 'Computer', 12902, 8, 'FINAL', 'BE3', 'C'),
(193, 4, 'CHAWAN SOHUM SUBODH', 'sohum.chawan@sakec.ac.in', '7506502063', '9820293411', '', 2018, 'Computer', 14692, 4, 'SECOND', 'SE3', 'A'),
(419, 6, 'CHAWDA HITEN SHANKAR', 'hiten.chawda@sakec.ac.in', '9167900275', '9920490363', 'M2017CM103', 2017, 'Computer', 13693, 6, 'THIRD', 'TE4', 'A'),
(615, 2, 'CHAWDA NISHA VINOD', 'nisha.chawda@sakec.ac.in', '9987483687', '9821378907', 'M2017CM201', 2016, 'Computer', 14163, 8, 'FINAL', 'BE4', 'A'),
(4, 6, 'CHHEDA ADIT BHARAT KALPANA', 'adit.chheda_19@sakec.ac.in', '7045110811', '9820770800', 'M2019CM111', 2019, 'Computer', 15218, 2, 'FIRST', 'FE3', 'A'),
(649, 36, 'CHHEDA CHINTAN JAYESH', 'chintan.chheda@sakec.ac.in', '9699061989', '9892232535', 'M2016CM104', 2016, 'Computer', 12993, 8, 'FINAL', 'BE4', 'C'),
(629, 16, 'CHHEDA DARSHIL DHIRAJ', 'darshil.chheda@sakec.ac.in', '9167324515', '9819795577', 'M2016CM108', 2016, 'Computer', 13162, 8, 'FINAL', 'BE4', 'B'),
(194, 5, 'CHHEDA KRISHA TUSHAR', 'krisha.chheda@sakec.ac.in', '8080866690', '8452046383', 'M2018CM104', 2018, 'Computer', 14375, 4, 'SECOND', 'SE3', 'A'),
(268, 6, 'CHHEDA MUSKAN JASMIN', 'muskan.chheda@sakec.ac.in', '8828453177', '9821527555', 'I2018CM102', 2018, 'Computer', 14331, 4, 'SECOND', 'SE4', 'A'),
(195, 6, 'CHHEDA SAGAR ASHISH', 'sagar.chheda@sakec.ac.in', '9773017758', '9821221266', 'M2018CM109', 2018, 'Computer', 14598, 4, 'SECOND', 'SE3', 'A'),
(269, 7, 'CHHEDA SHIVANG MULJI', 'shivang.chheda@sakec.ac.in', '9029722073', '9819332073', 'M2018CM109', 2018, 'Computer', 14631, 4, 'SECOND', 'SE4', 'A'),
(546, 4, 'CHIMA JASPREET SINGH BHUPINDER S', 'jaspreet.chima@sakec.ac.in', '7718008554', '9029297782', 'I2016CM100', 2016, 'Computer', 12879, 8, 'FINAL', 'BE3', 'A'),
(342, 10, 'CHINCHORE PRANAV MANOJ', 'pranav.chinchore@sakec.ac.in', '9594238234', '9221041569', 'C2017CM105', 2017, 'Computer', 13806, 6, 'THIRD', 'TE3', 'A'),
(343, 11, 'CHITNIS AYUSH SADANAND', 'ayush.chitnis@sakec.ac.in', '8424971631', '9930026536', 'G2017CM109', 2017, 'Computer', 13988, 6, 'THIRD', 'TE3', 'A'),
(345, 13, 'CHOTHANI KARAN GIRISH', 'karan.chothani@sakec.ac.in', '9619044051', '9004068249', 'M2018CM200', 2018, 'Computer', 14745, 6, 'THIRD', 'TE3', 'A'),
(344, 12, 'CHOTHANI SHIVAM RAJESH', 'shivam.chothani@sakec.ac.in', '9549421830', '9687105082', '', 2017, 'Computer', 14275, 6, 'THIRD', 'TE3', 'A'),
(62, 77, 'CHOUDHARY MOHNISH VISHWAS PREETI', 'mohnish.choudhary_19@sakec.ac.in', '7977920554', '9869282788', 'G2019CM118', 2019, 'Computer', 15423, 2, 'FIRST', 'FE3', 'C'),
(196, 7, 'CHOUDHARY RAKESH CHUNILAL', 'rakesh.choudhary@sakec.ac.in', '8291094491', '9819963758', 'C2018CM108', 2018, 'Computer', 14583, 4, 'SECOND', 'SE3', 'A'),
(490, 3, 'DADHICH VIKAS UMASHANKAR', 'vikas.dadhich@sakec.ac.in', '8422028093', '9323840545', 'C2018CM-D2', 2018, 'Computer', 14859, 6, 'THIRD', 'TED', 'A'),
(197, 8, 'DAGHA RIDDHI RAJESH', 'riddhi.dagha@sakec.ac.in', '6354084718', '9687385248', 'G2018CM112', 2018, 'Computer', 14784, 4, 'SECOND', 'SE3', 'A'),
(67, 6, 'DALAL DEVANG DALAL SWATI', 'devang.dalal_19@sakec.ac.in', '8108502955', '9967200658', 'C2019CM108', 2019, 'Computer', 15146, 2, 'FIRST', 'FE4', 'A'),
(112, 62, 'DALVI OMKAR MANOHAR MANALI', 'omkar.dalvi_19@sakec.ac.in', '8779940813', '7498495671', 'G2019CM114', 2019, 'Computer', 15290, 2, 'FIRST', 'FE4', 'C'),
(547, 5, 'DAMA RUCHIK ROHIT', 'ruchik.dama@sakec.ac.in', '9022767778', '9322873858', 'M2016CM106', 2016, 'Computer', 13059, 8, 'FINAL', 'BE3', 'A'),
(491, 4, 'DANGAT MAYURESH BHARAT', 'mayuresh.dangat@sakec.ac.in', '7039879424', '9172223189', 'G2018CM-D2', 2018, 'Computer', 14882, 6, 'THIRD', 'TED', 'A'),
(5, 7, 'DANGODRA GAUTAM BHARAT GEETA', 'gautam.dangodra_19@sakec.ac.in', '8693860538', '9819339273', 'M2019CM104', 2019, 'Computer', 15006, 2, 'FIRST', 'FE3', 'A'),
(590, 48, 'DANI MIT PARESH', 'mit.dani@sakec.ac.in', '9819912965', '9224425414', 'G2016CM111', 2016, 'Computer', 13262, 8, 'FINAL', 'BE3', 'C'),
(68, 7, 'DANI RACHIT JATIN PUNITA DANI', 'rachit.dani_19@sakec.ac.in', '8667279701', '9442630945', 'C2019CM103', 2019, 'Computer', 14978, 2, 'FIRST', 'FE4', 'A'),
(346, 14, 'DAREKAR SHIVANI VIJAY', 'shivani.darekar@sakec.ac.in', '9819007749', '9870102956', 'C2018CM201', 2018, 'Computer', 14804, 6, 'THIRD', 'TE3', 'A'),
(630, 17, 'DARJI AAKASH JAGDISH', 'aakash.darji@sakec.ac.in', '9769914439', '9820959258', 'M2017CM202', 2017, 'Computer', 14237, 8, 'FINAL', 'BE4', 'B'),
(134, 7, 'DARJI SAHIL MAHESH VANDNA', 'sahil.darji_19@sakec.ac.in', '9820485652', '9209795125', 'M2019CM104', 2019, 'Computer', 15010, 2, 'FIRST', 'FE9', 'A'),
(420, 7, 'DARJI UMANG JATIN', 'umang.darji@sakec.ac.in', '8082541916', '9870353972', 'M2018CM201', 2018, 'Computer', 14815, 6, 'THIRD', 'TE4', 'A'),
(347, 15, 'DARJI VIRAL RAJESHKUMAR', 'viral.darji@sakec.ac.in', '9869799526', '8898130136', 'M2018CM200', 2018, 'Computer', 14764, 6, 'THIRD', 'TE3', 'A'),
(248, 59, 'DAS SAPAN TAPAN', '', '', '', '', 2018, 'COMPUTER', 0, 4, 'SECOND', 'SE3', 'D'),
(6, 8, 'DAS SOHAN PARIMAL PURNIMA', 'sohan.das_19@sakec.ac.in', '9136523458', '9920432852', 'C2019CM101', 2019, 'Computer', 14942, 2, 'FIRST', 'FE3', 'A'),
(421, 8, 'DAVE ISHITA RAJESH', 'ishita.dave@sakec.ac.in', '9920215147', '9322234667', 'I2017CM101', 2017, 'Computer', 13609, 6, 'THIRD', 'TE4', 'A'),
(631, 18, 'DAVE MANAV VIJAY', 'manav.dave@sakec.ac.in', '9768570071', '9967853334', 'M2017CM202', 2016, 'Computer', 14248, 8, 'FINAL', 'BE4', 'B'),
(119, 69, 'DEDAVAT VISHAL JAYMANGAL RANJAN', 'vishal.dedavat_19@sakec.ac.in', '8424960955', '9322015655', 'G2019CM115', 2019, 'Computer', 15310, 2, 'FIRST', 'FE4', 'C'),
(548, 6, 'DEDHIA SHREY ATUL', 'shrey.dedhia@sakec.ac.in', '9773461999', '9769684540', 'M2016CM110', 2016, 'Computer', 13227, 8, 'FINAL', 'BE3', 'A'),
(532, 45, 'DEDHIA UTSAV MAHENDRA', 'utsav.dedhia@sakec.ac.in', '8879102809', '9769440027', 'I2018CM-D2', 2018, 'Computer', 14886, 6, 'THIRD', 'TED', 'D'),
(591, 49, 'DEDHIYA VIRAJ NAVIN', 'viraj.dedhiya@sakec.ac.in', '9930859161', '9869586609', 'I2016CM101', 2016, 'Computer', 12905, 8, 'FINAL', 'BE3', 'C'),
(616, 3, 'DESAI MIHIR', '', '', '', '', 2015, 'COMPUTER', 0, 8, 'FINAL', 'BE4', 'A'),
(69, 8, 'DESAI ZARANA BHARATKUMAR SANDHYA', 'zarana.desai_19@sakec.ac.in', '9082409572', '9820242753', 'M2019CM107', 2019, 'Computer', 15089, 2, 'FIRST', 'FE4', 'A'),
(7, 9, 'DESHMUKH VIRAJ SHARAD JYOTI', 'viraj.deshmukh_19@sakec.ac.in', '9561838170', '7558669792', 'C2019CM106', 2019, 'Computer', 15067, 2, 'FIRST', 'FE3', 'A'),
(117, 67, 'DESHPANDE RUTVIK VIPIN APARNA', 'rutvik.deshpande_19@sakec.ac.in', '9082207281', '9920191690', 'G2019CM115', 2019, 'Computer', 15304, 2, 'FIRST', 'FE4', 'C'),
(617, 4, 'DHANE POOJA LAXMAN', 'pooja.dhane@sakec.ac.in', '9881559625', '9881559625', 'C2016CM110', 2016, 'Computer', 13236, 8, 'FINAL', 'BE4', 'A'),
(348, 16, 'DHARAMSHI FEMIN KALPESH', 'femin.dharamshi@sakec.ac.in', '7666066985', '9.20E+11', 'G2017CM109', 2017, 'Computer', 13993, 6, 'THIRD', 'TE3', 'A'),
(46, 60, 'DHAROD ARPIT MUKESH VEENA', 'arpit.dharod_19@sakec.ac.in', '9323815050', '9323089684', 'G2019CM113', 2019, 'Computer', 15279, 2, 'FIRST', 'FE3', 'C'),
(198, 9, 'DHAROD ROHAN BHASKAR', 'rohan.dharod@sakec.ac.in', '8850396310', '9076665665', 'M2018CM107', 2018, 'Computer', 14479, 4, 'SECOND', 'SE3', 'A'),
(70, 9, 'DHATRAK ROHAN VASANT CHHAYA', 'rohan.dhatrak_19@sakec.ac.in', '7276095972', '9970172562', 'C2019CM106', 2019, 'Computer', 15079, 2, 'FIRST', 'FE4', 'A'),
(422, 9, 'DHIMAN HARSHITA SANJAY', 'harshita.dhiman@sakec.ac.in', '9699556667', '8850001776', 'C2018CM201', 2018, 'Computer', 14826, 6, 'THIRD', 'TE4', 'A'),
(270, 8, 'DHOLAKIA JAY RAJESH', 'jay.dholakia@sakec.ac.in', '9969695765', '9969695765', 'I2018CM112', 2018, 'Computer', 14758, 4, 'SECOND', 'SE4', 'A'),
(135, 9, 'DHONNAR SAIRAJ SANJAY KANCHAN', 'sairaj.dhonnar_19@sakec.ac.in', '981935527', '9821849650', 'C2019CM109', 2019, 'Computer', 15162, 2, 'FIRST', 'FE9', 'A'),
(251, 62, 'DHULLA HARSH NALIN CHHAYA', 'harsh.dhulla_19@sakec.ac.in', '7021243920', '9833118413', 'M2019CM201', 2019, 'Computer', 15398, 4, 'SECOND', 'SE3', 'D'),
(271, 9, 'DIWAN ISHIKA ANILKUMAR', 'ishika.diwan@sakec.ac.in', '8879524037', '9029112579', 'I2018CM100', 2018, 'Computer', 14298, 4, 'SECOND', 'SE4', 'A'),
(592, 50, 'DODHIA NIRALI JAYESH', 'nirali.dodhia@sakec.ac.in', '9156710118', '7709020510', 'M2016CM104', 2016, 'Computer', 12996, 8, 'FINAL', 'BE3', 'C'),
(593, 51, 'DONGRE RUDRESH ASHUTOSH', 'rudresh.dongre@sakec.ac.in', '9664798987', '9322012340', 'G2016CM111', 2016, 'Computer', 13285, 8, 'FINAL', 'BE3', 'C'),
(650, 37, 'DOSHI AAYUSH JINESH', 'aayush.doshi@sakec.ac.in', '9892074077', '9892074077', 'I2016CM101', 2016, 'Computer', 12883, 8, 'FINAL', 'BE4', 'C'),
(689, 3, 'DOSHI ADIT MANISH', 'adit.doshi@sakec.ac.in', '9757333989', '9022450303', 'M2017CM-D2', 2017, 'Computer', 14155, 8, 'FINAL', 'BED', 'A'),
(594, 52, 'DOSHI JAINAM MANISH', 'jainam.doshi@sakec.ac.in', '9833989454', '9820060280', 'M2016CM108', 2016, 'Computer', 13120, 8, 'FINAL', 'BE3', 'C'),
(690, 4, 'DOSHI KRISH RASHMIKUMAR', 'krish.doshi@sakec.ac.in', '9545148875', '8097009165', 'M2017CM-D2', 2017, 'Computer', 14095, 8, 'FINAL', 'BED', 'A'),
(632, 19, 'DOSHI MIHIR RAJESH', 'mihir.doshi@sakec.ac.in', '8097308145', '9967308898', 'M2017CM200', 2017, 'Computer', 14106, 8, 'FINAL', 'BE4', 'B'),
(349, 17, 'DOSHI MOKSHA AJAY', 'moksha.doshi@sakec.ac.in', '8451031651', '9221037507', 'G2017IT172', 2017, 'Computer', 14276, 6, 'THIRD', 'TE3', 'A'),
(651, 38, 'DOSHI PARTH KETAN', 'parth.doshi@sakec.ac.in', '8169664802', '9323100144', 'M2015CM103', 2016, 'Computer', 12184, 8, 'FINAL', 'BE4', 'C'),
(8, 10, 'DOSHI PRIYANSHI NISHITH VARSHA', 'priyanshi.doshi_19@sakec.ac.in', '8879369328', '0', 'M2019CM100', 2019, 'Computer', 14920, 2, 'FIRST', 'FE3', 'A'),
(671, 58, 'DOSHI RAJVI PRAVIN', 'rajvidoshi_23@yahoo.com', '9819495356', '9892042427', 'M2015CM103', 2016, 'Computer', 12192, 8, 'FINAL', 'BE4', 'D'),
(71, 10, 'DOSHI RIDDHI PARESH RUPA', 'riddhi.doshi_19@sakec.ac.in', '9930420834', '9320318399', 'M2019CM110', 2019, 'Computer', 15191, 2, 'FIRST', 'FE4', 'A'),
(708, 22, 'DOSHI SIDHANT SANJEEV', 'sidhant.doshi@sakec.ac.in', '7021377816', '9869686053', 'M2017CM-D2', 2017, 'Computer', 14068, 8, 'FINAL', 'BED', 'B'),
(252, 63, 'DUBEY AANCHAL VINODKUMAR ANITA', 'aanchal.dubey_19@sakec.ac.in', '9969121638', '9867653738', 'C2019CM200', 2019, 'Computer', 15380, 4, 'SECOND', 'SE3', 'D'),
(136, 10, 'DUBEY ANKIT ANIL SUNITA', 'ankit.dubey_19@sakec.ac.in', '9870500591', '9870500591', 'C2019CM106', 2019, 'Computer', 15062, 2, 'FIRST', 'FE9', 'A'),
(272, 10, 'DUBEY KARAN SANJEEV', 'karan.dubey@sakec.ac.in', '8652219391', '9076434234', 'G2018CM109', 2018, 'Computer', 14641, 4, 'SECOND', 'SE4', 'A'),
(423, 10, 'DUBEY KUNAL', '', '', '', '', 2016, 'Computer', 0, 6, 'THIRD', 'TE4', 'A'),
(253, 64, 'EKHANDE SUYASH JAYENDRA SAVITA', 'suyash.ekhande_19@sakec.ac.in', '9869656343', '9967313737', 'C2019CM200', 2019, 'Computer', 15337, 4, 'SECOND', 'SE3', 'D'),
(350, 18, 'ENGINEER DRISHTI ASHISH', 'drishti.engineer@sakec.ac.in', '9920593435', '8898097008', '', 2017, 'Computer', 13920, 6, 'THIRD', 'TE3', 'A'),
(351, 19, 'FURIYA DEEP RAJESH', 'deep.furiya@sakec.ac.in', '8905202320', '9377443132', 'G2017CM112', 2017, 'Computer', 14274, 6, 'THIRD', 'TE3', 'A'),
(199, 10, 'GADA MAITRI BHUPEN', 'maitri.gada@sakec.ac.in', '8355892203', '9869277351', 'I2018CM100', 2018, 'Computer', 14302, 4, 'SECOND', 'SE3', 'A'),
(9, 11, 'GADA MILONI ATUL DARSHANA', 'miloni.gada_19@sakec.ac.in', '9892126332', '9892596332', 'M2019CM109', 2019, 'Computer', 15156, 2, 'FIRST', 'FE3', 'A'),
(424, 11, 'GADA NIKHIL RAJESH', 'nikhil.gada@sakec.ac.in', '9930881482', '9322125794', 'I2017CM102', 2017, 'Computer', 13629, 6, 'THIRD', 'TE4', 'A'),
(352, 20, 'GADA PREET KETAN', 'preet.gada_2017@sakec.ac.in', '9819669122', '9833562278', 'G2017CM110', 2017, 'Computer', 14021, 6, 'THIRD', 'TE3', 'A'),
(273, 11, 'GADA VATSAL SHANTILAL', 'vatsal.gada@sakec.ac.in', '8141960134', '9727181727', 'G2018CM112', 2018, 'Computer', 14788, 4, 'SECOND', 'SE4', 'A'),
(353, 21, 'GADA YASH HARESH', 'yash.gada@sakec.ac.in', '9699176330', '9699433666', 'M2017CM105', 2017, 'Computer', 13803, 6, 'THIRD', 'TE3', 'B'),
(171, 56, 'GADAGALLI KARTIK MANOJ VRUSHALI', 'kartik.gadagalli_19@sakec.ac.in', '7977438997', '9819204891', 'G2019CM116', 2019, 'Computer', 15312, 2, 'FIRST', 'FE9', 'C'),
(72, 11, 'GADKAR SIDDHESH SURAJ VIBHA', 'siddhesh.gadkar_19@sakec.ac.in', '9167539274', '9892762482', 'C2019CM106', 2019, 'Computer', 15085, 2, 'FIRST', 'FE4', 'A'),
(137, 11, 'GAIKWAD DIPESH ANAND AARTI', 'dipesh.gaikwad_19@sakec.ac.in', '7506371355', '9820291355', 'C2019CM107', 2019, 'Computer', 15117, 2, 'FIRST', 'FE9', 'A'),
(10, 12, 'GAJJAR DEVAL MAHENDRA KIRAN', 'deval.gajjar_19@sakec.ac.in', '9702997883', '9757392889', 'M2019CM109', 2019, 'Computer', 15161, 2, 'FIRST', 'FE3', 'A'),
(354, 22, 'GALA ASHI ARVIND', 'ashi.gala@sakec.ac.in', '9664714403', '9833560006', 'M2018CM200', 2018, 'Computer', 14765, 6, 'THIRD', 'TE3', 'B'),
(110, 60, 'GALA HARSH HITESH RASHMI', 'harsh.gala_19@sakec.ac.in', '7666737999', '7666137999', 'G2019CM113', 2019, 'Computer', 15285, 2, 'FIRST', 'FE4', 'C'),
(425, 12, 'GALA HEET KAILAS', 'heet.gala@sakec.ac.in', '9773175339', '8419926555', 'I2017CM102', 2017, 'Computer', 13644, 6, 'THIRD', 'TE4', 'A'),
(274, 12, 'GALA JAINAM HASMUKH', 'jainam.gala@sakec.ac.in', '8655524683', '9221255777', 'M2018CM105', 2018, 'Computer', 14423, 4, 'SECOND', 'SE4', 'A'),
(672, 59, 'GALA MEGH HASMUKH', 'megh.gala@sakec.ac.in', '9773617707', '9820354556', 'M2017CM201', 2016, 'Computer', 14217, 8, 'FINAL', 'BE4', 'D'),
(549, 7, 'GALA RUJUL JAYANTI', 'rujul.gala@sakec.ac.in', '9920692247', '9768256478', 'M2016CM105', 2016, 'Computer', 13014, 8, 'FINAL', 'BE3', 'A'),
(355, 23, 'GAMI KAUSHIK NATHA', 'kaushik.gami@sakec.ac.in', '9930284423', '9819772636', 'M2017CM107', 2017, 'Computer', 13872, 6, 'THIRD', 'TE3', 'B'),
(73, 12, 'GANATRA KINJAN VINAY SHILPA', 'kinjan.ganatra_19@sakec.ac.in', '8956124777', '9860016279', 'M2019CM103', 2019, 'Computer', 14974, 2, 'FIRST', 'FE4', 'A'),
(673, 60, 'GANDHI AMAN PRAVEEN', 'aman.gandhi@sakec.ac.in', '8655238299', '9821176796', 'C2017CM201', 2017, 'Computer', 14205, 8, 'FINAL', 'BE4', 'D'),
(618, 5, 'GANDHI BHOOMI SUNIL', 'bhoomi.gandhi@sakec.ac.in', '7710891092', '9702165049', 'C2016CM112', 2016, 'Computer', 13574, 8, 'FINAL', 'BE4', 'A'),
(138, 12, 'GANDHI JINAL RAJU HETAL', 'jinal.gandhi_19@sakec.ac.in', '9082341410', '9869218750', 'M2019CM102', 2019, 'Computer', 14962, 2, 'FIRST', 'FE9', 'A'),
(200, 11, 'GANDHI KEVIN NILESH', 'kevin.gandhi@sakec.ac.in', '9324426227', '9322227346', 'I2018CM101', 2018, 'Computer', 14314, 4, 'SECOND', 'SE3', 'A'),
(11, 13, 'GANDHI VATSAL KETAN POOJA', 'vatsal.gandhi_19@sakec.ac.in', '8850842857', '9323647048', 'M2019CM111', 2019, 'Computer', 15221, 2, 'FIRST', 'FE3', 'A'),
(709, 23, 'GANDHI VIRAL HEMANT', 'viral.gandhi@sakec.ac.in', '9527565412', '9890582220', 'M2017CM-D2', 2017, 'Computer', 14233, 8, 'FINAL', 'BED', 'B'),
(550, 8, 'GANGAR DISHANK JAYANT', 'dishank.gangar@sakec.ac.in', '9820110469', '9820149925', 'M2016CM108', 2016, 'Computer', 13122, 8, 'FINAL', 'BE3', 'A'),
(426, 13, 'GARI TAHER JUZER', 'taher.gari@sakec.ac.in', '9870078651', '9870078621', 'M2017CM107', 2017, 'Computer', 13893, 6, 'THIRD', 'TE4', 'A'),
(710, 24, 'GATKUL NANDKUMAR ARUN', 'nandkumar.gatkul@sakec.ac.in', '8286862733', '9702258144', 'C2017CM-D2', 2017, 'Computer', 14112, 8, 'FINAL', 'BED', 'B'),
(356, 24, 'GAVHANE AKSHAYA ASHOK', 'akshaya.gavhane@sakec.ac.in', '9967387919', '9869228239', 'G2017CM110', 2017, 'Computer', 14038, 6, 'THIRD', 'TE3', 'B'),
(254, 65, 'GAVHANE PRACHI SANTOSH JYOTI', 'prachi.gavhane_19@sakec.ac.in', '8652375451', '9967421417', 'C2019CM201', 2019, 'Computer', 15428, 4, 'SECOND', 'SE3', 'D'),
(275, 13, 'GAVHANE SHUBHAM BALASAHEB', 'shubham.gavhane@sakec.ac.in', '8691838037', '8424990879', 'G2018CM103', 2018, 'Computer', 14367, 4, 'SECOND', 'SE4', 'A'),
(53, 67, 'GAWADE KIRTI GANESH LALITA', 'kirti.gawade_19@sakec.ac.in', '8850254218', '7738580585', 'G2019CM114', 2019, 'Computer', 15298, 2, 'FIRST', 'FE3', 'C'),
(711, 25, 'GAWADE RUNALI GAJANAN', 'runali.gawade@sakec.ac.in', '8169626721', '8080097492', 'C2017CM-D2', 2017, 'Computer', 14239, 8, 'FINAL', 'BED', 'B'),
(551, 9, 'GAWDE NEHA CHANDRAKANT', 'neha.gawde@sakec.ac.in', '9004399696', '9004413065', 'C2016IT168', 2016, 'Computer', 13191, 8, 'FINAL', 'BE3', 'A'),
(492, 5, 'GAZI RUKSA MOHD KARIM', 'ruksa.gazi@sakec.ac.in', '8828169775', '9773138832', 'C2018CM-D2', 2018, 'Computer', 14807, 6, 'THIRD', 'TED', 'A'),
(552, 10, 'GHADIALI VAIBHAV SARVADAMAN', 'vaibhav.ghadiali@sakec.ac.in', '9987362620', '9869209628', 'M2016CM107', 2016, 'Computer', 13117, 8, 'FINAL', 'BE3', 'A'),
(633, 20, 'GHADIGAONKAR ASHISH SHARAD', 'ashish.ghadigaonkar@sakec.ac.in', '9664359034', '9869366550', 'I2016CM100', 2016, 'Computer', 12880, 8, 'FINAL', 'BE4', 'B'),
(276, 14, 'GHARPURE YOUSHA SAMIR', 'yousha.gharpure@sakec.ac.in', '8369989336', '9819530730', 'C2018CM104', 2018, 'Computer', 14396, 4, 'SECOND', 'SE4', 'A'),
(493, 6, 'GHATALIA DAISHIK KAUSHIK', 'daishik.ghatalia@sakec.ac.in', '9619333938', '9819586828', 'I2018CM-D2', 2018, 'Computer', 14898, 6, 'THIRD', 'TED', 'A'),
(595, 53, 'GHATE RAJ AVINASH', 'raj.ghate@sakec.ac.in', '9757026695', '9969463216', 'C2016CM106', 2016, 'Computer', 13061, 8, 'FINAL', 'BE3', 'C'),
(533, 46, 'GHELANI PRANAV SUDHIR', 'pranav.ghelani@sakec.ac.in', '8983750600', '8999105695', 'M2018CM-D2', 2018, 'Computer', 14751, 6, 'THIRD', 'TED', 'D'),
(712, 26, 'GHELANI RAHUL MANISH', 'rahul.ghelani@sakec.ac.in', '9987274766', '8080538124', 'M2017CM-D2', 2017, 'Computer', 14228, 8, 'FINAL', 'BED', 'B'),
(357, 25, 'GITE KARAN BHAGWAN', 'karan.gite@sakec.ac.in', '9702377477', '9702292929', 'C2017CM104', 2017, 'Computer', 13769, 6, 'THIRD', 'TE3', 'B'),
(619, 6, 'GITE PARTH JAYDEEP', 'parth.gite@sakec.ac.in', '8879244992', '9869441801', 'G2016CM111', 2016, 'Computer', 13282, 8, 'FINAL', 'BE4', 'A'),
(534, 47, 'GOGARI VRUSHAL KIRTIKUMAR', 'vrushal.gogari@sakec.ac.in', '8097155532', '9819591274', 'M2018CM-D2', 2018, 'Computer', 14716, 6, 'THIRD', 'TED', 'D'),
(553, 11, 'GOGRI KUSHAL TUSHAR', 'kushal.gogri@sakec.ac.in', '9920922557', '9821170001', 'C2016CM109', 2016, 'Computer', 13171, 8, 'FINAL', 'BE3', 'A'),
(277, 15, 'GOHIL KRISHNA MAHESH', 'krishna.gohil@sakec.ac.in', '8097019510', '9619635046', 'M2018CM106', 2018, 'Computer', 14455, 4, 'SECOND', 'SE4', 'A'),
(358, 26, 'GOKHALE MANAS YOGESH', 'manas.gokhale@sakec.ac.in', '9757020544', '9869349515', 'G2017CM100', 2017, 'Computer', 13601, 6, 'THIRD', 'TE3', 'B'),
(170, 55, 'GONDANE GAURAV RAKESH MADHAVI', 'gaurav.gondane_19@sakec.ac.in', '9930734756', '9920448041', 'G2019CM115', 2019, 'Computer', 15301, 2, 'FIRST', 'FE9', 'C'),
(74, 13, 'GORI ABHAY SURESH NITA', 'abhay.gori_19@sakec.ac.in', '9167193240', '8097612947', 'C2019CM102', 2019, 'Computer', 14971, 2, 'FIRST', 'FE4', 'A'),
(596, 54, 'GORKHA ALISHAA PREMSINGH', 'alishaa.gorkha@sakec.ac.in', '9820318108', '9820318108', 'G2016CM111', 2016, 'Computer', 13264, 8, 'FINAL', 'BE3', 'C'),
(652, 39, 'GOSAIN ANGAD ANIL', 'angad.gosain@sakec.ac.in', '9833745783', '9820502343', 'G2016CM110', 2016, 'Computer', 13257, 8, 'FINAL', 'BE4', 'C'),
(554, 12, 'GOSALIA JAY DILIP', 'jay.gosalia@sakec.ac.in', '8286565208', '9022334559', 'M2016CM108', 2016, 'Computer', 13152, 8, 'FINAL', 'BE3', 'A'),
(359, 27, 'GOSALIA NEVIELE', '', '', '', '', 2016, 'Computer', 0, 6, 'THIRD', 'TE3', 'B'),
(45, 59, 'GOSAVI JANHAVI NILKANTH POOJA', 'janhavi.gosavi_19@sakec.ac.in', '9082139583', '9223408004', 'G2019CM113', 2019, 'Computer', 15276, 2, 'FIRST', 'FE3', 'C'),
(278, 16, 'GUND SHALIN SANJAY', 'shalin.gund@sakec.ac.in', '9699536826', '9820189713', 'G2018CM110', 2018, 'Computer', 14649, 4, 'SECOND', 'SE4', 'A'),
(139, 13, 'GUNJAL GAURAV POPAT RATAN', 'gaurav.gunjal_19@sakec.ac.in', '8169852662', '8779081005', 'C2019CM102', 2019, 'Computer', 14969, 2, 'FIRST', 'FE9', 'A'),
(360, 28, 'GUPTA GRISHMA DILIP', 'grishma.gupta@sakec.ac.in', '8879434781', '9619796882', 'C2018CM200', 2018, 'Computer', 14714, 6, 'THIRD', 'TE3', 'B'),
(361, 29, 'GUPTA KSHITIJ SANTOSH', 'kshitij.gupta@sakec.ac.in', '7738300281', '9821361819', 'C2017CM105', 2017, 'Computer', 13784, 6, 'THIRD', 'TE3', 'B'),
(187, 72, 'GUPTA MANISH SANJAY MINTO', 'manish.gupta_19@sakec.ac.in', '8169010828', '9022729008', 'G2019CM117', 2019, 'Computer', 15371, 2, 'FIRST', 'FE9', 'C'),
(362, 30, 'GUPTA NEERAJ SUNILKANT', 'neeraj.gupta@sakec.ac.in', '8779584544', '8779584544', 'G2017CM110', 2017, 'Computer', 14012, 6, 'THIRD', 'TE3', 'B'),
(201, 12, 'GUPTA SATYAM SUBHASH', 'satyam.gupta@sakec.ac.in', '9702866020', '9869324451', 'C2018CM106', 2018, 'Computer', 14475, 4, 'SECOND', 'SE3', 'A'),
(713, 27, 'GUPTE YASH ROHIT', 'yash.gupte@sakec.ac.in', '9833320568', '9821163423', 'M2017CM-D2', 2017, 'Computer', 14113, 8, 'FINAL', 'BED', 'B'),
(714, 28, 'HABIBKAR SHRUTI MOHAN', 'shruti.habibkar@sakec.ac.in', '9004714472', '9892804836', 'C2017CM-D2', 2017, 'Computer', 14120, 8, 'FINAL', 'BED', 'B'),
(279, 17, 'HARDE KANISHK NAYSAR', 'kanishk.harde@sakec.ac.in', '9821241040', '9821241040', 'M2018CM103', 2018, 'Computer', 14352, 4, 'SECOND', 'SE4', 'A'),
(653, 40, 'HARIA BHAVYA KIRTI', 'bhavya.haria@sakec.ac.in', '9619305482', '9819177906', 'M2016CM109', 2016, 'Computer', 13166, 8, 'FINAL', 'BE4', 'C'),
(674, 61, 'HASE SHUBHAM PRAKASH', 'shubham.hase@sakec.ac.in', '9594748698', '9773829822', 'C2017CM200', 2017, 'Computer', 14073, 8, 'FINAL', 'BE4', 'D'),
(535, 48, 'HATIM PARAG ANIL', 'parag.hatim@sakec.ac.in', '9967961168', '9619002377', 'C2018CM-D2', 2018, 'Computer', 14717, 6, 'THIRD', 'TED', 'D'),
(494, 7, 'HINGU MEET MANOJKUMAR', 'meet.hingu@sakec.ac.in', '7506551810', '9870551068', 'M2018CM-D2', 2018, 'Computer', 14726, 6, 'THIRD', 'TED', 'A'),
(202, 13, 'HOLE YOGESH SUDHAKAR', 'yogesh.hole@sakec.ac.in', '8657093183', '9167225343', 'C2018CM103', 2018, 'Computer', 14365, 4, 'SECOND', 'SE3', 'A'),
(280, 18, 'HUNDIA ANUJ ANIL', 'anuj.hundia@sakec.ac.in', '8080611169', '9869209993', 'I2018CM101', 2018, 'Computer', 14309, 4, 'SECOND', 'SE4', 'B'),
(363, 31, 'INGAVALE PRATIKSHA PRAKASH', 'pratiksha.ingavale@sakec.ac.in', '8655944767', '9221988178', 'G2017CM111', 2017, 'Computer', 14130, 6, 'THIRD', 'TE3', 'B'),
(75, 14, 'ITKEPELLIWAR ARYAN ANIL SANDHYA', 'aryan.itkepelliwar_19@sakec.ac.in', '8450948874', '9892552186', 'C2019CM107', 2019, 'Computer', 15092, 2, 'FIRST', 'FE4', 'A'),
(555, 13, 'JADHAV MRINALINI SURESH', 'mrinalini.jadhav@sakec.ac.in', '7678017675', '9869414745', 'C2016CM107', 2016, 'Computer', 13088, 8, 'FINAL', 'BE3', 'A'),
(620, 7, 'JADHAV PURNA ARUN', 'purna.jadhav@sakec.ac.in', '9867351738', '9892074057', 'I2016CM106', 2016, 'Computer', 13067, 8, 'FINAL', 'BE4', 'A'),
(140, 14, 'JADHAV SAKSHI BHIVAJI SANGITA', 'sakshi.jadhav_19@sakec.ac.in', '8421711899', '9730291754', 'C2019CM105', 2019, 'Computer', 15049, 2, 'FIRST', 'FE9', 'A'),
(179, 64, 'JADHAV SEJAL MAHENDRA SWATI', 'sejal.jadhav_19@sakec.ac.in', '9769856837', '9769856837', 'G2019CM115', 2019, 'Computer', 15305, 2, 'FIRST', 'FE9', 'C'),
(203, 14, 'JADHAV SHARVIL NAYAN', 'sharvil.jadhav@sakec.ac.in', '9920808212', '9869685727', 'I2018CM101', 2018, 'Computer', 14316, 4, 'SECOND', 'SE3', 'A'),
(12, 15, 'JADHAV SHIVAM ANIL ANITA', 'shivam.jadhav_19@sakec.ac.in', '9323589437', '9323589437', 'C2019CM105', 2019, 'Computer', 15052, 2, 'FIRST', 'FE3', 'A'),
(364, 32, 'JADHAV VIGNESH AVINASH', 'vignesh.jadhav@sakec.ac.in', '8082580166', '9967252175', 'C2017CM103', 2017, 'Computer', 13673, 6, 'THIRD', 'TE3', 'B'),
(281, 19, 'JAGANI UGAM DHIREN', 'ugam.jagani@sakec.ac.in', '9833940829', '9324648294', 'M2018CM104', 2018, 'Computer', 14414, 4, 'SECOND', 'SE4', 'B'),
(427, 14, 'JAGTAP KARUNA ADINATH', 'karuna.jagtap@sakec.ac.in', '9892272449', '9892272449', 'C2017CM103', 2017, 'Computer', 13684, 6, 'THIRD', 'TE4', 'A'),
(365, 33, 'JAIN AAKASH VIKAS', 'aakash.jain@sakec.ac.in', '7666684222', '9819755066', 'G2017CM109', 2017, 'Computer', 13983, 6, 'THIRD', 'TE3', 'B'),
(141, 15, 'JAIN ADITYA FATEHLAL BHARATI', 'aditya.jain_19@sakec.ac.in', '7715931200', '9757290407', 'M2019CM110', 2019, 'Computer', 15197, 2, 'FIRST', 'FE9', 'A'),
(282, 20, 'JAIN CHIRAG ADESHWAR', 'chirag.jain@sakec.ac.in', '8097326574', '9833862601', '', 2018, 'Computer', 14668, 4, 'SECOND', 'SE4', 'B'),
(13, 16, 'JAIN DHRUV LALIT ANJU', 'dhruv.jain_19@sakec.ac.in', '9076046647', '9322442859', 'M2019CM106', 2019, 'Computer', 15060, 2, 'FIRST', 'FE3', 'A'),
(250, 61, 'JAIN DHRUVI', '', '', '', '', 2018, 'COMPUTER', 0, 4, 'SECOND', 'SE3', 'D'),
(428, 15, 'JAIN DHRUVI NIKESH', 'dhruvi.jain@sakec.ac.in', '9819886760', '9323195363', 'M2017CM106', 2017, 'Computer', 13867, 6, 'THIRD', 'TE4', 'A'),
(174, 59, 'JAIN DIVYA AJAY SHEETAL', 'divya.jain_19@sakec.ac.in', '8087288112', '9422060027', 'G2019CM116', 2019, 'Computer', 15334, 2, 'FIRST', 'FE9', 'C'),
(429, 16, 'JAIN HARSH JITENDRA', 'harsh.jain@sakec.ac.in', '9168508888', '9422494241', 'I2017CM107', 2017, 'Computer', 13904, 6, 'THIRD', 'TE4', 'A'),
(204, 15, 'JAIN HENIL JITENDRA', 'henil.jain@sakec.ac.in', '9820355361', '9029336160', 'I2018CM101', 2018, 'Computer', 14311, 4, 'SECOND', 'SE3', 'A'),
(556, 14, 'JAIN JEVIN VINOD', 'jevin.jain@sakec.ac.in', '9757420721', '9821746551', 'M2016CM103', 2016, 'Computer', 12947, 8, 'FINAL', 'BE3', 'A'),
(634, 21, 'JAIN JINIT NARESH', 'jinit.jain@sakec.ac.in', '9619820015', '9892836001', 'M2015CM102', 2016, 'Computer', 12169, 8, 'FINAL', 'BE4', 'B'),
(366, 34, 'JAIN KAMLESH BAGADILAL', 'kamlesh.jain@sakec.ac.in', '7021838326', '9920437725', 'M2017CM105', 2017, 'Computer', 13807, 6, 'THIRD', 'TE3', 'B'),
(430, 17, 'JAIN KARTIK VIKRAM', 'kartik.jain@sakec.ac.in', '8268585734', '8828508969', 'M2017CM102', 2017, 'Computer', 13666, 6, 'THIRD', 'TE4', 'A'),
(111, 61, 'JAIN KHUSHI RAVINDRA VANITA', 'khushi.jain_19@sakec.ac.in', '8291746303', '9769214477', 'G2019CM114', 2019, 'Computer', 15287, 2, 'FIRST', 'FE4', 'C'),
(557, 15, 'JAIN MITHIL KAMLESH', 'mithil.jain@sakec.ac.in', '9619020626', '9322348742', 'C2016CM102', 2016, 'Computer', 12935, 8, 'FINAL', 'BE3', 'A'),
(142, 16, 'JAIN NATASHA BHARAT CHANCHAL', 'natasha.jain_19@sakec.ac.in', '8928969192', '9930585776', 'C2019CM111', 2019, 'Computer', 15223, 2, 'FIRST', 'FE9', 'A'),
(116, 66, 'JAIN PAKSHAL BHAIRAV RANJITA', 'pakshal.jain_19@sakec.ac.in', '9657288703', '9921412964', 'G2019CM115', 2019, 'Computer', 15300, 2, 'FIRST', 'FE4', 'C'),
(367, 35, 'JAIN PALASH SUNIL', 'palash.jain@sakec.ac.in', '9820479082', '9820479082', 'M2018CM201', 2018, 'Computer', 14790, 6, 'THIRD', 'TE3', 'B'),
(675, 62, 'JAIN PREET KISHOR', 'preet.jain@sakec.ac.in', '9768593303', '9324553831', 'G2016CM111', 2016, 'Computer', 13267, 8, 'FINAL', 'BE4', 'D'),
(431, 18, 'JAIN RUCHIR SANJAY', 'ruchir.jain@sakec.ac.in', '9702903548', '9892805977', 'G2017CM111', 2017, 'Computer', 14262, 6, 'THIRD', 'TE4', 'A'),
(676, 63, 'JAIN SAMISHT DILIP', 'samisht.jain@sakec.ac.in', '8879530490', '9820571080', 'C2017CM200', 2017, 'Computer', 14135, 8, 'FINAL', 'BE4', 'D'),
(368, 36, 'JAIN SHUBHAMKUMAR PRAKASH', 'shubhamkumar.jain@sakec.ac.in', '9819973322', '9819973322', 'M2017CM103', 2017, 'Computer', 13672, 6, 'THIRD', 'TE3', 'B'),
(283, 21, 'JAIN TULIKA VIKAS', 'tulika.jain@sakec.ac.in', '9967292094', '9819712419', 'I2018CM100', 2018, 'Computer', 14296, 4, 'SECOND', 'SE4', 'B'),
(432, 19, 'JAIN VAIBHAV YASHWANT JAIN', 'vaibhav.jain@sakec.ac.in', '7715973339', '9224203745', 'M2017CM106', 2017, 'Computer', 13856, 6, 'THIRD', 'TE4', 'B'),
(121, 71, 'JAISWAL PRATHAM PARASRAM ANITA', 'pratham.jaiswal_19@sakec.ac.in', '8850505560', '8104092055', 'G2019CM117', 2019, 'Computer', 15370, 2, 'FIRST', 'FE4', 'C'),
(76, 17, 'JAKASANIYA DISHA DINESH USHA', 'disha.jakasaniya_19@sakec.ac.in', '9867271236', '9967838195', 'M2019CM106', 2019, 'Computer', 15081, 2, 'FIRST', 'FE4', 'A'),
(597, 55, 'JAKHARIYA RIYA JAYESH', 'riya.jakhariya@sakec.ac.in', '8485899046', '9960926246', 'M2016CM110', 2016, 'Computer', 13206, 8, 'FINAL', 'BE3', 'D'),
(495, 8, 'JANI RAJ BIPIN', 'raj.jani@sakec.ac.in', '9920800898', '9820957676', 'M2018CM-D2', 2018, 'Computer', 14865, 6, 'THIRD', 'TED', 'A'),
(677, 64, 'JARIWALA DHAVAL MAYUR', 'dhaval.jariwala@sakec.ac.in', '7506456894', '9820450840', 'M2017CM200', 2016, 'Computer', 14143, 8, 'FINAL', 'BE4', 'D'),
(143, 17, 'JAWALE KAUSTUBH AMBADAS MANJUSHA', 'kaustubh.jawale_19@sakec.ac.in', '8806072325', '8552867249', 'C2019CM109', 2019, 'Computer', 15178, 2, 'FIRST', 'FE9', 'A'),
(284, 22, 'JHAWAR TANAY NAVNEET', 'tanay.jhawar@sakec.ac.in', '9004325055', '9967024423', 'M2018CM104', 2018, 'Computer', 14404, 4, 'SECOND', 'SE4', 'B'),
(205, 16, 'JINDAL SIMRAN SANJAY', 'simran.jindal@sakec.ac.in', '9322768062', '9322768062', 'C2018CM107', 2018, 'Computer', 14498, 4, 'SECOND', 'SE3', 'A'),
(14, 18, 'JOBANPUTRA JHANVI VISHAL SHWETA', 'jhanvi.jobanputra_19@sakec.ac.in', '9833439759', '9821895497', 'M2019CM108', 2019, 'Computer', 15132, 2, 'FIRST', 'FE3', 'A'),
(77, 18, 'JOSHI AAYUSH SADASHIV VAISHALI', 'aayush.joshi_19@sakec.ac.in', '8698563259', '8698563259', 'C2019CM107', 2019, 'Computer', 15125, 2, 'FIRST', 'FE4', 'A'),
(496, 9, 'JOSHI BHAVARTH PIYUSH', 'bhavarth.joshi@sakec.ac.in', '9920838649', '8779490930', 'M2018CM-D2', 2018, 'Computer', 14767, 6, 'THIRD', 'TED', 'A'),
(369, 37, 'JOSHI ISHITA DEEPAK', 'ishita.joshi@sakec.ac.in', '9004079233', '7208013972', 'M2018CM201', 2018, 'Computer', 14795, 6, 'THIRD', 'TE3', 'B'),
(433, 20, 'JOSHI KRISHNA SANTOSH', 'krishna.joshi@sakec.ac.in', '9619824593', '7045342930', 'G2017CM111', 2017, 'Computer', 14045, 6, 'THIRD', 'TE4', 'B'),
(691, 5, 'JOSHI RISHI JAY', 'rishi.joshi@sakec.ac.in', '8692935197', '9987373249', 'M2017CM-D2', 2017, 'Computer', 14133, 8, 'FINAL', 'BED', 'A'),
(370, 38, 'JUIKAR ATHARVA', '', '', '', '', 2016, 'Computer', 0, 6, 'THIRD', 'TE3', 'B'),
(123, 73, 'JULKA VISHAB BRIJMOHAN SONIA', 'vishab.julka_19@sakec.ac.in', '9082271688', '9322075754', 'G2019CM118', 2019, 'Computer', 15385, 2, 'FIRST', 'FE4', 'C'),
(184, 69, 'JUTLO ARYAN ANAND ASHWINI', 'aryan.jutlo_19@sakec.ac.in', '9022055089', '9769201020', 'G2019CM116', 2019, 'Computer', 15366, 2, 'FIRST', 'FE9', 'C'),
(285, 23, 'KACHAVE YASH AVINASH', 'yash.kachave@sakec.ac.in', '7083707000', '9422286513', 'G2018CM111', 2018, 'Computer', 14677, 4, 'SECOND', 'SE4', 'B'),
(536, 49, 'KADAKIA DEEP ASHWIN', 'deep.kadakia@sakec.ac.in', '8080846158', '9892601197', 'M2018CM-D2', 2018, 'Computer', 14778, 6, 'THIRD', 'TED', 'D'),
(48, 62, 'KADAM NEERAJAA GHANASHAM SANGEET', 'neerajaa.kadam_19@sakec.ac.in', '9619516973', '9619516973', 'G2019CM114', 2019, 'Computer', 15288, 2, 'FIRST', 'FE3', 'C'),
(371, 39, 'KADAM SARVESH SUNIL', 'sarvesh.kadam@sakec.ac.in', '8268576589', '9870818009', 'I2017CM100', 2017, 'Computer', 13594, 6, 'THIRD', 'TE3', 'B'),
(372, 40, 'KADAM SIDDHI VAIBHAV', 'siddhi.kadam@sakec.ac.in', '8108898138', '9892003544', 'G2017CM109', 2017, 'Computer', 13980, 6, 'THIRD', 'TE3', 'B'),
(434, 21, 'KAKADE SHIVALI NITIN', 'shivali.kakade@sakec.ac.in', '9833486475', '9833486475', 'G2017CM110', 2017, 'Computer', 14016, 6, 'THIRD', 'TE4', 'B'),
(635, 22, 'KAMATE AMEY MARUTI', 'amey.kamate@sakec.ac.in', '9768865228', '9870009373', 'C2016CM106', 2016, 'Computer', 13060, 8, 'FINAL', 'BE4', 'B'),
(144, 18, 'KAMATH PRATIKA MURALIDHAR MAMTA', 'pratika.kamath_19@sakec.ac.in', '7900150663', '9421628059', 'C2019CM103', 2019, 'Computer', 14973, 2, 'FIRST', 'FE9', 'A'),
(537, 50, 'KAMBLE PRASHEEK SHAILESH', 'prasheek.kamble@sakec.ac.in', '9967495110', '9920791594', 'C2018CM-D2', 2018, 'Computer', 14708, 6, 'THIRD', 'TED', 'D'),
(497, 10, 'KANABAR PRATUESH PRAVIN', 'pratuesh.kanabar@sakec.ac.in', '8433579719', '9324405177', 'M2018CM-D2', 2018, 'Computer', 14828, 6, 'THIRD', 'TED', 'A'),
(715, 29, 'KANAR RAHUL RATAN', 'rahul.kanar@sakec.ac.in', '9833781505', '9167031445', 'M2016CM-D2', 2017, 'Computer', 13400, 8, 'FINAL', 'BED', 'B'),
(373, 41, 'KANTEKAR NIDHI KEWAL', 'nidhi.kantekar@sakec.ac.in', '9869075021', '9869005020', 'C2017CM103', 2017, 'Computer', 13680, 6, 'THIRD', 'TE3', 'C'),
(15, 19, 'KANTHARIA MAYANK ANIL ARUNA', 'mayank.kantharia_19@sakec.ac.in', '9167286675', '9820050045', 'M2019CM108', 2019, 'Computer', 15143, 2, 'FIRST', 'FE3', 'A'),
(78, 19, 'KAPADNIS ABHAY ASHOK ARCHANA', 'abhay.kapadnis_19@sakec.ac.in', '8355835381', '9821600426', 'C2019CM105', 2019, 'Computer', 15057, 2, 'FIRST', 'FE4', 'A'),
(435, 22, 'KARANGUTKAR VIRAJ KIRAN', 'viraj.karangutkar@sakec.ac.in', '9833773957', '9833773952', 'C2017CM105', 2017, 'Computer', 13787, 6, 'THIRD', 'TE4', 'B'),
(374, 42, 'KARANI BHAVYA VIJAY', 'bhavya.karani@sakec.ac.in', '9833028428', '9930492828', 'M2017CM104', 2017, 'Computer', 13771, 6, 'THIRD', 'TE3', 'C'),
(206, 17, 'KARANI MANAN RAJESH', 'manan.karani@sakec.ac.in', '7021956350', '9324659055', 'I2018CM103', 2018, 'Computer', 14351, 4, 'SECOND', 'SE3', 'A'),
(286, 24, 'KARANIA ADARSH BHAVIN', 'adarsh.karania@sakec.ac.in', '7045055656', '9769306110', 'I2018CM111', 2018, 'Computer', 14713, 4, 'SECOND', 'SE4', 'B'),
(47, 61, 'KARIA DEVANSH MUKESH VIJAYA', 'devansh.karia_19@sakec.ac.in', '9082140058', '9820970629', 'G2019CM113', 2019, 'Computer', 15286, 2, 'FIRST', 'FE3', 'C'),
(436, 23, 'KARIA PREET KISHOR', 'preet.karia@sakec.ac.in', '9867223177', '9892944090', 'C2017CM107', 2017, 'Computer', 13878, 6, 'THIRD', 'TE4', 'B'),
(558, 16, 'KARIA VRUSHAB RAMESH', 'vrushab.karia@sakec.ac.in', '9768870963', '9867265913', 'M2016CM105', 2016, 'Computer', 13012, 8, 'FINAL', 'BE3', 'A'),
(207, 18, 'KARIYA BHAVESH CHETAN', 'bhavesh.kariya@sakec.ac.in', '9320464101', '9322779843', 'G2018CM111', 2018, 'Computer', 14694, 4, 'SECOND', 'SE3', 'A'),
(145, 19, 'KAROLIA JAY DEEPAK PANNA', 'jay.karolia_19@sakec.ac.in', '9773302795', '9870414347', 'M2019CM106', 2019, 'Computer', 15065, 2, 'FIRST', 'FE9', 'A'),
(598, 56, 'KARPE VEDANT VILAS', 'vedant.karpe@sakec.ac.in', '7506309393', '9820307101', 'G2016CM112', 2016, 'Computer', 13303, 8, 'FINAL', 'BE3', 'D'),
(437, 24, 'KASULWAR OMKAR VIVEK', 'omkar.kasulwar@sakec.ac.in', '8433815770', '8108827736', 'C2018CM201', 2018, 'Computer', 14816, 6, 'THIRD', 'TE4', 'B'),
(375, 43, 'KATHAYAT PRANAY KISHAN SINGH', 'pranay.kathayat@sakec.ac.in', '9757447141', '9967540176', 'I2017CM101', 2017, 'Computer', 13617, 6, 'THIRD', 'TE3', 'C'),
(287, 25, 'KATRE PREM PRASHANT', 'prem.katre@sakec.ac.in', '8652605479', '9702058351', 'G2018CM110', 2018, 'Computer', 14651, 4, 'SECOND', 'SE4', 'B'),
(79, 20, 'KATUDIA PRIYAL MUKESH DEEPIKA', 'priyal.katudia_19@sakec.ac.in', '8082242218', '9870658876', 'M2019CM110', 2019, 'Computer', 15204, 2, 'FIRST', 'FE4', 'A'),
(208, 19, 'KAWLE CHINMAY SANJAY', 'chinmay.kawle@sakec.ac.in', '8879008944', '9821296513', 'G2018CM111', 2018, 'Computer', 14704, 4, 'SECOND', 'SE3', 'A'),
(63, 78, 'KERKAR ROHIT MANDAR PRAJAKTA', 'rohit.kerkar_19@sakec.ac.in', '7506375309', '982096886', 'G2019CM118', 2019, 'Computer', 15429, 2, 'FIRST', 'FE3', 'C'),
(678, 65, 'KHADAYATE KARAN YOGESH', 'karan.khadayate@sakec.ac.in', '9757438098', '9004828259', 'C2016CM104', 2016, 'Computer', 12966, 8, 'FINAL', 'BE4', 'D'),
(692, 6, 'KHAN AMINA AKHTAR', 'amina.khan@sakec.ac.in', '9022382097', '9869778051', 'C2017CM-D2', 2017, 'Computer', 14067, 8, 'FINAL', 'BED', 'A'),
(115, 65, 'KHAN KAIF NAFEES ZEENAT', 'kaif.khan_19@sakec.ac.in', '7400108295', '9619447073', 'G2019CM114', 2019, 'Computer', 15296, 2, 'FIRST', 'FE4', 'C'),
(80, 21, 'KHAN SANOBER FIROZ SHAKIRA', 'sanober.khan_19@sakec.ac.in', '9657475241', '0', 'C2019CM100', 2019, 'Computer', 14923, 2, 'FIRST', 'FE4', 'A'),
(57, 72, 'KHANDAGALE ANIKET KHANDU KALPANA', 'aniket.khandagale_19@sakec.ac.in', '9967294861', '9967264861', 'G2019CM117', 2019, 'Computer', 15372, 2, 'FIRST', 'FE3', 'C'),
(56, 71, 'KHANDE PRANJAL SANJAY KAMAL', 'pranjal.khande_19@sakec.ac.in', '9766428331', '9766428331', 'C2019CM112', 2019, 'Computer', 15243, 2, 'FIRST', 'FE3', 'C'),
(559, 17, 'KHANOLKAR AKSHAY SANJAY', 'akshay.khanolkar@sakec.ac.in', '7208319289', '9930211889', 'C2016CM105', 2016, 'Computer', 13040, 8, 'FINAL', 'BE3', 'A'),
(288, 26, 'KHANVILKAR SIDDHI SATISH', 'siddhi.khanvilkar@sakec.ac.in', '7066489068', '9404155120', 'C2018CM104', 2018, 'Computer', 14419, 4, 'SECOND', 'SE4', 'B'),
(438, 25, 'KHARA DHRUVISHA CHETAN', 'dhruvisha.khara@sakec.ac.in', '9920467928', '9820454928', 'I2017CM108', 2017, 'Computer', 13955, 6, 'THIRD', 'TE4', 'B'),
(178, 63, 'KHARATE BHAKTI PRASHANT VASANTI', 'bhakti.kharate_19@sakec.ac.in', '8451902871', '8451902871', 'G2019CM115', 2019, 'Computer', 15303, 2, 'FIRST', 'FE9', 'C'),
(249, 60, 'KHATRI PRACHI', '', '', '', '', 2018, 'COMPUTER', 0, 4, 'SECOND', 'SE3', 'D'),
(439, 26, 'KHIMESRA JENIL MAHENDRA', 'jenil.khimesra@sakec.ac.in', '9870299954', '9324729995', 'I2017CM101', 2017, 'Computer', 13611, 6, 'THIRD', 'TE4', 'B'),
(146, 21, 'KHIVASARA YASH RIKHAB SEEMA KHIV', 'yash.khivasara_19@sakec.ac.in', '7218031125', '9423400325', 'C2019CM111', 2019, 'Computer', 15227, 2, 'FIRST', 'FE9', 'A'),
(209, 20, 'KHOSLA JUPJYOT SINGH MANJEET SIN', 'jupjyotsingh.khosla@sakec.ac.in', '7738388287', '989254015', 'C2018CM106', 2018, 'Computer', 14456, 4, 'SECOND', 'SE3', 'B'),
(376, 44, 'KHOSLA YOGITA DEEPAK', 'yogita.khosla@sakec.ac.in', '9820106188', '9820106188', 'I2017CM101', 2017, 'Computer', 13626, 6, 'THIRD', 'TE3', 'C'),
(654, 41, 'KOCHHAR GAGANDEEP SINGH AKASHDEE', 'gagandeep.kochhar@sakec.ac.in', '9920925648', '9323101641', 'C2016CM106', 2016, 'Computer', 13046, 8, 'FINAL', 'BE4', 'C'),
(498, 11, 'KORE NEEDHI ATUL', 'needhi.kore@sakec.ac.in', '7506960265', '9594281516', 'C2018CM-D2', 2018, 'Computer', 14772, 6, 'THIRD', 'TED', 'A'),
(440, 27, 'KORLA SNEHA AJAY', 'sneha.korla@sakec.ac.in', '8097489703', '9892829461', 'G2017CM100', 2017, 'Computer', 13600, 6, 'THIRD', 'TE4', 'B'),
(499, 12, 'KOTAK AKASH VINIT', 'akash.kotak@sakec.ac.in', '9930443789', '9322211207', 'M2018CM-D2', 2018, 'Computer', 14693, 6, 'THIRD', 'TED', 'A'),
(621, 8, 'KOTAK NAITIK NANDKISHOR', 'naitik.kotak@sakec.ac.in', '9920703836', '9867958842', 'G2016CM111', 2016, 'Computer', 13275, 8, 'FINAL', 'BE4', 'A'),
(16, 22, 'KOTHARI BHAVYA ROHIT PRAMODINI', 'bhavya.kothari_19@sakec.ac.in', '7507993399', '9373596879', 'C2019CM109', 2019, 'Computer', 15164, 2, 'FIRST', 'FE3', 'A'),
(289, 27, 'KOTHARI CHIRAG MANSUKHLAL', 'chirag.kothari@sakec.ac.in', '9423945301', '9028340601', '', 2018, 'Computer', 14547, 4, 'SECOND', 'SE4', 'B'),
(538, 51, 'KOTHARI DWEEJ HITESH', 'dweej.kothari@sakec.ac.in', '9616726966', '9820047593', 'M2018CM-D2', 2018, 'Computer', 14798, 6, 'THIRD', 'TED', 'D'),
(210, 21, 'KOTHARI JAY KAMLESH', 'jay.kothari@sakec.ac.in', '9699857666', '9324888111', 'C2018CM105', 2018, 'Computer', 14437, 4, 'SECOND', 'SE3', 'B'),
(560, 18, 'KOTHARI PRAKRUTI RAJENDRA', 'prakruti.kothari@sakec.ac.in', '9970659094', '9326175409', 'C2016CM106', 2016, 'Computer', 13062, 8, 'FINAL', 'BE3', 'A'),
(211, 22, 'KOTHARI PUJAN NARENDRA', 'pujan.kothari@sakec.ac.in', '9987100111', '9819200111', 'G2018CM101', 2018, 'Computer', 14321, 4, 'SECOND', 'SE3', 'B'),
(290, 28, 'KOTHARI RISHABH SHRENIK', 'rishabh.kothari@sakec.ac.in', '7829774496', '9831061018', 'M2018CM104', 2018, 'Computer', 14381, 4, 'SECOND', 'SE4', 'B'),
(212, 23, 'KSHIRSAGAR KIRTI DEEPAK', 'kirti.kshirsagar@sakec.ac.in', '9967424526', '9967437740', 'I2018CM101', 2018, 'Computer', 14307, 4, 'SECOND', 'SE3', 'B'),
(81, 22, 'KUDTARKAR PRUTHA SUNIL SUNITA', 'prutha.kudtarkar_19@sakec.ac.in', '9168476517', '9421649712', 'C2019CM103', 2019, 'Computer', 14982, 2, 'FIRST', 'FE4', 'A'),
(147, 22, 'KULKARNI ISHA MAHESH NEETA', 'isha.kulkarni_19@sakec.ac.in', '8380883913', '9922433153', 'C2019CM112', 2019, 'Computer', 15229, 2, 'FIRST', 'FE9', 'A'),
(599, 57, 'KUMATH AYUSH RAJESH', 'ayush.kumath@sakec.ac.in', '7710991009', '9821580744', 'M2016CM106', 2016, 'Computer', 13068, 8, 'FINAL', 'BE3', 'D'),
(82, 23, 'KUMBHAR RUTUJA RAJESH VAISHALI', 'rutuja.kumbhar_19@sakec.ac.in', '9594424355', '9702880157', 'C2019CM103', 2019, 'Computer', 15001, 2, 'FIRST', 'FE4', 'A'),
(291, 29, 'KUNDLE SAKSHI VIVEKANAND', 'sakshi.kundle@sakec.ac.in', '9833945102', '9833945102', '', 2018, 'Computer', 14339, 4, 'SECOND', 'SE4', 'B'),
(148, 23, 'KURANI KASHYAP AJAY VARSHA', 'kashyap.kurani_19@sakec.ac.in', '8286200346', '8898855587', 'M2019CM107', 2019, 'Computer', 15118, 2, 'FIRST', 'FE9', 'A'),
(500, 13, 'KUTHADE SNEHA SURESH', 'sneha.kuthade@sakec.ac.in', '9987961219', '8082662009', 'C2018CM-D2', 2018, 'Computer', 14731, 6, 'THIRD', 'TED', 'A'),
(17, 24, 'KUTMUTIA DHWANI MANISH NEELAM', 'dhwani.kutmutia_19@sakec.ac.in', '9834629188', '9850540006', 'C2019CM106', 2019, 'Computer', 15087, 2, 'FIRST', 'FE3', 'A');
INSERT INTO `student_table2` (`std_id`, `std_roll_no`, `student_name`, `email`, `s_phone`, `p_phone`, `smart_card_no`, `admission_year`, `program`, `registration_no`, `semester`, `year`, `division`, `batch`) VALUES
(501, 14, 'LADAD PRAJEET BHUPENDRA', 'prajeet.ladad@sakec.ac.in', '8097859506', '8097550426', 'I2018CM-D2', 2018, 'Computer', 14887, 6, 'THIRD', 'TED', 'A'),
(83, 24, 'LAKHANI SPARSH RAMESH NIRALI', 'sparsh.lakhani_19@sakec.ac.in', '9920949759', '9820508585', 'M2019CM110', 2019, 'Computer', 15211, 2, 'FIRST', 'FE4', 'A'),
(213, 24, 'LAKHANI VEDANT SAMIR', 'vedant.lakhani@sakec.ac.in', '9619796198', '9821334219', 'G2018CM111', 2018, 'Computer', 14678, 4, 'SECOND', 'SE3', 'B'),
(441, 28, 'LALAN BHUMI BHARAT', 'bhumi.lalan@sakec.ac.in', '7021444815', '9172391414', 'C2018CM200', 2018, 'Computer', 14723, 6, 'THIRD', 'TE4', 'B'),
(50, 64, 'LALIHIANA JAGJOT SINGH TALVINDER', 'jagjotsingh.lalihiana_19@sakec.ac.in', '9987138116', '9892628189', 'G2019CM114', 2019, 'Computer', 15295, 2, 'FIRST', 'FE3', 'C'),
(600, 58, 'LALIHIANA PRABJOT SINGH TALVINDE', 'prabjot.lalihiana@sakec.ac.in', '7738867170', '9892628189', 'G2016CM101', 2016, 'Computer', 12894, 8, 'FINAL', 'BE3', 'D'),
(601, 59, 'LALIT LAKSHMANAN', 'lalit@sakec.ac.in', '9892713792', '9892713792', 'I2016CM100', 2016, 'Computer', 12882, 8, 'FINAL', 'BE3', 'D'),
(214, 25, 'LANDGE VAISHNAVE SURESH', 'vaishnave.landge@sakec.ac.in', '8425051861', '9867531440', 'G2018CM109', 2018, 'Computer', 14608, 4, 'SECOND', 'SE3', 'B'),
(442, 29, 'LAPSIYA YUKTA MITEN', 'yukta.lapsiya@sakec.ac.in', '9420110775', '9422771577', 'G2017CM112', 2017, 'Computer', 14281, 6, 'THIRD', 'TE4', 'B'),
(443, 30, 'LIMAYE PRASANNA PRALHAD', 'prasanna.limaye@sakec.ac.in', '8378956787', '9422429290', 'I2017CM100', 2017, 'Computer', 13592, 6, 'THIRD', 'TE4', 'B'),
(149, 24, 'LIMBACHIA YESHA RAKESH VAISHALI', 'yesha.limbachia_19@sakec.ac.in', '9082730293', '9869390868', 'M2019CM103', 2019, 'Computer', 14993, 2, 'FIRST', 'FE9', 'B'),
(562, 20, 'LODAYA KHUSHBOO HITEN', 'khushboo.lodaya@sakec.ac.in', '9769411010', '9892990264', 'G2016CM101', 2016, 'Computer', 12912, 8, 'FINAL', 'BE3', 'B'),
(716, 30, 'LOGADE SAGAR RAMESH', 'sagar.logade@sakec.ac.in', '7888252251', '7066737024', '', 2017, 'Computer', 14251, 8, 'FINAL', 'BED', 'B'),
(18, 25, 'LOKHANDWALA HUSAIN AKEEL JUMANA', 'husain.lokhandwala_19@sakec.ac.in', '8097371687', '9819886016', 'M2019CM112', 2019, 'Computer', 15239, 2, 'FIRST', 'FE3', 'A'),
(717, 31, 'LUVANI PARAS HARESH', 'paras.luvani@sakec.ac.in', '9699290770', '7758078887', 'M2017CM-D2', 2017, 'Computer', 14222, 8, 'FINAL', 'BED', 'B'),
(377, 45, 'MADKAIKAR KRUSHMI SANJAY', 'krushmi.madkaikar@sakec.ac.in', '9022023886', '9967515438', 'G2018CM202', 2018, 'Computer', 14901, 6, 'THIRD', 'TE3', 'C'),
(444, 31, 'MADLANI SALONI DEEPAK', 'saloni.madlani@sakec.ac.in', '9022669384', '9322257583', 'M2017CM106', 2017, 'Computer', 13858, 6, 'THIRD', 'TE4', 'B'),
(292, 30, 'MAHAJAN PRITAM SATISH', 'pritam.mahajan@sakec.ac.in', '7977598342', '9702240525', 'G2018CM110', 2018, 'Computer', 14661, 4, 'SECOND', 'SE4', 'B'),
(84, 25, 'MAHAJAN RITIK HEMANT VAISHALI', 'ritik.mahajan_19@sakec.ac.in', '8369504293', '8652507771', 'C2019CM108', 2019, 'Computer', 15137, 2, 'FIRST', 'FE4', 'A'),
(255, 66, 'MAKWANA PRANAV PARESH PURVI', 'pranav.makwana_19@sakec.ac.in', '9869830573', '9594048557', 'C2019CM200', 2019, 'Computer', 15338, 4, 'SECOND', 'SE3', 'D'),
(215, 26, 'MALAYE HARSH RAMESH', 'harsh.malaye@sakec.ac.in', '7666552818', '7021533197', '', 2018, 'Computer', 14639, 4, 'SECOND', 'SE3', 'B'),
(679, 66, 'MAMANIYA HIRAL PIYUSH', 'hiral.mamaniya@sakec.ac.in', '9022383388', '9819323388', 'M2017CM201', 2016, 'Computer', 14159, 8, 'FINAL', 'BE4', 'D'),
(293, 31, 'MANE SAHIL ASHOK', 'sahil.mane@sakec.ac.in', '9930022196', '9869010986', 'G2018CM111', 2018, 'Computer', 14712, 4, 'SECOND', 'SE4', 'B'),
(379, 47, 'MANEK RIYA AMIT', 'riya.manek@sakec.ac.in', '8828264831', '9819324107', 'G2017CM108', 2017, 'Computer', 13962, 6, 'THIRD', 'TE3', 'C'),
(378, 46, 'MANGE DHAVAL ASHOK', '', '', '', '', 2016, 'Computer', 0, 6, 'THIRD', 'TE3', 'C'),
(564, 22, 'MANKAR NINAD AVINASH', 'ninad.mankar@sakec.ac.in', '9987959512', '9920637029', 'C2017CM200', 2017, 'Computer', 14105, 8, 'FINAL', 'BE3', 'B'),
(150, 25, 'MARU KASHISH YOGESH DEEPA', 'kashish.maru_19@sakec.ac.in', '9323195868', '9867700481', 'M2019CM110', 2019, 'Computer', 15212, 2, 'FIRST', 'FE9', 'B'),
(19, 26, 'MARU VIDHISHA NARESH HANSA', 'vidhisha.maru_19@sakec.ac.in', '9833602370', '9769132124', 'M2019CM102', 2019, 'Computer', 14970, 2, 'FIRST', 'FE3', 'A'),
(294, 32, 'MATTA DAVLEEN KAUR RAM SINGH', 'davleenkaur.matta@sakec.ac.in', '9773496923', '9821784830', 'G2018CM112', 2018, 'Computer', 14782, 4, 'SECOND', 'SE4', 'B'),
(85, 26, 'MEHTA AAKASH JANAK HEMA', 'aakash.mehta_19@sakec.ac.in', '7977420717', '9820296669', 'M2019CM103', 2019, 'Computer', 14986, 2, 'FIRST', 'FE4', 'A'),
(151, 26, 'MEHTA AARYAN DHARMESH RUJITA', 'aaryan.mehta_19@sakec.ac.in', '9619099508', '9867151068', 'M2019CM105', 2019, 'Computer', 15033, 2, 'FIRST', 'FE9', 'B'),
(86, 27, 'MEHTA AKSHAT PARAS JESAL', 'akshat.mehta_19@sakec.ac.in', '9082609700', '9322277663', 'C2019CM107', 2019, 'Computer', 15108, 2, 'FIRST', 'FE4', 'B'),
(718, 32, 'MEHTA BHUMIL HEMANT', 'bhumil.mehta@sakec.ac.in', '9699194505', '9769439306', 'M2017CM-D2', 2017, 'Computer', 14117, 8, 'FINAL', 'BED', 'B'),
(502, 15, 'MEHTA CHINTAN PARASBHAI', 'chintan.mehta@sakec.ac.in', '7045871658', '8469937720', 'C2018CM-D2', 2018, 'Computer', 14811, 6, 'THIRD', 'TED', 'B'),
(563, 21, 'MEHTA DEEP NILESH', 'deep.mehta@sakec.ac.in', '9870000393', '9833115773', 'M2016CM107', 2016, 'Computer', 13070, 8, 'FINAL', 'BE3', 'B'),
(295, 33, 'MEHTA DEEP VIRAL', 'deep.mehta@sakec.ac.in', '9664064022', '8779925572', 'I2018CM109', 2018, 'Computer', 14593, 4, 'SECOND', 'SE4', 'B'),
(55, 70, 'MEHTA DEVANSHI RAJESH MAMTA', 'devanshi.mehta_19@sakec.ac.in', '9930768313', '9833421511', 'M2019CM112', 2019, 'Computer', 15244, 2, 'FIRST', 'FE3', 'C'),
(565, 23, 'MEHTA DHARMI MANISH', 'dharmi.mehta@sakec.ac.in', '9702889956', '9324456063', 'M2016CM108', 2016, 'Computer', 13118, 8, 'FINAL', 'BE3', 'B'),
(296, 34, 'MEHTA JASHIL PRAGNESH', 'jashil.mehta@sakec.ac.in', '9769804056', '9821607813', 'M2018CM105', 2018, 'Computer', 14424, 4, 'SECOND', 'SE4', 'B'),
(693, 7, 'MEHTA MONIL DARSHAN', 'monil.mehta@sakec.ac.in', '9619128529', '9833006901', 'M2017CM-D2', 2017, 'Computer', 14093, 8, 'FINAL', 'BED', 'A'),
(20, 28, 'MEHTA PARAS YOGESH TRUPTI', 'paras.mehta_19@sakec.ac.in', '8689837742', '9821992550', 'M2019CM100', 2019, 'Computer', 14922, 2, 'FIRST', 'FE3', 'A'),
(297, 35, 'MEHTA PRATHAM SANJAY', 'pratham.mehta@sakec.ac.in', '9819001133', '9820934803', 'G2018CM112', 2018, 'Computer', 14715, 4, 'SECOND', 'SE4', 'C'),
(380, 48, 'MEHTA SHIVANI RAKESH', 'shivani.mehta@sakec.ac.in', '9833123044', '9833123499', 'G2017CM112', 2017, 'Computer', 14265, 6, 'THIRD', 'TE3', 'C'),
(503, 16, 'MEHTA SOHAM MANISH', 'soham.mehta@sakec.ac.in', '9833185329', '9370007424', 'M2018CM-D2', 2018, 'Computer', 14818, 6, 'THIRD', 'TED', 'B'),
(152, 28, 'MEHTA VIRAJ VAIBHAV DARSHANA', 'viraj.mehta_19@sakec.ac.in', '8879843934', '9324048293', 'M2019CM100', 2019, 'Computer', 14905, 2, 'FIRST', 'FE9', 'B'),
(445, 32, 'MHAPSEKAR UTSAVI VIJAY', 'utsavi.mhapsekar@sakec.ac.in', '9221084373', '9869009646', 'I2017CM106', 2017, 'Computer', 13839, 6, 'THIRD', 'TE4', 'B'),
(21, 29, 'MHETRE MOHIT VIJAY MANJIRI', 'mohit.mhetre_19@sakec.ac.in', '8976633430', '9869750344', 'C2019CM105', 2019, 'Computer', 15054, 2, 'FIRST', 'FE3', 'A'),
(446, 33, 'MISAR SHUBHAM SANJAY', 'shubham.misar@sakec.ac.in', '9604582542', '7350372510', 'C2017CM105', 2017, 'Computer', 13790, 6, 'THIRD', 'TE4', 'B'),
(655, 42, 'MISHRA AKASHKUMAR RAKESH', 'akashkumar.mishra@sakec.ac.in', '9702012264', '8286014383', 'C2016CM103', 2016, 'Computer', 12958, 8, 'FINAL', 'BE4', 'C'),
(504, 17, 'MISHRA DIPESH KAILASHNATH', 'dipesh.mishra@sakec.ac.in', '8652436607', '9004442758', 'C2018CM-D2', 2018, 'Computer', 14852, 6, 'THIRD', 'TED', 'B'),
(447, 34, 'MISHRA SHUBHAM OMPRAKASH', 'shubham.mishra@sakec.ac.in', '9594840138', '9969777088', '', 2017, 'Computer', 14041, 6, 'THIRD', 'TE4', 'B'),
(622, 9, 'MODI DHEER JAYDEEP', 'dheer.modi@sakec.ac.in', '9821087325', '9.20E+11', 'M2016CM104', 2016, 'Computer', 12989, 8, 'FINAL', 'BE4', 'A'),
(505, 18, 'MODI UNNATI NITIN', 'unnati.modi@sakec.ac.in', '9869914326', '7045033828', 'C2018CM-D2', 2018, 'Computer', 14724, 6, 'THIRD', 'TED', 'B'),
(602, 60, 'MODI VIRAJ HITESH', 'viraj.modi@sakec.ac.in', '9323060455', '8080194197', 'M2016CM109', 2016, 'Computer', 13195, 8, 'FINAL', 'BE3', 'D'),
(216, 27, 'MOMAYA DEEP HEMANT', 'deep.momaya@sakec.ac.in', '9769077522', '9819018143', 'G2018CM101', 2018, 'Computer', 14322, 4, 'SECOND', 'SE3', 'B'),
(694, 8, 'MOMIN ANAS RAFIQUE', 'anas.momin@sakec.ac.in', '8879422798', '9702140359', 'C2017CM-D2', 2017, 'Computer', 14083, 8, 'FINAL', 'BED', 'A'),
(217, 28, 'MORE DEVESH VISHWANATH', 'devesh.more@sakec.ac.in', '9987216627', '9987216627', 'C2018CM101', 2018, 'Computer', 14320, 4, 'SECOND', 'SE3', 'B'),
(506, 19, 'MORE SANKET SURESH', 'sanket.more@sakec.ac.in', '8879404987', '9819882456', 'I2018CM-D2', 2018, 'Computer', 14891, 6, 'THIRD', 'TED', 'B'),
(381, 49, 'MORE ULKESH', '', '', '', '', 2016, 'Computer', 0, 6, 'THIRD', 'TE3', 'C'),
(382, 50, 'MOTA PARTH PIYUSH', 'parth.mota@sakec.ac.in', '9833550288', '9223587702', '', 2018, 'Computer', 14776, 6, 'THIRD', 'TE3', 'C'),
(566, 24, 'MOTA SAURABH SIDDHARTH', 'saurabh.mota@sakec.ac.in', '9619258158', '9820148422', 'M2016CM104', 2016, 'Computer', 12971, 8, 'FINAL', 'BE3', 'B'),
(695, 9, 'MUGDUM OMKAR MAHAVIR', 'omkar.mugdum@sakec.ac.in', '9594105832', '9920428881', 'C2017CM-D2', 2017, 'Computer', 14189, 8, 'FINAL', 'BED', 'A'),
(656, 43, 'MULLA NUMER FAZAL', 'numer.mulla@sakec.ac.in', '8286098299', '9969075148', 'C2017CM201', 2016, 'Computer', 14187, 8, 'FINAL', 'BE4', 'C'),
(298, 36, 'MUNDHE PARTH SACHIN', 'parth.mundhe@sakec.ac.in', '9987590110', '8655573600', 'C2018CM106', 2018, 'Computer', 14464, 4, 'SECOND', 'SE4', 'C'),
(87, 30, 'NADAR BALA ABHISHEK VIJAYAN NADA', 'balaabhishek.nadar_19@sakec.ac.in', '9819778312', '9892007290', 'C2019CM101', 2019, 'Computer', 14931, 2, 'FIRST', 'FE4', 'B'),
(172, 57, 'NADAR SAKTHISH JAYAKUMAR SARASWA', 'sakthish.nadar_19@sakec.ac.in', '9321876273', '9321876273', 'G2019CM116', 2019, 'Computer', 15328, 2, 'FIRST', 'FE9', 'C'),
(61, 76, 'NAGAONKAR ARADHYA HEMANT VIBHAVA', 'aradhya.nagaonkar_19@sakec.ac.in', '8108778109', '8691989990', 'G2019CM118', 2019, 'Computer', 15401, 2, 'FIRST', 'FE3', 'C'),
(218, 29, 'NAGDA HET RAJESH', 'het.nagda@sakec.ac.in', '8652220721', '9869606934', 'M2018CM104', 2018, 'Computer', 14398, 4, 'SECOND', 'SE3', 'B'),
(219, 30, 'NAIK AJINKYA AJAY', 'ajinkya.naik@sakec.ac.in', '9833817364', '9869427564', 'G2018CM103', 2018, 'Computer', 14347, 4, 'SECOND', 'SE3', 'B'),
(383, 51, 'NAIK DEEPESH PURUSHOTTAM', 'deepesh.naik@sakec.ac.in', '8454851871', '9869369012', 'G2017CM111', 2017, 'Computer', 14058, 6, 'THIRD', 'TE3', 'C'),
(299, 37, 'NAIK MANJUNATH ARUN', 'manjunath.naik@sakec.ac.in', '9322289496', '9930306086', 'C2018CM107', 2018, 'Computer', 14482, 4, 'SECOND', 'SE4', 'C'),
(127, 77, 'NAIK PRATIK YATIN SHRUTI', 'pratik.naik_19@sakec.ac.in', '7977295818', '8108139911', 'G2019CM118', 2019, 'Computer', 15425, 2, 'FIRST', 'FE4', 'C'),
(507, 20, 'NANDU DEEP DILIP', 'deep.nandu@sakec.ac.in', '9820858373', '9167378326', 'C2018CM-D2', 2018, 'Computer', 14846, 6, 'THIRD', 'TED', 'B'),
(567, 25, 'NANDU MEET RAMESH', 'meet.nandu@sakec.ac.in', '9833355997', '9833667775', 'M2016CM102', 2016, 'Computer', 12926, 8, 'FINAL', 'BE3', 'B'),
(568, 26, 'NAWALE ARCHITA VISHWAS', 'archita.nawale@sakec.ac.in', '9004548021', '8433472243', 'C2016CM103', 2016, 'Computer', 12949, 8, 'FINAL', 'BE3', 'B'),
(448, 35, 'NEMADE DARSHAN PRAMOD', 'darshan.nemade@sakec.ac.in', '7045960631', '9764995876', 'C2017CM102', 2017, 'Computer', 13671, 6, 'THIRD', 'TE4', 'B'),
(696, 10, 'NIKAM NAMRATA DILIP', 'namrata.nikam@sakec.ac.in', '9224210474', '9224214317', 'C2017CM-D2', 2017, 'Computer', 14085, 8, 'FINAL', 'BED', 'A'),
(603, 61, 'OSWAL YASHKUMAR SHANTILAL', 'yashkumar.oswal@sakec.ac.in', '8452953153', '9167476693', 'M2016CM107', 2016, 'Computer', 13106, 8, 'FINAL', 'BE3', 'D'),
(508, 21, 'PADHARIYA NIDHI VINOD', 'nidhi.padhariya@sakec.ac.in', '8828459001', '9867426438', 'M2018CM-D2', 2018, 'Computer', 14837, 6, 'THIRD', 'TED', 'B'),
(384, 52, 'PADHIYAR KAJAL KISHORSHI', 'kajal.padhiyar@sakec.ac.in', '9920892623', '9769141581', 'M2017CM106', 2017, 'Computer', 13841, 6, 'THIRD', 'TE3', 'C'),
(220, 31, 'PADWAL ANUSHKA SUNIL', 'anushka.padwal@sakec.ac.in', '7045484599', '9969164772', 'C2018CM108', 2018, 'Computer', 14541, 4, 'SECOND', 'SE3', 'B'),
(697, 11, 'PAINTER HUZEFA SHABBIR', 'huzefa.painter@sakec.ac.in', '9819240550', '9322211729', 'M2017CM-D2', 2017, 'Computer', 14218, 8, 'FINAL', 'BED', 'A'),
(300, 38, 'PALAV ISHWAR CHANDRAKANT', 'ishwar.palav@sakec.ac.in', '8097887930', '9969395314', 'C2018CM101', 2018, 'Computer', 14319, 4, 'SECOND', 'SE4', 'C'),
(509, 22, 'PALAV MANISH SUHAS', 'manish.palav@sakec.ac.in', '9967590110', '9967545234', 'C2018CM-D2', 2018, 'Computer', 14722, 6, 'THIRD', 'TED', 'B'),
(569, 27, 'PANCHAL ASHIT BIPIN', 'ashit.panchal@sakec.ac.in', '9029530661', '9004160383', 'M2016CM105', 2016, 'Computer', 13030, 8, 'FINAL', 'BE3', 'B'),
(449, 36, 'PANCHAL KINNARY UDAY', 'kinnary.panchal@sakec.ac.in', '9967058961', '9967058961', 'M2017CM103', 2017, 'Computer', 13710, 6, 'THIRD', 'TE4', 'B'),
(385, 53, 'PANCHAL KRUPA PRAKASH', 'krupa.panchal@sakec.ac.in', '9702001386', '9702022020', 'M2018CM200', 2018, 'Computer', 14774, 6, 'THIRD', 'TE3', 'C'),
(720, 34, 'PANCHAL MANISH POPATBHAI', 'manish.panchal@sakec.ac.in', '9987963602', '9167852180', 'M2017CM-D2', 2017, 'Computer', 14132, 8, 'FINAL', 'BED', 'C'),
(386, 54, 'PANCHAL PARTH DINESHCHANDRA', 'parth.panchal_2017@sakec.ac.in', '9029225743', '9869489587', 'C2017CM104', 2017, 'Computer', 13725, 6, 'THIRD', 'TE3', 'C'),
(680, 67, 'PANCHAL UMANG HASMUKH', 'umang.panchal@sakec.ac.in', '9619851151', '9821400226', 'M2017CM200', 2017, 'Computer', 14089, 8, 'FINAL', 'BE4', 'D'),
(719, 33, 'PANCHAL VIDHI JITENDRA', 'vidhi.panchal@sakec.ac.in', '7738387939', '9821304211', 'M2016CM-D2', 2017, 'Computer', 13320, 8, 'FINAL', 'BED', 'C'),
(221, 32, 'PANDA ALOK SARATCHANDRA', 'alok.panda@sakec.ac.in', '7738902865', '9920372495', 'I2018CM100', 2018, 'Computer', 14295, 4, 'SECOND', 'SE3', 'B'),
(721, 35, 'PANDAV GAURAV BHOLABHAI', 'gaurav.pandav@sakec.ac.in', '8850414102', '9821067944', 'M2016CM-D2', 2017, 'Computer', 13393, 8, 'FINAL', 'BED', 'C'),
(657, 44, 'PANDEY ASHISH CHANDRIKA PRASAD', 'ashish.pandey@sakec.ac.in', '8898394378', '9819463955', 'C2016CM103', 2016, 'Computer', 12959, 8, 'FINAL', 'BE4', 'C'),
(510, 23, 'PANDEY HARSHITA SUBHASH CHANDRA', 'harshita.pandey@sakec.ac.in', '9029039372', '9223239372', 'C2018CM-D2', 2018, 'Computer', 14799, 6, 'THIRD', 'TED', 'B'),
(118, 68, 'PANDEY PRATHAMESH CHETAN REKHA', 'prathamesh.pandey_19@sakec.ac.in', '8850346358', '9167122101', 'G2019CM115', 2019, 'Computer', 15306, 2, 'FIRST', 'FE4', 'C'),
(301, 39, 'PANDYA NIDHI JATIN', 'nidhi.pandya@sakec.ac.in', '9820369185', '9820883941', 'M2018CM106', 2018, 'Computer', 14457, 4, 'SECOND', 'SE4', 'C'),
(332, 70, 'PARAB PRANAV C', '', '', '', '', 2017, 'Computer', 0, 4, 'SECOND', 'SE4', 'D'),
(222, 33, 'PARANDE RAHUL BALU', 'rahul.parande@sakec.ac.in', '9892191289', '9322683955', 'I2018CM100', 2018, 'Computer', 14299, 4, 'SECOND', 'SE3', 'B'),
(604, 62, 'PAREKH JAI CHETAN', 'jai.parekh@sakec.ac.in', '7738227090', '9987781251', 'G2016CM111', 2016, 'Computer', 13260, 8, 'FINAL', 'BE3', 'D'),
(450, 37, 'PARMAR BHAVIK VIPUL', 'bhavik.parmar@sakec.ac.in', '8879501067', '9320773392', 'M2017CM103', 2017, 'Computer', 13692, 6, 'THIRD', 'TE4', 'C'),
(256, 67, 'PARMAR BHAVYA SAURABH BINDU', 'bhavya.parmar_19@sakec.ac.in', '9833273366', '9833004480', 'M2019CM201', 2019, 'Computer', 15409, 4, 'SECOND', 'SE3', 'D'),
(60, 75, 'PARMAR DHRUV HITESH SAIYAM', 'dhruv.parmar_19@sakec.ac.in', '8169409129', '9323787263', 'G2019CM118', 2019, 'Computer', 15391, 2, 'FIRST', 'FE3', 'C'),
(570, 28, 'PARMAR MAHIMA BHARAT', 'mahima.parmar@sakec.ac.in', '9987343833', '9320424277', 'M2016CM104', 2016, 'Computer', 13010, 8, 'FINAL', 'BE3', 'B'),
(302, 40, 'PARMAR MANAV KIRAN', 'manav.parmar@sakec.ac.in', '9819267877', '9821024488', 'M2018CM106', 2018, 'Computer', 14477, 4, 'SECOND', 'SE4', 'C'),
(88, 31, 'PARMAR NIRAJ KISHOR RAMA', 'niraj.parmar_19@sakec.ac.in', '9619130369', '9619759807', 'M2019CM104', 2019, 'Computer', 15019, 2, 'FIRST', 'FE4', 'B'),
(623, 10, 'PARMAR ROHIT VASANT', 'rohit.parmar@sakec.ac.in', '8169917577', '9324414287', 'M2016CM103', 2016, 'Computer', 12938, 8, 'FINAL', 'BE4', 'A'),
(571, 29, 'PARMAR SHAILY GAUTAM', 'shaily.parmar@sakec.ac.in', '9892235699', '9769206741', 'C2016CM103', 2016, 'Computer', 12960, 8, 'FINAL', 'BE3', 'B'),
(128, 78, 'PATADE ANIKET RAJENDRA MADHAVI', 'aniket.patade_19@sakec.ac.in', '9594744984', '9870150882', 'G2019CM118', 2019, 'Computer', 15431, 2, 'FIRST', 'FE4', 'C'),
(125, 75, 'PATADIA HARSH NIKHIL MITRA', 'harsh.patadia_19@sakec.ac.in', '9029390400', '9833390177', 'G2019CM118', 2019, 'Computer', 15399, 2, 'FIRST', 'FE4', 'C'),
(153, 31, 'PATANI SAMEEP RAJENDRA PRANITA', 'sameep.patani_19@sakec.ac.in', '8624982127', '9423484575', 'M2019CM102', 2019, 'Computer', 14960, 2, 'FIRST', 'FE9', 'B'),
(126, 76, 'PATEL ARTH ASHOK RADHA', 'arth.patel_19@sakec.ac.in', '9930527277', '9930760864', 'G2019CM118', 2019, 'Computer', 15422, 2, 'FIRST', 'FE4', 'C'),
(22, 32, 'PATEL ATITH BIPIN BHARATI', 'atith.patel_19@sakec.ac.in', '9082611869', '9821539787', 'M2019CM108', 2019, 'Computer', 15127, 2, 'FIRST', 'FE3', 'B'),
(89, 32, 'PATEL DARSHIL MANOJBHAI BHAVANAB', 'darshil.patel_19@sakec.ac.in', '9920798145', '9820792557', 'M2019CM110', 2019, 'Computer', 15202, 2, 'FIRST', 'FE4', 'B'),
(154, 32, 'PATEL DHWANI MAHESH VARSHA', 'dhwani.patel_19@sakec.ac.in', '8169326933', '9224611322', 'M2019CM101', 2019, 'Computer', 14945, 2, 'FIRST', 'FE9', 'B'),
(23, 33, 'PATEL DISHANK DEEPAK REKHA', 'dishank.patel_19@sakec.ac.in', '9833446921', '9820733448', 'M2019CM110', 2019, 'Computer', 15200, 2, 'FIRST', 'FE3', 'B'),
(387, 55, 'PATEL FORUM BHAVESH', 'forum.patel@sakec.ac.in', '9833516144', '9821750410', 'I2017CM101', 2017, 'Computer', 13613, 6, 'THIRD', 'TE3', 'C'),
(223, 34, 'PATEL GAURAV GIRISH', 'gaurav.patel@sakec.ac.in', '9920499801', '9820710873', 'M2018CM106', 2018, 'Computer', 14478, 4, 'SECOND', 'SE3', 'B'),
(451, 38, 'PATEL HANISHA DIPEN', 'hanisha.patel@sakec.ac.in', '9819111434', '9167258666', 'M2017CM102', 2017, 'Computer', 13667, 6, 'THIRD', 'TE4', 'C'),
(90, 33, 'PATEL ISHITA HARSHAD PRAMODINI', 'ishita.patel_19@sakec.ac.in', '8433572637', '9029375932', 'M2019CM101', 2019, 'Computer', 14947, 2, 'FIRST', 'FE4', 'B'),
(155, 33, 'PATEL KEWAL SHAMJI VELI', 'kewal.patel_19@sakec.ac.in', '9082081681', '9819012708', 'M2019CM107', 2019, 'Computer', 15107, 2, 'FIRST', 'FE9', 'B'),
(303, 41, 'PATEL KRUTIK ATULKUMAR', 'krutik.patel@sakec.ac.in', '7303066668', '9324671216', 'M2018CM106', 2018, 'Computer', 14468, 4, 'SECOND', 'SE4', 'C'),
(388, 56, 'PATEL MANAN JAGDISH', 'manan.patel@sakec.ac.in', '9920604429', '9323823167', 'G2017CM111', 2017, 'Computer', 14049, 6, 'THIRD', 'TE3', 'C'),
(698, 12, 'PATEL NAYAN MANSUKHLAL', 'nayan.patel@sakec.ac.in', '9511736398', '9823083381', 'M2017CM-D2', 2017, 'Computer', 14079, 8, 'FINAL', 'BED', 'A'),
(304, 42, 'PATEL RUUDRA PRAKASSH', 'ruudra.patel@sakec.ac.in', '9619209835', '9820735136', 'M2018CM105', 2018, 'Computer', 14451, 4, 'SECOND', 'SE4', 'C'),
(511, 24, 'PATEL SAKSHI JAYESH', 'sakshi.patel@sakec.ac.in', '9324614561', '9819002361', 'M2018CM-D2', 2018, 'Computer', 14831, 6, 'THIRD', 'TED', 'B'),
(512, 25, 'PATEL VINAY MAFABHAI', 'vinay.patel@sakec.ac.in', '7666796188', '9833760689', 'M2018CM-D2', 2018, 'Computer', 14753, 6, 'THIRD', 'TED', 'B'),
(452, 39, 'PATEL VINEET SUSHIL', 'vineet.patel@sakec.ac.in', '9969960200', '9969960200', 'G2017CM110', 2017, 'Computer', 14008, 6, 'THIRD', 'TE4', 'C'),
(224, 35, 'PATEL YASH BHAVESH', 'yash.patel@sakec.ac.in', '9987210191', '9820515644', 'M2018CM108', 2018, 'Computer', 14534, 4, 'SECOND', 'SE3', 'B'),
(225, 36, 'PATIL AMISHA MUKUND', 'amisha.patil@sakec.ac.in', '9769557830', '9870640079', 'G2018CM112', 2018, 'Computer', 14881, 4, 'SECOND', 'SE3', 'B'),
(389, 57, 'PATIL CHAITANYA VASUDEO', 'chaitanya.patil@sakec.ac.in', '9757182475', '9869853032', 'G2017CM100', 2017, 'Computer', 13597, 6, 'THIRD', 'TE3', 'C'),
(91, 34, 'PATIL DARSHAN SHYAMKANT KALPANA', 'darshan.patil_19@sakec.ac.in', '9011039707', '9422292102', 'C2019CM102', 2019, 'Computer', 14965, 2, 'FIRST', 'FE4', 'B'),
(699, 13, 'PATIL DIVYESH JAYANT', 'divyesh.patil@sakec.ac.in', '8600086452', '7066625729', 'C2017CM-D2', 2017, 'Computer', 14194, 8, 'FINAL', 'BED', 'A'),
(305, 43, 'PATIL HITESH MAHESH', 'hitesh.patil@sakec.ac.in', '9359257474', '8975015253', 'C2018CM107', 2018, 'Computer', 14480, 4, 'SECOND', 'SE4', 'C'),
(722, 36, 'PATIL JAGRUTI GANESH', 'jagruti.patil@sakec.ac.in', '8652683370', '7039793874', 'C2017CM-D2', 2017, 'Computer', 14082, 8, 'FINAL', 'BED', 'C'),
(453, 40, 'PATIL KARAN ASHOK', 'karan.patil@sakec.ac.in', '8169157715', '9892440489', 'C2018CM201', 2018, 'Computer', 14803, 6, 'THIRD', 'TE4', 'C'),
(156, 34, 'PATIL LINESH SACHIN DHANASHREE', 'linesh.patil_19@sakec.ac.in', '8208691953', '9422783150', 'C2019CM105', 2019, 'Computer', 15047, 2, 'FIRST', 'FE9', 'B'),
(226, 37, 'PATIL MIHIR SANDEEP', 'mihir.patil@sakec.ac.in', '9967434279', '9967595709', '', 2018, 'Computer', 14670, 4, 'SECOND', 'SE3', 'B'),
(24, 35, 'PATIL NISHANT KAMALAKAR KARISHMA', 'nishant.patil_19@sakec.ac.in', '8308718531', '9359116272', 'C2019CM109', 2019, 'Computer', 15177, 2, 'FIRST', 'FE3', 'B'),
(177, 62, 'PATIL RAHUL PUNJARAM VANDANA', 'rahul.patil_19@sakec.ac.in', '9324081118', '9967774218', 'G2019CM113', 2019, 'Computer', 15260, 2, 'FIRST', 'FE9', 'C'),
(92, 35, 'PATIL ROHIT BHAGWAN MANISHA', 'rohit.patil_19@sakec.ac.in', '9324394937', '7021146936', 'C2019CM103', 2019, 'Computer', 14975, 2, 'FIRST', 'FE4', 'B'),
(306, 44, 'PATIL SRUSHTI SUNIL', 'srushti.patil@sakec.ac.in', '9969303421', '8097881028', 'G2018CM110', 2018, 'Computer', 14652, 4, 'SECOND', 'SE4', 'C'),
(25, 36, 'PATIL YOGI SHASHIKANT SHARDA', 'yogi.patil_19@sakec.ac.in', '9321330111', '9321330111', 'C2019CM104', 2019, 'Computer', 15003, 2, 'FIRST', 'FE3', 'B'),
(93, 36, 'PAWAR CHANDRASHEKHAR SOPANDEV AS', 'chandrashekhar.pawar_19@sakec.ac.in', '7972009468', '7972009468', 'C2019CM100', 2019, 'Computer', 14917, 2, 'FIRST', 'FE4', 'B'),
(52, 66, 'PAWAR SAAKSHI KAMLAKAR KRUTIKA', 'saakshi.pawar_19@sakec.ac.in', '9769215889', '9892055750', 'G2019CM115', 2019, 'Computer', 15299, 2, 'FIRST', 'FE3', 'C'),
(307, 45, 'PAWAR SHRADDHA VIJAY', 'shraddha.pawar@sakec.ac.in', '8655266790', '9869276901', 'I2018CM102', 2018, 'Computer', 14332, 4, 'SECOND', 'SE4', 'C'),
(723, 37, 'PAWAR TIRTHESH SANJAY', 'tirthesh.pawar@sakec.ac.in', '8898009706', '9869819981', 'C2017CM-D2', 2017, 'Computer', 14102, 8, 'FINAL', 'BED', 'C'),
(43, 57, 'PAWAR YASH SUJAY SWATI', 'yash.pawar_19@sakec.ac.in', '7506065198', '9757107209', 'G2019CM113', 2019, 'Computer', 15257, 2, 'FIRST', 'FE3', 'C'),
(308, 46, 'PEDNEKAR NIDHI SUNIL', 'nidhi.pednekar@sakec.ac.in', '9869450458', '9969229447', 'G2018CM102', 2018, 'Computer', 14335, 4, 'SECOND', 'SE4', 'C'),
(390, 58, 'PHULARI VISHAKHA', '', '', '', '', 2016, 'Computer', 0, 6, 'THIRD', 'TE3', 'C'),
(391, 59, 'PILLAI VEERAPATHIRAMOORTHY PARAM', 'veerapathiramoorthy.pillai@sakec.ac.in', '8652662407', '9920373051', 'G2017CM100', 2017, 'Computer', 13599, 6, 'THIRD', 'TE3', 'C'),
(114, 64, 'PIMPUTKAR ATHARVA SANDEEP SANYUK', 'atharva.pimputkar_19@sakec.ac.in', '7498711660', '9323411881', 'G2019CM114', 2019, 'Computer', 15294, 2, 'FIRST', 'FE4', 'C'),
(724, 38, 'PIPALIA DEVANSHU DEVRAJ', 'devanshu.pipalia@sakec.ac.in', '8097523280', '9821330251', 'M2017CM-D2', 2017, 'Computer', 14142, 8, 'FINAL', 'BED', 'C'),
(725, 39, 'PISAL SHRIYA PRABHAKAR', 'shriya.pisal@sakec.ac.in', '7666814884', '9819357494', 'M2017CM-D2', 2017, 'Computer', 14204, 8, 'FINAL', 'BED', 'C'),
(454, 41, 'POKHARNA NIKKI AJIT', 'nikki.pokharna@sakec.ac.in', '7728920881', '9323143604', 'G2017CM100', 2017, 'Computer', 13596, 6, 'THIRD', 'TE4', 'C'),
(309, 47, 'POLADIYA DHARMESH INDRESH', 'dharmesh.poladiya@sakec.ac.in', '7588647905', '7588647903', 'G2018CM111', 2018, 'Computer', 14687, 4, 'SECOND', 'SE4', 'C'),
(181, 66, 'POOJARI NITHI RAMESH MAMTA', 'nithi.poojari_19@sakec.ac.in', '8355958996', '9969254196', 'G2019CM115', 2019, 'Computer', 15311, 2, 'FIRST', 'FE9', 'C'),
(109, 59, 'POTDAR VARAD NITIN MANISHA', 'varad.potdar_19@sakec.ac.in', '7977135077', '9821628855', 'G2019CM113', 2019, 'Computer', 15275, 2, 'FIRST', 'FE4', 'C'),
(310, 48, 'PRADHAN GAURANGI RAHUL', 'gaurangi.pradhan@sakec.ac.in', '7738135634', '8828046005', 'I2018CM100', 2018, 'Computer', 14303, 4, 'SECOND', 'SE4', 'C'),
(513, 26, 'PRAJAPATI DARSHAN PRADIP', 'darshan.prajapati@sakec.ac.in', '8108985722', '8169573656', 'M2018CM-D2', 2018, 'Computer', 14768, 6, 'THIRD', 'TED', 'B'),
(157, 36, 'PRAJAPATI DEV KIRIT JIGNABEN', 'dev.prajapati_19@sakec.ac.in', '9082023283', '9967969210', 'M2019CM104', 2019, 'Computer', 15018, 2, 'FIRST', 'FE9', 'B'),
(26, 37, 'PRAJAPATI MAYANK RAJA SONAL', 'mayank.prajapati_19@sakec.ac.in', '9326321118', '8805924177', 'M2019CM101', 2019, 'Computer', 14937, 2, 'FIRST', 'FE3', 'B'),
(227, 38, 'PRAYAG VIKRANT VILAS', 'vikrant.prayag@sakec.ac.in', '8668410743', '9922428173', '', 2018, 'Computer', 14438, 4, 'SECOND', 'SE3', 'B'),
(455, 42, 'PUNAMIYA ANISH NARESH', 'anish.punamiya@sakec.ac.in', '7506754465', '9820057398', 'G2017CM111', 2017, 'Computer', 14072, 6, 'THIRD', 'TE4', 'C'),
(726, 40, 'PUROHIT NIKUNJ MAHENDRA', 'nikunj.purohit@sakec.ac.in', '8898710025', '9820149888', 'C2017CM-D2', 2017, 'Computer', 14173, 8, 'FINAL', 'BED', 'C'),
(658, 45, 'PUTRAN MANGESH SUDHAKAR', 'mangesh.putran@sakec.ac.in', '9967530210', '9967530210', 'I2016CM100', 2016, 'Computer', 12868, 8, 'FINAL', 'BE4', 'C'),
(94, 37, 'RAI VISHAL BIRENDRANATH REENA', 'vishal.rai_19@sakec.ac.in', '9404785939', '9766102780', 'C2019CM104', 2019, 'Computer', 15002, 2, 'FIRST', 'FE4', 'B'),
(456, 43, 'RAJA TANISH NILESH', 'tanish.raja@sakec.ac.in', '9820464434', '9820545945', 'M2018CM201', 2018, 'Computer', 14819, 6, 'THIRD', 'TE4', 'C'),
(158, 37, 'RAJGOR CHINTAN JAYESH VARSHABEN', 'chintan.rajgor_19@sakec.ac.in', '9969885534', '9819516272', 'M2019CM111', 2019, 'Computer', 15215, 2, 'FIRST', 'FE9', 'B'),
(49, 63, 'RAKSHE SAKSHI DIGAMBAR SUREKHA', 'sakshi.rakshe_19@sakec.ac.in', '7666286009', '9322253550', 'G2019CM114', 2019, 'Computer', 15289, 2, 'FIRST', 'FE3', 'C'),
(311, 49, 'RAMANI AMIT ASHOK', 'amit.ramani@sakec.ac.in', '9867659404', '9987696780', 'C2018CM108', 2018, 'Computer', 14554, 4, 'SECOND', 'SE4', 'C'),
(572, 30, 'RAMBHIA RICHA UMESH', 'richa.rambhia@sakec.ac.in', '9172873437', '9892303529', 'M2016CM102', 2016, 'Computer', 12927, 8, 'FINAL', 'BE3', 'B'),
(727, 41, 'RANADE SUSHRUT VINAY', 'sushrut.ranade@sakec.ac.in', '9702464867', '9004441638', 'C2017CM-D2', 2017, 'Computer', 14111, 8, 'FINAL', 'BED', 'C'),
(392, 60, 'RANAVAT HARSH UMESH', 'harsh.ranavat@sakec.ac.in', '8796442020', '9595662429', 'G2017CM110', 2017, 'Computer', 14040, 6, 'THIRD', 'TE3', 'C'),
(228, 39, 'RANE ATHARVA DEEPAK', 'atharva.rane@sakec.ac.in', '9594938324', '9594938324', 'G2018CM102', 2018, 'Computer', 14327, 4, 'SECOND', 'SE3', 'C'),
(457, 44, 'RANE KALPESH SUBHASH', 'kalpesh.rane@sakec.ac.in', '8976541514', '9820691155', 'C2018CM201', 2018, 'Computer', 14792, 6, 'THIRD', 'TE4', 'C'),
(124, 74, 'RANE SHUBHAM CHINTAMANI SNEHA', 'shubham.rane_19@sakec.ac.in', '8850311901', '9833214874', 'G2019CM118', 2019, 'Computer', 15388, 2, 'FIRST', 'FE4', 'C'),
(393, 61, 'RANE SIDDHI RAJARAM', 'siddhi.rane@sakec.ac.in', '7045397812', '7875559436', 'G2017CM100', 2017, 'Computer', 13605, 6, 'THIRD', 'TE3', 'D'),
(659, 46, 'RANJAN PRABHAT MRITUNEJAY KUMAR', 'prabhat.ranjan@sakec.ac.in', '8097118152', '9869474809', 'C2016CM105', 2016, 'Computer', 13018, 8, 'FINAL', 'BE4', 'C'),
(229, 40, 'RAO PRATIKSHA RAJESH', 'pratiksha.rao@sakec.ac.in', '9594402898', '9833414122', 'G2018CM104', 2018, 'Computer', 14386, 4, 'SECOND', 'SE3', 'C'),
(312, 50, 'RASHINKAR NEELAKSHI MANGESH', 'neelakshi.rashinkar@sakec.ac.in', '7447780330', '9881300330', 'C2018CM109', 2018, 'Computer', 14616, 4, 'SECOND', 'SE4', 'C'),
(539, 52, 'RAVAL HARSH HEMANSHU', 'harsh.raval@sakec.ac.in', '8451997002', '9969009440', 'M2018CM-D2', 2018, 'Computer', 14802, 6, 'THIRD', 'TED', 'D'),
(458, 45, 'RAVAL NAITIK PANKAJ KUMAR', 'naitik.raval@sakec.ac.in', '9892405109', '9892505714', 'M2018CM202', 2018, 'Computer', 14867, 6, 'THIRD', 'TE4', 'C'),
(27, 38, 'RAVAL SAMVID JITENDRA ARTI', 'samvid.raval_19@sakec.ac.in', '9930312094', '9004350855', 'M2019CM100', 2019, 'Computer', 14918, 2, 'FIRST', 'FE3', 'B'),
(561, 19, 'RAVI KUMAR', 'ravi.kumar@sakec.ac.in', '7036734216', '9948546934', 'C2016CM107', 2016, 'Computer', 13069, 8, 'FINAL', 'BE3', 'B'),
(95, 38, 'REGUNTA SAMEER SAYABOO ARUNA', 'sameer.regunta_19@sakec.ac.in', '9326649124', '9892119924', 'C2019CM110', 2019, 'Computer', 15185, 2, 'FIRST', 'FE4', 'B'),
(700, 14, 'SABLE AKSHAY RAKHAMA', 'akshay.sable@sakec.ac.in', '9021249855', '9029338465', 'C2017CM-D2', 2017, 'Computer', 14116, 8, 'FINAL', 'BED', 'A'),
(28, 39, 'SACHDE NIRMIT AJAY SONAL', 'nirmit.sachde_19@sakec.ac.in', '9930877761', '9321071922', 'M2019CM110', 2019, 'Computer', 15189, 2, 'FIRST', 'FE3', 'B'),
(728, 42, 'SADWILKAR OMKAR CHANDRASHEKHAR', 'omkar.sadwilkar@sakec.ac.in', '9820016679', '9820371998', 'C2017CM-D2', 2017, 'Computer', 14124, 8, 'FINAL', 'BED', 'C'),
(514, 27, 'SAHANI ADITYA RAVIKUMAR', 'aditya.sahani@sakec.ac.in', '8425987817', '9869988017', 'C2018CM-D2', 2018, 'Computer', 14773, 6, 'THIRD', 'TED', 'B'),
(681, 68, 'SAINI PRASHANT MUKESH KUMAR', 'prashant.saini@sakec.ac.in', '7666491058', '8425910772', 'C2015CM104', 2016, 'Computer', 12222, 8, 'FINAL', 'BE4', 'D'),
(59, 74, 'SAIVA RAMAN PRABHAKAR TEJASHRI', 'raman.saiva_19@sakec.ac.in', '9819724528', '9819204459', 'G2019CM117', 2019, 'Computer', 15379, 2, 'FIRST', 'FE3', 'C'),
(96, 39, 'SAKERWALA YAHYA ZUZER MARIYAM', 'yahya.sakerwala_19@sakec.ac.in', '8879410152', '9930757795', 'M2019CM111', 2019, 'Computer', 15213, 2, 'FIRST', 'FE4', 'B'),
(159, 39, 'SAKHIDAS JAINISH JITENDRA PARUL', 'jainish.sakhidas_19@sakec.ac.in', '7045144343', '9820256671', 'M2019CM106', 2019, 'Computer', 15064, 2, 'FIRST', 'FE9', 'B'),
(29, 40, 'SALIYA YASH RAJESH USHA', 'yash.saliya_19@sakec.ac.in', '9004162996', '9323231224', 'C2019CM105', 2019, 'Computer', 15046, 2, 'FIRST', 'FE3', 'B'),
(313, 51, 'SALSHINGIKAR BHAVIKA BHUSHAN', 'bhavika.salshingikar@sakec.ac.in', '7038264706', '9168294940', 'C2018CM109', 2018, 'Computer', 14588, 4, 'SECOND', 'SE4', 'C'),
(97, 40, 'SALUNKHE HEMANGI AVINASH ANITA', 'hemangi.salunkhe_19@sakec.ac.in', '7678045350', '9004664793', 'C2019CM102', 2019, 'Computer', 14958, 2, 'FIRST', 'FE4', 'B'),
(515, 28, 'SALVI SIDDHI RAVINDRA', 'siddhi.salvi@sakec.ac.in', '7045219569', '8104089384', 'C2018CM-D2', 2018, 'Computer', 14719, 6, 'THIRD', 'TED', 'C'),
(314, 52, 'SANADHYA NAMRATA RAJENDRA', 'namrata.sanadhya@sakec.ac.in', '9833441845', '7738553545', 'G2018CM110', 2018, 'Computer', 14664, 4, 'SECOND', 'SE4', 'D'),
(160, 40, 'SANGHAVI DARSH MITESH SONALBEN', 'darsh.sanghavi_19@sakec.ac.in', '7977564712', '9892841540', 'C2019CM101', 2019, 'Computer', 14932, 2, 'FIRST', 'FE9', 'B'),
(230, 41, 'SANGHAVI HARSHIL TUSHAR', 'harshil.sanghavi@sakec.ac.in', '9619092344', '9821011955', 'M2018CM104', 2018, 'Computer', 14390, 4, 'SECOND', 'SE3', 'C'),
(461, 48, 'SANGHAVI SAHIL RAJEEV', 'sahil.sanghavi@sakec.ac.in', '9967263858', '9322283214', 'M2017CM103', 2017, 'Computer', 13677, 6, 'THIRD', 'TE4', 'C'),
(30, 41, 'SANGHVI AAGAM KETAN BHAVANA', 'aagam.sanghvi_19@sakec.ac.in', '8767909899', '8080594612', 'M2019CM112', 2019, 'Computer', 15236, 2, 'FIRST', 'FE3', 'B'),
(98, 41, 'SANGHVI HARSH DEVANG AMISHA', 'harsh.sanghvi_19@sakec.ac.in', '9136834534', '9082548798', 'M2019CM108', 2019, 'Computer', 15128, 2, 'FIRST', 'FE4', 'B'),
(161, 41, 'SANGHVI PARAS HITAL ASHITA', 'paras.sanghvi_19@sakec.ac.in', '8108268038', '9870409822', 'M2019CM103', 2019, 'Computer', 14999, 2, 'FIRST', 'FE9', 'B'),
(231, 42, 'SAPPADLA RUTVIK VEERANNA', 'rutvik.sappadla@sakec.ac.in', '9029907375', '8097657645', 'I2018CM100', 2018, 'Computer', 14301, 4, 'SECOND', 'SE3', 'C'),
(459, 46, 'SAPRA RIA RAKESH', 'ria.sapra@sakec.ac.in', '9969775808', '9892820787', 'G2017CM110', 2017, 'Computer', 13994, 6, 'THIRD', 'TE4', 'C'),
(460, 47, 'SAPRA ROHAN RAKESH', 'rohan.sapra@sakec.ac.in', '9892820787', '9892820787', 'I2017CM110', 2017, 'Computer', 14006, 6, 'THIRD', 'TE4', 'C'),
(729, 43, 'SAPTE PRATIK JANARDAN', 'pratik.sapte@sakec.ac.in', '9221155558', '9324340428', 'C2017CM-D2', 2017, 'Computer', 14208, 8, 'FINAL', 'BED', 'C'),
(730, 44, 'SAPTE YASH HARISHCHANDRA', 'yash.sapte@sakec.ac.in', '9869366877', '9869482102', 'C2017CM-D2', 2017, 'Computer', 14209, 8, 'FINAL', 'BED', 'C'),
(701, 15, 'SARIA ABDEALI', '', '', '', '', 2017, 'Computer', 0, 8, 'FINAL', 'BED', 'A'),
(660, 47, 'SATAM MANDAR ANIL', 'mandar.satam@sakec.ac.in', '8108555115', '', 'G2016CM111', 2016, 'Computer', 13259, 8, 'FINAL', 'BE4', 'C'),
(394, 62, 'SATAV RUSHABH', '', '', '', '', 2016, 'COMPUTER', 0, 6, 'THIRD', 'TE3', 'D'),
(31, 42, 'SATRA ARPEET PREMJI TARA', 'arpeet.satra_19@sakec.ac.in', '9167067706', '9967671584', 'M2019CM104', 2019, 'Computer', 15031, 2, 'FIRST', 'FE3', 'B'),
(315, 53, 'SATRA KAUSHIK RAKESH', 'kaushik.satra@sakec.ac.in', '7666396999', '9820556156', 'M2018CM107', 2018, 'Computer', 14495, 4, 'SECOND', 'SE4', 'D'),
(395, 63, 'SAVADIA HARNISH SANJAY', 'harnish.savadia@sakec.ac.in', '9833392016', '9819533392', 'I2017CM102', 2017, 'Computer', 13649, 6, 'THIRD', 'TE3', 'D'),
(99, 42, 'SAVDEKAR RAJAT DHANRAJ CHARULATA', 'rajat.savdekar_19@sakec.ac.in', '9423066122', '9423185205', 'C2019CM107', 2019, 'Computer', 15102, 2, 'FIRST', 'FE4', 'B'),
(540, 53, 'SAVLA NIRAV NARESH', 'nirav.savla@sakec.ac.in', '9619647902', '9833769010', 'M2018CM-D2', 2018, 'Computer', 14739, 6, 'THIRD', 'TED', 'D'),
(232, 43, 'SAVLA PREET CHETAN', 'preet.savla@sakec.ac.in', '7208504913', '7666277604', 'M2018CM104', 2018, 'Computer', 14372, 4, 'SECOND', 'SE3', 'C'),
(573, 31, 'SAVLA SMIT VINOD', 'smit.savla@sakec.ac.in', '9892918918', '9892918918', 'I2016CM101', 2016, 'Computer', 12916, 8, 'FINAL', 'BE3', 'B'),
(257, 68, 'SAVLA URVIN HEMANT FALGUNI', 'urvin.savla_19@sakec.ac.in', '7977051270', '9920304550', 'M2019CM200', 2019, 'Computer', 15341, 4, 'SECOND', 'SE3', 'D'),
(462, 49, 'SAWANT ANIRUDDHA VILAS', 'aniruddha.sawant@sakec.ac.in', '9833896679', '9423357718', 'G2017CM111', 2017, 'Computer', 14053, 6, 'THIRD', 'TE4', 'C'),
(247, 58, 'SAWANT KUNAL S', '', '', '', '', 2017, 'COMPUTER', 0, 4, 'SECOND', 'SE3', 'C'),
(682, 69, 'SAWANT MONISH CHANDRAKANT', 'monish.sawant@sakec.ac.in', '8108018329', '8108401567', 'C2017CM202', 2017, 'Computer', 14250, 8, 'FINAL', 'BE4', 'D'),
(636, 23, 'SAWANT RUCHA NITIN', 'rucha.sawant@sakec.ac.in', '9987722071', '9820538904', 'C2016CM107', 2016, 'Computer', 13087, 8, 'FINAL', 'BE4', 'B'),
(731, 45, 'SAWANT SAILI MANOJ', 'saili.sawant@sakec.ac.in', '7045111945', '8291707322', 'C2017CM-D2', 2017, 'Computer', 14185, 8, 'FINAL', 'BED', 'C'),
(683, 70, 'SAWHNEY SHARANJEET SINGH KANWALJ', 'sharanjeet.sawhney@sakec.ac.in', '9833981313', '9820403634', 'C2016CM103', 2016, 'Computer', 12945, 8, 'FINAL', 'BE4', 'D'),
(516, 29, 'SHAH AAYUSH MAHENDRA', 'aayush.shah@sakec.ac.in', '9664609727', '9322709031', 'M2018CM-D2', 2018, 'Computer', 14718, 6, 'THIRD', 'TED', 'C'),
(684, 71, 'SHAH ABHISHEK ASIT', 'abhishek.shah@sakec.ac.in', '9820091586', '9820291586', 'M2016CM103', 2016, 'Computer', 12955, 8, 'FINAL', 'BE4', 'D'),
(661, 48, 'SHAH ADIT BHARAT', 'adit.shah@sakec.ac.in', '9867342636', '9867123215', 'M2016CM109', 2016, 'Computer', 13204, 8, 'FINAL', 'BE4', 'C'),
(51, 65, 'SHAH ADITYA BHARAT LILA', 'aditya.shah_19@sakec.ac.in', '9372622462', '9322235658', 'G2019CM114', 2019, 'Computer', 15297, 2, 'FIRST', 'FE3', 'C'),
(574, 32, 'SHAH ADITYA MANISH', 'aditya.shah@sakec.ac.in', '9029058845', '9820803339', 'M2016CM110', 2016, 'Computer', 13230, 8, 'FINAL', 'BE3', 'B'),
(637, 24, 'SHAH AKSHAYE HARISH', 'akshaye.shah@sakec.ac.in', '9619292799', '9619292799', 'M2015CM101', 2016, 'Computer', 12155, 8, 'FINAL', 'BE4', 'B'),
(463, 50, 'SHAH ANUJ RAJESH', 'anuj.shah_2017@sakec.ac.in', '9820683671', '9820151980', 'I2017CM108', 2017, 'Computer', 13959, 6, 'THIRD', 'TE4', 'C'),
(732, 46, 'SHAH AYUSH PIYUSH', 'ayush.shah@sakec.ac.in', '8879817727', '8879817727', 'M2017CM-D2', 2017, 'Computer', 14241, 8, 'FINAL', 'BED', 'D'),
(233, 44, 'SHAH BHAVYA DEEPAK', 'bhavya.shah@sakec.ac.in', '9920736754', '9820528121', 'M2018CM105', 2018, 'Computer', 14449, 4, 'SECOND', 'SE3', 'C'),
(733, 47, 'SHAH BHUMIK KALPESH', 'bhumik.shah@sakec.ac.in', '9867244774', '9892106609', 'M2017CM-D2', 2017, 'Computer', 14236, 8, 'FINAL', 'BED', 'D'),
(32, 43, 'SHAH DARSHIT JATIN KANCHAN', 'darshit.shah_19@sakec.ac.in', '9326660166', '9820322810', 'M2019CM107', 2019, 'Computer', 15119, 2, 'FIRST', 'FE3', 'B'),
(396, 64, 'SHAH DENNIS', '', '', '', '', 2016, 'Computer', 0, 6, 'THIRD', 'TE3', 'D'),
(464, 51, 'SHAH DESHNA ASHOKBHAI', 'deshna.shah@sakec.ac.in', '9420607566', '9420607566', 'M2017CM107', 2017, 'Computer', 13921, 6, 'THIRD', 'TE4', 'C'),
(234, 45, 'SHAH DHAIRYA ASHWIN', 'dhairya.shah@sakec.ac.in', '9967979958', '9167103684', 'M2018CM107', 2018, 'Computer', 14486, 4, 'SECOND', 'SE3', 'C'),
(465, 52, 'SHAH DHARMI SANJAY', 'dharmi.shah@sakec.ac.in', '9892004751', '9324233155', 'M2018CM201', 2018, 'Computer', 14827, 6, 'THIRD', 'TE4', 'C'),
(397, 65, 'SHAH DHARMIL SHAILESH', 'dharmil.shah_2017@sakec.ac.in', '9619253340', '9324233340', 'M2017CM105', 2017, 'Computer', 13808, 6, 'THIRD', 'TE3', 'D'),
(316, 54, 'SHAH DHAWAL KETAN', 'dhawal.shah@sakec.ac.in', '8689916000', '9371121000', 'M2018CM107', 2018, 'Computer', 14489, 4, 'SECOND', 'SE4', 'D'),
(466, 53, 'SHAH DIKSHA KAMLESH', 'diksha.shah@sakec.ac.in', '9022241099', '9869610461', 'M2017CM107', 2017, 'Computer', 13895, 6, 'THIRD', 'TE4', 'C'),
(638, 25, 'SHAH HARSH DEVANSHU', 'harsh.shah@sakec.ac.in', '7021849764', '8097350967', 'G2016CM112', 2016, 'Computer', 13290, 8, 'FINAL', 'BE4', 'B'),
(100, 43, 'SHAH HARSH HITESH ULKA', 'harsh.shah_19@sakec.ac.in', '9833597776', '9867204511', 'M2019CM100', 2019, 'Computer', 14914, 2, 'FIRST', 'FE4', 'B'),
(162, 43, 'SHAH HARSHIL PARESHBHAI PUSHPABE', 'harshil.shah_19@sakec.ac.in', '7359488178', '9322362380', 'C2019CM102', 2019, 'Computer', 14966, 2, 'FIRST', 'FE9', 'B'),
(398, 66, 'SHAH ISHAN MANISH', 'ishan.shah@sakec.ac.in', '8850498761', '9322226892', 'M2017CM107', 2017, 'Computer', 13907, 6, 'THIRD', 'TE3', 'D'),
(399, 67, 'SHAH JAINAM MOTILAL', 'jainam.shah@sakec.ac.in', '9867283899', '9833168116', 'I2017CM108', 2017, 'Computer', 13960, 6, 'THIRD', 'TE3', 'D'),
(235, 46, 'SHAH JAINAM RAJENDRA', 'jainam.shah@sakec.ac.in', '9967565270', '9820042171', 'M2018CM107', 2018, 'Computer', 14500, 4, 'SECOND', 'SE3', 'C'),
(517, 30, 'SHAH JANVI SACHIN', 'janvi.shah@sakec.ac.in', '9870141961', '9773838262', 'M2018CM-D2', 2018, 'Computer', 14698, 6, 'THIRD', 'TED', 'C'),
(317, 55, 'SHAH JASH HEMANT', 'jash.shah@sakec.ac.in', '9930310467', '9820493777', 'M2018CM103', 2018, 'Computer', 14350, 4, 'SECOND', 'SE4', 'D'),
(541, 54, 'SHAH JASH SANDEEP', 'jash.shah@sakec.ac.in', '9167009529', '9820138256', 'M2018CM-D2', 2018, 'Computer', 14829, 6, 'THIRD', 'TED', 'D'),
(639, 26, 'SHAH JENIL VISHAL', 'jenil.shah@sakec.ac.in', '8879717581', '9821475889', 'M2017CM201', 2017, 'Computer', 14183, 8, 'FINAL', 'BE4', 'B'),
(518, 31, 'SHAH JUHI SANJAY', 'juhi.shah@sakec.ac.in', '7021342334', '8451848283', 'M2018CM-D2', 2018, 'Computer', 14835, 6, 'THIRD', 'TED', 'C'),
(685, 72, 'SHAH KARAN CHETAN', 'karan.shah@sakec.ac.in', '9820060441', '9167216651', 'I2016CM100', 2016, 'Computer', 12871, 8, 'FINAL', 'BE4', 'D'),
(467, 54, 'SHAH KARNA NITIN', 'karna.shah@sakec.ac.in', '9699618736', '9769688526', 'M2017CM108', 2017, 'Computer', 13937, 6, 'THIRD', 'TE4', 'C'),
(734, 48, 'SHAH KAUSHAL HITESH', 'kaushal.shah@sakec.ac.in', '9769487716', '932303972', 'M2017CM-D2', 2017, 'Computer', 14103, 8, 'FINAL', 'BED', 'D'),
(400, 68, 'SHAH KEVAL VIJAY', 'keval.shah_2017@sakec.ac.in', '9833631813', '9821576812', 'G2017CM109', 2017, 'Computer', 13987, 6, 'THIRD', 'TE3', 'D'),
(468, 55, 'SHAH KRIMESH TARAK', 'krimesh.shah@sakec.ac.in', '9930024089', '9819365457', 'M2017CM105', 2017, 'Computer', 13800, 6, 'THIRD', 'TE4', 'D'),
(735, 49, 'SHAH KRUSHI ARUN', 'krushi.shah@sakec.ac.in', '8692830580', '9757016301', 'M2017CM-D2', 2017, 'Computer', 14224, 8, 'FINAL', 'BED', 'D'),
(258, 69, 'SHAH MANAV RITESH DARSHANA', 'manav.shah_19@sakec.ac.in', '7506178791', '9819525296', 'M2019CM200', 2019, 'Computer', 15346, 4, 'SECOND', 'SE3', 'D'),
(175, 60, 'SHAH MILIND ABHAY KUMAR KANCHAN', 'milind.shah_19@sakec.ac.in', '7306171153', '9846531013', 'G2019CM116', 2019, 'Computer', 15335, 2, 'FIRST', 'FE9', 'C'),
(259, 70, 'SHAH MITI KAMLESH BINA', 'miti.shah_19@sakec.ac.in', '9769443080', '9324325480', 'M2019CM200', 2019, 'Computer', 15321, 4, 'SECOND', 'SE3', 'D'),
(173, 58, 'SHAH MOKSHA JAGDISH SAVITHA', 'moksha.shah_19@sakec.ac.in', '7666432037', '8200115818', 'G2019CM116', 2019, 'Computer', 15333, 2, 'FIRST', 'FE9', 'C'),
(542, 55, 'SHAH MONIK KETAN', 'monik.shah@sakec.ac.in', '9819711309', '9322218578', 'M2018CM-D2', 2018, 'Computer', 14801, 6, 'THIRD', 'TED', 'D'),
(236, 47, 'SHAH NAITIK NILESH', 'naitik.shah@sakec.ac.in', '9082215875', '9819892277', 'I2018CM103', 2018, 'Computer', 14342, 4, 'SECOND', 'SE3', 'C'),
(469, 56, 'SHAH NIKIN MANISH', 'nikin.shah@sakec.ac.in', '9167668993', '9833181521', 'G2017CM109', 2017, 'Computer', 13989, 6, 'THIRD', 'TE4', 'D'),
(519, 32, 'SHAH NISARG JAGDEEP', 'nisarg.shah@sakec.ac.in', '9969929123', '9757323355', 'M2018CM-D2', 2018, 'Computer', 14805, 6, 'THIRD', 'TED', 'C'),
(575, 33, 'SHAH NISHI MAHESH', 'nishi.shah@sakec.ac.in', '9819600556', '9860351015', 'I2016CM107', 2016, 'Computer', 13072, 8, 'FINAL', 'BE3', 'B'),
(401, 69, 'SHAH PARSHVA DHARMESH', 'parshva.shah@sakec.ac.in', '9987200375', '9819773777', 'M2017CM104', 2017, 'Computer', 13742, 6, 'THIRD', 'TE3', 'D'),
(470, 57, 'SHAH PARTH HASMUKH', 'parth.shah_2017@sakec.ac.in', '9833191750', '9321321980', 'G2017CM109', 2017, 'Computer', 13986, 6, 'THIRD', 'TE4', 'D'),
(471, 58, 'SHAH PRANAV TUSHAR', 'pranav.shah@sakec.ac.in', '9323163456', '9320424226', 'C2017CM104', 2017, 'Computer', 13737, 6, 'THIRD', 'TE4', 'D'),
(520, 33, 'SHAH RAJ JITENDRA', 'raj.shah@sakec.ac.in', '9819359132', '9920489356', 'M2018CM-D2', 2018, 'Computer', 14794, 6, 'THIRD', 'TED', 'C'),
(318, 56, 'SHAH RUSHI BHAVIN', 'rushi.shah@sakec.ac.in', '8097079385', '9324123444', 'M2018CM108', 2018, 'Computer', 14530, 4, 'SECOND', 'SE4', 'D'),
(402, 70, 'SHAH RUTVI JINESH', 'rutvi.shah@sakec.ac.in', '8082055599', '9323830854', 'M2017CM102', 2017, 'Computer', 13662, 6, 'THIRD', 'TE3', 'D'),
(736, 50, 'SHAH SAGAR TUSHAR', 'sagar.shah@sakec.ac.in', '9320711080', '9324544706', 'C2017CM-D2', 2017, 'Computer', 14081, 8, 'FINAL', 'BED', 'D'),
(237, 48, 'SHAH SAUMYA VIPUL', 'saumya.shah@sakec.ac.in', '8879873901', '9820302499', 'G2018CM110', 2018, 'Computer', 14655, 4, 'SECOND', 'SE3', 'C'),
(319, 57, 'SHAH SHAIL RAJESH', 'shail.shah@sakec.ac.in', '9322224848', '9322224848', 'G2018CM102', 2018, 'Computer', 14337, 4, 'SECOND', 'SE4', 'D'),
(662, 49, 'SHAH SHAILI NITIN', 'shaili.shah@sakec.ac.in', '9869398030', '9757296501', 'M2016CM109', 2016, 'Computer', 13203, 8, 'FINAL', 'BE4', 'C'),
(624, 11, 'SHAH SHANTANU TUSHAR', 'shantanu.shah@sakec.ac.in', '9004792500', '9004792500', 'M2015CM101', 2016, 'Computer', 12156, 8, 'FINAL', 'BE4', 'A'),
(320, 58, 'SHAH SHOURIN MALAY', 'shourin.shah@sakec.ac.in', '9930593791', '9757403791', 'M2018CM105', 2018, 'Computer', 14440, 4, 'SECOND', 'SE4', 'D'),
(33, 45, 'SHAH SHUBHAM CHETAN NAYNA', 'shubham.shah_19@sakec.ac.in', '9892599055', '9820087013', 'M2019CM112', 2019, 'Computer', 15238, 2, 'FIRST', 'FE3', 'B'),
(101, 45, 'SHAH SPARSH NIKHIL JIGNA', 'sparsh.shah_19@sakec.ac.in', '9820915959', '9820115959', 'M2019CM105', 2019, 'Computer', 15040, 2, 'FIRST', 'FE4', 'B'),
(686, 73, 'SHAH SUNNY KHUSHAL', 'sunny.shah@sakec.ac.in', '9768330797', '9930260764', 'M2017CM200', 2016, 'Computer', 14141, 8, 'FINAL', 'BE4', 'D'),
(34, 46, 'SHAH TIRTH RAKESH RITA', 'tirth.shah_19@sakec.ac.in', '9594423475', '9221732622', 'M2019CM111', 2019, 'Computer', 15220, 2, 'FIRST', 'FE3', 'B'),
(238, 49, 'SHAH UNNATI BHAVEN', 'unnati.shah@sakec.ac.in', '9323441101', '9821241101', 'M2018CM105', 2018, 'Computer', 14432, 4, 'SECOND', 'SE3', 'C'),
(640, 27, 'SHAH URMIL', '', '', '', '', 2016, 'Computer', 1, 8, 'FINAL', 'BE4', 'B'),
(663, 50, 'SHAH URVI MANOJ', 'urvi.shah@sakec.ac.in', '8452925221', '9820404468', 'M2016CM102', 2016, 'Computer', 12925, 8, 'FINAL', 'BE4', 'C'),
(403, 71, 'SHAH URVIK PARESH', 'urvik.shah@sakec.ac.in', '9969799293', '9819029122', 'M2017CM106', 2017, 'Computer', 13830, 6, 'THIRD', 'TE3', 'D'),
(472, 59, 'SHAH VATSAL GAURANG', 'vatsal.shah@sakec.ac.in', '7303996511', '9820141455', 'G2017CM112', 2017, 'Computer', 14280, 6, 'THIRD', 'TE4', 'D'),
(737, 51, 'SHAH VIPUL RAJESH', 'vipul.shah@sakec.ac.in', '9769585813', '9969404414', 'M2017CM-D2', 2017, 'Computer', 14234, 8, 'FINAL', 'BED', 'D'),
(576, 34, 'SHAH YAKSH KIRAN', 'yaksh.shah@sakec.ac.in', '9773979135', '7738583938', 'C2016CM108', 2016, 'Computer', 13157, 8, 'FINAL', 'BE3', 'B'),
(577, 35, 'SHAH YASH MUKESH', 'yash.shah@sakec.ac.in', '9819174091', '9819174091', 'M2016CM108', 2016, 'Computer', 13155, 8, 'FINAL', 'BE3', 'B'),
(738, 52, 'SHAH YASH SUHAS', 'yash.shah_2017@sakec.ac.in', '7588817752', '9321212662', 'M2017CM-D2', 2017, 'Computer', 14070, 8, 'FINAL', 'BED', 'D'),
(521, 34, 'SHAIKH KABIR MEHBOOBALI', 'kabir.shaikh@sakec.ac.in', '7021854920', '8779075228', 'I2018CM-D2', 2018, 'Computer', 14880, 6, 'THIRD', 'TED', 'C'),
(41, 55, 'SHAIKH MOHAMMED DANIAL SAJID AKH', 'mohammeddanial.shaikh_19@sakec.ac.in', '9819194496', '9819194496', 'G2019CM112', 2019, 'Computer', 15253, 2, 'FIRST', 'FE3', 'B'),
(522, 35, 'SHAIKH NAUSHEENBANU GULZAR AHMED', 'nausheenbanu.shaikh@sakec.ac.in', '7021648022', '9930048119', 'C2018CM-D2', 2018, 'Computer', 14873, 6, 'THIRD', 'TED', 'C'),
(523, 36, 'SHAIKH NOORUDDIN MOHAMMED ZUBER', 'nooruddin.shaikh@sakec.ac.in', '9321229960', '9320229960', 'I2018CM-D2', 2018, 'Computer', 14897, 6, 'THIRD', 'TED', 'C'),
(702, 16, 'SHAIKH SAAD ARIF', 'saad.shaikh@sakec.ac.in', '9029786594', '9867595851', 'C2017CM-D2', 2017, 'Computer', 14101, 8, 'FINAL', 'BED', 'A'),
(641, 28, 'SHAIKH SANA SALIM', 'sana.shaikh@sakec.ac.in', '8286535952', '8291628772', 'C2017CM201', 2016, 'Computer', 14221, 8, 'FINAL', 'BE4', 'B'),
(102, 46, 'SHAIKH SOBIYA TAINUR NAZFARHAT', 'sobiya.shaikh_19@sakec.ac.in', '8208019186', '9923396422', 'C2019CM109', 2019, 'Computer', 15181, 2, 'FIRST', 'FE4', 'B'),
(186, 71, 'SHAIKH YUSUF HASIM RAZA REHANA', 'yusuf.shaikh_19@sakec.ac.in', '9653383067', '9819903656', 'G2019CM117', 2019, 'Computer', 15369, 2, 'FIRST', 'FE9', 'C'),
(739, 53, 'SHAIKH ZAIN CHIRAG', 'zain.shaikh@sakec.ac.in', '8879082746', '9833538179', 'C2017CM-D2', 2017, 'Computer', 14231, 8, 'FINAL', 'BED', 'D'),
(120, 70, 'SHARMA ISHITA SHAILESH AMITA', 'ishita.sharma_19@sakec.ac.in', '9322344974', '9820930265', 'G2019CM116', 2019, 'Computer', 15313, 2, 'FIRST', 'FE4', 'C'),
(740, 54, 'SHARMA MADHAV DEVESH', 'madhav.sharma@sakec.ac.in', '9167219555', '9820424703', '', 2017, 'Computer', 13330, 8, 'FINAL', 'BED', 'D'),
(321, 59, 'SHARMA RADHIKA SUNIL', 'radhika.sharma@sakec.ac.in', '8850666284', '9320118000', 'I2018CM100', 2018, 'Computer', 14306, 4, 'SECOND', 'SE4', 'D'),
(163, 46, 'SHARMA SONALI ASHOK LAXMIDEVI', 'sonali.sharma_19@sakec.ac.in', '8433663706', '9773252327', 'C2019CM112', 2019, 'Computer', 15233, 2, 'FIRST', 'FE9', 'B'),
(239, 50, 'SHENOY ANJALI PANDURANG', 'anjali.shenoy@sakec.ac.in', '9920155716', '9223281949', 'G2018CM102', 2018, 'Computer', 14333, 4, 'SECOND', 'SE3', 'C'),
(185, 70, 'SHEREGAR SUSHMITHA SURENDRA CHET', 'sushmitha.sheregar_19@sakec.ac.in', '7506722216', '9028404667', 'G2019CM117', 2019, 'Computer', 15368, 2, 'FIRST', 'FE9', 'C'),
(35, 47, 'SHETH AAGAM ASHISH SANJUBEN', 'aagam.sheth_19@sakec.ac.in', '9967363170', '9867383986', 'M2019CM111', 2019, 'Computer', 15216, 2, 'FIRST', 'FE3', 'B'),
(164, 47, 'SHETH MIT KAMAL DARSHANA', 'mit.sheth_19@sakec.ac.in', '8652165944', '9324611864', 'M2019CM108', 2019, 'Computer', 15155, 2, 'FIRST', 'FE9', 'B'),
(322, 60, 'SHETHIA ASHISH PAVAN', 'ashish.shethia@sakec.ac.in', '9004426360', '9819435364', 'G2018CM108', 2018, 'Computer', 14582, 4, 'SECOND', 'SE4', 'D'),
(605, 63, 'SHETHIA YASH RAJESH', 'yash.shethia@sakec.ac.in', '9867640772', '9699073244', 'I2016CM105', 2016, 'Computer', 13024, 8, 'FINAL', 'BE3', 'D'),
(58, 73, 'SHETTY AMEYA DEVDAS SARITA', 'ameya.shetty_19@sakec.ac.in', '8169684270', '9920872543', 'G2019CM117', 2019, 'Computer', 15377, 2, 'FIRST', 'FE3', 'C'),
(36, 48, 'SHETTY DHIRAJ HARISH NEETHA', 'dhiraj.shetty_19@sakec.ac.in', '8779633138', '9820639026', 'C2019CM101', 2019, 'Computer', 14950, 2, 'FIRST', 'FE3', 'B'),
(240, 51, 'SHETTY HARSHIT SATISH', 'harshit.shetty@sakec.ac.in', '9967056567', '9892559803', 'G2018CM110', 2018, 'Computer', 14662, 4, 'SECOND', 'SE3', 'C'),
(103, 48, 'SHETTY HARSHITH DINESH ANITHA', 'harshith.shetty_19@sakec.ac.in', '9823781701', '9823781701', 'C2019CM110', 2019, 'Computer', 15203, 2, 'FIRST', 'FE4', 'B'),
(182, 67, 'SHETTY MALHAAR DAYANAND DAVINDER', 'malhaar.shetty_19@sakec.ac.in', '9930501263', '9930509996', 'G2019CM116', 2019, 'Computer', 15362, 2, 'FIRST', 'FE9', 'C'),
(606, 64, 'SHETTY NIKHIL DINESH', 'nikhil.shetty@sakec.ac.in', '9967403301', '9967537932', 'C2016CM104', 2016, 'Computer', 12984, 8, 'FINAL', 'BE3', 'D'),
(578, 36, 'SHETTY RIYA VENUGOPAL', 'riya.shetty@sakec.ac.in', '9773900849', '9322886631', 'C2016CM102', 2016, 'Computer', 12937, 8, 'FINAL', 'BE3', 'B'),
(323, 61, 'SHETTY VAIDEHI JAYAKAR', 'vaidehi.shetty@sakec.ac.in', '8291070881', '9833219038', 'G2018CM102', 2018, 'Computer', 14324, 4, 'SECOND', 'SE4', 'D'),
(642, 29, 'SHETTY VIKYATHI', '', '', '', '', 2016, 'Computer', 1, 8, 'FINAL', 'BE4', 'B');
INSERT INTO `student_table2` (`std_id`, `std_roll_no`, `student_name`, `email`, `s_phone`, `p_phone`, `smart_card_no`, `admission_year`, `program`, `registration_no`, `semester`, `year`, `division`, `batch`) VALUES
(607, 65, 'SHETTY VIRAJ VIJAYKUMAR', 'viraj.shetty@sakec.ac.in', '9987709995', '9323204476', 'I2016CM101', 2016, 'Computer', 12887, 8, 'FINAL', 'BE3', 'D'),
(165, 48, 'SHETTY YASHIKA SHEKHAR JAYAMALA', 'yashika.shetty_19@sakec.ac.in', '9930871871', '9004471144', 'C2019CM105', 2019, 'Computer', 15056, 2, 'FIRST', 'FE9', 'B'),
(608, 66, 'SHIMPI YASH NIRANJAN', 'yash.shimpi@sakec.ac.in', '9930735783', '9820035783', 'C2016CM109', 2016, 'Computer', 13163, 8, 'FINAL', 'BE3', 'D'),
(524, 37, 'SHINDE INDRAJIT PRASHANT', 'indrajit.shinde@sakec.ac.in', '8828476155', '9892557225', 'C2018CM-D2', 2018, 'Computer', 14734, 6, 'THIRD', 'TED', 'C'),
(324, 62, 'SHINDE SIDDESH SANJAY', 'siddesh.shinde@sakec.ac.in', '8956425052', '9850174282', 'C2018CM108', 2018, 'Computer', 14520, 4, 'SECOND', 'SE4', 'D'),
(664, 51, 'SHIRSAT TANMAY VILAS', 'tanmay.shirsat@sakec.ac.in', '9757400922', '9869653565', 'C2016CM112', 2016, 'Computer', 13550, 8, 'FINAL', 'BE4', 'C'),
(579, 37, 'SHIRWALKAR SAILI TUSHAR', 'saili.shirwalkar@sakec.ac.in', '9757218298', '9870080038', 'I2016CM100', 2016, 'Computer', 12881, 8, 'FINAL', 'BE3', 'C'),
(37, 49, 'SHRIVASTAVA OMPRATEEK RAKESH KUM', 'omprateek.shrivastava_19@sakec.ac.in', '9869337798', '9869647566', 'C2019CM109', 2019, 'Computer', 15163, 2, 'FIRST', 'FE3', 'B'),
(241, 52, 'SHRIVASTAVA SAUMYA AMIT', 'saumya.shrivastava@sakec.ac.in', '9969469319', '9757454865', 'C2018CM103', 2018, 'Computer', 14364, 4, 'SECOND', 'SE3', 'C'),
(122, 72, 'SHUKLA JAY SHIVSAGAR SAVITRI', 'jay.shukla_19@sakec.ac.in', '8424040346', '9819207385', 'G2019CM117', 2019, 'Computer', 15376, 2, 'FIRST', 'FE4', 'C'),
(525, 38, 'SINGH MANSI VINOD', 'mansi.singh@sakec.ac.in', '8169632959', '9594124944', 'C2018CM-D2', 2018, 'Computer', 14812, 6, 'THIRD', 'TED', 'C'),
(404, 72, 'SINGH PRIYANKA SHRIKANT', 'priyanka.singh_2017@sakec.ac.in', '8433884670', '9869546564', 'C2017CM108', 2017, 'Computer', 13946, 6, 'THIRD', 'TE3', 'D'),
(625, 12, 'SINGH SHASHI SHESH NARAYAN', 'shashi.singh@sakec.ac.in', '9819579841', '9415068925', 'G2015CM111', 2016, 'Computer', 12815, 8, 'FINAL', 'BE4', 'A'),
(643, 30, 'SINGH SONALI SHANKAR', 'sonali.singh@sakec.ac.in', '8433636555', '7710869169', 'C2017CM201', 2016, 'Computer', 14203, 8, 'FINAL', 'BE4', 'B'),
(580, 38, 'SINGHARIA PRINKLE SANJAY', 'prinkle.singharia@sakec.ac.in', '9969942331', '9821633325', 'C2016CM104', 2016, 'Computer', 13005, 8, 'FINAL', 'BE3', 'C'),
(104, 49, 'SOLANKI HARSHBHAI VALLABHBHAI LA', 'harshbhai.solanki_19@sakec.ac.in', '7208676501', '9322609394', 'M2019CM101', 2019, 'Computer', 14943, 2, 'FIRST', 'FE4', 'B'),
(260, 71, 'SOLANKI SHWETA JAYESH JAYSHREE', 'shweta.solanki_19@sakec.ac.in', '8850645019', '9967556683', 'M2019CM200', 2019, 'Computer', 15381, 4, 'SECOND', 'SE3', 'D'),
(581, 39, 'SONAWANE AKSHAY RAJENDRA', 'akshay.sonawane@sakec.ac.in', '9167258216', '9029420221', 'C2016CM102', 2016, 'Computer', 12936, 8, 'FINAL', 'BE3', 'C'),
(325, 63, 'SONI HARSH CHIMAN', 'harsh.soni@sakec.ac.in', '7977263305', '9820000510', '', 2018, 'Computer', 14650, 4, 'SECOND', 'SE4', 'D'),
(44, 58, 'SONI RAHUL LALCHAND MALTI', 'rahul.soni_19@sakec.ac.in', '8369510688', '9820162565', 'G2019CM113', 2019, 'Computer', 15258, 2, 'FIRST', 'FE3', 'C'),
(473, 60, 'SONI RIDHAM KAMLESH', 'ridham.soni@sakec.ac.in', '7738221101', '9967219168', 'M2018CM200', 2018, 'Computer', 14777, 6, 'THIRD', 'TE4', 'D'),
(242, 53, 'SONI YASH MUKESH', 'yash.soni@sakec.ac.in', '8451997304', '7718920254', 'C2018CM108', 2018, 'Computer', 14513, 4, 'SECOND', 'SE3', 'C'),
(474, 61, 'SUBRAMANIAM ABHISHEK SUBRAMANIAM', 'abhishek.subramaniam@sakec.ac.in', '7045511795', '9819228166', 'I2017CM108', 2017, 'Computer', 13949, 6, 'THIRD', 'TE4', 'D'),
(526, 39, 'SURVE MANASI MANOHAR', 'manasi.surve@sakec.ac.in', '8356971773', '9224407382', 'I2018CM-D2', 2018, 'Computer', 14884, 6, 'THIRD', 'TED', 'C'),
(326, 64, 'SUTHAR NEEL ROHIT', 'neel.suthar@sakec.ac.in', '9930974669', '9820474669', 'M2018CM109', 2018, 'Computer', 14607, 4, 'SECOND', 'SE4', 'D'),
(703, 17, 'TADEPALLI SOMSURAJ SRINIVAS', 'somsuraj.tadepalli@sakec.ac.in', '9022691616', '9820317556', 'C2017CM-D2', 2017, 'Computer', 14088, 8, 'FINAL', 'BED', 'A'),
(475, 62, 'TAK DISHANK KAMLESH', 'dishank.tak@sakec.ac.in', '8419970001', '9821570001', 'M2017CM102', 2017, 'Computer', 13669, 6, 'THIRD', 'TE4', 'D'),
(476, 63, 'TAMHANE SAMIKSHA JALINDAR', 'samiksha.tamhane@sakec.ac.in', '7738386234', '7738386234', 'G2017CM109', 2017, 'Computer', 13984, 6, 'THIRD', 'TE4', 'D'),
(243, 54, 'TANDEL ADITI VINOD', 'aditi.tandel@sakec.ac.in', '9167688735', '9726171735', 'M2018CM107', 2018, 'Computer', 14494, 4, 'SECOND', 'SE3', 'C'),
(665, 52, 'TANDEL ANIKET ANANT', 'aniket.tandel@sakec.ac.in', '8879411975', '8450994212', 'C2015CM108', 2016, 'Computer', 12450, 8, 'FINAL', 'BE4', 'C'),
(741, 55, 'TANDEL MEHULKUMAR VINODKUMAR', 'mehulkumar.tandel@sakec.ac.in', '8879958763', '9867561212', 'M2017CM-D2', 2017, 'Computer', 14145, 8, 'FINAL', 'BED', 'D'),
(477, 64, 'TATED ANSHUL BHARAT', 'anshul.tated@sakec.ac.in', '9967122322', '9967122322', 'I2017CM108', 2017, 'Computer', 13961, 6, 'THIRD', 'TE4', 'D'),
(742, 56, 'TENDULKAR SHRADDHA SURYAKANT', 'shraddha.tendulkar@sakec.ac.in', '9821476457', '9322107935', 'C2017CM-D2', 2017, 'Computer', 14190, 8, 'FINAL', 'BED', 'D'),
(478, 65, 'THAKKAR HARSH KIRTIKUMAR', 'harsh.thakkar@sakec.ac.in', '7710931704', '9870118653', 'G2017CM109', 2017, 'Computer', 13992, 6, 'THIRD', 'TE4', 'D'),
(666, 53, 'THAKKAR HIMANI RAJEEV', 'himani.thakkar@sakec.ac.in', '9820813980', '9867281021', 'M2016CM110', 2016, 'Computer', 13218, 8, 'FINAL', 'BE4', 'D'),
(405, 73, 'THAKKAR JANAK TARUN', 'janak.thakkar@sakec.ac.in', '9820609994', '9920609994', 'I2017CM104', 2017, 'Computer', 13713, 6, 'THIRD', 'TE3', 'D'),
(244, 55, 'THAKKAR KUSH DINESH', 'kush.thakkar@sakec.ac.in', '9833902304', '9820154745', 'G2018CM112', 2018, 'Computer', 14902, 4, 'SECOND', 'SE3', 'C'),
(667, 54, 'THAKKAR MANANKUMAR JETHALAL', 'manankumar.thakkar@sakec.ac.in', '9867087080', '9892850882', 'G2016CM112', 2016, 'Computer', 13298, 8, 'FINAL', 'BE4', 'D'),
(582, 40, 'THAKKAR PREET BHARAT', 'preet.thakkar@sakec.ac.in', '9820636332', '9820104904', 'M2016CM102', 2016, 'Computer', 12932, 8, 'FINAL', 'BE3', 'C'),
(327, 65, 'THAKKAR YASH PRITAM', 'yash.thakkar@sakec.ac.in', '7045414156', '8291683211', '', 2018, 'Computer', 14587, 4, 'SECOND', 'SE4', 'D'),
(609, 67, 'THAKUR GAURAV RAJU', 'gaurav.thakur@sakec.ac.in', '7738816202', '9969233510', 'I2016CM102', 2016, 'Computer', 12918, 8, 'FINAL', 'BE3', 'D'),
(406, 74, 'THAKUR PARAS', '', '', '', '', 2016, 'Computer', 0, 6, 'THIRD', 'TE3', 'D'),
(704, 18, 'THAKUR VAISHNAVI MADHUKAR', 'vaishnavi.thakur@sakec.ac.in', '8082288587', '8291570989', 'C2017CM-D2', 2017, 'Computer', 14169, 8, 'FINAL', 'BED', 'A'),
(583, 41, 'THANKI HETVI NILESH', 'hetvi.thanki@sakec.ac.in', '9930480383', '9820703586', 'M2016CM104', 2016, 'Computer', 12997, 8, 'FINAL', 'BE3', 'C'),
(668, 55, 'THAPAR MILIND PRASHANT', 'milind.thapar@sakec.ac.in', '9769147973', '9820962792', 'I2016CM101', 2016, 'Computer', 12886, 8, 'FINAL', 'BE4', 'D'),
(479, 66, 'TIBREWALA PREET DHIREN', 'preet.tibrewala@sakec.ac.in', '9664122658', '9821250422', 'G2017CM112', 2017, 'Computer', 14283, 6, 'THIRD', 'TE4', 'D'),
(38, 51, 'TIWARI ANANDKUMAR NARENDRAKUMAR', 'anandkumar.tiwari_19@sakec.ac.in', '8329594937', '8411953940', 'C2019CM105', 2019, 'Computer', 15042, 2, 'FIRST', 'FE3', 'B'),
(527, 40, 'TIWARI DISHANK DURVIJAYNATH', 'dishank.tiwari@sakec.ac.in', '9702148944', '9702340549', 'C2018CM-D2', 2018, 'Computer', 14858, 6, 'THIRD', 'TED', 'C'),
(113, 63, 'TOTRE DHRUV PRAVEEN SHUBHANGI', 'dhruv.totre_19@sakec.ac.in', '7506407430', '9819901212', 'G2019CM114', 2019, 'Computer', 15291, 2, 'FIRST', 'FE4', 'C'),
(180, 65, 'TRIPATHI ANANYA ABHISHEK PRAGYA', 'ananya.tripathi_19@sakec.ac.in', '9869695817', '9869937093', 'G2019CM115', 2019, 'Computer', 15309, 2, 'FIRST', 'FE9', 'C'),
(105, 51, 'TRIVEDI HARSH MANISH JIGNA', 'harsh.trivedi_19@sakec.ac.in', '9323911108', '9833008908', 'M2019CM108', 2019, 'Computer', 15139, 2, 'FIRST', 'FE4', 'B'),
(166, 51, 'TRIVEDI KUNJ HITESHBHAI PARUL', 'kunj.trivedi_19@sakec.ac.in', '9082246358', '9221833572', 'M2019CM100', 2019, 'Computer', 14908, 2, 'FIRST', 'FE9', 'B'),
(644, 31, 'TRIVEDI SATYAM DAXESH', 'satyam.trivedi@sakec.ac.in', '8879904080', '9892388848', 'M2017CM200', 2017, 'Computer', 14153, 8, 'FINAL', 'BE4', 'B'),
(39, 52, 'TRIVEDI STUTI NITESH HIRAL', 'stuti.trivedi_19@sakec.ac.in', '8369527513', '9820793226', 'C2019CM102', 2019, 'Computer', 14954, 2, 'FIRST', 'FE3', 'B'),
(610, 68, 'TUNGARE AJINKYA PRAFULL', 'ajinkya.tungare@sakec.ac.in', '9819184043', '9820083055', 'I2016CM100', 2016, 'Computer', 12870, 8, 'FINAL', 'BE3', 'D'),
(106, 52, 'UGHADE YASH RAJU JYOTI', 'yash.ughade_19@sakec.ac.in', '7219711033', '9172921689', 'C2019CM106', 2019, 'Computer', 15072, 2, 'FIRST', 'FE4', 'B'),
(167, 52, 'UNDE VINAYAK DHONDIBA YOGITA', 'vinayak.unde_19@sakec.ac.in', '9870416202', '9870416202', 'C2019CM104', 2019, 'Computer', 15030, 2, 'FIRST', 'FE9', 'B'),
(328, 66, 'UNHALE SANKET SANJAY', 'sanket.unhale@sakec.ac.in', '9284988106', '9422721008', 'C2018CM108', 2018, 'Computer', 14545, 4, 'SECOND', 'SE4', 'D'),
(245, 56, 'UPADHAYAY KEWAL CHETAN', 'kewal.upadhayay@sakec.ac.in', '9619704227', '9920333232', 'M2018CM107', 2018, 'Computer', 14493, 4, 'SECOND', 'SE3', 'C'),
(480, 67, 'UPADHYAY PRATIK OMPRAKASH', 'pratik.upadhyay@sakec.ac.in', '9029041585', '9819594622', 'C2017CM107', 2017, 'Computer', 13916, 6, 'THIRD', 'TE4', 'D'),
(40, 53, 'UPADHYAY SHWETA ARUNKUMAR SUNAYA', 'shweta.upadhyay_19@sakec.ac.in', '9870753017', '9870753017', 'C2019CM111', 2019, 'Computer', 15214, 2, 'FIRST', 'FE3', 'B'),
(261, 72, 'VAGHELA SMIT RAJESH FALGUNI', 'smit.vaghela_19@sakec.ac.in', '9867225588', '9967225599', 'M2019CM200', 2019, 'Computer', 15344, 4, 'SECOND', 'SE3', 'D'),
(262, 73, 'VAIDYA MIHIR SACHIN RADHIKA', 'mihir.vaidya_19@sakec.ac.in', '9892813336', '9987441336', 'C2019CM200', 2019, 'Computer', 15250, 4, 'SECOND', 'SE3', 'D'),
(329, 67, 'VALIA HARSHKUMAR DHIRAJBHAI', 'harshkumar.valia@sakec.ac.in', '8080688595', '9322599595', 'M2018CM105', 2018, 'Computer', 14420, 4, 'SECOND', 'SE4', 'D'),
(481, 68, 'VANNELDAS VIGNESH LIMBADRI', 'vignesh.vanneldas@sakec.ac.in', '9867401657', '9967791699', 'C2018CM202', 2018, 'Computer', 14842, 6, 'THIRD', 'TE4', 'D'),
(611, 69, 'VARAVADEKAR VARAD GURUDAS', 'varad.varavadekar@sakec.ac.in', '9892151084', '9869303363', 'C2016CM108', 2016, 'Computer', 13149, 8, 'FINAL', 'BE3', 'D'),
(330, 68, 'VENGURLEKAR HARSH AJIT', 'harsh.vengurlekar@sakec.ac.in', '9082132146', '8652507670', 'I2018CM101', 2018, 'Computer', 14318, 4, 'SECOND', 'SE4', 'D'),
(54, 68, 'VEREKAR ANANT UPENDRA SUCHETA', 'anant.verekar_19@sakec.ac.in', '7900036392', '9920045877', 'C2019CM112', 2019, 'Computer', 15245, 2, 'FIRST', 'FE3', 'C'),
(482, 69, 'VERMA NAVNEET VIMAL SHYAMNANDAN', 'navneetvimal.verma@sakec.ac.in', '9967382877', '9869607682', 'C2017CM106', 2017, 'Computer', 13855, 6, 'THIRD', 'TE4', 'D'),
(669, 56, 'VICHARE ADITYA DINESH', 'aditya.vichare@sakec.ac.in', '9969953470', '9220966326', 'I2016CM101', 2016, 'Computer', 12891, 8, 'FINAL', 'BE4', 'D'),
(407, 75, 'VIDYA ARUMUGAM', 'vidya.@sakec.ac.in', '9821485334', '9892571789', 'C2017CM104', 2017, 'Computer', 13755, 6, 'THIRD', 'TE3', 'D'),
(528, 41, 'VINEETH PRASHANT', 'vineeth.@sakec.ac.in', '9920018711', '9820502942', 'G2018CM-D2', 2018, 'Computer', 14895, 6, 'THIRD', 'TED', 'C'),
(584, 42, 'VIRA DEEP SUNIL', 'deep.vira@sakec.ac.in', '9757479108', '9930392722', 'I2016CM110', 2016, 'Computer', 13242, 8, 'FINAL', 'BE3', 'C'),
(743, 57, 'VIRA YASH PARESH', 'yash.vira@sakec.ac.in', '9820314534', '9769739192', 'G2017CM-D2', 2017, 'Computer', 14264, 8, 'FINAL', 'BED', 'D'),
(107, 53, 'VORA BANSARI MAHENDRA ALPA', 'bansari.vora_19@sakec.ac.in', '9137403419', '9870026079', 'M2019CM100', 2019, 'Computer', 14912, 2, 'FIRST', 'FE4', 'B'),
(483, 70, 'VORA CHANSI PARESH', 'chansi.vora@sakec.ac.in', '9167434715', '9167434715', 'M2017CM106', 2017, 'Computer', 13859, 6, 'THIRD', 'TE4', 'D'),
(408, 76, 'VORA GUNJAN MANISH', 'gunjan.vora@sakec.ac.in', '8291490272', '9221448436', 'I2017CM108', 2017, 'Computer', 13950, 6, 'THIRD', 'TE3', 'D'),
(409, 77, 'VORA JAY BHARAT', 'jay.vora@sakec.ac.in', '9699466288', '9699886466', 'C2017CM103', 2017, 'Computer', 13702, 6, 'THIRD', 'TE3', 'D'),
(612, 70, 'VORA MANAN NIKHIL', 'manan.vora@sakec.ac.in', '9619207273', '9820033079', 'M2016CM104', 2016, 'Computer', 12988, 8, 'FINAL', 'BE3', 'D'),
(484, 71, 'VORA NIDHI NITIN', 'nidhi.vora@sakec.ac.in', '7506294201', '9867319905', 'M2017CM102', 2017, 'Computer', 13657, 6, 'THIRD', 'TE4', 'D'),
(485, 72, 'VORA RUSHABH RAJENDRA', 'rushabh.vora@sakec.ac.in', '8104469921', '9619445909', 'G2017CM101', 2017, 'Computer', 13625, 6, 'THIRD', 'TE4', 'D'),
(613, 71, 'VORA YASH SURESH', 'yash.vora@sakec.ac.in', '8080595394', '8108842435', 'M2016CM106', 2016, 'Computer', 13064, 8, 'FINAL', 'BE3', 'D'),
(486, 73, 'VYAS RIDDHI ANIL', 'riddhi.vyas@sakec.ac.in', '9930328962', '9821436380', 'M2018CM202', 2018, 'Computer', 14861, 6, 'THIRD', 'TE4', 'D'),
(585, 43, 'WAGHELA ANIKET ASHWIN', 'aniket.waghela@sakec.ac.in', '8898867652', '9820857873', 'M2016CM106', 2016, 'Computer', 13058, 8, 'FINAL', 'BE3', 'C'),
(168, 53, 'WAGHELA MEET SHAILESH PREETI', 'meet.waghela_19@sakec.ac.in', '9867368583', '9833114811', 'C2019CM111', 2019, 'Computer', 15222, 2, 'FIRST', 'FE9', 'B'),
(744, 58, 'WAGHELA PRAJESH ARVIND', 'prajesh.waghela@sakec.ac.in', '9930128576', '9833026436', 'M2017CM-D2', 2017, 'Computer', 14230, 8, 'FINAL', 'BED', 'D'),
(410, 78, 'WAGHMARE KSHITIJ DHANPAL', 'kshitij.waghmare@sakec.ac.in', '9619444011', '9619741011', 'G2017CM111', 2017, 'Computer', 14195, 6, 'THIRD', 'TE3', 'D'),
(529, 42, 'WANI VIRAL MILIND', 'viral.wani@sakec.ac.in', '8850122933', '9869136410', 'M2018CM-D2', 2018, 'Computer', 14845, 6, 'THIRD', 'TED', 'C'),
(246, 57, 'WARANG SAMIKSHA DINESH', 'samiksha.warang@sakec.ac.in', '8291680014', '9969486383', 'G2018CM102', 2018, 'Computer', 14323, 4, 'SECOND', 'SE3', 'C'),
(169, 54, 'YADAV DEVESH VIRENDRA REETA', 'devesh.yadav_19@sakec.ac.in', '7262829288', '9096858007', 'C2019CM101', 2019, 'Computer', 14926, 2, 'FIRST', 'FE9', 'C'),
(530, 43, 'YADAV PRATHAMESH SANJEEV', 'prathamesh.yadav@sakec.ac.in', '7506009104', '8108649762', 'G2018CM-D2', 2018, 'Computer', 14894, 6, 'THIRD', 'TED', 'C'),
(189, 74, 'YADAV ROHIT RAKESH ASHA', 'rohit.yadav_19@sakec.ac.in', '9137215258', '8828857328', 'G2019CM117', 2019, 'Computer', 15375, 2, 'FIRST', 'FE9', 'C'),
(411, 79, 'YASHWANTRAO PRANITA SUNIL', 'pranita.yashwantrao@sakec.ac.in', '7744845301', '9322207917', 'I2017CM101', 2017, 'Computer', 13612, 6, 'THIRD', 'TE3', 'D'),
(331, 69, 'YELAM ONKAR VINAYAK', 'onkar.yelam@sakec.ac.in', '9822814165', '9822814165', '', 2018, 'Computer', 14454, 4, 'SECOND', 'SE4', 'D'),
(412, 80, 'ZALA PRIYANKA AJITSINH', 'priyanka.zala@sakec.ac.in', '9653289771', '9320555575', 'M2017CM104', 2017, 'Computer', 13772, 6, 'THIRD', 'TE3', 'D'),
(188, 73, 'ZOLEKAR AVDHUT NANDKISHOR SHAILA', 'avdhut.zolekar_19@sakec.ac.in', '9167774609', '9820855064', 'G2019CM117', 2019, 'Computer', 15373, 2, 'FIRST', 'FE9', 'C'),
(487, 74, 'ZOPE AMEY MILIND', 'amey.zope@sakec.ac.in', '8879748378', '9820914368', 'C2017CM105', 2017, 'Computer', 13823, 6, 'THIRD', 'TE4', 'D'),
(413, 81, 'ZOTA HARSH JIGAR', 'harsh.zota@sakec.ac.in', '9323966999', '9820252007', 'M2017CM104', 2017, 'Computer', 13766, 6, 'THIRD', 'TE3', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `subject_table`
--

CREATE TABLE `subject_table` (
  `subject_no` varchar(32) NOT NULL,
  `subject_name` varchar(72) CHARACTER SET utf8 NOT NULL,
  `teacher1_id` varchar(11) DEFAULT NULL COMMENT 'References users(user_name)',
  `teacher2_id` varchar(11) DEFAULT NULL COMMENT 'References users(user_name)',
  `teacher3_id` varchar(11) DEFAULT NULL COMMENT 'References users(user_name)',
  `program` varchar(8) CHARACTER SET utf8 NOT NULL,
  `year` varchar(32) NOT NULL,
  `division` varchar(11) NOT NULL,
  `semester` varchar(32) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_table`
--

INSERT INTO `subject_table` (`subject_no`, `subject_name`, `teacher1_id`, `teacher2_id`, `teacher3_id`, `program`, `year`, `division`, `semester`) VALUES
('CSC401', 'Applied Mathematics- IV', 'N028', 'N027', '', 'COMPUTER', 'SECOND', 'SE3', '4'),
('CSC402', 'Analysis of Algorithms', 'N563', '', '', 'COMPUTER', 'SECOND', 'SE3', '4'),
('CSC403', 'Computer Organization and Archit', 'N555', 'N380', '', 'COMPUTER', 'SECOND', 'SE3', '4'),
('CSC404', 'Computer Graphics', 'N257', 'N-605', '', 'COMPUTER', 'SECOND', 'SE3', '4'),
('CSC405', 'Operating System', 'N387', 'N730', '', 'COMPUTER', 'SECOND', 'SE3', '4'),
('CSL405', 'Open Source Tech Lab', 'N270', '', '', 'COMPUTER', 'SECOND', 'SE3', '4'),
('CSC401', 'Applied Mathematics- IV', 'N028', 'N027', '', 'COMPUTER', 'SECOND', 'SE3', '4'),
('CSC402', 'Analysis of Algorithms', 'N563', '', '', 'COMPUTER', 'SECOND', 'SE3', '4'),
('CSC403', 'Computer Organization and Archit', 'N555', 'N380', '', 'COMPUTER', 'SECOND', 'SE3', '4'),
('CSC404', 'Computer Graphics', 'N257', 'N-605', '', 'COMPUTER', 'SECOND', 'SE3', '4'),
('CSC405', 'Operating System', 'N387', 'N730', '', 'COMPUTER', 'SECOND', 'SE3', '4'),
('CSL405', 'Open Source Tech Lab', 'N270', '', '', 'COMPUTER', 'SECOND', 'SE3', '4'),
('CSC401', 'Applied Mathematics- IV', 'N028', 'N027', 'N547', 'COMPUTER', 'SECOND', 'SE4', '4'),
('CSC402', 'Analysis of Algorithms', 'N458', '', '', 'COMPUTER', 'SECOND', 'SE4', '4'),
('CSC403', 'Computer Organization and Archit', 'N380', 'N715', '', 'COMPUTER', 'SECOND', 'SE4', '4'),
('CSC404', 'Computer Graphics', 'N257', 'N677', '', 'COMPUTER', 'SECOND', 'SE4', '4'),
('CSC405', 'Operating System', 'N387', 'N411', '', 'COMPUTER', 'SECOND', 'SE4', '4'),
('CSL405', 'Open Source Tech Lab', 'N315', '', '', 'COMPUTER', 'SECOND', 'SE4', '4'),
('CSC601', 'Software Engineering', 'N-605', 'N432', '', 'COMPUTER', 'THIRD', 'TE3', '6'),
('CSC602', 'System Programming & Complier Construction', 'N380', '442', '', 'COMPUTER', 'THIRD', 'TE3', '6'),
('CSC603', 'Data Warehousing & Mining', 'N395', 'N665', '', 'COMPUTER', 'THIRD', 'TE3', '6'),
('CSC604', 'Cryptography & System Security', 'N233', 'N339', '', 'COMPUTER', 'THIRD', 'TE3', '6'),
('CSDLO6021', 'Machine Learning', 'N146', 'N311', '', 'COMPUTER', 'THIRD', 'TE3', '6'),
('CSC601', 'Software Engineering', 'N-605', 'N432', '', 'COMPUTER', 'THIRD', 'TE4', '6'),
('CSC602', 'System Programming & Complier Construction', 'N525', 'n592', '', 'COMPUTER', 'THIRD', 'TE4', '6'),
('CSC603', 'Data Warehousing & Mining', 'N395', 'N665', '', 'COMPUTER', 'THIRD', 'TE4', '6'),
('CSC604', 'Cryptography & System Security', 'N233', 'N300', '', 'COMPUTER', 'THIRD', 'TE4', '6'),
('CSDLO6021', 'Machine Learning', 'N146', 'N616', '', 'COMPUTER', 'THIRD', 'TE4', '6'),
('CSC601', 'Software Engineering', 'N555', 'N595', '', 'COMPUTER', 'THIRD', 'TED', '6'),
('CSC602', 'System Programming & Complier Construction', 'N233', 'n592', '', 'COMPUTER', 'THIRD', 'TED', '6'),
('CSC603', 'Data Warehousing & Mining', 'N187', 'N432', '', 'COMPUTER', 'THIRD', 'TED', '6'),
('CSC604', 'Cryptography & System Security', 'N339', 'N387', '', 'COMPUTER', 'THIRD', 'TED', '6'),
('CSDLO6021', 'Machine Learning', 'N146', 'N616', '', 'COMPUTER', 'THIRD', 'TED', '6'),
('CSDLO6024', 'Advance Computer Network', 'N459', '', '', 'COMPUTER', 'THIRD', 'TED', '6'),
('CSC801', 'Human Machine Interaction', 'N627', 'n-511', '', 'COMPUTER', 'FINAL', 'BE3', '8'),
('CSC802', 'Distributed Computing', 'N311', 'N323', '', 'COMPUTER', 'FINAL', 'BE3', '8'),
('DLO8012', 'Natural Language Processing', 'N187', 'n592', '', 'COMPUTER', 'FINAL', 'BE3', '8'),
('DLO8013', 'Adhoc Wireless Network', '', '', '', 'COMPUTER', 'FINAL', 'BE3', '8'),
('ILO8021', 'Project Management', 'N459', 'N538', '', 'COMPUTER', 'FINAL', 'BE3', '8'),
('ILO8023', 'Entrepreneurship Development and Management', 'N325', 'N595', '', 'COMPUTER', 'FINAL', 'BE3', '8'),
('CSC801', 'Human Machine Interaction', 'N674', 'n-511', '', 'COMPUTER', 'FINAL', 'BE4', '8'),
('CSC802', 'Distributed Computing', 'N257', 'N323', '', 'COMPUTER', 'FINAL', 'BE4', '8'),
('DLO8012', 'Natural Language Processing', 'N563', 'N187', '', 'COMPUTER', 'FINAL', 'BE4', '8'),
('DLO8013', 'Adhoc Wireless Network', 'N395', 'N665', '', 'COMPUTER', 'FINAL', 'BE4', '8'),
('ILO8021', 'Project Management', 'N459', 'N538', '', 'COMPUTER', 'FINAL', 'BE4', '8'),
('ILO8023', 'Entrepreneurship Development and Management', 'N325', 'N595', '', 'COMPUTER', 'FINAL', 'BE4', '8'),
('CSC801', 'Human Machine Interaction', 'N674', 'N525', '', 'COMPUTER', 'FINAL', 'BED', '8'),
('CSC802', 'Distributed Computing', 'N311', '562', '', 'COMPUTER', 'FINAL', 'BED', '8'),
('DLO8012', 'Natural Language Processing', 'N187', 'N563', '', 'COMPUTER', 'FINAL', 'BED', '8'),
('DLO8013', 'Adhoc Wireless Network', 'N395', 'N665', '', 'COMPUTER', 'FINAL', 'BED', '8'),
('ILO8021', 'Project Management', 'N459', 'N538', '', 'COMPUTER', 'FINAL', 'BED', '8'),
('ILO8023', 'Entrepreneurship Development and Management', '', '', '', 'COMPUTER', 'FINAL', 'BED', '8');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(35) COLLATE latin1_general_ci NOT NULL,
  `user_name` varchar(32) COLLATE latin1_general_ci NOT NULL,
  `user_email` varchar(220) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `user_level` tinyint(4) NOT NULL DEFAULT 1,
  `pwd` varchar(220) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `program` varchar(32) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `user_name`, `user_email`, `user_level`, `pwd`, `program`) VALUES
(1, 'Radhika Fulzele', 'N674', 'radhika.fulzele@sakec.ac.in', 1, '3d765a983549ea9f5a41df7d9fffb9855119e74ee89e63581', 'Computer'),
(2, 'SHASHIKANT S RADKE', 'N323', 'shashikant.radke@sakec.ac.in', 1, '9123a46accc1891b4e770a4d06f47b5e6bd532d1a3177fcd7', 'Computer'),
(3, 'Pinki Vishwakarma', 'N395', 'pinki.vishwakarma@sakec.ac.in', 1, '555db7e20c3682b0de9fd5f31d79b4919dc95e169fa35edd1', 'Computer'),
(4, 'DEEPSHIKHA A CHATURVEDI', 'N411', 'deepshikha.chaturvedi@sakec.ac.in', 1, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(5, 'KARUNA J BORHADE', 'N458', 'karuna.borhade@sakec.ac.in', 1, '90f066f6b8ee51b300fbdeefefc3dc80c93bce072760220c4', 'Computer'),
(6, 'Pradip S. Mane', 'N677', 'pradip.mane@sakec.ac.in', 2, '58111f05385aa19f16e27b46d458e27e197b5626b6c293911', 'Computer'),
(7, 'Rupali S. Kale', 'N538', 'rupali.kale@sakec.ac.in', 1, '8f3ea5e71dc414818f2956b3b951a1b1b8028ac5a881673b0', 'Computer'),
(8, 'Shilpa Prashant Kalantri', '442', 'shilpa.kalantri@sakec.ac.in', 1, '0bdf44f0f7a514900aea81ed1e55a324ad8ce01aa13794606', 'Computer'),
(9, 'UDAY BHAVE', 'N146', 'uday.bhave@sakec.ac.in', 1, 'ecc7e3ce6a1bd7a1dee7e44a3e6da6c40744eff7fead1c50d', 'Computer'),
(10, 'Pallavi Deshmane', 'N380', 'pallavi.deshmane@sakec.ac.in', 1, '3adb5ca0871093bf7506b6ebd8365578c77cec65b57b31067', 'Computer'),
(11, 'Deepti Deepak Nikumbh', 'N616', 'deepti.nikumbh@sakec.ac.in', 1, '890ee5d4ae8be8d274cfbf45a745a640956514b112da2a988', 'Computer'),
(12, 'Jaya Zalte', 'N555', 'jaya.zalte@sakec.ac.in', 1, 'a356c5c72756869b45b90b086a62da1287393947e13b79e7c', 'Computer'),
(13, 'Priyanka Lohot', 'N628', 'priyanka.lohot@sakec.ac.in', 1, '9ccdfae2a10a87e8af407ee272db9aa8dbc8f750876ee7386', 'Computer'),
(14, 'Tina Maru', 'N432', 'tina.maru@sakec.ac.in', 1, 'a9d05499ba97dd5b2d921bc1fccc5685174c549abcd2b242f', 'Computer'),
(15, 'Krupa Gaurav Chotai', 'N525', 'krupa.chotai@sakec.ac.in', 2, 'd146465ecc024a8b7a0904946fc4887e02d7cd6129e9bfcc5', 'Computer'),
(16, 'Prakash Parmar', 'N625', 'prakash.parmar@sakec.ac.in', 1, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(17, 'MILIND SUDHIR KHAIRNAR', 'N325', 'milind.khairnar@sakec.ac.in', 1, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(18, 'Vaishali Virendra Chavan', 'N387', 'vaishali.chavan@sakec.ac.in', 1, '4d720a094851ddcf4ceb5cc9466453d10506f95336808bd59', 'Computer'),
(19, 'Shahzia Sayyad', 'N270', 'shahzia.sayyad@sakec.ac.in', 1, '8fd9f93643dc7b6567ee383ea285d9f600c13fe9b04222a20', 'Computer'),
(20, 'Snehal Madhukar Shewale', 'N675', 'snehal.shewale@sakec.ac.in', 1, '2cdea1670ab758e178b2cba6ebba1fb364591d6a1589f0eeb', 'Computer'),
(21, 'Sarika Shrivastava', 'N615', 'sarika.shrivastava@sakec.ac.in', 1, '1651aa3467cf00bd92a85b0a980babf30306c3ee9283da2ef', 'Computer'),
(22, 'Amol Dhumal', 'N459', 'amol.dhumal@sakec.ac.in', 1, '22ca3f751f3d8b62f04b0ae8185887a4190334a0a94b131c3', 'Computer'),
(23, 'Monika Ravishankar Kanojiya', 'N595', 'monika.kanojiya@sakec.ac.in', 1, 'aa84b71249b2b1d7d1ebe553acd01a682afb6829c9d43383c', 'Computer'),
(24, 'Rekha More', 'N665', 'rekha.more@sakec.ac.in', 2, 'abf5a2210679269010abf79bd864ec04851fa5b0c941b5905', 'Computer'),
(25, 'Patil Shweta', 'n592', 'shweta.patil@sakec.ac.in', 2, 'a44457aa45ca96064b7cb59106278ea8ba7454c3ef724aeb8', 'Computer'),
(26, 'Sonali Bhutad', 'N339', 'sonali.bhutad@sakec.ac.in', 1, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(27, 'DHANASHREE THAKUR', 'N614', 'dhanshree.thakur@sakec.ac.in', 1, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(28, 'vaishali Hirlekar', 'N300', 'vaishali.hirlekar@sakec.ac.in', 1, '18feada8b0b24f860f9b0862210b81ededadd3990d589477c', 'Computer'),
(29, 'Deepti Nitin Pawar', 'n-511', 'deepti.pawar@sakec.ac.in', 1, '1156362be0e09859c109436951d082a9f1a3909cd231ab749', 'Computer'),
(30, 'Manoj Dhande', 'N315', 'manoj.dhande@sakec.ac.in', 1, '95f90abd43be3d3672eaef4781962f23fdd837e14cdc7a22e', 'Computer'),
(31, 'Deepa Ekhande', 'N627', 'deepa.ekhande@sakec.ac.in', 2, '6e197eada1a398e37b541586b86b6117a6479ad21d1552e22', 'Computer'),
(32, 'Shrungashri Chhotulal Chaudhary', 'N660', 'shrungashri.chaudhary@sakec.ac.in', 1, 'd101b54a30db67b84b2500279f20c8351cb4cbc322f149d00', 'Computer'),
(33, 'Tejas Hirave', '562', 'tejas.hirve@sakec.ac.in', 1, '5a0574a0b2888645480bfeed351470fad7d62c20822e03991', 'Computer'),
(34, 'ARUN SAKLANI', '589', 'arun.saklani@sakec.ac.in', 1, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(35, 'Mr. Atul Haribhau Kachare', 'N563', 'atul.kachare@sakec.ac.in', 1, '98f190701908073ca8b3cb12760ce683f85fc7c8ac99d32e6', 'Computer'),
(36, 'Sarika Paresh Rane', 'N-605', 'SARIKA.RANE@SAKEC.AC.IN', 1, '8175ef83e7958e392dab2f0756e4f6d061389001c204c854c', 'Computer'),
(37, 'Rekha Ramesh', 'N187', 'rekha.ramesh@sakec.ac.in', 1, '642b9e0627dd0dc16c931baa3b52556c9e905d25299cbfe02', 'Computer'),
(38, 'Priyanka Sunil Shende', 'N708', 'priyanka.shende@sakec.ac.in', 1, '5cb2149c0f7cc06a99a89c2915b0a466c65a85e293e48229b', 'Computer'),
(39, 'Sonal Raut', 'N655', 'sonal.raut@sakec.ac.in', 1, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(40, 'MANIMALA MAHATO', 'N311', 'manimala.mahato@sakec.ac.in', 1, '2e6f67f9e905a2c768e1cd27922b008cd35cf77e3c072062b', 'Computer'),
(41, 'Bhakti Sonawane', 'N257', 'bhakti.sonawane@sakec.ac.in', 1, 'bc5992d45ece739ad47923de183e39a21d65c2e301a5f6464', 'Computer'),
(42, 'Vidyullata Devmane', 'N233', 'vidyullata.devmane@sakec.ac.in', 1, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(43, 'Priyanka Anil Ghule', 'N709', 'priyanka.ghule@sakec.ac.in', 2, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(45, 'MANE MANISHA VIVEK', 'N370', 'manisha.mane@sakec.ac.in', 1, '39fd43472d379e0edb5144e73e7dcecb5c6d8dc280a344693', 'Computer'),
(46, 'Gundapuneni Sharmila', 'N328', 'sharmila.gundapaneri@sakec.ac.in', 1, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(47, 'SHRIKRISHNA P DASARI', 'N330', 'shrikrishna.dasari@sakec.ac.in', 1, 'b9e5409287a4708b4fe35c09813e071a97659a9dd6a001386', 'Computer'),
(48, 'SADASHIV PANDURANG DAHAKE', 'N027', 'sadashiv.dahake@sakec.ac.in', 1, 'cc10437a7fe235afffa0294796e73c3a3efa29a78d3c40c66', 'Computer'),
(49, 'SANJAY C PATIL', 'N321', 'sanjay.patil@sakec.ac.in', 1, '3d0ae3ba46796652eafbd14770f9c5829bc6fdaeb0687e5f3', 'Computer'),
(50, 'MISHRA DEEPAK SHARMA', 'N694', 'deepak.mishra@sakec.ac.in', 1, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(51, 'V. PADMAVATHI', 'N657', 'padmavathi.perumal@sakec.ac.in', 1, '83f877b53a8affaf7ce30ad52fbb796cddd0256b68dad8bed', 'Computer'),
(52, 'Rupali Milind Hagavane', 'N699', 'rupali.hagavane@sakec.ac.in', 1, '09badee3faca427ffd39d2f364f068573f4f9d4b0891ea35c', 'Computer'),
(53, 'MS. ARUNA SHARMA', 'N288', 'aruna.sharma@sakec.ac.in', 1, 'd9560248309a0d6aea4d5881804c23caf7a7c78b35a35ff3d', 'Computer'),
(54, 'UMA PARAMESHWARI C. K.', 'N547', 'uma.iyer@sakec.ac.in', 1, '8e9cbf88b22ee8bcf4f096e7822695847e22730d500aaa3b5', 'Computer'),
(55, 'MS. SHUBHALAXMI HEGDE', 'N028', 'shubhalaxmi.hegde@sakec.ac.in', 1, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(56, 'Archana Kamlakant Salaskar', 'N711', 'archana.salaskar@sakec.ac.in', 1, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(57, 'Priyanka Yashodhan Abhyankar', 'N715', 'priyanka.abhyankar@sakec.ac.in', 1, 'a064754fa26d7082be858b3d12e7cc651afc559290807616e', 'Computer'),
(58, 'JAGATSING MANRAL', 'N721', 'jagat.manral@sakec.ac.in', 1, 'f34ee62239887039475121e136a7b9dd2253eb6c3a6e276b2', 'Computer'),
(59, 'MS. GAURI G. DESHPANDE', 'N690', 'gauri.deshpande@sakec.ac.in', 1, '234c6e166016f7963aad5d3c538199cbc4150df82cc471e7e', 'Computer'),
(60, 'Vidya Roshan kottari', 'N727', 'vidya.kottari@sakec.ac.in', 1, 'b9de9a66a305172ab9a3dcc82315330fcad87340701099b37', 'Computer'),
(61, 'Dipti Mahesh Mukadam', 'N726', 'dipti.mukadam@sakec.ac.in', 2, '727f98f13c1537c2d08671539e099f07b79e422b6d00ecd3f', 'Computer'),
(62, 'Priyanka govind jagtap', 'N748', 'priyanka.zirpe@sakec.ac.in', 2, 'd4cb7137ad9d798ab62b9f8ec1d3ae3f7a0217864169efa45', 'Computer'),
(63, 'Vaishali B. Kosamkar', 'N730', 'vaishali.kosamkar@sakec.ac.in', 1, 'fd805798c2dae6a7172514bf83ca06f9df8c8b824dfa3ed27', 'Computer'),
(64, 'Gopal Nanda', 'N415', 'gopal.nanda@sakec.ac.in', 1, '118dd5f25f92f9dbdb30c3905c82445b694749317a1b20d5b', 'Computer'),
(65, 'nadkumar', 'nadkumar gatkul', 'nadkumar.gatkul@sakec.ac.in', 1, '79523dfc871c6ef3477e7dbd727a590a47d24467640f10ed1', 'Computer'),
(66, 'JYOTI VINAYAK DEOGIRIKAR', 'N735', 'jyoti.deogirikar@sakec.ac.in', 2, 'fdbda5550f57a548481acea7177e84ce6719d17ef5090f9e2', 'Computer'),
(67, 'Admin Computer', 'admin_computer', 'admin@email.com', 5, 'hello', 'Computer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_table`
--
ALTER TABLE `lab_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sem_details`
--
ALTER TABLE `sem_details`
  ADD UNIQUE KEY `sem_id` (`semester`);

--
-- Indexes for table `student_table2`
--
ALTER TABLE `student_table2`
  ADD UNIQUE KEY `student_name` (`student_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `user_name` (`user_name`);
ALTER TABLE `users` ADD FULLTEXT KEY `idx_search` (`full_name`,`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_table`
--
ALTER TABLE `lab_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
