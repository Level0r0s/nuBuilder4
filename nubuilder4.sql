-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2017 at 10:19 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nubuilder4`
--

-- --------------------------------------------------------

--
-- Table structure for table `aa`
--

CREATE TABLE `aa` (
  `theform` varchar(300) NOT NULL DEFAULT '',
  `theparent` varchar(300) NOT NULL DEFAULT '',
  `thechild` varchar(300) NOT NULL DEFAULT '',
  `thevalue` text NOT NULL,
  `thefilter` varchar(300) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aa`
--

INSERT INTO `aa` (`theform`, `theparent`, `thechild`, `thevalue`, `thefilter`) VALUES
('56773cb405f4913', 'nuFORM', 'com_phone', 'nuFORM.com_phone', '56773cb405f4913'),
('5678ab2c48c5c41', 'nuFORM', 'emp_cost', 'nuFORM.emp_cost', '5678ab2c48c5c41'),
('56773cb405f4913', 'employee_sf', 'emp_cost', 'employee_sf.emp_cost', '56773cb405f4913');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `business_id` varchar(25) NOT NULL,
  `bus_code` varchar(300) NOT NULL,
  `bus_description` varchar(300) NOT NULL,
  `bus_check` varchar(1) NOT NULL
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

CREATE TABLE `children` (
  `children_id` varchar(25) NOT NULL,
  `chi_name` varchar(300) NOT NULL,
  `chi_dob` date NOT NULL,
  `chi_employee_id` varchar(300) NOT NULL
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

CREATE TABLE `color` (
  `color_id` varchar(25) NOT NULL,
  `col_code` varchar(300) NOT NULL,
  `col_description` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`color_id`, `col_code`, `col_description`) VALUES
('568ef58fe48207a', 'red', 'Red'),
('568ef59c1bd769c', 'blue', 'Blue'),
('568ef5a6968322b', 'green', '1234G<b>r</b>e    en'),
('568ef920846a089', 'black', 'Black'),
('568ef931d196b3e', 'brown', 'Brown');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
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
  `com_notes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `com_code`, `com_name`, `com_business_id`, `com_company_id`, `com_address`, `com_suburb`, `com_phone`, `com_map_coordinates`, `com_sex`, `com_color_id`, `com_age`, `com_notes`) VALUES
('5678d262e048faa', '0007', 'sfdgb', '568a00e25b8d271', '', '5 Trent Grv', '2016-07-02', 'ghjm', '11 44', 'f', '568ef920846a089#nuSep#568ef59c1bd769c#nuSep#568ef931d196b3e', 50, 'hello worldsssstfffxv'),
('5729572e6331281', '', 'Mrs Compr66r36456', '568a00e25b8d271', '', '43 Allen St', '2016-07-01', '07-May-2016', '', '', '568ef59c1bd769c#nuSep#568ef931d196b3e', 0, '13132'),
('57295aa5660f48b', '', 'Mrs Comuh', '568a00d504d264c', '', '43 Allen Stkh', '2016-07-03', '18-Jun-2016', '', '', '568ef59c1bd769c', 35, '13132'),
('57295ed9e996db0', '', 'OPSM111', '568a00c77f8f709', '', 'yyyyy', '2016-07-06', '20-May-2016', '', '', '568ef58fe48207a', 35, 'oooo12hh'),
('5716c7137efb0c5', '', 'OPSM1111fwe', '568a00c77f8f709', '', '43 Allen St', '2016-07-06', '0423345544', '', 'm', '568ef931d196b3e#nuSep#568ef5a6968322b#nuSep#568ef58fe48207a', 35, 'hh'),
('57d5fabf102335b', '', 'vbbvn ', '568a00f3e57f096', '', '', '0000-00-00', '', '', '', '', 35, 'vvccvg wwwfred');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` varchar(25) NOT NULL,
  `emp_company_id` varchar(25) NOT NULL,
  `emp_name` varchar(300) NOT NULL,
  `emp_mobile` varchar(50) NOT NULL,
  `emp_business_id` varchar(25) NOT NULL,
  `emp_cost` decimal(12,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `emp_company_id`, `emp_name`, `emp_mobile`, `emp_business_id`, `emp_cost`) VALUES
('57148a4e28b517c', '57148a4e28a9106', 'hhhh', '', '', '10.00'),
('571482a104ef404', '571478e415cde6a', 'eeeeaaa', '', '', '10.00'),
('571487020399c30', '5714870203983f4', '2222', '', '', '10.00'),
('5714885b7a5a2fd', '5714885b7a59587', '6666', '', '', '10.00'),
('5714885b7a5adc4', '5714885b7a59587', '7777', '', '', '10.00'),
('5714887350fa2d5', '5714887350f94d9', '99', '', '', '10.00'),
('5714887350fadee', '5714887350f94d9', '00', '', '', '10.00'),
('571489984fa260f', '571489984fa0ad3', 'rstgstgsse', '', '', '10.00'),
('57148a035746159', '57148a035731590', 'jjjj', '', '', '10.00'),
('571481dcba116bb', '571481dcba0fa93', 'def', '', '', '10.00'),
('571481dcba1343f', '571481dcba0fa93', 'ghi', '', '', '10.00'),
('57147c9918f77bb', '57147c9918f5f64', 'bbbbbb', '', '', '10.00'),
('57147b9673c527e', '57147b9673c3f4f', 'ftxhsth', '', '', '10.00'),
('571478e415cf734', '571478e415cde6a', 'www', '', '', '10.00'),
('571476b382714b4', '571476b3827088a', '4444444', '', '', '10.00'),
('571475afa08d352', '571475afa08c69c', 'ukgfjgyy', '', '', '10.00'),
('5716c642e4e23c8', '5716c079066e4a2', 'bbbbb', '', '', '10.00'),
('5716c64c8cd4eef', '5716c64c8cd3592', 'bbbbb1', '', '568a00e25b8d271', '10.00'),
('5716c7137efe4c1', '5716c7137efb0c5', 'bobg', 'Jul-20-2016', '', '10.00'),
('5716cb29f11cfd1', '5716cb29f11c007', 'mr233', '', '', '10.00'),
('5716cc0359429ae', '5716cc035941ba3', 'mr4', '', '', '10.00'),
('5716cc0359433e9', '5716cc035941ba3', '444', '', '', '10.00'),
('5721b4bc246968f', '5715859eac8c8d3', '21234', '222222', '568a00d504d264c', '10.00'),
('57283a14e1c8e82', '5716cc035941ba3', '5555', '', '', '10.00'),
('57295aa566110ad', '57295aa5660f48b', '1234gghjfgsg', 'Jul-20-2016', '568a00f3e57f096', '10.00'),
('57294736bc86cd8', '572946e33e1b3ae', 'ssss', '', '', '10.00'),
('57294736bc87e6f', '572946e33e1b3ae', '', 'fdsds', '', '10.00'),
('572aa8389424d9a', '57295ed9e996db0', 'bobby13ww', 'May-26-2016', '56aeff9bd925917', '10.00'),
('5770710113d40c6', '5770710113d261e', 'Rob', 'Jun-22-2016', '568a00f3e57f096', '10.00'),
('573a80f0e0db425', '', 'test', 'Aug-12-2016', '568a00d504d264c', '10.00'),
('573d099435f6b7c', '5729572e6331281', 'aaah1gh', '', '568a00e25b8d271', '10.00'),
('573d099435f7a3e', '5729572e6331281', '222ghu', '', '56aeff6f63b370b', '10.00'),
('5754e950b92bab5', '5729572e6331281', 'test13kgughj', '', '', '10.00'),
('576ccdda0ccd2fc', '576ccdda0ccb042', 'fghdc', 'Jun-14-2016', '568a00e25b8d271', '10.00'),
('577b0a4f5521871', '5770710113d261e', 'steve0', 'Jul-28-2016', '568a00d504d264c', '10.00'),
('5786e01113f6e5f', '57295aa5660f48b', 'Steveoffsrdgfgd', 'Jul-14-2016', '568a00f3e57f096', '10.00'),
('57d62ae13c69104', '57d5fabf102335b', 'r6yu', '', '', '10.00'),
('57d62b6de6d9282', '57d5fabf102335b', 'tydufy77i', '', '', '10.00'),
('57d63ace507c7fa', '57d5fabf102335b', '', '', '568a00f3e57f096', '10.00'),
('57d9cbccee74ec0', '57d5fabf102335b', '', 'Sep-22-2016', '', '10.00'),
('57df373ddbb853a', '57295aa5660f48b', 'yh', '', '568a00f3e57f096', '10.00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` varchar(25) NOT NULL,
  `inv_number` int(11) NOT NULL,
  `inv_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `inv_number`, `inv_total`) VALUES
('', 58, 34);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item`
--

CREATE TABLE `invoice_item` (
  `invoice_item_id` varchar(25) NOT NULL,
  `ite_invoice_id` varchar(25) NOT NULL,
  `ite_thing` varchar(100) NOT NULL,
  `ite_units` double(12,4) NOT NULL,
  `ite_unit_price` double(12,4) NOT NULL,
  `ite_total` double(12,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_item`
--

INSERT INTO `invoice_item` (`invoice_item_id`, `ite_invoice_id`, `ite_thing`, `ite_units`, `ite_unit_price`, `ite_total`) VALUES
('58a0c368df368d4', '', 'steven', 1.0000, 3.0000, 4.0000),
('58a0c368df36dfb', '', 'bob', 3.0000, 4.0000, 7.0000),
('58a0c40e0950838', '', '1', 2.0000, 3.0000, 5.0000),
('58a0c45d283cda5', '58', 'ddd', 1.0000, 2.0000, 3.0000),
('58a0c45d283d3fd', '58', 'fgbhgbf', 2.0000, 3.0000, 5.0000),
('58a0c50eac2c8ee', '58', 'q', 11.0000, 15.0000, 26.0000);

-- --------------------------------------------------------

--
-- Table structure for table `test_table`
--

CREATE TABLE `test_table` (
  `test_table_id` varchar(25) NOT NULL,
  `tet_code` varchar(10) NOT NULL,
  `tet_description` varchar(300) NOT NULL,
  `tet_sex` varchar(1) NOT NULL,
  `tet_notes` text NOT NULL,
  `id` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_access_level`
--

CREATE TABLE `zzzzsys_access_level` (
  `zzzzsys_access_level_id` varchar(25) NOT NULL DEFAULT '',
  `sal_code` varchar(50) DEFAULT NULL,
  `sal_description` varchar(200) DEFAULT NULL,
  `sal_zzzzsys_form_id` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_access_level`
--

INSERT INTO `zzzzsys_access_level` (`zzzzsys_access_level_id`, `sal_code`, `sal_description`, `sal_zzzzsys_form_id`) VALUES
('57678e7dc00c099', 'ADMIN', 'Admin', 'nuhome'),
('57df38d1bdf5ae5', 'COM', 'company', 'nuhome');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_access_level_form`
--

CREATE TABLE `zzzzsys_access_level_form` (
  `zzzzsys_access_level_form_id` varchar(25) NOT NULL DEFAULT '',
  `slf_zzzzsys_access_level_id` varchar(25) DEFAULT NULL,
  `slf_zzzzsys_form_id` varchar(25) DEFAULT NULL,
  `slf_add_button` varchar(1) NOT NULL,
  `slf_save_button` varchar(1) NOT NULL,
  `slf_delete_button` varchar(1) NOT NULL,
  `slf_clone_button` varchar(1) NOT NULL,
  `slf_new_button` varchar(1) NOT NULL,
  `slf_print_button` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_access_level_form`
--

INSERT INTO `zzzzsys_access_level_form` (`zzzzsys_access_level_form_id`, `slf_zzzzsys_access_level_id`, `slf_zzzzsys_form_id`, `slf_add_button`, `slf_save_button`, `slf_delete_button`, `slf_clone_button`, `slf_new_button`, `slf_print_button`) VALUES
('5775dbbce39a24e', '57678e7dc00c099', 'nuuser', '', '', '', '', '', ''),
('5773260358ccf77', '57678e7dc00c099', '56c513162acd102', '', '', '', '', '', ''),
('57678f1c543a37f', '57678e7dc00c099', 'nublank', '', '', '', '', '', ''),
('57ad1e15a537a9f', '57678e7dc00c099', 'nulaunchdates', '', '', '', '', '', ''),
('57ad5184a1f8873', '57678e7dc00c099', 'nupassword', '', '', '', '', '', ''),
('57df39025b9d6af', '57df38d1bdf5ae5', '56773cb405f4913', '', '', '', '', '', ''),
('57e84434e690546', '57df38d1bdf5ae5', 'nuuser', '', '', '', '', '', ''),
('57e84981d049fbc', '57df38d1bdf5ae5', 'nupassword', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_access_level_php`
--

CREATE TABLE `zzzzsys_access_level_php` (
  `zzzzsys_access_level_php_id` varchar(25) NOT NULL,
  `slp_zzzzsys_access_level_id` varchar(25) DEFAULT NULL,
  `slp_zzzzsys_php_id` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_access_level_php`
--

INSERT INTO `zzzzsys_access_level_php` (`zzzzsys_access_level_php_id`, `slp_zzzzsys_access_level_id`, `slp_zzzzsys_php_id`) VALUES
('57678f1c543cb0a', '57678e7dc00c099', '57578be0057a49f'),
('57e8811848ba75b', '57df38d1bdf5ae5', '57578be0057a49f');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_access_level_report`
--

CREATE TABLE `zzzzsys_access_level_report` (
  `zzzzsys_access_level_report_id` varchar(25) NOT NULL,
  `sre_zzzzsys_access_level_id` varchar(25) DEFAULT NULL,
  `sre_zzzzsys_report_id` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_access_level_report`
--

INSERT INTO `zzzzsys_access_level_report` (`zzzzsys_access_level_report_id`, `sre_zzzzsys_access_level_id`, `sre_zzzzsys_report_id`) VALUES
('576784e884ccacc', NULL, '574b98244516a9b'),
('576784e884cd735', NULL, '574b9845a681d27'),
('57678f1c543edd9', '57678e7dc00c099', '574b9845a681d27'),
('57e0b49602acfce', '57df38d1bdf5ae5', '574b9845a681d27');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_browse`
--

CREATE TABLE `zzzzsys_browse` (
  `zzzzsys_browse_id` varchar(25) NOT NULL DEFAULT '',
  `sbr_zzzzsys_form_id` varchar(25) DEFAULT NULL,
  `sbr_title` varchar(100) DEFAULT NULL,
  `sbr_display` varchar(512) DEFAULT NULL,
  `sbr_align` char(1) DEFAULT NULL,
  `sbr_format` varchar(10) DEFAULT NULL,
  `sbr_sort` varchar(512) DEFAULT NULL,
  `sbr_order` int(11) DEFAULT NULL,
  `sbr_width` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_browse`
--

INSERT INTO `zzzzsys_browse` (`zzzzsys_browse_id`, `sbr_zzzzsys_form_id`, `sbr_title`, `sbr_display`, `sbr_align`, `sbr_format`, `sbr_sort`, `sbr_order`, `sbr_width`) VALUES
('5677420624710ab', '56773cb405f4913', 'Company', 'com_name', 'l', NULL, 'com_name', 10, 200),
('5677420624fd93d', '56773cb405f4913', 'Address', 'com_address', 'l', NULL, 'com_address', 20, 200),
('56774206258316d', '56773cb405f4913', 'Suburb and surrounding', 'com_suburb', 'l', NULL, 'com_suburb', 30, 150),
('56774206260b475', '56773cb405f4913', 'Phone', 'com_phone', 'l', NULL, 'com_phone', 40, 120),
('5678ab2c4ac37e0', '5678ab2c48c5c41', 'Name', 'emp_name', 'l', NULL, 'emp_name', 10, 200),
('568b508eee2f2ef', '568b508eec00d80', 'Code', 'bus_code', 'l', NULL, 'bus_code', 10, 100),
('568b508eeebdab9', '568b508eec00d80', 'Description', 'bus_description', 'l', NULL, 'bus_description', 20, 300),
('56b00a4f9211103', '568b508eec00d80', 'Check', 'bus_check', 'l', NULL, 'bus_check', 30, 50),
('56b3e7ba2bf880d', '5678ab2c48c5c41', 'Mobile', 'emp_mobile', 'l', NULL, 'emp_mobile', 20, 200),
('56c5131637d6f7f', '56c513162acd102', 'Name', 'chi_name', 'l', NULL, 'chi_name', 10, 200),
('5707303158d2308', 'nuform', 'Code', 'sfo_code', 'l', NULL, 'sfo_code', 20, 100),
('570730315e6abb7', 'nuform', 'Description', 'sfo_description', 'l', NULL, 'sfo_description', 30, 400),
('570b3863e50cb98', 'nutab', 'Form', 'sfo_description', 'l', NULL, 'sfo_description', 20, 150),
('570b3863e80f09c', 'nutab', 'Tab', 'syt_title', 'l', NULL, 'syt_title', 40, 200),
('570c8e1adb04ffc', 'nuobject', 'Form', 'sfo_description', 'l', NULL, 'sfo_description', 20, 200),
('570c8e1adeae32a', 'nuobject', 'Tab', 'syt_title', 'l', NULL, 'syt_title', 30, 200),
('570c8e1ae1b33cb', 'nuobject', 'Object', 'sob_all_id', 'l', NULL, 'sob_all_id', 60, 250),
('570db5ea2aa8afe', 'nuobject', 'Type', 'sob_all_type', 'l', NULL, 'sob_all_type', 10, 70),
('5710406a290c874', 'nuobject', 'Label', 'sob_all_label', NULL, NULL, 'sob_all_label', 40, 150),
('57143e81f2bdabf', 'nutab', 'Type', 'sfo_type', NULL, NULL, 'sfo_type', 10, 150),
('57143f25ded40bb', '', 'Type', 'CONCAT(UCASE(LEFT(sfo_type, 1)), LCASE(SUBSTRING(sfo_type, 2)))', NULL, NULL, 'sfo_type', 10, 100),
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
('57466f4a6050c2b', 'nuuser', 'Name', 'sus_name', 'l', NULL, 'sus_name', 10, 150),
('57466f4a6051984', 'nuuser', 'Email', 'sus_email', 'l', NULL, 'sus_email', 20, 300),
('57466f4a605234d', 'nuuser', 'User Group', 'sug_description', 'l', NULL, 'sug_description', 30, 150),
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
('57a7c1cb78c1c89', '57a7c1cb78bf3a3', 'Translation', 'trl_translation', 'l', NULL, 'trl_translation', 30, 300),
('57a93cb51e262f7', '57a93cb51e24fd8', 'Name', 'sus_name', 'l', '', 'sus_name', 10, 200),
('57a93cb51e26c3f', '57a93cb51e24fd8', 'Email', 'sus_email', 'l', '', 'sus_email', 20, 300),
('57a93cb51e2773a', '57a93cb51e24fd8', 'User Group', 'sug_description', 'l', '', 'sug_description', 30, 200),
('583386b1b39f3ea', '583361606250b6e', 'Code', 'sfo_code', NULL, NULL, 'sfo_code', 10, 100),
('583386b1b39f9fc', '583361606250b6e', 'Description', 'sfo_description', NULL, NULL, 'sfo_description', 20, 300),
('58338c35b340e06', '58338c35b340428', 'Custom Description', 'sob_all_fast_form_description', NULL, NULL, 'sob_all_fast_form_description', 10, 270),
('583f372b53bafcd', '583f372b53b972c', 'i', 'zzzzsys_form_id', 'l', '', 'zzzzsys_form_id', 10, 1),
('583f372b53bb208', '583f372b53b972c', 'Object', 'sob_all_id', 'l', '', 'sob_all_id', 20, 250),
('5844ffb2a70ca9b', '58338c35b340428', 'Type', 'sob_all_type', NULL, NULL, 'sob_all_type', 40, 70),
('5845033b999fb6e', '58338c35b340428', 'Object', 'sob_all_id', NULL, NULL, 'sob_all_id', 20, 100),
('5845033b99a0332', '58338c35b340428', 'Label', 'sob_all_label', NULL, NULL, 'sob_all_label', 30, 140),
('585efbcfe4e0558', '585efbcfe4dfaf4', 'Subform', 'theparent', 'l', '', 'theparent', 10, 100),
('58a08a1abc4824f', '58a08a1abc4782c', 'Invoice Number', 'inv_number', 'r', NULL, 'inv_number', 10, 200),
('586d9616d1a4bf2', '585efbcfe4dfaf4', ' ', 'theform', NULL, NULL, 'theform', 30, 2),
('5872aa8733f078a', '585efbcfe4dfaf4', ' ', 'thevalue', NULL, NULL, 'thevalue', 40, 1),
('5872aa8733f0d8d', '585efbcfe4dfaf4', 'Object', 'thechild', NULL, NULL, 'thechild', 20, 250);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_debug`
--

CREATE TABLE `zzzzsys_debug` (
  `zzzzsys_debug_id` varchar(25) NOT NULL,
  `deb_message` longtext,
  `deb_order` varchar(25) NOT NULL,
  `deb_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_event`
--

CREATE TABLE `zzzzsys_event` (
  `zzzzsys_event_id` varchar(25) NOT NULL,
  `sev_zzzzsys_object_id` varchar(25) NOT NULL,
  `sev_event` varchar(100) NOT NULL,
  `sev_javascript` varchar(3000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_event`
--

INSERT INTO `zzzzsys_event` (`zzzzsys_event_id`, `sev_zzzzsys_object_id`, `sev_event`, `sev_javascript`) VALUES
('5756482365c32a1', '57073c3a0b4ea44', 'onchange', 'nuFormColor();'),
('573d15d41e2aa8c', '573d15d41e279ba', 'onclick', 'window.open(''nureportbuilder4.php'');'),
('575619c3bb27cec', '570d98b34bf37c9', 'onchange', 'nuObjectColor();'),
('57578da6457dd67', '570b1abae987b02', 'onblur', 'nuCopyToSort(this);'),
('57620c455b19815', '575a3f7001496b0', 'onchange', 'nuSetHash(''delete_option'', this.value);'),
('5855ba7a105a235', '5726cca96d51595', 'onkeydown', 'nuFORM.scrollList(event, nuChooseEventList());'),
('5811633909ef4fb', '5811633909eeadd', 'onclick', 'nuPopPHP(event, ''BO'');'),
('58116941a1a294e', '58116941a1a1f06', 'onclick', 'nuPopPHP(event, ''BS'');'),
('58116968afd6467', '58116968afd5b6a', 'onclick', 'nuPopPHP(event, ''AS'');'),
('581169ba21137b1', '581169ba2112f38', 'onclick', 'nuPopPHP(event, ''BD'');'),
('581169d91b9db26', '581169d91b9d203', 'onclick', 'nuPopPHP(event, ''AD'');'),
('58117aed5514341', '58117aed5513a01', 'onclick', 'nuPopPHP(event, ''BB'');'),
('5811808723dc0a2', '5811808723db54b', 'onclick', 'nuPopPHP(event, ''AB'');'),
('581a4d665798ede', '581a4d665798263', 'onclick', 'nuPreview()'),
('582bbcaa5d4e95d', '570746cc078074e', 'onkeydown', 'nuFORM.scrollList(event, nuFORM.getTables())'),
('582c013be5d3a06', '570b00aa9ff6b8d', 'onkeydown', 'nuFORM.scrollList(event, nuFORM.tableFields($(''#sfo_table'').val()))'),
('582d17fa1df2192', '570d9938ebe4428', 'onkeydown', 'nuFORM.scrollList(event, window.nuObjectFields);'),
('583362e1aebadc1', '570b1ad216682ef', 'onkeydown', 'nuFORM.scrollList(event, nuFORM.SQLFields($(''#sfo_browse_sql'').val() + '' ''))'),
('582ce6036518741', '570b1abae987b02', 'onkeydown', 'nuFORM.scrollList(event, nuFORM.SQLFields($(''#sfo_browse_sql'').val() + '' ''))'),
('583369c65550588', '570dabca9be44fd', 'onkeydown', 'nuFORM.scrollList(event, nuFORM.tableFields($(''#sob_lookup_table'').val()));'),
('583369e5667549f', '570dabf5a2e2b8f', 'onkeydown', 'nuFORM.scrollList(event, nuFORM.tableFields($(''#sob_lookup_table'').val()));'),
('583f37bc5bbb100', '583f37bc5bba917', 'onkeydown', 'nuFORM.scrollList(event, window.nuObjectFields);'),
('584de442bfbdd00', '584de442bfbd456', 'onclick', 'nuPopJS()'),
('589beb3d3d4cfdb', '570da31addae07f', 'onchange', 'nuSetNumber();');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_file`
--

CREATE TABLE `zzzzsys_file` (
  `zzzzsys_file_id` varchar(25) NOT NULL DEFAULT '',
  `sfi_code` varchar(10) DEFAULT NULL,
  `sfi_description` text,
  `sfi_type` varchar(50) NOT NULL,
  `sfi_size` varchar(10) NOT NULL,
  `sfi_name` varchar(255) NOT NULL,
  `sfi_group` varchar(200) DEFAULT NULL,
  `sfi_blob` longblob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_form`
--

CREATE TABLE `zzzzsys_form` (
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
  `sfo_javascript` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_form`
--

INSERT INTO `zzzzsys_form` (`zzzzsys_form_id`, `sfo_type`, `sfo_code`, `sfo_description`, `sfo_table`, `sfo_primary_key`, `sfo_breadcrumb_title`, `sfo_redirect_form_id`, `sfo_row_height`, `sfo_rows_per_page`, `sfo_browse_sql`, `sfo_add_button`, `sfo_add_title`, `sfo_add_display_condition`, `sfo_new_button`, `sfo_new_title`, `sfo_new_display_condition`, `sfo_save_button`, `sfo_save_title`, `sfo_save_display_condition`, `sfo_delete_button`, `sfo_delete_title`, `sfo_delete_display_condition`, `sfo_clone_button`, `sfo_clone_title`, `sfo_clone_display_condition`, `sfo_print_button`, `sfo_print_title`, `sfo_print_display_condition`, `sfo_report_sql`, `sfo_report_library_zzzzsys_form_id`, `sfo_report_criteria_zzzzsys_form_id`, `sfo_report_layout`, `sfo_library_php`, `sfo_javascript`) VALUES
('56773cb405f4913', 'browseedit', 'COM', 'Company', 'company', 'company_id', '', '', '', '', 'SELECT * FROM company\r\nLEFT JOIN business ON business_id = com_business_id', '1', '', '', '', '', '', '1', 'Save Me', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '\nfunction sftest(){\n\n    var bob = 9;\n\n}'),
('5678ab2c48c5c41', 'edit', 'EMP', 'Employee Subform', 'employee', 'employee_id', '', '', '', '', 'SELECT * FROM employee\nWHERE employee_id = ''5678d416056e635''', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', ''),
('568b508eec00d80', 'browseedit', 'BUS', 'Business', 'business', 'business_id', '', '', '', '4', 'SELECT * FROM business', '1', '', '', '', '', '', '1', '', '', '', '', '', '1', '', '', '1', '', '', '', '', '', '', '', ''),
('nuhome', 'launch', 'HOME', 'Home', '', '', '', '', '', '', '', '', '', '', '0', '', '', '0', '', '', '0', '', '', '0', '', '', '', '', '', '', '', '', '', '', ''),
('56c513162acd102', 'edit', 'CHI', 'Children', 'children', 'children_id', '', '', '', '', 'SELECT * FROM employee', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', ''),
('nuform', 'browseedit', 'FORM', 'nuBuilder Form', 'zzzzsys_form', 'zzzzsys_form_id', 'select ''#sfo_code#''', '', '', '', 'SELECT * FROM zzzzsys_form\nORDER BY sfo_code\n', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '$("[onkeydown^=''nuFORM.scrollList'']").addClass(''nuScrollList'');\n$(''#sfo_breadcrumb_title'').addClass(''sql'');\n$(''#sfo_add_display_condition'').addClass(''sql'');\n$(''#sfo_print_display_condition'').addClass(''sql'');\n$(''#sfo_browse_sql'').addClass(''sql'');\n$(''#sfo_save_display_condition'').addClass(''sql'');\n$(''#sfo_clone_display_condition'').addClass(''sql'');\n$(''#sfo_delete_display_condition'').addClass(''sql'');\n$(''#sfo_new_display_condition'').addClass(''sql'');\n$(''#sfo_before_browse_php'').addClass(''php'');\n$(''#sfo_before_open_php'').addClass(''php'');\n$(''#sfo_before_save_php'').addClass(''php'');\n$(''#sfo_after_save_php'').addClass(''php'');\n$(''#sfo_before_delete_php'').addClass(''php'');\n$(''#sfo_after_delete_php'').addClass(''php'');\n$(''#sfo_javascript'').addClass(''js'');\n  \n$(''.js'').dblclick(function() {\n	nuOpenAce(''Javascript'', this.id);\n});\n\n$(''.sql'').dblclick(function() {\n	nuOpenAce(''SQL'', this.id);\n});\n\n$(''.html'').dblclick(function() {\n	nuOpenAce(''HTML'', this.id);\n});\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n\n\nif(window.filter == ''justjs''){\n    \n    $(''#nuTab0'').remove();\n    $(''#nuDelete'').remove();\n    $(''#nuClone'').remove();\n    $(''#nuTab1'').remove();\n    $(''#nuTab2'').remove();\n    $(''#nuTab3'').remove();\n    $(''#nuTab4'').click();\n    $(''#nu_bc_0'').html($(''#sfo_description'').val());\n    \n}\n\n\n\nfunction nuFormColor(){\n\n    var h           =     $(''#sfo_type'').addClass(''nuEdited'');\n    var o           = [];\n    o[''browse'']		= Array(1,4);\n    o[''edit''] 		= Array(2,3,4);\n    o[''browseedit''] = Array(1,2,3,4);\n    o[''launch''] 	= Array(3,4);\n    o[''subform''] 	= Array(3,11);\n\n    $(''#sfo_type'').removeClass();\n    $(''#sfo_type'').addClass(''nu_''+$(''#sfo_type'').val());\n    \n    if(h){\n        $(''#sfo_type'').addClass(''nuEdited'');\n    }\n    \n    $("#sfo_type > option").each(function() {\n        $(this).addClass(''nu_''+this.value);\n    });\n\n    for(var i = 0 ; i < 7 ; i++){\n        $(''#nuTab'' + i).removeClass(''nuRelatedTab'');\n    }\n    \n    var t   = o[$(''#sfo_type'').val()];\n\n    $(''#nuTab0'').addClass(''nuRelatedTab'');\n\n    if(t !== undefined){\n        \n    	for(var i = 0 ; i < t.length ; i++){\n    		$(''#nuTab'' + t[i]).addClass(''nuRelatedTab'');		\n    	}\n    	\n    }\n    \n}\n\nnuFormColor();\n\nnuBuildSubformArray(''zzzzsys_tab_sf'');\nnuBuildSubformArray(''zzzzsys_browse_sf'');\n\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.textContent);\n});\n\n\n\nfunction nuCopyToSort(t){\n\n    var o = $(''#'' + t.id);\n    var p = o.attr(''data-nu-prefix'');\n    var s = $(''#'' + p + ''sbr_sort'');\n    \n    if(s.val() == ''''){\n        s.val( o.val())\n        .change();\n    }\n\n}\n\n\n\nfunction nuEventList(){\n	\n	if($(''sob_all_type'').val() == ''subform''){\n		return [''onchange'',''onadd''];\n	}else{\n		return [''onblur'',''onchange'',''onfocus'',''onkeydown''];\n	}\n	\n}\n\n\n'),
('nubrowse', 'subform', 'FRMBR', 'Form Browse Subform', 'zzzzsys_browse', 'zzzzsys_browse_id', '', '', '', '', 'SELECT * FROM zzzzsys_browse\nORDER BY sbr_order\n', '1', '', '', '', '', '', '1', 'Save Me', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', ''),
('nutab', 'browseedit', 'TAB', 'Form Tab', 'zzzzsys_tab', 'zzzzsys_tab_id', '', '', '', '', 'SELECT * FROM zzzzsys_tab\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\nORDER BY syt_order', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.innerHTML);\n});\n'),
('nuobject', 'browseedit', 'OBJECT', 'Object', 'zzzzsys_object', 'zzzzsys_object_id', '', '', '', '', 'SELECT * FROM zzzzsys_object\nJOIN zzzzsys_tab ON zzzzsys_tab_id = sob_all_zzzzsys_tab_id\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id \n', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', '$("[onkeydown^=''nuFORM.scrollList'']").addClass(''nuScrollList'');\n$(''#sob_calc_formula'').addClass(''nuCalculator nuFormula'');\n$(''#sob_all_display_condition'').addClass(''sql'');\n$(''#sob_all_default_value_sql'').addClass(''sql'');\n$(''#sob_display_sql'').addClass(''sql'');\n$(''#sob_select_sql'').addClass(''sql'');\n$(''#sob_lookup_php'').addClass(''php'');\n$(''#sob_lookup_javascript'').addClass(''js'');\n$(''#sob_html_code'').addClass(''html'');\n  \n$(''.js'').dblclick(function() {\n	nuOpenAce(''Javascript'', this.id);\n});\n\n\n$(''.js'').dblclick(function() {\n	nuOpenAce(''Javascript'', this.id);\n});\n\n$(''.sql'').dblclick(function() {\n	nuOpenAce(''SQL'', this.id);\n});\n\n$(''.html'').dblclick(function() {\n	nuOpenAce(''HTML'', this.id);\n});\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n\nnuObjectColor();\n\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.textContent);\n});\n\nfunction nuSetNumber(){\n\n    var number  = [36,7,8,9,10,11,12,13];   //-- number formats\n    \n    if(number.indexOf(Number($(''#sob_input_format'').val())) == -1){\n        $(''#sob_input_type'').val(''number'');\n    }\n    \n}\n\nfunction nuObjectColor(){\n\n    $(''.nuValidate'').removeClass(''nuValidate'');\n\n	var o			= [];\n	o[''run'']		= 1;\n	o[''display'']	= 2;\n	o[''select'']		= 3;\n	o[''lookup'']		= 4;\n	o[''subform'']	= 5;\n	o[''input'']		= 6;\n	o[''html'']		= 7;\n	o[''calc'']		= 8;\n\n    $(''#sob_all_type'').addClass(''nu_''+$(''#sob_all_type'').val());\n    \n    $("#sob_all_type > option").each(function() {\n        $(this).addClass(''nu_''+this.value);\n    });\n	\n    var t   = o[$(''#sob_all_type'').val()];\n    \n    $("[id^=''nuTab'']").removeClass(''nuRelatedTab'');\n    \n    for(var i = 1 ; i < o.length ; i++){\n        $(''#nuTab'' + i).removeClass(''nuRelatedTab'');\n    }\n    \n    $(''#nuTab0'').addClass(''nuRelatedTab'');\n    $(''#nuTab'' + t).addClass(''nuRelatedTab'');\n    \n} \n\nfunction nuChooseEventList(){\n\n    if($(''#sob_all_type'').val() == ''subform''){\n        \n        return [''onchange'',''beforeadd'',''afteradd'', ''ondelete''];\n    \n    }else{\n        \n        return [''onblur'',''onchange'',''onfocus'',''onkeydown''];\n    \n    }\n\n}\n\n\n\nfunction nuAddToFormula(e){\n    \n    var fld = e.target.innerHTML;\n    var frm = $(''#sob_calc_formula'').val();\n\n    if(fld == ''Clear''){\n        \n        $(''#sob_calc_formula'')\n        .val('''')\n        .addClass(''nuEdited'');\n        return;\n        \n    }\n\n    $(''#sob_calc_formula'')\n    .addClass(''nuEdited'')\n    .val(frm + fld);\n    \n}\n\n'),
('583361606250b6e', 'browseedit', 'FF', 'Fast Form', 'zzzzsys_form', 'zzzzsys_form_id', '', '', '', '', 'SELECT * FROM zzzzsys_form', '1', '', '', '', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '    \n    $(''#obj_sfscrollDiv'').on(''dragover'', function(e){\n    \n    if (e.preventDefault) {\n        e.preventDefault();\n    }\n    \n    return false;\n    \n    });\n    \n    $(''#obj_sfscrollDiv'').on(''dragenter'', function(e){\n\n        $(this).css(''border-width'', 4);\n        \n        var pre             = ''#obj_sf'' + nuPad3(nuFORM.subform(''obj_sf'').rows.length - 1)\n        $(pre + ''sob_all_id'').focus();\n        \n    });\n    \n    $(''#obj_sfscrollDiv'').on(''dragleave'', function(e){\n        $(this).removeClass(''nuDragIn'');\n    });\n    \n    \n    $(''#obj_sfscrollDiv'').on(''drop'', function(e){\n        \n        e.preventDefault();\n        \n        e.dataTransfer      = e.originalEvent.dataTransfer;\n        var pre             = ''#obj_sf'' + nuPad3(nuFORM.subform(''obj_sf'').rows.length - 1)\n        var id              = e.dataTransfer.getData(''id'');\n        var label           = e.dataTransfer.getData(''label'');\n        var field_name      = e.dataTransfer.getData(''field_name'');\n        var Class           = ''nu_'' + e.dataTransfer.getData(''Class'');\n        \n        $(pre + ''custom_id'').val(id).addClass(Class);\n        $(pre + ''sob_all_label'').val(label).addClass(Class);\n        $(pre + ''sob_all_id'').val(field_name).addClass(Class).focus().change();\n        \n    });\n    \n    \n'),
('nuevent', 'edit', 'EVE', 'Object Events', 'zzzzsys_event', 'zzzzsys_event_id', '', '', '', '', 'SELECT * FROM zzzzsys_event', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nuaccess', 'browseedit', 'ACC', 'Access Levels', 'zzzzsys_access_level', 'zzzzsys_access_level_id', '', '', '', '', 'SELECT * FROM zzzzsys_access_level\nORDER BY sal_code\n', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', ' '),
('nunonsystemform', 'edit', 'FORMZ', 'nuBuilder non-System Form', 'zzzzsys_form', 'zzzzsys_form_id', '', '', '', '', 'SELECT * FROM zzzzsys_form\nORDER BY sfo_code', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '574275d543536ba', '574275d543536ba', '', '', ''),
('nuaccessforms', 'edit', 'ACCFRM', 'Accessible Forms', 'employee ', 'emp_name ', '', '', '', '', 'SELECT * FROM zzzzsys_access_level_form\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = slf_zzzzsys_form_id\nORDER BY sfo_code\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574665a15bbc1a1', 'browseedit', 'ACCGRP', 'Access Group', 'zzzzsys_user_group', 'zzzzsys_user_group_id', '', '', '', '', 'SELECT * FROM zzzzsys_user_group\nLEFT JOIN zzzzsys_form ON sug_zzzzsys_form_id = zzzzsys_form_id\nORDER BY sug_code', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', ''),
('nuuser', 'browseedit', 'ACCUSE', 'User', 'zzzzsys_user', 'zzzzsys_user_id', '', '', '', '15', 'SELECT * \nFROM zzzzsys_user \nLEFT JOIN zzzzsys_user_group ON sus_zzzzsys_user_group_id = zzzzsys_user_group_id \nORDER BY sus_name', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', ''),
('nubuildreport', 'browseedit', 'BLDREP', 'Build Report', 'zzzzsys_report', 'zzzzsys_report_id', '', '', '', '', 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '//-- hidden field set to class - nuEdited (generally ignored except when editing Reports)\n\n$(''#sre_layout'').addClass(''nuEdited''); \n'),
('nuphp', 'browseedit', 'PHPCODE', 'PHP Code', 'zzzzsys_php', 'zzzzsys_php_id', '', '', '', '', 'SELECT * FROM zzzzsys_php\r\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id\r\nWHERE sph_system != 1\r\nORDER BY sph_code\r\n', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', '\n$(''#sph_php'').addClass(''php'');\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n\nif($(''#lib_sf000spl_library_zzzzsys_php_idcode'').val() != ''''){ //-- uses libraries\n\n    $(''#nuTab2'').addClass(''nuRelatedTab'');\n    \n}\n\nif(window.filter == ''justphp''){\n\n    var ev      = [];\n    ev[''BB'']    = ''Before Browse'';\n    ev[''BO'']    = ''Before Open'';\n    ev[''BS'']    = ''Before Save'';\n    ev[''AS'']    = ''After Save'';\n    ev[''BD'']    = ''Before Delete'';\n    ev[''AD'']    = ''After Delete'';\n    ev[''AB'']    = ''After Browse'';\n    \n    var e       = ev[nuFORM.getCurrent().record_id.substr(-2)];\n    var f       = $(''#sfo_description'', window.parent.document).val();\n\n    if(e == ''After Browse''){\n        var f   = $(''#sob_all_label'', window.parent.document).val();\n    }\n    \n\n    $(''#nuTab0'').remove();\n    $(''#nuTab2'').remove();\n    $(''#nuTab1'').click();\n    $(''#nu_bc_0'').html(''<b>'' + e + ''</b> for : '' + f);\n    $(''#sph_code'').val(''SYS'')\n    $(''#sph_description'').val(''System PHP'')\n    \n}\n\n'),
('nublank', 'launch', 'BLA', 'Blank', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'var reportID    = nuFORM.current.record_id;\r\n\r\n$(''#nuTab0'').hide();\r\n\r\n$(''.nuActionHolder'').css(''text-align'',''center'');\r\n\r\nnuAppendActionButton(''Print'',"nuRunReport(''" + reportID + "'');");\r\nnuAppendActionButton(''Email'',"nuEmailReport(''" + reportID + "'');");\r\n\r\n\r\n\r\n'),
('nuaccessgroup', 'subform', 'GAL', 'Groups Access Level', 'zzzzsys_user_group_access_level', 'zzzzsys_user_group_access_level_id', '', '', '', '', 'SELECT * FROM zzzzsys_user_group_access_level', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5757a4b7181e365', 'browse', 'RUN', 'Run Form, Report or Procedure', 'zzzzsys_run_list', 'id', '', '', '', '', 'SELECT zzzzsys_form_id AS id, ''Form'' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_run_list', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\n$("[data-nu-column=''nucolumn000'']").each(function() {\n\n    $(this).addClass(''nu_''+this.innerHTML);\n\n});'),
('nudebug', 'browseedit', 'DEBUG', 'Debug', 'zzzzsys_debug', 'zzzzsys_debug_id', '', '', '50', '13', 'SELECT * FROM zzzzsys_debug\nORDER BY zzzzsys_debug_id DESC', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '$(''#delete_option'').val(0);'),
('nuaccessreport', 'browseedit', 'ACCPHP', 'Access To Procedures', 'zzzzsys_access_level_php', 'zzzzsys_access_level_php_id', '', '', '', '', 'SELECT * \nFROM zzzzsys_access_level_php\nJOIN zzzzsys_php ON zzzzsys_php_id = slp_zzzzsys_php_id\nORDER BY sph_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57637ad7b560755', 'browseedit', 'ACCREP', 'Access To Report', 'zzzzsys_access_level_report', 'zzzzsys_access_level_report_id', '', '', '', '', 'SELECT * \nFROM zzzzsys_access_level_report\nJOIN zzzzsys_report ON zzzzsys_report_id = sre_zzzzsys_report_id\nORDER BY sre_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nurunreport', 'browseedit', 'RUNREP', 'Run Report', 'zzzzsys_report', 'zzzzsys_report_id', '', '', '', '', 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', 'window.nuTYPE = ''runreport'';\n\nfunction runreport(t){\n    \n    var r   = $(''#'' + t.id).attr(''data-nu-row'');\n    var c   = ''000'';\n    var f   = $(''#'' + r + c).html();\n    var p   = $(''#'' + t.id).attr(''data-nu-primary-key'');\n\n    nuGetPDF(f, p);\n    \n}\n\n'),
('nurunphp', 'browseedit', 'RUNPHP', 'Run PHP Code', 'zzzzsys_php', 'zzzzsys_php_id', '', '', '', '', 'SELECT * FROM zzzzsys_php\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', 'window.nuTYPE = ''getphp'';\n\nfunction getphp(t){\n    \n    var r   = $(''#'' + t.id).attr(''data-nu-row'');\n    var c   = ''000'';\n    var p   = $(''#'' + r + c).html();\n    var f   = $(''#'' + t.id).attr(''data-nu-primary-key'');\n\n    nuGetPHP(p, f);\n\n}\n'),
('577b4d78ef9a2a0', 'launch', 'test', 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nulaunchdates', 'launch', '2DATES', 'Between 2 Dates', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nutimezone', 'browse', 'ZONE', 'Time Zone', 'zzzzsys_timezone', 'zzzzsys_timezone_id', '', '', '', '', 'SELECT * \nFROM zzzzsys_timezone\nORDER BY stz_timezone', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', ''),
('57a29441f16c351', 'edit', 'SET', 'Setup', 'zzzzsys_setup', 'zzzzsys_setup_id', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '$(''#set_header'').addClass(''js'');\n  \n$(''.js'').dblclick(function() {\n	nuOpenAce(''Javascript'', this.id);\n});\n\n'),
('57a7c1cb78bf3a3', 'browseedit', 'LANG', 'Language Translation', 'zzzzsys_translate', 'zzzzsys_translate_id', '', '', '', '', 'SELECT * \nFROM zzzzsys_translate\nORDER BY trl_language, trl_english', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', ''),
('nupassword', 'edit', 'PASS', 'Change Password', 'zzzzsys_user', 'zzzzsys_user_id', '', '', '', '', 'SELECT * FROM zzzzsys_user\nJOIN zzzzsys_user_group ON sus_zzzzsys_user_group_id = zzzzsys_user_group_id\nORDER BY sus_name', '1', '', '', '0', '', '', '1', '', '', '0', '', '', '0', '', '', '1', '', '', '', '', '', '', '', '$(''#nuTab0'').hide();'),
('nuphplibrary', 'subform', 'PHPLIB', 'PHP Code Library', 'zzzzsys_php_library', 'zzzzsys_php_library_id', '', '', '', '', 'SELECT * FROM zzzzsys_php_library\nLEFT JOIN zzzzsys_php ON zzzzsys_php_id = spl_zzzzsys_php_id\nORDER BY sph_code\n', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', '$(''#sph_php'').addClass(''php'');\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n'),
('57edbac65e1c52a', 'launch', 'company_report', 'company_report', 'company', 'company_id', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nuerror', 'edit', 'ERROR', 'Error Form', 'zzzzsys_form', 'zzzzsys_form_id', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '$(''#error'').hide(); \n$(''#nuTabHolder'').hide(); \n$(''#nuBreadcrumbHolder'').hide(); \n$(''#nuActionHolder'').hide();  \n\nfor(i = 0; i < window.nuFORM.getCurrent().filter.length; i++) {  	\n\n	$(''#nuRECORD'').append(''<div id="errorMessage'' + i + ''" style="margin: 10px"><span class="fake-link">''+window.nuFORM.getCurrent().filter[i][0]+''</span></div>''); 	\n	\n	$(''#errorMessage'' + i).click({\n		param1: window.nuFORM.getCurrent().filter[i][1]}, nuCloseAndFocus\n	); 	 \n	\n}  \n\nfunction nuCloseAndFocus(event) {  	\n\n	if(event.data.param1 != '''') {\n		$(''#'' + event.data.param1, window.parent.document).focus(); 	\n	}\n	\n	$(''#dialogClose'', window.parent.document).click(); \n	\n}'),
('58338c35b340428', 'browse', 'FFCO', 'Fast Form Custom Objects', 'zzzzsys_object', 'zzzzsys_object_id', '', '', '', '10', 'SELECT *\nFROM zzzzsys_object\nWHERE sob_all_fast_form_description != ''''\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\n$("[data-nu-column=''nucolumn003'']").each(function() {\n    $(this).addClass(''nu_'' + this.textContent);\n});\n\n$(''.nuBrowseTable'').attr(''draggable'', ''true'');\n\n$(''#nuBreadcrumbHolder'').remove();\n\nwindow.nuTYPE = ''nuSelectCustomObject'';\n\n\n//$(''.nuBrowseTable'').on(''dragstart'', ''nuSetDataTransfer'');\n\n$(''.nuBrowseTable'').on(''dragstart'', function(event){\n    nuSetDataTransfer(event);\n});\n\n\n$(''.nuBrowseTable'').on(''drag'', function(event){\n    console.log(event.currentTarget.id);\n});\n\n\nfunction nuSetDataTransfer(e){\n    \n	var row                         = $(''#'' + e.target.id).attr(''data-nu-row'');\n	var field_name                  = $(''#'' + row + ''001'').html();\n	var label                       = $(''#'' + row + ''002'').html();\n	var Class                       = $(''#'' + row + ''003'').html();\n	var id                          = $(''#'' + e.target.id).attr(''data-nu-primary-key'');\n\n    e.dataTransfer                  = e.originalEvent.dataTransfer;\n	e.dataTransfer.effectAllowed    = ''copy''; \n	e.dataTransfer.setData(''id'', id);\n    e.dataTransfer.setData(''label'', label);\n    e.dataTransfer.setData(''field_name'', field_name);\n    e.dataTransfer.setData(''Class'', Class);\n\n	var i                           = document.createElement(''img'');\n    i.src                           = Class + ''.png'';\n    i.width                         = 20;\n    \n    e.dataTransfer.setDragImage(i,3,3);\n    \n}\n\n\n\n'),
('583f372b53b972c', 'subform', 'FFO', 'Fast Form Objects', 'zzzzsys_object', 'zzzzsys_object_id', '', '', '', '', 'SELECT * FROM zzzzsys_object\nJOIN zzzzsys_tab ON zzzzsys_tab_id = sob_all_zzzzsys_tab_id\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\n', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', ''),
('585efbcfe4dfaf4', 'browse', 'CALC', 'Calc values On This Form And Its Subforms', '#TABLE_ID#', 'thevalue', '', '', '', '4', 'SELECT * FROM #TABLE_ID#', '0', '', '', '0', '', '', '0', '', '', '0', '', '', '0', '', '', '0', '', '', '', '', '', '', '', '\nwindow.nuTYPE = ''nuSelectCalcField'';\n\nfunction nuSelectCalcField(e){\n\n    var row = e.target.id.substr(0,8);\n    var fld = $(''#'' + row + ''003'').html();\n    var frm = $(''#sob_calc_formula'', parent.window.document).val();\n\n    $(''#sob_calc_formula'', parent.window.document)\n    .val(frm + ''nuTotal("'' + fld + ''")'')\n    .trigger(''change'');\n\n}\n\n'),
('58a08a1abc4782c', 'browseedit', 'INV', 'Invoice', 'invoice', 'inv_number', '', '', '', '', 'SELECT * FROM invoice', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', ''),
('58a08a91c9b59a9', 'subform', 'ITE', 'Invoice Items', 'invoice_item', 'invoice_item_id', '', '', '', '', 'SELECT * FROM invoice_item', '', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_form_backup`
--

CREATE TABLE `zzzzsys_form_backup` (
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
  `sfo_before_browse_zzzzsys_php_id` varchar(25) NOT NULL,
  `sfo_before_open_zzzzsys_php_id` varchar(25) NOT NULL,
  `sfo_before_save_zzzzsys_php_id` varchar(25) NOT NULL,
  `sfo_after_save_zzzzsys_php_id` varchar(25) NOT NULL,
  `sfo_before_delete_zzzzsys_php_id` varchar(25) NOT NULL,
  `sfo_after_delete_zzzzsys_php_id` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_form_backup`
--

INSERT INTO `zzzzsys_form_backup` (`zzzzsys_form_id`, `sfo_type`, `sfo_code`, `sfo_description`, `sfo_table`, `sfo_primary_key`, `sfo_breadcrumb_title`, `sfo_redirect_form_id`, `sfo_row_height`, `sfo_rows_per_page`, `sfo_before_browse_php`, `sfo_before_open_php`, `sfo_before_save_php`, `sfo_after_save_php`, `sfo_before_delete_php`, `sfo_after_delete_php`, `sfo_browse_sql`, `sfo_add_button`, `sfo_add_title`, `sfo_add_display_condition`, `sfo_new_button`, `sfo_new_title`, `sfo_new_display_condition`, `sfo_save_button`, `sfo_save_title`, `sfo_save_display_condition`, `sfo_delete_button`, `sfo_delete_title`, `sfo_delete_display_condition`, `sfo_clone_button`, `sfo_clone_title`, `sfo_clone_display_condition`, `sfo_print_button`, `sfo_print_title`, `sfo_print_display_condition`, `sfo_report_sql`, `sfo_report_library_zzzzsys_form_id`, `sfo_report_criteria_zzzzsys_form_id`, `sfo_report_layout`, `sfo_library_php`, `sfo_javascript`, `sfo_before_browse_zzzzsys_php_id`, `sfo_before_open_zzzzsys_php_id`, `sfo_before_save_zzzzsys_php_id`, `sfo_after_save_zzzzsys_php_id`, `sfo_before_delete_zzzzsys_php_id`, `sfo_after_delete_zzzzsys_php_id`) VALUES
('56773cb405f4913', 'browseedit', 'COM', 'Company', 'company', 'company_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM company\r\nLEFT JOIN business ON business_id = com_business_id', '1', '', '', '', '', '', '1', 'Save Me', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5678ab2c48c5c41', 'edit', 'EMP', 'Employee Subform', 'employee', 'employee_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM employee\nWHERE employee_id = ''5678d416056e635''', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('568b508eec00d80', 'browseedit', 'BUS', 'Business', 'business', 'business_id', '', '', '', '4', '', '', '', '', '', '', 'SELECT * FROM business', '1', '', '', '', '', '', '1', '', '', '', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nuhome', 'launch', 'HOME', 'Home', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '0', '', '', '0', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56c513162acd102', 'edit', 'CHI', 'Children', 'children', 'children_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM employee', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nuform', 'browseedit', 'FORM', 'nuBuilder Form', 'zzzzsys_form', 'zzzzsys_form_id', '', '', '', '', 'nuAddSystemEvents();', 'nuAddSystemEvents();', '    $o = ''#sfo_type#'';\n\n    if(''#sfo_type#''             == ''''){nuDisplayError(''Type Cannot Be Blank..'', ''sfo_type'');}\n    if(''#sfo_code#''             == ''''){nuDisplayError(''Code Cannot Be Blank..'', ''sfo_code'');}\n    if(''#sfo_description#''      == ''''){nuDisplayError(''Description Cannot Be Blank..'', ''sfo_description'');}\n\n\n    \n    \n    if($o == ''browseedit'' || $o == ''subform'' || $o == ''browse''){\n        \n        if($o != ''browse''){\n            nuCheckTabs();\n        }\n        \n        if($o != ''subform''){\n            nuCheckBrowse();\n        }\n        \n        if(''#sfo_browse_sql#''   == ''''){nuDisplayError(''Browse SQL Cannot Be Blank..'', ''sfo_browse_sql'');}\n    }\n\n    if($o == ''edit'' or $o == ''launch''){\n        nuCheckTabs();\n    }\n\n    if($o != ''launch''){\n        if(''#sfo_table#''            == ''''){nuDisplayError(''Table Cannot Be Blank..'', ''sfo_table'');}\n        if(''#sfo_primary_key#''      == ''''){nuDisplayError(''Primary Key Cannot Be Blank..'', ''sfo_primary_key'');}\n    }\n\nfunction nuCheckBrowse(){\n\n    $r  = 0;\n    $sf = nuSubformObject(''browse_sf'');\n\n    for($i = 0 ; $i < count($sf[''rows'']) ; $i++){\n       if($sf[''rows''][$i][8] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(''Must have at least 1 Browse Column Defined..'');\n    }\n    \n}\n\nfunction nuCheckTabs(){\n    \n    $r  = 0;\n    $sf = nuSubformObject(''tab_sf'');\n    \n    for($i = 0 ; $i < count($sf[''rows'']) ; $i++){\n       if($sf[''rows''][$i][3] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(''Must have at least 1 Tab Defined..'');\n    }\n    \n}', '$s  = "\r\n    SELECT * \r\n    FROM zzzzsys_browse \r\n    WHERE sbr_zzzzsys_form_id = ''#RECORD_ID#''\r\n    ORDER BY sbr_order;\r\n";\r\n\r\n\r\n$t = nuRunQuery($s);\r\n$o = 10;\r\n\r\nwhile($r = db_fetch_object($t)){\r\n        \r\n    $s  = "\r\n        UPDATE zzzzsys_browse \r\n        SET sbr_order = ''$o''\r\n        WHERE zzzzsys_browse_id = ''$r->zzzzsys_browse_id''\r\n        ORDER BY sbr_order;\r\n    ";\r\n    \r\n    nuRunQuery($s);\r\n    \r\n    $o = $o + 10;    \r\n    \r\n}\r\n\r\n$s  = "\r\n    SELECT * \r\n    FROM zzzzsys_tab \r\n    WHERE syt_zzzzsys_form_id = ''#RECORD_ID#''\r\n    ORDER BY syt_order;\r\n";\r\n\r\n$t = nuRunQuery($s);\r\n$o = 10;\r\n\r\nwhile($r = db_fetch_object($t)){\r\n        \r\n    $s  = "\r\n        UPDATE zzzzsys_tab \r\n        SET syt_order = ''$o''\r\n        WHERE zzzzsys_tab_id = ''$r->zzzzsys_tab_id''\r\n        ORDER BY syt_order;\r\n    ";\r\n    \r\n    nuRunQuery($s);\r\n    \r\n    $o = $o + 10;    \r\n    \r\n}\r\n\r\n', '', '', 'SELECT * FROM zzzzsys_form\nORDER BY sfo_code', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '$(''#sfo_breadcrumb_title'').addClass(''sql'');\n$(''#sfo_add_display_condition'').addClass(''sql'');\n$(''#sfo_print_display_condition'').addClass(''sql'');\n$(''#sfo_browse_sql'').addClass(''sql'');\n$(''#sfo_save_display_condition'').addClass(''sql'');\n$(''#sfo_clone_display_condition'').addClass(''sql'');\n$(''#sfo_delete_display_condition'').addClass(''sql'');\n$(''#sfo_new_display_condition'').addClass(''sql'');\n$(''#sfo_before_browse_php'').addClass(''php'');\n$(''#sfo_before_open_php'').addClass(''php'');\n$(''#sfo_before_save_php'').addClass(''php'');\n$(''#sfo_after_save_php'').addClass(''php'');\n$(''#sfo_before_delete_php'').addClass(''php'');\n$(''#sfo_after_delete_php'').addClass(''php'');\n$(''#sfo_javascript'').addClass(''js'');\n  \n$(''.js'').dblclick(function() {\n	nuOpenAce(''Javascript'', this.id);\n});\n\n$(''.sql'').dblclick(function() {\n	nuOpenAce(''SQL'', this.id);\n});\n\n$(''.html'').dblclick(function() {\n	nuOpenAce(''HTML'', this.id);\n});\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n\n\n\nfunction nuFormColor(){\n\n    var o           = [];\n    o[''browse'']		= Array(1,4);\n    o[''edit''] 		= Array(2,3,4);\n    o[''browseedit''] = Array(1,2,3,4);\n    o[''launch''] 	= Array(3,4);\n    o[''subform''] 	= Array(3,11);\n\n    $(''#sfo_type'').removeClass();\n    $(''#sfo_type'').addClass(''nu_''+$(''#sfo_type'').val());\n    \n    $("#sfo_type > option").each(function() {\n        $(this).addClass(''nu_''+this.value);\n    });\n\n    for(var i = 0 ; i < 7 ; i++){\n        $(''#nuTab'' + i).removeClass(''nuRelatedTab'');\n    }\n    \n    var t   = o[$(''#sfo_type'').val()];\n\n    $(''#nuTab0'').addClass(''nuRelatedTab'');\n\n    if(t !== undefined){\n        \n    	for(var i = 0 ; i < t.length ; i++){\n    		$(''#nuTab'' + t[i]).addClass(''nuRelatedTab'');		\n    	}\n    	\n    }\n    \n}\n\nnuFormColor();\n\nnuBuildSubformArray(''tab_sf'');\nnuBuildSubformArray(''browse_sf'');\n\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.textContent);\n});\n\n\n\nfunction nuCopyToSort(t){\n\n    var o = $(''#'' + t.id);\n    var p = o.attr(''data-nu-prefix'');\n    var s = $(''#'' + p + ''sbr_sort'');\n    \n    if(s.val() == ''''){\n        s.val( o.val())\n        .change();\n    }\n\n}\n', '', '', '', '', '', ''),
('nubrowse', 'subform', 'FRMBR', 'Form Browse Subform', 'zzzzsys_browse', 'zzzzsys_browse_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_browse\nORDER BY sbr_order\n', '1', '', '', '', '', '', '1', 'Save Me', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nutab', 'browseedit', 'TAB', 'Form Tab', 'zzzzsys_tab', 'zzzzsys_tab_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_tab\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\nORDER BY syt_order', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.innerHTML);\n});\n', '', '', '', '', '', ''),
('nuobject', 'browseedit', 'OBJECT', 'Object', 'zzzzsys_object', 'zzzzsys_object_id', '', '', '', '', '', '', '    $o = ''#sob_all_type#'';\n\n    if(''#sob_all_zzzzsys_tab_id#''             == ''''){nuDisplayError(''Type Cannot Be Blank..'', ''sob_all_zzzzsys_tab_idcode'');}\n    if(''#sob_all_type#''             == ''''){nuDisplayError(''Type Cannot Be Blank..'', ''sob_all_type'');}\n    if(''#sob_all_zzzzsys_form_id#''  == ''''){nuDisplayError(''Tab - Form Cannot Be Blank..'', ''sob_all_zzzzsys_form_idcode'');}\n    if(''#sob_all_id#''               == ''''){nuDisplayError(''ID Cannot Be Blank..'', ''sob_all_id'');}\n    if(''#sob_all_label#''   == ''''){nuDisplayError(''Label Cannot Be Blank..'', ''sob_all_label'');}\n    if(''#sob_all_order#''   == ''''){nuDisplayError(''Order Cannot Be Blank..'', ''sob_all_order'');}\n    if(''#sob_all_top#''   == ''''){nuDisplayError(''Top Cannot Be Blank..'', ''sob_all_top'');}\n    if(''#sob_all_left#''   == ''''){nuDisplayError(''Left Cannot Be Blank..'', ''sob_all_left'');}\n    if(''#sob_all_width#''   == ''''){nuDisplayError(''Width Cannot Be Blank..'', ''sob_all_width'');}\nnudebug(''nuHash : |#sob_all_type#| '' . print_r($_POST[''nuHash''],1));\n\n    if(''#sob_all_height#''   == ''''){nuDisplayError(''Height Cannot Be Blank..'', ''sob_all_height'');}\n    if(''#sob_all_cloneable#''   == ''''){nuDisplayError(''Cloneable Cannot Be Blank..'', ''sob_all_cloneable'');}\n    if(''#sob_all_align#''   == ''''){nuDisplayError(''Align Cannot Be Blank..'', ''sob_all_align'');}\n    if(''#sob_all_validate#''   == ''''){nudebug(''sob_all_validate : #sob_all_validate#'');nuDisplayError(''Validation Cannot Be Blank..'', ''sob_all_validate'');}\n    if(''#sob_all_readonly#''   == ''''){nuDisplayError(''Read Only Cannot Be Blank..'', ''sob_all_readonly'');}\n\n\n    if($o == ''display''){\n        if(''#sob_display_sql#''   == ''''){nuDisplayError(''Display Cannot Be Blank..'',''sob_display_sql'');}\n    }\n\n    if($o == ''html''){\n        if(''#sob_html_code#''   == ''''){nuDisplayError(''HTML Cannot Be Blank..'',''sob_html_code'');}\n    }\n\n    if($o == ''lookup''){\n        if(''#sob_lookup_zzzzsys_form_id#''   == ''''){nuDisplayError(''Form Cannot Be Blank..'', ''sob_lookup_zzzzsys_form_idcode'');}\n        if(''#sob_lookup_code#''   == ''''){nuDisplayError(''Code Cannot Be Blank..'', ''sob_lookup_code'');}\n        if(''#sob_lookup_description#''   == ''''){nuDisplayError(''Descrition Cannot Be Blank..'', ''sob_lookup_description'');}\n        if(''#sob_lookup_description_width#''   == ''''){nuDisplayError(''Width Cdddannot Be Blank..'', ''sob_lookup_description_width'');}\n    }\n\n    if($o == ''run''){\n        if(''#sob_run_zzzzsys_form_id#''   == ''''){nuDisplayError(''Run Cannot Be Blank..'', ''sob_run_zzzzsys_form_idcode'');}\n        if(''#sob_run_method#''   == ''''){nuDisplayError(''Method Cannot Be Blank..'', ''sob_run_method'');}\n    }\n\n\n    if($o == ''select''){\n        if(''#sob_select_multiple#''   == ''''){nuDisplayError(''Multiple Cannot Be Blank..'', ''sob_select_multiple'');}\n        if(''#sob_select_sql#''   == ''''){nuDisplayError(''SQL/List Cannot Be Blank..'', ''sob_select_sql'');}\n    }\n\n    if($o == ''subform''){\n        if(''#sob_subform_zzzzsys_form_id#''   == ''''){nuDisplayError(''Form Cannot Be Blank..'', ''sob_subform_zzzzsys_form_idcode'');}\n        if(''#sob_subform_foreign_key#''   == ''''){nuDisplayError(''Foreign Key Cannot Be Blank..'', ''sob_subform_foreign_key'');}\n        if(''#sob_subform_add#''   == ''''){nuDisplayError(''Addable Cannot Be Blank..'', ''sob_subform_add'');}\n        if(''#sob_subform_delete#''   == ''''){nuDisplayError(''Deletable Cannot Be Blank..'', ''sob_subform_delete'');}\n        if(''#sob_subform_type#''   == ''''){nuDisplayError(''Type Cannot Be Blank..'', ''sob_subform_type'');}\n    }\n\n    if($o == ''''){\n        if(''#sfo_browse_sql#''   == ''''){nuDisplayError(''Browse SQL Cannot Be Blank..'', ''sfo_browse_sql'');}\n    }\n', '', '', '', 'SELECT * FROM zzzzsys_object\nJOIN zzzzsys_tab ON zzzzsys_tab_id = sob_all_zzzzsys_tab_id\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\n', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', '\nfunction nuObjectColor(){\n\n    $(''.nuValidate'').removeClass(''nuValidate'');\n\n    var o           = [];\n    \n    o[''run'']        = 1;\n    o[''display''] 	= 2;\n    o[''select''] 	= 3;\n    o[''lookup''] 	= 4;\n    o[''subform''] 	= 5;\n    o[''input''] 		= 6;\n    o[''html'']   	= 7;\n    o[''word'']   	= 8;\n\n    //$(''#sob_all_type'').removeClass();\n    $(''#sob_all_type'').addClass(''nu_''+$(''#sob_all_type'').val());\n    \n    $("#sob_all_type > option").each(function() {\n        $(this).addClass(''nu_''+this.value);\n    });\n    var t   = o[$(''#sob_all_type'').val()];\n    \n    for(var i = 0 ; i < 8 ; i++){\n        $(''#nuTab'' + i).removeClass(''nuRelatedTab'');\n    }\n    \n    $(''#nuTab0'').addClass(''nuRelatedTab'');\n    $(''#nuTab'' + t).addClass(''nuRelatedTab'');\n    \n    \n\n}\n\n$(''#sob_all_display_condition'').addClass(''sql'');\n$(''#sob_all_default_value_sql'').addClass(''sql'');\n$(''#sob_display_sql'').addClass(''sql'');\n$(''#sob_select_sql'').addClass(''sql'');\n$(''#sob_lookup_php'').addClass(''php'');\n$(''#sob_lookup_javascript'').addClass(''js'');\n$(''#sob_html_code'').addClass(''html'');\n\n\n$(''.js'').dblclick(function() {\n	nuOpenAce(''Javascript'', this.id);\n});\n\n$(''.sql'').dblclick(function() {\n	nuOpenAce(''SQL'', this.id);\n});\n\n$(''.html'').dblclick(function() {\n	nuOpenAce(''HTML'', this.id);\n});\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n\nnuObjectColor();\n\n$("[data-nu-column=''nucolumn000'']").each(function() {       //-- update colors\n    $(this).addClass(''nu_''+this.textContent);\n});\n\n\n\n\n', '', '', '', '', '', ''),
('nulookup', 'edit', 'LOOK', 'Lookup Objects to populate', 'zzzzsys_lookup', 'zzzzsys_lookup_id', '', '', '', '', '', '', '', '', '', '', 'SELECT *\nFROM zzzzsys_lookup', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nuevent', 'edit', 'EVE', 'Object Events', 'zzzzsys_event', 'zzzzsys_event_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_event', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nuaccess', 'browseedit', 'ACC', 'Access Levels', 'zzzzsys_access_level', 'zzzzsys_access_level_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_access_level\nORDER BY sal_code', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '\n\nfunction nuEditPHP(ev){\n\n    if(b.record_id == ''-1''){alert(''Must Save Record Before adding Procedures'');}\n    \n    var b   = nuBC[nuBC.length-1];\n    var i   = ev + b.record_id\n\n    nuBuildPopup("nuphp", i);\n    \n}\n\n\n', '', '', '', '', '', ''),
('nunonsystemform', 'edit', 'FORMZ', 'nuBuilder non-System Form', 'zzzzsys_form', 'zzzzsys_form_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_form\nORDER BY sfo_code', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '574275d543536ba', '574275d543536ba', '', '', '', '', '', '', '', '', ''),
('nuaccessforms', 'edit', 'ACCFRM', 'Accessible Forms', 'zzzzsys_access_level_form', 'zzzzsys_access_level_form_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_access_level_form\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = slf_zzzzsys_form_id\nORDER BY sfo_code\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574665a15bbc1a1', 'browseedit', 'ACCGRP', 'Access Group', 'zzzzsys_user_group', 'zzzzsys_user_group_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_user_group\nLEFT JOIN zzzzsys_form ON sug_zzzzsys_form_id = zzzzsys_form_id\nORDER BY sug_code', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nuuser', 'browseedit', 'ACCUSE', 'User', 'zzzzsys_user', 'zzzzsys_user_id', '', '', '', '15', '', '', '', 'if(''#new_password#'' == ''#check_password#'' && ''#check_password#'' != ''#check_p''.''assword#'' && ''#check_password#'' != ''''){\n\n	$pw	= md5(''#check_password#'');\n	nuRunQuery("UPDATE zzzzsys_user SET sus_login_password = ''$pw'' WHERE zzzzsys_user_id = ''#RECORD_ID#''");\n\n}\n\n', '', '', 'SELECT * \nFROM zzzzsys_user \nLEFT JOIN zzzzsys_user_group ON sus_zzzzsys_user_group_id = zzzzsys_user_group_id \nORDER BY sus_name', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nubuildreport', 'browseedit', 'BLDREP', 'Build Report', 'zzzzsys_report', 'zzzzsys_report_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nuphp', 'browseedit', 'PHPCODE', 'PHP Code', 'zzzzsys_php', 'zzzzsys_php_id', 'SELECT ''#sph_description#''', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_php\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id\nORDER BY sph_code\n', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', '$(''#sph_php'').addClass(''php'');\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n\nif($(''#lib_sf000spl_library_zzzzsys_php_idcode'').val() != ''''){ //-- uses libraries\n\n    $(''#nuTab2'').addClass(''nuRelatedTab'');\n    \n}\n\nif(nuCaller.nuSystemPHP == 1){\n    \n    $(''#nuTab1'').click();\n    $(''#nuTab0'').remove();\n    $(''#nuCloneButton'').remove();\n    $(''#nuDeleteButton'').remove();\n\n}\n\n', '', '', '', '', '', ''),
('nublank', 'launch', 'BLA1', 'Blank', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\nvar reportID    = nuBC[nuBC.length-1].record_id;\n\n$(''#nuTab0'').hide();\n\n$(''.nuActionHolder'').css(''text-align'',''center'');\n\nnuAppendActionButton(''Print'',"nuRunReport(''" + reportID + "'');");\nnuAppendActionButton(''Email'',"nuEmailReport(''" + reportID + "'');");\n\n\n\n', '', '', '', '', '', ''),
('nuaccessgroup', 'subform', 'GAL', 'Groups Access Level', 'zzzzsys_user_group_access_level', 'zzzzsys_user_group_access_level_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_user_group_access_level', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5757a4b7181e365', 'browse', 'RUN', 'Run Form, Report or Procedure', 'zzzzsys_run_list', 'id', '', '', '', '', '$s = "\n\nDROP VIEW IF EXISTS zzzzsys_run_list;\nCREATE VIEW zzzzsys_run_list AS\nSELECT zzzzsys_form_id AS id, ''Form'' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_form\nUNION\nSELECT zzzzsys_report_id AS id, ''Report'' AS run, sre_code AS code, sre_description AS description FROM zzzzsys_report\nUNION\nSELECT zzzzsys_php_id AS id, ''Procedure'' AS run, sph_code AS code, sph_description AS description FROM zzzzsys_php\nORDER BY code;\n\n";\n\nnuRunQuery($s);', '', '', '', '', '', 'SELECT zzzzsys_form_id AS id, ''Form'' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_run_list', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\n$("[data-nu-column=''nucolumn000'']").each(function() {\n\n    $(this).addClass(''nu_''+this.innerHTML);\n\n});', '', '', '', '', '', ''),
('nudebug', 'browseedit', 'DEBUG', 'Debug', 'zzzzsys_debug', 'zzzzsys_debug_id', '', '', '50', '13', '', '', '', '', '\n$a  = ''#delete_option#'';\n$r  = ''#RECORD_ID#'';\n$d  = "DELETE FROM zzzzsys_debug ";\n\nif($a == 1){$d  = $d . "WHERE zzzzsys_debug_id = ''$r''";}\nif($a == 2){$d  = $d . "WHERE zzzzsys_debug_id != ''$r''";}\nif($a == 3){$d  = $d . "WHERE zzzzsys_debug_id < ''$r''";}\n\nnuRunQuery($d);\n', '', 'SELECT * FROM zzzzsys_debug\nORDER BY zzzzsys_debug_id DESC', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '$(''#delete_option'').val(0);', '', '', '', '', '', ''),
('nuaccessreport', 'browseedit', 'ACCPHP', 'Access To Procedures', 'zzzzsys_access_level_php', 'zzzzsys_access_level_php_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * \nFROM zzzzsys_access_level_php\nJOIN zzzzsys_php ON zzzzsys_php_id = slp_zzzzsys_php_id\nORDER BY sph_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57637ad7b560755', 'browseedit', 'ACCREP', 'Access To Report', 'zzzzsys_access_level_report', 'zzzzsys_access_level_report_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * \nFROM zzzzsys_access_level_report\nJOIN zzzzsys_report ON zzzzsys_report_id = sre_zzzzsys_report_id\nORDER BY sre_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nurunreport', 'browseedit', 'RUNREP', 'Run Report', 'zzzzsys_report', 'zzzzsys_report_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', 'window.nuTYPE = ''runreport'';\n\nfunction runreport(t){\n    \n    var r   = $(''#'' + t.id).attr(''data-nu-row'');\n    var c   = ''000'';\n    var f   = $(''#'' + r + c).html();\n    var p   = $(''#'' + t.id).attr(''data-nu-primary-key'');\n\n    nuGetPDF(f, p);\n    \n}\n\n', '', '', '', '', '', ''),
('nurunphp', 'browseedit', 'RUNPHP', 'Run PHP Code', 'zzzzsys_php', 'zzzzsys_php_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_php\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', 'window.nuTYPE = ''getphp'';\n\nfunction getphp(t){\n    \n    var r   = $(''#'' + t.id).attr(''data-nu-row'');\n    var c   = ''000'';\n    var p   = $(''#'' + r + c).html();\n    var f   = $(''#'' + t.id).attr(''data-nu-primary-key'');\n\n    nuGetPHP(p, f);\n\n}\n', '', '', '', '', '', ''),
('577b4d78ef9a2a0', 'launch', 'test', 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nulaunchdates', 'launch', '2DATES', 'Between 2 Dates', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nutimezone', 'browse', 'ZONE', 'Time Zone', 'zzzzsys_timezone', 'zzzzsys_timezone_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * \nFROM zzzzsys_timezone\nORDER BY stz_timezone', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a29441f16c351', 'edit', 'SET', 'Setup', 'zzzzsys_setup', 'zzzzsys_setup_id', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '$(''#set_css'').addClass(''html'');\n  \n$(''.html'').dblclick(function() {\n	nuOpenAce(''HTML'', this.id);\n});\n\n', '', '', '', '', '', ''),
('57a7c1cb78bf3a3', 'browseedit', 'LANG', 'Language Translation', 'zzzzsys_translate', 'zzzzsys_translate_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * \nFROM zzzzsys_translate\nORDER BY trl_language, trl_english', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nupassword', 'edit', 'PASS', 'Change Password', 'zzzzsys_user', 'zzzzsys_user_id', '', '', '', '', '', '', '\n\n$is		= md5(''#old_password#'');\n$was	= md5(''#new_password_check#'');\n$will	= md5(''#new_password#'');\n$ses	= ''#SESSION_ID#'';\nnudebug("$is,$was,$will");\n\n$s      = "\n\n    SELECT * \n    FROM zzzzsys_session\n    WHERE zzzzsys_session_id = ''$ses''\n\n";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n$j  = json_decode($r->sss_access);\n\n$s      = "\n\n    SELECT * \n    FROM zzzzsys_user\n    WHERE zzzzsys_user_id = ''#USER_ID#''\n    AND sus_login_password = ''$is''\n\n";\n\n$t  = nuRunQuery($s);\nnudebug(''31 '' . $s);\n\nif(db_num_rows($t) == 0){\n\n    nuDisplayError(''Incorrect Password'');\n    return;\n    \n}\n\nif($will == $was){\n\n    $s  = "\n\n    UPDATE zzzzsys_user \n    SET sus_login_password = ''$will''\n    WHERE zzzzsys_user_id = ''#RECORD_ID#''\n    AND sus_login_password = ''$is''\n    \n    ";\n\nnudebug(''qqqq ''.$s);\n    nuRunQuery($s);\n\n}else{\n    \n    nuDisplayError(''"Enter New Password" Must be the same as "Re-Enter New Password"'');\n\n}\n\n\n\n\n\n\n\n', '', '', '', 'SELECT * FROM zzzzsys_user\nJOIN zzzzsys_user_group ON sus_zzzzsys_user_group_id = zzzzsys_user_group_id\nORDER BY sus_name', '1', '', '', '0', '', '', '1', '', '', '0', '', '', '0', '', '', '1', '', '', '', '', '', '', '', '$(''#nuTab0'').hide();', '', '', '', '', '', ''),
('nuphplibrary', 'subform', 'PHPLIB', 'PHP Code Library', 'zzzzsys_php_library', 'zzzzsys_php_library_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_php_library\nLEFT JOIN zzzzsys_php ON zzzzsys_php_id = spl_zzzzsys_php_id\nORDER BY sph_code\n', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', '$(''#sph_php'').addClass(''php'');\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n', '', '', '', '', '', ''),
('nuerror', 'edit', 'NUERROR', 'Error Form', 'zzzzsys_form', 'zzzzsys_form_id', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '$(''#error'').hide(); $(''#nuTabHolder'').hide(); $(''#nuBreadcrumbHolder'').hide(); $(''#nuActionHolder'').hide();  for(i = 0; i < nuBC[0].filter.length; i++) {  	$(''#nuRECORD'').append(''<div id="errorMessage'' + i + ''" style="margin: 10px"><span class="fake-link">''+nuBC[0].filter[i][0]+''</span></div>''); 	$(''#errorMessage'' + i).click({param1: nuBC[0].filter[i][1]}, nuCloseAndFocus); 	 }  function nuCloseAndFocus(event) {  	$(''#'' + event.data.param1, window.parent.document).focus(); 	$(''#dialogClose'', window.parent.document).click(); 	 }', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_library`
--

CREATE TABLE `zzzzsys_library` (
  `zzzzsys_library_id` varchar(25) NOT NULL,
  `sli_zzzzsys_form_id` varchar(25) NOT NULL,
  `sli_library_zzzzsys_form_id` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_library`
--

INSERT INTO `zzzzsys_library` (`zzzzsys_library_id`, `sli_zzzzsys_form_id`, `sli_library_zzzzsys_form_id`) VALUES
('56a83dc7d7b204b', 'nuhome', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_object`
--

CREATE TABLE `zzzzsys_object` (
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
  `sob_all_classes` varchar(500) NOT NULL,
  `sob_all_cloneable` varchar(300) NOT NULL,
  `sob_all_align` varchar(10) NOT NULL,
  `sob_all_validate` varchar(1) NOT NULL,
  `sob_all_readonly` varchar(300) NOT NULL,
  `sob_all_display_condition` text NOT NULL,
  `sob_all_default_value_sql` text NOT NULL,
  `sob_all_fast_form_description` varchar(500) NOT NULL,
  `sob_calc_formula` varchar(300) NOT NULL,
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
  `sob_lookup_php` varchar(25) NOT NULL,
  `sob_lookup_table` varchar(500) NOT NULL,
  `sob_subform_zzzzsys_form_id` varchar(300) NOT NULL,
  `sob_subform_foreign_key` varchar(300) NOT NULL,
  `sob_subform_add` varchar(300) NOT NULL,
  `sob_subform_delete` varchar(300) NOT NULL,
  `sob_subform_type` varchar(300) NOT NULL,
  `sob_subform_table` varchar(500) NOT NULL,
  `sob_input_format` varchar(300) NOT NULL,
  `sob_input_type` varchar(300) NOT NULL,
  `sob_html_code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_object`
--

INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_classes`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_readonly`, `sob_all_display_condition`, `sob_all_default_value_sql`, `sob_all_fast_form_description`, `sob_calc_formula`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_lookup_table`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_subform_table`, `sob_input_format`, `sob_input_type`, `sob_html_code`) VALUES
('567742c772b9642', '56773cb405f4913', 'input', 'com_name', 'Company Name', '56777715b87666e', 20, 41, 145, 100, 18, '', '1', 'left', '1', '0', '', '', 'com_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56789912d6d9ddb', '56773cb405f4913', 'input', 'com_address', 'Address', '567898dbc543710', 100, 132, 145, 200, 18, '', '1', 'left', '0', '0', '', '', 'com_address', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('5678992c5432850', '56773cb405f4913', 'input', 'com_suburb', 'Suburb', '567898dbc543710', 110, 179, 173, 70, 18, '', '1', 'left', '0', '0', '', '', 'com_suburb', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('5678a9474a323f5', '56773cb405f4913', 'calc', 'com_phone', 'Calc this', '56777715b87666e', 30, 68, 145, 111, 18, 'js', '1', 'right', '1', '0', '', '', 'aaaa', 'nuTotal("employee_sf.emp_name") + nuTotal("employee_sf.emp_cost")', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'number', ''),
('5678ac0f8f3d3b8', '5678ab2c48c5c41', 'input', 'emp_name1', 'Name', '5678ab2c49bd810', 10, 8, 25, 100, 18, '', '1', 'right', '2', '0', '', '', 'emp_name', 'nuFORM.sob_all_label +  + ', 'nuuser', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', ''),
('5679d499ad76e9f', '5678ab2c48c5c41', 'input', 'emp_mobile', 'Mobile', '569c44dd2339963', 50, 24, 97, 136, 17, '', '1', 'left', '1', '0', '', '', 'emp_mobile', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8', 'text', ''),
('5689fdaf9babfb9', '56773cb405f4913', 'select', 'com_color_id', 'Color', '56777715b87666e', 50, 49, 372, 100, 159, '', '1', 'left', '1', '0', '', '', 'com_color_id', '', '', '', '', '', '', '1', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('568b50020fc7a62', '56773cb405f4913', 'lookup', 'com_business_id', 'Business Type', '56777715b87666e', 10, 14, 145, 60, 18, '', '1', 'left', '1', '0', '', '', 'com_business_id', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '200', '0', '568b508eec00d80', '', '57f6e1f954955c1', 'business', '', '', '', '', '', '', '', '', ''),
('568b543dab1d274', '56773cb405f4913', 'display', 'com_age', 'hi', '56777715b87666e', 40, 95, 145, 70, 18, '', '1', 'right', '1', '0', '', '', 'com_age', '', '', '', '', '', 'SELECT 12;', '', '', 'theCode', 'theDescription', '150', '0', '568b508eec00d80', '', '', 'business', '', '', '', '', '', '', '', '', ''),
('568dca341ca3737', '56773cb405f4913', 'run', 'com_run', 'Bus. Browse', '56777715b87666e', 80, 9, 372, 100, 30, '', '1', 'right', '1', '0', '', '', 'com_run', '', 'nublank', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8', 'number', ''),
('568ddbbf00aae51', '56773cb405f4913', 'subform', 'employee_sf', 'Subform', '567898dbc543710', 70, 223, 97, 700, 250, '', '1', 'right', '0', '0', '', '', 'com_subform', '', '568b508eec00d80', '', 'i', '', '', '', '', '', '', '', '', '', '', '', '', '5678ab2c48c5c41', 'emp_company_id', '1', '1', 'f', '', '', '', '<div style=\\"top:0px;left:0px;width:200px;height:200px;background-color:tan;\\">Hello World</div>'),
('569dc5613f24e14', 'nuhome', 'run', 'run_browse', 'Company', '569dc4ed270f08a', 10, 164, 92, 150, 30, '', '1', 'right', '1', '0', '', '', 'run_browse', '', '56773cb405f4913', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b18903c9991', '568b508eec00d80', 'input', 'bus_code', 'Code', '568b508eecf5dee', 0, 10, 50, 100, 18, '', '1', 'left', '1', '0', '', '', 'bus_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b1afab7397e', '568b508eec00d80', 'input', 'bus_description', 'Description', '568b508eecf5dee', 0, 40, 100, 100, 18, '', '1', 'left', '1', '0', '', '', 'bus_description', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b1c7939942e', '568b508eec00d80', 'input', 'bus_check', 'Check', '568b508eecf5dee', 0, 100, 50, 30, 18, '', '1', 'left', '1', '0', '', '', 'bus_check', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5716e2428f5e8fb', 'nuobject', 'subform', 'zzzzsys_event_sf', 'Javascript', '570d90df5ce8e1a', 180, 362, 111, 600, 110, '', '1', 'left', '1', '0', '', '', 'sob_all_event_subform', '', '', '', 'b', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', 'nuevent', 'sev_zzzzsys_object_id', '1', '1', 'g', '', '0', 'text', ''),
('56b7e275560be71', '56773cb405f4913', 'textarea', 'com_notes', 'Notes', '56777715b87666e', 60, 120, 93, 150, 77, '', '1', 'left', '0', '0', '', '', 'com_notes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56c0fd692478b9e', '5678ab2c48c5c41', 'lookup', 'emp_business_id', 'Business Type', '56c5145674c17a1', 40, 59, 100, 60, 18, '', '1', 'left', '0', '0', '', '', 'emp_business_id', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '90', '0', '568b508eec00d80', '', '', 'business', '', '', '', '', '', '', '', '', ''),
('nuaccess', 'nuhome', 'run', 'run_access', 'Access Levels', '569dc4ed270f08a', 20, 50, 622, 150, 30, '', '1', 'left', '1', '0', '', '', 'run_access', '', 'nuaccess', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57e851fa96edc98', 'nupassword', 'display', 'the_user', ' ', '57abe72610d666d', 10, 46, 181, 200, 18, '', '1', 'center', '0', '0', '', '', 'the_user', '', '', '', '', '', 'SELECT sus_login_name\nFROM zzzzsys_user\nWHERE zzzzsys_user_id = ''#RECORD_ID#''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('57073c3a0b4ea44', 'nuform', 'select', 'sfo_type', 'Form Tab', '570730313dd25c5', 10, 43, 150, 232, 18, '', '1', 'left', '1', '0', '', '', 'sfo_type', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|launch|Launch|subform|Subform Only', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57074535d3d3ec8', 'nuform', 'input', 'sfo_code', 'Code', '570730313dd25c5', 20, 73, 151, 100, 18, '', '1', 'left', '2', '0', '', '', 'sfo_code', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5707456baf5bf41', 'nuform', 'input', 'sfo_description', 'Description', '570730313dd25c5', 30, 103, 151, 400, 18, '', '1', 'left', '1', '0', '', '', 'sfo_description', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570746cc078074e', 'nuform', 'input', 'sfo_table', 'Table Name', '570730313dd25c5', 40, 133, 151, 232, 18, '', '1', 'left', '0', '0', '', '', 'sfo_table', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b00aa9ff6b8d', 'nuform', 'input', 'sfo_primary_key', 'Primary Key', '570730313dd25c5', 50, 162, 151, 232, 18, '', '1', 'left', '0', '0', '', '', 'sfo_primary_key', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b01cfd71142a', 'nuform', 'textarea', 'sfo_breadcrumb_title', 'Breadcrumb Title', '570730313dd25c5', 60, 192, 151, 232, 18, '', '1', 'left', '0', '0', '', '', 'sfo_breadcrumb_title', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b026adaa8641', 'nuform', 'input', 'sfo_row_height', 'Row Height', '5707303141ab448', 210, 428, 143, 50, 18, '', '1', 'right', '0', '0', '', '', 'sfo_row_height', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', ''),
('570b02f9b8e2424', 'nuform', 'input', 'sfo_rows_per_page', 'Rows Per Page', '5707303141ab448', 220, 458, 143, 50, 18, '', '1', 'right', '0', '0', '', '', 'sfo_rows_per_page', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b03bd99faa56', 'nuform', 'select', 'sfo_add_button', 'Add', '5707303141ab448', 80, 37, 143, 50, 18, '', '1', 'right', '0', '0', '', '', 'sfo_add_button', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b067c2f7cdf5', 'nuform', 'lookup', 'sfo_redirect_form_id', 'Open Different<br>Edit Form', '5707303141ab448', 230, 490, 143, 100, 18, '', '1', 'right', '0', '0', '', '', 'sfo_redirect_form_id', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '230', '', 'nuform', '', '', 'zzzzsys_form', '', '', '', '', '', '', '', '', ''),
('570b0701d63eeb4', 'nuform', 'input', 'sfo_add_title', ' ', '5707303141ab448', 90, 37, 201, 200, 18, '', '1', 'left', '0', '0', '', '', 'sfo_add_title', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b072d4270428', 'nuform', 'input', 'sfo_print_title', ' ', '5707303141ab448', 120, 70, 202, 200, 18, '', '1', 'left', '0', '0', '', '', 'sfo_print_title', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b0771c4014e2', 'nuform', 'select', 'sfo_print_button', 'Print', '5707303141ab448', 110, 71, 144, 50, 18, '', '1', 'right', '0', '0', '', '', 'sfo_print_button', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b152a3c72ab7', 'nuform', 'textarea', 'sfo_add_display_condition', ' ', '5707303141ab448', 100, 38, 409, 200, 18, '', '1', 'right', '0', '0', '', '', 'sfo_add_display_condition', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b165f71f99da', 'nuform', 'textarea', 'sfo_print_display_condition', ' ', '5707303141ab448', 130, 71, 410, 200, 18, '', '1', 'right', '0', '0', '', '', 'sfo_print_display_condition', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b1883bbeec99', 'nuform', 'textarea', 'sfo_browse_sql', 'SQL', '5707303141ab448', 190, 143, 143, 745, 100, '', '1', 'left', '0', '0', '', '', 'sfo_browse_sql', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b192e68d97ac', 'nuform', 'subform', 'zzzzsys_browse_sf', 'Columns', '5707303141ab448', 200, 260, 143, 745, 150, '', '1', 'right', '0', '0', '', '', 'browse_sf', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', 'nubrowse', 'sbr_zzzzsys_form_id', '1', '1', 'g', '', '', '', ''),
('570b1a86d41a62c', 'nubrowse', 'input', 'sbr_title', 'Title', '570b19bf5981983', 10, 10, 10, 150, 18, '', '1', 'left', '1', '0', '', '', 'sbr_title', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b1abae987b02', 'nubrowse', 'input', 'sbr_display', 'Display', '570b19bf5981983', 20, 10, 10, 150, 18, '', '1', 'left', '1', '0', '', '', 'sbr_display', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b1ad216682ef', 'nubrowse', 'input', 'sbr_sort', 'Sort', '570b19bf5981983', 30, 10, 10, 150, 18, '', '1', 'left', '1', '0', '', '', 'sbr_sort', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b2330ea5f52a', 'nubrowse', 'select', 'sbr_align', 'Align', '570b19bf5981983', 40, 10, 10, 60, 18, '', '1', 'left', '1', '0', '', 'SELECT ''l'';', 'sbr_align', '', '', '', '', '', '', '0', 'l|Left|r|Right|c|Center', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b23a2439a04c', 'nubrowse', 'select', 'sbr_format', 'Format', '570b19bf5981983', 50, 10, 10, 80, 18, '', '1', 'left', '0', '0', '', '', 'sbr_format', '', '', '', '', '', '', '0', 'date|Date|number|Number', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b242a368005e', 'nubrowse', 'input', 'sbr_width', 'Width', '570b19bf5981983', 60, 10, 10, 50, 18, '', '1', 'right', '1', '0', '', '', 'sbr_width', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b24bfbf54a99', 'nubrowse', 'input', 'sbr_order', 'Order', '570b19bf5981983', 70, 10, 10, 50, 18, '', '1', 'right', '1', '0', '', '', 'sbr_order', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b3915874d635', 'nuform', 'subform', 'zzzzsys_tab_sf', 'Tabs', '5754c7fd0191a83', 450, 58, 85, 255, 200, '', '0', 'left', '0', '0', '', '', 'tab_sf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nutab', 'syt_zzzzsys_form_id', '1', '1', 'g', '', '', '', ''),
('570b39cc123601d', 'nutab', 'input', 'syt_title', 'Title', '576372e045a2f81', 0, 10, 100, 150, 18, '', '1', 'left', '1', '0', '', '', 'syt_title', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b39f046ded37', 'nutab', 'input', 'syt_order', 'Order', '576372e045a2f81', 0, 40, 100, 50, 18, '', '1', 'right', '1', '0', '', '', 'syt_order', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b427781e5e78', 'nuform', 'input', 'sfo_save_title', ' ', '5707303145b7760', 240, 65, 157, 200, 18, '', '1', 'left', '0', '0', '', '', 'sfo_save_title', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b429d2588a7a', 'nuform', 'select', 'sfo_save_button', 'Save', '5707303145b7760', 250, 65, 99, 50, 18, '', '1', 'right', '0', '0', '', '', 'sfo_save_button', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b4310d967879', 'nuform', 'select', 'sfo_clone_button', 'Clone', '5707303145b7760', 260, 135, 99, 50, 18, '', '1', 'right', '0', '0', '', '', 'sfo_clone_button', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b4353e4d8681', 'nuform', 'input', 'sfo_clone_title', ' ', '5707303145b7760', 270, 135, 157, 200, 18, '', '1', 'left', '0', '0', '', '', 'sfo_clone_title', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b44921b219e7', 'nuform', 'textarea', 'sfo_delete_display_condition', ' ', '5707303145b7760', 280, 101, 364, 200, 18, '', '1', 'right', '0', '0', '', '', 'sfo_delete_display_condition', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b44e872eb861', 'nuform', 'textarea', 'sfo_clone_display_condition', ' ', '5707303145b7760', 290, 136, 364, 200, 18, '', '1', 'right', '0', '0', '', '', 'sfo_clone_display_condition', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b4611eff6854', 'nuform', 'input', 'sfo_delete_title', ' ', '5707303145b7760', 300, 100, 157, 200, 18, '', '1', 'left', '0', '0', '', '', 'sfo_delete_title', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b46616bf1679', 'nuform', 'select', 'sfo_delete_button', 'Delete', '5707303145b7760', 310, 100, 99, 50, 18, '', '1', 'right', '0', '0', '', '', 'sfo_delete_button', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b47026e770be', 'nuform', 'textarea', 'sfo_save_display_condition', ' ', '5707303145b7760', 320, 66, 364, 200, 18, '', '1', 'right', '0', '0', '', '', 'sfo_save_display_condition', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b4758d50f01c', 'nuform', 'select', 'sfo_new_button', 'New', '5707303145b7760', 330, 170, 99, 50, 18, '', '1', 'right', '0', '0', '', '', 'sfo_new_button', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b48672a9beec', 'nuform', 'input', 'sfo_new_title', ' ', '5707303145b7760', 380, 170, 157, 200, 18, '', '1', 'left', '0', '0', '', '', 'sfo_new_title', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('570b48871430984', 'nuform', 'textarea', 'sfo_new_display_condition', ' ', '5707303145b7760', 390, 170, 364, 200, 18, '', '1', 'right', '0', '0', '', '', 'sfo_new_display_condition', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58117aed5513a01', 'nuform', 'input', 'bb_event', 'Before Browse', '5707303141ab448', 180, 108, 143, 150, 25, '', '1', 'center', '0', '0', '', '', 'bb_event', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', ''),
('573d15d41e279ba', 'nubuildreport', 'input', 'open_builder', 'Report Layout', '574b964941d3d1a', 60, 192, 239, 150, 30, '', '1', 'left', '0', '1', '', '', 'open_builder', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', ''),
('570c3b5d641d514', 'nubuildreport', 'textarea', 'sre_layout', 'Layout', '574b964941d3d1a', 70, 236, 239, 300, 100, '', '1', 'left', '0', '1', 'SELECT ''0''', '', 'sre_layout', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570c3e6e67c39cb', 'nuform', 'textarea', 'sfo_javascript', 'Javascript', '570730315113e7e', 460, 23, 69, 857, 500, '', '1', 'left', '0', '1', '', '', 'sfo_javascript', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570c3fce5be3355', 'nuphp', 'subform', 'zzzzsys_php_library_sf', 'PHP Library', '57eb1bd4cb7e1f4', 60, 120, 191, 415, 200, '', '1', 'right', '0', '0', '', '', 'lib_sf', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '220', '', 'nunonsystemform', '', '', 'zzzzsys_form', 'nuphplibrary', 'spl_zzzzsys_php_id', '1', '1', 'g', '', '', '', ''),
('57578afc803136a', 'nuphp', 'lookup', 'sph_zzzzsys_form_id', 'Launch from', '574b8ee0b2a4cdf', 40, 110, 152, 100, 18, '', '1', 'left', '0', '0', '', '', 'sph_zzzzsys_form_id', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '230', '', 'nuform', '', '', 'zzzzsys_form', '', '', '', '', '', '', '', '', ''),
('570c8e4ef085ed5', 'nuhome', 'run', 'object_button', 'Objects', '569dc4ed270f08a', 50, 90, 92, 150, 30, '', '1', 'right', '1', '0', '', '', 'object_button', '', 'nuobject', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570d9046964038e', 'nuobject', 'lookup', 'sob_all_zzzzsys_tab_id', 'Tab - Form', '570d90df5ce8e1a', 10, 39, 109, 100, 18, '', '1', 'left', '1', '0', '', '', 'sob_all_zzzzsys_tab_id', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', '', ''),
('570d98b34bf37c9', 'nuobject', 'select', 'sob_all_type', 'Type', '570d90df5ce8e1a', 20, 65, 109, 80, 18, '', '1', 'left', '1', '0', '', '', 'sob_all_type', '', '', '', '', '', '', '0', 'calc|Calc|display|Display|html|HTML|input|Input|lookup|Lookup|run|Run|select|Select|subform|Subform|textarea|Textarea|word|Word', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', '', ''),
('570d9938ebe4428', 'nuobject', 'input', 'sob_all_id', 'ID', '570d90df5ce8e1a', 30, 91, 109, 250, 18, '', '1', 'left', '1', '0', '', '', 'sob_all_id', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d998aea50861', 'nuobject', 'input', 'sob_all_label', 'Label', '570d90df5ce8e1a', 40, 117, 109, 200, 18, '', '1', 'left', '0', '0', '', '', 'sob_all_label', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9a2e76e6a8c', 'nuobject', 'input', 'sob_all_order', 'Tabbing Order', '570d90df5ce8e1a', 50, 49, 13, 50, 18, '', '1', 'right', '0', '0', 'SELECT ''0'';', '', 'sob_all_order', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9a5d4c69587', 'nuobject', 'input', 'sob_all_top', 'Top', '570d90df5ce8e1a', 60, 39, 524, 50, 18, '', '1', 'right', '1', '0', '', '', 'sob_all_top', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9a7237fd2fc', 'nuobject', 'input', 'sob_all_left', 'Left', '570d90df5ce8e1a', 70, 65, 524, 50, 18, '', '1', 'right', '1', '0', '', '', 'sob_all_left', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9a8847feae7', 'nuobject', 'input', 'sob_all_width', 'Width', '570d90df5ce8e1a', 90, 91, 524, 50, 18, '', '1', 'right', '1', '0', '', '', 'sob_all_width', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9a9a6b24446', 'nuobject', 'input', 'sob_all_height', 'Height', '570d90df5ce8e1a', 100, 117, 524, 50, 18, '', '1', 'right', '1', '0', '', '', 'sob_all_height', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9cb9d004579', 'nuobject', 'select', 'sob_all_cloneable', 'Cloneable', '570d90df5ce8e1a', 110, 165, 109, 50, 18, '', '1', 'right', '1', '0', '', '', 'sob_all_cloneable', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9d0a39b227c', 'nuobject', 'select', 'sob_all_align', 'Align', '570d90df5ce8e1a', 120, 192, 109, 70, 18, '', '1', 'left', '1', '0', '', 'SELECT ''left'';', 'sob_all_align', '', '', '', '', '', '', '0', 'left|Left|right|Right|center|Center', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9dd38561e81', 'nuobject', 'select', 'sob_all_validate', 'Validation', '570d90df5ce8e1a', 130, 219, 109, 110, 18, '', '1', 'left', '1', '0', '', '', 'sob_all_validate', '', '', '', '', '', '', '0', '0|None|1|No Blanks|2|No Duplicates', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9e1c5a6bcfd', 'nuobject', 'select', 'sob_all_readonly', 'Read Only', '570d90df5ce8e1a', 140, 246, 109, 50, 18, '', '1', 'right', '1', '0', '', '', 'sob_all_readonly', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9e6b7f6353a', 'nuobject', 'textarea', 'sob_all_display_condition', 'Display Condition', '570d90df5ce8e1a', 150, 298, 112, 250, 18, '', '1', 'left', '0', '0', '', '', 'sob_all_display_condition', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9f1b9e51828', 'nuobject', 'textarea', 'sob_all_default_value_sql', 'Default Value', '570d90df5ce8e1a', 160, 324, 112, 250, 18, '', '1', 'left', '0', '0', '', '', 'sob_all_default_value_sql', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9f7b580e04a', 'nuobject', 'textarea', 'sob_html_code', 'HTML', '570d90df73d3a2a', 400, 20, 100, 600, 200, '', '1', 'left', '0', '0', '', '', 'sob_html_code', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9fa3e7160c2', 'nuobject', 'textarea', 'sob_display_sql', 'Display', '570d90df63e6972', 230, 20, 100, 600, 250, '', '1', 'left', '0', '0', '', '', 'sob_display_sql', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570d9ffcd716321', 'nuobject', 'textarea', 'sob_select_sql', 'SQL/List', '570d90df670db61', 240, 50, 200, 500, 150, '', '1', 'left', '0', '0', '', '', 'sob_select_sql', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570da046d5f9f4c', 'nuobject', 'select', 'sob_select_multiple', 'Multiple', '570d90df670db61', 250, 20, 200, 50, 18, '', '1', 'left', '0', '0', '', '', 'sob_select_multiple', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570da149b76e0e6', 'nuobject', 'select', 'sob_input_type', 'Input Type', '570d90df707867b', 380, 50, 100, 120, 18, '', '1', 'left', '0', '0', '', '', 'sob_input_type', '', '', '', '', '', '', '0', 'button|Button|\ncheckbox|Checkbox|\nnumber|Number|\npassword|Password|\ntext|Text', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570da31addae07f', 'nuobject', 'select', 'sob_input_format', 'Format', '570d90df707867b', 390, 20, 100, 120, 18, '', '1', 'right', '0', '0', '', '', 'sob_input_format', '', '', '', '', '', '', '0', '0|10000|1|10000.0|2|10000.00|3|10000.000|4|10000.0000|5|10000.00000|6|13-Jan-2007|7|13-01-2007|8|Jan-13-2007|9|01-13-2007|10|13-Jan-07|11|13-01-07|12|Jan-13-07|13|01-13-07|14|10,000|15|10,000.0|16|10,000.00|17|10,000.000|18|10,000.0000|19|10,000.00000|20|10000|21|10000,0|22|10000,00|23|10000,000|24|10000,0000|25|10000,00000|26|10.000|27|10.000,0|28|10.000,00|29|10.000,000|30|10.000,0000|31|10.000,00000|32|2007-01-13', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570da52f2828508', 'nuobject', 'lookup', 'sob_subform_zzzzsys_form_id', 'Form', '570d90df6d35fde', 330, 20, 200, 100, 18, '', '1', 'right', '0', '0', '', '', 'sob_subform_zzzzsys_form_id', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', ''),
('570da72cb4282e3', 'nuobject', 'input', 'sob_subform_foreign_key', 'Foreign Key', '570d90df6d35fde', 340, 50, 200, 200, 18, '', '1', 'left', '0', '0', '', '', 'sob_subform_foreign_key', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570da7b07ce4d7a', 'nuobject', 'select', 'sob_subform_add', 'Addable', '570d90df6d35fde', 350, 80, 200, 50, 18, '', '1', 'left', '0', '0', '', '', 'sob_subform_add', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570da7d7d12aea2', 'nuobject', 'select', 'sob_subform_delete', 'Deleteable', '570d90df6d35fde', 360, 110, 200, 50, 18, '', '1', 'left', '0', '0', '', '', 'sob_subform_delete', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570da861e15f8f6', 'nuobject', 'select', 'sob_subform_type', 'Type', '570d90df6d35fde', 370, 140, 200, 80, 18, '', '1', 'left', '0', '0', '', '', 'sob_subform_type', '', '', '', '', '', '', '0', 'g|Grid|f|Form', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570da8ac71acec7', 'nuobject', 'lookup', 'sob_run_zzzzsys_form_id', 'Run', '570d90df60880c2', 190, 36, 141, 100, 18, '', '1', 'right', '0', '0', '', '', 'sob_run_zzzzsys_form_id', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'code', 'CONCAT(run, '' - '', description)', '200', '', '5757a4b7181e365', '', '', 'zzzzsys_run_list', '', '', '', '', '', '', '', '', ''),
('570da93be3f323f', 'nuobject', 'input', 'sob_run_filter', 'Filter', '570d90df60880c2', 200, 66, 141, 200, 18, '', '1', 'left', '0', '0', '', '', 'sob_run_filter', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570da986cb6807a', 'nuobject', 'input', 'sob_run_id', 'Record ID', '570d90df60880c2', 210, 96, 141, 200, 18, '', '1', 'left', '0', '0', '', '', 'sob_run_id', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570daa6277a97e1', 'nuobject', 'select', 'sob_run_method', 'Method', '570d90df60880c2', 220, 126, 141, 80, 18, '', '1', 'left', '0', '0', '', '', 'sob_run_method', '', '', '', '', '', '', '0', 'b|Button|i|iFrame', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570dab25164b394', 'nuobject', 'lookup', 'sob_lookup_zzzzsys_form_id', 'Form', '570d90df6a2c12a', 260, 29, 165, 100, 18, '', '1', 'right', '0', '0', '', '', 'sob_lookup_zzzzsys_form_id', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', ''),
('570dabca9be44fd', 'nuobject', 'input', 'sob_lookup_code', 'Code', '570d90df6a2c12a', 270, 57, 165, 200, 18, '', '1', 'left', '0', '0', '', '', 'sob_lookup_code', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570dabf5a2e2b8f', 'nuobject', 'input', 'sob_lookup_description', 'Description', '570d90df6a2c12a', 290, 85, 165, 200, 18, '', '1', 'left', '0', '0', '', '', 'sob_lookup_description', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570dac54b62da77', 'nuobject', 'input', 'sob_lookup_description_width', 'Width', '570d90df6a2c12a', 300, 85, 434, 50, 18, '', '1', 'right', '0', '0', '', 'SELECT 0;', 'sob_lookup_description_width', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570dadc061c6ef5', 'nuobject', 'textarea', 'sob_lookup_javascript', 'Javascript To Be Run<br>After Populating Fields', '570d90df6a2c12a', 310, 175, 165, 600, 100, '', '1', 'left', '0', '0', '', '', 'sob_lookup_javascript', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570db01f6dd4d3d', 'nulookup', 'input', 'zzzzsys_slo_object_name', 'Form Object Name', '570dafc86862c1b', 0, 20, 200, 274, 18, '', '1', 'left', '1', '0', '', '', 'zzzzsys_slo_object_name', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570db0522404442', 'nulookup', 'input', 'zzzzsys_slo_field_function_name', 'Field / Function Name', '570dafc86862c1b', 0, 40, 200, 270, 18, '', '1', 'left', '1', '0', '', '', 'zzzzsys_slo_field_function_name', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('570db786c678c27', 'nuhome', 'run', 'form_button', 'Forms', '569dc4ed270f08a', 60, 50, 92, 150, 30, '', '1', 'right', '1', '0', '', '', 'form_button', '', 'nuform', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5726daf4237eb57', 'nuevent', 'textarea', 'sev_javascript', 'Javascript Function', '5726b139a7e27c2', 20, 1, 255, 395, 20, 'js', '1', 'left', '1', '0', '', '', 'sev_javascript', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', '', 'text', ''),
('5726cca96d51595', 'nuevent', 'input', 'sev_event', 'Event', '5726b139a7e27c2', 10, 1, 55, 150, 18, '', '1', 'left', '1', '0', '', '', 'sev_event', '', '', '', '', '', '', '0', 'drag|drag|dragend|dragend|dragenter|dragenter|dragexit|dragexit|dragleave|dragleave|dragover|dragover|dragstart|dragstart|drop|drop|onclick|onclick|onblur|onblur|onchange|onchange|onfocus|onfocus|onkeydown|onkeydown', '', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', '', 'text', ''),
('5743da507326181', 'nuaccess', 'input', 'sal_description', 'Description', '5743d509312c4bc', 30, 80, 100, 200, 18, '', '1', 'left', '1', '0', '', '', 'sal_description', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5743d964cbef2e1', 'nuaccess', 'lookup', 'sal_zzzzsys_form_id', 'Home', '5743d509312c4bc', 10, 20, 100, 100, 18, '', '1', 'left', '1', '0', '', '', 'sal_zzzzsys_form_id', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nunonsystemform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', ''),
('5742b06d956c254', 'nuobject', 'input', 'sob_all_zzzzsys_form_id', 'Form ID', '570d90df5ce8e1a', 170, 0, 0, 100, 18, '', '1', 'left', '1', '1', 'SELECT ''0''', '', 'sob_all_zzzzsys_form_id', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', '', ''),
('5743da6ab90d89b', 'nuaccess', 'input', 'sal_code', 'Code', '5743d509312c4bc', 20, 50, 100, 100, 18, '', '1', 'left', '1', '0', '', '', 'sal_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57452c417370475', 'nuaccessforms', 'lookup', 'slf_zzzzsys_form_id', 'Form', '5746616ea8ead0c', 0, 20, 100, 100, 18, '', '1', 'left', '1', '0', '', '', 'slf_zzzzsys_form_id', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nunonsystemform', '', '', 'zzzzsys_form', '', '', '1', '', '', '', '', '', ''),
('57452d00100e37b', 'nuaccess', 'subform', 'accform', '', '5743d509312ce9c', 40, 50, 50, 695, 400, '', '1', 'left', '0', '', '', '', 'accform', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessforms', 'slf_zzzzsys_access_level_id', '1', '1', 'g', '', '', '', ''),
('57464b254128724', 'nuaccessforms', 'select', 'slf_add_button', 'Add', '5746616ea8ead0c', 0, 20, 100, 50, 18, '', '1', 'left', '0', '0', '', '', 'slf_add_button', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', ''),
('57464b8ac424381', 'nuaccessforms', 'select', 'slf_save_button', 'Save', '5746616ea8ead0c', 0, 20, 100, 50, 18, '', '1', 'left', '0', '0', '', '', 'slf_save_button', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', ''),
('57464b99c32e7a9', 'nuaccessforms', 'select', 'slf_delete_button', 'Delete', '5746616ea8ead0c', 0, 20, 100, 50, 18, '', '1', 'left', '0', '0', '', '', 'slf_delete_button', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', ''),
('57464ba7ab4fc9f', 'nuaccessforms', 'select', 'slf_clone_button', 'Clone', '5746616ea8ead0c', 0, 20, 100, 50, 18, '', '1', 'left', '0', '0', '', '', 'slf_clone_button', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', ''),
('57464bb9275cf03', 'nuaccessforms', 'select', 'slf_new_button', 'New', '5746616ea8ead0c', 0, 20, 100, 50, 18, '', '1', 'left', '0', '0', '', '', 'slf_new_button', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', ''),
('57464bc6d665be3', 'nuaccessforms', 'select', 'slf_print_button', 'Print', '5746616ea8ead0c', 0, 20, 100, 50, 18, '', '1', 'left', '0', '0', '', '', 'slf_print_button', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', ''),
('574665c53498a27', '574665a15bbc1a1', 'input', 'sug_code', 'Code', '574665a15bc3218', 10, 51, 107, 100, 18, '', '1', 'left', '1', '0', '', '', 'sug_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574665db58bbad6', '574665a15bbc1a1', 'input', 'sug_description', 'Description', '574665a15bc3218', 20, 82, 107, 300, 18, '', '1', 'left', '1', '0', '', '', 'sug_description', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5746661007c5501', 'nuhome', 'run', 'run_group', 'User Group', '569dc4ed270f08a', 70, 90, 622, 150, 30, '', '1', 'left', '1', '0', '', '', 'run_group', '', '574665a15bbc1a1', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574667a92f0374f', '574665a15bbc1a1', 'lookup', 'sug_zzzzsys_form_id', 'Home', '574665a15bc3218', 30, 112, 107, 70, 18, '', '1', 'left', '1', '0', '', '', 'sug_zzzzsys_form_id', '', '', '', '', '', '', '0', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', 'sfo_code', 'sfo_description', '300', '', 'nunonsystemform', '', '', 'zzzzsys_form', '', '', '', '', '', '', '', '', ''),
('57466fa32c18b02', 'nuhome', 'run', 'run_user', 'User', '569dc4ed270f08a', 80, 129, 622, 150, 30, '', '1', 'left', '1', '0', '', '', 'run_user', '', 'nuuser', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5746703645523e8', 'nuuser', 'input', 'sus_name', 'Name', '57466ebd5c0fff2', 10, 11, 150, 300, 18, '', '1', 'left', '1', '0', '', '', 'sus_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('57467053c6159d8', 'nuuser', 'input', 'sus_email', 'Email', '57466ebd5c0fff2', 20, 42, 150, 300, 18, '', '1', 'left', '1', '0', '', '', 'sus_email', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('57467094ba580d8', 'nuuser', 'input', 'sus_login_name', 'Login Name', '57466ebd5c0fff2', 50, 124, 150, 200, 18, '', '1', 'left', '2', '0', '', '', 'sus_login_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('574670b1f0ebdd9', 'nuuser', 'input', 'new_password', 'Enter New Password', '57466ebd5c0fff2', 60, 154, 150, 200, 18, '', '1', 'left', '1', '0', '', '', 'new_password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', ''),
('574670f777ae0d6', 'nuuser', 'input', 'check_password', 'Reenter New Password', '57466ebd5c0fff2', 70, 184, 150, 200, 18, '', '1', 'left', '1', '0', '', '', 'check_password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', ''),
('574671cdcc77367', 'nuuser', 'lookup', 'sus_zzzzsys_user_group_id', 'User Group', '57466ebd5c0fff2', 40, 94, 150, 100, 18, '', '1', 'left', '1', '0', '', '', 'sus_zzzzsys_user_group_id', '', '', '', '', '', '', '', '', 'sug_code', 'sug_description', '200', '', '574665a15bbc1a1', '', '', 'zzzzsys_user_group', '', '', '', '', '', '', '', 'text', ''),
('574b8f87a400809', 'nuphp', 'input', 'sph_code', 'Code', '574b8ee0b2a4cdf', 10, 17, 152, 100, 18, '', '1', 'left', '1', '0', '', '', 'sph_code', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b8fa359b39fc', 'nuphp', 'input', 'sph_description', 'Description', '574b8ee0b2a4cdf', 20, 48, 152, 300, 18, '', '1', 'left', '1', '0', '', 'SELECT 1', 'sph_description', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b9008ac10e16', 'nuphp', 'textarea', 'sph_php', 'PHP', '5811788510768ef', 50, 20, 38, 742, 353, '', '1', 'left', '1', '1', '', '', 'sph_php', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b91aec1e5c94', 'nuhome', 'run', 'edit_php', 'Build Procedures', '569dc4ed270f08a', 90, 50, 434, 150, 30, '', '1', 'left', '1', '0', '', '', 'edit_php', '', 'nuphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b97322568df5', 'nuhome', 'run', 'edit_report', 'Build Reports', '569dc4ed270f08a', 120, 50, 264, 150, 30, '', '1', 'left', '1', '0', '', '', 'edit_report', '', 'nubuildreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57561237059313b', 'nublank', 'input', 'bla_html', 'Hi', '575611cca558059', 11, 400, 400, 1, 1, '', '1', 'left', '0', '0', 'SELECT ''0''', '', 'bla_html', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '.'),
('5754c06bd926f66', 'nubuildreport', 'lookup', 'sre_zzzzsys_form_id', 'Launch From', '574b964941d3d1a', 40, 106, 239, 100, 18, '', '1', 'left', '1', '0', '', '', 'sre_zzzzsys_form_id', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', ''),
('57579cb29a87ac1', 'nubuildreport', 'input', 'sre_code', 'Code', '574b964941d3d1a', 10, 16, 239, 100, 18, '', '1', 'left', '1', '0', '', '', 'sre_code', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57579cd24784461', 'nubuildreport', 'input', 'sre_description', 'Description', '574b964941d3d1a', 20, 46, 239, 300, 18, '', '1', 'left', '1', '0', '', '', 'sre_description', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a2bb92683acf', '574665a15bbc1a1', 'subform', 'levels', 'Access Levels', '574665a15bc3218', 40, 174, 107, 465, 200, '', '1', 'left', '1', '0', '', '', 'levels', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessgroup', 'gal_zzzzsys_user_group_id', '1', '1', 'g', '', '', '', ''),
('575a2cf681d6427', 'nuaccessgroup', 'lookup', 'gal_zzzzsys_access_level_id', 'Access To..', '575a273aadf6c37', 40, 40, 107, 70, 18, '', '1', 'left', '1', '0', '', '', 'gal_zzzzsys_access_level_id', '', '', '', '', '', '', '0', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', 'sal_code', 'sal_description', '300', '', 'nuaccess', '', '', 'zzzzsys_access_level', '', '', '', '', '', '', '', '', ''),
('575a326a877e7ed', 'nuhome', 'run', 'run_debug', 'Debug', '569dc4ed270f08a', 140, 349, 622, 150, 30, '', '1', 'left', '1', '0', '', '', 'run_debug', '', 'nudebug', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a3c0497ca756', 'nudebug', 'textarea', 'deb_message', 'Message', '575a31edccc2012', 10, 55, 97, 600, 500, '', '0', 'left', '0', '', '', '', 'deb_message', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a3f7001496b0', 'nudebug', 'select', 'delete_option', 'Delete', '575a31edccc2012', 40, 14, 100, 134, 18, '', '1', 'left', '1', '0', '', 'SELECT 1', 'delete_option', '', '', '', '', '', '', '0', '0|All|1|This|2|All But This|3|Older Than This', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a4060ddc83ef', 'nudebug', 'display', 'debug_id', 'Time Stamp', '575a31edccc2012', 20, 14, 574, 123, 18, '', '0', 'left', '0', '0', '', '', 'debug_id', '', '', '', '', '', 'SELECT deb_added \nFROM zzzzsys_debug \nWHERE zzzzsys_debug_id = ''#RECORD_ID#''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575f5fe89bf014b', 'nuaccessreport', 'lookup', 'slp_zzzzsys_php_id', 'PHP Procedures', '575f55e6e740d5a', 0, 20, 100, 100, 18, '', '1', 'left', '1', '0', '', '', 'slp_zzzzsys_php_id', '', '', '', '', '', '', '0', '', 'sph_code', 'sph_description', '200', '', 'nuphp', '', '', 'zzzzsys_php', '', '', '1', '', '', '', '', '', ''),
('575f592d57ff088', 'nuaccess', 'subform', 'accphp', '', '575f5474793747e', 50, 50, 50, 395, 400, '', '1', 'left', '0', '0', '', '', 'accphp', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessreport', 'slp_zzzzsys_access_level_id', '1', '1', 'g', '', '', '', ''),
('57624c4714b0ce2', 'nuaccess', 'subform', 'accreport', '', '575f54747937ff5', 60, 50, 50, 395, 400, '', '1', 'left', '0', '0', '', '', 'accreport', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '57637ad7b560755', 'sre_zzzzsys_access_level_id', '1', '1', 'g', '', '', '', ''),
('57637d4688096ef', '57637ad7b560755', 'lookup', 'sre_zzzzsys_report_id', 'Report', '57637ad7b563282', 30, 47, 163, 100, 18, '', '1', 'left', '1', '0', '', '', 'sre_zzzzsys_report_id', '', '', '', '', '', '', '', '', 'sre_code', 'sre_description', '200', '0', 'nubuildreport', '', '', 'zzzzsys_report', '', '', '', '', '', '', '', '', ''),
('577b254578f0498', 'nubuildreport', 'input', 'sre_group', 'Group', '574b964941d3d1a', 30, 76, 239, 150, 18, '', '1', 'left', '1', '0', '', '', 'sre_group', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4314f347f60', 'nuhome', 'run', 'run_report', 'Run Report', '569dc4ed270f08a', 130, 90, 264, 150, 30, '', '1', 'left', '1', '0', '', '', 'run_report', '', 'nurunreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', 'nurunreport', '', '0', '0', '', '', '', '', ''),
('577b49b3eb0c80f', 'nuhome', 'run', 'run_php', 'Run Procedure', '569dc4ed270f08a', 110, 91, 434, 150, 30, '', '1', 'left', '1', '0', '', '', 'run_php', '', 'nurunphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_classes`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_readonly`, `sob_all_display_condition`, `sob_all_default_value_sql`, `sob_all_fast_form_description`, `sob_calc_formula`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_lookup_table`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_subform_table`, `sob_input_format`, `sob_input_type`, `sob_html_code`) VALUES
('577b4dd43e0a9eb', '577b4d78ef9a2a0', 'input', 'steven', 'test', '577b4d78ef9c1d6', 1, 100, 100, 100, 20, '', '1', 'left', '0', '0', '', '', 'steven', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4eb7ad0f7f5', '577b4d78ef9a2a0', 'input', 'com_address', 'Address', '577b4d78ef9c1d6', 110, 12, 74, 200, 18, '', '1', 'left', '0', '0', '', '', 'com_address', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('577c7a54b78326c', 'nulaunchdates', 'input', 'from_date', 'Between', '577c5efa0d6275e', 10, 72, 115, 90, 18, '', '1', 'left', '0', '0', '', '', 'from_date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '', ''),
('577c7a71c405f7c', 'nulaunchdates', 'input', 'to_date', 'And', '577c5efa0d6275e', 20, 72, 243, 90, 18, '', '1', 'left', '0', '0', '', '', 'to_date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '', ''),
('578341d99ca3725', 'nubuildreport', 'lookup', 'sre_zzzzsys_php_id', 'PHP Used To Create #TABLE_ID#', '574b964941d3d1a', 50, 139, 239, 100, 18, '', '1', 'left', '1', '0', '', '', 'sre_zzzzsys_php_id', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sph_code', 'sph_description', '200', '', 'nuphp', '', '', 'zzzzsys_php', 'nuform', '', '1', '', '', '', '', '', ''),
('579039aaf34f7c5', 'nuphp', 'input', 'sph_group', 'Group', '574b8ee0b2a4cdf', 30, 79, 152, 300, 18, '', '1', 'left', '0', '0', '', '', 'sph_group', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a29781085834c', 'nuhome', 'run', 'run_setup', 'Setup', '569dc4ed270f08a', 30, 259, 622, 150, 30, '', '1', 'left', '1', '0', '', '', 'run_setup', '', '57a29441f16c351', '', 'b', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a298576dc5d7f', '57a29441f16c351', 'input', 'set_time_out_minutes', 'Timeout (minutes)', '57a29441f16e2e2', 10, 61, 111, 100, 18, '', '1', 'right', '2', '0', '', '', 'set_time_out_minutes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'number', ''),
('57a29bffb8a5938', '57a29441f16c351', 'lookup', 'set_zzzzsys_timezone_id', 'Time Zone', '57a29441f16e2e2', 20, 93, 111, 300, 18, '', '1', 'left', '2', '0', '', '', 'set_zzzzsys_timezone_id', '', '', '', '', '', '', '', '', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', '0', '', ''),
('57a29f631fdd125', 'nuuser', 'select', 'sus_language', 'Language', '57466ebd5c0fff2', 30, 68, 151, 150, 18, '', '1', 'left', '0', '0', '', '', 'sus_language', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', '0', '', ''),
('57a2ade3a4625e3', '57a29441f16c351', 'textarea', 'set_fonts', 'Report Fonts', '57a29441f16e2e2', 30, 125, 111, 300, 100, '', '1', 'left', '2', '0', '', '', 'set_fonts', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', '0', '', ''),
('57a2af5b466f884', '57a29441f16c351', 'input', 'set_smtp_username', 'Auth SMTP User Name', '57a29441f16eb9f', 40, 91, 208, 200, 18, '', '1', 'left', '2', '0', '', '', 'set_smtp_username', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'number', ''),
('57a2afbe5b8d810', '57a29441f16c351', 'input', 'set_smtp_password', 'Auth SMTP Password', '57a29441f16eb9f', 50, 127, 208, 200, 18, '', '1', 'left', '2', '0', '', '', 'set_smtp_password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'number', ''),
('57a2affc246c61e', '57a29441f16c351', 'input', 'set_smtp_host', 'Auth SMTP Host', '57a29441f16eb9f', 60, 163, 208, 200, 18, '', '1', 'left', '2', '0', '', '', 'set_smtp_host', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'number', ''),
('57a2b0490518152', '57a29441f16c351', 'input', 'set_smtp_from_address', 'Auth SMTP From Address', '57a29441f16eb9f', 70, 199, 208, 200, 18, '', '1', 'left', '2', '0', '', '', 'set_smtp_from_address', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'number', ''),
('57a2b092a3fb465', '57a29441f16c351', 'input', 'set_smtp_from_name', 'Auth SMTP From Name', '57a29441f16eb9f', 80, 235, 208, 200, 18, '', '1', 'left', '2', '0', '', '', 'set_smtp_from_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'number', ''),
('57a2b0d9e0c353d', '57a29441f16c351', 'input', 'set_smtp_port', 'Auth SMTP Port', '57a29441f16eb9f', 90, 271, 208, 70, 18, '', '1', 'right', '2', '0', '', '', 'set_smtp_port', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'number', ''),
('57a2b1b4bb27602', '57a29441f16c351', 'select', 'set_smtp_use_ssl', 'Auth SMTP Use SSL', '57a29441f16eb9f', 100, 307, 208, 70, 18, '', '1', 'left', '2', '0', '', '', 'set_smtp_use_ssl', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a2da33d52fac6', '57a29441f16c351', 'textarea', 'set_header', 'Header', '57a29441f16f59d', 110, 29, 75, 605, 400, '', '1', 'left', '2', '0', '', '', 'set_header', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', '0', '', ''),
('57a7c213dc62789', 'nuhome', 'run', 'run_lang', 'Translation', '569dc4ed270f08a', 40, 304, 622, 150, 30, '', '1', 'left', '1', '0', '', '', 'run_lang', '', '57a7c1cb78bf3a3', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a7d639f21d3a8', '57a7c1cb78bf3a3', 'input', 'trl_language', 'Language', '57a7c1cb78c31d5', 10, 39, 92, 100, 18, '', '1', 'left', '1', '0', '', '', 'trl_language', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a7d77ccd5d248', '57a7c1cb78bf3a3', 'input', 'trl_english', 'English', '57a7c1cb78c31d5', 20, 70, 92, 400, 18, '', '1', 'left', '2', '0', '', '', 'trl_english', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a7d7a35f01f40', '57a7c1cb78bf3a3', 'input', 'trl_translation', 'Translation', '57a7c1cb78c31d5', 30, 101, 92, 400, 18, '', '1', 'left', '2', '0', '', '', 'trl_translation', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a93d17300512b', 'nupassword', 'input', 'new_password_check', 'Re-Enter New Password', '57abe72610d666d', 40, 133, 181, 200, 18, '', '1', 'left', '1', '0', '', '', 'new_password_check', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', ''),
('57e9ac7558a551b', 'nuobject', 'input', 'sob_all_fast_form_description', 'Description If Available In Fast Forms', '57e9abf690319a4', 440, 101, 253, 300, 18, '', '1', 'left', '0', '0', '', '', 'sob_all_fast_form_description', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('57abea0d8fc5446', 'nupassword', 'input', 'new_password', 'Enter New Password', '57abe72610d666d', 30, 104, 181, 200, 18, '', '1', 'left', '1', '0', '', '', 'new_password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', ''),
('57d62bdf8dd4459', '56773cb405f4913', 'run', 'aframe', 'FORM', '56777715b87666e', 90, 0, 557, 650, 600, '', '1', 'right', '1', '0', '', '', 'aframe', '', 'nuuser', 'Admin', 'i', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57e8595cdef6edc', 'nupassword', 'input', 'old_password', 'Enter Current Password', '57abe72610d666d', 20, 75, 181, 200, 18, '', '1', 'left', '1', '0', '', '', 'old_password', '', '', '', '', '', 'SELECT CONCAT(''( '', sus_login_name, '' )'')\nFROM zzzzsys_user\nWHERE zzzzsys_user_id = ''#RECORD_ID#''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', ''),
('57eb03abed05e20', 'nuphplibrary', 'lookup', 'spl_library_zzzzsys_php_id', 'Include', '57eaf962bd0a957', 60, 556, 152, 100, 18, '', '1', 'right', '1', '0', '', '', 'spl_library_zzzzsys_php_id', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sph_code', 'sph_description', '220', '', 'nuphp', '', '', 'zzzzsys_php', '', '', '', '', '', '', '', '', ''),
('5811808723db54b', 'nuobject', 'input', 'ab_event', 'After Browse', '570d90df6a2c12a', 320, 123, 165, 150, 25, '', '1', 'center', '0', '0', '', '', 'ab_event', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', ''),
('57edbb1638832c4', '57edbac65e1c52a', 'textarea', 'com_name', 'Name', '57edbac65e1d42e', 10, 0, 0, 100, 20, '', '1', '', '0', '0', '', '', 'com_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57fadb3206fceda', 'nuerror', 'input', 'error', '', '57fad2784b27d77', 10, 10, 10, 800, 200, '', '0', 'left', '0', '0', '', '', 'error', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5811633909eeadd', 'nuform', 'input', 'bo_event', 'Before Open', '5707303145b7760', 400, 262, 98, 129, 25, '', '1', 'center', '0', '0', '', '', 'bo_event', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', ''),
('58116941a1a1f06', 'nuform', 'input', 'bs_event', 'Before Save', '5707303145b7760', 410, 262, 266, 129, 25, '', '1', 'center', '0', '0', '', '', 'bs_event', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', ''),
('58116968afd5b6a', 'nuform', 'input', 'as_event', 'After Save', '5707303145b7760', 420, 308, 266, 129, 25, '', '1', 'center', '0', '0', '', '', 'as_event', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', ''),
('581169ba2112f38', 'nuform', 'input', 'bd_event', 'Before Delete', '5707303145b7760', 430, 262, 434, 129, 25, '', '1', 'center', '0', '0', '', '', 'bd_event', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', ''),
('581169d91b9d203', 'nuform', 'input', 'ad_event', 'After Delete', '5707303145b7760', 440, 308, 434, 129, 25, '', '1', 'center', '0', '0', '', '', 'ad_event', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', ''),
('58165f54bd8bdc7', 'nuform', 'word', 'titlewrd', 'Title', '5707303145b7760', 340, 39, 157, 50, 18, '', '1', 'left', '0', '0', '', '', 'titlewrd', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58165fa5e18bf61', 'nuform', 'word', 'displayconditionwrd', 'Display Condition', '5707303145b7760', 350, 39, 364, 150, 18, '', '1', 'left', '0', '0', '', '', 'displayconditionwrd', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58165fbc36e019b', 'nuform', 'word', 'buttonswrd', 'Buttons', '5707303145b7760', 360, 39, 99, 50, 18, '', '1', 'left', '0', '0', '', '', 'buttonswrd', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5816669c70e5ad5', 'nuform', 'word', 'buttonswrd2', 'Buttons', '5707303141ab448', 140, 12, 143, 50, 18, '', '1', 'left', '0', '0', '', '', 'buttonswrd2', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('581666d5c06c0f8', 'nuform', 'word', 'displayconditionwrd2', 'Display Condition', '5707303141ab448', 150, 12, 409, 111, 18, '', '1', 'left', '0', '0', '', '', 'displayconditionwrd2', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5816672a8a12ea9', 'nuform', 'word', 'titlewrd2', 'Title', '5707303141ab448', 160, 12, 202, 111, 18, '', '1', 'left', '0', '0', '', '', 'titlewrd2', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5817a9b3eaec59e', 'nuform', 'word', 'proceduresswrd', '<b>Procedures Run...</b>', '5707303145b7760', 370, 236, 99, 200, 18, '', '1', 'left', '0', '0', '', '', 'proceduresswrd', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5817aa72351e2d9', 'nuform', 'word', 'proceduresswrd2', '<b>Procedure Run...</b>', '5707303141ab448', 170, 112, 14, 120, 18, '', '1', 'right', '0', '0', '', '', 'proceduresswrd2', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('581a4d665798263', 'nuform', 'input', 'preiviewbtn', 'Preview', '570730313dd25c5', 70, 268, 151, 232, 25, '', '1', 'center', '0', '0', '', '', 'preiviewbtn', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', ''),
('5833648c6db79f7', 'nuobject', 'input', 'sob_lookup_table', 'Code', '570d90df6a2c12a', 280, 3, 3, 50, 18, '', '1', 'left', '0', '0', 'select ''0''', '', 'sob_lookup_table', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('583387f044052c5', 'nuhome', 'run', 'ff_button', 'Fast Form', '581288bcd699493', 150, 150, 92, 150, 30, '', '1', 'right', '0', '0', '', '', 'ff_button', '', '583361606250b6e', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58338d5893ec00a', '583361606250b6e', 'run', 'aframe', 'FORM', '583361606251aef', 20, 43, 705, 600, 390, '', '1', 'right', '1', '0', '', '', 'aframe', '', '58338c35b340428', '', 'i', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('583f37bc5bba917', '583f372b53b972c', 'input', 'sob_all_id', ' Field Name', '5840d1f62187912', 20, 20, 30, 200, 18, '', '1', 'left', '1', '0', '', '', 'sob_all_id', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('583f37d3224bcc8', '583f372b53b972c', 'input', 'sob_all_label', ' Label', '5840d1f62187912', 10, 49, 24, 200, 18, '', '1', 'left', '0', '0', '', '', 'sob_all_label', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('583f4ed643fcc3b', '583361606250b6e', 'subform', 'obj_sf', 'Objects', '583361606251aef', 10, 80, 97, 455, 390, '', '1', 'right', '0', '0', '', '', 'aframe', '', '58338c35b340428', '', 'i', '', '', '', '', '', '', '', '', '', '', '', 'zzzzsys_object', '583f372b53b972c', 'sob_all_zzzzsys_form_id', '1', '1', 'g', '', '', '', ''),
('5845061c0e179c7', '583f372b53b972c', 'input', 'custom_id', ' ', '5840d1f62187912', 30, 20, 10, 0, 18, '', '1', 'left', '0', '0', 'SELECT 0', '', 'sob_all_label', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', ''),
('584de442bfbd456', 'nuobject', 'input', 'javascriptbtn', 'Javascript', '570d90df5ce8e1a', 80, 320, 420, 150, 25, '', '1', 'center', '0', '0', '', '', 'preiviewbtn', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', ''),
('585e5705f3e9867', 'nuobject', 'html', 'nucalculator', 'Operators', '5851cf915a1c653', 410, 63, 66, 160, 250, '', '1', 'right', '0', '1', '', '', 'sfo_javascript', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\n<table>\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> + </td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> - </td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> * </td>\n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> / </td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> ( </td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> ) </td>\n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> ? </td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> : </td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> = </td> \n  </tr>\n\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>1</td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>2</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>3</td> \n  </tr>\n\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>4</td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>5</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>6</td> \n  </tr>\n\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>7</td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>8</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>9</td> \n  </tr>\n\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>.</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>0</td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''></td> \n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton'' colspan=3>Clear</td>\n  </tr>\n\n</table>\n'),
('5851cfeb30f9047', 'nuobject', 'input', 'sob_calc_formula', 'Formula', '5851cf915a1c653', 420, 9, 66, 550, 35, '', '1', 'left', '0', '1', '', '', 'sfo_javascript', ' +', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('586d9964e5ab10c', 'nuobject', 'run', 'calcobjects', 'Calc', '5851cf915a1c653', 430, 63, 242, 375, 275, '', '1', 'right', '1', '0', '', '', 'aframe', '', '585efbcfe4dfaf4', '#sob_all_zzzzsys_form_id#', 'i', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a0940e9dc6916', '58a08a91c9b59a9', 'input', 'ite_thing', 'Item', '58a08a91c9b6df4', 10, 20, 54, 70, 25, '', '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('589f7673993720e', '5678ab2c48c5c41', 'calc', 'thecalc', 'calc', '5678ab2c49bd810', 20, 8, 170, 100, 18, '', '1', 'right', '2', '0', '', '', 'emp_name', 'nuTotal("emp_name") + nuTotal("emp_cost")', 'nuuser', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', ''),
('589f9c7972d1c5e', '5678ab2c48c5c41', 'input', 'emp_cost', 'Wage', '5678ab2c49bd810', 30, 11, 300, 70, 17, '', '1', 'right', '1', '0', '', '', 'emp_mobile', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'number', ''),
('58a09180222faae', '58a08a1abc4782c', 'subform', 'invoice_item', 'Items', '58a08a1abc48c9a', 10, 65, 98, 530, 400, '', '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '58a08a91c9b59a9', 'ite_invoice_id', '1', '1', 'f', '', '', '', ''),
('58a091f8d1d6dc7', 'nuhome', 'run', 'run_invoice', 'Invoice', '569dc4ed270f08a', 10, 200, 92, 150, 30, '', '1', 'right', '1', '0', '', '', 'run_browse', '', '58a08a1abc4782c', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a09448e54ff6f', '58a08a91c9b59a9', 'input', 'ite_units', 'Units', '58a08a91c9b6df4', 20, 21, 177, 50, 25, '', '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'number', ''),
('58a0949b9e9922a', '58a08a91c9b59a9', 'input', 'ite_unit_price', 'Unit Cost', '58a08a91c9b6df4', 30, 21, 290, 50, 25, '', '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'number', ''),
('58a094d695573f2', '58a08a91c9b59a9', 'calc', 'ite_total', 'Total', '58a08a91c9b6df4', 40, 22, 390, 50, 25, '', '1', 'right', '0', '0', '', '', '', 'nuTotal("ite_units") + nuTotal("ite_unit_price")', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a0c22bc011b1c', '58a08a1abc4782c', 'calc', 'inv_total', 'Grand Total', '58a08a1abc48c9a', 20, 480, 497, 50, 25, '', '1', 'right', '0', '0', '', '', '', 'nuTotal("invoice_item.ite_total")', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a0c3d66b2daa7', '58a08a1abc4782c', 'input', 'inv_number', 'Invoice Number', '58a08a1abc48c9a', 30, 15, 100, 50, 25, '', '1', 'right', '0', '0', '', '', '', 'nuTotal("invoice_item.ite_total")', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_php`
--

CREATE TABLE `zzzzsys_php` (
  `zzzzsys_php_id` varchar(25) NOT NULL,
  `sph_code` varchar(300) NOT NULL,
  `sph_description` varchar(300) NOT NULL,
  `sph_group` varchar(100) NOT NULL,
  `sph_php` longtext NOT NULL,
  `sph_zzzzsys_php_id` varchar(25) NOT NULL,
  `sph_zzzzsys_form_id` varchar(25) NOT NULL,
  `sph_system` varchar(1) NOT NULL,
  `sph_hide` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_php`
--

INSERT INTO `zzzzsys_php` (`zzzzsys_php_id`, `sph_code`, `sph_description`, `sph_group`, `sph_php`, `sph_zzzzsys_php_id`, `sph_zzzzsys_form_id`, `sph_system`, `sph_hide`) VALUES
('57578be0057a49f', 'HELLOW', 'Hello World', 'test', 'echo ''hello user #USER_ID#, today is.. #com_name# #to_date# #from_date#'';\necho ''hello user #USER_ID#, today is.. #com_name# #to_date# #from_date#'';', '5678ab2c48c5c41', 'nulaunchdates', '', ''),
('57db70b7aa22cda', 'CUSTAB', 'Customer Temp Table', 'aaa', 'echo ''x'';\necho ''x'';\necho ''x'';\necho ''x'';\necho ''x'';\necho ''x'';\necho ''x'';\necho ''x'';', '', '57edbac65e1c52a', '', ''),
('57f6e1f954955c1', 'Dodgy', 'Dodgy', 'Dodgy', 'echo ''y'';\necho ''y'';\nx\necho ''y'';\necho ''y'';', '', 'nuaccessforms', '', ''),
('581135daea4f878', 'EV', 'copy events to form', 'nu', '$s  = "SELECT * FROM zzzzsys_form_backup";\n\n$t  = nuRunQuery($s);\n\nwhile($r = db_fetch_array($t)){\n    \n    addP(''BB'', $r);\n    addP(''BO'', $r);\n    addP(''BS'', $r);\n    addP(''AS'', $r);\n    addP(''BD'', $r);\n    addP(''AD'', $r);\n    \n    udForm($r);\n\n}\n\n$s  = "SELECT * FROM zzzzsys_object WHERE sob_all_type = ''lookup''";\n\n$t  = nuRunQuery($s);\n\nwhile($r = db_fetch_array($t)){\n    \n    look($r);\n\n}\n\n\nfunction look($r){\n    \n    $i              = $r[''zzzzsys_object_id''] . ''_AB'';      //-- after browse\n    $c              = $r[''sob_all_id''];\n    $p              = $r[''sob_lookup_php''];\n    \n    if(trim($p) == ''''){return;}\n    \n    $s              = "\n    INSERT INTO zzzzsys_php\n    (\n        zzzzsys_php_id,\n        sph_code,\n        sph_description,\n        sph_group,\n        sph_php,\n        sph_system\n    )\n    VALUES\n    (\n        ''$i'',\n        ''$c'',\n        ''After Browse ($c)'',\n        ''nubuilder'',\n        ?,\n        ''1''\n    )\n    ";\n    \n    nuRunQuery($s, array($p));\n    print $s.''<br><br>'';\n    \n\n}\n\n\nfunction udForm($r){\n    \n    $id = $r[''zzzzsys_form_id''];\n    $BB = $r[''sfo_before_browse_php''];\n    $BO = $r[''sfo_before_open_php''];\n    $BS = $r[''sfo_before_save_php''];\n    $AS = $r[''sfo_after_save_php''];\n    $BD = $r[''sfo_before_delete_php''];\n    $AD = $r[''sfo_after_delete_php''];\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_before_browse_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($BB));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_before_open_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($BO));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_before_save_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($BS));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_after_save_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($AS));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_before_delete_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($BD));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_after_delete_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($AD));\n\n}\n\n\n\n\nfunction addP($ev,$r){\n\n    $event	        = array();\n    $event[''BB'']    = ''sfo_before_browse_php'';\n    $event[''BO'']    = ''sfo_before_open_php'';\n    $event[''BS'']    = ''sfo_before_save_php'';\n    $event[''AS'']    = ''sfo_after_save_php'';\n    $event[''BD'']    = ''sfo_before_delete_php'';\n    $event[''AD'']    = ''sfo_after_delete_php'';\n    \n    $i              = $r[''zzzzsys_form_id''] . ''_'' . $ev;\n    $c              = $r[''sfo_code''];\n    $p              = $r[$event[$ev]];\n    \n    if(trim($p) == ''''){return;}\n    \n    $s              = "\n    INSERT INTO zzzzsys_php\n    (\n        zzzzsys_php_id,\n        sph_code,\n        sph_description,\n        sph_group,\n        sph_php,\n        sph_system\n    )\n    VALUES\n    (\n        ''$i'',\n        ''$ev'',\n        ''$ev ($c)'',\n        ''nubuilder'',\n        ?,\n        ''1''\n    )\n    ";\n    \n    nuRunQuery($s, array($p));\n    print $s.''<br><br>'';\n    \n}\n\n\n', '', 'nublank', '', ''),
('574665a15bbc1a1_BO', '', 'Before Open for  ', 'nubuilder', 'nudebug(''before open BO'');', '', '', '1', ''),
('nulaunchdates_BO', 'RTVIEW', 'run_list View', 'nubuilder', '$s = "\n\nCREATE VIEW `zzzzsys_run_list`  AS  \nselect `zzzzsys_form`.`zzzzsys_form_id` AS `id`,''Form'' AS `run`,`zzzzsys_form`.`sfo_code` AS `code`,`zzzzsys_form`.`sfo_description` AS `description` from `zzzzsys_form` \n\n\nunion select `zzzzsys_report`.`zzzzsys_report_id` AS `id`,''Report'' AS `run`,`zzzzsys_report`.`sre_code` AS `code`,`zzzzsys_report`.`sre_description` AS `description` from `zzzzsys_report` \n\n\nunion select `zzzzsys_php`.`zzzzsys_php_id` AS `id`,''Procedure'' AS `run`,`zzzzsys_php`.`sph_code` AS `code`,`zzzzsys_php`.`sph_description` AS `description` from `zzzzsys_php`  where sph_system != ''1''  order by `code`;\n\n";\n\nnuRunQuery($s);\n', '', 'nublank', '', ''),
('nuform_BS', 'BS', 'BS (FORM)', 'nubuilder', '    $o = ''#sfo_type#'';\n\n    if(''#sfo_type#''             == ''''){nuDisplayError(''<b>Type</b> Cannot Be Blank..'', ''sfo_type'');}\n    if(''#sfo_code#''             == ''''){nuDisplayError(''<b>Code</b> Cannot Be Blank..'', ''sfo_code'');}\n    if(''#sfo_description#''      == ''''){nuDisplayError(''<b>Description</b> Cannot Be Blank..'', ''sfo_description'');}\n\n\n    \n    \n    if($o == ''browseedit'' || $o == ''subform'' || $o == ''browse''){\n        \n        if($o != ''browse''){\n            nuCheckTabs();\n        }\n        \n        if($o != ''subform''){\n            nuCheckBrowse();\n        }\n        \n        if(''#sfo_browse_sql#''   == ''''){nuDisplayError(''<b>Browse SQL</b> Cannot Be Blank..'', ''sfo_browse_sql'');}\n    }\n\n    if($o == ''edit'' or $o == ''launch''){\n        nuCheckTabs();\n    }\n\n    if($o != ''launch''){\n        if(''#sfo_table#''            == ''''){nuDisplayError(''<b>Table Name</b> Cannot Be Blank..'', ''sfo_table'');}\n        if(''#sfo_primary_key#''      == ''''){nuDisplayError(''<b>Primary Key</b> Cannot Be Blank..'', ''sfo_primary_key'');}\n    }\n\nfunction nuCheckBrowse(){\n\n    $r  = 0;\n    $sf = nuSubformObject(''zzzzsys_browse_sf'');\n\n    for($i = 0 ; $i < count($sf[''rows'']) ; $i++){\n       if($sf[''rows''][$i][8] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(''<b>Must have at least 1</b> Browse Column Defined..'');\n    }\n    \n}\n\nfunction nuCheckTabs(){\n    \n    $r  = 0;\n    $sf = nuSubformObject(''zzzzsys_tab_sf'');\n    \n    for($i = 0 ; $i < count($sf[''rows'']) ; $i++){\n       if($sf[''rows''][$i][3] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(''<b>Must have at least 1</b> Tab Defined..'');\n    }\n    \n}', '', '', '1', ''),
('nuphp_AS', '', 'After Save for  ', 'nubuilder', '\nif(''#sph_php#'' == ''''){\n    nuRunQuery("DELETE FROM zzzzsys_php WHERE zzzzsys_php_id = ''#RECORD_ID#''");\n}\n', '', '', '1', ''),
('nuphp_BS', '', 'Before Save for  ', 'nubuilder', '$rid    = ''#RECORD_ID#'';\n$php    = ''#sph_php#'';\n\nif($rid != ''-1'' and $rid != ''-2''){ \n    \n    $s      = "SELECT * FROM zzzzsys_php WHERE zzzzsys_php_id = ''$rid''";\n    $t      = nuRunQuery($s);\n    $r      = db_fetch_object($t);\n    \n    if(db_num_rows($t) == 0){\n    \n        $c              = $r->sob_all_id;\n        $p              = $r->sob_lookup_php;\n        \n        if(trim($p) == ''''){return;}\n        \n        $s              = "\n        INSERT INTO zzzzsys_php\n        (zzzzsys_php_id, sph_system)\n        VALUES\n        (''$rid'', ''1'')\n        ";\n        \n        nuRunQuery($s);\n        \n    }\n    \n}\n\n', '', '', '1', ''),
('568b50020fc7a62_AB', 'com_business_id', 'After Browse (com_business_id)', 'nubuilder', '\nnuSetFormValue(''com_phone'', 1234);\nnuSetFormValue(''com_name'', 777);\nnuSetFormValue(''com_age'', 1966);\n\n\n', '', '', '1', ''),
('nupassword_BS', 'BS', 'BS (PASS)', 'nubuilder', '\n\n$is		= md5(''#old_password#'');\n$was	= md5(''#new_password_check#'');\n$will	= md5(''#new_password#'');\n$ses	= ''#SESSION_ID#'';\nnudebug("$is,$was,$will");\n\n$s      = "\n\n    SELECT * \n    FROM zzzzsys_session\n    WHERE zzzzsys_session_id = ''$ses''\n\n";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n$j  = json_decode($r->sss_access);\n\n$s      = "\n\n    SELECT * \n    FROM zzzzsys_user\n    WHERE zzzzsys_user_id = ''#USER_ID#''\n    AND sus_login_password = ''$is''\n\n";\n\n$t  = nuRunQuery($s);\nnudebug(''31 '' . $s);\n\nif(db_num_rows($t) == 0){\n\n    nuDisplayError(''Incorrect Password'');\n    return;\n    \n}\n\nif($will == $was){\n\n    $s  = "\n\n    UPDATE zzzzsys_user \n    SET sus_login_password = ''$will''\n    WHERE zzzzsys_user_id = ''#RECORD_ID#''\n    AND sus_login_password = ''$is''\n    \n    ";\n\nnudebug(''qqqq ''.$s);\n    nuRunQuery($s);\n\n}else{\n    \n    nuDisplayError(''"Enter New Password" Must be the same as "Re-Enter New Password"'');\n\n}\n\n\n\n\n\n\n\n', '', '', '1', ''),
('nuuser_AS', 'AS', 'AS (ACCUSE)', 'nubuilder', 'if(''#new_password#'' == ''#check_password#'' && ''#check_password#'' != ''#check_p''.''assword#'' && ''#check_password#'' != ''''){\n\n	$pw	= md5(''#check_password#'');\n	nuRunQuery("UPDATE zzzzsys_user SET sus_login_password = ''$pw'' WHERE zzzzsys_user_id = ''#RECORD_ID#''");\n\n}\n\n', '', '', '1', ''),
('5757a4b7181e365_BB', 'BB', 'BB (RUN)', 'nubuilder', '$s = "\n\nDROP VIEW IF EXISTS zzzzsys_run_list;\nCREATE VIEW zzzzsys_run_list AS\nSELECT zzzzsys_form_id AS id, ''Form'' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_form\nUNION\nSELECT zzzzsys_report_id AS id, ''Report'' AS run, sre_code AS code, sre_description AS description FROM zzzzsys_report\nUNION\nSELECT zzzzsys_php_id AS id, ''Procedure'' AS run, sph_code AS code, sph_description AS description FROM zzzzsys_php\nORDER BY code;\n\n";\n\nnuRunQuery($s);', '', '', '1', ''),
('nudebug_BD', 'BD', 'BD (DEBUG)', 'nubuilder', '\n$a  = ''#delete_option#'';\n$r  = ''#RECORD_ID#'';\n$d  = "DELETE FROM zzzzsys_debug ";\n\nif($a == 1){$d  = $d . "WHERE zzzzsys_debug_id = ''$r''";}\nif($a == 2){$d  = $d . "WHERE zzzzsys_debug_id != ''$r''";}\nif($a == 3){$d  = $d . "WHERE zzzzsys_debug_id < ''$r''";}\n\nnuRunQuery($d);\n', '', '', '1', ''),
('nuobject_BS', 'BS', 'BS (OBJECT)', 'nubuilder', '\n    $r  = ''#RECORD_ID#'';\n    $f  = ''#sob_all_zzzzsys_form_id#'';\n    $o  = ''#sob_all_id#'';\n\n    $s  = "\n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''$f''\n        AND sob_all_id = ''$o''\n        AND zzzzsys_object_id != ''$r''\n\n        ";\nnudebug('' sql ''. $s);\n    $t  = nuRunQuery($s);\n    $r  = db_fetch_row($t);\n    \n    if($r[0] > 0){\n        nuDisplayError(''This <b>ID</b> is already used on this Form..'');\n    }\n\n    $o = ''#sob_all_type#'';\n\n    if(''#sob_all_zzzzsys_tab_id#''             == ''''){nuDisplayError(''Type Cannot Be Blank..'', ''sob_all_zzzzsys_tab_idcode'');}\n    if(''#sob_all_type#''             == ''''){nuDisplayError(''Type Cannot Be Blank..'', ''sob_all_type'');}\n    if(''#sob_all_zzzzsys_form_id#''  == ''''){nuDisplayError(''Tab - Form Cannot Be Blank..'', ''sob_all_zzzzsys_form_idcode'');}\n    if(''#sob_all_id#''               == ''''){nuDisplayError(''ID Cannot Be Blank..'', ''sob_all_id'');}\n    if(''#sob_all_label#''   == ''''){nuDisplayError(''Label Cannot Be Blank..'', ''sob_all_label'');}\n    if(''#sob_all_top#''   == ''''){nuDisplayError(''Top Cannot Be Blank..'', ''sob_all_top'');}\n    if(''#sob_all_left#''   == ''''){nuDisplayError(''Left Cannot Be Blank..'', ''sob_all_left'');}\n    if(''#sob_all_width#''   == ''''){nuDisplayError(''Width Cannot Be Blank..'', ''sob_all_width'');}\n    if(''#sob_all_height#''   == ''''){nuDisplayError(''Height Cannot Be Blank..'', ''sob_all_height'');}\n    if(''#sob_all_cloneable#''   == ''''){nuDisplayError(''Cloneable Cannot Be Blank..'', ''sob_all_cloneable'');}\n    if(''#sob_all_align#''   == ''''){nuDisplayError(''Align Cannot Be Blank..'', ''sob_all_align'');}\n    if(''#sob_all_validate#''   == ''''){nudebug(''sob_all_validate : #sob_all_validate#'');nuDisplayError(''Validation Cannot Be Blank..'', ''sob_all_validate'');}\n    if(''#sob_all_readonly#''   == ''''){nuDisplayError(''Read Only Cannot Be Blank..'', ''sob_all_readonly'');}\n\n\n    if($o == ''display''){\n        if(''#sob_display_sql#''   == ''''){nuDisplayError(''Display Cannot Be Blank..'',''sob_display_sql'');}\n    }\n\n    if($o == ''html''){\n        if(''#sob_html_code#''   == ''''){nuDisplayError(''HTML Cannot Be Blank..'',''sob_html_code'');}\n    }\n\n    if($o == ''lookup''){\n        if(''#sob_lookup_zzzzsys_form_id#''   == ''''){nuDisplayError(''Form Cannot Be Blank..'', ''sob_lookup_zzzzsys_form_idcode'');}\n        if(''#sob_lookup_code#''   == ''''){nuDisplayError(''Code Cannot Be Blank..'', ''sob_lookup_code'');}\n        if(''#sob_lookup_description#''   == ''''){nuDisplayError(''Descrition Cannot Be Blank..'', ''sob_lookup_description'');}\n        if(''#sob_lookup_description_width#''   == ''''){nuDisplayError(''Width Cdddannot Be Blank..'', ''sob_lookup_description_width'');}\n    }\n\n    if($o == ''run''){\n        if(''#sob_run_zzzzsys_form_id#''   == ''''){nuDisplayError(''Run Cannot Be Blank..'', ''sob_run_zzzzsys_form_idcode'');}\n        if(''#sob_run_method#''   == ''''){nuDisplayError(''Method Cannot Be Blank..'', ''sob_run_method'');}\n    }\n\n\n    if($o == ''select''){\n        if(''#sob_select_multiple#''   == ''''){nuDisplayError(''Multiple Cannot Be Blank..'', ''sob_select_multiple'');}\n        if(''#sob_select_sql#''   == ''''){nuDisplayError(''SQL/List Cannot Be Blank..'', ''sob_select_sql'');}\n    }\n\n    if($o == ''subform''){\n        if(''#sob_subform_zzzzsys_form_id#''   == ''''){nuDisplayError(''Form Cannot Be Blank..'', ''sob_subform_zzzzsys_form_idcode'');}\n        if(''#sob_subform_foreign_key#''   == ''''){nuDisplayError(''Foreign Key Cannot Be Blank..'', ''sob_subform_foreign_key'');}\n        if(''#sob_subform_add#''   == ''''){nuDisplayError(''Addable Cannot Be Blank..'', ''sob_subform_add'');}\n        if(''#sob_subform_delete#''   == ''''){nuDisplayError(''Deletable Cannot Be Blank..'', ''sob_subform_delete'');}\n        if(''#sob_subform_type#''   == ''''){nuDisplayError(''Type Cannot Be Blank..'', ''sob_subform_type'');}\n    }\n\n    if($o == ''''){\n        if(''#sfo_browse_sql#''   == ''''){nuDisplayError(''Browse SQL Cannot Be Blank..'', ''sfo_browse_sql'');}\n    }\n', '', '', '1', ''),
('nuform_AS', 'AS', 'AS (FORM)', 'nubuilder', '$s  = "\r\n    SELECT * \r\n    FROM zzzzsys_browse \r\n    WHERE sbr_zzzzsys_form_id = ''#RECORD_ID#''\r\n    ORDER BY sbr_order;\r\n";\r\n\r\n\r\n$t = nuRunQuery($s);\r\n$o = 10;\r\n\r\nwhile($r = db_fetch_object($t)){\r\n        \r\n    $s  = "\r\n        UPDATE zzzzsys_browse \r\n        SET sbr_order = ''$o''\r\n        WHERE zzzzsys_browse_id = ''$r->zzzzsys_browse_id''\r\n        ORDER BY sbr_order;\r\n    ";\r\n    \r\n    nuRunQuery($s);\r\n    \r\n    $o = $o + 10;    \r\n    \r\n}\r\n\r\n$s  = "\r\n    SELECT * \r\n    FROM zzzzsys_tab \r\n    WHERE syt_zzzzsys_form_id = ''#RECORD_ID#''\r\n    ORDER BY syt_order;\r\n";\r\n\r\n$t = nuRunQuery($s);\r\n$o = 10;\r\n\r\nwhile($r = db_fetch_object($t)){\r\n        \r\n    $s  = "\r\n        UPDATE zzzzsys_tab \r\n        SET syt_order = ''$o''\r\n        WHERE zzzzsys_tab_id = ''$r->zzzzsys_tab_id''\r\n        ORDER BY syt_order;\r\n    ";\r\n    \r\n    nuRunQuery($s);\r\n    \r\n    $o = $o + 10;    \r\n    \r\n}\r\n\r\n', '', '', '1', ''),
('585efbcfe4dfaf4_BB', 'SYS', 'System PHP', '', '\n$s = "\n\nCREATE TABLE #TABLE_ID#\n\nSELECT \n   sob_all_zzzzsys_form_id AS theform,\n   '''' AS theparent,\n   sob_all_id AS thechild,\n   CONCAT(sob_all_id) as thevalue\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   su.sob_all_id AS theparent,\n   inp.sob_all_id AS thechild,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (inp.sob_input_type = ''number''\nOR inp.sob_all_type = ''calc'')\n\n";\n    \nnuRunQuery($s);\n\n', '', '', '', ''),
('58a09180222faae_AB', '', '', '', '\nnudebug(''reord_id #RECORD_ID# '');\n', '', '', '', ''),
('570d9046964038e_AB', 'SYS', 'System PHP', '', '\n$t  = nuRunQuery("SELECT * FROM zzzzsys_tab WHERE zzzzsys_tab_id = ''#ID#''");\n$r  = db_fetch_object($t);\n\nnuSetFormValue(''sob_all_zzzzsys_form_id'', $r->syt_zzzzsys_form_id);\n\n\n', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_php_library`
--

CREATE TABLE `zzzzsys_php_library` (
  `zzzzsys_php_library_id` varchar(25) NOT NULL,
  `spl_zzzzsys_php_id` varchar(25) NOT NULL,
  `spl_library_zzzzsys_php_id` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_php_library`
--

INSERT INTO `zzzzsys_php_library` (`zzzzsys_php_library_id`, `spl_zzzzsys_php_id`, `spl_library_zzzzsys_php_id`) VALUES
('57eb1c9e4a0608f', '57578be0057a49f', '57db70b7aa22cda'),
('57f6f86abcb6b35', '57578be0057a49f', '57f6e1f954955c1'),
('57edb41ad93ca3b', '57db70b7aa22cda', '57578be0057a49f');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_report`
--

CREATE TABLE `zzzzsys_report` (
  `zzzzsys_report_id` varchar(25) NOT NULL,
  `sre_code` varchar(300) NOT NULL,
  `sre_description` varchar(300) NOT NULL,
  `sre_group` varchar(100) NOT NULL,
  `sre_zzzzsys_php_id` varchar(25) NOT NULL,
  `sre_zzzzsys_form_id` varchar(25) NOT NULL,
  `sre_layout` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_report`
--

INSERT INTO `zzzzsys_report` (`zzzzsys_report_id`, `sre_code`, `sre_description`, `sre_group`, `sre_zzzzsys_php_id`, `sre_zzzzsys_form_id`, `sre_layout`) VALUES
('574b9845a681d27', '', 'r', 'aaa', '57578be0057a49f', 'nulaunchdates', '{"top":30,"left":30,"bottom":260,"right":30,"width":210,"height":297,"paper":"A4","orientation":"P","groups":[{"sortField":"Detail","sortBy":"a","sections":[{"id":"","top":110,"height":28,"label":"Detail Header","page_break":0,"margins":6,"color":"#FFFFFF","objects":[{"id":"obj1001","objectType":"field","backgroundColor":"white","borderColor":"black","borderWidth":"0","fieldName":"com_name","fontColor":"black","fontFamily":"Arial","fontSize":"12","fontWeight":"","format":"","textAlign":"left","image":"","group":0,"section":0,"left":276,"top":6,"height":20,"width":221,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1001"}]}]},{"sortField":"Report","sortBy":"a","sections":[{"id":"","top":30,"height":1,"label":"Report Header","page_break":0,"margins":2,"color":"#FFFFFF","objects":[]},{"id":"","top":190,"height":1,"label":"Report Footer","page_break":0,"margins":10,"color":"#FFFFFF","objects":[]}]},{"sortField":"Page","sortBy":"a","sections":[{"id":"","top":70,"height":75,"label":"Page Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[{"id":"obj1002","objectType":"field","backgroundColor":"white","borderColor":"black","borderWidth":"1","fieldName":"","fontColor":"black","fontFamily":"Arial","fontSize":"10","fontWeight":"","format":"","textAlign":"left","image":"","group":0,"section":0,"left":17,"top":69,"height":"1","width":"690","zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1002"},{"id":"obj1003","objectType":"label","backgroundColor":"white","borderColor":"black","borderWidth":"0","fieldName":"#notes#","fontColor":"black","fontFamily":"Arial","fontSize":"10","fontWeight":"","format":"","textAlign":"left","image":"","group":0,"section":0,"left":18,"top":8,"height":20,"width":333,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1003"},{"id":"obj1004","objectType":"label","backgroundColor":"white","borderColor":"black","borderWidth":"0","fieldName":"Bewteen #com_name# And #to_date#","fontColor":"black","fontFamily":"Arial","fontSize":"10","fontWeight":"","format":"","textAlign":"left","image":"","group":0,"section":0,"left":444,"top":7,"height":20,"width":333,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1004"},{"id":"obj1005","objectType":"label","backgroundColor":"white","borderColor":"black","borderWidth":"0","fieldName":"Name","fontColor":"black","fontFamily":"Arial","fontSize":"16","fontWeight":"b","format":"","textAlign":"left","image":"","group":0,"section":0,"left":276,"top":42,"height":24,"width":221,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1005"},{"id":"obj1007","objectType":"label","backgroundColor":"white","borderColor":"black","borderWidth":"0","fieldName":"#com_notes#","fontColor":"black","fontFamily":"Arial","fontSize":"16","fontWeight":"b","format":"","textAlign":"left","image":"","group":0,"section":0,"left":27,"top":38,"height":24,"width":221,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1007"}]},{"id":"","top":150,"height":40,"label":"Page Footer","page_break":0,"margins":8,"color":"#FFFFFF","objects":[{"id":"obj1006","objectType":"field","backgroundColor":"white","borderColor":"black","borderWidth":"1","fieldName":"","fontColor":"black","fontFamily":"Arial","fontSize":"10","fontWeight":"","format":"","textAlign":"left","image":"","group":0,"section":0,"left":14,"top":3,"height":1,"width":690,"zIndex":124,"minRows":0,"maxRows":0,"selected":0,"name":"obj1006"}]}]},{"sortField":"com_name","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}],"groupBy":"a"},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]},{"sortField":"","sortBy":"a","sections":[{"id":"","top":110,"height":0,"label":" Header","page_break":0,"margins":4,"color":"#FFFFFF","objects":[]},{"id":"","top":150,"height":0,"label":" Footer","page_break":0,"margins":6,"color":"#FFFFFF","objects":[]}]}],"currentGroup":0,"selected":["obj1007"],"setFocus":"fieldName"}');

-- --------------------------------------------------------

--
-- Stand-in structure for view `zzzzsys_run_list`
--
CREATE TABLE `zzzzsys_run_list` (
`id` varchar(25)
,`run` varchar(9)
,`code` varchar(300)
,`description` varchar(300)
);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_session`
--

CREATE TABLE `zzzzsys_session` (
  `zzzzsys_session_id` varchar(25) NOT NULL DEFAULT '',
  `sss_timeout` datetime NOT NULL,
  `sss_access` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_setup`
--

CREATE TABLE `zzzzsys_setup` (
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
  `set_header` longtext NOT NULL,
  `set_denied` varchar(255) NOT NULL,
  `set_splash` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_setup`
--

INSERT INTO `zzzzsys_setup` (`zzzzsys_setup_id`, `set_title`, `set_time_out_minutes`, `set_zzzzsys_timezone_id`, `set_trl_language`, `set_smtp_username`, `set_smtp_password`, `set_smtp_host`, `set_smtp_from_address`, `set_smtp_from_name`, `set_smtp_port`, `set_smtp_use_ssl`, `set_fonts`, `set_header`, `set_denied`, `set_splash`) VALUES
('1', 'NOT USED DELETED THIS FIELD', 120, '52819fa94bc9a93', '', '', '', '', '', '', 0, '', '', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_tab`
--

CREATE TABLE `zzzzsys_tab` (
  `zzzzsys_tab_id` varchar(25) NOT NULL,
  `syt_zzzzsys_form_id` varchar(25) NOT NULL,
  `syt_title` varchar(250) NOT NULL,
  `syt_order` int(11) NOT NULL
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
('569dc4ed270f08a', 'nuhome', 'Setup', 10),
('569c44dd2339963', '5678ab2c48c5c41', 'Phone', 30),
('568b508eecf5dee', '568b508eec00d80', 'Business', 7),
('5678ab2c49bd810', '5678ab2c48c5c41', 'Employee', 10),
('567898dbc543710', '56773cb405f4913', 'Address', 10),
('56777715b87666e', '56773cb405f4913', 'Main', 20),
('570730315113e7e', 'nuform', 'Javascript', 50),
('574b964941d3d1a', 'nubuildreport', 'Report', 10),
('570b19bf5981983', 'nubrowse', 'Browse', 10),
('570d90df5ce8e1a', 'nuobject', 'All', 10),
('570d90df60880c2', 'nuobject', 'Run', 20),
('570d90df63e6972', 'nuobject', 'Display', 30),
('570d90df670db61', 'nuobject', 'Select', 40),
('570d90df6a2c12a', 'nuobject', 'Lookup', 50),
('570d90df6d35fde', 'nuobject', 'Subform', 60),
('570d90df707867b', 'nuobject', 'Input', 70),
('570d90df73d3a2a', 'nuobject', 'HTML', 80),
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
('57466ebd5c0fff2', 'nuuser', 'User Details', 10),
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
('57a7c1cb78c31d5', '57a7c1cb78bf3a3', 'Phrase', 10),
('57a93cb51e28b8a', '57a93cb51e24fd8', 'Password', 10),
('57abe72610d666d', 'nupassword', 'Change Password', 10),
('57e9abf690319a4', 'nuobject', 'Fast Form', 100),
('57eaf962bd0a957', 'nuphplibrary', 'PHP', 10),
('57eb1bd4cb7e1f4', 'nuphp', 'Library', 30),
('57edbac65e1d42e', '57edbac65e1c52a', 'Main', 10),
('57fad2784b27d77', '57fad2784b26e07', 'Main', 10),
('5806f4d6c7627ff', 'nuerror', 'Main', 10),
('5811788510768ef', 'nuphp', 'Code', 20),
('581288bcd699493', 'nuhome', 'Builders', 20),
('583361606251aef', '583361606250b6e', 'Form', 10),
('583f372b53bb99f', '583f372b53b972c', 'Field', 10),
('5840d1f62187912', '583f372b53b972c', 'Label', 20),
('5851cf915a1c653', 'nuobject', 'Calc', 90),
('586d983d80ee1f8', '56773cb405f4913', 'Test', 30),
('58a08a1abc48c9a', '58a08a1abc4782c', 'Invoice', 10),
('58a08a91c9b6df4', '58a08a91c9b59a9', 'Rows', 10);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_timezone`
--

CREATE TABLE `zzzzsys_timezone` (
  `zzzzsys_timezone_id` varchar(25) NOT NULL,
  `stz_timezone` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_translate`
--

CREATE TABLE `zzzzsys_translate` (
  `zzzzsys_translate_id` varchar(25) NOT NULL,
  `trl_language` varchar(20) NOT NULL,
  `trl_english` varchar(300) NOT NULL,
  `trl_translation` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_translate`
--

INSERT INTO `zzzzsys_translate` (`zzzzsys_translate_id`, `trl_language`, `trl_english`, `trl_translation`) VALUES
('1', 'japanese', 'hi', 'Hurrow'),
('57a7e9543d0c2b2', 'japanese', 'Eddy', 'Edward'),
('57aa756a39aadbd', 'japanese', 'Kids', 'Children'),
('57aa78fb2b506e1', 'japanese', '111', '222'),
('57aa8668df7a342', 'japanese', 'Leave this form without saving?', 'Leave this form?'),
('57aa8822019b0e7', 'japanese', 'Company', 'Jobs');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_user`
--

CREATE TABLE `zzzzsys_user` (
  `zzzzsys_user_id` varchar(25) NOT NULL DEFAULT '',
  `sus_zzzzsys_user_group_id` varchar(25) DEFAULT NULL,
  `sus_language` varchar(20) NOT NULL,
  `sus_name` varchar(50) DEFAULT NULL,
  `sus_email` varchar(255) DEFAULT NULL,
  `sus_login_name` varchar(20) DEFAULT NULL,
  `sus_login_password` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_user`
--

INSERT INTO `zzzzsys_user` (`zzzzsys_user_id`, `sus_zzzzsys_user_group_id`, `sus_language`, `sus_name`, `sus_email`, `sus_login_name`, `sus_login_password`) VALUES
('5746735052d8d53', '57466de0851d354', '', 'jgh199', '4499', '33399', 'ac627ab1ccbdb62ec96e702f07f6425b'),
('5747c596c68fb68', '57466de0851d354', 'japanese', 'Stevendddd', 'steven@nubuilder.com', 'steven', '202cb962ac59075b964b07152d234b70'),
('5747c5fa10e4a7d', '57466de0851d354', '', 'Bob', 'bb@gmail.com', 'bob', 'bda9643ac6601722a28f238714274da4'),
('5747caabead2aa8', '57466de0851d354', 'japanese', 'jon1', 'jon@ddddd.com', '22', 'b6d767d2f8ed5d21a44b0e5886680cb9'),
('5747cb8ca8d3de3', '57df3880bfdf41e', 'japanese', 'g', 'g', 'g', 'b2f5ff47436671b6e533d8dc3614845d'),
('5747cc333c476fc', '57466de0851d354', 'japanese', 'Bill12', 'Bill1', 'b', '92eb5ffee6ae2fec3ad71c777531578f'),
('5747ce1dd50cdc5', '57466de0851d354', '', '5567777', '55xfgjh', '55', 'b53b3a3d6ab90ce0268229151c9bde11'),
('5762478822092cd', '57466de0851d354', 'japanese', 'steven', 'steven@nubuilder.com', 's', '03c7c0ace395d80182db07ae2c30f034'),
('2', NULL, '', 'davidd', NULL, NULL, NULL),
('57d63171080ce15', '', '', 'Kevin', ' bj', '', NULL),
('57d63183c0014dd', '', '', 'kevin', '', '', NULL),
('57d6349019226bd', '', '', 'shane', '', '', NULL),
('57df79826f454f2', '57df3880bfdf41e', '', '1', '1', '1', 'c4ca4238a0b923820dcc509a6f75849b'),
('57e996ad7ddd6cb', '57466de0851d354', '', '6', '4', '4', 'a87ff679a2f3e71d9181a67b7542122c'),
('57e9d6943b1710e', '57df3880bfdf41e', 'japanese', 'dasrfg', '111', '111', '698d51a19d8a121ce581499d7b701668'),
('5817a7b832a7eeb', '57466de0851d354', '', '7', '7', '2', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_user_group`
--

CREATE TABLE `zzzzsys_user_group` (
  `zzzzsys_user_group_id` varchar(25) NOT NULL DEFAULT '',
  `sug_code` varchar(50) DEFAULT NULL,
  `sug_description` varchar(255) DEFAULT NULL,
  `sug_zzzzsys_form_id` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_user_group`
--

INSERT INTO `zzzzsys_user_group` (`zzzzsys_user_group_id`, `sug_code`, `sug_description`, `sug_zzzzsys_form_id`) VALUES
('57466de0851d354', 'ADMIN', 'Admin', 'nuhome'),
('57df3880bfdf41e', 'JUSTCOMP', 'Just Company records', 'nuhome');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_user_group_access_level`
--

CREATE TABLE `zzzzsys_user_group_access_level` (
  `zzzzsys_user_group_access_level_id` varchar(25) NOT NULL,
  `gal_zzzzsys_user_group_id` varchar(25) NOT NULL,
  `gal_zzzzsys_access_level_id` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_user_group_access_level`
--

INSERT INTO `zzzzsys_user_group_access_level` (`zzzzsys_user_group_access_level_id`, `gal_zzzzsys_user_group_id`, `gal_zzzzsys_access_level_id`) VALUES
('575a2e1cef2b706', '57466de0851d354', '57678e7dc00c099'),
('577b0c0fe1c6bb5', '', '577aea8e8844920'),
('577b0b676a16826', '', '57678e7dc00c099'),
('577b090acb48614', '', '577aea8e8844920'),
('577b08fdf05e48d', '', '577aea8e8844920'),
('57df3880bfdfc67', '57df3880bfdf41e', '57df38d1bdf5ae5');

-- --------------------------------------------------------

--
-- Structure for view `zzzzsys_run_list`
--
DROP TABLE IF EXISTS `zzzzsys_run_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zzzzsys_run_list`  AS  select `zzzzsys_form`.`zzzzsys_form_id` AS `id`,'Form' AS `run`,`zzzzsys_form`.`sfo_code` AS `code`,`zzzzsys_form`.`sfo_description` AS `description` from `zzzzsys_form` union select `zzzzsys_report`.`zzzzsys_report_id` AS `id`,'Report' AS `run`,`zzzzsys_report`.`sre_code` AS `code`,`zzzzsys_report`.`sre_description` AS `description` from `zzzzsys_report` union select `zzzzsys_php`.`zzzzsys_php_id` AS `id`,'Procedure' AS `run`,`zzzzsys_php`.`sph_code` AS `code`,`zzzzsys_php`.`sph_description` AS `description` from `zzzzsys_php` order by `code` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`business_id`);

--
-- Indexes for table `children`
--
ALTER TABLE `children`
  ADD PRIMARY KEY (`children_id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD PRIMARY KEY (`invoice_item_id`);

--
-- Indexes for table `test_table`
--
ALTER TABLE `test_table`
  ADD PRIMARY KEY (`test_table_id`);

--
-- Indexes for table `zzzzsys_access_level`
--
ALTER TABLE `zzzzsys_access_level`
  ADD PRIMARY KEY (`zzzzsys_access_level_id`),
  ADD KEY `sal_name` (`sal_code`),
  ADD KEY `sal_zzzzsys_form_id` (`sal_zzzzsys_form_id`);

--
-- Indexes for table `zzzzsys_access_level_form`
--
ALTER TABLE `zzzzsys_access_level_form`
  ADD PRIMARY KEY (`zzzzsys_access_level_form_id`),
  ADD KEY `saf_zzzzsys_access_level_id` (`slf_zzzzsys_access_level_id`),
  ADD KEY `slf_zzzzsys_form_id` (`slf_zzzzsys_form_id`);

--
-- Indexes for table `zzzzsys_access_level_php`
--
ALTER TABLE `zzzzsys_access_level_php`
  ADD PRIMARY KEY (`zzzzsys_access_level_php_id`),
  ADD KEY `slp_zzzzsys_access_level_id` (`slp_zzzzsys_access_level_id`),
  ADD KEY `slp_zzzzsys_php_id` (`slp_zzzzsys_php_id`);

--
-- Indexes for table `zzzzsys_access_level_report`
--
ALTER TABLE `zzzzsys_access_level_report`
  ADD PRIMARY KEY (`zzzzsys_access_level_report_id`),
  ADD KEY `sre_zzzzsys_access_level_id` (`sre_zzzzsys_access_level_id`),
  ADD KEY `sre_zzzzsys_report_id` (`sre_zzzzsys_report_id`);

--
-- Indexes for table `zzzzsys_browse`
--
ALTER TABLE `zzzzsys_browse`
  ADD PRIMARY KEY (`zzzzsys_browse_id`),
  ADD KEY `sbr_zzzsys_form_id` (`sbr_zzzzsys_form_id`),
  ADD KEY `sbr_sort` (`sbr_sort`(255));

--
-- Indexes for table `zzzzsys_debug`
--
ALTER TABLE `zzzzsys_debug`
  ADD PRIMARY KEY (`zzzzsys_debug_id`),
  ADD KEY `deb_added` (`deb_added`),
  ADD KEY `deb_order` (`deb_order`);

--
-- Indexes for table `zzzzsys_event`
--
ALTER TABLE `zzzzsys_event`
  ADD PRIMARY KEY (`zzzzsys_event_id`),
  ADD KEY `sev_zzzsys_object_id` (`sev_zzzzsys_object_id`);

--
-- Indexes for table `zzzzsys_file`
--
ALTER TABLE `zzzzsys_file`
  ADD PRIMARY KEY (`zzzzsys_file_id`),
  ADD KEY `sfi_code` (`sfi_code`);

--
-- Indexes for table `zzzzsys_form`
--
ALTER TABLE `zzzzsys_form`
  ADD PRIMARY KEY (`zzzzsys_form_id`);

--
-- Indexes for table `zzzzsys_form_backup`
--
ALTER TABLE `zzzzsys_form_backup`
  ADD PRIMARY KEY (`zzzzsys_form_id`);

--
-- Indexes for table `zzzzsys_library`
--
ALTER TABLE `zzzzsys_library`
  ADD PRIMARY KEY (`zzzzsys_library_id`);

--
-- Indexes for table `zzzzsys_object`
--
ALTER TABLE `zzzzsys_object`
  ADD PRIMARY KEY (`zzzzsys_object_id`),
  ADD KEY `sob_all_zzzzsys_form_id` (`sob_all_zzzzsys_form_id`);

--
-- Indexes for table `zzzzsys_php`
--
ALTER TABLE `zzzzsys_php`
  ADD PRIMARY KEY (`zzzzsys_php_id`),
  ADD KEY `sph_code` (`sph_code`),
  ADD KEY `sph_zzzzsys_php_id` (`sph_zzzzsys_php_id`),
  ADD KEY `sph_zzzzsys_form_id` (`sph_zzzzsys_form_id`),
  ADD KEY `sph_system` (`sph_system`);

--
-- Indexes for table `zzzzsys_php_library`
--
ALTER TABLE `zzzzsys_php_library`
  ADD PRIMARY KEY (`zzzzsys_php_library_id`),
  ADD KEY `spl_zzzzsys_php_id` (`spl_zzzzsys_php_id`),
  ADD KEY `spl_library_zzzzsys_php_id` (`spl_library_zzzzsys_php_id`);

--
-- Indexes for table `zzzzsys_report`
--
ALTER TABLE `zzzzsys_report`
  ADD PRIMARY KEY (`zzzzsys_report_id`),
  ADD KEY `sre_code` (`sre_code`);

--
-- Indexes for table `zzzzsys_session`
--
ALTER TABLE `zzzzsys_session`
  ADD PRIMARY KEY (`zzzzsys_session_id`);

--
-- Indexes for table `zzzzsys_setup`
--
ALTER TABLE `zzzzsys_setup`
  ADD PRIMARY KEY (`zzzzsys_setup_id`);

--
-- Indexes for table `zzzzsys_tab`
--
ALTER TABLE `zzzzsys_tab`
  ADD PRIMARY KEY (`zzzzsys_tab_id`),
  ADD KEY `syt_zzzzsys_form_id` (`syt_zzzzsys_form_id`);

--
-- Indexes for table `zzzzsys_timezone`
--
ALTER TABLE `zzzzsys_timezone`
  ADD PRIMARY KEY (`zzzzsys_timezone_id`);

--
-- Indexes for table `zzzzsys_translate`
--
ALTER TABLE `zzzzsys_translate`
  ADD PRIMARY KEY (`zzzzsys_translate_id`),
  ADD KEY `trl_language` (`trl_language`),
  ADD KEY `trl_english` (`trl_english`(255));

--
-- Indexes for table `zzzzsys_user`
--
ALTER TABLE `zzzzsys_user`
  ADD PRIMARY KEY (`zzzzsys_user_id`),
  ADD KEY `sus_zzzzsys_user_group_id` (`sus_zzzzsys_user_group_id`);

--
-- Indexes for table `zzzzsys_user_group`
--
ALTER TABLE `zzzzsys_user_group`
  ADD PRIMARY KEY (`zzzzsys_user_group_id`),
  ADD KEY `sug_zzzzsys_access_level_id` (`sug_zzzzsys_form_id`);

--
-- Indexes for table `zzzzsys_user_group_access_level`
--
ALTER TABLE `zzzzsys_user_group_access_level`
  ADD PRIMARY KEY (`zzzzsys_user_group_access_level_id`),
  ADD KEY `zzzzsys_user_group_id` (`gal_zzzzsys_user_group_id`),
  ADD KEY `gal_zzzzsys_access_level_id` (`gal_zzzzsys_access_level_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
