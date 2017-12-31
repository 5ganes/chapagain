-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2017 at 07:17 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chapagain`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
`id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(20) NOT NULL,
  `ecozone` varchar(500) NOT NULL,
  `devregion` varchar(500) NOT NULL,
  `publish` varchar(3) NOT NULL,
  `weight` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`, `code`, `ecozone`, `devregion`, `publish`, `weight`) VALUES
(2, 'झापा', '001', 'तराइ', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 10),
(3, 'इलाम', '002', 'तराइ', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 20),
(4, 'पाँचथर', '003', 'पहाड', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 30),
(5, 'ताप्लेजुङ', '004', 'हिमाल', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 40),
(6, 'मोरङ ', '005', 'तराइ', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 50),
(7, 'सुनसरी', '006', 'तराइ', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 60),
(8, 'भोजपुर', '007', 'पहाड', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 70),
(9, 'धनकुटा', '008', 'पहाड', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 80),
(10, 'तेह्रथुम ', '009', 'पहाड', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 90),
(11, 'संखुवासभा', '010', 'हिमाल', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 100),
(12, 'सिराहा', '011', 'तराइ', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 110),
(13, 'उदयपुर', '012', 'पहाड', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 120),
(14, 'खोटाङ', '013', 'पहाड', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 130),
(15, 'ओखलढुङ्गा', '014', 'पहाड', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 140),
(16, 'सोलुखुम्बु', '015', 'हिमाल', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 150),
(17, 'धनुषा', '017', 'तराइ', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 170),
(28, 'सप्तरी', '016', 'तराइ', 'पूर्वाञ्चल विकास क्षेत्र', 'Yes', 160),
(19, 'महोत्तरी', '018', 'तराइ', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 180),
(20, 'सिन्धुली', '019', 'पहाड', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 190),
(30, 'काभ्रेपलाञ्चोक', '020', 'पहाड', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 200),
(22, 'रामेछाप', '021', 'पहाड', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 210),
(23, 'दोलखा', '022', 'हिमाल', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 220),
(24, 'भक्तपुर', '023', 'पहाड', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 230),
(25, 'धादिङ', '024', 'पहाड', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 240),
(27, 'काठमाडौं ', '025', 'पहाड', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 250),
(29, 'सर्लाही', '026', 'तराइ', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 260),
(31, 'ललितपुर', '027', 'पहाड', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 270),
(32, 'नुवाकोट', '028', 'पहाड', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 280),
(33, 'मकवानपुर', '029', 'पहाड', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 290),
(34, 'रसुवा', '030', 'हिमाल', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 300),
(35, 'सिन्धुपलाञ्चोक', '031', 'हिमाल', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 310),
(36, 'बारा', '032', 'तराइ', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 320),
(37, 'पर्सा', '033', 'तराइ', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 330),
(38, 'रौतहट', '034', 'तराइ', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 340),
(39, 'चितवन', '035', 'तराइ', 'मध्यमाञ्चल विकास क्षेत्र', 'Yes', 350),
(40, 'गोर्खा', '036', 'तराइ', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 360),
(41, 'कास्की', '037', 'पहाड', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 370),
(42, 'लमजुङ् ', '038', 'पहाड', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 380),
(43, 'स्याङ्जा', '039', 'पहाड', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 390),
(44, 'तनहुँ ', '040', 'पहाड', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 400),
(45, 'मनाङ', '041', 'हिमाल', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 410),
(46, 'कपिलवस्तु', '042', 'तराइ', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 420),
(47, 'नवलपरासी ', '043', 'तराइ', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 430),
(48, 'रूपन्देही', '044', 'तराइ', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 440),
(49, 'अर्घाखाँची ', '0045', 'पहाड', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 450),
(50, 'गुल्मी ', '046', 'पहाड', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 460),
(51, 'पाल्पा ', '047', 'पहाड', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 470),
(52, 'बाग्लुङ ', '048', 'पहाड', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 480),
(53, 'म्याग्दी ', '049', 'पहाड', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 490),
(54, 'पर्वत ', '050', 'पहाड', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 500),
(55, 'मुस्ताङ ', '051', 'हिमाल', 'पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 510),
(56, 'दाङ', '052', 'पहाड', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 520),
(57, 'प्युठान', '053', 'पहाड', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 530),
(58, 'रोल्पा', '054', 'पहाड', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 540),
(59, 'रुकुम ', '055', 'पहाड', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 550),
(60, 'सल्यान', '056', 'पहाड', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 560),
(61, 'बाँके ', '057', 'तराइ', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 570),
(62, 'बर्दिया ', '058', 'तराइ', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 580),
(63, 'सुर्खेत ', '059', 'पहाड', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 590),
(64, 'दैलेख ', '060', 'पहाड', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 600),
(65, 'जाजरकोट ', '061', 'पहाड', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 610),
(66, 'डोल्पा ', '062', 'हिमाल', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 620),
(67, 'हुम्ला ', '063', 'हिमाल', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 630),
(68, 'जुम्ला ', '064', 'हिमाल', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 640),
(69, 'कालीकोट ', '065', 'हिमाल', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 650),
(70, 'मुगु ', '066', 'हिमाल', 'मध्य-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 660),
(71, 'कैलाली ', '067', 'तराइ', 'सुदूर-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 670),
(72, 'अछाम ', '068', 'पहाड', 'सुदूर-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 680),
(73, 'डोटी ', '0069', 'पहाड', 'सुदूर-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 690),
(74, 'बझाङ ', '070', 'हिमाल', 'सुदूर-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 700),
(75, 'बाजुरा', '071', 'हिमाल', 'सुदूर-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 710),
(76, 'कञ्चनपुर ', '072', 'तराइ', 'सुदूर-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 720),
(77, 'डडेलधुरा ', '073', 'पहाड', 'सुदूर-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 730),
(78, 'वैतडी', '074', 'पहाड', 'सुदूर-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 740),
(79, 'दार्चुला ', '075', 'पहाड', 'सुदूर-पश्चिमाञ्चल विकास क्षेत्र', 'Yes', 750);

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE IF NOT EXISTS `family` (
`id` int(30) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `birthDate` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `maritalStatus` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gotraId` int(11) NOT NULL,
  `regionId` int(11) NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL,
  `publish` varchar(3) NOT NULL,
  `onDate` date NOT NULL,
  `weight` int(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`id`, `name`, `birthDate`, `email`, `phone`, `maritalStatus`, `gotraId`, `regionId`, `gender`, `image`, `publish`, `onDate`, `weight`) VALUES
(2, 'Test Name Male', '2015-10-21', 'test@gmail.com', '76776787', 'Married', 10, 6, 'Male', 'Job_Search-512.png', 'Yes', '2017-12-28', 10),
(3, 'Test Name Female', '2017-12-03', 'tsetfemale@gmail.com', '89989889', 'Married', 11, 7, 'Female', 'Leo.png', 'Yes', '2017-12-28', 20),
(4, 'First Child Male', '2017-12-27', 'ch1@gmail.com', '8978799', 'Unmarried', 10, 6, 'Male', 'lions_logo.png', 'Yes', '2017-12-28', 30);

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE IF NOT EXISTS `feedbacks` (
`id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `comment` text CHARACTER SET utf8,
  `onDate` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `address`, `phone`, `email`, `subject`, `comment`, `onDate`) VALUES
(8, 'Ganesh Khatri', 'Ktm', NULL, 'kh6ganesh@gmail.com', 'Nepal', 'Test feedback', '2017-03-09 16:06:28'),
(9, 'Ram bahadur sen', 'Kohalpur 2', NULL, 'ramkumar.sen1@gmail.com', 'Nepal', 'Respect ed sir,\r\n\r\nMy name is Rambahadur sen and I have a question for you sir and i hope, you will reply me...\r\nI want to start a small scall 250ml water supply business in my town so I want to know about the rules and regulation , does it allow to me for doing this business around in my town or not sir....??? And I heared , pollution and environment office not allow to do this type of business in Nepal so I want to the reason .. Why you are not allow to do this business ....???? \r\nHope you will response me as soon as possible \r\n Best regard\r\nYour citizen of nepal', '2017-03-12 09:26:58'),
(10, 'ganesh', 'ktm', '98787', 'kh6ganesh@gmail.com', 'tset subject', ' test comment', '2017-04-04 22:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `gotra`
--

CREATE TABLE IF NOT EXISTS `gotra` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `onDate` date NOT NULL,
  `publish` varchar(3) NOT NULL,
  `weight` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gotra`
--

INSERT INTO `gotra` (`id`, `name`, `onDate`, `publish`, `weight`) VALUES
(9, 'First gotra', '2017-12-26', 'Yes', 10),
(10, 'Second gotra', '2017-12-26', 'Yes', 20),
(11, 'Third gotra', '2017-12-26', 'Yes', 30);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT '',
  `nameen` varchar(255) NOT NULL,
  `urlname` varchar(250) CHARACTER SET latin1 NOT NULL,
  `type` varchar(200) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `parentId` int(11) NOT NULL DEFAULT '0',
  `shortcontents` text NOT NULL,
  `shortcontentsen` text NOT NULL,
  `contents` longtext NOT NULL,
  `contentsen` text NOT NULL,
  `linkType` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL DEFAULT '50',
  `hide` varchar(3) CHARACTER SET latin1 NOT NULL DEFAULT 'no',
  `onDate` date NOT NULL DEFAULT '0000-00-00',
  `image` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `display` varchar(10) CHARACTER SET latin1 NOT NULL,
  `featured` varchar(3) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `block` varchar(100) CHARACTER SET latin1 NOT NULL,
  `transportation` varchar(250) CHARACTER SET latin1 NOT NULL,
  `pageTitle` text CHARACTER SET latin1 NOT NULL,
  `pageKeyword` text CHARACTER SET latin1 NOT NULL,
  `activity` varchar(100) CHARACTER SET latin1 NOT NULL,
  `publish` varchar(3) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=833 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `nameen`, `urlname`, `type`, `parentId`, `shortcontents`, `shortcontentsen`, `contents`, `contentsen`, `linkType`, `weight`, `hide`, `onDate`, `image`, `display`, `featured`, `block`, `transportation`, `pageTitle`, `pageKeyword`, `activity`, `publish`) VALUES
(56, '&#2327;&#2371;&#2361; &#2346;&#2371;&#2359;&#2381;&#8205;&#2336;', 'Home', 'home', 'Header', 0, '', '', 'home', '', 'Link', 10, 'no', '2012-12-13', '', 'normal', 'No', '', '', '', '', '', ''),
(176, 'वातावरण विभागमा तपाइँहरु लाई स्वागत छ', 'Welcome to Department of Environment', 'welcome-to-department-of-environment', 'Other', 0, 'To implement the mandate given by Environment Protection Act and Environment Protection Regulation 1997, it was a long felt need to establish an organization which could materialize environmental compliance monitoring and develop a bridge between development and environment. This push factor resulted in establishment of Department of Environment.<br />\r\nThe Department of Environment has been assigned responsibility of improving the environmental quality; enforce the environment related act, regulation, legislations and standards, create awareness among people and localize the climate change adaptation and mitigation practices at local level. This is done by monitoring and auditing development projects and industries, writing suggestion for improvement, enforce the environment management plan, penalize the projects, development of climate smart villages and communities&#39; centric workshop and training programs.', 'To implement the mandate given by Environment Protection Act and Environment Protection Regulation 1997, it was a long felt need to establish an organization which could materialize environmental compliance monitoring and develop a bridge between development and environment. This push factor resulted in establishment of Department of Environment.<br />\r\nThe Department of Environment has been assigned responsibility of improving the environmental quality; enforce the environment related act, regulation, legislations and standards, create awareness among people and localize the climate change adaptation and mitigation practices at local level. This is done by monitoring and auditing development projects and industries, writing suggestion for improvement, enforce the environment management plan, penalize the projects, development of climate smart villages and communities&#39; centric workshop and training programs.', '<p style="text-align:justify">To implement the mandate given by Environment Protection Act and Environment Protection Regulation 1997, it was a long felt need to establish an organization which could materialize environmental compliance monitoring and develop a bridge between development and environment. This push factor resulted in establishment of Department of Environment.<br />\r\nThe Department of Environment has been assigned responsibility of improving the environmental quality; enforce the environment related act, regulation, legislations and standards, create awareness among people and localize the climate change adaptation and mitigation practices at local level. This is done by monitoring and auditing development projects and industries, writing suggestion for improvement, enforce the environment management plan, penalize the projects, development of climate smart villages and communities&#39; centric workshop and training programxs.</p>\r\n', '<p style="text-align:justify">To implement the mandate given by Environment Protection Act and Environment Protection Regulation 1997, it was a long felt need to establish an organization which could materialize environmental compliance monitoring and develop a bridge between development and environment. This push factor resulted in establishment of Department of Environment.<br />\r\nThe Department of Environment has been assigned responsibility of improving the environmental quality; enforce the environment related act, regulation, legislations and standards, create awareness among people and localize the climate change adaptation and mitigation practices at local level. This is done by monitoring and auditing development projects and industries, writing suggestion for improvement, enforce the environment management plan, penalize the projects, development of climate smart villages and communities&#39; centric workshop and training programxs.</p>\r\n', 'Contents Page', 20, 'no', '2013-11-26', 'sajjad.php', 'normal', 'No', '', '', '', '', '', ''),
(574, 'समाचार तथा सुचना', 'News & Notices', 'news-notices', 'Navigation', 0, '', '', '', '', 'List', 130, 'no', '2017-03-08', '', 'normal', 'No', '', '', '', '', '', ''),
(762, 'सङ्घीय मामिला तथा स्थानीय विकास मन्त्रालय ', 'Ministry of Federal Affairs and Local Development', 'mofald', 'Important_Links', 0, '', '', 'http://www.mofald.gov.np/', '', 'Link', 80, 'no', '2017-04-27', '', 'normal', 'No', '', '', '', '', '', ''),
(781, 'वातावरण संरसंरंरक्षण नियमावली, २०५४', 'Environment protection rules, 2054', 'environment-protection-rules-2054', 'Header', 773, '', '', 'Environment+protection+rules,+2054.pdf', '', 'File', 40, 'no', '2017-04-27', '', 'normal', 'No', '', '', '', '', '', ''),
(780, 'Journal of Environment Sciences Vol-2', '', 'journal-of-environment-sciences-vol-2', '', 765, 'Journal of Environment Sciences Vol-1', '', '', '', 'ListSub', 30, 'no', '2017-04-27', '', '', 'no', '', '', '', '', '', ''),
(745, 'प्रयोगशाला सामाग्री खरिद_शिलबन्दी दरभाउपत्र आव्हान सम्बन्धी सूचना_FY 2073.074', '', 'the-supply-installation-training-and-demonstration-operation-of-laboratory-instruments', '', 574, 'THE SUPPLY, INSTALLATION, TRAINING AND DEMONSTRATION OPERATION OF LABORATORY INSTRUMENTS', '', '', '', 'ListSub', 1, 'no', '2017-04-23', '', '', 'no', '', '', '', '', '', ''),
(580, 'Bulletion', 'Bulletion', 'bulletion', 'Navigation', 0, 'this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec', 'this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec', 'this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec', 'this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec&nbsp;this section is for bulletin sec', 'Contents Page', 140, 'no', '2017-03-08', '', 'normal', 'No', '', '', '', '', '', ''),
(581, 'ताजा समाचार', 'Hot News', 'hot-news', 'Other', 0, 'प्रयोगशाला सामाग्री खरिद_शिलबन्दी दरभाउपत्र आव्हान सम्बन्धी सूचना_FY 2073.074 / &nbsp;विश्व वातावरण दिवस २०७४ को उपलक्ष्यमा वातावरण विभागका महानिर्देशकको सन्देश / जलवायु अनुकुलित गाउँ कार्यक्रमको कार्य विधि दोस्रो संसोधन', 'प्रयोगशाला सामाग्री खरिद_शिलबन्दी दरभाउपत्र आव्हान सम्बन्धी सूचना_FY 2073.074 / &nbsp;विश्व वातावरण दिवस २०७४ को उपलक्ष्यमा वातावरण विभागका महानिर्देशकको सन्देश / जलवायु अनुकुलित गाउँ कार्यक्रमको कार्य विधि दोस्रो संसोधन', '<a href="http://www.doenv.gov.np/message-from-dg-for-world-environment-day">प्रयोगशाला सामाग्री खरिद_शिलबन्दी दरभाउपत्र आव्हान सम्बन्धी सूचना_FY 2073.074</a>&nbsp; &nbsp; &nbsp;<br />\r\n<a href="http://www.doenv.gov.np/message-from-dg-for-world-environment-day">विश्व वातावरण दिवस २०७४ को उपलक्ष्यमा वातावरण विभागका महानिर्देशकको सन्देश</a>&nbsp;<br />\r\n<a href="http://www.doenv.gov.np/csv-action-plan-review">जलवायु अनुकुलित गाउँ कार्यक्रमको कार्य विधि दोस्रो संसोधन</a>', 'प्रयोगशाला सामाग्री खरिद_शिलबन्दी दरभाउपत्र आव्हान सम्बन्धी सूचना_FY 2073.074', 'Contents Page', 150, 'no', '2017-03-08', '', 'normal', 'No', '', '', '', '', '', ''),
(582, 'Video', 'Video', 'video', 'Other', 0, '', '', 'https://www.youtube.com/embed/h5YCbLUcpLs', '', 'Link', 160, 'no', '2017-03-08', '', 'normal', 'No', '', '', '', '', '', ''),
(584, 'Our Publications', 'Our Publications', 'our-publications', 'Navigation', 0, 'this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;', 'this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;', 'this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;', 'this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;this section is for our pub&nbsp;', 'Normal Group', 150, 'no', '2017-03-08', '', 'normal', 'No', '', '', '', '', '', ''),
(585, 'Our Audios', 'Our Audios', 'our-audios', 'Navigation', 584, 'वातावरण विभागद्वारा निर्माण गरिएका अडियो जिंगलहरु', 'Audio jingle of department of environment', 'वातावरण विभागद्वारा निर्माण गरिएका अडियो जिंगलहरु', 'Audio jingle of department of environment', 'Normal Group', 10, 'no', '2017-03-08', 'audio.jpg', 'normal', 'No', '', '', '', '', '', ''),
(807, 'उद्योग सम्बन्धी अडियो जिंगल', 'Industry Related audio jingle', 'industry-audio', 'Navigation', 585, '', '', 'Industries.mp3', '', 'File', 30, 'no', '2017-05-08', '', 'normal', 'No', '', '', '', '', '', ''),
(808, 'स्वच्छ वातावरण सम्बन्धी अडियो जिंगल', 'Clean Environment Add', 'clean-env-audio', 'Navigation', 585, '', '', 'Jingle.mp3', '', 'File', 40, 'no', '2017-05-08', '', 'normal', 'No', '', '', '', '', '', ''),
(601, 'Our Videos', 'Manage Videos', 'our-videos', 'Navigation', 584, 'वातावरण विभागद्वारा निर्माण गरिएका भिडियोहरु', 'Video of Department of Environment', 'वातावरण विभागद्वारा निर्माण गरिएका भिडियोहरु', 'Video of Department of Environment', 'Normal Group', 20, 'no', '2017-03-09', 'video.jpg', 'normal', 'No', '', '', '', '', '', ''),
(809, 'नदी नला प्रदुषण सम्बन्धी अडियो जिंगल', 'River Pollution related audio', 'river-pollution', 'Navigation', 585, '', '', 'Rivers .mp3', '', 'File', 50, 'no', '2017-05-08', '', 'normal', 'No', '', '', '', '', '', ''),
(602, 'प्लाष्टिक झोला प्रतिबन्ध सम्बन्धी', 'Plastic Bag Ban', 'plastic-bag-ban', 'Navigation', 601, '', '', 'https://www.youtube.com/embed/vltZ5P8Ek04', '', 'Link', 10, 'no', '2017-03-09', '', 'normal', 'No', '', '', '', '', '', ''),
(603, 'स्वच्छ वातावरण सम्बन्धी', 'Clean Environment Add', 'clean-environment', 'Navigation', 601, '', '', 'https://www.youtube.com/embed/jZcKXTc0PXE', '', 'Link', 20, 'no', '2017-03-09', '', 'normal', 'No', '', '', '', '', '', ''),
(604, 'सार्वजनिक गाडिको धुवाँ मापन सम्बन्धी', 'Vesicle emission measurement  ', 'local-trans-smoke', 'Navigation', 601, '', '', 'https://www.youtube.com/embed/blhdvFnl8AA', '', 'Link', 30, 'no', '2017-03-09', '', 'normal', 'No', '', '', '', '', '', ''),
(605, 'वातावरण सम्बन्धी अन्तरवार्ता', 'Interview about DoEnv', 'interview-doenv', 'Navigation', 601, '', '', 'https://www.youtube.com/embed/elhRNoN1EIQ', '', 'Link', 40, 'no', '2017-03-09', '', 'normal', 'No', '', '', '', '', '', ''),
(338, 'हाम्रो बारेमा', 'About Us', 'about-us', 'Header', 0, 'Protection of human health through preserving our lovely planet is one of the primary obligations for all the states. Environment is a cross-cutting issue which covers the total of all surroundings of a living organism, including natural forces and other living things. In present days, the promotion of environmental friendly activities through awareness and implementation as well as enforcement to the concerned agencies has becoming widely realized interventions.', 'Protection of human health through preserving our lovely planet is one of the primary obligations for all the states. Environment is a cross-cutting issue which covers the total of all surroundings of a living organism, including natural forces and other living things. In present days, the promotion of environmental friendly activities through awareness and implementation as well as enforcement to the concerned agencies has becoming widely realized interventions.', '<strong>Background (About US)</strong>\r\n<div style="text-align: justify;">Protection of human health through preserving our lovely planet is one of the primary obligations for all the states. Environment is a cross-cutting issue which covers the total of all surroundings of a living organism, including natural forces and other living things. In present days, the promotion of environmental friendly activities through awareness and implementation as well as enforcement to the concerned agencies has becoming widely realized interventions.<br />\r\nEnvironmental degradation and global warming has becoming widespread concerns and Nepal is no exception. Elsewhere the climate change has becoming buzz word and its impact on sectoral issues mainly in agriculture, forest; water resources and threatening livelihood of the people are to be addressed largely. Both anthropogenic as well as natural factors have triggered these issues. In fact they are interrelated process to each other which should be taken into well consideration while planning the adaptation and mitigation programs. In addition to these issues, pollution related to air, water, soil, noise and municipal wastages have becoming primary environmental concerns in Nepal. Their apparent effects are largely realized from policy level to the implementation levels. In order to minimize the problems, both legal and implementation aspects should be made stronger within the framework of the Government Policy, Act, Regulations, Standards and Guidelines. The former issues can be addressed at the higher level, whereas the later issues through the implementation level by the Departments and organizations working in the grass root level. In view of this effect, a functional arm of the Ministry with the mandate for implementation, monitoring and enforcement of the environmental activities in Nepal was realized since long time. In addition to the Environment Protection Act (1997) and Environment Protection Rules (1997), the Interim Constitution of Nepal (2007, Article 16) has also emphasized on the right to live in a healthy environment.<br />\r\nTo outreach the concept of environmental management in grass root level, to resolve the problems created by climate change and due to anthropogenic factor, to coordinate between governmental, non-governmental and private organizations and to effective monitoring of environmental management, Government of Nepal established the Department of Environment (DoE) in 27 July 2012 (As of 12 Shrawan 2069 BS) under the Ministry of Science, Technology and Environment (MoSTE). As per the Secretary level decision in 5 March 2013, (As of 22 Phalgun 2069 BS) Department was formally opened in Information Technology (IT), Park, Panauti, Kavre District. It was a mean time adjustment until having its office in Kathmandu. As a result of the difficulties to cope the work load with growing numbers of stakeholders&#39; request, the Department finally moved to Kupandole, Lalitpur District by the Minister level decision on 28 October 2013 (As of 11 Kartik 2070 BS). Ever since of its establishment, it has shown its presence in the national and international level. It is widely believed that the Department will be an instrumental in dealing the environmental related issues and maintaining and enhancing the quality environment for the descent life and livelihood through promotional and enforcement related efforts.</div>\r\n<strong>Long-term vision (Vision)</strong>\r\n\r\n<ul>\r\n	<li>To upscale and out-scale the concept of environmental management in grass root level and to create hassle free environment.</li>\r\n	<li>To aid in achieving sustainable development by the wise use of natural resources and arriving at an optimal balance between environment and economy.</li>\r\n	<li>To contribute towards the sustainable society by developing the conducive environment against climate induced challenges and anthropogenic effects.</li>\r\n</ul>\r\n<strong>Objective (s):</strong>\r\n\r\n<ul>\r\n	<li>To implement, monitor and promote the environmental friendly activities and impose the enforcement activities.</li>\r\n	<li>To outreach the concept of environmental management in local level.</li>\r\n	<li>To create environment friendly human activities and development process based on the concept of green development.</li>\r\n	<li>To minimize urban and rural pollution so as to protect the environment.</li>\r\n	<li>To minimize, acclimatize and review the adverse impacts of climate change.</li>\r\n	<li>To follow the low carbon path.</li>\r\n	<li>To enhance the co-operation and collaboration with national, international and Inter-governmental organizations.</li>\r\n</ul>\r\n<strong>Basic Policies</strong>\r\n\r\n<ul>\r\n	<li>Institutional and human capacity development and strengthening of mechanism related to environment legislations.</li>\r\n	<li>Environment promotional activities to create public awareness and to disclose information.</li>\r\n	<li>Regulation and prevention of environmental pollution.</li>\r\n	<li>Effective implementation of compliance monitoring in environment administration.</li>\r\n	<li>Preservation of natural resources and biodiversity.</li>\r\n	<li>Capacities build up to face climate change impacts and environment related problems.</li>\r\n	<li>Emphasis on local level planning, program selection and implementation to conserve environment and prevent pollution.</li>\r\n</ul>\r\n<strong>Main Activities (Functions)</strong>\r\n\r\n<ul>\r\n	<li>Planning, implementing, monitoring and enforcement of the environmental activities within the frame work of the Environment Protection Act (1997) and Environment Protection Regulation (1997), standards, guidelines and Nepal Governments&#39; law and rule.</li>\r\n	<li>Promotion of the environmental activities in line of the low carbon path.</li>\r\n	<li>Compliance monitoring of the environmental related activities.</li>\r\n	<li>Conduct activities in harmony of the Stockholm convention, Basel convention, Rotterdam convention, Montreal protocol, Kyoto protocol and in line of the treaties and commitments as expressed by the Government.</li>\r\n	<li>Implement activities related to climate change adaptation in different sectors including agriculture, forestry and related fields.</li>\r\n	<li>Monitor environmental parameters in different sectors such as industrial corridors, hospitals, factories and similar agencies.</li>\r\n	<li>Monitoring hazardous chemical pesticides and recommendation for punishment to the defaulters.</li>\r\n	<li>Conduct Environmental Audit for ensuring effective implementation of Environment Management Plan of different sectors.</li>\r\n	<li>Participate in the Environment Impact Assessment (EIA) process with related to industries, factories, hydropower plants and related areas.</li>\r\n	<li>Monitor quality of the air, water, noise and soils by the enforcement of law.</li>\r\n	<li>Launching environment related promotional activities.</li>\r\n</ul>\r\n', '<strong>Background (About US)</strong>\r\n<div style="text-align: justify;">Protection of human health through preserving our lovely planet is one of the primary obligations for all the states. Environment is a cross-cutting issue which covers the total of all surroundings of a living organism, including natural forces and other living things. In present days, the promotion of environmental friendly activities through awareness and implementation as well as enforcement to the concerned agencies has becoming widely realized interventions.<br />\r\nEnvironmental degradation and global warming has becoming widespread concerns and Nepal is no exception. Elsewhere the climate change has becoming buzz word and its impact on sectoral issues mainly in agriculture, forest; water resources and threatening livelihood of the people are to be addressed largely. Both anthropogenic as well as natural factors have triggered these issues. In fact they are interrelated process to each other which should be taken into well consideration while planning the adaptation and mitigation programs. In addition to these issues, pollution related to air, water, soil, noise and municipal wastages have becoming primary environmental concerns in Nepal. Their apparent effects are largely realized from policy level to the implementation levels. In order to minimize the problems, both legal and implementation aspects should be made stronger within the framework of the Government Policy, Act, Regulations, Standards and Guidelines. The former issues can be addressed at the higher level, whereas the later issues through the implementation level by the Departments and organizations working in the grass root level. In view of this effect, a functional arm of the Ministry with the mandate for implementation, monitoring and enforcement of the environmental activities in Nepal was realized since long time. In addition to the Environment Protection Act (1997) and Environment Protection Rules (1997), the Interim Constitution of Nepal (2007, Article 16) has also emphasized on the right to live in a healthy environment.<br />\r\nTo outreach the concept of environmental management in grass root level, to resolve the problems created by climate change and due to anthropogenic factor, to coordinate between governmental, non-governmental and private organizations and to effective monitoring of environmental management, Government of Nepal established the Department of Environment (DoE) in 27 July 2012 (As of 12 Shrawan 2069 BS) under the Ministry of Science, Technology and Environment (MoSTE). As per the Secretary level decision in 5 March 2013, (As of 22 Phalgun 2069 BS) Department was formally opened in Information Technology (IT), Park, Panauti, Kavre District. It was a mean time adjustment until having its office in Kathmandu. As a result of the difficulties to cope the work load with growing numbers of stakeholders&#39; request, the Department finally moved to Kupandole, Lalitpur District by the Minister level decision on 28 October 2013 (As of 11 Kartik 2070 BS). Ever since of its establishment, it has shown its presence in the national and international level. It is widely believed that the Department will be an instrumental in dealing the environmental related issues and maintaining and enhancing the quality environment for the descent life and livelihood through promotional and enforcement related efforts.</div>\r\n<strong>Long-term vision (Vision)</strong>\r\n\r\n<ul>\r\n	<li>To upscale and out-scale the concept of environmental management in grass root level and to create hassle free environment.</li>\r\n	<li>To aid in achieving sustainable development by the wise use of natural resources and arriving at an optimal balance between environment and economy.</li>\r\n	<li>To contribute towards the sustainable society by developing the conducive environment against climate induced challenges and anthropogenic effects.</li>\r\n</ul>\r\n<strong>Objective (s):</strong>\r\n\r\n<ul>\r\n	<li>To implement, monitor and promote the environmental friendly activities and impose the enforcement activities.</li>\r\n	<li>To outreach the concept of environmental management in local level.</li>\r\n	<li>To create environment friendly human activities and development process based on the concept of green development.</li>\r\n	<li>To minimize urban and rural pollution so as to protect the environment.</li>\r\n	<li>To minimize, acclimatize and review the adverse impacts of climate change.</li>\r\n	<li>To follow the low carbon path.</li>\r\n	<li>To enhance the co-operation and collaboration with national, international and Inter-governmental organizations.</li>\r\n</ul>\r\n<strong>Basic Policies</strong>\r\n\r\n<ul>\r\n	<li>Institutional and human capacity development and strengthening of mechanism related to environment legislations.</li>\r\n	<li>Environment promotional activities to create public awareness and to disclose information.</li>\r\n	<li>Regulation and prevention of environmental pollution.</li>\r\n	<li>Effective implementation of compliance monitoring in environment administration.</li>\r\n	<li>Preservation of natural resources and biodiversity.</li>\r\n	<li>Capacities build up to face climate change impacts and environment related problems.</li>\r\n	<li>Emphasis on local level planning, program selection and implementation to conserve environment and prevent pollution.</li>\r\n</ul>\r\n<strong>Main Activities (Functions)</strong>\r\n\r\n<ul>\r\n	<li>Planning, implementing, monitoring and enforcement of the environmental activities within the frame work of the Environment Protection Act (1997) and Environment Protection Regulation (1997), standards, guidelines and Nepal Governments&#39; law and rule.</li>\r\n	<li>Promotion of the environmental activities in line of the low carbon path.</li>\r\n	<li>Compliance monitoring of the environmental related activities.</li>\r\n	<li>Conduct activities in harmony of the Stockholm convention, Basel convention, Rotterdam convention, Montreal protocol, Kyoto protocol and in line of the treaties and commitments as expressed by the Government.</li>\r\n	<li>Implement activities related to climate change adaptation in different sectors including agriculture, forestry and related fields.</li>\r\n	<li>Monitor environmental parameters in different sectors such as industrial corridors, hospitals, factories and similar agencies.</li>\r\n	<li>Monitoring hazardous chemical pesticides and recommendation for punishment to the defaulters.</li>\r\n	<li>Conduct Environmental Audit for ensuring effective implementation of Environment Management Plan of different sectors.</li>\r\n	<li>Participate in the Environment Impact Assessment (EIA) process with related to industries, factories, hydropower plants and related areas.</li>\r\n	<li>Monitor quality of the air, water, noise and soils by the enforcement of law.</li>\r\n	<li>Launching environment related promotional activities.</li>\r\n</ul>\r\n', 'Normal Group', 20, 'no', '2015-04-07', '', 'normal', 'No', '', '', '', '', '', ''),
(373, '&#2349;&#2367;&#2337;&#2367;&#2351;&#2379;', 'Official-Video', 'youtube', 'Other', 0, '', '', 'https://www.youtube.com/embed/sw0jlvkH9KA', '', 'Link', 140, 'no', '2016-06-15', '', 'normal', 'No', '', '', '', '', '', ''),
(274, 'महानिर्देशकको संदेश', 'Message from DG', 'message-from-dg', 'Other', 0, '<strong>दुर्गा प्रसाद दवाडी<br />\r\nमहानिर्देशक</strong>', '<strong>Durga Prasad Dawadi<br />\r\nDirector General</strong>', '<p style="text-align:justify">On the behalf of Department of Environment, I would like to welcome you all to our official website.<br />\r\n<br />\r\nEstablished with the motive of environment protection and sustainable development, the department has been constantly focusing on improving the environmental condition of the country. The department works under the Ministry of Population and Environment and is responsible for the implementation of environmental acts and regulations. It oversees the compliance of Environmental Protection Act (EPA), 2053, Environment Protection Regulation (EPR), 2054 and pollution control standard as promulgated by the Government of Nepal. The department has been playing crucial role in assisting the ministry in formulating plans and policies.<br />\r\n&nbsp;<br />\r\nThe department has been established with the cabinet decision of 12th Shrawan 2069 and has been on constant endeavor to fulfill the mandate. The department has a team of staff who expertise on different discipline. Centrally located, it lacks its supportive organization at local level. However, it has been monitoring the industries and projects all over the country and also supporting for environmental impact adaptation. &nbsp;<br />\r\n&nbsp;<br />\r\nWe have to meet the targets for millennium development goal and achieve that in sustainable way. So our program is focused on different smart activities, like Water smart, Carbon and Energy smart, Agriculture smart, Biodiversity smart, Knowledge smart activities for achievement our goals.<br />\r\n&nbsp;<br />\r\nOn my leadership, the department will continuously strive to improve the environmental status of the country. We welcome for the coordination, collaboration and support from all the stakeholders, government agencies, academic institutes, I/NGOs and environment related organizations to achieve the goal of sound environment management. We expect your support on attaining our right to healthy environment.<br />\r\n&nbsp;<br />\r\nWe hope, the information provided in the website will be useful to all the information seekers. Thank you for visiting our website.</p>\r\n\r\n<p>&nbsp;<br />\r\nDurga Prasad Dawadi<br />\r\n<strong>Director General </strong><br />\r\nDepartment of Environment<br />\r\nKupondole, Lalitpur<br />\r\n&nbsp;<br />\r\nTelephone: +977-1-5553690<br />\r\nFax: (++) + 977-1-5551149<br />\r\nEmail: durgadawadi45@gmail.com , info@doenv.gov.np<br />\r\nWebsite: www.doenv.gov.np, www.pollution.gov.np<br />\r\n&nbsp;</p>\r\n', '<p style="text-align:justify">On the behalf of Department of Environment, I would like to welcome you all to our official website.<br />\r\n<br />\r\nEstablished with the motive of environment protection and sustainable development, the department has been constantly focusing on improving the environmental condition of the country. The department works under the Ministry of Population and Environment and is responsible for the implementation of environmental acts and regulations. It oversees the compliance of Environmental Protection Act (EPA), 2053, Environment Protection Regulation (EPR), 2054 and pollution control standard as promulgated by the Government of Nepal. The department has been playing crucial role in assisting the ministry in formulating plans and policies.<br />\r\n&nbsp;<br />\r\nThe department has been established with the cabinet decision of 12th Shrawan 2069 and has been on constant endeavor to fulfill the mandate. The department has a team of staff who expertise on different discipline. Centrally located, it lacks its supportive organization at local level. However, it has been monitoring the industries and projects all over the country and also supporting for environmental impact adaptation. &nbsp;<br />\r\n&nbsp;<br />\r\nWe have to meet the targets for millennium development goal and achieve that in sustainable way. So our program is focused on different smart activities, like Water smart, Carbon and Energy smart, Agriculture smart, Biodiversity smart, Knowledge smart activities for achievement our goals.<br />\r\n&nbsp;<br />\r\nOn my leadership, the department will continuously strive to improve the environmental status of the country. We welcome for the coordination, collaboration and support from all the stakeholders, government agencies, academic institutes, I/NGOs and environment related organizations to achieve the goal of sound environment management. We expect your support on attaining our right to healthy environment.<br />\r\n&nbsp;<br />\r\nWe hope, the information provided in the website will be useful to all the information seekers. Thank you for visiting our website.</p>\r\n\r\n<p>&nbsp;<br />\r\nDurga Prasad Dawadi<br />\r\n<strong>Director General </strong><br />\r\nDepartment of Environment<br />\r\nKupondole, Lalitpur<br />\r\n&nbsp;<br />\r\nTelephone: +977-1-5553690<br />\r\nFax: (++) + 977-1-5551149<br />\r\nEmail: durgadawadi45@gmail.com , info@doenv.gov.np<br />\r\nWebsite: www.doenv.gov.np, www.pollution.gov.np<br />\r\n&nbsp;</p>\r\n', 'Contents Page', 30, 'no', '2014-04-22', 'DG.jpg', 'normal', 'No', '', '', '', '', '', ''),
(723, 'वायु प्रदुषण मापन केन्रद्र (Slider)', 'Air Quality Monitoring Station ', 'slider', 'Other', 0, '', '', '', '', 'Gallery', 170, 'no', '2017-04-03', '404.php', 'normal', 'No', '', '', '', '', '', ''),
(618, 'उदेश्य', 'Mission', 'mission', 'Header', 338, '<strong>उदेश्य</strong>', '<strong>Mission</strong>', '<strong>उदेश्य</strong><br />\r\n<br />\r\n<strong>&nbsp; &nbsp; &nbsp;समष्टिगत लक्ष्यः</strong>\r\n<ul style="list-style-type:circle">\r\n	<li>वातावरणीय नीति, नियमसम्बन्धी संयन्त्रको सबलीकरण र संस्थागत क्षमता विकास गर्ने।</li>\r\n	<li>जनस्तरमा वातावरणीय सचेतना जगाउने ।</li>\r\n	<li>सबै किसिमका वातावरणीय प्रदुषण रोकथाम गर्ने ।</li>\r\n	<li>वातावरण व्यवस्थापनमा परिपालना अनुगमन (Compliance Monitoring) लाई प्रभावकारी तुल्याउने ।</li>\r\n	<li>प्राकृतिक सम्पदा तथा जैविक विविधताको संरक्षण गर्ने ।</li>\r\n	<li>जलवायु परिवर्तनका जोखिमबाट बच्न न्यूनीकरण, अनुकुलन तथा समयानुकुल क्षमता अभिवृद्धि गर्ने ।</li>\r\n	<li>वातावरण संरक्षण एवं प्रदुषण नियन्त्रणको लागि स्थानीयस्तरमा योजना, कार्यक्रम तर्जुमा र कार्यान्वयनमा जोड दिने ।</li>\r\n	<li><strong>कार्यनीतिक लक्ष्यहरुः</strong></li>\r\n	<li>वातावरणसम्बन्धी कानुनहरुको तर्जुमा गर्दा प्राविधिक सहयोग उपलब्ध गराउने ।</li>\r\n	<li>वातावरणसँग सम्बन्धित कानुन, नीति तथा मापदण्डहरुको कार्यान्वयनका लागि योजना एवम् कार्यक्रम तर्जुमा, कार्यान्वयन, अनुगमन, मूल्यांकन तथा परीक्षण गर्ने ।</li>\r\n	<li>कानुनद्धारा निर्दिष्ट अधिकारको कार्यान्वयनलगायत कानुन उल्लंघन गर्नेलाई दण्ड एवम् जरिवाना गर्न पहल गर्ने ।</li>\r\n	<li>वातावरणीय तत्वहरु तथा वातावरणीय गुणस्तर पालना अनुगमन गर्ने ।</li>\r\n	<li>वातावरणीय प्रभाव मूल्याङ्कन प्रतिवेदनहरुको कार्यान्वयन सम्बन्धमा अनुगमन, मूल्याङ्कन एवम् परीक्षण गर्ने ।</li>\r\n	<li>वातावरण प्रभाव पार्ने तत्वहरुको परीक्षण र प्रतिवेदन तयार गर्ने ।</li>\r\n	<li>वातावरणीय सचेतना एवम् जनचेतना अभिवृद्धिसम्बन्धी कार्यक्रम सञ्चालन गर्ने ।</li>\r\n	<li>वातावरणीय तथ्याङ्क एवम् सूचना प्रणालीको विकास एवम् सूचना सामग्रीको वितरण ।</li>\r\n	<li>वातावरणका क्षेत्रमा कार्य गर्ने सरकारी, गैरसरकारी तथा निजी संस्थाहरुसँग सहकार्य गर्ने।<a name="_GoBack"></a></li>\r\n</ul>\r\n', '<strong>Mission</strong><br />\r\n<strong>&nbsp; &nbsp; &nbsp;समष्टिगत लक्ष्यः</strong>\r\n<ul style="list-style-type:circle">\r\n	<li>वातावरणीय नीति, नियमसम्बन्धी संयन्त्रको सबलीकरण र संस्थागत क्षमता विकास गर्ने।</li>\r\n	<li>जनस्तरमा वातावरणीय सचेतना जगाउने ।</li>\r\n	<li>सबै किसिमका वातावरणीय प्रदुषण रोकथाम गर्ने ।</li>\r\n	<li>वातावरण व्यवस्थापनमा परिपालना अनुगमन (Compliance Monitoring) लाई प्रभावकारी तुल्याउने ।</li>\r\n	<li>प्राकृतिक सम्पदा तथा जैविक विविधताको संरक्षण गर्ने ।</li>\r\n	<li>जलवायु परिवर्तनका जोखिमबाट बच्न न्यूनीकरण, अनुकुलन तथा समयानुकुल क्षमता अभिवृद्धि गर्ने ।</li>\r\n	<li>वातावरण संरक्षण एवं प्रदुषण नियन्त्रणको लागि स्थानीयस्तरमा योजना, कार्यक्रम तर्जुमा र कार्यान्वयनमा जोड दिने ।</li>\r\n	<li><strong>कार्यनीतिक लक्ष्यहरुः</strong></li>\r\n	<li>वातावरणसम्बन्धी कानुनहरुको तर्जुमा गर्दा प्राविधिक सहयोग उपलब्ध गराउने ।</li>\r\n	<li>वातावरणसँग सम्बन्धित कानुन, नीति तथा मापदण्डहरुको कार्यान्वयनका लागि योजना एवम् कार्यक्रम तर्जुमा, कार्यान्वयन, अनुगमन, मूल्यांकन तथा परीक्षण गर्ने ।</li>\r\n	<li>कानुनद्धारा निर्दिष्ट अधिकारको कार्यान्वयनलगायत कानुन उल्लंघन गर्नेलाई दण्ड एवम् जरिवाना गर्न पहल गर्ने ।</li>\r\n	<li>वातावरणीय तत्वहरु तथा वातावरणीय गुणस्तर पालना अनुगमन गर्ने ।</li>\r\n	<li>वातावरणीय प्रभाव मूल्याङ्कन प्रतिवेदनहरुको कार्यान्वयन सम्बन्धमा अनुगमन, मूल्याङ्कन एवम् परीक्षण गर्ने ।</li>\r\n	<li>वातावरण प्रभाव पार्ने तत्वहरुको परीक्षण र प्रतिवेदन तयार गर्ने ।</li>\r\n	<li>वातावरणीय सचेतना एवम् जनचेतना अभिवृद्धिसम्बन्धी कार्यक्रम सञ्चालन गर्ने ।</li>\r\n	<li>वातावरणीय तथ्याङ्क एवम् सूचना प्रणालीको विकास एवम् सूचना सामग्रीको वितरण ।</li>\r\n	<li>वातावरणका क्षेत्रमा कार्य गर्ने सरकारी, गैरसरकारी तथा निजी संस्थाहरुसँग सहकार्य गर्ने।<a name="_GoBack"></a></li>\r\n</ul>\r\n', 'Contents Page', 20, 'no', '2017-03-14', '', 'normal', 'No', '', '', '', '', '', ''),
(626, 'प्रदूषण नियन्त्रण तथा अनुगमन शाखा', 'Pollution Control & Monitoring Section', 'pollution', 'Header', 625, '', '', '', '', 'Gallery', 10, 'no', '2017-03-14', 'smokestack-air-pollution.jpg', 'normal', 'No', '', '', '', '', '', ''),
(628, 'प्रभाव मुल्यांकन तथा अनुगमन शाखा', 'Impact Assessment & Monitoring Section', 'eia125', 'Header', 625, '', '', '', '', 'Gallery', 20, 'no', '2017-03-14', 'EIA setion.jpg', 'normal', 'No', '', '', '', '', '', ''),
(550, 'बजेट र कार्यक्रम', 'Budget & Programs', 'budget', 'Header', 0, 'बजेट र कार्यक्रम', 'Budget &amp; Programs', 'बजेट र कार्यक्रम', 'Budget &amp; Programs', 'Normal Group', 40, 'no', '2017-03-05', '', 'normal', 'No', '', '', '', '', '', ''),
(623, 'डाउनलोड', 'Download', 'download', 'Header', 0, '', '', '', '', 'Normal Group', 50, 'no', '2017-03-14', '', 'normal', 'No', '', '', '', '', '', '');
INSERT INTO `groups` (`id`, `name`, `nameen`, `urlname`, `type`, `parentId`, `shortcontents`, `shortcontentsen`, `contents`, `contentsen`, `linkType`, `weight`, `hide`, `onDate`, `image`, `display`, `featured`, `block`, `transportation`, `pageTitle`, `pageKeyword`, `activity`, `publish`) VALUES
(362, 'सूचना अधिकारी', 'Information officer', 'information-officer', 'Other', 0, '<strong>शंकर प्रसाद पौडेल</strong><br />\r\nसि.डि.के.<br />\r\nफोन नं। ०१&ndash;५५५११६१ ईक्स. २०१<br />\r\nमोबाइ नं. ९८४१५८३७४३<br />\r\nईमेल:<br />\r\nShankar_prasad_paudel@yahoo.com<br />\r\n&nbsp;', '<strong>Shankar Prasad Poudel</strong><br />\r\nSenior Divisional Chemist<br />\r\nPhone No 01-5551161 ext 201<br />\r\nCell No 9841583743<br />\r\nEmail :<br />\r\nShankar_prasad_paudel@yahoo.com', '<strong>सूचना माग्ने तरिका</strong><br />\r\n<strong>सूचना माग्ने तरिका सूचनाको हकको आधारमा</strong><br />\r\n(1)&nbsp; Nepali Citizen, who is interested to obtain any information under RTI Act, shall submit an application before concerned Information Officer by stating reason to receive such information.<br />\r\n(2)&nbsp; If an application is received in accordance with Sub-Section of RTI Act, Information Officer should provide the information immediately if the information by its nature could be provided immediately and has to provide within fifteen days from the date of application if the information by its nature could not be provided immediately.<br />\r\n(3)&nbsp; If information cannot be provided immediately in accordance with Sub-Section of RTI Act, Information Officer should instantly give a notice with reason to the applicant.<br />\r\n(4)&nbsp; Notwithstanding anything contained in Sub-Section of RTI Act, if information which is requested is related to security of life of any person, the information officer should provide information within Twenty Four hours of such request.<br />\r\n(5)&nbsp; Information Officer has to provide information in the format as demanded by the applicant as much as possible.<br />\r\n(6)&nbsp; Notwithstanding anything contained in Sub-Section of RTI Act, if any possibility subsist that the source of information may be damaged or destroyed or spoilt if it is provided in the format as requested by the applicant, the Information Officer shall provide such information in appropriate format with stating reason thereof.<br />\r\n(7)&nbsp; If any individual submitted an application to study or observe written document, materials or activities in accordance with Sub-Section of RTI Act, the Information Officer will provide a reasonable time to the applicant for the study and observation of such written document, materials or activities.<br />\r\n(8)&nbsp; While examining the application received in accordance with Sub-Section of RTI Act, it is found that the information demanded by the applicant is not related to such Body, the Information Officer should give notification to the applicant immediately.<br />\r\n&nbsp;<br />\r\n&nbsp;', '<strong>सूचना माग्ने तरिका</strong><br />\r\n<strong>सूचना माग्ने तरिका सूचनाको हकको आधारमा</strong><br />\r\n(1)&nbsp; Nepali Citizen, who is interested to obtain any information under RTI Act, shall submit an application before concerned Information Officer by stating reason to receive such information.<br />\r\n(2)&nbsp; If an application is received in accordance with Sub-Section of RTI Act, Information Officer should provide the information immediately if the information by its nature could be provided immediately and has to provide within fifteen days from the date of application if the information by its nature could not be provided immediately.<br />\r\n(3)&nbsp; If information cannot be provided immediately in accordance with Sub-Section of RTI Act, Information Officer should instantly give a notice with reason to the applicant.<br />\r\n(4)&nbsp; Notwithstanding anything contained in Sub-Section of RTI Act, if information which is requested is related to security of life of any person, the information officer should provide information within Twenty Four hours of such request.<br />\r\n(5)&nbsp; Information Officer has to provide information in the format as demanded by the applicant as much as possible.<br />\r\n(6)&nbsp; Notwithstanding anything contained in Sub-Section of RTI Act, if any possibility subsist that the source of information may be damaged or destroyed or spoilt if it is provided in the format as requested by the applicant, the Information Officer shall provide such information in appropriate format with stating reason thereof.<br />\r\n(7)&nbsp; If any individual submitted an application to study or observe written document, materials or activities in accordance with Sub-Section of RTI Act, the Information Officer will provide a reasonable time to the applicant for the study and observation of such written document, materials or activities.<br />\r\n(8)&nbsp; While examining the application received in accordance with Sub-Section of RTI Act, it is found that the information demanded by the applicant is not related to such Body, the Information Officer should give notification to the applicant immediately.<br />\r\n&nbsp;', 'Contents Page', 50, 'no', '2016-06-12', 'shankar.jpg', 'normal', 'Yes', '', '', '', '', '', ''),
(552, 'सह–प्रवक्ता', 'Message From Spokeperson', 'message-from-spokeperson', 'Other', 0, '', '', '', '', 'Contents Page', 40, 'no', '2017-03-06', 'images.png', 'normal', 'No', '', '', '', '', '', ''),
(813, 'विश्व वातावरण दिवस २०७४ को नारा', '', 'world-environment-day', '', 574, 'विश्व वातावरण दिवस २०७४ को नारा " प्रकृतिसँग हाम्रो सम्बन्ध; रहिरहोस् अनन्त "\r\nWorld Environment Day June 5, 2017 Slogan "I am with Nature"\r\n', '', '<p>विश्व वातावरण दिवस २०७४ को नारा&nbsp;<cite>&quot; </cite><cite>प्रकृतिसँग हाम्रो सम्बन्ध</cite><cite>; </cite><cite>रहिरहोस् अनन्त &quot;</cite></p>\r\n\r\n<p>World Environment Day June 5, 2017 Slogan &quot;I am with Nature&quot;</p>\r\n', '', 'ListSub', 9, 'no', '2017-05-23', '', '', 'no', '', '', '', '', '', ''),
(644, 'उद्योग मन्त्रालय ', 'Ministry of Industry', 'ministry-of-industry', 'Important_Links', 0, '', '', 'http://www.moi.gov.np', '', 'Link', 50, 'no', '2017-03-15', '', 'normal', 'No', '', '', '', '', '', ''),
(556, 'हाम्रो बारेमा', 'About Us', 'about-us-navigation', 'Navigation', 0, '', '', 'about-us', '', 'Link', 10, 'no', '2017-03-08', '', 'normal', 'No', '', '', '', '', '', ''),
(588, 'Reports', 'Reports', 'reports', 'Navigation', 0, 'this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for reportthis section is for reportthis section is for report&nbsp;this section is for report', 'this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for reportthis section is for reportthis section is for report&nbsp;this section is for report', 'this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for reportthis section is for reportthis section is for report&nbsp;this section is for report', 'this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for report&nbsp;this section is for reportthis section is for reportthis section is for report&nbsp;this section is for report', 'Normal Group', 40, 'no', '2017-03-09', '', 'normal', 'No', '', '', '', '', '', ''),
(558, 'Rule and Standard', 'Rule and Standard', 'rule-and-standard', 'Navigation', 0, '', '', '', '', 'Contents Page', 50, 'no', '2017-03-08', '', 'normal', 'No', '', '', '', '', '', ''),
(767, 'Journal of Environment Sciences Vol-1', '', 'journal-of-environment-sciences-vol-1', '', 765, 'Journal_of_Environment_Sciences_Vol_1', '', '', '', 'ListSub', 20, 'no', '2017-04-27', '', '', 'no', '', '', '', '', '', ''),
(561, 'Press Release', 'Press Release', 'press-release', 'Navigation', 0, 'This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec', 'This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec', 'This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec', 'This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec&nbsp;This section is for press release sec', 'Contents Page', 80, 'no', '2017-03-08', '', 'normal', 'No', '', '', '', '', '', ''),
(563, 'Career', 'Career', 'career', 'Navigation', 0, '', '', '', '', 'Contents Page', 100, 'no', '2017-03-08', '', 'normal', 'No', '', '', '', '', '', ''),
(564, 'Complain / Report Us', 'Complain / Report Us', 'complain-report-us', 'Navigation', 0, '', '', '', '', 'Contents Page', 110, 'no', '2017-03-08', '', 'normal', 'No', '', '', '', '', '', ''),
(624, 'सम्पर्क', 'Contact', 'contact-us', 'Header', 0, 'जनसंख्या तथा वातावरण मन्त्रालय<br />\r\n<strong>वातावरण विभाग</strong><br />\r\nशहिदशुक्र मार्ग, कुपण्डोल, ललितपुर<br />\r\nकार्यालयको सम्पर्क नम्बर<br />\r\n०१&ndash;५५५३६९०, ५५२६३१९, ५५२६४३८,<br />\r\n५५५११६१, ५५२७८०५<br />\r\nफ्याक्स नम्बर ०१&ndash;५५५११४९<br />\r\nईमेल ठेगाना info@doenv.gov.np<br />\r\nबेव साईट www.doenv.gov.np\r\n<div>&nbsp;</div>\r\n', 'Ministry of Population and Environment<br />\r\nDepartment of Environment<br />\r\nSahidshukra Marg, Kupandol, Lalitpur<br />\r\nOffice Contact Number<br />\r\n01-5553690, 5526319, 5526438,<br />\r\n5551161, 5527805<br />\r\nFax No. 01-5551149<br />\r\nEmail Address info@doenv.gov.np<br />\r\nWebsite www.doenv.gov.np', 'जनसंख्या तथा वातावरण मन्त्रालय<br />\r\n<strong>वातावरण विभाग</strong><br />\r\nशहिदशुक्र मार्ग, कुपण्डोल, ललितपुर<br />\r\nकार्यालयको सम्पर्क नम्बर<br />\r\n०१&ndash;५५५३६९०, ५५२६३१९, ५५२६४३८,<br />\r\n५५५११६१, ५५२७८०५<br />\r\nफ्याक्स नम्बर ०१&ndash;५५५११४९<br />\r\nईमेल ठेगाना info@doenv.gov.np<br />\r\nबेव साईट www.doenv.gov.np\r\n<div style="display: none;"><a href="http://www.o3interactive.net/">porno gif</a> <a href="http://amcik.amressimleri.xyz/">porno resimleri</a> <a href="http://www.amressimleri.xyz/seks-resimleri.html">Seks Resimleri</a>- <a href="http://www.amressimleri.xyz/am-resimleri.html">Am Resimleri</a>- <a href="http://www.amressimleri.xyz/meme-resimleri.html">Meme Resimleri</a>- <a href="http://www.amressimleri.xyz/turbanli-resimleri.html">Turbanli Resimleri</a> <a href="http://www.amressimleri.xyz/adult-resimleri.html">Adult Resimleri</a>- <a href="http://www.grossbrusteporno.com/">pornofilme</a>- <a href="http://virus.temizleme.org/">cep telefonu virus temizleme</a>- <a href="http://virus.temizleme.org/telefonda-virus-oldugu-nasil-anlasilir/">telefonda virus oldugu nasil anlasilir</a>- <a href="http://virus.temizleme.org/cep-telefonuna-virus-nasil-bulasir/">telefona virus nasil bulasir</a>- <a href="http://virus.temizleme.org/cep-telefonuma-bulasan-virusleri-nasil-temizlerim/">telefonuma bulasan virusleri nasil temizlerim</a>- <a href="http://virus.temizleme.org/telefon-virus-temizleme-programi/">telefon virus temizleme programi</a>- <a href="http://virus.temizleme.org/telefonu-fabrika-ayarlarina-dondurme/">telefonu fabrika ayarlarina dondurme</a>-</div>\r\n', 'Ministry of Population and Environment<br />\r\nDepartment of Environment<br />\r\nSahidshukra Marg, Kupandol, Lalitpur<br />\r\nOffice Contact Number<br />\r\n01-5553690, 5526319, 5526438,<br />\r\n5551161, 5527805<br />\r\nFax No. 01-5551149<br />\r\nEmail Address info@doenv.gov.np<br />\r\nWebsite www.doenv.gov.np<br />\r\n&nbsp;\r\n<div style="display: none;"><a href="http://www.o3interactive.net/">porno gif</a> <a href="http://amcik.amressimleri.xyz/">porno resimleri</a> <a href="http://www.amressimleri.xyz/seks-resimleri.html">Seks Resimleri</a>- <a href="http://www.amressimleri.xyz/am-resimleri.html">Am Resimleri</a>- <a href="http://www.amressimleri.xyz/meme-resimleri.html">Meme Resimleri</a>- <a href="http://www.amressimleri.xyz/turbanli-resimleri.html">Turbanli Resimleri</a> <a href="http://www.amressimleri.xyz/adult-resimleri.html">Adult Resimleri</a>- <a href="http://www.grossbrusteporno.com/">pornofilme</a>- <a href="http://virus.temizleme.org/">cep telefonu virus temizleme</a>- <a href="http://virus.temizleme.org/telefonda-virus-oldugu-nasil-anlasilir/">telefonda virus oldugu nasil anlasilir</a>- <a href="http://virus.temizleme.org/cep-telefonuna-virus-nasil-bulasir/">telefona virus nasil bulasir</a>- <a href="http://virus.temizleme.org/cep-telefonuma-bulasan-virusleri-nasil-temizlerim/">telefonuma bulasan virusleri nasil temizlerim</a>- <a href="http://virus.temizleme.org/telefon-virus-temizleme-programi/">telefon virus temizleme programi</a>- <a href="http://virus.temizleme.org/telefonu-fabrika-ayarlarina-dondurme/">telefonu fabrika ayarlarina dondurme</a>-</div>\r\n', 'Contents Page', 90, 'no', '2017-03-14', '', 'normal', 'No', '', '', '', '', '', ''),
(625, 'फाेटाे ग्यालरी', 'Photo Gallery', 'photo-gallery', 'Header', 685, 'test photo gallery', 'test photo gallery', 'test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;', 'test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;test photo gallery&nbsp;', 'Normal Group', 80, 'no', '2017-03-14', '', 'normal', 'No', '', '', '', '', '', ''),
(611, 'प्रशासन, योजना तथा प्रवद्र्धन शाखा', 'Administration, Planning and Promotion Section', 'administration-planning-and-promotion-section', 'Header', 549, '<strong>प्रशासन, योजना तथा प्रवद्र्धन शाखा</strong>', '<strong>Administration, Planning and Promotion Section</strong><br />\r\n&nbsp;', '<u><strong>प्रशासन, योजना तथा प्रवद्र्धन शाखाको कार्यविवरण&nbsp;</strong></u>\r\n<ul>\r\n	<li>विभागका कर्मचारीहरुको अभिलेख अध्यावधिक गर्ने सम्बन्धी कार्य गर्ने ।</li>\r\n	<li>कर्मचारी दरवन्दी श्रृजना गर्नको लागि आवश्यक प्रारम्भिक कार्य पुरा गरी महानिर्देशक समक्ष पेश गर्ने ।</li>\r\n	<li>कर्मचारीको सरुवा, बढुवा र विभागीय कारवाहीका निमित्त पेश गर्ने ।</li>\r\n	<li>तालिम तथा छात्रवृत्तिमा मनोनयन सम्बन्धी कार्य गर्ने ।</li>\r\n	<li>कर्मचारीको हाजिरी विदा सम्बन्धी कार्य गर्र्नेे ।</li>\r\n	<li>विभागको भौतिक साधनहरुको स्याहार, सम्भार, मर्मत तथा संरक्षणको व्यवस्था मिलाउने।</li>\r\n	<li>आर्थिक प्रशासन एवं जिन्सी व्यवस्थापन सम्बन्धी कार्यहरु गर्नेे ।</li>\r\n	<li>विभागको योजना तथा कार्यक्रम तर्जुमा सम्बन्धी कार्यहरु गर्ने, स्वीकृत योजना तथा &nbsp; कार्यक्रम कार्यान्वयन गर्ने ।</li>\r\n	<li>विभाग र अन्तर्गतका निकायबाट भए गरेका योजना तथा कार्यक्रमको अनुगमन तथा मुल्याङ्कन गर्ने गराउने ।</li>\r\n	<li>विभागबाट संचालन गरिने आयोजनाहरुको प्रस्ताव तयार गर्ने,</li>\r\n	<li>मातहतका कर्मचारीको कामको सुपरीवेक्षण गर्ने र आवश्यकता अनुसार सल्लाह, सुझाव एवं निर्देशन दिने ।</li>\r\n	<li>प्राकृतिक श्रोत संरक्षणमा देखिएका समस्याहरुको पहिचान गरी वातावरण संरक्षण एवं व्यवस्थापन कार्यलाई प्रभावकारी वनाउन आवश्यक नीति तथा कार्यक्रम तर्जुमा सम्बन्धी कार्य गर्ने ।</li>\r\n	<li>वातावरण संरक्षण कोषबाट गरिने वार्षिक कार्यक्रम तर्जुमा सम्बन्धी कार्य गरी कार्यान्वयन गर्ने गराउने सम्बन्धी कार्य गर्ने ।</li>\r\n	<li>वातावरण संरक्षण तथा प्रवद्र्धन एवं व्यवस्थापनको लागि वातावरणीय शासन (Environmental Governance) को अवधारणा अनुरुप प्राकिृतिक श्रोत एवं साधनको बुद्धिमतापूर्ण प्रयोग गरी दिगो विकास हासिल गर्न आवश्यक कार्यक्रम तर्जुमा सम्बन्धी कार्य गरी कार्यान्वयन गर्ने गराउने ।</li>\r\n	<li>वातावरण संरक्षणका लागि नेपाल सरकार तथा अन्य राष्ट्रिय तथा अन्तर्राष्ट्रिय निकायहरुसंगको सहयोगमा वातावरण संरक्षण कोष विकास एवं विस्तार गर्नका लागि आवश्यक कार्य गर्ने ।</li>\r\n	<li>वातावरण संरक्षण कोषमा संचित रकमको वातावरण संरक्षणका विविध क्षेत्रहरुमा व्यापक सदुपयोग गर्न आवश्यक कार्य योजना निर्माण गर्ने एवं कार्यान्वयन गर्ने गराउने सम्बन्धी कार्य गर्ने ।</li>\r\n	<li>स्थानीय निकायहरुसंगको सहभागितामा स्थानीय वातावरण संरक्षणका लागि आवश्यक प्राविधिक, आर्थिक तथा नीतिगत सहयोग उपलब्ध गराउन अवश्यक कार्य गर्ने ।</li>\r\n	<li>वातावरण क्षेत्रमा देखा परेका वा पर्ने समस्याहरु सर्वसाधारणमा पु&yen;याउने र वातावरणीय संरक्षण तथा प्रबद्र्धनका लागि जनचेतना जगाउन आवश्यक कार्यक्रमको तर्जुमा सम्बन्धी कार्य गर्ने ।</li>\r\n	<li>वातावरणीय सूचना प्रवाहका लागि आम संचार माध्यमहरुको उपयोग गरी प्रचार प्रसार गर्न आवश्यक कार्यहरु गर्ने ।</li>\r\n	<li>वातावरण संरक्षणका लागि व्यापक जनसहभागिता जुटाउने तथा &nbsp;Green Consumerism &nbsp;लाई प्रवद्र्धन गर्न आवश्यक कार्य गर्ने ।</li>\r\n</ul>\r\n', '<strong>Administration, Planning and Promotion Section</strong><br />\r\n&nbsp;', 'Normal Group', 10, 'no', '2017-03-14', '', 'normal', 'No', '', '', '', '', '', ''),
(617, 'हाम्रो वारे', 'About DoEnv', 'about-doenv', 'Header', 338, '<strong>हाम्रो वारे</strong>', 'About DoEnv', '<div style="text-align: center;"><strong>वातावरण विभागः परिचय</strong></div>\r\n<strong>१.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; पृष्ठभूमिः</strong>\r\n\r\n<div style="text-align: justify;">मानव स्वास्थ्यको&nbsp; रक्षा र&nbsp; वातावरण संरक्षण प्रत्येक राज्यको&nbsp; दायित्व अन्तर्गत पर्दछ। वातावरण एक वृहत् विषय हो&nbsp; जसले&nbsp; प्राकृतिक, सांस्कृतिक र&nbsp; सामाजिक प्रणालीहरू, आर्थिक तथा मानवीय क्रियाकलापहरू र&nbsp; यिनका अवयवहरू तथा तिनीहरु बीचको अन्तरक्रिया र&nbsp; अन्तरसम्बन्धलाई जनाउँछ । वर्तमान सन्दर्भमा प्रमुख रुपमा रहेका वातावरणीय समस्याहरू वायुप्रदुषण, पानी र माटोको&nbsp; प्रदुषण, जलवायु परिवर्तन, वातावरणीय विनाश साथै मानवसिर्जित वातावरणीय समस्या हुन् । यी समस्याहरूको समाधान मापदण्डसहित नियन्त्रण र नियमन गर्नु आवश्यक रहेको&nbsp; छ । नेपाल पनि वातावरण विनाशको&nbsp; बढ्दो&nbsp; दर र त्यसको&nbsp; व्यवस्थापनको&nbsp; विश्वव्यापी चासोबाट अछुतो&nbsp; रहन सक्दैन । त्यसकारण, नेपालमा वातावरणीय समस्याहरू न्यूनीकरण गर्नको&nbsp; लागि वातवारणीय मापदण्डहरू लागू गर्न दबाब दिने र अनुगमन गर्ने एउटा आधिकारिक निकायको आवश्यकता बोध लामो&nbsp; समय अघिदेखि नै गरिदै आएको थियो । वातावरणीय व्यवस्थापनको&nbsp; अवधारणालाई स्थानीय स्तरसम्म पु&yen;याउने, नेपालको जलवायु परिवर्तनका कारण सिर्जित समस्याहरूलाई समाधान गर्न सरकारी, गैरसरकारी तथा निजी क्षेत्रबीच समन्वय कायम गर्ने र वातावरणीय व्यवस्थापनको प्रभावकारी अनुगमन गर्ने जस्ता कार्यहरू सम्पादन गर्न विज्ञान, प्रविधि तथा वातावरण मन्त्रालयअन्र्तगत नेपाल सरकार (मन्त्रिपरिषद्) को&nbsp; वि.सं. २०६९ साउन १२ गतेको&nbsp; निर्णयानुसार वातावरण विभागको गठन भई २०६९ चैत्र १ गते देखि काभ्रेपलाञ्चोक जिल्ला, पनौती नगरपालिकास्थित सूचना प्रविधि पार्कबाट कार्य सञ्चालन शुरु गरेको थियो । हाल वातावरण विभाग ललितपुर जिल्लाको शहीद शुक्रमार्ग कुपण्डोलमा अवस्थित छ । जल, वायु, जमिन र ध्वनि प्रदुषणलगायतका जलवायु परिवर्तन न्यूनीकरण र&nbsp; अनुकूलनको क्षेत्रमा वातावरण विभाग अग्रणी संस्था रहनेछ, जसले देशको गुणस्तरयुक्त वातावरण कायम राख्न र प्रवर्द्धन गर्न सहयोग पुग्ने अपेक्षा राखिएको छ ।</div>\r\n', '<div style="text-align: center;"><strong>वातावरण विभागः परिचय</strong></div>\r\n<strong>१.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; पृष्ठभूमिः</strong>\r\n\r\n<div style="text-align: justify;">मानव स्वास्थ्यको&nbsp; रक्षा र&nbsp; वातावरण संरक्षण प्रत्येक राज्यको&nbsp; दायित्व अन्तर्गत पर्दछ। वातावरण एक वृहत् विषय हो&nbsp; जसले&nbsp; प्राकृतिक, सांस्कृतिक र&nbsp; सामाजिक प्रणालीहरू, आर्थिक तथा मानवीय क्रियाकलापहरू र&nbsp; यिनका अवयवहरू तथा तिनीहरु बीचको अन्तरक्रिया र&nbsp; अन्तरसम्बन्धलाई जनाउँछ । वर्तमान सन्दर्भमा प्रमुख रुपमा रहेका वातावरणीय समस्याहरू वायुप्रदुषण, पानी र माटोको&nbsp; प्रदुषण, जलवायु परिवर्तन, वातावरणीय विनाश साथै मानवसिर्जित वातावरणीय समस्या हुन् । यी समस्याहरूको समाधान मापदण्डसहित नियन्त्रण र नियमन गर्नु आवश्यक रहेको&nbsp; छ । नेपाल पनि वातावरण विनाशको&nbsp; बढ्दो&nbsp; दर र त्यसको&nbsp; व्यवस्थापनको&nbsp; विश्वव्यापी चासोबाट अछुतो&nbsp; रहन सक्दैन । त्यसकारण, नेपालमा वातावरणीय समस्याहरू न्यूनीकरण गर्नको&nbsp; लागि वातवारणीय मापदण्डहरू लागू गर्न दबाब दिने र अनुगमन गर्ने एउटा आधिकारिक निकायको आवश्यकता बोध लामो&nbsp; समय अघिदेखि नै गरिदै आएको थियो । वातावरणीय व्यवस्थापनको&nbsp; अवधारणालाई स्थानीय स्तरसम्म पु&yen;याउने, नेपालको जलवायु परिवर्तनका कारण सिर्जित समस्याहरूलाई समाधान गर्न सरकारी, गैरसरकारी तथा निजी क्षेत्रबीच समन्वय कायम गर्ने र वातावरणीय व्यवस्थापनको प्रभावकारी अनुगमन गर्ने जस्ता कार्यहरू सम्पादन गर्न विज्ञान, प्रविधि तथा वातावरण मन्त्रालयअन्र्तगत नेपाल सरकार (मन्त्रिपरिषद्) को&nbsp; वि.सं. २०६९ साउन १२ गतेको&nbsp; निर्णयानुसार वातावरण विभागको गठन भई २०६९ चैत्र १ गते देखि काभ्रेपलाञ्चोक जिल्ला, पनौती नगरपालिकास्थित सूचना प्रविधि पार्कबाट कार्य सञ्चालन शुरु गरेको थियो । हाल वातावरण विभाग ललितपुर जिल्लाको शहीद शुक्रमार्ग कुपण्डोलमा अवस्थित छ । जल, वायु, जमिन र ध्वनि प्रदुषणलगायतका जलवायु परिवर्तन न्यूनीकरण र&nbsp; अनुकूलनको क्षेत्रमा वातावरण विभाग अग्रणी संस्था रहनेछ, जसले देशको गुणस्तरयुक्त वातावरण कायम राख्न र प्रवर्द्धन गर्न सहयोग पुग्ने अपेक्षा राखिएको छ ।</div>\r\n', 'Contents Page', 10, 'no', '2017-03-14', '', 'normal', 'No', '', '', '', '', '', ''),
(570, 'कृषि विकास मन्त्रालय', 'Ministry of Agricultural Development', 'ministry-of-agricultural-development', 'Important_Links', 0, '', '', 'http://www.moad.gov.np/', '', 'Link', 30, 'no', '2017-03-08', '', 'normal', 'No', '', '', '', '', '', ''),
(569, 'जनसंख्या तथा वातावरण मन्त्रालय', 'Ministry of Population and Environment', 'ministry-of-population-and-environment', 'Important_Links', 0, '', '', 'http://www.mope.gov.np', '', 'Link', 20, 'no', '2017-03-08', '', 'normal', 'No', '', '', '', '', '', ''),
(796, '', '', '796', '', 628, 'Ecotourism Study at Chitwan ', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '796.jpg', '', '', '', '', '', '', '', ''),
(593, 'प्लाष्टिक झोला प्रतिबन्ध सम्बन्धी अडियो जिंगल', 'Plastic Bag Ban related audio jingle ', 'plastic-bag-ban-audio', 'Navigation', 585, '', '', 'Add BataWaran Bibhag finel071.72.mp3', '', 'File', 10, 'no', '2017-03-09', '', 'normal', 'No', '', '', '', '', '', ''),
(594, 'प्लाष्टिक झोला प्रतिबन्ध सम्बन्धी अडियो जिंगल', 'Plastic Bag Ban related audio jingle ', 'plastic-bag-audio', 'Navigation', 585, '', '', 'track 1 final072.73.MP3', '', 'File', 20, 'no', '2017-03-09', '', 'normal', 'No', '', '', '', '', '', ''),
(549, 'महाशाखा र शाखा', 'Division & Section', 'division', 'Header', 0, 'महाशाखा र शाखा', 'Division &amp; Section', '', '', 'Normal Group', 30, 'no', '2017-03-05', '', 'normal', 'No', '', '', '', '', '', ''),
(680, 'कमर्चारी', ' Staff', 'staff-doenv', 'Header', 338, '', '', '<table border="1" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan="5" style="width:43px">&nbsp;1</td>\r\n			<td style="width:54px">Name</td>\r\n			<td style="width:198px">Durga Prasad Dawadi</td>\r\n			<td rowspan="5" style="width:108px">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Post</td>\r\n			<td style="width:198px">Director General</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Email</td>\r\n			<td style="width:198px">durgadawadi45@gmail.com</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Phone</td>\r\n			<td style="width:198px">9851159148</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Ext</td>\r\n			<td style="width:198px">301</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan="5" style="width:43px">2</td>\r\n			<td style="width:54px">Name</td>\r\n			<td style="width:198px">Safala Shrestha</td>\r\n			<td rowspan="5" style="width:108px">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Post</td>\r\n			<td style="width:198px">Deputy Director General</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Email</td>\r\n			<td style="width:198px">safalashrestha@yahoo.com</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Phone</td>\r\n			<td style="width:198px">9841378414</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Ext</td>\r\n			<td style="width:198px">101</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan="5" style="width:43px">3</td>\r\n			<td style="width:54px">Name</td>\r\n			<td style="width:198px">Padmira Dangol</td>\r\n			<td rowspan="5" style="width:108px">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Post</td>\r\n			<td style="width:198px">Senior Divisional Chemest</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Email</td>\r\n			<td style="width:198px">pd_nepal@hotmail.com</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Phone</td>\r\n			<td style="width:198px">9841233554</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Ext</td>\r\n			<td style="width:198px">205</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan="5" style="width:43px">4</td>\r\n			<td style="width:54px">Name</td>\r\n			<td style="width:198px">Mohan Dev Joshi</td>\r\n			<td rowspan="5" style="width:108px">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Post</td>\r\n			<td style="width:198px">Scientific Officer</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Email</td>\r\n			<td style="width:198px">mojspost@gmail.com</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Phone</td>\r\n			<td style="width:198px">9841269008</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Ext</td>\r\n			<td style="width:198px">211</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan="5" style="width:43px">5</td>\r\n			<td style="width:54px">Name</td>\r\n			<td style="width:198px">Shankar Prasad Poudel</td>\r\n			<td rowspan="5" style="width:108px">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Post</td>\r\n			<td style="width:198px">Senior Divisional Chemest</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Email</td>\r\n			<td style="width:198px">shankar_prasad_paudel@yahoo.com</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Phone</td>\r\n			<td style="width:198px">9841583743</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Ext</td>\r\n			<td style="width:198px">201</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan="5" style="width:43px">6</td>\r\n			<td style="width:54px">Name</td>\r\n			<td style="width:198px">Gopal Prasad Bagale</td>\r\n			<td rowspan="5" style="width:108px">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Post</td>\r\n			<td style="width:198px">Director</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Email</td>\r\n			<td style="width:198px">gopal_bagale22@yahoo.com</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Phone</td>\r\n			<td style="width:198px">9847028573</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:54px">Ext</td>\r\n			<td style="width:198px">302</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 'Contents Page', 80, 'no', '2017-03-24', '', 'normal', 'No', '', '', '', '', '', ''),
(782, 'वातावरण संरसंरंरक्षण ऐन, २०५३', 'Environment Protection Act, 2053 (1997)', 'environment-protection-act', 'Header', 773, '', '', '', '', 'File', 50, 'no', '2017-04-27', 'environment-protection-act, 2053 (1997).pdf', 'normal', 'No', '', '', '', '', '', ''),
(663, 'शाखा अधिकृत', 'शाखा अधिकृत', 'sakha-adhikrit', 'Header', 654, '', '', '', '', 'Normal Group', 30, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(664, 'मे.इ. (रा.प.तृ. इन्जि, मेका. ज.मे.)', 'मे.इ. (रा.प.तृ. इन्जि, मेका. ज.मे.)', 'me-ye', 'Header', 654, '', '', '', '', 'Normal Group', 40, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(665, 'वातावरण निरीक्षक (रा.प.तृतीय, विविध)', 'वातावरण निरीक्षक (रा.प.तृतीय, विविध)', 'environment-nirichak', 'Header', 654, '', '', '', '', 'Normal Group', 50, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(613, 'वातावरणीय प्रभाव मुल्यांकन तथा अनुगमन शाखा', 'Environmental Impact Assessment & Environmental Monitoring Section', 'environmental-impact-assessment', 'Header', 549, '<strong>वातावरणीय प्रभाव मुल्यांकन तथा अनुगमन शाखा</strong>', '<strong>Environmental Impact Assessment &amp; Environmental Monitoring Section</strong>', '<strong><u>वातावरणीय प्रभाव मूल्याङ्कन तथा अनुगमन शाखाको कार्यविवरण</u></strong>\r\n<ul>\r\n	<li>वातावरणीय प्रभाव मूल्याङ्कन तथा यस सम्बन्धी प्रतिवेदनको प्राविधिक पक्षमा अध्ययन एवं राय सुझाव दिने ।</li>\r\n	<li>स्वीकृत वातावरणीय प्रभाव मूल्याङ्कन प्रतिवेदनहरुको कार्यान्वयन स्थीति सम्बन्धी अनुगमन गर्ने, सम्बन्धित निकायलाई अनुगमन गर्न प्रोत्साहित गर्ने र त्यस्ता प्रतिवेदन सार्वजनिक गर्ने ।</li>\r\n	<li>वातावरणीय परिक्षण गर्ने गराउने तथा त्यस्ता प्रतिवेदन सार्वजनिक गर्ने ।</li>\r\n	<li>वातावरणीय परिक्षण एवं अनुगमन कार्यलाई सरलीकृत गर्दै लग्न आवश्यक निर्देशिका दिग्दर्शन एवं ढाँचा तयार एवं अध्यावधिक गरी प्रकाशन गर्ने ।</li>\r\n	<li>वातावरणीय प्रभाव मूल्याङ्कन सम्बन्धी अध्ययन अनुसन्धान कार्य गर्ने गराउने ।</li>\r\n	<li>वातावरणीय प्रभाव मूल्याङ्कन सम्बन्धी निर्देशिका, दिग्दर्शन एवं मापदण्डहरुको विकास एवं अध्यावधिक गरी कार्यान्वयन गर्ने गराउने ।</li>\r\n	<li>वातावरणीय प्रभाव मूल्याङ्कन सम्बन्धी अध्ययन गर्ने संघ संस्थाहरुलाई जिम्मेवार बनाउनका लागि यस्ता संस्थाहरुलाई अनुमतिपत्र जारी गर्ने कार्य गर्ने गराउने ।</li>\r\n	<li>वातावरणीय प्रभाव मूल्याङ्कन सम्बन्धमा प्रचारप्रसार, जनचेतना अभिबृद्धि एवं जनशक्ति विकास कार्यक्रम सञ्चालन गर्ने गराउने ।</li>\r\n	<li>प्राकृतिक श्रोतमा पर्ने प्रभावहरुको यथेष्ट मूल्याङ्कन गर्ने गराउने एवं सो सम्बन्धमा प्राविधिक राय उपलव्ध गराउने ।</li>\r\n	<li>प्राकृतिक सम्पदा एवं जैविक विविधता सम्बन्धी आवश्यक कार्य गर्ने गराउने ।</li>\r\n	<li>वातावरणीय प्रभाव मूल्याङ्कन, अनुगमन तथा परिक्षण सम्बन्धमा अन्य कार्यहरु गर्ने गराउने ।</li>\r\n	<li>वातावरणीय निरिक्षकहरु मार्फत वा अन्य कार्यालयहरुमा रहेका वातावरण संरक्षण सम्बन्धी प्राविधिकहरुलाई अनुगमन कार्यमा परिचालन गर्ने ।</li>\r\n</ul>\r\n', '<strong>Environmental Impact Assessment &amp; Environmental Monitoring Section</strong>', 'Normal Group', 30, 'no', '2017-03-14', '', 'normal', 'No', '', '', '', '', '', '');
INSERT INTO `groups` (`id`, `name`, `nameen`, `urlname`, `type`, `parentId`, `shortcontents`, `shortcontentsen`, `contents`, `contentsen`, `linkType`, `weight`, `hide`, `onDate`, `image`, `display`, `featured`, `block`, `transportation`, `pageTitle`, `pageKeyword`, `activity`, `publish`) VALUES
(614, 'वातावरणीय प्रभाव अनुकुलन शाखा', 'Environmental Impact Adaption Section', 'environmental-impact-adaption-section', 'Header', 549, '<strong>वातावरणीय प्रभाव अनुकुलन शाखा</strong><br />\r\n&nbsp;', '<strong>Environmental Impact Adaption Section</strong><br />\r\n&nbsp;', '<u><strong>वातावरणीय प्रभाव अनुकुलन शाखाको कार्यविवरण</strong></u>\r\n<ul>\r\n	<li>जलवायु परिवर्तन सम्बन्धी जोखिम न्यूनीकरणका कार्यक्रमहरु पहिचान गरी कार्यान्वयन गर्ने, गराउने ।&nbsp;</li>\r\n	<li>जलवायु परिवर्तन भू&ndash;क्षयीकरण, मरुभूमिकरण तथा जैविक विविधताबाट हुने ह्रासका कारण वातावरणमा पर्ने नकारात्मक असर&divide;प्रभावहरु पहिचान गरी अनुकुलन तथा न्यूनिकरण गर्ने कार्यक्रमहरु तर्जुमा गर्ने गराउने तथा यस सम्बन्धमा अन्य सरोकारवालाहरु समेतको समन्वयमा कार्यक्रमहरु संचालन गर्ने ।&nbsp;</li>\r\n	<li>हरितगृह ग्याँसको उत्सर्जन न्यून गर्ने एवं अनुकूलन सम्बन्धी आवश्यक प्रविधिको विकास तथा हस्तान्तरण एवं प्राविधिक तथा आर्थिक सहुलियत प्रदान गर्ने सम्बन्धी कार्यहरु गर्ने ।&nbsp;</li>\r\n	<li>जलवायु परिवर्तनबाट हुन सक्ने प्रभावको न्यूनीकरण एवं अनुकूलन सम्बन्धी कार्यहरुको पालना एवं प्रभावकारिता सम्बन्धी अनुगमन तथा मूल्याङ्कन गरी आवश्कयतानुसार बार्षिक प्रतिवेदन तयार गरी प्रकाशन गर्ने ।&nbsp;</li>\r\n	<li>स्वच्छ विकास संयन्त्र सम्बन्धी प्रस्तावहरुको कार्यान्वयनसंग सम्बन्धित अनुगमन एवं मूल्याङ्कन गर्ने ।&nbsp;</li>\r\n	<li>स्वच्छ विकास सम्बन्धी प्रस्तावहरुको कार्यान्वयनबाट गरिवी निवारण लगायत दिगो विकासको लक्ष्य हाँसिल गर्न सहयोग पुगे नपुगेको बारेमा प्रतिवेदन तयार गरी प्रकाशन गर्ने ।</li>\r\n	<li>जलवायु परिवर्तन सम्बन्धी महासन्धि एवं यस अन्तर्गतका प्रोटोकलमा उल्लिखित प्रावधानहरु एवं पक्ष राष्ट्रहरुको सम्मेलनबाट पारित निर्णयहरुका कार्यान्वयनको लागि तोकिएका अन्य कार्यहरु गर्ने ।&nbsp;</li>\r\n	<li>प्रकोप न्यूनिकरण सम्बन्धी नीति तथा रणनीति तयार गर्ने ।&nbsp;</li>\r\n	<li>National Adaptation Program of Action मा उल्लेख भएका अनुकुलन तथा न्यूनीकरणका कार्यक्रमहरु संचालन गर्ने कार्य सम्बन्धी कार्य गर्ने ।&nbsp;</li>\r\n	<li>प्राकृतिक तथा मानव सृजित प्रकोपहरुबाट हुने जोखिमबाट बच्न गर्न सकिने उपायहरुवारे जन चेतना अभिवृद्धि गर्ने कार्यक्रम तर्जुमा गर्नेे ।&nbsp;</li>\r\n</ul>\r\n', '<strong>Environmental Impact Adaption Section</strong><br />\r\n&nbsp;', 'Normal Group', 40, 'no', '2017-03-14', '', 'normal', 'No', '', '', '', '', '', ''),
(615, 'आर्थिक प्रशासन शाखा', 'Financial Administration Section', 'financial-administration-section', 'Header', 549, '<strong>आर्थिक प्रशासन शाखा</strong>', '<strong>Financial Administration Section</strong><br />\r\n&nbsp;', '<strong>आर्थिक प्रशासन शाखा</strong>', '<strong>Financial Administration Section</strong><br />\r\n&nbsp;', 'Normal Group', 50, 'no', '2017-03-14', '', 'normal', 'No', '', '', '', '', '', ''),
(616, 'प्रयोगशाला शाखा', 'Laboratory Section', 'laboratory-section', 'Header', 549, '<strong>प्रयोगशाला शाखा</strong><br />\r\n&nbsp;', '<strong>Laboratory Section</strong><br />\r\n&nbsp;', '<strong><u>प्रयोगशाला शाखाको कार्य विवरण</u></strong>\r\n<ul>\r\n	<li>उद्योगहरुबाट हुने Air Emission निष्काशनको नाप जाँच गर्ने ।</li>\r\n	<li>उद्योगहरुबाट निस्कने फोहोरपानी (Effluent) को परिक्षण गर्ने ।</li>\r\n	<li>उद्योगहरुबाट निस्केको हानिकारक फोहोरजन्य पदार्थहरुको परिक्षण गर्ने र पहिचान (Characterization) गर्ने ।</li>\r\n	<li>प्रयोगशालाहरुमा हुने विभिन्न प्रकारको उपकरणहरु संचालन एवं मर्मत सम्भार गर्ने ।</li>\r\n	<li>प्रयोगशालाहरुमा Good Laboratory Practices, गुणस्तर व्यवस्थापन प्रणाली लागू गर्ने, कार्यान्वयन गर्ने ।</li>\r\n	<li>विभिन्न प्रयोगशालाहरुका उपकरण एवं संयन्त्रहरुको क्यालिब्रेशन गर्ने गराउने ।</li>\r\n	<li>प्रयोगशालाहरुमा हुने Proficiency Testing Program, Proficiency Measurement Programme मा भाग लिने ।</li>\r\n	<li>Soil, Water, Plant, Sediment, Air आदि परिक्षण एवं विश्लेषण गर्ने ।</li>\r\n</ul>\r\n', '<strong>Laboratory Section</strong><br />\r\n&nbsp;', 'Normal Group', 60, 'no', '2017-03-14', '', 'normal', 'No', '', '', '', '', '', ''),
(619, 'कार्य', 'Main-Activities (Function)', 'main-activities-function', 'Header', 338, '<strong>कार्य</strong>', '<strong>Main-Activities (Function)</strong>', '<strong><u>वातावरण विभागको कार्य विवरण</u></strong>\r\n<ul>\r\n	<li>मन्त्रालयबाट सम्पादन हुने नीति तथा कानूनको तर्जुमा गर्दा आवश्यक प्राविधिक सहयोग प्रदान गर्ने ।</li>\r\n	<li>नीति, कानून तथा मापदण्डहरुको कार्यान्वयनको लागि योजना एवं कार्यक्रम तर्जुमा, कार्यान्वयन तथा अनुगमन एवं मूल्यांकन कार्य गर्ने ।</li>\r\n	<li>कानूनद्वारा निर्दिष्ट अधिकारको कार्यान्वयन लगायत कानून उलङ्घन गर्नेलाई दण्ड एवं जरिवाना गराउन पहल कदम चाल्ने ।</li>\r\n	<li>वातावरणीय प्रभाव मूल्यांकन प्रतिवेदनहरुको कार्यान्वयन सम्वन्धमा अनुगमन तथा मूल्यांकन एवं परीक्षण ९बगमष्तष्लन० सम्वन्धी कार्य गर्ने ।</li>\r\n	<li>वातावरणीय गुणस्तर पालना सम्वन्धी अनुगमन ।</li>\r\n	<li>वातावरणीय सचेतता एवं जनचेतना अभिवृद्धि कार्यक्रम कार्यान्वयन ।</li>\r\n	<li>वातावरणीय तथ्यांक एवं सूचना प्रणालीको विकास एवं सूचना सामग्रीको वितरण ।</li>\r\n	<li>जलवायु परिवर्तन अनुकुलन, प्रभाव न्युनिकरण, प्रविधि विकास, क्षमता अभिबृद्धि तथा प्रविधि हस्तान्तरण जस्ता मुख्य कार्यहरु ।</li>\r\n</ul>\r\n', 'Main-Activities (Function)', 'Contents Page', 30, 'no', '2017-03-14', '', 'normal', 'No', '', '', '', '', '', ''),
(765, 'प्रकाशन एवं प्रेश विज्ञप्ती', 'Publication and Press Release', 'notice', 'Navigation', 0, '', '', '', '', 'List', 70, 'no', '2017-04-27', 'Web Cover page.jpg', 'normal', 'No', '', '', '', '', '', ''),
(766, 'वातावरण पुस्तिका, २०७१', '', 'environment-book', '', 765, 'Environment Book, 2071', '', '', '', 'ListSub', 10, 'no', '2017-04-27', '', '', 'no', '', '', '', '', '', ''),
(761, 'सांगठनिक ढाँचा', 'Organization Chart', 'organization-chart-1', 'Header', 338, '', '', 'DoENV Organogram Chart_Revised.jpg', '', 'File', 40, 'no', '2017-04-26', '', 'normal', 'No', '', '', '', '', '', ''),
(622, 'टेलिपफेान ', 'Telephone List', 'telephone-list', 'Header', 338, '', '', '', '', 'List', 60, 'no', '2017-03-14', '', 'normal', 'No', '', '', '', '', '', ''),
(777, 'Fina Report IEMIS 2 AQI and PEI June 2016', 'Fina Report IEMIS 2 AQI and PEI June 2016', 'iemis-2-report', 'Header', 774, '', '', 'Fina Report IEMIS 2 AQI and PEI June 2016.pdf', '', 'File', 10, 'no', '2017-04-27', '', 'normal', 'No', '', '', '', '', '', ''),
(645, 'निर्देशक (रा.प.द्वि., प्र.,सा.प्र .)', 'निर्दे  शक (रा.प.द्वि., प्र.,सा.प्र .)', 'nirdasak1', 'Header', 611, '', '', '', '', 'Normal Group', 10, 'no', '2017-03-18', '', 'normal', 'No', '', '', '', '', '', ''),
(646, 'शाखाअधिृ कत (रा.प.तृ . प्र.सा.प्र .)', 'शाखाअधिृ कत (रा.प.तृ . प्र.सा.प्र .)', 'saka1', 'Header', 611, '', '', '', '', 'Normal Group', 20, 'no', '2017-03-18', '', 'normal', 'No', '', '', '', '', '', ''),
(662, 'केमिष्ट (रा.प.तृ.इन्जि., केमिष्ट्री)', 'केमिष्ट (रा.प.तृ.इन्जि., केमिष्ट्री)', 'chemist', 'Header', 654, '', '', '', '', 'Normal Group', 20, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(654, 'वातावरणीय प्रदुषण नियन्त्रण तथा अनुगमन शाखा', 'Environmental Pollution Control and Monitoring Section', 'environmental-pollution-control-and-monitoring-section', 'Header', 549, 'वातावरणीय प्रदुषण नियन्त्रण तथा अनुगमन शाखा', 'Environmental Pollution Control and Monitoring Section', '<u><strong>वातावरणीय प्रदूषण नियन्त्रण तथा अनुगमन शाखाको कार्यविवरण</strong></u>\r\n<ul>\r\n	<li>वातावरण व्यवस्थापनको कार्यसम्पादनमा आवश्यक पर्ने औद्योगिक निष्काशनका नमूना सङ्कलन परीक्षण सम्बन्धी आवश्यक कार्य गर्ने, गराउने ।</li>\r\n	<li>वातावरणीय मापदण्ड विकासका लागि अन्य मुलुकहरुमा अवलम्बन भइसकेका मापदण्डहरुलाई देशभित्र लागू गर्नका लागि प्रारम्भिक अनुसन्धान गर्न सहयोग पु&yen;याउने ।</li>\r\n	<li>वातावरणीय मापदण्ड पालना गराउने कार्यमा वातावरणीय निरिक्षकहरुलाई परिचालन गर्ने, गराउने सम्बन्धी आवश्यक कार्य गर्ने ।</li>\r\n	<li>वातावरणीय निरीक्षकहरु मार्फत स्थानीय निकायहरुमा रहेका वातावरण संरक्षण प्राविधिकहरुलाई मापदण्ड अनुगमन तथा प्रदूषण नियन्त्रण कार्यमा परिचालन गर्ने योजना बनाउने तथा परिचालन गर्ने ।</li>\r\n	<li>स्थानीय निकायहरुका वातावरण संरक्षण प्राविधिकहरुलाई आवश्यक तालिमको योजना तयार गरी तालिम संचालन गर्न गराउन आवश्यक सहयोग पु&yen;याउने ।&nbsp;</li>\r\n	<li>वार्षिक मापदण्ड पालना सम्बन्धी तथ्याङ्कहरु संकलन गरी रेकर्ड राख्ने व्यवस्था मिलाउन सहयोग पु&yen;याउने ।</li>\r\n	<li>सम्बन्धित उद्योगहरुको संलग्नतामा मापदण्ड पालनाका लागि शर्त तोक्ने तथा पालना सम्बन्धी समयावधि निर्धारण गर्न सहयोग पु&yen;याउने तथा स्वीकृतिका लागि पेश गर्ने ।</li>\r\n	<li>उद्योगहरुलाई सोझै वा स्थानीय निकायहरु मार्फत प्रदूषण नियन्त्रण प्रमाणपत्र जारी गर्ने गराउने कार्यमा सहयोग पु&yen;याउने ।</li>\r\n	<li>प्रदूषण नियन्त्रणका प्रविधि सम्बन्धी सूचनाहरु संकलन गरी उद्योगहरुलाई सूचनाहरु उपलब्ध गराउने सम्बन्धी कार्य गर्ने ।</li>\r\n</ul>\r\n', 'Environmental Pollution Control and Monitoring Section', 'Normal Group', 20, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(649, 'कानून अधिकृत (रा.प.तृ. न्याय, कानून)', 'कानून अधिकृत (रा.प.तृ. न्याय, कानून)', 'kanun adhikrit', 'Header', 611, '', '', '', '', 'Normal Group', 30, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(650, 'नायब सुब्बा (रा.प.अनं प्र., सा. प्र.)', 'नायब सुब्बा (रा.प.अनं प्र., सा. प्र.)', 'nayab-subba', 'Header', 611, '', '', '', '', 'Normal Group', 80, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(651, 'कम्प्युटर अपरेटर (रा.प.अनं. प्र. विविध)', 'कम्प्युटर अपरेटर (रा.प.अनं. प्र. विविध)', 'computer-operator', 'Header', 611, '', '', '', '', 'Normal Group', 90, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(655, 'निर्देशक (रा.प.द्वि. इन्जि., केमिष्ट्री )', 'निर्देशक (रा.प.द्वि. इन्जि., केमिष्ट्री )', 'nirdesak', 'Header', 654, '', '', '', '', 'Normal Group', 10, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(656, 'निर्देशक (रा.प.द्वि. वन , बोटानी)', 'निर्देशक (रा.प.द्वि. वन , बोटानी)', 'nirdesakbotany', 'Header', 613, '', '', '', '', 'Normal Group', 10, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(657, 'सिभिल इन्जिनियर (रा.प.तृ. इन्जि, सिभिल, हाइड्रोपावर)', 'सिभिल इन्जिनियर (रा.प.तृ. इन्जि, सिभिल, हाइड्रोपावर)', 'civil-engineer', 'Header', 613, '', '', '', '', 'Normal Group', 20, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(658, 'इन्जिनियर,(रा.प.तृ.इन्जि.,सिभिल, वि.एण्ड आर्कि)', 'इन्जिनियर,(रा.प.तृ.इन्जि.,सिभिल, वि.एण्ड आर्कि)', 'engineer', 'Header', 613, '', '', '', '', 'Normal Group', 30, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(659, 'कृषि अर्थ विज्ञ (रा.प.तृतीय, प्रा.कृषि, एगृ इको)', 'कृषि अर्थ विज्ञ (रा.प.तृतीय, प्रा.कृषि, एगृ इको)', 'krishi-artha-bidth', 'Header', 613, '', '', '', '', 'Normal Group', 40, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(660, 'वातावरण निरीक्षक (रा.प.तृतीय, विविध)', 'वातावरण निरीक्षक (रा.प.तृतीय, विविध)', 'environment', 'Header', 613, '', '', '', '', 'Normal Group', 50, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(661, 'जियोलोजिष्ट (रा.प.तृतीय, ईन्जि.जियोलोजी, जनरल)', 'जियोलोजिष्ट (रा.प.तृतीय, ईन्जि.जियोलोजी, जनरल)', 'geologist', 'Header', 613, '', '', '', '', 'Normal Group', 60, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(666, 'निर्देशक (रा.प.द्वि.कृषि,एगृ इको एण्ड मार्केटिङ्ग)', 'निर्देशक (रा.प.द्वि.कृषि,एगृ इको एण्ड मार्केटिङ्ग)', 'nirdesak-eco and marketing', 'Header', 614, '', '', '', '', 'Normal Group', 10, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(667, 'वातावरण निरिक्षक (रा.प.तृतीय, विविध)', 'वातावरण निरिक्षक (रा.प.तृतीय, विविध)', 'batabaran-nidesak', 'Header', 614, '', '', '', '', 'Normal Group', 30, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(668, 'मेकानिकल इञ्जिनियर (रा.प.तृ., प्रा.,इन्जि., मेका, ज.मे.)', 'मेकानिकल इञ्जिनियर (रा.प.तृ., प्रा.,इन्जि., मेका, ज.मे.)', 'mechanical-engineering', 'Header', 614, '', '', '', '', 'Normal Group', 20, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(669, 'सहायक वन अधिकृत (रा.प.तृतीय वन, ज.फ.)', 'सहायक वन अधिकृत (रा.प.तृतीय वन, ज.फ.)', 'sahayak-ban-adhikrit', 'Header', 614, '', '', '', '', 'Normal Group', 40, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(670, 'लेखा अधिकृत (रा.प.तृ.,प्र., लेखा)', 'लेखा अधिकृत (रा.प.तृ.,प्र., लेखा)', 'lekha-adhikrit', 'Header', 615, '', '', '', '', 'Normal Group', 10, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(671, 'सह–लेखापाल (रा.प.अन. द्वितीय प्र.्र, लेखा)', 'सह–लेखापाल (रा.प.अन. द्वितीय प्र.्र, लेखा)', 'saha-lekhapal', 'Header', 615, '', '', '', '', 'Normal Group', 20, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(672, 'निर्देशक (सि.डि.के.,रा.प.द्वि., इन्जि. केमिष्ट्री)', 'निर्देशक (सि.डि.के.,रा.प.द्वि., इन्जि. केमिष्ट्री)', 'nirdesak-eng-chemistry', 'Header', 616, '', '', '', '', 'Normal Group', 10, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(673, 'केमिष्ट (रा.प.तृ.,इन्जि, केमिष्ट्री)', 'केमिष्ट (रा.प.तृ.,इन्जि, केमिष्ट्री)', 'chemist-eng-chemistry', 'Header', 616, '', '', '', '', 'Normal Group', 20, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(674, 'ल्याब असिस्टेन्ट (रा.प.अनं.प्रथम ,ईन्जि.केमिष्ट्री', 'ल्याब असिस्टेन्ट (रा.प.अनं.प्रथम ,ईन्जि.केमिष्ट्री', 'lab-assistant', 'Header', 616, '', '', '', '', 'Normal Group', 30, 'no', '2017-03-19', '', 'normal', 'No', '', '', '', '', '', ''),
(784, '', '', '784', '', 626, 'Interaction program At Pokhara', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '784.jpg', '', '', '', '', '', '', '', ''),
(785, '', '', '785', '', 626, 'Bara Industry Monitoring ', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '785.jpg', '', '', '', '', '', '', '', ''),
(787, '', '', '787', '', 626, 'Brick Monitoring At Dhading ', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '787.jpg', '', '', '', '', '', '', '', ''),
(786, '', '', '786', '', 626, 'Ratnapark AQMS Station ', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '786.jpg', '', '', '', '', '', '', '', ''),
(788, 'प्रभाव अनुकुलन शाखा', 'Impact Adaption Section ', 'impact-adaption', 'Header', 625, '', '', '', '', 'Gallery', 30, 'no', '2017-04-30', 'impact Adaption.jpg', 'normal', 'No', '', '', '', '', '', ''),
(789, '', '', '789', '', 788, 'Plastic Pound Distribution At Gorkha', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '789.jpg', '', '', '', '', '', '', '', ''),
(790, 'प्रशासन, योजना तथा प्रवद्र्धन शाखा ', 'Administration, Planning & Promotion Section', 'admin-planning', 'Header', 625, '', '', '', '', 'Gallery', 9, 'no', '2017-04-30', '', 'normal', 'No', '', '', '', '', '', ''),
(791, 'प्रयोगशाला शाखा ', 'Laboratory Section ', 'lab-section', 'Header', 625, '', '', '', '', 'Gallery', 40, 'no', '2017-04-30', '', 'normal', 'No', '', '', '', '', '', ''),
(792, '', '', '792', '', 788, 'सुधारिएको चुलो निर्माण ', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '792.jpg', '', '', '', '', '', '', '', ''),
(793, '', '', '793', '', 788, 'विषादी र वातावरण विषयक कार्याशाला गोष्ठी', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '793.jpg', '', '', '', '', '', '', '', ''),
(810, 'गाडीको धुवाँ मापन सम्बन्धी ', 'Vesicle emission measurement  ', 'vesicle-emission-audio', 'Navigation', 585, '', '', 'Vehicle emision.mp3', '', 'File', 60, 'no', '2017-05-08', '', 'normal', 'No', '', '', '', '', '', ''),
(717, 'भिडियाे ग्यालेरी', 'Video-gallery', 'video-gallery-panel', 'Header', 685, '', '', 'our-videos', '', 'Link', 10, 'no', '2017-03-28', '', 'normal', 'No', '', '', '', '', '', ''),
(685, 'ग्यालेरी', 'Gallery', 'gallery', 'Header', 0, '', '', '', '', 'Normal Group', 60, 'no', '2017-03-24', '', 'normal', 'No', '', '', '', '', '', ''),
(694, 'BOOK Upload', 'Book-Upload', 'book-upload', 'Navigation', 584, '', '', '', '', 'List', 30, 'no', '2017-03-24', '', 'normal', 'No', '', '', '', '', '', ''),
(718, 'ध्वनी ग्यालेरी', 'Audio Gallery', 'audio-gallery', 'Header', 685, '', '', 'our-audios', '', 'Link', 90, 'no', '2017-03-28', '', 'normal', 'No', '', '', '', '', '', ''),
(783, '', '', '783', '', 626, 'Monitoring the Himalayan Brewery at lalitpur', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '783.jpg', '', '', '', '', '', '', '', ''),
(773, 'ऐन नियमावलीहरू', 'ऐन नियमावलीहरू', 'rules', 'Header', 623, '', '', '', '', 'Normal Group', 10, 'no', '2017-04-27', '', 'normal', 'No', '', '', '', '', '', ''),
(774, 'रिपोर्टहरू', '', 'download-reports', 'Header', 623, '', '', '', '', 'Normal Group', 20, 'no', '2017-04-27', '', 'normal', 'No', '', '', '', '', '', ''),
(775, 'वातावरवणीय मापदण्ड तथा सम्बन्धीत सूचनाहरुको सङ्गालो', 'Collection of Environmental Standards', 'collection-of-environmental-standard', 'Header', 773, '', '', 'Collection of Environmental Standards.pdf', '', 'File', 10, 'no', '2017-04-27', '', 'normal', 'No', '', '', '', '', '', ''),
(776, 'प्लाष्टिक झोला (नियमन तथा नियन्त्रण) निर्देशिका–२०६८', 'Plastic Bag ban Regulation 2068', 'plastic-bag-ban-regulation-2068', 'Header', 773, '', '', '-झोला (नियमन तथा नियन्त्रण) निर्देशिका २०६८.pdf', '', 'File', 20, 'no', '2017-04-27', '', 'normal', 'No', '', '', '', '', '', ''),
(724, '', '', '724', '', 723, 'Noise Measurement at Pokhara', '', '', '', 'GallerySub', 50, 'no', '2017-04-03', '724.jpg', '', '', '', '', '', '', '', ''),
(725, '', '', '725', '', 723, 'Industry monitoring', '', '', '', 'GallerySub', 50, 'no', '2017-04-03', '725.jpg', '', '', '', '', '', '', '', ''),
(742, '', '', '742', '', 723, 'Office of the Department of Environment', '', '', '', 'GallerySub', 50, 'no', '2017-04-13', '742.jpg', '', '', '', '', '', '', '', ''),
(744, '', '', '744', '', 723, 'Air Quality Monitoring Station At Ratanpark', '', '', '', 'GallerySub', 50, 'no', '2017-04-13', '744.jpg', '', '', '', '', '', '', '', ''),
(729, 'वातावरण संरक्षण नियमावली, २०५४ का संशोधनहरु', '', 'environment-preservation-rule', '', 574, 'test info test info test', '', '', '', 'ListSub', 50, 'no', '2017-04-03', '', '', 'no', '', '', '', '', '', ''),
(779, 'जलवायु परिवर्तर्नन नीति, २०६७', 'Climate Change Policy 2067 2011 Nepali', 'climate-change-policy', 'Header', 773, '', '', 'Climate Change Policy 2067 2011 Nepali.pdf', '', 'File', 30, 'no', '2017-04-27', '', 'normal', 'No', '', '', '', '', '', ''),
(731, 'स्वास्थ्य मन्त्रालय', 'Ministry of Health', 'ministry-of-health', 'Important_Links', 0, '', '', 'http://www.mohp.gov.np', '', 'Link', 60, 'no', '2017-04-04', '', 'normal', 'No', '', '', '', '', '', ''),
(732, 'कानून, न्याय तथा संसदीय मामिला मन्त्रालय', 'Ministry of Law and Justice', 'ministry-of-law-and-justice', 'Important_Links', 0, '', '', 'http://www.moljpa.gov.np/', '', 'Link', 70, 'no', '2017-04-04', '', 'normal', 'No', '', '', '', '', '', ''),
(812, 'प्रवक्ता', 'Spokeperson', 'spokeperson', 'Other', 0, 'सफला श्रेष्ठ<br />\r\nउपमहानिर्देशक<br />\r\nफोन नं. ०१&ndash;५५२६३१९, ईक्स १०१', 'Safala Shrestha<br />\r\nDeputy Director General<br />\r\nPhone No. 01-5526319 Ext 101', 'सफला श्रेष्ठ<br />\r\nउपमहानिर्देशक<br />\r\nफोन नं. ०१&ndash;५५२६३१९, ईक्स १०१<br />\r\nमोवाईल नं. ९८४१३७८४१४<br />\r\nईमेल safalashrestha@yahoo.com', 'Safala Shrestha<br />\r\nDeputy Director General<br />\r\nPhone No. 01-5526319 Ext 101<br />\r\nMobile No 9841368414<br />\r\nEmail&nbsp;safalashrestha@yahoo.com', 'Contents Page', 180, 'no', '2017-05-15', 'DDG.jpg', 'normal', 'No', '', '', '', '', '', ''),
(756, 'कम्प्युटर अपरेटर (रा.प.अनं. प्र. विविध)', 'Computer Operator', 'comp-operator', 'Header', 654, '', '', '', '', 'Normal Group', 60, 'no', '2017-04-26', '', 'normal', 'No', '', '', '', '', '', ''),
(758, 'कम्प्यूटर अधिकृत (रा.प.तृतीय, विविध)', 'Computer Officer', 'computer-officer-1', 'Header', 611, '', '', '', '', 'Normal Group', 60, 'no', '2017-04-26', '', 'normal', 'No', '', '', '', '', '', ''),
(759, 'वातावरण निरीक्षक (रा.प.तृतीय, विविध)', 'Environment Inspector', 'envi-inspector', 'Header', 611, '', '', '', '', 'Normal Group', 70, 'no', '2017-04-26', '', 'normal', 'No', '', '', '', '', '', ''),
(760, 'वातावरण विभागका कर्मचारीहरुको विवरण', '', 'name-list-staff', '', 622, 'Staff name List of Department of Environment', '', 'Staff name List of Department of Environment', '', 'ListSub', 10, 'no', '2017-04-26', '', '', 'no', '', '', '', '', '', ''),
(794, 'वातावरण विभागको ब्रोसर', '', 'department-of-browser', '', 765, '', '', '', '', 'ListSub', 40, 'no', '2017-04-30', '', '', 'no', '', '', '', '', '', ''),
(795, 'आ.व.२०७३/७४ को सुचिकृत फर्महरुको नामावली', '', 'suchidarta-list', '', 574, '', '', '', '', 'ListSub', 60, 'no', '2017-04-30', '', '', 'no', '', '', '', '', '', ''),
(797, '', '', '797', '', 628, 'Interaction program about EIA At Pokhara', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '797.png', '', '', '', '', '', '', '', ''),
(798, '', '', '798', '', 628, 'Landfill site monitoring At Jhapa', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '798.jpg', '', '', '', '', '', '', '', ''),
(799, '', '', '799', '', 628, 'Sukhani Martyrs Monitoring At Jhapa', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '799.jpg', '', '', '', '', '', '', '', ''),
(800, '', '', '800', '', 628, 'Surya Nepal Monitoring At Bara', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '800.jpg', '', '', '', '', '', '', '', ''),
(801, '', '', '801', '', 790, 'Interaction program at Nuwakot about Cleaning', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '801.jpg', '', '', '', '', '', '', '', ''),
(802, '', '', '802', '', 790, 'Cleaning Camp', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '802.jpg', '', '', '', '', '', '', '', ''),
(803, '', '', '803', '', 790, 'Sindhuli cleaning camp', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '803.jpg', '', '', '', '', '', '', '', ''),
(804, '', '', '804', '', 790, 'Cleaning camp at manthali Ramaichhap', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '804.jpg', '', '', '', '', '', '', '', ''),
(805, '', '', '805', '', 790, 'सरसफाई समाग्री हस्तान्तरण', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '805.jpg', '', '', '', '', '', '', '', ''),
(806, '', '', '806', '', 790, 'Nuwakot Interaction Program about Cleaning Camp', '', '', '', 'GallerySub', 50, 'no', '2017-04-30', '806.jpg', '', '', '', '', '', '', '', ''),
(811, 'वागमती नदीको किनारमा वातावरण वाटिका', 'Environmental Garden on bagmati river side', 'environmental-garden', 'Navigation', 601, '', '', 'https://www.youtube.com/embed/ZtXvaBy4_dE', '', 'Link', 60, 'no', '2017-05-08', '', 'normal', 'No', '', '', '', '', '', ''),
(815, 'विश्व वातावरण दिवस २०७४ को उपलक्ष्यमा वातावरण विभागका महानिर्देशकको सन्देश', '', 'message-from-dg-for-world-environment-day', '', 574, 'विश्व वातावरण दिवस २०७४ को उपलक्ष्यमा वातावरण विभागका महानिर्देशकको सन्देश', '', 'विश्व वातावरण दिवस २०७४ को उपलक्ष्यमा वातावरण विभागका महानिर्देशकको सन्देश', '', 'ListSub', 1, 'no', '2017-06-04', '', '', 'no', '', '', '', '', '', ''),
(821, 'जलवायु अनुकुलित गाउँ कार्यक्रमको कार्य विधि दोस्रो संसोधन', '', 'csv-action-plan-review', '', 574, 'जलवायु अनुकुलित गाउँ कार्यक्रमको कार्य विधि दोस्रो संसोधन', '', 'जलवायु अनुकुलित गाउँ कार्यक्रमको कार्य विधि दोस्रो संसोधन', '', 'ListSub', 70, 'no', '2017-06-07', '', '', 'no', '', '', '', '', '', ''),
(820, 'जलवायु अनुकुलित गाउँ कार्यक्रमको कार्य विधि दोस्रो संसोधन', 'Climate Smart Village Action Plan', 'csv-action-plan-2-edition', 'Header', 773, '', '', 'Climate Smart Village Actions Plan.pdf', '', 'File', 60, 'no', '2017-06-07', '', 'normal', 'No', '', '', '', '', '', ''),
(823, 'Photo ', 'Photo', 'photo', 'Navigation', 584, '', '', '', '', 'Gallery', 40, 'no', '2017-06-08', '', 'normal', 'No', '', '', '', '', '', ''),
(824, 'Final report', 'Final report', 'final-report', 'Our_Documents', 0, '', '', 'Fina Report IEMIS 2 AQI and PEI June 2016.pdf', '', 'File', 10, 'no', '2017-06-08', '', 'normal', 'No', '', '', '', '', '', ''),
(825, '123', '123', '123', 'Our_Documents', 0, '', '', '9781461467168-c1.pdf', '', 'File', 20, 'no', '2017-06-08', '', 'normal', 'No', '', '', '', '', '', ''),
(826, 'dsf', 'dsfdsf', 'dsf', 'Our_Documents', 0, '', '', '404.php', '', 'File', 30, 'no', '2017-06-09', '', 'normal', 'No', '', '', '', '', '', ''),
(827, 'डी डी जी को संदेश', 'Message from DDG', 'message-from-ddg', 'Other', 0, '', '', '', '', 'Contents Page', 190, 'no', '2017-06-12', 'no-image-icon.png', 'normal', 'No', '', '', '', '', '', ''),
(828, 'हाम्रा डकुमेन्टहरु', 'Our Documents', 'our-documents', 'Header', 0, '', '', 'our_documents', '', 'Link', 70, 'no', '2017-07-10', '', 'normal', 'No', '', '', '', '', '', ''),
(829, 'tset', '', 'tsetsdfsd', '', 574, 'dsfsdf', '', 'sdfsd', '', 'ListSub', 65, 'no', '2017-07-10', '', '', 'no', '', '', '', '', '', ''),
(830, 'tetet', '', 'tetet', '', 765, 'dfg', '', 'dfgdfg', '', 'ListSub', 50, 'no', '2017-07-10', '', '', 'no', '', '', '', '', '', ''),
(831, '', '', '831', '', 723, '', '', '', '', 'GallerySub', 50, 'no', '2017-07-14', '831.jpg', '', '', '', '', '', '', '', ''),
(832, 'test test publication', '', 'test-test-publication', '', 765, 'test', '', 'test', '', 'ListSub', 60, 'no', '2017-07-18', '', '', 'no', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `listingfiles`
--

CREATE TABLE IF NOT EXISTS `listingfiles` (
`id` int(11) NOT NULL,
  `caption` text NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `listingId` int(11) NOT NULL DEFAULT '0',
  `onDate` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listingfiles`
--

INSERT INTO `listingfiles` (`id`, `caption`, `filename`, `listingId`, `onDate`) VALUES
(12, '', 'anudan.pdf', 496, 2016),
(2, '', 'google tricks1.txt', 323, 2015),
(3, '', 'google tricks2.txt', 324, 2015),
(4, '', 'google tricks2.txt', 325, 2015),
(5, '', 'Progress  2071.72  Agri.xls', 351, 2015),
(6, '', 'Progress  2071.72  Ext.xls', 352, 2015),
(7, '', 'Progress 2070.71 Horti.xls', 353, 2015),
(8, '', 'Progress  3 rd 2071.72 Agri..xls', 354, 2015),
(9, '', 'Progress  3 rd 2071.72 Ext..xls', 355, 2015),
(10, '', 'anudan.pdf', 324, 2016),
(11, '', 'anudan.pdf', 322, 2016),
(13, '', 'Mato Biseshanka-2072.pdf', 497, 2016),
(14, '', 'Annual Report 2071-72.pdf', 520, 2016),
(15, '', '024_Digo mato vyawasthapan bibidh pakshyaharu.pdf', 522, 2016),
(16, '', 'Annual Report 2069-70.pdf', 520, 2016),
(17, '', 'Annual Report 2068-69.pdf', 520, 2016),
(18, '', 'Ekikrit khadhyatwo byawasthapan karyapustika.pdf', 522, 2016),
(19, '', 'Ekikrit khadhyatwo byawasthapan krishak pathsala.pdf', 522, 2016),
(20, '', 'Mato Parishyan pustika.pdf', 522, 2016),
(21, '', 'Kshetriya mato parichyan prayogshala.pdf', 522, 2016),
(22, '', 'National workshop on sustainable soil management programe.pdf', 522, 2016),
(25, '', 'Components of IPNS.pdf', 522, 2016),
(26, '', 'Mato jachne kit box sanchalan nirdesika.pdf', 522, 2016),
(27, '', 'Mato ko urbarasakti naksa, bibaran ra mato sudhaar ko sifaris - ek jhalak.pdf', 522, 2016),
(28, '', 'Mato tatha malkhadi byawastha sambandhi.pdf', 522, 2016),
(29, '', 'Study report on organic manure and nutrients.pdf', 522, 2016),
(30, '', 'Summary report of review and planning workshop on sustainable soil management programe.pdf', 522, 2016),
(31, '', 'Tarkari balima khadatwo kami va badiko lakshyan haru part-1.pdf', 522, 2016),
(32, '', 'Tarkari balima khadhatwo kami tatha badi lakshyanharu_Part-2.pdf', 522, 2016),
(33, '', 'Workshop on soil fertility management activities in Nepal_Searchable.pdf', 522, 2016),
(34, '', 'Workshop on soil fertility management programe and working procedure.pdf', 522, 2016),
(35, '', 'Soil Fertility  Map  of Myagdi.pdf', 523, 2016),
(36, '', 'Soil fertility Map of Arghakhachi.pdf', 523, 2016),
(37, '', 'Soil fertility map of baglung.pdf', 523, 2016),
(38, '', 'Soil Fertility Map of Banke.pdf', 523, 2016),
(39, '', 'Soil Fertility Map of Chitwan Irrigation and East Rapti.pdf', 523, 2016),
(40, '', 'Soil Fertility Map of Dadeldhura.pdf', 523, 2016),
(41, '', 'Soil fertility Map of Dailekh.pdf', 523, 2016),
(42, '', 'Soil Fertility Map of Dang.pdf', 523, 2016),
(43, '', 'Soil Fertility Map of Dolakha.pdf', 523, 2016),
(44, '', 'Soil Fertility Map of Gulmi.pdf', 523, 2016),
(45, '', 'Soil Fertility Map of Jajarkot.pdf', 523, 2016),
(46, '', 'Soil Fertility Map of Jumla.pdf', 523, 2016),
(47, '', 'Soil fertility map of Khotang.pdf', 523, 2016),
(48, '', 'Soil Fertility Map of Lamjung.pdf', 523, 2016),
(49, '', 'Soil Fertility Map of Lele.pdf', 523, 2016),
(50, '', 'Soil Fertility Map of Mahottari.pdf', 523, 2016),
(51, '', 'Soil Fertility Map of Makwanpur.pdf', 523, 2016),
(52, '', 'Soil Fertility Map of Okhaldhunga.pdf', 523, 2016),
(53, '', 'Soil Fertility Map of Palpa.pdf', 523, 2016),
(58, '', 'Soli Fertility map of Kalikot.pdf', 523, 2016),
(59, '', 'Soil Fertility Map of Syangja.pdf', 523, 2016),
(60, '', 'Soil Fertility Map of Ramechhap.pdf', 523, 2016),
(61, '', 'Soil Fertility Map of Parbat.pdf', 523, 2016),
(62, '', 'Soil Fertility Map of Parsa.pdf', 523, 2016),
(63, '', 'Soil Fertility Map of Pyuthan.pdf', 523, 2016),
(64, '', 'Soil Fertility Map of Rupandehi.pdf', 523, 2016),
(65, '', 'Soil Fertility Map of Sindhuli.pdf', 523, 2016),
(66, '', 'Soil Fertility Map of Surkhet.pdf', 523, 2016),
(67, '', 'Soil Fertility Map of Terathum.pdf', 523, 2016),
(68, '', 'Bhakaro Sudhar Karyabidhi.pdf', 524, 2016),
(69, '', 'Bio-fertilizer.pdf', 524, 2016),
(70, '', 'Green manures.pdf', 524, 2016),
(71, '', 'Brochure Bhakaro.pdf', 524, 2016),
(72, '', 'Sampling.pdf', 524, 2016),
(73, '', 'Soil Management Norms.pdf', 524, 2016),
(74, '', 'Vermi-composting.pdf', 524, 2016),
(75, '', 'Brief Introduction.pdf', 525, 2016),
(76, '', 'mal.pdf', 527, 2016),
(92, '', 'OM Registration Sheet 2073.xlsx', 528, 2016),
(79, 'Karyabidhi organic fertilizer regulation', 'Karyabidhi organic fertilizer regulation.pdf', 532, 2016),
(80, '', 'O.F regulation Karyabidhi District levrl.pdf', 533, 2016),
(81, '', 'organic fertilizer subsidy guideline 2068.pdf', 534, 2016),
(82, '', 'Rhizobium tender notice.pdf', 535, 2016),
(84, '', 'kulprasad(world egg day) 4.pdf', 541, 2016),
(86, '', 'Lab equipments and glassware tender notice 2073.pdf', 542, 2016),
(93, '', 'test.pdf', 575, 2147483647),
(94, '', 'test.pdf', 575, 2147483647),
(95, '', '2c9e58c9-86d5-46ee-9380-12f44fadd29a.pdf', 711, 2017),
(96, '', 'NationalPortal_revamp_EOI_Advertisement.pdf', 711, 2017),
(97, '', 'Who is who1.pdf', 711, 2017),
(98, '', '2c9e58c9-86d5-46ee-9380-12f44fadd29a.pdf', 712, 2017),
(99, '', '2c9e58c9-86d5-46ee-9380-12f44fadd29a.pdf', 712, 2017),
(100, '', '2c9e58c9-86d5-46ee-9380-12f44fadd29a.pdf', 712, 2017),
(101, 'air pol', '2c9e58c9-86d5-46ee-9380-12f44fadd29a.pdf', 716, 2017),
(102, 'air book', 'Who is who1.pdf', 716, 2017),
(103, 'THE SUPPLY, INSTALLATION, TRAINING AND DEMONSTRATION OPERATION OF LABORATORY INSTRUMENTS', 'LAB Equipment Tender.pdf', 745, 2147483647),
(104, '?????????? ??????? ??? ????????? ?????????? ???????', 'Collection of Environmental Standards.pdf', 749, 2147483647),
(105, '', 'Collection of Environmental Standards.pdf', 751, 2147483647),
(106, 'Collection of Environmental Standards', 'Collection of Environmental Standards.pdf', 755, 2147483647),
(107, 'Staff Name List of DoEnv', 'Name List of Staff of DoEnv.pdf', 760, 2147483647),
(108, '??????? ????????, ????', 'Final_Setting_PDF_FORMAT_2071.04.05_3.40PM.pdf', 766, 2147483647),
(109, 'Journal of Environment Sciences Vol-1', 'Journal_of_Environment_Sciences_Vol_1.pdf', 767, 2147483647),
(111, 'Journal of Environment Sciences Vol-2', 'Environment book inner page 2016.pdf', 780, 2147483647),
(112, '??????? ??????? ??????', 'Broucher ban.indd.pdf', 794, 2147483647),
(113, '?.?.????/?? ?? ??????? ????????? ???????', 'Suchi darta List of 2073_74.pdf', 795, 2147483647),
(115, '????? ??????? ???? ???? ?? ?????????? ??????? ??????? ????????????? ??????', 'World Environment Day 2017.jpg', 815, 2147483647),
(116, '', 'VB Script Consultant .pdf', 822, 2147483647),
(117, '', 'Climate Smart Village Actions Plan.pdf', 821, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `onDate` date NOT NULL,
  `publish` varchar(3) NOT NULL,
  `weight` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `name`, `onDate`, `publish`, `weight`) VALUES
(5, 'test region1', '2017-12-27', 'No', 10),
(6, 'test region 2', '2017-12-26', 'Yes', 20),
(7, 'Test region 3', '2017-12-26', 'Yes', 30);

-- --------------------------------------------------------

--
-- Table structure for table `rel_father`
--

CREATE TABLE IF NOT EXISTS `rel_father` (
`id` int(30) NOT NULL,
  `memberId` int(30) NOT NULL,
  `fatherId` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rel_mother`
--

CREATE TABLE IF NOT EXISTS `rel_mother` (
`id` int(30) NOT NULL,
  `memberId` int(30) NOT NULL,
  `motherId` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
`id` int(10) NOT NULL,
  `image` varchar(250) NOT NULL DEFAULT '',
  `name` varchar(250) NOT NULL DEFAULT '',
  `address` varchar(250) NOT NULL,
  `comments` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `onDate` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE IF NOT EXISTS `usergroups` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` int(20) NOT NULL,
  `publish` varchar(3) NOT NULL,
  `weight` int(10) NOT NULL,
  `onDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usergroups`
--

INSERT INTO `usergroups` (`id`, `name`, `username`, `password`, `email`, `address`, `phone`, `publish`, `weight`, `onDate`) VALUES
(59, 'Ganesh', '5ganes', '5ganes', 'kh6ganesh@gmail.com', 'Putalidadak, Kathmandu', 2147483647, 'Yes', 10, '2017-06-08'),
(60, 'Anish', 'anish', 'shrestha', 'anish.shrestha.1989@gmail.com', 'Kathmandu', 2147483647, 'Yes', 20, '2017-06-08'),
(61, 'Bhishma Raj Subedi', 'indragufa@gmail.com', 'sbhishma', 'Bhumekot123@gmail.com', 'Kaski, Hansapur', 2147483647, 'No', 30, '2017-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `lastLogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `loginTimes` int(10) unsigned NOT NULL DEFAULT '0',
  `status` enum('A','D') NOT NULL DEFAULT 'D',
  `userGroupId` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `lastLogin`, `loginTimes`, `status`, `userGroupId`) VALUES
(1, 'admin', 'chapagain_123_#', '2017-12-27 12:11:37', 479, 'A', 1),
(2, 'manager', 'manager', '2017-01-12 21:32:00', 36, 'A', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family`
--
ALTER TABLE `family`
 ADD PRIMARY KEY (`id`), ADD KEY `gotraId` (`gotraId`), ADD KEY `regionId` (`regionId`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gotra`
--
ALTER TABLE `gotra`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `urlname` (`urlname`);

--
-- Indexes for table `listingfiles`
--
ALTER TABLE `listingfiles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `rel_father`
--
ALTER TABLE `rel_father`
 ADD PRIMARY KEY (`id`), ADD KEY `fatherId` (`fatherId`), ADD KEY `memberId` (`memberId`);

--
-- Indexes for table `rel_mother`
--
ALTER TABLE `rel_mother`
 ADD PRIMARY KEY (`id`), ADD KEY `motherId` (`motherId`), ADD KEY `memberId` (`memberId`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gotra`
--
ALTER TABLE `gotra`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=833;
--
-- AUTO_INCREMENT for table `listingfiles`
--
ALTER TABLE `listingfiles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `rel_father`
--
ALTER TABLE `rel_father`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rel_mother`
--
ALTER TABLE `rel_mother`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `family`
--
ALTER TABLE `family`
ADD CONSTRAINT `gotraFamilyId` FOREIGN KEY (`gotraId`) REFERENCES `gotra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `regionFamilyId` FOREIGN KEY (`regionId`) REFERENCES `region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rel_father`
--
ALTER TABLE `rel_father`
ADD CONSTRAINT `rel_father_fatherId` FOREIGN KEY (`fatherId`) REFERENCES `family` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `rel_father_memberId` FOREIGN KEY (`memberId`) REFERENCES `family` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rel_mother`
--
ALTER TABLE `rel_mother`
ADD CONSTRAINT `rel_mother_memberId` FOREIGN KEY (`memberId`) REFERENCES `family` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `rel_mother_motherId` FOREIGN KEY (`motherId`) REFERENCES `family` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
