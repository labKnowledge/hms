-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql208.epizy.com
-- Generation Time: May 11, 2023 at 03:19 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_32822078_hospitalhms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `id` int(100) NOT NULL,
  `img_url` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`, `hospital_id`) VALUES
(81, '', 'Mr Accountant', 'accountant@hms.com', 'Colegepara, Rajbari', '+0123456789', '', '755', '416');

-- --------------------------------------------------------

--
-- Table structure for table `alloted_bed`
--

CREATE TABLE `alloted_bed` (
  `id` int(100) NOT NULL,
  `number` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `a_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bed_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `time_slot` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `e_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `registration_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `request` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `patient`, `doctor`, `date`, `time_slot`, `s_time`, `e_time`, `remarks`, `add_date`, `registration_time`, `s_time_key`, `status`, `user`, `request`, `hospital_id`) VALUES
(414, '33', '149', '1652738400', '0', '', '', '', '05/17/22', '1652781322', '0', 'Confirmed', '751', '', '416'),
(415, '33', '149', '1653091200', 'Not Selected', 'Not Selected', '', '', '05/21/22', '1653129129', '0', 'Confirmed', '751', '', '416'),
(418, '40', '150', '1653868800', 'Not Selected', 'Not Selected', '', '', '05/30/22', '1653899864', '0', 'Confirmed', '756', '', '416'),
(419, '40', '149', '1653868800', 'Not Selected', 'Not Selected', '', '', '05/30/22', '1653918192', '0', 'Confirmed', '756', '', '416'),
(420, '40', '149', '1654128000', '0', '', '', 'FEVER', '06/02/22', '1654174832', '0', 'Treated', '751', '', '416'),
(421, '38', '149', '1654128000', '08:30 AM To 08:45 AM', '08:30 AM', '08:45 AM', '', '06/02/22', '1654177507', '102', 'Confirmed', '756', '', '416'),
(422, '40', '149', '1654560000', 'Not Selected', 'Not Selected', '', '', '06/07/22', '1654604347', '0', 'Confirmed', '756', '', '416'),
(423, '42', '149', '1654560000', 'Not Selected', 'Not Selected', '', 'headache', '06/07/22', '1654605458', '0', 'Confirmed', '756', '', '416'),
(424, '43', '149', '1654560000', 'Not Selected', 'Not Selected', '', 'fever', '06/07/22', '1654609282', '0', 'Confirmed', '756', '', '416'),
(425, '44', '149', '1655164800', '0', '', '', '', '06/14/22', '1655196668', '0', 'Treated', '751', '', '416'),
(426, '45', '149', '1655078400', '0', '', '', '', '06/14/22', '1655210737', '0', 'Confirmed', '751', '', '416'),
(427, '46', '149', '1655251200', 'Not Selected', 'Not Selected', '', '', '06/15/22', '1655281489', '0', 'Confirmed', '756', '', '416'),
(428, '47', '149', '1655251200', 'Not Selected', 'Not Selected', '', '', '06/15/22', '1655282027', '0', 'Confirmed', '756', '', '416'),
(429, '49', '149', '1655337600', 'Not Selected', 'Not Selected', '', '', '06/16/22', '1655369704', '0', 'Confirmed', '756', '', '416'),
(430, '50', '149', '1655337600', 'Not Selected', 'Not Selected', '', '', '06/16/22', '1655371462', '0', 'Pending Confirmation', '756', '', '416'),
(431, '51', '149', '1655337600', 'Not Selected', 'Not Selected', '', 'stomach problem', '06/16/22', '1655378227', '0', 'Confirmed', '2', '', '416'),
(432, '52', '149', '1655424000', 'Not Selected', 'Not Selected', '', '', '06/17/22', '1655450368', '0', 'Confirmed', '756', '', '416'),
(433, '53', '149', '1655424000', 'Not Selected', 'Not Selected', '', '', '06/17/22', '1655452506', '0', 'Confirmed', '756', '', '416'),
(434, '63', '152', '1657843200', 'Not Selected', 'Not Selected', '', '', '07/15/22', '1657878409', '0', 'Confirmed', '756', '', '416'),
(435, '64', '153', '1658102400', 'Not Selected', 'Not Selected', '', '', '07/18/22', '1658149706', '0', 'Confirmed', '756', '', '416');

-- --------------------------------------------------------

--
-- Table structure for table `bankb`
--

CREATE TABLE `bankb` (
  `id` int(100) NOT NULL,
  `group` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankb`
--

INSERT INTO `bankb` (`id`, `group`, `status`, `hospital_id`) VALUES
(1, 'A+', '0 Bags', '416'),
(2, 'A-', '0 Bags', '416'),
(3, 'B+', '0 Bags', '416'),
(4, 'B-', '0 Bags', '416'),
(5, 'AB+', '0 Bags', '416'),
(6, 'AB-', '0 Bags', '416'),
(7, 'O+', '0 Bags', '416'),
(8, 'O-', '0 Bags', '416'),
(224, 'O-', '0 Bags', '451'),
(223, 'O+', '0 Bags', '451'),
(222, 'AB-', '0 Bags', '451'),
(221, 'AB+', '0 Bags', '451'),
(220, 'B-', '0 Bags', '451'),
(219, 'B+', '0 Bags', '451'),
(218, 'A-', '0 Bags', '451'),
(217, 'A+', '0 Bags', '451'),
(225, 'A+', '0 Bags', '452'),
(226, 'A-', '0 Bags', '452'),
(227, 'B+', '0 Bags', '452'),
(228, 'B-', '0 Bags', '452'),
(229, 'AB+', '0 Bags', '452'),
(230, 'AB-', '0 Bags', '452'),
(231, 'O+', '0 Bags', '452'),
(232, 'O-', '0 Bags', '452'),
(233, 'A+', '0 Bags', '453'),
(234, 'A-', '0 Bags', '453'),
(235, 'B+', '0 Bags', '453'),
(236, 'B-', '0 Bags', '453'),
(237, 'AB+', '0 Bags', '453'),
(238, 'AB-', '0 Bags', '453'),
(239, 'O+', '0 Bags', '453'),
(240, 'O-', '0 Bags', '453'),
(241, 'A+', '0 Bags', '454'),
(242, 'A-', '0 Bags', '454'),
(243, 'B+', '0 Bags', '454'),
(244, 'B-', '0 Bags', '454'),
(245, 'AB+', '0 Bags', '454'),
(246, 'AB-', '0 Bags', '454'),
(247, 'O+', '0 Bags', '454'),
(248, 'O-', '0 Bags', '454'),
(249, 'A+', '0 Bags', '455'),
(250, 'A-', '0 Bags', '455'),
(251, 'B+', '0 Bags', '455'),
(252, 'B-', '0 Bags', '455'),
(253, 'AB+', '0 Bags', '455'),
(254, 'AB-', '0 Bags', '455'),
(255, 'O+', '0 Bags', '455'),
(256, 'O-', '0 Bags', '455'),
(257, 'A+', '0 Bags', '456'),
(258, 'A-', '0 Bags', '456'),
(259, 'B+', '0 Bags', '456'),
(260, 'B-', '0 Bags', '456'),
(261, 'AB+', '0 Bags', '456'),
(262, 'AB-', '0 Bags', '456'),
(263, 'O+', '0 Bags', '456'),
(264, 'O-', '0 Bags', '456');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `number` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `last_a_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `last_d_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bed_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bed_category`
--

CREATE TABLE `bed_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed_category`
--

INSERT INTO `bed_category` (`id`, `category`, `description`, `hospital_id`) VALUES
(6, 'Icu', '10 beds', '416'),
(7, 'Ccu', '10 beds', '416'),
(8, 'Children', '5 beds', '416'),
(10, 'General Ward', '50 beds', '416');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `description`, `x`, `y`, `hospital_id`) VALUES
(12, 'Cardiology', '<p>This department provides medical care to patients who have problems with their heart or circulation. It treats people on an inpatient and outpatient basis. </p>\n', '', '', '416'),
(15, 'Diagnostic imaging', 'Formerly known as X-ray, this department provides a full range of diagnostic imaging services including:\n\n', '', '', '416'),
(17, 'Ear nose and throat (ENT)', 'Ear nose and throat (ENT)\nThe ENT department provides care for patients with a variety of problems, including:\ngeneral ear, nose and throat diseases\nneck lumps\ncancers of the head and neck area\ntear duct problems\nfacial skin lesions\nbalance and hearing disorders\nsnoring and sleep apnoea\nENT allergy problems\nsalivary gland diseases\nvoice disorders.\n', '', '', '416'),
(20, 'General surgery', 'The general surgery ward covers a wide range of surgery.', '', '', '416'),
(24, 'Microbiology', 'The microbiology department looks at all aspects of microbiology, such as bacterial and viral infections.\n\n', '', '', '416'),
(26, 'Nephrology', 'This department monitors and assesses patients with kidney (renal) problems.\n', '', '', '416'),
(27, 'Neurology', 'This unit deals with disorders of the nervous system, including the brain and spinal cord. It\'s run by doctors who specialise in this area (neurologists) and their staff.\n\n', '', '', '416'),
(28, 'Nutrition and dietetics', 'Trained dieticians and nutritionists provide specialist advice on diet for hospital wards and outpatient clinics, forming part of a multidisciplinary team.\n\n', '', '', '416'),
(32, 'Occupational therapy', 'This profession helps people who are physically or mentally impaired, including temporary disability after medical treatment. It practices in the fields of both healthcare and social care.\n\n', '', '', '416'),
(33, 'Oncology', 'This department provides radiotherapy and a full range of chemotherapy treatments for cancerous tumours and blood disorders.\n\n', '', '', '416'),
(34, 'Ophthalmology', 'Eye departments provide a range of ophthalmic services for adults and children,\n\n', '', '', '416'),
(35, 'Orthopaedics', 'Orthopaedic departments treat problems that affect your musculoskeletal system. That\'s your muscles, joints, bones, ligaments, tendons and nerves.\n\n', '', '', '416'),
(36, 'Pain management clinics', 'Usually run by consultant anaesthetists, these clinics aim to help treat patients with severe long-term pain that appears resistant to normal treatments.\n', '', '', '416'),
(38, 'Physiotherapy', 'Physiotherapists promote body healing, for example after surgery, through therapies such as exercise and manipulation.\n\n', '', '', '416'),
(39, 'Radiotherapy', 'Radiotherapy\nRun by a combination of consultant doctors and specially trained radiotherapists, this department provides radiotherapy (X-ray) treatment for conditions such as malignant tumours and cancer.\n\n', '', '', '416'),
(40, 'Renal unit', 'Closely linked with nephrology teams at hospitals, these units provide haemodialysis treatment for patients with kidney failure. Many of these patients are on waiting lists for a kidney transplant.\n\n', '', '', '416'),
(41, 'Rheumatology', 'Specialist doctors called rheumatologists run the unit and are experts in the field of musculoskeletal disorders (bones, joints, ligaments, tendons, muscles and nerves).\n\n', '', '', '416'),
(42, 'Sexual health (genitourinary medicine)', 'This department provides a free and confidential service offering:\nadvice, testing and treatment for all sexually transmitted infections (STIs)\nfamily planning care (including emergency contraception and free condoms)\npregnancy testing and advice.\nIt also provides care and support for other sexual and genital problems.\nPatients are usually able to phone the department directly for an appointment and don\'t need a referral letter from their GP.\n\n\n', '', '', '416'),
(43, 'Urology', '<p>The urology department is run by consultant urology surgeons and their surgical teams. It investigates all areas linked to kidney and bladder-based problems.</p>\n', '', '', '416'),
(51, 'Department Name 1', '<p>Description 1</p>\n', '', '', '416'),
(52, 'Department Name 2', '<p>Department Name 2</p>\n', '', '', '449'),
(53, 'General Practitioner', '<p>GP doctor</p>\r\n', NULL, NULL, '416'),
(54, 'Obs & Gyne', '<p>Specialists Obstetricians & Gynecologists</p>\r\n', NULL, NULL, '416');

-- --------------------------------------------------------

--
-- Table structure for table `diagnostic_report`
--

CREATE TABLE `diagnostic_report` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `invoice` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `report` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(10) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `profile` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `department`, `profile`, `x`, `y`, `ion_user_id`, `hospital_id`) VALUES
(149, 'uploads/StarMedicalCentre-removebg-preview1.png', 'DR. S. A. KALENGO', 'SKALENGO@hms.com', 'Area 49, Lilongwe', '0993438181', 'General Practitioner', 'locum gp', '', '', '751', '416'),
(152, NULL, 'DR ZAINAB MALUK', 'drzainabm@hms.com', 'p.o box 1889 bt', '0994185509', 'General Practitioner', 'locum gp', NULL, NULL, '792', '416'),
(151, NULL, 'DR BENSON BANDA', 'DRB.BANDA@hms.com', 'PO BOX1889 bt', '0884053590', 'General Practitioner', 'RESIDENT GP', NULL, NULL, '784', '416'),
(153, NULL, 'DR CHIKONDI MALUWA', 'doctor@hms.com', 'bvox 123', '0992090717', 'General Practitioner', 'locum GP / Clinician', NULL, NULL, '794', '416'),
(154, NULL, 'DR CHANOZGA NYIRENDA', 'doctor11@hms.com', 'bvox 123', '99887766', 'General Practitioner', 'locum gp', NULL, NULL, '796', '416'),
(155, NULL, 'DR PARTH PATEL', 'pp@hms.com', 'P. O. Box 5929, Limbe', '0888336600', 'General Practitioner', 'GP', NULL, NULL, '807', '416');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `group` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `age` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ldd` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(100) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `message` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `reciepient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(100) NOT NULL,
  `admin_email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `admin_email`, `type`, `user`, `password`, `hospital_id`) VALUES
(19, 'info@armarketingmw.com', '', '', '', '416'),
(21, 'info@armarketingmw.com', NULL, NULL, NULL, '452'),
(22, 'info@armarketingmw.com', NULL, NULL, NULL, '453'),
(23, 'info@armarketingmw.com', NULL, NULL, NULL, '454'),
(24, 'info@armarketingmw.com', NULL, NULL, NULL, '455'),
(25, 'info@armarketingmw.com', NULL, NULL, NULL, '456');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `note` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`id`, `category`, `description`, `x`, `y`, `hospital_id`) VALUES
(58, 'test', '500', NULL, NULL, '416');

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` int(100) NOT NULL,
  `img_url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `profile` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'superadmin', 'Super Admin'),
(2, 'members', 'General User'),
(3, 'Accountant', 'For Financial Activities'),
(4, 'Doctor', ''),
(5, 'Patient', ''),
(6, 'Nurse', ''),
(7, 'Pharmacist', ''),
(8, 'Laboratorist', ''),
(10, 'Receptionist', 'Receptionist'),
(11, 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(100) NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(100) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `package` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `p_limit` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_limit` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `module` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `email`, `password`, `address`, `phone`, `package`, `p_limit`, `d_limit`, `module`, `ion_user_id`) VALUES
(416, 'CodinfoTech', 'codinfotech@gmail.com', '', 'PLOT No. 50, ALONG GLYNN JONNES ROAD, NAMIWAWA, BLANTYRE, MALAWI P. O. BOX 1889, BLANTYRE', '+265 (0) 887739844, (0) 997739844 ', '77', '100000', '100000', 'accountant,appointment,lab,bed,department,doctor,donor,finance,pharmacy,laboratorist,medicine,nurse,patient,pharmacist,prescription,receptionist,report,notice,email,sms,scheme', '2');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category_name` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `report` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_string` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'Default'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `category`, `patient`, `doctor`, `date`, `category_name`, `report`, `status`, `user`, `patient_name`, `patient_phone`, `patient_address`, `doctor_name`, `date_string`, `hospital_id`, `type`) VALUES
(1941, NULL, '54', '149', '1655683200', NULL, '<h2><strong>HUMAN IMMUNODEFICIENCY VIRUS (HIV)</strong></h2>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td><strong>PARAMETER</strong></td>\r\n   <td><strong>RESULT</strong></td>\r\n  </tr>\r\n  <tr>\r\n   <td>HIV</td>\r\n   <td>NON-REACTIVE</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', NULL, '754', 'SAM THUNDE', '0999511693', 'BOX 3524 BT', 'DR. S. A. KALENGO', '20-06-22', '416', 'Default'),
(1944, NULL, '57', '', '1655942400', NULL, '<p><strong>RANDOM BLOOD SUGAR (RBS) </strong></p>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td><strong>PARAMETER</strong></td>\r\n   <td><strong>RESULT</strong></td>\r\n  </tr>\r\n  <tr>\r\n   <td>RBS</td>\r\n   <td>131 mg/dl</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<h2><strong>LIPID PROFILE </strong></h2>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td><strong>PARAMETER</strong></td>\r\n   <td><strong>RESULT</strong></td>\r\n   <td><strong>UNIT</strong></td>\r\n   <td><strong>REF RANGES</strong></td>\r\n  </tr>\r\n  <tr>\r\n   <td>TOTAL CHOLESTEROL (T.CHOL)</td>\r\n   <td>157.6</td>\r\n   <td>mg/dl</td>\r\n   <td>75-200</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', NULL, '754', 'FATIMA FAZILIANI', '0999132391', 'LIMBE', '0', '23-06-22', '416', 'Default'),
(1945, NULL, '56', '', '1655942400', NULL, '<p><strong>RANDOM BLOOD SUGAR (RBS) </strong></p>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td><strong>PARAMETER</strong></td>\r\n   <td><strong>RESULT</strong></td>\r\n  </tr>\r\n  <tr>\r\n   <td>RBS</td>\r\n   <td>112mg/dl</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<h2><strong>FULL BLOOD COUNT ( FBC / CBC)</strong></h2>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n   <td> UNIT</td>\r\n   <td> REF. RANGES</td>\r\n  </tr>\r\n  <tr>\r\n   <td>WBC</td>\r\n   <td>8.51</td>\r\n   <td>10^9/L</td>\r\n   <td>4.00 - 10.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEU#</td>\r\n   <td>6.47</td>\r\n   <td>10^9/L</td>\r\n   <td>2.00 - 7.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LYM#</td>\r\n   <td>1.67</td>\r\n   <td> </td>\r\n   <td>0.80 - 4.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MON#</td>\r\n   <td>0.34</td>\r\n   <td>10^9/L</td>\r\n   <td>0.12 - 1.20</td>\r\n  </tr>\r\n  <tr>\r\n   <td>EOS#</td>\r\n   <td>0.03</td>\r\n   <td>10^9/L</td>\r\n   <td>0.02 - 0.50</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BAS#</td>\r\n   <td>0.00</td>\r\n   <td>10^9/L</td>\r\n   <td>0.00 -  010</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEU%</td>\r\n   <td>0.761</td>\r\n   <td> </td>\r\n   <td>0.500 - 0.700</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LYM%</td>\r\n   <td>0.197</td>\r\n   <td> </td>\r\n   <td>0.200 - 0.400</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MON%</td>\r\n   <td>0.039</td>\r\n   <td> </td>\r\n   <td>0.030 - 0.120</td>\r\n  </tr>\r\n  <tr>\r\n   <td>EOS%</td>\r\n   <td>0.003</td>\r\n   <td> </td>\r\n   <td>0.005 - 0. 050</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BAS%</td>\r\n   <td>0.000</td>\r\n   <td> </td>\r\n   <td>0.000 - 0.010</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RBC</td>\r\n   <td>5.43</td>\r\n   <td>10^12/L</td>\r\n   <td>3.50 - 5.50</td>\r\n  </tr>\r\n  <tr>\r\n   <td>HGB</td>\r\n   <td>16.9</td>\r\n   <td>g/L</td>\r\n   <td>11.0 16.0 </td>\r\n  </tr>\r\n  <tr>\r\n   <td>HCT</td>\r\n   <td>0.499</td>\r\n   <td> </td>\r\n   <td>0.370 - 0.540</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCV</td>\r\n   <td>91.9</td>\r\n   <td>f/L</td>\r\n   <td>80.0 - 100.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCH</td>\r\n   <td>31.1</td>\r\n   <td>pg</td>\r\n   <td>27.0 - 34.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCHC</td>\r\n   <td>399</td>\r\n   <td>g/L</td>\r\n   <td>320 - 360</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RDW-CW</td>\r\n   <td>0.126</td>\r\n   <td> </td>\r\n   <td>0.110 - 0.160</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RDW-SD</td>\r\n   <td>43.6</td>\r\n   <td>f/L</td>\r\n   <td>35.0 - 56.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PLT</td>\r\n   <td>267</td>\r\n   <td>10^9/L</td>\r\n   <td>100 - 400</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MPV</td>\r\n   <td>8.0</td>\r\n   <td>f/L</td>\r\n   <td>7.0 - 11.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PDW</td>\r\n   <td>15.6</td>\r\n   <td> </td>\r\n   <td>9.0 - 17.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PCT</td>\r\n   <td>1.12</td>\r\n   <td>Ml/l</td>\r\n   <td>1.08 - 2.82</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<h2><strong>LIPID PROFILE </strong></h2>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td><strong>PARAMETER</strong></td>\r\n   <td><strong>RESULT</strong></td>\r\n   <td><strong>UNIT</strong></td>\r\n   <td><strong>REF RANGES</strong></td>\r\n  </tr>\r\n  <tr>\r\n   <td>LOW DENSITY LIPOPROTEIN (LDL)</td>\r\n   <td>89.6</td>\r\n   <td>mg/dl</td>\r\n   <td>˂130</td>\r\n  </tr>\r\n  <tr>\r\n   <td>HIGH DENSITY LIPOPROTEIN (HDL)</td>\r\n   <td>55.8</td>\r\n   <td>mg/dl</td>\r\n   <td>˃45</td>\r\n  </tr>\r\n  <tr>\r\n   <td>TOTAL CHOLESTEROL (T.CHOL)</td>\r\n   <td>144.3</td>\r\n   <td>mg/dl</td>\r\n   <td>75-200</td>\r\n  </tr>\r\n  <tr>\r\n   <td>TRIGLYCERIDES (TRIG)</td>\r\n   <td>119.3</td>\r\n   <td>mg/dl</td>\r\n   <td>˂150</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<h2><strong>KIDNEY FUNCTION TEST (KFT) </strong></h2>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n   <td>UNIT</td>\r\n   <td>REF RANGES</td>\r\n  </tr>\r\n  <tr>\r\n   <td>CREATININE</td>\r\n   <td>1.02</td>\r\n   <td>mg/dl</td>\r\n   <td>0.6 - 1.4</td>\r\n  </tr>\r\n  <tr>\r\n   <td>UREA</td>\r\n   <td>30.06</td>\r\n   <td>mg/dl</td>\r\n   <td>6 - 24</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<h2><strong>URINALYSIS</strong> </h2>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td><strong>PARAMETER</strong></td>\r\n   <td><strong>RESULT</strong></td>\r\n  </tr>\r\n  <tr>\r\n   <td>COLOUR</td>\r\n   <td>YELLOW</td>\r\n  </tr>\r\n  <tr>\r\n   <td>APPEARANCE</td>\r\n   <td>CLEAR</td>\r\n  </tr>\r\n  <tr>\r\n   <td>UROBILINOGEN</td>\r\n   <td>NORMAL</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BILIRIBIN</td>\r\n   <td>NEGATIVE</td>\r\n  </tr>\r\n  <tr>\r\n   <td>KETONES</td>\r\n   <td>NEGATIVE</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BLOOD</td>\r\n   <td>NEGATIVE</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PROTEIN</td>\r\n   <td>+</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NITRATE</td>\r\n   <td>NEGATIVE</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LEUKOCYTES</td>\r\n   <td>NEGATIVE</td>\r\n  </tr>\r\n  <tr>\r\n   <td>GLUCOSE</td>\r\n   <td>++</td>\r\n  </tr>\r\n  <tr>\r\n   <td>SPECIFIC GRAVITY</td>\r\n   <td>1.025</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PH</td>\r\n   <td>7</td>\r\n  </tr>\r\n  <tr>\r\n   <td>ASCOBIC ACID</td>\r\n   <td>NEGATIVE</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RBC</td>\r\n   <td>NIL</td>\r\n  </tr>\r\n  <tr>\r\n   <td>WBC</td>\r\n   <td>NIL</td>\r\n  </tr>\r\n  <tr>\r\n   <td>YEAST CELLS</td>\r\n   <td>NOT SEEN</td>\r\n  </tr>\r\n  <tr>\r\n   <td>CRYSTALS</td>\r\n   <td>NOT SEEN</td>\r\n  </tr>\r\n  <tr>\r\n   <td>EPITHELIAL CELLS</td>\r\n   <td>NOT SEEN</td>\r\n  </tr>\r\n  <tr>\r\n   <td>O and P</td>\r\n   <td>NOT SEEN</td>\r\n  </tr>\r\n  <tr>\r\n   <td>OTHERS</td>\r\n   <td> </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', NULL, '754', 'RAFIQ DOSSANI', '0992090272', 'P.O BOX 1889 BT', '0', '23-06-22', '416', 'Default'),
(1956, NULL, '64', '153', '1658102400', NULL, '<p><strong>FULL BLOOD COUNT ( FBC / CBC)</strong></p>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n   <td> UNIT</td>\r\n   <td> REF. RANGES</td>\r\n  </tr>\r\n  <tr>\r\n   <td>WBC</td>\r\n   <td> </td>\r\n   <td>10^9/L</td>\r\n   <td>4.00 - 10.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEU#</td>\r\n   <td> </td>\r\n   <td>10^9/L</td>\r\n   <td>2.00 - 7.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LYM#</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.80 - 4.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MON#</td>\r\n   <td> </td>\r\n   <td>10^9/L</td>\r\n   <td>0.12 - 1.20</td>\r\n  </tr>\r\n  <tr>\r\n   <td>EOS#</td>\r\n   <td> </td>\r\n   <td>10^9/L</td>\r\n   <td>0.02 - 0.50</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BAS#</td>\r\n   <td> </td>\r\n   <td>10^9/L</td>\r\n   <td>0.00 -  010</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEU%</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.500 - 0.700</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LYM%</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.200 - 0.400</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MON%</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.030 - 0.120</td>\r\n  </tr>\r\n  <tr>\r\n   <td>EOS%</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.005 - 0. 050</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BAS%</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.000 - 0.010</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RBC</td>\r\n   <td> </td>\r\n   <td>10^12/L</td>\r\n   <td>3.50 - 5.50</td>\r\n  </tr>\r\n  <tr>\r\n   <td>HGB</td>\r\n   <td> </td>\r\n   <td>g/L</td>\r\n   <td>11.0 16.0 </td>\r\n  </tr>\r\n  <tr>\r\n   <td>HCT</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.370 - 0.540</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCV</td>\r\n   <td> </td>\r\n   <td>f/L</td>\r\n   <td>80.0 - 100.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCH</td>\r\n   <td> </td>\r\n   <td>pg</td>\r\n   <td>27.0 - 34.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCHC</td>\r\n   <td> </td>\r\n   <td>g/L</td>\r\n   <td>320 - 360</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RDW-CW</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.110 - 0.160</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RDW-SD</td>\r\n   <td> </td>\r\n   <td>f/L</td>\r\n   <td>35.0 - 56.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PLT</td>\r\n   <td> </td>\r\n   <td>10^9/L</td>\r\n   <td>100 - 400</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MPV</td>\r\n   <td> </td>\r\n   <td>f/L</td>\r\n   <td>7.0 - 11.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PDW</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>9.0 - 17.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PCT</td>\r\n   <td> </td>\r\n   <td>Ml/l</td>\r\n   <td>1.08 - 2.82</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p><strong>LIPID PROFILE </strong></p>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n   <td>UNIT</td>\r\n   <td>REF RANGES</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LOW DENSITY LIPOPROTEIN (LDL)</td>\r\n   <td> </td>\r\n   <td>mg/dl</td>\r\n   <td>˂130</td>\r\n  </tr>\r\n  <tr>\r\n   <td>HIGH DENSITY LIPOPROTEIN (HDL)</td>\r\n   <td> </td>\r\n   <td>mg/dl</td>\r\n   <td>˃45</td>\r\n  </tr>\r\n  <tr>\r\n   <td>TOTAL CHOLESTEROL (T.CHOL)</td>\r\n   <td> </td>\r\n   <td>mg/dl</td>\r\n   <td>75-200</td>\r\n  </tr>\r\n  <tr>\r\n   <td>TRIGLYCERIDES (TRIG)</td>\r\n   <td> </td>\r\n   <td>mg/dl</td>\r\n   <td>˂150</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LIPASE</td>\r\n   <td> </td>\r\n   <td>U/L</td>\r\n   <td>0-160</td>\r\n  </tr>\r\n  <tr>\r\n   <td>AMYLASE</td>\r\n   <td> </td>\r\n   <td>U/L</td>\r\n   <td>40-140</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', NULL, '794', 'MAAZ KARIM BATATAWALA', '0992090717', 'BOX 779 BT', 'DR TINGO CHIPANDA', '18-07-22', '416', 'Default'),
(1951, NULL, '59', '151', '1656460800', NULL, '<p><strong>FULL BLOOD COUNT ( FBC / CBC)</strong></p>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n   <td> UNIT</td>\r\n   <td> REF. RANGES</td>\r\n  </tr>\r\n  <tr>\r\n   <td>WBC</td>\r\n   <td>6.20</td>\r\n   <td>10^9/L</td>\r\n   <td>4.00 - 10.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEU#</td>\r\n   <td>3.73</td>\r\n   <td>10^9/L</td>\r\n   <td>2.00 - 7.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LYM#</td>\r\n   <td>1.79</td>\r\n   <td> </td>\r\n   <td>0.80 - 4.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MON#</td>\r\n   <td>0.25</td>\r\n   <td>10^9/L</td>\r\n   <td>0.12 - 1.20</td>\r\n  </tr>\r\n  <tr>\r\n   <td>EOS#</td>\r\n   <td>0.43</td>\r\n   <td>10^9/L</td>\r\n   <td>0.02 - 0.50</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BAS#</td>\r\n   <td>0.00</td>\r\n   <td>10^9/L</td>\r\n   <td>0.00 -  010</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEU%</td>\r\n   <td>0.601</td>\r\n   <td> </td>\r\n   <td>0.500 - 0.700</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LYM%</td>\r\n   <td>0.289</td>\r\n   <td> </td>\r\n   <td>0.200 - 0.400</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MON%</td>\r\n   <td>0.040</td>\r\n   <td> </td>\r\n   <td>0.030 - 0.120</td>\r\n  </tr>\r\n  <tr>\r\n   <td>EOS%</td>\r\n   <td>0.070</td>\r\n   <td> </td>\r\n   <td>0.005 - 0. 050</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BAS%</td>\r\n   <td>0.000</td>\r\n   <td> </td>\r\n   <td>0.000 - 0.010</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RBC</td>\r\n   <td>5.88</td>\r\n   <td>10^12/L</td>\r\n   <td>3.50 - 5.50</td>\r\n  </tr>\r\n  <tr>\r\n   <td>HGB</td>\r\n   <td>17.4</td>\r\n   <td>g/L</td>\r\n   <td>11.0 16.0 </td>\r\n  </tr>\r\n  <tr>\r\n   <td>HCT</td>\r\n   <td>0.512</td>\r\n   <td> </td>\r\n   <td>0.370 - 0.540</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCV</td>\r\n   <td>87.0</td>\r\n   <td>f/L</td>\r\n   <td>80.0 - 100.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCH</td>\r\n   <td>29.5</td>\r\n   <td>pg</td>\r\n   <td>27.0 - 34.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCHC</td>\r\n   <td>339</td>\r\n   <td>g/L</td>\r\n   <td>320 - 360</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RDW-CW</td>\r\n   <td>0.130</td>\r\n   <td> </td>\r\n   <td>0.110 - 0.160</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RDW-SD</td>\r\n   <td>43.2</td>\r\n   <td>f/L</td>\r\n   <td>35.0 - 56.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PLT</td>\r\n   <td>223</td>\r\n   <td>10^9/L</td>\r\n   <td>100 - 400</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MPV</td>\r\n   <td>9.0</td>\r\n   <td>f/L</td>\r\n   <td>7.0 - 11.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PDW</td>\r\n   <td>16.6</td>\r\n   <td> </td>\r\n   <td>9.0 - 17.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PCT</td>\r\n   <td>2.01</td>\r\n   <td>Ml/l</td>\r\n   <td>1.08 - 2.82</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p><strong>KIDNEY FUNCTION TEST (KFT) </strong></p>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n   <td>UNIT</td>\r\n   <td>REF RANGES</td>\r\n  </tr>\r\n  <tr>\r\n   <td>CREATINE</td>\r\n   <td>1.02</td>\r\n   <td>mg/dl</td>\r\n   <td>0.6 - 1.4</td>\r\n  </tr>\r\n  <tr>\r\n   <td>UREA</td>\r\n   <td>25.40</td>\r\n   <td>mg/dl</td>\r\n   <td>6 - 24</td>\r\n  </tr>\r\n  <tr>\r\n   <td>POTASSIUM (K)</td>\r\n   <td>6</td>\r\n   <td>mmol/l</td>\r\n   <td>3.6 - 5.5</td>\r\n  </tr>\r\n  <tr>\r\n   <td>CALCIUM</td>\r\n   <td>10.14</td>\r\n   <td>mg/dl</td>\r\n   <td>8.6 - 10.3</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', NULL, '754', 'SURFRAZ YUSUF', '0999616810', 'P.O. BOX 779 BT', 'DR BENSON BANDA', '29-06-22', '416', 'Default'),
(1952, NULL, '61', '', '1657497600', NULL, '<p><strong>HUMAN IMMUNODEFICIENCY VIRUS (HIV)</strong></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n  </tr>\r\n  <tr>\r\n   <td>HIV</td>\r\n   <td>NON-REACTIVE</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', NULL, '754', 'DOREEN GONDWE', '0888669434', 'NAMIWAWA', '0', '11-07-22', '416', 'Default'),
(1953, NULL, '62', '', '1657584000', NULL, '<p><strong>FULL BLOOD COUNT ( FBC / CBC)</strong></p>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n   <td> UNIT</td>\r\n   <td> REF. RANGES</td>\r\n  </tr>\r\n  <tr>\r\n   <td>WBC</td>\r\n   <td>3.56</td>\r\n   <td>10^9/L</td>\r\n   <td>4.00 - 10.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEU#</td>\r\n   <td>1.53</td>\r\n   <td>10^9/L</td>\r\n   <td>2.00 - 7.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LYM#</td>\r\n   <td>1.74</td>\r\n   <td> </td>\r\n   <td>0.80 - 4.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MON#</td>\r\n   <td>0.18</td>\r\n   <td>10^9/L</td>\r\n   <td>0.12 - 1.20</td>\r\n  </tr>\r\n  <tr>\r\n   <td>EOS#</td>\r\n   <td>0.11</td>\r\n   <td>10^9/L</td>\r\n   <td>0.02 - 0.50</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BAS#</td>\r\n   <td>0.00</td>\r\n   <td>10^9/L</td>\r\n   <td>0.00 -  010</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEU%</td>\r\n   <td>0.428</td>\r\n   <td> </td>\r\n   <td>0.500 - 0.700</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LYM%</td>\r\n   <td>0.488</td>\r\n   <td> </td>\r\n   <td>0.200 - 0.400</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MON%</td>\r\n   <td>0.051</td>\r\n   <td> </td>\r\n   <td>0.030 - 0.120</td>\r\n  </tr>\r\n  <tr>\r\n   <td>EOS%</td>\r\n   <td>0.033</td>\r\n   <td> </td>\r\n   <td>0.005 - 0. 050</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BAS%</td>\r\n   <td>0.000</td>\r\n   <td> </td>\r\n   <td>0.000 - 0.010</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RBC</td>\r\n   <td>5.07</td>\r\n   <td>10^12/L</td>\r\n   <td>3.50 - 5.50</td>\r\n  </tr>\r\n  <tr>\r\n   <td>HGB</td>\r\n   <td>12.2</td>\r\n   <td>g/L</td>\r\n   <td>11.0 16.0 </td>\r\n  </tr>\r\n  <tr>\r\n   <td>HCT</td>\r\n   <td>0.405</td>\r\n   <td> </td>\r\n   <td>0.370 - 0.540</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCV</td>\r\n   <td>80.0</td>\r\n   <td>f/L</td>\r\n   <td>80.0 - 100.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCH</td>\r\n   <td>24.0</td>\r\n   <td>pg</td>\r\n   <td>27.0 - 34.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCHC</td>\r\n   <td>301</td>\r\n   <td>g/L</td>\r\n   <td>320 - 360</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RDW-CW</td>\r\n   <td>0.178</td>\r\n   <td> </td>\r\n   <td>0.110 - 0.160</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RDW-SD</td>\r\n   <td>51.4</td>\r\n   <td>f/L</td>\r\n   <td>35.0 - 56.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PLT</td>\r\n   <td>384</td>\r\n   <td>10^9/L</td>\r\n   <td>100 - 400</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MPV</td>\r\n   <td>7.9</td>\r\n   <td>f/L</td>\r\n   <td>7.0 - 11.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PDW</td>\r\n   <td>15.4</td>\r\n   <td> </td>\r\n   <td>9.0 - 17.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PCT</td>\r\n   <td>3.03</td>\r\n   <td>Ml/l</td>\r\n   <td>1.08 - 2.82</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', NULL, '754', 'MERCY NALIKUNGWI', '0999568555', 'BOX 30415, BT', '0', '12-07-22', '416', 'Default'),
(1955, NULL, '63', '152', '1657843200', NULL, '<p><strong>FULL BLOOD COUNT ( FBC / CBC)</strong></p>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n   <td> UNIT</td>\r\n   <td> REF. RANGES</td>\r\n  </tr>\r\n  <tr>\r\n   <td>WBC</td>\r\n   <td>5.42</td>\r\n   <td>10^9/L</td>\r\n   <td>4.00 - 10.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEU#</td>\r\n   <td>2.31</td>\r\n   <td>10^9/L</td>\r\n   <td>2.00 - 7.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LYM#</td>\r\n   <td>2.53</td>\r\n   <td> </td>\r\n   <td>0.80 - 4.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MON#</td>\r\n   <td>0.52</td>\r\n   <td>10^9/L</td>\r\n   <td>0.12 - 1.20</td>\r\n  </tr>\r\n  <tr>\r\n   <td>EOS#</td>\r\n   <td>0.06</td>\r\n   <td>10^9/L</td>\r\n   <td>0.02 - 0.50</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BAS#</td>\r\n   <td>0.00</td>\r\n   <td>10^9/L</td>\r\n   <td>0.00 -  010</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEU%</td>\r\n   <td>0.425</td>\r\n   <td> </td>\r\n   <td>0.500 - 0.700</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LYM%</td>\r\n   <td>0.467</td>\r\n   <td> </td>\r\n   <td>0.200 - 0.400</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MON%</td>\r\n   <td>0.096</td>\r\n   <td> </td>\r\n   <td>0.030 - 0.120</td>\r\n  </tr>\r\n  <tr>\r\n   <td>EOS%</td>\r\n   <td>0.012</td>\r\n   <td> </td>\r\n   <td>0.005 - 0. 050</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BAS%</td>\r\n   <td>0.000</td>\r\n   <td> </td>\r\n   <td>0.000 - 0.010</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RBC</td>\r\n   <td>4.50</td>\r\n   <td>10^12/L</td>\r\n   <td>3.50 - 5.50</td>\r\n  </tr>\r\n  <tr>\r\n   <td>HGB</td>\r\n   <td>15.0</td>\r\n   <td>g/L</td>\r\n   <td>11.0 16.0 </td>\r\n  </tr>\r\n  <tr>\r\n   <td>HCT</td>\r\n   <td>0.453</td>\r\n   <td> </td>\r\n   <td>0.370 - 0.540</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCV</td>\r\n   <td>100.1</td>\r\n   <td>f/L</td>\r\n   <td>80.0 - 100.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCH</td>\r\n   <td>33.4</td>\r\n   <td>pg</td>\r\n   <td>27.0 - 34.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCHC</td>\r\n   <td>332</td>\r\n   <td>g/L</td>\r\n   <td>320 - 360</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RDW-CW</td>\r\n   <td>0.130</td>\r\n   <td> </td>\r\n   <td>0.110 - 0.160</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RDW-SD</td>\r\n   <td>48.5</td>\r\n   <td>f/L</td>\r\n   <td>35.0 - 56.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PLT</td>\r\n   <td>249</td>\r\n   <td>10^9/L</td>\r\n   <td>100 - 400</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MPV</td>\r\n   <td>9.7</td>\r\n   <td>f/L</td>\r\n   <td>7.0 - 11.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PDW</td>\r\n   <td>16.3</td>\r\n   <td> </td>\r\n   <td>9.0 - 17.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PCT</td>\r\n   <td>2.41</td>\r\n   <td>Ml/l</td>\r\n   <td>1.08 - 2.82</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p><strong>MALARIA BLOOD FILM </strong></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MALARIA BF</td>\r\n   <td>NO PARASITES SEEN</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p><strong>HEPATITIS B </strong></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n  </tr>\r\n  <tr>\r\n   <td>HEP B</td>\r\n   <td>NEGATIVE</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n\r\n<p><strong>SALMONELLA RAPID TEST </strong></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n  </tr>\r\n  <tr>\r\n   <td>SALMONELLA</td>\r\n   <td>NEGATIVE</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', NULL, '754', 'THOM HOSI NAZIMBIRI', '0888881317', 'NAMIWAWA', 'DR ZAINAB MALUK', '15-07-22', '416', 'Default'),
(1957, NULL, '64', '149', '1661378400', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n <tbody>\r\n  <tr>\r\n   <td>2e</td>\r\n   <td>12</td>\r\n  </tr>\r\n  <tr>\r\n   <td>12</td>\r\n   <td>12</td>\r\n  </tr>\r\n  <tr>\r\n   <td> </td>\r\n   <td> </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', NULL, '2', 'MAAZ KARIM BATATAWALA', '0992090717', 'BOX 779 BT', 'DR. S. A. KALENGO', '25-08-22', '416', 'Rad'),
(1958, NULL, '64', '149', '1661378400', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n <tbody>\r\n  <tr>\r\n   <td>2e</td>\r\n   <td>12</td>\r\n  </tr>\r\n  <tr>\r\n   <td>12</td>\r\n   <td>12</td>\r\n  </tr>\r\n  <tr>\r\n   <td> </td>\r\n   <td> </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', NULL, '2', 'MAAZ KARIM BATATAWALA', '0992090717', 'BOX 779 BT', 'DR. S. A. KALENGO', '25-08-22', '416', 'Rad'),
(1959, NULL, '64', '149', '1661378400', NULL, '<p><strong>RANDOM BLOOD SUGAR (RBS) </strong></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RBS</td>\r\n   <td> </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', NULL, '2', 'MAAZ KARIM BATATAWALA', '0992090717', 'BOX 779 BT', 'DR. S. A. KALENGO', '25-08-22', '416', 'lab'),
(1960, NULL, '67', '151', '1666238400', NULL, '                                ', NULL, '794', 'Parth K. Patel', '0888999777', 'P. O. Box 5929, Limbe', 'DR BENSON BANDA', '20-10-22', '416', 'lab'),
(1961, NULL, '69', '149', '1667016000', NULL, '<p><strong>MALARIA BLOOD FILM </strong></p>\n\n<table border=\"1\" cellspacing=\"0\">\n <tbody>\n  <tr>\n   <td>PARAMETER</td>\n   <td>RESULT</td>\n  </tr>\n  <tr>\n   <td>MALARIA BF</td>\n   <td>NEG</td>\n  </tr>\n </tbody>\n</table>\n', NULL, '798', 'New Patient', '+265993438181', 'Lilongwe Area 18b, Plot 18b/5/1077', 'DR. S. A. KALENGO', '29-10-22', '416', 'lab'),
(1962, NULL, '70', '155', '1667188800', NULL, '                                ', NULL, '807', 'Nisha Mandani', '0999888777', 'P. O. Box 111, LL', 'DR PARTH PATEL', '31-10-22', '416', 'lab'),
(1963, NULL, '71', '149', '1668834000', NULL, '<p><strong>RANDOM BLOOD SUGAR (RBS) </strong></p>\n\n<table border=\"1\" cellspacing=\"0\">\n <tbody>\n  <tr>\n   <td>PARAMETER</td>\n   <td>RESULT</td>\n  </tr>\n  <tr>\n   <td>RBS</td>\n   <td>123</td>\n  </tr>\n </tbody>\n</table>\n\n<p> </p>\n\n<p><strong>BLOOD GROUP </strong></p>\n\n<table border=\"1\" cellspacing=\"0\">\n <tbody>\n  <tr>\n   <td><strong>PARAMETER</strong></td>\n   <td><strong>RESULT</strong></td>\n  </tr>\n  <tr>\n   <td>B/GROUP</td>\n   <td>A+</td>\n  </tr>\n </tbody>\n</table>\n', NULL, '798', 'New Patient', '+265993438181', 'Lilongwe Area 18b, Plot 18b/5/1077', 'DR. S. A. KALENGO', '19-11-22', '416', 'lab');

-- --------------------------------------------------------

--
-- Table structure for table `laboratorist`
--

CREATE TABLE `laboratorist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'Default'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratorist`
--

INSERT INTO `laboratorist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`, `hospital_id`, `type`) VALUES
(4, '', 'FELISTUS NKONDE', 'FNKONDE@hms.com', 'POBOX 1889BT', '0991297719', '', '', '754', '416', 'lab'),
(5, NULL, 'MR LAB', 'starmclab@hms.com', 'ooooppj', '99887766', NULL, NULL, '788', '416', 'lab'),
(6, NULL, 'lab 1', 'laboratorist@hms.com', '12345', '12345', NULL, NULL, '798', '416', 'lab'),
(7, NULL, 'New Radiologist', 'radiologist@hms.com', '12345', '12345', NULL, NULL, '799', '416', 'Rad'),
(8, NULL, '2radiologist', 'radiologist2@hms.com', '12345', '12345', NULL, NULL, '800', '416', 'Rad');

-- --------------------------------------------------------

--
-- Table structure for table `lab_category`
--

CREATE TABLE `lab_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `reference_value` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medical_history`
--

CREATE TABLE `medical_history` (
  `id` int(100) NOT NULL,
  `patient_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `patient_phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `img_url` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `registration_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `case_type` varchar(100) NOT NULL DEFAULT 'Default',
  `authorEmail` varchar(100) DEFAULT NULL,
  `authorID` int(30) DEFAULT NULL,
  `authorName` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_history`
--

INSERT INTO `medical_history` (`id`, `patient_id`, `title`, `description`, `patient_name`, `patient_address`, `patient_phone`, `img_url`, `date`, `registration_time`, `hospital_id`, `case_type`, `authorEmail`, `authorID`, `authorName`) VALUES
(64, '39', 'Patients Notes', '<p>fff</p>\n', 'New patient', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', NULL, '1653868800', NULL, '416', 'Default', NULL, NULL, NULL),
(65, '39', 'Sent to LB', '<p>CBC</p>\n', 'New patient', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', NULL, '1653782400', NULL, '416', 'Default', NULL, NULL, NULL),
(66, '40', 'DIAGNOSIS : MALARIA', '<p>MRDT</p>\n\n<p>MPS</p>\n\n<p>ARTESUNATE</p>\n', 'TEST 1', 'box 1889', '0992090717', NULL, '1653868800', NULL, '416', 'Default', NULL, NULL, NULL),
(67, '39', 'LABSENT', '<p>SEND TO LAB</p>\r\n', 'New patient', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', NULL, '1653918258', NULL, '416', 'Default', NULL, NULL, NULL),
(68, '40', 'diagnosis: ', '<p>not breathing well</p>\r\n\r\n<p>coughing hard</p>\r\n\r\n<p>dry cough</p>\r\n\r\n<p> body pains</p>\r\n\r\n<p>pale skin upon eamination </p>\r\n\r\n<p>sent to lab for fbc</p>\r\n\r\n<p> </p>\r\n', 'TEST 1', 'box 1889', '0992090717', NULL, '1654128000', NULL, '416', 'Default', NULL, NULL, NULL),
(69, '40', 'vitals', '<p>temp : 1`32    / bp : tfbkj</p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n', 'TEST 1', 'box 1889', '0992090717', NULL, '1654387200', NULL, '416', 'Default', NULL, NULL, NULL),
(70, '40', 'vital signs', '', 'TEST 1', 'box 1889', '0992090717', NULL, '1654473600', NULL, '416', 'Default', NULL, NULL, NULL),
(71, '40', '', '', 'TEST 1', 'box 1889', '0992090717', NULL, '1654525955', NULL, '416', 'Default', NULL, NULL, NULL),
(72, '40', 'vital signs', '<p>temp:        BP:    </p>\r\n\r\n<p>findoings:</p>\r\n\r\n<p>troath / temp/ bodypains</p>\r\n\r\n<p>sent lab : </p>\r\n\r\n<p>mrdt</p>\r\n\r\n<p>cbc</p>\r\n\r\n<p> </p>\r\n', 'TEST 1', 'box 1889', '0992090717', NULL, '1654473600', NULL, '416', 'Default', NULL, NULL, NULL),
(73, '42', 'vital signs', '<p>temp :       BP: </p>\r\n\r\n<p>Nurses notes : headache , fever, body pains </p>\r\n\r\n<p><strong>DOCTOR</strong></p>\r\n\r\n<p>FINDINGS.....</p>\r\n\r\n<p>LAB : CBC MRDT</p>\r\n', 'madalitso MZENGEZA', 'bvox 123', '99887766', NULL, '1654473600', NULL, '416', 'Default', NULL, NULL, NULL),
(74, '44', '...', '<p>Vitals :   </p>\r\n\r\n<p>findings:.....</p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n', 'subject', '123', '55667788', NULL, '1655164800', NULL, '416', 'Default', NULL, NULL, NULL),
(75, '45', 'vital signs', '<p>temp 36.2 bp 120/80mmhg pr 98b/m RR 18b/m</p>\r\n\r\n<p> </p>\r\n\r\n<p>hhhhhh</p>\r\n\r\n<p> </p>\r\n\r\n<p>woun dressing</p>\r\n', 'LINDA LIKUWENU', 'P.O. BOX 1098 BT', '0884638380', NULL, '1654992000', NULL, '416', 'Default', NULL, NULL, NULL),
(76, '48', 'vital signs', '<p>43 YRS OLD MAN</p>\r\n\r\n<p> </p>\r\n\r\n<p>NO HX OF DM/HTN</p>\r\n\r\n<p> </p>\r\n\r\n<p>CAME FOR BP CHECK- BP TODAY IS 135/80MMHG</p>\r\n', 'horace nyaka', 'box 608 llw', '0999511874', NULL, '1655337600', NULL, '416', 'Default', NULL, NULL, NULL),
(77, '48', 'vital signs', '<p>BP 135/80MMHG TEMP 35.6</p>\r\n', 'horace nyaka', 'box 608 llw', '0999511874', NULL, '1655337600', NULL, '416', 'Default', NULL, NULL, NULL),
(78, '56', 'malaria ', '<p>mrdt fckjisd</p>\r\n', 'RAFIQ DOSSANI', 'P.O BOX 1889 BT', '0992090272', NULL, '1656288000', NULL, '416', 'Default', NULL, NULL, NULL),
(79, '58', 'VITAL SIGNS', '<p>BP 110/80MMHG</p>\r\n\r\n<p>TEMP 34.8</p>\r\n\r\n<p>WT 75 KG</p>\r\n\r\n<p>HEIGHT 5.3FT</p>\r\n\r\n<p>PR 89</p>\r\n\r\n<p>O2 SATS  98</p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n', 'SUFRZA YUSUFU', 'BOX 779 BT', '0999616810', NULL, '1656460800', NULL, '416', 'Default', NULL, NULL, NULL),
(80, '58', 'small renal cyst', '<p> PC left iliac pain x 3/7 radiating to the suprapubic region</p>\r\n\r\n<p>       burning pain , terminal dysuria for 2 weeks, no assciated change in  urinary freeqence</p>\r\n\r\n<p>no fevers , no general body pains</p>\r\n\r\n<p>background history of high prolactin levels previously</p>\r\n\r\n<p>on examination</p>\r\n\r\n<p>alert pink , afebrile to touch, normal vital signs</p>\r\n\r\n<p>per abdomen: flat, soft , slight tendrness on the left iliac region no palpable masses</p>\r\n\r\n<p>ext: NAD</p>\r\n\r\n<p>PLAN</p>\r\n\r\n<p>Urinalysis results: normal</p>\r\n\r\n<p>liver funtction test : normal</p>\r\n\r\n<p>FBC:normal</p>\r\n\r\n<p>renal function test: normal </p>\r\n\r\n<p>abdominai USS :left kidney small cyst:1.2 x1.4 cm and mild fatty liver</p>\r\n\r\n<p>patient counseled of the need of analgesia and the if the pain pesist will benefit from abd CT</p>\r\n\r\n<p>says has analgesia at home </p>\r\n', 'SURFRAZ YUSUF', 'BOX 779 BT', '0999616810', NULL, '1656460800', NULL, '416', 'Default', NULL, NULL, NULL),
(81, '60', 'vital signs', '<p>ccc</p>\r\n', 'test 6', '176', '14356878', NULL, '1657670400', NULL, '416', 'Default', NULL, NULL, NULL),
(82, '60', 'malaria', '<p>mmm</p>\r\n', 'test 6', '176', '14356878', NULL, '1657670400', NULL, '416', 'Default', NULL, NULL, NULL),
(83, '63', 'VITAL SIGNS', '<p>HIEGHT : 5.3 FT</p>\r\n\r\n<p>WEIGHT: 55KG</p>\r\n\r\n<p>BP:  110/70</p>\r\n\r\n<p>TEMPERATURE: 35.7 </p>\r\n\r\n<p>PR: 68</p>\r\n\r\n<p>O2 SATS: 88%</p>\r\n', 'THOM HOSI NAZIMBIRI', 'NAMIWAWA', '0888881317', NULL, '1657843200', NULL, '416', 'Default', NULL, NULL, NULL),
(84, '63', 'acute gastroenteritis, rule out malaria/hepatitis', '<p>24 year old</p>\r\n\r\n<p>Presenting Complaint:</p>\r\n\r\n<p>Fevers and Generalized body pains for 1 week and 3 days</p>\r\n\r\n<p>Started with non-projectile vomiting of yellow contents for 2 days and loose stools which resolved associated with generalized intermittent abdominal pain. no urinary symptoms. now passing stools normally</p>\r\n\r\n<p>also has intermittent fevers and chills with generalized body pains for 1 week</p>\r\n\r\n<p>review of systems:</p>\r\n\r\n<p>neuro: frontal headache and dizziness intermittently</p>\r\n\r\n<p>past medical history:</p>\r\n\r\n<p>had cerebral malaria 10 years ago admitted and treated at mulanje mission hospital</p>\r\n\r\n<p>no other notable illnesses</p>\r\n\r\n<p>HIV NR -verbal</p>\r\n\r\n<p> </p>\r\n\r\n<p>O/E: pinkconjunctiva, afebrile, o2 sats: 98% HR 60bpm</p>\r\n\r\n<p>abdomen: tender in the RUQ with guarding, no rebound tenderness. no organomegaly, normal bowel sounds</p>\r\n\r\n<p>chest: NAD</p>\r\n\r\n<p>neck: 1 cervical lymph node ~ 3x3cm fixed, firm, non-tender</p>\r\n\r\n<p>Impression:</p>\r\n\r\n<p>Acute GE</p>\r\n\r\n<p>Malaria</p>\r\n\r\n<p>?Hepatitis</p>\r\n\r\n<p>plan:</p>\r\n\r\n<p>FBC - normal</p>\r\n\r\n<p>MPS - NPS</p>\r\n\r\n<p>Hep B test - negative</p>\r\n\r\n<p>Blood culture</p>\r\n\r\n<p>Typhoid antigen negative</p>\r\n\r\n<p>paracetamol 500mg PO TDS x 5 days</p>\r\n\r\n<p>Ibuprofen 400mg PO TDS x 3 days</p>\r\n\r\n<p> </p>\r\n', 'THOM HOSI NAZIMBIRI', 'NAMIWAWA', '0888881317', NULL, '1657238400', NULL, '416', 'Default', NULL, NULL, NULL),
(85, '64', '', '<p>C/O PAIN IN THE CHEST</p>\r\n\r\n<p>WORSE WHEN BREATHING DEEPLY</p>\r\n\r\n<p>RADIATING TO THE BACK AND RIGHT SHOULDER</p>\r\n', 'MAAZ KARIM BATATAWALA', 'BOX 779 BT', '0992090717', NULL, '1658102400', NULL, '416', 'Default', NULL, NULL, NULL),
(86, '64', '12', '<p>12</p>\r\n', 'MAAZ KARIM BATATAWALA', 'BOX 779 BT', '0992090717', NULL, '1661378400', NULL, '416', 'Procedure', '', 2, ''),
(87, '67', 'GP Consultation', '', 'Parth K. Patel', 'P. O. Box 5929, Limbe', '0888999777', NULL, '1666238400', NULL, '416', 'Default', 'doctor@hms.com', 794, 'DR CHIKONDI MALUWA'),
(88, '69', 'Vital Signs', '<p>PR - 100</p>\n', 'New Patient', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', NULL, '1667016000', NULL, '416', 'Nurse', 'nurse@hms.com', 789, 'nurse A'),
(89, '69', 'Anything', '<p>PR _ dwd</p>\n', 'New Patient', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', NULL, '1667016000', NULL, '416', 'Default', 'doctor@hms.com', 794, 'DR CHIKONDI MALUWA'),
(90, '69', 'Lab Test', '<p>Malaria </p>\n\n<p>FBC</p>\n', 'New Patient', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', NULL, '1667016000', NULL, '416', 'Procedure', 'doctor@hms.com', 794, 'DR CHIKONDI MALUWA'),
(91, '70', 'Vital Signs', '', 'Nisha Mandani', 'P. O. Box 111, LL', '0999888777', NULL, '1667188800', NULL, '416', 'Nurse', 'nurse@hms.com', 789, 'nurse A'),
(92, '39', 'trial', '<p>ttrial</p>\n', 'New patient', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', NULL, '1667188800', NULL, '416', 'Default', 'doctor@hms.com', 794, 'DR CHIKONDI MALUWA'),
(93, '71', 'Vital Signs', '<p>Temperature - 37 </p>\n\n<p> </p>\n', 'New Patient', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', NULL, '1668834000', NULL, '416', 'Nurse', 'nurse@hms.com', 789, 'nurse A'),
(94, '71', 'Headache', '<p>Malaria </p>\n\n<p>etc </p>\n', 'New Patient', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', NULL, '1668834000', NULL, '416', 'Default', 'doctor@hms.com', 794, 'DR CHIKONDI MALUWA');

-- --------------------------------------------------------

--
-- Table structure for table `medical_schemes`
--

CREATE TABLE `medical_schemes` (
  `id` int(11) NOT NULL,
  `Scheme` varchar(30) NOT NULL,
  `Amount` int(11) NOT NULL,
  `hospital_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_schemes`
--

INSERT INTO `medical_schemes` (`id`, `Scheme`, `Amount`, `hospital_id`) VALUES
(1, 'CASH', 0, '416'),
(2, 'MASM', 20000, '416'),
(3, 'MASM VIP', 30000, '416'),
(4, 'MASM EXE', 35000, '416');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `box` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL,
  `generic` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `effects` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `e_date` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `name`, `category`, `price`, `box`, `s_price`, `quantity`, `generic`, `company`, `effects`, `e_date`, `add_date`, `hospital_id`) VALUES
(2871, 'omeprazole 20mg caps', '– Antiulcer and gastric ant secretory agent ', '1400', 'a', '1000', 46, 'Dawapraz', 'unichem', 'may cause headache, nausea and constipationand', '31-05-2023', '06/27/22', '416'),
(2873, 'Strepsils medicated throat lozenges', 'cough lozenges', '5000', 'a', '150', 197, 'strepsils', 'unichem', 'non', '31-10-2022', '06/27/22', '416'),
(2874, 'Vitamin B complex ', ' Vitamin supplementation', '3500', 'a', '25', 2000, 'VITA-B', 'unichem', 'no', '31-08-2024', '06/27/22', '416'),
(2872, 'omeprazole 20mg', '– Antiulcer and gastric ant secretory agent ', '1400', 'b', '1000', 48, 'prohibin', 'pharmavet', 'may cause headache, nausea and constipationand', '31-10-2022', '06/27/22', '416'),
(2875, 'Apirin', 'Analgesic, antipyretic, ', '1200', 'a', '1250', 277, 'Aspirin UK', 'unichem', 'do not take if asthmatic ', '28-02-2023', '06/27/22', '416'),
(2876, 'Frusimide 40mg tablets', 'Loop diuretic', '6500', 'a', '30', 1000, 'frusimide', 'unichem', 'non', '31-01-2024', '06/27/22', '416'),
(2877, 'Paracetamol Syrup 125mg', 'Analgesic, antipyretic, ', '500', 'a', '1300', 15, 'Curamol', 'unichem', 'non', '30-04-2023', '06/27/22', '416'),
(2878, 'Paracetamol 500mg Tablets', 'Analgesic, antipyretic, ', '12000', 'a', '20', 1000, 'Curamol', 'unichem', 'non', '31-07-2027', '06/27/22', '416'),
(2879, 'Co- Amoxiclav oral suspension Bactoclav ', ' Penicillin antibacterial', '2800', 'a', '5850', 2, 'Bactoclav dry syrup', 'unichem', 'non', '31-01-2024', '06/27/22', '416'),
(2880, 'Dacof dry', 'Cough syrup', '900', 'a', '1900', 3, 'Dacof', 'unichem', 'non', '31-01-2025', '06/27/22', '416'),
(2881, 'Dacof Expectorant', 'Cough syrup', '900', 'a', '1900', 7, 'Dacof', 'unichem', 'non', '31-01-2025', '06/27/22', '416'),
(2882, 'Dacof Peadiatric', 'Cough syrup', '900', 'a', '1900', 8, 'dacof', 'unichem', 'non', '31-07-2024', '06/27/22', '416'),
(2883, 'Dacold syrup', 'Cough syrup', '  900', 'a', '1850', 5, 'Dacold', 'unichem', 'non', '31-08-2024', '06/27/22', '416'),
(2884, 'Amoxyycillin 250mg caps', ' Penicillin antibacterial', '32000', 'a', '110', 901, 'moxacil 250', 'unichem', 'non', '28-02-2025', '06/27/22', '416'),
(2885, 'Chlorpheniramine syrup', ' Sedating H1 antihistamine', '400', 'a', '1500', 10, 'Dawa-CPM', 'unichem', 'non', '30-11-2024', '06/27/22', '416'),
(2886, 'Ibuplofen 200mg tab', 'Analgesic, antipyretic, ', '10500', 'a', '40', 962, 'profen', 'unichem', 'non', '31-10-2024', '06/27/22', '416'),
(2887, 'Ibuplofen syrup', 'Analgesic, antipyretic, ', '550', 'a', '1700', 10, 'Daprofen', 'unichem', 'non', '27-06-2022', '06/27/22', '416'),
(2888, 'Salbutamol syrup', '– Short-acting bronchodilator', '580', 'a', '1750', 10, 'sabulin', 'unichem', 'non', '31-07-2024', '06/27/22', '416'),
(2889, 'Metronidazole suspension 200mg/5ml', 'Antiprotozoal, antibacterial (group of nitroimidazoles', '650', 'a', '1500', 8, 'Eflaron', '', 'non', '30-09-2024', '06/27/22', '416'),
(2890, 'Metronidazole  200mg tablet', 'Antiprotozoal, antibacterial (group of nitroimidazoles', '7800', 'a', '40', 1000, 'Novazole', 'unichem', 'non', '28-02-2027', '06/27/22', '416'),
(2891, 'Acyclovir cream', ' Antiviral ', '500', 'a', '1500', 5, 'Davir', 'unichem', 'non', '30-04-2023', '06/27/22', '416'),
(2892, 'Miclocin Cream (miconazole, clobetasole propionate and Gentamicin)', ' Antifungal', '580', 'a', '1600', 11, 'miclocin', 'unichem', 'non', '31-12-2024', '06/27/22', '416'),
(2893, 'betamethasone + Salicylic acid ointment', 'corticosteroid; anti-inflammatory, antipruritic and vasoconstrictive actions', '580', 'a', '1600', 5, 'Dawa-Salic', 'unichem', 'non', '30-06-2024', '06/27/22', '416'),
(2894, 'Hydrocortisone cream', 'corticosteroid; anti-inflammatory, antipruritic and vasoconstrictive actions', '680', 'a', '1850', 25, 'cortileb', 'unichem', 'non', '31-01-2023', '06/27/22', '416'),
(2895, 'Clotrimazole Cream', ' Antifungal', '300', 'a', '1000', 12, 'dazole cream', 'unichem', 'non', '31-10-2024', '06/27/22', '416'),
(2896, 'Diclofenac, methyl Salicylate and menthol', 'Anti-inflammatory drug ', '350', 'a', '1000', 24, 'FastAct', 'unichem', 'non', '31-08-2024', '06/27/22', '416'),
(2897, 'ORS', 'Micronutrient', '160', 'a', '350', 50, 'ORS', 'unichem', 'non', '31-12-2024', '06/27/22', '416'),
(2898, 'mefenamic acid 250mg caps', 'non-steroidal agent', '1900', 'a', '1500', 10, 'mefen', 'unichem', 'non', '27-06-2022', '06/27/22', '416'),
(2899, 'Azithromycin 500mg ', ' Macrolide antibacterial', '750', 'a', '2000', 10, 'Azidawa', 'unichem', 'non', '30-04-2024', '06/27/22', '416'),
(2900, 'Salbutamol 4mg tablet', '– Short-acting bronchodilator', '2950', 'a', '25', 1000, 'salbutamol tablets', 'worldwide', 'non', '28-02-2025', '06/27/22', '416'),
(2901, 'ketaconazole 200mg tab', ' Antifungal', '3400', 'a', '2000', 20, 'ketanova 200mg tab', 'worldwide', 'non', '30-09-2024', '06/27/22', '416'),
(2902, 'liquid paraffin 100ml ', 'Stimulant laxative', '710', 'a', '2200', 5, 'liquid paraffin ', 'worldwide', 'non', '28-02-2025', '06/27/22', '416'),
(2903, 'Fluconazole 200mg', ' Antifungal', '7775', 'a', '2500', 10, 'floconova 200mg', 'worldwide', 'non', '31-05-2024', '06/27/22', '416'),
(2904, 'Methyl Dopa', 'Centrally acting antihypertensive', '5400', 'a', '2000', 10, 'Novadopa 250mg', 'worldwide', 'non', '31-05-2024', '06/28/22', '416'),
(2905, 'Enalapril 5mg', 'Angiotensin converting enzyme inhibitor', '1800', 'a', '800', 20, 'Enlow', 'worldwide', 'non', '31-05-2024', '06/28/22', '416'),
(2906, 'Amlodipine 5mg tablet ', ' Antihypertensive vasodilator ', '795', 'a', '800', 20, 'Amlin 5mg', 'worldwide', 'non', '31-05-2024', '06/28/22', '416'),
(2907, 'Amlodipine 10mg tablet ', ' Antihypertensive vasodilator ', '1100', 'a', '1100', 20, 'Amlin 10mg', 'worldwide', 'non', '31-05-2024', '06/28/22', '416'),
(2908, 'Acyclovir 200mg tab', ' Antiviral ', '3800', 'a', '1100', 20, 'WW-Acyclo 200mg tab', 'worldwide', 'non', '31-05-2024', '06/28/22', '416'),
(2909, 'Griseofulvin 250mg tablet', ' Antifungal', '5250', 'a', '1000', 10, 'Novafulvin 250mg', 'worldwide', 'non', '31-01-2025', '06/28/22', '416'),
(2910, 'Pyridoxine 25mg (vitamin B6) tab', ' Vitamin supplementation', '3700', 'a', '30', 1000, 'pyrinova', 'worldwide', 'non', '31-12-2024', '06/28/22', '416'),
(2911, 'Propranolol 40mg tab', ' Antihypertensive vasodilator ', '3900', 'a', '40', 1000, 'Novapress 40mg', 'worldwide', 'non', '28-02-2025', '06/28/22', '416'),
(2912, 'chlorpheniramine 4mg tablet', ' Sedating H1 antihistamine', '1200', 'a', '30', 1000, 'Nova CPM 4mg', 'worldwide', 'non', '31-07-2024', '06/28/22', '416'),
(2913, 'Metronidazole  200mg tablet', 'Antiprotozoal, antibacterial (group of nitroimidazoles', '7300', 'a', '45', 1000, 'Eflaron 200', 'worldwide', 'non', '30-11-2024', '06/28/22', '416'),
(2914, 'Hydrochlorothiazide 25mg tablet ', 'Thiazide diuretic', '4000', 'a', '30', 1000, 'WW-HCT 25mg', 'worldwide', 'non', '30-04-2024', '06/28/22', '416'),
(2915, 'Panadol Blister 500mg', 'Analgesic, antipyretic, ', '2300', '1 by 10', '800', 7, 'panadol blister', 'worldwide', 'non', '31-10-2025', '06/28/22', '416'),
(2916, 'Panadol Extra tabs 500mg', 'Analgesic, antipyretic, ', '800', 'a', '1600', 4, 'Panadol Extra', 'worldwide', 'non', '28-06-2022', '06/28/22', '416'),
(2917, 'Lingers Lactate BP 500ml', 'Micronutrient', '750', 'a', '2800', 10, 'Lingers Lactate', 'worldwide', 'non', '31-05-2023', '06/28/22', '416'),
(2918, 'Novagel suspension', '– Antiulcer and gastric ant secretory agent ', '550', 'a', '1600', 8, 'novagel suspension', '1900', 'non', '31-05-2024', '06/28/22', '416'),
(2919, 'Novatonic syrup', '– Antianaemia drug', '590', 'a', '1900', 8, 'Iron syrup', 'worldwide', 'non', '30-03-2024', '06/28/22', '416'),
(2920, 'Calamine Lotion', ' Antipruritic drug', '730', 'a', '2200', 5, 'calamine, Zinc Oxide, liquidphenol', 'worldwide', 'non', '31-03-2024', '06/28/22', '416'),
(2921, 'Benzthine Benzylpenicillin injection 2.4mega', ' Penicillin antibacterial', '350', 'a', '2000', 10, 'WW-Benzyl injection', 'worldwide', 'non', '31-01-2025', '06/28/22', '416'),
(2922, 'Bupivacaine Hcl in Dextrose 4ml injection', 'spinal anaesthesia', '1450', 'a', '4500', 5, 'Anawin Heavy Injection', 'worldwide', 'non', '31-12-2023', '06/28/22', '416'),
(2923, 'Povidone Iodine Solution', 'Antiseptic and disinfectant', '2250', 'a', '6500', 2, 'Povidone Iodine', 'worldwide', 'non', '30-11-2022', '06/28/22', '416'),
(2924, 'Tranexamic + Mefenamic acid', '– Antifibrinolytic', '2500', 'a', '8000', 3, 'pause', 'pharmavet', 'non', '31-10-2023', '06/28/22', '416'),
(2925, 'Atorvastatin 20mg tabs', ' Antihypertensive vasodilator ', '4850', 'a', '150', 300, 'lesstrol 20', 'pharmavet', 'non', '31-08-2022', '06/28/22', '416'),
(2926, 'Atorvastatin 10mg tabs', ' Antihypertensive vasodilator ', '3450', '1 by 10', '115', 100, 'lesstrol 10', 'pharmavet', 'non', '31-01-2023', '06/28/22', '416'),
(2927, 'Telmisartan 40mg tab', 'Angiotensin converting enzyme inhibitor', '2950', 'a', '2800', 9, 'Telmed 40', 'pharmavet', 'non', '31-07-2023', '06/28/22', '416'),
(2928, 'Telmisartan 40mg + Hydrochlorothiazide 12.5mg', 'Angiotensin converting enzyme inhibitor', '3950', 'a', '3800', 9, 'Telmed H', 'pharmavet', 'non', '30-06-2023', '06/28/22', '416'),
(2929, 'metformin 850mg tablet', ' Sulfonylurea antidiabetic  ', '9950', 'a', '45', 1000, 'Novaformin 850mg', 'pharmavet', 'non', '31-05-2024', '06/28/22', '416'),
(2930, 'Funbact A cream', ' Antifungal', '450', 'a', '1500', 10, 'Funbact A cream', 'pharmavet', 'non', '31-07-2024', '06/28/22', '416'),
(2931, 'Mupirocin ointment 2%', ' Penicillin antibacterial', '1250', 'a', '3000', 5, 'Rociderm', 'pharmavet', 'non', '31-07-2023', '06/28/22', '416'),
(2932, 'chlorpheniramine 1mg + paracetamol 125mg susp', ' Sedating H1 antihistamine', '650', 'a', '1950', 15, 'Sinurhon susp', 'pharmavet', 'non', '28-02-2025', '06/28/22', '416'),
(2933, 'Libitus Dry cough Expectorant', 'Cough syrup', '600', 'a', '1800', 10, 'Libitus ', 'pharmavet', 'non', '30-11-2024', '06/28/22', '416'),
(2934, 'Paracetamol 500mg Tablets + Chlorpheniramine 2mg + Phenylephrine 5mg + Caffeine 15mg', 'Analgesic, antipyretic, ', '5950', 'a', '1500', 10, 'Coldrid tablet', 'pharmavet', 'non', '31-07-2024', '06/28/22', '416'),
(2935, 'Paracetamol 125mg Tablets + Cetirizine 2.5mg + Phenylephrine 5mg + Caffeine 15mg', 'Analgesic, antipyretic, ', '900', 'a', '1850', 10, 'Coldrid syrup', 'pharmavet', 'non', '30-06-2024', '06/28/22', '416'),
(2936, 'Alumina, Magnesia and Simethicone oral susp', '– Antiulcer and gastric ant secretory agent ', '650', 'a', '1800', 15, 'Antagit-DS gel double strength', 'pharmavet', 'non', '30-06-2023', '06/28/22', '416'),
(2937, 'Alumina, Magnesia and Simethicone oral susp', '– Antiulcer and gastric ant secretory agent ', '650', 'a', '1800', 15, 'Antagit-DS gel Sugar Free', 'pharmavet', 'non', '31-10-2023', '06/28/22', '416'),
(2938, 'zinc tablet', 'Micronutrient', '1450', 'a', '50', 100, 'Zinate', 'pharmavet', 'non', '29-02-2024', '06/28/22', '416'),
(2939, 'Artemether 20mg + Lumefantrine 120mg', 'Antimalarial', '850', 'a', '2600', 10, 'Lonart', 'pharmavet', 'non', '31-07-2024', '06/28/22', '416'),
(2940, 'ferrous & Folic acid tab', '– Antianaemia drug', '4950', 'a', '35', 1000, 'Jar', 'pharmavet', 'non', '31-12-2024', '06/28/22', '416'),
(2941, 'ferrous sulphate 200mg tabs', '– Antianaemia drug', '4950', 'a', '35', 1000, 'Iron tab', 'pharmavet', 'non', '31-05-2024', '06/28/22', '416'),
(2942, 'folic acid', '– Antianaemia drug', '5500', 'a', '550', 1000, 'foliben', 'pharmavet', 'non', '31-01-2024', '06/28/22', '416'),
(2943, 'Diclofenac enteric coated 100mg', 'Anti-inflammatory drug ', '3100', 'a', '900', 20, 'Lofnac 100', 'worldwide', 'non', '30-09-2024', '06/28/22', '416'),
(2944, 'Diclofenac enteric coated 50mg', 'Anti-inflammatory drug ', '750', 'a', '750', 20, 'Lofnac 50', 'worldwide', 'non', '31-10-2024', '06/28/22', '416'),
(2945, 'metformin 500mg tablet', ' Sulfonylurea antidiabetic  ', '1395', 'a', '50', 200, 'BG Met 500mg', 'pharmavet', 'non', '31-05-2024', '06/28/22', '416'),
(2946, 'Metronidazole  200mg & Norfloxacin', 'Antiprotozoal, antibacterial (group of nitroimidazoles', '6950', 'a', '2200', 10, 'Normet', 'worldwide', 'non', '31-10-2024', '06/28/22', '416'),
(2947, 'Albendazole 400mg', ' Anthelminthic', '5950', 'a', '230', 100, 'Alwo-400', 'worldwide', 'non', '30-11-2024', '06/28/22', '416'),
(2948, 'Albendazole syrup', ' Anthelminthic', '450', 'a', '1500', 10, 'Alwo suspension', 'worldwide', 'non', '31-12-2024', '06/28/22', '416'),
(2949, 'Citirizine 10mg Tablet', ' Sedating H1 antihistamine', '2250', 'a', '1000', 10, 'Oncet', 'worldwide', 'non', '31-12-2024', '06/28/22', '416'),
(2950, 'Citirizine suspension', ' Sedating H1 antihistamine', '495', 'a', '1600', 5, 'Cetlin', 'worldwide', 'non', '31-12-2024', '06/28/22', '416'),
(2951, 'Vitamin C tablets 500mg (Limcee)', ' Vitamin supplementation', '5956', 'a', '250', 100, 'Limcee', 'pharmavet', 'non', '31-12-2023', '06/28/22', '416'),
(2952, 'Nifedipine SR 20mg', ' Uterine relaxant', '1850', 'a', '1900', 10, 'Nifedipine', 'pharmavet', 'non', '31-08-2024', '06/28/22', '416'),
(2953, 'Povidone Iodine Solution', 'Antiseptic and disinfectant', '395', 'a', '1300', 10, 'Zylo P ointment', 'worldwide', 'non', '30-03-2024', '06/28/22', '416'),
(2954, 'Baby grip Water', '– Antiulcer and gastric ant secretory agent ', '600.85', 'a', '2300', 10, 'gripe water', 'worldwide', 'non', '31-05-2024', '06/28/22', '416'),
(2955, 'Diclofenac suppository', 'Anti-inflammatory drug ', '2000', 'a', '600', 10, 'Lofnac suppository', 'pharmavet', 'non', '28-02-2025', '06/28/22', '416'),
(2956, 'Hydrocortisone, Lidocaine, Zinc Oxide & Allantoin suppository', 'Anti-inflammatory drug ', '950', 'a', '600', 25, 'anomex suppository', 'pharmavet', 'non', '30-06-2023', '06/28/22', '416'),
(2957, 'Cefixime 200mg', 'Third-generation cephalosporin antibacterial', '13500', '1 by 10', '3000', 10, 'Cebay 200', 'pharmavet', 'non', '28-06-2022', '06/28/22', '416'),
(2958, 'Iron, Amino Acids & Vitamins Syrup', '– Antianaemia drug', '1450', 'a', '3400', 5, 'Amitone syrup', 'worldwide', 'non', '30-09-2023', '06/28/22', '416'),
(2959, 'Iron Tonic', '– Antianaemia drug', '550', 'a', '1600', 8, 'Chelferon 100ml', 'pharmavet', 'non', '31-10-2023', '06/28/22', '416'),
(2960, 'Iron Hydoxide Polymaltose syrupr', '– Antianaemia drug', '1350', 'a', '3400', 5, 'Orefer syrup', 'worldwide', 'non', '31-01-2024', '06/28/22', '416'),
(2961, 'Salbutamol respules', '– Short-acting bronchodilator', '650', 'a', '1850', 80, 'asthalin', 'pharmavet', 'non', '31-01-2025', '06/28/22', '416'),
(2962, 'Tetra Eye Oint', 'Cycline antibacterial', '395', 'a', '1400', 5, 'tetra eye oint', 'worldwide', 'non', '31-10-2024', '06/28/22', '416'),
(2963, 'Gentamicin eye drops', 'Aminoglycoside antibacterial', '450', 'a', '1300', 6, 'Gentacin', 'worldwide', 'non', '30-06-2023', '06/28/22', '416'),
(2964, 'ciprofloxacin', 'Fluoroquinolone antibacterial', '450', 'a', '1300', 6, 'Xipro', 'worldwide', 'non', '30-11-2023', '06/28/22', '416'),
(2965, 'dexamethasone eye drops', ' Steroidal anti-inflammatory drug (corticosteroid)', '450', 'a', '1300', 5, 'Demona', 'worldwide', 'non', '28-06-2022', '06/28/22', '416'),
(2966, 'Ofloxacin & Ornidazole', ' First-generation cephalosporin antibacterial', '650', 'each', '1850', 6, 'O2', 'worldwide', 'non', '30-12-2023', '06/28/22', '416'),
(2967, 'Diclofenac Gel', ' Steroidal anti-inflammatory drug (corticosteroid)', '385', 'each', '1350', 5, 'saranac', 'worldwide', 'non', '31-08-2024', '06/28/22', '416'),
(2968, 'Diclofenac + methyl salicylate, menthol & Capsaicin', ' Steroidal anti-inflammatory drug (corticosteroid)', '220', 'each', '1350', 5, 'Caplofen', 'worldwide', 'non', '31-12-2023', '06/28/22', '416'),
(2969, 'Lofnac H spray', ' Steroidal anti-inflammatory drug (corticosteroid)', '2850', 'each', '7000', 5, 'Lofnac H spray', 'worldwide', 'non', '30-06-2024', '06/28/22', '416'),
(2970, 'Calamine Lotion 100ml', ' Antipruritic drug', '695', 'each', '1850', 2, 'calamine lotion', 'worldwide', 'non', '29-02-2024', '06/28/22', '416'),
(2971, 'Heparin Injection', ' Anticoagulant ', '2000', 'each', '7000', 5, 'heparin', 'worldwide', 'non', '29-06-2022', '06/29/22', '416'),
(2972, 'Lignocain Injection', ' Local anaesthetic', '1400', 'each', '4000', 5, 'lidocaine', 'worldwide', 'non', '01-10-2024', '06/29/22', '416'),
(2973, 'Dextrose 50%', 'Treatment of severe hypoglycaemia', '1750', 'each', '4500', 5, 'glucose 50%', 'worldwide', 'non', '01-05-2023', '06/29/22', '416'),
(2974, 'clotrimazole mouth paint (dazole mouth paint)', ' Antifungal', '450', 'each', '1000', 5, 'dazole', 'worldwide', 'non', '31-05-2023', '07/07/22', '416'),
(2975, 'bactoclav 625 (Amoxicillin and clavulanate tablet)', ' Penicillin antibacterial', '3200', '20', '4500', 10, 'bactoclav capsule', 'unichem', 'non', '31-01-2024', '07/07/22', '416'),
(2976, 'amoxicillin 125mg susp', ' Penicillin antibacterial', '700', 'each', '1950', 9, 'moxacil syrup', 'unichem', 'non', '31-03-2023', '07/07/22', '416'),
(2977, 'Aspirin 75 mg', ' Anticoagulant ', '1200', '1 by 10', '1250', 280, 'aspirin enteric coated', 'worldwide', 'no', '18-07-2022', '07/18/22', '416'),
(2978, 'Quinine Injection 300mg/ml', 'Antimalarial', '450', 'each', '900', 10, 'ww-quin', 'unichem', 'non', '31-07-2023', '07/20/22', '416'),
(2979, 'promethazine injection 50mg/2ml', ' Sedating H1 antihistamine', '250', 'each', '500', 10, 'ww-promethazine', 'unichem', 'non', '30-04-2024', '07/20/22', '416'),
(2980, 'Haemaccel', 'colloidal infusion solution of polygeline', '8700', 'each', '19500', 1, 'Haemaccel', 'unichem', 'non', '31-10-2024', '07/20/22', '416'),
(2981, 'Etamsylate tablet 500mg', 'haemostatic agent ', '1250', 'each', '250', 54, 'Sylate', 'unichem', 'non', '30-07-2022', '07/20/22', '416'),
(2982, 'Artesunate Injections 60mg', 'Antimalarial', '1450', 'each', '3250', 10, 'Artelin 60', 'unichem', 'non', '31-05-2024', '07/20/22', '416'),
(2983, 'LA', 'Malaria ', '123', '30', '0', 1120, '12', 'LXE', 'Mild', '29-10-2022', '10/29/22', '416');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

CREATE TABLE `medicine_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_category`
--

INSERT INTO `medicine_category` (`id`, `category`, `description`, `hospital_id`) VALUES
(1, 'Malaria ', 'Tablets', '416');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(100) NOT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `modules` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(100) NOT NULL,
  `title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `description`, `date`, `type`, `hospital_id`) VALUES
(16, 'New Notice', '<p>Notice detail</p>\n', '1653868800', 'staff', '416');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `z` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `z`, `ion_user_id`, `hospital_id`) VALUES
(13, '', 'Ms. Linda Likuwenu', 'LINDA@hms.com', 'Colegepara, Rajbari', '+0123456789', '', '', '', '752', '416'),
(14, NULL, 'MADALITSO MZENGEZA', 'MMZENGEZA@hms.com', 'P.O Box 1889  bt', '0880058356', NULL, NULL, NULL, '780', '416'),
(15, NULL, 'nurse A', 'nurse@hms.com', 'po box 1889', '0992090717', NULL, NULL, NULL, '789', '416'),
(16, NULL, 'New Nurse', 'new@new.com', 'Total Malawi LTD', '+265993438181', NULL, NULL, NULL, '806', '416');

-- --------------------------------------------------------

--
-- Table structure for table `ot_payment`
--

CREATE TABLE `ot_payment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_c_s` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_a_s_1` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_a_s_2` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_anaes` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `n_o_o` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `c_s_f` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `a_s_f_1` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `a_s_f_2` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `anaes_f` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ot_charge` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `cab_rent` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `seat_rent` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_fees` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_fees` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `gross_total` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `flat_discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount_received` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `p_limit` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_limit` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `module` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `show_in_frontend` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `frontend_order` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `set_as_default` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name`, `price`, `p_limit`, `d_limit`, `module`, `show_in_frontend`, `frontend_order`, `set_as_default`) VALUES
(77, 'Full Package', 'MWK500,000', '100000', '100000', 'accountant,appointment,lab,bed,department,doctor,donor,finance,scheme,pharmacy,laboratorist,medicine,nurse,patient,pharmacist,prescription,receptionist,report,notice,email,sms', 'Yes', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `birthdate` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `age` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bloodgroup` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `registration_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `how_added` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `medical_scheme` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `img_url`, `name`, `email`, `doctor`, `address`, `phone`, `sex`, `birthdate`, `age`, `bloodgroup`, `ion_user_id`, `patient_id`, `add_date`, `registration_time`, `how_added`, `hospital_id`, `medical_scheme`) VALUES
(33, 'uploads/authorLogo.png', 'Mr Patient', 'patient@hms.com', ',149', 'Florida', '+0123456789', 'Male', '07-07-2019', '', 'A+', '750', '727265', '07/07/19', '1562482338', '', '416', ''),
(37, NULL, 'aa', 'aa-763-aa-768@example.com', NULL, NULL, '', 'Male', NULL, '', NULL, '760', '185607', '05/17/22', NULL, 'from_pos', '416', ''),
(38, NULL, 'test', 'test@mail.com', '149,150', 'po box 1889', '992090717', 'Male', '01-07-2019', NULL, 'A+', '763', '329278', '05/23/22', '1653295973', NULL, '416', ''),
(39, 'uploads/06f56cc9f333a1cd36732265620c66c8.jpg', 'New patient', 'georgennd@gmail.com', '149', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', 'Male', '01-05-2022', NULL, 'A+', '764', '345907', '05/24/22', '1653406233', NULL, '416', ''),
(40, NULL, 'TEST 1', 'TEST1@hms.com', ',149', 'box 1889', '0992090717', 'Male', '01-03-1980', NULL, 'B+', '765', '859918', '05/30/22', '1653899706', NULL, '416', ''),
(41, NULL, 'madalitso MZENGEZA', 'dsgfalkdsjnbcjd', '149', 'bvox 123', '99887766', 'Male', '01-06-1984', NULL, 'A+', '766', '536240', '06/07/22', '1654605389', NULL, '416', ''),
(42, NULL, 'madalitso MZENGEZA', 'dsgfalkdsjnbcjd', '149', 'bvox 123', '99887766', 'Male', '01-06-1984', NULL, 'A+', NULL, '713315', '06/07/22', '1654605389', NULL, '416', ''),
(43, NULL, 'MADALITSO CHIMWEZI', 'CDGKJNBKJXSANKJDN', '149', 'XXXX', '222367378', 'Female', '07-05-1980', NULL, 'A+', '768', '566905', '06/07/22', '1654609165', NULL, '416', ''),
(45, NULL, 'LINDA LIKUWENU', 'likuwenulinda1986@gmail.com', '149', 'P.O. BOX 1098 BT', '0884638380', 'Female', '19-06-1987', NULL, 'A+', '770', '572041', '06/14/22', '1655210641', NULL, '416', ''),
(71, 'uploads/MNAQ4uuc0h61.jpg', 'New Patient', 'dwd@gm.com', '149', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', 'Male', '09-11-2022', NULL, 'A+', '809', '423491', '11/19/22', '1668852729', NULL, '416', NULL),
(48, NULL, 'horace nyaka', 'qqqqqq', '', 'box 608 llw', '0999511874', 'Male', '09-02-1979', NULL, 'O+', '773', '894620', '06/16/22', '1655368914', NULL, '416', ''),
(49, NULL, 'Vitumbiko Gondwe', 'xxxxssssxxs', ',149', 'P.O. BOX 1098 BT', '098876', 'Male', '02-03-2020', NULL, 'A+', '774', '330614', '06/16/22', '1655369482', NULL, '416', ''),
(50, NULL, 'Chimwala Will', 'gsdsetrefdc', '149', '54', '445024', 'Male', '11-02-2014', NULL, 'A+', '775', '115622', '06/16/22', '1655371320', NULL, '416', ''),
(51, NULL, 'Arbaaz Yusuf Balwan', 'arbaazbalwan@gmail.com', '149', 'box 5319 limbe', '0993635536', 'Male', '21-01-1997', NULL, 'B+', '776', '447355', '06/16/22', '1655378179', NULL, '416', ''),
(53, NULL, 'Jane Nazombe', 'Jane Nazombe@0886372224.com', '149', 'P.O. Box 511, Blantyre', '0886372224', 'Female', '01-04-1972', NULL, 'A+', '778', '285567', '06/17/22', '1655451977', NULL, '416', ''),
(54, NULL, 'SAM THUNDE', 'samthunde@gmail.com', '149', 'BOX 3524 BT', '0999511693', 'Male', '17-04-1966', NULL, 'A+', '779', '883924', '06/20/22', '1655727352', NULL, '416', ''),
(55, NULL, 'DANIEL CHITSUKWA', 'likuwenulinda1987@gmal.com', '', 'P.O. Box 1098 Blantyre', '0884638380', 'Male', '27-07-2013', NULL, 'A+', '781', '805644', '06/23/22', '1655974091', NULL, '416', ''),
(56, NULL, 'RAFIQ DOSSANI', 'RAFIQ DOSSANI@0992090272.com', '', 'P.O BOX 1889 BT', '0992090272', 'Male', '23-09-1966', NULL, 'A+', '782', '389105', '06/23/22', '1655990735', NULL, '416', ''),
(57, NULL, 'FATIMA FAZILIANI', 'FATIMA FAZILIANI@0999132391.com', '', 'LIMBE', '0999132391', 'Female', '16-02-1969', NULL, 'A+', '783', '869845', '06/23/22', '1655991688', NULL, '416', ''),
(63, NULL, 'THOM HOSI NAZIMBIRI', 'THOM HOSI NAZIMBIRI@0888881317.com', '152', 'NAMIWAWA', '0888881317', 'Male', '26-10-1997', NULL, 'A+', '793', '36630', '07/15/22', '1657878362', NULL, '416', ''),
(59, NULL, 'SURFRAZ YUSUF', 'surfrazfegmail.com', '', 'P.O. BOX 779 BT', '0999616810', 'Male', '11-07-1988', NULL, 'A+', '786', '250400', '06/29/22', '1656495981', NULL, '416', ''),
(61, NULL, 'DOREEN GONDWE', 'DOREEN GONDWE@0888669434.com', '151', 'NAMIWAWA', '0888669434', 'Female', '06-05-2000', NULL, 'O-', '790', '989585', '07/11/22', '1657530690', NULL, '416', ''),
(62, NULL, 'MERCY NALIKUNGWI', 'nalkungwimercy@yahoo.com', '149', 'BOX 30415, BT', '0999568555', 'Female', '05-01-1982', NULL, 'O-', '791', '632486', '07/12/22', '1657616224', NULL, '416', ''),
(64, NULL, 'MAAZ KARIM BATATAWALA', 'MAAZ09@gmail.com', '153', 'BOX 779 BT', '0992090717', 'Male', '02-03-1995', NULL, 'A+', '795', '333352', '07/18/22', '1658149690', NULL, '416', ''),
(66, NULL, 'GEORGE NNSENA', 'admin@gmail.com', '149', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', 'Male', '19-10-2022', NULL, 'B-', '802', '121191', '10/19/22', '1666201466', NULL, '416', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_deposit`
--

CREATE TABLE `patient_deposit` (
  `id` int(10) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `payment_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `deposited_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount_received_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `deposit_type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `gateway` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_deposit`
--

INSERT INTO `patient_deposit` (`id`, `patient`, `payment_id`, `date`, `deposited_amount`, `amount_received_id`, `deposit_type`, `gateway`, `user`, `hospital_id`) VALUES
(1594, '', '2021', '1652784034', '100', '2021.gp', 'Cash', NULL, '755', '416'),
(1595, '33', '2022', '1652784165', '100', '2022.gp', 'Cash', NULL, '756', '416'),
(1596, '37', '2023', '1653041098', '100', '2023.gp', 'Cash', NULL, '756', '416'),
(1597, '', '2024', '1653296970', '7000', '2024.gp', 'Cash', NULL, '762', '416'),
(1598, '38', '2025', '1653297037', '7000', '2025.gp', 'Cash', NULL, '762', '416'),
(1599, '39', '2026', '1653851655', '4000', '2026.gp', 'Cash', NULL, '2', '416'),
(1600, '39', '2027', '1653888199', '12', '2027.gp', 'Cash', NULL, '756', '416'),
(1601, '37', '2028', '1653888983', '7000', '2028.gp', 'Cash', NULL, '755', '416'),
(1602, '38', '2029', '1653889082', '100', '2029.gp', 'Cash', NULL, '755', '416'),
(1603, '38', '2030', '1653889215', '250', '2030.gp', 'Cash', NULL, '755', '416'),
(1604, '40', '2031', '1653902952', '7000', '2031.gp', 'Cash', NULL, '756', '416'),
(1605, '40', '2032', '1653900253', '31000', '2032.gp', 'Cash', NULL, '756', '416'),
(1606, '40', '2033', '1653903137', '', '2033.gp', 'Cash', NULL, '756', '416'),
(1607, '40', '2034', '1653903353', '', '2034.gp', 'Cash', NULL, '756', '416'),
(1608, '39', '2035', '1653918155', '', '2035.gp', 'Cash', NULL, '756', '416'),
(1609, '40', '2036', '1653920211', '2000', '2036.gp', 'Cash', NULL, '2', '416'),
(1610, '40', '2037', '1654174587', '7000', '2037.gp', 'Cash', NULL, '756', '416'),
(1611, '38', '2038', '1654177481', '', '2038.gp', 'Cash', NULL, '756', '416'),
(1612, '40', '2039', '1654251057', '5000', '2039.gp', 'Cash', NULL, '756', '416'),
(1613, '40', '2040', '1654251124', '7000', '2040.gp', 'Cash', NULL, '756', '416'),
(1614, '40', '2041', '1654604806', '31000', '2041.gp', 'Cash', NULL, '756', '416'),
(1615, '42', '2042', '1654606768', '39000', '2042.gp', 'Cash', NULL, '756', '416'),
(1616, '43', '2043', '1654609806', '39000', '2043.gp', 'Cash', NULL, '756', '416'),
(1617, '40', '2044', '1654965192', '', '2044.gp', 'Cash', NULL, '2', '416'),
(1618, '44', '2045', '1655197342', '19300', '2045.gp', 'Cash', NULL, '756', '416'),
(1619, '45', '2046', '1655212874', '24800', '2046.gp', 'Cash', NULL, '756', '416'),
(1620, '46', '2047', '1655281624', '15500', '2047.gp', 'Cash', NULL, '756', '416'),
(1621, '47', '2048', '1655281907', '7500', '2048.gp', 'Cash', NULL, '756', '416'),
(1622, '48', '2049', '1655369314', '7500', '2049.gp', 'Cash', NULL, '756', '416'),
(1623, '49', '2050', '1655370566', '31950', '2050.gp', 'Cash', NULL, '756', '416'),
(1624, '50', '2051', '1655371419', '7500', '2051.gp', 'Cash', NULL, '756', '416'),
(1625, '52', '2052', '1655450841', '18500', '2052.gp', 'Cash', NULL, '756', '416'),
(1626, '', '2053', '1655451228', '', '2053.gp', 'Cash', NULL, '756', '416'),
(1627, '', '2054', '1655451721', '7500', '2054.gp', 'Cash', NULL, '756', '416'),
(1628, '53', '2055', '1655454735', '7500', '2055.gp', 'Cash', NULL, '756', '416'),
(1629, '54', '2056', '1655728756', '1800', '2056.gp', 'Cash', NULL, '756', '416'),
(1631, '54', '2058', '1655800716', '7500', '2058.gp', 'Cash', NULL, '756', '416'),
(1632, '55', '2059', '1655974495', '1800', '2059.gp', 'Cash', NULL, '762', '416'),
(1633, '58', '2060', '1656496017', '7500', '2060.gp', 'Cash', NULL, '756', '416'),
(1634, '59', '2061', '1656496084', '10000', '2061.gp', 'Cash', NULL, '756', '416'),
(1635, '60', '2062', '1656573419', '11500', '2062.gp', 'Cash', NULL, '756', '416'),
(1636, '61', '2063', '1657530725', '1800', '2063.gp', 'CASH', NULL, '756', '416'),
(1637, '61', '2064', '1657531019', '1800', '2064.gp', 'CASH', NULL, '762', '416'),
(1638, '62', '2065', '1657616327', '4000', '2065.gp', 'CASH', NULL, '756', '416'),
(1640, '60', '2067', '1657631597', '', '2067.gp', 'NABMAS', NULL, '756', '416'),
(1641, '63', '2068', '1657889456', '25620', '2068.gp', 'CASH', NULL, '756', '416'),
(1643, '64', '2070', '1659354828', '3000', '2070.gp', 'CASH', NULL, '2', '416'),
(1644, '40', '2071', '1661696426', '10000', '2071.gp', 'MASM', NULL, '2', '416'),
(1645, '60', '2072', '1661700420', '20000', '2072.gp', 'MASM', NULL, '2', '416'),
(1646, '', '2073', '1665731146', '', '2073.gp', 'MASM VIP,30000', NULL, '2', '416'),
(1647, '', '2074', '1665731154', '', '2074.gp', 'MASM VIP,30000', NULL, '2', '416'),
(1648, '', '2075', '1665731160', '', '2075.gp', 'MASM VIP,30000', NULL, '2', '416'),
(1649, '', '2076', '1665731175', '', '2076.gp', 'CASH,0', NULL, '2', '416'),
(1650, '', '2077', '1665731198', '', '2077.gp', 'CASH,0', NULL, '2', '416'),
(1651, '', '2078', '1665731229', '', '2078.gp', 'CASH', NULL, '2', '416'),
(1652, '', '2079', '1665731235', '', '2079.gp', 'CASH', NULL, '2', '416'),
(1653, '64', '2080', '1665731245', '', '2080.gp', 'CASH', NULL, '2', '416'),
(1654, '', '2081', '1665731284', '', '2081.gp', 'CASH,0', NULL, '2', '416'),
(1655, '64', '2082', '1665731291', '', '2082.gp', 'CASH,0', NULL, '2', '416'),
(1656, '62', '2083', '1665735862', '2', '2083.gp', 'MASM EXE,35000', NULL, '2', '416'),
(1657, '65', '2084', '1665739353', '', '2084.gp', 'MASM EXE,35000', NULL, '2', '416'),
(1658, '65', '2085', '1665741382', '82000', '2085.gp', 'CASH,0', NULL, '2', '416'),
(1659, '', '2086', '1665742472', '7500', '2086.gp', 'CASH,0', NULL, '2', '416'),
(1660, '64', '2087', '1665742480', '7500', '2087.gp', 'CASH,0', NULL, '2', '416'),
(1661, '63', '2088', '1665742617', '500', '2088.gp', 'MASM VIP,30000', NULL, '2', '416'),
(1662, '65', '2089', '1665744325', '', '2089.gp', 'MASM VIP,30000', NULL, '2', '416'),
(1663, '68', '2090', '1666266343', '', '2090.gp', 'CASH', NULL, '797', '416'),
(1664, '66', '2091', '1668850121', '', '2091.gp', 'CASH', NULL, '2', '416');

-- --------------------------------------------------------

--
-- Table structure for table `patient_material`
--

CREATE TABLE `patient_material` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `date_string` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_material`
--

INSERT INTO `patient_material` (`id`, `date`, `title`, `category`, `patient`, `patient_name`, `patient_address`, `patient_phone`, `url`, `date_string`, `hospital_id`) VALUES
(72, '1654252126', 'obs scan ', NULL, '40', 'TEST 1', 'box 1889', '0992090717', 'uploads/33224.jpg', '03-06-22', '416'),
(73, '1655197429', 'wound dressing procedure', NULL, '44', 'subject', '123', '55667788', NULL, '14-06-22', '416'),
(74, '1656326388', 'medical report', NULL, '57', 'FATIMA FAZILIANI', 'LIMBE', '0999132391', NULL, '27-06-22', '416'),
(75, '1668853769', 'Procedures Report', NULL, '71', 'New Patient', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', NULL, '19-11-22', '416');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `vat` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `x_ray` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `flat_vat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `gross_total` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category_amount` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `category_name` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `amount_received` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `deposit_type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_string` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `finalize_Status` varchar(100) NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `category`, `patient`, `doctor`, `date`, `amount`, `vat`, `x_ray`, `flat_vat`, `discount`, `flat_discount`, `gross_total`, `remarks`, `hospital_amount`, `doctor_amount`, `category_amount`, `category_name`, `amount_received`, `deposit_type`, `status`, `user`, `patient_name`, `patient_phone`, `patient_address`, `doctor_name`, `date_string`, `hospital_id`, `finalize_Status`) VALUES
(2021, NULL, '', '', '1652782931', '100', '0', NULL, NULL, '0', '0', '100', '', '100', '0', NULL, '128*100*diagnostic*1', '100', 'Cash', 'unpaid', '755', NULL, NULL, NULL, NULL, '17-05-22', '416', 'Active'),
(2022, NULL, '33', '149', '1652784165', '100', '0', NULL, NULL, '0', '0', '100', '', '90', '10', NULL, '128*100*diagnostic*1', '100', 'Cash', 'unpaid', '756', 'Mr Patient', '+0123456789', 'Florida', 'Mr Doctor', '17-05-22', '416', 'Active'),
(2023, NULL, '37', '', '1653041098', '100', '0', NULL, NULL, '2', '2', '98', '', '98', '0', NULL, '128*100*diagnostic*1', '100', 'Cash', 'unpaid', '756', 'aa', '', NULL, '0', '20-05-22', '416', 'Active'),
(2024, NULL, '', '', '1653296970', '7000', '0', NULL, NULL, '0', '0', '7000', '', '7000', '0', NULL, '131*7000*others*1', '7000', 'Cash', 'unpaid', '762', '0', '0', '0', '0', '23-05-22', '416', 'Active'),
(2025, NULL, '38', '150', '1653297037', '7000', '0', NULL, NULL, '0', '0', '7000', '', '7000', '0', NULL, '131*7000*others*1', '7000', 'Cash', 'unpaid', '762', 'test', '992090717', 'po box 1889', 'dr kalengo', '23-05-22', '416', 'Active'),
(2026, NULL, '39', '149', '1653851655', '4000', '0', NULL, NULL, '0', '0', '4000', '', '4000', '0', NULL, '132*4000*diagnostic*1', '4000', 'Cash', 'unpaid', '2', 'New patient', '+265993438181', 'Lilongwe Area 18b, Plot 18b/5/1077', 'Mr Doctor', '29-05-22', '416', 'Active'),
(2027, NULL, '39', '149', '1653888199', '8000', '0', NULL, NULL, '0', '0', '8000', '', '8000', '0', NULL, '133*8000*diagnostic*1', '12', 'Cash', 'unpaid', '756', 'New patient', '+265993438181', 'Lilongwe Area 18b, Plot 18b/5/1077', 'Mr Doctor', '30-05-22', '416', 'Active'),
(2028, NULL, '37', '150', '1653888983', '7000', '0', NULL, NULL, '0', '0', '7000', '', '7000', '0', NULL, '131*7000*others*1', '7000', 'Cash', 'unpaid', '755', 'aa', '', NULL, 'dr kalengo', '30-05-22', '416', 'Active'),
(2029, NULL, '38', '150', '1653889082', '100', '0', NULL, NULL, '0', '0', '100', '', '90', '10', NULL, '128*100*diagnostic*1', '100', 'Cash', 'unpaid', '755', 'test', '992090717', 'po box 1889', 'dr kalengo', '30-05-22', '416', 'Active'),
(2030, NULL, '38', '149', '1653889215', '300', '0', NULL, NULL, '0', '0', '300', '', '270', '30', NULL, '128*100*diagnostic*3', '250', 'Cash', 'unpaid', '755', 'test', '992090717', 'po box 1889', 'Mr Doctor', '30-05-22', '416', 'Active'),
(2031, NULL, '40', '150', '1653899770', '27000', '0', NULL, NULL, '0', '0', '27000', '', '27000', '0', NULL, '131*7000*others*1,134*20000*diagnostic*1', '7000', 'Cash', 'unpaid', '756', 'TEST 1', '0992090717', 'box 1889', 'dr kalengo', '30-05-22', '416', 'Active'),
(2032, NULL, '40', '150', '1653900253', '31000', '0', NULL, NULL, '0', '0', '31000', '', '31000', '0', NULL, '131*7000*others*1,132*4000*diagnostic*1,134*20000*diagnostic*1', '31000', 'Cash', 'unpaid', '756', 'TEST 1', '0992090717', 'box 1889', 'dr kalengo', '30-05-22', '416', 'Active'),
(2033, NULL, '40', '149', '1653903091', '11000', '0', NULL, NULL, '0', '0', '11000', '', '11000', '0', NULL, '131*7000*others*1,132*4000*diagnostic*1', '', 'Cash', 'unpaid', '756', 'TEST 1', '0992090717', 'box 1889', 'Mr Doctor', '30-05-22', '416', 'Active'),
(2034, NULL, '40', '149', '1653903353', '7000', '0', NULL, NULL, '0', '0', '7000', '', '7000', '0', NULL, '131*7000*others*1', '', 'Cash', 'unpaid', '756', 'TEST 1', '0992090717', 'box 1889', 'Mr Doctor', '30-05-22', '416', 'Active'),
(2035, NULL, '39', '149', '1653918155', '31000', '0', NULL, NULL, '0', '0', '31000', '', '31000', '0', NULL, '131*7000*others*1,132*4000*diagnostic*1,134*20000*diagnostic*1', '', 'Cash', 'unpaid', '756', 'New patient', '+265993438181', 'Lilongwe Area 18b, Plot 18b/5/1077', 'Mr Doctor', '30-05-22', '416', 'Active'),
(2036, NULL, '40', '', '1653920211', '0', '0', NULL, NULL, '0', '0', '0', '', '0', '0', NULL, '135*0*others*1', '2000', 'Cash', 'unpaid', '2', 'TEST 1', '0992090717', 'box 1889', '0', '30-05-22', '416', 'Active'),
(2037, NULL, '40', '149', '1654174587', '7000', '0', NULL, NULL, '0', '0', '7000', '', '7000', '0', NULL, '131*7000*others*1', '7000', 'Cash', 'unpaid', '756', 'TEST 1', '0992090717', 'box 1889', 'DR. S. A. KALENGO', '02-06-22', '416', 'Active'),
(2038, NULL, '38', '149', '1654177481', '7000', '0', NULL, NULL, '0', '0', '7000', '', '7000', '0', NULL, '131*7000*others*1', '', 'Cash', 'unpaid', '756', 'test', '992090717', 'po box 1889', 'DR. S. A. KALENGO', '02-06-22', '416', 'Active'),
(2039, NULL, '40', '', '1654250955', '11000', '0', NULL, NULL, '2000', '2000', '9000', '', '9000', '0', NULL, '131*7000*others*1,132*4000*diagnostic*1', '5000', 'Cash', 'unpaid', '756', 'TEST 1', '0992090717', 'box 1889', NULL, '03-06-22', '416', 'Active'),
(2040, NULL, '40', '149', '1654251124', '7000', '0', NULL, NULL, '0', '0', '7000', '', '7000', '0', NULL, '131*7000*others*1', '7000', 'Cash', 'unpaid', '756', 'TEST 1', '0992090717', 'box 1889', 'DR. S. A. KALENGO', '03-06-22', '416', 'Active'),
(2041, NULL, '40', '149', '1654604297', '31000', '0', NULL, NULL, '0', '0', '31000', '', '31000', '0', NULL, '131*7000*others*1,132*4000*diagnostic*1,134*20000*diagnostic*1', '31000', 'Cash', 'unpaid', '756', 'TEST 1', '0992090717', 'box 1889', 'DR. S. A. KALENGO', '07-06-22', '416', 'Active'),
(2042, NULL, '42', '149', '1654605427', '39000', '0', NULL, NULL, '0', '0', '39000', '', '39000', '0', NULL, '131*7000*others*1,132*4000*diagnostic*1,134*20000*diagnostic*1,133*8000*diagnostic*1', '39000', 'Cash', 'unpaid', '756', 'madalitso MZENGEZA', '99887766', 'bvox 123', 'DR. S. A. KALENGO', '07-06-22', '416', 'Active'),
(2043, NULL, '43', '149', '1654609232', '39000', '0', NULL, NULL, '0', '0', '39000', '', '39000', '0', NULL, '131*7000*others*1,132*4000*diagnostic*1,133*8000*diagnostic*1,134*20000*diagnostic*1', '39000', 'Cash', 'unpaid', '756', 'MADALITSO CHIMWEZI', '222367378', 'XXXX', 'DR. S. A. KALENGO', '07-06-22', '416', 'Active'),
(2044, NULL, '40', '', '1654964953', '11500', '0', NULL, NULL, '0', '0', '11500', '', '11500', '0', NULL, '131*7500*others*1,132*4000*diagnostic*1', '', 'Cash', 'unpaid', '2', 'TEST 1', '0992090717', 'box 1889', NULL, '11-06-22', '416', 'Active'),
(2045, NULL, '44', '', '1655196627', '19300', '0', NULL, NULL, '0', '0', '19300', '', '19300', '0', NULL, '131*7500*others*1,196*1800*diagnostic*1,212*4000*diagnostic*1,176*6000*others*1', '19300', 'Cash', 'unpaid', '756', 'subject', '55667788', '123', NULL, '14-06-22', '416', 'Active'),
(2046, NULL, '45', '', '1655210675', '24800', '0', NULL, NULL, '0', '0', '24800', '', '24800', '0', NULL, '131*7500*others*1,195*1800*diagnostic*1,200*6000*diagnostic*1,150*9500*others*1', '24800', 'Cash', 'unpaid', '756', 'LINDA LIKUWENU', '0884638380', 'P.O. BOX 1098 BT', NULL, '14-06-22', '416', 'Active'),
(2047, NULL, '46', '', '1655281392', '15500', '0', NULL, NULL, '0', '0', '15500', '', '15500', '0', NULL, '131*7500*others*1,147*8000*others*1', '15500', 'Cash', 'unpaid', '756', 'TEST 1', '0997745697', 'P.O BOX 27 BT', NULL, '15-06-22', '416', 'Active'),
(2048, NULL, '47', '', '1655281907', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '131*7500*others*1', '7500', 'Cash', 'unpaid', '756', 'TEST 2', '0884040784', 'P.O. BOX 95 BT', '0', '15-06-22', '416', 'Active'),
(2049, NULL, '48', '149', '1655369314', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '131*7500*others*1', '7500', 'Cash', 'unpaid', '756', 'horace nyaka', '0999511874', 'box 608 llw', 'DR. S. A. KALENGO', '16-06-22', '416', 'Active'),
(2050, NULL, '49', '149', '1655369604', '31950', '0', NULL, NULL, '0', '0', '31950', '', '31950', '0', NULL, '131*7500*others*1,196*1800*diagnostic*1,198*1800*diagnostic*1,203*9850*diagnostic*1,150*9500*others*1,266*750*diagnostic*2', '31950', 'Cash', 'unpaid', '756', 'Vitumbiko Gondwe', '098876', 'P.O. BOX 1098 BT', 'DR. S. A. KALENGO', '16-06-22', '416', 'Active'),
(2051, NULL, '50', '', '1655371419', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '131*7500*others*1', '7500', 'Cash', 'unpaid', '756', 'Chimwala Will', '445024', '54', '0', '16-06-22', '416', 'Active'),
(2052, NULL, '52', '149', '1655450263', '18500', '0', NULL, NULL, '0', '0', '18500', '', '18500', '0', NULL, '131*7500*others*1,146*8000*others*1,138*1500*others*2', '18500', 'Cash', 'unpaid', '756', 'test 3', '0999146999', 'PO Box 5116 Bt', 'DR. S. A. KALENGO', '17-06-22', '416', 'Active'),
(2053, NULL, '', '', '1655451228', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '131*7500*others*1', '', 'Cash', 'unpaid', '756', '0', '0', '0', '0', '17-06-22', '416', 'Active'),
(2054, NULL, '', '', '1655451721', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '131*7500*others*1', '7500', 'Cash', 'unpaid', '756', '0', '0', '0', '0', '17-06-22', '416', 'Active'),
(2055, NULL, '53', '', '1655452175', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '131*7500*others*1', '7500', 'Cash', 'unpaid', '756', 'Jane Nazombe', '0886372224', 'P.O. Box 511, Blantyre', NULL, '17-06-22', '416', 'Active'),
(2056, NULL, '54', '149', '1655727488', '1800', '0', NULL, NULL, '0', '0', '1800', '', '1800', '0', NULL, '202*1800*diagnostic*1', '1800', 'Cash', 'unpaid', '756', 'SAM THUNDE', '0999511693', 'BOX 3524 BT', 'DR. S. A. KALENGO', '20-06-22', '416', 'Active'),
(2058, NULL, '54', '149', '1655800716', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '131*7500*others*1', '7500', 'Cash', 'unpaid', '756', 'SAM THUNDE', '0999511693', 'BOX 3524 BT', 'DR. S. A. KALENGO', '21-06-22', '416', 'Active'),
(2059, NULL, '55', '', '1655974495', '1800', '0', NULL, NULL, '0', '0', '1800', '', '1800', '0', NULL, '198*1800*diagnostic*1', '1800', 'Cash', 'unpaid', '762', 'DANIEL CHITSUKWA', '0884638380', 'P.O. Box 1098 Blantyre', '0', '23-06-22', '416', 'Active'),
(2060, NULL, '58', '', '1656496017', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '131*7500*others*1', '7500', 'Cash', 'unpaid', '756', 'SUFRAZ YUSUFU', '0999616810', 'BOX 779 BT', '0', '29-06-22', '416', 'Active'),
(2061, NULL, '59', '', '1656496084', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '131*7500*others*1', '10000', 'Cash', 'unpaid', '756', 'SURFRAZ YUSUF', '0999616810', 'P.O. BOX 779 BT', '0', '29-06-22', '416', 'Finalized'),
(2062, NULL, '60', '', '1656573224', '11500', '0', NULL, NULL, '0', '0', '11500', '', '11500', '0', NULL, '131*7500*others*1,212*4000*diagnostic*1', '11500', 'Cash', 'unpaid', '756', 'test 6', '14356878', '176', NULL, '30-06-22', '416', 'Active'),
(2063, NULL, '61', '', '1657530725', '1800', '0', NULL, NULL, '0', '0', '1800', '', '1800', '0', NULL, '202*1800*diagnostic*1', '1800', 'CASH', 'unpaid', '756', 'DOREEN GONDWE', '0888669434', 'NAMIWAWA', '0', '11-07-22', '416', 'Active'),
(2064, NULL, '61', '', '1657531019', '1800', '0', NULL, NULL, '0', '0', '1800', '', '1800', '0', NULL, '202*1800*diagnostic*1', '1800', 'CASH', 'unpaid', '762', 'DOREEN GONDWE', '0888669434', 'NAMIWAWA', '0', '11-07-22', '416', 'Active'),
(2065, NULL, '62', '', '1657616327', '4000', '0', NULL, NULL, '0', '0', '4000', '', '4000', '0', NULL, '212*4000*diagnostic*1', '4000', 'CASH', 'unpaid', '756', 'MERCY NALIKUNGWI', '0999568555', 'BOX 30415, BT', '0', '12-07-22', '416', 'Active'),
(2067, NULL, '60', '', '1657631490', '51500', '0', NULL, NULL, '0', '0', '51500', '', '51500', '0', NULL, '314*7500*diagnostic*1,151*25000*others*1,153*19000*others*1', '', 'NABMAS', 'unpaid', '756', 'test 6', '14356878', '176', NULL, '12-07-22', '416', 'Finalized'),
(2068, NULL, '63', '', '1657878446', '25620', '0', NULL, NULL, '0', '0', '25620', '', '25620', '0', NULL, '313*7500*diagnostic*1,198*1800*diagnostic*1,209*5000*diagnostic*1,210*5000*diagnostic*1,212*4000*diagnostic*1,311*1*others*2320', '25620', 'CASH', 'unpaid', '756', 'THOM HOSI NAZIMBIRI', '0888881317', 'NAMIWAWA', NULL, '15-07-22', '416', 'Finalized'),
(2070, NULL, '64', '152', '1659354828', '203149', '0', NULL, NULL, '0', '0', '203149', '', '203149', '0', NULL, '314*7500*diagnostic*1,132*5500*others*1,318*14500*diagnostic*1,435*19493*diagnostic*1,554*28392*diagnostic*1,556*127764*diagnostic*1', '3000', 'CASH', 'unpaid', '2', 'MAAZ KARIM BATATAWALA', '0992090717', 'BOX 779 BT', 'DR ZAINAB MALUK', '01-08-22', '416', 'Active'),
(2071, NULL, '40', '149', '1661696363', '208500', '0', NULL, NULL, '0', '0', '208500', '', '208500', '0', NULL, '314*7500*diagnostic*5,317*21000*diagnostic*8,138*1500*others*2', '10000', 'MASM', 'unpaid', '2', 'TEST 1', '0992090717', 'box 1889', 'DR. S. A. KALENGO', '28-08-22', '416', 'Active'),
(2072, NULL, '60', '149', '1661698653', '122000', '0', NULL, NULL, '0', '0', '122000', '', '122000', '0', NULL, '314*7500*diagnostic*9,132*5500*others*2,318*14500*diagnostic*3', '20000', 'MASM', 'unpaid', '2', 'test 6', '14356878', '176', 'DR. S. A. KALENGO', '28-08-22', '416', 'Active'),
(2073, NULL, '', '', '1665731146', '20000', '0', NULL, NULL, '0', '0', '20000', '', '20000', '0', NULL, '137*14500*others*1,132*5500*others*1', '', 'MASM VIP,30000', 'unpaid', '2', '0', '0', '0', '0', '14-10-22', '416', 'Active'),
(2074, NULL, '', '', '1665731154', '20000', '0', NULL, NULL, '0', '0', '20000', '', '20000', '0', NULL, '137*14500*others*1,132*5500*others*1', '', 'MASM VIP,30000', 'unpaid', '2', '0', '0', '0', '0', '14-10-22', '416', 'Active'),
(2075, NULL, '', '', '1665731160', '20000', '0', NULL, NULL, '0', '0', '20000', '', '20000', '0', NULL, '137*14500*others*1,132*5500*others*1', '', 'MASM VIP,30000', 'unpaid', '2', '0', '0', '0', '0', '14-10-22', '416', 'Active'),
(2076, NULL, '', '', '1665731175', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '314*7500*diagnostic*1', '', 'CASH,0', 'unpaid', '2', '0', '0', '0', '0', '14-10-22', '416', 'Active'),
(2077, NULL, '', '', '1665731198', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '314*7500*diagnostic*1', '', 'CASH,0', 'unpaid', '2', '0', '0', '0', '0', '14-10-22', '416', 'Active'),
(2078, NULL, '', '', '1665731229', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '314*7500*diagnostic*1', '', 'CASH', 'unpaid', '2', '0', '0', '0', '0', '14-10-22', '416', 'Active'),
(2079, NULL, '', '', '1665731235', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '314*7500*diagnostic*1', '', 'CASH', 'unpaid', '2', '0', '0', '0', '0', '14-10-22', '416', 'Active'),
(2080, NULL, '64', '152', '1665731245', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '314*7500*diagnostic*1', '', 'CASH', 'unpaid', '2', 'MAAZ KARIM BATATAWALA', '0992090717', 'BOX 779 BT', 'DR ZAINAB MALUK', '14-10-22', '416', 'Active'),
(2081, NULL, '', '', '1665731284', '5500', '0', NULL, NULL, '0', '0', '5500', '', '5500', '0', NULL, '132*5500*others*1', '', 'CASH,0', 'unpaid', '2', '0', '0', '0', '0', '14-10-22', '416', 'Active'),
(2082, NULL, '64', '149', '1665731291', '5500', '0', NULL, NULL, '0', '0', '5500', '', '5500', '0', NULL, '132*5500*others*1', '', 'CASH,0', 'unpaid', '2', 'MAAZ KARIM BATATAWALA', '0992090717', 'BOX 779 BT', 'DR. S. A. KALENGO', '14-10-22', '416', 'Active'),
(2083, NULL, '62', '152', '1665734899', '81000', '0', NULL, NULL, '0', '0', '81000', '', '81000', '0', NULL, '314*7500*diagnostic*1,313*7500*diagnostic*1,318*14500*diagnostic*1,136*16000*others*1,317*21000*diagnostic*1,137*14500*others*1', '2', 'MASM EXE,35000', 'unpaid', '2', 'MERCY NALIKUNGWI', '0999568555', 'BOX 30415, BT', 'DR ZAINAB MALUK', '14-10-22', '416', 'Active'),
(2084, NULL, '65', '', '1665739353', '27500', '0', NULL, NULL, '0', '0', '27500', '', '27500', '0', NULL, '132*5500*others*1,313*7500*diagnostic*1,318*14500*diagnostic*1', '', 'MASM EXE,35000', 'unpaid', '2', 'georgennd', '+265993438181', 'Lilongwe Area 18b, Plot 18b/5/1077', '0', '14-10-22', '416', 'Active'),
(2085, NULL, '65', '149', '1665739444', '83000', '0', NULL, NULL, '0', '0', '83000', '', '83000', '0', NULL, '314*7500*diagnostic*1,313*7500*diagnostic*1,136*16000*others*1,317*21000*diagnostic*1,137*14500*others*1,138*1500*others*1,141*15000*others*1', '82000', 'CASH,0', 'unpaid', '2', 'georgennd', '+265993438181', 'Lilongwe Area 18b, Plot 18b/5/1077', 'DR. S. A. KALENGO', '14-10-22', '416', 'Active'),
(2086, NULL, '', '', '1665742472', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '314*7500*diagnostic*1', '7500', 'CASH,0', 'unpaid', '2', '0', '0', '0', '0', '14-10-22', '416', 'Active'),
(2087, NULL, '64', '149', '1665742480', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '314*7500*diagnostic*1', '7500', 'CASH,0', 'unpaid', '2', 'MAAZ KARIM BATATAWALA', '0992090717', 'BOX 779 BT', 'DR. S. A. KALENGO', '14-10-22', '416', 'Active'),
(2088, NULL, '63', '149', '1665742617', '31000', '0', NULL, NULL, '0', '0', '31000', '', '31000', '0', NULL, '138*1500*others*1,314*7500*diagnostic*1,318*14500*diagnostic*1,313*7500*diagnostic*1', '500', 'MASM VIP,30000', 'unpaid', '2', 'THOM HOSI NAZIMBIRI', '0888881317', 'NAMIWAWA', 'DR. S. A. KALENGO', '14-10-22', '416', 'Active'),
(2089, NULL, '65', '149', '1665744325', '14500', '0', NULL, NULL, '0', '0', '14500', '', '14500', '0', NULL, '137*14500*others*1', '', 'MASM VIP,30000', 'unpaid', '2', 'georgennd', '+265993438181', 'Lilongwe Area 18b, Plot 18b/5/1077', 'DR. S. A. KALENGO', '14-10-22', '416', 'Active'),
(2090, NULL, '68', '149', '1666266343', '7500', '0', NULL, NULL, '0', '0', '7500', '', '7500', '0', NULL, '313*7500*diagnostic*1', '', 'CASH', 'unpaid', '797', 'Blessings', '0999888777', NULL, 'DR. S. A. KALENGO', '20-10-22', '416', 'Active'),
(2091, NULL, '66', '149', '1668850121', '0', '0', NULL, NULL, '0', '0', '0', '', '0', '0', NULL, '262*0*others*600', '', 'CASH', 'unpaid', '2', 'GEORGE NNSENA', '+265993438181', 'Lilongwe Area 18b, Plot 18b/5/1077', 'DR. S. A. KALENGO', '19-11-22', '416', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `paymentGateway`
--

CREATE TABLE `paymentGateway` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `merchant_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `salt` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `APIUsername` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `APIPassword` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `APISignature` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentGateway`
--

INSERT INTO `paymentGateway` (`id`, `name`, `merchant_key`, `salt`, `x`, `y`, `APIUsername`, `APIPassword`, `APISignature`, `status`, `hospital_id`) VALUES
(1, 'PayPal', '', '', '', '', 'API Username', 'API Password', 'API Signature', 'test', '416'),
(2, 'Pay U Money', 'Merchant Key', 'Salt', '', '', '', '', 'Aaw-Fd69z.JLuiq13ejMN-CsSMuuAPEXWUFPF5QW9sD22fp1hosGIFKo', 'test', '416'),
(48, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '452'),
(49, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '452'),
(50, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '453'),
(51, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '453'),
(52, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '454'),
(53, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '454'),
(54, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '455'),
(55, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '455'),
(56, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '456'),
(57, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '456');

-- --------------------------------------------------------

--
-- Table structure for table `payment_category`
--

CREATE TABLE `payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `c_price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_commission` int(100) DEFAULT NULL,
  `h_commission` int(100) DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_category`
--

INSERT INTO `payment_category` (`id`, `category`, `description`, `c_price`, `type`, `d_commission`, `h_commission`, `hospital_id`) VALUES
(16, 'E.C.G', 'Payments from E.C.G', '250', 'diagnostic', 30, 0, ''),
(78, 'USG - Pregnancy Pro', 'USG - Pregnancy Pro', '400', 'diagnostic', 30, 0, ''),
(19, 'Ward Fee', 'Deposits from ward', '400', 'others', 0, 0, ''),
(20, 'Admission Fees', 'Patient Admission Fees', '100', 'others', 0, 0, ''),
(23, 'Oxyzen', 'Income From Oxyzen', '0', 'others', 0, 0, ''),
(24, 'Nebulizer', 'Income From Nebulizer', '60', 'others', 0, 0, ''),
(25, 'Newspaper sell', 'Income From selling old newspaper', '0', 'others', 0, 0, ''),
(33, 'Ambulance', 'Ambulance er vara', '0', 'others', 0, 0, ''),
(34, 'HbAIc', 'gfdsegfdgd', '800', 'diagnostic', 30, 0, ''),
(35, 'Troponin-I', 'Pathological Test', '1000', 'diagnostic', 30, 0, ''),
(36, 'CBC (DIGITAL)', 'Pathological Test', '450', 'diagnostic', 30, 0, ''),
(37, 'Eosinophil', 'Pathological Test', '100', 'diagnostic', 30, 0, ''),
(38, 'Platelets', 'Pathological Test', '200', 'diagnostic', 30, 0, ''),
(39, 'Malarial Parasites (MP)', 'Pathological Test', '100', 'diagnostic', 30, 0, ''),
(40, 'BT/ CT', 'Pathological Test', '200', 'diagnostic', 30, 0, ''),
(41, 'ASO Titre', 'Pathological Test', '250', 'diagnostic', 30, 0, ''),
(42, 'CRP', 'Pathological Test', '400', 'diagnostic', 30, 0, ''),
(43, 'R/A test', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(44, 'VDRL', 'Pathological Test', '200', 'diagnostic', 30, 0, ''),
(45, 'TPHA', 'Pathological Test', '350', 'diagnostic', 30, 0, ''),
(46, 'HBsAg (Screening)', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(47, 'HBsAg (Confirmatory)', 'Pathological Test', '600', 'diagnostic', 30, 0, ''),
(48, 'CFT for Kala Zar', 'Pathological Test', '0', 'diagnostic', 0, 0, ''),
(49, 'CFT for Filaria', 'Pathological Test', '0', 'diagnostic', 0, 0, ''),
(50, 'Pregnancy Test', 'Pathological Test', '150', 'diagnostic', 30, 0, ''),
(51, 'Blood Grouping', 'Pathological Test', '100', 'diagnostic', 30, 0, ''),
(52, 'Widal Test', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(53, 'RBS', 'Pathological Test', '100', 'diagnostic', 30, 0, ''),
(54, 'Blood Urea', 'Pathological Test', '250', 'diagnostic', 30, 0, ''),
(55, 'S. Creatinine', 'Pathological Test', '250', 'diagnostic', 30, 0, ''),
(56, 'S. cholesterol', 'Pathological Test', '250', 'diagnostic', 30, 0, ''),
(57, 'Fasting Lipid Profile', 'Pathological Test', '850', 'diagnostic', 30, 0, ''),
(58, 'S. Bilirubin', 'Pathological Test', '150', 'diagnostic', 30, 0, ''),
(59, 'S. Alkaline Phosohare', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(60, 'S. Albumin', 'Pathological Test', '250', 'diagnostic', 30, 0, ''),
(61, 'S. Calcium', 'Pathological Test', '350', 'diagnostic', 30, 0, ''),
(62, 'RBS with CUS', 'Pathological Test', '160', 'diagnostic', 30, 0, ''),
(63, 'SGPT', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(64, 'SGOT', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(65, 'Urine for R/E', 'Pathological Test', '150', 'diagnostic', 30, 0, ''),
(66, 'Urine C/S', 'Pathological Test', '350', 'diagnostic', 30, 0, ''),
(67, 'Stool for R/E', 'Pathological Test', '150', 'diagnostic', 30, 0, ''),
(68, 'Semen Analysis', 'Pathological Test', '300', 'diagnostic', 30, 0, ''),
(69, 'S. Electrolyte', 'Pathological Test', '800', 'diagnostic', 30, 0, ''),
(70, 'S. T3/ T4/ THS', 'Pathological Test', '1000', 'diagnostic', 30, 0, ''),
(71, 'MT', 'Pathological Test', '150', 'diagnostic', 30, 0, ''),
(77, 'USG - Whole Abdomen ', 'USG - Whole Abdomen ', '400', 'diagnostic', 30, 0, ''),
(73, 'ECHO Normal', 'ksdjkfsd', '700', 'diagnostic', 30, 0, ''),
(76, 'x-ray chest', 'Normal', '200', 'diagnostic', 10, 0, ''),
(79, 'USG - KUB', 'USG - KUB', '500', 'diagnostic', 20, 0, ''),
(80, 'USG - Liver', 'USG - Liver', '400', 'diagnostic', 30, 0, ''),
(81, 'USG - Breast (Left)', 'USG - Breast (Left)', '400', 'diagnostic', 30, 0, ''),
(82, 'USG - Breast (Right)', 'USG - Breast (Right)', '400', 'diagnostic', 30, 0, ''),
(83, 'X-RAY - Ba MealS+D  ', 'X-RAY - Ba MealS+D  ', '1400', 'diagnostic', 20, 0, ''),
(84, 'X-RAY - Ba Swallo Oesopha', 'X-RAY - Ba Swallo Oesopha', '1000', 'diagnostic', 20, 0, ''),
(85, 'X-RAY - KUB                         ', 'X-RAY - KUB ', '500', 'diagnostic', 20, 0, ''),
(86, 'X-RAY - Leg Joint(B/V)(L/R)', 'X-RAY - Leg Joint(B/V)(L/R)', '500', 'diagnostic', 20, 0, ''),
(87, 'X-RAY -Knee Joint(L/R)', 'X-RAY -Knee Joint(L/R)', '500', 'diagnostic', 20, 0, ''),
(88, 'X-RAY - Finger(B/V) ', 'X-RAY - Finger(B/V) ', '350', 'diagnostic', 20, 0, ''),
(89, 'X-RAY - Wrist(B/V)(L/R) ', 'X-RAY - Wrist(B/V)(L/R) ', '350', 'diagnostic', 20, 0, ''),
(90, 'X-RAY - Hand(B/V)(L/R)                   ', 'X-RAY - Hand(B/V)(L/R)       ', '350', 'diagnostic', 20, 0, ''),
(91, 'X-RAY - Elbow(B/V)(L/R)', 'X-RAY - Elbow(B/V)(L/R)', '350', 'diagnostic', 20, 0, ''),
(92, 'X-RAY - Erm(B/V)(L/R )', 'X-RAY - Erm(B/V)(L/R )', '350', 'diagnostic', 20, 0, ''),
(93, 'X-RAY - Shoulder Joint (B/V)', 'X-RAY - Shoulder Joint (B/V)', '500', 'diagnostic', 20, 0, ''),
(94, 'X-RAY - Shoulder Joint (A/P)', 'X-RAY - Shoulder Joint (A/P)', '350', 'diagnostic', 20, 0, ''),
(95, 'X-RAY - Foot (B/V)', 'X-RAY - Foot (B/V)', '350', 'diagnostic', 20, 0, ''),
(96, 'X-RAY - Thigh(B/V)', 'X-RAY - Thigh(B/V)', '500', 'diagnostic', 20, 0, ''),
(97, 'X-RAY - Ankle(B/V)', 'X-RAY - Ankle(B/V)', '350', 'diagnostic', 20, 0, ''),
(98, 'X-RAY - Hip Joint(A/P)', 'X-RAY - Hip Joint(A/P)', '350', 'diagnostic', 20, 0, ''),
(99, 'X-RAY - Pelvis(A/P)', 'X-RAY - Pelvis(A/P)', '500', 'diagnostic', 20, 0, ''),
(100, 'X-RAY - L/S(B/V)(Lamber Spine)', 'X-RAY - L/S(B/V)(Lamber Spine)', '500', 'diagnostic', 20, 0, ''),
(101, 'X-RAY - L/S(A/P)(LamberSpine)', 'X-RAY - L/S(A/P)(LamberSpine)', '500', 'diagnostic', 20, 0, ''),
(102, 'X-RAY - D/L(A/P)(Thoracic)', 'X-RAY - D/L(A/P)(Thoracic)', '500', 'diagnostic', 20, 0, ''),
(103, 'X-RAY - Mandable(B/V)', 'X-RAY - Mandable(B/V)', '500', 'diagnostic', 20, 0, ''),
(104, 'X-RAY -C/S(AP)(Carvicai)', 'X-RAY -C/S(AP)(Carvicai)', '500', 'diagnostic', 20, 0, ''),
(105, 'X-RAY - PNS (AP)', 'X-RAY - PNS (AP)', '350', 'diagnostic', 20, 0, ''),
(106, 'ESR', 'Patho Test', '150', 'diagnostic', 30, 0, ''),
(107, 'FBS CUS', 'Pathological test', '160', 'diagnostic', 30, 0, ''),
(108, 'Hb%', 'Pathological test', '100', 'diagnostic', 30, 0, ''),
(109, 'Physio-Therapy', 'Therapy', '1000', '', 0, 0, ''),
(114, '2HABF', 'Pathological test', '100', 'diagnostic', 30, 0, ''),
(113, 'FBS', 'Pathological test', '100', 'diagnostic', 30, 0, ''),
(115, 'S. TSH', 'Pathological test', '400', 'diagnostic', 30, 0, ''),
(116, 'S. T3', 'Pathological test', '400', 'diagnostic', 30, 0, ''),
(117, 'DC', 'Pathological test', '200', 'diagnostic', 30, 0, ''),
(118, 'TC', 'Pathological test', '200', 'diagnostic', 30, 0, ''),
(119, 'X-Ray CXR (Digital)', 'X-Ray', '500', 'diagnostic', 20, 0, ''),
(120, 'S. Uric acid', 'Pathological test', '250', 'diagnostic', 30, 0, ''),
(122, 'U.S.G OF L/A ', 'U.S.G', '400', 'diagnostic', 30, 0, ''),
(125, 'Rt knee joient b/v', 'X-Ray', '500', 'diagnostic', 20, 0, ''),
(126, 'eosinphil', 'Pathology Test', '100', 'diagnostic', 0, 0, ''),
(129, 'Category Name 2', 'mgjgjgjg', '100', 'diagnostic', 10, 0, '449'),
(130, 'Paracetamol', 'Category 1', '200', 'diagnostic', 1000, NULL, '453'),
(314, 'Subsequent  consultation GP (Co)', 'GP', '7500', 'diagnostic', 0, NULL, '416'),
(132, 'Subsequent Consultation GP (C)', 'GP ', '5500', 'others', 0, NULL, '416'),
(313, 'Initial consultation General Practitioner normal hours (C)', 'GP', '7500', 'diagnostic', 0, NULL, '416'),
(318, 'Obstetrics and gyna specialist ANTENATAL visit consultation (C)', 'SP', '14500', 'diagnostic', 0, NULL, '416'),
(136, 'SPECIALIST SUBSEQUENT CONSULTATION (C)', 'SP', '16000', 'others', 0, NULL, '416'),
(317, 'Specialist subsequent consultation (CO)', 'SP', '21000', 'diagnostic', 0, NULL, '416'),
(137, 'ANTENATAL VISIT CONSULTATION OBS/GYN (C)', 'OBS/GYN ANTENATAL VISIT CASH', '14500', 'others', 0, NULL, '416'),
(138, 'Administration of an injection( exclude cost of drug) (C)', 'PROCEDURE', '1500', 'others', 0, NULL, '416'),
(140, 'Cut down adult (C)', 'PROCEDURE', '15000', 'others', 0, NULL, '416'),
(141, 'Cut down child (C)', 'PROCEDURE', '15000', 'others', 0, NULL, '416'),
(142, 'ECG Rest (C)', 'PROCEDURE', '15000', 'others', 0, NULL, '416'),
(143, 'Enema (C)', 'PROCEDURE', '12012', 'others', 0, NULL, '416'),
(144, 'Foreign body removal (C)', 'PROCEDURE', '15000', 'others', 0, NULL, '416'),
(145, 'Nebulization procedure (without medicine)  (C)', 'PROCEDURE', '6000', 'others', 0, NULL, '416'),
(146, 'Stich removal (C)', 'PROCEDURE', '8000', 'others', 0, NULL, '416'),
(330, 'Syringing of ear (Co)', 'PROCEDURE', '15288', 'diagnostic', 0, NULL, '416'),
(148, 'Syringing of ear (C)', 'PROCEDURE', '11760', 'others', 0, NULL, '416'),
(149, 'per vaginal examination (C)', 'PROCEDURE', '4000', 'others', 0, NULL, '416'),
(150, 'Burn Dressing - Minor (C)', 'PROCEDURE', '9500', 'others', 0, NULL, '416'),
(151, 'Burn Dressing Major (C)', 'PROCEDURE', '25000', 'others', 0, NULL, '416'),
(152, 'Suturing - 1 to 4 sutures (C)', 'PROCEDURE', '11000', 'others', 0, NULL, '416'),
(153, 'Suturing - 5 to 10 sutures (C)', 'PROCEDURE', '19000', 'others', 0, NULL, '416'),
(154, 'Suturing - 11 to 15 sutures (C)', 'PROCEDURE', '30000', 'others', 0, NULL, '416'),
(155, 'Suturing - 16 to 20 sutures (C)', 'PROCEDURE', '35000', 'others', 0, NULL, '416'),
(156, 'Suturing - 21 to 30 sutures (C)', 'PROCEDURE', '55000', 'others', 0, NULL, '416'),
(157, 'Debriment/Repair of wound-major (C)', 'PROCEDURE', '25000', 'others', 0, NULL, '416'),
(158, 'Debriment/ of wound-minor (C)', 'PROCEDURE', '18000', 'others', 0, NULL, '416'),
(159, 'Deep Laceration wound/limited muscle damage (C)', 'PROCEDURE', '30000', 'others', 0, NULL, '416'),
(160, 'Deep Laceration wound/extensive muscle damage (C)', 'PROCEDURE', '75000', 'others', 0, NULL, '416'),
(161, 'I & D (Incision & Drainage) - major (C)', 'PROCEDURE', '38000', 'others', 0, NULL, '416'),
(162, 'I & D (Incision & Drainage) - minor (C)', 'PROCEDURE', '17000', 'others', 0, NULL, '416'),
(163, 'Stitching intermediate wound(s) (C)', 'PROCEDURE', '16000', 'others', 0, NULL, '416'),
(348, 'Stitching major wound(s)  (Co)', 'PROCEDURE', '46800', 'diagnostic', 0, NULL, '416'),
(165, 'Stitching major wound(s) (C)', 'PROCEDURE', '36000', 'others', 0, NULL, '416'),
(166, 'Toe strapping (C)', 'PROCEDURE', '3650', 'others', 0, NULL, '416'),
(167, 'Stabilisation of avulsed nail with needle (C)', 'PROCEDURE', '9700', 'others', 0, NULL, '416'),
(168, 'Steam inhalation with tincters (C)', 'PROCEDURE', '3495', 'others', 0, NULL, '416'),
(169, 'Stocknet each meter (C)', 'PROCEDURE', '2400', 'others', 0, NULL, '416'),
(170, 'Removal of Foreign Body - L.A. (C)', 'PROCEDURE', '18300', 'others', 0, NULL, '416'),
(171, 'Wound Dressing Major (C)', 'PROCEDURE', '15000', 'others', 0, NULL, '416'),
(172, 'Foley Catheterization (C)', 'PROCEDURE', '12000', 'others', 0, NULL, '416'),
(173, 'Cardiopulmonay Resuscitation (CPR) (C)', 'PROCEDURE', '45000', 'others', 0, NULL, '416'),
(325, 'Foreign body removal (Co)', 'PROCEDURE', '19500', 'diagnostic', 0, NULL, '416'),
(175, 'Oxygen Inhalation O2 x 1 hour using O2 concentrator (C)', 'PROCEDURE', '5000', 'others', 0, NULL, '416'),
(176, 'POP application (C)', 'PROCEDURE', '6000', 'others', 0, NULL, '416'),
(177, 'POP Removal (C)', 'PROCEDURE', '5000', 'others', 0, NULL, '416'),
(178, 'Lumber Puncture (C)', 'PROCEDURE', '15000', 'others', 0, NULL, '416'),
(179, 'Lymphnode Biopsy Sample Collection Procedure (C)', 'PROCEDURE', '30000', 'others', 0, NULL, '416'),
(180, 'Catheter Removal (C)', 'PROCEDURE', '4000', 'others', 0, NULL, '416'),
(181, 'In Growth Nail Removal (C)', 'PROCEDURE', '20000', 'others', 0, NULL, '416'),
(182, 'Joint Aspiration (C)', 'PROCEDURE', '15000', 'others', 0, NULL, '416'),
(183, 'Blood Transfusion (C)', 'PROCEDURE', '20000', 'others', 0, NULL, '416'),
(184, 'Intraartecular Injection Adminstration exludes drug cost (C)', 'PROCEDURE', '15000', 'others', 0, NULL, '416'),
(185, 'Cannulation of IV cannula (C)', 'PROCEDURE', '1500', 'others', 0, NULL, '416'),
(186, 'Minor Joint reduction of dislocation (C)', 'PROCEDURE', '15000', 'others', 0, NULL, '416'),
(187, 'Major Joint Reduction of dislocation (C)', 'PROCEDURE', '32000', 'others', 0, NULL, '416'),
(188, 'Suctioning (C)', 'PROCEDURE', '15000', 'others', 0, NULL, '416'),
(189, 'Eye Irrigation with Saline (C)', 'PROCEDURE', '7000', 'others', 0, NULL, '416'),
(190, 'Nose / Nasal  Catheterization (C)', 'PROCEDURE', '14000', 'others', 0, NULL, '416'),
(191, 'Nose Packing / Nasal Packing (C)', 'PROCEDURE', '10500', 'others', 0, NULL, '416'),
(192, 'Skin Tag Excision  (C)', 'PROCEDURE', '26000', 'others', 0, NULL, '416'),
(193, ' BLEEDING TIME INR  (C)', 'LAB', '2310', 'diagnostic', 0, NULL, '416'),
(194, '  FREE T3 (C)', 'LAB', '18000', 'diagnostic', 0, NULL, '416'),
(195, ' ABO / Rh (blood group) (C)', 'LAB', '1800', 'diagnostic', 0, NULL, '416'),
(196, ' MRDT  ( Malaria Antigen ) R. Test (C)', 'LAB', '1800', 'diagnostic', 0, NULL, '416'),
(198, ' MPS ( Malaria Parasites Blood film ) (C)', 'LAB', '1800', 'diagnostic', 0, NULL, '416'),
(199, ' H. Pylori Antibody R. Test (Helicobacter Pylori) (C)', 'LAB', '5500', 'diagnostic', 0, NULL, '416'),
(200, ' H. Pylori Antigen R. Test (Helicobacter Pylori) (C)', 'LAB', '6000', 'diagnostic', 0, NULL, '416'),
(201, ' Syphillis R. Test (C)', 'LAB', '4000', 'diagnostic', 0, NULL, '416'),
(202, ' HIV 1 & 2 DETERMINE (C)', 'LAB', '1800', 'diagnostic', 0, NULL, '416'),
(203, ' Bilhazia R. Test (C)', 'LAB', '9850', 'diagnostic', 0, NULL, '416'),
(204, ' CRP Latex R. Test ( C- Reactive protien)  (C)', 'LAB', '3000', 'diagnostic', 0, NULL, '416'),
(205, ' Urine Pregnancy Test ( PTI ) hCG (C)', 'LAB', '1500', 'diagnostic', 0, NULL, '416'),
(206, ' RF ( Rheumatoid factor) (C)', 'PROCEDURE', '2000', 'diagnostic', 0, NULL, '416'),
(207, ' Rota / Adeno Virus R. Test (C)', 'PROCEDURE', '12500', 'diagnostic', 0, NULL, '416'),
(208, ' PSA Prostate Specific Antigen R. Test (C)', 'LAB', '5800', 'diagnostic', 0, NULL, '416'),
(209, ' Hepatitis B R. Test (C)', 'LAB', '5000', 'diagnostic', 0, NULL, '416'),
(210, ' Hepatitis C R. Test (C)', 'LAB', '5000', 'diagnostic', 0, NULL, '416'),
(211, ' Salmonella O & H R. Test (typhoid) (C)', 'LAB', '5000', 'diagnostic', 0, NULL, '416'),
(212, ' FBC / CBC FULL BLOOD COUNT (C)', 'LAB', '4000', 'diagnostic', 0, NULL, '416'),
(213, ' FBS (FASTING BLOOD SUGAR) (C)', 'LAB', '2500', 'diagnostic', 0, NULL, '416'),
(214, ' RBS (RANDOM BLOOD SUGAR) (C)', 'LAB', '2500', 'diagnostic', 0, NULL, '416'),
(215, ' Gram Stain (C)', 'LAB', '5500', 'diagnostic', 0, NULL, '416'),
(216, ' Erythrocyte Sedi.rate (ESR) (C)', 'LAB', '4000', 'diagnostic', 0, NULL, '416'),
(217, ' GLYCATED HEMOGLOBIN HbA1C (C)', 'LAB', '9850', 'diagnostic', 0, NULL, '416'),
(218, 'URINALYSIS URINANALYSIS ', 'LAB ', '3500', 'diagnostic', 0, NULL, '416'),
(219, ' LDL (Low Density Lipoprotein)  (C)', 'LAB', '12500', 'diagnostic', 0, NULL, '416'),
(220, ' HDL (High Density Lipoprotein) (C)', 'LAB ', '13000', 'diagnostic', 0, NULL, '416'),
(221, ' TOTAL CHOLESTEROL (T.CHOL) (C)', 'LAB ', '9000', 'diagnostic', 0, NULL, '416'),
(222, ' Triglycerides (TRIG) (C)', 'LAB ', '11000', 'diagnostic', 0, NULL, '416'),
(223, ' LIPASE (C)', 'LAB ', '13000', 'diagnostic', 0, NULL, '416'),
(224, ' AMALAYSE (C)', 'LAB ', '13000', 'diagnostic', 0, NULL, '416'),
(225, ' CREATININE (C)', 'LAB ', '13000', 'diagnostic', 0, NULL, '416'),
(226, ' UREA (C)', 'LAB ', '8000', 'diagnostic', 0, NULL, '416'),
(227, ' URIC ACID (C)', 'LAB ', '9000', 'diagnostic', 0, NULL, '416'),
(228, ' SODIUM (Na) (C)', 'LAB ', '8000', 'diagnostic', 0, NULL, '416'),
(229, ' POTASSIUM (K) (C)', 'LAB ', '8000', 'diagnostic', 0, NULL, '416'),
(230, ' CHLORIDE (Cl) (C)', 'LAB ', '8000', 'diagnostic', 0, NULL, '416'),
(231, ' CALCIUM (Ca) (C)', 'LAB', '8000', 'diagnostic', 0, NULL, '416'),
(232, ' ALT (Alkaline Transminase) (C)', 'LAB ', '8000', 'diagnostic', 0, NULL, '416'),
(233, ' ALP (Alkaline Phosphatase) (C)', 'LAB ', '8000', 'diagnostic', 0, NULL, '416'),
(234, ' AST (Aspartate Aminotransferase) (C)', 'LAB', '8000', 'diagnostic', 0, NULL, '416'),
(235, ' ALB (Albumin) (C)', 'LAB ', '8000', 'diagnostic', 0, NULL, '416'),
(236, ' Bilrubin Total (T.BIL) (C)', 'LAB ', '8000', 'diagnostic', 0, NULL, '416'),
(237, ' Bilrubin Direct (D.BIL) (C)', 'LAB ', '8000', 'diagnostic', 0, NULL, '416'),
(238, ' GGT (Gamma Glutamyl Transferase) (C)', 'LAB ', '10500', 'diagnostic', 0, NULL, '416'),
(239, ' LDH (Lactate Dehydrogenase) (C)', 'LAB ', '13000', 'diagnostic', 0, NULL, '416'),
(240, ' TOTAL PROTEIN (TP) (C)', 'LAB ', '13000', 'diagnostic', 0, NULL, '416'),
(241, ' Lipid Profile &#40;Serum&#41;: LDL, HDL, Chol(Total), Triglycerides, Lipase, Amalayse (C)', 'LAB', '45000', 'diagnostic', 0, NULL, '416'),
(242, ' Liver Function Tests (LFT) (C)', 'LAB ', '42000', 'diagnostic', 0, NULL, '416'),
(243, ' Electrolytes function test ( Sodium + Potassium, Cl ) (C)', 'LAB ', '22000', 'diagnostic', 0, NULL, '416'),
(244, ' Kidney Function tests (KFT) (C)', 'LAB', '49000', 'diagnostic', 0, NULL, '416'),
(430, ' URINANALYSIS (Co)', 'LAB', '4550', 'diagnostic', 0, NULL, '416'),
(245, 'SYRINGE 10ML', 'SUNDRIES', '600', 'others', 0, NULL, '416'),
(246, 'SYRINGE 20ML', 'SUNDRIES', '900', 'others', 0, NULL, '416'),
(247, 'SYRINGE 1ML', 'SUNDRIES', '450', 'diagnostic', 0, NULL, '416'),
(248, 'SYRINGE 2ML', 'SUNDRIES', '450', 'diagnostic', 0, NULL, '416'),
(249, 'SYRINGE 3ML ', 'SUNDRIES', '450', 'diagnostic', 0, NULL, '416'),
(250, 'SYRINGE 5ML', 'SUNDRIES', '450', 'diagnostic', 0, NULL, '416'),
(251, 'WATER FOR INJECTION', 'SUNDRIES', '200', 'diagnostic', 0, NULL, '416'),
(252, 'Infusion set adult (i.v Giving set ) ADULT GIVING SET', 'SUNDRIES', '9000', 'diagnostic', 0, NULL, '416'),
(253, 'Infusion set adult (i.v Giving set ) PEAD GIVING SET', 'SUNDRIES', '800', 'diagnostic', 0, NULL, '416'),
(254, 'IV CANNULA 16G', 'SUNDRIES', '750', 'diagnostic', 0, NULL, '416'),
(255, 'IV CANNULA 18G', 'SUNDRIES', '750', 'diagnostic', 0, NULL, '416'),
(256, 'IV CANNULA 20G', 'SUNDRIES', '750', 'diagnostic', 0, NULL, '416'),
(257, 'IV CANNULA 22G', 'SUNDRIES', '750', 'diagnostic', 0, NULL, '416'),
(258, 'IV CANNULA 24G', 'SUNDRIES', '750', 'diagnostic', 0, NULL, '416'),
(259, 'SURGICAL CAP ( THEATRE HEAD CAP)', 'SUNDRIES', '495', 'diagnostic', 0, NULL, '416'),
(260, 'FACE MASK ( DISPOSABLE / SURGICAL FACE MASK)', 'SUNDRIES', '250', 'diagnostic', 0, NULL, '416'),
(261, 'EXAMINATION GLOVES ( LATEX GLOVES) EACH ', 'SUNDRIES', '180', 'diagnostic', 0, NULL, '416'),
(262, 'ZINC OXIDE ADHESSIVE PLASTER 7.5CM X4M', 'SUNDRIES', '0', 'others', 0, NULL, '416'),
(263, 'ZINC OXIDE ADHESSIVE PLASTER 7.5CM PER 4cm', 'SUNDRIES', '7000', 'diagnostic', 0, NULL, '416'),
(264, 'COTTON WOOL 500GMS', 'SUNDRIES', '7000', 'diagnostic', 0, NULL, '416'),
(265, 'COTTON BALLS', 'SUNDRIES', '100', 'diagnostic', 0, NULL, '416'),
(266, 'POVIDONE IODENE SOLUTION PER 50 ml', 'SUNDRIES', '750', 'diagnostic', 0, NULL, '416'),
(267, 'POVIDONE IODENE SOLUTION 250ML', 'SUNDRIES', '4000', 'diagnostic', 0, NULL, '416'),
(268, 'SURGICAL BLADE SIZE #24', 'SUNDRIES', '300', 'diagnostic', 0, NULL, '416'),
(269, 'VICRYL SUTURES', 'SUNDRIES', '2700', 'diagnostic', 0, NULL, '416'),
(270, 'CHROMIC SUTURES 3/0', 'SUNDRIES', '2700', 'diagnostic', 0, NULL, '416'),
(271, 'CHLORHEXIDINE SOLUTION PER 50 ml', 'SANDRIES', '850', 'diagnostic', 0, NULL, '416'),
(272, 'METHYLATED SPIRIT PER 50 ml', 'SANDRIES', '495', 'diagnostic', 0, NULL, '416'),
(273, 'VASELINE / PARRAFIN GAUZE 10x10 cm each pc', 'SANDRIES', '230', 'diagnostic', 0, NULL, '416'),
(274, 'DISPOSABLE APRON', 'SANDRIES', '300', 'diagnostic', 0, NULL, '416'),
(275, 'SHOE COVER', 'SANDRIES', '300', 'diagnostic', 0, NULL, '416'),
(276, 'HEAVY DUTY APRON', 'SANDRIES', '6000', 'diagnostic', 0, NULL, '416'),
(277, 'FOLLEY CATHETER # 16', 'SANDRIES', '900', 'diagnostic', 0, NULL, '416'),
(278, 'FOLLEY CATHETER # 18', 'SANDRIES', '900', 'diagnostic', 0, NULL, '416'),
(279, '10x10cm GAUZE SWAB (4X4 GAUZE)', 'SANDRIES', '120', 'diagnostic', 0, NULL, '416'),
(280, 'SURGICAL GLOVES SIZE 7', 'SANDRIES', '995', 'diagnostic', 0, NULL, '416'),
(281, 'SURGICAL GLOVES SIZE 7.5', 'SANDRIES', '995', 'diagnostic', 0, NULL, '416'),
(282, 'SURGICAL GLOVES SIZE 8', 'SANDRIES', '995', 'diagnostic', 0, NULL, '416'),
(283, 'NEBULIZER MASK', 'SANDRIES', '1000', 'diagnostic', 0, NULL, '416'),
(284, 'O2 OXYGEN MASK', 'SANDRIES', '1000', 'diagnostic', 0, NULL, '416'),
(285, 'WOW GAUZE BANDAGE ROLL 15CM', 'SANDRIES', '8000', 'diagnostic', 0, NULL, '416'),
(286, 'Waterproof Plaster ( Bandaide)', 'SANDRIES', '120', 'diagnostic', 0, NULL, '416'),
(287, 'Urine BAGS', 'SANDRIES', '2000', 'diagnostic', 0, NULL, '416'),
(288, 'Catheter bags', 'SANDRIES', '2000', 'diagnostic', 0, NULL, '416'),
(289, 'DRESSING PACK', 'SANDRIES', '3500', 'diagnostic', 0, NULL, '416'),
(290, 'SUTURING PACK', 'SANDRIES', '3500', 'diagnostic', 0, NULL, '416'),
(291, ' Rota / Adeno Virus R. Test ', 'SANDRIES', '2900', 'diagnostic', 0, NULL, '416'),
(433, ' Cardiac Troponin I (cTnl) (Co)', 'LAB', '19493', 'diagnostic', 0, NULL, '416'),
(434, ' Creatine Kinase-MB (CK-MB) (Co)', 'LAB', '19493', 'diagnostic', 0, NULL, '416'),
(293, 'Urine BAGS', 'SANDRIES', '2000', 'diagnostic', 0, NULL, '416'),
(294, 'Catheter bags', 'SANDRIES', '2000', 'diagnostic', 0, NULL, '416'),
(295, 'DRESSING PACK', 'SANDRIES', '3500', 'diagnostic', 0, NULL, '416'),
(296, 'SUTURING PACK', 'SANDRIES', '3500', 'diagnostic', 0, NULL, '416'),
(297, 'Wound Dressing Minor (C)', 'PROCEDURE', '6000', 'others', 0, NULL, '416'),
(298, ' D-Dimer  (C)', 'LAB', ' 14995', 'diagnostic', 0, NULL, '416'),
(299, ' Cardiac Troponin I (cTnl) (C)', 'LAB', '14995', 'diagnostic', 0, NULL, '416'),
(300, ' Creatine Kinase-MB (CK-MB) (C)', 'LAB', '14995', 'diagnostic', 0, NULL, '416'),
(301, ' Prostate Specific Antigen (PSA) Hormonal (C)', 'LAB', '14995', 'diagnostic', 0, NULL, '416'),
(302, ' BETA HUMAN CHRONIC GONADOTROPIN (β-Hcg) (C)', 'LAB', '14995', 'diagnostic', 0, NULL, '416'),
(303, ' Lutenizing Hormone (LH) (C)', 'LAB', '14995', 'diagnostic', 0, NULL, '416'),
(304, ' Follicle Stimulating Hormone (FSH) (C)', 'LAB', '14995', 'diagnostic', 0, NULL, '416'),
(305, ' PROGESTERONE (Prog) (C)', 'LAB', '14995', 'diagnostic', 0, NULL, '416'),
(306, ' TRIIDOTHYRONINE (T3) (C)', 'LAB', '14995', 'diagnostic', 0, NULL, '416'),
(307, ' THYROXINE (T4) (C)', 'LAB', '14995', 'diagnostic', 0, NULL, '416'),
(308, ' THYROID STIMULATING HORMONE (TSH) (C)', 'LAB', '14995', 'diagnostic', 0, NULL, '416'),
(309, ' Thyroid Function test (T3,T4,TSH) (C)', 'LAB', '42500', 'diagnostic', 0, NULL, '416'),
(435, ' Prostate Specific Antigen (PSA) Hormonal (Co)', 'LAB', '19493', 'diagnostic', 0, NULL, '416'),
(436, ' BETA HUMAN CHRONIC GONADOTROPIN (β-Hcg) (Co)', 'LAB', '19493', 'diagnostic', 0, NULL, '416'),
(437, ' Lutenizing Hormone (LH) (Co)', 'LAB', '19493', 'diagnostic', 0, NULL, '416'),
(370, 'Intraartecular Injection Adminstration exludes drug cost (Co)', 'PROCEDURE', '18000', 'diagnostic', 0, NULL, '416'),
(311, 'PHARMACY -medicines/sundries', 'pharmacy', '1', 'others', 0, NULL, '416'),
(312, 'Initial consultation General Practitioner normal hours (Co)', 'GP', '9500', 'diagnostic', 0, NULL, '416'),
(315, 'Specialist initial consultation (Co)', 'SP', '24000', 'diagnostic', 0, NULL, '416'),
(316, 'Specialist initial consultation (C)', 'SP', '18000', 'diagnostic', 0, NULL, '416'),
(319, 'Obstetrics and gyna specialist ANTENATAL visit consultation (Co)', 'SP', '20000', 'diagnostic', 0, NULL, '416'),
(320, 'Administration of an injection( exclude cost of drug) (Co)', 'PROCEDURE', '2000', 'diagnostic', 0, NULL, '416'),
(321, 'Cut down adult (Co)', 'PROCEDURE', '19500', 'diagnostic', 0, NULL, '416'),
(322, 'Cut down child (Co)', 'PROCEDURE', '19500', 'diagnostic', 0, NULL, '416'),
(323, 'ECG Rest (Co)', 'PROCEDURE', '19500', 'diagnostic', 0, NULL, '416'),
(324, 'Enema (Co)', 'PROCEDURE', '15615', 'diagnostic', 0, NULL, '416'),
(326, 'Nebulization procedure (without medicine)  (Co)', 'PROCEDURE', '7800', 'diagnostic', 0, NULL, '416'),
(327, 'Stich removal (Co)', 'PROCEDURE', '10400', 'diagnostic', 0, NULL, '416'),
(328, 'Stitching of minor lacerations (Co)', 'PROCEDURE', '10400', 'diagnostic', 0, NULL, '416'),
(329, 'Stitching of minor lacerations (C)', 'PROCEDURE', '8000', 'diagnostic', 0, NULL, '416'),
(331, 'per vaginal examination (Co)', 'PROCEDURE', '5200', 'diagnostic', 0, NULL, '416'),
(332, 'Burn Dressing - Minor (Co)', 'PROCEDURE', '12350', 'diagnostic', 0, NULL, '416'),
(333, 'Burn Dressing Major (Co)', 'PROCEDURE', '32500', 'diagnostic', 0, NULL, '416'),
(334, 'Suturing - 1 to 4 sutures (Co)', 'PROCEDURE', '14300', 'diagnostic', 0, NULL, '416'),
(335, 'Suturing - 5 to 10 sutures (Co)', 'PROCEDURE', '22100', 'diagnostic', 0, NULL, '416'),
(336, 'Suturing - 11 to 15 sutures (Co)', 'PROCEDURE', '32500', 'diagnostic', 0, NULL, '416'),
(337, 'Suturing - 16 to 20 sutures (Co)', 'PROCEDURE', '45500', 'diagnostic', 0, NULL, '416'),
(338, 'Suturing - 21 to 30 sutures (Co)', 'PROCEDURE', '71500', 'diagnostic', 0, NULL, '416'),
(339, 'Debriment/Repair of wound-major (Co)', 'PROCEDURE', '32500', 'diagnostic', 0, NULL, '416'),
(340, 'Debriment/ of wound-minor (Co)', 'PROCEDURE', '23400', 'diagnostic', 0, NULL, '416'),
(341, 'Deep Laceration wound/limited muscle damage (Co)', 'PROCEDURE', '39000', 'diagnostic', 0, NULL, '416'),
(342, 'Deep Laceration wound/extensive muscle damage (Co)', 'PROCEDURE', '97500', 'diagnostic', 0, NULL, '416'),
(343, 'I & D (Incision & Drainage) - major (Co)', 'PROCEDURE', '49400', 'diagnostic', 0, NULL, '416'),
(344, 'I & D (Incision & Drainage) - minor (Co)', 'PROCEDURE', '22100', 'diagnostic', 0, NULL, '416'),
(345, 'Stitching intermediate wound(s) (Co)', 'PROCEDURE', '20800', 'diagnostic', 0, NULL, '416'),
(346, 'Stitching major wound(s) Amt per wound plus inter (Co)', 'PROCEDURE', '23400', 'diagnostic', 0, NULL, '416'),
(347, 'Stitching major wound(s) Amt per wound plus inter (C)', 'PROCEDURE', '18000', 'diagnostic', 0, NULL, '416'),
(349, 'Toe strapping (Co)', 'PROCEDURE', '4742', 'diagnostic', 0, NULL, '416'),
(350, 'Stabilisation of avulsed nail with needle (additional suture charges) (Co)', 'PROCEDURE', '12492', 'diagnostic', 0, NULL, '416'),
(351, 'Steam inhalation with tincters (Co)', 'PROCEDURE', '4542', 'diagnostic', 0, NULL, '416'),
(352, 'Stocknet each meter (Co)', 'PROCEDURE', '3066.34', 'diagnostic', 0, NULL, '416'),
(353, 'Removal of Foreign Body - L.A. (Co)', 'PROCEDURE', '23800', 'diagnostic', 0, NULL, '416'),
(354, 'Wound Dressing Major (Co)', 'PROCEDURE', '19500', 'diagnostic', 0, NULL, '416'),
(355, 'Foley Catheterization (Co)', 'PROCEDURE', '15600', 'diagnostic', 0, NULL, '416'),
(356, 'Cardiopulmonay Resuscitation (CPR) (Co)', 'PROCEDURE', '58500', 'diagnostic', 0, NULL, '416'),
(357, 'Enema (C)', 'PROCEDURE', '7500', 'diagnostic', 0, NULL, '416'),
(358, 'Enema (Co)', 'PROCEDURE', '9500', 'diagnostic', 0, NULL, '416'),
(359, 'Oxygen Inhalation O2 x 1 hour using O2 concentrator (Co)', 'PROCEDURE', '8000', 'diagnostic', 0, NULL, '416'),
(361, 'POP application (Co)', 'PROCEDURE', '8000', 'diagnostic', 0, NULL, '416'),
(363, 'POP Removal (Co)', 'PROCEDURE', '6800', 'diagnostic', 0, NULL, '416'),
(364, 'Lumber Puncture (Co)', 'PROCEDURE', '18000', 'diagnostic', 0, NULL, '416'),
(365, 'Lymphnode Biopsy Sample Collection Procedure (Co)', 'PROCEDURE', '4500', 'diagnostic', 0, NULL, '416'),
(366, 'Catheter Removal (Co)', 'PROCEDURE', '6000', 'diagnostic', 0, NULL, '416'),
(367, 'In Growth Nail Removal (Co)', 'PROCEDURE', '30000', 'diagnostic', 0, NULL, '416'),
(368, 'Joint Aspiration (Co)', 'PROCEDURE', '20000', 'diagnostic', 0, NULL, '416'),
(369, 'Blood Transfusion (Co)', 'PROCEDURE', '27000', 'diagnostic', 0, NULL, '416'),
(371, 'Cannulation of IV cannula (Co)', 'PROCEDURE', '2000', 'diagnostic', 0, NULL, '416'),
(372, 'Minor Joint reduction of dislocation (Co)', 'PROCEDURE', '18000', 'diagnostic', 0, NULL, '416'),
(373, 'Major Joint Reduction of dislocation (Co)', 'PROCEDURE', '38000', 'diagnostic', 0, NULL, '416'),
(374, 'Suctioning (Co)', 'PROCEDURE', '18000', 'diagnostic', 0, NULL, '416'),
(375, 'Eye Irrigation with Saline (Co)', 'PROCEDURE', '9200', 'diagnostic', 0, NULL, '416'),
(376, 'Nose / Nasal  Catheterization (Co)', 'PROCEDURE', '18200', 'diagnostic', 0, NULL, '416'),
(377, 'Nose Packing / Nasal Packing (Co)', 'PROCEDURE', '13650', 'diagnostic', 0, NULL, '416'),
(378, 'Skin Tag Excision  (Co)', 'PROCEDURE', '33800', 'diagnostic', 0, NULL, '416'),
(379, 'Wound Dressing Minor (Co)', 'PROCEDURE', '8000', 'diagnostic', 0, NULL, '416'),
(380, ' BLEEDING TIME INR  (Co)', 'LAB', '3000', 'diagnostic', 0, NULL, '416'),
(381, '  FREE T3 (Co)', 'LAB', '23400', 'diagnostic', 0, NULL, '416'),
(382, ' ABO / Rh (blood group) (Co)', 'LAB', '2500', 'diagnostic', 0, NULL, '416'),
(383, ' MRDT  ( Malaria Antigen ) R. Test (Co)', 'LAB', '2500', 'diagnostic', 0, NULL, '416'),
(385, ' H. Pylori Antibody R. Test (Helicobacter Pylori) (Co)', 'LAB', '7150', 'diagnostic', 0, NULL, '416'),
(384, ' MPS ( Malaria Parasites Blood film ) (Co)', 'LAB', '2500', 'diagnostic', 0, NULL, '416'),
(386, ' H. Pylori Antigen R. Test (Helicobacter Pylori) (Co)', 'LAB', '7800', 'diagnostic', 0, NULL, '416'),
(387, ' Syphillis R. Test (Co)', 'LAB', '5200', 'diagnostic', 0, NULL, '416'),
(388, ' HIV 1 & 2 DETERMINE (Co)', 'LAB', '2340', 'diagnostic', 0, NULL, '416'),
(389, ' Bilhazia R. Test (Co)', 'LAB', '12800', 'diagnostic', 0, NULL, '416'),
(390, ' CRP Latex R. Test ( C- Reactive protien)  (Co)', 'LAB', '3900', 'diagnostic', 0, NULL, '416'),
(391, ' Urine Pregnancy Test ( PTI ) hCG (Co)', 'LAB', '1950', 'diagnostic', 0, NULL, '416'),
(392, ' RF ( Rheumatoid factor) (Co)', 'LAB', '2600', 'diagnostic', 0, NULL, '416'),
(445, ' Abdominal Ultrasound (C)', 'RADIOLOGY', '31000', 'diagnostic', 0, NULL, '416'),
(393, ' Rota / Adeno Virus R. Test (Co)', 'LAB', '16250', 'diagnostic', 0, NULL, '416'),
(394, ' PSA Prostate Specific Antigen R. Test (Co)', 'LAB', '7540', 'diagnostic', 0, NULL, '416'),
(395, ' Hepatitis B R. Test (Co)', 'LAB', '6500', 'diagnostic', 0, NULL, '416'),
(396, ' Hepatitis C R. Test (Co)', 'LAB', '6500', 'diagnostic', 0, NULL, '416'),
(397, ' Salmonella O & H R. Test (typhoid) (Co)', 'LAB', '12805', 'diagnostic', 0, NULL, '416'),
(398, ' FBC / CBC FULL BLOOD COUNT (Co)', 'LAB', '5200', 'diagnostic', 0, NULL, '416'),
(399, ' FBS (FASTING BLOOD SUGAR) (Co)', 'LAB', '3250', 'diagnostic', 0, NULL, '416'),
(400, ' RBS (RANDOM BLOOD SUGAR) (Co)', 'LAB', '3250', 'diagnostic', 0, NULL, '416'),
(401, ' Gram Stain (Co)', 'LAB', '7150', 'diagnostic', 0, NULL, '416'),
(402, ' Erythrocyte Sedi.rate (ESR) (Co)', 'LAB', '5200', 'diagnostic', 0, NULL, '416'),
(403, ' GLYCATED HEMOGLOBIN HbA1C (Co)', 'LAB', '12805', 'diagnostic', 0, NULL, '416'),
(404, ' LDL (Low Density Lipoprotein)  (Co)', 'LAB', '16250', 'diagnostic', 0, NULL, '416'),
(405, ' HDL (High Density Lipoprotein) (Co)', 'LAB', '16900', 'diagnostic', 0, NULL, '416'),
(406, ' TOTAL CHOLESTEROL (T.CHOL) (Co)', 'LAB', '11700', 'diagnostic', 0, NULL, '416'),
(407, ' Triglycerides (TRIG) (Co)', 'LAB', '14300', 'diagnostic', 0, NULL, '416'),
(408, ' LIPASE (Co)', 'LAB', '16900', 'diagnostic', 0, NULL, '416'),
(409, ' AMALAYSE (Co)', 'LAB', '16900', 'diagnostic', 0, NULL, '416'),
(410, ' CREATININE (Co)', 'LAB', '16900', 'diagnostic', 0, NULL, '416'),
(411, ' UREA (Co)', 'LAB', '10400', 'diagnostic', 0, NULL, '416'),
(412, ' URIC ACID (Co)', 'LAB', '11700', 'diagnostic', 0, NULL, '416'),
(413, ' SODIUM (Na) (Co)', 'LAB', '10400', 'diagnostic', 0, NULL, '416'),
(414, ' POTASSIUM (K) (Co)', 'LAB', '10400', 'diagnostic', 0, NULL, '416'),
(415, ' CHLORIDE (Cl) (Co)', 'LAB', '10400', 'diagnostic', 0, NULL, '416'),
(416, ' CALCIUM (Ca) (Co)', 'LAB', '10400', 'diagnostic', 0, NULL, '416'),
(417, ' ALT (Alkaline Transminase (Co)', 'LAB', '10400', 'diagnostic', 0, NULL, '416'),
(418, ' ALP (Alkaline Phosphatase) (Co)', 'LAB', '10400', 'diagnostic', 0, NULL, '416'),
(419, ' AST (Aspartate Aminotransferase) (Co)', 'LAB', '10400', 'diagnostic', 0, NULL, '416'),
(420, ' ALB (Albumin) (Co)', 'LAB', '10400', 'diagnostic', 0, NULL, '416'),
(421, ' Bilrubin Total (T.BIL) (Co)', 'LAB', '10400', 'diagnostic', 0, NULL, '416'),
(422, ' Bilrubin Direct (D.BIL) (Co)', 'LAB', '10400', 'diagnostic', 0, NULL, '416'),
(423, ' GGT (Gamma Glutamyl Transferase) (Co)', 'LAB', '13650', 'diagnostic', 0, NULL, '416'),
(424, ' LDH (Lactate Dehydrogenase) (Co)', 'LAB', '16900', 'diagnostic', 0, NULL, '416'),
(425, ' TOTAL PROTEIN (TP) (Co)', 'LAB', '16900', 'diagnostic', 0, NULL, '416'),
(426, ' Lipid Profile &#40;Serum&#41;: LDL, HDL, Chol(Total), Triglycerides, Lipase, Amalayse  (Co)', 'LAB', '58500', 'diagnostic', 0, NULL, '416'),
(427, ' Liver Function Tests (LFT) (Co)', 'LAB', '54600', 'diagnostic', 0, NULL, '416'),
(428, ' Electrolytes function test ( Sodium + Potassium, Cl ) (Co)', 'LAB', '26000', 'diagnostic', 0, NULL, '416'),
(429, 'Kidney Function tests (KFT) (Co)', 'LAB', '63700', 'diagnostic', 0, NULL, '416'),
(431, ' C-Reactive Protein (CRP (hsCRP+CRP)) (Co)', 'LAB', '19493', 'diagnostic', 0, NULL, '416'),
(469, 'Knee/ankle (C)', 'RADIOLOGY', '11138.40', 'diagnostic', 0, NULL, '416'),
(432, ' D-Dimer  (Co)', 'LAB', '19493', 'diagnostic', 0, NULL, '416'),
(438, ' Follicle Stimulating Hormone (FSH) (Co)', 'LAB', '19493', 'diagnostic', 0, NULL, '416'),
(439, ' PROGESTERONE (Prog) (Co)', 'LAB', '19493', 'diagnostic', 0, NULL, '416'),
(440, ' TRIIDOTHYRONINE (T3) (Co)', 'LAB', '19493', 'diagnostic', 0, NULL, '416'),
(441, ' THYROXINE (T4) (Co)', 'LAB', '19493', 'diagnostic', 0, NULL, '416'),
(442, ' THYROID STIMULATING HORMONE (TSH) (Co)', 'LAB', '19493', 'diagnostic', 0, NULL, '416'),
(443, ' Thyroid Function test (T3,T4,TSH) (Co)', 'LAB', '57500', 'diagnostic', 0, NULL, '416'),
(444, ' C-Reactive Protein (CRP (hsCRP+CRP))  (C)', 'LAB', '14995', 'diagnostic', 0, NULL, '416'),
(446, ' Abdominal Ultrasound (Co)', 'RADIOLOGY', '51000', 'diagnostic', 0, NULL, '416'),
(447, ' Breast Ultrasound (C)', 'RADIOLOGY', '24000', 'diagnostic', 0, NULL, '416'),
(448, ' Breast Ultrasound (Co)', 'RADIOLOGY', '42588', 'diagnostic', 0, NULL, '416'),
(449, ' Cardiac Ultrasound/Heart echo (C)', 'RADIOLOGY', '34000', 'diagnostic', 0, NULL, '416'),
(450, ' Cardiac Ultrasound/Heart echo (Co)', 'RADIOLOGY', '51600', 'diagnostic', 0, NULL, '416'),
(451, ' Chest Ultrasound (C)', 'RADIOLOGY', '27000', 'diagnostic', 0, NULL, '416'),
(452, ' Chest Ultrasound (Co)', 'RADIOLOGY', '48000', 'diagnostic', 0, NULL, '416'),
(453, ' Obstetrical Scan (C)', 'RADIOLOGY', '24000', 'diagnostic', 0, NULL, '416'),
(454, ' Obstetrical Scan (Co)', 'RADIOLOGY', '39000', 'diagnostic', 0, NULL, '416'),
(455, ' Lower Limb USS  (including color Doppler function) (both Arteries & Veins) (C)', 'RADIOLOGY', '28000', 'diagnostic', 0, NULL, '416'),
(456, ' Lower Limb USS  (including color Doppler function) (both Arteries & Veins) (Co)', 'RADIOLOGY', '48000', 'diagnostic', 0, NULL, '416'),
(457, ' Upper Limb USS (including color Doppler fucntion) (both Arteries & Veins) (C)', 'RADIOLOGY', '28000', 'diagnostic', 0, NULL, '416'),
(458, ' Upper Limb USS (including color Doppler fucntion) (both Arteries & Veins) (Co)', 'RADIOLOGY', '48000', 'diagnostic', 0, NULL, '416'),
(459, ' Neck Ultrasound/Carotid (C)', 'RADIOLOGY', '34000', 'diagnostic', 0, NULL, '416'),
(460, ' Neck Ultrasound/Carotid (Co)', 'RADIOLOGY', '48000', 'diagnostic', 0, NULL, '416'),
(461, ' Prostate Ultrasound (C)', 'RADIOLOGY', '28000', 'diagnostic', 0, NULL, '416'),
(462, ' Prostate Ultrasound (Co)', 'RADIOLOGY', '49686', 'diagnostic', 0, NULL, '416'),
(463, ' Scrotum Ultrasound (C)', 'RADIOLOGY', '24000', 'diagnostic', 0, NULL, '416'),
(464, ' Scrotum Ultrasound (Co)', 'RADIOLOGY', '33000', 'diagnostic', 0, NULL, '416'),
(465, ' Ultrasound KUB (C)', 'RADIOLOGY', '32000', 'diagnostic', 0, NULL, '416'),
(466, ' Ultrasound KUB (Co)', 'RADIOLOGY', '54000', 'diagnostic', 0, NULL, '416'),
(467, ' Pelvis - Ultrasound (C)', 'RADIOLOGY', '37500', 'diagnostic', 0, NULL, '416'),
(468, ' Pelvis - Ultrasound (Co)', 'RADIOLOGY', '58900', 'diagnostic', 0, NULL, '416'),
(470, 'Knee/ankle (Co)', 'RADIOLOGY', '17400', 'diagnostic', 0, NULL, '416'),
(471, 'Clavicle (C)', 'RADIOLOGY', '13923', 'diagnostic', 0, NULL, '416'),
(472, 'Clavicle (Co)', 'RADIOLOGY', '21600', 'diagnostic', 0, NULL, '416'),
(473, 'Toe / Finger (C)', 'RADIOLOGY', '11138.40', 'diagnostic', 0, NULL, '416'),
(474, 'Toe / Finger (Co)', 'RADIOLOGY', '17400', 'diagnostic', 0, NULL, '416'),
(475, 'Forearm (C)', 'RADIOLOGY', '12066.66', 'diagnostic', 0, NULL, '416'),
(476, 'Forearm (Co)', 'RADIOLOGY', '17400', 'diagnostic', 0, NULL, '416'),
(477, 'Radius /Ulna (C)', 'RADIOLOGY', '14851.20', 'diagnostic', 0, NULL, '416'),
(478, 'Radius /Ulna (Co)', 'RADIOLOGY', '21600', 'diagnostic', 0, NULL, '416'),
(479, 'Hand/Foot (C)', 'RADIOLOGY', '11138.40', 'diagnostic', 0, NULL, '416'),
(480, 'Hand/Foot (Co)', 'RADIOLOGY', '17400', 'diagnostic', 0, NULL, '416'),
(481, 'Hip joint (C)', 'RADIOLOGY', '21348.60', 'diagnostic', 0, NULL, '416'),
(482, 'Hip joint (Co)', 'RADIOLOGY', '33000', 'diagnostic', 0, NULL, '416'),
(483, 'Upper / Femur (C)', 'RADIOLOGY', '17542.98', 'diagnostic', 0, NULL, '416'),
(484, 'Upper / Femur (Co)', 'RADIOLOGY', '28200', 'diagnostic', 0, NULL, '416'),
(485, 'Lower leg-Tibia/Fibula (C)', 'RADIOLOGY', '14851.20', 'diagnostic', 0, NULL, '416'),
(486, 'Lower leg-Tibia/Fibula (Co)', 'RADIOLOGY', '21600', 'diagnostic', 0, NULL, '416'),
(487, 'Pelvis - X-ray (C)', 'RADIOLOGY', '23205', 'diagnostic', 0, NULL, '416'),
(488, 'Pelvis - X-ray (Co)', 'RADIOLOGY', '33000', 'diagnostic', 0, NULL, '416'),
(489, 'Scapula (C)', 'RADIOLOGY', '14851.20', 'diagnostic', 0, NULL, '416'),
(490, 'Scapula (Co)', 'RADIOLOGY', '21600', 'diagnostic', 0, NULL, '416'),
(491, 'Shoulder (C)', 'RADIOLOGY', '12994.80', 'diagnostic', 0, NULL, '416'),
(492, 'Shoulder (Co)', 'RADIOLOGY', '20400', 'diagnostic', 0, NULL, '416'),
(493, 'Sternum (C)', 'RADIOLOGY', '15779.40', 'diagnostic', 0, NULL, '416'),
(494, 'Sternum (Co)', 'RADIOLOGY', '21600', 'diagnostic', 0, NULL, '416'),
(495, 'Upper arm-humerus (C)', 'RADIOLOGY', '17635.80', 'diagnostic', 0, NULL, '416'),
(496, 'Upper arm-humerus (Co)', 'RADIOLOGY', '27000', 'diagnostic', 0, NULL, '416'),
(497, 'Wrist/Elbow (C)', 'RADIOLOGY', '11602.50', 'diagnostic', 0, NULL, '416'),
(498, 'Wrist/Elbow (Co)', 'RADIOLOGY', '17400', 'diagnostic', 0, NULL, '416'),
(499, 'Skull (C)', 'RADIOLOGY', '20420.40', 'diagnostic', 0, NULL, '416'),
(500, 'Skull (Co)', 'RADIOLOGY', '35490', 'diagnostic', 0, NULL, '416'),
(501, 'Sinuses (routine) (C)', 'RADIOLOGY', '20420.40', 'diagnostic', 0, NULL, '416'),
(502, 'Sinuses (routine) (Co)', 'RADIOLOGY', '35490', 'diagnostic', 0, NULL, '416'),
(503, 'Mandible (C)', 'RADIOLOGY', '18564', 'diagnostic', 0, NULL, '416'),
(504, 'Mandible (Co)', 'RADIOLOGY', '33261.23', 'diagnostic', 0, NULL, '416'),
(505, 'Maxilla (C)', 'RADIOLOGY', '20420.40', 'diagnostic', 0, NULL, '416'),
(506, 'Maxilla (Co)', 'RADIOLOGY', '35490', 'diagnostic', 0, NULL, '416'),
(507, 'Naisone (C)', 'RADIOLOGY', '18099.90', 'diagnostic', 0, NULL, '416'),
(508, 'Naisone (Co)', 'RADIOLOGY', '31231.20', 'diagnostic', 0, NULL, '416'),
(509, 'Mastoids (routine) (C)', 'RADIOLOGY', '20420.40', 'diagnostic', 0, NULL, '416'),
(510, 'Mastoids (routine) (Co)', 'RADIOLOGY', '35490', 'diagnostic', 0, NULL, '416'),
(511, 'T M J (C)', 'RADIOLOGY', '20420.40', 'diagnostic', 0, NULL, '416'),
(512, 'T M J (Co)', 'RADIOLOGY', '35490', 'diagnostic', 0, NULL, '416'),
(513, 'Orbits (Routine) (C)', 'RADIOLOGY', '21348.60', 'diagnostic', 0, NULL, '416'),
(514, 'Orbits (Routine) (Co)', 'RADIOLOGY', '36909.60', 'diagnostic', 0, NULL, '416'),
(515, 'Optic Foramen (C)', 'RADIOLOGY', '21348.60', 'diagnostic', 0, NULL, '416'),
(516, 'Optic Foramen (Co)', 'RADIOLOGY', '36909.60', 'diagnostic', 0, NULL, '416'),
(517, 'Cervical spine (C)', 'RADIOLOGY', '22276.80', 'diagnostic', 0, NULL, '416'),
(518, 'Cervical spine (Co)', 'RADIOLOGY', '39748.80', 'diagnostic', 0, NULL, '416'),
(519, 'Thoracic spine (C)', 'RADIOLOGY', '22276.80', 'diagnostic', 0, NULL, '416'),
(520, 'Thoracic spine (Co)', 'RADIOLOGY', '39748.80', 'diagnostic', 0, NULL, '416'),
(521, 'Swimmers view (C)', 'RADIOLOGY', '20420.40', 'diagnostic', 0, NULL, '416'),
(522, 'Swimmers view (Co)', 'RADIOLOGY', '35490', 'diagnostic', 0, NULL, '416'),
(523, 'Thoraco Lumbar (C)', 'RADIOLOGY', '14851.20', 'diagnostic', 0, NULL, '416'),
(524, 'Thoraco Lumbar (Co)', 'RADIOLOGY', '25552.80', 'diagnostic', 0, NULL, '416'),
(525, 'Lumbar Spine (C)', 'RADIOLOGY', '22276.80', 'diagnostic', 0, NULL, '416'),
(526, 'Lumbar Spine (Co)', 'RADIOLOGY', '37619.40', 'diagnostic', 0, NULL, '416'),
(527, 'Lumbar Sacral (C)', 'RADIOLOGY', '22276.80', 'diagnostic', 0, NULL, '416'),
(528, 'Lumbar Sacral (Co)', 'RADIOLOGY', '37619.40', 'diagnostic', 0, NULL, '416'),
(529, 'Chest PA (C)', 'RADIOLOGY', '13923', 'diagnostic', 0, NULL, '416'),
(530, 'Chest PA (Co)', 'RADIOLOGY', '24133.20', 'diagnostic', 0, NULL, '416'),
(531, 'Chest PA& LAT (C)', 'RADIOLOGY', '22276.80', 'diagnostic', 0, NULL, '416'),
(532, 'Chest PA& LAT (Co)', 'RADIOLOGY', '39748.80', 'diagnostic', 0, NULL, '416'),
(533, 'Chest for Ribs (C)', 'RADIOLOGY', '18564', 'diagnostic', 0, NULL, '416'),
(534, 'Chest for Ribs (Co)', 'RADIOLOGY', '31373.16', 'diagnostic', 0, NULL, '416'),
(535, 'Acute Abdomen(s/e) (C)', 'RADIOLOGY', '37128', 'diagnostic', 0, NULL, '416'),
(536, 'Acute Abdomen(s/e) (Co)', 'RADIOLOGY', '61042.80', 'diagnostic', 0, NULL, '416'),
(537, 'Barium Enema (C)', 'RADIOLOGY', '241332', 'diagnostic', 0, NULL, '416'),
(538, 'Barium Enema (Co)', 'RADIOLOGY', '425880', 'diagnostic', 0, NULL, '416'),
(539, 'Barium Follow Through (C)', 'RADIOLOGY', '106743', 'diagnostic', 0, NULL, '416'),
(540, 'Barium Follow Through (Co)', 'RADIOLOGY', '173191.20', 'diagnostic', 0, NULL, '416'),
(541, 'Barium Meal (C)', 'RADIOLOGY', '106743', 'diagnostic', 0, NULL, '416'),
(542, 'Barium Meal (Co)', 'RADIOLOGY', '173191.20', 'diagnostic', 0, NULL, '416'),
(543, 'Barium Swallow (C)', 'RADIOLOGY', '106743', 'diagnostic', 0, NULL, '416'),
(544, 'Barium Swallow (Co)', 'RADIOLOGY', '173191.20', 'diagnostic', 0, NULL, '416'),
(545, 'Cystogram (C)', 'RADIOLOGY', '102102', 'diagnostic', 0, NULL, '416'),
(546, 'Cystogram (Co)', 'RADIOLOGY', '241332', 'diagnostic', 0, NULL, '416'),
(547, 'HSG (C)', 'RADIOLOGY', '102102', 'diagnostic', 0, NULL, '416'),
(548, 'HSG (Co)', 'RADIOLOGY', '241332', 'diagnostic', 0, NULL, '416'),
(549, 'I V P (C)', 'RADIOLOGY', '102102', 'diagnostic', 0, NULL, '416'),
(550, 'I V P (Co)', 'RADIOLOGY', '241332', 'diagnostic', 0, NULL, '416'),
(551, 'Myelogram (C)', 'RADIOLOGY', '120666', 'diagnostic', 0, NULL, '416'),
(552, 'Myelogram (Co)', 'RADIOLOGY', '212940', 'diagnostic', 0, NULL, '416'),
(553, 'Plain Abdomen (C)', 'RADIOLOGY', '17635.80', 'diagnostic', 0, NULL, '416'),
(554, 'Plain Abdomen (Co)', 'RADIOLOGY', '28392', 'diagnostic', 0, NULL, '416'),
(555, 'Urethrogrphy (C)', 'RADIOLOGY', '70543.20', 'diagnostic', 0, NULL, '416'),
(556, 'Urethrogrphy (Co)', 'RADIOLOGY', '127764', 'diagnostic', 0, NULL, '416');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`, `hospital_id`) VALUES
(9, '', 'pharmacist1', 'pharmacist@hms.com', 'Blantyre', '0993438181', '', '', '753', '416');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense`
--

CREATE TABLE `pharmacy_expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense_category`
--

CREATE TABLE `pharmacy_expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment`
--

CREATE TABLE `pharmacy_payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `vat` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `x_ray` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `flat_vat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `gross_total` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category_amount` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `category_name` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `amount_received` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `invoice` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy_payment`
--

INSERT INTO `pharmacy_payment` (`id`, `category`, `patient`, `doctor`, `date`, `amount`, `vat`, `x_ray`, `flat_vat`, `discount`, `flat_discount`, `gross_total`, `hospital_amount`, `doctor_amount`, `category_amount`, `category_name`, `amount_received`, `status`, `hospital_id`, `invoice`) VALUES
(1969, NULL, '0', NULL, '1652782255', '12', '0', NULL, NULL, '', '', '12', NULL, NULL, NULL, '2866*12*1*2323', '0', 'unpaid', '416', NULL),
(1970, NULL, '0', NULL, '1653901865', '60', '0', NULL, NULL, '', '', '60', NULL, NULL, NULL, '2866*12*5*2323', '0', 'unpaid', '416', NULL),
(1971, NULL, '0', NULL, '1653920006', '3300', '0', NULL, NULL, '', '', '3300', NULL, NULL, NULL, '2867*800*1*600,2866*25*100*2323', '0', 'unpaid', '416', NULL),
(1972, NULL, '0', NULL, '1654177298', '24050', '0', NULL, NULL, '', '', '24050', NULL, NULL, NULL, '2866*25*2*2323,2867*800*30*600', '0', 'unpaid', '416', NULL),
(1973, NULL, '0', NULL, '1654605034', '825', '0', NULL, NULL, '', '', '825', NULL, NULL, NULL, '2866*25*1*2323,2867*800*1*600', '0', 'unpaid', '416', NULL),
(1974, NULL, '0', NULL, '1654607101', '18500', '0', NULL, NULL, '', '', '18500', NULL, NULL, NULL, '2866*25*100*2323,2867*800*20*600', '0', 'unpaid', '416', NULL),
(1975, NULL, '0', NULL, '1655124072', '800', '0', NULL, NULL, '', '', '800', NULL, NULL, NULL, '2867*800*1*600', '0', 'unpaid', '416', NULL),
(1976, NULL, '0', NULL, '1655197554', '825', '0', NULL, NULL, '', '', '825', NULL, NULL, NULL, '2866*25*1*2323,2867*800*1*600', '0', 'unpaid', '416', NULL),
(1977, NULL, '0', NULL, '1655197817', '850', '0', NULL, NULL, '', '', '850', NULL, NULL, NULL, '2866*25*2*2323,2867*800*1*600', '0', 'unpaid', '416', NULL),
(1978, NULL, '0', NULL, '1655197925', '2400', '0', NULL, NULL, '', '', '2400', NULL, NULL, NULL, '2867*800*3*600', '0', 'unpaid', '416', NULL),
(1979, NULL, '0', NULL, '1655212924', '75', '0', NULL, NULL, '', '', '75', NULL, NULL, NULL, '2866*25*3*2323', '0', 'unpaid', '416', NULL),
(1980, NULL, '0', NULL, '1655213826', '850', '0', NULL, NULL, '', '', '850', NULL, NULL, NULL, '2866*25*2*2323,2867*800*1*600', '0', 'unpaid', '416', NULL),
(1981, NULL, '0', NULL, '1655214173', '3500', '0', NULL, NULL, '', '', '3500', NULL, NULL, NULL, '2868*700*5*0', '0', 'unpaid', '416', NULL),
(1982, NULL, '0', NULL, '1655281903', '150', '0', NULL, NULL, '', '', '150', NULL, NULL, NULL, '2869*30*5*4000', '0', 'unpaid', '416', NULL),
(1983, NULL, '0', NULL, '1655282032', '180', '0', NULL, NULL, '', '', '180', NULL, NULL, NULL, '2869*30*6*4000', '0', 'unpaid', '416', NULL),
(1984, NULL, '0', NULL, '1655449253', '30', '0', NULL, NULL, '', '', '30', NULL, NULL, NULL, '2869*30*1*4000', '0', 'unpaid', '416', NULL),
(1985, NULL, '0', NULL, '1655895202', '75', '0', NULL, NULL, '', '', '75', NULL, NULL, NULL, '2866*25*3*2323', '0', 'unpaid', '416', NULL),
(1986, NULL, '0', NULL, '1656318323', '10000', '0', NULL, NULL, '', '', '10000', NULL, NULL, NULL, '2870*1000*10*1400', '0', 'unpaid', '416', NULL),
(1987, NULL, '0', NULL, '1656318770', '1000', '0', NULL, NULL, '', '', '1000', NULL, NULL, NULL, '2871*1000*1*1400', '0', 'unpaid', '416', NULL),
(1988, NULL, '0', NULL, '1657885225', '1600', '0', NULL, NULL, '', '', '1600', NULL, NULL, NULL, '2886*40*20*10500,2915*800*1*2300', '0', 'unpaid', '416', NULL),
(1989, NULL, '0', NULL, '1657886595', '2320', '0', NULL, NULL, '', '', '2320', NULL, NULL, NULL, '2915*800*2*2300,2886*40*18*10500', '0', 'unpaid', '416', NULL),
(1990, NULL, '0', NULL, '1658143058', '1300', '0', NULL, NULL, '', '', '1300', NULL, NULL, NULL, '2965*1300*1*450', '0', 'unpaid', '416', NULL),
(1991, NULL, '0', NULL, '1658569699', '1950', '0', NULL, NULL, '', '', '1950', NULL, NULL, NULL, '2976*1950*1*700', '0', 'unpaid', '416', NULL),
(1992, NULL, '0', NULL, '1661693573', '1150', '0', NULL, NULL, '', '', '1150', NULL, NULL, NULL, '2871*1000*1*1400,2873*150*1*5000', '0', 'unpaid', '416', 0),
(1993, NULL, '0', NULL, '1661693774', '3250', '0', NULL, NULL, '', '', '3250', NULL, NULL, NULL, '2872*1000*1*1400,2871*1000*1*1400,2875*1250*1*1200', '0', 'unpaid', '416', 0),
(1994, NULL, '0', NULL, '1661696393', '20390', '0', NULL, NULL, '', '', '20390', NULL, NULL, NULL, '2880*1900*5*900,2884*110*99*32000', '0', 'unpaid', '416', 2071),
(1995, NULL, '0', NULL, '1661697558', '4610', '0', NULL, NULL, '', '', '4610', NULL, NULL, NULL, '2872*1000*1*1400,2873*150*2*5000,2877*1300*1*500,2882*1900*1*900,2884*110*1*32000', '0', 'unpaid', '416', 0),
(1996, NULL, '0', NULL, '1661698393', '1000', '0', NULL, NULL, '', '', '1000', NULL, NULL, NULL, '2871*1000*1*1400', '0', 'unpaid', '416', 0),
(1997, NULL, '0', NULL, '1661698398', '1000', '0', NULL, NULL, '', '', '1000', NULL, NULL, NULL, '2871*1000*1*1400', '0', 'unpaid', '416', 0),
(1998, NULL, '0', NULL, '1661698807', '23665', '0', NULL, NULL, '', '', '23665', NULL, NULL, NULL, '2872*1000*1*1400,2875*1250*1*1200,2881*1900*1*900,2874*25*1*3500,2876*30*1*6500,2877*1300*1*500,2878*20*1*12000,2879*5850*1*2800,2880*1900*1*900,2882*1900*1*900,2883*1850*1*  900,2884*110*1*32000,2885*1500*1*400,2886*40*1*10500,2887*1700*1*550,2888*1750*1*580,2889*1500*1*650,2890*40*1*7800', '0', 'unpaid', '416', 2072),
(1999, NULL, '0', NULL, '1667037300', '0', '0', NULL, NULL, '', '', '0', NULL, NULL, NULL, '2983*0*30*123', '0', 'unpaid', '416', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment_category`
--

CREATE TABLE `pharmacy_payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `c_price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_commission` int(100) DEFAULT NULL,
  `h_commission` int(100) DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `symptom` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `advice` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `dd` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `medicine` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `validity` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `note` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `date`, `patient`, `doctor`, `symptom`, `advice`, `state`, `dd`, `medicine`, `validity`, `note`, `hospital_id`) VALUES
(85, '1656288000', '57', '151', '<p>allerunv</p>\r\n', NULL, NULL, NULL, '2871***1 tab***2***7***afterfood', NULL, '<p>af</p>\r\n', '416'),
(87, '1657843200', '63', '152', '', NULL, NULL, NULL, '2878***1g***3 times a day***5 days***after food###2886***400mg***3 times a day***3 days***after food', NULL, '', '416'),
(88, '1667016000', '69', '153', '<p>iwwdwd</p>\n', NULL, NULL, NULL, '2874***100mg***1+2+3***7***after food', NULL, '', '416'),
(89, '1667188800', '70', '155', '', NULL, NULL, NULL, '2886***100mg***TDS***7 Days***After Food', NULL, '', '416'),
(90, '1668834000', '71', '153', '<p>Any </p>\n', NULL, NULL, NULL, '2874***200 mg***1 + 0 + 1***10***after food###2877***200 mg ***2 +2 + 1***12***every morning ', NULL, '<p>Any</p>\n', '416');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`, `hospital_id`) VALUES
(8, '', 'MADALITSO CHIMWEZI', 'MCHIMWEZI@hms.com', 'PO BOX 1889 BT', '0994040641', '', '756', '416'),
(9, NULL, 'JANE CHIKUMBE', 'JCHIKUMBE@hms.com', 'po box 1889', '0886372224', NULL, '762', '416'),
(10, NULL, 'Receptionist_Test', 'receptionist@hms.com', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', NULL, '797', '416');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(100) NOT NULL,
  `report_type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `other` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `package` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `language` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `name`, `address`, `email`, `phone`, `other`, `package`, `language`, `remarks`, `status`) VALUES
(12, 'HOSPITAL NAME', 'HOSPITAL ADDRESS', 'HOSPITAL EMAIL', 'HOSPITAL PHONE', NULL, '0', NULL, NULL, 'Approved'),
(13, 'HOSPITAL NAME 1', 'HOSPITAL ADDRESS 1', 'HOSPITAL EMAIL 1', 'HOSPITAL PHONE 1', NULL, '0', 'french', NULL, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(100) NOT NULL,
  `img_url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `img_url`, `title`, `description`) VALUES
(1, '', 'Hospital Software', 'Hospital Software'),
(2, '', 'Hospital Software', 'Hospital Software'),
(3, '', 'Hospital Software', 'Hospital Software'),
(4, '', 'Hospital Software', 'Hospital Software');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `system_vendor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `facebook_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `currency` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `language` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `vat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `login_title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `logo` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `invoice_logo` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `payment_gateway` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sms_gateway` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `codec_username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `codec_purchase_code` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_vendor`, `title`, `address`, `phone`, `email`, `facebook_id`, `currency`, `language`, `discount`, `vat`, `login_title`, `logo`, `invoice_logo`, `payment_gateway`, `sms_gateway`, `codec_username`, `codec_purchase_code`, `hospital_id`) VALUES
(3, 'CodinfoTech HMS', 'CodinfoTech HMS', 'Lilongwe Area 18b, Plot 18b/5/1077', '+265993438181', 'codinfotech@gmail.com', '', 'MWK', 'english', 'flat', '', '', 'uploads/istockphoto-638647058-612x6121.jpg', '', 'PayPal', '', '', '', '416'),
(4, 'Blueline Technology', 'Hospital Management System', 'Lilongwe', '0993438181', 'georgennd@gmail.com', '', 'MWK', 'english', 'flat', '', '', 'uploads/StarMedicalCentre-removebg-preview.png', '', '', '', '', '', 'superadmin'),
(33, 'Code Aristos | Hospital management System', 'Rajbari Clinic', 'Bangabandhu Avenue, Gulistan', '01718319283', 'rajbariclinic@gmail.com', NULL, '$', 'english', 'flat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '452'),
(34, 'Code Aristos | Hospital management System', 'Rajbari Clinic', 'CollegePara, Rajbari, Postal Code - 7700', '+0123456789', 'rajbariclinic@gmail.com', NULL, '$', 'english', 'flat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '453'),
(35, 'Code Aristos | Hospital management System', 'HOSPITAL NAME', 'HOSPITAL ADDRESS', 'HOSPITAL PHONE', 'HOSPITAL EMAIL', NULL, '$', 'english', 'flat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '454'),
(36, 'Code Aristos | Hospital management System', 'HOSPITAL NAME 1', 'HOSPITAL ADDRESS 1', 'HOSPITAL PHONE 1', 'HOSPITAL EMAIL 1', NULL, '$', 'french', 'flat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '455'),
(37, 'Code Aristos | Hospital management System', 'Rajbari Clinic', 'road-13,house-11,Nikunja-2,Dhaka-1229', '01819636104', 'rakib@gmail.com', NULL, '$', 'english', 'flat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '456');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `img_url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `text1` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `text2` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `text3` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `position` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `title`, `img_url`, `text1`, `text2`, `text3`, `position`, `status`) VALUES
(1, 'Slider 1', 'uploads/istockphoto-465075857-612x612.jpg', 'Register Your Hospital Today', 'Run Your System in a Secure Environment', 'Hospital', '2', 'Active'),
(2, 'Best Hospital management System', 'uploads/istockphoto-638647058-612x612.jpg', 'Best Hospital management System', 'Best Hospital management System', 'Best Hospital management System', '1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `message` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `recipient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `date`, `message`, `recipient`, `user`, `hospital_id`) VALUES
(61, '1560937512', '<p>gbgbgbttb</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(60, '1560937123', '<p>sdvvdfvfdvfdvd</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(59, '1560936880', '<p>grbbrbrgbrbbrtbtrb</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(58, '1560936853', '<p>vvfevef</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(56, '1560936481', '<p>MashaAllah</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(57, '1560936795', '<p>vdfvdfvfdvf</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(62, '1560937596', '<p>g  ffgbgfbgfbgfb bgrtbr grbrbrbtrb</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', ''),
(63, '1561153805', '<p>Hell Toma,<br />\nKi korso Tumi ?</p>\n', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801777024443', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `api_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sender` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `authkey` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `name`, `username`, `password`, `api_id`, `sender`, `authkey`, `user`, `hospital_id`) VALUES
(1, 'Clickatell', 'rizviplabon', '', '-cTCG_kARO-2YtwI5nyfMg==', '', '', '1', '416'),
(2, 'MSG91', 'rizviplabon', '', '-cTCG_kARO-2YtwI5nyfMg==', '', '54646456546456456456456', '1', '416'),
(55, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '452'),
(56, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '452'),
(57, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '453'),
(58, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '453'),
(59, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '454'),
(60, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '454'),
(61, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '455'),
(62, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '455'),
(63, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '456'),
(64, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '456');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `template` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `template_type` varchar(100) NOT NULL DEFAULT 'Default'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `name`, `template`, `user`, `x`, `hospital_id`, `template_type`) VALUES
(6, 'FULL BLOOD COUNT ( FBC / CBC)', '<p><strong>FULL BLOOD COUNT ( FBC / CBC)</strong></p>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n   <td> UNIT</td>\r\n   <td> REF. RANGES</td>\r\n  </tr>\r\n  <tr>\r\n   <td>WBC</td>\r\n   <td> </td>\r\n   <td>10^9/L</td>\r\n   <td>4.00 - 10.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEU#</td>\r\n   <td> </td>\r\n   <td>10^9/L</td>\r\n   <td>2.00 - 7.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LYM#</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.80 - 4.00</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MON#</td>\r\n   <td> </td>\r\n   <td>10^9/L</td>\r\n   <td>0.12 - 1.20</td>\r\n  </tr>\r\n  <tr>\r\n   <td>EOS#</td>\r\n   <td> </td>\r\n   <td>10^9/L</td>\r\n   <td>0.02 - 0.50</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BAS#</td>\r\n   <td> </td>\r\n   <td>10^9/L</td>\r\n   <td>0.00 -  010</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEU%</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.500 - 0.700</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LYM%</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.200 - 0.400</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MON%</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.030 - 0.120</td>\r\n  </tr>\r\n  <tr>\r\n   <td>EOS%</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.005 - 0. 050</td>\r\n  </tr>\r\n  <tr>\r\n   <td>BAS%</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.000 - 0.010</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RBC</td>\r\n   <td> </td>\r\n   <td>10^12/L</td>\r\n   <td>3.50 - 5.50</td>\r\n  </tr>\r\n  <tr>\r\n   <td>HGB</td>\r\n   <td> </td>\r\n   <td>g/L</td>\r\n   <td>11.0 16.0 </td>\r\n  </tr>\r\n  <tr>\r\n   <td>HCT</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.370 - 0.540</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCV</td>\r\n   <td> </td>\r\n   <td>f/L</td>\r\n   <td>80.0 - 100.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCH</td>\r\n   <td> </td>\r\n   <td>pg</td>\r\n   <td>27.0 - 34.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MCHC</td>\r\n   <td> </td>\r\n   <td>g/L</td>\r\n   <td>320 - 360</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RDW-CW</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>0.110 - 0.160</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RDW-SD</td>\r\n   <td> </td>\r\n   <td>f/L</td>\r\n   <td>35.0 - 56.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PLT</td>\r\n   <td> </td>\r\n   <td>10^9/L</td>\r\n   <td>100 - 400</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MPV</td>\r\n   <td> </td>\r\n   <td>f/L</td>\r\n   <td>7.0 - 11.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PDW</td>\r\n   <td> </td>\r\n   <td> </td>\r\n   <td>9.0 - 17.0</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PCT</td>\r\n   <td> </td>\r\n   <td>Ml/l</td>\r\n   <td>1.08 - 2.82</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', '', '416', 'lab'),
(13, 'STOOL ANALYSIS', '<p><strong>STOOL ANALYSIS </strong></p>\r\n\r\n <table cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n  </tr>\r\n  <tr>\r\n    <td >COLOUR</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >APPEARANCE</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >WBC</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >RBC</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >P+O</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >OTHERS</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(14, 'LIPID PROFILE', '<p><strong>LIPID PROFILE </strong></p>\r\n\r\n <table cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n    <td >UNIT</td>\r\n    <td >REF RANGES</td>\r\n  </tr>\r\n  <tr>\r\n    <td >LOW DENSITY LIPOPROTEIN (LDL)</td>\r\n    <td > </td>\r\n    <td >mg/dl</td>\r\n    <td >˂130</td>\r\n  </tr>\r\n  <tr>\r\n    <td >HIGH DENSITY LIPOPROTEIN (HDL)</td>\r\n    <td > </td>\r\n    <td >mg/dl</td>\r\n    <td >˃45</td>\r\n  </tr>\r\n  <tr>\r\n    <td >TOTAL CHOLESTEROL (T.CHOL)</td>\r\n    <td > </td>\r\n    <td >mg/dl</td>\r\n    <td >75-200</td>\r\n  </tr>\r\n  <tr>\r\n    <td >TRIGLYCERIDES (TRIG)</td>\r\n    <td > </td>\r\n    <td >mg/dl</td>\r\n    <td >˂150</td>\r\n  </tr>\r\n  <tr>\r\n    <td >LIPASE</td>\r\n    <td > </td>\r\n    <td >U/L</td>\r\n    <td >0-160</td>\r\n  </tr>\r\n  <tr>\r\n    <td >AMYLASE</td>\r\n    <td > </td>\r\n    <td >U/L</td>\r\n    <td >40-140</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(15, 'KIDNEY FUNCTION TEST (KFT)', '<p><strong>KIDNEY FUNCTION TEST (KFT) </strong></p>\r\n\r\n <table cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n    <td >UNIT</td>\r\n    <td >REF RANGES</td>\r\n  </tr>\r\n  <tr>\r\n    <td >CREATINE</td>\r\n    <td > </td>\r\n    <td >mg/dl</td>\r\n    <td >0.6 - 1.4</td>\r\n  </tr>\r\n  <tr>\r\n    <td >UREA</td>\r\n    <td > </td>\r\n    <td >mg/dl</td>\r\n    <td >6 - 24</td>\r\n  </tr>\r\n  <tr>\r\n    <td >URIC ACID</td>\r\n    <td > </td>\r\n    <td >mg/dl</td>\r\n    <td >3.5 - 7.2</td>\r\n  </tr>\r\n  <tr>\r\n    <td >SODIUM (NA)</td>\r\n    <td > </td>\r\n    <td >mmol/l</td>\r\n    <td >128 - 160</td>\r\n  </tr>\r\n  <tr>\r\n    <td >POTASSIUM (K)</td>\r\n    <td > </td>\r\n    <td >mmol/l</td>\r\n    <td >3.6 - 5.5</td>\r\n  </tr>\r\n  <tr>\r\n    <td >CHLORIDE (Cl)</td>\r\n    <td > </td>\r\n    <td >meq/l</td>\r\n    <td >97 - 108</td>\r\n  </tr>\r\n  <tr>\r\n    <td >CALCIUM</td>\r\n    <td > </td>\r\n    <td >mg/dl</td>\r\n    <td >8.6 - 10.3</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '754', NULL, '416', 'lab'),
(11, 'LIVER FUNCTION TEST (LFT)', '<p><strong>LIVER FUNCTION TEST (LFT)</strong></p>\r\n\r\n<table cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT </td>\r\n   <td>UNIT</td>\r\n   <td>REF RANGES</td>\r\n  </tr>\r\n  <tr>\r\n   <td>ALANINE TRANSMINASE (ALT)</td>\r\n   <td> </td>\r\n   <td>U/L</td>\r\n   <td>7 - 55</td>\r\n  </tr>\r\n  <tr>\r\n   <td>ALKALINE PHOSPHATASE</td>\r\n   <td> </td>\r\n   <td>IU/L</td>\r\n   <td>44 - 147</td>\r\n  </tr>\r\n  <tr>\r\n   <td>ASPARTATE AMINOTRANSFERASE (AST)</td>\r\n   <td> </td>\r\n   <td>U/L</td>\r\n   <td>˂46</td>\r\n  </tr>\r\n  <tr>\r\n   <td>ALBUMIN(ALB)</td>\r\n   <td> </td>\r\n   <td>g/dl</td>\r\n   <td>3.4 - 5.4</td>\r\n  </tr>\r\n  <tr>\r\n   <td>DIRECT BILIRUBIN (D.BIL)</td>\r\n   <td> </td>\r\n   <td>mg/dl</td>\r\n   <td>˂0.3</td>\r\n  </tr>\r\n  <tr>\r\n   <td>TOTAL BILIRUBIN (T.BIL)</td>\r\n   <td> </td>\r\n   <td>mg/dl</td>\r\n   <td>˂1.2</td>\r\n  </tr>\r\n  <tr>\r\n   <td>GAMMA GLUTAMYL TRANSFERASE (GGT)</td>\r\n   <td> </td>\r\n   <td>U/L</td>\r\n   <td>5 - 40</td>\r\n  </tr>\r\n  <tr>\r\n   <td>LACTATE DEHYDROGENASE (LDH)</td>\r\n   <td> </td>\r\n   <td>U/L</td>\r\n   <td>100 - 250</td>\r\n  </tr>\r\n  <tr>\r\n   <td>TOTAL PROTEIN (TP)</td>\r\n   <td> </td>\r\n   <td>mg/dl</td>\r\n   <td>6.2 - 8.2</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(12, 'URINALYSIS', '<p><strong>URINALYSIS</strong> </p>\r\n\r\n <table cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n  </tr>\r\n  <tr>\r\n    <td >COLOUR</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >APPEARANCE</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >UROBILINOGEN</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >BILIRIBIN</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >KETONES</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >BLOOD</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >PROTEIN</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >NITRATE</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >LEUKOCYTES</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >GLUCOSE</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >SPECIFIC GRAVITY</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >PH</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >ASCOBIC ACID</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >RBC</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >WBC</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >YEAST CELLS</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >CRYSTALS</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >EPITHELIAL CELLS</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >O and P</td>\r\n    <td > </td>\r\n  </tr>\r\n  <tr>\r\n    <td >OTHERS</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(34, 'RANDOM BLOOD SUGAR (RBS)', '<p><strong>RANDOM BLOOD SUGAR (RBS) </strong></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n  </tr>\r\n  <tr>\r\n   <td>RBS</td>\r\n   <td> </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '754', NULL, '416', 'lab'),
(16, 'HORMONES', '<p><strong>HORMONES </strong></p>\r\n\r\n <table cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >TEST</td>\r\n    <td >RESULTS</td>\r\n    <td >UNITS</td>\r\n    <td >REF RANGES</td>\r\n  </tr>\r\n  <tr>\r\n    <td >C-reactive protein (CRP (hsCRP+CRP))</td>\r\n    <td > </td>\r\n    <td >mg/L</td>\r\n    <td >0 - 10</td>\r\n  </tr>\r\n  <tr>\r\n    <td >D-DIMER</td>\r\n    <td > </td>\r\n    <td >mg/L</td>\r\n    <td >0 - 0.5</td>\r\n  </tr>\r\n  <tr>\r\n    <td >CARDIAC TROPONIN l (cTnl)</td>\r\n    <td > </td>\r\n    <td >mg/L</td>\r\n    <td >0 - 0.3</td>\r\n  </tr>\r\n  <tr>\r\n    <td >CREATINE KINASE-MB (CK-MB)</td>\r\n    <td > </td>\r\n    <td >ng/Ml</td>\r\n    <td >0 - 5</td>\r\n  </tr>\r\n  <tr>\r\n    <td >PROSTATE SPECIFIC ANTIGEN (PSA)</td>\r\n    <td > </td>\r\n    <td >ng/Ml</td>\r\n    <td >0 - 4</td>\r\n  </tr>\r\n  <tr>\r\n    <td >BETA HUMAN CHORIONIC GONADOTROPIN (β-Hcg)</td>\r\n    <td > </td>\r\n    <td >mlU/L</td>\r\n    <td >˂5</td>\r\n  </tr>\r\n  <tr>\r\n    <td >LUTEINIZING HORMONE (LH)</td>\r\n    <td > </td>\r\n    <td >mlU/L</td>\r\n    <td >F: 2.95 - 55.2</td>\r\n  </tr>\r\n  <tr>\r\n    <td > </td>\r\n    <td > </td>\r\n    <td > </td>\r\n    <td >M: 1.70 - 8.60</td>\r\n  </tr>\r\n  <tr>\r\n    <td >FOLLICLE STIMULATING HORMONE (FSH)</td>\r\n    <td > </td>\r\n    <td >mlU/L</td>\r\n    <td >F: 4.46 - 130.00</td>\r\n  </tr>\r\n  <tr>\r\n    <td > </td>\r\n    <td > </td>\r\n    <td > </td>\r\n    <td >M: 1.50 - 12.40</td>\r\n  </tr>\r\n  <tr>\r\n    <td >PROGESTERONE (Prog)</td>\r\n    <td > </td>\r\n    <td >ng/Ml</td>\r\n    <td >F: 13.0 - 38.0</td>\r\n  </tr>\r\n  <tr>\r\n    <td > </td>\r\n    <td > </td>\r\n    <td > </td>\r\n    <td >M: 0.2 - 1.5</td>\r\n  </tr>\r\n  <tr>\r\n    <td >TRIIODOTHYRONINE (T3)</td>\r\n    <td > </td>\r\n    <td >nmol/L</td>\r\n    <td >1.3 - 3.1</td>\r\n  </tr>\r\n  <tr>\r\n    <td >THYROXINE (T4)</td>\r\n    <td > </td>\r\n    <td >nmol/L</td>\r\n    <td >66 - 181</td>\r\n  </tr>\r\n  <tr>\r\n    <td >THYROID STIMULATING HORMONE (TSH)</td>\r\n    <td > </td>\r\n    <td >mlU/L</td>\r\n    <td >0.3 - 4.2</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '754', NULL, '416', 'lab'),
(17, 'MALARIA BLOOD FILM', '<p><strong>MALARIA BLOOD FILM </strong></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n  </tr>\r\n  <tr>\r\n   <td>MALARIA BF</td>\r\n   <td> </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(18, 'MALARIA RAPID DIAGNOSTIC TEST (MRDT)', '<p><strong>MALARIA RAPID DIAGNOSTIC TEST (MRDT)</strong></p>\r\n\r\n <table border=\"1\" cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n  </tr>\r\n  <tr>\r\n    <td >MRDT</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(19, 'ERYTHROCYTE SEDIMENTATION RATE (ESR)', '<p><strong>ERYTHROCYTE SEDIMENTATION RATE (ESR) </strong></p>\r\n\r\n <table border=\"1\" cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n  </tr>\r\n  <tr>\r\n    <td >ESR</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(20, 'CD4 COUNT', '<p><strong>CD4 COUNT </strong></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n  </tr>\r\n  <tr>\r\n   <td>CD4 COUNT</td>\r\n   <td> </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '754', NULL, '416', 'lab'),
(21, 'C-reactive Protein (CRP)', '<p><strong>C-reactive Protein (CRP)</strong></p>\r\n\r\n <table border=\"1\" cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n  </tr>\r\n  <tr>\r\n    <td >CRP</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(22, 'HUMAN CHORIONIC GONADOTROPIN (HCG)', '<p><strong>PREGNANCY TEST </strong> </p>\r\n\r\n <table border=\"1\" cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td ><strong>PARAMETER</strong></td>\r\n    <td ><strong>RESULT</strong></td>\r\n  </tr>\r\n  <tr>\r\n    <td >HCG</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(23, 'SYPHILIS TEST', '<p><strong>SYPHILIS TEST</strong></p>\r\n\r\n <table border=\"1\" cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n  </tr>\r\n  <tr>\r\n    <td >VDRL</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '754', NULL, '416', 'lab'),
(24, 'HEPATITIS B', '<p><strong>HEPATITIS B </strong></p>\r\n\r\n <table border=\"1\" cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n  </tr>\r\n  <tr>\r\n    <td >HEP B</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '754', NULL, '416', 'lab'),
(25, 'HUMUN IMMUNODEFICIENCY VIRUS (HIV)', '<p><strong>HUMAN IMMUNODEFICIENCY VIRUS (HIV)</strong></p>\r\n\r\n <table border=\"1\" cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n  </tr>\r\n  <tr>\r\n    <td >HIV</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '754', NULL, '416', 'lab'),
(26, 'RHEMATOID FACTOR (RF)', '<p><strong>RHEMATOID FACTOR (RF) </strong> </p>\r\n\r\n <table border=\"1\" cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n  </tr>\r\n  <tr>\r\n    <td >RF</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(27, 'BILHAZIA TEST', '<p><strong>BILHAZIA TEST </strong></p>\r\n\r\n<p> </p>\r\n\r\n <table border=\"1\" cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n  </tr>\r\n  <tr>\r\n    <td >BILHAZIA Ag</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '754', NULL, '416', 'lab'),
(28, 'ROTA/ADENO VIRUS RAPID TEST', '<p><strong>ROTA/ADENO VIRUS RAPID TEST </strong> </p>\r\n\r\n <table border=\"1\" cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n  </tr>\r\n  <tr>\r\n    <td >ROTA ADENO Ag</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(29, 'BLOOD GROUP', '<p><strong>BLOOD GROUP </strong></p>\r\n\r\n <table border=\"1\" cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td ><strong>PARAMETER</strong></td>\r\n    <td ><strong>RESULT</strong></td>\r\n  </tr>\r\n  <tr>\r\n    <td >B/GROUP</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(30, 'SALMONELLA RAPID TEST', '<p><strong>SALMONELLA RAPID TEST </strong></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n  </tr>\r\n  <tr>\r\n   <td>SALMONELLA</td>\r\n   <td> </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(31, 'PROSTATE SPECIFIC ANTIGEN (PSA)', '<p><strong>PROSTRATE SPECIFIC ANTIGEN (PSA)</strong></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td>PARAMETER</td>\r\n   <td>RESULT</td>\r\n  </tr>\r\n  <tr>\r\n   <td>PSA</td>\r\n   <td> </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<pre>\r\n </pre>\r\n\r\n<p> </p>\r\n', '754', NULL, '416', 'lab'),
(32, 'HELICOBACTER PYLORI', '<h3><strong>HELICOBACTER PYLORI </strong></h3>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n <tbody>\r\n  <tr>\r\n   <td><strong>PARAMETER</strong></td>\r\n   <td><strong>RESULT</strong></td>\r\n  </tr>\r\n  <tr>\r\n   <td>H.PYLORI</td>\r\n   <td> </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '754', NULL, '416', 'lab'),
(35, 'FAST BLOOD SUGAR', '<p><strong>FAST BLOOD SUGAR</strong></p>\r\n\r\n <table border=\"1\" cellspacing=\"0\" >\r\n <tbody>\r\n  <tr>\r\n    <td >PARAMETER</td>\r\n    <td >RESULT</td>\r\n  </tr>\r\n  <tr>\r\n    <td >FBS</td>\r\n    <td > </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '754', NULL, '416', 'lab'),
(36, 'ABD USS REPORT', '', '754', NULL, '416', 'lab'),
(37, 'radiology template 1', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n <tbody>\r\n  <tr>\r\n   <td>2e</td>\r\n   <td>12</td>\r\n  </tr>\r\n  <tr>\r\n   <td>12</td>\r\n   <td>12</td>\r\n  </tr>\r\n  <tr>\r\n   <td> </td>\r\n   <td> </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '2', NULL, '416', 'Rad');

-- --------------------------------------------------------

--
-- Table structure for table `time_schedule`
--

CREATE TABLE `time_schedule` (
  `id` int(100) NOT NULL,
  `doctor` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `weekday` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `e_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `duration` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_schedule`
--

INSERT INTO `time_schedule` (`id`, `doctor`, `weekday`, `s_time`, `e_time`, `s_time_key`, `duration`, `hospital_id`) VALUES
(97, '149', 'Sunday', '08:30 AM', '11:30 AM', '102', '3', '416');

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE `time_slot` (
  `id` int(100) NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `e_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `weekday` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_slot`
--

INSERT INTO `time_slot` (`id`, `doctor`, `s_time`, `e_time`, `weekday`, `s_time_key`, `hospital_id`) VALUES
(2129, '149', '08:30 AM', '08:45 AM', 'Sunday', '102', '416'),
(2130, '149', '08:45 AM', '09:00 AM', 'Sunday', '105', '416'),
(2131, '149', '09:00 AM', '09:15 AM', 'Sunday', '108', '416'),
(2132, '149', '09:15 AM', '09:30 AM', 'Sunday', '111', '416'),
(2133, '149', '09:30 AM', '09:45 AM', 'Sunday', '114', '416'),
(2134, '149', '09:45 AM', '10:00 AM', 'Sunday', '117', '416'),
(2135, '149', '10:00 AM', '10:15 AM', 'Sunday', '120', '416'),
(2136, '149', '10:15 AM', '10:30 AM', 'Sunday', '123', '416'),
(2137, '149', '10:30 AM', '10:45 AM', 'Sunday', '126', '416'),
(2138, '149', '10:45 AM', '11:00 AM', 'Sunday', '129', '416'),
(2139, '149', '11:00 AM', '11:15 AM', 'Sunday', '132', '416'),
(2140, '149', '11:15 AM', '11:30 AM', 'Sunday', '135', '416');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `hospital_ion_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `hospital_ion_id`) VALUES
(1, '127.0.0.1', 'superadmin', '$2y$08$1Rvlfb8r7JXT9SZtzbGYGuttL1p7G4ULzMtOOb4YkxCHuU383eEGK', '', 'superadmin@hms.com', '', 'eX0.Bq6nP57EuXX4hJkPHO973e7a4c25f1849d3a', 1511432365, 'zCeJpcj78CKqJ4sVxVbxcO', 1268889823, 1675920888, 1, 'Super', 'Admin', 'ADMIN', '0', ''),
(2, '127.0.0.1', 'CodinfoTech', '$2y$08$T58ZuY0RMxzQbD4/KK3T7efIjFSiMyMVrrZHDMI/CHorfJ7sTTJ6q', NULL, 'codinfotech@gmail.com', NULL, 'jqW1qNxuNi0a8V7VNG5Yfu4d30792046ccda3862', 1652912437, NULL, 1268889832, 1676893046, 1, 'admin', NULL, NULL, NULL, ''),
(750, '110.76.129.146', 'Mr Patient', '$2y$08$vTCe3Z4D1j7bVT49XXzoY.PiVP6yMFZ7hBudIbOfRE0vbEtaw5AOa', NULL, 'patient@hms.com', NULL, NULL, NULL, NULL, 1562482338, 1652781794, 1, NULL, NULL, NULL, NULL, '2'),
(751, '110.76.129.146', 'DR. S. A. KALENGO', '$2y$08$tU/exF673.etEFdnu0q6yeavwwQYfmAk7niw5JQB/I68vYLCmBaZu', NULL, 'SKALENGO@hms.com', NULL, NULL, NULL, NULL, 1562482389, 1655894904, 1, NULL, NULL, NULL, NULL, '2'),
(752, '110.76.129.146', 'Ms. Linda Likuwenu', '$2y$08$OABI8j3EuB5VUGo4D0LgOe5YZamoyIqI97rvSs6MWnMAjcfIjFsYW', NULL, 'LINDA@hms.com', NULL, NULL, NULL, NULL, 1562482422, 1657190439, 1, NULL, NULL, NULL, NULL, '2'),
(753, '110.76.129.146', 'pharmacist1', '$2y$08$o2DsNEDqUbruAVQKQvoSEu6UvgOa8TcvIF0nq2rCW.Qn.CPLro.g6', NULL, 'pharmacist@hms.com', NULL, NULL, NULL, NULL, 1562482455, 1675921007, 1, NULL, NULL, NULL, NULL, '2'),
(754, '110.76.129.146', 'FELISTUS NKONDE', '$2y$08$GStrPdFljMUl6ZPB2uh2hepfV6Welnw0SWbq33IyX6QN0icukOHya', NULL, 'FNKONDE@hms.com', NULL, NULL, NULL, NULL, 1562482499, 1657964984, 1, NULL, NULL, NULL, NULL, '2'),
(755, '110.76.129.146', 'Mr Accountant', '$2y$08$ysIjt93NUbQITf/jtbdAPOGisj2wrT07GCQUC0eJBbqrhZYijp9hq', NULL, 'accountant@hms.com', NULL, NULL, NULL, NULL, 1562482536, 1658859548, 1, NULL, NULL, NULL, NULL, '2'),
(756, '110.76.129.146', 'MADALITSO CHIMWEZI', '$2y$08$UcMAyOEWHVRj3sclMrRdsu/21.mUgFbm/.nnKrELNbWEUdV1Mm4.q', NULL, 'MCHIMWEZI@hms.com', NULL, NULL, NULL, NULL, 1562482561, 1658148798, 1, NULL, NULL, NULL, NULL, '2'),
(760, '::1', 'aa', '$2y$08$9dONiVBVUF4zdIyAlR9UPuNw4LELdU0BnBnaREsvx6PngOm71DKdK', NULL, 'aa-763-aa-768@example.com', NULL, NULL, NULL, NULL, 1652781440, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(762, '105.234.160.17', 'JANE CHIKUMBE', '$2y$08$1TZ6W6DdpbieNfaBafmvuOK0HHE4znFyhp1TyT1eCDrRs3SpTup4S', NULL, 'JCHIKUMBE@hms.com', NULL, NULL, NULL, NULL, 1653295766, 1658478625, 1, NULL, NULL, NULL, NULL, '2'),
(763, '105.234.160.17', 'test', '$2y$08$jmvVJYIZzm873IBbOHyVV./rF7JRhEBd3vNbsJ0o40/Y2i2JzIYYO', NULL, 'test@mail.com', NULL, NULL, NULL, NULL, 1653295973, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(764, '102.70.49.82', 'New patient', '$2y$08$L3keouwgZ1yEgedb7Er/VeEjhoc8tvWiIoKDgCwliKN.xfeGx8VZ.', NULL, 'georgennd@gmail.com', NULL, NULL, NULL, NULL, 1653406233, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(765, '105.234.164.30', 'TEST 1', '$2y$08$X0/Bwa5vUsPUWUl9A9dV5ehj1grML4BJ6UoKBTb/MADtqtu4.7gaW', NULL, 'TEST1@hms.com', NULL, NULL, NULL, NULL, 1653899706, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(766, '::1', 'madalitso MZENGEZA', '0', NULL, 'dsgfalkdsjnbcjd', NULL, NULL, NULL, NULL, 1654605389, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(767, '::1', 'madalitso MZENGEZA', '0', NULL, 'dsgfalkdsjnbcjd', NULL, NULL, NULL, NULL, 1654605389, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(768, '192.168.0.5', 'MADALITSO CHIMWEZI', '0', NULL, 'CDGKJNBKJXSANKJDN', NULL, NULL, NULL, NULL, 1654609165, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(770, '192.168.0.4', 'LINDA LIKUWENU', '0', NULL, 'likuwenulinda1986@gmail.com', NULL, NULL, NULL, NULL, 1655210641, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(773, '192.168.0.4', 'horace nyaka', '0', NULL, 'qqqqqq', NULL, NULL, NULL, NULL, 1655368914, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(774, '192.168.0.4', 'Vitumbiko Gondwe', '0', NULL, 'xxxxssssxxs', NULL, NULL, NULL, NULL, 1655369482, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(775, '192.168.0.4', 'Chimwala Will', '0', NULL, 'gsdsetrefdc', NULL, NULL, NULL, NULL, 1655371320, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(776, '::1', 'Arbaaz Yusuf Balwan', '0', NULL, 'arbaazbalwan@gmail.com', NULL, NULL, NULL, NULL, 1655378179, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(778, '192.168.0.5', 'Jane Nazombe', '0', NULL, 'Jane Nazombe@0886372224.com', NULL, NULL, NULL, NULL, 1655451977, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(779, '192.168.0.4', 'SAM THUNDE', '0', NULL, 'samthunde@gmail.com', NULL, NULL, NULL, NULL, 1655727352, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(780, '192.168.0.52', 'MADALITSO MZENGEZA', '$2y$08$I.6uxQ6YWg.GDp.fl8jAhuJx.xohIIBcVt1uSX3QcsBmcf7b2ywwG', NULL, 'MMZENGEZA@hms.com', NULL, NULL, NULL, NULL, 1655894504, 1658388327, 1, NULL, NULL, NULL, NULL, '2'),
(781, '192.168.0.5', 'DANIEL CHITSUKWA', '0', NULL, 'likuwenulinda1987@gmal.com', NULL, NULL, NULL, NULL, 1655974091, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(782, '192.168.0.5', 'RAFIQ DOSSANI', '0', NULL, 'RAFIQ DOSSANI@0992090272.com', NULL, NULL, NULL, NULL, 1655990735, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(783, '192.168.0.5', 'FATIMA FAZILIANI', '0', NULL, 'FATIMA FAZILIANI@0999132391.com', NULL, NULL, NULL, NULL, 1655991688, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(784, '::1', 'DR BENSON BANDA', '$2y$08$0341sJoad1CybWR5aoUBJeCKEFzWtNTq6PfMgQ6Dfl31vAcycpjs6', NULL, 'DRB.BANDA@hms.com', NULL, NULL, NULL, NULL, 1656325880, 1656673948, 1, NULL, NULL, NULL, NULL, '2'),
(786, '192.168.0.5', 'SURFRAZ YUSUF', '0', NULL, 'surfrazfegmail.com', NULL, NULL, NULL, NULL, 1656495981, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(788, '::1', 'MR LAB', '$2y$08$.PD9rRROsd5PvLxS1DEaDOGcyJ8DjI/lvdvpqeDz1/FJ.w07QNs0q', NULL, 'starmclab@hms.com', NULL, NULL, NULL, NULL, 1656672788, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(789, '192.168.0.52', 'nurse A', '$2y$08$RpJLrLsbc50TdBiLJJg1HOY3U9DS52M2PNWEcVKRVIRRwDGsM2w6e', NULL, 'nurse@hms.com', NULL, NULL, NULL, NULL, 1657013727, 1676892596, 1, NULL, NULL, NULL, NULL, '2'),
(790, '192.168.0.4', 'DOREEN GONDWE', '0', NULL, 'DOREEN GONDWE@0888669434.com', NULL, NULL, NULL, NULL, 1657530690, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(791, '192.168.0.4', 'MERCY NALIKUNGWI', '0', NULL, 'nalkungwimercy@yahoo.com', NULL, NULL, NULL, NULL, 1657616224, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(792, '192.168.0.52', 'DR ZAINAB MALUK', '$2y$08$qUpJBRouUU5N7S2ZG6xtXe8O3EqtJtp.b0/PArN8DPDrj49o.gz3e', NULL, 'drzainabm@hms.com', NULL, NULL, NULL, NULL, 1657700623, 1658496103, 1, NULL, NULL, NULL, NULL, '2'),
(793, '192.168.0.4', 'THOM HOSI NAZIMBIRI', '0', NULL, 'THOM HOSI NAZIMBIRI@0888881317.com', NULL, NULL, NULL, NULL, 1657878362, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(794, '::1', 'DR CHIKONDI MALUWA', '$2y$08$GlTOeXWOKsggJb7B26y9w.0PLk0GoDh0Sx8ONOEvVgp5n1xXN.bbe', NULL, 'doctor@hms.com', NULL, NULL, NULL, NULL, 1658133112, 1676891542, 1, NULL, NULL, NULL, NULL, '2'),
(795, '192.168.0.4', 'MAAZ KARIM BATATAWALA', '0', NULL, 'MAAZ09@gmail.com', NULL, NULL, NULL, NULL, 1658149690, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(796, '::1', 'DR CHANOZGA NYIRENDA', '$2y$08$opkwvYMnb99hFiNKt0swk.lr66sisJo644zQlLlIrcFGMKseBAD3S', NULL, 'doctor11@hms.com', NULL, NULL, NULL, NULL, 1658392349, 1658477627, 1, NULL, NULL, NULL, NULL, '2'),
(797, '::1', 'Receptionist_Test', '$2y$08$9nxDnyUOQzn3lE6r9S/kluQ/OqCmZKxdKCfE7X8MNEMgAHrfDuB86', NULL, 'receptionist@hms.com', NULL, NULL, NULL, NULL, 1658844024, 1668852593, 1, NULL, NULL, NULL, NULL, '2'),
(798, '::1', 'lab 1', '$2y$08$JmUjI/v.30dFoO47MMkd7.Ja50Lc1vGj3yQUzew68bfHWkLCv1DwO', NULL, 'laboratorist@hms.com', NULL, NULL, NULL, NULL, 1661422933, 1668853471, 1, NULL, NULL, NULL, NULL, '2'),
(799, '::1', 'New Radiologist', '$2y$08$o7bl9AQYiaKymZHYwbLt2u9a5U/zsNGh/En2NNAiUtogeeFI9wEXy', NULL, 'radiologist@hms.com', NULL, NULL, NULL, NULL, 1661683883, 1676892436, 1, NULL, NULL, NULL, NULL, '2'),
(800, '::1', '2radiologist', '$2y$08$1Je/AHEVkdicCvR91./.Wey89ljMfzFfZS86IUerSbarmMwWkIGhy', NULL, 'radiologist2@hms.com', NULL, NULL, NULL, NULL, 1661683993, 1683543930, 1, NULL, NULL, NULL, NULL, '2'),
(802, '::1', 'GEORGE NNSENA', '$2y$08$Tx5KJ0cdDEO7Xch9pZUnguSZZakGWKd1kxvWp1clVg9U13g5ucnfe', NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, 1666201466, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(806, '102.70.49.12', 'New Nurse', '$2y$08$YsGWjpjmNPH1kiP2gkgI1ulh7aA0fAKDTS3wG85zQ9PKozc4gy8Wq', NULL, 'new@new.com', NULL, NULL, NULL, NULL, 1667037514, NULL, 1, NULL, NULL, NULL, NULL, '2'),
(807, '41.77.8.67', 'DR PARTH PATEL', '$2y$08$bRALkC1.uS9zrsIje30q7O5D4ZBMHlhvqL5JoKKOhCjdeYI1wapqG', NULL, 'pp@hms.com', NULL, NULL, NULL, NULL, 1667201824, 1667202807, 1, NULL, NULL, NULL, NULL, '2'),
(809, '137.196.0.31', 'New Patient', '$2y$08$H//1URn5GJ9eU40rVpbYv.eb6MjbVVHT/z16X8SMLf6xfvDuOLapa', NULL, 'dwd@gm.com', NULL, NULL, NULL, NULL, 1668852729, NULL, 1, NULL, NULL, NULL, NULL, '2');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 11),
(752, 750, 5),
(753, 751, 4),
(754, 752, 6),
(755, 753, 7),
(756, 754, 8),
(757, 755, 3),
(758, 756, 10),
(762, 760, 5),
(764, 762, 10),
(765, 763, 5),
(766, 764, 5),
(767, 765, 5),
(768, 766, 5),
(769, 767, 5),
(770, 768, 5),
(772, 770, 5),
(775, 773, 5),
(776, 774, 5),
(777, 775, 5),
(778, 776, 5),
(780, 778, 5),
(781, 779, 5),
(782, 780, 6),
(783, 781, 5),
(784, 782, 5),
(785, 783, 5),
(786, 784, 4),
(788, 786, 5),
(790, 788, 8),
(791, 789, 6),
(792, 790, 5),
(793, 791, 5),
(794, 792, 4),
(795, 793, 5),
(796, 794, 4),
(797, 795, 5),
(798, 796, 4),
(799, 797, 10),
(800, 798, 8),
(801, 799, 8),
(802, 800, 8),
(804, 802, 5),
(808, 806, 6),
(809, 807, 4),
(811, 809, 5);

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` int(100) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `logo` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `emergency` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `support` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `currency` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `block_1_text_under_title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `service_block__text_under_title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_block__text_under_title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `facebook_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_username` varchar(100) NOT NULL,
  `google_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `youtube_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `skype_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `title`, `logo`, `address`, `phone`, `emergency`, `support`, `email`, `currency`, `block_1_text_under_title`, `service_block__text_under_title`, `doctor_block__text_under_title`, `facebook_id`, `twitter_id`, `twitter_username`, `google_id`, `youtube_id`, `skype_id`, `x`) VALUES
(1, 'Hospital Management System', 'uploads/ARTLogo1.png', 'Lilongwe ', '0993438181', '0993438181', '0993438181', 'georgennd@gmail.com', 'MWK', 'Best hospital software', 'Aenean nibh ante, lacinia non tincidunt nec, lobortis ut tellus. Sed in porta diam.', 'We work with forward thinking clients to create beautiful, honest and amazing things that bring positive results.', 'https://www.facebook.com/', 'https://www.twitter.com/', '', 'https://www.google.com/', 'https://www.youtube.com/', 'https://www.skype.com/', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alloted_bed`
--
ALTER TABLE `alloted_bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankb`
--
ALTER TABLE `bankb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_category`
--
ALTER TABLE `bed_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laboratorist`
--
ALTER TABLE `laboratorist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_category`
--
ALTER TABLE `lab_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_schemes`
--
ALTER TABLE `medical_schemes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ot_payment`
--
ALTER TABLE `ot_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_material`
--
ALTER TABLE `patient_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentGateway`
--
ALTER TABLE `paymentGateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_category`
--
ALTER TABLE `payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_schedule`
--
ALTER TABLE `time_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `alloted_bed`
--
ALTER TABLE `alloted_bed`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT for table `bankb`
--
ALTER TABLE `bankb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bed_category`
--
ALTER TABLE `bed_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1964;

--
-- AUTO_INCREMENT for table `laboratorist`
--
ALTER TABLE `laboratorist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lab_category`
--
ALTER TABLE `lab_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_history`
--
ALTER TABLE `medical_history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `medical_schemes`
--
ALTER TABLE `medical_schemes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2984;

--
-- AUTO_INCREMENT for table `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ot_payment`
--
ALTER TABLE `ot_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1665;

--
-- AUTO_INCREMENT for table `patient_material`
--
ALTER TABLE `patient_material`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2092;

--
-- AUTO_INCREMENT for table `paymentGateway`
--
ALTER TABLE `paymentGateway`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `payment_category`
--
ALTER TABLE `payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=557;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2000;

--
-- AUTO_INCREMENT for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `time_schedule`
--
ALTER TABLE `time_schedule`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `time_slot`
--
ALTER TABLE `time_slot`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2141;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=810;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=812;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
