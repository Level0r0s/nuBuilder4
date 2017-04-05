-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2017 at 12:22 AM
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
-- Table structure for table `aaa`
--

CREATE TABLE `aaa` (
  `aaa_id` varchar(25) NOT NULL,
  `com_name` varchar(1000) NOT NULL,
  `com_suburb` date NOT NULL,
  `com_phone` varchar(1000) NOT NULL,
  `com_color_id` varchar(1000) NOT NULL,
  `com_business_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('57295aa5660f48b', '', 'Mrs Comuh', '568a00d504d264c', '', '43 Allen Stkh', '0000-00-00', '', '', '', '568ef59c1bd769c', 35, '13132', ''),
('58ade54dac2128b', '', '777', '568a00c77f8f709', '', 'fgtetry', NULL, '', '', '', '', 1966, '', ''),
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

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `emp_company_id`, `emp_name`, `emp_mobile`, `emp_business_id`, `emp_cost`) VALUES
('58cafd48dc5ec68', '58ade54dac2128b', '', '', '', '21.00'),
('58d16d611952b4f', '57295aa5660f48b', '', 'xfsyd', '', '8.00'),
('58d16d6119531ef', '57295aa5660f48b', '', 'gumk', '', '13.00'),
('58d16e87da1696a', '58ade54dac2128b', '', '', '', '13.00');

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
('58ae12b19cd86fe', 77, '215.3000000', '2017-03-19'),
('58dd85c34768b7b', 222, '1.8000000', '2017-03-15');

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
('58ae12b19cd8ecf', '58ae12b19cd86fe', 'egyh', 4.0000, 2.0000, 8.0000),
('58bf8fbec518c94', '58ae12b19cd86fe', 'tyntyh', 33.0000, 22.0000, 726.0000),
('58bf8fbec51935c', '58ae12b19cd86fe', '321', 43.0000, 33.0000, 1419.0000),
('58dd85c34769469', '58dd85c34768b7b', 'dfb', 6.0000, 3.0000, 18.0000);

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
('57678e7dc00c099', 'ADMIN', 'Admin.', 'nuhome');

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
('58c2ed45ade8ad1', '57678e7dc00c099', '56773cb405f4913', '1', '1', '1', '1', '', '1'),
('58cd6541dfd5b3b', '57678e7dc00c099', 'nufflaunch', '1', '1', '0', '0', '', '1'),
('58c42925ba42dd4', '57678e7dc00c099', 'nuaccess', '0', '1', '1', '0', '', '1'),
('58cc1fb1a17ebaf', '57678e7dc00c099', 'nuhome', '1', '1', '1', '1', '', '1'),
('58cd659fbd24dde', '57678e7dc00c099', 'nuffcustomobjects', '0', '0', '0', '0', '', '0');

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
('58dba51902ac30b', '57678e7dc00c099', 'nufastform');

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
('57678f1c543edd9', '57678e7dc00c099', '574b9845a681d27');

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
('57426b4c86ffc81', '57426b4c86fede1', 'Code', 'sfo_code', 'l', '', 10, 70),
('57426b4c8700731', '57426b4c86fede1', 'Description', 'sfo_description', 'l', '', 20, 250),
('57426b4c87011a9', '57426b4c86fede1', 'Type', 'sfo_type', 'l', '', 5, 100),
('574290680092fa8', 'nuaccess', 'Description', 'sal_description', 'l', '', 20, 300),
('57428fe73028089', 'nuaccess', 'Code', 'sal_code', 'l', '', 10, 100),
('574277f47e2b8d7', 'nunonsystemform', 'Code', 'sfo_code', 'l', '', 10, 70),
('574277f47e2c2b7', 'nunonsystemform', 'Description', 'sfo_description', 'l', '', 20, 250),
('574277f47e2cd55', 'nunonsystemform', 'Type', 'sfo_type', 'l', '', 5, 100),
('57466f4a6050c2b', 'nuuser', 'Name', 'sus_name', 'l', '', 10, 150),
('57466f4a6051984', 'nuuser', 'Email', 'sus_email', 'l', '', 20, 300),
('57466f4a605234d', 'nuuser', 'Access Level', 'sal_description', 'l', '', 30, 150),
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
('5763816cd36ed10', 'nubrowse', 'Title', 'sbr_title', 'l', '', 20, 240),
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
('58338c35b340e06', 'nuffcustomobjects', 'Form Code', 'sfo_code', 'l', '', 20, 120),
('s14914252378303', 'nuffcustomobjects', 'Type', 'IF(sob_all_type=''input'', sob_input_type, '''')', 'l', NULL, 50, 80),
('5844ffb2a70ca9b', 'nuffcustomobjects', 'Type', 'sob_all_type', 'l', '', 40, 70),
('58d7426e73f09c3', 'nuffcustomobjects', 'label', 'sob_all_label', NULL, NULL, 10, 0),
('58d7426e73f0ebd', 'nuffcustomobjects', 'Object ID', 'sob_all_id', 'l', '', 30, 175),
('585efbcfe4e0558', 'nucalcobjects', 'object.subform', 'CONCAT(thechild,IF(theparent = '''','''',''.''),theparent)', 'c', '', 10, 200),
('58a08a1abc4824f', '58a08a1abc4782c', 'Invoice Number', 'inv_number', 'l', '', 10, 150),
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
('58c867c32edcb6c', '58c86689b9af7fd', 'Syntax', 'sfu_syntax', NULL, NULL, 30, 247),
('58c8e5356733ca9', '58c86689b9af7fd', 'Language', 'sfu_language', NULL, NULL, 10, 100),
('58cd57b94f3c100', '58a08a1abc4782c', 'Date', 'inv_date', 'l', 'D|dd-mmm-yyyy', 20, 150),
('58d6cf633a30fb3', '58d3719f55819e7', 'dddd', 'dddd', 'l', NULL, 30, 222),
('58d3719f5583775', '58d3719f55819e7', 'Code', 'sal_code', 'l', '', 10, 100),
('58d3719f5583b73', '58d3719f55819e7', 'Description', 'sal_description', 'l', '', 20, 300),
('58d6c1c8a30ae06', 'nubrowse', 'join', 'sbr_zzzzsys_form_id', NULL, NULL, 10, 0),
('s14913715626406', 'c14913710309970799', 'Company Name', 'com_name', 'l', '', 20, 200),
('s14913715626407', 'c14913710309970799', 'Suburb', 'com_suburb', 'l', '', 30, 200),
('s14913715626408', 'c14913710309970799', 'Calc this', 'com_phone', 'l', '', 40, 200),
('s14913715626409', 'c14913710309970799', 'Color', 'com_color_id', 'l', '', 50, 200),
('s14913715626410', 'c14913710309970799', 'Business Type', 'com_business_id', 'l', '', 60, 200);

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
('58ca47b5d025130', '58c9c520001fff6', 'onchange', 'nuAddCalcObject()'),
('58d082a44cc838c', '58d082a44cc79a5', 'onclick', 'nuPopPHP(event, ''BB'');'),
('58d08322022b7e2', '58d08322022ad15', 'onclick', 'nuPopPHP(event, ''BB'');'),
('58d6f5396f6c778', '58d6f5396f6bd38', 'onclick', 'nuPopPHP(event, ''BB'');'),
('58d6f5a644bb933', '58d6f5a644bae0c', 'onclick', 'nuPopPHP(event, ''BB'');'),
('58d76b89aeb07d6', '58d76b89aeafcea', 'onkeydown', 'nuFORM.scrollList(event, window.nuObjectFields);'),
('58d77876b3e8944', '58d700e66eab5aa', 'onclick', 'nuShowFFO(event)'),
('p14911023476093', '58dfee3c5b0286944', 'onclick', '$(''#'' + this.id).remove();'),
('p14911029767743', 'p14911022481709', 'onclick', 'nuMoveFF();'),
('s14913709691917', '583387f044052c5', 'onclick', 'nuGetPHP(''nufflaunch'', ''nufastform'')');

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
('nubrowse', 'subform', 'FRMBR', 'Browse Columns', 'zzzzsys_browse', 'zzzzsys_browse_id', '', 0, 5, 'SELECT * FROM zzzzsys_browse\nORDER BY sbr_order\n', '$(''#nuSearchButton'').remove();\n$(''#nuSearchField'').remove();\n$(''#nuPrintButton'').remove();\n\nnuSetTitle($(''#sbr_title'').val());\n\nvar pid = parent.nuFORM.getCurrent().record_id;\n\nif(nuFORM.getCurrent().record_id == -1){\n    $(''#sbr_zzzzsys_form_id'').val(pid).change();\n}\n'),
('nutab', 'browseedit', 'TAB', 'Form Tab', 'zzzzsys_tab', 'zzzzsys_tab_id', '', 0, 0, 'SELECT * FROM zzzzsys_tab\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\nORDER BY syt_order', '\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.innerHTML);\n});\n'),
('nuobject', 'browseedit', 'OBJECT', 'Object', 'zzzzsys_object', 'zzzzsys_object_id', '', 0, 0, 'SELECT * FROM zzzzsys_object\nJOIN zzzzsys_tab ON zzzzsys_tab_id = sob_all_zzzzsys_tab_id\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id \n', '\n$(''#zzzzsys_event_sfsev_javascript'').attr(''id'',''jsfuntitle'');\n$(''#sob_calc_formula'').addClass(''nuCalculatorCurrency'').css(''font-size'', 12);\n$(''#sob_all_display_condition'').addClass(''sql'');\n$(''#sob_all_default_value_sql'').addClass(''sql'');\n$(''#sob_display_sql'').addClass(''sql'');\n$(''#sob_select_sql'').addClass(''sql'');\n$(''#sob_lookup_php'').addClass(''php'');\n$(''#sob_lookup_javascript'').addClass(''js'');\n$(''#sob_input_javascript'').addClass(''js'');\n$(''#sob_html_code'').addClass(''html'');\n$("[id$=''sev_javascript'']").addClass(''js'');\n\nvar v           = $(''#sob_input_type'').val();\n\nnuShowInputJS(v);\nnuHideCalcObjects();\nnuSetTitle($(''#sob_all_id'').val());\n\nvar filter = String(window.filter).split(''|'');\n\nif(filter[0] == ''fromfastform''){\n    \n    $(''#nuDeleteButton'').remove();\n    $(''#nuCloneButton'').remove();\n    $(''#nuSaveButton'').remove();\n    nuSetTitle(''was..<b>'' + $(''#sob_all_label'').val() + '':'' + $(''#sob_all_id'').val() + ''</b>'');\n    $(''#sob_all_id'').val(filter[1]).addClass(''nuHighlight'');\n    $(''#sob_all_label'').val(filter[2]).addClass(''nuHighlight'');\n    \n}\n\n\n\n$(''.js'').dblclick(function() {nuOpenAce(''Javascript'', this.id);});\n$(''.sql'').dblclick(function() {nuOpenAce(''SQL'', this.id);});\n$(''.html'').dblclick(function() {nuOpenAce(''HTML'', this.id);});\n$(''.php'').dblclick(function() {nuOpenAce(''PHP'', this.id);});\n\nnuObjectColor();\n\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.textContent);\n});\n\nnuHide(''sob_input_format'');\n\nvar sit = $(''#sob_input_type'').val();\n\nif(sit == ''nuDate'' || sit == ''nuNumber''){\n    nuShow(''sob_input_format'');\n}\n\nif(sit == ''nuScroll''){\n    nuShow(''sob_input_javascript'');\n}else{\n    nuHide(''sob_input_javascript'');\n}\n\n\n\nfunction nuObjectColor(){\n\n    $(''.nuValidate'').removeClass(''nuValidate'');\n\n	var o			= [];\n	o[''run'']		= 1;\n	o[''display'']	= 2;\n	o[''select'']		= 3;\n	o[''lookup'']		= 4;\n	o[''subform'']	= 5;\n	o[''input'']		= 6;\n	o[''html'']		= 7;\n	o[''calc'']		= 8;\n\n    $(''#sob_all_type'').addClass(''nu_''+$(''#sob_all_type'').val());\n    \n    $("#sob_all_type > option").each(function() {\n        $(this).addClass(''nu_''+this.value);\n    });\n	\n    var t   = o[$(''#sob_all_type'').val()];\n    \n    $("[id^=''nuTab'']").removeClass(''nuRelatedTab'');\n    \n    for(var i = 1 ; i < o.length ; i++){\n        $(''#nuTab'' + i).removeClass(''nuRelatedTab'');\n    }\n    \n    $(''#nuTab0'').addClass(''nuRelatedTab'');\n    $(''#nuTab'' + t).addClass(''nuRelatedTab'');\n    \n} \n\nfunction nuChooseEventList(){\n\n    if($(''#sob_all_type'').val() == ''subform''){\n        \n        return [''onchange'',''beforeinsertrow'',''afterinsertrow'', ''ondelete''];\n    \n    }else{\n        \n        return [''onblur'',''onclick'',''onchange'',''onfocus'',''onkeydown''];\n    \n    }\n\n}\n\n\n\nfunction nuAddToFormula(e){\n    \n    var fld = e.target.innerHTML;\n    var frm = $(''#sob_calc_formula'').val();\n\n    if(fld == ''Clear''){\n        \n        $(''#sob_calc_formula'')\n        .val('''')\n        .addClass(''nuEdited'');\n        return;\n        \n    }\n\n    $(''#sob_calc_formula'')\n    .addClass(''nuEdited'')\n    .val(frm + fld);\n    \n}\n\nfunction nuShowInputJS(t){\n\n    nuHide(''sob_input_format'');\n    nuHide(''sob_input_javascript'');\n    \n    if(t == ''nuScroll''){\n        nuShow(''sob_input_javascript'');\n    }\n    \n    if(t == ''nuDate'' || t == ''nuNumber''){\n        \n        nuShow(''sob_input_format'');\n\n        $(''#sob_input_format'').children().each(function(index) {\n            \n            $(this).show();\n            \n            if($(this).val()[0] == ''D'' && t != ''nuDate'')   {$(this).hide();}\n            if($(this).val()[0] == ''N'' && t != ''nuNumber'') {$(this).hide();}\n            \n        });\n        \n    }\n    \n}\n\n\nfunction nuHideCalcObjects(){\n\n    var f   = $(''#sob_all_zzzzsys_form_id'').val();\n\n    $(''#add_total'').children().each(function(index) {\n\n        if($(this).val() != f){\n            $(this).hide();\n        }\n\n    });\n    \n}\n\n\nfunction nuAddCalcObject(){\n    \n    var f   = $(''#sob_calc_formula'').val();\n    var t   = $(''#add_total :selected'').text();\n    var s   = f + "nuTotal(''" + t + "'')";\n    \n    if(t == ''''){return;}\n    \n    $(''#sob_calc_formula'').val(s);\n    $(''#add_total'').val('''');\n    \n}\n'),
('nufflaunch', 'launch', 'FF', 'Fast Form', '', '', '', 0, 0, 'SELECT * FROM zzzzsys_form', '\n$(''#new_id'').val(nuID());\n\nfunction nuShowFFO(e){\n    \n    var t   = $(''#'' + e.target.id).attr(''data-nu-prefix'');\n    var i   = $(''#'' + t + ''ff_id'').val();\n    var l   = $(''#'' + t + ''ff_label'').val();\n    var f   = $(''#'' + t + ''ff_field'').val();\n    \n    var fff = ''fromfastform|'' + f + ''|'' + l;\n\n    nuPopup(''nuobject'', i, fff);\n\n}\n\n\nfunction nuMoveFF(){\n    \n    var i   = $(''#new_id'').val();\n\n    nuPopup(i, -2);\n\n}\n\nfunction nuCreateSQLPrefix(){\n    \n    var p   = $(''#fastform_prefix'');\n    var t   = $(''#fastform_table'');\n    \n    p.val(String(t.val()).substr(0, 3));\n    \n}\n\n\nfunction nuBeforeSave(){\n    \n    var sf  = nuFORM.subform(''obj_sf'').rows\n    var a   = [];\n    \n    for(var i = 0 ; i < sf.length ; i++){\n        \n        a.push(sf[i][2]);\n        \n    }\n    \n    var d   = nuDuplicates(a);\n    \n    if(d.length == 0){\n        return true;\n    }else{\n        \n        d.unshift(''<b>Duplicate Values..</b>'');\n        nuAlert(d);\n        \n    }\n    \n}\n\n\n\n'),
('nuevent', 'edit', 'EVE', 'Object Events', 'zzzzsys_event', 'zzzzsys_event_id', '', 0, 0, 'SELECT * FROM zzzzsys_event', ''),
('nuaccess', 'browseedit', 'ACC', 'Access Levels', 'zzzzsys_access_level', 'zzzzsys_access_level_id', '', 0, 0, 'SELECT * FROM zzzzsys_access_level\nORDER BY sal_code\n', 'nuSetTitle($(''#sal_code'').val());'),
('nunonsystemform', 'edit', 'FORMZ', 'nuBuilder non-System Form', 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 0, 'SELECT * FROM zzzzsys_form\nORDER BY sfo_code', ''),
('nuaccessforms', 'edit', 'ACCFRM', 'Accessible Forms', 'zzzzsys_access_level_form', 'zzzzsys_access_level_form_id', '', 0, 0, 'SELECT * FROM zzzzsys_access_level_form\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = slf_zzzzsys_form_id\nORDER BY sfo_code\n', ''),
('nuuser', 'browseedit', 'ACCUSE', 'User', 'zzzzsys_user', 'zzzzsys_user_id', '', 0, 15, 'SELECT * \nFROM zzzzsys_user \nLEFT JOIN zzzzsys_access_level ON zzzzsys_access_level_id = sus_zzzzsys_access_level_id\nORDER BY sus_name', ''),
('nubuildreport', 'browseedit', 'BLDREP', 'Build Report', 'zzzzsys_report', 'zzzzsys_report_id', '', 0, 0, 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', '//-- hidden field set to class - nuEdited (generally ignored except when editing Reports)\n\n$(''#sre_layout'').addClass(''nuEdited''); \n'),
('nuphp', 'browseedit', 'PHPCODE', 'PHP Code', 'zzzzsys_php', 'zzzzsys_php_id', '', 0, 0, 'SELECT * FROM zzzzsys_php\r\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id\r\nWHERE sph_system != 1\r\nORDER BY sph_code\r\n', '\n$(''#sph_php'').addClass(''php'');\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n\nif(window.filter == ''justphp''){\n\n    var ev      = [];\n    ev[''BB'']    = ''Before Browse'';\n    ev[''BE'']    = ''Before Edit'';\n    ev[''BS'']    = ''Before Save'';\n    ev[''AS'']    = ''After Save'';\n    ev[''BD'']    = ''Before Delete'';\n    ev[''AD'']    = ''After Delete'';\n    ev[''AB'']    = ''After Browse'';\n    \n    var e       = ev[nuFORM.getCurrent().record_id.substr(-2)];\n    var f       = $(''#sfo_description'', window.parent.document).val();\n\n    if(e == ''After Browse''){\n        var f   = $(''#sob_all_label'', window.parent.document).val();\n    }\n    \n\n    $(''#nuTab0'').remove();\n    $(''#nuTab2'').remove();\n    $(''#nuTab1'').click();\n    $(''#nu_bc_0'').html(''<b>'' + e + ''</b> for : '' + f);\n    $(''#sph_code'').val(''SYS'')\n    $(''#sph_description'').val(''System PHP'')\n    \n}\n\n'),
('nublank', 'launch', 'BLA', 'Blank', '', '', '', 0, 0, '', 'var reportID    = nuFORM.current.record_id;\r\n\r\n$(''#nuTab0'').hide();\r\n\r\n$(''.nuActionHolder'').css(''text-align'',''center'');\r\n\r\nnuAppendActionButton(''Print'',"nuRunReport(''" + reportID + "'');");\r\nnuAppendActionButton(''Email'',"nuEmailReport(''" + reportID + "'');");\r\n\r\n\r\n\r\n'),
('nuaccessgroup', 'subform', 'GAL', 'Groups Access Level', 'zzzzsys_user_group_access_level', 'zzzzsys_user_group_access_level_id', '', 0, 0, 'SELECT * FROM zzzzsys_user_group_access_level', ''),
('nurunlist', 'browse', 'RUN', 'Run Form, Report or Procedure', 'zzzzsys_run_list', 'id', '', 0, 0, 'SELECT zzzzsys_form_id AS id, ''Form'' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_run_list', '\n$("[data-nu-column=''nucolumn000'']").each(function() {\n\n    $(this).addClass(''nu_''+this.innerHTML);\n\n});'),
('nudebug', 'browseedit', 'DEBUG', 'Debug', 'zzzzsys_debug', 'zzzzsys_debug_id', '', 50, 13, 'SELECT * FROM zzzzsys_debug\nORDER BY zzzzsys_debug_id DESC', '$(''#delete_option'').val(0);'),
('nuaccessreport', 'browseedit', 'ACCPHP', 'Access To Procedures', 'zzzzsys_access_level_php', 'zzzzsys_access_level_php_id', '', 0, 0, 'SELECT * \nFROM zzzzsys_access_level_php\nJOIN zzzzsys_php ON zzzzsys_php_id = slp_zzzzsys_php_id\nORDER BY sph_code', ''),
('nuaccesslevelreport', 'browseedit', 'ACCREP', 'Access To Report', 'zzzzsys_access_level_report', 'zzzzsys_access_level_report_id', '', 0, 0, 'SELECT * \nFROM zzzzsys_access_level_report\nJOIN zzzzsys_report ON zzzzsys_report_id = sre_zzzzsys_report_id\nORDER BY sre_code', ''),
('nurunreport', 'browseedit', 'RUNREP', 'Run Report', 'zzzzsys_report', 'zzzzsys_report_id', '', 0, 0, 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', 'window.nuBrowseFunction = ''runreport'';\r\n\r\nfunction runreport(e){\r\n    \r\n    var r   = $(''#'' + e.target.id).attr(''data-nu-row'');\r\n    var c   = ''000'';\r\n    var f   = $(''#'' + r + c).html();\r\n    var p   = $(''#'' + e.target.id).attr(''data-nu-primary-key'');\r\n\r\n    nuGetPDF(f, p);\r\n    \r\n}\r\n\r\n'),
('nurunphp', 'browseedit', 'RUNPHP', 'Run PHP Code', 'zzzzsys_php', 'zzzzsys_php_id', '', 0, 0, 'SELECT * FROM zzzzsys_php\nJOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id\nWHERE sph_system != ''1''', 'window.nuBrowseFunction = ''getphp'';\r\n\r\nfunction getphp(e){\r\n    \r\n    var r   = $(''#'' + e.target.id).attr(''data-nu-row'');\r\n    var c   = ''000'';\r\n    var p   = $(''#'' + r + c).html();\r\n    var f   = $(''#'' + e.target.id).attr(''data-nu-primary-key'');\r\n\r\n    nuGetPHP(p, f);\r\n\r\n}\r\n'),
('nulaunchdates', 'launch', '2DATES', 'Between 2 Dates', '', '', '', 0, 0, '', ''),
('nutimezone', 'browse', 'ZONE', 'Time Zone', 'zzzzsys_timezone', 'zzzzsys_timezone_id', '', 0, 0, 'SELECT * \nFROM zzzzsys_timezone\nORDER BY stz_timezone', ''),
('nusetup', 'edit', 'SET', 'Setup', 'zzzzsys_setup', 'zzzzsys_setup_id', '', 0, 0, '', '$(''#set_header'').addClass(''js'');\n  \n$(''.js'').dblclick(function() {\n	nuOpenAce(''Javascript'', this.id);\n});\n\n'),
('nutranslate', 'browseedit', 'LANG', 'Language Translation', 'zzzzsys_translate', 'zzzzsys_translate_id', '', 0, 0, 'SELECT * \nFROM zzzzsys_translate\nORDER BY trl_language, trl_english', ''),
('nupassword', 'edit', 'PASS', 'Change Password', 'zzzzsys_user', 'zzzzsys_user_id', '', 0, 0, 'SELECT * FROM zzzzsys_user\nJOIN zzzzsys_user_group ON sus_zzzzsys_user_group_id = zzzzsys_user_group_id\nORDER BY sus_name', '$(''#nuTab0'').hide();'),
('nuphplibrary', 'subform', 'PHPLIB', 'PHP Code Library', 'zzzzsys_php_library', 'zzzzsys_php_library_id', '', 0, 0, 'SELECT * FROM zzzzsys_php_library\nLEFT JOIN zzzzsys_php ON zzzzsys_php_id = spl_zzzzsys_php_id\nORDER BY sph_code\n', '$(''#sph_php'').addClass(''php'');\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n'),
('57edbac65e1c52a', 'launch', 'CR', 'company_report', 'company', 'company_id', '', 0, 0, '', ''),
('nuffcustomobjects', 'browse', 'FFCO', 'Fast Form Custom Objects', 'zzzzsys_object', 'zzzzsys_object_id', '', 0, 8, 'SELECT *\nFROM zzzzsys_object \nJOIN zzzzsys_form ON zzzzsys_form_id = sob_all_zzzzsys_form_id\n', 'window.nuBrowseFunction = ''nuSelectCustomObject'';\n\n$("[data-nu-column=''nucolumn003'']").each(function() {\n    $(this).addClass(''nu_'' + this.textContent);\n});\n\n$(''#nuBreadcrumbHolder'').remove();\n\nfunction nuSelectCustomObject(e){\n    \n	var row                         = $(''#'' + e.target.id).attr(''data-nu-row'');\n	var label                       = $(''#'' + row + ''000'').html();\n	var field                       = $(''#'' + row + ''001'').html();\n	var Class                       = $(''#'' + row + ''003'').attr(''class'');\n	var id                          = $(''#'' + e.target.id).attr(''data-nu-primary-key'');\n    var sfrow                       = ''#obj_sf'' + nuPad3($("[id^=''obj_sf''][id$=''ff_label'']", parent.document).length-1);\n    \n    $(sfrow + ''ff_label'', parent.document)\n        .val(label)\n        .addClass(Class)\n        .removeClass(''nuSelectBrowse'');\n    \n    $(sfrow + ''ff_field'', parent.document)\n        .val(field)\n        .addClass(Class)\n        .removeClass(''nuSelectBrowse'');\n    \n    $(sfrow + ''ff_id'', parent.document)\n        .val(id)\n        .addClass(Class)\n        .removeClass(''nuSelectBrowse'')\n        .change();\n}\n\n\n\n'),
('nusample', 'launch', 'nuSAMPLE', 'Objects', '', '', '', 0, 0, '', ''),
('nuffobjects', 'subform', 'FFO', 'Fast Form Objects', 'zzzzsys_debug', 'zzzzsys_debug_id', '', 0, 0, 'SELECT count()* FROM zzzzsys_debug', ''),
('nucalcobjects', 'browse', 'CALC', 'Calc values On This Form And Its Subforms', '#TABLE_ID#', 'thevalue', '', 0, 4, 'SELECT * FROM #TABLE_ID#', '\nwindow.nuBrowseFunction = ''nuSelectCalcField'';\n\nfunction nuSelectCalcField(e){\n\n    var row = e.target.id.substr(0,8);\n    var fld = $(''#'' + row + ''003'').html();\n    var frm = $(''#sob_calc_formula'', parent.window.document).val();\n\n    $(''#sob_calc_formula'', parent.window.document)\n    .val(frm + ''nuTotal("'' + fld + ''")'')\n    .trigger(''change'');\n\n}\n\n'),
('58a08a1abc4782c', 'browseedit', 'INV', 'Invoice', 'invoice', 'invoice_id', '', 0, 0, 'SELECT * FROM invoice', ''),
('58a08a91c9b59a9', 'subform', 'ITE', 'Invoice Items', 'invoice_item', 'invoice_item_id', '', 0, 0, 'SELECT * FROM invoice_item', ''),
('nuformat', 'browseedit', 'FMT', 'Input Formats', 'zzzzsys_format', 'zzzzsys_format_id', '', 0, 0, 'SELECT * FROM zzzzsys_format', '\n$(''#currencysign'').hide().addClass(''nuCalculatorCurrency'');\n$(''#currencydecimals'').hide().addClass(''nuCalculatorCurrency'');\n$(''#srm_format'').addClass(''nuReadOnly nuCalculatorCurrency'').css(''font-size'', 12);\n$(''.nuWord'').css(''font-style'', ''bold'');\n\nnuSetFormatType();\n\n\nfunction nuAddToFormat(e){\n    \n    var v   = String(e.target.innerHTML);\n    \n    if(v == ''Space''){v   = '' '';}\n    \n    if($(''#srm_type'').val() == ''Date''){\n        \n        $(''#srm_format'')\n        .val($(''#srm_format'').val() + v)\n        .change();\n        \n    }else{\n        \n        var c   = String($(''#currencysign'').val()).trim();\n        var d   = String(Number($(''#currencydecimals'').val()));\n        \n        d       = d == ''NaN'' ? 0 : Number(d);\n        v       = d == 0 ? v.substr(0, v.length - 1) : v;\n        \n        $(''#srm_format'')\n        .val(c + '' '' + v + String(0).repeat(d))\n        .change();\n        \n    }\n    \n}\n\n\nfunction nuSetFormatType(a){\n\n    if(arguments.length == 1){\n        $(''#srm_format'').val('''');\n    }\n    \n    if($(''#srm_type'').val() == ''Date''){\n        \n        $(''#currencysign'').hide();\n        $(''#currencydecimals'').hide();\n        $(''.date'').show();\n        $(''.number'').hide();\n        \n    }\n    \n    if($(''#srm_type'').val() == ''Number''){\n        \n        $(''#currencysign'').show();\n        $(''#currencydecimals'').show();\n        $(''.date'').hide();\n        $(''.number'').show();\n\n    }\n    \n}\n\n\n\n'),
('nuformatcurrency', 'edit', 'FMTC', 'Format Currency', 'zzzzsys_format', 'zzzzsys_format_id', '', 0, 0, '', '$(''#sign'').focus();\n\n\n$(''#nuActionHolder'').remove();\n$(''#nuBreadcrumbHolder'').remove();\n$(''#nuTabHolder'').remove();\n\n\n\n\n\nfunction nuCreateCurrencyFormat(){\n    console.log(''in nuCreateCurrencyFormat()'');\n}\n'),
('nuform', 'browseedit', 'FORM', 'nuBuilder Form', 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 0, 'SELECT * FROM zzzzsys_form\nORDER BY sfo_code\n', '$(''#sfo_breadcrumb_title'').addClass(''sql'');\n$(''#sfo_browse_sql'').addClass(''sql'');\n$(''#sfo_javascript'').addClass(''js'');\n\nnuSetTitle($(''#sfo_table'').val());\n\n$(''.js'').dblclick(function() {\n	nuOpenAce(''Javascript'', this.id);\n});\n\n$(''.sql'').dblclick(function() {\n	nuOpenAce(''SQL'', this.id);\n});\n\n$(''.html'').dblclick(function() {\n	nuOpenAce(''HTML'', this.id);\n});\n\n$(''.php'').dblclick(function() {\n	nuOpenAce(''PHP'', this.id);\n});\n\nif(window.filter == ''justjs''){\n    \n    $(''#nuDeleteButton'').remove();\n    $(''#nuCloneButton'').remove();\n    $(''#nuTab0'').remove();\n    $(''#nuTab1'').remove();\n    $(''#nuTab2'').click();\n    $(''#nuTab2'').remove();\n    \n    nuSetTitle($(''#sfo_description'').val());\n    \n}\n\n\n\nfunction nuFormColor(){\n\n    var t   = String($(''#sfo_type'').val());\n\n    var pb  = ''previewbrowse'';\n    var pe  = ''previewedit'';\n\n    var bb  = ''bb_event'';\n    var be  = ''be_event'';\n    var bs  = ''bs_event'';\n    var as  = ''as_event'';\n    var bd  = ''bd_event'';\n    var ad  = ''ad_event'';\n    \n    if(t == ''browse''){\n        \n        nuDisable(pe);\n\n        nuDisable(be);\n        nuDisable(bs);\n        nuDisable(as);\n        nuDisable(bd);\n        nuDisable(ad);\n\n    }\n    \n    if(t == ''edit''){\n        \n        nuDisable(pb);\n        nuDisable(bb);\n        \n    }\n\n    if(t == ''launch''){\n        \n        nuDisable(pb);\n        nuDisable(bb);\n        nuDisable(as);\n        nuDisable(bd);\n        nuDisable(ad);\n\n    }\n    \n    if(t == ''subform''){\n        \n        nuDisable(pb);\n        nuDisable(bb);\n        nuDisable(be);\n        nuDisable(bs);\n        nuDisable(as);\n        nuDisable(bd);\n        nuDisable(ad);\n        nuDisable(''sfo_javascript'');\n        \n    }\n\n    var h           = $(''#sfo_type'').addClass(''nuEdited'');\n    var o           = [];\n    o[''browse'']		= [0,1,2];\n    o[''edit''] 		= [0,2];\n    o[''browseedit''] = [0,1,2];\n    o[''launch''] 	= [0,2];\n    o[''subform'']    = [0,1];\n    \n    $(''#sfo_type'').removeClass();\n    $(''#sfo_type'').addClass(''nu_''+$(''#sfo_type'').val());\n    \n    if(h){\n        $(''#sfo_type'').addClass(''nuEdited'');\n    }\n    \n    $("#sfo_type > option").each(function() {\n        $(this).addClass(''nu_''+this.value);\n    });\n\n    for(var i = 0 ; i < 7 ; i++){\n        $(''#nuTab'' + i).removeClass(''nuRelatedTab'');\n    }\n    var t   = o[$(''#sfo_type'').val()];\n\n    if(t !== undefined){\n        \n    	for(var i = 0 ; i < t.length ; i++){\n    		$(''#nuTab'' + t[i]).addClass(''nuRelatedTab'');		\n    	}\n    	\n    }\n    \n}\n\nnuFormColor();\n\n//nuBuildSubformArray(''zzzzsys_tab_sf'');\n//nuBuildSubformArray(''zzzzsys_browse_sf'');\n\n$("[data-nu-column=''nucolumn000'']").each(function() {\n    $(this).addClass(''nu_''+this.textContent);\n});\n\n\n\nfunction nuEventList(){\n	\n	if($(''sob_all_type'').val() == ''subform''){\n		return [''onchange'',''onadd''];\n	}else{\n		return [''onblur'',''onchange'',''onfocus'',''onkeydown''];\n	}\n	\n}\n\n\n'),
('58c86689b9af7fd', 'browseedit', 'FUN', 'Function List', 'zzzzsys_function', 'zzzzsys_function_id', '', 0, 0, 'SELECT * FROM zzzzsys_function', ''),
('58bf0b972c2a447', 'browseedit', 'TEST2', 'test_table', 'test_table', 'test_table_id', '', 0, 0, 'select * from test_table', ''),
('58d3719f55819e7', 'browseedit', '1111f', 'Test Form (break it if you want)', 'zzzzsys_access_level', 'zzzzsys_access_level_id', '', 0, 0, 'SELECT * FROM zzzzsys_access_level\nORDER BY sal_code\n', 'nuSetTitle($(''#sal_code'').val());'),
('c14913710309970799', 'browseedit', 'FF3', 'Fast Form 3', 'aaa', 'aaa_id', '', 0, 0, 'SELECT * FROM aaa', '');

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
('58c99a3bcf96e31', 'js', 'nuTotal', 'number = nuTotal( string )', 'string must be the id of a number Object on a Form eg. ''cus_total''.\n or\nTo add up a whole column on a subform, string join the subform id and the number field with a dot. eg ''invoice.ite_total''\n', 'var sale_total = nuTotal(''invoice.ite_total'');', ''),
('58d87b4a1eafe61', 'php', 'nuID', 'string = nuID()', 'Creates a new unique ID', '$id = nuID();', '[nuTT](nuTT)'),
('58d87beb5b68ce8', 'php', 'nuTT', 'string = nuTT()', 'Creates a new unique ID used for creating a temp table name. Prefixed with __nu', '$tt = nuTT();\n\n$sql = "CREATE TABLE $tt SELECT * FROM customer";\n', '[nuID](nuID)'),
('58dc29359d5c185', 'js', 'nuAlert', 'nuAlert(string)', 'nuBuilder Popup message.', 'if(cus_name){\n   nuAlert(''No Customer!'');\n}', ''),
('58dc2a78c53adfd', 'js', 'nuBeforeSave', 'boolean = nuBeforeSave()', 'The name of a custom javascript function, that will run before saving an Edit Form', 'function nuBeforeSave(){\n\nif(cus_name){\n\n   nuAlert(''No Customer!'');\n   return false;\n\n}else{\n   return true;\n}', ''),
('58dcb8edeebbe38', 'php', 'nuSubformObject', 'object = nuSubformObject(subformID)', 'An object defining a Subform.', '\n$SF             = nuSubformObject(''obj_sf'');\n\n$sql            = "\n\n                UPDATE aaa\n                SET \n                    sob_all_id                  = ?,\n                    sob_all_label               = ?,\n                    sob_all_order               = ?,\n                    sob_all_table               = ?,\n                    sob_all_zzzzsys_form_id     = ?,\n                    sob_all_zzzzsys_tab_id      = ?,\n                    zzzzsys_object_id           = ?\n                WHERE \n                    zzzzsys_object_id           = ?\n\n";\n\nfor($i = 0 ; $i < count($SF->rows) ; $i++){\n    \n    $newid      = nuID();\n    $label      = $SF->rows[$i][1];\n    $field      = $SF->rows[$i][2];\n    $oldid      = $SF->rows[$i][3];\n\n    $array      = Array($field, $label, (10*(1+$i)), $table, $form_id, $tab_id, $newid, $oldid);\n\n    nuRunQuery($sql, $array);\n\n}\n\n\n', '');

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
  `sob_all_access` varchar(1) NOT NULL,
  `sob_all_default_value_sql` text NOT NULL,
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
  `sob_subform_table` varchar(300) NOT NULL,
  `sob_input_format` varchar(300) NOT NULL,
  `sob_input_type` varchar(300) NOT NULL,
  `sob_input_javascript` text NOT NULL,
  `sob_html_code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_object`
--

INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_table`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_access`, `sob_all_default_value_sql`, `sob_calc_formula`, `sob_calc_format`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_lookup_table`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_subform_table`, `sob_input_format`, `sob_input_type`, `sob_input_javascript`, `sob_html_code`) VALUES
('567742c772b9642', '56773cb405f4913', 'company', 'input', 'com_name', 'Company Name', '56777715b87666e', 50, 41, 145, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56789912d6d9ddb', '56773cb405f4913', 'company', 'input', 'com_test', 'Test', '567898dbc543710', 20, 20, 145, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('5678992c5432850', '56773cb405f4913', 'company', 'input', 'com_suburb', 'Suburb', '567898dbc543710', 30, 69, 161, 90, 18, '1', 'left', '0', '0', '', 'nuTotal(''com_phone'') + nuTotal(''employee_sf.thecalc'')', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|mmmm', 'nuDate', '', ''),
('5678a9474a323f5', '56773cb405f4913', 'company', 'calc', 'com_phone', 'Calc this', '56777715b87666e', 60, 68, 145, 111, 18, '1', 'right', '0', '0', '', 'nuTotal("employee_sf.emp_name") + nuTotal("employee_sf.emp_cost")', '$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('5678ac0f8f3d3b8', '5678ab2c48c5c41', 'employee', 'input', 'emp_name1', 'Name', '5678ab2c49bd810', 10, 11, 179, 100, 18, '1', 'right', '2', '0', '', '', '', 'nuuser', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('5679d499ad76e9f', '5678ab2c48c5c41', 'employee', 'input', 'emp_mobile', 'Mobile', '569c44dd2339963', 50, 24, 97, 136, 17, '1', 'left', '0', '0', '', '', 'N:$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('5689fdaf9babfb9', '56773cb405f4913', 'company', 'select', 'com_color_id', 'Color', '56777715b87666e', 80, 49, 372, 100, 159, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '1', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('568b50020fc7a62', '56773cb405f4913', 'company', 'lookup', 'com_business_id', 'Business Type', '56777715b87666e', 40, 291, 140, 60, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '200', '0', '568b508eec00d80', '', '57f6e1f954955c1', 'business', '', '', '', '', '', '', '', '', '', ''),
('568b543dab1d274', '56773cb405f4913', 'company', 'display', 'com_age', 'hi', '56777715b87666e', 70, 95, 145, 70, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', 'SELECT 12;', '', '', 'theCode', 'theDescription', '150', '0', '568b508eec00d80', '', '', 'business', '', '', '', '', '', '', '', '', '', ''),
('568dca341ca3737', '56773cb405f4913', 'company', 'run', 'com_run', 'Bus. Browse', '56777715b87666e', 100, 9, 372, 100, 30, '1', 'right', '1', '0', '', '', '', 'nublank', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('568ddbbf00aae51', '56773cb405f4913', 'company', 'subform', 'employee_sf', 'Subform', '567898dbc543710', 10, 113, 85, 500, 250, '1', 'right', '0', '0', '', '', '', '568b508eec00d80', '', 'i', '', '', '', '', '', '', '', '', '', '', '', '', '5678ab2c48c5c41', 'emp_company_id', '1', '1', 'f', 'employee', '', '', '', '<div style=\\"top:0px;left:0px;width:200px;height:200px;background-color:tan;\\">Hello World</div>'),
('569dc5613f24e14', 'nuhome', '', 'run', 'run_browse', 'Company', '58be4c05188661c', 150, 159, 64, 150, 30, '1', 'right', '1', '0', '', '', '', '56773cb405f4913', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b18903c9991', '568b508eec00d80', 'business', 'input', 'bus_code', 'Code', '568b508eecf5dee', 0, 10, 50, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b1afab7397e', '568b508eec00d80', 'business', 'input', 'bus_description', 'Description', '568b508eecf5dee', 0, 40, 100, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56b2b1c7939942e', '568b508eec00d80', 'business', 'input', 'bus_check', 'Check', '568b508eecf5dee', 0, 100, 50, 30, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5716e2428f5e8fb', 'nuobject', 'zzzzsys_object', 'subform', 'zzzzsys_event_sf', 'JS Code :', '58c63d38b88dbab', 470, 47, 78, 505, 100, '1', 'left', '0', '0', '', '', '', '', '', 'b', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', 'nuevent', 'sev_zzzzsys_object_id', '1', '1', 'g', 'zzzzsys_event', '', 'text', '', ''),
('56b7e275560be71', '56773cb405f4913', 'company', 'textarea', 'com_notes', 'Notes', '56777715b87666e', 90, 120, 93, 150, 77, '1', 'left', '0', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56c0fd692478b9e', '5678ab2c48c5c41', 'employee', 'lookup', 'emp_business_id', 'Business Type', '56c5145674c17a1', 40, 59, 100, 60, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '90', '0', '568b508eec00d80', '', '', 'business', '', '', '', '', '', '', '', '', '', ''),
('nuaccess', 'nuhome', '', 'run', 'run_access', 'Access Levels', '569dc4ed270f08a', 10, 28, 602, 150, 30, '1', 'left', '1', '0', '', '', '', 'nuaccess', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57e851fa96edc98', 'nupassword', 'zzzzsys_user', 'display', 'the_user', ' ', '57abe72610d666d', 10, 46, 181, 200, 18, '1', 'center', '0', '0', '', '', '', '', '', '', '', 'SELECT sus_login_name\nFROM zzzzsys_user\nWHERE zzzzsys_user_id = ''#RECORD_ID#''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('57073c3a0b4ea44', 'nuform', 'zzzzsys_form', 'select', 'sfo_type', 'Form Tab', '570730313dd25c5', 10, 21, 116, 140, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|launch|Launch|subform|Subform Only', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57074535d3d3ec8', 'nuform', 'zzzzsys_form', 'input', 'sfo_code', 'Code', '570730313dd25c5', 20, 52, 116, 140, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5707456baf5bf41', 'nuform', 'zzzzsys_form', 'input', 'sfo_description', 'Description', '570730313dd25c5', 30, 82, 116, 252, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570746cc078074e', 'nuform', 'zzzzsys_form', 'input', 'sfo_table', 'Table Name', '570730313dd25c5', 40, 112, 116, 252, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuScroll', 'nuFORM.getTables()', ''),
('570b00aa9ff6b8d', 'nuform', 'zzzzsys_form', 'input', 'sfo_primary_key', 'Primary Key', '570730313dd25c5', 50, 141, 116, 252, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuScroll', ' nuFORM.tableFields($(''#sfo_table'').val())', ''),
('570b026adaa8641', 'nuform', 'zzzzsys_form', 'input', 'sfo_browse_row_height', 'Row Height', '5707303141ab448', 110, 287, 102, 50, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('570b02f9b8e2424', 'nuform', 'zzzzsys_form', 'input', 'sfo_browse_rows_per_page', 'Rows Per Page', '5707303141ab448', 120, 287, 257, 50, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('570b067c2f7cdf5', 'nuform', 'zzzzsys_form', 'lookup', 'sfo_browse_redirect_form_id', 'Redirect To', '5707303141ab448', 130, 287, 392, 100, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '230', '', 'nuform', '', '', 'zzzzsys_form', '', '', '', '', '', '', '', '', '', ''),
('570b1883bbeec99', 'nuform', 'zzzzsys_form', 'textarea', 'sfo_browse_sql', 'SQL', '5707303141ab448', 90, 19, 102, 639, 90, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b192e68d97ac', 'nuform', 'zzzzsys_form', 'subform', 'zzzzsys_browse_sf', 'Columns', '5707303141ab448', 100, 124, 102, 639, 150, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', 'nubrowse', 'sbr_zzzzsys_form_id', '1', '1', 'g', 'zzzzsys_browse', '', '', '', ''),
('570b1a86d41a62c', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_title', 'Title', '570b19bf5981983', 10, 8, 69, 150, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b1abae987b02', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_display', 'Display', '570b19bf5981983', 20, 34, 69, 150, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuScroll', 'nuFORM.SQLFields($(''#sfo_browse_sql'').val())', ''),
('58c465508d4fc64', 'nuform', 'zzzzsys_form', 'word', 'phpwrd', 'PHP Code :', '58c19d9bc559aca', 260, 48, 36, 79, 17, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('570b2330ea5f52a', 'nubrowse', 'zzzzsys_browse', 'select', 'sbr_align', 'Align', '570b19bf5981983', 30, 60, 69, 70, 18, '1', 'left', '1', '0', 'SELECT ''l'';', '', '', '', '', '', '', '', '0', 'l|Left|r|Right|c|Center', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('570b23a2439a04c', 'nubrowse', 'zzzzsys_browse', 'select', 'sbr_format', 'Format', '570b19bf5981983', 40, 86, 69, 115, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('570b242a368005e', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_width', 'Width', '570b19bf5981983', 50, 112, 69, 50, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('570b24bfbf54a99', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_order', 'Order', '570b19bf5981983', 60, 138, 69, 50, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('570b3915874d635', 'nuform', 'zzzzsys_form', 'subform', 'zzzzsys_tab_sf', 'Tabs', '570730313dd25c5', 60, 21, 433, 231, 250, '0', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nutab', 'syt_zzzzsys_form_id', '1', '1', 'g', 'zzzzsys_tab', '', '', '', ''),
('570b39cc123601d', 'nutab', 'zzzzsys_tab', 'input', 'syt_title', 'Title', '576372e045a2f81', 0, 10, 100, 130, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570b39f046ded37', 'nutab', 'zzzzsys_tab', 'input', 'syt_order', 'Order', '576372e045a2f81', 0, 40, 100, 46, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('58117aed5513a01', 'nuform', 'zzzzsys_form', 'input', 'bb_event', 'Before Browse', '58c19d9bc559aca', 200, 24, 121, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('573d15d41e279ba', 'nubuildreport', 'zzzzsys_report', 'input', 'open_builder', 'Report Layout', '574b964941d3d1a', 60, 192, 239, 150, 30, '1', 'left', '0', '1', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('570c3b5d641d514', 'nubuildreport', 'zzzzsys_report', 'textarea', 'sre_layout', 'Layout', '574b964941d3d1a', 70, 236, 239, 300, 100, '1', 'left', '0', '1', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570c3e6e67c39cb', 'nuform', 'zzzzsys_form', 'textarea', 'sfo_javascript', 'Javascript Code :', '58c19d9bc559aca', 270, 113, 121, 556, 87, '1', 'left', '0', '1', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570c3fce5be3355', 'nuphp', 'zzzzsys_php', 'subform', 'zzzzsys_php_library_sf', 'PHP Library', '57eb1bd4cb7e1f4', 60, 120, 191, 415, 200, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '220', '', 'nunonsystemform', '', '', 'zzzzsys_form', 'nuphplibrary', 'spl_zzzzsys_php_id', '1', '1', 'g', 'zzzzsys_php_library', '', '', '', ''),
('57578afc803136a', 'nuphp', 'zzzzsys_php', 'lookup', 'sph_zzzzsys_form_id', 'Launch from', '574b8ee0b2a4cdf', 40, 110, 152, 100, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '230', '', 'nuform', '', '', 'zzzzsys_form', '', '', '', '', '', '', '', '', '', ''),
('570c8e4ef085ed5', 'nuhome', '', 'run', 'object_button', 'Objects', '569dc4ed270f08a', 30, 74, 76, 150, 30, '1', 'right', '1', '0', '', '', '', 'nuobject', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570d9046964038e', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_all_zzzzsys_tab_id', 'Tab - Form', '570d90df5ce8e1a', 30, 24, 83, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', '', '', ''),
('570d98b34bf37c9', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_type', 'Type', '570d90df5ce8e1a', 40, 59, 83, 80, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'calc|Calc|\ndisplay|Display|\nhtml|HTML|\ninput|Input|\nlookup|Lookup|\nrun|Run|\nselect|Select|\nsubform|Subform|\ntextarea|Textarea|\nword|Word', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', '', '', ''),
('570d9938ebe4428', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_id', 'ID', '570d90df5ce8e1a', 60, 113, 83, 250, 20, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'nuScroll', 'nuFORM.tableFields($(''#sob_all_table'').val())', ''),
('570d998aea50861', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_label', 'Label', '570d90df5ce8e1a', 50, 86, 83, 250, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9a2e76e6a8c', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_order', 'Tabbing Order', '570d90df5ce8e1a', 20, 42, 0, 72, 18, '1', 'right', '0', '2', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9a5d4c69587', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_top', 'Top', '570d90df5ce8e1a', 110, 142, 83, 50, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'number', '', ''),
('570d9a7237fd2fc', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_left', 'Left', '570d90df5ce8e1a', 120, 169, 83, 50, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'number', '', ''),
('570d9a8847feae7', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_width', 'Width', '570d90df5ce8e1a', 130, 142, 189, 50, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'number', '', ''),
('570d9a9a6b24446', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_height', 'Height', '570d90df5ce8e1a', 140, 169, 189, 50, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'number', '', ''),
('570d9cb9d004579', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_cloneable', 'Cloneable', '570d90df5ce8e1a', 70, 142, 318, 58, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9d0a39b227c', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_align', 'Align', '570d90df5ce8e1a', 80, 169, 318, 58, 18, '1', 'left', '1', '0', 'SELECT ''left'';', '', '', '', '', '', '', '', '0', 'left|Left|right|Right|center|Center', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9dd38561e81', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_validate', 'Validation', '570d90df5ce8e1a', 90, 142, 446, 110, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', '0|None|1|No Blanks|2|No Duplicates', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9e1c5a6bcfd', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_access', 'Access', '570d90df5ce8e1a', 100, 169, 446, 110, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '0', '0|Editable|1|Readonly|2|Hidden', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('58d082a44cc79a5', 'nuobject', 'zzzzsys_object', 'word', 'calctotwrd', 'Fields', '5851cf915a1c653', 430, 81, 80, 212, 17, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58d08322022ad15', 'nuobject', 'zzzzsys_object', 'word', 'calcfldwrd', 'Operators', '5851cf915a1c653', 440, 81, 306, 275, 17, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('570d9f7b580e04a', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_html_code', 'HTML', '570d90df73d3a2a', 380, 20, 100, 432, 200, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9fa3e7160c2', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_display_sql', 'Display', '570d90df63e6972', 200, 20, 100, 468, 168, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570d9ffcd716321', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_select_sql', 'SQL/List', '570d90df670db61', 210, 50, 60, 500, 150, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da046d5f9f4c', 'nuobject', 'zzzzsys_object', 'select', 'sob_select_multiple', 'Multiple', '570d90df670db61', 220, 20, 60, 50, 18, '1', 'left', '0', '0', 'SELECT 0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da149b76e0e6', 'nuobject', 'zzzzsys_object', 'select', 'sob_input_type', 'Input Type', '570d90df707867b', 360, 35, 72, 120, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'nuDate|nuDate|\nnuNumber|nuNumber|\nnuScroll|nuScroll|\n\nbutton|Button|\ncheckbox|Checkbox|\ncolor|Color|\ndatetime-local|Datetime-Local|\nemail|Email|\nfile|File|\nhidden|Hidden|\nimage|Image|\nmonth|Month|\nnumber|Number|\npassword|Password|\nradio|Radio|\nrange|Range|\nreset|Reset|\nsearch|Search|\ntel|Telephone|\ntext|Text|\ntime|Time|\nurl|URL|\nweek|Week\n\n\n', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da31addae07f', 'nuobject', 'zzzzsys_object', 'select', 'sob_input_format', 'Format', '570d90df707867b', 350, 82, 72, 120, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type\n', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da52f2828508', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_subform_zzzzsys_form_id', 'Form', '570d90df6d35fde', 300, 20, 200, 100, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', '', ''),
('570da72cb4282e3', 'nuobject', 'zzzzsys_object', 'input', 'sob_subform_foreign_key', 'Foreign Key', '570d90df6d35fde', 310, 50, 200, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'nuScroll', 'nuFORM.tableFields($(''#sob_subform_table'').val())', ''),
('570da7b07ce4d7a', 'nuobject', 'zzzzsys_object', 'select', 'sob_subform_add', 'Addable', '570d90df6d35fde', 320, 80, 200, 50, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da7d7d12aea2', 'nuobject', 'zzzzsys_object', 'select', 'sob_subform_delete', 'Deleteable', '570d90df6d35fde', 330, 110, 200, 50, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da861e15f8f6', 'nuobject', 'zzzzsys_object', 'select', 'sob_subform_type', 'Type', '570d90df6d35fde', 340, 140, 200, 80, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'g|Grid|f|Form', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da8ac71acec7', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_run_zzzzsys_form_id', 'Run', '570d90df60880c2', 160, 36, 141, 100, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'code', 'CONCAT(run, '' - '', description)', '200', '', 'nurunlist', '', '', 'zzzzsys_run_list', '', '', '', '', '', '', '', '', '', ''),
('570da93be3f323f', 'nuobject', 'zzzzsys_object', 'input', 'sob_run_filter', 'Filter', '570d90df60880c2', 170, 66, 141, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570da986cb6807a', 'nuobject', 'zzzzsys_object', 'input', 'sob_run_id', 'Record ID', '570d90df60880c2', 180, 96, 141, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570daa6277a97e1', 'nuobject', 'zzzzsys_object', 'select', 'sob_run_method', 'Method', '570d90df60880c2', 190, 126, 141, 80, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'b|Button|i|iFrame', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570dab25164b394', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_lookup_zzzzsys_form_id', 'Form', '570d90df6a2c12a', 230, 29, 165, 100, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', '', ''),
('570dabca9be44fd', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_code', 'Code', '570d90df6a2c12a', 240, 57, 165, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'nuScroll', 'nuFORM.tableFields($(''#sob_lookup_table'').val())', ''),
('570dabf5a2e2b8f', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_description', 'Description', '570d90df6a2c12a', 260, 85, 165, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'nuScroll', 'nuFORM.tableFields($(''#sob_lookup_table'').val())', ''),
('570dac54b62da77', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_description_width', 'Width', '570d90df6a2c12a', 270, 85, 434, 50, 18, '1', 'right', '0', '0', 'SELECT 0;', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'number', '', ''),
('570dadc061c6ef5', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_lookup_javascript', 'Javascript To Be Run<br>After Populating Fields', '570d90df6a2c12a', 280, 121, 165, 320, 100, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570db01f6dd4d3d', 'nulookup', 'company', 'input', 'zzzzsys_slo_object_name', 'Form Object Name', '570dafc86862c1b', 0, 20, 200, 274, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570db0522404442', 'nulookup', 'company', 'input', 'zzzzsys_slo_field_function_name', 'Field / Function Name', '570dafc86862c1b', 0, 40, 200, 270, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('570db786c678c27', 'nuhome', '', 'run', 'form_button', 'Forms', '569dc4ed270f08a', 40, 28, 76, 150, 30, '1', 'right', '1', '0', '', '', '', 'nuform', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5726daf4237eb57', 'nuevent', 'zzzzsys_event', 'input', 'sev_javascript', 'Javascript Function', '5726b139a7e27c2', 20, 1, 255, 300, 20, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', '', 'text', '', ''),
('5726cca96d51595', 'nuevent', 'zzzzsys_event', 'input', 'sev_event', 'Event', '5726b139a7e27c2', 10, 1, 55, 150, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'drag|drag|dragend|dragend|dragenter|dragenter|dragexit|dragexit|dragleave|dragleave|dragover|dragover|dragstart|dragstart|drop|drop|onclick|onclick|onblur|onblur|onchange|onchange|onfocus|onfocus|onkeydown|onkeydown', '', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', '', 'nuScroll', 'nuChooseEventList()', ''),
('5743da507326181', 'nuaccess', 'zzzzsys_access_level', 'input', 'sal_description', 'Description', '5743d509312c4bc', 30, 80, 100, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5743d964cbef2e1', 'nuaccess', 'zzzzsys_access_level', 'lookup', 'sal_zzzzsys_form_id', 'Home', '5743d509312c4bc', 10, 20, 100, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nunonsystemform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', '', ''),
('5742b06d956c254', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_zzzzsys_form_id', 'Form ID', '570d90df5ce8e1a', 150, 0, 0, 72, 18, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', '', '', ''),
('5743da6ab90d89b', 'nuaccess', 'zzzzsys_access_level', 'input', 'sal_code', 'Code', '5743d509312c4bc', 20, 50, 100, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57452c417370475', 'nuaccessforms', 'employee ', 'lookup', 'slf_zzzzsys_form_id', 'Form', '5746616ea8ead0c', 10, 20, 100, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nunonsystemform', '', '', 'zzzzsys_form', '', '', '1', '', '', '', '', '', '', ''),
('57452d00100e37b', 'nuaccess', 'zzzzsys_access_level', 'subform', 'accform', ' ', '5743d509312ce9c', 40, 20, 50, 664, 300, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessforms', 'slf_zzzzsys_access_level_id', '1', '1', 'g', '', '', '', '', ''),
('57464b254128724', 'nuaccessforms', 'employee ', 'input', 'slf_add_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<span class=''nuActionButton''>Add</span>', '5746616ea8ead0c', 20, 90, 104, 53, 15, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', 'checkbox', '', ''),
('57464b8ac424381', 'nuaccessforms', 'employee ', 'input', 'slf_save_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=''nuActionButton''>Save</span>', '5746616ea8ead0c', 40, 18, 252, 53, 15, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', 'checkbox', '', ''),
('57464b99c32e7a9', 'nuaccessforms', 'employee ', 'input', 'slf_delete_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=''nuActionButton''>Delete</span>', '5746616ea8ead0c', 60, 74, 214, 53, 15, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', 'checkbox', '', ''),
('57464ba7ab4fc9f', 'nuaccessforms', 'employee ', 'input', 'slf_clone_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=''nuActionButton''>Clone</span>', '5746616ea8ead0c', 50, 47, 192, 53, 15, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', 'checkbox', '', ''),
('58c2d56407479b3', 'nuaccess', 'zzzzsys_access_level', 'word', 'button_title', 'Enable Buttons...', '5743d509312ce9c', 50, 37, 348, 200, 18, '1', 'center', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57464bc6d665be3', 'nuaccessforms', 'employee ', 'input', 'slf_print_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=''nuActionButton''>Print</span>', '5746616ea8ead0c', 30, 42, 100, 53, 15, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', 'checkbox', '', ''),
('574665c53498a27', 'nuusergroup', 'zzzzsys_user_group', 'input', 'sug_code', 'Code', '574665a15bc3218', 10, 51, 107, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574665db58bbad6', 'nuusergroup', 'zzzzsys_user_group', 'input', 'sug_description', 'Description', '574665a15bc3218', 20, 82, 107, 300, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574667a92f0374f', 'nuusergroup', 'zzzzsys_user_group', 'lookup', 'sug_zzzzsys_form_id', 'Home', '574665a15bc3218', 30, 112, 107, 70, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', 'sfo_code', 'sfo_description', '300', '', 'nunonsystemform', '', '', 'zzzzsys_form', '', '', '', '', '', '', '', '', '', ''),
('57466fa32c18b02', 'nuhome', '', 'run', 'run_user', 'User', '569dc4ed270f08a', 50, 74, 602, 150, 30, '1', 'left', '1', '0', '', '', '', 'nuuser', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5746703645523e8', 'nuuser', 'zzzzsys_user', 'input', 'sus_name', 'Name', '57466ebd5c0fff2', 10, 11, 150, 300, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('57467053c6159d8', 'nuuser', 'zzzzsys_user', 'input', 'sus_email', 'Email', '57466ebd5c0fff2', 20, 42, 150, 300, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('57467094ba580d8', 'nuuser', 'zzzzsys_user', 'input', 'sus_login_name', 'Login Name', '57466ebd5c0fff2', 50, 124, 150, 200, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('574670b1f0ebdd9', 'nuuser', 'zzzzsys_user', 'input', 'new_password', 'Enter New Password', '57466ebd5c0fff2', 60, 154, 150, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', '', ''),
('574670f777ae0d6', 'nuuser', 'zzzzsys_user', 'input', 'check_password', 'Reenter New Password', '57466ebd5c0fff2', 70, 184, 150, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', '', ''),
('574671cdcc77367', 'nuuser', 'zzzzsys_user', 'lookup', 'sus_zzzzsys_access_level_id', 'Access Level', '57466ebd5c0fff2', 40, 94, 150, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'sal_code', 'sal_description', '200', '', 'nuaccess', '', '', 'zzzzsys_access_level', '', '', '', '', '', '', '', 'text', '', ''),
('574b8f87a400809', 'nuphp', 'zzzzsys_php', 'input', 'sph_code', 'Code', '574b8ee0b2a4cdf', 10, 17, 152, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b8fa359b39fc', 'nuphp', 'zzzzsys_php', 'input', 'sph_description', 'Description', '574b8ee0b2a4cdf', 20, 48, 152, 300, 18, '1', 'left', '1', '0', 'SELECT 1', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b9008ac10e16', 'nuphp', 'zzzzsys_php', 'textarea', 'sph_php', 'PHP :', '5811788510768ef', 50, 25, 66, 684, 353, '1', 'left', '0', '1', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b91aec1e5c94', 'nuhome', '', 'run', 'edit_php', 'Build Procedures', '569dc4ed270f08a', 60, 28, 418, 150, 30, '1', 'left', '1', '0', '', '', '', 'nuphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b97322568df5', 'nuhome', '', 'run', 'edit_report', 'Build Reports', '569dc4ed270f08a', 80, 28, 248, 150, 30, '1', 'left', '1', '0', '', '', '', 'nubuildreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57561237059313b', 'nublank', '', 'input', 'bla_html', 'Hi', '575611cca558059', 11, 400, 400, 1, 1, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '.'),
('5754c06bd926f66', 'nubuildreport', 'zzzzsys_report', 'lookup', 'sre_zzzzsys_form_id', 'Launch From', '574b964941d3d1a', 40, 106, 239, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', '', '', '', ''),
('57579cb29a87ac1', 'nubuildreport', 'zzzzsys_report', 'input', 'sre_code', 'Code', '574b964941d3d1a', 10, 16, 239, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57579cd24784461', 'nubuildreport', 'zzzzsys_report', 'input', 'sre_description', 'Description', '574b964941d3d1a', 20, 46, 239, 300, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a2bb92683acf', 'nuusergroup', 'zzzzsys_user_group', 'subform', 'levels', 'Access Levels', '574665a15bc3218', 40, 174, 107, 465, 200, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessgroup', 'gal_zzzzsys_user_group_id', '1', '1', 'g', '', '', '', '', ''),
('575a2cf681d6427', 'nuaccessgroup', 'zzzzsys_user_group_access_level', 'lookup', 'gal_zzzzsys_access_level_id', 'Access To..', '575a273aadf6c37', 40, 40, 107, 70, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', 'sal_code', 'sal_description', '300', '', 'nuaccess', '', '', 'zzzzsys_access_level', '', '', '', '', '', '', '', '', '', ''),
('575a326a877e7ed', 'nuhome', '', 'run', 'run_debug', 'Debug', '58be4c05188661c', 180, 207, 64, 150, 30, '1', 'left', '1', '0', '', '', '', 'nudebug', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a3c0497ca756', 'nudebug', 'zzzzsys_debug', 'textarea', 'deb_message', 'Message', '575a31edccc2012', 10, 55, 97, 700, 350, '0', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a3f7001496b0', 'nudebug', 'zzzzsys_debug', 'select', 'delete_option', 'Delete', '575a31edccc2012', 40, 14, 100, 134, 18, '1', 'left', '1', '0', 'SELECT 1', '', '', '', '', '', '', '', '0', '0|All|1|This|2|All But This|3|Older Than This', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575a4060ddc83ef', 'nudebug', 'zzzzsys_debug', 'display', 'debug_id', 'Time Stamp', '575a31edccc2012', 20, 14, 574, 150, 18, '0', 'left', '0', '0', '', '', '', '', '', '', '', 'SELECT deb_added \nFROM zzzzsys_debug \nWHERE zzzzsys_debug_id = ''#RECORD_ID#''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('575f5fe89bf014b', 'nuaccessreport', 'zzzzsys_access_level_php', 'lookup', 'slp_zzzzsys_php_id', 'PHP Procedures', '575f55e6e740d5a', 0, 20, 100, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', '', 'sph_code', 'sph_description', '200', '', 'nuphp', '', '', 'zzzzsys_php', '', '', '1', '', '', '', '', '', '', ''),
('575f592d57ff088', 'nuaccess', 'zzzzsys_access_level', 'subform', 'accphp', ' ', '575f5474793747e', 60, 20, 50, 395, 290, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessreport', 'slp_zzzzsys_access_level_id', '1', '1', 'g', '', '', '', '', ''),
('57624c4714b0ce2', 'nuaccess', 'zzzzsys_access_level', 'subform', 'accreport', ' ', '575f54747937ff5', 70, 20, 50, 395, 282, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccesslevelreport', 'sre_zzzzsys_access_level_id', '1', '1', 'g', '', '', '', '', ''),
('57637d4688096ef', 'nuaccesslevelreport', 'zzzzsys_access_level_report', 'lookup', 'sre_zzzzsys_report_id', 'Report', '57637ad7b563282', 30, 47, 163, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'sre_code', 'sre_description', '200', '0', 'nubuildreport', '', '', 'zzzzsys_report', '', '', '', '', '', '', '', '', '', ''),
('577b254578f0498', 'nubuildreport', 'zzzzsys_report', 'input', 'sre_group', 'Group', '574b964941d3d1a', 30, 76, 239, 150, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4314f347f60', 'nuhome', '', 'run', 'run_report', 'Run Report', '569dc4ed270f08a', 90, 74, 248, 150, 30, '1', 'left', '1', '0', '', '', '', 'nurunreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', 'nurunreport', '', '0', '0', '', '', '', '', '', ''),
('577b49b3eb0c80f', 'nuhome', '', 'run', 'run_php', 'Run Procedure', '569dc4ed270f08a', 70, 74, 418, 150, 30, '1', 'left', '1', '0', '', '', '', 'nurunphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4dd43e0a9eb', '577b4d78ef9a2a0', '', 'input', 'steven', 'test', '577b4d78ef9c1d6', 1, 100, 100, 100, 20, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4eb7ad0f7f5', '577b4d78ef9a2a0', '', 'input', 'com_address', 'Address', '577b4d78ef9c1d6', 110, 12, 74, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', '', ''),
('577c7a54b78326c', 'nulaunchdates', '', 'input', 'from_date', 'Between', '577c5efa0d6275e', 10, 72, 115, 90, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|mmmm', 'nuDate', '', ''),
('577c7a71c405f7c', 'nulaunchdates', '', 'input', 'to_date', 'And', '577c5efa0d6275e', 20, 72, 243, 90, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N|$ 1,000.00', 'nuNumber', '', ''),
('578341d99ca3725', 'nubuildreport', 'zzzzsys_report', 'lookup', 'sre_zzzzsys_php_id', 'PHP Used To Create #TABLE_ID#', '574b964941d3d1a', 50, 139, 239, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sph_code', 'sph_description', '200', '', 'nuphp', '', '', 'zzzzsys_php', 'nuform', '', '1', '', '', '', '', '', '', ''),
('579039aaf34f7c5', 'nuphp', 'zzzzsys_php', 'input', 'sph_group', 'Group', '574b8ee0b2a4cdf', 30, 79, 152, 300, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a29781085834c', 'nuhome', '', 'run', 'run_setup', 'Setup', '569dc4ed270f08a', 20, 120, 602, 150, 30, '1', 'left', '1', '0', '', '', '', 'nusetup', '', 'b', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a298576dc5d7f', 'nusetup', 'zzzzsys_setup', 'input', 'set_time_out_minutes', 'Timeout (minutes)', '57a29441f16e2e2', 10, 61, 111, 50, 18, '1', 'right', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a29bffb8a5938', 'nusetup', 'zzzzsys_setup', 'lookup', 'set_zzzzsys_timezone_id', 'Time Zone', '57a29441f16e2e2', 20, 93, 111, 300, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', '', '', '', ''),
('57a29f631fdd125', 'nuuser', 'zzzzsys_user', 'select', 'sus_language', 'Language', '57466ebd5c0fff2', 30, 68, 151, 150, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', '', '', '', ''),
('57a2ade3a4625e3', 'nusetup', 'zzzzsys_setup', 'textarea', 'set_fonts', 'Report Fonts', '57a29441f16e2e2', 30, 125, 111, 300, 100, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', '', '', '', ''),
('57a2af5b466f884', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_username', 'Auth SMTP User Name', '57a29441f16eb9f', 40, 91, 208, 200, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a2afbe5b8d810', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_password', 'Auth SMTP Password', '57a29441f16eb9f', 50, 127, 208, 200, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a2affc246c61e', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_host', 'Auth SMTP Host', '57a29441f16eb9f', 60, 163, 208, 200, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a2b0490518152', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_from_address', 'Auth SMTP From Address', '57a29441f16eb9f', 70, 199, 208, 200, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a2b092a3fb465', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_from_name', 'Auth SMTP From Name', '57a29441f16eb9f', 80, 235, 208, 200, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a2b0d9e0c353d', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_port', 'Auth SMTP Port', '57a29441f16eb9f', 90, 271, 208, 70, 18, '1', 'right', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('57a2b1b4bb27602', 'nusetup', 'zzzzsys_setup', 'select', 'set_smtp_use_ssl', 'Auth SMTP Use SSL', '57a29441f16eb9f', 100, 307, 208, 70, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a2da33d52fac6', 'nusetup', 'zzzzsys_setup', 'textarea', 'set_header', 'Header', '57a29441f16f59d', 110, 29, 75, 496, 172, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_table`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_access`, `sob_all_default_value_sql`, `sob_calc_formula`, `sob_calc_format`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_lookup_table`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_subform_table`, `sob_input_format`, `sob_input_type`, `sob_input_javascript`, `sob_html_code`) VALUES
('57a7c213dc62789', 'nuhome', '', 'run', 'run_lang', 'Translation', '581288bcd699493', 130, 210, 101, 150, 30, '1', 'left', '1', '0', '', '', '', 'nutranslate', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a7d639f21d3a8', 'nutranslate', 'zzzzsys_translate', 'input', 'trl_language', 'Language', '57a7c1cb78c31d5', 10, 39, 92, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a7d77ccd5d248', 'nutranslate', 'zzzzsys_translate', 'input', 'trl_english', 'English', '57a7c1cb78c31d5', 20, 70, 92, 400, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a7d7a35f01f40', 'nutranslate', 'zzzzsys_translate', 'input', 'trl_translation', 'Translation', '57a7c1cb78c31d5', 30, 101, 92, 400, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57a93d17300512b', 'nupassword', 'zzzzsys_user', 'input', 'new_password_check', 'Re-Enter New Password', '57abe72610d666d', 40, 133, 181, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', '', ''),
('57abea0d8fc5446', 'nupassword', 'zzzzsys_user', 'input', 'new_password', 'Enter New Password', '57abe72610d666d', 30, 104, 181, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', '', ''),
('57d62bdf8dd4459', '56773cb405f4913', 'company', 'run', 'aframe', 'FORM', '56777715b87666e', 110, 0, 557, 650, 580, '1', 'right', '1', '0', '', '', '', 'nuuser', 'Admin', 'i', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57e8595cdef6edc', 'nupassword', 'zzzzsys_user', 'input', 'old_password', 'Enter Current Password', '57abe72610d666d', 20, 75, 181, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', 'SELECT CONCAT(''( '', sus_login_name, '' )'')\nFROM zzzzsys_user\nWHERE zzzzsys_user_id = ''#RECORD_ID#''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'password', '', ''),
('57eb03abed05e20', 'nuphplibrary', 'zzzzsys_php_library', 'lookup', 'spl_library_zzzzsys_php_id', 'Include', '57eaf962bd0a957', 60, 556, 152, 100, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sph_code', 'sph_description', '220', '', 'nuphp', '', '', 'zzzzsys_php', '', '', '', '', '', '', '', '', '', ''),
('5811808723db54b', 'nuobject', 'zzzzsys_object', 'input', 'ab_event', 'After Browse', '58c63d38b88dbab', 480, 6, 87, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('57edbb1638832c4', '57edbac65e1c52a', 'company', 'textarea', 'com_name', 'Name', '57edbac65e1d42e', 10, 31, 34, 100, 20, '1', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57fadb3206fceda', 'nuerror', 'zzzzsys_form', 'input', 'error', '', '57fad2784b27d77', 10, 10, 10, 800, 200, '0', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5811633909eeadd', 'nuform', 'zzzzsys_form', 'input', 'be_event', 'Before Edit', '58c19d9bc559aca', 210, 68, 121, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58116941a1a1f06', 'nuform', 'zzzzsys_form', 'input', 'bs_event', 'Before Save', '58c19d9bc559aca', 220, 24, 324, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58116968afd5b6a', 'nuform', 'zzzzsys_form', 'input', 'as_event', 'After Save', '58c19d9bc559aca', 230, 68, 324, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('581169ba2112f38', 'nuform', 'zzzzsys_form', 'input', 'bd_event', 'Before Delete', '58c19d9bc559aca', 240, 24, 527, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('581169d91b9d203', 'nuform', 'zzzzsys_form', 'input', 'ad_event', 'After Delete', '58c19d9bc559aca', 250, 68, 527, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('581a4d665798263', 'nuform', 'zzzzsys_form', 'input', 'previewedit', 'Preview Edit Form', '58c19d9bc559aca', 290, 217, 503, 174, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('5833648c6db79f7', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_table', 'Code', '570d90df6a2c12a', 250, 3, 3, 50, 18, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('583387f044052c5', 'nuhome', '', 'input', 'ff_button', 'Fast Form', '581288bcd699493', 100, 114, 101, 150, 30, '1', 'center', '0', '0', '', '', '', 'nufflaunch', '', 'b', '-1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58338d5893ec00a', 'nufflaunch', 'zzzzsys_form', 'run', 'aframe', 'FORM', '583361606251aef', 80, 66, 4, 467, 323, '1', 'right', '1', '0', '', '', '', 'nuffcustomobjects', '', 'i', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('583f37bc5bba917', 'nuffobjects', 'zzzzsys_object', 'input', 'ff_field', 'Field Name', '5840d1f62187912', 20, 20, 30, 196, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('583f37d3224bcc8', 'nuffobjects', 'zzzzsys_object', 'input', 'ff_label', ' Label', '5840d1f62187912', 10, 49, 24, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('583f4ed643fcc3b', 'nufflaunch', 'zzzzsys_form', 'subform', 'obj_sf', ' ', '583361606251aef', 10, 66, 564, 474, 323, '1', 'right', '0', '0', '', '', '', 'nuffcustomobjects', '', 'i', '', '', '', '', '', '', '', '', '', '', '', 'zzzzsys_object', 'nuffobjects', 'sob_all_zzzzsys_form_id', '1', '1', 'g', '', '', '', '', ''),
('584de442bfbd456', 'nuobject', 'zzzzsys_object', 'input', 'javascriptbtn', 'Javascript', '58c63d38b88dbab', 490, 184, 80, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('585e5705f3e9867', 'nuobject', 'zzzzsys_object', 'html', 'nucalculator', ' ', '5851cf915a1c653', 400, 101, 306, 275, 99, '1', 'right', '0', '1', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '<table>\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>1</td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>2</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>3</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton'' title=''Add a Space''> </td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> + </td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> - </td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> * </td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> / </td>\n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>4</td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>5</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>6</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>.</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> ? </td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> : </td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> = </td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> ! </td> \n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>7</td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>8</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>9</td> \n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''>0</td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> ( </td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton''> ) </td>\n    <td onclick=''nuAddToFormula(event)''  class=''nuCalculatorButton'' colspan=2>Clear</td>\n  </tr>\n</table>\n'),
('5851cfeb30f9047', 'nuobject', 'zzzzsys_object', 'input', 'sob_calc_formula', 'Formula', '5851cf915a1c653', 420, 43, 80, 500, 35, '1', 'left', '0', '1', '', ' +', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a0940e9dc6916', '58a08a91c9b59a9', 'invoice_item', 'input', 'ite_thing', 'Item', '58a08a91c9b6df4', 10, 20, 54, 170, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('589f7673993720e', '5678ab2c48c5c41', 'employee', 'calc', 'thecalc', 'calc', '5678ab2c49bd810', 20, 67, 89, 100, 18, '1', 'right', '2', '0', '', 'nuTotal(''emp_name1'') + nuTotal(''emp_cost'')', '', 'nuuser', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('589f9c7972d1c5e', '5678ab2c48c5c41', 'employee', 'input', 'emp_cost', 'Wage', '5678ab2c49bd810', 30, 11, 329, 70, 17, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('58a09180222faae', '58a08a1abc4782c', 'invoice', 'subform', 'invoice_item', 'Items', '58a08a1abc48c9a', 10, 70, 168, 438, 219, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '58a08a91c9b59a9', 'ite_invoice_id', '1', '1', 'g', '', '', '', '', ''),
('58a091f8d1d6dc7', 'nuhome', '', 'run', 'run_invoice', 'Invoice', '58be4c05188661c', 170, 63, 64, 150, 30, '1', 'right', '1', '0', '', '', '', '58a08a1abc4782c', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a09448e54ff6f', '58a08a91c9b59a9', 'invoice_item', 'input', 'ite_units', 'Units', '58a08a91c9b6df4', 20, 21, 177, 70, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N|€ 1,000.00', 'nuNumber', '', ''),
('58a0949b9e9922a', '58a08a91c9b59a9', 'invoice_item', 'input', 'ite_unit_price', 'Unit Cost', '58a08a91c9b6df4', 30, 21, 290, 70, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N|$ 1,000.00', 'nuNumber', '', ''),
('58a094d695573f2', '58a08a91c9b59a9', 'invoice_item', 'calc', 'ite_total', 'Total', '58a08a91c9b6df4', 40, 22, 390, 76, 18, '1', 'right', '0', '0', '', 'nuTotal("ite_units") * nuTotal("ite_unit_price")', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a0c22bc011b1c', '58a08a1abc4782c', 'invoice', 'calc', 'inv_total', 'Grand Total', '58a08a1abc48c9a', 20, 307, 490, 76, 25, '1', 'right', '0', '0', '', 'nuTotal("invoice_item.ite_total") * .1', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a0c3d66b2daa7', '58a08a1abc4782c', 'invoice', 'input', 'inv_number', 'Invoice Number', '58a08a1abc48c9a', 30, 32, 168, 50, 25, '1', 'right', '0', '0', '', 'nuTotal("invoice_item.ite_total")', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58a680c21664405', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_table', 'Table', '570d90df5ce8e1a', 10, 20, 0, 72, 18, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', '', '', ''),
('58afef1eacbcf15', 'nuhome', '', 'run', 'run_format', 'Formats', '581288bcd699493', 120, 162, 101, 150, 30, '1', 'left', '1', '0', '', '', '', 'nuformat', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58aff2b35cd9963', 'nuformat', 'zzzzsys_format', 'select', 'srm_type', 'Input Type', '58af6b019f658f4', 10, 18, 86, 85, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'Number|Number|\nDate|Date', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('58b051c8e440efe', 'nuformat', 'zzzzsys_form', 'input', 'srm_format', ' ', '58af6b019f658f4', 40, 55, 86, 498, 35, '0', 'left', '0', '1', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58b20351d1543ef', 'nuobject', 'zzzzsys_object', 'input', 'sob_input_javascript', 'JS Array', '570d90df707867b', 370, 82, 72, 441, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('58b34691918e917', 'nuformat', 'zzzzsys_form', 'word', 'format_title', 'Formats', '58af6b019f658f4', 50, 99, 86, 347, 18, '0', 'left', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuScroll', '[''$'', ''£'', ''€'']', ''),
('58b4125a0428dcc', '58a08a1abc4782c', 'invoice', 'input', 'inv_date', 'Date', '58a08a1abc48c9a', 40, 32, 406, 200, 25, '1', 'right', '0', '0', '', 'nuTotal("invoice_item.ite_total")', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|dd, dddd mmmm yyyy', 'nuDate', '', ''),
('58b418c77ac1ea8', 'nuobject', 'zzzzsys_object', 'select', 'sob_calc_format', 'Format', '5851cf915a1c653', 390, 11, 80, 143, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), ''|'', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = ''Number''', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('58b5314594a350e', 'nuformat', 'zzzzsys_format', 'html', 'nucalculator', ' ', '58af6b019f658f4', 60, 118, 86, 453, 250, '1', 'left', '0', '1', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\n<table id=''tof'' style=''width:500px''>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton number'' style=''font-size:18px'' width=''100%''>1000.</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton number'' style=''font-size:18px'' width=''100%''>1000,</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton number'' style=''font-size:18px'' width=''100%''>1,000.</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton number'' style=''font-size:18px'' width=''100%''>1.000,</td> \n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>yy</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>yyyy</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>pp</td>\n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>dd</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>ddd</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>dddd</td> \n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>mm</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>mmm</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>mmmm</td>\n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>hh</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>nn</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>ss</td>\n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>-</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>:</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>/</td> \n  </tr>\n  <tr>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>.</td>\n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>Space</td> \n    <td onclick=''nuAddToFormat(event)''  class=''nuCalculatorButton date'' width=''100%''>,</td> \n  </tr>\n</table>\n'),
('58b74e4cc4e2647', 'nuformat', 'zzzzsys_format', 'input', 'currencysign', ' ', '58af6b019f658f4', 20, 120, 63, 20, 30, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuScroll', '[''$'', ''£'', ''€'', ''¢'']', ''),
('58b94e64eb76057', 'nuformat', 'zzzzsys_format', 'input', 'currencydecimals', ' ', '58af6b019f658f4', 30, 120, 590, 20, 30, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuScroll', '[0,1,2,3,4]', ''),
('58b7528ca48f0ad', 'nuform', 'zzzzsys_form', 'input', 'previewbrowse', 'Preview Browse Form', '58c19d9bc559aca', 280, 217, 121, 174, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58bf0bfb0e531b2', 'nuhome', '', 'run', 'run_test', 'Test', '58be4c05188661c', 160, 111, 64, 150, 30, '1', 'right', '1', '0', '', '', '', '58bf0b972c2a447', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58bf0cab3baa7f2', '58bf0b972c2a447', 'test_table', 'input', 'number1', 'Number 1', '58bf0b972c2c7a3', 10, 26, 119, 90, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N|$ 1,000.00', 'nuNumber', '', ''),
('58bf0ccc8df2fbb', '58bf0b972c2a447', 'test_table', 'input', 'number2', 'Number 2', '58bf0b972c2c7a3', 20, 61, 116, 90, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N|£ 1000.0', 'nuNumber', '', ''),
('58bf0cfea445803', '58bf0b972c2a447', 'test_table', 'input', 'date1', 'Date 1', '58bf0b972c2c7a3', 30, 100, 116, 90, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|mmmm', 'nuDate', '', ''),
('58bf0d1a7b6e7f6', '58bf0b972c2a447', 'test_table', 'input', 'date2', 'Date 2', '58bf0b972c2c7a3', 40, 150, 116, 90, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|dd-mmm-yyyy', 'nuDate', '', ''),
('58c713936ceb168', 'nuobject', 'zzzzsys_object', 'word', 'phpwrd', 'PHP Code :', '58c63d38b88dbab', 450, 9, 0, 79, 17, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58c81c6f8eae3dd', 'nuobject', 'zzzzsys_object', 'word', 'jswrd', 'Form''s Javascript Custom Code...', '58c63d38b88dbab', 460, 157, 80, 300, 17, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58c8dcc973b90f2', '58c86689b9af7fd', 'zzzzsys_function', 'select', 'sfu_language', 'Language', '58c86689b9b0291', 10, 35, 126, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c8dfd2afa2e8e', '58c86689b9af7fd', 'zzzzsys_function', 'input', 'sfu_name', 'Name', '58c86689b9b0291', 20, 71, 126, 250, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c8dd9a1db5517', 'nuhome', '', 'run', 'run_function', 'Functions', '581288bcd699493', 110, 66, 101, 150, 30, '1', 'left', '1', '0', '', '', '', '58c86689b9af7fd', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c8e3ca4aca5e9', '58c86689b9af7fd', 'zzzzsys_function', 'input', 'sfu_syntax', 'Syntax', '58c86689b9b0291', 30, 107, 126, 250, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c8e41f4e14bda', '58c86689b9af7fd', 'zzzzsys_function', 'textarea', 'sfu_description', 'Description', '58c86689b9b0291', 40, 143, 126, 390, 76, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c8e4462798dbf', '58c86689b9af7fd', 'zzzzsys_function', 'textarea', 'sfu_sample', 'Sample', '58c86689b9b0291', 50, 237, 126, 390, 76, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c8e4861081b1d', '58c86689b9af7fd', 'zzzzsys_function', 'textarea', 'sfu_see', 'See', '58c86689b9b0291', 60, 331, 126, 297, 46, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58c9038dd96de4d', '58bf0b972c2a447', 'test_table', 'input', 'text2', 'Text 2', '58bf0b972c2c7a3', 50, 68, 284, 142, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|dd-mmm-yyyy', 'color', '', ''),
('58c903f75898ae1', '58bf0b972c2a447', 'test_table', 'input', 'text1', 'Text 1', '58bf0b972c2c7a3', 60, 151, 284, 142, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|dd-mmm-yyyy', 'range', '', ''),
('58c9c520001fff6', 'nuobject', 'zzzzsys_object', 'select', 'add_total', ' ', '5851cf915a1c653', 410, 101, 80, 212, 95, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '1', 'SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('58d48507231397f', 'nuobject', 'zzzzsys_object', 'input', 'sob_subform_table', 'Code', '570d90df6d35fde', 290, 3, 3, 50, 18, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('58d6f5a644bae0c', 'nufflaunch', 'zzzzsys_form', 'word', 'ffwrd', 'Objects for this Fast Form ', '583361606251aef', 20, 37, 564, 455, 17, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58d6fbc151d152f', 'nufflaunch', 'zzzzsys_form', 'input', 'fastform_table', 'New Table Name', '583361606251aef', 30, 10, 135, 140, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58d6f5396f6bd38', 'nufflaunch', 'zzzzsys_form', 'word', 'phpwrd', 'Currently used Objects', '583361606251aef', 50, 37, 4, 467, 17, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('58d700e66eab5aa', 'nuffobjects', 'zzzzsys_object', 'input', 'view_object', ' ', '5840d1f62187912', 30, 20, 10, 18, 18, '1', 'left', '0', '0', '', '', '', 'nuobject', '', 'b', '#ff_id#', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'button', '', ''),
('58d76b89aeafcea', 'nuffobjects', 'zzzzsys_object', 'input', 'ff_id', ' ', '5840d1f62187912', 20, 20, 30, 5, 18, '1', 'left', '1', '2', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', '', 'text', '', ''),
('58dfe52a97e456546', '58dfe3f2977a13739', '', 'run', 'runfastforms', ' ', '58dfe3f2977a13740', 10, 18, 22, 1058, 414, '1', 'left', '1', '0', '', '', '', 'nufflaunch', '', 'i', '-1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('s14913715626400', 'c14913710309970799', 'aaa', 'input', 'com_name', 'Company Name', 's14913715626399', 10, 24, 134, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58dfee3c5b0286944', 'nufflaunch', 'zzzzsys_form', 'run', 'fastform_build', 'Build', '583361606251aef', 70, 7, 359, 112, 21, '1', 'left', '1', '0', '', '', '', 'nufastform', '', 'b', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('p14911014204989', 'nufflaunch', 'zzzzsys_form', 'input', 'new_id', 'New ID', '583361606251aef', 40, 0, 563, 172, 18, '1', 'left', '0', '1', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('p14911022481709', 'nufflaunch', 'zzzzsys_form', 'input', 'fastform_move', 'Move', '583361606251aef', 60, 7, 359, 112, 21, '1', 'center', '1', '0', '', '', '', 'nufflaunch', '', 'b', '-2', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', '', ''),
('s14913715626401', 'c14913710309970799', 'aaa', 'input', 'com_suburb', 'Suburb', 's14913715626399', 20, 65, 134, 90, 18, '1', 'left', '0', '0', '', 'nuTotal(''com_phone'') + nuTotal(''employee_sf.thecalc'')', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'D|mmmm', 'nuDate', '', ''),
('s14913715626402', 'c14913710309970799', 'aaa', 'calc', 'com_phone', 'Calc this', 's14913715626399', 30, 106, 134, 111, 18, '1', 'right', '0', '0', '', 'nuTotal("employee_sf.emp_name") + nuTotal("employee_sf.emp_cost")', '$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'number', '', ''),
('s14913715626403', 'c14913710309970799', 'aaa', 'select', 'com_color_id', 'Color', 's14913715626399', 40, 188, 134, 100, 159, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '1', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('s14913715626404', 'c14913710309970799', 'aaa', 'lookup', 'com_business_id', 'Business Type', 's14913715626399', 50, 147, 134, 60, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '200', '0', '568b508eec00d80', '', '57f6e1f954955c1', 'business', '', '', '', '', '', '', '', '', '', ''),
('s14913715626411', 'nuhome', 'aaa', 'run', 'FF3', 'aaa', '58be4c05188661c', 140, 62, 310, 100, 30, '0', '', '0', '0', '', '', '', 'c14913710309970799', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('s14914303620619', 'nusample', '', 'input', 'sfo_code', 'Code', 's14914269237459', 20, 352, 316, 140, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

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
('57578be0057a49f', 'HELLOW', 'Hello World', 'test', 'echo ''hello user #USER_ID#, today is.. #com_name# #to_date# #from_date#'';\necho ''hello user #USER_ID#, today is.. #com_name# #to_date# #from_date#'';\n\n\n', '5678ab2c48c5c41', 'nulaunchdates', '', ''),
('57db70b7aa22cda', 'tables', 'update sob_all_table', 'aaa', '$S  = "\n\n        SELECT * FROM zzzzsys_tab \n        JOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\n        JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = syt_zzzzsys_form_id\n\n";\n\n$T  = nuRunQuery("SELECT * FROM zzzzsys_object");\n\nwhile($R = db_fetch_object($T)){\n        \n    $s  = "\n        SELECT * FROM zzzzsys_form\n        WHERE zzzzsys_form_id = ''$R->zzzzsys_form_id''\n    ";\n    \n    $t  = nuRunQuery($s);\n    $r  = db_fetch_object($t);\n    $s  = "UPDATE zzzzsys_object WHERE sob_all_zzzzsys_form_id =  ''$R->zzzzsys_form_id''";\n    \n}\n\nprint ''done!'';\n', '', '57edbac65e1c52a', '', ''),
('57f6e1f954955c1', 'Dodgy', 'Dodgy', 'Dodgy', 'echo ''y'';\necho ''y'';\n\necho ''y'';\necho ''y'';\n\nnudebug2(''steven'', array(''steven'', ''james'', ''copley''), ''copley'');\n\n', '', 'nublank', '', ''),
('581135daea4f878', 'EV', 'copy events to form', 'nu', '$s  = "SELECT * FROM zzzzsys_form_backup";\n\n$t  = nuRunQuery($s);\n\nwhile($r = db_fetch_array($t)){\n    \n    addP(''BB'', $r);\n    addP(''BO'', $r);\n    addP(''BS'', $r);\n    addP(''AS'', $r);\n    addP(''BD'', $r);\n    addP(''AD'', $r);\n    \n    udForm($r);\n\n}\n\n$s  = "SELECT * FROM zzzzsys_object WHERE sob_all_type = ''lookup''";\n\n$t  = nuRunQuery($s);\n\nwhile($r = db_fetch_array($t)){\n    \n    look($r);\n\n}\n\n\nfunction look($r){\n    \n    $i              = $r[''zzzzsys_object_id''] . ''_AB'';      //-- after browse\n    $c              = $r[''sob_all_id''];\n    $p              = $r[''sob_lookup_php''];\n    \n    if(trim($p) == ''''){return;}\n    \n    $s              = "\n    INSERT INTO zzzzsys_php\n    (\n        zzzzsys_php_id,\n        sph_code,\n        sph_description,\n        sph_group,\n        sph_php,\n        sph_system\n    )\n    VALUES\n    (\n        ''$i'',\n        ''$c'',\n        ''After Browse ($c)'',\n        ''nubuilder'',\n        ?,\n        ''1''\n    )\n    ";\n    \n    nuRunQuery($s, array($p));\n    print $s.''<br><br>'';\n    \n\n}\n\n\nfunction udForm($r){\n    \n    $id = $r[''zzzzsys_form_id''];\n    $BB = $r[''sfo_before_browse_php''];\n    $BO = $r[''sfo_before_open_php''];\n    $BS = $r[''sfo_before_save_php''];\n    $AS = $r[''sfo_after_save_php''];\n    $BD = $r[''sfo_before_delete_php''];\n    $AD = $r[''sfo_after_delete_php''];\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_before_browse_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($BB));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_before_open_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($BO));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_before_save_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($BS));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_after_save_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($AS));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_before_delete_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($BD));\n    \n    $s  = "UPDATE zzzzsys_form SET sfo_after_delete_php = ? WHERE zzzzsys_form_id = ''$id''";\n    print $s.''<br><br>'';\n    nuRunQuery($s, array($AD));\n\n}\n\n\n\n\nfunction addP($ev,$r){\n\n    $event	        = array();\n    $event[''BB'']    = ''sfo_before_browse_php'';\n    $event[''BO'']    = ''sfo_before_open_php'';\n    $event[''BS'']    = ''sfo_before_save_php'';\n    $event[''AS'']    = ''sfo_after_save_php'';\n    $event[''BD'']    = ''sfo_before_delete_php'';\n    $event[''AD'']    = ''sfo_after_delete_php'';\n    \n    $i              = $r[''zzzzsys_form_id''] . ''_'' . $ev;\n    $c              = $r[''sfo_code''];\n    $p              = $r[$event[$ev]];\n    \n    if(trim($p) == ''''){return;}\n    \n    $s              = "\n    INSERT INTO zzzzsys_php\n    (\n        zzzzsys_php_id,\n        sph_code,\n        sph_description,\n        sph_group,\n        sph_php,\n        sph_system\n    )\n    VALUES\n    (\n        ''$i'',\n        ''$ev'',\n        ''$ev ($c)'',\n        ''nubuilder'',\n        ?,\n        ''1''\n    )\n    ";\n    \n    nuRunQuery($s, array($p));\n    print $s.''<br><br>'';\n    \n}\n\n\n', '', 'nublank', '', ''),
('nulaunchdates_BE', 'RTVIEW', 'run_list View', 'nubuilder', '$s = "\n\nCREATE VIEW `zzzzsys_run_list`  AS  \nselect `zzzzsys_form`.`zzzzsys_form_id` AS `id`,''Form'' AS `run`,`zzzzsys_form`.`sfo_code` AS `code`,`zzzzsys_form`.`sfo_description` AS `description` from `zzzzsys_form` \n\n\nunion select `zzzzsys_report`.`zzzzsys_report_id` AS `id`,''Report'' AS `run`,`zzzzsys_report`.`sre_code` AS `code`,`zzzzsys_report`.`sre_description` AS `description` from `zzzzsys_report` \n\n\nunion select `zzzzsys_php`.`zzzzsys_php_id` AS `id`,''Procedure'' AS `run`,`zzzzsys_php`.`sph_code` AS `code`,`zzzzsys_php`.`sph_description` AS `description` from `zzzzsys_php`  where sph_system != ''1''  order by `code`;\n\n";\n\nnuRunQuery($s);\n', '', 'nublank', '1', ''),
('nuform_BS', 'BS', 'BS (FORM)', 'nubuilder', '\n    $o = ''#sfo_type#'';\n\n    if(''#sfo_type#''             == ''''){nuDisplayError(''<b>Type</b> Cannot Be Blank..'', ''sfo_type'');}\n    if(''#sfo_code#''             == ''''){nuDisplayError(''<b>Code</b> Cannot Be Blank..'', ''sfo_code'');}\n    if(''#sfo_description#''      == ''''){nuDisplayError(''<b>Description</b> Cannot Be Blank..'', ''sfo_description'');}\n\n\n    \n    \n    if($o == ''browseedit'' || $o == ''subform'' || $o == ''browse''){\n        \n        if($o != ''browse''){\n            nuCheckTabs();\n        }\n        \n        if($o != ''subform''){\n            nuCheckBrowse();\n        }\n        \n        if(''#sfo_browse_sql#''   == ''''){nuDisplayError(''<b>Browse SQL</b> Cannot Be Blank..'', ''sfo_browse_sql'');}\n    }\n\n    if($o == ''edit'' or $o == ''launch''){\n        nuCheckTabs();\n    }\n\n    if($o != ''launch''){\n        if(''#sfo_table#''            == ''''){nuDisplayError(''<b>Table Name</b> Cannot Be Blank..'', ''sfo_table'');}\n        if(''#sfo_primary_key#''      == ''''){nuDisplayError(''<b>Primary Key</b> Cannot Be Blank..'', ''sfo_primary_key'');}\n    }\n\nfunction nuCheckBrowse(){\n\n    $r  = 0;\n    $sf = nuSubformObject(''zzzzsys_browse_sf'');\n    \n    for($i = 0 ; $i < count($sf->rows) ; $i++){\n       if($sf->deleted[$i] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(''<b>Must have at least 1</b> Browse Column Defined..'');\n    }\n    \n}\n\nfunction nuCheckTabs(){\n\n    $r  = 0;\n    $sf = nuSubformObject(''zzzzsys_tab_sf'');\n    \n    for($i = 0 ; $i < count($sf->rows) ; $i++){\n       if($sf->deleted[$i] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(''<b>Must have at least 1</b> Tab Column Defined..'');\n    }\n    \n}\n\n\n\n\n', '', '', '1', ''),
('nuphp_AS', '', 'After Save for  ', 'nubuilder', '\nif(''#sph_php#'' == ''''){\n    nuRunQuery("DELETE FROM zzzzsys_php WHERE zzzzsys_php_id = ''#RECORD_ID#''");\n}\n', '', '', '1', ''),
('nuphp_BS', '', 'Before Save for  ', 'nubuilder', '$rid    = ''#RECORD_ID#'';\n$php    = ''#sph_php#'';\n\nif($rid != ''-1'' and $rid != ''-2''){ \n    \n    $s      = "SELECT * FROM zzzzsys_php WHERE zzzzsys_php_id = ''$rid''";\n    $t      = nuRunQuery($s);\n    $r      = db_fetch_object($t);\n    \n    if(db_num_rows($t) == 0){\n    \n        $c              = $r->sob_all_id;\n        $p              = $r->sob_lookup_php;\n        \n        if(trim($p) == ''''){return;}\n        \n        $s              = "\n        INSERT INTO zzzzsys_php\n        (zzzzsys_php_id, sph_system)\n        VALUES\n        (''$rid'', ''1'')\n        ";\n        \n        nuRunQuery($s);\n        \n    }\n    \n}\n\n', '', '', '1', ''),
('568b50020fc7a62_AB', 'com_business_id', 'After Browse (com_business_id)', 'nubuilder', '\nnuSetFormValue(''com_phone'', 1234);\nnuSetFormValue(''com_name'', 777);\nnuSetFormValue(''com_age'', 1966);\n\n\n', '', '', '1', ''),
('nupassword_BS', 'BS', 'BS (PASS)', 'nubuilder', '\n\n$is		= md5(''#old_password#'');\n$was	= md5(''#new_password_check#'');\n$will	= md5(''#new_password#'');\n$ses	= ''#SESSION_ID#'';\nnudebug("$is,$was,$will");\n\n$s      = "\n\n    SELECT * \n    FROM zzzzsys_session\n    WHERE zzzzsys_session_id = ''$ses''\n\n";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n$j  = json_decode($r->sss_access);\n\n$s      = "\n\n    SELECT * \n    FROM zzzzsys_user\n    WHERE zzzzsys_user_id = ''#USER_ID#''\n    AND sus_login_password = ''$is''\n\n";\n\n$t  = nuRunQuery($s);\nnudebug(''31 '' . $s);\n\nif(db_num_rows($t) == 0){\n\n    nuDisplayError(''Incorrect Password'');\n    return;\n    \n}\n\nif($will == $was){\n\n    $s  = "\n\n    UPDATE zzzzsys_user \n    SET sus_login_password = ''$will''\n    WHERE zzzzsys_user_id = ''#RECORD_ID#''\n    AND sus_login_password = ''$is''\n    \n    ";\n\nnudebug(''qqqq ''.$s);\n    nuRunQuery($s);\n\n}else{\n    \n    nuDisplayError(''"Enter New Password" Must be the same as "Re-Enter New Password"'');\n\n}\n\n\n\n\n\n\n\n', '', '', '1', ''),
('nuuser_AS', 'AS', 'AS (ACCUSE)', 'nubuilder', 'if(''#new_password#'' == ''#check_password#'' && ''#check_password#'' != ''#check_p''.''assword#'' && ''#check_password#'' != ''''){\n\n	$pw	= md5(''#check_password#'');\n	nuRunQuery("UPDATE zzzzsys_user SET sus_login_password = ''$pw'' WHERE zzzzsys_user_id = ''#RECORD_ID#''");\n\n}\n\n', '', '', '1', ''),
('nurunlist_BB', 'BB', 'BB (RUN)', 'nubuilder', '$s = "\n\nDROP VIEW IF EXISTS zzzzsys_run_list;\nCREATE VIEW zzzzsys_run_list AS\nSELECT zzzzsys_form_id AS id, ''Form'' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_form\nUNION\nSELECT zzzzsys_report_id AS id, ''Report'' AS run, sre_code AS code, sre_description AS description FROM zzzzsys_report\nUNION\nSELECT zzzzsys_php_id AS id, ''Procedure'' AS run, sph_code AS code, sph_description AS description FROM zzzzsys_php\nORDER BY code;\n\n";\n\nnuRunQuery($s);', '', '', '1', ''),
('nudebug_BD', 'BD', 'BD (DEBUG)', 'nubuilder', '\n$a  = ''#delete_option#'';\n$r  = ''#RECORD_ID#'';\n$d  = "DELETE FROM zzzzsys_debug ";\n\nif($a == 1){$d  = $d . "WHERE zzzzsys_debug_id = ''$r''";}\nif($a == 2){$d  = $d . "WHERE zzzzsys_debug_id != ''$r''";}\nif($a == 3){$d  = $d . "WHERE zzzzsys_debug_id < ''$r''";}\n\nnuRunQuery($d);\n', '', '', '1', ''),
('nuobject_BS', 'BS', 'BS (OBJECT)', 'nubuilder', '    $r  = ''#RECORD_ID#'';\n    $f  = ''#sob_all_zzzzsys_form_id#'';\n    $o  = ''#sob_all_id#'';\n\n    $s  = "\n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = ''$f''\n        AND sob_all_id = ''$o''\n        AND zzzzsys_object_id != ''$r''\n\n        ";\n\n    $t  = nuRunQuery($s);\n    $r  = db_fetch_row($t);\n    \n    if($r[0] > 0){\n        nuDisplayError(''This <b>ID</b> is already used on this Form..'');\n    }\n\n    $o = ''#sob_all_type#'';\n\n    if(''#sob_all_zzzzsys_tab_id#''             == ''''){nuDisplayError(''Type Cannot Be Blank..'', ''sob_all_zzzzsys_tab_idcode'');}\n    if(''#sob_all_type#''             == ''''){nuDisplayError(''Type Cannot Be Blank..'', ''sob_all_type'');}\n    if(''#sob_all_zzzzsys_form_id#''  == ''''){nuDisplayError(''Tab - Form Cannot Be Blank..'', ''sob_all_zzzzsys_form_idcode'');}\n    if(''#sob_all_id#''               == ''''){nuDisplayError(''ID Cannot Be Blank..'', ''sob_all_id'');}\n    if(''#sob_all_label#''   == ''''){nuDisplayError(''Label Cannot Be Blank..'', ''sob_all_label'');}\n    if(''#sob_all_top#''   == ''''){nuDisplayError(''Top Cannot Be Blank..'', ''sob_all_top'');}\n    if(''#sob_all_left#''   == ''''){nuDisplayError(''Left Cannot Be Blank..'', ''sob_all_left'');}\n    if(''#sob_all_width#''   == ''''){nuDisplayError(''Width Cannot Be Blank..'', ''sob_all_width'');}\n    if(''#sob_all_height#''   == ''''){nuDisplayError(''Height Cannot Be Blank..'', ''sob_all_height'');}\n    if(''#sob_all_cloneable#''   == ''''){nuDisplayError(''Cloneable Cannot Be Blank..'', ''sob_all_cloneable'');}\n    if(''#sob_all_align#''   == ''''){nuDisplayError(''Align Cannot Be Blank..'', ''sob_all_align'');}\n    if(''#sob_all_validate#''   == ''''){nuDisplayError(''Validation Cannot Be Blank..'', ''sob_all_validate'');}\n    if(''#sob_all_access#''   == ''''){nuDisplayError(''Read Only Cannot Be Blank..'', ''sob_all_access'');}\n\n\n    if($o == ''display''){\n        if(''#sob_display_sql#''   == ''''){nuDisplayError(''Display Cannot Be Blank..'',''sob_display_sql'');}\n    }\n\n    if($o == ''html''){\n        if(''#sob_html_code#''   == ''''){nuDisplayError(''HTML Cannot Be Blank..'',''sob_html_code'');}\n    }\n\n    if($o == ''lookup''){\n        if(''#sob_lookup_zzzzsys_form_id#''   == ''''){nuDisplayError(''Form Cannot Be Blank..'', ''sob_lookup_zzzzsys_form_idcode'');}\n        if(''#sob_lookup_code#''   == ''''){nuDisplayError(''Code Cannot Be Blank..'', ''sob_lookup_code'');}\n        if(''#sob_lookup_description#''   == ''''){nuDisplayError(''Descrition Cannot Be Blank..'', ''sob_lookup_description'');}\n        if(''#sob_lookup_description_width#''   == ''''){nuDisplayError(''Width Cdddannot Be Blank..'', ''sob_lookup_description_width'');}\n    }\n\n    if($o == ''run''){\n        if(''#sob_run_zzzzsys_form_id#''   == ''''){nuDisplayError(''Run Cannot Be Blank..'', ''sob_run_zzzzsys_form_idcode'');}\n        if(''#sob_run_method#''   == ''''){nuDisplayError(''Method Cannot Be Blank..'', ''sob_run_method'');}\n    }\n\n\n    if($o == ''select''){\n        if(''#sob_select_multiple#''   == ''''){nuDisplayError(''Multiple Cannot Be Blank..'', ''sob_select_multiple'');}\n        if(''#sob_select_sql#''   == ''''){nuDisplayError(''SQL/List Cannot Be Blank..'', ''sob_select_sql'');}\n    }\n\n    if($o == ''subform''){\n        if(''#sob_subform_zzzzsys_form_id#''   == ''''){nuDisplayError(''Form Cannot Be Blank..'', ''sob_subform_zzzzsys_form_idcode'');}\n        if(''#sob_subform_foreign_key#''   == ''''){nuDisplayError(''Foreign Key Cannot Be Blank..'', ''sob_subform_foreign_key'');}\n        if(''#sob_subform_add#''   == ''''){nuDisplayError(''Addable Cannot Be Blank..'', ''sob_subform_add'');}\n        if(''#sob_subform_delete#''   == ''''){nuDisplayError(''Deletable Cannot Be Blank..'', ''sob_subform_delete'');}\n        if(''#sob_subform_type#''   == ''''){nuDisplayError(''Type Cannot Be Blank..'', ''sob_subform_type'');}\n    }\n\n    if($o == ''''){\n        if(''#sfo_browse_sql#''   == ''''){nuDisplayError(''Browse SQL Cannot Be Blank..'', ''sfo_browse_sql'');}\n    }\n', '', '', '1', ''),
('nuform_AS', 'AS', 'AS (FORM)', 'nubuilder', '$s  = "\r\n    SELECT * \r\n    FROM zzzzsys_browse \r\n    WHERE sbr_zzzzsys_form_id = ''#RECORD_ID#''\r\n    ORDER BY sbr_order;\r\n";\r\n\r\n\r\n$t = nuRunQuery($s);\r\n$o = 10;\r\n\r\nwhile($r = db_fetch_object($t)){\r\n        \r\n    $s  = "\r\n        UPDATE zzzzsys_browse \r\n        SET sbr_order = ''$o''\r\n        WHERE zzzzsys_browse_id = ''$r->zzzzsys_browse_id''\r\n        ORDER BY sbr_order;\r\n    ";\r\n    \r\n    nuRunQuery($s);\r\n    \r\n    $o = $o + 10;    \r\n    \r\n}\r\n\r\n$s  = "\r\n    SELECT * \r\n    FROM zzzzsys_tab \r\n    WHERE syt_zzzzsys_form_id = ''#RECORD_ID#''\r\n    ORDER BY syt_order;\r\n";\r\n\r\n$t = nuRunQuery($s);\r\n$o = 10;\r\n\r\nwhile($r = db_fetch_object($t)){\r\n        \r\n    $s  = "\r\n        UPDATE zzzzsys_tab \r\n        SET syt_order = ''$o''\r\n        WHERE zzzzsys_tab_id = ''$r->zzzzsys_tab_id''\r\n        ORDER BY syt_order;\r\n    ";\r\n    \r\n    nuRunQuery($s);\r\n    \r\n    $o = $o + 10;    \r\n    \r\n}\r\n\r\n', '', '', '1', ''),
('nucalcobjects_BB', 'SYS', 'System PHP', '', '\n$s = "\n\nCREATE TABLE #TABLE_ID#\n\nSELECT \n   sob_all_zzzzsys_form_id AS theform,\n   '''' AS theparent,\n   sob_all_id AS thechild,\n   CONCAT(sob_all_id) as thevalue\nFROM zzzzsys_object \nWHERE sob_input_type = ''number''\nOR sob_all_type = ''calc''\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   su.sob_all_id AS theparent,\n   inp.sob_all_id AS thechild,\n   CONCAT(su.sob_all_id, ''.'', inp.sob_all_id) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = ''subform''\nAND (\n        inp.sob_input_type = ''nuNumber'' OR \n        inp.sob_input_type = ''number'' OR \n        inp.sob_all_type = ''calc''\n    )\n\n";\n    \nnuRunQuery($s);\n\n', '', '', '', ''),
('570d9046964038e_AB', 'SYS', 'System PHP', '', '\n$s  = "\n        SELECT * \n        FROM zzzzsys_tab \n        JOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\n        WHERE zzzzsys_tab_id = ''#LOOKUP_RECORD_ID#''\n        \n        ";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n\nnuSetFormValue(''sob_all_zzzzsys_form_id'', $r->syt_zzzzsys_form_id);\nnuSetFormValue(''sob_all_table'', $r->sfo_table);\n', '', '', '', ''),
('nuform_AD', '', '', '', '$s   = "DELETE FROM zzzzsys_browse WHERE sbr_zzzzsys_form_id = ''#RECORD_ID#''";\n$t   = nuRunQuery($s);\n$s   = "DELETE FROM zzzzsys_tab WHERE syt_zzzzsys_form_id = ''#RECORD_ID#''";\n$t   = nuRunQuery($s);\n\n\n$e   = array(''BB'',''BE'',''BS'',''AS'',''BD'',''AD'');     //-- Form events\n\nfor($i = 0 ; $i < count($e) ; $i++){\n  \n  $s = "DELETE FROM zzzzsys_php WHERE zzzzsys_php_id = ''#RECORD_ID#_" . $e[$i] ."''";\n  $t = nuRunQuery($s);\n  \n}\n\n$s   = "\n    DELETE \n    FROM zzzzsys_object \n    WHERE sob_all_type = ''run''\n    AND sob_run_zzzzsys_form_id = ''#RECORD_ID#''\n    ";\n      \n$t   = nuRunQuery($s);\n\n\n', '', '', '', ''),
('570da52f2828508_AB', '', '', '', '\n$s  = "\n        SELECT * \n        FROM zzzzsys_form\n        WHERE zzzzsys_form_id = ''#LOOKUP_RECORD_ID#''\n        \n        ";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n\nnuSetFormValue(''sob_subform_table'', $r->sfo_table);\n', '', '', '', ''),
('57452c417370475_AB', '', '', '', 'nuSetFormValue(''slf_add_button'', ''1'');\nnuSetFormValue(''slf_print_button'', ''1'');\nnuSetFormValue(''slf_save_button'', ''1'');\nnuSetFormValue(''slf_clone_button'', ''1'');\nnuSetFormValue(''slf_delete_button'', ''1'');\n', '', '', '', ''),
('574671cdcc77367_AB', '', '', '', '\n$s  = "\n        SELECT * \n        FROM zzzzsys_tab \n        JOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\n        WHERE zzzzsys_tab_id = ''#LOOKUP_RECORD_ID#''\n        \n        ";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n\nnuSetFormValue(''sob_lookup_table'', $r->sfo_table);\n', '', '', '', ''),
('570dab25164b394_AB', '', '', '', '\n$s  = "\n        SELECT * \n        FROM zzzzsys_form\n        WHERE zzzzsys_form_id = ''#LOOKUP_RECORD_ID#''\n        \n        ";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n\nnuSetFormValue(''sob_lookup_table'', $r->sfo_table);\n', '', '', '', ''),
('nufastform', 'RUNFF', 'Run FastForm', 'nubuilder', '$TT             = nuTT();\n$SF             = nuSubformObject(''obj_sf'');\n$table          = ''#fastform_table#'';\n$form_id        = ''#new_id#'';\n$tab_id         = nuID();\n$t              = nuRunQuery("SELECT COUNT(*) FROM zzzzsys_form WHERE SUBSTRING(sfo_code, 1, 2) = ''FF''");\n$r              = db_fetch_row($t);\n$form_code      = ''FF'' . $r[0];\n$form_desc      = ''Fast Form '' . $r[0];\n$s              = Array();\n\n//----------add tab--------------------\n$sql            = "\n\n                INSERT \n                INTO zzzzsys_tab\n                (zzzzsys_tab_id,\n                syt_zzzzsys_form_id,\n                syt_title,\n                syt_order)\n                VALUES\n                (?, ?, ?, ?)\n\n";\n\n$array          = Array($tab_id, $form_id, ''Main'', 10);\n\nnuRunQuery($sql, $array);\n\n//----------add form--------------------\n\n$sql            = "\n\n                INSERT \n                INTO zzzzsys_form\n                (zzzzsys_form_id,\n                sfo_type,\n                sfo_code,\n                sfo_description,\n                sfo_table,\n                sfo_primary_key,\n                sfo_browse_sql)\n                VALUES\n                (?, ?, ?, ?, ?, ?, ?)\n\n";\n\n$array          = Array($form_id, ''browseedit'', $form_code, $form_desc, $table, $table.''_id'', "SELECT * FROM $table");\n\nnuRunQuery($sql, $array);\n\nfor($i = 0 ; $i < count($SF->rows) ; $i++){\n    \n    $r          = $SF->rows[$i][3];\n    $s[]        = "''$r''";\n\n}\n\n$in             = implode('', '', $s);\n$sql            = "\n\n                CREATE TABLE $TT\n                SELECT * FROM zzzzsys_object\n                WHERE zzzzsys_object_id IN ($in)\n\n";\n\nnuRunQuery($sql);\n\n$sql            = "\n\n                UPDATE $TT\n                SET \n                    sob_all_id                  = ?,\n                    sob_all_label               = ?,\n                    sob_all_order               = ?,\n                    sob_all_top                 = ?,\n                    sob_all_left                = ?,\n                    sob_all_table               = ?,\n                    sob_all_zzzzsys_form_id     = ?,\n                    sob_all_zzzzsys_tab_id      = ?,\n                    zzzzsys_object_id           = ?\n                WHERE \n                    zzzzsys_object_id           = ?\n\n";\n\n$pix            = 20;\n\nfor($i = 0 ; $i < count($SF->rows) ; $i++){\n    \n    $newid      = nuID();\n    $label      = $SF->rows[$i][1];\n    $field      = $SF->rows[$i][2];\n    $oldid      = $SF->rows[$i][3];\n\n    $array      = Array($field, $label, (10*(1+$i)), ($pix*(1+$i)+50), ($pix*(1+$i)), $table, $form_id, $tab_id, $newid, $oldid);\n\n    nuRunQuery($sql, $array);\n\n}\n\n$t              = nuRunQuery("SELECT * FROM $TT");\n$a              = Array();\n$n              = ''number date'';\n\nwhile($r = db_fetch_object($t)){\n    \n\n    \n    $y          = $r->sob_all_type;\n    $i          = $r->sob_input_type;\n    $id         = $r->sob_all_id;\n    $l          = count($a);\n    \n    $date       = ($i == ''date'' || $i == ''nuDate'');\n    $norm       = ($y == ''input'' && $i != ''date'' && $i != ''nuDate'' && $i != ''nuNumber'' && $i != ''number'');\n    \n    if($y == ''lookup''){                         $a[] = Array(''name''=>$id, ''type''=>''id'');}\n    if($y == ''select''){                         $a[] = Array(''name''=>$id, ''type''=>''varchar'');}\n    if($y == ''calc''){                           $a[] = Array(''name''=>$id, ''type''=>''varchar'');}\n    if($y == ''text''){                           $a[] = Array(''name''=>$id, ''type''=>''text'');}\n    if($y == ''input'' && $norm){                 $a[] = Array(''name''=>$id, ''type''=>''varchar'');}\n    if($y == ''input'' && $date){                 $a[] = Array(''name''=>$id, ''type''=>''date'');}\n    if($y == ''input'' && $i == ''number''){        $a[] = Array(''name''=>$id, ''type''=>''int'');}\n    if($y == ''input'' && $i == ''nuNumber''){      $a[] = Array(''name''=>$id, ''type''=>''decimal'');}\n    \n}\n\n\n$s              = nuBuildTable($table, $a);\n    \nnuRunQuery($s);\n\n$t              = nuRunQuery("SELECT * FROM $TT");\n$ord            = 1;\n\nwhile($r = db_fetch_object($t)){\n    \n$ord++;\n    \n    $y          = $r->sob_all_type;\n    $i          = $r->sob_input_type;\n    $id         = $r->sob_all_id;\n    $lab        = $r->sob_all_label;\n\n    $sql            = "\n    \n                    INSERT \n                    INTO zzzzsys_browse\n                    (zzzzsys_browse_id,\n                    sbr_zzzzsys_form_id,\n                    sbr_title,\n                    sbr_display,\n                    sbr_align,\n                    sbr_format,\n                    sbr_order,\n                    sbr_width)\n                    VALUES\n                    (?, ?, ?, ?, ?, ?, ?, ?)\n    \n    ";\n    \n    $array          = Array(nuID(), $form_id, $lab, $id, ''left'', '''', $ord * 10, 200);\n    \n    nuRunQuery($sql, $array);\n    \n}\n\n\n//----------add run button--------------------\n\n$sql            = "\n\n                INSERT \n                INTO $TT\n                (zzzzsys_object_id,\n                sob_all_zzzzsys_form_id,\n                sob_all_zzzzsys_tab_id,\n                sob_all_id,\n                sob_all_label,\n                sob_all_table,\n                sob_all_order,\n                sob_all_top,\n                sob_all_left,\n                sob_all_width,\n                sob_all_height,\n                sob_run_zzzzsys_form_id,\n                sob_run_method,\n                sob_all_cloneable,\n                sob_all_validate,\n                sob_all_access,\n                sob_all_type)\n                VALUES\n                (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\n\n";\n\n$array          = Array(nuID(), ''nuhome'', ''58be4c05188661c'', $form_code, $table, $table, 11, 100, 200, 100, 30, $form_id, ''b'', 0, 0, 0, ''run'');\n//-- 58be4c05188661c   is the Tesing Tab on Home\nnuRunQuery($sql, $array);\n\n\nnuRunQuery("INSERT INTO zzzzsys_object SELECT * FROM $TT");\nnuRunQuery("DROP TABLE $TT");\n\n', '', 'nufflaunch', '', ''),
('58db9b26706b451', '', '', '', '$TT             = nuTT();\n$SF             = nuSubformObject(''obj_sf'');\n$table          = ''#fastform_table#'';\n$form_id        = ''#new_id#'';\n$tab_id         = nuID();\n$t              = nuRunQuery("SELECT COUNT(*) FROM zzzzsys_form WHERE SUBSTRING(sfo_code, 1, 2) = ''FF''");\n$r              = db_fetch_row($t);\n$form_code      = ''FF'' . $r[0];\n$form_desc      = ''Fast Form '' . $r[0];\n$s              = Array();\n\n//----------add tab--------------------\n$sql            = "\n\n                INSERT \n                INTO zzzzsys_tab\n                (zzzzsys_tab_id,\n                syt_zzzzsys_form_id,\n                syt_title,\n                syt_order)\n                VALUES\n                (?, ?, ?, ?)\n\n";\n\n$array          = Array($tab_id, $form_id, ''Main'', 10);\n\nnuRunQuery($sql, $array);\n\n//----------add form--------------------\n\n$sql            = "\n\n                INSERT \n                INTO zzzzsys_form\n                (zzzzsys_form_id,\n                sfo_type,\n                sfo_code,\n                sfo_description,\n                sfo_table,\n                sfo_primary_key,\n                sfo_browse_sql)\n                VALUES\n                (?, ?, ?, ?, ?, ?, ?)\n\n";\n\n$array          = Array($form_id, ''browseedit'', $form_code, $form_desc, $table, $table.''_id'', "SELECT * FROM $table");\n\nnuRunQuery($sql, $array);\n\nfor($i = 0 ; $i < count($SF->rows) ; $i++){\n    \n    $r          = $SF->rows[$i][3];\n    $s[]        = "''$r''";\n\n}\n\n$in             = implode('', '', $s);\n$sql            = "\n\n                CREATE TABLE $TT\n                SELECT * FROM zzzzsys_object\n                WHERE zzzzsys_object_id IN ($in)\n\n";\n\nnuRunQuery($sql);\n\n$sql            = "\n\n                UPDATE $TT\n                SET \n                    sob_all_id                  = ?,\n                    sob_all_label               = ?,\n                    sob_all_order               = ?,\n                    sob_all_top                 = ?,\n                    sob_all_left                = ?,\n                    sob_all_table               = ?,\n                    sob_all_zzzzsys_form_id     = ?,\n                    sob_all_zzzzsys_tab_id      = ?,\n                    zzzzsys_object_id           = ?\n                WHERE \n                    zzzzsys_object_id           = ?\n\n";\n\n$pix            = 20;\n\nfor($i = 0 ; $i < count($SF->rows) ; $i++){\n    \n    $newid      = nuID();\n    $label      = $SF->rows[$i][1];\n    $field      = $SF->rows[$i][2];\n    $oldid      = $SF->rows[$i][3];\n\n    $array      = Array($field, $label, (10*(1+$i)), ($pix*(1+$i)+50), ($pix*(1+$i)), $table, $form_id, $tab_id, $newid, $oldid);\n\n    nuRunQuery($sql, $array);\n\n}\n\n$t              = nuRunQuery("SELECT * FROM $TT");\n$a              = Array();\n$n              = ''number date'';\n\nwhile($r = db_fetch_object($t)){\n    \n\n    \n    $y          = $r->sob_all_type;\n    $i          = $r->sob_input_type;\n    $id         = $r->sob_all_id;\n    $l          = count($a);\n    \n    $date       = ($i == ''date'' || $i == ''nuDate'');\n    $norm       = ($y == ''input'' && $i != ''date'' && $i != ''nuDate'' && $i != ''nuNumber'' && $i != ''number'');\n    \n    if($y == ''lookup''){                         $a[] = Array(''name''=>$id, ''type''=>''id'');}\n    if($y == ''select''){                         $a[] = Array(''name''=>$id, ''type''=>''varchar'');}\n    if($y == ''calc''){                           $a[] = Array(''name''=>$id, ''type''=>''varchar'');}\n    if($y == ''text''){                           $a[] = Array(''name''=>$id, ''type''=>''text'');}\n    if($y == ''input'' && $norm){                 $a[] = Array(''name''=>$id, ''type''=>''varchar'');}\n    if($y == ''input'' && $date){                 $a[] = Array(''name''=>$id, ''type''=>''date'');}\n    if($y == ''input'' && $i == ''number''){        $a[] = Array(''name''=>$id, ''type''=>''int'');}\n    if($y == ''input'' && $i == ''nuNumber''){      $a[] = Array(''name''=>$id, ''type''=>''decimal'');}\n    \n}\n\n\n$s              = nuBuildTable($table, $a);\n    \nnuRunQuery($s);\n\n$t              = nuRunQuery("SELECT * FROM $TT");\n$ord            = 1;\n\nwhile($r = db_fetch_object($t)){\n    \n$ord++;\n    \n    $y          = $r->sob_all_type;\n    $i          = $r->sob_input_type;\n    $id         = $r->sob_all_id;\n    $lab        = $r->sob_all_label;\n\n    $sql            = "\n    \n                    INSERT \n                    INTO zzzzsys_browse\n                    (zzzzsys_browse_id,\n                    sbr_zzzzsys_form_id,\n                    sbr_title,\n                    sbr_display,\n                    sbr_align,\n                    sbr_format,\n                    sbr_order,\n                    sbr_width)\n                    VALUES\n                    (?, ?, ?, ?, ?, ?, ?, ?)\n    \n    ";\n    \n    $array          = Array(nuID(), $form_id, $lab, $id, ''left'', '''', $ord * 10, 200);\n    \n    nuRunQuery($sql, $array);\n    \n}\n\n\n//----------add run button--------------------\n\n$sql            = "\n\n                INSERT \n                INTO $TT\n                (zzzzsys_object_id,\n                sob_all_zzzzsys_form_id,\n                sob_all_zzzzsys_tab_id,\n                sob_all_id,\n                sob_all_label,\n                sob_all_table,\n                sob_all_order,\n                sob_all_top,\n                sob_all_left,\n                sob_all_width,\n                sob_all_height,\n                sob_run_zzzzsys_form_id,\n                sob_run_method,\n                sob_all_cloneable,\n                sob_all_validate,\n                sob_all_access,\n                sob_all_type)\n                VALUES\n                (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\n\n";\n\n$array          = Array(nuID(), ''nuhome'', ''58be4c05188661c'', $form_code, $table, $table, 11, 100, 200, 100, 30, $form_id, ''b'', 0, 0, 0, ''run'');\n//-- 58be4c05188661c   is the Tesing Tab on Home\nnuRunQuery($sql, $array);\n\n\nnuRunQuery("INSERT INTO zzzzsys_object SELECT * FROM $TT");\nnuRunQuery("DROP TABLE $TT");\n\n\nprint "<br>Your Fast Form has been created!<br>to open the new Form, got to the Test Tab on the developers Home Form..<br>You''ll find a Button titled ''$form_code''";\n', '', '', '', '');

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
('58decfbfbe75520', '58decfbfbe74e9e', 'Main', 10),
('5811788510768ef', 'nuphp', 'Code', 20),
('581288bcd699493', 'nuhome', 'Builders', 20),
('583361606251aef', 'nufflaunch', 'Form', 10),
('5840d1f62187912', 'nuffobjects', 'Label', 10),
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
('58c86689b9b0291', '58c86689b9af7fd', 'Function', 10),
('58d3719f5582316', '58d3719f55819e7', 'User', 10),
('58d3719f5582b0a', '58d3719f55819e7', 'Procedures', 20),
('58d3719f5582f10', '58d3719f55819e7', 'Reports', 30),
('58d89e9b0a7623e', '58d89e9b0a75e41', 'Main', 10),
('58d892353ffec23', '58d892353ffe76e', 'Main', 10),
('58d891b6ec12a37', '58d891b6ec12589', 'Main', 10),
('58d890f2ef27406', '58d890f2ef270be', 'Main', 10),
('58d8ffd5231ae3b', '58d8ffd5231a908', 'Main', 10),
('58d90136278d448', '58d90136278d020', 'Main', 10),
('58d901efa92034c', '58d901efa91fe73', 'Main', 10),
('58d902c830f7c30', '58d902c830f7655', 'Main', 10),
('58d903e4d6af058', '58d903e4d6aebe7', 'Main', 10),
('58d906468cbaf0c', '58d906468cbaa81', 'Main', 10),
('58d9065cccc6bae', '58d9065cccc6619', 'Main', 10),
('58d906943cfbe67', '58d906943cfbaeb', 'Main', 10),
('58d926e319a91f0', '58d926e319a8c49', 'Main', 10),
('58d9272b3aca5b5', '58d9272b3aca111', 'Main', 10),
('58d928669aa884a', '58d928669aa83be', 'Main', 10),
('58d928d60d02ec6', '58d928d60d027a5', 'Main', 10),
('58d929ad0a45f75', '58d929ad0a45adb', 'Main', 10),
('58d92a2dc0f0da2', '58d92a2dc0f0983', 'Main', 10),
('58d92b065264852', '58d92b06526432a', 'Main', 10),
('58da93fc677de16', '58da93fc677d597', 'Main', 10),
('58da97232216ec1', '58da972322169f6', 'Main', 10),
('58da97fc07da7b1', '58da97fc07da24a', 'Main', 10),
('58da98569255d0c', '58da98569255806', 'Main', 10),
('58da99020372af1', '58da99020372520', 'Main', 10),
('58da9971ecf83a8', '58da9971ecf7d93', 'Main', 10),
('58da99cb76091ec', '58da99cb7608ccd', 'Main', 10),
('58da9aa8e70f027', '58da9aa8e70ecba', 'Main', 10),
('58da9bc4280a7b8', '58da9bc42809f74', 'Main', 10),
('58daa92b7c4a4e3', '58daa92b7c49f23', 'Main', 10),
('58daa9dd2e836ea', '58daa9dd2e83282', 'Main', 10),
('58daaa25a4f27ae', '58daaa25a4f222b', 'Main', 10),
('58daaa779a31482', '58daaa779a30f12', 'Main', 10),
('58daaeafea86975', '58daaeafea86435', 'Main', 10),
('58daaf4b227f921', '58daaf4b227f44b', 'Main', 10),
('58daafaa0755356', '58daafaa0754e2b', 'Main', 10),
('58dad9bae564fe4', '58dad9bae564a78', 'Main', 10),
('58dadb4f7ccd54b', '58dadb4f7ccd137', 'Main', 10),
('58dadd8e3ab8f72', '58dadd8e3ab8a7c', 'Main', 10),
('58daddf9761a1d7', '58daddf97619c5f', 'Main', 10),
('58db0dfb5311307', '58db0dfb5310e6d', 'Main', 10),
('58db0fa7a10a64c', '58db0fa7a10a17b', 'Main', 10),
('58db0ff2211cad7', '58db0ff2211c4ef', 'Main', 10),
('58db1fa8e385c1d', '58db1fa8e3857a3', 'Main', 10),
('58db2120bacb32b', '58db2120bacae3c', 'Main', 10),
('58db24b6b3999b0', '58db24b6b39947c', 'Main', 10),
('58db25944a87f89', '58db25944a87aaa', 'Main', 10),
('58db27dda22a62c', '58db27dda22a144', 'Main', 10),
('58db297661e1b47', '58db297661e1736', 'Main', 10),
('58db29b83f01d03', '58db29b83f0188d', 'Main', 10),
('58db2aec99a7d0d', '58db2aec99a789b', 'Main', 10),
('58db2e852c0316c', '58db2e852c02cdd', 'Main', 10),
('58db2fb9a4d128a', '58db2fb9a4d0c29', 'Main', 10),
('58db30dcc214229', '58db30dcc213eca', 'Main', 10),
('58db316497da39f', '58db316497d9d9a', 'Main', 10),
('58db32783cdcb77', '58db32783cdc57f', 'Main', 10),
('58db32f88cebb1e', '58db32f88ceb668', 'Main', 10),
('58db3426b8c9409', '58db3426b8c8f4f', 'Main', 10),
('58db81df6a8adf0', '58db81df6a8a85d', 'Main', 10),
('58db8217dd55a70', '58db8217dd552ee', 'Main', 10),
('58db82a13a9d865', '58db82a13a9d4ac', 'Main', 10),
('58dc43a47b9cc71', '58dc43a47b9c844', 'Main', 10),
('58dc43f9b32be8a', '58dc43f9b32b663', 'Main', 10),
('58dc87ccaa8685e', '58dc87ccaa86369', 'Main', 10),
('58dc893189fa354', '58dc893189f9c41', 'Main', 10),
('58dc894ab9d55d9', '58dc894ab9d4c3a', 'Main', 10),
('58dc897a912ff73', '58dc897a912f7dc', 'Main', 10),
('58dc89cb96da864', '58dc89cb96d9c98', 'Main', 10),
('58dc8a3ead67a41', '58dc8a3ead67587', 'Main', 10),
('58dc8b6d2b09239', '58dc8b6d2b0888e', 'Main', 10),
('58dc8b7d60ed228', '58dc8b7d60ecd00', 'Main', 10),
('58dc8b9a9d0da49', '58dc8b9a9d0d5b9', 'Main', 10),
('58dc91069ccf0bd', '58dc91069ccec21', 'Main', 10),
('58dc91ac41e48b4', '58dc91ac41e429b', 'Main', 10),
('58dc922f3baddec', '58dc922f3bad84f', 'Main', 10),
('58dc92c39c0dc5b', '58dc92c39c0d38e', 'Main', 10),
('58dc92d9cf46692', '58dc92d9cf46293', 'Main', 10),
('58dc93176d89a58', '58dc93176d893d1', 'Main', 10),
('58dc932d1b2b010', '58dc932d1b2a896', 'Main', 10),
('58dc93ad3bfb634', '58dc93ad3bfaecf', 'Main', 10),
('58dc9411123a899', '58dc9411123a185', 'Main', 10),
('58dca8141f52b06', '58dca8141f527f3', 'Main', 10),
('58dca8424142550', '58dca8424141e9f', 'Main', 10),
('58dca88926f7b00', '58dca88926f7226', 'Main', 10),
('58dca8a9ca071bf', '58dca8a9ca0693f', 'Main', 10),
('58dca8c219bd845', '58dca8c219bd140', 'Main', 10),
('58dcab4851cb087', '58dcab4851cac65', 'Main', 10),
('58dcaf96f0a4fa4', '58dcaf96f0a4b52', 'Main', 10),
('58dcb0829396282', '58dcb0829395df8', 'Main', 10),
('58dcb1601d18acf', '58dcb1601d185fb', 'Main', 10),
('58dcb1ee583b323', '58dcb1ee583aa6b', 'Main', 10),
('58dcb2699544942', '58dcb2699543f63', 'Main', 10),
('58dcb28d22bf920', '58dcb28d22bf539', 'Main', 10),
('58dcb2c083d2798', '58dcb2c083d23e5', 'Main', 10),
('58dcb33f4701f35', '58dcb33f4701aa6', 'Main', 10),
('58dcb3b0e4a9bc5', '58dcb3b0e4a96be', 'Main', 10),
('58dcb3c5dd4fb6c', '58dcb3c5dd4f6d3', 'Main', 10),
('58dcb43280034e2', '58dcb4328002b96', 'Main', 10),
('58dcb4637f29a08', '58dcb4637f2915e', 'Main', 10),
('58dcb47c7a241df', '58dcb47c7a22fc2', 'Main', 10),
('58dcb4974526d5a', '58dcb497452660d', 'Main', 10),
('58dcb4c021b0957', '58dcb4c021b05a7', 'Main', 10),
('58dcb4d7b91da9c', '58dcb4d7b91cf19', 'Main', 10),
('58dcb4f3066d67e', '58dcb4f3066d13b', 'Main', 10),
('58dcb5cbd022263', '58dcb5cbd021cdf', 'Main', 10),
('58dcf16a6774f31', '58dcf16a67747ec', 'Main', 10),
('58dcf4170d5cc01', '58dcf4170d5c8ab', 'Main', 10),
('58dcf442e2c60b5', '58dcf442e2c5c0f', 'Main', 10),
('58dcf4b758e8f58', '58dcf4b758e8a08', 'Main', 10),
('58dd6fe86171bb8', '58dd6fe8617180f', 'Main', 10),
('58dd705a69993ef', '58dd705a6998d0c', 'Main', 10),
('58dd7095da04d8b', '58dd7095da04acd', 'Main', 10),
('58dd70bf1cecf11', '58dd70bf1cec9fc', 'Main', 10),
('58dd71047918617', '58dd710479182d6', 'Main', 10),
('58dd71f2a8b520f', '58dd71f2a8b4ed7', 'Main', 10),
('58dde926471c06f', '58dde926471b7c8', 'Main', 10),
('58ddea1f2cfe155', '58ddea1f2cfc41f', 'Main', 10),
('58ddebd9eb4d7ba', '58ddebd9eb4cf63', 'Main', 10),
('58ddecf58bfb309', '58ddecf58bfb0d4', 'Main', 10),
('58ddf09dc6d9be8', '58ddf09dc6d97c2', 'Main', 10),
('58ddf1246c2a34d', '58ddf1246c29f69', 'Main', 10),
('58ddf161a3042fd', '58ddf161a303a21', 'Main', 10),
('58ddf1e6cc4d494', '58ddf1e6cc4d07e', 'Main', 10),
('58ddf25fc709780', '58ddf25fc70902a', 'Main', 10),
('58ddf2cc7a27c38', '58ddf2cc7a27549', 'Main', 10),
('58ddf2d4d65548c', '58ddf2d4d6550ee', 'Main', 10),
('58ddf3242d1beec', '58ddf3242d1b50d', 'Main', 10),
('58ddf40b4f67e81', '58ddf40b4f6789c', 'Main', 10),
('58ddf419cfb1771', '58ddf419cfb12da', 'Main', 10),
('58ddf4762bd29ba', '58ddf4762bd25ec', 'Main', 10),
('58ddf4ca8ff7c61', '58ddf4ca8ff78f3', 'Main', 10),
('58ddf72012b3eaf', '58ddf72012b3653', 'Main', 10),
('58ddf7a8ac51567', '58ddf7a8ac50c6e', 'Main', 10),
('58ddf98ab29190f', '58ddf98ab2914db', 'Main', 10),
('58de0150caaa084', '58de0150caa9cf9', 'Main', 10),
('58de03a4a84537f', '58de03a4a844b6f', 'Main', 10),
('58de14700664f8f', '58de147006647c4', 'Main', 10),
('58de15591f5b8bb', '58de15591f5b369', 'Main', 10),
('58de997b32b4018', '58de997b32b3c48', 'Main', 10),
('58de99d0b33568f', '58de99d0b335226', 'Main', 10),
('58de99ed410d225', '58de99ed410cc8e', 'Main', 10),
('58de9a6ac24a2b6', '58de9a6ac249a86', 'Main', 10),
('58de9afb01f3513', '58de9afb01f2c1d', 'Main', 10),
('58de9b089793f75', '58de9b089793b45', 'Main', 10),
('58dea39c921c122', '58dea39c921ba08', 'Main', 10),
('58dea6717bcd0b2', '58dea6717bcc80f', 'Main', 10),
('58dea6e5c33623a', '58dea6e5c335b09', 'Main', 10),
('58dea70bb25601e', '58dea70bb255995', 'Main', 10),
('58ded6e5d53d2002', '58ded6e5d53ca001', 'Main', 10),
('58ded7098e169002', '58ded7098e160001', 'Main', 10),
('58ded7708b4d2002', '58ded7708b4ce001', 'Main', 10),
('58ded8d4ba175002', '58ded8d4ba16e001', 'Main', 10),
('58ded8f91f8a9002', '58ded8f91f8a4001', 'Main', 10),
('58ded955a4a65070', '58ded955a4a60069', 'Main', 10),
('58ded96de994f429', '58ded96de9949428', 'Main', 10),
('58deda3bc7253680', '58deda3bc724f679', 'Main', 10),
('58dedb6bf2e75340', '58dedb6bf2e6f339', 'Main', 10),
('58dedbbf19d8d597', '58dedbbf19d85596', 'Main', 10),
('58dedbd45831a538', '58dedbd458315537', 'Main', 10),
('58dedc3d79361558', '58dedc3d79358557', 'Main', 10),
('58dedc7e29b38086', '58dedc7e29b33085', 'Main', 10),
('58dedcd07c3c6363', '58dedcd07c3be362', 'Main', 10),
('58dedf3a68a24128', '58dedf3a68a24127', 'Main', 10),
('58dedfb0bbcd20217', '58dedfb0bbcd20216', 'Main', 10),
('58df2ac71c4b01263', '58df2ac71c4b01262', 'Main', 10),
('58df2b3eecc669590', '58df2b3eecc669589', 'Main', 10),
('58df3a7f594b31384', '58df3a7f594b31383', 'Main', 10),
('58df3bedc51942819', '58df3bedc51942818', 'Main', 10),
('58df3bf558c4d5958', '58df3bf558c4d5957', 'Main', 10),
('58df3c35366f72599', '58df3c35366f72598', 'Main', 10),
('58df96831748f2536', '58df96831748f2535', 'Main', 10),
('58dfdb85cd7896820', '58dfdb85cd7896819', 'Main', 10),
('58dfddd2206f87190', '58dfddd2206f87189', 'Main', 10),
('58dfde1cb09194056', '58dfde1cb09194055', 'Main', 10),
('58dfde8f197631920', '58dfde8f197631919', 'Main', 10),
('58dfdee19ecfd6991', '58dfdee19ecfd6990', 'Main', 10),
('58dfdefc5b0c03667', '58dfdefc5b0c03666', 'Main', 10),
('58dfdfe444a346473', '58dfdfe444a346472', 'Main', 10),
('58dfe060c4da06002', '58dfe060c4da06001', 'Main', 10),
('58dfe0a3eb6e48117', '58dfe0a3eb6e48116', 'Main', 10),
('58e03359918015577', '58e03359918015576', 'Main', 10),
('58e034e13a3703940', '58e034e13a3703939', 'Main', 10),
('58e03ba4eec606087', '58e03ba4eec606086', 'Main', 10),
('58e03bd0d91689576', '58e03bd0d91689575', 'Main', 10),
('p14911009773868', 'p14911009773867', 'Main', 10),
('p14911010468602', 'p14911010468601', 'Main', 10),
('p14911018442889', 'p14911018442888', 'Main', 10),
('p14911368785388', 'p14911368785387', 'Main', 10),
('p14911368883452', 'p14911368883451', 'Main', 10),
('p14911371009416', 'p14911371009415', 'Main', 10),
('p14911384769550', 'p14911384769549', 'Main', 10),
('p14911386735631', 'p14911386735630', 'Main', 10),
('p14911387996421', 'p14911387996420', 'Main', 10),
('p14911391706581', 'p14911391706580', 'Main', 10),
('p14911397391436', 'p14911397391435', 'Main', 10),
('p14911398885825', 'p14911398885824', 'Main', 10),
('p14911407891330', 'p14911407891329', 'Main', 10),
('s14911413795577', 'c1491141359618919', 'Main', 10),
('s14911421895219', 'c14911421694186984', 'Main', 10),
('s14911427843854', 'c14911427688048299', 'Main', 10),
('s14911434706588', 'c14911434241195505', 'Main', 10),
('s14912555050082', 'c14912554944705938', 'Main', 10),
('s14912555438080', 'c14912555227328240', 'Main', 10),
('s14913439193868', 'c14913438931402013', 'Main', 10),
('s14913609803091', 'c14913609441802775', 'Main', 10),
('s14913639921524', 'c14913639731904522', 'Main', 10),
('s14913645072925', 'c14913644976709245', 'Main', 10),
('s14913648853402', 'c14913648738887956', 'Main', 10),
('s14913666073893', 'c14913665882853680', 'Main', 10),
('s14913670733849', 'c14913670617655309', 'Main', 10),
('s14913673220073', 'c14913673117287950', 'Main', 10),
('s14913715626399', 'c14913710309970799', 'Main', 10),
('s14914269237459', 'nusample', 'Sample Objects', 10);

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
  `sus_zzzzsys_access_level_id` varchar(25) NOT NULL,
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

INSERT INTO `zzzzsys_user` (`zzzzsys_user_id`, `sus_zzzzsys_access_level_id`, `sus_zzzzsys_user_group_id`, `sus_language`, `sus_name`, `sus_email`, `sus_login_name`, `sus_login_password`) VALUES
('5747ce1dd50cdc5', '57678e7dc00c099', '57466de0851d354', '', 'steven', 'steven@nubuilder.com', 'nu', '0288bde0c2d593f2b5766f61b826a650');

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
-- Indexes for table `aaa`
--
ALTER TABLE `aaa`
  ADD PRIMARY KEY (`aaa_id`);

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
  ADD PRIMARY KEY (`zzzzsys_debug_id`);

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
  ADD KEY `sus_zzzzsys_user_group_id` (`sus_zzzzsys_user_group_id`),
  ADD KEY `sus_zzzzsys_access_level_id` (`sus_zzzzsys_access_level_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
