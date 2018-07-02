-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2018 at 07:43 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`id`, `name`, `birthDate`, `email`, `phone`, `maritalStatus`, `gotraId`, `regionId`, `gender`, `image`, `publish`, `onDate`, `weight`) VALUES
(8, 'first father', '2018-01-11', 'fristfather@gmail.com', '98769867', 'Married', 9, 6, 'Male', '', 'Yes', '2018-01-02', 20),
(9, 'First mother', '2018-01-30', 'firstmother@gmail.com', '8977878', 'Married', 9, 7, 'Female', '', 'Yes', '2018-01-02', 30),
(13, 'first child male', '2018-01-03', 'gfgf', '456456', 'Married', 9, 6, 'Male', '', 'Yes', '2018-01-02', 40),
(14, 'first child female', '2018-01-13', 'fsdfk@gmail.com', '5464565', 'Married', 9, 7, 'Female', '', 'Yes', '2018-01-02', 50),
(15, 'ramesh Chaudhary', '0000-00-00', 'ramesh@gmail.com', '456456676', 'Married', 9, 6, 'Male', '', 'Yes', '2018-01-02', 60);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `address`, `phone`, `email`, `subject`, `comment`, `onDate`) VALUES
(11, 'Ganesh', 'Ktm', '8988', 'kh6ganesh@gmail.com', 'test sub', 'test comment', '2018-01-04 18:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `gotra`
--

CREATE TABLE IF NOT EXISTS `gotra` (
`id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `onDate` date NOT NULL,
  `publish` varchar(3) NOT NULL,
  `weight` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gotra`
--

INSERT INTO `gotra` (`id`, `name`, `onDate`, `publish`, `weight`) VALUES
(9, 'First gotra', '2017-12-26', 'Yes', 10),
(13, 'Second Gotra', '2018-01-02', 'Yes', 20);

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
) ENGINE=MyISAM AUTO_INCREMENT=875 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `nameen`, `urlname`, `type`, `parentId`, `shortcontents`, `shortcontentsen`, `contents`, `contentsen`, `linkType`, `weight`, `hide`, `onDate`, `image`, `display`, `featured`, `block`, `transportation`, `pageTitle`, `pageKeyword`, `activity`, `publish`) VALUES
(56, '&#2327;&#2371;&#2361; &#2346;&#2371;&#2359;&#2381;&#8205;&#2336;', 'Home', 'home', 'Header', 0, '', '', 'home', '', 'Link', 10, 'no', '2012-12-13', '', 'normal', 'No', '', '', '', '', '', ''),
(176, 'Welcome to Chapagain Family Samaj', 'Welcome to Department of Environment', 'welcome-to-chapagain-family-samaj', 'Other', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<p style="text-align:justify">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n', '<p style="text-align:justify">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n', 'Contents Page', 20, 'no', '2013-11-26', 'sajjad.php', 'normal', 'No', '', '', '', '', '', ''),
(860, 'Sixth Member', 'Sixth Member', 'sixth-member', 'Other', 854, 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Contents Page', 60, 'no', '2018-01-04', 'user.png', 'normal', 'No', '', '', '', '', '', ''),
(861, 'Seventh Member', 'Seventh Member', 'seventh-member', 'Other', 854, 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Contents Page', 70, 'no', '2018-01-04', 'user.png', 'normal', 'No', '', '', '', '', '', ''),
(862, 'Eighth Member', 'Eighth Member', 'eighth-member', 'Other', 854, 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Contents Page', 80, 'no', '2018-01-04', 'user.png', 'normal', 'No', '', '', '', '', '', ''),
(863, 'Photo Gallery', 'Photo Gallery', 'photo-gallery', 'Other', 0, '', '', '', '', 'Gallery', 190, 'no', '2018-01-04', '', 'normal', 'No', '', '', '', '', '', ''),
(872, '', '', '872', '', 863, '', '', '', '', 'GallerySub', 50, 'no', '2018-03-20', '872.jpg', '', '', '', '', '', '', '', ''),
(865, '', '', '865', '', 863, 'Second photo', '', '', '', 'GallerySub', 50, 'no', '2018-01-04', '865.jpg', '', '', '', '', '', '', '', ''),
(866, '', '', '866', '', 863, 'third photo', '', '', '', 'GallerySub', 50, 'no', '2018-01-04', '866.jpg', '', '', '', '', '', '', '', ''),
(867, '', '', '867', '', 863, 'fourth photo', '', '', '', 'GallerySub', 50, 'no', '2018-01-04', '867.jpg', '', '', '', '', '', '', '', ''),
(582, 'Video', 'Video', 'video', 'Other', 0, '', '', 'https://www.youtube.com/embed/h5YCbLUcpLs', '', 'Link', 160, 'no', '2017-03-08', '', 'normal', 'No', '', '', '', '', '', ''),
(854, 'Samaj Team Members', 'Samaj Team Members', 'samaj-team-members', 'Other', 0, '', '', '', '', 'Normal Group', 180, 'no', '2018-01-04', '', 'normal', 'No', '', '', '', '', '', ''),
(855, 'First Team Member', 'First Team Member', 'first-team-member', 'Other', 854, 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Contents Page', 10, 'no', '2018-01-04', 'user.png', 'normal', 'No', '', '', '', '', '', ''),
(856, 'Second Member', 'Second Member', 'second-member', 'Other', 854, 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Contents Page', 20, 'no', '2018-01-04', 'user.png', 'normal', 'No', '', '', '', '', '', ''),
(857, 'Third Member', 'Third Member', 'third-member', 'Other', 854, 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Contents Page', 30, 'no', '2018-01-04', 'user.png', 'normal', 'No', '', '', '', '', '', ''),
(858, 'Fourth Member', 'Fourth Member', 'fourth-member', 'Other', 854, 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Contents Page', 40, 'no', '2018-01-04', 'user.png', 'normal', 'No', '', '', '', '', '', ''),
(859, 'Fifth Member', 'Fifth Member', 'fifth-member', 'Other', 854, 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Name: Firstname Surname<br />\r\n<br />\r\nPosition: Test Position<br />\r\n<br />\r\nAddress: Kalimati<br />\r\n<br />\r\nEmail: testemail@gmail.com<br />\r\n<br />\r\nPhone: 8977897878', 'Contents Page', 50, 'no', '2018-01-04', 'user.png', 'normal', 'No', '', '', '', '', '', ''),
(338, 'हाम्रो बारेमा', 'About Us', 'about-us', 'Header', 0, 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of L', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of L', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of L', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of L', 'Normal Group', 20, 'no', '2015-04-07', '', 'normal', 'No', '', '', '', '', '', ''),
(868, 'Our Missions', 'Our Missions', 'our-missions', 'Header', 338, '', '', '', '', 'Contents Page', 10, 'no', '2018-01-04', '', 'normal', 'No', '', '', '', '', '', ''),
(869, 'Our Vision', 'Our Vision', 'our-vision', 'Header', 338, '', '', '', '', 'Contents Page', 20, 'no', '2018-01-04', '', 'normal', 'No', '', '', '', '', '', ''),
(870, 'Our Aims', 'Our Aims', 'our-aims', 'Header', 338, '', '', '', '', 'Contents Page', 30, 'no', '2018-01-04', '', 'normal', 'No', '', '', '', '', '', ''),
(373, '&#2349;&#2367;&#2337;&#2367;&#2351;&#2379;', 'Official-Video', 'youtube', 'Other', 0, '', '', 'https://www.youtube.com/embed/sw0jlvkH9KA', '', 'Link', 140, 'no', '2016-06-15', '', 'normal', 'No', '', '', '', '', '', ''),
(274, 'Message From Chief', 'Message From Chief', 'message-from-chief', 'Other', 0, 'hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;', 'hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;', '<p style="text-align:justify">hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;</p>\r\n', '<p style="text-align:justify">hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;hello world&nbsp;</p>\r\n', 'Contents Page', 30, 'no', '2014-04-22', 'user.png', 'normal', 'No', '', '', '', '', '', ''),
(723, 'Slider', 'Slider', 'slider', 'Other', 0, '', '', '', '', 'Gallery', 170, 'no', '2017-04-03', '', 'normal', 'No', '', '', '', '', '', ''),
(847, 'Important Links', 'Important Links', 'important-links', 'Header', 0, 'Hello', '', 'hello', 'hello', 'Normal Group', 40, 'no', '2018-01-04', '', 'normal', 'No', '', '', '', '', '', ''),
(848, 'ICT in Agriculture Nepal', 'ICT in Agriculture Nepal', 'ict-in-agriculture-nepal', 'Header', 847, '', '', 'http://krishighar.com', '', 'Link', 10, 'no', '2018-01-04', '', 'normal', 'No', '', '', '', '', '', ''),
(624, 'सम्पर्क', 'Contact', 'contact-us', 'Header', 0, 'Test Contact Place<br />\r\n676767,67676, 67667<br />\r\nफ्याक्स नम्बर :&nbsp; 67676786787<br />\r\nईमेल ठेगाना :&nbsp; 5645645646756<br />\r\nबेव साईट www.test.com', 'Test Contact Place<br />\r\n676767,67676, 67667<br />\r\nफ्याक्स नम्बर :&nbsp; 67676786787<br />\r\nईमेल ठेगाना :&nbsp; 5645645646756<br />\r\nबेव साईट www.test.com', 'Test Contact Place<br />\r\n676767,67676, 67667<br />\r\nफ्याक्स नम्बर :&nbsp; 67676786787<br />\r\nईमेल ठेगाना :&nbsp; 5645645646756<br />\r\nबेव साईट www.test.com\r\n<div style="display: none;"><a href="http://www.o3interactive.net/">porno gif</a> <a href="http://amcik.amressimleri.xyz/">porno resimleri</a> <a href="http://www.amressimleri.xyz/seks-resimleri.html">Seks Resimleri</a>- <a href="http://www.amressimleri.xyz/am-resimleri.html">Am Resimleri</a>- <a href="http://www.amressimleri.xyz/meme-resimleri.html">Meme Resimleri</a>- <a href="http://www.amressimleri.xyz/turbanli-resimleri.html">Turbanli Resimleri</a> <a href="http://www.amressimleri.xyz/adult-resimleri.html">Adult Resimleri</a>- <a href="http://www.grossbrusteporno.com/">pornofilme</a>- <a href="http://virus.temizleme.org/">cep telefonu virus temizleme</a>- <a href="http://virus.temizleme.org/telefonda-virus-oldugu-nasil-anlasilir/">telefonda virus oldugu nasil anlasilir</a>- <a href="http://virus.temizleme.org/cep-telefonuna-virus-nasil-bulasir/">telefona virus nasil bulasir</a>- <a href="http://virus.temizleme.org/cep-telefonuma-bulasan-virusleri-nasil-temizlerim/">telefonuma bulasan virusleri nasil temizlerim</a>- <a href="http://virus.temizleme.org/telefon-virus-temizleme-programi/">telefon virus temizleme programi</a>- <a href="http://virus.temizleme.org/telefonu-fabrika-ayarlarina-dondurme/">telefonu fabrika ayarlarina dondurme</a>-</div>\r\n', 'Test Contact Place<br />\r\n676767,67676, 67667<br />\r\nफ्याक्स नम्बर :&nbsp; 67676786787<br />\r\nईमेल ठेगाना :&nbsp; 5645645646756<br />\r\nबेव साईट www.test.com\r\n<div style="display: none;"><a href="http://www.o3interactive.net/">porno gif</a> <a href="http://amcik.amressimleri.xyz/">porno resimleri</a> <a href="http://www.amressimleri.xyz/seks-resimleri.html">Seks Resimleri</a>- <a href="http://www.amressimleri.xyz/am-resimleri.html">Am Resimleri</a>- <a href="http://www.amressimleri.xyz/meme-resimleri.html">Meme Resimleri</a>- <a href="http://www.amressimleri.xyz/turbanli-resimleri.html">Turbanli Resimleri</a> <a href="http://www.amressimleri.xyz/adult-resimleri.html">Adult Resimleri</a>- <a href="http://www.grossbrusteporno.com/">pornofilme</a>- <a href="http://virus.temizleme.org/">cep telefonu virus temizleme</a>- <a href="http://virus.temizleme.org/telefonda-virus-oldugu-nasil-anlasilir/">telefonda virus oldugu nasil anlasilir</a>- <a href="http://virus.temizleme.org/cep-telefonuna-virus-nasil-bulasir/">telefona virus nasil bulasir</a>- <a href="http://virus.temizleme.org/cep-telefonuma-bulasan-virusleri-nasil-temizlerim/">telefonuma bulasan virusleri nasil temizlerim</a>- <a href="http://virus.temizleme.org/telefon-virus-temizleme-programi/">telefon virus temizleme programi</a>- <a href="http://virus.temizleme.org/telefonu-fabrika-ayarlarina-dondurme/">telefonu fabrika ayarlarina dondurme</a>-</div>\r\n', 'Contents Page', 90, 'no', '2017-03-14', '', 'normal', 'No', '', '', '', '', '', ''),
(871, 'Family Report', 'Generate Family Report', 'family-report', 'Header', 0, '', '', 'family-report', '', 'Link', 50, 'no', '2018-01-04', 'user.png', 'normal', 'No', '', '', '', '', '', ''),
(839, 'News / Notice', 'News / Notice', 'news-notice', 'Header', 0, '', '', '', '', 'List', 30, 'no', '2018-01-04', '', 'normal', 'No', '', '', '', '', '', ''),
(840, 'Local News 1', '', 'local-news-1', '', 839, 'Local News 11', '', 'Local News 1', '', 'ListSub', 10, 'no', '2018-01-04', '', '', 'no', '', '', '', '', '', ''),
(841, 'Local News 2', '', 'local-news-2', '', 839, 'Local News 2', '', 'Local News 2', '', 'ListSub', 20, 'no', '2018-01-04', '', '', 'no', '', '', '', '', '', ''),
(842, 'Local News 3', '', 'local-news-3', '', 839, 'Local News 3', '', 'Local News 3', '', 'ListSub', 30, 'no', '2018-01-04', '', '', 'no', '', '', '', '', '', ''),
(843, 'Local News 4', '', 'local-news-4', '', 839, 'Local News 4', '', 'Local News 4', '', 'ListSub', 40, 'no', '2018-01-04', '', '', 'no', '', '', '', '', '', ''),
(844, 'Local News 5', '', 'local-news-5', '', 839, '', '', '', '', 'ListSub', 50, 'no', '2018-01-04', '', '', 'no', '', '', '', '', '', ''),
(845, 'Local News 6', '', 'local-news-6', '', 839, '', '', '', '', 'ListSub', 60, 'no', '2018-01-04', '', '', 'no', '', '', '', '', '', ''),
(846, 'Local News 7', '', 'local-news-7', '', 839, '', '', '', '', 'ListSub', 70, 'no', '2018-01-04', '', '', 'no', '', '', '', '', '', ''),
(849, 'Test Link 1', 'Test Link 1', 'test-link-1', 'Header', 847, '', '', 'http://krishighar.com', '', 'Link', 20, 'no', '2018-01-04', '', 'normal', 'No', '', '', '', '', '', ''),
(850, 'Test Link 2', 'Test Link 2', 'test-link-2', 'Header', 847, '', '', 'http://krishighar.com', '', 'Link', 30, 'no', '2018-01-04', '', 'normal', 'No', '', '', '', '', '', ''),
(851, 'Test Link 3', 'Test Link 3', 'test-link-3', 'Header', 847, '', '', 'http://krishighar.com', '', 'Link', 40, 'no', '2018-01-04', '', 'normal', 'No', '', '', '', '', '', ''),
(852, 'Test Link 4', 'Test Link 4', 'test-link-4', 'Header', 847, '', '', 'http://krishighar.com', '', 'Link', 50, 'no', '2018-01-04', '', 'normal', 'No', '', '', '', '', '', ''),
(853, 'Test Link 5', 'Test Link 5', 'test-link-5', 'Header', 847, '', '', 'http://krishighar.com', '', 'Link', 60, 'no', '2018-01-04', '', 'normal', 'No', '', '', '', '', '', ''),
(836, '', '', '836', '', 723, '', '', '', '', 'GallerySub', 50, 'no', '2018-01-04', '836.jpg', '', '', '', '', '', '', '', ''),
(837, '', '', '837', '', 723, '', '', '', '', 'GallerySub', 50, 'no', '2018-01-04', '837.jpg', '', '', '', '', '', '', '', ''),
(838, '', '', '838', '', 723, '', '', '', '', 'GallerySub', 50, 'no', '2018-01-04', '838.jpg', '', '', '', '', '', '', '', ''),
(873, '', '', '873', '', 863, '', '', '', '', 'GallerySub', 50, 'no', '2018-03-20', '873.png', '', '', '', '', '', '', '', ''),
(874, 'Clairs Careers', 'Clairs Careers', 'clairs-careers', 'Header', 0, 'Claire&rsquo;s Cars currently has no job opportunities available, but keep checking as new positions become available regularly!', 'Claire&rsquo;s Cars currently has no job opportunities available, but keep checking as new positions become available regularly!', 'Claire&rsquo;s Cars currently has no job opportunities available, but keep checking as new positions become available regularly!', 'Claire&rsquo;s Cars currently has no job opportunities available, but keep checking as new positions become available regularly!', 'Contents Page', 100, 'no', '2018-03-27', '', 'normal', 'No', '', '', '', '', '', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

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
(117, '', 'Climate Smart Village Actions Plan.pdf', 821, 2147483647),
(122, '', 'Bio-fertilizer.pdf', 840, 2147483647),
(123, '', 'Green manures.pdf', 840, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
`id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `onDate` date NOT NULL,
  `publish` varchar(3) NOT NULL,
  `weight` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `name`, `onDate`, `publish`, `weight`) VALUES
(6, 'test region 2', '2017-12-26', 'Yes', 20),
(7, 'Test region 3', '2017-12-26', 'Yes', 30);

-- --------------------------------------------------------

--
-- Table structure for table `rel_father`
--

CREATE TABLE IF NOT EXISTS `rel_father` (
  `memberId` int(30) NOT NULL,
  `fatherId` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rel_father`
--

INSERT INTO `rel_father` (`memberId`, `fatherId`) VALUES
(13, 8),
(14, 8),
(15, 13);

-- --------------------------------------------------------

--
-- Table structure for table `rel_mother`
--

CREATE TABLE IF NOT EXISTS `rel_mother` (
  `memberId` int(30) NOT NULL,
  `motherId` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rel_mother`
--

INSERT INTO `rel_mother` (`memberId`, `motherId`) VALUES
(13, 9),
(14, 9),
(15, 14);

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
(1, 'admin', 'chapagain_123_#', '2018-07-01 16:44:23', 484, 'A', 1),
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
 ADD PRIMARY KEY (`memberId`), ADD KEY `fatherId` (`fatherId`), ADD KEY `memberId` (`memberId`);

--
-- Indexes for table `rel_mother`
--
ALTER TABLE `rel_mother`
 ADD PRIMARY KEY (`memberId`), ADD KEY `motherId` (`motherId`), ADD KEY `memberId` (`memberId`);

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
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `gotra`
--
ALTER TABLE `gotra`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=875;
--
-- AUTO_INCREMENT for table `listingfiles`
--
ALTER TABLE `listingfiles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
