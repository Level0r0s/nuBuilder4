-- phpMyAdmin SQL Dump
-- version 3.3.9.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2016 at 01:27 AM
-- Server version: 5.5.9
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nubuilder4`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE IF NOT EXISTS `business` (
  `business_id` varchar(25) NOT NULL,
  `bus_code` varchar(300) NOT NULL,
  `bus_description` varchar(300) NOT NULL,
  `bus_check` varchar(1) NOT NULL,
  PRIMARY KEY (`business_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`business_id`, `bus_code`, `bus_description`, `bus_check`) VALUES
('568a00c77f8f709', '00001', 'Chemist', ''),
('568a00d504d264c', '00002', 'Deli', ''),
('568a00e25b8d271', '00003', 'Supermarket', '1'),
('568a00f3e57f096', '00004', 'Drycleaner', '1'),
('56aeff3276dfd7e', '00006', 'Dentist', '1'),
('56aeff6f63b370b', '00005', 'Farmer', '1'),
('56aeff880f9cc5f', '00007', 'Daycare', ''),
('56aeff9312712b9', 'c000066', 'Driver', ''),
('56aeff9bd925917', '0000662', 'Dealer', ''),
('56aeffa7ab97f78', '0000663', 'Sister', ''),
('56aeffb28581f45', '0000664', 'Father', ''),
('56aeffcca1d2172', '00756', 'Party', ''),
('56aeffe71b130b6', '0043', 'Sawer', ''),
('56aeffef7acc7d5', '00435', 'Cop', ''),
('56aefff91be9a2c', '004354', 'traffic Cop', ''),
('57295eca6dc56d8', 'OP', 'optometrist', '6');

-- --------------------------------------------------------

--
-- Table structure for table `children`
--

CREATE TABLE IF NOT EXISTS `children` (
  `children_id` varchar(25) NOT NULL,
  `chi_name` varchar(300) NOT NULL,
  `chi_dob` date NOT NULL,
  `chi_employee_id` varchar(300) NOT NULL,
  PRIMARY KEY (`children_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `children`
--

INSERT INTO `children` (`children_id`, `chi_name`, `chi_dob`, `chi_employee_id`) VALUES
('54daabdd34ea19a', 'Jimmy', '0000-00-00', '5678d416056e635'),
('54daabdd34ea19b', 'Jane', '0000-00-00', '5678d416056e635'),
('54daabdd34ea19c', 'Zoe', '0000-00-00', '5678d416056e635'),
('54daabdd34ea19d', 'Alison', '0000-00-00', '5678d416056e635'),
('54daabdd34ea19e', 'Ben', '0000-00-00', '5678d41605e4dda'),
('54daabdd34ea19f', 'Dave', '0000-00-00', '5678d41605e4dda'),
('54daabdd34ea191', 'Jane', '0000-00-00', '5678d416056e635'),
('54daabdd34ea193', 'Glen', '0000-00-00', '5678d416056e635'),
('54daabdd34ea194', 'Bob', '0000-00-00', '5678d416056e635'),
('54daabdd34ea192', 'Dan', '0000-00-00', '5678d416056e635');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE IF NOT EXISTS `color` (
  `color_id` varchar(25) NOT NULL,
  `col_code` varchar(300) NOT NULL,
  `col_description` varchar(300) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`color_id`, `col_code`, `col_description`) VALUES
('568ef58fe48207a', 'red', 'Red'),
('568ef59c1bd769c', 'blue', 'Blue'),
('568ef5a6968322b', 'green', 'Green'),
('568ef920846a089', 'black', 'Black'),
('568ef931d196b3e', 'brown', 'Brown');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` varchar(25) NOT NULL,
  `com_code` varchar(50) NOT NULL,
  `com_name` varchar(500) NOT NULL,
  `com_business_id` varchar(25) NOT NULL,
  `com_company_id` varchar(25) NOT NULL,
  `com_address` varchar(500) NOT NULL,
  `com_suburb` date NOT NULL,
  `com_phone` varchar(50) NOT NULL,
  `com_map_coordinates` varchar(300) NOT NULL,
  `com_sex` varchar(1) NOT NULL,
  `com_color_id` varchar(250) NOT NULL,
  `com_age` int(11) NOT NULL,
  `com_notes` text NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `com_code`, `com_name`, `com_business_id`, `com_company_id`, `com_address`, `com_suburb`, `com_phone`, `com_map_coordinates`, `com_sex`, `com_color_id`, `com_age`, `com_notes`) VALUES
('5678d262e048faa', '0007', 'Terry White', '568a00c77f8f709', '', '5 Trent Grv', '2016-07-02', '21-May-2014', '11 44', 'f', '568ef920846a089#nuSep#568ef59c1bd769c#nuSep#568ef931d196b3e', 50, 'hello worldsssstfffxv'),
('5729572e6331281', '', 'Mrs Compr66r36456', '568a00e25b8d271', '', '43 Allen St', '2016-07-01', '07-May-2016', '', '', '568ef59c1bd769c#nuSep#568ef931d196b3e', 0, '13132'),
('57295aa5660f48b', '', 'Mrs Comuh', '568a00e25b8d271', '', '43 Allen Stkh', '2016-07-03', '16-Jun-2016', '', '', '568ef59c1bd769c', 35, '13132'),
('57295c4c33cddd6', '', 'PCP200011', '568a00e25b8d271', '', '108 KWStftgh', '2016-07-04', '18-May-2016', '', '', '568ef920846a089#nuSep#568ef59c1bd769c#nuSep#568ef931d196b3e#nuSep#568ef5a6968322b', 0, 'blah'),
('57295ed9e996db0', '', 'OPSM111', '568a00c77f8f709', '', 'yyyyy', '2016-07-06', '20-May-2016', '', '', '568ef920846a089#nuSep#568ef59c1bd769c', 12, 'oooo12'),
('5716c7137efb0c5', '', 'OPSM1111', '568a00c77f8f709', '', '43 Allen St', '2016-07-06', '0423345544', '', 'm', '568ef920846a089#nuSep#568ef59c1bd769c#nuSep#568ef931d196b3e', 35, 'hh');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` varchar(25) NOT NULL,
  `emp_company_id` varchar(25) NOT NULL,
  `emp_name` varchar(300) NOT NULL,
  `emp_mobile` varchar(50) NOT NULL,
  `emp_business_id` varchar(25) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `emp_company_id`, `emp_name`, `emp_mobile`, `emp_business_id`) VALUES
('57148a4e28b517c', '57148a4e28a9106', 'hhhh', '', ''),
('571482a104ef404', '571478e415cde6a', 'eeeeaaa', '', ''),
('571487020399c30', '5714870203983f4', '2222', '', ''),
('5714885b7a5a2fd', '5714885b7a59587', '6666', '', ''),
('5714885b7a5adc4', '5714885b7a59587', '7777', '', ''),
('5714887350fa2d5', '5714887350f94d9', '99', '', ''),
('5714887350fadee', '5714887350f94d9', '00', '', ''),
('571489984fa260f', '571489984fa0ad3', 'rstgstgsse', '', ''),
('57148a035746159', '57148a035731590', 'jjjj', '', ''),
('571481dcba116bb', '571481dcba0fa93', 'def', '', ''),
('571481dcba1343f', '571481dcba0fa93', 'ghi', '', ''),
('57147c9918f77bb', '57147c9918f5f64', 'bbbbbb', '', ''),
('57147b9673c527e', '57147b9673c3f4f', 'ftxhsth', '', ''),
('571478e415cf734', '571478e415cde6a', 'www', '', ''),
('571476b382714b4', '571476b3827088a', '4444444', '', ''),
('571475afa08d352', '571475afa08c69c', 'ukgfjgyy', '', ''),
('5716c642e4e23c8', '5716c079066e4a2', 'bbbbb', '', ''),
('5716c64c8cd4eef', '5716c64c8cd3592', 'bbbbb1', '', '568a00e25b8d271'),
('5716c7137efe4c1', '5716c7137efb0c5', 'bob', 'Jul-20-2016', ''),
('5716cb29f11cfd1', '5716cb29f11c007', 'mr233', '', ''),
('5716cc0359429ae', '5716cc035941ba3', 'mr4', '', ''),
('5716cc0359433e9', '5716cc035941ba3', '444', '', ''),
('5721b4bc246968f', '5715859eac8c8d3', '21234', '222222', '568a00d504d264c'),
('57283a14e1c8e82', '5716cc035941ba3', '5555', '', ''),
('57295aa566110ad', '57295aa5660f48b', '1234', 'Jul-20-2016', '568a00f3e57f096'),
('57294736bc86cd8', '572946e33e1b3ae', 'ssss', '', ''),
('57294736bc87e6f', '572946e33e1b3ae', '', 'fdsds', ''),
('57295c4c33d0ac0', '57295c4c33cddd6', '1111j', 'Jun-15-2016', ''),
('57295c4c33d2ed9', '57295c4c33cddd6', '2222hj', 'Jun-08-2016', ''),
('57296ad34207b75', '57295c4c33cddd6', '3', 'Jul-20-2016', '568a00e25b8d271'),
('572aa8389424d9a', '57295ed9e996db0', 'bobby', 'May-26-2016', '568a00e25b8d271'),
('5770710113d40c6', '5770710113d261e', 'Rob', 'Jun-22-2016', '568a00f3e57f096'),
('573a80f0e0db425', '5678d262e048faa', 'test', '', ''),
('573d099435f6b7c', '5729572e6331281', 'aaah1gh', '', '568a00e25b8d271'),
('573d099435f7a3e', '5729572e6331281', '222ghu', '', '56aeff6f63b370b'),
('5754e57406b71ea', '5716c7137efb0c5', '', 'Jul-20-2016', ''),
('5754e57406b7ec7', '5716c7137efb0c5', 'ffhh', '', ''),
('5754e950b92bab5', '5729572e6331281', 'test13kgughj', '', ''),
('576ccdda0ccd2fc', '576ccdda0ccb042', 'fghdc', 'Jun-14-2016', '568a00e25b8d271'),
('577b0a4f5521871', '5770710113d261e', 'steve0', 'Jul-28-2016', '568a00d504d264c'),
('5786e01113f6e5f', '57295aa5660f48b', 'Steveo', 'Jul-14-2016', '568a00f3e57f096');

-- --------------------------------------------------------

--
-- Stand-in structure for view `run_list`
--
CREATE TABLE IF NOT EXISTS `run_list` (
`id` varchar(25)
,`type` varchar(9)
,`code` varchar(300)
,`sfo_description` varchar(300)
);
-- --------------------------------------------------------

--
-- Table structure for table `test_table`
--

CREATE TABLE IF NOT EXISTS `test_table` (
  `test_table_id` varchar(25) NOT NULL,
  `tet_code` varchar(10) NOT NULL,
  `tet_description` varchar(300) NOT NULL,
  `tet_sex` varchar(1) NOT NULL,
  `tet_notes` text NOT NULL,
  `id` varchar(25) NOT NULL,
  PRIMARY KEY (`test_table_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test_table`
--


-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_access_level`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_access_level` (
  `zzzzsys_access_level_id` varchar(25) NOT NULL DEFAULT '',
  `sal_code` varchar(50) DEFAULT NULL,
  `sal_description` varchar(200) DEFAULT NULL,
  `sal_zzzzsys_form_id` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzzsys_access_level_id`),
  KEY `sal_name` (`sal_code`),
  KEY `sal_zzzzsys_form_id` (`sal_zzzzsys_form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_access_level`
--

INSERT INTO `zzzzsys_access_level` (`zzzzsys_access_level_id`, `sal_code`, `sal_description`, `sal_zzzzsys_form_id`) VALUES
('57678e7dc00c099', 'ADMIN', 'Admin', 'nuhome'),
('577aea8e8844920', 'TEST', 'TEST', 'nuhome');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_access_level_form`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_access_level_form` (
  `zzzzsys_access_level_form_id` varchar(25) NOT NULL DEFAULT '',
  `slf_zzzzsys_access_level_id` varchar(25) DEFAULT NULL,
  `slf_zzzzsys_form_id` varchar(25) DEFAULT NULL,
  `slf_add_button` varchar(1) NOT NULL,
  `slf_save_button` varchar(1) NOT NULL,
  `slf_delete_button` varchar(1) NOT NULL,
  `slf_clone_button` varchar(1) NOT NULL,
  `slf_new_button` varchar(1) NOT NULL,
  `slf_print_button` varchar(1) NOT NULL,
  PRIMARY KEY (`zzzzsys_access_level_form_id`),
  KEY `saf_zzzzsys_access_level_id` (`slf_zzzzsys_access_level_id`),
  KEY `slf_zzzzsys_form_id` (`slf_zzzzsys_form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_access_level_form`
--

INSERT INTO `zzzzsys_access_level_form` (`zzzzsys_access_level_form_id`, `slf_zzzzsys_access_level_id`, `slf_zzzzsys_form_id`, `slf_add_button`, `slf_save_button`, `slf_delete_button`, `slf_clone_button`, `slf_new_button`, `slf_print_button`) VALUES
('5775dbbce39a24e', '57678e7dc00c099', '57466ebd5c0dcdb', '', '', '', '', '', ''),
('5773260358ccf77', '57678e7dc00c099', '56c513162acd102', '', '', '', '', '', ''),
('577aea8e8847c7e', '577aea8e8844920', '56773cb405f4913', '', '', '', '', '', ''),
('57678f1c543a37f', '57678e7dc00c099', 'nublank', '', '', '', '', '', ''),
('577b3eb0f202900', '577aea8e8844920', 'nuhome', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_access_level_php`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_access_level_php` (
  `zzzzsys_access_level_php_id` varchar(25) NOT NULL,
  `slp_zzzzsys_access_level_id` varchar(25) DEFAULT NULL,
  `slp_zzzzsys_php_id` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`zzzzsys_access_level_php_id`),
  KEY `slp_zzzzsys_access_level_id` (`slp_zzzzsys_access_level_id`),
  KEY `slp_zzzzsys_php_id` (`slp_zzzzsys_php_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_access_level_php`
--

INSERT INTO `zzzzsys_access_level_php` (`zzzzsys_access_level_php_id`, `slp_zzzzsys_access_level_id`, `slp_zzzzsys_php_id`) VALUES
('57678f1c543cb0a', '57678e7dc00c099', '57578be0057a49f'),
('577aea8e8849015', '577aea8e8844920', '57578be0057a49f');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_access_level_report`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_access_level_report` (
  `zzzzsys_access_level_report_id` varchar(25) NOT NULL,
  `sre_zzzzsys_access_level_id` varchar(25) DEFAULT NULL,
  `sre_zzzzsys_report_id` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`zzzzsys_access_level_report_id`),
  KEY `sre_zzzzsys_access_level_id` (`sre_zzzzsys_access_level_id`),
  KEY `sre_zzzzsys_report_id` (`sre_zzzzsys_report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_access_level_report`
--

INSERT INTO `zzzzsys_access_level_report` (`zzzzsys_access_level_report_id`, `sre_zzzzsys_access_level_id`, `sre_zzzzsys_report_id`) VALUES
('576784e884ccacc', NULL, '574b98244516a9b'),
('576784e884cd735', NULL, '574b9845a681d27'),
('57678f1c543edd9', '57678e7dc00c099', '574b9845a681d27'),
('577aea8e884a302', '577aea8e8844920', '574b9845a681d27');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_browse`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_browse` (
  `zzzzsys_browse_id` varchar(25) NOT NULL DEFAULT '',
  `sbr_zzzzsys_form_id` varchar(25) DEFAULT NULL,
  `sbr_title` varchar(100) DEFAULT NULL,
  `sbr_display` varchar(512) DEFAULT NULL,
  `sbr_align` char(1) DEFAULT NULL,
  `sbr_format` varchar(10) DEFAULT NULL,
  `sbr_sort` varchar(512) DEFAULT NULL,
  `sbr_order` int(11) DEFAULT NULL,
  `sbr_width` int(11) DEFAULT NULL,
  PRIMARY KEY (`zzzzsys_browse_id`),
  KEY `sbr_zzzsys_form_id` (`sbr_zzzzsys_form_id`),
  KEY `sbr_sort` (`sbr_sort`(255))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_browse`
--

INSERT INTO `zzzzsys_browse` (`zzzzsys_browse_id`, `sbr_zzzzsys_form_id`, `sbr_title`, `sbr_display`, `sbr_align`, `sbr_format`, `sbr_sort`, `sbr_order`, `sbr_width`) VALUES
('5677420624710ab', '56773cb405f4913', 'Company', 'com_name', 'l', NULL, 'com_name', 10, 200),
('5677420624fd93d', '56773cb405f4913', 'Address', 'com_address', 'l', NULL, 'com_address', 20, 200),
('56774206258316d', '56773cb405f4913', 'Suburb', 'com_suburb', 'l', NULL, 'com_suburb', 30, 150),
('56774206260b475', '56773cb405f4913', 'Phone', 'com_phone', 'l', NULL, 'com_phone', 40, 100),
('5678ab2c4ac37e0', '5678ab2c48c5c41', 'Name', 'emp_name', 'l', NULL, 'emp_name', 10, 200),
('568b508eee2f2ef', '568b508eec00d80', 'Code', 'bus_code', 'l', NULL, 'bus_code', 10, 100),
('568b508eeebdab9', '568b508eec00d80', 'Description', 'bus_description', 'l', NULL, 'bus_description', 20, 300),
('56b00a4f9211103', '568b508eec00d80', 'Check', 'bus_check', 'l', NULL, 'bus_check', 30, 50),
('56b3e7ba2bf880d', '5678ab2c48c5c41', 'Mobile', 'emp_mobile', 'l', NULL, 'emp_mobile', 20, 200),
('56c5131637d6f7f', '56c513162acd102', 'Name', 'chi_name', 'l', NULL, 'chi_name', 10, 200),
('5707303158d2308', 'nuform', 'Code', 'sfo_code', 'l', NULL, 'sfo_code', 20, 100),
('570730315e6abb7', 'nuform', 'Description', 'sfo_description', 'l', NULL, 'sfo_description', 30, 250),
('570b3863e50cb98', 'nutab', 'Form', 'sfo_description', 'l', NULL, 'sfo_description', 20, 150),
('570b3863e80f09c', 'nutab', 'Tab', 'syt_title', 'l', NULL, 'syt_title', 40, 200),
('570c8e1adb04ffc', 'nuobject', 'Form', 'sfo_description', 'l', NULL, 'sfo_description', 20, 200),
('570c8e1adeae32a', 'nuobject', 'Tab', 'syt_title', 'l', NULL, 'syt_title', 30, 100),
('570c8e1ae1b33cb', 'nuobject', 'Object', 'sob_all_id', 'l', NULL, 'sob_all_id', 60, 250),
('570db5ea2aa8afe', 'nuobject', 'Type', 'sob_all_type', 'l', NULL, 'sob_all_type', 10, 100),
('5710406a290c874', 'nuobject', 'Label', 'sob_all_label', NULL, NULL, 'sob_all_label', 40, 150),
('57143e81f2bdabf', 'nutab', 'Type', 'sfo_type', NULL, NULL, 'sfo_type', 10, 150),
('57143f25ded40bb', '', 'Type', 'CONCAT(UCASE(LEFT(sfo_type, 1)), LCASE(SUBSTRING(sfo_type, 2)))', NULL, NULL, 'sfo_type', 5, 100),
('57426b4c86ffc81', '57426b4c86fede1', 'Code', 'sfo_code', 'l', 'date', 'sfo_code', 10, 70),
('57426b4c8700731', '57426b4c86fede1', 'Description', 'sfo_description', 'l', 'date', 'sfo_description', 20, 250),
('57426b4c87011a9', '57426b4c86fede1', 'Type', 'sfo_type', 'l', 'date', 'sfo_type', 5, 100),
('574290680092fa8', 'nuaccess', 'Description', 'sal_description', 'l', NULL, 'sal_description', 20, 300),
('57428fe73028089', 'nuaccess', 'Code', 'sal_code', NULL, NULL, 'sal_code', 10, 100),
('574277f47e2b8d7', 'nunonsystemform', 'Code', 'sfo_code', 'l', 'date', 'sfo_code', 10, 70),
('574277f47e2c2b7', 'nunonsystemform', 'Description', 'sfo_description', 'l', 'date', 'sfo_description', 20, 250),
('574277f47e2cd55', 'nunonsystemform', 'Type', 'sfo_type', 'l', 'date', 'sfo_type', 5, 100),
('574665a15bbd803', '574665a15bbc1a1', 'Code', 'sug_code', 'l', NULL, 'sug_code', 10, 100),
('574665a15bbf71b', '574665a15bbc1a1', 'Description', 'sug_description', 'l', NULL, 'sug_description', 20, 200),
('57466c37871dab3', '574665a15bbc1a1', 'Home', 'sfo_description', 'l', NULL, 'sfo_description', 30, 300),
('57466f4a6050c2b', '57466ebd5c0dcdb', 'Name', 'sus_name', 'l', NULL, 'sus_name', 10, 200),
('57466f4a6051984', '57466ebd5c0dcdb', 'Email', 'sus_email', 'l', NULL, 'sus_email', 20, 300),
('57466f4a605234d', '57466ebd5c0dcdb', 'User Group', 'sug_description', 'l', NULL, 'sug_description', 30, 200),
('574b8ee0b2a261f', 'nuphp', 'Code', 'sph_code', 'l', NULL, 'sph_code', 10, 150),
('574b8ee0b2a3058', 'nuphp', 'Description', 'sph_description', 'l', NULL, 'sph_description', 20, 250),
('574b960d4421185', 'nubuildreport', 'Code', 'sre_code', 'l', NULL, 'sre_code', 10, 150),
('574b960d442238f', 'nubuildreport', 'Description', 'sre_description', 'l', NULL, 'sre_description', 20, 250),
('578835e91a3f8fa', 'nuobject', 'i', 'zzzzsys_form_id', NULL, NULL, 'zzzzsys_form_id', 50, 1),
('575605492d24cdb', 'nuform', 'Type', 'sfo_type', 'l', NULL, 'sfo_type', 10, 100),
('575a31897e90566', 'nudebug', 'Message', 'deb_message', 'l', NULL, 'deb_message', 10, 600),
('57579dd5098d938', 'nubuildreport', 'Launch From', 'CONCAT(sfo_code, '' - '', sfo_description)', 'l', NULL, 'sre_code', 40, 300),
('5757a4b7181f4c7', 'nurun', 'Type', 'type', 'l', NULL, NULL, 10, 100),
('5757a4b7181ff38', 'nurun', 'Code', 'code', 'l', NULL, NULL, 20, 100),
('5757a4b718209cc', 'nurun', 'Description', 'description', 'l', NULL, NULL, 30, 100),
('5757af5bb2b4ca2', '5757a4b7181e365', 'Type', 'run', 'l', NULL, 'run', 10, 100),
('5758aa716672f9a', '5757a4b7181e365', 'Code', 'code', 'l', NULL, 'code', 20, 100),
('5758aa716673ccd', '5757a4b7181e365', 'Description', 'description', 'l', NULL, 'description', 30, 200),
('575a3c631eb294c', 'nudebug', 'Time Stamp', 'deb_added', 'l', NULL, 'deb_added', 20, 170),
('57637ad7b561bdc', '57637ad7b560755', '1', '1', 'l', '', '1', 10, 1),
('57637f2243c9361', 'nutab', 'Code', 'sfo_code', NULL, NULL, 'sfo_code', 30, 100),
('5763816cd36ed10', 'nubrowse', '1', '1', NULL, NULL, '1', 10, 1),
('577b248cec6588c', 'nubuildreport', 'Group', 'sre_group', 'l', '', 'sre_group', 30, 150),
('577b24bb83cf26f', 'nuphp', 'Group', 'sph_group', 'l', '', 'sph_group', 30, 150),
('577b4228b34a55d', 'nurunreport', 'Code', 'sre_code', 'l', '', 'sre_code', 20, 150),
('577b4228b34af41', 'nurunreport', 'Description', 'sre_description', 'l', '', 'sre_description', 30, 250),
('577b4228b34b950', 'nurunreport', 'Group', 'sre_group', 'l', '', 'sre_group', 40, 150),
('577c47fa66beb63', 'nurunreport', 'Form', 'sre_zzzzsys_form_id', 'l', NULL, 'sre_zzzzsys_form_id', 10, 1),
('577b48b3f35232a', '577b48b3f351026', 'Code', 'sph_code', 'l', '', 'sph_code', 10, 150),
('577b48b3f352d94', '577b48b3f351026', 'Description', 'sph_description', 'l', '', 'sph_description', 20, 250),
('577b48b3f353765', '577b48b3f351026', 'Group', 'sph_group', 'l', '', 'sph_group', 30, 150),
('577b48b3f354185', '577b48b3f351026', 'Launch From', 'CONCAT(sfo_code, '' - '', sfo_description)', 'l', '', 'sfo_code', 40, 300),
('577b4b6ca3ea898', 'nurunphp', 'Code', 'sph_code', 'l', NULL, 'sph_code', 20, 150),
('577b4c18a8bf431', 'nurunphp', 'Description', 'sph_description', NULL, NULL, 'sph_description', 30, 300),
('577b4c18a8c02ee', 'nurunphp', 'Group', 'sph_group', NULL, NULL, 'sph_group', 40, 150),
('578726caa351b3e', 'nurunphp', 'PHP', 'sph_zzzzsys_form_id', NULL, NULL, 'sph_zzzzsys_form_id', 10, 1),
('579006cac02b9f3', 'nuphp', 'Launch By', 'CONCAT(sfo_code, '' - '', sfo_description)', 'l', NULL, 'sfo_code', 40, 300);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_debug`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_debug` (
  `zzzzsys_debug_id` varchar(25) NOT NULL,
  `deb_message` longtext,
  `deb_order` varchar(25) NOT NULL,
  `deb_added` datetime NOT NULL,
  PRIMARY KEY (`zzzzsys_debug_id`),
  KEY `deb_added` (`deb_added`),
  KEY `deb_order` (`deb_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_debug`
--

INSERT INTO `zzzzsys_debug` (`zzzzsys_debug_id`, `deb_message`, `deb_order`, `deb_added`) VALUES
('5795697e4a85b82', '\r\n \r\n    SELECT * \r\n    FROM zzzzsys_form\r\n    INNER JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = zzzzsys_form_id\r\n    WHERE zzzzsys_form_id = ''nuhome''\r\n    ORDER BY sob_all_order    \r\n\r\n    ', '', '2016-07-25 10:51:02'),
('579569801a388b8', '\r\n \r\n    SELECT * \r\n    FROM zzzzsys_form\r\n    INNER JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = zzzzsys_form_id\r\n    WHERE zzzzsys_form_id = ''nurunreport''\r\n    ORDER BY sob_all_order    \r\n\r\n    ', '', '2016-07-25 10:51:04'),
('57956981465ae59', '\r\n \r\n    SELECT * \r\n    FROM zzzzsys_form\r\n    INNER JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = zzzzsys_form_id\r\n    WHERE zzzzsys_form_id = ''nulaunchdates''\r\n    ORDER BY sob_all_order    \r\n\r\n    ', '', '2016-07-25 10:51:05'),
('57956990489e006', '\r\n \r\n    SELECT * \r\n    FROM zzzzsys_form\r\n    INNER JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = zzzzsys_form_id\r\n    WHERE zzzzsys_form_id = ''nuhome''\r\n    ORDER BY sob_all_order    \r\n\r\n    ', '', '2016-07-25 10:51:20'),
('5795699274bce3c', '\r\n \r\n    SELECT * \r\n    FROM zzzzsys_form\r\n    INNER JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = zzzzsys_form_id\r\n    WHERE zzzzsys_form_id = ''nurunphp''\r\n    ORDER BY sob_all_order    \r\n\r\n    ', '', '2016-07-25 10:51:22'),
('57956993ca1af8b', '\r\n \r\n    SELECT * \r\n    FROM zzzzsys_form\r\n    INNER JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = zzzzsys_form_id\r\n    WHERE zzzzsys_form_id = ''nulaunchdates''\r\n    ORDER BY sob_all_order    \r\n\r\n    ', '', '2016-07-25 10:51:23'),
('57956a9c1a385b3', '\r\n \r\n    SELECT * \r\n    FROM zzzzsys_form\r\n    INNER JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = zzzzsys_form_id\r\n    WHERE zzzzsys_form_id = ''nuhome''\r\n    ORDER BY sob_all_order    \r\n\r\n    ', '', '2016-07-25 10:55:48'),
('57956a9e393b764', '\r\n \r\n    SELECT * \r\n    FROM zzzzsys_form\r\n    INNER JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = zzzzsys_form_id\r\n    WHERE zzzzsys_form_id = ''nurunreport''\r\n    ORDER BY sob_all_order    \r\n\r\n    ', '', '2016-07-25 10:55:50'),
('57956a9f75066b1', '\r\n \r\n    SELECT * \r\n    FROM zzzzsys_form\r\n    INNER JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = zzzzsys_form_id\r\n    WHERE zzzzsys_form_id = ''nulaunchdates''\r\n    ORDER BY sob_all_order    \r\n\r\n    ', '', '2016-07-25 10:55:51'),
('57956aa684d306f', '{"FORM_ID":"574b9845a681d27","PREVIOUS_RECORD_ID":"","RECORD_ID":"","from_date":"2016-07-01","to_date":"2016-07-25","TABLE_ID":"___nu157956aa684d1d___","code":null,"description":null,"sph_php":""}', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_event`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_event` (
  `zzzzsys_event_id` varchar(25) NOT NULL,
  `sev_zzzzsys_object_id` varchar(25) NOT NULL,
  `sev_event` varchar(100) NOT NULL,
  `sev_javascript` varchar(3000) NOT NULL,
  PRIMARY KEY (`zzzzsys_event_id`),
  KEY `sev_zzzsys_object_id` (`sev_zzzzsys_object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_event`
--

INSERT INTO `zzzzsys_event` (`zzzzsys_event_id`, `sev_zzzzsys_object_id`, `sev_event`, `sev_javascript`) VALUES
('5732c691769438d', '567742c772b9642', 'onclick', 'console.log(''onclick'')'),
('5756482365c32a1', '57073c3a0b4ea44', 'onchange', 'nuFormColor();'),
('5732c6ed52dcabd', '567742c772b9642', 'onchange', 'console.log(''onchange2'')'),
('5732d76f5c6f75d', '56b7e275560be71', 'onclick', 'console.log(''notes'')'),
('5732d76f5c70d68', '56b7e275560be71', 'onblur', 'console.log(''note123s'')'),
('573d15d41e2aa8c', '573d15d41e279ba', 'onclick', 'window.open(''nureportbuilder4.php'');'),
('575619c3bb27cec', '570d98b34bf37c9', 'onchange', 'nuObjectColor();'),
('57578da6457dd67', '570b1abae987b02', 'onchange', 'nuCopyToSort(this);'),
('57620c455b19815', '575a3f7001496b0', 'onchange', 'nuSetHash(''delete_option'', this.value);');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_form`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_form` (
  `zzzzsys_form_id` varchar(25) NOT NULL,
  `sfo_type` varchar(300) NOT NULL,
  `sfo_code` varchar(300) NOT NULL,
  `sfo_description` varchar(300) NOT NULL,
  `sfo_table` varchar(300) NOT NULL,
  `sfo_primary_key` varchar(300) NOT NULL,
  `sfo_breadcrumb_title` text NOT NULL,
  `sfo_redirect_form_id` varchar(300) NOT NULL,
  `sfo_row_height` varchar(300) NOT NULL,
  `sfo_rows_per_page` varchar(300) NOT NULL,
  `sfo_before_browse_php` longtext NOT NULL,
  `sfo_before_open_php` longtext NOT NULL,
  `sfo_before_save_php` longtext NOT NULL,
  `sfo_after_save_php` longtext NOT NULL,
  `sfo_before_delete_php` longtext NOT NULL,
  `sfo_after_delete_php` longtext NOT NULL,
  `sfo_browse_sql` text NOT NULL,
  `sfo_add_button` varchar(1) NOT NULL,
  `sfo_add_title` varchar(50) NOT NULL,
  `sfo_add_display_condition` text NOT NULL,
  `sfo_new_button` varchar(1) NOT NULL,
  `sfo_new_title` varchar(50) NOT NULL,
  `sfo_new_display_condition` text NOT NULL,
  `sfo_save_button` varchar(1) NOT NULL,
  `sfo_save_title` varchar(50) NOT NULL,
  `sfo_save_display_condition` text NOT NULL,
  `sfo_delete_button` varchar(1) NOT NULL,
  `sfo_delete_title` varchar(50) NOT NULL,
  `sfo_delete_display_condition` text NOT NULL,
  `sfo_clone_button` varchar(1) NOT NULL,
  `sfo_clone_title` varchar(50) NOT NULL,
  `sfo_clone_display_condition` text NOT NULL,
  `sfo_print_button` varchar(1) NOT NULL,
  `sfo_print_title` varchar(50) NOT NULL,
  `sfo_print_display_condition` text NOT NULL,
  `sfo_report_sql` text NOT NULL,
  `sfo_report_library_zzzzsys_form_id` varchar(25) NOT NULL,
  `sfo_report_criteria_zzzzsys_form_id` varchar(25) NOT NULL,
  `sfo_report_layout` longtext NOT NULL,
  `sfo_library_php` longtext NOT NULL,
  `sfo_javascript` longtext NOT NULL,
  PRIMARY KEY (`zzzzsys_form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_form`
--

INSERT INTO `zzzzsys_form` (`zzzzsys_form_id`, `sfo_type`, `sfo_code`, `sfo_description`, `sfo_table`, `sfo_primary_key`, `sfo_breadcrumb_title`, `sfo_redirect_form_id`, `sfo_row_height`, `sfo_rows_per_page`, `sfo_before_browse_php`, `sfo_before_open_php`, `sfo_before_save_php`, `sfo_after_save_php`, `sfo_before_delete_php`, `sfo_after_delete_php`, `sfo_browse_sql`, `sfo_add_button`, `sfo_add_title`, `sfo_add_display_condition`, `sfo_new_button`, `sfo_new_title`, `sfo_new_display_condition`, `sfo_save_button`, `sfo_save_title`, `sfo_save_display_condition`, `sfo_delete_button`, `sfo_delete_title`, `sfo_delete_display_condition`, `sfo_clone_button`, `sfo_clone_title`, `sfo_clone_display_condition`, `sfo_print_button`, `sfo_print_title`, `sfo_print_display_condition`, `sfo_report_sql`, `sfo_report_library_zzzzsys_form_id`, `sfo_report_criteria_zzzzsys_form_id`, `sfo_report_layout`, `sfo_library_php`, `sfo_javascript`) VALUES
('56773cb405f4913', 'browseedit', 'COM', 'Company', 'company', 'company_id', '', '', '', '', 'nuDebug(print_r(nuSchema(),1));', '', '', '', '', '', 'SELECT * FROM company\r\nLEFT JOIN business ON business_id = com_business_id', '1', '', '', '', '', '', '1', 'Save Me', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', ''),
('5678ab2c48c5c41', 'edit', 'EMP', 'Employee Subform', 'employee', 'employee_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM employee\nWHERE employee_id = ''5678d416056e635''', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', ''),
('568b508eec00d80', 'browseedit', 'BUS', 'Business', 'business', 'business_id', '', '', '', '4', '', '', '', '', '', '', 'SELECT * FROM business', '1', '', '', '', '', '', '1', '', '', '', '', '', '1', '', '', '1', '', '', '', '', '', '', '', ''),
('nuhome', 'launch', 'HOME', 'Home', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '0', '', '', '0', '', '', '0', '', '', '', '', '', '', '', '', '', '', ''),
('56c513162acd102', 'edit', 'CHI', 'Children', 'children', 'children_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM employee', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', ''),
('nuform', 'browseedit', 'FORM', 'nuBuilder Form', 'zzzzsys_form', 'zzzzsys_form_id', '', '', '', '', '', '', '    $o = ''#sfo_type#'';\n\n    if(''#sfo_type#''             == ''''){nuErrorMessage(''Type Cannot Be Blank..'', ''sfo_type'');}\n    if(''#sfo_code#''             == ''''){nuErrorMessage(''Code Cannot Be Blank..'', ''sfo_code'');}\n    if(''#sfo_description#''      == ''''){nuErrorMessage(''Description Cannot Be Blank..'', ''sfo_description'');}\n\n\n    \n    \n    if($o == ''browseedit'' || $o == ''subform'' || $o == ''browse''){\n        \n        if($o != ''browse''){\n            nuCheckTabs();\n        }\n        \n        if($o != ''subform''){\n            nuCheckBrowse();\n        }\n        \n        if(''#sfo_browse_sql#''   == ''''){nuErrorMessage(''Browse SQL Cannot Be Blank..'', ''sfo_browse_sql'');}\n    }\n\n    if($o == ''edit'' or $o == ''launch''){\n        nuCheckTabs();\n    }\n\n    if($o != ''launch''){\n        if(''#sfo_table#''            == ''''){nuErrorMessage(''Table Cannot Be Blank..'', ''sfo_table'');}\n        if(''#sfo_primary_key#''      == ''''){nuErrorMessage(''Primary Key Cannot Be Blank..'', ''sfo_primary_key'');}\n    }\n\nfunction nuCheckBrowse(){\n\n    $r  = 0;\n    $sf = nuSubformObject(''browse_sf'');\n\n    for($i = 0 ; $i < count($sf[''rows'']) ; $i++){\n       if($sf[''rows''][$i][8] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuErrorMessage(''Must have at least 1 Browse Column Defined..'');\n    }\n    \n}\n\nfunction nuCheckTabs(){\n    \n    $r  = 0;\n    $sf = nuSubformObject(''tab_sf'');\n    \n    for($i = 0 ; $i < count($sf[''rows'']) ; $i++){\n       if($sf[''rows''][$i][3] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuErrorMessage(''Must have at least 1 Tab Defined..'');\n    }\n    \n}', '$s  = "\n    SELECT * \n    FROM zzzzsys_browse \n    WHERE sbr_zzzzsys_form_id = ''#RECORD_ID#''\n    ORDER BY sbr_order;\n";\n\n\n$t = nuRunQuery($s);\n$o = 10;\n\nwhile($r = db_fetch_object($t)){\n        \n    $s  = "\n        UPDATE zzzzsys_browse \n        SET sbr_order = ''$o''\n        WHERE zzzzsys_browse_id = ''$r->zzzzsys_browse_id''\n        ORDER BY sbr_order;\n    ";\n    \n    nuRunQuery($s);\n    \n    $o = $o + 10;    \n    \n}\n\n$s  = "\n    SELECT * \n    FROM zzzzsys_tab \n    WHERE syt_zzzzsys_form_id = ''#RECORD_ID#''\n    ORDER BY syt_order;\n";\n\n$t = nuRunQuery($s);\n$o = 10;\n\n\nwhile($r = db_fetch_object($t)){\n        \n    $s  = "\n        UPDATE zzzzsys_tab \n        SET syt_order = ''$o''\n        WHERE zzzzsys_tab_id = ''$r->zzzzsys_tab_id''\n        ORDER BY syt_order;\n    ";\n    \n    nuRunQuery($s);\n    \n    $o = $o + 10;    \n    \n}\n\n', '', '', 'SELECT * FROM zzzzsys_form\nORDER BY sfo_code', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '$(''#sfo_breadcrumb_title'').addClass(''sql'');\n$(''#sfo_add_display_condition'').addClass(''sql'');\n$(''#sfo_print_display_condition'').addClass(''sql'');\n$(''#sfo_browse_sql'').addClass(''sql'');\n$(''#sfo_save_display_condition'').addClass(''sql'');\n$(''#sfo_clone_display_condition'').addClass(''sql'');\n$(''#sfo_delete_display_condition'').addClass(''sql'');\n$(''#sfo_new_display_condition'').addClass(''sql'');\n$(''#sfo_before_browse_php'').addClass(''php'');\n$(''#sfo_before_open_php'').addClass(''php'');\n$(''#sfo_before_save_php'').addClass(''php'');\n$(''#sfo_after_save_php'').addClass(''php'');\n$(''#sfo_before_delete_php'').addClass(''php'');\n$(''#sfo_after_delete_php'').addClass(''php'');\n$(''#sfo_javascript'').addClass(''js'');\n  \n$(''.js'').dblclick(function() {\n	nuOpenAce(''Javascript'', this.id);\n});\n\n$(''.sql'').dblclick(function() {\n	nuOpenAce(''SQL'', this.id);\n});\n\n$(''.html'').dblclick(function() {\n	nuOpenAce(''HTML'', this.id);\n});\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n\n\n\nfunction nuFormColor(){\n\n    var o           = [];\n    o[''browse'']		= Array(1,4);\n    o[''edit''] 		= Array(2,3,4);\n    o[''browseedit''] = Array(1,2,3,4);\n    o[''launch''] 	= Array(3,4);\n    o[''subform''] 	= Array(3,11);\n\n    $(''#sfo_type'').removeClass();\n    $(''#sfo_type'').addClass(''nu_''+$(''#sfo_type'').val());\n    \n    $("#sfo_type > option").each(function() {\n        $(this).addClass(''nu_''+this.value);\n    });\n\n    for(var i = 0 ; i < 7 ; i++){\n        $(''#nuTab'' + i).removeClass(''nuRelatedTab'');\n    }\n    \n    var t   = o[$(''#sfo_type'').val()];\n\n    $(''#nuTab0'').addClass(''nuRelatedTab'');\n\n    if(t !== undefined){\n        \n    	for(var i = 0 ; i < t.length ; i++){\n    		$(''#nuTab'' + t[i]).addClass(''nuRelatedTab'');		\n    	}\n    	\n    }\n    \n}\n\nnuFormColor();\n\nnuBuildSubformArray(''tab_sf'');\nnuBuildSubformArray(''browse_sf'');\n\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.textContent);\n});\n\n\n\nfunction nuCopyToSort(t){\n\n    var o = $(''#'' + t.id);\n    var p = o.attr(''data-nu-prefix'');\n    var s = $(''#'' + p + ''sbr_sort'');\n    \n    if(s.val() == ''''){\n        s.val( o.val())\n        .change();\n    }\n\n}\n'),
('nubrowse', 'subform', 'FRMBR', 'Form Browse Subform', 'zzzzsys_browse', 'zzzzsys_browse_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_browse\nORDER BY sbr_order\n', '1', '', '', '', '', '', '1', 'Save Me', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', ''),
('nutab', 'browseedit', 'TAB', 'Form Tab', 'zzzzsys_tab', 'zzzzsys_tab_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_tab\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\nORDER BY syt_order', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.innerHTML);\n});\n'),
('nulibrary', 'edit', 'LIB', 'Include PHP Library', 'zzzzsys_library', 'zzzzsys_library_id', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nuobject', 'browseedit', 'OBJECT', 'Object', 'zzzzsys_object', 'zzzzsys_object_id', '', '', '', '', '', '', '\n    $o = ''#sob_all_type#'';\n\n    if(''#sob_all_zzzzsys_tab_id#''             == ''''){nuErrorMessage(''Type Cannot Be Blank..'', ''sob_all_zzzzsys_tab_idcode'');}\n    if(''#sob_all_type#''             == ''''){nuErrorMessage(''Type Cannot Be Blank..'', ''sob_all_type'');}\n    if(''#sob_all_zzzzsys_form_id#''  == ''''){nuErrorMessage(''Tab - Form Cannot Be Blank..'', ''sob_all_zzzzsys_form_idcode'');}\n    if(''#sob_all_id#''               == ''''){nuErrorMessage(''ID Cannot Be Blank..'', ''sob_all_id'');}\n    if(''#sob_all_label#''   == ''''){nuErrorMessage(''Label Cannot Be Blank..'', ''sob_all_label'');}\n    if(''#sob_all_order#''   == ''''){nuErrorMessage(''Order Cannot Be Blank..'', ''sob_all_order'');}\n    if(''#sob_all_top#''   == ''''){nuErrorMessage(''Top Cannot Be Blank..'', ''sob_all_top'');}\n    if(''#sob_all_left#''   == ''''){nuErrorMessage(''Left Cannot Be Blank..'', ''sob_all_left'');}\n    if(''#sob_all_width#''   == ''''){nuErrorMessage(''Width Cannot Be Blank..'', ''sob_all_width'');}\n    if(''#sob_all_height#''   == ''''){nuErrorMessage(''Height Cannot Be Blank..'', ''sob_all_height'');}\n    if(''#sob_all_cloneable#''   == ''''){nuErrorMessage(''Cloneable Cannot Be Blank..'', ''sob_all_cloneable'');}\n    if(''#sob_all_align#''   == ''''){nuErrorMessage(''Align Cannot Be Blank..'', ''sob_all_align'');}\n    if(''#sob_all_validate#''   == ''''){nuErrorMessage(''Validation Cannot Be Blank..'', ''sob_all_validate'');}\n    if(''#sob_all_readonly#''   == ''''){nuErrorMessage(''Read Only Cannot Be Blank..'', ''sob_all_readonly'');}\n\n\n    if($o == ''display''){\n        if(''#sob_display_sql#''   == ''''){nuErrorMessage(''Display Cannot Be Blank..'',''sob_display_sql'');}\n    }\n\n    if($o == ''html''){\n        if(''#sob_html_code#''   == ''''){nuErrorMessage(''HTML Cannot Be Blank..'',''sob_html_code'');}\n    }\n\n    if($o == ''lookup''){\n        if(''#sob_lookup_zzzzsys_form_id#''   == ''''){nuErrorMessage(''Form Cannot Be Blank..'', ''sob_lookup_zzzzsys_form_idcode'');}\n        if(''#sob_lookup_code#''   == ''''){nuErrorMessage(''Code Cannot Be Blank..'', ''sob_lookup_code'');}\n        if(''#sob_lookup_description#''   == ''''){nuErrorMessage(''Descrition Cannot Be Blank..'', ''sob_lookup_description'');}\n        if(''#sob_lookup_description_width#''   == ''''){nuErrorMessage(''Width Cannot Be Blank..'', ''sob_lookup_description_width'');}\n    }\n\n    if($o == ''run''){\n        if(''#sob_run_zzzzsys_form_id#''   == ''''){nuErrorMessage(''Run Cannot Be Blank..'', ''sob_run_zzzzsys_form_idcode'');}\n        if(''#sob_run_method#''   == ''''){nuErrorMessage(''Method Cannot Be Blank..'', ''sob_run_method'');}\n    }\n\n    if($o == ''select''){\n        if(''#sob_select_multiple#''   == ''''){nuErrorMessage(''Multiple Cannot Be Blank..'', ''sob_select_multiple'');}\n        if(''#sob_select_sql#''   == ''''){nuErrorMessage(''SQL/List Cannot Be Blank..'', ''sob_select_sql'');}\n    }\n\n    if($o == ''subform''){\n        if(''#sob_subform_zzzzsys_form_id#''   == ''''){nuErrorMessage(''Form Cannot Be Blank..'', ''sob_subform_zzzzsys_form_idcode'');}\n        if(''#sob_subform_foreign_key#''   == ''''){nuErrorMessage(''Foreign Key Cannot Be Blank..'', ''sob_subform_foreign_key'');}\n        if(''#sob_subform_add#''   == ''''){nuErrorMessage(''Addable Cannot Be Blank..'', ''sob_subform_add'');}\n        if(''#sob_subform_delete#''   == ''''){nuErrorMessage(''Deletable Cannot Be Blank..'', ''sob_subform_delete'');}\n        if(''#sob_subform_type#''   == ''''){nuErrorMessage(''Type Cannot Be Blank..'', ''sob_subform_type'');}\n    }\n\n    if($o == ''''){\n        if(''#sfo_browse_sql#''   == ''''){nuErrorMessage(''Browse SQL Cannot Be Blank..'', ''sfo_browse_sql'');}\n    }\n', '', '', '', 'SELECT * FROM zzzzsys_object\nJOIN zzzzsys_tab ON zzzzsys_tab_id = sob_all_zzzzsys_tab_id\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\n', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', '\nfunction nuObjectColor(){\n\n    $(''.nuValidate'').removeClass(''nuValidate'');\n\n    var o           = [];\n    \n    o[''run''] 	    = 1;\n    o[''display''] 	= 2;\n    o[''select''] 	= 3;\n    o[''lookup''] 	= 4;\n    o[''subform''] 	= 5;\n    o[''input''] 		= 6;\n    o[''html'']   	= 7;\n\n    $(''#sob_all_type'').removeClass();\n    $(''#sob_all_type'').addClass(''nu_''+$(''#sob_all_type'').val());\n    \n    $("#sob_all_type > option").each(function() {\n        $(this).addClass(''nu_''+this.value);\n    });\n    var t   = o[$(''#sob_all_type'').val()];\n    \n    for(var i = 0 ; i < 7 ; i++){\n        $(''#nuTab'' + i).removeClass(''nuRelatedTab'');\n    }\n    \n    $(''#nuTab0'').addClass(''nuRelatedTab'');\n    $(''#nuTab'' + t).addClass(''nuRelatedTab'');\n    \n    \n\n}\n\n$(''#sob_all_display_condition'').addClass(''sql'');\n$(''#sob_all_default_value_sql'').addClass(''sql'');\n$(''#sob_display_sql'').addClass(''sql'');\n$(''#sob_select_sql'').addClass(''sql'');\n$(''#sob_lookup_php'').addClass(''php'');\n$(''#sob_lookup_javascript'').addClass(''js'');\n$(''#sob_html_code'').addClass(''html'');\n\n\n$(''.js'').dblclick(function() {\n	nuOpenAce(''Javascript'', this.id);\n});\n\n$(''.sql'').dblclick(function() {\n	nuOpenAce(''SQL'', this.id);\n});\n\n$(''.html'').dblclick(function() {\n	nuOpenAce(''HTML'', this.id);\n});\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n\nnuObjectColor();\n\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.textContent);\n});\n\n\n\n\n'),
('nulookup', 'edit', 'LOOK', 'Lookup Objects to populate', 'zzzzsys_lookup', 'zzzzsys_lookup_id', '', '', '', '', '', '', '', '', '', '', 'SELECT *\nFROM zzzzsys_lookup', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nuevent', 'edit', 'EVE', 'Object Events', 'zzzzsys_event', 'zzzzsys_event_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_event', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nuaccess', 'browseedit', 'ACC', 'Access Levels', 'zzzzsys_access_level', 'zzzzsys_access_level_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_access_level\nORDER BY sal_code', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', ' '),
('nunonsystemform', 'edit', 'FORMZ', 'nuBuilder non-System Form', 'zzzzsys_form', 'zzzzsys_form_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_form\nORDER BY sfo_code', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '574275d543536ba', '574275d543536ba', '', '', ''),
('nuaccessforms', 'edit', 'ACCFRM', 'Accessible Forms', 'zzzzsys_access_level_form', 'zzzzsys_access_level_form_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_access_level_form\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = slf_zzzzsys_form_id\nORDER BY sfo_code\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574665a15bbc1a1', 'browseedit', 'ACCGRP', 'Access Group', 'zzzzsys_user_group', 'zzzzsys_user_group_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_user_group\nLEFT JOIN zzzzsys_form ON sug_zzzzsys_form_id = zzzzsys_form_id\nORDER BY sug_code', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', ''),
('57466ebd5c0dcdb', 'browseedit', 'ACCUSE', 'User', 'zzzzsys_user', 'zzzzsys_user_id', '', '', '', '', '', '', '', 'if(''#new_password#'' == ''#check_password#'' && ''#check_password#'' != ''#check_p''.''assword#'' && ''#check_password#'' != ''''){\n\n	$pw	= md5(''#check_password#'');\n	nuRunQuery("UPDATE zzzzsys_user SET sus_login_password = ''$pw'' WHERE zzzzsys_user_id = ''#RECORD_ID#''");\n\n}\n\n', '', '', 'SELECT * FROM zzzzsys_user\nJOIN zzzzsys_user_group ON sus_zzzzsys_user_group_id = zzzzsys_user_group_id\nORDER BY sus_name', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', ''),
('nubuildreport', 'browseedit', 'BLDREP', 'Build Report', 'zzzzsys_report', 'zzzzsys_report_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', ''),
('nuphp', 'browseedit', 'PHPCODE', 'PHP Code', 'zzzzsys_php', 'zzzzsys_php_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_php\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id\nORDER BY sph_code\n', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', '$(''#sph_php'').addClass(''php'');\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n'),
('nublank', 'launch', 'BLA1', 'Blank', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\nvar reportID    = nuBC[nuBC.length-1].record_id;\n\n$(''#nuTab0'').hide();\n\n$(''.nuActionHolder'').css(''text-align'',''center'');\n\nnuAppendActionButton(''Print'',"nuRunReport(''" + reportID + "'');");\nnuAppendActionButton(''Email'',"nuEmailReport(''" + reportID + "'');");\n\n\n\n'),
('nuaccessgroup', 'subform', 'GAL', 'Groups Access Level', 'zzzzsys_user_group_access_level', 'zzzzsys_user_group_access_level_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_user_group_access_level', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5757a4b7181e365', 'browse', 'RUN', 'Run Form, Report or Procedure', 'zzzzsys_run_list', 'id', '', '', '', '', '$s = "\n\nDROP VIEW IF EXISTS zzzzsys_run_list;\nCREATE VIEW zzzzsys_run_list AS\nSELECT zzzzsys_form_id AS id, ''Form'' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_form\nUNION\nSELECT zzzzsys_report_id AS id, ''Report'' AS run, sre_code AS code, sre_description AS description FROM zzzzsys_report\nUNION\nSELECT zzzzsys_php_id AS id, ''Procedure'' AS run, sph_code AS code, sph_description AS description FROM zzzzsys_php\nORDER BY code;\n\n";\n\nnuRunQuery($s);', '', '', '', '', '', 'SELECT zzzzsys_form_id AS id, ''Form'' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_run_list', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\n$("[data-nu-column=''nucolumn000'']").each(function() {\n\n    $(this).addClass(''nu_''+this.innerHTML);\n\n});'),
('nudebug', 'browseedit', 'DEBUG', 'Debug', 'zzzzsys_debug', 'zzzzsys_debug_id', '', '', '50', '13', '', '', '', '', '\n$a  = ''#delete_option#'';\n$r  = ''#RECORD_ID#'';\n$d  = "DELETE FROM zzzzsys_debug ";\n\nif($a == 1){$d  = $d . "WHERE zzzzsys_debug_id = ''$r''";}\nif($a == 2){$d  = $d . "WHERE zzzzsys_debug_id != ''$r''";}\nif($a == 3){$d  = $d . "WHERE zzzzsys_debug_id < ''$r''";}\n\nnuRunQuery($d);\n', '', 'SELECT * FROM zzzzsys_debug\nORDER BY zzzzsys_debug_id DESC', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '$(''#delete_option'').val(0);'),
('nuaccessreport', 'browseedit', 'ACCPHP', 'Access To Procedures', 'zzzzsys_access_level_php', 'zzzzsys_access_level_php_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * \nFROM zzzzsys_access_level_php\nJOIN zzzzsys_php ON zzzzsys_php_id = slp_zzzzsys_php_id\nORDER BY sph_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57637ad7b560755', 'browseedit', 'ACCREP', 'Access To Report', 'zzzzsys_access_level_report', 'zzzzsys_access_level_report_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * \nFROM zzzzsys_access_level_report\nJOIN zzzzsys_report ON zzzzsys_report_id = sre_zzzzsys_report_id\nORDER BY sre_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nurunreport', 'browseedit', 'RUNREP', 'Run Report', 'zzzzsys_report', 'zzzzsys_report_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', 'window.nuTYPE = ''runreport'';\n\nfunction runreport(t){\n    \n    var r   = $(''#'' + t.id).attr(''data-nu-row'');\n    var c   = ''000'';\n    var f   =$(''#'' + r + c).html();\n    var p   = $(''#'' + t.id).attr(''data-nu-primary-key'');\n    \n    nuGetReport(f, p);\n    \n}\n\n'),
('nurunphp', 'browseedit', 'RUNPHP', 'Run PHP Code', 'zzzzsys_php', 'zzzzsys_php_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_php\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', 'window.nuTYPE = ''getphp'';\n\nfunction getphp(t){\n    \n    var r   = $(''#'' + t.id).attr(''data-nu-row'');\n    var c   = ''000'';\n    var p   = $(''#'' + r + c).html();\n    var f   = $(''#'' + t.id).attr(''data-nu-primary-key'');\n   \n    nuGetPHP(p,f, p);\n\n}\n'),
('577b4d78ef9a2a0', 'launch', 'test', 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nulaunchdates', 'launch', '2DATES', 'Between 2 Dates', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\nvar reportID    = nuBC[nuBC.length-1].record_id;\nnuAppendActionButton(''Run'',"nuRunPHP(''" + reportID + "'');");\nnuAppendActionButton(''Email'',"nuEmailPHP(''" + reportID + "'');");\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_library`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_library` (
  `zzzzsys_library_id` varchar(25) NOT NULL,
  `sli_zzzzsys_form_id` varchar(25) NOT NULL,
  `sli_library_zzzzsys_form_id` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzzsys_library_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_library`
--

INSERT INTO `zzzzsys_library` (`zzzzsys_library_id`, `sli_zzzzsys_form_id`, `sli_library_zzzzsys_form_id`) VALUES
('56a83dc7d7b204b', 'nuhome', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_lookup`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_lookup` (
  `zzzzsys_lookup_id` varchar(25) NOT NULL DEFAULT '',
  `slo_zzzzsys_object_id` varchar(25) DEFAULT NULL,
  `zzzzsys_slo_object_name` varchar(300) DEFAULT NULL,
  `zzzzsys_slo_field_function_name` varchar(2000) NOT NULL,
  PRIMARY KEY (`zzzzsys_lookup_id`),
  KEY `slo_zzzzsys_object_id` (`slo_zzzzsys_object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_lookup`
--

INSERT INTO `zzzzsys_lookup` (`zzzzsys_lookup_id`, `slo_zzzzsys_object_id`, `zzzzsys_slo_object_name`, `zzzzsys_slo_field_function_name`) VALUES
('56b8276e7a011fe', '568b50020fc7a62', 'com_age', '35'),
('56b8276e7ec1cd9', '568b50020fc7a62', 'com_sex', '''f'''),
('56b92c23edc7ae0', '56b2b61749821eb', 'com_phone', '123'),
('56b92c5893c7694', '56b2b61749821eb', 'com_sex', '''m'''),
('56bacbb51422144', '56b2b61749821eb', 'com_notes', 'mannn()'),
('56c0fd69283049b', '56c0fd692478b9e', 'com_age', '35'),
('56c0fd692be8f9f', '56c0fd692478b9e', 'com_sex', '''f'''),
('5716e35257fdf8c', '5716e35257fc650', 'com_sex', '''f'''),
('5716e35257fd4c3', '5716e35257fc650', 'com_age', '35'),
('574293bcc4176a7', '570d9046964038e', 'sob_all_zzzzsys_form_id', 'zzzzsys_form_id'),
('5716eed5b740663', '5716eed5b73f688', 'com_age', '35'),
('5716eed5b7411c5', '5716eed5b73f688', 'com_sex', '''f''');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_object`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_object` (
  `zzzzsys_object_id` varchar(25) NOT NULL,
  `sob_all_zzzzsys_form_id` varchar(300) NOT NULL,
  `sob_all_type` varchar(300) NOT NULL,
  `sob_all_id` varchar(300) NOT NULL,
  `sob_all_label` varchar(300) NOT NULL,
  `sob_all_zzzzsys_tab_id` varchar(300) NOT NULL,
  `sob_all_order` int(11) NOT NULL,
  `sob_all_top` int(11) NOT NULL,
  `sob_all_left` int(11) NOT NULL,
  `sob_all_width` int(11) NOT NULL,
  `sob_all_height` int(11) NOT NULL,
  `sob_all_cloneable` varchar(300) NOT NULL,
  `sob_all_align` varchar(10) NOT NULL,
  `sob_all_validate` varchar(300) NOT NULL,
  `sob_all_readonly` varchar(300) NOT NULL,
  `sob_all_display_condition` text NOT NULL,
  `sob_all_default_value_sql` text NOT NULL,
  `sob_run_zzzzsys_form_id` varchar(300) NOT NULL,
  `sob_run_filter` varchar(300) NOT NULL,
  `sob_run_method` varchar(1) NOT NULL,
  `sob_run_id` varchar(300) NOT NULL,
  `sob_display_sql` text NOT NULL,
  `sob_select_multiple` varchar(300) NOT NULL,
  `sob_select_sql` text NOT NULL,
  `sob_lookup_code` varchar(300) NOT NULL,
  `sob_lookup_description` varchar(300) NOT NULL,
  `sob_lookup_description_width` varchar(300) NOT NULL,
  `sob_lookup_autocomplete` varchar(300) NOT NULL,
  `sob_lookup_zzzzsys_form_id` varchar(300) NOT NULL,
  `sob_lookup_javascript` text NOT NULL,
  `sob_lookup_php` text NOT NULL,
  `sob_subform_zzzzsys_form_id` varchar(300) NOT NULL,
  `sob_subform_foreign_key` varchar(300) NOT NULL,
  `sob_subform_add` varchar(300) NOT NULL,
  `sob_subform_delete` varchar(300) NOT NULL,
  `sob_subform_type` varchar(300) NOT NULL,
  `sob_input_format` varchar(300) NOT NULL,
  `sob_input_type` varchar(300) NOT NULL,
  `sob_html_code` text NOT NULL,
  PRIMARY KEY (`zzzzsys_object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_object`
--

INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_readonly`, `sob_all_display_condition`, `sob_all_default_value_sql`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_input_format`, `sob_input_type`, `sob_html_code`) VALUES
('567742c772b9642', '56773cb405f4913', 'input', 'com_name', 'Company Name', '56777715b87666e', 20, 61, 111, 100, 16, '1', 'l', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56789912d6d9ddb', '56773cb405f4913', 'input', 'com_address', 'Address', '567898dbc543710', 110, 12, 74, 200, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('5678992c5432850', '56773cb405f4913', 'input', 'com_suburb', 'Suburb', '567898dbc543710', 120, 41, 74, 70, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('5678a9474a323f5', '56773cb405f4913', 'input', 'com_phone', 'Phone Date', '56777715b87666e', 30, 97, 111, 111, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '', ''),
('5678ac0f8f3d3b8', '5678ab2c48c5c41', 'input', 'emp_name', 'Name', '5678ab2c49bd810', 10, 11, 100, 200, 16, '1', 'l', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5679d499ad76e9f', '5678ab2c48c5c41', 'input', 'emp_mobile', 'Mobile', '569c44dd2339963', 30, 24, 97, 136, 17, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8', 'text', ''),
('5689fdaf9babfb9', '56773cb405f4913', 'select', 'com_color_id', 'Color', '56777715b87666e', 70, 109, 312, 100, 159, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '1', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('568b50020fc7a62', '56773cb405f4913', 'lookup', 'com_business_id', 'Business Type', '56777715b87666e', 10, 25, 111, 60, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '200', '0', '568b508eec00d80', '', '', '', '', '', '', '', '', '', ''),
('568b543dab1d274', '56773cb405f4913', 'display', 'com_age', 'Age', '56777715b87666e', 40, 133, 111, 70, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', 'SELECT 12;', '', '', 'theCode', 'theDescription', '150', '0', '568b508eec00d80', '', '', '', '', '', '', '', '', '', ''),
('568dca341ca3737', '56773cb405f4913', 'run', 'com_run', 'Bus. Browse', '56777715b87666e', 60, 64, 312, 100, 30, '1', 'right', 'noblanks', '0', '', '', 'nublank', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('568ddbbf00aae51', '56773cb405f4913', 'subform', 'com_subform', 'Subform', '56777715b87666e', 80, 21, 474, 401, 300, '1', 'right', 'noblanks', '0', '', '', '568b508eec00d80', '', 'i', '', '', '', '', '', '', '', '', '', '', '', '5678ab2c48c5c41', 'emp_company_id', '1', '1', 'f', '', '', '<div style=\\"top:0px;left:0px;width:200px;height:200px;background-color:tan;\\">Hello World</div>'),
('569dc5613f24e14', 'nuhome', 'run', 'run_browse', 'Company', '569dc4ed270f08a', 10, 164, 92, 150, 30, '1', 'right', 'noblanks', '0', '', '', '56773cb405f4913', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b18903c9991', '568b508eec00d80', 'input', 'bus_code', 'Code', '568b508eecf5dee', 0, 10, 50, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b1afab7397e', '568b508eec00d80', 'input', 'bus_description', 'Description', '568b508eecf5dee', 0, 40, 100, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b1c7939942e', '568b508eec00d80', 'input', 'bus_check', 'Check', '568b508eecf5dee', 0, 100, 50, 30, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5716e2428f5e8fb', 'nuobject', 'subform', 'sob_all_event_subform', 'Javascript', '570d90df5ce8e1a', 170, 288, 495, 355, 110, '1', 'l', 'noblanks', '0', '', '', '', '', 'b', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'nuevent', 'sev_zzzzsys_object_id', '1', '1', 'g', '0', 'text', ''),
('56b7e275560be71', '56773cb405f4913', 'textarea', 'com_notes', 'Notes', '56777715b87666e', 50, 169, 111, 150, 77, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56c0fd692478b9e', '5678ab2c48c5c41', 'lookup', 'emp_business_id', 'Business Type', '5678ab2c49bd810', 20, 40, 104, 60, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '150', '0', '568b508eec00d80', '', '', '', '', '', '', '', '', '', ''),
('nuaccess', 'nuhome', 'run', 'run_access', 'Access Levels', '569dc4ed270f08a', 20, 221, 92, 150, 30, '1', 'l', 'noblanks', '0', '', '', 'nuaccess', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57073927b571eb9', '56773cb405f4913', 'run', 'form_button', 'FORM', '56777715b87666e', 100, 337, 106, 200, 30, '1', 'right', 'noblanks', '0', '', '', 'nuform', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57073c3a0b4ea44', 'nuform', 'select', 'sfo_type', 'Form Tab', '570730313dd25c5', 10, 10, 100, 200, 18, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|launch|Launch|subform|Subform Only', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57074535d3d3ec8', 'nuform', 'input', 'sfo_code', 'Code', '570730313dd25c5', 20, 40, 100, 100, 16, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5707456baf5bf41', 'nuform', 'input', 'sfo_description', 'Description', '570730313dd25c5', 30, 70, 100, 300, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570746cc078074e', 'nuform', 'input', 'sfo_table', 'Table Name', '570730313dd25c5', 40, 100, 100, 300, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b00aa9ff6b8d', 'nuform', 'input', 'sfo_primary_key', 'Primary Key', '570730313dd25c5', 50, 130, 100, 300, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b01cfd71142a', 'nuform', 'textarea', 'sfo_breadcrumb_title', 'Breadcrumb Title', '570730313dd25c5', 60, 160, 100, 300, 100, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b026adaa8641', 'nuform', 'input', 'sfo_row_height', 'Row Height', '5707303141ab448', 70, 10, 246, 50, 16, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b02f9b8e2424', 'nuform', 'input', 'sfo_rows_per_page', 'Rows Per Page', '5707303141ab448', 80, 11, 396, 50, 16, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b03bd99faa56', 'nuform', 'select', 'sfo_add_button', 'Add', '5707303141ab448', 90, 50, 149, 50, 16, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b067c2f7cdf5', 'nuform', 'lookup', 'sfo_redirect_form_id', 'Redirect', '5707303141ab448', 100, 10, 545, 100, 16, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '230', '', 'nuform', '', '', '', '', '', '', '', '', '', ''),
('570b0701d63eeb4', 'nuform', 'input', 'sfo_add_title', 'Title', '5707303141ab448', 110, 50, 246, 200, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b072d4270428', 'nuform', 'input', 'sfo_print_title', 'Title', '5707303141ab448', 120, 50, 695, 200, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b0771c4014e2', 'nuform', 'select', 'sfo_print_button', 'Print', '5707303141ab448', 130, 50, 597, 50, 16, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b152a3c72ab7', 'nuform', 'textarea', 'sfo_add_display_condition', 'Display Condition', '5707303141ab448', 140, 100, 246, 200, 50, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b165f71f99da', 'nuform', 'textarea', 'sfo_print_display_condition', 'Display Condition', '5707303141ab448', 150, 100, 695, 200, 50, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b17d7e20474b', 'nuform', 'textarea', 'sfo_before_browse_php', 'Before Browse', '5707303141ab448', 160, 170, 149, 745, 50, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b1883bbeec99', 'nuform', 'textarea', 'sfo_browse_sql', 'Browse SQL', '5707303141ab448', 170, 437, 150, 745, 50, '1', 'right', '', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b192e68d97ac', 'nuform', 'subform', 'browse_sf', 'Browse', '5707303141ab448', 180, 251, 150, 745, 150, '1', 'right', '', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', 'nubrowse', 'sbr_zzzzsys_form_id', '1', '1', 'g', '', '', ''),
('570b1a86d41a62c', 'nubrowse', 'input', 'sbr_title', 'Title', '570b19bf5981983', 10, 10, 10, 150, 18, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b1abae987b02', 'nubrowse', 'input', 'sbr_display', 'Display', '570b19bf5981983', 20, 10, 10, 150, 18, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b1ad216682ef', 'nubrowse', 'input', 'sbr_sort', 'Sort', '570b19bf5981983', 30, 10, 10, 150, 18, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b2330ea5f52a', 'nubrowse', 'select', 'sbr_align', 'Align', '570b19bf5981983', 40, 10, 10, 60, 18, '1', 'left', 'noblanks', '0', '', 'SELECT ''l'';', '', '', '', '', '', '0', 'l|Left|r|Right|c|Center', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b23a2439a04c', 'nubrowse', 'select', 'sbr_format', 'Format', '570b19bf5981983', 50, 10, 10, 80, 18, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', 'date|Date|number|Number', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b242a368005e', 'nubrowse', 'input', 'sbr_width', 'Width', '570b19bf5981983', 60, 10, 10, 50, 18, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b24bfbf54a99', 'nubrowse', 'input', 'sbr_order', 'Order', '570b19bf5981983', 70, 10, 10, 50, 18, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b3915874d635', 'nuform', 'subform', 'tab_sf', 'Tabs', '5754c7fd0191a83', 360, 58, 85, 255, 200, '0', 'l', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nutab', 'syt_zzzzsys_form_id', '1', '1', 'g', '', '', ''),
('570b39cc123601d', 'nutab', 'input', 'syt_title', 'Title', '576372e045a2f81', 0, 10, 100, 150, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b39f046ded37', 'nutab', 'input', 'syt_order', 'Order', '576372e045a2f81', 0, 40, 100, 50, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b427781e5e78', 'nuform', 'input', 'sfo_save_title', 'Title', '5707303145b7760', 190, 13, 180, 200, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b429d2588a7a', 'nuform', 'select', 'sfo_save_button', 'Save', '5707303145b7760', 200, 13, 67, 50, 18, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b4310d967879', 'nuform', 'select', 'sfo_clone_button', 'Clone', '5707303145b7760', 210, 13, 467, 50, 18, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b4353e4d8681', 'nuform', 'input', 'sfo_clone_title', 'Title', '5707303145b7760', 220, 13, 580, 200, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b44921b219e7', 'nuform', 'textarea', 'sfo_delete_display_condition', 'Display Condition', '5707303145b7760', 230, 143, 180, 200, 50, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b44e872eb861', 'nuform', 'textarea', 'sfo_clone_display_condition', 'Display Condition', '5707303145b7760', 240, 43, 580, 200, 50, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b4611eff6854', 'nuform', 'input', 'sfo_delete_title', 'Title', '5707303145b7760', 250, 113, 180, 200, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b46616bf1679', 'nuform', 'select', 'sfo_delete_button', 'Delete', '5707303145b7760', 260, 113, 67, 50, 18, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b47026e770be', 'nuform', 'textarea', 'sfo_save_display_condition', 'Display Condition', '5707303145b7760', 270, 43, 180, 200, 50, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b4758d50f01c', 'nuform', 'select', 'sfo_new_button', 'New', '5707303145b7760', 280, 113, 467, 50, 18, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b48672a9beec', 'nuform', 'input', 'sfo_new_title', 'Title', '5707303145b7760', 290, 113, 580, 200, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b48871430984', 'nuform', 'textarea', 'sfo_new_display_condition', 'Display Condition', '5707303145b7760', 300, 143, 580, 200, 50, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b48e9d83a208', 'nuform', 'textarea', 'sfo_before_open_php', 'Before Open', '5754c7fd0191a83', 350, 295, 85, 600, 50, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b49216a5ecb5', 'nuform', 'textarea', 'sfo_before_save_php', 'Before Save', '5707303145b7760', 310, 229, 180, 600, 50, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b498bb3ec197', 'nuform', 'textarea', 'sfo_after_save_php', 'After Save', '5707303145b7760', 320, 299, 180, 600, 50, '1', 'right', '', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b49c90719215', 'nuform', 'textarea', 'sfo_before_delete_php', 'Before Delete', '5707303145b7760', 330, 369, 180, 600, 50, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b49ec1a3d1a1', 'nuform', 'textarea', 'sfo_after_delete_php', 'After Delete', '5707303145b7760', 340, 439, 180, 600, 50, '1', 'right', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('573d15d41e279ba', 'nubuildreport', 'input', 'open_builder', 'Report Layout', '574b964941d3d1a', 60, 192, 239, 150, 30, '1', 'l', 'none', '1', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', ''),
('570c3b5d641d514', 'nubuildreport', 'textarea', 'sre_layout', 'Layout', '574b964941d3d1a', 70, 236, 239, 300, 100, '1', 'l', 'none', '1', 'SELECT ''0''', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570c3e6e67c39cb', 'nuform', 'textarea', 'sfo_javascript', 'Javascript', '570730315113e7e', 370, 54, 70, 600, 400, '1', 'right', '', '1', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570c3fce5be3355', 'nuphp', 'lookup', 'sph_zzzzsys_php_id', 'Include', '574b8ee0b2a4cdf', 60, 556, 152, 100, 18, '1', 'right', '', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '220', '', 'nunonsystemform', '', '', '', '', '', '', '', '', '', ''),
('57578afc803136a', 'nuphp', 'lookup', 'sph_zzzzsys_form_id', 'Launch from', '574b8ee0b2a4cdf', 40, 110, 152, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '230', '', 'nuform', '', '', '', '', '', '', '', '', '', ''),
('570c8e4ef085ed5', 'nuhome', 'run', 'object_button', 'Objects', '569dc4ed270f08a', 50, 107, 92, 150, 30, '1', 'right', 'noblanks', '0', '', '', 'nuobject', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570d8e3374d55fd', '56773cb405f4913', 'run', 'tab_button', 'TAB', '56777715b87666e', 90, 301, 106, 200, 30, '1', 'right', 'noblanks', '0', '', '', 'nutab', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570d9046964038e', 'nuobject', 'lookup', 'sob_all_zzzzsys_tab_id', 'Tab - Form', '570d90df5ce8e1a', 10, 20, 100, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', '', ''),
('570d98b34bf37c9', 'nuobject', 'select', 'sob_all_type', 'Type', '570d90df5ce8e1a', 20, 50, 100, 80, 18, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'display|Display|html|HTML|input|Input|lookup|Lookup|run|Run|select|Select|subform|Subform|textarea|Textarea', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', '', ''),
('570d9938ebe4428', 'nuobject', 'input', 'sob_all_id', 'ID', '570d90df5ce8e1a', 30, 80, 100, 200, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d998aea50861', 'nuobject', 'input', 'sob_all_label', 'Label', '570d90df5ce8e1a', 40, 110, 100, 200, 16, '1', 'l', '', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9a2e76e6a8c', 'nuobject', 'input', 'sob_all_order', 'Tabbing Order', '570d90df5ce8e1a', 50, 140, 100, 50, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9a5d4c69587', 'nuobject', 'input', 'sob_all_top', 'Top', '570d90df5ce8e1a', 60, 170, 100, 50, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9a7237fd2fc', 'nuobject', 'input', 'sob_all_left', 'Left', '570d90df5ce8e1a', 70, 200, 100, 50, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9a8847feae7', 'nuobject', 'input', 'sob_all_width', 'Width', '570d90df5ce8e1a', 80, 230, 100, 50, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9a9a6b24446', 'nuobject', 'input', 'sob_all_height', 'Height', '570d90df5ce8e1a', 90, 260, 100, 50, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9cb9d004579', 'nuobject', 'select', 'sob_all_cloneable', 'Cloneable', '570d90df5ce8e1a', 100, 290, 100, 50, 18, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9d0a39b227c', 'nuobject', 'select', 'sob_all_align', 'Align', '570d90df5ce8e1a', 110, 320, 100, 70, 18, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'l|Left|r|Right|c|Center', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9dd38561e81', 'nuobject', 'select', 'sob_all_validate', 'Validation', '570d90df5ce8e1a', 120, 350, 100, 100, 18, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', 'none|None|noblanks|No Blanks|noduplicates|No Duplicates', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9e1c5a6bcfd', 'nuobject', 'select', 'sob_all_readonly', 'Read Only', '570d90df5ce8e1a', 130, 380, 100, 50, 18, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9e6b7f6353a', 'nuobject', 'textarea', 'sob_all_display_condition', 'Display Condition', '570d90df5ce8e1a', 140, 20, 600, 250, 100, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9f1b9e51828', 'nuobject', 'textarea', 'sob_all_default_value_sql', 'Default Value', '570d90df5ce8e1a', 150, 150, 600, 250, 100, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9f7b580e04a', 'nuobject', 'textarea', 'sob_html_code', 'HTML', '570d90df73d3a2a', 400, 20, 100, 600, 400, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9fa3e7160c2', 'nuobject', 'textarea', 'sob_display_sql', 'Display', '570d90df63e6972', 220, 20, 100, 600, 400, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9ffcd716321', 'nuobject', 'textarea', 'sob_select_sql', 'SQL/List', '570d90df670db61', 230, 50, 200, 500, 150, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570da046d5f9f4c', 'nuobject', 'select', 'sob_select_multiple', 'Multiple', '570d90df670db61', 240, 20, 200, 50, 18, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570da149b76e0e6', 'nuobject', 'select', 'sob_input_type', 'Input Type', '570d90df707867b', 380, 50, 100, 80, 18, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', 'text|Text|checkbox|Checkbox|button|Button|password|Password', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570da31addae07f', 'nuobject', 'select', 'sob_input_format', 'Format', '570d90df707867b', 390, 20, 100, 120, 18, '1', 'right', '', '0', '', '', '', '', '', '', '', '0', '0|10000|1|10000.0|2|10000.00|3|10000.000|4|10000.0000|5|10000.00000|6|13-Jan-2007|7|13-01-2007|8|Jan-13-2007|9|01-13-2007|10|13-Jan-07|11|13-01-07|12|Jan-13-07|13|01-13-07|14|10,000|15|10,000.0|16|10,000.00|17|10,000.000|18|10,000.0000|19|10,000.00000|20|10000|21|10000,0|22|10000,00|23|10000,000|24|10000,0000|25|10000,00000|26|10.000|27|10.000,0|28|10.000,00|29|10.000,000|30|10.000,0000|31|10.000,00000|32|2007-01-13', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570da52f2828508', 'nuobject', 'lookup', 'sob_subform_zzzzsys_form_id', 'Form', '570d90df6d35fde', 330, 20, 200, 100, 16, '1', 'right', '', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('570da72cb4282e3', 'nuobject', 'input', 'sob_subform_foreign_key', 'Foreign Key', '570d90df6d35fde', 340, 50, 200, 200, 16, '1', 'left', '', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570da7b07ce4d7a', 'nuobject', 'select', 'sob_subform_add', 'Addable', '570d90df6d35fde', 350, 80, 200, 50, 18, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570da7d7d12aea2', 'nuobject', 'select', 'sob_subform_delete', 'Deleteable', '570d90df6d35fde', 360, 110, 200, 50, 18, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570da861e15f8f6', 'nuobject', 'select', 'sob_subform_type', 'Type', '570d90df6d35fde', 370, 140, 200, 80, 18, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', 'g|Grid|f|Form', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570da8ac71acec7', 'nuobject', 'lookup', 'sob_run_zzzzsys_form_id', 'Run', '570d90df60880c2', 180, 20, 200, 100, 16, '1', 'right', '', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'code', 'CONCAT(run, '' - '', description)', '200', '', '5757a4b7181e365', '', '', '', '', '', '', '', '', '', ''),
('570da93be3f323f', 'nuobject', 'input', 'sob_run_filter', 'Filter', '570d90df60880c2', 190, 50, 200, 200, 16, '1', 'left', '', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570da986cb6807a', 'nuobject', 'input', 'sob_run_id', 'Record ID', '570d90df60880c2', 200, 80, 200, 200, 16, '1', 'left', '', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570daa6277a97e1', 'nuobject', 'select', 'sob_run_method', 'Method', '570d90df60880c2', 210, 110, 200, 80, 18, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', 'b|Button|i|iFrame', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570dab25164b394', 'nuobject', 'lookup', 'sob_lookup_zzzzsys_form_id', 'Form', '570d90df6a2c12a', 250, 20, 123, 100, 16, '1', 'right', '', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('570dabca9be44fd', 'nuobject', 'input', 'sob_lookup_code', 'Code', '570d90df6a2c12a', 260, 20, 523, 200, 16, '1', 'left', '', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570dabf5a2e2b8f', 'nuobject', 'input', 'sob_lookup_description', 'Description', '570d90df6a2c12a', 270, 50, 523, 200, 16, '1', 'left', '', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570dac54b62da77', 'nuobject', 'input', 'sob_lookup_description_width', 'Width', '570d90df6a2c12a', 280, 50, 773, 50, 16, '1', 'right', '', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570dad510d0e7f5', 'nuobject', 'textarea', 'sob_lookup_php', 'PHP run before populating Objects', '570d90df6a2c12a', 300, 80, 223, 600, 100, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570dadc061c6ef5', 'nuobject', 'textarea', 'sob_lookup_javascript', 'Javascript run after populating fields', '570d90df6a2c12a', 310, 400, 223, 600, 100, '1', 'left', '', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570daf3d2c9acb4', 'nuobject', 'subform', 'lookup_sf', 'Update Fields', '570d90df6a2c12a', 320, 200, 223, 600, 180, '1', 'l', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nulookup', 'slo_zzzzsys_object_id', '1', '1', 'g', '', '', ''),
('570db01f6dd4d3d', 'nulookup', 'input', 'zzzzsys_slo_object_name', 'Object Name', '570dafc86862c1b', 0, 20, 200, 274, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570db0522404442', 'nulookup', 'input', 'zzzzsys_slo_field_function_name', 'Field / Function Name', '570dafc86862c1b', 0, 40, 200, 270, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570db786c678c27', 'nuhome', 'run', 'form_button', 'Forms', '569dc4ed270f08a', 60, 50, 92, 150, 30, '1', 'right', 'noblanks', '0', '', '', 'nuform', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5726daf4237eb57', 'nuevent', 'input', 'sev_javascript', 'Javascript Function', '5726b139a7e27c2', 20, 1, 255, 150, 18, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', 'text', ''),
('5726cca96d51595', 'nuevent', 'select', 'sev_event', 'Event', '5726b139a7e27c2', 10, 1, 55, 150, 18, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'onclick|onclick|onblur|onblur|onchange|onchange|onfocus|onfocus', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', 'text', ''),
('5743da507326181', 'nuaccess', 'input', 'sal_description', 'Description', '5743d509312c4bc', 30, 80, 100, 200, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5743d964cbef2e1', 'nuaccess', 'lookup', 'sal_zzzzsys_form_id', 'Home', '5743d509312c4bc', 10, 20, 100, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nunonsystemform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('5742b06d956c254', 'nuobject', 'input', 'sob_all_zzzzsys_form_id', 'Form ID', '570d90df5ce8e1a', 160, 50, 320, 100, 16, '1', 'l', 'noblanks', '1', 'SELECT ''0''', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', '', ''),
('5743da6ab90d89b', 'nuaccess', 'input', 'sal_code', 'Code', '5743d509312c4bc', 20, 50, 100, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57452c417370475', 'nuaccessforms', 'lookup', 'slf_zzzzsys_form_id', 'Form', '5746616ea8ead0c', 0, 20, 100, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nunonsystemform', '', '', '', '', '1', '', '', '', '', ''),
('57452d00100e37b', 'nuaccess', 'subform', 'accform', '', '5743d509312ce9c', 40, 50, 50, 695, 400, '1', 'l', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessforms', 'slf_zzzzsys_access_level_id', '1', '1', 'g', '', '', ''),
('57464b254128724', 'nuaccessforms', 'select', 'slf_add_button', 'Add', '5746616ea8ead0c', 0, 20, 100, 50, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('57464b8ac424381', 'nuaccessforms', 'select', 'slf_save_button', 'Save', '5746616ea8ead0c', 0, 20, 100, 50, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('57464b99c32e7a9', 'nuaccessforms', 'select', 'slf_delete_button', 'Delete', '5746616ea8ead0c', 0, 20, 100, 50, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('57464ba7ab4fc9f', 'nuaccessforms', 'select', 'slf_clone_button', 'Clone', '5746616ea8ead0c', 0, 20, 100, 50, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('57464bb9275cf03', 'nuaccessforms', 'select', 'slf_new_button', 'New', '5746616ea8ead0c', 0, 20, 100, 50, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('57464bc6d665be3', 'nuaccessforms', 'select', 'slf_print_button', 'Print', '5746616ea8ead0c', 0, 20, 100, 50, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('574665c53498a27', '574665a15bbc1a1', 'input', 'sug_code', 'Code', '574665a15bc3218', 10, 51, 107, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574665db58bbad6', '574665a15bbc1a1', 'input', 'sug_description', 'Description', '574665a15bc3218', 20, 82, 107, 300, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5746661007c5501', 'nuhome', 'run', 'run_group', 'User Group', '569dc4ed270f08a', 70, 279, 92, 150, 30, '1', 'l', 'noblanks', '0', '', '', '574665a15bbc1a1', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574667a92f0374f', '574665a15bbc1a1', 'lookup', 'sug_zzzzsys_form_id', 'Home', '574665a15bc3218', 30, 112, 107, 70, 18, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', 'sfo_code', 'sfo_description', '300', '', 'nunonsystemform', '', '', '', '', '', '', '', '', '', ''),
('57466fa32c18b02', 'nuhome', 'run', 'run_user', 'User', '569dc4ed270f08a', 80, 332, 92, 150, 30, '1', 'l', 'noblanks', '0', '', '', '57466ebd5c0dcdb', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5746703645523e8', '57466ebd5c0dcdb', 'input', 'sus_name', 'Name', '57466ebd5c0fff2', 0, 10, 150, 300, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('57467053c6159d8', '57466ebd5c0dcdb', 'input', 'sus_email', 'Email', '57466ebd5c0fff2', 0, 40, 150, 300, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('57467094ba580d8', '57466ebd5c0dcdb', 'input', 'sus_login_name', 'Login Name', '57466ebd5c0fff2', 0, 100, 150, 200, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('574670b1f0ebdd9', '57466ebd5c0dcdb', 'input', 'new_password', 'Enter New Password', '57466ebd5c0fff2', 0, 130, 150, 200, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', ''),
('574670f777ae0d6', '57466ebd5c0dcdb', 'input', 'check_password', 'Reenter New Password', '57466ebd5c0fff2', 0, 160, 150, 200, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', ''),
('574671cdcc77367', '57466ebd5c0dcdb', 'lookup', 'sus_zzzzsys_user_group_id', 'User Group', '57466ebd5c0fff2', 0, 70, 150, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'sug_code', 'sug_description', '200', '', '574665a15bbc1a1', '', '', '', '', '', '', '', '', 'text', ''),
('574b8f87a400809', 'nuphp', 'input', 'sph_code', 'Code', '574b8ee0b2a4cdf', 10, 17, 152, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b8fa359b39fc', 'nuphp', 'input', 'sph_description', 'Description', '574b8ee0b2a4cdf', 20, 48, 152, 300, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b9008ac10e16', 'nuphp', 'textarea', 'sph_php', 'PHP', '574b8ee0b2a4cdf', 50, 141, 152, 600, 400, '1', 'l', '', '1', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b91aec1e5c94', 'nuhome', 'run', 'edit_php', 'Build Procedures', '569dc4ed270f08a', 90, 339, 434, 150, 30, '1', 'l', 'noblanks', '0', '', '', 'nuphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b97322568df5', 'nuhome', 'run', 'edit_report', 'Build Reports', '569dc4ed270f08a', 110, 339, 263, 150, 30, '1', 'l', 'noblanks', '0', '', '', 'nubuildreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57561237059313b', 'nublank', 'html', 'bla_html', '', '575611cca558059', 11, 400, 400, 1, 1, '', 'l', '', '', 'SELECT ''0''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '.'),
('5754c06bd926f66', 'nubuildreport', 'lookup', 'sre_zzzzsys_form_id', 'Launch From', '574b964941d3d1a', 40, 106, 239, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('57579cb29a87ac1', 'nubuildreport', 'input', 'sre_code', 'Code', '574b964941d3d1a', 10, 16, 239, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57579cd24784461', 'nubuildreport', 'input', 'sre_description', 'Description', '574b964941d3d1a', 20, 46, 239, 300, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5757b0bf72997cc', 'nuhome', 'run', 'run_run', 'Run', '569dc4ed270f08a', 30, 50, 284, 150, 30, '1', 'l', 'noblanks', '0', '', '', '5757a4b7181e365', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a2bb92683acf', '574665a15bbc1a1', 'subform', 'levels', 'Access Levels', '574665a15bc3218', 40, 174, 107, 465, 200, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessgroup', 'gal_zzzzsys_user_group_id', '1', '1', 'g', '', '', ''),
('575a2cf681d6427', 'nuaccessgroup', 'lookup', 'gal_zzzzsys_access_level_id', 'Access To..', '575a273aadf6c37', 40, 40, 107, 70, 18, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', 'sal_code', 'sal_description', '300', '', 'nuaccess', '', '', '', '', '', '', '', '', '', ''),
('575a326a877e7ed', 'nuhome', 'run', 'run_debug', 'Debug', '569dc4ed270f08a', 40, 394, 92, 150, 30, '1', 'l', 'noblanks', '0', '', '', 'nudebug', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a3c0497ca756', 'nudebug', 'textarea', 'deb_message', 'Message', '575a31edccc2012', 10, 55, 97, 600, 500, '0', 'l', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a3f7001496b0', 'nudebug', 'select', 'delete_option', 'Delete', '575a31edccc2012', 40, 14, 100, 134, 16, '1', 'l', 'noblanks', '0', '', 'SELECT 1', '', '', '', '', '', '0', '0|All|1|This|2|All But This|3|Older Than This', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a4060ddc83ef', 'nudebug', 'display', 'debug_id', 'Time Stamp', '575a31edccc2012', 20, 14, 574, 123, 16, '0', 'l', '', '0', '', '', '', '', '', '', 'SELECT deb_added \nFROM zzzzsys_debug \nWHERE zzzzsys_debug_id = ''#RECORD_ID#''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575f5fe89bf014b', 'nuaccessreport', 'lookup', 'slp_zzzzsys_php_id', 'PHP Procedures', '575f55e6e740d5a', 0, 20, 100, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '0', '', 'sph_code', 'sph_description', '200', '', 'nuphp', '', '', '', '', '1', '', '', '', '', ''),
('575f592d57ff088', 'nuaccess', 'subform', 'accphp', '', '575f5474793747e', 50, 50, 50, 395, 400, '1', 'l', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessreport', 'slp_zzzzsys_access_level_id', '1', '1', 'g', '', '', ''),
('57624c4714b0ce2', 'nuaccess', 'subform', 'accreport', '', '575f54747937ff5', 60, 50, 50, 395, 400, '1', 'l', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '57637ad7b560755', 'sre_zzzzsys_access_level_id', '1', '1', 'g', '', '', ''),
('57637d4688096ef', '57637ad7b560755', 'lookup', 'sre_zzzzsys_report_id', 'Report', '57637ad7b563282', 30, 47, 163, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'sre_code', 'sre_description', '200', '0', 'nubuildreport', '', '', '', '', '', '', '', '', '', ''),
('577b254578f0498', 'nubuildreport', 'input', 'sre_group', 'Group', '574b964941d3d1a', 30, 76, 239, 150, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4314f347f60', 'nuhome', 'run', 'run_report', 'Run Report', '569dc4ed270f08a', 120, 394, 263, 150, 30, '1', 'l', 'noblanks', '0', '', '', 'nurunreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', 'nurunreport', '', '0', '0', '', '', '', ''),
('577b49b3eb0c80f', 'nuhome', 'run', 'run_php', 'Run Procedure', '569dc4ed270f08a', 100, 394, 434, 150, 30, '1', 'l', 'noblanks', '0', '', '', 'nurunphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4dd43e0a9eb', '577b4d78ef9a2a0', 'input', 'steven', 'test', '577b4d78ef9c1d6', 1, 100, 100, 100, 20, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4eb7ad0f7f5', '577b4d78ef9a2a0', 'input', 'com_address', 'Address', '577b4d78ef9c1d6', 110, 12, 74, 200, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('577c7a54b78326c', 'nulaunchdates', 'input', 'from_date', 'Between', '577c5efa0d6275e', 10, 72, 115, 90, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '', ''),
('577c7a71c405f7c', 'nulaunchdates', 'input', 'to_date', 'And', '577c5efa0d6275e', 20, 72, 243, 90, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '', ''),
('578341d99ca3725', 'nubuildreport', 'lookup', 'sre_zzzzsys_php_id', 'PHP Used To Create #TABLE_ID#', '574b964941d3d1a', 50, 139, 239, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sph_code', 'sph_description', '200', '', 'nuphp', '', '', 'nuform', '', '1', '', '', '', '', ''),
('579039aaf34f7c5', 'nuphp', 'input', 'sph_group', 'Group', '574b8ee0b2a4cdf', 30, 79, 152, 300, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_php`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_php` (
  `zzzzsys_php_id` varchar(25) NOT NULL,
  `sph_code` varchar(300) NOT NULL,
  `sph_description` varchar(300) NOT NULL,
  `sph_group` varchar(100) NOT NULL,
  `sph_php` longtext NOT NULL,
  `sph_zzzzsys_php_id` varchar(25) NOT NULL,
  `sph_zzzzsys_form_id` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzzsys_php_id`),
  KEY `sph_code` (`sph_code`),
  KEY `sph_zzzzsys_php_id` (`sph_zzzzsys_php_id`),
  KEY `sph_zzzzsys_form_id` (`sph_zzzzsys_form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_php`
--

INSERT INTO `zzzzsys_php` (`zzzzsys_php_id`, `sph_code`, `sph_description`, `sph_group`, `sph_php`, `sph_zzzzsys_php_id`, `sph_zzzzsys_form_id`) VALUES
('57578be0057a49f', 'HELLOW', 'Hello World', 'test', 'print ''hello world'';', '5678ab2c48c5c41', 'nulaunchdates');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_report`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_report` (
  `zzzzsys_report_id` varchar(25) NOT NULL,
  `sre_code` varchar(300) NOT NULL,
  `sre_description` varchar(300) NOT NULL,
  `sre_group` varchar(100) NOT NULL,
  `sre_zzzzsys_php_id` varchar(25) NOT NULL,
  `sre_zzzzsys_form_id` varchar(25) NOT NULL,
  `sre_layout` longtext NOT NULL,
  PRIMARY KEY (`zzzzsys_report_id`),
  KEY `sre_code` (`sre_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_report`
--

INSERT INTO `zzzzsys_report` (`zzzzsys_report_id`, `sre_code`, `sre_description`, `sre_group`, `sre_zzzzsys_php_id`, `sre_zzzzsys_form_id`, `sre_layout`) VALUES
('574b9845a681d27', 'TESTREP', 'hello', 'aaa', '57901ec29bcba79', 'nulaunchdates', '{"top":30,"left":30,"bottom":260,"right":30,"width":210,"height":297,"paper":"A4","orientation":"P","groups":[{"sortField":"Detail","sortBy":"a","sections":[{"id":"","top":110,"height":28,"label":"Detail Header","page_break":0,"margins":6,"color":"#FFFFFF","objects":[{"id":"obj1001","objectType":"field","backgroundColor":"white","borderColor":"black","borderWidth":"0","fieldName":"com_name","fontColor":"black","fontFamily":"Arial","fontSize":"12","fontWeight":"","format":"","textAlign":"left","image":"","group":0,"section":0,"left":17,"top":6,"height":20,"width":221,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1001"},{"id":"obj1002","objectType":"field","backgroundColor":"white","borderColor":"black","borderWidth":"0","fieldName":"com_name","fontColor":"black","fontFamily":"Arial","fontSize":"12","fontWeight":"","format":"","textAlign":"left","image":"","group":0,"section":0,"left":252,"top":6,"height":20,"width":221,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1002"},{"id":"obj1003","objectType":"field","backgroundColor":"white","borderColor":"black","borderWidth":"0","fieldName":"com_suburb","fontColor":"black","fontFamily":"Arial","fontSize":"12","fontWeight":"","format":"","textAlign":"left","image":"","group":0,"section":0,"left":481,"top":6,"height":20,"width":221,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1003"}]}]},{"sortField":"Report","sortBy":"a","sections":[{"id":"","top":30,"height":1,"label":"Report Header","page_break":0,"margins":2,"color":"#FFFFFF","objects":[]},{"id":"","top":190,"height":1,"label":"Report Footer","page_break":0,"margins":10,"color":"#FFFFFF","objects":[]}]},{"sortField":"Page","sortBy":"a","sections":[{"id":"","top":70,"height":75,"label":"Page Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[{"id":"obj1004","objectType":"field","backgroundColor":"white","borderColor":"black","borderWidth":"1","fieldName":"","fontColor":"black","fontFamily":"Arial","fontSize":"10","fontWeight":"","format":"","textAlign":"left","image":"","group":0,"section":0,"left":17,"top":69,"height":"1","width":"690","zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1004"},{"id":"obj1005","objectType":"label","backgroundColor":"white","borderColor":"black","borderWidth":"0","fieldName":"Name","fontColor":"black","fontFamily":"Arial","fontSize":"16","fontWeight":"b","format":"","textAlign":"left","image":"","group":0,"section":0,"left":17,"top":42,"height":24,"width":221,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1005"},{"id":"obj1006","objectType":"label","backgroundColor":"white","borderColor":"black","borderWidth":"0","fieldName":"Suburb","fontColor":"black","fontFamily":"Arial","fontSize":"16","fontWeight":"b","format":"","textAlign":"left","image":"","group":0,"section":0,"left":481,"top":42,"height":24,"width":221,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1006"},{"id":"obj1007","objectType":"label","backgroundColor":"white","borderColor":"black","borderWidth":"0","fieldName":"Name","fontColor":"black","fontFamily":"Arial","fontSize":"16","fontWeight":"b","format":"","textAlign":"left","image":"","group":0,"section":0,"left":248,"top":41,"height":24,"width":221,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1007"},{"id":"obj1008","objectType":"label","backgroundColor":"white","borderColor":"black","borderWidth":"0","fieldName":"#description#","fontColor":"black","fontFamily":"Arial","fontSize":"10","fontWeight":"","format":"","textAlign":"left","image":"","group":0,"section":0,"left":18,"top":8,"height":20,"width":333,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1008"},{"id":"obj1009","objectType":"label","backgroundColor":"white","borderColor":"black","borderWidth":"0","fieldName":"Bewteen #from_date# And #to_date#","fontColor":"black","fontFamily":"Arial","fontSize":"10","fontWeight":"","format":"","textAlign":"left","image":"","group":0,"section":0,"left":444,"top":7,"height":20,"width":333,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1009"}]},{"id":"","top":150,"height":40,"label":"Page Footer","page_break":0,"margins":8,"color":"#FFFFFF","objects":[{"id":"obj1010","objectType":"field","backgroundColor":"white","borderColor":"black","borderWidth":"1","fieldName":"","fontColor":"black","fontFamily":"Arial","fontSize":"10","fontWeight":"","format":"","textAlign":"left","image":"","group":0,"section":0,"left":14,"top":3,"height":1,"width":690,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1010"}]}]},{"sortField":"com_name","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}],"groupBy":"a"},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]}],"currentGroup":0,"selected":[],"setFocus":"fieldName"}');

-- --------------------------------------------------------

--
-- Stand-in structure for view `zzzzsys_run_list`
--
CREATE TABLE IF NOT EXISTS `zzzzsys_run_list` (
`id` varchar(25)
,`run` varchar(9)
,`code` varchar(300)
,`description` varchar(300)
);
-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_session`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_session` (
  `zzzzsys_session_id` varchar(25) NOT NULL DEFAULT '',
  `sss_zzzzsys_user_id` varchar(25) DEFAULT NULL,
  `sss_timeout` bigint(20) NOT NULL,
  `sss_access` mediumtext NOT NULL,
  PRIMARY KEY (`zzzzsys_session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_session`
--

INSERT INTO `zzzzsys_session` (`zzzzsys_session_id`, `sss_zzzzsys_user_id`, `sss_timeout`, `sss_access`) VALUES
('57918231bb0a207', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}'),
('57918446f2e9416', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}'),
('57918486663ecae', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}'),
('57918ebed27913c', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}'),
('5791aaf16a36a2b', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}'),
('5791ab0ff06ed81', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}'),
('5791aef7d4cb8fc', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}'),
('5791b5d0cfacfb8', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}'),
('5791bb058f32030', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}'),
('57955e804b8083d', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}'),
('57955ec6ad9e467', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}'),
('57956039b9ca320', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}'),
('57956060d49ec05', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}'),
('57956142dab9828', 'globeadmin', 0, '{"forms":["56773cb405f4913","5678ab2c48c5c41","568b508eec00d80","56c513162acd102","574665a15bbc1a1","57466ebd5c0dcdb","5757a4b7181e365","57637ad7b560755","577b4d78ef9a2a0","nuaccess","nuaccessforms","nuaccessgroup","nuaccessreport","nublank","nubrowse","nubuildreport","nudebug","nuevent","nuform","nuhome","nulaunchdates","nulibrary","nulookup","nunonsystemform","nuobject","nuphp","nurunphp","nurunreport","nutab"],"reports":["574b9845a681d27"],"procedures":["57578be0057a49f"]}');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_setup`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_setup` (
  `zzzzsys_setup_id` varchar(25) NOT NULL DEFAULT '',
  `set_title` varchar(100) DEFAULT NULL,
  `set_time_out_minutes` int(11) DEFAULT NULL,
  `set_timezone` varchar(255) DEFAULT NULL,
  `set_smtp_username` varchar(255) DEFAULT NULL,
  `set_smtp_password` varchar(255) DEFAULT NULL,
  `set_smtp_host` varchar(255) DEFAULT NULL,
  `set_smtp_from_address` varchar(255) DEFAULT NULL,
  `set_smtp_from_name` varchar(255) DEFAULT NULL,
  `set_smtp_port` int(4) DEFAULT NULL,
  `set_smtp_use_ssl` char(1) DEFAULT '1',
  `set_fonts` text NOT NULL,
  `set_language` varchar(20) NOT NULL,
  `set_css` longtext NOT NULL,
  `set_denied` varchar(255) NOT NULL,
  `set_splash` varchar(1) NOT NULL,
  `set_inkfilepicker_key` varchar(500) NOT NULL,
  `zzzzsys_setup_log_added_at` datetime NOT NULL,
  `zzzzsys_setup_log_added_by` varchar(25) NOT NULL,
  `zzzzsys_setup_log_changed_at` datetime NOT NULL,
  `zzzzsys_setup_log_changed_by` varchar(25) NOT NULL,
  `zzzzsys_setup_log_viewed_at` datetime NOT NULL,
  `zzzzsys_setup_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzzsys_setup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_setup`
--

INSERT INTO `zzzzsys_setup` (`zzzzsys_setup_id`, `set_title`, `set_time_out_minutes`, `set_timezone`, `set_smtp_username`, `set_smtp_password`, `set_smtp_host`, `set_smtp_from_address`, `set_smtp_from_name`, `set_smtp_port`, `set_smtp_use_ssl`, `set_fonts`, `set_language`, `set_css`, `set_denied`, `set_splash`, `set_inkfilepicker_key`, `zzzzsys_setup_log_added_at`, `zzzzsys_setup_log_added_by`, `zzzzsys_setup_log_changed_at`, `zzzzsys_setup_log_changed_by`, `zzzzsys_setup_log_viewed_at`, `zzzzsys_setup_log_viewed_by`) VALUES
('1', 'NOT USED DELETED THIS FIELD', 120, 'Australia/Adelaide', '', '', '', '', '', 0, '', '', '', '<script>\nfunction nuLoadEditGlobal(){\n	nuOnLoad();\n}\nfunction nuLoadBrowseGlobal(){\n	nuOnLoad();\n}\nfunction nuOnLoad() {\n    /*                 \n    if (window.top === window.self) {\n    } else {\n           if ( !window.parent.document.getElementById(''nuDrag'') ) {\n               document.body.style.backgroundColor = ''#EDEDED'';\n           }      \n    }\n    */\n}\n</script>\n\n\n\n<style>\nb                            {color: #666666;}\na:focus, \na:visited, \na:hover, \na:active                     {outline: thin dotted #333;outline: 5px auto -webkit-focus-ring-color;outline-offset: -2px;color: #666666;}\ntable                        {padding:0px;margin:0px;text-align:center;vertical-align:top;margin-left:auto;margin-right:auto;width:100%;cellspacing:0px;cellpadding:0px}\ntr                           {padding:0px;margin:0px;text-align:top;vertical-align:top;}\ntd                           {padding:0px;margin:0px}\ndiv                          {padding:0px;margin:0px}\nimg                          {padding:0px;margin:0px;}\nselect                       {padding:0px;margin:0px; font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;}\ntextarea                     {padding:0px;margin:0px;font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;}\niframe                       {border: 0px;margin: 0px;padding: 0px;}\nbody                         {margin: 0;font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;font-size: 13px;line-height: 18px;color: #202020;background-color: ##f4f4f4;}\n.ui-widget                   {font-size: 0.8em;}\n.ui-autocomplete             {max-height: 200px; overflow-y: auto; overflow-x: hidden; }\ninput {\n	padding:0px;\n	margin:0px; \n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	border: 1px solid #e1e8ea;\n  	outline: none;\n	box-shadow: none;\n	padding: 0px;\n}\nselect {\n	padding:0px;\n	margin:0px; \n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	border: 1px solid #e1e8ea;\n  	outline: none;\n	box-shadow: none;\n	padding: 0px;\n}\ntextarea {\n	padding:0px;\n	margin:0px; \n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	border: 1px solid #e1e8ea;\n  	outline: none;\n	box-shadow: none;\n	padding: 0px;\n}\n.nuLookup    {\n	background-color: #93C8F9;\n	padding:0px;\n	margin:0px; \n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	border: 1px solid #e1e8ea;\n  	outline: none;\n	box-shadow: none;\n	padding: 0px;\n}\n.nuReadOnly  {\n	background-color: #CCCCCC;\n	padding:0px;\n	margin:0px; \n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	border: 1px solid #e1e8ea;\n  	outline: none;\n	box-shadow: none;\n	padding: 0px;\n}\n.nu_browse                   {background-color : #8de2e2}\n.nu_button                   {background-color : #98AFC7}\n.nu_checkbox                 {background-color : #FF6633}\n.nu_display                  {background-color : #C7B097}\n.nu_dropdown                 {background-color : #7bce98}\n.nu_html                     {background-color : #c497a6}\n.nu_iframe                   {background-color : #89C35C}\n.nu_listbox                  {background-color : #caa5f6}\n.nu_lookup                   {background-color : #EDDA74}\n.nu_subform                  {background-color : #fa9b96}\n.nu_text                     {background-color : #cbc287}\n.nu_textarea                 {background-color : #a0a7d6}\n.nu_words                    {background-color : #ffc082}   \n.nuError                     {background-color: #FF8080;}\n.nuHolder                    {position:relative;margin:auto;width:1100px;height:800px}\n.nuFileShadow                {border-bottom-left-radius:0px;border-bottom-right-radius:0px;border-top-right-radius:0px;border-top-left-radius:0px;box-shadow: 1px 1px 1px #888888;position:relative;top:170px;left:100px;margin:auto;width:280px;height:200px;font-size:16px;font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;background-color:white}\n.nuShadeHolder               {border-bottom-left-radius:0px;border-bottom-right-radius:0px;border-top-right-radius:0px;border-top-left-radius:0px;box-shadow: 0px 0px 0px #888888;position:absolute;top:70px;left:0px;margin:auto;width:1002px;height:542px}\n.nuDialogHolder              {position:absolute;left:0px;width:1020px;height:700px;border-style:solid;border-width:0px 0px 0px 0px;border-color:grey;-moz-border-radius: 0px;border-radius: 0px;}\n.nuActionButtonHolder        {position:absolute;top:15px;left:0px;width:1100px;text-align:center}\n.nuTabAreaHolder             {position:absolute;top:23px;left:0px;}\n.nuBrowseTabAreaHolder       {position:absolute;top:60px;left:0px;}\n.nuBrowseSearch              {color:red}\n.nuBreadCrumbHolder {\n	position:absolute;\n	left:0px;\n	top:45px;\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	color:#f7961c;\n	*zoom: 1;\n	margin-bottom: 0;\n	font-size: 15px;\n	line-height: 18px;\n	vertical-align: middle \n}\n.nuBreadCrumbSection {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	*zoom: 1;\n	margin-bottom: 2px;\n	font-size: 15px;\n	line-height: 23px;\n	text-decoration: underline;\n	vertical-align: middle; \n	cursor: pointer;\n}\n.nuBreadCrumbPointer {\n	color: #F7961C;\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	*zoom: 1;\n	margin-bottom: 2px;\n	font-size: 15px;\n    line-height: 23px;\n    vertical-align: middle; \n}\n.nuBreadCrumbSectionEnd {\n    font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n    color: #F7961C;\n    *zoom: 1;\n    margin-bottom: 2px;\n    font-size: 15px;\n    line-height: 23px;\n    vertical-align: middle; \n}\n.nuTabTitleHolder {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	font-size:16px;\n	position:absolute;\n	left:0px;\n	top:0px;\n	width:1100px;\n	min-height:18px;\n	-moz-border-top-left-radius:0px;\n	-moz-border-top-right-radius:0px;\n	border-top-left-radius:0px;\n	border-top-right-radius:0px;\n	border-style:solid;\n	border-width:0px;border-color:grey;\n	width:1100px;\n	border-width:0px 0px 0px 0px \n}\n.nuTabTitleHolderL {\n	font-family:"Helvetica Neue", \n	Helvetica, Arial, sans-serif;\n	font-size:16px;\n    position:absolute;\n	left:0px;\n	top:0px;\n	width:1100px;\n	min-height:18px;\n	-moz-border-top-left-radius:0px;\n	border-style:solid;\n	border-width:0px; \n	border-color:grey;\n	width:1100px;\n	border-width:0px 0px 0px 0px \n}\n.nuTabTitleHolderR {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	font-size:16px;\n	position:absolute;\n	left:0px;\n	top:0px;\n	width:1100px;\n	min-height:18px;\n	-moz-border-top-right-radius:0px;\n	border-top-right-radius:0px;\n	border-style:solid;\n	border-width:0px; \n	border-color:grey;\n	width:1100px;\n	border-width:0px 0px 0px 0px \n}\n.nuTabTitleHolderC {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	font-size:16px;\n	position:absolute;\n	left:0px;\n	top:0px;\n	width:1100px;\n	border-style:solid;\n	border-width:0px;\n	border-color:grey;\n	width:1100px;\n	border-width:0px 0px 0px 0px\n}\n.nuStatusHolder {\n	position:absolute;\n	top:520px;\n	left:0px;\n	width:1100px;\n	height:20px;\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	-moz-border-bottom-left-radius:0px;\n	-moz-border-bottom-right-radius:0px;\n	border-bottom-left-radius:0px;\n	border-bottom-right-radius:0px;\n	font-size:16px;\n	border-style:solid;\n	border-width:0px;\n	border-color:grey;\n}\n.nuTabTitle {\n	*zoom: 1;\n	padding: 4px 10px 4px;\n	margin-bottom: 0;\n	font-size: 13px;\n	line-height: 18px;\n	color: #666666;\n	text-align: center;\n	vertical-align: middle;\n}\n.nuSearchColumn {\n	*zoom: 1;\n	font-size: 13px;\n	line-height: 18px;\n	vertical-align: middle;\n\n}\n.nuBrowseCell {\n	*zoom: 1;\n	font-size: 13px;\n	line-height: 18px;\n	color: #202020;\n	vertical-align: middle;\n	border-style:solid;\n	border-width: 0.082em 0.082em 0.082em 0.082em; \n	border-color: #D3D3D3; \n}\n.nuGradient {\n         background: #CCCCCC;\n/*\n	background: #e0f3fa; \n	background: -moz-linear-gradient(top,  #e0f3fa 0%, #a6daea 23%, #01A6F5 100%); \n	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#e0f3fa), color-stop(23%,#a6daea), color-stop(100%,#01A6F5)); \n	background: -webkit-linear-gradient(top,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \n	background: -o-linear-gradient(top,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \n	background: -ms-linear-gradient(top,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \n	background: linear-gradient(to bottom,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \n	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#e0f3fa'', endColorstr=''#01A6F5'',GradientType=0 ); \n*/\n}\n.nuTabArea {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	position:absolute;\n	top:0px;\n	left:0px;\n	width:1100px;\n	height:605px;\n	border-style:solid;\n	border-width:0px 0px 0px 0px; \n	border-color:grey;\n	overflow:hidden;\n}\n.nuLoginBox {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	position:absolute;\n	top:0px;\n	left:0px;\n	width:310px;\n	height:300px;\n	/* border-style:solid;\n	border-width: 1px 1px 1px 1px; \n	border-color:grey; */\n	overflow:hidden;\n	background-color:#EDEDED;\n}\n.nuSelectedTab {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	/* background-color:#EDEDED; */\n	background-color: #f0f0f0;\n	color: #666666;\n	text-align:center;\n	vertical-align:top;\n	margin-left:auto;\n	margin-right:auto;\n\n}\n.nuUnselectedTab {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	color: #666666;\n	cursor: pointer;\n}\n.nuGreenUnselectedTab {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	background-color: #4FFF4F;\n	cursor: pointer;\n}\n.nuYellowUnselectedTab {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	background-color: #FFFE28;\n	cursor: pointer;\n}\n.nuSearch {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	background-color: #abd886;\n	padding: 6px 12px;\n    margin-bottom: 0;\n    font-size: 13px;\n    font-weight: normal;\n    line-height: 1.42857143;\n    text-align: left;\n    white-space: nowrap;\n    vertical-align: middle;	\n	color: #666666;\n	border: 1px solid transparent;\n}\n.nuSelectedTabTitle {\n	height:22px;\n	-moz-border-top-left-radius:0px;\n	-moz-border-top-right-radius:0px;\n	border-top-left-radius:0px;\n	border-top-right-radius:0px;\n	/* border-style:solid;\n	border-width:1px 1px 0px 1px; */\n	border-color: #01A6F5; \n}\n.nuButtonSent {\n	display: inline-block;\n	*display: inline;\n	/* IE7 inline-block hack */\n	*zoom: 1;\n	/* padding: 4px 10px 4px; */\n	margin-bottom: 0;\n	font-size: 13px;\n	line-height: 18px;\n	text-align: center;\n	vertical-align: middle;\n	color: #202020;\n	background-color: #CCCCCC;\n	background-image: -moz-linear-gradient(top, #FF4A4A, #FD0000);\n	background-image: -ms-linear-gradient(top, #FF4A4A, #FD0000);\n	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#FF4A4A), to(#FD0000));\n	background-image: -webkit-linear-gradient(top, #FF4A4A, #FD0000);\n	background-image: -o-linear-gradient(top, #FF4A4A, #FD0000);\n	background-image: linear-gradient(top, #FF4A4A, #FD0000);\n	background-repeat: repeat-x;\n	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=''#FF4A4A'', endColorstr=''#FD0000'', GradientType=0);\n	border-color: #e7e7e7 #e7e7e7 #bfbfbf;\n	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);\n	filter: progid:dximagetransform.microsoft.gradient(enabled=false);\n	border: 1px solid #A8A8A8;\n	border-bottom-color: #999999;\n	-webkit-border-radius: 0px;\n	-moz-border-radius: 0px;\n	border-radius: 0px;\n	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\n	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\n	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\n	cursor: pointer;\n	*margin-left: .3em;\n}\n.nuClose {\n	display: inline-block;\n	*display: inline;\n	/* IE7 inline-block hack */\n	*zoom: 1;\n	padding: 0px;\n	margin-bottom: 0;\n	font-size: 13px;\n	font-weight: bold;\n	line-height: 18px;\n	text-align: center;\n	vertical-align: middle;\n	color: #01A6F5;\n	background-color: #B9CACE;\n	background-image: -moz-linear-gradient(top, #E7E7E7, #B9CACE);\n	background-image: -ms-linear-gradient(top, #E7E7E7, #B9CACE);\n	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#E7E7E7), to(#B9CACE));\n	background-image: -webkit-linear-gradient(top, #E7E7E7, #B9CACE);\n	background-image: -o-linear-gradient(top, #E7E7E7, #B9CACE);\n	background-image: linear-gradient(top, #E7E7E7, #B9CACE);\n	background-repeat: repeat-x;\n	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=''#E7E7E7'', endColorstr=''#B9CACE'', GradientType=0);\n	border-color: #e7e7e7 #e7e7e7 #bfbfbf;\n	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);\n	filter: progid:dximagetransform.microsoft.gradient(enabled=false);\n	border: 1px solid #A8A8A8;\n	border-bottom-color: #999999;\n	-webkit-border-radius: 0px;\n	-moz-border-radius: 0px;\n	border-radius: 0px;\n	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\n	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\n	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\n	cursor: pointer;\n}\n.nuClose:hover {\n	font-weight: normal;\n	color: #202020;\n	background-color: #e9f3fa;\n	background-image: -moz-linear-gradient(top, #a6daea, #01A6F5);\n	background-image: -ms-linear-gradient(top, #a6daea, #01A6F5);\n	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#a6daea), to(#01A6F5));\n	background-image: -webkit-linear-gradient(top, #a6daea, #01A6F5);\n	background-image: -o-linear-gradient(top, #a6daea, #01A6F5);\n	background-image: linear-gradient(top, #a6daea, #01A6F5);\n	background-repeat: repeat-x;\n	filter: progid:dximagetransform.microsoft.gradient(enabled=false);\n	border: 1px solid #A8A8A8;\n	border-bottom-color: #999999;\n}\n.nuSaveMessageProgress {\n	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;\n	width:100px;\n	height:22px;\n	top:10px;\n	left:0px;\n	color: #202020;\n	position:absolute;\n	font-size: 14px;\n	line-height: 20px;\n	text-align: left;\n	vertical-align: middle;\n}\n.nuBrowseRowSelected         {background-color: #93C8F9;}\n.nuSaveMessage {\n	top:10px;\n	left:0px;\n	position:absolute;\n	/*\n	width:110px;\n	height:20px; \n	opacity:0.7\n	*/\n	display: inline-block;\n    padding: 6px 12px;\n    margin-bottom: 0;\n	font-size: 13px;\n	font-weight: normal;\n	line-height: 1.42857143;\n	text-align: center;\n	white-space: nowrap;\n	vertical-align: middle;\n	cursor: pointer;\n	-webkit-user-select: none;\n     -moz-user-select: none;\n      -ms-user-select: none;\n          user-select: none;\n	background-image: none;\n	border: 1px solid transparent;\n	border-radius: 0px;\n	color: #ffffff;\n	background-color: #abd886;\n	border-color: #abd886;\n}\n.nuNotSaved {\n  display: inline-block;\n  padding: 6px 12px;\n  margin-bottom: 0;\n  font-size: 13px;\n  font-weight: normal;\n  line-height: 1.42857143;\n  text-align: center;\n  white-space: nowrap;\n  vertical-align: middle;\n  cursor: pointer;\n  -webkit-user-select: none;\n     -moz-user-select: none;\n      -ms-user-select: none;\n          user-select: none;\n  background-image: none;\n  border: 1px solid transparent;\n  border-radius: 0px;\n  color: #ffffff;\n  background-color: #ff6969;\n  border-color: #ff6969;\n}\n.nuButton {\n  display: inline-block;\n  margin-bottom: 0;\n  font-size: 13px;\n  font-weight: normal;\n  line-height: 1.42857143;\n  text-align: center;\n  white-space: nowrap;\n  vertical-align: middle;\n  cursor: pointer;\n  -webkit-user-select: none;\n     -moz-user-select: none;\n      -ms-user-select: none;\n          user-select: none;\n  background-image: none;\n  border: 1px solid transparent;\n  border-radius: 0px;\n  \n  color: #ffffff;\n  background-color: #5bcaf5;\n  border-color: #5bcaf5;\n  \n}\n.nuActionButton {\n  padding: 6px 12px;\n}\n.nuButton:focus,\n.nuButton:active:focus,\n.nuButton.active:focus {\n  outline: thin dotted;\n  outline: 5px auto -webkit-focus-ring-color;\n  outline-offset: -2px;\n  color: #ffffff;\n  background-color: #00adef;\n  border-color: #00adef;\n}\n.nuButton:hover,\n.nuButton:focus {\n    text-decoration: none;\ncolor: #ffffff;\nbackground-color: #00adef;\nborder-color: #00adef;\n  \n}\n.nuButton:active,\n.nuButton.active {\n  background-image: none;\n  outline: 0;\n  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);\n          box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);\n		  \n  color: #ffffff;\nbackground-color: #00adef;\nborder-color: #00adef;\n		  \n}\n.nuButton.disabled {\n  pointer-events: none;\n  cursor: not-allowed;\n  filter: alpha(opacity=65);\n  -webkit-box-shadow: none;\n          box-shadow: none;\n  opacity: .65;\n  \ncolor: #ffffff;\nbackground-color: #00adef;\nborder-color: #00adef;\n    \n}\n</style>\n', '', '1', '', '0000-00-00 00:00:00', '', '2014-11-06 13:18:22', 'globeadmin', '2015-06-09 12:35:32', 'globeadmin'),
('default', 'NOT USED DELETED THIS FIELD', 120, 'Australia/Adelaide', '', '', '', '', '', 0, '', '', '', '<script>\nfunction nuLoadEditGlobal(){\n	nuOnLoad();\n}\nfunction nuLoadBrowseGlobal(){\n	nuOnLoad();\n}\nfunction nuOnLoad() {\n    /*                 \n    if (window.top === window.self) {\n    } else {\n           if ( !window.parent.document.getElementById(''nuDrag'') ) {\n               document.body.style.backgroundColor = ''#EDEDED'';\n           }      \n    }\n    */\n}\n</script>\n\n\n\n<style>\nb                            {color: #666666;}\na:focus, \na:visited, \na:hover, \na:active                     {outline: thin dotted #333;outline: 5px auto -webkit-focus-ring-color;outline-offset: -2px;color: #666666;}\ntable                        {padding:0px;margin:0px;text-align:center;vertical-align:top;margin-left:auto;margin-right:auto;width:100%;cellspacing:0px;cellpadding:0px}\ntr                           {padding:0px;margin:0px;text-align:top;vertical-align:top;}\ntd                           {padding:0px;margin:0px}\ndiv                          {padding:0px;margin:0px}\nimg                          {padding:0px;margin:0px;}\nselect                       {padding:0px;margin:0px; font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;}\ntextarea                     {padding:0px;margin:0px;font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;}\niframe                       {border: 0px;margin: 0px;padding: 0px;}\nbody                         {margin: 0;font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;font-size: 13px;line-height: 18px;color: #202020;background-color: ##f4f4f4;}\n.ui-widget                   {font-size: 0.8em;}\n.ui-autocomplete             {max-height: 200px; overflow-y: auto; overflow-x: hidden; }\ninput {\n	padding:0px;\n	margin:0px; \n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	border: 1px solid #e1e8ea;\n  	outline: none;\n	box-shadow: none;\n	padding: 0px;\n}\nselect {\n	padding:0px;\n	margin:0px; \n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	border: 1px solid #e1e8ea;\n  	outline: none;\n	box-shadow: none;\n	padding: 0px;\n}\ntextarea {\n	padding:0px;\n	margin:0px; \n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	border: 1px solid #e1e8ea;\n  	outline: none;\n	box-shadow: none;\n	padding: 0px;\n}\n.nuLookup    {\n	background-color: #93C8F9;\n	padding:0px;\n	margin:0px; \n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	border: 1px solid #e1e8ea;\n  	outline: none;\n	box-shadow: none;\n	padding: 0px;\n}\n.nuReadOnly  {\n	background-color: #CCCCCC;\n	padding:0px;\n	margin:0px; \n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	border: 1px solid #e1e8ea;\n  	outline: none;\n	box-shadow: none;\n	padding: 0px;\n}\n.nu_browse                   {background-color : #8de2e2}\n.nu_button                   {background-color : #98AFC7}\n.nu_checkbox                 {background-color : #FF6633}\n.nu_display                  {background-color : #C7B097}\n.nu_dropdown                 {background-color : #7bce98}\n.nu_html                     {background-color : #c497a6}\n.nu_iframe                   {background-color : #89C35C}\n.nu_listbox                  {background-color : #caa5f6}\n.nu_lookup                   {background-color : #EDDA74}\n.nu_subform                  {background-color : #fa9b96}\n.nu_text                     {background-color : #cbc287}\n.nu_textarea                 {background-color : #a0a7d6}\n.nu_words                    {background-color : #ffc082}   \n.nuError                     {background-color: #FF8080;}\n.nuHolder                    {position:relative;margin:auto;width:1100px;height:800px}\n.nuFileShadow                {border-bottom-left-radius:0px;border-bottom-right-radius:0px;border-top-right-radius:0px;border-top-left-radius:0px;box-shadow: 1px 1px 1px #888888;position:relative;top:170px;left:100px;margin:auto;width:280px;height:200px;font-size:16px;font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;background-color:white}\n.nuShadeHolder               {border-bottom-left-radius:0px;border-bottom-right-radius:0px;border-top-right-radius:0px;border-top-left-radius:0px;box-shadow: 0px 0px 0px #888888;position:absolute;top:70px;left:0px;margin:auto;width:1002px;height:542px}\n.nuDialogHolder              {position:absolute;left:0px;width:1020px;height:700px;border-style:solid;border-width:0px 0px 0px 0px;border-color:grey;-moz-border-radius: 0px;border-radius: 0px;}\n.nuActionButtonHolder        {position:absolute;top:15px;left:0px;width:1100px;text-align:center}\n.nuTabAreaHolder             {position:absolute;top:23px;left:0px;}\n.nuBrowseTabAreaHolder       {position:absolute;top:60px;left:0px;}\n.nuBrowseSearch              {color:red}\n.nuBreadCrumbHolder {\n	position:absolute;\n	left:0px;\n	top:45px;\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	color:#f7961c;\n	*zoom: 1;\n	margin-bottom: 0;\n	font-size: 15px;\n	line-height: 18px;\n	vertical-align: middle \n}\n.nuBreadCrumbSection {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	*zoom: 1;\n	margin-bottom: 2px;\n	font-size: 15px;\n	line-height: 23px;\n	text-decoration: underline;\n	vertical-align: middle; \n	cursor: pointer;\n}\n.nuBreadCrumbPointer {\n	color: #F7961C;\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	*zoom: 1;\n	margin-bottom: 2px;\n	font-size: 15px;\n    line-height: 23px;\n    vertical-align: middle; \n}\n.nuBreadCrumbSectionEnd {\n    font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n    color: #F7961C;\n    *zoom: 1;\n    margin-bottom: 2px;\n    font-size: 15px;\n    line-height: 23px;\n    vertical-align: middle; \n}\n.nuTabTitleHolder {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	font-size:16px;\n	position:absolute;\n	left:0px;\n	top:0px;\n	width:1100px;\n	min-height:18px;\n	-moz-border-top-left-radius:0px;\n	-moz-border-top-right-radius:0px;\n	border-top-left-radius:0px;\n	border-top-right-radius:0px;\n	border-style:solid;\n	border-width:0px;border-color:grey;\n	width:1100px;\n	border-width:0px 0px 0px 0px \n}\n.nuTabTitleHolderL {\n	font-family:"Helvetica Neue", \n	Helvetica, Arial, sans-serif;\n	font-size:16px;\n    position:absolute;\n	left:0px;\n	top:0px;\n	width:1100px;\n	min-height:18px;\n	-moz-border-top-left-radius:0px;\n	border-style:solid;\n	border-width:0px; \n	border-color:grey;\n	width:1100px;\n	border-width:0px 0px 0px 0px \n}\n.nuTabTitleHolderR {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	font-size:16px;\n	position:absolute;\n	left:0px;\n	top:0px;\n	width:1100px;\n	min-height:18px;\n	-moz-border-top-right-radius:0px;\n	border-top-right-radius:0px;\n	border-style:solid;\n	border-width:0px; \n	border-color:grey;\n	width:1100px;\n	border-width:0px 0px 0px 0px \n}\n.nuTabTitleHolderC {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	font-size:16px;\n	position:absolute;\n	left:0px;\n	top:0px;\n	width:1100px;\n	border-style:solid;\n	border-width:0px;\n	border-color:grey;\n	width:1100px;\n	border-width:0px 0px 0px 0px\n}\n.nuStatusHolder {\n	position:absolute;\n	top:520px;\n	left:0px;\n	width:1100px;\n	height:20px;\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	-moz-border-bottom-left-radius:0px;\n	-moz-border-bottom-right-radius:0px;\n	border-bottom-left-radius:0px;\n	border-bottom-right-radius:0px;\n	font-size:16px;\n	border-style:solid;\n	border-width:0px;\n	border-color:grey;\n}\n.nuTabTitle {\n	*zoom: 1;\n	padding: 4px 10px 4px;\n	margin-bottom: 0;\n	font-size: 13px;\n	line-height: 18px;\n	color: #666666;\n	text-align: center;\n	vertical-align: middle;\n}\n.nuSearchColumn {\n	*zoom: 1;\n	font-size: 13px;\n	line-height: 18px;\n	vertical-align: middle;\n\n}\n.nuBrowseCell {\n	*zoom: 1;\n	font-size: 13px;\n	line-height: 18px;\n	color: #202020;\n	vertical-align: middle;\n	border-style:solid;\n	border-width: 0.082em 0.082em 0.082em 0.082em; \n	border-color: #D3D3D3; \n}\n.nuGradient {\n         background: #CCCCCC;\n/*\n	background: #e0f3fa; \n	background: -moz-linear-gradient(top,  #e0f3fa 0%, #a6daea 23%, #01A6F5 100%); \n	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#e0f3fa), color-stop(23%,#a6daea), color-stop(100%,#01A6F5)); \n	background: -webkit-linear-gradient(top,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \n	background: -o-linear-gradient(top,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \n	background: -ms-linear-gradient(top,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \n	background: linear-gradient(to bottom,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \n	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#e0f3fa'', endColorstr=''#01A6F5'',GradientType=0 ); \n*/\n}\n.nuTabArea {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	position:absolute;\n	top:0px;\n	left:0px;\n	width:1100px;\n	height:605px;\n	border-style:solid;\n	border-width:0px 0px 0px 0px; \n	border-color:grey;\n	overflow:hidden;\n}\n.nuLoginBox {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	position:absolute;\n	top:0px;\n	left:0px;\n	width:310px;\n	height:300px;\n	/* border-style:solid;\n	border-width: 1px 1px 1px 1px; \n	border-color:grey; */\n	overflow:hidden;\n	background-color:#EDEDED;\n}\n.nuSelectedTab {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	/* background-color:#EDEDED; */\n	background-color: #f0f0f0;\n	color: #666666;\n	text-align:center;\n	vertical-align:top;\n	margin-left:auto;\n	margin-right:auto;\n\n}\n.nuUnselectedTab {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	color: #666666;\n	cursor: pointer;\n}\n.nuGreenUnselectedTab {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	background-color: #4FFF4F;\n	cursor: pointer;\n}\n.nuYellowUnselectedTab {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	background-color: #FFFE28;\n	cursor: pointer;\n}\n.nuSearch {\n	font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;\n	background-color: #abd886;\n	padding: 6px 12px;\n    margin-bottom: 0;\n    font-size: 13px;\n    font-weight: normal;\n    line-height: 1.42857143;\n    text-align: left;\n    white-space: nowrap;\n    vertical-align: middle;	\n	color: #666666;\n	border: 1px solid transparent;\n}\n.nuSelectedTabTitle {\n	height:22px;\n	-moz-border-top-left-radius:0px;\n	-moz-border-top-right-radius:0px;\n	border-top-left-radius:0px;\n	border-top-right-radius:0px;\n	/* border-style:solid;\n	border-width:1px 1px 0px 1px; */\n	border-color: #01A6F5; \n}\n.nuButtonSent {\n	display: inline-block;\n	*display: inline;\n	/* IE7 inline-block hack */\n	*zoom: 1;\n	/* padding: 4px 10px 4px; */\n	margin-bottom: 0;\n	font-size: 13px;\n	line-height: 18px;\n	text-align: center;\n	vertical-align: middle;\n	color: #202020;\n	background-color: #CCCCCC;\n	background-image: -moz-linear-gradient(top, #FF4A4A, #FD0000);\n	background-image: -ms-linear-gradient(top, #FF4A4A, #FD0000);\n	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#FF4A4A), to(#FD0000));\n	background-image: -webkit-linear-gradient(top, #FF4A4A, #FD0000);\n	background-image: -o-linear-gradient(top, #FF4A4A, #FD0000);\n	background-image: linear-gradient(top, #FF4A4A, #FD0000);\n	background-repeat: repeat-x;\n	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=''#FF4A4A'', endColorstr=''#FD0000'', GradientType=0);\n	border-color: #e7e7e7 #e7e7e7 #bfbfbf;\n	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);\n	filter: progid:dximagetransform.microsoft.gradient(enabled=false);\n	border: 1px solid #A8A8A8;\n	border-bottom-color: #999999;\n	-webkit-border-radius: 0px;\n	-moz-border-radius: 0px;\n	border-radius: 0px;\n	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\n	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\n	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\n	cursor: pointer;\n	*margin-left: .3em;\n}\n.nuClose {\n	display: inline-block;\n	*display: inline;\n	/* IE7 inline-block hack */\n	*zoom: 1;\n	padding: 0px;\n	margin-bottom: 0;\n	font-size: 13px;\n	font-weight: bold;\n	line-height: 18px;\n	text-align: center;\n	vertical-align: middle;\n	color: #01A6F5;\n	background-color: #B9CACE;\n	background-image: -moz-linear-gradient(top, #E7E7E7, #B9CACE);\n	background-image: -ms-linear-gradient(top, #E7E7E7, #B9CACE);\n	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#E7E7E7), to(#B9CACE));\n	background-image: -webkit-linear-gradient(top, #E7E7E7, #B9CACE);\n	background-image: -o-linear-gradient(top, #E7E7E7, #B9CACE);\n	background-image: linear-gradient(top, #E7E7E7, #B9CACE);\n	background-repeat: repeat-x;\n	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=''#E7E7E7'', endColorstr=''#B9CACE'', GradientType=0);\n	border-color: #e7e7e7 #e7e7e7 #bfbfbf;\n	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);\n	filter: progid:dximagetransform.microsoft.gradient(enabled=false);\n	border: 1px solid #A8A8A8;\n	border-bottom-color: #999999;\n	-webkit-border-radius: 0px;\n	-moz-border-radius: 0px;\n	border-radius: 0px;\n	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\n	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\n	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\n	cursor: pointer;\n}\n.nuClose:hover {\n	font-weight: normal;\n	color: #202020;\n	background-color: #e9f3fa;\n	background-image: -moz-linear-gradient(top, #a6daea, #01A6F5);\n	background-image: -ms-linear-gradient(top, #a6daea, #01A6F5);\n	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#a6daea), to(#01A6F5));\n	background-image: -webkit-linear-gradient(top, #a6daea, #01A6F5);\n	background-image: -o-linear-gradient(top, #a6daea, #01A6F5);\n	background-image: linear-gradient(top, #a6daea, #01A6F5);\n	background-repeat: repeat-x;\n	filter: progid:dximagetransform.microsoft.gradient(enabled=false);\n	border: 1px solid #A8A8A8;\n	border-bottom-color: #999999;\n}\n.nuSaveMessageProgress {\n	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;\n	width:100px;\n	height:22px;\n	top:10px;\n	left:0px;\n	color: #202020;\n	position:absolute;\n	font-size: 14px;\n	line-height: 20px;\n	text-align: left;\n	vertical-align: middle;\n}\n.nuBrowseRowSelected         {background-color: #93C8F9;}\n.nuSaveMessage {\n	top:10px;\n	left:0px;\n	position:absolute;\n	/*\n	width:110px;\n	height:20px; \n	opacity:0.7\n	*/\n	display: inline-block;\n    padding: 6px 12px;\n    margin-bottom: 0;\n	font-size: 13px;\n	font-weight: normal;\n	line-height: 1.42857143;\n	text-align: center;\n	white-space: nowrap;\n	vertical-align: middle;\n	cursor: pointer;\n	-webkit-user-select: none;\n     -moz-user-select: none;\n      -ms-user-select: none;\n          user-select: none;\n	background-image: none;\n	border: 1px solid transparent;\n	border-radius: 0px;\n	color: #ffffff;\n	background-color: #abd886;\n	border-color: #abd886;\n}\n.nuNotSaved {\n  display: inline-block;\n  padding: 6px 12px;\n  margin-bottom: 0;\n  font-size: 13px;\n  font-weight: normal;\n  line-height: 1.42857143;\n  text-align: center;\n  white-space: nowrap;\n  vertical-align: middle;\n  cursor: pointer;\n  -webkit-user-select: none;\n     -moz-user-select: none;\n      -ms-user-select: none;\n          user-select: none;\n  background-image: none;\n  border: 1px solid transparent;\n  border-radius: 0px;\n  color: #ffffff;\n  background-color: #ff6969;\n  border-color: #ff6969;\n}\n.nuButton {\n  display: inline-block;\n  margin-bottom: 0;\n  font-size: 13px;\n  font-weight: normal;\n  line-height: 1.42857143;\n  text-align: center;\n  white-space: nowrap;\n  vertical-align: middle;\n  cursor: pointer;\n  -webkit-user-select: none;\n     -moz-user-select: none;\n      -ms-user-select: none;\n          user-select: none;\n  background-image: none;\n  border: 1px solid transparent;\n  border-radius: 0px;\n  \n  color: #ffffff;\n  background-color: #5bcaf5;\n  border-color: #5bcaf5;\n  \n}\n.nuActionButton {\n  padding: 6px 12px;\n}\n.nuButton:focus,\n.nuButton:active:focus,\n.nuButton.active:focus {\n  outline: thin dotted;\n  outline: 5px auto -webkit-focus-ring-color;\n  outline-offset: -2px;\n  color: #ffffff;\n  background-color: #00adef;\n  border-color: #00adef;\n}\n.nuButton:hover,\n.nuButton:focus {\n    text-decoration: none;\ncolor: #ffffff;\nbackground-color: #00adef;\nborder-color: #00adef;\n  \n}\n.nuButton:active,\n.nuButton.active {\n  background-image: none;\n  outline: 0;\n  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);\n          box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);\n		  \n  color: #ffffff;\nbackground-color: #00adef;\nborder-color: #00adef;\n		  \n}\n.nuButton.disabled {\n  pointer-events: none;\n  cursor: not-allowed;\n  filter: alpha(opacity=65);\n  -webkit-box-shadow: none;\n          box-shadow: none;\n  opacity: .65;\n  \ncolor: #ffffff;\nbackground-color: #00adef;\nborder-color: #00adef;\n    \n}\n</style>\n', 'nu%', '1', '', '0000-00-00 00:00:00', '', '2014-11-06 13:18:22', 'globeadmin', '2015-06-09 12:35:32', 'globeadmin');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_tab`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_tab` (
  `zzzzsys_tab_id` varchar(25) NOT NULL,
  `syt_zzzzsys_form_id` varchar(25) NOT NULL,
  `syt_title` varchar(250) NOT NULL,
  `syt_order` int(11) NOT NULL,
  PRIMARY KEY (`zzzzsys_tab_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_tab`
--

INSERT INTO `zzzzsys_tab` (`zzzzsys_tab_id`, `syt_zzzzsys_form_id`, `syt_title`, `syt_order`) VALUES
('5754c7fd0191a83', 'nuform', 'Tabs', 40),
('5707303145b7760', 'nuform', 'Edit', 30),
('5707303141ab448', 'nuform', 'Browse', 20),
('570730313dd25c5', 'nuform', 'Main', 10),
('56c5131630c0b35', '56c513162acd102', 'Kids Name', 10),
('56c5145674c17a1', '5678ab2c48c5c41', 'Kids', 22),
('569dc4ed270f08a', 'nuhome', 'Home', 5),
('569c44dd2339963', '5678ab2c48c5c41', 'Phone', 15),
('568b508eecf5dee', '568b508eec00d80', 'Business', 7),
('5678ab2c49bd810', '5678ab2c48c5c41', 'Employee', 4),
('567898dbc543710', '56773cb405f4913', 'Address', 20),
('56777715b87666e', '56773cb405f4913', 'Main', 10),
('570730315113e7e', 'nuform', 'Javascript', 50),
('574b964941d3d1a', 'nubuildreport', 'Report', 10),
('570b19bf5981983', 'nubrowse', 'Browse', 10),
('570c3f3edfc8a56', 'nulibrary', 'Include', 10),
('570d90df5ce8e1a', 'nuobject', 'All', 10),
('570d90df60880c2', 'nuobject', 'Run', 20),
('570d90df63e6972', 'nuobject', 'Display', 30),
('570d90df670db61', 'nuobject', 'Select', 40),
('570d90df6a2c12a', 'nuobject', 'Lookup', 50),
('570d90df6d35fde', 'nuobject', 'Subform', 60),
('570d90df707867b', 'nuobject', 'Input', 70),
('570d90df73d3a2a', 'nuobject', 'HTML', 80),
('570dafc86862c1b', 'nulookup', 'Lookup Objects', 10),
('5726b139a7e27c2', 'nuevent', 'Event', 10),
('57426b4c8702eb0', '57426b4c86fede1', 'Procedure', 50),
('57426b4c8703bfe', '57426b4c86fede1', 'Report', 40),
('57426b4c87046d2', '57426b4c86fede1', 'Edit', 30),
('57426b4c8705019', '57426b4c86fede1', 'Browse', 20),
('57426b4c870592a', '57426b4c86fede1', 'Main', 10),
('57426b4c87063a2', '57426b4c86fede1', 'Javascript', 60),
('57426b4c8706d91', '57426b4c86fede1', 'Include', 70),
('5743d509312c4bc', 'nuaccess', 'User', 10),
('5743d509312ce9c', 'nuaccess', 'Forms', 20),
('574277f47e2ea8a', 'nunonsystemform', 'Forms', 10),
('574b8ee0b2a4cdf', 'nuphp', 'PHP', 10),
('57466ebd5c0fff2', '57466ebd5c0dcdb', 'User Details', 10),
('574665a15bc3218', '574665a15bbc1a1', 'Group', 10),
('5746616ea8ead0c', 'nuaccessforms', 'Form', 10),
('575607eee7c6ad1', '575607eee7c3448', '-', 10),
('575611cca558059', 'nublank', 'Launch', 10),
('575a273aadf6c37', 'nuaccessgroup', 'Access Group', 10),
('575a31edccc2012', 'nudebug', 'Debug', 10),
('575f538d131616e', '575f538d131477c', 'Procedure', 10),
('575f5474793747e', 'nuaccess', 'Procedures', 30),
('575f54747937ff5', 'nuaccess', 'Reports', 40),
('575f55e6e740d5a', 'nuaccessreport', 'Access', 10),
('57637ad7b563282', '57637ad7b560755', 'Access', 10),
('576372e045a2f81', 'nutab', 'Tabs', 10),
('577b4228b34d894', 'nurunreport', 'Reportttttt', 10),
('577b48b3f3554c1', '577b48b3f351026', 'PHP', 10),
('577b4b6ca3ec226', 'nurunphp', 'PHP', 10),
('577b4d78ef9c1d6', '577b4d78ef9a2a0', 'test', 10),
('577c5efa0d6275e', 'nulaunchdates', 'Launch', 10),
('577da395132bac7', '5757a4b7181e365', 'Test', 10);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_user`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_user` (
  `zzzzsys_user_id` varchar(25) NOT NULL DEFAULT '',
  `sus_zzzzsys_user_group_id` varchar(25) DEFAULT NULL,
  `sus_name` varchar(50) DEFAULT NULL,
  `sus_email` varchar(255) DEFAULT NULL,
  `sus_login_name` varchar(20) DEFAULT NULL,
  `sus_login_password` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`zzzzsys_user_id`),
  KEY `sus_zzzzsys_user_group_id` (`sus_zzzzsys_user_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_user`
--

INSERT INTO `zzzzsys_user` (`zzzzsys_user_id`, `sus_zzzzsys_user_group_id`, `sus_name`, `sus_email`, `sus_login_name`, `sus_login_password`) VALUES
('5746735052d8d53', '57466de0851d354', 'jgh199', '4499', '33399', 'ac627ab1ccbdb62ec96e702f07f6425b'),
('5747c596c68fb68', '57466de0851d354', 'Steven', 'steven@nubuilder.com', 'steven', '202cb962ac59075b964b07152d234b70'),
('5747c5fa10e4a7d', '57466de0851d354', 'Bob', 'bb@gmail.com', 'bob', 'bda9643ac6601722a28f238714274da4'),
('5747caabead2aa8', '57466de0851d354', 'jon', 'jon', '1', NULL),
('5747cb8ca8d3de3', '57466de0851d354', 'g', 'g', 'g', 'b2f5ff47436671b6e533d8dc3614845d'),
('5747cc333c476fc', '57466de0851d354', 'Bill12', 'Bill1', '1234', 'c81e728d9d4c2f636f067f89cc14862c'),
('5747ce1dd50cdc5', '57466de0851d354', '55', '55', '55', 'b53b3a3d6ab90ce0268229151c9bde11'),
('5762478822092cd', '57466de0851d354', 'steven', 'steven@nubuilder.com', 's', '03c7c0ace395d80182db07ae2c30f034');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_user_group`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_user_group` (
  `zzzzsys_user_group_id` varchar(25) NOT NULL DEFAULT '',
  `sug_code` varchar(50) DEFAULT NULL,
  `sug_description` varchar(255) DEFAULT NULL,
  `sug_zzzzsys_form_id` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`zzzzsys_user_group_id`),
  KEY `sug_zzzzsys_access_level_id` (`sug_zzzzsys_form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_user_group`
--

INSERT INTO `zzzzsys_user_group` (`zzzzsys_user_group_id`, `sug_code`, `sug_description`, `sug_zzzzsys_form_id`) VALUES
('57466725f19a423', 'Admin', 'Admin', 'nuhome'),
('57466de0851d354', '1', '2', 'nuhome');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_user_group_access_level`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_user_group_access_level` (
  `zzzzsys_user_group_access_level_id` varchar(25) NOT NULL,
  `gal_zzzzsys_user_group_id` varchar(25) NOT NULL,
  `gal_zzzzsys_access_level_id` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzzsys_user_group_access_level_id`),
  KEY `zzzzsys_user_group_id` (`gal_zzzzsys_user_group_id`),
  KEY `gal_zzzzsys_access_level_id` (`gal_zzzzsys_access_level_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_user_group_access_level`
--

INSERT INTO `zzzzsys_user_group_access_level` (`zzzzsys_user_group_access_level_id`, `gal_zzzzsys_user_group_id`, `gal_zzzzsys_access_level_id`) VALUES
('575a2e1cef2b706', '57466de0851d354', '577aea8e8844920'),
('577b0c0fe1c6bb5', '', '577aea8e8844920'),
('577b0b676a16826', '', '57678e7dc00c099'),
('577b090acb48614', '', '577aea8e8844920'),
('577b08fdf05e48d', '', '577aea8e8844920');

-- --------------------------------------------------------

--
-- Structure for view `run_list`
--
DROP TABLE IF EXISTS `run_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `run_list` AS select `zzzzsys_form`.`zzzzsys_form_id` AS `id`,'Form' AS `type`,`zzzzsys_form`.`sfo_code` AS `code`,`zzzzsys_form`.`sfo_description` AS `sfo_description` from `zzzzsys_form` union select `zzzzsys_report`.`zzzzsys_report_id` AS `id`,'Report' AS `type`,`zzzzsys_report`.`sre_code` AS `code`,`zzzzsys_report`.`sre_description` AS `sre_description` from `zzzzsys_report` union select `zzzzsys_php`.`zzzzsys_php_id` AS `id`,'Procedure' AS `type`,`zzzzsys_php`.`sph_code` AS `code`,`zzzzsys_php`.`sph_description` AS `sph_description` from `zzzzsys_php` order by `code`;

-- --------------------------------------------------------

--
-- Structure for view `zzzzsys_run_list`
--
DROP TABLE IF EXISTS `zzzzsys_run_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zzzzsys_run_list` AS select `zzzzsys_form`.`zzzzsys_form_id` AS `id`,'Form' AS `run`,`zzzzsys_form`.`sfo_code` AS `code`,`zzzzsys_form`.`sfo_description` AS `description` from `zzzzsys_form` union select `zzzzsys_report`.`zzzzsys_report_id` AS `id`,'Report' AS `run`,`zzzzsys_report`.`sre_code` AS `code`,`zzzzsys_report`.`sre_description` AS `description` from `zzzzsys_report` union select `zzzzsys_php`.`zzzzsys_php_id` AS `id`,'Procedure' AS `run`,`zzzzsys_php`.`sph_code` AS `code`,`zzzzsys_php`.`sph_description` AS `description` from `zzzzsys_php` order by `code`;
