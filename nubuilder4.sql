-- phpMyAdmin SQL Dump
-- version 3.3.9.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 09, 2016 at 01:40 AM
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
('57295aa5660f48b', '', 'Mrs Comuh', '568a00e25b8d271', '', '43 Allen Stkh', '2016-07-03', '18-Jun-2016', '', '', '568ef59c1bd769c', 35, '13132'),
('57295c4c33cddd6', '', 'PCP200011', '568a00e25b8d271', '', '108 KWStftgh', '2016-07-04', '18-May-2016', '', '', '568ef59c1bd769c#nuSep#568ef58fe48207a', 0, 'blah'),
('57295ed9e996db0', '', 'OPSM111', '568a00c77f8f709', '', 'yyyyy', '2016-07-06', '20-May-2016', '', '', '568ef920846a089#nuSep#568ef59c1bd769c', 12, 'oooo12'),
('5716c7137efb0c5', '', 'OPSM1111', '568a00c77f8f709', '', '43 Allen St', '2016-07-06', '0423345544', '', 'm', '568ef920846a089#nuSep#568ef59c1bd769c#nuSep#568ef931d196b3e', 35, 'hh'),
('57a17047de6fa3a', '', 'Delii', '568a00d504d264c', '', '', '0000-00-00', '', '', '', '568ef59c1bd769c#nuSep#568ef931d196b3e#nuSep#568ef5a6968322b', 35, '');

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
('57295c4c33d0ac0', '57295c4c33cddd6', '1111j', 'Jun-15-2016', '568a00d504d264c'),
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
('5786e01113f6e5f', '57295aa5660f48b', 'Steveo', 'Jul-14-2016', '568a00f3e57f096'),
('57a17047de70c71', '57a17047de6fa3a', 'Jim', 'Aug-23-2016', '568a00d504d264c');

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
('579006cac02b9f3', 'nuphp', 'Launch By', 'CONCAT(sfo_code, '' - '', sfo_description)', 'l', NULL, 'sfo_code', 40, 300),
('57a29081a93f8d0', 'nutimezone', 'Time Zone', 'stz_timezone', NULL, NULL, 'stz_timezone', 10, 250),
('57a7c1cb78c07d1', '57a7c1cb78bf3a3', 'Language', 'trl_language', 'l', NULL, 'trl_language', 10, 100),
('57a7c1cb78c123b', '57a7c1cb78bf3a3', 'English', 'trl_english', 'l', NULL, 'trl_english', 20, 300),
('57a7c1cb78c1c89', '57a7c1cb78bf3a3', 'Translation', 'trl_translation', 'l', NULL, 'trl_translation', 30, 300);

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
('57620c455b19815', '575a3f7001496b0', 'onchange', 'nuSetHash(''delete_option'', this.value);'),
('57a298576dc6fe4', '57a298576dc5d7f', 'onclick', 'console.log(''onclick'')'),
('57a298576dc792a', '57a298576dc5d7f', 'onchange', 'console.log(''onchange2'')');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_file`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_file` (
  `zzzzsys_file_id` varchar(25) NOT NULL DEFAULT '',
  `sfi_filepicker` varchar(2000) NOT NULL,
  `sfi_code` varchar(10) DEFAULT NULL,
  `sfi_description` text,
  `sfi_type` varchar(50) NOT NULL,
  `sfi_size` varchar(10) NOT NULL,
  `sfi_name` varchar(255) NOT NULL,
  `sfi_group` varchar(200) DEFAULT NULL,
  `sfi_blob` longblob,
  PRIMARY KEY (`zzzzsys_file_id`),
  KEY `sfi_code` (`sfi_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_file`
--


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
('56773cb405f4913', 'browseedit', 'COM', 'Company', 'company', 'company_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM company\r\nLEFT JOIN business ON business_id = com_business_id', '1', '', '', '', '', '', '1', 'Save Me', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', ''),
('5678ab2c48c5c41', 'edit', 'EMP', 'Employee Subform', 'employee', 'employee_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM employee\nWHERE employee_id = ''5678d416056e635''', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', ''),
('568b508eec00d80', 'browseedit', 'BUS', 'Business', 'business', 'business_id', '', '', '', '4', '', '', '', '', '', '', 'SELECT * FROM business', '1', '', '', '', '', '', '1', '', '', '', '', '', '1', '', '', '1', '', '', '', '', '', '', '', ''),
('nuhome', 'launch', 'HOME', 'Home', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '0', '', '', '0', '', '', '0', '', '', '', '', '', '', '', '', '', '', ''),
('56c513162acd102', 'edit', 'CHI', 'Children', 'children', 'children_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM employee', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', ''),
('nuform', 'browseedit', 'FORM', 'nuBuilder Form', 'zzzzsys_form', 'zzzzsys_form_id', '', '', '', '', '', '', '    $o = ''#sfo_type#'';\n\n    if(''#sfo_type#''             == ''''){nuErrorMessage(''Type Cannot Be Blank..'', ''sfo_type'');}\n    if(''#sfo_code#''             == ''''){nuErrorMessage(''Code Cannot Be Blank..'', ''sfo_code'');}\n    if(''#sfo_description#''      == ''''){nuErrorMessage(''Description Cannot Be Blank..'', ''sfo_description'');}\n\n\n    \n    \n    if($o == ''browseedit'' || $o == ''subform'' || $o == ''browse''){\n        \n        if($o != ''browse''){\n            nuCheckTabs();\n        }\n        \n        if($o != ''subform''){\n            nuCheckBrowse();\n        }\n        \n        if(''#sfo_browse_sql#''   == ''''){nuErrorMessage(''Browse SQL Cannot Be Blank..'', ''sfo_browse_sql'');}\n    }\n\n    if($o == ''edit'' or $o == ''launch''){\n        nuCheckTabs();\n    }\n\n    if($o != ''launch''){\n        if(''#sfo_table#''            == ''''){nuErrorMessage(''Table Cannot Be Blank..'', ''sfo_table'');}\n        if(''#sfo_primary_key#''      == ''''){nuErrorMessage(''Primary Key Cannot Be Blank..'', ''sfo_primary_key'');}\n    }\n\nfunction nuCheckBrowse(){\n\n    $r  = 0;\n    $sf = nuSubformObject(''browse_sf'');\n\n    for($i = 0 ; $i < count($sf[''rows'']) ; $i++){\n       if($sf[''rows''][$i][8] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuErrorMessage(''Must have at least 1 Browse Column Defined..'');\n    }\n    \n}\n\nfunction nuCheckTabs(){\n    \n    $r  = 0;\n    $sf = nuSubformObject(''tab_sf'');\n    \n    for($i = 0 ; $i < count($sf[''rows'']) ; $i++){\n       if($sf[''rows''][$i][3] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuErrorMessage(''Must have at least 1 Tab Defined..'');\n    }\n    \n}', '$s  = "\n    SELECT * \n    FROM zzzzsys_browse \n    WHERE sbr_zzzzsys_form_id = ''#RECORD_ID#''\n    ORDER BY sbr_order;\n";\n\n\n$t = nuRunQuery($s);\n$o = 10;\nnudebug(''step 1'');\n\nwhile($r = db_fetch_object($t)){\n        \n    $s  = "\n        UPDATE zzzzsys_browse \n        SET sbr_order = ''$o''\n        WHERE zzzzsys_browse_id = ''$r->zzzzsys_browse_id''\n        ORDER BY sbr_order;\n    ";\n    \n    nuRunQuery($s);\n    \n    $o = $o + 10;    \n    \n}\n\n$s  = "\n    SELECT * \n    FROM zzzzsys_tab \n    WHERE syt_zzzzsys_form_id = ''#RECORD_ID#''\n    ORDER BY syt_order;\n";\n\n$t = nuRunQuery($s);\n$o = 10;\nnudebug(''step 2 ''.$s);\n\nwhile($r = db_fetch_object($t)){\n        \n    $s  = "\n        UPDATE zzzzsys_tab \n        SET syt_order = ''$o''\n        WHERE zzzzsys_tab_id = ''$r->zzzzsys_tab_id''\n        ORDER BY syt_order;\n    ";\n    \n    nuRunQuery($s);\nnudebug(''step 3 ''.$s);\n    \n    $o = $o + 10;    \n    \n}\nnudebug(''step 4'');\n\n', '', '', 'SELECT * FROM zzzzsys_form\nORDER BY sfo_code', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '$(''#sfo_breadcrumb_title'').addClass(''sql'');\n$(''#sfo_add_display_condition'').addClass(''sql'');\n$(''#sfo_print_display_condition'').addClass(''sql'');\n$(''#sfo_browse_sql'').addClass(''sql'');\n$(''#sfo_save_display_condition'').addClass(''sql'');\n$(''#sfo_clone_display_condition'').addClass(''sql'');\n$(''#sfo_delete_display_condition'').addClass(''sql'');\n$(''#sfo_new_display_condition'').addClass(''sql'');\n$(''#sfo_before_browse_php'').addClass(''php'');\n$(''#sfo_before_open_php'').addClass(''php'');\n$(''#sfo_before_save_php'').addClass(''php'');\n$(''#sfo_after_save_php'').addClass(''php'');\n$(''#sfo_before_delete_php'').addClass(''php'');\n$(''#sfo_after_delete_php'').addClass(''php'');\n$(''#sfo_javascript'').addClass(''js'');\n  \n$(''.js'').dblclick(function() {\n	nuOpenAce(''Javascript'', this.id);\n});\n\n$(''.sql'').dblclick(function() {\n	nuOpenAce(''SQL'', this.id);\n});\n\n$(''.html'').dblclick(function() {\n	nuOpenAce(''HTML'', this.id);\n});\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n\n\n\nfunction nuFormColor(){\n\n    var o           = [];\n    o[''browse'']		= Array(1,4);\n    o[''edit''] 		= Array(2,3,4);\n    o[''browseedit''] = Array(1,2,3,4);\n    o[''launch''] 	= Array(3,4);\n    o[''subform''] 	= Array(3,11);\n\n    $(''#sfo_type'').removeClass();\n    $(''#sfo_type'').addClass(''nu_''+$(''#sfo_type'').val());\n    \n    $("#sfo_type > option").each(function() {\n        $(this).addClass(''nu_''+this.value);\n    });\n\n    for(var i = 0 ; i < 7 ; i++){\n        $(''#nuTab'' + i).removeClass(''nuRelatedTab'');\n    }\n    \n    var t   = o[$(''#sfo_type'').val()];\n\n    $(''#nuTab0'').addClass(''nuRelatedTab'');\n\n    if(t !== undefined){\n        \n    	for(var i = 0 ; i < t.length ; i++){\n    		$(''#nuTab'' + t[i]).addClass(''nuRelatedTab'');		\n    	}\n    	\n    }\n    \n}\n\nnuFormColor();\n\nnuBuildSubformArray(''tab_sf'');\nnuBuildSubformArray(''browse_sf'');\n\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.textContent);\n});\n\n\n\nfunction nuCopyToSort(t){\n\n    var o = $(''#'' + t.id);\n    var p = o.attr(''data-nu-prefix'');\n    var s = $(''#'' + p + ''sbr_sort'');\n    \n    if(s.val() == ''''){\n        s.val( o.val())\n        .change();\n    }\n\n}\n'),
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
('nurunreport', 'browseedit', 'RUNREP', 'Run Report', 'zzzzsys_report', 'zzzzsys_report_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', 'window.nuTYPE = ''runreport'';\n\nfunction runreport(t){\n    \n    var r   = $(''#'' + t.id).attr(''data-nu-row'');\n    var c   = ''000'';\n    var f   = $(''#'' + r + c).html();\n    var p   = $(''#'' + t.id).attr(''data-nu-primary-key'');\n\n    nuGetPDF(f, p);\n    \n}\n\n'),
('nurunphp', 'browseedit', 'RUNPHP', 'Run PHP Code', 'zzzzsys_php', 'zzzzsys_php_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_php\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', 'window.nuTYPE = ''getphp'';\n\nfunction getphp(t){\n    \n    var r   = $(''#'' + t.id).attr(''data-nu-row'');\n    var c   = ''000'';\n    var p   = $(''#'' + r + c).html();\n    var f   = $(''#'' + t.id).attr(''data-nu-primary-key'');\n\n    nuGetPHP(p, f);\n\n}\n'),
('577b4d78ef9a2a0', 'launch', 'test', 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nulaunchdates', 'launch', '2DATES', 'Between 2 Dates', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nutimezone', 'browse', 'ZONE', 'Time Zone', 'zzzzsys_timezone', 'zzzzsys_timezone_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * \nFROM zzzzsys_timezone\nORDER BY stz_timezone', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', ''),
('57a29441f16c351', 'edit', 'SET', 'Setup', 'zzzzsys_setup', 'zzzzsys_setup_id', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '$(''#set_css'').addClass(''html'');\n  \n$(''.html'').dblclick(function() {\n	nuOpenAce(''HTML'', this.id);\n});\n\n'),
('57a7c1cb78bf3a3', 'browseedit', 'LANG', 'Language Translation', 'zzzzsys_translate', 'zzzzsys_translate_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * \nFROM zzzzsys_translate\nORDER BY trl_language, trl_english', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '');

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
('567742c772b9642', '56773cb405f4913', 'input', 'com_name', 'Company Name', '56777715b87666e', 20, 61, 111, 100, 16, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56789912d6d9ddb', '56773cb405f4913', 'input', 'com_address', 'Address', '567898dbc543710', 110, 12, 74, 200, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('5678992c5432850', '56773cb405f4913', 'input', 'com_suburb', 'Suburb', '567898dbc543710', 120, 41, 74, 70, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('5678a9474a323f5', '56773cb405f4913', 'input', 'com_phone', 'Phone Date', '56777715b87666e', 30, 97, 111, 111, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '', ''),
('5678ac0f8f3d3b8', '5678ab2c48c5c41', 'input', 'emp_name', 'Name', '5678ab2c49bd810', 10, 11, 100, 200, 16, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5679d499ad76e9f', '5678ab2c48c5c41', 'input', 'emp_mobile', 'Mobile', '569c44dd2339963', 30, 24, 97, 136, 17, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8', 'text', ''),
('5689fdaf9babfb9', '56773cb405f4913', 'select', 'com_color_id', 'Color', '56777715b87666e', 70, 109, 312, 100, 159, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '1', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('568b50020fc7a62', '56773cb405f4913', 'lookup', 'com_business_id', 'Business Type', '56777715b87666e', 10, 25, 111, 60, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '200', '0', '568b508eec00d80', '', '', '', '', '', '', '', '', '', ''),
('568b543dab1d274', '56773cb405f4913', 'display', 'com_age', 'hi', '56777715b87666e', 40, 133, 111, 70, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', 'SELECT 12;', '', '', 'theCode', 'theDescription', '150', '0', '568b508eec00d80', '', '', '', '', '', '', '', '', '', ''),
('568dca341ca3737', '56773cb405f4913', 'run', 'com_run', 'Bus. Browse', '56777715b87666e', 60, 64, 312, 100, 30, '1', 'right', 'noblanks', '0', '', '', 'nublank', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('568ddbbf00aae51', '56773cb405f4913', 'subform', 'com_subform', 'Subform', '56777715b87666e', 80, 21, 474, 401, 300, '1', 'right', 'noblanks', '0', '', '', '568b508eec00d80', '', 'i', '', '', '', '', '', '', '', '', '', '', '', '5678ab2c48c5c41', 'emp_company_id', '1', '1', 'f', '', '', '<div style=\\"top:0px;left:0px;width:200px;height:200px;background-color:tan;\\">Hello World</div>'),
('569dc5613f24e14', 'nuhome', 'run', 'run_browse', 'Company', '569dc4ed270f08a', 10, 164, 92, 150, 30, '1', 'right', 'noblanks', '0', '', '', '56773cb405f4913', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b18903c9991', '568b508eec00d80', 'input', 'bus_code', 'Code', '568b508eecf5dee', 0, 10, 50, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b1afab7397e', '568b508eec00d80', 'input', 'bus_description', 'Description', '568b508eecf5dee', 0, 40, 100, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b1c7939942e', '568b508eec00d80', 'input', 'bus_check', 'Check', '568b508eecf5dee', 0, 100, 50, 30, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5716e2428f5e8fb', 'nuobject', 'subform', 'sob_all_event_subform', 'Javascript', '570d90df5ce8e1a', 170, 288, 495, 355, 110, '1', 'left', 'noblanks', '0', '', '', '', '', 'b', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'nuevent', 'sev_zzzzsys_object_id', '1', '1', 'g', '0', 'text', ''),
('56b7e275560be71', '56773cb405f4913', 'textarea', 'com_notes', 'Notes', '56777715b87666e', 50, 169, 111, 150, 77, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56c0fd692478b9e', '5678ab2c48c5c41', 'lookup', 'emp_business_id', 'Business Type', '5678ab2c49bd810', 20, 40, 104, 60, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '150', '0', '568b508eec00d80', '', '', '', '', '', '', '', '', '', ''),
('nuaccess', 'nuhome', 'run', 'run_access', 'Access Levels', '569dc4ed270f08a', 20, 221, 92, 150, 30, '1', 'left', 'noblanks', '0', '', '', 'nuaccess', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
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
('570b3915874d635', 'nuform', 'subform', 'tab_sf', 'Tabs', '5754c7fd0191a83', 360, 58, 85, 255, 200, '0', 'left', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nutab', 'syt_zzzzsys_form_id', '1', '1', 'g', '', '', ''),
('570b39cc123601d', 'nutab', 'input', 'syt_title', 'Title', '576372e045a2f81', 0, 10, 100, 150, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b39f046ded37', 'nutab', 'input', 'syt_order', 'Order', '576372e045a2f81', 0, 40, 100, 50, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b427781e5e78', 'nuform', 'input', 'sfo_save_title', 'Title', '5707303145b7760', 190, 13, 180, 200, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
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
('573d15d41e279ba', 'nubuildreport', 'input', 'open_builder', 'Report Layout', '574b964941d3d1a', 60, 192, 239, 150, 30, '1', 'left', 'none', '1', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', ''),
('570c3b5d641d514', 'nubuildreport', 'textarea', 'sre_layout', 'Layout', '574b964941d3d1a', 70, 236, 239, 300, 100, '1', 'left', 'none', '1', 'SELECT ''0''', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570c3e6e67c39cb', 'nuform', 'textarea', 'sfo_javascript', 'Javascript', '570730315113e7e', 370, 54, 70, 600, 400, '1', 'right', '', '1', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570c3fce5be3355', 'nuphp', 'lookup', 'sph_zzzzsys_php_id', 'Include', '574b8ee0b2a4cdf', 60, 556, 152, 100, 18, '1', 'right', '', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '220', '', 'nunonsystemform', '', '', '', '', '', '', '', '', '', ''),
('57578afc803136a', 'nuphp', 'lookup', 'sph_zzzzsys_form_id', 'Launch from', '574b8ee0b2a4cdf', 40, 110, 152, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '230', '', 'nuform', '', '', '', '', '', '', '', '', '', ''),
('570c8e4ef085ed5', 'nuhome', 'run', 'object_button', 'Objects', '569dc4ed270f08a', 70, 107, 92, 150, 30, '1', 'right', 'noblanks', '0', '', '', 'nuobject', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570d8e3374d55fd', '56773cb405f4913', 'run', 'tab_button', 'TAB', '56777715b87666e', 90, 301, 106, 200, 30, '1', 'right', 'noblanks', '0', '', '', 'nutab', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570d9046964038e', 'nuobject', 'lookup', 'sob_all_zzzzsys_tab_id', 'Tab - Form', '570d90df5ce8e1a', 10, 20, 100, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', '', ''),
('570d98b34bf37c9', 'nuobject', 'select', 'sob_all_type', 'Type', '570d90df5ce8e1a', 20, 50, 100, 80, 18, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'display|Display|html|HTML|input|Input|lookup|Lookup|run|Run|select|Select|subform|Subform|textarea|Textarea', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', '', ''),
('570d9938ebe4428', 'nuobject', 'input', 'sob_all_id', 'ID', '570d90df5ce8e1a', 30, 80, 100, 200, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d998aea50861', 'nuobject', 'input', 'sob_all_label', 'Label', '570d90df5ce8e1a', 40, 110, 100, 200, 16, '1', 'left', '', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9a2e76e6a8c', 'nuobject', 'input', 'sob_all_order', 'Tabbing Order', '570d90df5ce8e1a', 50, 140, 100, 50, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9a5d4c69587', 'nuobject', 'input', 'sob_all_top', 'Top', '570d90df5ce8e1a', 60, 170, 100, 50, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9a7237fd2fc', 'nuobject', 'input', 'sob_all_left', 'Left', '570d90df5ce8e1a', 70, 200, 100, 50, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9a8847feae7', 'nuobject', 'input', 'sob_all_width', 'Width', '570d90df5ce8e1a', 80, 230, 100, 50, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9a9a6b24446', 'nuobject', 'input', 'sob_all_height', 'Height', '570d90df5ce8e1a', 90, 260, 100, 50, 16, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9cb9d004579', 'nuobject', 'select', 'sob_all_cloneable', 'Cloneable', '570d90df5ce8e1a', 100, 290, 100, 50, 18, '1', 'right', 'noblanks', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9d0a39b227c', 'nuobject', 'select', 'sob_all_align', 'Align', '570d90df5ce8e1a', 110, 320, 100, 70, 18, '1', 'left', 'noblanks', '0', '', 'SELECT ''left'';', '', '', '', '', '', '0', 'left|Left|right|Right|center|Center', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570d9dd38561e81', 'nuobject', 'select', 'sob_all_validate', 'Validation', '570d90df5ce8e1a', 120, 350, 100, 110, 18, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', 'none|None|noblanks|No Blanks|noduplicates|No Duplicates', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
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
('570daf3d2c9acb4', 'nuobject', 'subform', 'lookup_sf', 'Update Fields', '570d90df6a2c12a', 320, 200, 223, 600, 180, '1', 'left', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nulookup', 'slo_zzzzsys_object_id', '1', '1', 'g', '', '', ''),
('570db01f6dd4d3d', 'nulookup', 'input', 'zzzzsys_slo_object_name', 'Object Name', '570dafc86862c1b', 0, 20, 200, 274, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570db0522404442', 'nulookup', 'input', 'zzzzsys_slo_field_function_name', 'Field / Function Name', '570dafc86862c1b', 0, 40, 200, 270, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', 'text', ''),
('570db786c678c27', 'nuhome', 'run', 'form_button', 'Forms', '569dc4ed270f08a', 80, 50, 92, 150, 30, '1', 'right', 'noblanks', '0', '', '', 'nuform', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5726daf4237eb57', 'nuevent', 'input', 'sev_javascript', 'Javascript Function', '5726b139a7e27c2', 20, 1, 255, 150, 18, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', 'text', ''),
('5726cca96d51595', 'nuevent', 'select', 'sev_event', 'Event', '5726b139a7e27c2', 10, 1, 55, 150, 18, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'onclick|onclick|onblur|onblur|onchange|onchange|onfocus|onfocus', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', 'text', ''),
('5743da507326181', 'nuaccess', 'input', 'sal_description', 'Description', '5743d509312c4bc', 30, 80, 100, 200, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5743d964cbef2e1', 'nuaccess', 'lookup', 'sal_zzzzsys_form_id', 'Home', '5743d509312c4bc', 10, 20, 100, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nunonsystemform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('5742b06d956c254', 'nuobject', 'input', 'sob_all_zzzzsys_form_id', 'Form ID', '570d90df5ce8e1a', 160, 50, 320, 100, 16, '1', 'left', 'noblanks', '1', 'SELECT ''0''', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', '', '', '', '', '', '', '', ''),
('5743da6ab90d89b', 'nuaccess', 'input', 'sal_code', 'Code', '5743d509312c4bc', 20, 50, 100, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57452c417370475', 'nuaccessforms', 'lookup', 'slf_zzzzsys_form_id', 'Form', '5746616ea8ead0c', 0, 20, 100, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nunonsystemform', '', '', '', '', '1', '', '', '', '', ''),
('57452d00100e37b', 'nuaccess', 'subform', 'accform', '', '5743d509312ce9c', 40, 50, 50, 695, 400, '1', 'left', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessforms', 'slf_zzzzsys_access_level_id', '1', '1', 'g', '', '', ''),
('57464b254128724', 'nuaccessforms', 'select', 'slf_add_button', 'Add', '5746616ea8ead0c', 0, 20, 100, 50, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('57464b8ac424381', 'nuaccessforms', 'select', 'slf_save_button', 'Save', '5746616ea8ead0c', 0, 20, 100, 50, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('57464b99c32e7a9', 'nuaccessforms', 'select', 'slf_delete_button', 'Delete', '5746616ea8ead0c', 0, 20, 100, 50, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('57464ba7ab4fc9f', 'nuaccessforms', 'select', 'slf_clone_button', 'Clone', '5746616ea8ead0c', 0, 20, 100, 50, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('57464bb9275cf03', 'nuaccessforms', 'select', 'slf_new_button', 'New', '5746616ea8ead0c', 0, 20, 100, 50, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('57464bc6d665be3', 'nuaccessforms', 'select', 'slf_print_button', 'Print', '5746616ea8ead0c', 0, 20, 100, 50, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('574665c53498a27', '574665a15bbc1a1', 'input', 'sug_code', 'Code', '574665a15bc3218', 10, 51, 107, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574665db58bbad6', '574665a15bbc1a1', 'input', 'sug_description', 'Description', '574665a15bc3218', 20, 82, 107, 300, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5746661007c5501', 'nuhome', 'run', 'run_group', 'User Group', '569dc4ed270f08a', 90, 279, 92, 150, 30, '1', 'left', 'noblanks', '0', '', '', '574665a15bbc1a1', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574667a92f0374f', '574665a15bbc1a1', 'lookup', 'sug_zzzzsys_form_id', 'Home', '574665a15bc3218', 30, 112, 107, 70, 18, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', 'sfo_code', 'sfo_description', '300', '', 'nunonsystemform', '', '', '', '', '', '', '', '', '', ''),
('57466fa32c18b02', 'nuhome', 'run', 'run_user', 'User', '569dc4ed270f08a', 100, 332, 92, 150, 30, '1', 'left', 'noblanks', '0', '', '', '57466ebd5c0dcdb', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5746703645523e8', '57466ebd5c0dcdb', 'input', 'sus_name', 'Name', '57466ebd5c0fff2', 10, 10, 150, 300, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('57467053c6159d8', '57466ebd5c0dcdb', 'input', 'sus_email', 'Email', '57466ebd5c0fff2', 20, 40, 150, 300, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('57467094ba580d8', '57466ebd5c0dcdb', 'input', 'sus_login_name', 'Login Name', '57466ebd5c0fff2', 40, 124, 150, 200, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('574670b1f0ebdd9', '57466ebd5c0dcdb', 'input', 'new_password', 'Enter New Password', '57466ebd5c0fff2', 50, 154, 150, 200, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', ''),
('574670f777ae0d6', '57466ebd5c0dcdb', 'input', 'check_password', 'Reenter New Password', '57466ebd5c0fff2', 60, 184, 150, 200, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', ''),
('574671cdcc77367', '57466ebd5c0dcdb', 'lookup', 'sus_zzzzsys_user_group_id', 'User Group', '57466ebd5c0fff2', 70, 94, 150, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'sug_code', 'sug_description', '200', '', '574665a15bbc1a1', '', '', '', '', '', '', '', '', 'text', ''),
('574b8f87a400809', 'nuphp', 'input', 'sph_code', 'Code', '574b8ee0b2a4cdf', 10, 17, 152, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b8fa359b39fc', 'nuphp', 'input', 'sph_description', 'Description', '574b8ee0b2a4cdf', 20, 48, 152, 300, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b9008ac10e16', 'nuphp', 'textarea', 'sph_php', 'PHP', '574b8ee0b2a4cdf', 50, 141, 152, 600, 400, '1', 'left', '', '1', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b91aec1e5c94', 'nuhome', 'run', 'edit_php', 'Build Procedures', '569dc4ed270f08a', 110, 332, 434, 150, 30, '1', 'left', 'noblanks', '0', '', '', 'nuphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b97322568df5', 'nuhome', 'run', 'edit_report', 'Build Reports', '569dc4ed270f08a', 130, 332, 264, 150, 30, '1', 'left', 'noblanks', '0', '', '', 'nubuildreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57561237059313b', 'nublank', 'html', 'bla_html', '', '575611cca558059', 11, 400, 400, 1, 1, '', 'left', '', '', 'SELECT ''0''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '.'),
('5754c06bd926f66', 'nubuildreport', 'lookup', 'sre_zzzzsys_form_id', 'Launch From', '574b964941d3d1a', 40, 106, 239, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('57579cb29a87ac1', 'nubuildreport', 'input', 'sre_code', 'Code', '574b964941d3d1a', 10, 16, 239, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57579cd24784461', 'nubuildreport', 'input', 'sre_description', 'Description', '574b964941d3d1a', 20, 46, 239, 300, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5757b0bf72997cc', 'nuhome', 'run', 'run_run', 'Run', '569dc4ed270f08a', 30, 50, 264, 150, 30, '1', 'left', 'noblanks', '0', '', '', '5757a4b7181e365', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a2bb92683acf', '574665a15bbc1a1', 'subform', 'levels', 'Access Levels', '574665a15bc3218', 40, 174, 107, 465, 200, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessgroup', 'gal_zzzzsys_user_group_id', '1', '1', 'g', '', '', ''),
('575a2cf681d6427', 'nuaccessgroup', 'lookup', 'gal_zzzzsys_access_level_id', 'Access To..', '575a273aadf6c37', 40, 40, 107, 70, 18, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', 'sal_code', 'sal_description', '300', '', 'nuaccess', '', '', '', '', '', '', '', '', '', ''),
('575a326a877e7ed', 'nuhome', 'run', 'run_debug', 'Debug', '569dc4ed270f08a', 60, 394, 92, 150, 30, '1', 'left', 'noblanks', '0', '', '', 'nudebug', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a3c0497ca756', 'nudebug', 'textarea', 'deb_message', 'Message', '575a31edccc2012', 10, 55, 97, 600, 500, '0', 'left', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a3f7001496b0', 'nudebug', 'select', 'delete_option', 'Delete', '575a31edccc2012', 40, 14, 100, 134, 16, '1', 'left', 'noblanks', '0', '', 'SELECT 1', '', '', '', '', '', '0', '0|All|1|This|2|All But This|3|Older Than This', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a4060ddc83ef', 'nudebug', 'display', 'debug_id', 'Time Stamp', '575a31edccc2012', 20, 14, 574, 123, 16, '0', 'left', '', '0', '', '', '', '', '', '', 'SELECT deb_added \nFROM zzzzsys_debug \nWHERE zzzzsys_debug_id = ''#RECORD_ID#''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575f5fe89bf014b', 'nuaccessreport', 'lookup', 'slp_zzzzsys_php_id', 'PHP Procedures', '575f55e6e740d5a', 0, 20, 100, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '0', '', 'sph_code', 'sph_description', '200', '', 'nuphp', '', '', '', '', '1', '', '', '', '', ''),
('575f592d57ff088', 'nuaccess', 'subform', 'accphp', '', '575f5474793747e', 50, 50, 50, 395, 400, '1', 'left', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessreport', 'slp_zzzzsys_access_level_id', '1', '1', 'g', '', '', ''),
('57624c4714b0ce2', 'nuaccess', 'subform', 'accreport', '', '575f54747937ff5', 60, 50, 50, 395, 400, '1', 'left', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '57637ad7b560755', 'sre_zzzzsys_access_level_id', '1', '1', 'g', '', '', ''),
('57637d4688096ef', '57637ad7b560755', 'lookup', 'sre_zzzzsys_report_id', 'Report', '57637ad7b563282', 30, 47, 163, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'sre_code', 'sre_description', '200', '0', 'nubuildreport', '', '', '', '', '', '', '', '', '', ''),
('577b254578f0498', 'nubuildreport', 'input', 'sre_group', 'Group', '574b964941d3d1a', 30, 76, 239, 150, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4314f347f60', 'nuhome', 'run', 'run_report', 'Run Report', '569dc4ed270f08a', 140, 394, 264, 150, 30, '1', 'left', 'noblanks', '0', '', '', 'nurunreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', 'nurunreport', '', '0', '0', '', '', '', ''),
('577b49b3eb0c80f', 'nuhome', 'run', 'run_php', 'Run Procedure', '569dc4ed270f08a', 120, 394, 434, 150, 30, '1', 'left', 'noblanks', '0', '', '', 'nurunphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4dd43e0a9eb', '577b4d78ef9a2a0', 'input', 'steven', 'test', '577b4d78ef9c1d6', 1, 100, 100, 100, 20, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4eb7ad0f7f5', '577b4d78ef9a2a0', 'input', 'com_address', 'Address', '577b4d78ef9c1d6', 110, 12, 74, 200, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('577c7a54b78326c', 'nulaunchdates', 'input', 'from_date', 'Between', '577c5efa0d6275e', 10, 72, 115, 90, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '', ''),
('577c7a71c405f7c', 'nulaunchdates', 'input', 'to_date', 'And', '577c5efa0d6275e', 20, 72, 243, 90, 16, '1', 'left', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '', ''),
('578341d99ca3725', 'nubuildreport', 'lookup', 'sre_zzzzsys_php_id', 'PHP Used To Create #TABLE_ID#', '574b964941d3d1a', 50, 139, 239, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sph_code', 'sph_description', '200', '', 'nuphp', '', '', 'nuform', '', '1', '', '', '', '', ''),
('579039aaf34f7c5', 'nuphp', 'input', 'sph_group', 'Group', '574b8ee0b2a4cdf', 30, 79, 152, 300, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('579a9f624ada196', '56773cb405f4913', 'run', 'com_test_run', 'Bus. Browse', '56777715b87666e', 60, 400, 400, 100, 100, '1', 'left', 'noblanks', '0', '', '', 'nublank', '', 'i', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a29781085834c', 'nuhome', 'run', 'run_setup', 'Setup', '569dc4ed270f08a', 40, 100, 264, 150, 30, '1', 'left', 'noblanks', '0', '', '', '57a29441f16c351', '', 'b', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a298576dc5d7f', '57a29441f16c351', 'input', 'set_time_out_minutes', 'Timeout (minutes)', '57a29441f16e2e2', 10, 61, 111, 100, 16, '1', 'right', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', ''),
('57a29bffb8a5938', '57a29441f16c351', 'lookup', 'set_zzzzsys_timezone_id', 'Time Zone', '57a29441f16e2e2', 20, 93, 111, 300, 16, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', '', '', '', '', '', '0', '', ''),
('57a29f631fdd125', '57466ebd5c0dcdb', 'select', 'sus_language', 'Language', '57466ebd5c0fff2', 30, 67, 151, 150, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', '', '', '', '', '', '0', '', ''),
('57a2ade3a4625e3', '57a29441f16c351', 'textarea', 'set_fonts', 'Report Fonts', '57a29441f16e2e2', 30, 125, 111, 300, 100, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', '', '', '', '', '', '0', '', '');
INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_readonly`, `sob_all_display_condition`, `sob_all_default_value_sql`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_input_format`, `sob_input_type`, `sob_html_code`) VALUES
('57a2af5b466f884', '57a29441f16c351', 'input', 'set_smtp_username', 'Auth SMTP User Name', '57a29441f16eb9f', 40, 91, 208, 200, 16, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', ''),
('57a2afbe5b8d810', '57a29441f16c351', 'input', 'set_smtp_password', 'Auth SMTP Password', '57a29441f16eb9f', 50, 127, 208, 200, 16, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', ''),
('57a2affc246c61e', '57a29441f16c351', 'input', 'set_smtp_host', 'Auth SMTP Host', '57a29441f16eb9f', 60, 163, 208, 200, 16, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', ''),
('57a2b0490518152', '57a29441f16c351', 'input', 'set_smtp_from_address', 'Auth SMTP From Address', '57a29441f16eb9f', 70, 199, 208, 200, 16, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', ''),
('57a2b092a3fb465', '57a29441f16c351', 'input', 'set_smtp_from_name', 'Auth SMTP From Name', '57a29441f16eb9f', 80, 235, 208, 200, 16, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', ''),
('57a2b0d9e0c353d', '57a29441f16c351', 'input', 'set_smtp_port', 'Auth SMTP Port', '57a29441f16eb9f', 90, 271, 208, 70, 16, '1', 'right', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', ''),
('57a2b1b4bb27602', '57a29441f16c351', 'select', 'set_smtp_use_ssl', 'Auth SMTP Use SSL', '57a29441f16eb9f', 100, 307, 208, 70, 16, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a2da33d52fac6', '57a29441f16c351', 'textarea', 'set_css', 'Header', '57a29441f16f59d', 110, 29, 75, 500, 400, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', '', '', '', '', '', '0', '', ''),
('57a7c213dc62789', 'nuhome', 'run', 'run_lang', 'Translation', '569dc4ed270f08a', 50, 164, 264, 150, 30, '1', 'left', 'noblanks', '0', '', '', '57a7c1cb78bf3a3', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a7d639f21d3a8', '57a7c1cb78bf3a3', 'input', 'trl_language', 'Language', '57a7c1cb78c31d5', 10, 39, 92, 100, 16, '1', 'left', 'noblanks', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a7d77ccd5d248', '57a7c1cb78bf3a3', 'input', 'trl_english', 'English', '57a7c1cb78c31d5', 20, 70, 92, 400, 16, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a7d7a35f01f40', '57a7c1cb78bf3a3', 'input', 'trl_translation', 'Translation', '57a7c1cb78c31d5', 30, 101, 92, 400, 16, '1', 'left', 'noduplicates', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

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
('57578be0057a49f', 'HELLOW', 'Hello World', 'test', 'print ''hello world, today is.. #from_date#'';', '5678ab2c48c5c41', 'nulaunchdates');

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


-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_setup`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_setup` (
  `zzzzsys_setup_id` varchar(25) NOT NULL DEFAULT '',
  `set_title` varchar(100) DEFAULT NULL,
  `set_time_out_minutes` int(11) DEFAULT NULL,
  `set_zzzzsys_timezone_id` varchar(25) DEFAULT NULL,
  `set_trl_language` varchar(20) NOT NULL,
  `set_smtp_username` varchar(255) DEFAULT NULL,
  `set_smtp_password` varchar(255) DEFAULT NULL,
  `set_smtp_host` varchar(255) DEFAULT NULL,
  `set_smtp_from_address` varchar(255) DEFAULT NULL,
  `set_smtp_from_name` varchar(255) DEFAULT NULL,
  `set_smtp_port` int(4) DEFAULT NULL,
  `set_smtp_use_ssl` char(1) DEFAULT '1',
  `set_fonts` text NOT NULL,
  `set_css` longtext NOT NULL,
  `set_denied` varchar(255) NOT NULL,
  `set_splash` varchar(1) NOT NULL,
  PRIMARY KEY (`zzzzsys_setup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_setup`
--

INSERT INTO `zzzzsys_setup` (`zzzzsys_setup_id`, `set_title`, `set_time_out_minutes`, `set_zzzzsys_timezone_id`, `set_trl_language`, `set_smtp_username`, `set_smtp_password`, `set_smtp_host`, `set_smtp_from_address`, `set_smtp_from_name`, `set_smtp_port`, `set_smtp_use_ssl`, `set_fonts`, `set_css`, `set_denied`, `set_splash`) VALUES
('1', 'NOT USED DELETED THIS FIELD', 120, '52819fa94bc9a93', '', '', '', '', '', '', 0, '', '', '\nfunction nuTest(){\n\n    alert(''hello'');\n\n}\n\n', '', '1');

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
('56c5145674c17a1', '5678ab2c48c5c41', 'Kids', 20),
('569dc4ed270f08a', 'nuhome', 'Setup', 5),
('569c44dd2339963', '5678ab2c48c5c41', 'Phone', 30),
('568b508eecf5dee', '568b508eec00d80', 'Business', 7),
('5678ab2c49bd810', '5678ab2c48c5c41', 'Employee', 10),
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
('577b4228b34d894', 'nurunreport', 'Report', 10),
('577b48b3f3554c1', '577b48b3f351026', 'PHP', 10),
('577b4b6ca3ec226', 'nurunphp', 'PHP', 10),
('577b4d78ef9c1d6', '577b4d78ef9a2a0', 'test', 10),
('577c5efa0d6275e', 'nulaunchdates', 'Launch', 10),
('577da395132bac7', '5757a4b7181e365', 'Test', 10),
('57a291d5714f5e0', 'nutimezone', 'Zone', 10),
('57a29441f16e2e2', '57a29441f16c351', 'Setup', 10),
('57a29441f16eb9f', '57a29441f16c351', 'Email Settings', 20),
('57a29441f16f59d', '57a29441f16c351', 'Header', 30),
('57a7c1cb78c31d5', '57a7c1cb78bf3a3', 'Phrase', 10);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_timezone`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_timezone` (
  `zzzzsys_timezone_id` varchar(25) NOT NULL,
  `stz_timezone` mediumtext NOT NULL,
  PRIMARY KEY (`zzzzsys_timezone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_timezone`
--

INSERT INTO `zzzzsys_timezone` (`zzzzsys_timezone_id`, `stz_timezone`) VALUES
('5281a1e6d64f54c', 'WET'),
('5281a1e5d5896c1', 'W-SU'),
('5281a1c4af3715e', 'Pacific/Saipan'),
('5281a1d1c5090a1', 'ROC'),
('5281a1c3ae74c55', 'Pacific/Rarotonga'),
('5281a1e7d719d77', 'Zulu'),
('5281a1c1ac7d9a4', 'Pacific/Ponape'),
('5281a18f7335833', 'Indian/Mahe'),
('5281a1978349c3b', 'Japan'),
('5281a1c2adaeefc', 'Pacific/Port_Moresby'),
('5281a19480b8eb3', 'Iran'),
('5281a1c0abb94a6', 'Pacific/Pohnpei'),
('5281a1968236672', 'Jamaica'),
('5281a1958174e03', 'Israel'),
('5281a1bfaaf8959', 'Pacific/Pitcairn'),
('5281a1bda973ea9', 'Pacific/Pago_Pago'),
('5281a1beaa37ad1', 'Pacific/Palau'),
('5281a1937ffce01', 'Indian/Reunion'),
('5281a1927f358dc', 'Indian/Mayotte'),
('5281a1907dbe28e', 'Indian/Maldives'),
('5281a18469c9b45', 'GMT0'),
('5281a18d716cac2', 'Indian/Comoro'),
('5281a18c6fa914a', 'Indian/Cocos'),
('5281a1917e7a840', 'Indian/Mauritius'),
('5281a18b6ef1055', 'Indian/Christmas'),
('5281a18e727f96b', 'Indian/Kerguelen'),
('5281a18a6e38d94', 'Indian/Chagos'),
('5281a18167364aa', 'GMT'),
('5281a1896d7af41', 'Indian/Antananarivo'),
('5281a1876bf5f3f', 'HST'),
('5281a18267f39f3', 'GMT+0'),
('5281a1886cbc018', 'Iceland'),
('5281a180667b0ff', 'GB-Eire'),
('5281a1866b3a73f', 'Hongkong'),
('5281a1d2c5cc7f0', 'ROK'),
('5281a1856a822c1', 'Greenwich'),
('5281a183690a029', 'GMT-0'),
('5281a17f6566ce7', 'GB'),
('5281a17e64b04e6', 'Factory'),
('5281a17d6394bdc', 'Europe/Zurich'),
('5281a17b621c391', 'Europe/Zagreb'),
('5281a17c62d8149', 'Europe/Zaporozhye'),
('5281a17a61653f3', 'Europe/Warsaw'),
('5281a17960a75a5', 'Europe/Volgograd'),
('5281a1765e7ec77', 'Europe/Vatican'),
('5281a1785fee51e', 'Europe/Vilnius'),
('5281a1745d0c5ff', 'Europe/Uzhgorod'),
('5281a1755dc75a3', 'Europe/Vaduz'),
('5281a1725b981dd', 'Europe/Tirane'),
('5281a1775f33528', 'Europe/Vienna'),
('5281a1715ada39c', 'Europe/Tallinn'),
('5281a1735c520ab', 'Europe/Tiraspol'),
('5281a17059b7e00', 'Europe/Stockholm'),
('5281a16b55183d6', 'Europe/San_Marino'),
('5281a16c55c3e49', 'Europe/Sarajevo'),
('5281a16d567a909', 'Europe/Simferopol'),
('5281a16e578c5ca', 'Europe/Skopje'),
('5281a16f58a0561', 'Europe/Sofia'),
('5281a16a546eb1c', 'Europe/Samara'),
('5281a16953c1632', 'Europe/Rome'),
('5281a1e4d4c2232', 'UTC'),
('5281a1675297098', 'Europe/Prague'),
('5281a1c7b7d1d5a', 'Pacific/Tarawa'),
('5281a1c8b88aa9e', 'Pacific/Tongatapu'),
('5281a1c6b0be317', 'Pacific/Tahiti'),
('5281a1e3d3f844f', 'US/Samoa'),
('5281a1e2d332a62', 'US/Pacific-New'),
('5281a1e1d267cf9', 'US/Pacific'),
('5281a1decfb3884', 'US/Indiana-Starke'),
('5281a1e0d1a0e86', 'US/Mountain'),
('5281a1dfd0d95b2', 'US/Michigan'),
('5281a1ddcee9e3c', 'US/Hawaii'),
('5281a1d5c82280a', 'UCT'),
('5281a1dcce1ad1c', 'US/Eastern'),
('5281a1d9cb7bad5', 'US/Arizona'),
('5281a1dacc37651', 'US/Central'),
('5281a1d8cabf7f1', 'US/Aleutian'),
('5281a1dbccf3617', 'US/East-Indiana'),
('5281a11b005e55d', 'EET'),
('5281a1d7c9af2ed', 'US/Alaska'),
('5281a1d3c69078e', 'Singapore'),
('5281a1d6c8ec435', 'Universal'),
('5281a119f3e04e9', 'Cuba'),
('5281a121045accb', 'Etc/GMT+0'),
('5281a11f031f564', 'EST5EDT'),
('5281a11d01970ad', 'Eire'),
('5281a115f1557e0', 'CET'),
('5281a11e027c729', 'EST'),
('5281a11c00fa005', 'Egypt'),
('5281a112e94ed84', 'Canada/Pacific'),
('5281a113e9f0daa', 'Canada/Saskatchewan'),
('5281a118f33df3d', 'CST6CDT'),
('5281a116f1f4f2e', 'Chile/Continental'),
('5281a111e8ab026', 'Canada/Newfoundland'),
('5281a117f296fd5', 'Chile/EasterIsland'),
('5281a10fe75f2c4', 'Canada/Eastern'),
('5281a110e80412c', 'Canada/Mountain'),
('5281a114f0b9085', 'Canada/Yukon'),
('5281a10ae43d03b', 'Brazil/East'),
('5281a10ee6bf449', 'Canada/East-Saskatchewan'),
('5281a10be4de708', 'Brazil/West'),
('5281a106e10f94a', 'Australia/West'),
('5281a10ce57f01e', 'Canada/Atlantic'),
('5281a109e3d5d6e', 'Brazil/DeNoronha'),
('5281a10de622257', 'Canada/Central'),
('5281a107e1b7664', 'Australia/Yancowinna'),
('5281a105e06a9b6', 'Australia/Victoria'),
('5281a103df20a58', 'Australia/Sydney'),
('5281a104dfc5885', 'Australia/Tasmania'),
('5281a108e25bc93', 'Brazil/Acre'),
('5281a100dd385a2', 'Australia/Perth'),
('5281a102de7b7a9', 'Australia/South'),
('5281a0fedbfa7e6', 'Australia/North'),
('5281a0ffdc99118', 'Australia/NSW'),
('5281a101ddd8257', 'Australia/Queensland'),
('5281a0f7d793413', 'Australia/Darwin'),
('5281a0fbda115d9', 'Australia/Lindeman'),
('5281a0fcdab0d34', 'Australia/Lord_Howe'),
('5281a0fad975081', 'Australia/LHI'),
('5281a0fddb58517', 'Australia/Melbourne'),
('5281a0f9d8d96a3', 'Australia/Hobart'),
('5281a0f8d837181', 'Australia/Eucla'),
('5281a0f6d6f2fcb', 'Australia/Currie'),
('5281a0f1d34022d', 'Australia/ACT'),
('5281a0f3d50b948', 'Australia/Brisbane'),
('5281a0f2d414c2c', 'Australia/Adelaide'),
('5281a0f4d5ad53b', 'Australia/Broken_Hill'),
('5281a0f5d6511b5', 'Australia/Canberra'),
('5281a0ebd023d83', 'Atlantic/Jan_Mayen'),
('5281a0efd1f32fb', 'Atlantic/St_Helena'),
('5281a0edd11319e', 'Atlantic/Reykjavik'),
('5281a0e9cee78d7', 'Atlantic/Faeroe'),
('5281a0f0d28596b', 'Atlantic/Stanley'),
('5281a0ecd083a61', 'Atlantic/Madeira'),
('5281a0e7cd08d1f', 'Atlantic/Canary'),
('5281a0eacf865b6', 'Atlantic/Faroe'),
('5281a0e8cdf71cd', 'Atlantic/Cape_Verde'),
('5281a0e4cb41fb8', 'Asia/Yerevan'),
('5281a0eed19481b', 'Atlantic/South_Georgia'),
('5281a0e6cc39d74', 'Atlantic/Bermuda'),
('5281a0e0c8a8864', 'Asia/Vientiane'),
('5281a0e2c9f8bff', 'Asia/Yakutsk'),
('5281a0dec72d2c8', 'Asia/Urumqi'),
('5281a0dbc498d19', 'Asia/Ujung_Pandang'),
('5281a0e5cbd2ab3', 'Atlantic/Azores'),
('5281a0dfc802643', 'Asia/Ust-Nera'),
('5281a0e3ca96355', 'Asia/Yekaterinburg'),
('5281a0e1c97ee98', 'Asia/Vladivostok'),
('5281a0ddc5cffcb', 'Asia/Ulan_Bator'),
('5281a0dac410be3', 'Asia/Tokyo'),
('5281a0dcc5452d8', 'Asia/Ulaanbaatar'),
('5281a0d8b7ca13e', 'Asia/Thimbu'),
('5281a0d4b5675f0', 'Asia/Tashkent'),
('5281a0d7b738dfa', 'Asia/Tel_Aviv'),
('5281a0d2b43caed', 'Asia/Singapore'),
('5281a0d0b310ab9', 'Asia/Seoul'),
('5281a0d3b4ce508', 'Asia/Taipei'),
('5281a0d6b6a9048', 'Asia/Tehran'),
('5281a0d9c3af580', 'Asia/Thimphu'),
('5281a0d5b6195f2', 'Asia/Tbilisi'),
('5281a0cdb14f26f', 'Asia/Saigon'),
('5281a0d1b3a71fe', 'Asia/Shanghai'),
('5281a0ccb0b8ed7', 'Asia/Riyadh'),
('5281a0cfb27e770', 'Asia/Samarkand'),
('5281a0c7add4a83', 'Asia/Pontianak'),
('5281a0cbb029a0f', 'Asia/Rangoon'),
('5281a0ceb1e6900', 'Asia/Sakhalin'),
('5281a0caaf9a3f7', 'Asia/Qyzylorda'),
('5281a0c8ae6fc1d', 'Asia/Pyongyang'),
('5281a0c6ad3a016', 'Asia/Phnom_Penh'),
('5281a0c1a513266', 'Asia/Nicosia'),
('5281a0c4a6cfff2', 'Asia/Omsk'),
('5281a0bb9995a61', 'Asia/Macao'),
('5281a0c3a63e893', 'Asia/Novosibirsk'),
('5281a0c5ac5370d', 'Asia/Oral'),
('5281a0c2a5a914a', 'Asia/Novokuznetsk'),
('5281a0b984900e1', 'Asia/Kuching'),
('5281a0bc9b6658f', 'Asia/Macau'),
('5281a0c9af084a7', 'Asia/Qatar'),
('5281a0c0a47b670', 'Asia/Muscat'),
('5281a0b682d7c6b', 'Asia/Kolkata'),
('5281a0b883fc097', 'Asia/Kuala_Lumpur'),
('5281a0bea353642', 'Asia/Makassar'),
('5281a0bda2c3f39', 'Asia/Magadan'),
('5281a0bfa3e3403', 'Asia/Manila'),
('5281a0b7836a737', 'Asia/Krasnoyarsk'),
('5281a0b582467de', 'Asia/Khandyga'),
('5281a0b481b3f82', 'Asia/Katmandu'),
('5281a0ba9625309', 'Asia/Kuwait'),
('5281a0b2808875b', 'Asia/Kashgar'),
('5281a0b07f60fbd', 'Asia/Kamchatka'),
('5281a0b17ff7b93', 'Asia/Karachi'),
('5281a0b38121eec', 'Asia/Kathmandu'),
('5281a0ae77f9979', 'Asia/Jerusalem'),
('5281a0ad7762040', 'Asia/Jayapura'),
('5281a0a975249f9', 'Asia/Hovd'),
('5281a0af7888b2a', 'Asia/Kabul'),
('5281a0ac76d0bba', 'Asia/Jakarta'),
('5281a0aa75b1122', 'Asia/Irkutsk'),
('5281a0ab763ee82', 'Asia/Istanbul'),
('5281a0a87491a25', 'Asia/Hong_Kong'),
('5281a0a55af5fb5', 'Asia/Harbin'),
('5281a0a6683a809', 'Asia/Hebron'),
('5281a0a768ccd66', 'Asia/Ho_Chi_Minh'),
('5281a0a45a5d9dd', 'Asia/Gaza'),
('5281a0a359c69e6', 'Asia/Dushanbe'),
('5281a09e50a0bc7', 'Asia/Dacca'),
('5281a0963f77c2f', 'Asia/Beirut'),
('5281a0a051ccb15', 'Asia/Dhaka'),
('5281a0a25931d48', 'Asia/Dubai'),
('5281a09c434d7a2', 'Asia/Chungking'),
('5281a0a15264929', 'Asia/Dili'),
('5281a09f5139227', 'Asia/Damascus'),
('5281a09d5004cfc', 'Asia/Colombo'),
('5281a09b42b4a59', 'Asia/Chongqing'),
('5281a0994183708', 'Asia/Calcutta'),
('5281a09740551ac', 'Asia/Bishkek'),
('5281a0943e4d693', 'Asia/Baku'),
('5281a0953ee5155', 'Asia/Bangkok'),
('5281a09840eba22', 'Asia/Brunei'),
('5281a08d3a9af97', 'Asia/Anadyr'),
('5281a08c39bfc99', 'Asia/Amman'),
('5281a0913cad956', 'Asia/Ashkhabad'),
('5281a09a421c122', 'Asia/Choibalsan'),
('5281a0933db361c', 'Asia/Bahrain'),
('5281a08f3b8ffbf', 'Asia/Aqtobe'),
('5281a0923d493e0', 'Asia/Baghdad'),
('5281a0872dca2fd', 'Antarctica/Syowa'),
('5281a0903c1eb18', 'Asia/Ashgabat'),
('5281a0882e5a3db', 'Antarctica/Vostok'),
('5281a08a2f8c58e', 'Asia/Aden'),
('5281a08e3afe663', 'Asia/Aqtau'),
('5281a0852cac95d', 'Antarctica/Rothera'),
('5281a0842c1a6a4', 'Antarctica/Palmer'),
('5281a0862d3c98a', 'Antarctica/South_Pole'),
('5281a08b392c116', 'Asia/Almaty'),
('5281a0892ef8f3e', 'Arctic/Longyearbyen'),
('5281a080261a293', 'Antarctica/DumontDUrville'),
('5281a0832b865db', 'Antarctica/McMurdo'),
('5281a082274083d', 'Antarctica/Mawson'),
('5281a07e24a3926', 'Antarctica/Casey'),
('5281a08126af775', 'Antarctica/Macquarie'),
('5281a07d24138e6', 'America/Yellowknife'),
('5281a07a2262248', 'America/Whitehorse'),
('5281a0741d90667', 'America/Thunder_Bay'),
('5281a07921a60bc', 'America/Virgin'),
('5281a07b22f5dc0', 'America/Winnipeg'),
('5281a07c2387969', 'America/Yakutat'),
('5281a0782119266', 'America/Vancouver'),
('5281a07f253cc33', 'Antarctica/Davis'),
('5281a0771f90738', 'America/Tortola'),
('5281a0701b4895b', 'America/St_Vincent'),
('5281a0751e22f0d', 'America/Tijuana'),
('5281a0721c6d284', 'America/Tegucigalpa'),
('5281a0761efa34f', 'America/Toronto'),
('5281a06f1ab84cc', 'America/St_Thomas'),
('5281a06d195ad37', 'America/St_Kitts'),
('5281a06816b015a', 'America/Scoresbysund'),
('5281a0731cfe848', 'America/Thule'),
('5281a06e19dcad8', 'America/St_Lucia'),
('5281a0691738a17', 'America/Shiprock'),
('5281a0711bdc9cb', 'America/Swift_Current'),
('5281a06b184793e', 'America/St_Barthelemy'),
('5281a06a17c07af', 'America/Sitka'),
('5281a0671001fe9', 'America/Sao_Paulo'),
('5281a0640e7c243', 'America/Santarem'),
('5281a0620d6e73e', 'America/Rosario'),
('5281a0660f81e90', 'America/Santo_Domingo'),
('5281a0650f00b2b', 'America/Santiago'),
('5281a0630df269f', 'America/Santa_Isabel'),
('5281a06c18cefca', 'America/St_Johns'),
('5281a0600c2a582', 'America/Resolute'),
('5281a0610cf1e16', 'America/Rio_Branco'),
('5281a05e0b23bbb', 'America/Recife'),
('5281a05f0ba9fac', 'America/Regina'),
('5281a05c02b2d2e', 'America/Rainy_River'),
('5281a05d0abd421', 'America/Rankin_Inlet'),
('5281a05b02270ec', 'America/Puerto_Rico'),
('5281a05a019da2e', 'America/Porto_Velho'),
('5281a053e771ebf', 'America/Pangnirtung'),
('5281a054e7f5d06', 'America/Paramaribo'),
('5281a056f3e39a9', 'America/Port-au-Prince'),
('5281a055e87432b', 'America/Phoenix'),
('5281a052e6eb6b1', 'America/Panama'),
('5281a058008a8ad', 'America/Port_of_Spain'),
('5281a059011444a', 'America/Porto_Acre'),
('5281a04de4621e6', 'America/Noronha'),
('5281a051e66c226', 'America/Ojinaga'),
('5281a04be29de22', 'America/Nipigon'),
('5281a04ee4e9d8a', 'America/North_Dakota/Beulah'),
('5281a04fe56a837', 'America/North_Dakota/Center'),
('5281a04ce3791ab', 'America/Nome'),
('5281a050e5ec3bf', 'America/North_Dakota/New_Salem'),
('5281a049db6c822', 'America/Nassau'),
('5281a042d7f6261', 'America/Mexico_City'),
('5281a047da6f51b', 'America/Montreal'),
('5281a045d96f56b', 'America/Monterrey'),
('5281a048daec32f', 'America/Montserrat'),
('5281a04adbebf83', 'America/New_York'),
('5281a046d9eebc9', 'America/Montevideo'),
('5281a041d776ec4', 'America/Metlakatla'),
('5281a044d8f40df', 'America/Moncton'),
('5281a040d6e2a6f', 'America/Merida'),
('5281a043d874e50', 'America/Miquelon'),
('5281a03fd6686ad', 'America/Menominee'),
('5281a03ed5eb8a2', 'America/Mendoza'),
('5281a03cd4f8d9d', 'America/Matamoros'),
('5281a03dd56f298', 'America/Mazatlan'),
('5281a03bd4800a8', 'America/Martinique'),
('5281a03ad4029d7', 'America/Marigot'),
('5281a036c8dfceb', 'America/Lower_Princes'),
('5281a039ca5fd3d', 'America/Manaus'),
('5281a031c67163d', 'America/Kralendijk'),
('5281a038c9dae4d', 'America/Managua'),
('5281a032c6ecabc', 'America/La_Paz'),
('5281a034c7e4ccf', 'America/Los_Angeles'),
('5281a02fc57ddcd', 'America/Kentucky/Monticello'),
('5281a033c7667a3', 'America/Lima'),
('5281a035c860612', 'America/Louisville'),
('5281a037c95acd2', 'America/Maceio'),
('5281a030c5f7f87', 'America/Knox_IN'),
('5281a028b8b5382', 'America/Indianapolis'),
('5281a02cc3580ca', 'America/Jujuy'),
('5281a02ec4b4b08', 'America/Kentucky/Louisville'),
('5281a027b83c7b7', 'America/Indiana/Winamac'),
('5281a02dc3d9b4a', 'America/Juneau'),
('5281a02bba2319a', 'America/Jamaica'),
('5281a023a78a9f8', 'America/Indiana/Petersburg'),
('5281a029b92b8a4', 'America/Inuvik'),
('5281a025b743617', 'America/Indiana/Vevay'),
('5281a02ab9a5642', 'America/Iqaluit'),
('5281a024b6c65d2', 'America/Indiana/Tell_City'),
('5281a026b7bd32b', 'America/Indiana/Vincennes'),
('5281a020a60c1cb', 'America/Indiana/Indianapolis'),
('5281a01fa582b0b', 'America/Hermosillo'),
('5281a022a70ab7e', 'America/Indiana/Marengo'),
('5281a01d9e64a89', 'America/Halifax'),
('5281a01e9ee5729', 'America/Havana'),
('5281a01a9ce3844', 'America/Guatemala'),
('5281a0179b64421', 'America/Grand_Turk'),
('5281a0199c6344a', 'America/Guadeloupe'),
('5281a0189be3e29', 'America/Grenada'),
('5281a01c9de431f', 'America/Guyana'),
('5281a021a68ad1b', 'America/Indiana/Knox'),
('5281a01b9d64472', 'America/Guayaquil'),
('5281a0169ae60fb', 'America/Goose_Bay'),
('5281a0159a6738f', 'America/Godthab'),
('5281a01499ee0d7', 'America/Glace_Bay'),
('5281a013996e3cc', 'America/Fortaleza'),
('5281a01097ec36c', 'America/El_Salvador'),
('5281a011986a4c9', 'America/Ensenada'),
('5281a00c95f4f78', 'America/Detroit'),
('5281a01298eb04c', 'America/Fort_Wayne'),
('5281a00f976ef28', 'America/Eirunepe'),
('5281a00e96f1a71', 'America/Edmonton'),
('5281a00b956da59', 'America/Denver'),
('5281a00d9672fc4', 'America/Dominica'),
('5281a00a94e4d56', 'America/Dawson_Creek'),
('5281a00290a5cdf', 'America/Coral_Harbour'),
('5281a00994592a4', 'America/Dawson'),
('5281a00893dac77', 'America/Danmarkshavn'),
('5281a00692d3646', 'America/Cuiaba'),
('5281a00592545ff', 'America/Creston'),
('5281a00491d04fe', 'America/Costa_Rica'),
('5281a007935bea0', 'America/Curacao'),
('5281a0039121eb5', 'America/Cordoba'),
('5281a0008fb91da', 'America/Chicago'),
('5281a001902eacc', 'America/Chihuahua'),
('52819fff8f3deef', 'America/Cayman'),
('52819ffc8d8294c', 'America/Caracas'),
('52819ffa8c9fd3d', 'America/Campo_Grande'),
('52819ffb8d0e9f3', 'America/Cancun'),
('52819ffd8e40c54', 'America/Catamarca'),
('52819ff78b49038', 'America/Boise'),
('52819ffe8ebf7a8', 'America/Cayenne'),
('52819ff88bbf287', 'America/Buenos_Aires'),
('52819ff98c31a7c', 'America/Cambridge_Bay'),
('52819ff489eb768', 'America/Blanc-Sablon'),
('52819ff3897c302', 'America/Belize'),
('52819ff68acf15d', 'America/Bogota'),
('52819ff58a5b604', 'America/Boa_Vista'),
('52819ff18856b00', 'America/Barbados'),
('52819fef7a0e5c7', 'America/Bahia'),
('52819ff087e6620', 'America/Bahia_Banderas'),
('52819fee799c9bd', 'America/Atka'),
('52819ff2890b040', 'America/Belem'),
('52819feb783abf9', 'America/Aruba'),
('52819fec78b6d98', 'America/Asuncion'),
('52819fed7926984', 'America/Atikokan'),
('52819fea77c0dbe', 'America/Argentina/Ushuaia'),
('52819fe876d4888', 'America/Argentina/San_Luis'),
('52819fe7765b813', 'America/Argentina/San_Juan'),
('52819fe5756aca9', 'America/Argentina/Rio_Gallegos'),
('52819fe675e3a45', 'America/Argentina/Salta'),
('52819fe97747d84', 'America/Argentina/Tucuman'),
('52819fe37477a3e', 'America/Argentina/La_Rioja'),
('52819fe17352bc1', 'America/Argentina/Cordoba'),
('52819fe474f1b3c', 'America/Argentina/Mendoza'),
('52819fe274021b6', 'America/Argentina/Jujuy'),
('52819fdd71a44c6', 'America/Araguaina'),
('52819fde7211b94', 'America/Argentina/Buenos_Aires'),
('52819fe072e958b', 'America/Argentina/ComodRivadavia'),
('52819fdb70ca47b', 'America/Anguilla'),
('52819fd96ff36de', 'America/Adak'),
('52819fdc713665a', 'America/Antigua'),
('52819fdf727d3b7', 'America/Argentina/Catamarca'),
('52819fda705d5db', 'America/Anchorage'),
('52819fd46d5db96', 'Africa/Sao_Tome'),
('52819fd86f894da', 'Africa/Windhoek'),
('52819fd66eb1b1d', 'Africa/Tripoli'),
('52819fd76f1d1cf', 'Africa/Tunis'),
('52819fcf6025798', 'Africa/Ndjamena'),
('52819fd56e465c5', 'Africa/Timbuktu'),
('52819fce5fbef7c', 'Africa/Nairobi'),
('52819fd36cef7d3', 'Africa/Porto-Novo'),
('52819fd160f38e7', 'Africa/Nouakchott'),
('52819fcb5e82cb2', 'Africa/Mbabane'),
('52819fd26198388', 'Africa/Ouagadougou'),
('52819fd0608eabc', 'Africa/Niamey'),
('52819fcc5eebbe0', 'Africa/Mogadishu'),
('52819fca5e1862c', 'Africa/Maseru'),
('52819fcd5f56d2d', 'Africa/Monrovia'),
('52819fc95bd505d', 'Africa/Maputo'),
('52819fc85b5ca8c', 'Africa/Malabo'),
('52819fc2584bf74', 'Africa/Lagos     '),
('52819fc75ae5c44', 'Africa/Lusaka'),
('52819fc559d1824', 'Africa/Luanda'),
('52819fc156a0bb9', 'Africa/Kinshasa'),
('52819fc358f7f66', 'Africa/Libreville'),
('52819fc65a72a20', 'Africa/Lubumbashi'),
('52819fbf550c406', 'Africa/Khartoum'),
('52819fc055a94f7', 'Africa/Kigali'),
('52819fc45965c0d', 'Africa/Lome'),
('52819fbe54a483a', 'Africa/Kampala'),
('52819fba52e8bfe', 'Africa/Gaborone'),
('52819fb9527a466', 'Africa/Freetown'),
('52819fbd543bb3d', 'Africa/Juba'),
('52819fbc53cc7cb', 'Africa/Johannesburg'),
('52819fb7519de97', 'Africa/Douala'),
('52819fbb535a8db', 'Africa/Harare'),
('52819fb4505727a', 'Africa/Dakar'),
('52819fb34feb2b9', 'Africa/Conakry'),
('52819fb6512b354', 'Africa/Djibouti'),
('52819fb550bf3bd', 'Africa/Dar_es_Salaam'),
('52819fb04ea2165', 'Africa/Cairo'),
('52819fb8520ef05', 'Africa/El_Aaiun'),
('52819fb14f0c347', 'Africa/Casablanca'),
('52819fad4d6d2ab', 'Africa/Blantyre'),
('52819fb24f7a1a9', 'Africa/Ceuta'),
('52819fae4dd596d', 'Africa/Brazzaville'),
('52819faf4e3ea69', 'Africa/Bujumbura'),
('52819fab4c9ff3f', 'Africa/Banjul'),
('52819fa94bc9a93', 'Africa/Bamako'),
('52819fac4d0b2f3', 'Africa/Bissau'),
('52819fa84b5bed6', 'Africa/Asmera'),
('52819faa4c334ed', 'Africa/Bangui'),
('52819fa54a1c5c4', 'Africa/Addis_Ababa'),
('52819fa44106fdd', 'Africa/Accra'),
('5281a14328d7e27', 'Europe/Amsterdam'),
('52819fa74aef179', 'Africa/Asmara'),
('52819fa64a81c45', 'Africa/Algiers'),
('52819fa3409d46f', 'Africa/Abidjan'),
('5281a144293e781', 'Europe/Andorra'),
('5281a1462a2183d', 'Europe/Belfast'),
('5281a14529a6597', 'Europe/Athens'),
('5281a1472b27ab5', 'Europe/Belgrade'),
('5281a14d2ef47a3', 'Europe/Busingen'),
('5281a1482b95f9d', 'Europe/Berlin'),
('5281a14b2de356d', 'Europe/Bucharest'),
('5281a14c2e8003e', 'Europe/Budapest'),
('5281a14a2d40451', 'Europe/Brussels'),
('5281a1513ce8a90', 'Europe/Gibraltar'),
('5281a1492c3f8d0', 'Europe/Bratislava'),
('5281a15030f2b55', 'Europe/Dublin'),
('5281a14e2f9d4cf', 'Europe/Chisinau'),
('5281a14f3048453', 'Europe/Copenhagen'),
('5281a1543ee5f5a', 'Europe/Isle_of_Man'),
('5281a1533e3ecc9', 'Europe/Helsinki'),
('5281a158421be40', 'Europe/Kiev'),
('5281a1523d9455c', 'Europe/Guernsey'),
('5281a1553fb3f61', 'Europe/Istanbul'),
('5281a15b443824d', 'Europe/London'),
('5281a15a4387b4d', 'Europe/Ljubljana'),
('5281a1574109a27', 'Europe/Kaliningrad'),
('5281a15640623f7', 'Europe/Jersey'),
('5281a15942d2df1', 'Europe/Lisbon'),
('5281a16148b02d8', 'Europe/Monaco'),
('5281a15f4756ead', 'Europe/Mariehamn'),
('5281a15c44ee825', 'Europe/Luxembourg'),
('5281a15d459a699', 'Europe/Madrid'),
('5281a15e46aa01e', 'Europe/Malta'),
('5281a162495ae00', 'Europe/Moscow'),
('5281a1634a06938', 'Europe/Nicosia'),
('5281a16048033d3', 'Europe/Minsk'),
('5281a1664c0a464', 'Europe/Podgorica'),
('5281a1654b607a0', 'Europe/Paris'),
('5281a168534cbef', 'Europe/Riga'),
('5281a1644ab2537', 'Europe/Oslo'),
('5281a12003bd2d8', 'Etc/GMT'),
('5281a12406b3d0a', 'Etc/GMT+11'),
('5281a125075e837', 'Etc/GMT+12'),
('5281a1220508372', 'Etc/GMT+1'),
('5281a12305b7170', 'Etc/GMT+10'),
('5281a1290a6ffbc', 'Etc/GMT+5'),
('5281a12a0b21a7c', 'Etc/GMT+6'),
('5281a12e0dd3691', 'Etc/GMT-0'),
('5281a126080e0f2', 'Etc/GMT+2'),
('5281a12c0c747f2', 'Etc/GMT+8'),
('5281a12708c2a64', 'Etc/GMT+3'),
('5281a12b0bcc422', 'Etc/GMT+7'),
('5281a128097255f', 'Etc/GMT+4'),
('5281a131165c9a8', 'Etc/GMT-11'),
('5281a12f14f8806', 'Etc/GMT-1'),
('5281a12d0d21e28', 'Etc/GMT+9'),
('5281a13015ad04a', 'Etc/GMT-10'),
('5281a1341865467', 'Etc/GMT-14'),
('5281a1391bd512c', 'Etc/GMT-6'),
('5281a132170a862', 'Etc/GMT-12'),
('5281a13317ba384', 'Etc/GMT-13'),
('5281a13619c9d77', 'Etc/GMT-3'),
('5281a13b1dde432', 'Etc/GMT-8'),
('5281a13c1e901f3', 'Etc/GMT-9'),
('5281a1351915ab2', 'Etc/GMT-2'),
('5281a1381b291ad', 'Etc/GMT-5'),
('5281a1371a7a768', 'Etc/GMT-4'),
('5281a13d1f4118d', 'Etc/GMT0'),
('5281a13e1fecf31', 'Etc/Greenwich'),
('5281a14021ecc1a', 'Etc/Universal'),
('5281a13a1cdc706', 'Etc/GMT-7'),
('5281a1422870f52', 'Etc/Zulu'),
('5281a13f20ea1f3', 'Etc/UCT'),
('5281a19884666fe', 'Kwajalein'),
('5281a19b869ac55', 'Mexico/BajaNorte'),
('5281a19985161dc', 'Libya'),
('5281a141276c8dd', 'Etc/UTC'),
('5281a19a85d936f', 'MET'),
('5281a19c8755b50', 'Mexico/BajaSur'),
('5281a19d8805651', 'Mexico/General'),
('5281a1a08b568c9', 'Navajo'),
('5281a1a48edbfe0', 'Pacific/Auckland'),
('5281a19e88c6791', 'MST'),
('5281a1a28cc076a', 'NZ-CHAT'),
('5281a1a38db68d2', 'Pacific/Apia'),
('5281a19f8a9df7c', 'MST7MDT'),
('5281a1a58f97f6b', 'Pacific/Chatham'),
('5281a1a992be08a', 'Pacific/Enderbury'),
('5281a1a690adea0', 'Pacific/Chuuk'),
('5281a1aa9376832', 'Pacific/Fakaofo'),
('5281a1a89202f8f', 'Pacific/Efate'),
('5281a1ab969470b', 'Pacific/Fiji'),
('5281a1a18c10637', 'NZ'),
('5281a1ac9755655', 'Pacific/Funafuti'),
('5281a1af9991f3e', 'Pacific/Guadalcanal'),
('5281a1ad9816446', 'Pacific/Galapagos'),
('5281a1a7914900c', 'Pacific/Easter'),
('5281a1b09a4fddd', 'Pacific/Guam'),
('5281a1b29faa3dd', 'Pacific/Johnston'),
('5281a1ae98d3fae', 'Pacific/Gambier'),
('5281a1b19b0cfd2', 'Pacific/Honolulu'),
('5281a1b4a18cdc0', 'Pacific/Kosrae'),
('5281a1b3a0d3019', 'Pacific/Kiritimati'),
('5281a1b7a41e352', 'Pacific/Marquesas'),
('5281a1b6a366199', 'Pacific/Majuro'),
('5281a1b5a2a9fe4', 'Pacific/Kwajalein'),
('5281a1b8a543c50', 'Pacific/Midway'),
('5281a1bca8aff1f', 'Pacific/Noumea'),
('5281a1c9b9b4eb9', 'Pacific/Truk'),
('5281a1baa7229e2', 'Pacific/Niue'),
('5281a1ccc0a2ed7', 'Pacific/Yap'),
('5281a1cbbb03788', 'Pacific/Wallis'),
('5281a1cec2b8c7b', 'Portugal'),
('5281a1bba7e9f84', 'Pacific/Norfolk'),
('5281a1cfc380ffd', 'PRC'),
('5281a1caba3a73f', 'Pacific/Wake'),
('5281a1b9a65d08d', 'Pacific/Nauru'),
('5281a1d4c757c4b', 'Turkey'),
('5281a1cdc1ce40f', 'Poland'),
('5281a1c5aff8b7a', 'Pacific/Samoa'),
('5281a1d0c44a02a', 'PST8PDT');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_translate`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_translate` (
  `zzzzsys_translate_id` varchar(25) NOT NULL,
  `trl_language` varchar(20) NOT NULL,
  `trl_english` varchar(300) NOT NULL,
  `trl_translation` varchar(300) NOT NULL,
  PRIMARY KEY (`zzzzsys_translate_id`),
  KEY `trl_language` (`trl_language`),
  KEY `trl_english` (`trl_english`(255))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_translate`
--

INSERT INTO `zzzzsys_translate` (`zzzzsys_translate_id`, `trl_language`, `trl_english`, `trl_translation`) VALUES
('1', 'japanese', 'hi', 'Hurrow'),
('57a7e9543d0c2b2', 'japanese', 'Eddy', 'Edward');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_user`
--

CREATE TABLE IF NOT EXISTS `zzzzsys_user` (
  `zzzzsys_user_id` varchar(25) NOT NULL DEFAULT '',
  `sus_zzzzsys_user_group_id` varchar(25) DEFAULT NULL,
  `sus_language` varchar(20) NOT NULL,
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

INSERT INTO `zzzzsys_user` (`zzzzsys_user_id`, `sus_zzzzsys_user_group_id`, `sus_language`, `sus_name`, `sus_email`, `sus_login_name`, `sus_login_password`) VALUES
('5746735052d8d53', '57466de0851d354', '', 'jgh199', '4499', '33399', 'ac627ab1ccbdb62ec96e702f07f6425b'),
('5747c596c68fb68', '57466de0851d354', '', 'Steven', 'steven@nubuilder.com', 'steven', '202cb962ac59075b964b07152d234b70'),
('5747c5fa10e4a7d', '57466de0851d354', '', 'Bob', 'bb@gmail.com', 'bob', 'bda9643ac6601722a28f238714274da4'),
('5747caabead2aa8', '57466de0851d354', '', 'jon', 'jon', '1', NULL),
('5747cb8ca8d3de3', '57466de0851d354', 'japanese', 'g', 'g', 'g', 'b2f5ff47436671b6e533d8dc3614845d'),
('5747cc333c476fc', '57466de0851d354', 'japanese', 'Bill12', 'Bill1', 'b', '92eb5ffee6ae2fec3ad71c777531578f'),
('5747ce1dd50cdc5', '57466de0851d354', '', '55', '55', '55', 'b53b3a3d6ab90ce0268229151c9bde11'),
('5762478822092cd', '57466de0851d354', '', 'steven', 'steven@nubuilder.com', 's', '03c7c0ace395d80182db07ae2c30f034');

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
