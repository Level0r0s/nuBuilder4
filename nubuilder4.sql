-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2017 at 09:50 AM
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
-- Table structure for table `aabob`
--

CREATE TABLE `aabob` (
  `theform` varchar(300) NOT NULL DEFAULT '',
  `theparent` varchar(300) NOT NULL DEFAULT '',
  `thechild` varchar(300) NOT NULL DEFAULT '',
  `thevalue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aabob`
--

INSERT INTO `aabob` (`theform`, `theparent`, `thechild`, `thevalue`) VALUES
('56773cb405f4913', '', 'com_phone', 'com_phone'),
('5678ab2c48c5c41', '', 'emp_name1', 'emp_name1'),
('56773cb405f4913', '', 'com_run', 'com_run'),
('nuform', '', 'sfo_browse_row_height', 'sfo_browse_row_height'),
('nuform', '', 'sfo_browse_rows_per_page', 'sfo_browse_rows_per_page'),
('nubrowse', '', 'sbr_width', 'sbr_width'),
('nubrowse', '', 'sbr_order', 'sbr_order'),
('nuobject', '', 'sob_all_top', 'sob_all_top'),
('nuobject', '', 'sob_all_left', 'sob_all_left'),
('nuobject', '', 'sob_all_width', 'sob_all_width'),
('nuobject', '', 'sob_all_height', 'sob_all_height'),
('nusetup', '', 'set_time_out_minutes', 'set_time_out_minutes'),
('nusetup', '', 'set_smtp_username', 'set_smtp_username'),
('nusetup', '', 'set_smtp_password', 'set_smtp_password'),
('nusetup', '', 'set_smtp_host', 'set_smtp_host'),
('nusetup', '', 'set_smtp_from_address', 'set_smtp_from_address'),
('nusetup', '', 'set_smtp_from_name', 'set_smtp_from_name'),
('nusetup', '', 'set_smtp_port', 'set_smtp_port'),
('5678ab2c48c5c41', '', 'thecalc', 'thecalc'),
('5678ab2c48c5c41', '', 'emp_cost', 'emp_cost'),
('58a08a91c9b59a9', '', 'ite_total', 'ite_total'),
('58a08a1abc4782c', '', 'inv_total', 'inv_total'),
('56773cb405f4913', 'employee_sf', 'emp_name1', 'employee_sf.emp_name1'),
('56773cb405f4913', 'employee_sf', 'thecalc', 'employee_sf.thecalc'),
('56773cb405f4913', 'employee_sf', 'emp_cost', 'employee_sf.emp_cost'),
('nuform', 'zzzzsys_browse_sf', 'sbr_width', 'zzzzsys_browse_sf.sbr_width'),
('nuform', 'zzzzsys_browse_sf', 'sbr_order', 'zzzzsys_browse_sf.sbr_order'),
('58a08a1abc4782c', 'invoice_item', 'ite_units', 'invoice_item.ite_units'),
('58a08a1abc4782c', 'invoice_item', 'ite_unit_price', 'invoice_item.ite_unit_price'),
('58a08a1abc4782c', 'invoice_item', 'ite_total', 'invoice_item.ite_total');

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
  `com_suburb` date DEFAULT NULL,
  `com_phone` varchar(50) NOT NULL,
  `com_map_coordinates` varchar(300) NOT NULL,
  `com_sex` varchar(1) NOT NULL,
  `com_color_id` varchar(250) NOT NULL,
  `com_age` int(11) NOT NULL,
  `com_notes` text NOT NULL,
  `com_test` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `com_code`, `com_name`, `com_business_id`, `com_company_id`, `com_address`, `com_suburb`, `com_phone`, `com_map_coordinates`, `com_sex`, `com_color_id`, `com_age`, `com_notes`, `com_test`) VALUES
('5729572e6331281', '', 'Mrs Compr66r36456', '568a00e25b8d271', '', '43 Allen St', '0000-00-00', '0', '', '', '568ef59c1bd769c#nuSep#568ef931d196b3e', 0, '13132', ''),
('57295aa5660f48b', '', 'Mrs Comuh', '568a00d504d264c', '', '43 Allen Stkh', '0000-00-00', '0', '', '', '568ef59c1bd769c', 35, '13132', ''),
('58ade54dac2128b', '', '777', '568a00c77f8f709', '', 'fgtetry', NULL, '1234', '', '', '', 1966, '', ''),
('58adeabf9d82672', '', '777hhhh', '56aeffb28581f45', '', 'ttttt', NULL, '0', '', '', '', 1966, '', '');

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

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` varchar(25) NOT NULL,
  `inv_number` int(11) NOT NULL,
  `inv_total` decimal(11,7) NOT NULL,
  `inv_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `inv_number`, `inv_total`, `inv_date`) VALUES
('58ae12b19cd86fe', 77, '968.0600000', '2017-03-19'),
('58ae1472d99c39e', 3, '144.0000000', '2017-04-14');

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
('58adba783efb30a', '58adba783efab22', 'dfrbdf', 2.0000, 6.0000, 12.0000),
('58adbd93e3baea7', '58adbd93e3ba692', 'bob', 2.0000, 3.0000, 6.0000),
('58adbffbb0f3da1', '58adbffbb0f32a7', '11', 112.0000, 11.0000, 1232.0000),
('58adbffbb0f42da', '58adbffbb0f32a7', 'dgbrtg', 0.0000, 0.0000, 0.0000),
('58adc0c4be09385', '55', 'from 55', 22.0000, 44.0000, 968.0000),
('58ae119864fb13c', '58ae119864fa88e', 'test', 43.0000, 5.0000, 215.0000),
('58ae12b19cd8ecf', '58ae12b19cd86fe', 'egyh', 6.0000, 4.5100, 27.0600),
('58ae1472d99cbe8', '58ae1472d99c39e', '12', 12.0000, 12.0000, 144.0000),
('58bf8fbec518c94', '58ae12b19cd86fe', 'tyntyh', 33.0000, 22.0000, 726.0000),
('58bf8fbec51935c', '58ae12b19cd86fe', '321', 43.0000, 5.0000, 215.0000);

-- --------------------------------------------------------

--
-- Table structure for table `test_table`
--

CREATE TABLE `test_table` (
  `test_table_id` varchar(25) NOT NULL,
  `number1` decimal(10,6) NOT NULL,
  `number2` decimal(12,4) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `text1` varchar(300) NOT NULL,
  `text2` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test_table`
--

INSERT INTO `test_table` (`test_table_id`, `number1`, `number2`, `date1`, `date2`, `text1`, `text2`) VALUES
('58bf0d9765e2881', '0.000000', '0.0000', '2017-02-09', '2015-03-25', '', '#ff8040'),
('58bf11c9802abf8', '0.000000', '0.0000', '2017-06-09', '2017-07-18', '81', '#0080c0'),
('58bf3e9de095116', '2.000000', '3.0000', '2017-05-13', '2017-02-06', '0000-00-00', 'NaN-aN-aN'),
('58bf3fe03563ccd', '77.000000', '1234.5000', '2017-03-08', '2017-03-12', '22', ''),
('58bf48f1e6245ea', '4.890000', '444.4000', '2018-00-08', '2011-01-09', '35', '');

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
('5775dbbce39a24e', '57678e7dc00c099', 'nuuser', '1', '1', '1', '1', '', '1'),
('5773260358ccf77', '57678e7dc00c099', '56c513162acd102', '1', '1', '1', '1', '', '1'),
('57678f1c543a37f', '57678e7dc00c099', 'nublank', '1', '1', '1', '1', '', '1'),
('57ad1e15a537a9f', '57678e7dc00c099', 'nulaunchdates', '1', '1', '1', '0', '', '1'),
('57ad5184a1f8873', '57678e7dc00c099', 'nupassword', '1', '1', '1', '1', '', '1'),
('57df39025b9d6af', '57df38d1bdf5ae5', '56773cb405f4913', '1', '1', '1', '1', '', '1'),
('57e84434e690546', '57df38d1bdf5ae5', 'nuuser', '1', '1', '1', '1', '', '1'),
('57e84981d049fbc', '57df38d1bdf5ae5', 'nupassword', '1', '1', '1', '1', '', '1'),
('58c2ed45ade8ad1', '57678e7dc00c099', '56773cb405f4913', '1', '1', '1', '1', '', '1'),
('58c40c0a1a05716', '57678e7dc00c099', 'nurunphp', '', '', '', '', '', ''),
('58c42925ba42dd4', '57678e7dc00c099', 'nuaccess', '0', '1', '1', '0', '', '1');

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
  `sbr_format` varchar(300) DEFAULT NULL,
  `sbr_order` int(11) DEFAULT NULL,
  `sbr_width` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_browse`
--

INSERT INTO `zzzzsys_browse` (`zzzzsys_browse_id`, `sbr_zzzzsys_form_id`, `sbr_title`, `sbr_display`, `sbr_align`, `sbr_format`, `sbr_order`, `sbr_width`) VALUES
('5677420624710ab', '56773cb405f4913', 'Company', 'com_name', 'l', '', 10, 200),
('5677420624fd93d', '56773cb405f4913', 'Address', 'com_address', 'l', '', 20, 200),
('56774206258316d', '56773cb405f4913', 'Date', 'com_suburb', 'l', 'D|mmmm', 30, 150),
('56774206260b475', '56773cb405f4913', 'Phone', 'com_phone', 'l', '', 40, 120),
('5678ab2c4ac37e0', '5678ab2c48c5c41', 'Name', 'emp_name', 'l', '', 10, 200),
('568b508eee2f2ef', '568b508eec00d80', 'Code', 'bus_code', 'l', '', 10, 100),
('568b508eeebdab9', '568b508eec00d80', 'Description', 'bus_description', 'l', '', 20, 300),
('56b00a4f9211103', '568b508eec00d80', 'Check', 'bus_check', 'l', '', 30, 50),
('56b3e7ba2bf880d', '5678ab2c48c5c41', 'Mobile', 'emp_mobile', 'l', '', 20, 200),
('56c5131637d6f7f', '56c513162acd102', 'Name', 'chi_name', 'l', '', 10, 200),
('5707303158d2308', 'nuform', 'Code', 'sfo_code', 'l', '', 20, 100),
('570730315e6abb7', 'nuform', 'Description', 'sfo_description', 'l', '', 30, 400),
('570b3863e50cb98', 'nutab', 'Form', 'sfo_description', 'l', '', 20, 150),
('570b3863e80f09c', 'nutab', 'Tab', 'syt_title', 'l', '', 40, 200),
('570c8e1adb04ffc', 'nuobject', 'Form', 'sfo_description', 'l', '', 60, 200),
('570c8e1adeae32a', 'nuobject', 'Tab', 'syt_title', 'l', '', 70, 150),
('570c8e1ae1b33cb', 'nuobject', 'Object', 'sob_all_id', 'l', '', 30, 200),
('570db5ea2aa8afe', 'nuobject', 'Type', 'sob_all_type', 'l', '', 10, 70),
('5710406a290c874', 'nuobject', 'Label', 'sob_all_label', NULL, '', 50, 200),
('57143e81f2bdabf', 'nutab', 'Type', 'sfo_type', NULL, '', 10, 150),
('57143f25ded40bb', '', 'Type', 'CONCAT(UCASE(LEFT(sfo_type, 1)), LCASE(SUBSTRING(sfo_type, 2)))', NULL, '', 10, 100),
('57426b4c86ffc81', '57426b4c86fede1', 'Code', 'sfo_code', 'l', '', 10, 70),
('57426b4c8700731', '57426b4c86fede1', 'Description', 'sfo_description', 'l', '', 20, 250),
('57426b4c87011a9', '57426b4c86fede1', 'Type', 'sfo_type', 'l', '', 5, 100),
('574290680092fa8', 'nuaccess', 'Description', 'sal_description', 'l', '', 20, 300),
('57428fe73028089', 'nuaccess', 'Code', 'sal_code', NULL, '', 10, 100),
('574277f47e2b8d7', 'nunonsystemform', 'Code', 'sfo_code', 'l', '', 10, 70),
('574277f47e2c2b7', 'nunonsystemform', 'Description', 'sfo_description', 'l', '', 20, 250),
('574277f47e2cd55', 'nunonsystemform', 'Type', 'sfo_type', 'l', '', 5, 100),
('574665a15bbd803', 'nuusergroup', 'Code', 'sug_code', 'l', '', 10, 100),
('574665a15bbf71b', 'nuusergroup', 'Description', 'sug_description', 'l', '', 20, 200),
('57466c37871dab3', 'nuusergroup', 'Home', 'sfo_description', 'l', '', 30, 300),
('57466f4a6050c2b', 'nuuser', 'Name', 'sus_name', 'l', '', 10, 150),
('57466f4a6051984', 'nuuser', 'Email', 'sus_email', 'l', '', 20, 300),
('57466f4a605234d', 'nuuser', 'User Group', 'sug_description', 'l', '', 30, 150),
('574b8ee0b2a261f', 'nuphp', 'Code', 'sph_code', 'l', '', 10, 150),
('574b8ee0b2a3058', 'nuphp', 'Description', 'sph_description', 'l', '', 20, 250),
('574b960d4421185', 'nubuildreport', 'Code', 'sre_code', 'l', '', 10, 150),
('574b960d442238f', 'nubuildreport', 'Description', 'sre_description', 'l', '', 20, 250),
('578835e91a3f8fa', 'nuobject', 'i', 'zzzzsys_form_id', NULL, '', 40, 0),
('575605492d24cdb', 'nuform', 'Type', 'sfo_type', 'l', '', 10, 80),
('575a31897e90566', 'nudebug', 'Message', 'deb_message', 'l', '', 10, 600),
('57579dd5098d938', 'nubuildreport', 'Launch From', 'CONCAT(sfo_code, '' - '', sfo_description)', 'l', '', 40, 300),
('5757a4b7181f4c7', 'nurun', 'Type', 'type', 'l', '', 10, 100),
('5757a4b7181ff38', 'nurun', 'Code', 'code', 'l', '', 20, 100),
('5757a4b718209cc', 'nurun', 'Description', 'description', 'l', '', 30, 100),
('5757af5bb2b4ca2', 'nurunlist', 'Type', 'run', 'l', '', 10, 100),
('5758aa716672f9a', 'nurunlist', 'Code', 'code', 'l', '', 20, 100),
('5758aa716673ccd', 'nurunlist', 'Description', 'description', 'l', '', 30, 200),
('575a3c631eb294c', 'nudebug', 'Time Stamp', 'deb_added', 'l', '', 20, 170),
('57637ad7b561bdc', 'nuaccesslevelreport', '1', '1', 'l', '', 10, 1),
('57637f2243c9361', 'nutab', 'Code', 'sfo_code', NULL, '', 30, 100),
('5763816cd36ed10', 'nubrowse', '1', '1', NULL, '', 10, 1),
('577b248cec6588c', 'nubuildreport', 'Group', 'sre_group', 'l', '', 30, 150),
('577b24bb83cf26f', 'nuphp', 'Group', 'sph_group', 'l', '', 30, 150),
('577b4228b34a55d', 'nurunreport', 'Code', 'sre_code', 'l', '', 20, 150),
('577b4228b34af41', 'nurunreport', 'Description', 'sre_description', 'l', '', 30, 250),
('577b4228b34b950', 'nurunreport', 'Group', 'sre_group', 'l', '', 40, 150),
('577c47fa66beb63', 'nurunreport', 'Form', 'sre_zzzzsys_form_id', 'l', '', 10, 1),
('577b48b3f35232a', '577b48b3f351026', 'Code', 'sph_code', 'l', '', 10, 150),
('577b48b3f352d94', '577b48b3f351026', 'Description', 'sph_description', 'l', '', 20, 250),
('577b48b3f353765', '577b48b3f351026', 'Group', 'sph_group', 'l', '', 30, 150),
('577b48b3f354185', '577b48b3f351026', 'Launch From', 'CONCAT(sfo_code, '' - '', sfo_description)', 'l', '', 40, 300),
('577b4b6ca3ea898', 'nurunphp', 'Code', 'sph_code', 'l', '', 20, 150),
('577b4c18a8bf431', 'nurunphp', 'Description', 'sph_description', NULL, '', 30, 300),
('577b4c18a8c02ee', 'nurunphp', 'Group', 'sph_group', NULL, '', 40, 150),
('578726caa351b3e', 'nurunphp', 'PHP', 'sph_zzzzsys_form_id', NULL, '', 10, 1),
('579006cac02b9f3', 'nuphp', 'Launch By', 'CONCAT(sfo_code, '' - '', sfo_description)', 'l', '', 40, 300),
('57a29081a93f8d0', 'nutimezone', 'Time Zone', 'stz_timezone', NULL, '', 10, 250),
('57a7c1cb78c07d1', 'nutranslate', 'Language', 'trl_language', 'l', '', 10, 100),
('57a7c1cb78c123b', 'nutranslate', 'English', 'trl_english', 'l', '', 20, 300),
('57a7c1cb78c1c89', 'nutranslate', 'Translation', 'trl_translation', 'l', '', 30, 300),
('57a93cb51e262f7', '57a93cb51e24fd8', 'Name', 'sus_name', 'l', '', 10, 200),
('57a93cb51e26c3f', '57a93cb51e24fd8', 'Email', 'sus_email', 'l', '', 20, 300),
('57a93cb51e2773a', '57a93cb51e24fd8', 'User Group', 'sug_description', 'l', '', 30, 200),
('583386b1b39f3ea', 'nuff', 'Code', 'sfo_code', NULL, '', 10, 100),
('583386b1b39f9fc', 'nuff', 'Description', 'sfo_description', NULL, '', 20, 300),
('58338c35b340e06', 'nuffcustomobjects', '<b>Object - Form</b>...(Current Objects)', 'sob_all_fast_form_description', 'l', '', 10, 300),
('583f372b53bafcd', 'nuffobjects', 'i', 'zzzzsys_form_id', 'l', '', 10, 1),
('583f372b53bb208', 'nuffobjects', 'Object', 'sob_all_id', 'l', '', 20, 250),
('5844ffb2a70ca9b', 'nuffcustomobjects', 'Type', 'sob_all_type', 'l', '', 40, 70),
('5845033b99a0332', 'nuffcustomobjects', 'Label', 'sob_all_label', 'l', '', 30, 0),
('5845033b999fb6e', 'nuffcustomobjects', 'Object', 'sob_all_label', 'l', '', 20, 0),
('585efbcfe4e0558', 'nucalcobjects', 'object.subform', 'CONCAT(thechild,IF(theparent = '''','''',''.''),theparent)', 'c', '', 10, 200),
('58a08a1abc4824f', '58a08a1abc4782c', 'Invoice Number', 'inv_number', 'r', '', 10, 200),
('586d9616d1a4bf2', 'nucalcobjects', ' ', 'theform', NULL, '', 30, 0),
('5872aa8733f078a', 'nucalcobjects', ' ', 'thevalue', NULL, '', 40, 2),
('5872aa8733f0d8d', 'nucalcobjects', 'Object', 'thechild', NULL, '', 20, 0),
('58af6b019f64b46', 'nuformat', 'Type', 'srm_type', NULL, '', 20, 150),
('58af6b019f64f3a', 'nuformat', 'Format', 'srm_format', NULL, '', 10, 250),
('58bf0b972c2ae9c', '58bf0b972c2a447', 'thenumber1 wrtgbegh gyn tynb', 'number1', 'l', 'N|$ 1,000.00', 10, 150),
('58bf0b972c2b40b', '58bf0b972c2a447', 'number 2', 'number2', 'l', 'N|£ 1000.0', 20, 150),
('58bf0b972c2b87b', '58bf0b972c2a447', 'date 1', 'date1', 'l', 'D|mmmm', 30, 150),
('58bf0b972c2bdca', '58bf0b972c2a447', 'date 2', 'date2', 'l', 'D|dd-mmm-yyyy', 40, 150),
('58c5ddfebf10554', 'nuobject', 'Input Type', 'sob_input_type', NULL, NULL, 20, 100),
('58c86689b9b0cc8', '58c86689b9af7fd', 'Name', 'sfu_name', 'l', NULL, 20, 200),
('58c867c32edcb6c', '58c86689b9af7fd', 'Syntax', 'sfu_syntax', NULL, NULL, 30, 200),
('58c8e5356733ca9', '58c86689b9af7fd', 'Language', 'sfu_language', NULL, NULL, 10, 100);

-- --------------------------------------------------------

--
-- Stand-in structure for view `zzzzsys_calc`
--
CREATE TABLE `zzzzsys_calc` (
`theform` varchar(300)
,`theparent` varchar(300)
,`thechild` varchar(300)
,`thevalue` text
);

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

--
-- Dumping data for table `zzzzsys_debug`
--

INSERT INTO `zzzzsys_debug` (`zzzzsys_debug_id`, `deb_message`, `deb_order`, `deb_added`) VALUES
('58ca1215a0b4849', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 14:48:29'),
('58ca1215a1052bf', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 14:48:29'),
('58ca1215a12ab72', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   CONCAT(\n            ''nuTotal('', \n            sob_all_id,\n            '')'') as thevalue\n            \nFROM zzzzsys_object \nWHERE (sob_input_type = ''number''\nOR sob_all_type = ''calc'')\nAND sob_all_zzzzsys_form_id = ''nuobject''\n\nUNION \n\nSELECT \n    su.sob_all_zzzzsys_form_id AS theform,\n    CONCAT(\n    ''nuTotal('',\n    su.sob_all_id, \n    ''.'', \n    inp.sob_all_id,\n    '')''\n    ) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND su.sob_all_zzzzsys_form_id = ''nuobject''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 14:48:29'),
('58ca13beebaf8a4', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 14:55:34'),
('58ca13beebf132d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 14:55:34'),
('58ca13beec16a3b', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   CONCAT(\n            ''nuTotal('', \n            sob_all_id,\n            '')'') as thevalue\n            \nFROM zzzzsys_object \nWHERE (sob_input_type = ''number''\nOR sob_all_type = ''calc'')\nAND sob_all_zzzzsys_form_id = ''nuobject''\n\nUNION \n\nSELECT \n    su.sob_all_zzzzsys_form_id AS theform,\n    CONCAT(\n    ''nuTotal('',\n    su.sob_all_id, \n    ''.'', \n    inp.sob_all_id,\n    '')''\n    ) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND su.sob_all_zzzzsys_form_id = ''nuobject''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 14:55:34'),
('58ca17bc6e6aff2', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:12:36'),
('58ca17bc6eb80d6', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:12:36'),
('58ca17bc6ee02bc', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   CONCAT(\n            ''nuTotal('', \n            sob_all_id,\n            '')'') as thevalue\n            \nFROM zzzzsys_object \nWHERE (sob_input_type = ''number''\nOR sob_all_type = ''calc'')\nAND sob_all_zzzzsys_form_id = ''nuobject''\n\nUNION \n\nSELECT \n    su.sob_all_zzzzsys_form_id AS theform,\n    CONCAT(\n    ''nuTotal('',\n    su.sob_all_id, \n    ''.'', \n    inp.sob_all_id,\n    '')''\n    ) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND su.sob_all_zzzzsys_form_id = ''nuobject''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:12:36'),
('58ca17d4a648726', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:13:00'),
('58ca17d4a68a2df', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:13:00'),
('58ca17d4a6b419e', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   CONCAT(\n            ''nuTotal('', \n            sob_all_id,\n            '')'') as thevalue\n            \nFROM zzzzsys_object \nWHERE (sob_input_type = ''number''\nOR sob_all_type = ''calc'')\nAND sob_all_zzzzsys_form_id = ''nuobject''\n\nUNION \n\nSELECT \n    su.sob_all_zzzzsys_form_id AS theform,\n    CONCAT(\n    ''nuTotal('',\n    su.sob_all_id, \n    ''.'', \n    inp.sob_all_id,\n    '')''\n    ) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND su.sob_all_zzzzsys_form_id = ''nuobject''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:13:00'),
('58ca1a108dce3d8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:22:32'),
('58ca1a108e310ef', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:22:32'),
('58ca1a108e5a70d', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   CONCAT(\n            ''nuTotal('', \n            sob_all_id,\n            '')'') as thevalue\n            \nFROM zzzzsys_object \nWHERE (sob_input_type = ''number''\nOR sob_all_type = ''calc'')\nAND sob_all_zzzzsys_form_id = ''nuobject''\n\nUNION \n\nSELECT \n    su.sob_all_zzzzsys_form_id AS theform,\n    CONCAT(\n    ''nuTotal('',\n    su.sob_all_id, \n    ''.'', \n    inp.sob_all_id,\n    '')''\n    ) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND su.sob_all_zzzzsys_form_id = ''nuobject''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:22:32'),
('58ca1a125dd87fc', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:22:34'),
('58ca1a125e1ef8c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:22:34'),
('58ca1a125e43abb', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   CONCAT(\n            ''nuTotal('', \n            sob_all_id,\n            '')'') as thevalue\n            \nFROM zzzzsys_object \nWHERE (sob_input_type = ''number''\nOR sob_all_type = ''calc'')\nAND sob_all_zzzzsys_form_id = ''nuobject''\n\nUNION \n\nSELECT \n    su.sob_all_zzzzsys_form_id AS theform,\n    CONCAT(\n    ''nuTotal('',\n    su.sob_all_id, \n    ''.'', \n    inp.sob_all_id,\n    '')''\n    ) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND su.sob_all_zzzzsys_form_id = ''nuobject''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:22:34'),
('58ca1a4291eeb33', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:22'),
('58ca1a4293c6d49', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:22'),
('58ca1a4295b8dda', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:22'),
('58ca1a4297c2f10', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:22'),
('58ca1a429b5f555', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:22'),
('58ca1a53c000ded', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:39'),
('58ca1a53c1f8ac0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:39'),
('58ca1a53c3dc416', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:39'),
('58ca1a53c5fb778', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:39'),
('58ca1a53c845681', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:39'),
('58ca1a5e75fe4ff', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:50'),
('58ca1a5e77f9144', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:50'),
('58ca1a604f3fc57', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:52'),
('58ca1a605140d05', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:52'),
('58ca1a60533479c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:52'),
('58ca1a60552e9a0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:52'),
('58ca1a605728b15', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:23:52'),
('58ca1cc752601c0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:34:07'),
('58ca1cc752af14e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:34:07'),
('58ca1cc752d3b6b', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   CONCAT(\n            ''nuTotal('', \n            sob_all_id,\n            '')'') as thevalue\n            \nFROM zzzzsys_object \nWHERE (sob_input_type = ''number''\nOR sob_all_type = ''calc'')\nAND sob_all_zzzzsys_form_id = ''nuobject''\n\nUNION \n\nSELECT \n    su.sob_all_zzzzsys_form_id AS theform,\n    CONCAT(\n    ''nuTotal('',\n    su.sob_all_id, \n    ''.'', \n    inp.sob_all_id,\n    '')''\n    ) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND su.sob_all_zzzzsys_form_id = ''nuobject''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:34:07'),
('58ca1cc9c02bf2e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:34:09'),
('58ca1cc9c077b60', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:34:09'),
('58ca1cc9c0a1b7f', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   CONCAT(\n            ''nuTotal('', \n            sob_all_id,\n            '')'') as thevalue\n            \nFROM zzzzsys_object \nWHERE (sob_input_type = ''number''\nOR sob_all_type = ''calc'')\nAND sob_all_zzzzsys_form_id = ''nuobject''\n\nUNION \n\nSELECT \n    su.sob_all_zzzzsys_form_id AS theform,\n    CONCAT(\n    ''nuTotal('',\n    su.sob_all_id, \n    ''.'', \n    inp.sob_all_id,\n    '')''\n    ) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND su.sob_all_zzzzsys_form_id = ''nuobject''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:34:09'),
('58ca1cd046504b7', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:34:16'),
('58ca1cd046af495', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:34:16'),
('58ca1cd046dfbf5', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   CONCAT(\n            ''nuTotal('', \n            sob_all_id,\n            '')'') as thevalue\n            \nFROM zzzzsys_object \nWHERE (sob_input_type = ''number''\nOR sob_all_type = ''calc'')\nAND sob_all_zzzzsys_form_id = ''nuobject''\n\nUNION \n\nSELECT \n    su.sob_all_zzzzsys_form_id AS theform,\n    CONCAT(\n    ''nuTotal('',\n    su.sob_all_id, \n    ''.'', \n    inp.sob_all_id,\n    '')''\n    ) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND su.sob_all_zzzzsys_form_id = ''nuobject''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:34:16'),
('58ca1cddd82d0b5', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''add_total''\n        AND zzzzsys_object_id != ''58c9c520001fff6''\n\n        ', '', '2017-03-16 15:34:29'),
('58ca1cde76032d3', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:34:30'),
('58ca1cde7707a53', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:34:30'),
('58ca1cde7782827', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:34:30'),
('58ca1ce251ad461', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:34:34'),
('58ca1ce251f06a7', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:34:34'),
('58ca1ce252128f2', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:34:34'),
('58ca1ce409e6c63', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:34:36'),
('58ca1ce40a33f9c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:34:36'),
('58ca1ce40a59cbe', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:34:36'),
('58ca1cf4e757b06', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:34:52'),
('58ca1cf4e79b25a', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:34:52'),
('58ca1cf4e7bed58', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:34:52'),
('58ca1d1987cb244', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:35:29'),
('58ca1d198a0a8df', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:35:29'),
('58ca1d198c63561', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:35:29'),
('58ca1d198e91178', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:35:29'),
('58ca1d1990f5c8e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:35:29'),
('58ca1d1992c17d7', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:35:29'),
('58ca1d199538438', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:35:29'),
('58ca1d199705556', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:35:29'),
('58ca1e48bec34a0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:40:32'),
('58ca1e48bf23f21', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:40:32'),
('58ca1e48bf6cdc7', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:40:32'),
('58ca1e5a037ac39', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:40:50'),
('58ca1e5a03c6655', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:40:50'),
('58ca1e5a03efacb', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:40:50'),
('58ca1e68afa2e27', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:04'),
('58ca1e68b22b2c7', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:04'),
('58ca1e68b419eef', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:04'),
('58ca1e68b5f1b62', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:04'),
('58ca1e68b7d5583', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:04'),
('58ca1e7eb345d25', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:26'),
('58ca1e7eb3ab7bb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:41:26'),
('58ca1e7eb3ddc5f', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:41:26'),
('58ca1e87481cee4', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:35'),
('58ca1e87486b50a', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:41:35'),
('58ca1e87489a4da', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:41:35'),
('58ca1e896fac960', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:37'),
('58ca1e896ff151b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:41:37'),
('58ca1e89701576a', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:41:37'),
('58ca1e97b152e28', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:51'),
('58ca1e97b37cb98', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:51'),
('58ca1e97b5ed8cd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:51'),
('58ca1e97b890bf8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:51'),
('58ca1e97ba8229e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:51'),
('58ca1e97bcf7f9c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:51'),
('58ca1e97befc257', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:51'),
('58ca1e97c19f6ca', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:41:51'),
('58ca1f9635e862f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:06'),
('58ca1f963c07e19', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:06'),
('58ca1f9640e4ae9', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:06'),
('58ca1f964557646', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:06'),
('58ca1f964cd75db', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:06'),
('58ca1f965142ecc', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:06'),
('58ca1f96556d6dd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:06'),
('58ca1f96595d7f3', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:06'),
('58ca1f99d9498b4', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:09'),
('58ca1f99d99b3f7', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:46:09'),
('58ca1f99d9c23ce', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:46:09'),
('58ca1f9b3621fb5', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:11'),
('58ca1f9b36743fb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:46:11'),
('58ca1f9b36ad4df', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:46:11'),
('58ca1fae756bb68', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:30'),
('58ca1fae773773d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:30'),
('58ca1fae797fb47', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:30'),
('58ca1fae7b4655f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:30'),
('58ca1fae7da86ee', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:30'),
('58ca1fae7fc997f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:30'),
('58ca1fae8225bad', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:30'),
('58ca1fae83fc416', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:30'),
('58ca1fba0b77f00', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:42'),
('58ca1fba0de9bb6', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:42'),
('58ca1fba1032921', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:42'),
('58ca1fba12818b2', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:42'),
('58ca1fba14e5191', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:42'),
('58ca1fba16f3a04', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:42'),
('58ca1fba1a1c2a7', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:42'),
('58ca1fba1ca009e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:42'),
('58ca1fbb280ba45', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:43'),
('58ca1fbb287dba1', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:46:43'),
('58ca1fbb28b5a2f', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:46:43'),
('58ca1fbc568f603', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:46:44'),
('58ca1fbc56f850d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:46:44'),
('58ca1fbc57375f9', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:46:44'),
('58ca1fe7d97fb42', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:47:27'),
('58ca1fe7d9c49e8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:47:27'),
('58ca1fe7d9ed031', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:47:27'),
('58ca1fec2e71466', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:47:32'),
('58ca1fec2ebe9df', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:47:32'),
('58ca1fec2ee67e3', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:47:32'),
('58ca1fff7127039', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:47:51'),
('58ca1fff7318c63', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:47:51'),
('58ca1fff75158c2', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:47:51'),
('58ca1fff77010fb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:47:51'),
('58ca1fff78f0acd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:47:51'),
('58ca1fff7aec628', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:47:51'),
('58ca1fff7ce6958', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:47:51'),
('58ca1fff7f6af04', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:47:51'),
('58ca20200c7db8f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:24'),
('58ca20200fb5583', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:24'),
('58ca2020126cf76', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:24'),
('58ca20201497250', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:24'),
('58ca202017d3d3b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:24'),
('58ca20201a9e1fe', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:24'),
('58ca20201ccb084', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:24'),
('58ca2020200d2ec', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:24'),
('58ca20220403500', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:26'),
('58ca2022044c2ff', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:48:26'),
('58ca2022046c644', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:48:26'),
('58ca202316d6189', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:27'),
('58ca20231722387', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:48:27'),
('58ca202317488ae', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:48:27'),
('58ca2031e9213db', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:41'),
('58ca2031e97174b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:48:41'),
('58ca2031e9963fd', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:48:41'),
('58ca20335e19e28', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:43'),
('58ca20335e8a08b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:48:43'),
('58ca20335f18b14', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:48:43'),
('58ca203eab3e010', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:54'),
('58ca203ead58f9d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:54'),
('58ca203eaf6aaea', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:54'),
('58ca203eb18f7af', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:54'),
('58ca203eb3ebca0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:54'),
('58ca203eb604edc', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:54'),
('58ca203eb83745f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:54'),
('58ca203eba403b2', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:48:54'),
('58ca20552c56405', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:17'),
('58ca20552e25a18', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:17'),
('58ca2055314bd0b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:17'),
('58ca20553482a91', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:17'),
('58ca205536d6e54', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:17'),
('58ca205539ea33a', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:17'),
('58ca20553d1ae45', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:17'),
('58ca20553f7152c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:17'),
('58ca206976db1c9', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:37'),
('58ca2069772a25a', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:49:37'),
('58ca20697753d1b', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:49:37'),
('58ca206a65a3113', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:38'),
('58ca206a65fe831', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:49:38');
INSERT INTO `zzzzsys_debug` (`zzzzsys_debug_id`, `deb_message`, `deb_order`, `deb_added`) VALUES
('58ca206a6629fd9', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:49:38'),
('58ca206bec585ff', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:39'),
('58ca206beca34cb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:49:39'),
('58ca206beccb073', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:49:39'),
('58ca206d962fe20', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:41'),
('58ca206d9686b3c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:49:41'),
('58ca206d96bfc8e', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:49:41'),
('58ca2076d41b47f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:50'),
('58ca2076d624acd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:50'),
('58ca2076d808e18', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:50'),
('58ca2076d9ef573', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:50'),
('58ca2076dbdb697', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:50'),
('58ca2076ddcec0e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:50'),
('58ca2076dfa475c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:50'),
('58ca2076e1a0c46', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:49:50'),
('58ca20b0ce67fd8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:50:48'),
('58ca20b0d1419cb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:50:48'),
('58ca20b0d332873', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:50:48'),
('58ca20b0d65987b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:50:48'),
('58ca20b0d993bfd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:50:48'),
('58ca20b0dc243e3', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:50:48'),
('58ca20b0debeb6e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:50:48'),
('58ca20b0e22ca8e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:50:48'),
('58ca20b2d9ada7e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:50:50'),
('58ca20b2da0a463', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:50:50'),
('58ca20b2da352b2', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:50:50'),
('58ca20b4d5b7e93', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:50:52'),
('58ca20b4d60b685', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:50:52'),
('58ca20b4d645ac9', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:50:52'),
('58ca20c73ed6219', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:11'),
('58ca20c740d8d59', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:11'),
('58ca20c742e02f6', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:11'),
('58ca20c744e1ef5', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:11'),
('58ca20c746e24bb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:11'),
('58ca20c748d5761', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:11'),
('58ca20c74acc661', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:11'),
('58ca20c74ccafbf', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:11'),
('58ca20ec1f33d06', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:48'),
('58ca20ec21e23d8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:48'),
('58ca20ec24500e8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:48'),
('58ca20ec27236c0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:48'),
('58ca20ec294c99a', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:48'),
('58ca20ec2bcf8cd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:48'),
('58ca20ec2eb1e6c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:48'),
('58ca20ec3137286', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:51:48'),
('58ca214d3f48dd0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:25'),
('58ca214d416630f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:25'),
('58ca214d44b706e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:25'),
('58ca214d4848742', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:25'),
('58ca214d4ada56f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:25'),
('58ca214d4d64d97', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:25'),
('58ca214d50a4192', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:25'),
('58ca214d533e5f7', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:25'),
('58ca215069724fb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:28'),
('58ca215069bc9c6', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:53:28'),
('58ca215069e4798', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:53:28'),
('58ca21519614a5a', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:29'),
('58ca2151965a94e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:53:29'),
('58ca215196885c4', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:53:29'),
('58ca215fd667291', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:43'),
('58ca215fd857ee9', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:43'),
('58ca215fda81c2f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:43'),
('58ca215fdc77999', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:43'),
('58ca215fde62e63', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:43'),
('58ca215fe0483ff', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:43'),
('58ca215fe23cd26', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:43'),
('58ca215fe42510f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:53:43'),
('58ca21a3e921a28', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:54:51'),
('58ca21a3e975f31', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:54:51'),
('58ca21a3e99e617', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:54:51'),
('58ca21a5111693c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:54:53'),
('58ca21a5115d684', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:54:53'),
('58ca21a51183ec0', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:54:53'),
('58ca21b37c1c9c4', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:07'),
('58ca21b37e0ebb8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:07'),
('58ca21b3801ed37', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:07'),
('58ca21b3820abae', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:07'),
('58ca21b383faea6', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:07'),
('58ca21b385d3708', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:07'),
('58ca21b387b15aa', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:07'),
('58ca21b38991efd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:07'),
('58ca21c85efdc15', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:28'),
('58ca21c8622daf9', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:28'),
('58ca21c865a3545', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:28'),
('58ca21c8681e915', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:28'),
('58ca21c86b45ce3', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:28'),
('58ca21c86eb978e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:28'),
('58ca21c87213efb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:28'),
('58ca21c8756b638', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:28'),
('58ca21ca86f4b66', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:30'),
('58ca21ca8741765', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:55:30'),
('58ca21ca8765d56', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:55:30'),
('58ca21cca95334d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:55:32'),
('58ca21cca99a3ef', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:55:32'),
('58ca21cca9c4ea4', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:55:32'),
('58ca22017bd6624', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:56:25'),
('58ca22017dd645e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:56:25'),
('58ca22043cfe2ed', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:56:28'),
('58ca22043f06409', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:56:28'),
('58ca2206c6ec5c0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:56:30'),
('58ca2206c8eaee4', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:56:30'),
('58ca2206cae82ee', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:56:30'),
('58ca2206cccfb0b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:56:30'),
('58ca2206cea42f3', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:56:30'),
('58ca2206d06ed37', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:56:30'),
('58ca2206d24dfe8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:56:30'),
('58ca2206d428870', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:56:30'),
('58ca22325c4c182', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:57:14'),
('58ca22325fac9bc', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:57:14'),
('58ca223262b2e6e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:57:14'),
('58ca2232645e229', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:57:14'),
('58ca223267883e9', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:57:14'),
('58ca223269f338b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:57:14'),
('58ca22326c5d99d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:57:14'),
('58ca22326f68baf', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:57:14'),
('58ca22344d5c9b5', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:57:16'),
('58ca22344f55499', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:57:16'),
('58ca223a054b20b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:57:22'),
('58ca223a058da65', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:57:22'),
('58ca223a05b1876', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:57:22'),
('58ca223bdf2eabd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 15:57:23'),
('58ca223bdf72977', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 15:57:23'),
('58ca223bdf97936', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 15:57:23'),
('58ca42679f0f3ba', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:14:39'),
('58ca42679f65fb7', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:14:39'),
('58ca42679f9363c', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:14:39'),
('58ca42689be0ccb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:14:40'),
('58ca42689c2dfef', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:14:40'),
('58ca42689c56740', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:14:40'),
('58ca426dbaaf45f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:14:45'),
('58ca426dbd149c1', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:14:45'),
('58ca426dc01430b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:14:45'),
('58ca426dc23acec', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:14:45'),
('58ca426dc44e393', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:14:45'),
('58ca426dc65976c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:14:45'),
('58ca426dc850716', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:14:45'),
('58ca426dca6b220', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:14:45'),
('58ca428b90d99aa', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:15:15'),
('58ca428b941b92b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:15:15'),
('58ca428b96674ca', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:15:15'),
('58ca428b9942780', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:15:15'),
('58ca428b9c85b46', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:15:15'),
('58ca428b9f1dc3a', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:15:15'),
('58ca428ba2334a3', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:15:15'),
('58ca428ba521058', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:15:15'),
('58ca42a3b2cd4e5', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:15:39'),
('58ca42a3b310144', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:15:39'),
('58ca42a3b333d82', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:15:39'),
('58ca42a9abf46e3', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:15:45'),
('58ca42a9ac3894e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:15:45'),
('58ca42a9ac5eb1e', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:15:45'),
('58ca431ec8f26a8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:17:42'),
('58ca431ec9345a6', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:17:42'),
('58ca431ec965f6b', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:17:42'),
('58ca4323c94c49d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:17:47'),
('58ca4323c99a3a4', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:17:47'),
('58ca4323c9c358b', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:17:47'),
('58ca439bcd3eeef', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:19:47'),
('58ca439bcd82233', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:19:47'),
('58ca439bcda5b1b', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:19:47'),
('58ca43a111aa163', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:19:53'),
('58ca43a111f8378', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:19:53'),
('58ca43a11220cd9', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:19:53'),
('58ca43e07970407', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:20:56'),
('58ca43e07b85827', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:20:56'),
('58ca43e07d92a41', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:20:56'),
('58ca43e07ff1e88', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:20:56'),
('58ca43e08260d15', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:20:56'),
('58ca43e084c6b37', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:20:56'),
('58ca43e086e5aa8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:20:56'),
('58ca43e088ee73a', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:20:56'),
('58ca43f40004895', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:21:16'),
('58ca43f40421fef', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:21:16'),
('58ca43f407356f1', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:21:16'),
('58ca43f409964fd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:21:16'),
('58ca43f40bf9d43', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:21:16'),
('58ca43f40ef8a4d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:21:16'),
('58ca43f410b0d74', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:21:16'),
('58ca43f413f7b80', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:21:16'),
('58ca43f65e04da1', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:21:18'),
('58ca43f65e482fb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:21:18'),
('58ca43f65e6d0eb', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:21:18'),
('58ca43f8c7d1efa', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:21:20'),
('58ca43f8c817f1c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:21:20'),
('58ca43f8c83e858', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:21:20'),
('58ca44594fca457', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:22:57'),
('58ca445951d5f72', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:22:57'),
('58ca445953c7b65', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:22:57'),
('58ca445955c07a0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:22:57'),
('58ca445957b93f7', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:22:57'),
('58ca44cb406e954', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:24:51'),
('58ca44cb4274b48', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:24:51'),
('58ca44cb44785ab', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:24:51'),
('58ca44cb467cbcd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:24:51'),
('58ca44cb486b2cb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:24:51'),
('58ca44cb4a74e17', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:24:51'),
('58ca44cb4c62bb0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:24:51'),
('58ca44cb4e5090c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:24:51'),
('58ca45ba9a75e72', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:28:50'),
('58ca45ba9abc93e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:28:50'),
('58ca45ba9ae27af', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:28:50'),
('58ca45d54fbfe41', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''add_total''\n        AND zzzzsys_object_id != ''58c9c520001fff6''\n\n        ', '', '2017-03-16 18:29:17'),
('58ca45d5a4e723a', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:29:17'),
('58ca45d5a530068', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:29:17'),
('58ca45d5a55b536', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:29:17'),
('58ca46371a677fd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:30:55'),
('58ca46371c7e5c1', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:30:55');
INSERT INTO `zzzzsys_debug` (`zzzzsys_debug_id`, `deb_message`, `deb_order`, `deb_added`) VALUES
('58ca46371e7ef36', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:30:55'),
('58ca4637207cb6f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:30:55'),
('58ca463722767ca', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:30:55'),
('58ca4637246b2b9', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:30:55'),
('58ca4637264df1b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:30:55'),
('58ca46372842fe2', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:30:55'),
('58ca47a0cd9a9fc', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:36:56'),
('58ca47a0d019a4b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:36:56'),
('58ca47a0d2beb07', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:36:56'),
('58ca47a0d5e37ee', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:36:56'),
('58ca47a0d8b97bc', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:36:56'),
('58ca47a0db3da07', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:36:56'),
('58ca47a0de55745', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:36:56'),
('58ca47a0e1b803b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:36:56'),
('58ca47a6bb950b3', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:37:02'),
('58ca47a6bbd745f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:37:02'),
('58ca47a6bbfa6ab', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:37:02'),
('58ca47b5cfdb511', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''add_total''\n        AND zzzzsys_object_id != ''58c9c520001fff6''\n\n        ', '', '2017-03-16 18:37:17'),
('58ca47b64586eb9', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:37:18'),
('58ca47b645d298c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:37:18'),
('58ca47b646013c5', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:37:18'),
('58ca47bb6cffb42', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:37:23'),
('58ca47bb6d3e5f6', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:37:23'),
('58ca47bb6d5ea55', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:37:23'),
('58ca47bcac9935b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:37:24'),
('58ca47bcaced67d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:37:24'),
('58ca47bcad13dca', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:37:24'),
('58ca47da64b26bb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:37:54'),
('58ca47da66b4962', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:37:54'),
('58ca47da68b94df', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:37:54'),
('58ca47da6ab98d0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:37:54'),
('58ca47da6cbc4a4', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:37:54'),
('58ca47da6eaf00f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:37:54'),
('58ca47da709b45e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:37:54'),
('58ca47da727d3a0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:37:54'),
('58ca4823ac0bfd1', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:39:07'),
('58ca4823ae4a1bc', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:39:07'),
('58ca4823b12aba4', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:39:07'),
('58ca4823b44acb8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:39:07'),
('58ca4823b7b9cef', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:39:07'),
('58ca4823b98aa62', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:39:07'),
('58ca4823bcb32fb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:39:07'),
('58ca4823c027856', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:39:07'),
('58ca482947583ea', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:39:13'),
('58ca482947b6669', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:39:13'),
('58ca482947e3ff4', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:39:13'),
('58ca482a5eee862', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:39:14'),
('58ca482a5f321c5', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:39:14'),
('58ca482a5f5615c', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:39:14'),
('58ca4859706c641', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:40:01'),
('58ca485970b1577', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:40:01'),
('58ca485970d57f0', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:40:01'),
('58ca4881048de46', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:40:41'),
('58ca488104d0a33', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:40:41'),
('58ca488104f4730', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:40:41'),
('58ca4896732f382', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:41:02'),
('58ca48967374294', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:41:02'),
('58ca48967398b71', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:41:02'),
('58ca4901cf969fa', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''nucalculator''\n        AND zzzzsys_object_id != ''585e5705f3e9867''\n\n        ', '', '2017-03-16 18:42:49'),
('58ca49025109f91', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:42:50'),
('58ca490251faa90', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:42:50'),
('58ca4902526e179', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:42:50'),
('58ca4905990defe', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:42:53'),
('58ca4905994bd4d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:42:53'),
('58ca4905996c76a', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:42:53'),
('58ca49075cc95ee', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:42:55'),
('58ca49075d0ba2d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:42:55'),
('58ca49075d2f818', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:42:55'),
('58ca492bdc556f6', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:43:31'),
('58ca492bdc9851f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:43:31'),
('58ca492bdcbbef3', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:43:31'),
('58ca496e6ff38d4', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''nucalculator''\n        AND zzzzsys_object_id != ''585e5705f3e9867''\n\n        ', '', '2017-03-16 18:44:38'),
('58ca496ed90c978', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:44:38'),
('58ca496ed9aa5ca', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:44:38'),
('58ca496eda5efea', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:44:38'),
('58ca497e3a9df26', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:44:54'),
('58ca497e3b0d4ea', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:44:54'),
('58ca497e3b40adb', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:44:54'),
('58ca497f1646e28', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:44:55'),
('58ca497f16913f6', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:44:55'),
('58ca497f16b7cbf', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:44:55'),
('58ca498156a4763', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:44:57'),
('58ca498156ece58', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:44:57'),
('58ca49815710bd9', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:44:57'),
('58ca49829804a36', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:44:58'),
('58ca49829852437', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:44:58'),
('58ca4982987b723', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:44:58'),
('58ca49944733bcc', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:45:16'),
('58ca4994477d27c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:45:16'),
('58ca499447a734f', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:45:16'),
('58ca49b8584e93f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:45:52'),
('58ca49b8589c7b8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:45:52'),
('58ca49b858c35f6', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:45:52'),
('58ca49e95affa49', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:46:41'),
('58ca49e95b3fd81', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:46:41'),
('58ca49e95b616af', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:46:41'),
('58ca49eb3596456', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:46:43'),
('58ca49eb35d951c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:46:43'),
('58ca49eb36013be', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:46:43'),
('58ca4a00e9a8144', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:47:04'),
('58ca4a00e9ebcb5', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:47:04'),
('58ca4a00ea0ff21', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(inp.sob_all_id, ''.'', su.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:47:04'),
('58ca4a2385654b3', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''add_total''\n        AND zzzzsys_object_id != ''58c9c520001fff6''\n\n        ', '', '2017-03-16 18:47:39'),
('58ca4a23eabf6c3', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:47:39'),
('58ca4a23eb02804', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:47:39'),
('58ca4a23eb26b7e', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:47:39'),
('58ca4a25a2d26f8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:47:41'),
('58ca4a25a31fa3d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:47:41'),
('58ca4a25a346ac4', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:47:41'),
('58ca4a26b82b842', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:47:42'),
('58ca4a26b87bd02', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:47:42'),
('58ca4a26b8a23fb', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:47:42'),
('58ca4a29354a1ad', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:47:45'),
('58ca4a293595ec0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:47:45'),
('58ca4a2935b9448', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:47:45'),
('58ca4a2bdef4d6b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:47:47'),
('58ca4a2bdf37e85', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:47:47'),
('58ca4a2bdf5be61', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:47:47'),
('58ca4a605396e3d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:48:40'),
('58ca4a6053d77cb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:48:40'),
('58ca4a6053f9b99', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:48:40'),
('58ca4a665e840de', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:48:46'),
('58ca4a665ec728e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:48:46'),
('58ca4a665ee8766', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:48:46'),
('58ca4a6ad0735d4', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:48:50'),
('58ca4a6ad0b6d05', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:48:50'),
('58ca4a6ad0db62c', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:48:50'),
('58ca4a6f4dcc87a', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:48:55'),
('58ca4a6f4e0d36e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:48:55'),
('58ca4a6f4e2fb1c', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:48:55'),
('58ca4a75378745c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:49:01'),
('58ca4a7537d7540', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:49:01'),
('58ca4a7538027f4', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:49:01'),
('58ca4a8e4b9ceb7', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:49:26'),
('58ca4a8e4bee2a3', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:49:26'),
('58ca4a8e4c15347', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:49:26'),
('58ca4aab6723f25', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:49:55'),
('58ca4aab676ed07', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:49:55'),
('58ca4aab6796a41', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:49:55'),
('58ca4ab50ce949b', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''add_total''\n        AND zzzzsys_object_id != ''58c9c520001fff6''\n\n        ', '', '2017-03-16 18:50:05'),
('58ca4ab57796b88', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:50:05'),
('58ca4ab577eee89', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:50:05'),
('58ca4ab5781ecc9', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:50:05'),
('58ca4abac872c09', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:50:10'),
('58ca4abac8b6dc3', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:50:10'),
('58ca4abac8d9ef5', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:50:10'),
('58ca4abc89ef904', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:50:12'),
('58ca4abc8a68a65', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:50:12'),
('58ca4abc8a9fe6f', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:50:12'),
('58ca4ac29e35f85', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:50:18'),
('58ca4ac29e79de6', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:50:18'),
('58ca4ac29e9eb70', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:50:18'),
('58ca4acd94d78ff', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''add_total''\n        AND zzzzsys_object_id != ''58c9c520001fff6''\n\n        ', '', '2017-03-16 18:50:29'),
('58ca4ace00d2ebd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:50:30'),
('58ca4ace019af67', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:50:30'),
('58ca4ace02413e4', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:50:30'),
('58ca4acf574be6e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:50:31'),
('58ca4acf5792fe8', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:50:31'),
('58ca4acf57b74a5', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:50:31'),
('58ca4ad07d6b630', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:50:32'),
('58ca4ad07daf393', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:50:32'),
('58ca4ad07dd5753', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:50:32'),
('58ca4ada11a520c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:50:42');
INSERT INTO `zzzzsys_debug` (`zzzzsys_debug_id`, `deb_message`, `deb_order`, `deb_added`) VALUES
('58ca4ada11ea9c0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:50:42'),
('58ca4ada120f909', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:50:42'),
('58ca4ae1dd69cda', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''add_total''\n        AND zzzzsys_object_id != ''58c9c520001fff6''\n\n        ', '', '2017-03-16 18:50:49'),
('58ca4ae25714b4e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:50:50'),
('58ca4ae257ade8c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:50:50'),
('58ca4ae2584cc25', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:50:50'),
('58ca4ae3e8cbb08', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:50:51'),
('58ca4ae3e90bc4a', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:50:51'),
('58ca4ae3e92e14e', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:50:51'),
('58ca4ae564b50e2', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:50:53'),
('58ca4ae56502445', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:50:53'),
('58ca4ae5652b57b', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:50:53'),
('58ca4b18a098a97', 'BE', '', '2017-03-16 18:51:44'),
('58ca4b197ac1bf3', 'BE', '', '2017-03-16 18:51:45'),
('58ca4b1f3428942', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:51:51'),
('58ca4b1f346e489', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:51:51'),
('58ca4b1f34930d0', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:51:51'),
('58ca4b4fe699eb7', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 18:52:39'),
('58ca4b4fe6ea9aa', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 18:52:39'),
('58ca4b4fe7164fe', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 18:52:39'),
('58ca4d893622e19', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:02:09'),
('58ca4d8936641dd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:02:09'),
('58ca4d8936868f1', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:02:09'),
('58ca4d8a0cacb21', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:02:10'),
('58ca4d8a0cf058d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:02:10'),
('58ca4d8a0d250d0', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:02:10'),
('58ca4ea464a1f6a', 'BE', '', '2017-03-16 19:06:52'),
('58ca4ea5cfae850', 'BE', '', '2017-03-16 19:06:53'),
('58ca4edf5b536bd', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:07:51'),
('58ca4edf5b93107', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:07:51'),
('58ca4edf5bb5882', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:07:51'),
('58ca4ee2e67c3eb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:07:54'),
('58ca4ee2e6c6260', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:07:54'),
('58ca4ee2e6edb0e', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:07:54'),
('58ca4ef69e137fb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:08:14'),
('58ca4ef69e574d4', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:08:14'),
('58ca4ef69e7cc00', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:08:14'),
('58ca4f0b8f7ccd0', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''add_total''\n        AND zzzzsys_object_id != ''58c9c520001fff6''\n\n        ', '', '2017-03-16 19:08:35'),
('58ca4f0bf2c720a', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:08:35'),
('58ca4f0bf3d1a05', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:08:35'),
('58ca4f0c005e1a0', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:08:36'),
('58ca4f14a32baf3', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:08:44'),
('58ca4f14a36f285', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:08:44'),
('58ca4f14a3a0190', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:08:44'),
('58ca4f2e89ee5d4', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:09:10'),
('58ca4f2e8a34566', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:09:10'),
('58ca4f2e8a58cb0', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:09:10'),
('58ca4f68b529caf', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:10:08'),
('58ca4f68b582c9b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:10:08'),
('58ca4f68b5aea4e', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:10:08'),
('58ca4f7fc35bc8d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:10:31'),
('58ca4f7fc3cb92e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:10:31'),
('58ca4f7fc415dd5', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:10:31'),
('58ca4f9f42ea708', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:11:03'),
('58ca4f9f433020c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:11:03'),
('58ca4f9f435e8fc', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:11:03'),
('58ca4fa65a2aed1', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''add_total''\n        AND zzzzsys_object_id != ''58c9c520001fff6''\n\n        ', '', '2017-03-16 19:11:10'),
('58ca4fa6bda4071', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:11:10'),
('58ca4fa6bde8c73', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:11:10'),
('58ca4fa6be172fa', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:11:10'),
('58ca4fb70f1578c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:11:27'),
('58ca4fb70f5b23b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:11:27'),
('58ca4fb70f8b756', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:11:27'),
('58ca4fd20384132', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:11:54'),
('58ca4fd203d13c2', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:11:54'),
('58ca4fd204027d3', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:11:54'),
('58ca4fe118bfcdb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:12:09'),
('58ca4fe1190444d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:12:09'),
('58ca4fe11931f44', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:12:09'),
('58ca4feef014a1e', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''add_total''\n        AND zzzzsys_object_id != ''58c9c520001fff6''\n\n        ', '', '2017-03-16 19:12:22'),
('58ca4fef686756c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:12:23'),
('58ca4fef68babe5', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:12:23'),
('58ca4fef68ebc52', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:12:23'),
('58ca4ff1673074e', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:12:25'),
('58ca4ff16772671', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:12:25'),
('58ca4ff1679eb6d', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:12:25'),
('58ca4ff315ae378', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:12:27'),
('58ca4ff316043ec', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:12:27'),
('58ca4ff31636527', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:12:27'),
('58ca4ff7e98a163', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:12:31'),
('58ca4ff7e9da68f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:12:31'),
('58ca4ff7ea0e1f4', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:12:31'),
('58ca50030245aaf', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''add_total''\n        AND zzzzsys_object_id != ''58c9c520001fff6''\n\n        ', '', '2017-03-16 19:12:43'),
('58ca500371525b9', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:12:43'),
('58ca50037197593', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:12:43'),
('58ca500371c86cd', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:12:43'),
('58ca50065083814', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:12:46'),
('58ca500650c4e95', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:12:46'),
('58ca500650f34b3', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:12:46'),
('58ca5008501bb3f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:12:48'),
('58ca50085062f92', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:12:48'),
('58ca50085091e89', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:12:48'),
('58ca500f57ad3a6', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:12:55'),
('58ca500f57f2b43', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:12:55'),
('58ca500f5826730', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:12:55'),
('58ca50186084040', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''add_total''\n        AND zzzzsys_object_id != ''58c9c520001fff6''\n\n        ', '', '2017-03-16 19:13:04'),
('58ca5018c116dcb', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:13:04'),
('58ca5018c15c6f2', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:13:04'),
('58ca5018c195287', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:13:04'),
('58ca502509313db', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:13:17'),
('58ca50250984d57', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:13:17'),
('58ca502509c1ec9', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:13:17'),
('58ca5029cd6d106', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:13:21'),
('58ca5029cdae471', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:13:21'),
('58ca5029cdd9f2d', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:13:21'),
('58ca502b8564d0b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:13:23'),
('58ca502b85c7ef0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:13:23'),
('58ca502b8601194', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:13:23'),
('58ca5035798c0a7', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:13:33'),
('58ca503579d1b32', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:13:33'),
('58ca503579ffd8f', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:13:33'),
('58ca503c2144e30', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''nuobject''\n        AND sob_all_id = ''add_total''\n        AND zzzzsys_object_id != ''58c9c520001fff6''\n\n        ', '', '2017-03-16 19:13:40'),
('58ca503c88aa25c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:13:40'),
('58ca503c88ef303', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:13:40'),
('58ca503c891f5c1', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:13:40'),
('58ca503e8e7798d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:13:42'),
('58ca503e8ec51c0', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:13:42'),
('58ca503e8ef337b', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:13:42'),
('58ca50407a2ca90', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:13:44'),
('58ca50407a7a276', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:13:44'),
('58ca50407aab03e', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:13:44'),
('58ca50487cd380d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:13:52'),
('58ca50487d17e6d', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:13:52'),
('58ca50487d45914', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:13:52'),
('58ca506ab350123', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:14:26'),
('58ca506ab396168', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:14:26'),
('58ca506ab3c3a36', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:14:26'),
('58ca50a504bbf6a', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:15:25'),
('58ca50a5050f851', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:15:25'),
('58ca50a5053b259', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:15:25'),
('58ca50a70d21078', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:15:27'),
('58ca50a70d6ae80', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:15:27'),
('58ca50a70d9993d', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:15:27'),
('58ca50c32a01059', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:15:55'),
('58ca50c32a45fa7', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:15:55'),
('58ca50c32a72abe', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:15:55'),
('58ca50c3ec29529', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:15:55'),
('58ca50c3ec6e404', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:15:55'),
('58ca50c3ec9cb33', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:15:55'),
('58ca50e0c2a8476', ' sql \n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''56773cb405f4913''\n        AND sob_all_id = ''com_suburb''\n        AND zzzzsys_object_id != ''5678992c5432850''\n\n        ', '', '2017-03-16 19:16:24'),
('58ca50e1324836f', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:16:25'),
('58ca50e1329ac27', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:16:25'),
('58ca50e132d0ea5', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:16:25'),
('58ca50ef44d9c7c', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:16:39'),
('58ca50ef45243f4', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:16:39'),
('58ca50ef4557b9a', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:16:39'),
('58ca50fae750454', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '2017-03-16 19:16:50'),
('58ca50fae79db0b', 'sqql :SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', '', '2017-03-16 19:16:50'),
('58ca50fae7cdc25', 'sqql :SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', '', '2017-03-16 19:16:50');

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
('58c465508d50619', '58c465508d4fc64', 'onclick', 'nuPopPHP(event, ''BB'');'),
('57620c455b19815', '575a3f7001496b0', 'onchange', 'nuSetHash(''delete_option'', this.value);'),
('58c8f16d6d462b2', '5716e2428f5e8fb', 'afterinsertrow', '$("[id$=''sev_javascript'']").addClass(''js'')'),
('5811633909ef4fb', '5811633909eeadd', 'onclick', 'nuPopPHP(event, ''BE'');'),
('58116941a1a294e', '58116941a1a1f06', 'onclick', 'nuPopPHP(event, ''BS'');'),
('58116968afd6467', '58116968afd5b6a', 'onclick', 'nuPopPHP(event, ''AS'');'),
('581169ba21137b1', '581169ba2112f38', 'onclick', 'nuPopPHP(event, ''BD'');'),
('581169d91b9db26', '581169d91b9d203', 'onclick', 'nuPopPHP(event, ''AD'');'),
('58117aed5514341', '58117aed5513a01', 'onclick', 'nuPopPHP(event, ''BB'');'),
('5811808723dc0a2', '5811808723db54b', 'onclick', 'nuPopPHP(event, ''AB'');'),
('581a4d665798ede', '581a4d665798263', 'onclick', 'nuPreview()'),
('582c013be5d3a06', '570b00aa9ff6b8d', 'onkeydo', 'nuFORM.scrollList(event, nuFORM.tableFields($(''#sfo_table'').val()))'),
('582ce6036518741', '570b1abae987b02', 'onkeyd', 'nuFORM.scrollList(event, nuFORM.SQLFields($(''#sfo_browse_sql'').val() + '' ''))'),
('583369c65550588', '570dabca9be44fd', 'onkeydown', 'nuFORM.scrollList(event, nuFORM.tableFields($(''#sob_lookup_table'').val()));'),
('583369e5667549f', '570dabf5a2e2b8f', 'onkeydown', 'nuFORM.scrollList(event, nuFORM.tableFields($(''#sob_lookup_table'').val()));'),
('583f37bc5bbb100', '583f37bc5bba917', 'onkeydown', 'nuFORM.scrollList(event, window.nuObjectFields);'),
('584de442bfbdd00', '584de442bfbd456', 'onclick', 'nuPopJS()'),
('58a64574544a72d', '56789912d6d9ddb', 'onkeydown', 'nuFORM.scrollList(event, [0,1,2])'),
('58b0d4a60b9c172', '58aff2b35cd9963', 'onchange', 'nuSetFormatType(1)'),
('58b7528ca48fb83', '58b7528ca48f0ad', 'onclick', 'nuPreview(1)'),
('58b418c77ac29e0', '58b418c77ac1ea8', 'onchange', 'nuSetNumber();'),
('58b208c7ba09945', '570da149b76e0e6', 'onchange', 'nuShowInputJS(this.value)'),
('58c713936cebaa7', '58c713936ceb168', 'onclick', 'nuPopPHP(event, ''BB'');'),
('58c81c6f8eaeeb4', '58c81c6f8eae3dd', 'onclick', 'nuPopPHP(event, ''BB'');'),
('58ca47b5d025130', '58c9c520001fff6', 'onchange', 'nuAddCalcObject()');

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
  `sfo_browse_redirect_form_id` varchar(300) NOT NULL,
  `sfo_browse_row_height` int(11) NOT NULL,
  `sfo_browse_rows_per_page` int(11) NOT NULL,
  `sfo_browse_sql` text NOT NULL,
  `sfo_javascript` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_form`
--

INSERT INTO `zzzzsys_form` (`zzzzsys_form_id`, `sfo_type`, `sfo_code`, `sfo_description`, `sfo_table`, `sfo_primary_key`, `sfo_browse_redirect_form_id`, `sfo_browse_row_height`, `sfo_browse_rows_per_page`, `sfo_browse_sql`, `sfo_javascript`) VALUES
('56773cb405f4913', 'browseedit', 'COM', 'Company', 'company', 'company_id', '', 0, 0, 'SELECT * FROM company\r\nLEFT JOIN business ON business_id = com_business_id', '\nfunction sftest(){\n\n    var bob = 9;\n\n}'),
('5678ab2c48c5c41', 'edit', 'EMP', 'Employee Subform', 'employee', 'employee_id', '', 0, 0, 'SELECT * FROM employee\nWHERE employee_id = ''5678d416056e635''', ''),
('568b508eec00d80', 'browseedit', 'BUS', 'Business', 'business', 'business_id', '', 0, 4, 'SELECT * FROM business', ''),
('nuhome', 'launch', 'HOME', 'Home', '', '', '', 0, 0, '', '$(''.nuActionButton'').hide();'),
('56c513162acd102', 'edit', 'CHI', 'Children', 'children', 'children_id', '', 0, 0, 'SELECT * FROM employee', ''),
('nubrowse', 'subform', 'FRMBR', 'Form Browse Subform', 'zzzzsys_browse', 'zzzzsys_browse_id', '', 0, 0, 'SELECT * FROM zzzzsys_browse\nORDER BY sbr_order\n', ''),
('nutab', 'browseedit', 'TAB', 'Form Tab', 'zzzzsys_tab', 'zzzzsys_tab_id', '', 0, 0, 'SELECT * FROM zzzzsys_tab\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\nORDER BY syt_order', '\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.innerHTML);\n});\n'),
('nuobject', 'browseedit', 'OBJECT', 'Object', 'zzzzsys_object', 'zzzzsys_object_id', '', 0, 0, 'SELECT * FROM zzzzsys_object\nJOIN zzzzsys_tab ON zzzzsys_tab_id = sob_all_zzzzsys_tab_id\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id \n', '\n$(''#zzzzsys_event_sfsev_javascript'').attr(''id'',''jsfuntitle'');\n$(''#sob_calc_formula'').addClass(''nuCalculatorCurrency'').css(''font-size'', 12);\n$(''#sob_all_display_condition'').addClass(''sql'');\n$(''#sob_all_default_value_sql'').addClass(''sql'');\n$(''#sob_display_sql'').addClass(''sql'');\n$(''#sob_select_sql'').addClass(''sql'');\n$(''#sob_lookup_php'').addClass(''php'');\n$(''#sob_lookup_javascript'').addClass(''js'');\n$(''#sob_input_javascript'').addClass(''js'');\n$(''#sob_html_code'').addClass(''html'');\n$("[id$=''sev_javascript'']").addClass(''js'');\n\nvar v           = $(''#sob_input_type'').val();\n\nnuShowInputJS(v);\nnuHideCalcObjects();\n\nnuSetTitle($(''#sob_all_id'').val());\n\n$(''.js'').dblclick(function() {nuOpenAce(''Javascript'', this.id);});\n$(''.sql'').dblclick(function() {nuOpenAce(''SQL'', this.id);});\n$(''.html'').dblclick(function() {nuOpenAce(''HTML'', this.id);});\n$(''.php'').dblclick(function() {nuOpenAce(''PHP'', this.id);});\n\nnuObjectColor();\n\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.textContent);\n});\n\nnuHide(''sob_input_format'');\n\nvar sit = $(''#sob_input_type'').val();\n\nif(sit == ''nuDate'' || sit == ''nuNumber''){\n    nuShow(''sob_input_format'');\n}\n\nif(sit == ''nuScroll''){\n    nuShow(''sob_input_javascript'');\n}else{\n    nuHide(''sob_input_javascript'');\n}\n\n\n\nfunction nuObjectColor(){\n\n    $(''.nuValidate'').removeClass(''nuValidate'');\n\n	var o			= [];\n	o[''run'']		= 1;\n	o[''display'']	= 2;\n	o[''select'']		= 3;\n	o[''lookup'']		= 4;\n	o[''subform'']	= 5;\n	o[''input'']		= 6;\n	o[''html'']		= 7;\n	o[''calc'']		= 8;\n\n    $(''#sob_all_type'').addClass(''nu_''+$(''#sob_all_type'').val());\n    \n    $("#sob_all_type > option").each(function() {\n        $(this).addClass(''nu_''+this.value);\n    });\n	\n    var t   = o[$(''#sob_all_type'').val()];\n    \n    $("[id^=''nuTab'']").removeClass(''nuRelatedTab'');\n    \n    for(var i = 1 ; i < o.length ; i++){\n        $(''#nuTab'' + i).removeClass(''nuRelatedTab'');\n    }\n    \n    $(''#nuTab0'').addClass(''nuRelatedTab'');\n    $(''#nuTab'' + t).addClass(''nuRelatedTab'');\n    \n} \n\nfunction nuChooseEventList(){\n\n    if($(''#sob_all_type'').val() == ''subform''){\n        \n        return [''onchange'',''beforeinsertrow'',''afterinsertrow'', ''ondelete''];\n    \n    }else{\n        \n        return [''onblur'',''onclick'',''onchange'',''onfocus'',''onkeydown''];\n    \n    }\n\n}\n\n\n\nfunction nuAddToFormula(e){\n    \n    var fld = e.target.innerHTML;\n    var frm = $(''#sob_calc_formula'').val();\n\n    if(fld == ''Clear''){\n        \n        $(''#sob_calc_formula'')\n        .val('''')\n        .addClass(''nuEdited'');\n        return;\n        \n    }\n\n    $(''#sob_calc_formula'')\n    .addClass(''nuEdited'')\n    .val(frm + fld);\n    \n}\n\nfunction nuShowInputJS(t){\n\n    nuHide(''sob_input_format'');\n    nuHide(''sob_input_javascript'');\n    \n    if(t == ''nuScroll''){\n        nuShow(''sob_input_javascript'');\n    }\n    \n    if(t == ''nuDate'' || t == ''nuNumber''){\n        \n        nuShow(''sob_input_format'');\n\n        $(''#sob_input_format'').children().each(function(index) {\n            \n            $(this).show();\n            \n            if($(this).val()[0] == ''D'' && t != ''nuDate'')   {$(this).hide();}\n            if($(this).val()[0] == ''N'' && t != ''nuNumber'') {$(this).hide();}\n            \n        });\n        \n    }\n    \n}\n\n\nfunction nuHideCalcObjects(){\n\n    var f   = $(''#sob_all_zzzzsys_form_id'').val();\n\n    $(''#add_total'').children().each(function(index) {\n\n        if($(this).val() != f){\n            $(this).hide();\n        }\n\n    });\n    \n}\n\n\nfunction nuAddCalcObject(){\n    \n    var f   = $(''#sob_calc_formula'').val();\n    var t   = $(''#add_total :selected'').text();\n    var s   = f + "nuTotal(''" + t + "'')";\n    \n    $(''#sob_calc_formula'').val(s);\n    $(''#add_total'').val('''');\n    \n}\n'),
('nuff', 'browseedit', 'FF', 'Fast Form', 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 0, 'SELECT * FROM zzzzsys_form', '    \n    $(''#obj_sfscrollDiv'').on(''dragover'', function(e){\n    \n    if (e.preventDefault) {\n        e.preventDefault();\n    }\n    \n    return false;\n    \n    });\n    \n    $(''#obj_sfscrollDiv'').on(''dragenter'', function(e){\n\n        $(this).css(''border-width'', 4);\n        \n        var pre             = ''#obj_sf'' + nuPad3(nuFORM.subform(''obj_sf'').rows.length - 1)\n        $(pre + ''sob_all_id'').focus();\n        \n    });\n    \n    $(''#obj_sfscrollDiv'').on(''dragleave'', function(e){\n        $(this).removeClass(''nuDragIn'');\n    });\n    \n    \n    $(''#obj_sfscrollDiv'').on(''drop'', function(e){\n        \n        e.preventDefault();\n        \n        e.dataTransfer      = e.originalEvent.dataTransfer;\n        var pre             = ''#obj_sf'' + nuPad3(nuFORM.subform(''obj_sf'').rows.length - 1)\n        var id              = e.dataTransfer.getData(''id'');\n        var label           = e.dataTransfer.getData(''label'');\n        var field_name      = e.dataTransfer.getData(''field_name'');\n        var Class           = ''nu_'' + e.dataTransfer.getData(''Class'');\n        \n        $(pre + ''custom_id'').val(id).addClass(Class);\n        $(pre + ''sob_all_label'').val(label).addClass(Class);\n        $(pre + ''sob_all_id'').val(field_name).addClass(Class).focus().change();\n        \n    });\n    \n\n'),
('nuevent', 'edit', 'EVE', 'Object Events', 'zzzzsys_event', 'zzzzsys_event_id', '', 0, 0, 'SELECT * FROM zzzzsys_event', ''),
('nuaccess', 'browseedit', 'ACC', 'Access Levels', 'zzzzsys_access_level', 'zzzzsys_access_level_id', '', 0, 0, 'SELECT * FROM zzzzsys_access_level\nORDER BY sal_code\n', 'nuSetTitle($(''#sal_code'').val());'),
('nunonsystemform', 'edit', 'FORMZ', 'nuBuilder non-System Form', 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 0, 'SELECT * FROM zzzzsys_form\nORDER BY sfo_code', ''),
('nuaccessforms', 'edit', 'ACCFRM', 'Accessible Forms', 'zzzzsys_access_level_form', 'zzzzsys_access_level_form_id', '', 0, 0, 'SELECT * FROM zzzzsys_access_level_form\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = slf_zzzzsys_form_id\nORDER BY sfo_code\n', ''),
('nuusergroup', 'browseedit', 'ACCGRP', 'Access Group', 'business', 'business_id', '', 0, 0, 'SELECT * FROM zzzzsys_user_group\nLEFT JOIN zzzzsys_form ON sug_zzzzsys_form_id = zzzzsys_form_id\nORDER BY sug_code', ''),
('nuuser', 'browseedit', 'ACCUSE', 'User', 'zzzzsys_user', 'zzzzsys_user_id', '', 0, 15, 'SELECT * \nFROM zzzzsys_user \nLEFT JOIN zzzzsys_user_group ON sus_zzzzsys_user_group_id = zzzzsys_user_group_id \nORDER BY sus_name', ''),
('nubuildreport', 'browseedit', 'BLDREP', 'Build Report', 'zzzzsys_report', 'zzzzsys_report_id', '', 0, 0, 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', '//-- hidden field set to class - nuEdited (generally ignored except when editing Reports)\n\n$(''#sre_layout'').addClass(''nuEdited''); \n'),
('nuphp', 'browseedit', 'PHPCODE', 'PHP Code', 'zzzzsys_php', 'zzzzsys_php_id', '', 0, 0, 'SELECT * FROM zzzzsys_php\r\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id\r\nWHERE sph_system != 1\r\nORDER BY sph_code\r\n', '\n$(''#sph_php'').addClass(''php'');\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n\nif($(''#lib_sf000spl_library_zzzzsys_php_idcode'').val() != ''''){ //-- uses libraries\n\n    $(''#nuTab2'').addClass(''nuRelatedTab'');\n    \n}\n\nif(window.filter == ''justphp''){\n\n    var ev      = [];\n    ev[''BB'']    = ''Before Browse'';\n    ev[''BE'']    = ''Before Edit'';\n    ev[''BS'']    = ''Before Save'';\n    ev[''AS'']    = ''After Save'';\n    ev[''BD'']    = ''Before Delete'';\n    ev[''AD'']    = ''After Delete'';\n    ev[''AB'']    = ''After Browse'';\n    \n    var e       = ev[nuFORM.getCurrent().record_id.substr(-2)];\n    var f       = $(''#sfo_description'', window.parent.document).val();\n\n    if(e == ''After Browse''){\n        var f   = $(''#sob_all_label'', window.parent.document).val();\n    }\n    \n\n    $(''#nuTab0'').remove();\n    $(''#nuTab2'').remove();\n    $(''#nuTab1'').click();\n    $(''#nu_bc_0'').html(''<b>'' + e + ''</b> for : '' + f);\n    $(''#sph_code'').val(''SYS'')\n    $(''#sph_description'').val(''System PHP'')\n    \n}\n\n'),
('nublank', 'launch', 'BLA', 'Blank', '', '', '', 0, 0, '', 'var reportID    = nuFORM.current.record_id;\r\n\r\n$(''#nuTab0'').hide();\r\n\r\n$(''.nuActionHolder'').css(''text-align'',''center'');\r\n\r\nnuAppendActionButton(''Print'',"nuRunReport(''" + reportID + "'');");\r\nnuAppendActionButton(''Email'',"nuEmailReport(''" + reportID + "'');");\r\n\r\n\r\n\r\n'),
('nuaccessgroup', 'subform', 'GAL', 'Groups Access Level', 'zzzzsys_user_group_access_level', 'zzzzsys_user_group_access_level_id', '', 0, 0, 'SELECT * FROM zzzzsys_user_group_access_level', ''),
('nurunlist', 'browse', 'RUN', 'Run Form, Report or Procedure', 'zzzzsys_run_list', 'id', '', 0, 0, 'SELECT zzzzsys_form_id AS id, ''Form'' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_run_list', '\n$("[data-nu-column=''nucolumn000'']").each(function() {\n\n    $(this).addClass(''nu_''+this.innerHTML);\n\n});'),
('nudebug', 'browseedit', 'DEBUG', 'Debug', 'zzzzsys_debug', 'zzzzsys_debug_id', '', 50, 13, 'SELECT * FROM zzzzsys_debug\nORDER BY zzzzsys_debug_id DESC', '$(''#delete_option'').val(0);'),
('nuaccessreport', 'browseedit', 'ACCPHP', 'Access To Procedures', 'zzzzsys_access_level_php', 'zzzzsys_access_level_php_id', '', 0, 0, 'SELECT * \nFROM zzzzsys_access_level_php\nJOIN zzzzsys_php ON zzzzsys_php_id = slp_zzzzsys_php_id\nORDER BY sph_code', ''),
('nuaccesslevelreport', 'browseedit', 'ACCREP', 'Access To Report', 'zzzzsys_access_level_report', 'zzzzsys_access_level_report_id', '', 0, 0, 'SELECT * \nFROM zzzzsys_access_level_report\nJOIN zzzzsys_report ON zzzzsys_report_id = sre_zzzzsys_report_id\nORDER BY sre_code', ''),
('nurunreport', 'browseedit', 'RUNREP', 'Run Report', 'zzzzsys_report', 'zzzzsys_report_id', '', 0, 0, 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', 'window.nuTYPE = ''runreport'';\n\nfunction runreport(e){\n    \n    var r   = $(''#'' + e.target.id).attr(''data-nu-row'');\n    var c   = ''000'';\n    var f   = $(''#'' + r + c).html();\n    var p   = $(''#'' + e.target.id).attr(''data-nu-primary-key'');\n\n    nuGetPDF(f, p);\n    \n}\n\n'),
('nurunphp', 'browseedit', 'RUNPHP', 'Run PHP Code', 'zzzzsys_php', 'zzzzsys_php_id', '', 0, 0, 'SELECT * FROM zzzzsys_php\nJOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id\nWHERE sph_system != ''1''', 'window.nuTYPE = ''getphp'';\n\nfunction getphp(e){\n    \n    var r   = $(''#'' + e.target.id).attr(''data-nu-row'');\n    var c   = ''000'';\n    var p   = $(''#'' + r + c).html();\n    var f   = $(''#'' + e.target.id).attr(''data-nu-primary-key'');\n\n    nuGetPHP(p, f);\n\n}\n'),
('577b4d78ef9a2a0', 'launch', 'test', 'test', '', '', '', 0, 0, '', ''),
('nulaunchdates', 'launch', '2DATES', 'Between 2 Dates', '', '', '', 0, 0, '', ''),
('nutimezone', 'browse', 'ZONE', 'Time Zone', 'zzzzsys_timezone', 'zzzzsys_timezone_id', '', 0, 0, 'SELECT * \nFROM zzzzsys_timezone\nORDER BY stz_timezone', ''),
('nusetup', 'edit', 'SET', 'Setup', 'zzzzsys_setup', 'zzzzsys_setup_id', '', 0, 0, '', '$(''#set_header'').addClass(''js'');\n  \n$(''.js'').dblclick(function() {\n	nuOpenAce(''Javascript'', this.id);\n});\n\n'),
('nutranslate', 'browseedit', 'LANG', 'Language Translation', 'zzzzsys_translate', 'zzzzsys_translate_id', '', 0, 0, 'SELECT * \nFROM zzzzsys_translate\nORDER BY trl_language, trl_english', ''),
('nupassword', 'edit', 'PASS', 'Change Password', 'zzzzsys_user', 'zzzzsys_user_id', '', 0, 0, 'SELECT * FROM zzzzsys_user\nJOIN zzzzsys_user_group ON sus_zzzzsys_user_group_id = zzzzsys_user_group_id\nORDER BY sus_name', '$(''#nuTab0'').hide();'),
('nuphplibrary', 'subform', 'PHPLIB', 'PHP Code Library', 'zzzzsys_php_library', 'zzzzsys_php_library_id', '', 0, 0, 'SELECT * FROM zzzzsys_php_library\nLEFT JOIN zzzzsys_php ON zzzzsys_php_id = spl_zzzzsys_php_id\nORDER BY sph_code\n', '$(''#sph_php'').addClass(''php'');\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n'),
('57edbac65e1c52a', 'launch', 'CR', 'company_report', 'company', 'company_id', '', 0, 0, '', ''),
('nuerror', 'edit', 'ERROR', 'Error Form', 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 0, '', '$(''#error'').hide(); \n$(''#nuTabHolder'').hide(); \n$(''#nuBreadcrumbHolder'').hide(); \n$(''#nuActionHolder'').hide();  \n\nfor(i = 0; i < window.nuFORM.getCurrent().filter.length; i++) {  	\n\n	$(''#nuRECORD'').append(''<div id="errorMessage'' + i + ''" style="margin: 10px"><span class="fake-link">''+window.nuFORM.getCurrent().filter[i][0]+''</span></div>''); 	\n	\n	$(''#errorMessage'' + i).click({\n		param1: window.nuFORM.getCurrent().filter[i][1]}, nuCloseAndFocus\n	); 	 \n	\n}  \n\nfunction nuCloseAndFocus(event) {  	\n\n	if(event.data.param1 != '''') {\n		$(''#'' + event.data.param1, window.parent.document).focus(); 	\n	}\n	\n	$(''#dialogClose'', window.parent.document).click(); \n	\n}'),
('nuffcustomobjects', 'browse', 'FFCO', 'Fast Form Custom Objects', 'zzzzsys_object', 'zzzzsys_object_id', '', 0, 10, 'SELECT *\nFROM zzzzsys_object\n', '\n$("[data-nu-column=''nucolumn003'']").each(function() {\n    $(this).addClass(''nu_'' + this.textContent);\n});\n\n$(''.nuBrowseTable'').attr(''draggable'', ''true'');\n\n$(''#nuBreadcrumbHolder'').remove();\n\nwindow.nuTYPE = ''nuSelectCustomObject'';\n\n\n//$(''.nuBrowseTable'').on(''dragstart'', ''nuSetDataTransfer'');\n\n$(''.nuBrowseTable'').on(''dragstart'', function(event){\n    nuSetDataTransfer(event);\n});\n\n\n$(''.nuBrowseTable'').on(''drag'', function(event){\n    console.log(event.currentTarget.id);\n});\n\n\nfunction nuSetDataTransfer(e){\n    \n	var row                         = $(''#'' + e.target.id).attr(''data-nu-row'');\n	var field_name                  = $(''#'' + row + ''001'').html();\n	var label                       = $(''#'' + row + ''002'').html();\n	var Class                       = $(''#'' + row + ''003'').html();\n	var id                          = $(''#'' + e.target.id).attr(''data-nu-primary-key'');\n\n    e.dataTransfer                  = e.originalEvent.dataTransfer;\n	e.dataTransfer.effectAllowed    = ''copy''; \n	e.dataTransfer.setData(''id'', id);\n    e.dataTransfer.setData(''label'', label);\n    e.dataTransfer.setData(''field_name'', field_name);\n    e.dataTransfer.setData(''Class'', Class);\n\n	var i                           = document.createElement(''img'');\n    i.src                           = Class + ''.png'';\n    i.width                         = 20;\n    \n    e.dataTransfer.setDragImage(i,3,3);\n    \n}\n\n\n\n'),
('nuffobjects', 'subform', 'FFO', 'Fast Form Objects', 'zzzzsys_object', 'zzzzsys_object_id', '', 0, 0, 'SELECT * FROM zzzzsys_object\nJOIN zzzzsys_tab ON zzzzsys_tab_id = sob_all_zzzzsys_tab_id\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\n', ''),
('nucalcobjects', 'browse', 'CALC', 'Calc values On This Form And Its Subforms', '#TABLE_ID#', 'thevalue', '', 0, 4, 'SELECT * FROM #TABLE_ID#', '\nwindow.nuTYPE = ''nuSelectCalcField'';\n\nfunction nuSelectCalcField(e){\n\n    var row = e.target.id.substr(0,8);\n    var fld = $(''#'' + row + ''003'').html();\n    var frm = $(''#sob_calc_formula'', parent.window.document).val();\n\n    $(''#sob_calc_formula'', parent.window.document)\n    .val(frm + ''nuTotal("'' + fld + ''")'')\n    .trigger(''change'');\n\n}\n\n'),
('58a08a1abc4782c', 'browseedit', 'INV', 'Invoice', 'invoice', 'invoice_id', '', 0, 0, 'SELECT * FROM invoice', ''),
('58a08a91c9b59a9', 'subform', 'ITE', 'Invoice Items', 'invoice_item', 'invoice_item_id', '', 0, 0, 'SELECT * FROM invoice_item', ''),
('nuformat', 'browseedit', 'FMT', 'Input Formats', 'zzzzsys_format', 'zzzzsys_format_id', '', 0, 0, 'SELECT * FROM zzzzsys_format', '\n$(''#currencysign'').hide().addClass(''nuCalculatorCurrency'');\n$(''#currencydecimals'').hide().addClass(''nuCalculatorCurrency'');\n$(''#srm_format'').addClass(''nuReadOnly nuCalculatorCurrency'').css(''font-size'', 12);\n$(''.nuWord'').css(''font-style'', ''bold'');\n\nnuSetFormatType();\n\n\nfunction nuAddToFormat(e){\n    \n    var v   = String(e.target.innerHTML);\n    \n    if(v == ''Space''){v   = '' '';}\n    \n    if($(''#srm_type'').val() == ''Date''){\n        \n        $(''#srm_format'')\n        .val($(''#srm_format'').val() + v)\n        .change();\n        \n    }else{\n        \n        var c   = String($(''#currencysign'').val()).trim();\n        var d   = String(Number($(''#currencydecimals'').val()));\n        \n        d       = d == ''NaN'' ? 0 : Number(d);\n        v       = d == 0 ? v.substr(0, v.length - 1) : v;\n        \n        $(''#srm_format'')\n        .val(c + '' '' + v + String(0).repeat(d))\n        .change();\n        \n    }\n    \n}\n\n\nfunction nuSetFormatType(a){\n\n    if(arguments.length == 1){\n        $(''#srm_format'').val('''');\n    }\n    \n    if($(''#srm_type'').val() == ''Date''){\n        \n        $(''#currencysign'').hide();\n        $(''#currencydecimals'').hide();\n        $(''.date'').show();\n        $(''.number'').hide();\n        \n    }\n    \n    if($(''#srm_type'').val() == ''Number''){\n        \n        $(''#currencysign'').show();\n        $(''#currencydecimals'').show();\n        $(''.date'').hide();\n        $(''.number'').show();\n\n    }\n    \n}\n\n\n\n'),
('nuformatcurrency', 'edit', 'FMTC', 'Format Currency', 'zzzzsys_format', 'zzzzsys_format_id', '', 0, 0, '', '$(''#sign'').focus();\n\n\n$(''#nuActionHolder'').remove();\n$(''#nuBreadcrumbHolder'').remove();\n$(''#nuTabHolder'').remove();\n\n\n\n\n\nfunction nuCreateCurrencyFormat(){\n    console.log(''in nuCreateCurrencyFormat()'');\n}\n'),
('nuform', 'browseedit', 'FORM', 'nuBuilder Form', 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 0, 'SELECT * FROM zzzzsys_form\nORDER BY sfo_code\n', '$(''#sfo_breadcrumb_title'').addClass(''sql'');\n$(''#sfo_browse_sql'').addClass(''sql'');\n$(''#sfo_javascript'').addClass(''js'');\n\nnuSetTitle($(''#sfo_table'').val());\n\n$(''.js'').dblclick(function() {\n	nuOpenAce(''Javascript'', this.id);\n});\n\n$(''.sql'').dblclick(function() {\n	nuOpenAce(''SQL'', this.id);\n});\n\n$(''.html'').dblclick(function() {\n	nuOpenAce(''HTML'', this.id);\n});\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n\n\nif(window.filter == ''justjs''){\n    \n    $(''#nuDelete'').remove();\n    $(''#nuClone'').remove();\n    $(''#nuTab0'').remove();\n    $(''#nuTab1'').remove();\n    $(''#nuTab2'').click();\n    $(''#nuTab2'').remove();\n    \n    nuSetTitle($(''#sfo_description'').val());\n    \n}\n\n\n\nfunction nuFormColor(){\n\n    var t   = String($(''#sfo_type'').val());\n    var pb  = $(''#previewbrowse'');\n    var pe  = $(''#previewedit'');\n    \n    pb.hide();\n    pe.hide();\n    \n    if(t == ''browse'')       {pb.show();}\n    if(t == ''edit'')         {pe.show();}\n    if(t == ''browseedit'')   {pb.show();pe.show();}\n    if(t == ''launch'')       {pe.show();}\n    if(t == ''subform'')      {pe.show();}\n\n    var h           = $(''#sfo_type'').addClass(''nuEdited'');\n    var o           = [];\n    o[''browse'']		= [0,1,2];\n    o[''edit''] 		= [0,2];\n    o[''browseedit''] = [0,1,2];\n    o[''launch''] 	= [0,2];\n    o[''subform'']    = [0,1];\n    \n    $(''#sfo_type'').removeClass();\n    $(''#sfo_type'').addClass(''nu_''+$(''#sfo_type'').val());\n    \n    if(h){\n        $(''#sfo_type'').addClass(''nuEdited'');\n    }\n    \n    $("#sfo_type > option").each(function() {\n        $(this).addClass(''nu_''+this.value);\n    });\n\n    for(var i = 0 ; i < 7 ; i++){\n        $(''#nuTab'' + i).removeClass(''nuRelatedTab'');\n    }\n    var t   = o[$(''#sfo_type'').val()];\n\n    if(t !== undefined){\n        \n    	for(var i = 0 ; i < t.length ; i++){\n    		$(''#nuTab'' + t[i]).addClass(''nuRelatedTab'');		\n    	}\n    	\n    }\n    \n}\n\nnuFormColor();\n\nnuBuildSubformArray(''zzzzsys_tab_sf'');\nnuBuildSubformArray(''zzzzsys_browse_sf'');\n\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.textContent);\n});\n\n\n\nfunction nuEventList(){\n	\n	if($(''sob_all_type'').val() == ''subform''){\n		return [''onchange'',''onadd''];\n	}else{\n		return [''onblur'',''onchange'',''onfocus'',''onkeydown''];\n	}\n	\n}\n\n\n'),
('58c86689b9af7fd', 'browseedit', 'FUN', 'Function List', 'zzzzsys_function', 'zzzzsys_function_id', '', 0, 0, 'SELECT * FROM zzzzsys_function', ''),
('58bf0b972c2a447', 'browseedit', 'TEST2', 'test_table', 'test_table', 'test_table_id', '', 0, 0, 'select * from test_table', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_format`
--

CREATE TABLE `zzzzsys_format` (
  `zzzzsys_format_id` varchar(25) NOT NULL,
  `srm_type` varchar(10) NOT NULL,
  `srm_format` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_format`
--

INSERT INTO `zzzzsys_format` (`zzzzsys_format_id`, `srm_type`, `srm_format`) VALUES
('58b365f46464016', 'Number', '$ 1,000.00'),
('58b1eaa88d2afe2', 'Number', '€ 1,000.00'),
('58b1054e651f494', 'Date', 'yyyy-mm-dd'),
('58b95515e58fe8f', 'Number', '£ 1000.0'),
('58bb3cba6ace513', 'Date', 'dd-mmm-yyyy'),
('58bd10d2a68fd8f', 'Date', 'mmmm'),
('58c039f8792cbf3', 'Date', 'dd, dddd mmmm yyyy');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_function`
--

CREATE TABLE `zzzzsys_function` (
  `zzzzsys_function_id` varchar(25) NOT NULL,
  `sfu_language` varchar(20) NOT NULL,
  `sfu_name` varchar(300) NOT NULL,
  `sfu_syntax` varchar(300) NOT NULL,
  `sfu_description` text NOT NULL,
  `sfu_sample` text NOT NULL,
  `sfu_see` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_function`
--

INSERT INTO `zzzzsys_function` (`zzzzsys_function_id`, `sfu_language`, `sfu_name`, `sfu_syntax`, `sfu_description`, `sfu_sample`, `sfu_see`) VALUES
('58c8e65c7ed6824', 'js', 'nuEnable', 'nuEnable( string )', 'Enable an Object on a nuBuilder Form.', 'if(phones == 2){\n    nuEnable(''com_phone2'');\n}\n', '[nuDisable](nuDisable)'),
('58c8e6acb396753', 'js', 'nuDisable', 'nuDisable( string )', 'Disable an Object on a nuBuilder Form.', 'if(phones == 2){\n    nuDisable(''com_phone2'');\n}\n', '[nuDisable](nuDisable)'),
('58c915497d0ab1b', 'js', 'nuSetTitle', 'nuSetTitle( string )', 'Changes the Title of the last breadcrumb.', 'nuSetTitle($(''#cus_name'').val());', ''),
('58c99a3bcf96e31', 'js', 'nuTotal', 'number = nuTotal( string )', 'string must be the id of a number Object on a Form eg. ''cus_total''.\n or\nTo add up a whole column on a subform, string join the subform id and the number field with a dot. eg ''invoice.ite_total''\n', 'var sale_total = nuTotal(''invoice.ite_total'');', '');

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
  `sob_all_table` varchar(300) NOT NULL,
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
  `sob_all_validate` varchar(1) NOT NULL,
  `sob_all_readonly` varchar(300) NOT NULL,
  `sob_all_display_condition` text NOT NULL,
  `sob_all_default_value_sql` text NOT NULL,
  `sob_all_fast_form_description` varchar(500) NOT NULL,
  `sob_calc_formula` varchar(300) NOT NULL,
  `sob_calc_format` varchar(300) NOT NULL,
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
  `sob_input_javascript` text NOT NULL,
  `sob_html_code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_object`
--

INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_table`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_readonly`, `sob_all_display_condition`, `sob_all_default_value_sql`, `sob_all_fast_form_description`, `sob_calc_formula`, `sob_calc_format`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_lookup_table`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_subform_table`, `sob_input_format`, `sob_input_type`, `sob_input_javascript`, `sob_html_code`) VALUES
('567742c772b9642', '56773cb405f4913', 'company', 'input', 'com_name', 'Company Name', '56777715b87666e', 50, 41, 145, 100, 18, '1', 'left', '1', '0', '', '', 'Company Name - Company (COM)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56789912d6d9ddb', '56773cb405f4913', 'company', 'input', 'com_test', 'Test', '567898dbc543710', 20, 20, 145, 200, 18, '1', 'left', '0', '0', '', '', 'Test - Company (COM)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('5678992c5432850', '56773cb405f4913', 'company', 'input', 'com_suburb', 'Suburb', '567898dbc543710', 30, 69, 161, 90, 18, '1', 'left', '0', '0', 'select ''''', '', 'Suburb - Company (COM)', 'nuTotal(''com_phone'') + nuTotal(''employee_sf.thecalc'')', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|mmmm', 'nuDate', '', ''),
('5678a9474a323f5', '56773cb405f4913', 'company', 'calc', 'com_phone', 'Calc this', '56777715b87666e', 60, 68, 145, 111, 18, '1', 'right', '1', '0', '', '', 'Calc this - Company (COM)', 'nuTotal("employee_sf.emp_name") + nuTotal("employee_sf.emp_cost")', '$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('5678ac0f8f3d3b8', '5678ab2c48c5c41', 'employee', 'input', 'emp_name1', 'Name', '5678ab2c49bd810', 10, 11, 179, 100, 18, '1', 'right', '2', '0', '', '', 'Name - Employee Subform (EMP)', '', '', 'nuuser', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('5679d499ad76e9f', '5678ab2c48c5c41', 'employee', 'input', 'emp_mobile', 'Mobile', '569c44dd2339963', 50, 24, 97, 136, 17, '1', 'left', '1', '0', '', '', 'Mobile - Employee Subform (EMP)', '', 'N:$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('5689fdaf9babfb9', '56773cb405f4913', 'company', 'select', 'com_color_id', 'Color', '56777715b87666e', 80, 49, 372, 100, 159, '1', 'left', '1', '0', '', '', 'Color - Company (COM)', '', '', '', '', '', '', '', '1', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('568b50020fc7a62', '56773cb405f4913', 'company', 'lookup', 'com_business_id', 'Business Type', '56777715b87666e', 40, 291, 140, 60, 18, '1', 'left', '1', '0', '', '', 'Business Type - Company (COM)', '', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '200', '0', '568b508eec00d80', '', '57f6e1f954955c1', 'business', '', '', '', '', '', '', '', '', '', ''),
('568b543dab1d274', '56773cb405f4913', 'company', 'display', 'com_age', 'hi', '56777715b87666e', 70, 95, 145, 70, 18, '1', 'right', '1', '0', '', '', 'hi - Company (COM)', '', '', '', '', '', '', 'SELECT 12;', '', '', 'theCode', 'theDescription', '150', '0', '568b508eec00d80', '', '', 'business', '', '', '', '', '', '', '', '', '', ''),
('568dca341ca3737', '56773cb405f4913', 'company', 'run', 'com_run', 'Bus. Browse', '56777715b87666e', 100, 9, 372, 100, 30, '1', 'right', '1', '0', '', '', 'Bus. Browse - Company (COM)', '', '', 'nublank', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('568ddbbf00aae51', '56773cb405f4913', 'company', 'subform', 'employee_sf', 'Subform', '567898dbc543710', 10, 113, 85, 500, 250, '1', 'right', '0', '0', '', '', 'Subform - Company (COM)', '', '', '568b508eec00d80', '', 'i', '', '', '', '', '', '', '', '', '', '', '', '', '5678ab2c48c5c41', 'emp_company_id', '1', '1', 'f', '', '', '', '', '<div style=\\"top:0px;left:0px;width:200px;height:200px;background-color:tan;\\">Hello World</div>'),
('569dc5613f24e14', 'nuhome', '', 'run', 'run_browse', 'Company', '58be4c05188661c', 160, 157, 66, 150, 30, '1', 'right', '1', '0', '', '', 'Company - Home (HOME)', '', '', '56773cb405f4913', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b18903c9991', '568b508eec00d80', 'business', 'input', 'bus_code', 'Code', '568b508eecf5dee', 0, 10, 50, 100, 18, '1', 'left', '1', '0', '', '', 'Code - Business (BUS)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b1afab7397e', '568b508eec00d80', 'business', 'input', 'bus_description', 'Description', '568b508eecf5dee', 0, 40, 100, 100, 18, '1', 'left', '1', '0', '', '', 'Description - Business (BUS)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b1c7939942e', '568b508eec00d80', 'business', 'input', 'bus_check', 'Check', '568b508eecf5dee', 0, 100, 50, 30, 18, '1', 'left', '1', '0', '', '', 'Check - Business (BUS)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5716e2428f5e8fb', 'nuobject', 'zzzzsys_object', 'subform', 'zzzzsys_event_sf', 'JS Code :', '58c63d38b88dbab', 460, 68, 80, 505, 153, '1', 'left', '0', '0', '', '', 'JS Code : - Object (OBJECT)', '', '', '', '', 'b', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', 'nuevent', 'sev_zzzzsys_object_id', '1', '1', 'g', '', '', 'text', '', ''),
('56b7e275560be71', '56773cb405f4913', 'company', 'textarea', 'com_notes', 'Notes', '56777715b87666e', 90, 120, 93, 150, 77, '1', 'left', '0', '0', '', '', 'Notes - Company (COM)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56c0fd692478b9e', '5678ab2c48c5c41', 'employee', 'lookup', 'emp_business_id', 'Business Type', '56c5145674c17a1', 40, 59, 100, 60, 18, '1', 'left', '0', '0', '', '', 'Business Type - Employee Subform (EMP)', '', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '90', '0', '568b508eec00d80', '', '', 'business', '', '', '', '', '', '', '', '', '', ''),
('nuaccess', 'nuhome', '', 'run', 'run_access', 'Access Levels', '569dc4ed270f08a', 10, 28, 602, 150, 30, '1', 'left', '1', '0', '', '', 'Access Levels - Home (HOME)', '', '', 'nuaccess', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57e851fa96edc98', 'nupassword', 'zzzzsys_user', 'display', 'the_user', ' ', '57abe72610d666d', 10, 46, 181, 200, 18, '1', 'center', '0', '0', '', '', '  - Change Password (PASS)', '', '', '', '', '', '', 'SELECT sus_login_name\nFROM zzzzsys_user\nWHERE zzzzsys_user_id = ''#RECORD_ID#''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('57073c3a0b4ea44', 'nuform', 'zzzzsys_form', 'select', 'sfo_type', 'Form Tab', '570730313dd25c5', 10, 21, 116, 232, 18, '1', 'left', '1', '0', '', '', 'Form Tab - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|launch|Launch|subform|Subform Only', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57074535d3d3ec8', 'nuform', 'zzzzsys_form', 'input', 'sfo_code', 'Code', '570730313dd25c5', 20, 52, 116, 100, 18, '1', 'left', '2', '0', '', '', 'Code - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5707456baf5bf41', 'nuform', 'zzzzsys_form', 'input', 'sfo_description', 'Description', '570730313dd25c5', 30, 82, 116, 252, 18, '1', 'left', '1', '0', '', '', 'Description - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570746cc078074e', 'nuform', 'zzzzsys_form', 'input', 'sfo_table', 'Table Name', '570730313dd25c5', 40, 112, 116, 252, 18, '1', 'left', '0', '0', '', '', 'Table Name - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuScroll', 'nuFORM.getTables()', ''),
('570b00aa9ff6b8d', 'nuform', 'zzzzsys_form', 'input', 'sfo_primary_key', 'Primary Key', '570730313dd25c5', 50, 141, 116, 252, 18, '1', 'left', '0', '0', '', '', 'Primary Key - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuScroll', ' nuFORM.tableFields($(''#sfo_table'').val())', ''),
('570b026adaa8641', 'nuform', 'zzzzsys_form', 'input', 'sfo_browse_row_height', 'Row Height', '5707303141ab448', 110, 287, 115, 50, 18, '1', 'right', '0', '0', '', '', 'Row Height - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('570b02f9b8e2424', 'nuform', 'zzzzsys_form', 'input', 'sfo_browse_rows_per_page', 'Rows Per Page', '5707303141ab448', 120, 287, 270, 50, 18, '1', 'right', '0', '0', '', '', 'Rows Per Page - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('570b067c2f7cdf5', 'nuform', 'zzzzsys_form', 'lookup', 'sfo_browse_redirect_form_id', 'Redirect To', '5707303141ab448', 130, 287, 405, 100, 18, '1', 'right', '0', '0', '', '', 'Redirect To - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '230', '', 'nuform', '', '', 'zzzzsys_form', '', '', '', '', '', '', '', '', '', ''),
('570b1883bbeec99', 'nuform', 'zzzzsys_form', 'textarea', 'sfo_browse_sql', 'SQL', '5707303141ab448', 90, 19, 115, 639, 90, '1', 'left', '0', '0', '', '', 'SQL - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b192e68d97ac', 'nuform', 'zzzzsys_form', 'subform', 'zzzzsys_browse_sf', 'Columns', '5707303141ab448', 100, 124, 115, 639, 150, '1', 'right', '0', '0', '', '', 'Columns - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', 'nubrowse', 'sbr_zzzzsys_form_id', '1', '1', 'g', '', '', '', '', ''),
('570b1a86d41a62c', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_title', 'Title', '570b19bf5981983', 10, 10, 10, 150, 18, '1', 'left', '1', '0', '', '', 'Title - Form Browse Subform (FRMBR)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b1abae987b02', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_display', 'Display', '570b19bf5981983', 20, 10, 10, 150, 18, '1', 'left', '1', '0', '', '', 'Display - Form Browse Subform (FRMBR)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuScroll', 'nuFORM.SQLFields($(''#sfo_browse_sql'').val())', ''),
('58c465508d4fc64', 'nuform', 'zzzzsys_form', 'word', 'phpwrd', 'PHP Code :', '58c19d9bc559aca', 200, 51, 36, 79, 17, '1', 'right', '0', '0', '', '', 'PHP Code : - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('570b2330ea5f52a', 'nubrowse', 'zzzzsys_browse', 'select', 'sbr_align', 'Align', '570b19bf5981983', 40, 10, 10, 70, 18, '1', 'left', '1', '0', '', 'SELECT ''l'';', 'Align - Form Browse Subform (FRMBR)', '', '', '', '', '', '', '', '0', 'l|Left|r|Right|c|Center', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('570b23a2439a04c', 'nubrowse', 'zzzzsys_browse', 'select', 'sbr_format', 'Format', '570b19bf5981983', 50, 10, 10, 115, 18, '1', 'left', '0', '0', '', '', 'Format - Form Browse Subform (FRMBR)', '', '', '', '', '', '', '', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('570b242a368005e', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_width', 'Width', '570b19bf5981983', 60, 10, 10, 50, 18, '1', 'right', '1', '0', '', '', 'Width - Form Browse Subform (FRMBR)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('570b24bfbf54a99', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_order', 'Order', '570b19bf5981983', 70, 10, 10, 50, 18, '1', 'right', '1', '0', '', '', 'Order - Form Browse Subform (FRMBR)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('570b3915874d635', 'nuform', 'zzzzsys_form', 'subform', 'zzzzsys_tab_sf', 'Tabs', '570730313dd25c5', 80, 21, 433, 231, 250, '0', 'left', '0', '0', '', '', 'Tabs - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nutab', 'syt_zzzzsys_form_id', '1', '1', 'g', '', '', '', '', ''),
('570b39cc123601d', 'nutab', 'zzzzsys_tab', 'input', 'syt_title', 'Title', '576372e045a2f81', 0, 10, 100, 135, 18, '1', 'left', '1', '0', '', '', 'Title - Form Tab (TAB)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b39f046ded37', 'nutab', 'zzzzsys_tab', 'input', 'syt_order', 'Order', '576372e045a2f81', 0, 40, 100, 40, 18, '1', 'right', '1', '0', '', '', 'Order - Form Tab (TAB)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58117aed5513a01', 'nuform', 'zzzzsys_form', 'input', 'bb_event', 'Before Browse', '58c19d9bc559aca', 140, 24, 121, 150, 25, '1', 'center', '0', '0', '', '', 'Before Browse - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('573d15d41e279ba', 'nubuildreport', 'zzzzsys_report', 'input', 'open_builder', 'Report Layout', '574b964941d3d1a', 60, 192, 239, 150, 30, '1', 'left', '0', '1', '', '', 'Report Layout - Build Report (BLDREP)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('570c3b5d641d514', 'nubuildreport', 'zzzzsys_report', 'textarea', 'sre_layout', 'Layout', '574b964941d3d1a', 70, 236, 239, 300, 100, '1', 'left', '0', '1', 'SELECT ''0''', '', 'Layout - Build Report (BLDREP)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570c3e6e67c39cb', 'nuform', 'zzzzsys_form', 'textarea', 'sfo_javascript', 'Javascript Code :', '58c19d9bc559aca', 210, 138, 121, 556, 190, '1', 'left', '0', '1', '', '', 'Javascript Code : - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570c3fce5be3355', 'nuphp', 'zzzzsys_php', 'subform', 'zzzzsys_php_library_sf', 'PHP Library', '57eb1bd4cb7e1f4', 60, 120, 191, 415, 200, '1', 'right', '0', '0', '', '', 'PHP Library - PHP Code (PHPCODE)', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '220', '', 'nunonsystemform', '', '', 'zzzzsys_form', 'nuphplibrary', 'spl_zzzzsys_php_id', '1', '1', 'g', '', '', '', '', ''),
('57578afc803136a', 'nuphp', 'zzzzsys_php', 'lookup', 'sph_zzzzsys_form_id', 'Launch from', '574b8ee0b2a4cdf', 40, 110, 152, 100, 18, '1', 'left', '0', '0', '', '', 'Launch from - PHP Code (PHPCODE)', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '230', '', 'nuform', '', '', 'zzzzsys_form', '', '', '', '', '', '', '', '', '', ''),
('570c8e4ef085ed5', 'nuhome', '', 'run', 'object_button', 'Objects', '569dc4ed270f08a', 40, 68, 76, 150, 30, '1', 'right', '1', '0', '', '', 'Objects - Home (HOME)', '', '', 'nuobject', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570d9046964038e', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_all_zzzzsys_tab_id', 'Tab - Form', '570d90df5ce8e1a', 30, 39, 109, 100, 18, '1', 'left', '1', '0', '', '', 'Tab - Form - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', '', '', ''),
('570d98b34bf37c9', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_type', 'Type', '570d90df5ce8e1a', 40, 65, 109, 80, 18, '1', 'left', '1', '0', '', '', 'Type - Object (OBJECT)', '', '', '', '', '', '', '', '0', 'calc|Calc|display|Display|html|HTML|input|Input|lookup|Lookup|run|Run|select|Select|subform|Subform|textarea|Textarea|word|Word', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', '', '', ''),
('570d9938ebe4428', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_id', 'ID', '570d90df5ce8e1a', 50, 94, 112, 250, 20, '1', 'left', '1', '0', '', '', 'ID - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'nuScroll', 'nuFORM.tableFields($(''#sob_all_table'').val())', ''),
('570d998aea50861', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_label', 'Label', '570d90df5ce8e1a', 60, 120, 112, 250, 18, '1', 'left', '0', '0', '', '', 'Label - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9a2e76e6a8c', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_order', 'Tabbing Order', '570d90df5ce8e1a', 20, 42, 0, 100, 18, '1', 'right', '0', '0', 'SELECT ''0'';', '', 'Tabbing Order - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9a5d4c69587', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_top', 'Top', '570d90df5ce8e1a', 130, 227, 432, 50, 18, '1', 'right', '1', '0', '', '', 'Top - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'number', '', ''),
('570d9a7237fd2fc', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_left', 'Left', '570d90df5ce8e1a', 140, 253, 432, 50, 18, '1', 'right', '1', '0', '', '', 'Left - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'number', '', ''),
('570d9a8847feae7', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_width', 'Width', '570d90df5ce8e1a', 150, 279, 432, 50, 18, '1', 'right', '1', '0', '', '', 'Width - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'number', '', ''),
('570d9a9a6b24446', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_height', 'Height', '570d90df5ce8e1a', 160, 305, 432, 50, 18, '1', 'right', '1', '0', '', '', 'Height - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'number', '', ''),
('570d9cb9d004579', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_cloneable', 'Cloneable', '570d90df5ce8e1a', 90, 220, 112, 50, 18, '1', 'right', '1', '0', '', '', 'Cloneable - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9d0a39b227c', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_align', 'Align', '570d90df5ce8e1a', 100, 247, 112, 70, 18, '1', 'left', '1', '0', '', 'SELECT ''left'';', 'Align - Object (OBJECT)', '', '', '', '', '', '', '', '0', 'left|Left|right|Right|center|Center', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9dd38561e81', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_validate', 'Validation', '570d90df5ce8e1a', 110, 274, 112, 110, 18, '1', 'left', '1', '0', '', '', 'Validation - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|None|1|No Blanks|2|No Duplicates', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9e1c5a6bcfd', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_readonly', 'Read Only', '570d90df5ce8e1a', 120, 301, 112, 50, 18, '1', 'right', '1', '0', '', '', 'Read Only - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9e6b7f6353a', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_all_display_condition', 'Display Condition', '570d90df5ce8e1a', 70, 150, 114, 250, 18, '1', 'left', '0', '0', '', '', 'Display Condition - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9f1b9e51828', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_all_default_value_sql', 'Default Value', '570d90df5ce8e1a', 80, 176, 114, 250, 18, '1', 'left', '0', '0', '', '', 'Default Value - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9f7b580e04a', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_html_code', 'HTML', '570d90df73d3a2a', 390, 20, 100, 432, 200, '1', 'left', '0', '0', '', '', 'HTML - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9fa3e7160c2', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_display_sql', 'Display', '570d90df63e6972', 220, 20, 100, 468, 168, '1', 'left', '0', '0', '', '', 'Display - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9ffcd716321', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_select_sql', 'SQL/List', '570d90df670db61', 230, 50, 60, 500, 150, '1', 'left', '0', '0', '', '', 'SQL/List - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da046d5f9f4c', 'nuobject', 'zzzzsys_object', 'select', 'sob_select_multiple', 'Multiple', '570d90df670db61', 240, 20, 60, 50, 18, '1', 'left', '0', '0', '', 'SELECT 0', 'Multiple - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da149b76e0e6', 'nuobject', 'zzzzsys_object', 'select', 'sob_input_type', 'Input Type', '570d90df707867b', 370, 50, 100, 120, 18, '1', 'left', '0', '0', '', '', 'Input Type - Object (OBJECT)', '', '', '', '', '', '', '', '0', 'nuDate|nuDate|\nnuNumber|nuNumber|\nnuScroll|nuScroll|\n\nbutton|Button|\ncheckbox|Checkbox|\ncolor|Color|\ndatetime-local|Datetime-Local|\nemail|Email|\nfile|File|\nhidden|Hidden|\nimage|Image|\nmonth|Month|\nnumber|Number|\npassword|Password|\nradio|Radio|\nrange|Range|\nreset|Reset|\nsearch|Search|\ntel|Telephone|\ntext|Text|\ntime|Time|\nurl|URL|\nweek|Week\n\n\n', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da31addae07f', 'nuobject', 'zzzzsys_object', 'select', 'sob_input_format', 'Format', '570d90df707867b', 360, 97, 100, 120, 18, '1', 'right', '0', '0', '', '', 'Format - Object (OBJECT)', '', '', '', '', '', '', '', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type\n', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da52f2828508', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_subform_zzzzsys_form_id', 'Form', '570d90df6d35fde', 310, 20, 200, 100, 18, '1', 'right', '0', '0', '', '', 'Form - Object (OBJECT)', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', '', ''),
('570da72cb4282e3', 'nuobject', 'zzzzsys_object', 'input', 'sob_subform_foreign_key', 'Foreign Key', '570d90df6d35fde', 320, 50, 200, 200, 18, '1', 'left', '0', '0', '', '', 'Foreign Key - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da7b07ce4d7a', 'nuobject', 'zzzzsys_object', 'select', 'sob_subform_add', 'Addable', '570d90df6d35fde', 330, 80, 200, 50, 18, '1', 'left', '0', '0', '', '', 'Addable - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da7d7d12aea2', 'nuobject', 'zzzzsys_object', 'select', 'sob_subform_delete', 'Deleteable', '570d90df6d35fde', 340, 110, 200, 50, 18, '1', 'left', '0', '0', '', '', 'Deleteable - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da861e15f8f6', 'nuobject', 'zzzzsys_object', 'select', 'sob_subform_type', 'Type', '570d90df6d35fde', 350, 140, 200, 80, 18, '1', 'left', '0', '0', '', '', 'Type - Object (OBJECT)', '', '', '', '', '', '', '', '0', 'g|Grid|f|Form', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da8ac71acec7', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_run_zzzzsys_form_id', 'Run', '570d90df60880c2', 180, 36, 141, 100, 18, '1', 'right', '0', '0', '', '', 'Run - Object (OBJECT)', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'code', 'CONCAT(run, '' - '', description)', '200', '', 'nurunlist', '', '', 'zzzzsys_run_list', '', '', '', '', '', '', '', '', '', ''),
('570da93be3f323f', 'nuobject', 'zzzzsys_object', 'input', 'sob_run_filter', 'Filter', '570d90df60880c2', 190, 66, 141, 200, 18, '1', 'left', '0', '0', '', '', 'Filter - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da986cb6807a', 'nuobject', 'zzzzsys_object', 'input', 'sob_run_id', 'Record ID', '570d90df60880c2', 200, 96, 141, 200, 18, '1', 'left', '0', '0', '', '', 'Record ID - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570daa6277a97e1', 'nuobject', 'zzzzsys_object', 'select', 'sob_run_method', 'Method', '570d90df60880c2', 210, 126, 141, 80, 18, '1', 'left', '0', '0', '', '', 'Method - Object (OBJECT)', '', '', '', '', '', '', '', '0', 'b|Button|i|iFrame', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570dab25164b394', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_lookup_zzzzsys_form_id', 'Form', '570d90df6a2c12a', 250, 29, 165, 100, 18, '1', 'right', '0', '0', '', '', 'Form - Object (OBJECT)', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', '', ''),
('570dabca9be44fd', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_code', 'Code', '570d90df6a2c12a', 260, 57, 165, 200, 18, '1', 'left', '0', '0', '', '', 'Code - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570dabf5a2e2b8f', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_description', 'Description', '570d90df6a2c12a', 280, 85, 165, 200, 18, '1', 'left', '0', '0', '', '', 'Description - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570dac54b62da77', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_description_width', 'Width', '570d90df6a2c12a', 290, 85, 434, 50, 18, '1', 'right', '0', '0', '', 'SELECT 0;', 'Width - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570dadc061c6ef5', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_lookup_javascript', 'Javascript To Be Run<br>After Populating Fields', '570d90df6a2c12a', 300, 121, 165, 426, 140, '1', 'left', '0', '0', '', '', 'Javascript To Be Run<br>After Populating Fields - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570db01f6dd4d3d', 'nulookup', 'company', 'input', 'zzzzsys_slo_object_name', 'Form Object Name', '570dafc86862c1b', 0, 20, 200, 274, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570db0522404442', 'nulookup', 'company', 'input', 'zzzzsys_slo_field_function_name', 'Field / Function Name', '570dafc86862c1b', 0, 40, 200, 270, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570db786c678c27', 'nuhome', '', 'run', 'form_button', 'Forms', '569dc4ed270f08a', 50, 28, 76, 150, 30, '1', 'right', '1', '0', '', '', 'Forms - Home (HOME)', '', '', 'nuform', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5726daf4237eb57', 'nuevent', 'zzzzsys_event', 'textarea', 'sev_javascript', 'Javascript Function', '5726b139a7e27c2', 20, 1, 255, 300, 20, '1', 'left', '1', '0', '', '', 'Javascript Function - Object Events (EVE)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', '', 'text', '', ''),
('5726cca96d51595', 'nuevent', 'zzzzsys_event', 'input', 'sev_event', 'Event', '5726b139a7e27c2', 10, 1, 55, 150, 18, '1', 'left', '1', '0', '', '', 'Event - Object Events (EVE)', '', '', '', '', '', '', '', '0', 'drag|drag|dragend|dragend|dragenter|dragenter|dragexit|dragexit|dragleave|dragleave|dragover|dragover|dragstart|dragstart|drop|drop|onclick|onclick|onblur|onblur|onchange|onchange|onfocus|onfocus|onkeydown|onkeydown', '', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', '', 'nuScroll', 'nuChooseEventList()', ''),
('5743da507326181', 'nuaccess', 'zzzzsys_access_level', 'input', 'sal_description', 'Description', '5743d509312c4bc', 30, 80, 100, 200, 18, '1', 'left', '1', '0', '', '', 'Description - Access Levels (ACC)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5743d964cbef2e1', 'nuaccess', 'zzzzsys_access_level', 'lookup', 'sal_zzzzsys_form_id', 'Home', '5743d509312c4bc', 10, 20, 100, 100, 18, '1', 'left', '1', '0', '', '', 'Home - Access Levels (ACC)', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nunonsystemform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', '', ''),
('5742b06d956c254', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_zzzzsys_form_id', 'Form ID', '570d90df5ce8e1a', 170, 0, 0, 100, 18, '1', 'left', '0', '1', 'SELECT ''0''', '', 'Form ID - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', '', '', ''),
('5743da6ab90d89b', 'nuaccess', 'zzzzsys_access_level', 'input', 'sal_code', 'Code', '5743d509312c4bc', 20, 50, 100, 100, 18, '1', 'left', '1', '0', '', '', 'Code - Access Levels (ACC)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57452c417370475', 'nuaccessforms', 'employee ', 'lookup', 'slf_zzzzsys_form_id', 'Form', '5746616ea8ead0c', 10, 20, 100, 100, 18, '1', 'left', '1', '0', '', '', 'Form - Accessible Forms (ACCFRM)', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nunonsystemform', '', '', 'zzzzsys_form', '', '', '1', '', '', '', '', '', '', ''),
('57452d00100e37b', 'nuaccess', 'zzzzsys_access_level', 'subform', 'accform', ' ', '5743d509312ce9c', 40, 20, 50, 664, 300, '1', 'left', '0', '0', '', '', '  - Access Levels (ACC)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessforms', 'slf_zzzzsys_access_level_id', '1', '1', 'g', '', '', '', '', ''),
('57464b254128724', 'nuaccessforms', 'employee ', 'input', 'slf_add_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<span class=''nuActionButton''>Add</span>', '5746616ea8ead0c', 20, 90, 104, 53, 15, '1', 'left', '0', '0', '', '', '<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<span class=''nuActionButton''>Add</span> - Accessible Forms (ACCFRM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', 'checkbox', '', ''),
('57464b8ac424381', 'nuaccessforms', 'employee ', 'input', 'slf_save_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=''nuActionButton''>Save</span>', '5746616ea8ead0c', 40, 18, 252, 53, 15, '1', 'left', '0', '0', '', '', '<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=''nuActionButton''>Save</span> - Accessible Forms (ACCFRM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', 'checkbox', '', ''),
('57464b99c32e7a9', 'nuaccessforms', 'employee ', 'input', 'slf_delete_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=''nuActionButton''>Delete</span>', '5746616ea8ead0c', 60, 74, 214, 53, 15, '1', 'left', '0', '0', '', '', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=''nuActionButton''>Delete</span> - Accessible Forms (ACCFRM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', 'checkbox', '', ''),
('57464ba7ab4fc9f', 'nuaccessforms', 'employee ', 'input', 'slf_clone_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=''nuActionButton''>Clone</span>', '5746616ea8ead0c', 50, 47, 192, 53, 15, '1', 'left', '0', '0', '', '', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=''nuActionButton''>Clone</span> - Accessible Forms (ACCFRM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', 'checkbox', '', ''),
('58c2d56407479b3', 'nuaccess', 'zzzzsys_access_level', 'word', 'button_title', 'Enable Buttons...', '5743d509312ce9c', 50, 37, 348, 200, 18, '1', 'center', '1', '0', '', '', 'Enable Buttons... - Access Levels (ACC)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57464bc6d665be3', 'nuaccessforms', 'employee ', 'input', 'slf_print_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=''nuActionButton''>Print</span>', '5746616ea8ead0c', 30, 42, 100, 53, 15, '1', 'left', '0', '0', '', '', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=''nuActionButton''>Print</span> - Accessible Forms (ACCFRM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', 'checkbox', '', ''),
('574665c53498a27', 'nuusergroup', 'zzzzsys_user_group', 'input', 'sug_code', 'Code', '574665a15bc3218', 10, 51, 107, 100, 18, '1', 'left', '1', '0', '', '', 'Code - Access Group (ACCGRP)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574665db58bbad6', 'nuusergroup', 'zzzzsys_user_group', 'input', 'sug_description', 'Description', '574665a15bc3218', 20, 82, 107, 300, 18, '1', 'left', '1', '0', '', '', 'Description - Access Group (ACCGRP)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5746661007c5501', 'nuhome', '', 'run', 'run_group', 'User Group', '569dc4ed270f08a', 60, 68, 602, 150, 30, '1', 'left', '1', '0', '', '', 'User Group - Home (HOME)', '', '', 'nuusergroup', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574667a92f0374f', 'nuusergroup', 'zzzzsys_user_group', 'lookup', 'sug_zzzzsys_form_id', 'Home', '574665a15bc3218', 30, 112, 107, 70, 18, '1', 'left', '1', '0', '', '', 'Home - Access Group (ACCGRP)', '', '', '', '', '', '', '', '0', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', 'sfo_code', 'sfo_description', '300', '', 'nunonsystemform', '', '', 'zzzzsys_form', '', '', '', '', '', '', '', '', '', ''),
('57466fa32c18b02', 'nuhome', '', 'run', 'run_user', 'User', '569dc4ed270f08a', 70, 107, 602, 150, 30, '1', 'left', '1', '0', '', '', 'User - Home (HOME)', '', '', 'nuuser', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5746703645523e8', 'nuuser', 'zzzzsys_user', 'input', 'sus_name', 'Name', '57466ebd5c0fff2', 10, 11, 150, 300, 18, '1', 'left', '1', '0', '', '', 'Name - User (ACCUSE)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('57467053c6159d8', 'nuuser', 'zzzzsys_user', 'input', 'sus_email', 'Email', '57466ebd5c0fff2', 20, 42, 150, 300, 18, '1', 'left', '1', '0', '', '', 'Email - User (ACCUSE)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('57467094ba580d8', 'nuuser', 'zzzzsys_user', 'input', 'sus_login_name', 'Login Name', '57466ebd5c0fff2', 50, 124, 150, 200, 18, '1', 'left', '2', '0', '', '', 'Login Name - User (ACCUSE)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('574670b1f0ebdd9', 'nuuser', 'zzzzsys_user', 'input', 'new_password', 'Enter New Password', '57466ebd5c0fff2', 60, 154, 150, 200, 18, '1', 'left', '1', '0', '', '', 'Enter New Password - User (ACCUSE)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', '', ''),
('574670f777ae0d6', 'nuuser', 'zzzzsys_user', 'input', 'check_password', 'Reenter New Password', '57466ebd5c0fff2', 70, 184, 150, 200, 18, '1', 'left', '1', '0', '', '', 'Reenter New Password - User (ACCUSE)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', '', ''),
('574671cdcc77367', 'nuuser', 'zzzzsys_user', 'lookup', 'sus_zzzzsys_user_group_id', 'User Group', '57466ebd5c0fff2', 40, 94, 150, 100, 18, '1', 'left', '1', '0', '', '', 'User Group - User (ACCUSE)', '', '', '', '', '', '', '', '', '', 'sug_code', 'sug_description', '200', '', 'nuusergroup', '', '', 'zzzzsys_user_group', '', '', '', '', '', '', '', 'text', '', ''),
('574b8f87a400809', 'nuphp', 'zzzzsys_php', 'input', 'sph_code', 'Code', '574b8ee0b2a4cdf', 10, 17, 152, 100, 18, '1', 'left', '1', '0', '', '', 'Code - PHP Code (PHPCODE)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b8fa359b39fc', 'nuphp', 'zzzzsys_php', 'input', 'sph_description', 'Description', '574b8ee0b2a4cdf', 20, 48, 152, 300, 18, '1', 'left', '1', '0', '', 'SELECT 1', 'Description - PHP Code (PHPCODE)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b9008ac10e16', 'nuphp', 'zzzzsys_php', 'textarea', 'sph_php', 'PHP', '5811788510768ef', 50, 20, 38, 742, 353, '1', 'left', '1', '1', '', '', 'PHP - PHP Code (PHPCODE)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b91aec1e5c94', 'nuhome', '', 'run', 'edit_php', 'Build Procedures', '569dc4ed270f08a', 80, 28, 418, 150, 30, '1', 'left', '1', '0', '', '', 'Build Procedures - Home (HOME)', '', '', 'nuphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b97322568df5', 'nuhome', '', 'run', 'edit_report', 'Build Reports', '569dc4ed270f08a', 100, 28, 248, 150, 30, '1', 'left', '1', '0', '', '', 'Build Reports - Home (HOME)', '', '', 'nubuildreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57561237059313b', 'nublank', '', 'input', 'bla_html', 'Hi', '575611cca558059', 11, 400, 400, 1, 1, '1', 'left', '0', '0', 'SELECT ''0''', '', 'Hi - Blank (BLA)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '.'),
('5754c06bd926f66', 'nubuildreport', 'zzzzsys_report', 'lookup', 'sre_zzzzsys_form_id', 'Launch From', '574b964941d3d1a', 40, 106, 239, 100, 18, '1', 'left', '1', '0', '', '', 'Launch From - Build Report (BLDREP)', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', '', ''),
('57579cb29a87ac1', 'nubuildreport', 'zzzzsys_report', 'input', 'sre_code', 'Code', '574b964941d3d1a', 10, 16, 239, 100, 18, '1', 'left', '1', '0', '', '', 'Code - Build Report (BLDREP)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57579cd24784461', 'nubuildreport', 'zzzzsys_report', 'input', 'sre_description', 'Description', '574b964941d3d1a', 20, 46, 239, 300, 18, '1', 'left', '1', '0', '', '', 'Description - Build Report (BLDREP)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a2bb92683acf', 'nuusergroup', 'zzzzsys_user_group', 'subform', 'levels', 'Access Levels', '574665a15bc3218', 40, 174, 107, 465, 200, '1', 'left', '1', '0', '', '', 'Access Levels - Access Group (ACCGRP)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessgroup', 'gal_zzzzsys_user_group_id', '1', '1', 'g', '', '', '', '', ''),
('575a2cf681d6427', 'nuaccessgroup', 'zzzzsys_user_group_access_level', 'lookup', 'gal_zzzzsys_access_level_id', 'Access To..', '575a273aadf6c37', 40, 40, 107, 70, 18, '1', 'left', '1', '0', '', '', 'Access To.. - Groups Access Level (GAL)', '', '', '', '', '', '', '', '0', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', 'sal_code', 'sal_description', '300', '', 'nuaccess', '', '', 'zzzzsys_access_level', '', '', '', '', '', '', '', '', '', ''),
('575a326a877e7ed', 'nuhome', '', 'run', 'run_debug', 'Debug', '569dc4ed270f08a', 120, 247, 602, 150, 30, '1', 'left', '1', '0', '', '', 'Debug - Home (HOME)', '', '', 'nudebug', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a3c0497ca756', 'nudebug', 'zzzzsys_debug', 'textarea', 'deb_message', 'Message', '575a31edccc2012', 10, 55, 97, 600, 500, '0', 'left', '0', '', '', '', 'Message - Debug (DEBUG)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a3f7001496b0', 'nudebug', 'zzzzsys_debug', 'select', 'delete_option', 'Delete', '575a31edccc2012', 40, 14, 100, 134, 18, '1', 'left', '1', '0', '', 'SELECT 1', 'Delete - Debug (DEBUG)', '', '', '', '', '', '', '', '0', '0|All|1|This|2|All But This|3|Older Than This', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a4060ddc83ef', 'nudebug', 'zzzzsys_debug', 'display', 'debug_id', 'Time Stamp', '575a31edccc2012', 20, 14, 574, 123, 18, '0', 'left', '0', '0', '', '', 'Time Stamp - Debug (DEBUG)', '', '', '', '', '', '', 'SELECT deb_added \nFROM zzzzsys_debug \nWHERE zzzzsys_debug_id = ''#RECORD_ID#''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575f5fe89bf014b', 'nuaccessreport', 'zzzzsys_access_level_php', 'lookup', 'slp_zzzzsys_php_id', 'PHP Procedures', '575f55e6e740d5a', 0, 20, 100, 100, 18, '1', 'left', '1', '0', '', '', 'PHP Procedures - Access To Procedures (ACCPHP)', '', '', '', '', '', '', '', '0', '', 'sph_code', 'sph_description', '200', '', 'nuphp', '', '', 'zzzzsys_php', '', '', '1', '', '', '', '', '', '', ''),
('575f592d57ff088', 'nuaccess', 'zzzzsys_access_level', 'subform', 'accphp', ' ', '575f5474793747e', 60, 20, 50, 395, 290, '1', 'left', '0', '0', '', '', '  - Access Levels (ACC)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessreport', 'slp_zzzzsys_access_level_id', '1', '1', 'g', '', '', '', '', ''),
('57624c4714b0ce2', 'nuaccess', 'zzzzsys_access_level', 'subform', 'accreport', ' ', '575f54747937ff5', 70, 20, 50, 395, 282, '1', 'left', '0', '0', '', '', '  - Access Levels (ACC)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccesslevelreport', 'sre_zzzzsys_access_level_id', '1', '1', 'g', '', '', '', '', ''),
('57637d4688096ef', 'nuaccesslevelreport', 'zzzzsys_access_level_report', 'lookup', 'sre_zzzzsys_report_id', 'Report', '57637ad7b563282', 30, 47, 163, 100, 18, '1', 'left', '1', '0', '', '', 'Report - Access To Report (ACCREP)', '', '', '', '', '', '', '', '', '', 'sre_code', 'sre_description', '200', '0', 'nubuildreport', '', '', 'zzzzsys_report', '', '', '', '', '', '', '', '', '', ''),
('577b254578f0498', 'nubuildreport', 'zzzzsys_report', 'input', 'sre_group', 'Group', '574b964941d3d1a', 30, 76, 239, 150, 18, '1', 'left', '1', '0', '', '', 'Group - Build Report (BLDREP)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4314f347f60', 'nuhome', '', 'run', 'run_report', 'Run Report', '569dc4ed270f08a', 110, 68, 248, 150, 30, '1', 'left', '1', '0', '', '', 'Run Report - Home (HOME)', '', '', 'nurunreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', 'nurunreport', '', '0', '0', '', '', '', '', '', ''),
('577b49b3eb0c80f', 'nuhome', '', 'run', 'run_php', 'Run Procedure', '569dc4ed270f08a', 90, 69, 418, 150, 30, '1', 'left', '1', '0', '', '', 'Run Procedure - Home (HOME)', '', '', 'nurunphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4dd43e0a9eb', '577b4d78ef9a2a0', '', 'input', 'steven', 'test', '577b4d78ef9c1d6', 1, 100, 100, 100, 20, '1', 'left', '0', '0', '', '', 'test - test (test)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4eb7ad0f7f5', '577b4d78ef9a2a0', '', 'input', 'com_address', 'Address', '577b4d78ef9c1d6', 110, 12, 74, 200, 18, '1', 'left', '0', '0', '', '', 'Address - test (test)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', '');
INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_table`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_readonly`, `sob_all_display_condition`, `sob_all_default_value_sql`, `sob_all_fast_form_description`, `sob_calc_formula`, `sob_calc_format`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_lookup_table`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_subform_table`, `sob_input_format`, `sob_input_type`, `sob_input_javascript`, `sob_html_code`) VALUES
('577c7a54b78326c', 'nulaunchdates', '', 'input', 'from_date', 'Between', '577c5efa0d6275e', 10, 72, 115, 90, 18, '1', 'left', '0', '0', '', '', 'Between - Between 2 Dates (2DATES)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|mmmm', 'nuDate', '', ''),
('577c7a71c405f7c', 'nulaunchdates', '', 'input', 'to_date', 'And', '577c5efa0d6275e', 20, 72, 243, 90, 18, '1', 'left', '0', '0', '', '', 'And - Between 2 Dates (2DATES)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N|$ 1,000.00', 'nuNumber', '', ''),
('578341d99ca3725', 'nubuildreport', 'zzzzsys_report', 'lookup', 'sre_zzzzsys_php_id', 'PHP Used To Create #TABLE_ID#', '574b964941d3d1a', 50, 139, 239, 100, 18, '1', 'left', '1', '0', '', '', 'PHP Used To Create #TABLE_ID# - Build Report (BLDREP)', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sph_code', 'sph_description', '200', '', 'nuphp', '', '', 'zzzzsys_php', 'nuform', '', '1', '', '', '', '', '', '', ''),
('579039aaf34f7c5', 'nuphp', 'zzzzsys_php', 'input', 'sph_group', 'Group', '574b8ee0b2a4cdf', 30, 79, 152, 300, 18, '1', 'left', '0', '0', '', '', 'Group - PHP Code (PHPCODE)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a29781085834c', 'nuhome', '', 'run', 'run_setup', 'Setup', '569dc4ed270f08a', 20, 157, 602, 150, 30, '1', 'left', '1', '0', '', '', 'Setup - Home (HOME)', '', '', 'nusetup', '', 'b', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a298576dc5d7f', 'nusetup', 'zzzzsys_setup', 'input', 'set_time_out_minutes', 'Timeout (minutes)', '57a29441f16e2e2', 10, 61, 111, 100, 18, '1', 'right', '2', '0', '', '', 'Timeout (minutes) - Setup (SET)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a29bffb8a5938', 'nusetup', 'zzzzsys_setup', 'lookup', 'set_zzzzsys_timezone_id', 'Time Zone', '57a29441f16e2e2', 20, 93, 111, 300, 18, '1', 'left', '2', '0', '', '', 'Time Zone - Setup (SET)', '', '', '', '', '', '', '', '', '', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', '', '', '', ''),
('57a29f631fdd125', 'nuuser', 'zzzzsys_user', 'select', 'sus_language', 'Language', '57466ebd5c0fff2', 30, 68, 151, 150, 18, '1', 'left', '0', '0', '', '', 'Language - User (ACCUSE)', '', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', '', '', '', ''),
('57a2ade3a4625e3', 'nusetup', 'zzzzsys_setup', 'textarea', 'set_fonts', 'Report Fonts', '57a29441f16e2e2', 30, 125, 111, 300, 100, '1', 'left', '2', '0', '', '', 'Report Fonts - Setup (SET)', '', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', '', '', '', ''),
('57a2af5b466f884', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_username', 'Auth SMTP User Name', '57a29441f16eb9f', 40, 91, 208, 200, 18, '1', 'left', '2', '0', '', '', 'Auth SMTP User Name - Setup (SET)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a2afbe5b8d810', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_password', 'Auth SMTP Password', '57a29441f16eb9f', 50, 127, 208, 200, 18, '1', 'left', '2', '0', '', '', 'Auth SMTP Password - Setup (SET)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a2affc246c61e', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_host', 'Auth SMTP Host', '57a29441f16eb9f', 60, 163, 208, 200, 18, '1', 'left', '2', '0', '', '', 'Auth SMTP Host - Setup (SET)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a2b0490518152', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_from_address', 'Auth SMTP From Address', '57a29441f16eb9f', 70, 199, 208, 200, 18, '1', 'left', '2', '0', '', '', 'Auth SMTP From Address - Setup (SET)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a2b092a3fb465', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_from_name', 'Auth SMTP From Name', '57a29441f16eb9f', 80, 235, 208, 200, 18, '1', 'left', '2', '0', '', '', 'Auth SMTP From Name - Setup (SET)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a2b0d9e0c353d', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_port', 'Auth SMTP Port', '57a29441f16eb9f', 90, 271, 208, 70, 18, '1', 'right', '2', '0', '', '', 'Auth SMTP Port - Setup (SET)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a2b1b4bb27602', 'nusetup', 'zzzzsys_setup', 'select', 'set_smtp_use_ssl', 'Auth SMTP Use SSL', '57a29441f16eb9f', 100, 307, 208, 70, 18, '1', 'left', '2', '0', '', '', 'Auth SMTP Use SSL - Setup (SET)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a2da33d52fac6', 'nusetup', 'zzzzsys_setup', 'textarea', 'set_header', 'Header', '57a29441f16f59d', 110, 29, 75, 605, 400, '1', 'left', '2', '0', '', '', 'Header - Setup (SET)', '', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', '', '', '', ''),
('57a7c213dc62789', 'nuhome', '', 'run', 'run_lang', 'Translation', '569dc4ed270f08a', 30, 202, 602, 150, 30, '1', 'left', '1', '0', '', '', 'Translation - Home (HOME)', '', '', 'nutranslate', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a7d639f21d3a8', 'nutranslate', 'zzzzsys_translate', 'input', 'trl_language', 'Language', '57a7c1cb78c31d5', 10, 39, 92, 100, 18, '1', 'left', '1', '0', '', '', 'Language - Language Translation (LANG)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a7d77ccd5d248', 'nutranslate', 'zzzzsys_translate', 'input', 'trl_english', 'English', '57a7c1cb78c31d5', 20, 70, 92, 400, 18, '1', 'left', '2', '0', '', '', 'English - Language Translation (LANG)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a7d7a35f01f40', 'nutranslate', 'zzzzsys_translate', 'input', 'trl_translation', 'Translation', '57a7c1cb78c31d5', 30, 101, 92, 400, 18, '1', 'left', '2', '0', '', '', 'Translation - Language Translation (LANG)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a93d17300512b', 'nupassword', 'zzzzsys_user', 'input', 'new_password_check', 'Re-Enter New Password', '57abe72610d666d', 40, 133, 181, 200, 18, '1', 'left', '1', '0', '', '', 'Re-Enter New Password - Change Password (PASS)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', '', ''),
('57abea0d8fc5446', 'nupassword', 'zzzzsys_user', 'input', 'new_password', 'Enter New Password', '57abe72610d666d', 30, 104, 181, 200, 18, '1', 'left', '1', '0', '', '', 'Enter New Password - Change Password (PASS)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', '', ''),
('57d62bdf8dd4459', '56773cb405f4913', 'company', 'run', 'aframe', 'FORM', '56777715b87666e', 110, 0, 557, 650, 580, '1', 'right', '1', '0', '', '', 'FORM - Company (COM)', '', '', 'nuuser', 'Admin', 'i', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57e8595cdef6edc', 'nupassword', 'zzzzsys_user', 'input', 'old_password', 'Enter Current Password', '57abe72610d666d', 20, 75, 181, 200, 18, '1', 'left', '1', '0', '', '', 'Enter Current Password - Change Password (PASS)', '', '', '', '', '', '', 'SELECT CONCAT(''( '', sus_login_name, '' )'')\nFROM zzzzsys_user\nWHERE zzzzsys_user_id = ''#RECORD_ID#''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', '', ''),
('57eb03abed05e20', 'nuphplibrary', 'zzzzsys_php_library', 'lookup', 'spl_library_zzzzsys_php_id', 'Include', '57eaf962bd0a957', 60, 556, 152, 100, 18, '1', 'right', '1', '0', '', '', 'Include - PHP Code Library (PHPLIB)', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sph_code', 'sph_description', '220', '', 'nuphp', '', '', 'zzzzsys_php', '', '', '', '', '', '', '', '', '', ''),
('5811808723db54b', 'nuobject', 'zzzzsys_object', 'input', 'ab_event', 'After Browse', '58c63d38b88dbab', 470, 27, 87, 150, 25, '1', 'center', '0', '0', '', '', 'After Browse - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('57edbb1638832c4', '57edbac65e1c52a', 'company', 'textarea', 'com_name', 'Name', '57edbac65e1d42e', 10, 0, 0, 100, 20, '1', '', '0', '0', '', '', 'Name - company_report (CR)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57fadb3206fceda', 'nuerror', 'zzzzsys_form', 'input', 'error', '', '57fad2784b27d77', 10, 10, 10, 800, 200, '0', 'left', '0', '0', '', '', ' - Error Form (ERROR)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5811633909eeadd', 'nuform', 'zzzzsys_form', 'input', 'be_event', 'Before Edit', '58c19d9bc559aca', 150, 68, 121, 150, 25, '1', 'center', '0', '0', '', '', 'Before Edit - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58116941a1a1f06', 'nuform', 'zzzzsys_form', 'input', 'bs_event', 'Before Save', '58c19d9bc559aca', 160, 24, 324, 150, 25, '1', 'center', '0', '0', '', '', 'Before Save - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58116968afd5b6a', 'nuform', 'zzzzsys_form', 'input', 'as_event', 'After Save', '58c19d9bc559aca', 170, 68, 324, 150, 25, '1', 'center', '0', '0', '', '', 'After Save - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('581169ba2112f38', 'nuform', 'zzzzsys_form', 'input', 'bd_event', 'Before Delete', '58c19d9bc559aca', 180, 24, 527, 150, 25, '1', 'center', '0', '0', '', '', 'Before Delete - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('581169d91b9d203', 'nuform', 'zzzzsys_form', 'input', 'ad_event', 'After Delete', '58c19d9bc559aca', 190, 68, 527, 150, 25, '1', 'center', '0', '0', '', '', 'After Delete - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('581a4d665798263', 'nuform', 'zzzzsys_form', 'input', 'previewedit', 'Preview Edit Button', '570730313dd25c5', 70, 246, 129, 174, 25, '1', 'center', '0', '0', '', '', 'Preview Edit Button - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('5833648c6db79f7', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_table', 'Code', '570d90df6a2c12a', 270, 3, 3, 50, 18, '1', 'left', '0', '0', 'select ''0''', '', 'Code - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('583387f044052c5', 'nuhome', '', 'run', 'ff_button', 'Fast Form', '581288bcd699493', 140, 54, 78, 150, 30, '1', 'right', '0', '0', '', '', 'Fast Form - Home (HOME)', '', '', 'nuff', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58338d5893ec00a', 'nuff', 'zzzzsys_form', 'run', 'aframe', 'FORM', '583361606251aef', 20, 28, 539, 400, 390, '1', 'right', '1', '0', '', '', 'FORM - Fast Form (FF)', '', '', 'nuffcustomobjects', '', 'i', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('583f37bc5bba917', 'nuffobjects', 'zzzzsys_object', 'input', 'sob_all_id', ' Field Name', '5840d1f62187912', 20, 20, 30, 200, 18, '1', 'left', '1', '0', '', '', ' Field Name - Fast Form Objects (FFO)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('583f37d3224bcc8', 'nuffobjects', 'zzzzsys_object', 'input', 'sob_all_label', ' Label', '5840d1f62187912', 10, 49, 24, 200, 18, '1', 'left', '0', '0', '', '', ' Label - Fast Form Objects (FFO)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('583f4ed643fcc3b', 'nuff', 'zzzzsys_form', 'subform', 'obj_sf', 'Objects', '583361606251aef', 10, 28, 60, 455, 390, '1', 'right', '0', '0', '', '', 'Objects - Fast Form (FF)', '', '', 'nuffcustomobjects', '', 'i', '', '', '', '', '', '', '', '', '', '', '', 'zzzzsys_object', 'nuffobjects', 'sob_all_zzzzsys_form_id', '1', '1', 'g', '', '', '', '', ''),
('5845061c0e179c7', 'nuffobjects', 'zzzzsys_object', 'input', 'custom_id', ' ', '5840d1f62187912', 30, 20, 10, 0, 18, '1', 'left', '0', '0', 'SELECT 0', '', '  - Fast Form Objects (FFO)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('584de442bfbd456', 'nuobject', 'zzzzsys_object', 'input', 'javascriptbtn', 'Javascript', '58c63d38b88dbab', 480, 289, 265, 150, 25, '1', 'center', '0', '0', '', '', 'Javascript - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('585e5705f3e9867', 'nuobject', 'zzzzsys_object', 'html', 'nucalculator', 'Operators', '5851cf915a1c653', 410, 178, 80, 285, 99, '1', 'right', '0', '1', '', '', 'Operators - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\n<table>\n\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>1</td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>2</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>3</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> + </td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>.</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> * </td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> : </td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> / </td>\n  </tr>\n\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>4</td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>5</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>6</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> - </td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> ? </td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> = </td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> ! </td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton'' title=''Add a Space''> </td> \n  </tr>\n\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>7</td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>8</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>9</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>0</td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> ( </td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton'' colspan=2>Clear</td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> ) </td>\n  </tr>\n\n</table>\n'),
('5851cfeb30f9047', 'nuobject', 'zzzzsys_object', 'input', 'sob_calc_formula', 'Formula', '5851cf915a1c653', 430, 40, 80, 469, 35, '1', 'left', '0', '1', '', '', 'Formula - Object (OBJECT)', ' +', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a0940e9dc6916', '58a08a91c9b59a9', 'invoice_item', 'input', 'ite_thing', 'Item', '58a08a91c9b6df4', 10, 20, 54, 170, 18, '1', 'left', '1', '0', '', '', 'Item - Invoice Items (ITE)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('589f7673993720e', '5678ab2c48c5c41', 'employee', 'calc', 'thecalc', 'calc', '5678ab2c49bd810', 20, 67, 89, 100, 18, '1', 'right', '2', '0', '', '', 'calc - Employee Subform (EMP)', 'nuTotal("emp_name") + nuTotal("emp_cost")', '', 'nuuser', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('589f9c7972d1c5e', '5678ab2c48c5c41', 'employee', 'input', 'emp_cost', 'Wage', '5678ab2c49bd810', 30, 11, 329, 70, 17, '1', 'right', '1', '0', '', '', 'Wage - Employee Subform (EMP)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('58a09180222faae', '58a08a1abc4782c', 'invoice', 'subform', 'invoice_item', 'Items', '58a08a1abc48c9a', 10, 70, 168, 438, 219, '1', 'left', '0', '0', '', '', 'Items - Invoice (INV)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '58a08a91c9b59a9', 'ite_invoice_id', '1', '1', 'g', '', '', '', '', ''),
('58a091f8d1d6dc7', 'nuhome', '', 'run', 'run_invoice', 'Invoice', '58be4c05188661c', 180, 63, 66, 150, 30, '1', 'right', '1', '0', '', '', 'Invoice - Home (HOME)', '', '', '58a08a1abc4782c', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a09448e54ff6f', '58a08a91c9b59a9', 'invoice_item', 'input', 'ite_units', 'Units', '58a08a91c9b6df4', 20, 21, 177, 70, 18, '1', 'right', '0', '0', '', '', 'Units - Invoice Items (ITE)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N|€ 1,000.00', 'nuNumber', '', ''),
('58a0949b9e9922a', '58a08a91c9b59a9', 'invoice_item', 'input', 'ite_unit_price', 'Unit Cost', '58a08a91c9b6df4', 30, 21, 290, 70, 18, '1', 'right', '0', '0', '', '', 'Unit Cost - Invoice Items (ITE)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N|$ 1,000.00', 'nuNumber', '', ''),
('58a094d695573f2', '58a08a91c9b59a9', 'invoice_item', 'calc', 'ite_total', 'Total', '58a08a91c9b6df4', 40, 22, 390, 76, 18, '1', 'right', '0', '0', '', '', 'Total - Invoice Items (ITE)', 'nuTotal("ite_units") * nuTotal("ite_unit_price")', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a0c22bc011b1c', '58a08a1abc4782c', 'invoice', 'calc', 'inv_total', 'Grand Total', '58a08a1abc48c9a', 20, 307, 490, 76, 25, '1', 'right', '0', '0', '', '', 'Grand Total - Invoice (INV)', 'nuTotal("invoice_item.ite_total")', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a0c3d66b2daa7', '58a08a1abc4782c', 'invoice', 'input', 'inv_number', 'Invoice Number', '58a08a1abc48c9a', 30, 32, 168, 50, 25, '1', 'right', '0', '0', '', '', 'Invoice Number - Invoice (INV)', 'nuTotal("invoice_item.ite_total")', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a680c21664405', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_table', 'Table', '570d90df5ce8e1a', 10, 20, 0, 100, 18, '1', 'left', '0', '1', 'SELECT ''0''', '', 'Table - Object (OBJECT)', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', '', '', ''),
('58afef1eacbcf15', 'nuhome', '', 'run', 'run_format', 'Formats', '569dc4ed270f08a', 130, 298, 602, 150, 30, '1', 'left', '1', '0', '', '', 'Formats - Home (HOME)', '', '', 'nuformat', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58aff2b35cd9963', 'nuformat', 'zzzzsys_format', 'select', 'srm_type', 'Input Type', '58af6b019f658f4', 10, 18, 86, 85, 18, '1', 'left', '1', '0', '', '', 'Input Type - Input Formats (FMT)', '', '', '', '', '', '', '', '0', 'Number|Number|\nDate|Date', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('58b051c8e440efe', 'nuformat', 'zzzzsys_form', 'input', 'srm_format', ' ', '58af6b019f658f4', 40, 55, 86, 498, 35, '0', 'left', '0', '1', '', '', '  - Input Formats (FMT)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58b20351d1543ef', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_input_javascript', 'nuScroll JS Array', '570d90df707867b', 380, 97, 100, 441, 18, '1', 'left', '0', '0', '', '', 'nuScroll JS Array - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('58b34691918e917', 'nuformat', 'zzzzsys_form', 'word', 'format_title', 'Formats', '58af6b019f658f4', 50, 99, 86, 347, 18, '0', 'left', '0', '0', '', '', 'Formats - Input Formats (FMT)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuScroll', '[''$'', ''£'', ''€'']', ''),
('58b4125a0428dcc', '58a08a1abc4782c', 'invoice', 'input', 'inv_date', 'Date', '58a08a1abc48c9a', 40, 32, 406, 200, 25, '1', 'right', '0', '0', '', '', 'Date - Invoice (INV)', 'nuTotal("invoice_item.ite_total")', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|dd, dddd mmmm yyyy', 'nuDate', '', ''),
('58b418c77ac1ea8', 'nuobject', 'zzzzsys_object', 'select', 'sob_calc_format', 'Format', '5851cf915a1c653', 400, 11, 80, 143, 18, '1', 'right', '0', '0', '', '', 'Format - Object (OBJECT)', '', '', '', '', '', '', '', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('58b5314594a350e', 'nuformat', 'zzzzsys_format', 'html', 'nucalculator', ' ', '58af6b019f658f4', 60, 118, 86, 453, 250, '1', 'left', '0', '1', '', '', '  - Input Formats (FMT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\n<table id=''tof'' style=''width:500px''>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton number'' style=''font-size:18px'' width=''100%''>1000.</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton number'' style=''font-size:18px'' width=''100%''>1000,</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton number'' style=''font-size:18px'' width=''100%''>1,000.</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton number'' style=''font-size:18px'' width=''100%''>1.000,</td> \n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>yy</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>yyyy</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>pp</td>\n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>dd</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>ddd</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>dddd</td> \n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>mm</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>mmm</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>mmmm</td>\n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>hh</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>nn</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>ss</td>\n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>-</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>:</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>/</td> \n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>.</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>Space</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>,</td> \n  </tr>\n</table>\n'),
('58b74e4cc4e2647', 'nuformat', 'zzzzsys_format', 'input', 'currencysign', ' ', '58af6b019f658f4', 20, 120, 63, 20, 30, '1', 'left', '0', '0', '', '', '  - Input Formats (FMT)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuScroll', '[''$'', ''£'', ''€'', ''¢'']', ''),
('58b94e64eb76057', 'nuformat', 'zzzzsys_format', 'input', 'currencydecimals', ' ', '58af6b019f658f4', 30, 120, 590, 20, 30, '1', 'left', '0', '0', '', '', '  - Input Formats (FMT)', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuScroll', '[0,1,2,3,4]', ''),
('58b7528ca48f0ad', 'nuform', 'zzzzsys_form', 'input', 'previewbrowse', 'Preview Browse Form', '570730313dd25c5', 60, 207, 129, 174, 25, '1', 'center', '0', '0', '', '', 'Preview Browse Form - nuBuilder Form (FORM)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58bf0bfb0e531b2', 'nuhome', '', 'run', 'run_test', 'Test', '58be4c05188661c', 170, 110, 66, 150, 30, '1', 'right', '1', '0', '', '', 'Test - Home (HOME)', '', '', '58bf0b972c2a447', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58bf0cab3baa7f2', '58bf0b972c2a447', 'test_table', 'input', 'number1', 'Number 1', '58bf0b972c2c7a3', 10, 26, 119, 90, 18, '1', 'right', '0', '0', '', '', 'Number 1 - test_table (TEST2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N|$ 1,000.00', 'nuNumber', '', ''),
('58bf0ccc8df2fbb', '58bf0b972c2a447', 'test_table', 'input', 'number2', 'Number 2', '58bf0b972c2c7a3', 20, 61, 116, 90, 18, '1', 'left', '0', '0', '', '', 'Number 2 - test_table (TEST2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N|£ 1000.0', 'nuNumber', '', ''),
('58bf0cfea445803', '58bf0b972c2a447', 'test_table', 'input', 'date1', 'Date 1', '58bf0b972c2c7a3', 30, 100, 116, 90, 18, '1', 'left', '0', '0', '', '', 'Date 1 - test_table (TEST2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|mmmm', 'nuDate', '', ''),
('58bf0d1a7b6e7f6', '58bf0b972c2a447', 'test_table', 'input', 'date2', 'Date 2', '58bf0b972c2c7a3', 40, 150, 116, 90, 18, '1', 'left', '0', '0', '', '', 'Date 2 - test_table (TEST2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|dd-mmm-yyyy', 'nuDate', '', ''),
('58c713936ceb168', 'nuobject', 'zzzzsys_object', 'word', 'phpwrd', 'PHP Code :', '58c63d38b88dbab', 440, 30, 0, 79, 17, '1', 'right', '0', '0', '', '', 'PHP Code : - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58c81c6f8eae3dd', 'nuobject', 'zzzzsys_object', 'word', 'jswrd', 'Form''s Javascript Custom Code...', '58c63d38b88dbab', 450, 255, 80, 506, 17, '1', 'center', '0', '0', '', '', 'Form''s Javascript Custom Code... - Object (OBJECT)', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58c8dcc973b90f2', '58c86689b9af7fd', 'zzzzsys_function', 'select', 'sfu_language', 'Language', '58c86689b9b0291', 10, 35, 126, 100, 18, '1', 'left', '1', '0', '', '', 'Language - Function List (FUN)', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c8dfd2afa2e8e', '58c86689b9af7fd', 'zzzzsys_function', 'input', 'sfu_name', 'Name', '58c86689b9b0291', 20, 71, 126, 250, 18, '1', 'left', '1', '0', '', '', 'Name - Function List (FUN)', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c8dd9a1db5517', 'nuhome', '', 'run', 'run_function', 'Functions', '581288bcd699493', 150, 54, 303, 150, 30, '1', 'left', '1', '0', '', '', 'Functions - Home (HOME)', '', '', '58c86689b9af7fd', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c8e3ca4aca5e9', '58c86689b9af7fd', 'zzzzsys_function', 'input', 'sfu_syntax', 'Syntax', '58c86689b9b0291', 30, 107, 126, 250, 18, '1', 'left', '1', '0', '', '', 'Syntax - Function List (FUN)', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c8e41f4e14bda', '58c86689b9af7fd', 'zzzzsys_function', 'textarea', 'sfu_description', 'Description', '58c86689b9b0291', 40, 143, 126, 390, 76, '1', 'left', '1', '0', '', '', 'Description - Function List (FUN)', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c8e4462798dbf', '58c86689b9af7fd', 'zzzzsys_function', 'textarea', 'sfu_sample', 'Sample', '58c86689b9b0291', 50, 237, 126, 390, 76, '1', 'left', '1', '0', '', '', 'Sample - Function List (FUN)', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c8e4861081b1d', '58c86689b9af7fd', 'zzzzsys_function', 'textarea', 'sfu_see', 'See', '58c86689b9b0291', 60, 331, 126, 297, 46, '1', 'left', '0', '0', '', '', 'See - Function List (FUN)', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c9038dd96de4d', '58bf0b972c2a447', 'test_table', 'input', 'text2', 'Text 2', '58bf0b972c2c7a3', 50, 68, 284, 142, 18, '1', 'left', '0', '0', '', '', 'Text 2 - test_table (TEST2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|dd-mmm-yyyy', 'color', '', ''),
('58c903f75898ae1', '58bf0b972c2a447', 'test_table', 'input', 'text1', 'Text 1', '58bf0b972c2c7a3', 60, 151, 284, 142, 18, '1', 'left', '0', '0', '', '', 'Text 1 - test_table (TEST2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|dd-mmm-yyyy', 'range', '', ''),
('58c9c520001fff6', 'nuobject', 'zzzzsys_object', 'select', 'add_total', 'Fields', '5851cf915a1c653', 420, 86, 80, 285, 81, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', '', '1', 'SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', '');

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
('57db70b7aa22cda', 'tables', 'update sob_all_table', 'aaa', '$S  = "\n\n        SELECT * FROM zzzzsys_tab \n        JOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\n        JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = syt_zzzzsys_form_id\n\n";\n\n$T  = nuRunQuery("SELECT * FROM zzzzsys_object");\n\nwhile($R = db_fetch_object($T)){\n        \n    $s  = "\n        SELECT * FROM zzzzsys_form\n        WHERE zzzzsys_form_id = ''$R->zzzzsys_form_id''\n    ";\n    \n    $t  = nuRunQuery($s);\n    $r  = db_fetch_object($t);\n    $s  = "UPDATE zzzzsys_object WHERE sob_all_zzzzsys_form_id =  ''$R->zzzzsys_form_id''";\n    \n}\n\nprint ''done!'';\n', '', '57edbac65e1c52a', '', ''),
('57f6e1f954955c1', 'Dodgy', 'Dodgy', 'Dodgy', 'echo ''y'';\necho ''y'';\nx\necho ''y'';\necho ''y'';', '', 'nuaccessforms', '', ''),
('581135daea4f878', 'EV', 'copy events to form', 'nu', '$s  = "SELECT * FROM zzzzsys_form_backup";\n\n$t  = nuRunQuery($s);\n\nwhile($r = db_fetch_array($t)){\n    \n    addP(''BB'', $r);\n    addP(''BO'', $r);\n    addP(''BS'', $r);\n    addP(''AS'', $r);\n    addP(''BD'', $r);\n    addP(''AD'', $r);\n    \n    udForm($r);\n\n}\n\n$s  = "SELECT * FROM zzzzsys_object WHERE sob_all_type = ''lookup''";\n\n$t  = nuRunQuery($s);\n\nwhile($r = db_fetch_array($t)){\n    \n    look($r);\n\n}\n\n\nfunction look($r){\n    \n    $i              = $r[''zzzzsys_object_id''] . ''_AB'';      //-- after browse\n    $c              = $r[''sob_all_id''];\n    $p              = $r[''sob_lookup_php''];\n    \n    if(trim($p) == ''''){return;}\n    \n    $s              = "\n    INSERT INTO zzzzsys_php\n    (\n        zzzzsys_php_id,\n        sph_code,\n        sph_description,\n        sph_group,\n        sph_php,\n        sph_system\n    )\n    VALUES\n    (\n        ''$i'',\n        ''$c'',\n        ''After Browse ($c)'',\n        ''nubuilder'',\n        ?,\n        ''1''\n    )\n    ";\n    \n    nuRunQuery($s, array($p));\n    print $s.''<br><br>'';\n    \n\n}\n\n\nfunction udForm($r){\n    \n    $id = $r[''zzzzsys_form_id''];\n    $BB = $r[''sfo_before_browse_php''];\n    $BO = $r[''sfo_before_open_php''];\n    $BS = $r[''sfo_before_save_php''];\n    $AS = $r[''sfo_after_save_php''];\n    $BD = $r[''sfo_before_delete_php''];\n    $AD = $r[''sfo_after_delete_php''];\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_before_browse_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($BB));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_before_open_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($BO));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_before_save_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($BS));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_after_save_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($AS));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_before_delete_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($BD));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_after_delete_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($AD));\n\n}\n\n\n\n\nfunction addP($ev,$r){\n\n    $event	        = array();\n    $event[''BB'']    = ''sfo_before_browse_php'';\n    $event[''BO'']    = ''sfo_before_open_php'';\n    $event[''BS'']    = ''sfo_before_save_php'';\n    $event[''AS'']    = ''sfo_after_save_php'';\n    $event[''BD'']    = ''sfo_before_delete_php'';\n    $event[''AD'']    = ''sfo_after_delete_php'';\n    \n    $i              = $r[''zzzzsys_form_id''] . ''_'' . $ev;\n    $c              = $r[''sfo_code''];\n    $p              = $r[$event[$ev]];\n    \n    if(trim($p) == ''''){return;}\n    \n    $s              = "\n    INSERT INTO zzzzsys_php\n    (\n        zzzzsys_php_id,\n        sph_code,\n        sph_description,\n        sph_group,\n        sph_php,\n        sph_system\n    )\n    VALUES\n    (\n        ''$i'',\n        ''$ev'',\n        ''$ev ($c)'',\n        ''nubuilder'',\n        ?,\n        ''1''\n    )\n    ";\n    \n    nuRunQuery($s, array($p));\n    print $s.''<br><br>'';\n    \n}\n\n\n', '', 'nublank', '', ''),
('nuusergroup_BE', '', 'Before Edit for  ', 'nubuilder', 'nudebug(''before open BO'');', '', '', '1', ''),
('nulaunchdates_BE', 'RTVIEW', 'run_list View', 'nubuilder', '$s = "\n\nCREATE VIEW `zzzzsys_run_list`  AS  \nselect `zzzzsys_form`.`zzzzsys_form_id` AS `id`,''Form'' AS `run`,`zzzzsys_form`.`sfo_code` AS `code`,`zzzzsys_form`.`sfo_description` AS `description` from `zzzzsys_form` \n\n\nunion select `zzzzsys_report`.`zzzzsys_report_id` AS `id`,''Report'' AS `run`,`zzzzsys_report`.`sre_code` AS `code`,`zzzzsys_report`.`sre_description` AS `description` from `zzzzsys_report` \n\n\nunion select `zzzzsys_php`.`zzzzsys_php_id` AS `id`,''Procedure'' AS `run`,`zzzzsys_php`.`sph_code` AS `code`,`zzzzsys_php`.`sph_description` AS `description` from `zzzzsys_php`  where sph_system != ''1''  order by `code`;\n\n";\n\nnuRunQuery($s);\n', '', 'nublank', '1', ''),
('nuform_BS', 'BS', 'BS (FORM)', 'nubuilder', '    $o = ''#sfo_type#'';\n\n    if(''#sfo_type#''             == ''''){nuDisplayError(''<b>Type</b> Cannot Be Blank..'', ''sfo_type'');}\n    if(''#sfo_code#''             == ''''){nuDisplayError(''<b>Code</b> Cannot Be Blank..'', ''sfo_code'');}\n    if(''#sfo_description#''      == ''''){nuDisplayError(''<b>Description</b> Cannot Be Blank..'', ''sfo_description'');}\n\n\n    \n    \n    if($o == ''browseedit'' || $o == ''subform'' || $o == ''browse''){\n        \n        if($o != ''browse''){\n            nuCheckTabs();\n        }\n        \n        if($o != ''subform''){\n            nuCheckBrowse();\n        }\n        \n        if(''#sfo_browse_sql#''   == ''''){nuDisplayError(''<b>Browse SQL</b> Cannot Be Blank..'', ''sfo_browse_sql'');}\n    }\n\n    if($o == ''edit'' or $o == ''launch''){\n        nuCheckTabs();\n    }\n\n    if($o != ''launch''){\n        if(''#sfo_table#''            == ''''){nuDisplayError(''<b>Table Name</b> Cannot Be Blank..'', ''sfo_table'');}\n        if(''#sfo_primary_key#''      == ''''){nuDisplayError(''<b>Primary Key</b> Cannot Be Blank..'', ''sfo_primary_key'');}\n    }\n\nfunction nuCheckBrowse(){\n\n    $r  = 0;\n    $sf = nuSubformObject(''zzzzsys_browse_sf'');\n\n    for($i = 0 ; $i < count($sf[''rows'']) ; $i++){\n       if($sf[''rows''][$i][8] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(''<b>Must have at least 1</b> Browse Column Defined..'');\n    }\n    \n}\n\nfunction nuCheckTabs(){\n    \n    $r  = 0;\n    $sf = nuSubformObject(''zzzzsys_tab_sf'');\n    \n    for($i = 0 ; $i < count($sf[''rows'']) ; $i++){\n       if($sf[''rows''][$i][3] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(''<b>Must have at least 1</b> Tab Defined..'');\n    }\n    \n}', '', '', '1', ''),
('nuphp_AS', '', 'After Save for  ', 'nubuilder', '\nif(''#sph_php#'' == ''''){\n    nuRunQuery("DELETE FROM zzzzsys_php WHERE zzzzsys_php_id = ''#RECORD_ID#''");\n}\n', '', '', '1', ''),
('nuphp_BS', '', 'Before Save for  ', 'nubuilder', '$rid    = ''#RECORD_ID#'';\n$php    = ''#sph_php#'';\n\nif($rid != ''-1'' and $rid != ''-2''){ \n    \n    $s      = "SELECT * FROM zzzzsys_php WHERE zzzzsys_php_id = ''$rid''";\n    $t      = nuRunQuery($s);\n    $r      = db_fetch_object($t);\n    \n    if(db_num_rows($t) == 0){\n    \n        $c              = $r->sob_all_id;\n        $p              = $r->sob_lookup_php;\n        \n        if(trim($p) == ''''){return;}\n        \n        $s              = "\n        INSERT INTO zzzzsys_php\n        (zzzzsys_php_id, sph_system)\n        VALUES\n        (''$rid'', ''1'')\n        ";\n        \n        nuRunQuery($s);\n        \n    }\n    \n}\n\n', '', '', '1', ''),
('568b50020fc7a62_AB', 'com_business_id', 'After Browse (com_business_id)', 'nubuilder', '\nnuSetFormValue(''com_phone'', 1234);\nnuSetFormValue(''com_name'', 777);\nnuSetFormValue(''com_age'', 1966);\n\n\n', '', '', '1', ''),
('nupassword_BS', 'BS', 'BS (PASS)', 'nubuilder', '\n\n$is		= md5(''#old_password#'');\n$was	= md5(''#new_password_check#'');\n$will	= md5(''#new_password#'');\n$ses	= ''#SESSION_ID#'';\nnudebug("$is,$was,$will");\n\n$s      = "\n\n    SELECT * \n    FROM zzzzsys_session\n    WHERE zzzzsys_session_id = ''$ses''\n\n";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n$j  = json_decode($r->sss_access);\n\n$s      = "\n\n    SELECT * \n    FROM zzzzsys_user\n    WHERE zzzzsys_user_id = ''#USER_ID#''\n    AND sus_login_password = ''$is''\n\n";\n\n$t  = nuRunQuery($s);\nnudebug(''31 '' . $s);\n\nif(db_num_rows($t) == 0){\n\n    nuDisplayError(''Incorrect Password'');\n    return;\n    \n}\n\nif($will == $was){\n\n    $s  = "\n\n    UPDATE zzzzsys_user \n    SET sus_login_password = ''$will''\n    WHERE zzzzsys_user_id = ''#RECORD_ID#''\n    AND sus_login_password = ''$is''\n    \n    ";\n\nnudebug(''qqqq ''.$s);\n    nuRunQuery($s);\n\n}else{\n    \n    nuDisplayError(''"Enter New Password" Must be the same as "Re-Enter New Password"'');\n\n}\n\n\n\n\n\n\n\n', '', '', '1', ''),
('nuuser_AS', 'AS', 'AS (ACCUSE)', 'nubuilder', 'if(''#new_password#'' == ''#check_password#'' && ''#check_password#'' != ''#check_p''.''assword#'' && ''#check_password#'' != ''''){\n\n	$pw	= md5(''#check_password#'');\n	nuRunQuery("UPDATE zzzzsys_user SET sus_login_password = ''$pw'' WHERE zzzzsys_user_id = ''#RECORD_ID#''");\n\n}\n\n', '', '', '1', ''),
('nurunlist_BB', 'BB', 'BB (RUN)', 'nubuilder', '$s = "\n\nDROP VIEW IF EXISTS zzzzsys_run_list;\nCREATE VIEW zzzzsys_run_list AS\nSELECT zzzzsys_form_id AS id, ''Form'' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_form\nUNION\nSELECT zzzzsys_report_id AS id, ''Report'' AS run, sre_code AS code, sre_description AS description FROM zzzzsys_report\nUNION\nSELECT zzzzsys_php_id AS id, ''Procedure'' AS run, sph_code AS code, sph_description AS description FROM zzzzsys_php\nORDER BY code;\n\n";\n\nnuRunQuery($s);', '', '', '1', ''),
('nudebug_BD', 'BD', 'BD (DEBUG)', 'nubuilder', '\n$a  = ''#delete_option#'';\n$r  = ''#RECORD_ID#'';\n$d  = "DELETE FROM zzzzsys_debug ";\n\nif($a == 1){$d  = $d . "WHERE zzzzsys_debug_id = ''$r''";}\nif($a == 2){$d  = $d . "WHERE zzzzsys_debug_id != ''$r''";}\nif($a == 3){$d  = $d . "WHERE zzzzsys_debug_id < ''$r''";}\n\nnuRunQuery($d);\n', '', '', '1', ''),
('nuobject_BS', 'BS', 'BS (OBJECT)', 'nubuilder', '\n    $r  = ''#RECORD_ID#'';\n    $f  = ''#sob_all_zzzzsys_form_id#'';\n    $o  = ''#sob_all_id#'';\n\n    $s  = "\n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''$f''\n        AND sob_all_id = ''$o''\n        AND zzzzsys_object_id != ''$r''\n\n        ";\nnudebug('' sql ''. $s);\n    $t  = nuRunQuery($s);\n    $r  = db_fetch_row($t);\n    \n    if($r[0] > 0){\n        nuDisplayError(''This <b>ID</b> is already used on this Form..'');\n    }\n\n    $o = ''#sob_all_type#'';\n\n    if(''#sob_all_zzzzsys_tab_id#''             == ''''){nuDisplayError(''Type Cannot Be Blank..'', ''sob_all_zzzzsys_tab_idcode'');}\n    if(''#sob_all_type#''             == ''''){nuDisplayError(''Type Cannot Be Blank..'', ''sob_all_type'');}\n    if(''#sob_all_zzzzsys_form_id#''  == ''''){nuDisplayError(''Tab - Form Cannot Be Blank..'', ''sob_all_zzzzsys_form_idcode'');}\n    if(''#sob_all_id#''               == ''''){nuDisplayError(''ID Cannot Be Blank..'', ''sob_all_id'');}\n    if(''#sob_all_label#''   == ''''){nuDisplayError(''Label Cannot Be Blank..'', ''sob_all_label'');}\n    if(''#sob_all_top#''   == ''''){nuDisplayError(''Top Cannot Be Blank..'', ''sob_all_top'');}\n    if(''#sob_all_left#''   == ''''){nuDisplayError(''Left Cannot Be Blank..'', ''sob_all_left'');}\n    if(''#sob_all_width#''   == ''''){nuDisplayError(''Width Cannot Be Blank..'', ''sob_all_width'');}\n    if(''#sob_all_height#''   == ''''){nuDisplayError(''Height Cannot Be Blank..'', ''sob_all_height'');}\n    if(''#sob_all_cloneable#''   == ''''){nuDisplayError(''Cloneable Cannot Be Blank..'', ''sob_all_cloneable'');}\n    if(''#sob_all_align#''   == ''''){nuDisplayError(''Align Cannot Be Blank..'', ''sob_all_align'');}\n    if(''#sob_all_validate#''   == ''''){nudebug(''sob_all_validate : #sob_all_validate#'');nuDisplayError(''Validation Cannot Be Blank..'', ''sob_all_validate'');}\n    if(''#sob_all_readonly#''   == ''''){nuDisplayError(''Read Only Cannot Be Blank..'', ''sob_all_readonly'');}\n\n\n    if($o == ''display''){\n        if(''#sob_display_sql#''   == ''''){nuDisplayError(''Display Cannot Be Blank..'',''sob_display_sql'');}\n    }\n\n    if($o == ''html''){\n        if(''#sob_html_code#''   == ''''){nuDisplayError(''HTML Cannot Be Blank..'',''sob_html_code'');}\n    }\n\n    if($o == ''lookup''){\n        if(''#sob_lookup_zzzzsys_form_id#''   == ''''){nuDisplayError(''Form Cannot Be Blank..'', ''sob_lookup_zzzzsys_form_idcode'');}\n        if(''#sob_lookup_code#''   == ''''){nuDisplayError(''Code Cannot Be Blank..'', ''sob_lookup_code'');}\n        if(''#sob_lookup_description#''   == ''''){nuDisplayError(''Descrition Cannot Be Blank..'', ''sob_lookup_description'');}\n        if(''#sob_lookup_description_width#''   == ''''){nuDisplayError(''Width Cdddannot Be Blank..'', ''sob_lookup_description_width'');}\n    }\n\n    if($o == ''run''){\n        if(''#sob_run_zzzzsys_form_id#''   == ''''){nuDisplayError(''Run Cannot Be Blank..'', ''sob_run_zzzzsys_form_idcode'');}\n        if(''#sob_run_method#''   == ''''){nuDisplayError(''Method Cannot Be Blank..'', ''sob_run_method'');}\n    }\n\n\n    if($o == ''select''){\n        if(''#sob_select_multiple#''   == ''''){nuDisplayError(''Multiple Cannot Be Blank..'', ''sob_select_multiple'');}\n        if(''#sob_select_sql#''   == ''''){nuDisplayError(''SQL/List Cannot Be Blank..'', ''sob_select_sql'');}\n    }\n\n    if($o == ''subform''){\n        if(''#sob_subform_zzzzsys_form_id#''   == ''''){nuDisplayError(''Form Cannot Be Blank..'', ''sob_subform_zzzzsys_form_idcode'');}\n        if(''#sob_subform_foreign_key#''   == ''''){nuDisplayError(''Foreign Key Cannot Be Blank..'', ''sob_subform_foreign_key'');}\n        if(''#sob_subform_add#''   == ''''){nuDisplayError(''Addable Cannot Be Blank..'', ''sob_subform_add'');}\n        if(''#sob_subform_delete#''   == ''''){nuDisplayError(''Deletable Cannot Be Blank..'', ''sob_subform_delete'');}\n        if(''#sob_subform_type#''   == ''''){nuDisplayError(''Type Cannot Be Blank..'', ''sob_subform_type'');}\n    }\n\n    if($o == ''''){\n        if(''#sfo_browse_sql#''   == ''''){nuDisplayError(''Browse SQL Cannot Be Blank..'', ''sfo_browse_sql'');}\n    }\n', '', '', '1', ''),
('nuform_AS', 'AS', 'AS (FORM)', 'nubuilder', '$s  = "\r\n    SELECT * \r\n    FROM zzzzsys_browse \r\n    WHERE sbr_zzzzsys_form_id = ''#RECORD_ID#''\r\n    ORDER BY sbr_order;\r\n";\r\n\r\n\r\n$t = nuRunQuery($s);\r\n$o = 10;\r\n\r\nwhile($r = db_fetch_object($t)){\r\n        \r\n    $s  = "\r\n        UPDATE zzzzsys_browse \r\n        SET sbr_order = ''$o''\r\n        WHERE zzzzsys_browse_id = ''$r->zzzzsys_browse_id''\r\n        ORDER BY sbr_order;\r\n    ";\r\n    \r\n    nuRunQuery($s);\r\n    \r\n    $o = $o + 10;    \r\n    \r\n}\r\n\r\n$s  = "\r\n    SELECT * \r\n    FROM zzzzsys_tab \r\n    WHERE syt_zzzzsys_form_id = ''#RECORD_ID#''\r\n    ORDER BY syt_order;\r\n";\r\n\r\n$t = nuRunQuery($s);\r\n$o = 10;\r\n\r\nwhile($r = db_fetch_object($t)){\r\n        \r\n    $s  = "\r\n        UPDATE zzzzsys_tab \r\n        SET syt_order = ''$o''\r\n        WHERE zzzzsys_tab_id = ''$r->zzzzsys_tab_id''\r\n        ORDER BY syt_order;\r\n    ";\r\n    \r\n    nuRunQuery($s);\r\n    \r\n    $o = $o + 10;    \r\n    \r\n}\r\n\r\n', '', '', '1', ''),
('nucalcobjects_BB', 'SYS', 'System PHP', '', '\n$s = "\n\nCREATE TABLE #TABLE_ID#\n\nSELECT \n   sob_all_zzzzsys_form_id AS theform,\n   '''' AS theparent,\n   sob_all_id AS thechild,\n   CONCAT(sob_all_id) as thevalue\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   su.sob_all_id AS theparent,\n   inp.sob_all_id AS thechild,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )\n\n";\n    \nnuRunQuery($s);\n\n', '', '', '', ''),
('570d9046964038e_AB', 'SYS', 'System PHP', '', '\n$s  = "\n        SELECT * \n        FROM zzzzsys_tab \n        JOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\n        WHERE zzzzsys_tab_id = ''#LOOKUP_RECORD_ID#''\n        \n        ";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n\nnuSetFormValue(''sob_all_zzzzsys_form_id'', $r->syt_zzzzsys_form_id);\nnuSetFormValue(''sob_all_table'', $r->sfo_table);\n', '', '', '', ''),
('nuform_AD', '', '', '', '$s      = "DELETE FROM zzzzsys_browse WHERE sbr_zzzzsys_form_id = ''#RECORD_ID#''";\n$t      = nuRunQuery($s);\n\n$s      = "DELETE FROM zzzzsys_tab WHERE syt_zzzzsys_form_id = ''#RECORD_ID#''";\n$t      = nuRunQuery($s);\n\n\n$e      = array(''BB'',''BE'',''BS'',''AS'',''BD'',''AD'');         //-- Form events\n\nfor($i = 0 ; $i < count($e) ; $i++){\n    \n    $s  = "DELETE FROM zzzzsys_php WHERE zzzzsys_php_id = ''#RECORD_ID#_" . $e[$i] ."''";\n    $t  = nuRunQuery($s);\n    \n}\n\n$s      = "\n        DELETE \n        FROM zzzzsys_object \n        WHERE \n            sob_all_type = ''run'';\n            sob_run_zzzzsys_form_id = ''#RECORD_ID#''\n        ";\n            \n$t      = nuRunQuery($s);\n\n\n', '', '', '', ''),
('58bf0b972c2a447_BE', '', '', '', '\nnuAddJavascript(''console.log("BE");'');\n\nnudebug(''BE'');', '', '', '', ''),
('57452c417370475_AB', '', '', '', 'nuSetFormValue(''slf_add_button'', ''1'');\nnuSetFormValue(''slf_print_button'', ''1'');\nnuSetFormValue(''slf_save_button'', ''1'');\nnuSetFormValue(''slf_clone_button'', ''1'');\nnuSetFormValue(''slf_delete_button'', ''1'');\n', '', '', '', ''),
('nuffcustomobjects_BB', '', '', '', '\n$s  = "\n\n    UPDATE zzzzsys_object\n    SET sob_all_fast_form_description = (SELECT CONCAT(sob_all_label, '' - '', sfo_description, '' ('', sfo_code, '')'')\n    FROM zzzzsys_form\n    WHERE zzzzsys_form_id = sob_all_zzzzsys_form_id)\n\n";\n\nnuRunQuery($s);', '', '', '', '');

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
('57f6f86abcb6b35', '57578be0057a49f', '57f6e1f954955c1');

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

--
-- Dumping data for table `zzzzsys_session`
--

INSERT INTO `zzzzsys_session` (`zzzzsys_session_id`, `sss_timeout`, `sss_access`) VALUES
('58c98723728de49', '2017-03-16 10:13:52', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""]]}'),
('58c9b59d7e5c8fc', '2017-03-16 10:42:18', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""]]}'),
('58c9bc465fa8445', '2017-03-16 10:54:58', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58c9bf67bacd00d', '2017-03-16 11:15:47', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58c9c48dc0e7b9b', '2017-03-16 11:22:43', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58c9c7fe6606743', '2017-03-16 11:35:58', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58c9c8ecb66c6f8', '2017-03-16 11:52:38', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58c9cd4d6bbdd78', '2017-03-16 11:56:25', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58ca0f4199b5a6f', '2017-03-16 17:48:27', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58ca202eca64c07', '2017-03-16 17:49:17', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58ca2067e55667d', '2017-03-16 17:55:32', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58ca42479d3524e', '2017-03-16 20:44:39', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58ca49746ccf5ef', '2017-03-16 21:02:10', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58ca4e9e0b182a8', '2017-03-16 21:14:26', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58ca50a31d7a14b', '2017-03-16 21:15:27', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58ca50c000b5e0e', '2017-03-16 21:16:50', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}'),
('58ca51b4b85a291', '2017-03-16 21:19:56', '{"session":{"zzzzsys_user_group_id":"","zzzzsys_user_id":"globeadmin","sug_zzzzsys_form_id":"nuhome","global_access":"1"},"forms":[["56773cb405f4913",null,null,null,null,null],["5678ab2c48c5c41",null,null,null,null,null],["568b508eec00d80",null,null,null,null,null],["56c513162acd102",null,null,null,null,null],["577b4d78ef9a2a0",null,null,null,null,null],["57edbac65e1c52a",null,null,null,null,null],["58a08a1abc4782c",null,null,null,null,null],["58a08a91c9b59a9",null,null,null,null,null],["58bf0b972c2a447",null,null,null,null,null],["58c86689b9af7fd",null,null,null,null,null],["nuaccess",null,null,null,null,null],["nuaccessforms",null,null,null,null,null],["nuaccessgroup",null,null,null,null,null],["nuaccesslevelreport",null,null,null,null,null],["nuaccessreport",null,null,null,null,null],["nublank",null,null,null,null,null],["nubrowse",null,null,null,null,null],["nubuildreport",null,null,null,null,null],["nucalcobjects",null,null,null,null,null],["nudebug",null,null,null,null,null],["nuerror",null,null,null,null,null],["nuevent",null,null,null,null,null],["nuff",null,null,null,null,null],["nuffcustomobjects",null,null,null,null,null],["nuffobjects",null,null,null,null,null],["nuform",null,null,null,null,null],["nuformat",null,null,null,null,null],["nuformatcurrency",null,null,null,null,null],["nuhome",null,null,null,null,null],["nulaunchdates",null,null,null,null,null],["nunonsystemform",null,null,null,null,null],["nuobject",null,null,null,null,null],["nupassword",null,null,null,null,null],["nuphp",null,null,null,null,null],["nuphplibrary",null,null,null,null,null],["nurunlist",null,null,null,null,null],["nurunphp",null,null,null,null,null],["nurunreport",null,null,null,null,null],["nusetup",null,null,null,null,null],["nutab",null,null,null,null,null],["nutimezone",null,null,null,null,null],["nutranslate",null,null,null,null,null],["nuuser",null,null,null,null,null],["nuusergroup",null,null,null,null,null]],"reports":[["574b9845a681d27","nulaunchdates"]],"procedures":[["57578be0057a49f","nulaunchdates"],["57db70b7aa22cda","57edbac65e1c52a"],["57f6e1f954955c1","nuaccessforms"],["581135daea4f878","nublank"],["nuusergroup_BE",""],["nulaunchdates_BE","nublank"],["nuform_BS",""],["nuphp_AS",""],["nuphp_BS",""],["568b50020fc7a62_AB",""],["nupassword_BS",""],["nuuser_AS",""],["nurunlist_BB",""],["nudebug_BD",""],["nuobject_BS",""],["nuform_AS",""],["nucalcobjects_BB",""],["570d9046964038e_AB",""],["nuform_AD",""],["58bf0b972c2a447_BE",""],["57452c417370475_AB",""],["nuffcustomobjects_BB",""]]}');

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
('574665a15bc3218', 'nuusergroup', 'Group', 10),
('5746616ea8ead0c', 'nuaccessforms', 'Form', 10),
('575607eee7c6ad1', '575607eee7c3448', '-', 10),
('575611cca558059', 'nublank', 'Launch', 10),
('575a273aadf6c37', 'nuaccessgroup', 'Access Group', 10),
('575a31edccc2012', 'nudebug', 'Debug', 10),
('575f538d131616e', '575f538d131477c', 'Procedure', 10),
('575f5474793747e', 'nuaccess', 'Procedures', 30),
('575f54747937ff5', 'nuaccess', 'Reports', 40),
('575f55e6e740d5a', 'nuaccessreport', 'Access', 10),
('57637ad7b563282', 'nuaccesslevelreport', 'Access', 10),
('576372e045a2f81', 'nutab', 'Tabs', 10),
('577b4228b34d894', 'nurunreport', 'Report', 10),
('577b48b3f3554c1', '577b48b3f351026', 'PHP', 10),
('577b4b6ca3ec226', 'nurunphp', 'PHP', 10),
('577b4d78ef9c1d6', '577b4d78ef9a2a0', 'test', 10),
('577c5efa0d6275e', 'nulaunchdates', 'Launch', 10),
('577da395132bac7', 'nurunlist', 'Test', 10),
('57a291d5714f5e0', 'nutimezone', 'Zone', 10),
('57a29441f16e2e2', 'nusetup', 'Setup', 10),
('57a29441f16eb9f', 'nusetup', 'Email Settings', 20),
('57a29441f16f59d', 'nusetup', 'Header', 30),
('57a7c1cb78c31d5', 'nutranslate', 'Phrase', 10),
('57a93cb51e28b8a', '57a93cb51e24fd8', 'Password', 10),
('57abe72610d666d', 'nupassword', 'Change Password', 10),
('57eaf962bd0a957', 'nuphplibrary', 'PHP', 10),
('57eb1bd4cb7e1f4', 'nuphp', 'Library', 30),
('57edbac65e1d42e', '57edbac65e1c52a', 'Main', 10),
('57fad2784b27d77', '57fad2784b26e07', 'Main', 10),
('5806f4d6c7627ff', 'nuerror', 'Main', 10),
('5811788510768ef', 'nuphp', 'Code', 20),
('581288bcd699493', 'nuhome', 'Builders', 20),
('583361606251aef', 'nuff', 'Form', 10),
('583f372b53bb99f', 'nuffobjects', 'Field', 10),
('5840d1f62187912', 'nuffobjects', 'Label', 20),
('5851cf915a1c653', 'nuobject', 'Calc', 90),
('586d983d80ee1f8', '56773cb405f4913', 'Test', 30),
('58a08a1abc48c9a', '58a08a1abc4782c', 'Invoice', 10),
('58a08a91c9b6df4', '58a08a91c9b59a9', 'Rows', 10),
('58ae1d8785309ed', '5678ab2c48c5c41', 'Test', 40),
('58af6b019f658f4', 'nuformat', 'Format', 10),
('58b74d9dbd80af7', 'nuformatcurrency', 'Currency', 10),
('58be4c05188661c', 'nuhome', 'Testing', 30),
('58bf0b972c2c7a3', '58bf0b972c2a447', 'test formatting', 10),
('58c19d9bc559aca', 'nuform', 'Custom Code', 30),
('58c63d38b88dbab', 'nuobject', 'Custom Code', 100),
('58c86689b9b0291', '58c86689b9af7fd', 'Function', 10);

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
('5747ce1dd50cdc5', '57466de0851d354', '', 'steven', 'steven@nubuilder.com', 'nu', '0288bde0c2d593f2b5766f61b826a650'),
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
-- Structure for view `zzzzsys_calc`
--
DROP TABLE IF EXISTS `zzzzsys_calc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zzzzsys_calc`  AS  select `zzzzsys_object`.`sob_all_zzzzsys_form_id` AS `theform`,'' AS `theparent`,`zzzzsys_object`.`sob_all_id` AS `thechild`,concat(`zzzzsys_object`.`sob_all_id`) AS `thevalue` from `zzzzsys_object` where ((`zzzzsys_object`.`sob_input_type` = 'number') or (`zzzzsys_object`.`sob_all_type` = 'calc')) union select `su`.`sob_all_zzzzsys_form_id` AS `theform`,`su`.`sob_all_id` AS `theparent`,`inp`.`sob_all_id` AS `thechild`,concat(`su`.`sob_all_id`,'.',`inp`.`sob_all_id`) AS `thevalue` from (`zzzzsys_object` `su` join `zzzzsys_object` `inp` on((`su`.`sob_subform_zzzzsys_form_id` = `inp`.`sob_all_zzzzsys_form_id`))) where ((`su`.`sob_all_type` = 'subform') and ((`inp`.`sob_input_type` = 'nuNumber') or (`inp`.`sob_input_type` = 'number') or (`inp`.`sob_all_type` = 'calc'))) ;

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
  ADD KEY `sbr_zzzsys_form_id` (`sbr_zzzzsys_form_id`);

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
  ADD KEY `sev_zzzsys_object_id` (`sev_zzzzsys_object_id`),
  ADD KEY `sev_event` (`sev_event`);

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
-- Indexes for table `zzzzsys_format`
--
ALTER TABLE `zzzzsys_format`
  ADD PRIMARY KEY (`zzzzsys_format_id`);

--
-- Indexes for table `zzzzsys_function`
--
ALTER TABLE `zzzzsys_function`
  ADD PRIMARY KEY (`zzzzsys_function_id`);

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
