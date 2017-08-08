-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2017 at 06:46 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
('57ad5184a1f8873', '57678e7dc00c099', 'nupassword', '1', '1', '0', '0', '', '1'),
('58c2ed45ade8ad1', '57678e7dc00c099', '56773cb405f4913', '1', '1', '1', '1', '', '1'),
('58cd6541dfd5b3b', '57678e7dc00c099', 'nufflaunch', '1', '1', '0', '0', '', '1'),
('58c42925ba42dd4', '57678e7dc00c099', 'nuaccess', '0', '1', '1', '0', '', '1'),
('58cc1fb1a17ebaf', '57678e7dc00c099', 'nuhome', '1', '1', '1', '1', '', '1'),
('s15001912670307', '57678e7dc00c099', '58a08a1abc4782c', '1', '1', '1', '1', '', '0'),
('s15005814150912', '57678e7dc00c099', 'nurunreport', '1', '1', '1', '1', '', '1'),
('s15005814150913', '57678e7dc00c099', 'nurunphp', '1', '1', '1', '1', '', '1');

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
('s15005815521848', '57678e7dc00c099', 's14919851858544');

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
('5678ab2c4ac37e0', '5678ab2c48c5c41', 'Name', 'emp_name', 'l', '', 10, 200),
('568b508eee2f2ef', '568b508eec00d80', 'Code', 'bus_code', 'l', '', 10, 100),
('568b508eeebdab9', '568b508eec00d80', 'Description', 'bus_description', 'l', '', 20, 300),
('56b00a4f9211103', '568b508eec00d80', 'Check', 'bus_check', 'l', '', 30, 50),
('56b3e7ba2bf880d', '5678ab2c48c5c41', 'Mobile', 'emp_mobile', 'l', '', 20, 200),
('56c5131637d6f7f', '56c513162acd102', 'Name', 'chi_name', 'l', '', 10, 200),
('5707303158d2308', 'nuform', 'Code', 'sfo_code', 'l', '', 20, 100),
('570730315e6abb7', 'nuform', 'Description', 'sfo_description', 'l', '', 30, 400),
('570b3863e50cb98', 'nutab', 'Form', 'sfo_description', 'l', '', 20, 150),
('570b3863e80f09c', 'nutab', 'Tab', 'syt_title', 'l', '', 10, 200),
('570c8e1adb04ffc', 'nuobject', 'Form', 'sfo_description', 'l', '', 60, 200),
('570c8e1adeae32a', 'nuobject', 'Tab', 'syt_title', 'l', '', 70, 150),
('570c8e1ae1b33cb', 'nuobject', 'Object', 'sob_all_id', 'l', '', 30, 200),
('570db5ea2aa8afe', 'nuobject', 'Type', 'sob_all_type', 'l', '', 10, 70),
('5710406a290c874', 'nuobject', 'Label', 'sob_all_label', NULL, '', 50, 200),
('57143e81f2bdabf', 'nutab', 'Type', 'sfo_type', NULL, '', 40, 150),
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
('575a31897e90566', 'nudebug', 'Message', 'deb_message', 'l', '', 10, 700),
('57579dd5098d938', 'nubuildreport', 'Launch From', 'CONCAT(sfo_code, \' - \', sfo_description)', 'l', '', 40, 300),
('5757a4b7181f4c7', 'nurun', 'Type', 'type', 'l', '', 10, 100),
('5757a4b7181ff38', 'nurun', 'Code', 'code', 'l', '', 20, 100),
('5757a4b718209cc', 'nurun', 'Description', 'description', 'l', '', 30, 100),
('5757af5bb2b4ca2', 'nurunlist', 'Type', 'run', 'l', '', 10, 100),
('5758aa716672f9a', 'nurunlist', 'Code', 'code', 'l', '', 20, 100),
('5758aa716673ccd', 'nurunlist', 'Description', 'description', 'l', '', 30, 200),
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
('577b48b3f354185', '577b48b3f351026', 'Launch From', 'CONCAT(sfo_code, \' - \', sfo_description)', 'l', '', 40, 300),
('577b4b6ca3ea898', 'nurunphp', 'Code', 'sph_code', 'l', '', 20, 150),
('577b4c18a8bf431', 'nurunphp', 'Description', 'sph_description', NULL, '', 30, 300),
('577b4c18a8c02ee', 'nurunphp', 'Group', 'sph_group', NULL, '', 40, 150),
('578726caa351b3e', 'nurunphp', 'PHP', 'sph_zzzzsys_form_id', NULL, '', 10, 1),
('579006cac02b9f3', 'nuphp', 'Launch By', 'CONCAT(sfo_code, \' - \', sfo_description)', 'l', '', 40, 300),
('57a29081a93f8d0', 'nutimezone', 'Time Zone', 'stz_timezone', NULL, '', 10, 350),
('57a7c1cb78c07d1', 'nutranslate', 'Language', 'trl_language', 'l', '', 10, 100),
('57a7c1cb78c123b', 'nutranslate', 'English', 'trl_english', 'l', '', 20, 300),
('57a7c1cb78c1c89', 'nutranslate', 'Translation', 'trl_translation', 'l', '', 30, 300),
('57a93cb51e262f7', '57a93cb51e24fd8', 'Name', 'sus_name', 'l', '', 10, 200),
('57a93cb51e26c3f', '57a93cb51e24fd8', 'Email', 'sus_email', 'l', '', 20, 300),
('57a93cb51e2773a', '57a93cb51e24fd8', 'User Group', 'sug_description', 'l', '', 30, 200),
('585efbcfe4e0558', 'nucalcobjects', 'object.subform', 'CONCAT(thechild,IF(theparent = \'\',\'\',\'.\'),theparent)', 'c', '', 10, 200),
('586d9616d1a4bf2', 'nucalcobjects', ' ', 'theform', NULL, '', 30, 0),
('5872aa8733f078a', 'nucalcobjects', ' ', 'thevalue', NULL, '', 40, 2),
('5872aa8733f0d8d', 'nucalcobjects', 'Object', 'thechild', NULL, '', 20, 0),
('58af6b019f64b46', 'nuformat', 'Type', 'srm_type', NULL, '', 20, 150),
('58af6b019f64f3a', 'nuformat', 'Format', 'srm_format', NULL, '', 10, 250),
('58c5ddfebf10554', 'nuobject', 'Input Type', 'sob_input_type', NULL, NULL, 20, 100),
('58d6cf633a30fb3', '58d3719f55819e7', 'dddd', 'dddd', 'l', 'D|yyyy-mm-dd', 30, 222),
('58d3719f5583775', '58d3719f55819e7', 'Code', 'sal_code', 'l', '', 10, 100),
('58d3719f5583b73', '58d3719f55819e7', 'Description', 'sal_description', 'l', '', 20, 300),
('58d6c1c8a30ae06', 'nubrowse', 'join', 'sbr_zzzzsys_form_id', NULL, NULL, 10, 0),
('s14916342251167', 'nuform', 'Table', 'sfo_table', NULL, NULL, 40, 200),
('s14921253336087', 'nufile', 'Description', 'sfi_description', 'l', '', 20, 200),
('s14921254628568', 'nufile', 'JSON', 'sfi_json', 'l', '', 30, 0),
('s14921333369704', 'nufile', 'Image', '\"<img class=\'nuBrowseImage\' width=\'45px\' height=\'45px\'>\"', 'l', '', 40, 50),
('s14981568046404', 's14981568046395', 'text00', 'bus_code', 'l', '', 20, 200),
('s14981556542231', 's14981556542223', 'text01', 'chi_dob', 'l', '', 30, 200),
('s14981556542230', 's14981556542223', 'text00', 'chi_name', 'l', '', 20, 200),
('s14921253336086', 'nufile', 'Code', 'sfi_code', 'l', '', 10, 100),
('s14921360039298', 'nufile', 'Group', 'sfi_group', 'l', '', 50, 150),
('s14993014809861', 's14993014809858', 'Description', 'description', 'l', '', 20, 300),
('s14930617882379', 'nuselect', 'Description', 'sse_description', 'l', '', 10, 350),
('s14940198755839', 'nudebug', 'When', 'deb_added', 'l', '', 20, 130),
('s14937641259186', 's14937641259181', 'Type', 'sfo_type', 'l', '', 10, 80),
('s14937641259187', 's14937641259181', 'Code', 'sfo_code', 'l', '', 20, 100),
('s14937641259188', 's14937641259181', 'Description', 'sfo_description', 'l', '', 30, 400),
('s14937641259189', 's14937641259181', 'Table', 'sfo_table', 'l', '', 40, 200),
('s14981568046405', 's14981568046395', 'text01', 'bus_description', 'l', '', 30, 200),
('s14981564175461', 's14981564175453', 'text00', 'col_code', 'l', '', 20, 200),
('s14967315763154', 's14967315763149', 'Company', 'com_name', 'l', '', 20, 400),
('s14968332683661', 's14968332683656', 'Code', 'sal_code', 'l', '', 10, 100),
('s14968332683662', 's14968332683656', 'Description', 'sal_description', 'l', '', 20, 300),
('s14968332683663', 's14968332683656', 'dddd', 'dddd', 'l', 'D|yyyy-mm-dd', 30, 222),
('s14993014809860', 's14993014809858', 'Code', 'code', 'l', '', 10, 100),
('s14985869611752', 's14967315763149', 'Code', 'com_code', 'l', '', 10, 100),
('s15014147222005', 's15014147222001', 'Name', 'emp_name', 'l', '', 10, 250),
('s15017688442348', 's15017688442340', 'Date', 'pay_date', 'l', '', 10, 250),
('s15017688442349', 's15017688442340', 'Amount', 'pay_amount', 'l', '', 20, 250);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_debug`
--

CREATE TABLE `zzzzsys_debug` (
  `zzzzsys_debug_id` varchar(25) NOT NULL,
  `deb_message` longtext,
  `deb_order` varchar(25) NOT NULL,
  `deb_added` int(11) NOT NULL
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
('573d15d41e2aa8c', '573d15d41e279ba', 'onclick', 'window.open(\'nureportdesigner.php?tt=\' + $(\"#sre_zzzzsys_php_id\").val() + \'&launch=\' + $(\"#sre_zzzzsys_form_id\").val());'),
('575619c3bb27cec', '570d98b34bf37c9', 'onchange', 'nuObjectColor();'),
('58c465508d50619', '58c465508d4fc64', 'onclick', 'nuPopPHP(event, \'BB\');'),
('s14953594921439', 's14953594921438', 'onchange', 'nuAddSQLTable(event);'),
('58c8f16d6d462b2', '5716e2428f5e8fb', 'afterinsertrow', '$(\"[id$=\'sev_javascript\']\").addClass(\'js\')'),
('5811633909ef4fb', '5811633909eeadd', 'onclick', 'nuPopPHP(event, \'BE\');'),
('58116941a1a294e', '58116941a1a1f06', 'onclick', 'nuPopPHP(event, \'BS\');'),
('58116968afd6467', '58116968afd5b6a', 'onclick', 'nuPopPHP(event, \'AS\');'),
('581169ba21137b1', '581169ba2112f38', 'onclick', 'nuPopPHP(event, \'BD\');'),
('581169d91b9db26', '581169d91b9d203', 'onclick', 'nuPopPHP(event, \'AD\');'),
('58117aed5514341', '58117aed5513a01', 'onclick', 'nuPopPHP(event, \'BB\');'),
('5811808723dc0a2', '5811808723db54b', 'onclick', 'nuPopPHP(event, \'AB\');'),
('581a4d665798ede', '581a4d665798263', 'onclick', 'nuPreview()'),
('582c013be5d3a06', '570b00aa9ff6b8d', 'onkeydo', 'nuFORM.scrollList(event, nuFORM.tableFields($(\'#sfo_table\').val()))'),
('s14952409689791', 's14952406757366', 'onchange', '$(\'#sqlframe\').contents().find(\'body\').css(\'zoom\', this.value / 100)'),
('s14981528616331', '58d6fbc151d152f', 'onchange', 'nuSetFFTable();'),
('58b0d4a60b9c172', '58aff2b35cd9963', 'onchange', 'nuSetFormatType(1)'),
('58b7528ca48fb83', '58b7528ca48f0ad', 'onclick', 'nuPreview(1)'),
('s14914638502435', 's14914638502434', 'onclick', 'nuPopup(\'nusample\',\'-1\');'),
('58b208c7ba09945', '570da149b76e0e6', 'onchange', 'nuShowInputJS(this.value)'),
('58ca47b5d025130', '58c9c520001fff6', 'onchange', 'nuAddCalcObject()'),
('58d082a44cc838c', '58d082a44cc79a5', 'onclick', 'nuPopPHP(event, \'BB\');'),
('58d08322022b7e2', '58d08322022ad15', 'onclick', 'nuPopPHP(event, \'BB\');'),
('58d6f5a644bb933', '58d6f5a644bae0c', 'onclick', 'nuPopPHP(event, \'BB\');'),
('58d76b89aeb07d6', '58d76b89aeafcea', 'onkeydown', 'nuFORM.scrollList(event, window.nuObjectFields);'),
('s14913709691917', '583387f044052c5', 'onclick', 'nuGetPHP(\'nufflaunch\', \'nufastform\')'),
('s14937683129028', 's14931629819345', 'onclick', 'chris();nuSaveAction()'),
('s14960757864251', 's14960757864250', 'onchange', '$(\'#sqlframe\').contents().find(\'body\').css(\'zoom\', this.value / 100)'),
('s14963354592349', 's14960749531713', 'onchange', 'nuWhereClauses();$(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL()'),
('s14966990607158', 's14960753634405', 'onchange', '$(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL()'),
('s14966990831683', 's14960751497257', 'onchange', '$(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL()'),
('s14966990980174', 's14963697603115', 'onchange', '$(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL()'),
('s14966991191066', 's14960743863373', 'onchange', '$(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL()'),
('s14981504041759', '583f37d3224bcc8', 'onfocus', 'nuFocusFFObject(event);'),
('s14981504302085', '583f37bc5bba917', 'onfocus', 'nuFocusFFObject(event);'),
('s14981698424397', '583f4ed643fcc3b', 'afterinsertrow', 'nuSetFFTable();'),
('s14981718746295', 's14981718746294', 'onclick', 'nuPopSQL(event, \'BR\');'),
('s14981984429568', 's14981984429567', 'onclick', 'nuPopSQL(event, \'DI\');'),
('s14981987022729', 's14981987022728', 'onclick', 'nuPopSQL(event, \'SE\');'),
('s14984738810709', 's14984705068995', 'onfocus', 'nuFocusFFObject(event);'),
('s14985153818131', 's14914341685330', 'onclick', 'alert(\'Do Something!\')'),
('s14999843308353', 's14999843308352', 'onchange', 'nuFormColor();'),
('s15000603208259', 's15000603208258', 'onclick', 'nuPopPHP(event, \'BB\');'),
('s15007565187741', 's14960757864250', 'afterinsertrow', 'nuSetSFCB();');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_file`
--

CREATE TABLE `zzzzsys_file` (
  `zzzzsys_file_id` varchar(25) NOT NULL,
  `sfi_code` varchar(300) NOT NULL,
  `sfi_description` varchar(300) NOT NULL,
  `sfi_group` varchar(300) NOT NULL,
  `sfi_json` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_file`
--

INSERT INTO `zzzzsys_file` (`zzzzsys_file_id`, `sfi_code`, `sfi_description`, `sfi_group`, `sfi_json`) VALUES
('s14921289517921', 'Logo', 'nuBuilder logo', 'test', '{\"file\":\"ZGF0YTppbWFnZS9wbmc7YmFzZTY0LGlWQk9SdzBLR2dvQUFBQU5TVWhFVWdBQUFJc0FBQUEzQ0FZQUFBQThFYm54QUFBQUFYTlNSMElBcnM0YzZRQUFBQVJuUVUxQkFBQ3hqd3Y4WVFVQUFBQUpjRWhaY3dBQUZpVUFBQllsQVVsU0pQQUFBQmg4U1VSQlZIaGU3WnNKZkZUVjJjWnBxMSsxKytiWGZmdmEybXByTjdXdWJhMml0VnJxV2hTcVgyc3JpSUxZaW9xS0lNZ2lDTGdCc2laaERTQmtJd2tRQWtuSVNnSlpDQVJJQ0ZzSWtJUXNrNWtrTTlubStaN256TDNESkNRa1lGcUNYOTc4M3Qva25uUFBjdS81ejN2ZTk1d3ovZEFuZmRKTjZZT2xUN290ZmJEMFNiZWxENVkrNmJiMHdkSW4zWlkrV1BxazI5SUhTNTkwVzg0TWk3Y0Y4RlFERFNlb3gwN1hlbXFkcFM2cWsxcXJUOTdmNkdKNXI2OGEvcm1iNitCcXJFSnRZeVgxSk9xYUhHanhOc1BkVWdjbjA4eDFhNVB2Zm04cnI2dE51dTUzc3B5NzJXWFM2M25mcWZSS05EUTdXVHU3ME96RjBZWldIS3c3WFEvVnQ1cThDbzhYRFh5a25wQ0dGaStPcUQzV2JiZFR5dXZxUmkrcXFHclRUajlBTFdmYnZyZlJzYlF5VStYdE10SWpyTVBSNURWNXZVRTZoNldsZ1FOZkNCeGNBZXlkQ2V5WjFsWjNUNE0zZnlxOHVkUnNhdWJyOEtaUnQwNEJVbmovdmxqQWNaUnZvUm5OclkzWVY3VU55VWRYWXZQaEVHb3cwbytGNFVqdGJ1UlZiTWFXdzR1UndldkR0ZmtjZkJjOExmVklMdzB6NmJvL3FXUTU5bGFsbWZRZEoyS1JjR1NwU1ZmK3Jvb0VlUGcyZDlTMDRKVUNOeDdQcnNjVE9XMzF5ZHg2ak43ZGdIZUtQZGhZMW93VGJzSkxhRDdJR094eHRtRDByZ1lNeTIwd2JReGh1NVAydWhGeHJBbmgxQkY1RFJocXRmLzNIZldZZDdDUlh3NnJjQWRTejh3SmU5eW1IcnUrRjFpLytxdTgzaUFkdzlMaUJzcVRPZWgvQnBMdUFKSnZBMUl0VGFIcU9vbTYrVlo0Ti80TzNtaHEyQzN3aHY0VzNwRGZ3THVRT3AvL3IzOE9PTDZUVnNHSkRRZm1ZbWJXWUx5V2RqY21wdjBSazlQdndiU01CekVsNDE1ZUQ4Q2s5QUY0Syt0UmJEcTRFTlh1RTVpVE05VGNwL3VuYmZzellvcG5HWXNVblArY1ZVYjFETURhZlpOcFZWck5BRjBWNzhUSEkycnd5U2hIRy8wVTlkUFV6NjF6NEd1eHRiZ2pwUTdyT1FndVdxTnpsUzBWemZoQlhLMnBWMjFjRXVuQVRVa3VqT2VBanlPMFg0eDI0Qk5NVTk3SHdtc3dPS3VPWDVyTzI2dWhCYmsyd1lsTEkzMzlWMzNmMjFpTE4vZDdURjV2a0k1aGNSMENDbWc5RW00bUdEY0JhZFFNNmpiclU5ZEtUN2dSMkVTTnVRRUl2eDVZZVIwUThpdGc3clZHdmNGM3Nzdzh1QnNkV0xmL2JRUEl1UFRiTURibFZvd2plSyttOThlNE5GN3pmNm4rRDlyNUx4eDA1R0ZHMWlCLzJvVFVQeUNpYUFZY25nck15eDJPY1NsV09kWVRXakNXZzk2Qzkwc2I4VDk4dWYyaTZ0RXZuSisyUmpqUkw5TGwrNHp3cFYzS2diZzJ3WVhOSEhCWnBYT1J1UEptZkRuVzRhdFQ5YTlyd0U4M08vRWlMWmdzem44Uld0T20raERUaVBzeXpneExOWUc0Y3BOVmw4cEUxdUhMTVE1TUxYU2J2TjRnSGNOU25RTmtEUVcyL3RvSGhpREpJampiTGMya0tuMHJRZGxNM1hBRHZKSFh3N3Y2T25pWC9BcmVlZGNBYzY2QmR3N0JpUmxGV0dxd3J2Z2RZeEZzTUdRdHd2Wk54ZXpzSVFZR0RmeXJHZjN4WHM0VDJITXlCVE15QitHVjVGdE51cXhMWk5GTTFBcVd2QkY0TmVVT2s2NzhsWHZHMGJMNFlORTMwYnpzTUE1VXVNTU0yQldibk9ZYnJ4ZHZCc0hrMWVJaTVrM2E1MGFwdTlWNjZMT1RiRTU3QXpQcjBEL0ZoZHVvdHlTN3pKUTArNEFITHhLV1N3UUwrMkRhaTNiai9pNWdrZlg0U1R6N0o4QlVocDlmSll6VENFdnZ0aXhWbVFSa01LY2R3aUpRQkVnT05kZjYzRUhOWkhvcU5aR3d4QkdXZFlSbERXRlpUbGdXMHFvUUZyeEhDeFArQkdHcGJnT0xMSXFtbWYzVjJ3MEVyMmZjWjZYZlptRFpYYkcxQjJDcE5lWjhZR1k5RmgxcU5JTnBySTd5d2h5NGlGUERvOXZyc2IyNmhUNU1LM0k0K0xtVzZuK2x1ZWtyeURHMTA2V0NSSTZvZkphWlJSN2paNWlwaDdxQTdhemxkTmdWTEpyOTVIRG5PbHFRUnkyakQxWHVhY1dQRFN3VzBKM0FvcW16ME9YcmIxcGxNN1pWTlp0K3lhR1cweDBvNnFmNjYrOC8yMUs3dGF5ampNK1hYOHRuVmZ0ZE9OKzJkQTdMOXIvUWVoQVdXWlJzYWg3L3o2ZnVwQW9ZQVpSdVdSZE5SZEVFWmkyQkVTeUxDTXQ3Rml3UncwNkhoUlprYnU2VE9PNHFOTTZ1ckl5bUZUOHNKM3NHRnZrVFE3SWJUR1R4dndSRGcrYURwY2JBY25kYUhXTExtckNpcEpFK1JiMjVSeXFJNUtqcXhjYWVhUEtuUzNWZjhPRkdKSjVzeHJNN0cvQVBPcUtQMFlIOUszVUNIZHdsUnhvN2hPVUJ3aUw0U2xobjlQRW12TVo3VmQvZldHNWFvUWNoclBOYkc5aC8yL3ExZzBXUUNDemQ5MCsycXo0T1NLOHpFS3FlTWJ2ZFdIMjBDUVVFb05FeWxxRkgyejdYWDZrVDJlNUNRdjBHMjFRd29QVHBoSDRUcDFWQmN5WTVNeXpwRml3NUZpaTdyRTlaR01FaS8wV3d4RlBwdHhoWVZoQ1dvTzdCY3N4WmlQaERRZjlXV0I0bkxJY0lpMTVVUjdDc1libG4rUEkxT0I5bG1sVDVyOUZTN09hTG4xN2s5cWViUE5hdmFHWEJRUSsreWNGVlBTYWRZRnhOQjNWTVFRTmhjWjhHeTUrMzFlRTRRWkVsK25KTUxUN0NkRG0rS3F0UDFhTTB1MzgyTFBKWkZQS3ZJMkMzMHpHL09NTG5NQWYyeWRiUDBvRVhRUG1FU3ZJOG9lMFhlZXE1Vk81aTlrdFRzUDYzNjFIYlgxdnZ3QnhPb2ZWbldGcm9ISllzeTdMSVA3RXRpNnlLYlZrRWtTeEwwcmxibHZNTnl4LzVZZ1hMMHd4elQwMVJ2b0hTMUxLTHNMeEJXUHpwVWpxeUNtdm5FNWF2cjY4MUw5c3U4NHN0VHJ4TUI3Y2pXQjZpZnlQNEZMR3BiWDhlMVI3SWptQ1pRcjhxczdyWjlOWGZscVgyWVB1dWZmVXA0bFBZcmlsSWpuYWI1NklHUWhxWXJ2NDh3bmVrSllqT3BHTllLdVd6RUpZVXkzcklpZ2dZUWFKUFhjdVhTYUVxSXJKOWx2ZnBzeXdqTEFzQ2ZKWmVBTXRoenVlYUprN0I0dk5aWklLak9jMmNEa3Z0R1dEeHJZR2NMU3dQRXhiNURaY3hwUGJYeFhhK3hPc0hhWFUwRlJnbm5QWFk5U25NMTNRVnhLbm5La1phL2o2eVhsa1JXWjJINkpOZFpqdnZUTmR6WGNOSVQvN0lTK3hMdjZnNmYzc0M1VXJDcW1sTTVmeHRTZm5lN3FLbDFaSkFaOUk1TE9tRUpZbFF5SWtWTUhKb3M2eFBYU3RkVmtYUjBIckNFa0ZZVmhHV3hZU0YwWkIzZHUrQVpTZ0hWdjdGUFp6YlpSVk1IbCtTWHR3Nyt6M21tL1JVTGwvY2Z3U1dabndoRUJiMlZXczFiN0VmKyttMC9raWhjenRZWG1VLzFKZnY4ejcvczFHL3d5bFEvWnRWN0RFUm4xMU8vVkcvc3VpNHF5L3RZYm1YNzJFcjM4ZTdMT2R2UzhyLzcweDEwWGZ4cmFKM0pCM0RVa0ZZa2hrTnhST0lSS3JXVkFTSHdtVjk2anFKYW9mTi9raUlhdmtyNXg4V2h4bXdHeEtkeHJ4cVVKU25GeVpUZlFmRFhVVVVzanJEemlNc1ArWTNmVEV0eDBuNkpWZTFDNTF0V0xSMjgxMy9zemxNbXo4a1dOb09rSE91ZHUzblZwNHNqYUtrOXJBb1R4YTJpR0F1cFNOdXJKR1Zkd3FXczdVczVabndKZ3lpeFNBTThrY0VoYVliaGNuU0xWUTV0VFlvWVlSa3BXVlY1dnVtb1BNT2k2MTZJVXF6ekxSV1ZyVStra2h6cXlWL1JUem5FNVlyYVJVVTRTaEViNy9PRWdpTFdYQnNCNHRBWDBaWWZuNFdzR2pxM2N1d1g0Q2F0dFJIS2N2Ly9weGdLU01zbXdiQkcwVWd0RHBMS0xBeFFIVWRTMUNpTEZBMC9Td2xLTmI2aWtEcERiRElpc2o3MXhhQUdWUUM4ek8rMk9WOHdZSkU2eDNhREx3UVlibWNzQlRUY1Zlby9qUDVNMmNKaTk2QkZpMjFtaTNWLzMraUU2MVY3YzZrWTFpT2I0TTM1bUZPTFFRaWpFQm9kVlpneUlyb1U5ZmhWRTA5b1ZTdDJsb1JrQTNLZVllRkF5VklmczRYK2J0a2w0a3NCSUhnMFNBTVNIZVpkWXZ6UFEyZFBTejhFckJOVFV2eVBXYlFNYjRpd05mcERpeUt5cElzUDA0K2pGU2d5Sm5XTytsTU9vYWxsTENFUDhUSWhrQUlCbGtPUlRxMmFsbGYwNDRpbnhDcW9wOTJvUFEwTEZGRmI1b2pDZlBQd3NIVkJ1SWdldjFhbzVDbmJ4eGN5K3pLYjlHTDNzYXdkSGplaFFXTDlKTElHck1YcFhSdFdOcHRkUWNXcmVUV3RYaHBZVnFObGJGVjFsYnBuVW5Ic0pRUWx0VURPYTBRaUdDQ0lGOUUwNHl0dWxhNnBwMTUxSUNwcDBkZ3FkaUs2WmtQK1dFWmwzSTdRdktmeDY2S0pMeVo5UWpHSnZzMkVidUN4UmNOZGJTQzZ6UGw5anJMeVA5WTZOeHpzQmdmTElZUlRUUlZmWThrRkFLRDVUN1BMMEtHWUNub0dCWTU5dWNpSGNOeUlwOVR6Z2hhQ3c2MmRvOEZoQnhYV1JCOTZscnBuVUFpeFJ6ZHg0Z3BmaHhoYWJ1UjJCVXNCU2RUTUR0bnFJRkVVRWluWmp5QTRQeFJtSkI2cDRIa2xXN0MwdG1pbkY2Y0ZzZ1djYURNQ3U2Rlpsa2lITVpYdVNIUlpUWktmMDI5bWZxYnJTNnppaXRMb1hML2ZsaGM1VUIyQ1AyUS9vQUdYdEJ3OFAycTZ5N1VRTFA2RVdCUEpOeE50WWphL3hZbXBmL0pnREloNjNZRHhUSG5QbXc2dE1pQVlOSXorMk5XOXVNb3JOcUcyQU96YVYwZTlsa1dnalEycGIrWmpveFZJWEJLMHpHSEZRV3YrSThvbkMwc0NsdTFUM0tod1NMSC9hdk1tMVBjaURrSHRCZmx4dkRjQm95Z2FvRlI5MnNQeXJlQysrK0d4ZHNLVkJiQlM2dmdYWG9QdkVHM1UvdGJuOTFSM3J0cU1MeFppd2hlQlR6TmRRYUtXZG4vb0JWNUVLOW4zSStsdTE5Q1dkMEJKQjlkWmNDWmFxVnJ1aW1wTGNDeHVpTGoxTDYxL1ZGVFptN09NS3paTzlrY2FSQkVza1p2YkJ2SWU2YlRzclQrUDRMbFZEU2s0NXJMR0ExZHpYWlZSc3Y0RjFQbHpHZWV3V2ZwV1Zna3JReWhHbXFBazRYR2g4R2hGT0J3TjdWME8xQnpCR2lzTitENXp1QzZ6RmxhblhhcjllZ01ibzA1ZzZ1amtyNnp1UUhwclUwbXI2SFppWXI2SXpoQnFCeWVjdFRUUXZudnRWU244SFRzOEZ4aDBmR0ZDeEVXcmJQb1dFTDdkUlpabmE0YzNKNkh4UlpabVdZUDFkMTliV2xVUVYvNUR5Z0NyYXZURmwzQmN2cmVrTy9GL2VRTXNHaDMrRDhOeTVsV2NMc0xpL0xPSHl3WGdKd1psbnJFbHpjYnA4Ky9OMFNWeWRiNlN5aGY5c2hPWVBFZFVXQzBZYWRMUHlnc2pGVDhkVm13Nkh4TVphUFhPdngwT2l3NmlCNzRiTElldWxhb3EybW8vYUtjTmlTM1ZaMitOL1NoaE1YYjZrVXJBZWlPNnVjbUhjUGkyeHU2UHRGcEJzcmsyUVBCUEwwNGJTQnE0MHhiK20xZ1liNE9GYjIrejROQldRSHBVc0tpemNuNXRFamZpSFBpbzVGcWs3cXVEcjlrWkRKR2xxQVRXUEk0U0dabjJhNkwvWkdqK25mV0o5OUo4TFdIUlFlcTN0NXZiUllHREx4MnErY2ZiTVFUT1ExV09TcXRqcjRFdWxkQXROOTEvdERCMHV4cFFjWCtXdVRIbENBMy9EQnlJd0pVMXdHYUYzVUVKZG4wYzVwOXNCaFRyWmVqUWJKVkwxOEE2V1dhYTkvQkk5MnJrMlJhTWgrVmI3MVVNN2pTR255R0ZrQUhzblVVb0UxOU9zL0NBUXJhVzQ4cmxwVGlzbmtsK0tKMC9qSGMvUDRKak1tcU5iQm85VmpXelpTSjlwajlLSVd6TnpLOGxSTnErc1U4RGVCbmFBRy92YUhXRExTL0RQdjhGYmF2YzhMYXI5RTVYNU51UFlmdTFlYW9walhWNGN0em1sOEZDQWhOdlNZYUl0d21qNnJuMWdtN0R3MHN6Z28zdHJ5OUc2Tyt0QnpEUGhxRXB5NEs5dW5Gd1JqKzhSQThmZWxpUFAySnhSaHhTUWllL2NJeUxCK2FRcWU0MVp4OTFSYS9Yb2oyT2RxckJrOTdJSnFhZEorT0s4cFBrTXpqbEtLVFlsb0oxWGtRMWFIQjBMVldnVlZlMndSU3ZmU244dDE0ZjJzWkJqNFVqL3Z2V28vNzc0ekZBM2V1eDJOUEpHUEM2c01ZdzJsRDdhZ3VVNGFES011aWM2OWFOZFlnNjN5dytxUjJkSi9hMFdLYStxZ3lBa0RITEhWU1QvM1UyWlVyT1UycFQ0Sk4rZXFuVlArcmoycFRmcGlPZ21yZlM3K1ZFdmgyMzlXZWpvQnFCZmRjcFBmQlV1N0c1amQzNForZlhZcGgvWUx4Ukw5RlZFSkRXRjc0YWlnbS9Ud0NVNjZPeE9SZlJ1S05HNk1STXo2YlVaUFhiSURwNXhhLzVQeDlMWDJIOWlyL1JLZlY5RTNWZks1enJTM1dBZXBqL0JhR2N1NGZ6UHpMT1pBYXRPOXlvQjZrbi9NNFgrNnZFbHgrMVY3VGxPSW14TkR5RGIwOEZFTStFWUloQkhjb1FYN21oa2pNV0xEWG5ERzVpVk9TZm02aU12SXBSdFBhNkd4c3BZZGcwNktOb3A5MFM1SVQzNkwxK0NIYjFDRHFmTTNBekhwemVPbnFMUzc4SWEzT0hDVnc4dmxxNk5QbzdPNnduSHJUaDY5emloSllzbnpmNURTa0JUbTFrWHp5MU8raFZKLzhLTHZ2MTdGUGl2TDJ1Yzd0RncyOUY1YlBDWllnQTR1Z2VlNi9sMlBGc0ZRVXA1Ymg2TTRxbE9SV21zK3FJeTd6ODA0bm43K3czb3ZrUWhkaXRsWmdUZlF4ckFvclFXUjhHUklMbk5qSjZPQVFnenB0cXBwM1NWK25sT1dMVTh1eFA2MGNPVWxsaUU4c1J6enZqVDlZajVpc0tteUlPNDZrNUFxazhUcWZEZXlzYmNXbW5CcWtwbFFnZHVZdWpQd0MrL2dSd2F3K0J1R2xIN3lQWlM5dFIycENHYUxZYnRieFJsTXUzK1hGUVZjTEhNY2JjQ1M3RWpzMkgwZGNWQW5Db281aURlK0wyK2xBTVFlUVhVUVJwMFY5ODZWeXNHVlY1SnBKQklFaUlFMGpBajY1c2htcDVvUi9pemwzSzRjMzhIZFF4MmpKZERwUG00TzI2Z3hNKzE4QmRGY3VHRmhHZjMwbFlpZmxHcCttdlNpdE1PRVlOa3pNeHJLL0pXTCt2WEdZelduaG5kdGlNUGVQRzdINGtRU3NIcDZDOVJOMklEL3lFTnkxaldoeXR5RDBxVFRNdkNVVzc5eStBZS8rZm9PNWQ4bWpDVmorV0JLQ0JzWmp6bDFNRzdBUm9VTzJJdkd0ZkhocTNFaWRWNEE1ZDIvRXhKK0dZL2gvMlpiUFovMmUrZlFTakw5aURkNitOUllMN3Q4RTEzRVgwTnFLb2kxSEVmbGlKaFkrbElCMy83QVJiOThXaTdkdWljYXMyMk14LzU0NExQN0xGa1E4dncwN0l3N0I0eURSdlZRdUlGaENFZk5hRGp4MWJjOWJ0TkJmT2JMakpPYmVGMjhHNjZsK2k2bExqTDlqL0o2UGNBb3phZkoxUXZBbTRkaTJaRC9xcWp5WStMTndqT2kzM0ovL1pMOFFZeW4rK1JsZitjRDBGNyt4RWpsckR5Rnl6QTY4Y1ZNMFh2bmVhang1a2E5L3RzcWZldWxicXpEcEZ4R1krZHNZVkI1MFl2ZUdvNWgxVnh6QkNtRmRTMWpYWW5QdnZ6Ni8xUGhkU2pOdHNEM1ZteDlkZ3FhZSt2VitEOHNGQTR2OGxRaWErSnJTZW5oY1RXaXdySVBqZUwxeGlFZCthckc1ejc1L0xLZUV0YzlsWXVwMVVXWVFWWmYwU1RyTEFrYjF2SDV0bEJrbzMyQUhHUWQ2OHRVUldQVjBPaWI4T014QVl1YzlSU3V5NXRsdEJwZzltMHF4Ym13Mm5oRlVBZFBRbU8rdXhzb1I2U1pTeTQ4K0FyZXpDY3VHcEJwL3kzNldKejhXWkNBTkhaNk82YitPQ1dqRDErL3dGN0lNWkwxUkxoQllndmhOWEliNUQyeEJXbkFSdHE4NmdNd1Z4U2hNT29HREdlVUdpcEdmOUFGaEJvUUE2TnZzT3VuR3hxazc4Y0xYUXMxQStQS0NNZTZIYTFCZFV0Y0dGdVUvKzhWbGlKNlFnMXIyWWRIZ1JBenZ0OVRrR1pBSXkrcVJHU2dyZEpoK3ltTElqNUlGc3N2TCtVNExMcFE3Wk5hS3BIUHZqVGZXdzY1bnhLVWhDQjlOSUE2N0VQSHk5b0E4bnk3OVI3THh4WHFqWEJDd1NEVW9UeE9JVVpjdDV5Q3RzT0RaalBTUVF2T05idy9MN0x2alVGL2RpRTNUOHpHNkRTd2hHSHQ1NTdERVRzd3hVMVRJbzBrbVQrMXFLdE9Vc2ZxWkRKVHZyelg5TElnclBSMFdUai9wSVVVbVh5SlkzcnZuZEZpTWhUeGFaNmEwOXJBc0VTeDVmYkIwU3pxekxDTTRsYngyVlRnV0ROeUM0TDhrR21keHcrdDUyTG51Q05hTTZnd1dEK0xPRXBZWXd1S3FWQjkyMCtuZGlEbC9vcU03WUJQbTNiOFpLUXYyd1hHczN2U3pZR01IbG9Xd3BMV0RwYjFsMFZTMzVMRms3R2I1cFkrbitOdTN0UStXczVET2ZKYm5hRkg4b1ROZnBrTFFrNXpiUzNkVjl6d3NGVzVVRkR0Um5GS0dBd3lycFpydTVFdklUNUtjR3l5OGovZS8vSjNWeGw5NStkdXJURjlWMXRiRmY5dHFsZ1Y2bzF3d3NDZ2FpcDJZZTFxa1VGWGl3cHJuZWhZVzlhRXJPV2RZT0tVcFNodjdnelVZVHlkNi9KVnIyMmpVS3p0UXRzL25GL1UydWFCZ2lhSHpxUWdqVUtyb0tQWTRMTFFzWFVsbnNMVDNXZHJEb3FoSzA1b2l1REJHUHUvZXVkSDAxVmFseTJMMlJ2bHd3SEtHYWVoc0hkeHV3eEozT2l3VHJXaklGZ05MUnc3dWk5dE4rN0lpYWw5MTJMcjA4VDZmcGR0eUxyQjBGRG9MbHJwS1dwWnArZTFDNXhDTTZ3Rlk5bXdxOWRVYkFJdW1rYVRaZXd3a09qN2hwWFlVT2lzYXFyYWlvZUVCVmtkcVF1YytXTG9uWnd1TG9oUDVNaU0vdGNSL3YyRFJhdWplemNjWVBTVlltNUsrUEttbUN3M1dCNEhsQUIzZWFUZEdtMFUrWDcyK2lHMzZ6VEhZTUNVUHlmUDNHbjlxNGNNSkpzKytSOUZRRUtPNXJCWEZXRFFvd2ZUVjdwZnl0U0I0WW0rTjFVcnZrbDRKUy95TWZHTXBOSkN5QlBwbWFtMWwzYmpzMDJCcHJHK20vMUJxVmx3RmhNcEl0UTZqSlhlVjAwQ29IaTJ5eWJuVW9wamEwU0xhaUg3THJEWVdHNmlpeDJjenI4R3F2WFBSNHR6eW9hbW03bFA5Wk5zWEMreVZacFYyZi9JSkpMeGJnUEZYckRWdDZ4NzFjZlEzVm1MS05aSEdNZ2tXcFV1Zi84b0twQzRxUklORHgxSjduL1E2V09SblpDN2JqeGtNTGJWWnB3SFYrc283ZDJ4QThyeTlhR3kzTnlSeGNicEptck1Id1k4azhac2RiZTUvNWZ2dkcydWtKZmhYZjdUV0RJNmNTWm4rbzNtVlpzc2dhSENpZ1V4dHFDMXRLbW90Ulgzb1NqU2cyc2VSNVZDNXFkZXZ3K1NySXcwa0UzNFNacllaRk9hWEV5cE5UWFB2MjR4cE42d3o3YWxQQWthZnV0YTl5bDgvS1JmbFJiNUZ2OTRvdlE0V3JXTWNMNmpCOXBYRnlGaGNoSXdsUlVqblovYWFnMll1MThaaFp5SS9SRkZLeXNKOWlPZFV0bjV5bnZGWkVtY1ZtQzBDclYvSUVrbmtVMmovSnAwT3FkcFFXN3BIeHhic3RaU3VwS1haaTRvRFR1eExPRzVPOG1XRnNzOVdYWnBtdFA4a2FlVjlpbkIwc2svQXkrazJmWHNqSDF2bjdrVk8yQ0ZPUFE2MG51SFplb1AwT2xnay9yMFZPWW0yczZqckxvNWgyT1hzODdtQjZpdmZ0b0xBdWsvZFkyVjJVL3g5RFZTcnJzQWZKWFRkTit2R1hpeTlFcFkrNlozU0IwdWZkRnY2WU9tVGJrc2ZMSDNTVFFIK0R3aU1DcGhXa2srU0FBQUFBRWxGVGtTdVFtQ0M=\",\"name\":\"Capture.PNG\",\"size\":6375,\"type\":\"image/png\"}');
INSERT INTO `zzzzsys_file` (`zzzzsys_file_id`, `sfi_code`, `sfi_description`, `sfi_group`, `sfi_json`) VALUES
('s14924792013621', 'FLOW', 'flowchart', 'test', '{\"file\":\"ZGF0YTppbWFnZS9wbmc7YmFzZTY0LGlWQk9SdzBLR2dvQUFBQU5TVWhFVWdBQUFxd0FBQUgzQ0FZQUFBQitZdzJaQUFBQUFYTlNSMElBcnM0YzZRQUFBQVJuUVUxQkFBQ3hqd3Y4WVFVQUFBQUpjRWhaY3dBQURzTUFBQTdEQWNkdnFHUUFBSU4xU1VSQlZIaGU3ZDBGZEJSWEh3WHc0TUhkM1lLN094UnBLVkNzT0tSNDhRTEYzU1c0Uy9EZzdwNEdVZ2dRZ2xNb3hTbGVJTUVLRlBqdXQrL3RiTElKQXdTU3ZPek8zdDg1LzlNeXN6TXJNOW01Ty9QbVBTY1FFUkVSRWRrd0JsWWlJaUlpc21rTXJFUkVSRVJrMHhoWWlZaUlpTWltTWJBU0VSRVJrVTFqWUNVaUlpSWltOGJBU2tSRVJFUTJqWUdWaUlpSWlHd2FBeXNSRVJFUjJUUUdWaUlpSWlLeWFReXNSRVJFUkdUVGJES3d2bjc5R3I2K3ZwZzFheGI2OU9tRFgzNzVoV1dEMWFOSER3d1pNZ1RyMXEzRDlldlg4Yi8vL1UvYmdrUkVSTUc5ZWZNR3g0OGZ4NXc1YzNoc3QrRVN4L2JCZ3dkanpabzF1SHIxcXMwYzIyMHFzSW9QcG1mUG5raVlNQ0djbkp4WWRsYUZDeGZHZ2dVTDhPclZLMjJMRWhHUm94TW5OSHIzN28zRWlSUHJIanRZdGwwRkN4YkV2SG56OFBMbFMyMkxSZzZiQ0t4djM3N0ZtREZqRUQxNjlNQVBLR09XN0toUnJ6RTY5eDZDWHdlUFJhOGg0MWcyVmowR2pVYWJMcjFRcG1KVnhFc1E5Q1BEeGNVRlI0NGMwYll1RVJFNW9uZnYzbUhDaEFtSUdUTm00UEVoUTZhcytMNXVJeDdiYmJqa3NiMXJiNVN0VkEzeEV5WUszSFpac21TQnQ3ZTN0blhWaS9UQSt1elpNMVNvVUNId0E2bGV1d0dXYnp1SVU3ZWVzK3lvanY3MUQwWk1ub2RNV1Yza2Rvd1NKUXFtVEptaWJXVWlJbklrTDE2OFFKVXFWUUtQN1ZWcjFzV3lMYi9wSGo5WXRsdkhMai9DNkdrTGtNVWxaK0MySERkdW5MYVYxWXJVd0NyQ2Fwa3laZVFIa0N4RlNzejIyS3o3Z2JIc3AwUndiZG14UitDT1BYSGlSRzFyRXhHUkl4Qmh0V0xGaXZJWWtDUlpja3hmc2w3M2VNR3luL0s5OGhodHUvWUpQTGFQSGoxYTI5cnFSR3BnZFhWMWxXODhaZXEwMk9wOVJ2ZERZdGxuRFowd0szREhQbkRnZ0xiRmlZakk2TnExYXllLys4V0pxTTBIVHVvZUkxajJXZUpzcStYWXZtZlBIbTJMcXhGcGdYWExsaTN5RGNlTUZRc2JQSS9yZmpBcys2NTIzZnJLYlp3NWMyYjVpNXVJaUl4dDkrN2Q4bnMvZW93WVdMdjNxTzZ4Z1dYZjFiblhZTG1OMDZWTGg2ZFBuMnBiUHVKRlNtQVZYU1RreVpOSHZtSFI2RnJ2QTJIWmY0bExDQzY1OHNydHpQYXNSRVRHSm83dG9yY1k4WjNmdGU4dzNlTUN5LzdyK0RWLzVNNWZTRzVubGUxWkl5V3dlbmw1eVRjcTJyYUlVS1AzZ2JDTVVaUGRWOHB0blQxN2RyeC8vMTdiQTRpSXlHaEU3ekRpK3o1aG9pUTQ4dGREM1dNQ3l4ZzFZK2tHdWEwelpzd29lNE5RSVZJQ2E0Y09IZVFiRmQwbTZIMFFMT09VK0NXV1BHVnF1YjM5L1B5MFBZQ0lpSXltZS9mdThydmV0WDAzM2VNQnl6aDE0c1pUcEU2WFFXN3Z3NGNQYTN0QXhJcVV3RnEwYUZINUp0M1g3TlQ5SUZqR3F1cDFHc3J0UFhmdVhHMFBJQ0lpbzdIMCtqUExZNVB1c1lCbHJLcmRzSVhjM3RPbVRkUDJnSWlsUExDS05pNHhZc1NRYi9MM1ArN29mZ2dzWTVYb2hGaHM3NDRkTzJwN0FSRVJHVTI4ZVBIa2Q3M25xV3U2eHdLV3NhcmZ5RWx5ZTdkdTNWcmJBeUtXOHNBcWh1MFViMURjUWFqM0FiQ01WeU9uekpmYnZHblRwdHBlUUVSRVJpTHVVUkRmODZKTzNueW1leXhnR2F2Y1ppK1QyN3QrL2ZyYVhoQ3hsQWRXTVJhdGVJT3hZam5yZmdBczQ5V1lHWXZrTm0vY3VMRzJGeEFSa1pHSUcyL0U5N3dZNVZEdk9NQXlYazJhdjBKdTh6cDE2bWg3UWNSaVlHVkZlREd3RWhFWkd3T3I0eFVESzh0d3hjQktSR1JzREt5T1Z3eXNMTU1WQXlzUmtiRXhzRHBlTWJDeURGY01yRVJFeHNiQTZuakZ3TW95WERHd0VoRVpHd09yNHhVREs4dHd4Y0JLUkdSc0RLeU9Wd3lzTE1NVkF5c1JrYkV4c0RwZU1iQ3lERmNNckVSRXhzYkE2bmpGd01veVhER3dFaEVaR3dPcjR4VURLOHR3eGNCS1JHUnNES3lPVnd5c0xNTVZBeXNSa2JFeHNEcGVNYkN5REZjTXJFUkV4c2JBNm5qRndNb3lYREd3RWhFWkd3T3I0eFVESzh0d3hjQktSR1JzREt5T1Z3eXNrVm5YYm1MMXZERndiVlFmRmNxVlI0bktQNkxoci9PdytQampFSSs3QXZjeHc5QjUyR3Bzdnl5bStXUGZtcW5vMnRzTlV3NDlDdjdZY0s0VGw2NWl6NFVBM1htMldneXNSRVRHWmx1QjlURjJMcHVFTHIwR283TjE5UjZLWHdaTndyQzVPN0grVElqamVpVFdjYitkR05oM0NIb3ZPS2M3MzFhTGdUVlM2aW04dDQ1RnBiUk84clU1eFU2RkRObHpJRjNTR09aL1I4K0ZlclBPdzlmeStFdGVhSjdHTkQxZWJjdzRKNlk5Z0VlN2RLYkh4a2ZscFg5YnJUYzh5eCs3M0x1Z1lJcU1xTHZ1bnM1ODJ5MEdWaUlpWTdPdHdIb1g3ZzJTbVkvZkg2M1VLRGZvQUx4djZDMnZ0bnkyZGtFcTAydUtXMzJEN254YkxRYldTS2hqdjdtaHFMTnBCNDZSRHcwbSsrRGdkY3U4ZjdCalVRL2tqU1YyN3R4b3UrMitlZm9IZ1RVQVh0dVhZL2pFeFZqZ0cxRy8yaXgvZ01rWldJbUl5S2JZWm1CTmhscExMOEg3M045YTNZTFg4WE5ZTVg4QVNpVVN4L1YwYUxUdXJzN3lhb3VCTlhRWVdLOWZ4SWp5c1UydktTVitXSHdOZmg4OEpnQzdwbFJEYk5OcmpsbDJQdmFJTVB0QllQMVVCZURRVVY4czMzSVE2MzN2NDRUdVk0TEs3L3dmV0xmTkMyc08vNDNqd2VaOU9yQWVPM2tDS3phYmx2djladENaWUJzcEJsWWlJbU96emNENnNSTThUK0hwL2dQaW1WNXZ3bnJiY0NqRWZMOExGN0YrMjI5WXZ2OFNmRDUxQnZiR1A5anY1WTJsVzQ5aXgvblBOTlc3Y1I5NzloM0VLcThyOEFrOEtXYXVUd2JXNjNleHk3VGNzbTIrMlBQbjB3L25SMkl4c0NxdTQ5N2prY3YwZXB6eWpNWG1hL3FQT2ZXbkQvcDM2WWUrODdXenJ6cE5BbFowelFQbm1PbFFhK1Z0YmJtbjhONDVCYlh5SkpUdjExSUpDclRDOEgxQmYwQSsyL3NnZSt5WVNGVjNBVWEzSzRWRVZvK05sNjhWUnYvK3lMU2ovNFdScGEzWEV3M3hLeXlEbDJuNUUrZTgwS05hUmtTeldpNUd4aHJvdHVIbVo4T3hxbUpnSlNJeU52c0tyTS9oNnprVVdVeXZOMnBKODdGVVREdHgvaEFHL0poZkJsbkw4ZFFwWVJIVW0raUx3MWJMeWpheUMzcWlSRXFyeHpuRmgwdURhVmh6d1JJcWczSkI5WW5UVUR1YjFzVFFWRkhTVnNYUEs2NEVuaURURGF3M2JtUFY2S2JJa2NENk9SSWpUOU01V0g5UmUwd2tGd09yNHZLYVV3blJUYThuZlZjZkhOV1pyMXVoYU1ONnpHc2lpc1UyUFNaV1hsVHZNUTFqNXl4Qy82NTFrU202YVZxQ0doaHgyRjgrenJLak9rVjNoblBheW1nNmFBN0dUaDJQUnNVVG1UK244dUtzN3Q5WVBLQVZ5bWFNWXBvV0ZSa3FOMFhEUVFkTmYwRDNzYlJOZXZtNERIV0dZOFNjcFJqY3FSSVNpdldsYkl1Rk5ySlRNN0FTRVJtYjNaMWhuVmNMY1Uydk4xbXpQZVl3ZXZrRStwYU9ZMXJHR1M1MSttUFF6R1VZTTZvUHFtYU5icHFXRUJVbm45ZXVlajdGd1RYdGtVNGNaMk1Wd0E5OTUyRDg5RWx3TFo5S3Z2OTRsZWRnaHp6NVpja0ZUb2htT3U1SHo5NFFIY2JNUWQrTzN5RzVXRFpHS2ZUNnpYeVQ5b2VCOVJFMmpTZ1BaOU8wV0xrYTR1ZXhpK0UyWXpMYTFuQ1JlU1ZldFhuYWMwUnVNYkFxcmNmWTJDK242ZlZFUlpHWjEzVG1mNlErRjFodlhNUGs3eEtZL3AwVGJiZGEvN0U4eFlIbExlWE9tcXpaYnZsSEVoaFluU3RqK0pHZ1N3b25UaTVIeGJpbTZYRi93SFQ1SERwL2dGZU9vMnQyMDJPaWxNYm9FOXB6M0xpTTBlV1RJVjdHN3pISTJ6YnVnbVJnSlNJeU52c0lyQUU0ZXZZY2xzN3NneElKVGNkT3B4eG9zLzJCYVhwUUU0RXNYYjJDblUwOWNYWUw2b296cVNsYW0wOENYVHVMZmdXam1wWk5neDlYM1FxNmtta0t2SDJLaWJPb0tWRmZQbWRRWUhWSzJSS3p6bGpPdlBwais3Z0tpR1dhbnFUUlR0a2NJV1JnUFhGcUpiNkpiMW91ZXg5NFdKOTR1bkVUczV1SVlHeDVEcXQ1a1ZBTXJFcnJFZGIvbXQzMGVxS2p4TnliT3ZNL1VwOExyT2Mzb1pvNGpaKzVGK2JzTzQ0Tm5sYTFjeUdxaXNiZTZYN0I4a3RCTzJxVW92T3cxN3F0ek9WajZKakY5TGlvWlRIK2pKaW04d2Q0NHdyR2xJc3BQOCswTlliQWJkdGxITE1zYjBNVk1yQ0tMN2JvMGFNSFZzeVlNZVYwZ2ZNNGovTTRUK0E4KzVvWExWbzArVDF2VzRIVmRBejlXRVhKaEtwamZPRWpIMzhiczJxSlpuZlowR2JGc2VESGJNOURHRjB6aVdsZUJyaHVNNFhiazR0UlZGd3B6ZGdicS84Sy9yeWVjNm9ncG1uZGFUb2NOSzAzS0xCbStPVkk4R1B6bVJVb0syNzBUdDhESzB6ckNCbFl2VDNxeWZDY29jdFdyQXYyV281ajFmUzY4aXBxNnAvRmMxaXRNeEtLZ1ZWcFBjVWV0eUx5OWVRYWZVSG5ocXVQMUdjQ3E5K1JLZVoyc1orcXVMWGttVlBMamhybjIzWHd0bjZPS3lmd2k0dDRiR21NKzFoZ05aWFBuckVvblNSb3ZkSFRsTVMzbmFaaC91RUhOdHVHOVgvLyt4LysrKysvWUdYQmVaekhlWnduY0o1OXpYdjE2cFg4bnJldHdCb0RMai8yUU51dWZjelZyUjkrN2owV2cyYnR4S1p6VmpkSlhiK0FBZm1DanFQNkZRK1ZGdjhOMy8xRGtObjA3NmdsbHdhMmZiV1V6N1pma05vMHozdzh0K1NDbUNqdGZpdlk0MDVkT2dqWGRLWjF4cW1KYVZZNXdCeFlBN0J6ZE1FUXovMWhmWkFaSXFFWVdCV1h6OFoyOGhKOWdqcGJQN0h4NzhGamNCZTBIdUtCTldJbi8xeGdQVFFCTG1LblN1dUtYbTZ6TUhUQ2h6VnN4ZzdzdWhKOFIvMmF3Q3JxeEo5bk1IdDBEM3hiTEtOczgyTGVvVjNReU9PYVRZUldOZ2tnSWpJMmNiWlZmTS9ieTAxWHdlcjZPZlRKTFk2YjZWRm55RXpkWS9iUWlZc3cvK2pqd0p1MW9wVUt1bG5MVXBiQUdydmFXcXZBR2djVkZuNGtzSVk0Y1dVSnJOdUg1NU9mWmVwRzR6QkU3N1ZNbUkweHF5OUdlbzlBREt5cTY4SU8xRTVxMm5FU05jU01zenJ6UlozZGdPcmlNbjdNQ2hoOS9Pbm5td1NjWFlteW91L1dsTzJ3K004UTZ3cFJZUTJzZnBldVlLdjN6Y0F1c0h4UEhjYlk5c1ZrK3hpbmd0T3dNMFQzR1pGUkRLeEVSTVptMTRIMTFrMU0vc2JaOVBqVWFMaEI2Mi85WTNWaWtibEpRT2IrV0N0SHVnd3FyM25WNUxFM1padmZnalVKeURueWZQQXJ1S2FNVUU0MENjallSellyQ0I1WW4rT0ErN2R5UGNsYjdJMzB5LzZmS2daVzVmVUlhM3ZsbGE4cGRaTTEyQmN5NEYyL2hsay9aWkh6a3piYVpnNlZud3VzMXk5Z2FFblIrRG9SS3MvNks5aU82bnRnRWtwbnpJdzhEUmJLdS95K0tMQTJFbitBeVZCbnJmWUhlTW9EWmJSZ3ZNaXFZZmFKNDNPUTM3Uk9wNXhqc2NVRzdpUmtZQ1VpTWpiN0Rxd0IyRG1ockx3RFAzNzFwZWIrMWkzenJweEV2d3Baa0M1L000ejI4Y2VwYTZmUlN6WWZ5QXpYTFZicnZ2WUhoc2srM1JPaTZoSnhSalVvc0ViTlB4YWJybGpXNlkrZGs2dklxNkhKWGZmSlFCb3lzUG9kbVlVaU1VelBrYkEyeHZ0YTkrLzZHSnRIVlVINmpJVlJhL29mSWZwcVYxOE1ySkZSZi9xZ1d6SHg2MHIwZmRvQTdjZDZZTmE2WFpnMWN4d2FsMGt0cHp0bGFvc1pKN1VkNTNPQjFmU1lReHU3STVOWUxrcFdWUDNWM2JTK25aZzJzUS9LcHhJN2Vrd1VIblpDbnM0UGZXQTFQVWY3REtaL1I0RkwxeFZZc08wU2pvbmVDR3FZKzJkTitlMEFqRjYrQjR0V0xFS0hLaW5rdEJ4OWZHM2lKaXdHVmlJaVk3UHZ3R3FxQy92d1UxWnh6STJDRERVR1lwVEhMcmd2bW8yMlZkTEk5eFdqdUpzV09wL0NjNm1ydVd1cWhPWGhPbUU5M0ZjdFEvYzYyUkhWTkMxNi9xRllLMi9HQ2dxc29sSldHNEJSaTlkalRKOTZTQytteGFtTXdZZUNkMjlwQ2F6aTlTL3U0Q0tYaTVLcExqcE8zWVFGYTlaaVdOZnFTQ0dXalZrR3ZiMGl2eGNnQnRaSXFoTVhqMkY0aTFKSUpuYUdZQlViV2I0ZkR2Y1RWcjl5UWhGWXhTK2hQWXQ2b0dqeUVPdUxrZzVsZjkwQlQrMFhYT2dEcXlrRWIrZ21HM3ZMOWFUdEFvOUxwbDlpSjdlaGJjbWt3Wi9ES1M1Y0dydGpTNGc3R0NPckdGaUppSXpON2dPcnFYeDkxNkpsS2ZNSm42Q0tnbFNWQm1LKzVZU1ZyQWZZTUxFWnNzcGgyeTBWRGFrcjlNY2NQOHZqTExrZ05ncTJxSS9Nb2htQjl0aG82YjlIMXcwM1B6MXd3SlZMbU5heEhKSUdydDljVWRKVVE4ZlZlcU55cWk4RzFraXVFNWN1WTkzNkRaZzhaeGttTGQyTGphZkMrQ3ZtK2wxczI3SkZybS95U20vc3VCaVdvZFdld3Vmd2Zrd1g2MXJqQysvQXl4YVBjY0JySDJiT1g0YUppM2RoL1VuYjZIL1ZVZ3lzUkVUR1psdUJOU3dWZ0VPLy80Ylo3c3ZnNXI0TkszenVmZlRtNVJOLy9ZVlZxMVpqMG9KdDhEaDBOOFRqZ3AvSU9uN1dGKzRMVjJIVzV0Tld4KzdQbDkrRnMxaTJmQlhjNXF6QzNPMS80UENuaG9wVlhBeXNMTU1WQXlzUmtiRVpKN0NHVitsZGVUVldNYkN5REZjTXJFUkV4c2JBR3JJWVdNTWJBeXNyd291QmxZakkyQmhZUTlZL1dEZW9DakpuTG9FV0cwTGZqdGFlaW9HVlpiaGlZQ1VpTWpZR1ZzY3JCbGFXNFlxQmxZakkyQmhZSGE4WVdGbUdLd1pXSWlKalkyQjF2R0pnWlJtdUdGaUppSXlOZ2RYeGlvR1ZaYmhpWUNVaU1qWUdWc2NyQmxhVzRZcUJsWWpJMkJoWUhhOFlXRm1HS3daV0lpSmpZMkIxdkdKZ1pSbXVHRmlKaUl5TmdkWHhpb0dWWmJoaVlDVWlNallHVnNjckJsYVc0WXFCbFlqSTJCaFlIYThZV0ZtR0t3WldJaUpqWTJCMXZHSmdaUm11R0ZpSmlJeU5nZFh4eXZDQjlkV3JWL0lOUm84UlEvY0RZQm12UmsxMWw5dThhZE9tMmw1QVJFUkc4djc5ZS9rOUwrcmt6V2U2eHdLV3NjcHQ5aks1dmV2WHI2L3RCUkZMZVdEOTMvLytoK2pSbzhzM2VlakNYZDBQZ1dXczZqVmtuTnplSFRwMDBQWUNJaUl5bXJoeDQ4cnZlcTh6TjNTUEJTeGpWZjlSaytYMmJ0bXlwYllIUkN6bGdWVW9YTGl3ZkpNTDF1M1MvUkJZeHFvYTlSckw3VDFuemh4dER5QWlJcU1wWGJxMC9LNmZ2WHlMN3JHQVpheXEyL2dudWIyblRKbWk3UUVSSzFJQ2EvdjI3ZVdiL0xsN2Y5MFBnV1djOHJzZWdGUnAwc250ZmZ6NGNXMFBJQ0lpbytuV3JadjhybS9WcWFmdThZQmxuRHB4NHluU1pjd3N0L2Z2di8rdTdRRVJLMUlDNjc1OSsrU2JUSjR5Rlh5dlB0SDlNRmpHcUtrTDE4aHRuU1ZMRnRrb240aUlqRWtFRi9GOW56aEpNaHk3L0VqM21NQXlSczMyMkN5M2RkcTBhZkgyN1Z0dEQ0aFlrUkpZUlR2V25EbHp5amZiYitRazNRK0RaZjkxL0pvL2N1Y3ZKTGZ6eElrVHRhMVBSRVJHSkk3dEJRb1VrTi81UFFlTjBUMHVzT3kveEpYVEFrVkt5TzA4YXRRb2JldEh2RWdKck1MNjlldmxtM1Yyam8wdDNxZDFQeFNXZlZlblhvUGtOazZYTGgyZVBuMnFiWGtpSWpLcWJkdTJ5ZS85bUxGaVlZUG5jZDFqQTh1K3EvdUFrWElicDBxVkNrK2VQTkcyZk1TTHRNQXFpSDQ1eFp0T2t6NGpkaDY1b1B2QnNPeXpoazJjTGJldEtORUVoSWlJSE1OUFA1bHZ4aEgzTDJ6Ny9henVNWUpsbnpWNjJnTFoxNjdZdnR1M2I5ZTJ1QnFSR2xnREFnSlFyRml4d0IyYnZRYllmNGsyeVQvMzZCOFlWc2VQSDY5dGJTSWljZ1RQbmowTDdERWdlY3JVbUxkcXUrN3hnbVUvSlpyNGRlNDlKRENzamhneFF0dmE2a1JxWUJYOC9mMVJzbVRKd0lCVHA1RXIxdTA3cHZ1QnNXeTNSRkFWblFpNzVNNFh1QzNkM055MHJVeEVSSTVFaE5aeTVjb0ZIZzlxTldpR05YdU82QjQvV0xaYklxaE9uTGNjdWZJVkROeVdJMGVPMUxheVdwRWVXSVUzYjk1ZzhPREJpQm8xYXVBSElvSlAzU1l0OGV2Z3NSZ3dlZ29HanBscWlPclFveis2OWgybU84L2VxdCtvU2JLZGFxVnZheUZKc3VTQjJ5NWp4b3p3OHZMU3RpNFJFVG1pLy83N1Q0YWJhTkdpQlI0ZnN1Zk1JL3Z2RkRkbEdlbllicVFTeC9iT3ZRYWpjdlhhU0pvOFJlQzJFL2VqUkdZVFA1c0lyQllYTDE1RXAwNmRFQ2RPbk1BUGlHVS9KWHArbURsekpwNC9mNjV0VVNJaWNuU1hMbDFDMTY1ZEVTOWVQTjFqQjh1Mnk4WEZCZE9tVFpObnpTT1RUUVZXaXhjdlhzRGIyeHVUSmsyU083a1lhTUFJVmE5ZVBjU0tGU3R3YUZwTGlYK0xzNUpseTVaRmt5Wk5kSmUxeFJKRHJmYnExUXZMbGkzRGhRc1haSmNtUkVSRWVsNitmQ243YWhVakk5bjdzYjE1OCtiSWx5OGZZc2FNaWF4WnN5SkJnZ1M2ajdQSCt2bm5uL0hycjc5aXlaSWwrT09QUC9EKy9YdHRDMFl1bXd5c1JuWGl4QWtVS2xSSU5vSHc5UFJFNzk2OWtUZHYzbURoVlpRNFU5bWpSdy9zMmJNSHIxNjkwcFltSWlLaXlIVDM3bDM4OHNzdlNKdzRzZnp2blR0M1pLakxsU3VYOWdpS0tBeXNDbGtDYTBpM2J0MkN1N3U3UEFNcmZxVlpoOWZZc1dQaisrKy94NHdaTTNEbHloVnRDU0lpSWxKRkJGTXg5S3dJcXQyN2Q1ZkIxWUtCVlEwR1ZvVStGbGl0aVVicUJ3OGVSTDkrL1ZDd1lOQmRlWmJLbGkyYnZKU3ljK2RPZVhtRmlJaUlJc2J0MjdmbE1WY0VWWEhsODk2OWU5cWNJQXlzYWpDd0toU2F3QnFTK0JXM2VQRmlOR3pZRUlrU0pRb1dYcDJkbmZIdHQ5L0s5a0IvL3ZrbjI1QVNFUkdGQXhGVXUzVHBJb05xejU0OWRZT3FCUU9yR2d5c0NuMU5ZTFgyOXUxYkhENThHSU1HRFVLUklrV0NoVmRSbVROblJzZU9IYkYxNjFiZXFVOUVSUFNGL3Y3N2IzVHUzRmtHVlhGVDhmMzc5N1U1SDhmQXFnWURxMEpoRGF3aFBYandRTjZoMzdScFV5Uk5talJZZUJWM0xsYXVYQmtUSjA3RStmUG5lZmFWaUlqb0k4UzlKT0tFVDVJa1NlUU4wZUw0R2xvTXJHb3dzQ29VM29IVjJydDM3M0QwNkZFTUd6WU1KVXFVQ0J3K3pWTHAwNmRIdTNidHNISGpSang5K2xSYmlvaUl5SEhkdkhsVGR0RW9nbXFmUG4zdzhPRkRiVTdvTWJDcXdjQ3FVRVFHMXBBZVBYcUVsU3RYb2tXTEZraVJJbWlrQ2xHaTM5Y0tGU3BnM0xoeE9IMzZOTSsrRWhHUlE3bHg0NGJzYjFRRTFiNTkrMzVWVUxWZ1lGV0RnVlVobFlIVm11ajAxOC9QRDZOR2pVS1pNbVdDRFlFcktuWHExR2pWcWhYV3JsMExmMzkvYlNraUlpSmpFVUZWZEk0dmdtci8vdjN4enovL2FITytIZ09yR2d5c0NrVldZQTNweVpNbk1weUtrQ3JDcW5WNEZXTStpMUFyd3ExNHZiWXl3Z1VSRWRIWHVuNzl1bXdXSjRMcWdBRUQ1RlhJOE1MQXFnWURxMEsyRWxpdGllWUFvbG5BMkxGalpUT0JrTVBHcGt5WkVxNnVycko1UVhqK2dSTVJFVVcwYTlldW9VMmJOaktvRGh3NE1FS09Zd3lzYWpDd0ttU0xnVFdrZ0lBQWVXT1crQ1dhTGwyNllPRlYzTWdsYnVnU04zWWRPM1pNM3VoRlJFUmthNjVldllyV3JWdkxIblJFVjVDUEh6L1c1b1EvQmxZMUdGZ1Zzb2ZBYWsyY2ZSVmRZazJZTUVGMmtSVWpSb3hnQVZaOEVZZ3V0VHc4UEw2b0N4QWlJcUtJSUlZd0Y4M2R4UEZweUpBaHNnbGNSR05nVllPQlZTRjdDNndoaWNFSXRtelpJdnVxeTVRcFU3RHdLczYrRmkxYVZQNlNGWU1iaUVFT2lJaUlWTGg4K1RKYXRtd3BnK3JRb1VPVkJGVUxCbFkxR0ZnVnN2ZkFhazJjZlJYRHdZcGhZYXRWcTRaWXNXSUZDN0JpbEJBeG5Ld1lWbFlNTDB0RVJCVGUvdnJyTDNtZmhRaXFvcmxhWlBSMHc4Q3FCZ09yUWtZS3JDRzlmUGtTTzNic1FOZXVYWkV0VzdaZzRWVlV3WUlGMGE5ZlB4dzhlQkQvL2ZlZnRoUVJFZEdYdTNUcGt1eG5QRm15WkJnK2ZIaWtkc25Jd0tvR0E2dENSZzZzSVluTE16Tm16TUQzMzMrUDJMRmpCd3V2Q1JJa1FMMTY5ZUR1N2k3SGJTWWlJZ29OY1dXdmVmUG1NcWlPR0RGQzNpZ2MyUmhZMVdCZ1ZjaVJBcXUxVjY5ZVljK2VQZWpldlR0eTVzd1pMTHlLeXBzM3J4eTcyZFBURTIvZXZOR1dJaUlpTXJ0NDhTS2FOV3NtZzZyb0o5eVdoaGhuWUZXRGdWVWhSdzJzSVlsKzhlYk1tWU1mZnZnQmNlUEdEUlplNDhXTEo2ZUwrV0pFRWlJaWNsd1hMbHhBa3laTmtEeDVjb3dlUGRxbWdxb0ZBNnNhREt3S01iQis2UFhyMS9MTWFxOWV2ZVNaVnV2d0trcWNrZTNSb3dmMjd0MHJ6OVFTRVpIeGlSRFl1SEZqR1ZUSGpCbURaOCtlYVhOc0R3T3JHZ3lzQ2pHd2Z0NnRXN2N3Zi81ODJjWTFmdno0d2NKcm5EaHhVS05HRGRrMlZ2UzFSMFJFeGlMNi9tN1VxQkZTcEVnaFIyQzA1YUJxd2NDcUJnT3JRZ3lzWDBiMEppQjZGUkM5Q3hRb1VDQlllQlVsZWlNUXZSTHMzTGxUOWxKQVJFVDI2ZHk1YzdJclJCRlV4NDhmTC92OXRoY01yR293c0NyRXdCbzJkKzdjd2FKRmkrU1hXcUpFaVlLRlYyZG5aM3o3N2JleVgxaHhGNm5vSjVhSWlHemIyYk5uOGVPUFB5Smx5cFJ3YzNPenE2QnF3Y0NxQmdPclFneXM0VWVNcEhYbzBDRTVzbGFSSWtXQ2hWZFJtVE5ubGlOeWJkMjYxUzYvQUltSWpPek1tVE9vWDcrK0RLcGkrTzhYTDE1b2Mrd1BBNnNhREt3S01iQkduQWNQSG1EWnNtWHlibEl4NG9sMWVJMFpNeVlxVjY2TWlSTW55dlpSUFB0S1JCUTVUcDgrTGU5UlNKVXFsZnhPdHVlZ2FzSEFxZ1lEcTBJTXJHcThlL2NPUjQ4ZWxjUDBsU2hSQWxHaVJBa1dZTk9uVDQ5MjdkcGg0OGFOTnRsRkNoR1IwWnc2ZFFwMTY5YVZRWFh5NU1tR3V1K0FnVlVOQmxhRkdGZ2p4ei8vL0lPVksxZktZZnhFRnluVzRUVjY5T2lvVUtFQ3hvMGJKeTlSOGV3ckVWSDRPWG55Sk9yVXFZUFVxVlBMZXd5TWVJTXNBNnNhREt3S01iQkd2dmZ2MzhQUHp3OGpSNDVFbVRKbEVEVnExR0FCTmsyYU5HamR1alhXcmwwYnFXTlRFeEhaTTNHOEU0UEFpTy9VcVZPbjR0OS8vOVhtR0E4RHF4b01yQW94c05xZUowK2V5SERhcWxVcmVRYkFPcnhHaXhaTmhsb3hES0RZZGlMc0VoSFJ4NGtUQXJWcTFaSkJkZHEwYVlZT3FoWU1yR293c0NyRXdHcmJSSE1BY1VPQTZLeTZmUG55c3JtQWRZQVZkN082dXJwaTFhcFZlUFRva2JZVUVSRWRQMzRjTld2V1JOcTBhZVhnTG80ME1pRURxeG9NckFveHNOcVhnSUFBYk5pd1FkNmdsUzVkdW1EaFZUUWxLRm15cEx5eDY5aXhZL0pHTHlJaVIrUHI2eXRISUJUZmtUTm56blRJSWJRWldOVmdZRldJZ2RWK2liT3Zva3NzMFYvZ045OThneGd4WWdRTHNNbVNKVVBUcGszaDRlRWh1OWdpSWpJeTBSTkw5ZXJWWlZDZE5Xc1dYcjkrcmMxeFBBeXNhakN3S3NUQWFoeGlNSUl0VzdhZ1E0Y095Smd4WTdEd0tyclJLbHEwS0FZUEhvekRody96N0NzUkdjYVJJMGZ3M1hmZnllNEJaOCtlN2RCQjFZS0JWUTBHVm9VWVdJMUpuSDI5ZVBHaTdMS2xXclZxaUJVclZyQUFtemh4WWptYzdPTEZpM0h2M2oxdEtTSWkrK0hqNHlPSHY4NlFJUVBtenAzTG9HcUZnVlVOQmxhRkdGZ2RnK2huY01lT0hlalNwUXV5WmNzV0xMeUtLbGl3SVByMzc0K0RCdy9pdi8vKzA1WWlJckk5NGlxUitDRXVyaVRObXpjUGI5NjgwZWFRQlFPckdneXNDakd3T3FiTGx5OWordlRwK1A3Nzd4RTdkdXhnNFRWQmdnUnltRUozZDNmOC9mZmYyaEpFUkpIcjBLRkRxRktsQ2pKbHlvVDU4K2N6cUg0Q0E2c2FES3dLTWJDUzZKTnd6NTQ5Nk42OU8zTGt5QkVzdklyS216Y3ZldmZ1amQ5Kys0MEhDQ0pTenR2Ykc1VXJWNVpCVmZ5UTV2ZlE1ekd3cXNIQXFoQURLNFYwN2RvMWVlT0NHQkVtYnR5NHdjSnJ2SGp4VUx0MmJjeVpNd2MzYnR6UWxpQWlDbitpaVpMb0FTVno1c3hZc0dBQm15dDlBUVpXTlJoWUZXSmdwVThSTnpIczM3OGZ2WHIxUXA0OGVZS0ZWMUU1YytaRWp4NDlzSGZ2WG9mczY1Q0l3dCtCQXdkUXFWSWxaTW1TQllzV0xXSlEvUW9Nckdvd3NDckV3RXBmNHRhdFc3THRXTjI2ZFJFL2Z2eGc0VFZPbkRpeXMyN1JVZmVWSzFlMEpZaUlRc2ZMeXdzVktsUkExcXhaWlE4bURLcGZqNEZWRFFaV2hSaFk2V3VKZzRrNEU5S3ZYejhVS0ZBZ1dIZ1ZsVDE3ZG5UdDJoVTdkKzZVdlJRUUVZVWt1dUFUN2VQRjBOT2lCNU1sUzViZzdkdTMybHo2V2d5c2FqQ3dLc1RBU3VIbHpwMDc4dkpkZ3dZTmtDaFJvbURoMWRuWldmYVhPSFhxVlB6NTU1L3lJRVZFamt0OEIzaDZlcUpjdVhMeXgrM1NwVXNaVk1NUkE2c2FES3dLTWJCU1JCQUhIdEVGemNDQkExR2tTSkZnNFZXVXVJbWlVNmRPMkxwMUsxNjhlS0V0UlVSR0o0THF2bjM3VUxac1diaTR1TWlob3hsVXd4OERxeG9NckFveHNKSUs5Ky9meDdKbHk5Q2tTUk1rU1pJa1dIaU5HVE9tN0xKbTRzU0o4a3VXWjErSmpFZjhYWXViTTh1VUtTTzd6MXUrZkRtSGlJNUFES3hxTUxBcXhNQktxb21EMU5HalJ6RjA2RkNVS0ZFQ1VhSkVDUlpneFRDTDdkdTN4OGFORy9IMDZWTnRLU0t5UnlLb2luNmVTNVVxSlhzVldiRmlCWU9xQWd5c2FqQ3dLc1RBU3BIdG4zLytrUWV4RmkxYUlIbnk1TUhDYS9UbzBWR3hZa1dNR3pjT1o4NmM0ZGxYSWpzaC9sWjM3OTZOa2lWTHl1QzBjdVZLQmxXRkdGalZZR0JWaUlHVmJNbjc5Ky9oNStlSGtTTkhvblRwMG9nYU5XcXdBSnNtVFJxMGJ0MGE2OWF0ZzcrL3Y3WVVFZGtLRVZSMzdkb2xyNTdrenAwYnExZXZabENOQkF5c2FqQ3dLc1RBU3Jic3laTW5XTE5tRFZxMWFvWFVxVk1IQzYvUm9rV1ROMjZNR2pWSzdzY2k3QkpSNUJCQmRjZU9IU2hldkxnY1pFVDgzZkp2TXZJd3NLckJ3S29RQXl2WkMzRkFQSFhxRk1hT0hTdjdiQlNCMVRyQXBreVpFcTZ1cmxpMWFoVWVQWHFrTFVWRUVVbjhYVzdmdmgzRmloVkQzcng1c1hidFdnWlZHOERBcWdZRHEwSU1yR1N2QWdJQ3NHSERCclJ0MnhicDBxVUxGbDVGVXdMUmRtNzQ4T0U0ZHV3WUQ2QkU0VXdFMVczYnRxRm8wYUxJbHkrZmJLYkR2elBid2NDcUJnT3JRZ3lzWkFUaTRIbnUzRGxNbURBQjMzenpEV0xFaUJFc3dDWkxsZ3hObXphVmZUNCtmUGhRVzRxSXZwVDRXeFA5SjR2K2xmUG56eTkvTkRLbzJoNEdWalVZV0JWaVlDVWpldmJzR2JaczJZSU9IVG9nWThhTXdjS3I2RVpMbkJVYVBIZ3dEaDgrekJ0Q2lFSkJCTlhObXplamNPSENjaWhtMGUwY2c2cnRZbUJWZzRGVklRWldNanB4b0wxNDhTSW1UNTZNYXRXcUlWYXNXTUVDYk9MRWlkR29VU01zWHJ3WTkrN2QwNVlpSWtIOC9XemF0RWtlSndvV0xDai9uMEhWOWpHd3FzSEFxaEFES3prYU1SU3N1SnU1UzVjdXlKbzFhN0R3S2tvY2xQdjM3dzl2YjIvODk5OS8ybEpFamtXRVVuRVdWWnhORmNjSWNYWlZoRmV5RHd5c2FqQ3dLc1RBU283dTh1WExtRDU5T3I3Ly9udkVqaDA3V0hoTmtDQUI2dGV2RDNkM2Qvejk5OS9hRWtUR0pZS3FhSmNxMnFlS3kvK2l2U3FEcXYxaFlGV0RnVlVoQmxhaUlQLysrNjhjbmFkNzkrNXl2SFByOENwSzNBM2R1M2R2L1BiYmIzano1bzIyRkpIOUUwRlYzT2t2OW5GeFE1WG9BWUJCMVg0eHNLckJ3S29RQXl2UngxMjdkZzJ6Wjg5R3JWcTFFRGR1M0dEaE5WNjhlS2hkdXpibXpwMkxHemR1YUVzUTJSY1JWRVhmcWFJUFZkR1hxdWhUbFVIVi9qR3dxc0hBcWhBREsxSG92SDc5R3Z2MzcwZXZYcjNrU0Q3VzRWV1VPRGowNk5FRGUvZnVsWThsc21VaXFJclJxTVMrTEVhbkV1MjZHVlNOZzRGVkRRWldoUmhZaWI3T3paczNNWC8rZk5TdFd4Zng0OGNQRmw3anhJbURHalZxWU9iTW1iaHk1WXEyQkZIa0U5MjRpZkg5eFRqL1lyei9uVHQzTXFnYUVBT3JHZ3lzQ2pHd0VvV2Q2RTNnd0lFRDZOdTNyN3lyMmpxOGlzcWVQVHU2ZGVzbXc0Rm9KMHVrbWdpcUsxZXVsQ0ZHakFJbjJtb3pxQm9YQTZzYURLd0tNYkFTaGI4N2QrNWcwYUpGYU5DZ0FSSW1UQmdzdkRvN08rUGJiNy9GMUtsVGNlblNKWVlHaWxBaXFLNVlzUUk1YytaRXFWS2xzR2ZQSHU1ekRvQ0JWUTBHVm9VWVdJa2kxdHUzYjNIbzBDRU1IRGhRM24xdEhWNUZaYzZjR1owNmRaSjNaWXMrWW9uQ2d3aXF5NWN2bDcxZGxDNWRXcmF0WmxCMUhBeXNhakN3S3NUQVNxVFcvZnYzc1hUcFVqUnAwZ1JKa2lRSkZsNWp4b3lKS2xXcVlPTEVpZktBdzRCQlgwcjhRUEx3OElDTGl3dktsaTJMZmZ2MmNUOXlRQXlzYWpDd0tzVEFTaFI1eEZtd28wZVBZdWpRb2ZKTzdTaFJvZ1FMc0JreVpFRDc5dTNsY0poUG56N1ZsaUw2a0FpcTRvZVFhQzlkcmx3NWVIcDZNcWc2TUFaV05SaFlGV0pnSmJJZC8venpqMnh2Mkx4NWN5UlBuanhZZUkwZVBUb3FWcXlJY2VQRzRjeVpNd3dqSkltZ3VtVEpFbVRMbGczbHk1ZVhnMXB3M3lBR1ZqVVlXQlZpWUNXeVRhS2Z6T1BIajJQa3lKR3lEV0xVcUZHREJkZzBhZEtnZGV2V2NuUWlmMzkvYlNseUZDS29MbDY4R0ZtelprV0ZDaFhnNWVXbHpTRmlZRldGZ1ZVaEJsWWkrL0RreVJQWjBYdkxsaTJSS2xXcVlPRTFXclJvc3IzaTZOR2o1ZCswQ0x0a1RLSUxOZEVEUlpZc1dWQ3BVaVhablJwUlNBeXNhakN3S3NUQVNtUi94Q1hmVTZkT1llellzZkl5c0FpczFnRTJaY3FVY0hWMXhhcFZxL0Q0OFdOdEtiSm5JcWd1WExoUTlpcnh6VGZmNE9EQmc5b2NvZzh4c0tyQndLb1FBeXVSL1FzSUNNQ0dEUnZRdG0xYnBFMmJObGg0RlUwSlJFZnh3NGNQeDdGangzajIxYzZJb09ydTdpNkRhdVhLbGVIdDdhM05JZm80QmxZMUdGZ1ZZbUFsTWhaeDl2WGN1WE53YzNPVForSml4SWdSTE1BbVM1WU16Wm8xazEwZlBYejRVRnVLYk0yYk4yL2swTCtaTW1XU1haMzkvdnZ2Mmh5aXoyTmdWWU9CVlNFR1ZpSmplL2JzR2JaczJZSU9IVG9nWThhTXdjS3I2RWFyYU5HaUdEeDRNSHg4ZkdRM1d4UzVSRkNkTjIrZTNGYlZxbFhENGNPSHRUbEVvY2ZBcWdZRHEwSU1yRVNPUTV4OXZYanhJaVpQbml6RFVLeFlzWUlGMk1TSkU2TlJvMGF5bTZSNzkrNXBTNUVLSXFqT25UdFg5cjByaHU0VlB5Q0l2aFlEcXhvTXJBb3hzQkk1TGpFVTdQYnQyOUdsU3hmWlBaSjFlQlVsdmh2NjkrOHYyMDJLdHBRVS9sNi9mbzNaczJjamZmcjArTzY3NzNEa3lCRnREdEhYWTJCVmc0RlZJUVpXSXJLNGZQa3lwaytmanVyVnE4UFoyVGxZZUUyWU1DSHExNitQQlFzVzRQYnQyOW9TOUxWRVVKMDFhNVlNcXVMekZpT2VFWVVYQmxZMUdGZ1ZZbUFsSWozLy92c3ZkdS9lalY5KytRVTVjdVFJRmw1RjVjdVhEMzM2OUpFaks0bkwyUlE2cjE2OXdzeVpNNUV1WFRyVXFGRkQ5dHhBRk40WVdOVmdZRldJZ1pXSVF1UGF0V3Z5MG5XdFdyVVFOMjdjWU9FMVhyeDRxRjI3dG15RGVlUEdEVzBKc2lhQzZvd1pNMlMzWXpWcjFvU3ZyNjgyaHlqOE1iQ3F3Y0NxRUFNckVYMHBjVGw3Ly83OStQWFhYNUVuVDU1ZzRWV1VPRkQyN05rVGUvZnVsWTkxWk9KTTliUnAwMlJRRldGZkRMZExGTkVZV05WZ1lGV0lnWldJd3VybXpadXlLNmE2ZGVzaWZ2ejR3Y0pybkRoeDVLVnZjUm44NnRXcjJoTEdKNExxMUtsVGtTWk5Hdnp3d3cvdzgvUFQ1aEJGUEFaV05SaFlGV0pnSmFMd0pOcXppdkh0Ky9idGl3SUZDZ1FMcjZLeVo4K09idDI2WWVmT25UTFVHWTE0VDFPbVRFSHExS2xsTXdueEhVdWtHZ09yR2d5c0NqR3dFbEZFdW5Qbmpod0R2MEdEQnJLbkFldndLbm9pRUYwNWlUT1JseTVka3YzRTJxdVhMMS9LL20xVHBVb2x6elNmT25WS20wT2tIZ09yR2d5c0NqR3dFcEVxYjkrK2xVT01EaHc0RUlVTEZ3NFdYa1dKOGZJN2RlcUViZHUyeVQ1aTdZRjRuUk1uVHBSQnRWNjllamg5K3JRMmh5anlNTENxd2NDcUVBTXJFVVdXKy9mdlkrblNwV2pTcEFtU0pFa1NMTHpHakJsVGpxRS9hZElrZWZDMXRiT3ZJcWhPbURBQktWT21sUDNUbmpselJwdERGUGtZV05WZ1lGV0lnWldJYk1HN2QrL2tLRTlEaHc1RjhlTEZFU1ZLbEdBQlZneFoycjU5ZTJ6YXRBbFBuejdWbGxKUEJGVTNOemNaVkgvODhVZWNQWHRXbTBOa094aFkxV0JnVllpQmxZaHMwY09IRDdGaXhRbzBiOTRjeVpNbkR4WmVvMGVQam9vVksyTDgrUEh5ekthS3M2L1BueitYejVjaVJRbzBiTmdRNTg2ZDArWVEyUjRHVmpVWVdCVmlZQ1VpVy9mKy9YdlpmK21JRVNOUXVuUnBSSTBhTlZpQUZYMmN0bW5UQnV2V3JZTy92NysyVlBoNDl1d1p4bzRkSzROcW8wYU5jUDc4ZVcwT2tlMWlZRldEZ1ZVaEJsWWlzamVQSHovR21qVnIwTEpsUzNtemszVjRqUll0R3NxV0xZdlJvMGZMN3pjUmRyK0dDS3BqeG95UlozY2JOMjRzQXdDUnZXQmdWWU9CVlNFR1ZpS3laeUtRaWk2a1JMZ3NYNzY4REt6V0FWYTBOZjNwcDUrd2F0VXFHWFEvUjdTUEZXRlhCRlZ4TTlpRkN4ZTBPVVQyZzRGVkRRWldoUmhZaWNoSUFnSUNzSDc5ZXJSdDIxWTJGYkFPcjZJcFFhbFNwVEI4K0hBNWxyLzEyVmNSVkVlTkdvVmt5WktoV2JObXVIanhvamFIeVA0d3NLckJ3S29RQTJ2RUV6ZUVYTHQyRFd2WHJzV1FJVVBrK090aW5IV1c3VlcvZnYyd1lNRUNlY2J1di8vKzA3WWdDYmR1M2NMR2pSc3hiTmd3OU9yVlMvZnpzN1hxMGFNSFhGMWRVYTVjT2FSUG4vNkR0cTlpNElMY3VYUExkckhpLzhVQlhqUXowRnVYdlpUWWgrZk9uU3ZiL0lwUng4Z3hNYkNxd2NDcUVBTnJ4QkVqMzRqeDFmUGx5eGZzSU1teWp4STMyUXdhTkFpM2I5L1d0cWpqZWYzNnRld250Vml4WXJxZkVjdTJLMUdpUlBJSDh0V3JWN1V0U282Q2dWVU5CbGFGR0ZnamhoaExQVk9tVElFSGp2Z0pFNkZNeGFwbzA2VVh1ZzhZaVI2RFJyTnNyTG9QSElVT1BRZWdXcTE2U0pNK1krQzJpeDA3Tm1iTW1QSFZOKy9ZSzNHR1RweDl0SHdPY2VQRlI4bHlsZEN5WXcvODBuK0U3bWRvVHlXMnQydUhYOUNzYldmZCtmWlk0ajExNmpVSTFlczBSSWJNMlFLM1hZd1lNV1FiWHpIU0dEa0dCbFkxR0ZnVlltQU5mK1BHalFzOFVHVExrUnVqcHkrRTc1WEhPSFhyT2N0TzZ1VE5aMWkwZmc4cVZxc1p1QzJyVjY5dU44T0ZocFc0TW1DNWZKNGhVMVlNblRBTFIvNTZxUHRac1d5M1BMWWRRUFhhRFFMM1lkRjd3cE1uVDdTdFRFYkd3S29HQTZ0Q0RLemhTL1RYYURrNHRQK2xINE9xQVdyaXZPVklsRGlwM0thVktsWENxMWV2dEsxdFRDS3NXdmJocG0wNk1hZ2FvR1o3YkVieWxLbmxOaTFhdEdpa2poUkdhakN3cXNIQXFoQURhL2padm4xNzRJRisrS1M1dWdjT2xuM1dKcThUU0pvOGhkeTJ2L3p5aTdiRmpjZkh4eWR3U05SZkI0L1YvU3hZOWxtN2psNUUyZ3ptWmtxaUZ3UXlOZ1pXTlJoWUZXSmdEUi9pTXB1bEEzUFJ2ay92Z01HeTcxcSs3V0RnWlhKdmIyOXR5eHZIdi8vK2kyelp6TzBlWFgvK1JmY3pZTmwzYlQ1d0VyR2NuZVUyM3J4NXM3Ymx5WWdZV05WZ1lGV0lnVFY4aUNFanhVR2dRSkVTOExzZW9IdXdZTmwvdGUzYVIyN25NbVhLYUZ2ZU9HYlBuaTNmVzVic09YSHM4aVBkOTgreS8rbzFkTHpjempsejVwUmQ3cEV4TWJDcXdjQ3FFQU5yMkluK09sT25OcmNQbTd0eW0rNUJnbVdNT256eEh1TEVqU2UzOWVuVHA3VTl3UDZKNEdMcEVXRGN6Q1c2NzUxbGpQSzkrZ1RKVTVxdkJ2MzIyMi9hSGtCR3c4Q3FCZ09yUWd5c1llZmw1U1cvL0VVM011THVjcjJEQk1zNDFkQzFuZHplb29OMm96aDc5cXg4VDRtVEp1T05nZzVRUDNmdkw3ZTNHQTJNakltQlZRMEdWb1VZV01QT3pjMU5mdmszYU5GVzkrREFNbFpOZGw4bHQzZVZLbFcwUGNEK0xWcTBTTDZucWpYcTZyNW5sckZLZE5rbXRuZkJnZ1cxUFlDTWhvRlZEUVpXaFJoWXc2NXAwNmJ5eTMrSTIwemRnd1BMV0NYdXRoYmJXNHc1YnhUZHVuV1Q3NmxiditHNjc1bGxyQkpOVzhUMmpoWXRHZ2NUTUNnR1ZqVVlXQlZpWUEyN21qWE5uY3RQV2JCYTkrREFNbGFKRzVMRTloYWpCeG1GR0Q5ZnZDY3hRSURlZTJZWnI1eGp4NUhibkgyeUdoTURxeG9NckFveHNJYmQ5OTkvTDcvNHB5OWVwM3RnWUJtcmpsL3psOXRibkoweUNsZFhWL21lMkgrdzQxUzgrQW5rTnZmMzk5ZjJBaklTQmxZMUdGZ1ZZbUFOT3daV3h5b0dWcFlSaW9IVjJCaFkxV0JnVllpQk5ld1lXQjJyR0ZoWlJpZ0dWbU5qWUZXRGdWVWhCdGF3WTJCMXJHSmdaUm1oR0ZpTmpZRlZEUVpXaFJoWXc0NkIxYkdLZ1pWbGhHSmdOVFlHVmpVWVdCVmlZQTA3QmxiSEtnWldsaEdLZ2RYWUdGalZZR0JWaUlFMTdCaFlIYXNZV0ZsR0tBWldZMk5nVllPQlZTRUcxckJqWUhXc1ltQmxHYUVZV0kyTmdWVU5CbGFGR0ZqRGpvSFZzWXFCbFdXRVltQTFOZ1pXTlJoWUZXSmdEVHNHVnNjcUJsYVdFWXFCMWRnWVdOVmdZRldJZ1RYc0dGZ2RxeGhZV1VZb0JsWmpZMkJWZzRGVklRYldzR05nZGF4aVlHVVpvUmhZalkyQlZRMEdWb1VZV01PT2dkV3hpb0dWWllSaVlEVTJCbFkxR0ZnVlltQU5Pd1pXeHlvR1ZwWVJpb0hWMkJoWTFXQmdWWWlCTmV3WVdCMnJHRmhaUmlnR1ZtTmpZRldEZ1ZVaEJ0YXdzKzNBK2hUZW51c3hvRnNyVkt2eURZcVdxb2h5dFZxaDdhZ04ySFR4NlllUHYvRUErMzN2d2kvazlGRFdpVXRYc2VkQ2dPNDhveFFEcTQzV2xZdVlPV29vdW96YWlGMVhkT1ovb283NzdjVEF2a1BRZThFNUhOT1piOFJpWURVMkJsWTFHRmdWWW1BTk81c05yRGYreHRKZTVSRGY5TnFjbktJaVFkcnN5Skk5RzFMRUUvODJWWkxLNkw3dE5rNW9qejkrZENXYUYwdUpORTEyNGJEMWVrSlYvdGpsM2dVRlUyUkUzWFgzZE9ZYnB4aFliYlF1N0VTZHBLYjlPcWtyM0Mvb3pQOUUrV3p0Z2xTbTl4KzMrZ1o0Njh3M1lqR3dHaHNEcXhvTXJBb3hzSWFkclFaV244MmRrTnIwdXFKa2I0OUpoLzRKbW5mak5sYVByNC9rcG5sT2FkcGhvWFp3UDdTbU9SS2JwaVZwL0RXQjlTN2NHeVF6ZlE3SkdWanRFQU1yQXlzWkN3T3JHZ3lzQ2pHd2hwMXRCdFlIOEdpZndmUzY0cUhTb2xzZnpyOXhBMU9xSnpUTlQ0anZsdCtXMHo0WFdQMHUvb1dOT3oyeGVQTmhiRG4xS01UOGNBcXNsNjloMDNaUGVPdzVpd05mZUZsWFZUR3cybWg5TXJBK3hWSFRkOTJLelY1WTYzUDdneVl2d1FOckFMd1BINEhIZGovcyswdW4yWXlzUi9EMDhzYlNyVWV3N2V4am5mbTJYd3lzeHNiQXFnWURxMElNckdGbnE0RjFXZHQwcHRjVkRmbEhuY1h4RCtZL2hmZWVwZWczZERJbWV0M0RuaW5sRWMvMEhzVDdrR0VzWVJXNG5URS85cmp2ZXJTdGxCWE9Wdk5GRTROVUZRZGl3WmtBVS9qOUN5TkxpL0JybVJjTjhTc3NnNWZwTmF6b21nZk9NZE9oMWtwektMYlVjZThKS0JBL09oSlVXb0VEWXRxTnYrRXhxQ2JTUkxONmpwaFpVTEhmWGh5NEViU2NMUlFEcTQzV1J3S3I3NUhWYUZVMmRkQitaYXE0dVp0aDBKNjdnYzFoTElFMVRvVmhhRi9aNnJIUk1xQmNyNTN3dkc1Wm4rbnZadXRvVkV3ZnpXcDlNWkcrMm5Bc1B2dXhjR3VieGNCcWJBeXNhakN3S3NUQUduYTIyaVRnOE1hT1NDTVBxS2xSck1Wb3VHMytBejRmQ1gvZUcwZWkzamVaRWNYMCtLaVp2a010MXpGWWZ0RTA3OHBwOUNrVzNiU09xTWhVWnpDR3pscU84VzZEVU1ORlRITkMyZzRINFhQcmJ5d2UwQXBsTTBhUmo4dFF1U2thRGpxSXcrSXNienNSbXVPajh0Sy9nejJmcjljSVpCR3ZyZmdTVTdBTmFyN2dsTGtodWsxZWh2SGplcUprSXZOcmIyQmpUUXdZV0cyMGRBTHJpYk03MFNpajJJK2NrYlBCTUF5ZnRSRDkybGMyTjRlSi94MkdIL2FYajdNRVZ2RVpPTVhLang5NlQ4ZndrVDFSUHBXWUZndEZScHlFcjNpT1B6M1JOSzJZbGczVis4MkQyNnpwYUZVdWlWd3VlWXZkWDlHVUp2S0tnZFhZR0ZqVllHQlZpSUUxN0d6MnBxdGI5N0JtWkcxekVMUlVqSlRJVnZwSE5CdTRCTXVPQjcrc3I5Y2t3Ty80TWxUUG1nang4Z3pDdXN0Qmp6MjZ1eTh5aVBVVm5vZDljcHBlazREUUJ0YkgyTkEzcCtseFVWQm8ybFh0TVUreGQxcGxKRTZRR1JYR25qYUhCUnNwQmxZYnJROENxeisyalN5S3FLYjNsYUw1ZGh3TS9MSDJDSnVHbDBKMDAvUmt6Y3doTXlpd1prTHo5VlkzSWg2ZWlSTE9wdWtwV21HQjZRZWNyK2N3dWQ5R0tiNEErN1hIbkRpK0FLV1NKa1M2cXRPd3hVYWJzZWdWQTZ1eE1iQ3F3Y0NxRUFOcjJObHVZRFhYTWQvOUdOMjdIU29WeVJMc3NyK1RVd1pVSG5FWWg3UURlV2h2dWpwKy9od1dUMnlCRkdJZCthWmlwN3hjR3BiQStoVDdabFJDRFBIdkRIWFJlYzVCN0xVS3g3Wldsc0FxS21iTW1JYW9LRkhFMlhHakJkWnJHRnRLWEFuSWdqYTdyRzQ2RkhWcUdVckhNajAyZlhjc3YyUVZXTE1QdzhaZ29mTUdKbjBUMjdTT1RHaTEvUitjOEZ1RWtqSEZ0cytFcXIyWFlYbUlIMzMyVkF5c3hzYkFxZ1lEcTBJTXJHRm42NEUxV0YyK2huWExaNk5EZytKSUtBN1FUcWxSZDVVNVRINHNzSjQ0ZndSamU3UkEyU0s1a0RweExQbGVBeXZmbEhBSXJLWnBmeDdCcnhYRTh0cDZZNlJEZ1ZvOU1XajErWTgyWTRpc3NnVFdxRkdqNHZYcjEzWmRyMTY5d3VEQmd4RTNibHo1bmd3VldLLzRvbk0yMDcramxzVjRyVDEyWUYwNkNOZDBwbmx4YTJINnVhREFHcXZ5YWh5MGZwelloMy9XYmw1Y0xQYmgrMWd6dUlyOE96SHZxekdRcW1oOXRCcTdBenN1c1EwcjJRNEdWalVZV0JWaVlBMDdXd3lzSjg1Nlkrd29Od3h3UDRPak92UGw1ZEl4WmVWWnpYZzFOc3F1ZkhRRDYvbTkrTW5GZlBiTktXRTI1SzlZRC9VN2o4SEk2YjJRV1V3TGJXQmRFaUt3ZWc0MUwyOEpyS0p1M01mVzVWUFFzbFlwcEJHWFljVjhVMlg2YVJNOGJTaTBHcVZKd051M2I5R3VYVHNVTGx3WURSbzBrTy9KcmdMcmpVZnd1V2IxYit2QUt0dGZIMGVYN0taL1J5c1hlQU5oWUYwNllBNnNjV3BpbWxWZ2RhNjY1b1BBdWx3RzFnU29FdmlqNnlsOHZMZGdRTWY2S0poZW5IM1Y5dFdzN1RIcmxQMkVWZ1pXWTJOZ1ZZT0JWU0VHMXJDenljRHFPd2NGb3BnT29tazZZOWtsL2NjYzJ6Y0ltVXl2TzNycFpmSk8vUThENjFQc24ybStWSis0N25Mc3NRb0hnVzFZODA3R2prOEZWdG0xVm15VVh4aThheTJmVFIzTVRRb3NnZlg2QSt6elBvTURsdWU0Y2cyclozWkRQbkhaMXFrb0JoMnhuZEd6akJCWVg3eDRnUm8xYXVEYmI3L0ZzMmZQN0t3TmF3QjJqQytIT0tiWG0zdnN4YUF1cXM1dlJmV0VwdjBsWlhzcytWTk11NG94c2tsQU52eThOOFNsK3pQTFVWYnNXNms3eWIrUHdDWUIrU3o3czZVc1RRSXN6UW9DNE9OM0JsdlBtbS9XT25Yck1UeDNMWVpySVdmNStlVWRlK0dyUjRsVFhReXN4c2JBcWdZRHEwSU1yR0ZuazAwQ3JwM0RBSGwzZjN5VUdYZGFaN2pKUjlnd3FBaWltVjUzdHI2K2N2Nmh0YTR5c0NadXRGTUxySSt4dm5jTzB6cWlXdDBNSmVvQlZ2MGlwcHNPOERuSFlhc01tYWJBMmtnRTFtU29zOVlTV0MzTE84Rmx5Qm1ycnJYK3dlcGZzcG1YbDRIMUdpWlVGQWY4MUdpNDNyS3NxVzVjeHZEQ3BzYzQ1Y0d2M3BhQUVQbGw3NEgxd1lNSEtGYXNHRnEyYkluLy92dFBUck8zbTY2ODVsYVdQNlFTMXRzYTJORy8zNUhweUN2MnFieVRzRjJHVG45c0dWcFF2cTkwUC85bTFjekZIenNtZmlPN2FZdFhjNzA4b3hvWVdLTVZRNjhEUWYycUh2ZVpqWkxpYkgvS05saDA4VGs4NTFaRkxOUGprcmZZWTdXK3A5ZzdzYmg4bnV5RFQrdDBJV2VieGNCcWJBeXNhakN3S3NUQUduYTIyb2JWWjlkUUZKQTNpTVJHMXUrNm9kZjBkWmkvZmpmbXpKK09uMzhzWXI0QkszMXJ6RHBqdm96cHM2MmJlV1NzM0wweGFkMUI3TG44SE40ZURaQkFQQzVkZmZTWXZ4TUxseTlGejJZbHRPRmVUWlh4VjZ6NlN6eWY1V3hxRkxoMFhZRUYyeTdKRUh4NFExdHpGMEt4aTZIeG1EVndYN1VTL2R1V1IvSllNYzNMYXpkZGViclhOYitlMUxYUVlmb1dMRnEvRldONlZrZFNNUzNQVUt5M29adXc3RG13WHI1OEdkbXlaWlB0VnYvM3YvOXBVKzB2c1ByNUxrQnAyV3drRzM0WXVRN3V5eGVnYmRuRXBuOUhSWjVCSndKN2xUaHhhZ1BxcEJTUFM0eGlQOC9DOUxYYjRUYWdJVEpHTlUyTFhoaGQ5cHB2eGdvTXJHSzdadm9SM2Vkc3hjd1pRMUExZzVnV0c4VkhuNUhyUEhGeUphb21FTlBTb2xMUGhaaTlmZy9tekJpQThzbkZ0UHpvc3M5K2JzSmlZRFUyQmxZMUdGZ1ZZbUFOTzl1OTZlb3B2SGZQUW9QaXFXWC9xdUkxQmxWY1pLcldIek44clVicHViQVhydUltRlRrL1BacHZmWUJUMXk1Z2ZNTnNzbXVnd0dVVEZFUFRHZXZSUHFmNGR3SDA5REt2NDlDR2J1WjJxYUxTZG9HSGFJcHcvUXBtL0Z3c2VPOEV5YjVCaDZsOWd0OTBkZjBhNW5ZdGkwVFdqek5WN053L1laUjNpRHU4STduc05iRDYrdm9pZGVyVW1EdDNyallsaVAxMWEvVVlPMmIraEN3eHJQZVhtTWhVZnc0Mnl4OVFRZVhqT1J1MVhNeVg3QzBWTFcwVi9MemlTdURsZTB0Z2pWTitBRm9VaTJmMTJHUW8zdDE2NElBQWVLN3NneUtKZzlZbEswNCsxSjE2K2lQdHhXMnpHRmlOallGVkRRWldoUmhZdzg1MkEydFFIVHZwaHlYTFY4RnRsZ2VtcmZMQ2xuUDZsOWhQL0hrZVN4WXZnNXY3VHF3L1oyazM2bytEdiszR3RMbkxNVzN0TVhoKzlHem5VL2djM28vcGM1Wmg4aHBmZUZ1MUJUeDI0Z2ptTDFpT3FXdU93dk1UZlZYNm5qMkJ4Y3RXd0czZU9pellkODJtK2wrMWxEMEcxdTNidHlOWnNtVFlzbVdMTmlVNGUrMkgxZS9DV1N4ZHVnSVRGMjdIaXFNUEF2dFAvYUJ1L0lNOU83ZGp5dnpWbUx2dFhHQlhicnAxNHg2MmJWeVBTUXUyWTgySmo1d3h2WElUbXpadXhLUTV5ekY5bmU4bjkybGJMUVpXWTJOZ1ZZT0JWU0VHMXJDemg4REtDcit5dDhDNllNRUNwRXFWQ2tlT0hOR21mTWhlQXl2cjY0dUIxZGdZV05WZ1lGV0lnVFhzR0ZnZHErd2xzSW8ycWtPSERrV1dMRm53MTE5L2FWUDFNYkE2WGpHd0doc0RxeG9NckFveHNJWWRBNnRqbFQwRVZ0SEhhcHMyYlZDa1NCSGN2MzlmbS9weERLeU9Wd3lzeHNiQXFnWURxMElNckdISHdPcFlaZXVCVmZTeEt2Yko2dFdyNC9uejU5clVUMk5nZGJ4aVlEVTJCbFkxR0ZnVlltQU5Pd1pXeHlwYkRxeVdQbFpidFdvVjJNZHFhREN3T2w0eHNCb2JBNnNhREt3S01iQ0dIUU9yWTVXdEJsYlJ4MnJXckZrLzZHTTFOQmhZSGE4WVdJMk5nVlVOQmxhRkdGakRqb0hWc2NvV0ErdXhZOGRrVHdEejVzM1RwbndaQmxiSEt3WldZMk5nVllPQlZTRUcxckJqWUhXc3NyWEF1bTNiTmlSUG5seis5MnN4c0RwZU1iQWFHd09yR2d5c0NqR3doaDBEcTJPVkxRWFcrZlBueXpPclI0OGUxYVo4SFFaV3h5c0dWbU5qWUZXRGdWVWhCdGF3WTJCMXJMS0Z3Q3JhcUE0Wk1rUzJXZjFjSDZ1aHdjRHFlTVhBYW13TXJHb3dzQ3JFd0JwMkRLeU9WWkVkV01YZC82MWJ0MGJSb2tWRDFjZHFhREN3T2w0eHNCb2JBNnNhREt3S01iQ0dIUU9yWTFWa0JsYlJyNnJvWDFYc2M2SHRZelUwR0ZnZHJ4aFlqWTJCVlEwR1ZvVVlXTU9PZ2RXeEtySUNxemliS2thdUVpTllpWkdzd2hNRHErTVZBNnV4TWJDcXdjQ3FFQU5yMkRHd09sWkZSbUFWN1ZTelpNbUNvVU9IZm5FZnE2SEJ3T3A0eGNCcWJBeXNhakN3S3NUQUduWU1ySTVWcWdPcjZBRkE5QVRnN3U2dVRRbC9ES3lPVnd5c3hzYkFxZ1lEcTBJTXJHRlhzMlpOK2NVL1pjRnEzUU1EeTFoMTdQSWp1YjFqeElpaDdRRVJ4OUxINnZidDI3VXBFYU5seTVieVBRMmRNRXYzUGJPTVY3SGp4SlhiL09uVHA5cGVRRWJDd0tvR0E2dENES3hoMTZSSkUvbkZQMnppYk4wREE4dFl0Y2YzTDdtOWt5UkpvdTBCRVVPTVdwVTZkV281aWxWRTY5cTFxM3hQM1FlTTFIM1BMR1BWa2I4ZXl1MGRKVXFVY0c4UFRiYUJnVlVOQmxhRkdGakRidXpZc2ZMTHY5RlA3WFVQRGl4ajFkU0ZhK1QycmxTcGtyWUhoQy9SUm5YdzRNR3lqOVhMbHk5clV5T1dhRzRnM3RPM3RlcnJ2bWVXc1dySnB2MXllK2ZMbDAvYkE4aG9HRmpWWUdCVmlJRTE3UGJ2TjMvNVozSEppWk0zbitrZUlGakdxV1p0Tzh2dDNhdFhMMjBQQ0QraWo5VldyVnFoV0xGaWVQRGdnVFkxNHAwNmRVcStwK1FwVThrMnVucnZtMldjNnR4N2lOemVZbDhqWTJKZ1ZZT0JWU0VHMXJCNy9mcTFiR2NvRGdBTDErM1dQVUN3akZFK2x4NGdmc0pFY2x1SDk2VjYwYS9xZDk5OUoyL2llL0hpaFRaVmpmZnYzeU43OXV6eWZVMmF2MEwzdmJPTVVYN1hBNUE2YlhxNXJYZnUzS250QVdRMERLeHFNTEFxeE1BYVBnWU5HaVFQQUVWTGxjT0pHMDkxRHhRcys2K3VmWWZKN1Z5OGVIRnR5NGNQU3grcmJkdTJqYlEyaFZPblRwWHZMVWVlL1BDOStrVDMvYlBzdndhUG55RzNzMmh5SW42b2tERXhzS3JCd0tvUUEydjRlUGp3SVpJbVRTb1BCSDFIVE5ROVVMRHN1OWJ1UFlyb01XTEliYng3OTI1dHk0ZmRwVXVYWkIrcnc0WU5pNUErVmtOTG5PSE5rQ0dEZkg4L2QrK3YreG13N0x0MkhENlBPSEhqeVcyOFlzVUtiY3VURVRHd3FzSEFxaEFEYS9oWnQyNmRQQkJFalJvVkUrWjY2QjR3V1BaWlc3eFBJM25LMUhMN3RtdlhUdHZpWVhma3lCSFp4K3FDQlF1MEtaSHJ0OTkrays5UmxEZ1RwL2Rac095elJPOFdHVEpsbGR1MmJ0MjZrZnJqaUNJZUE2c2FES3dLTWJDR3IzNzkrZ1dHMWg2RFJzdjJZbm9IRDViOTFPemxXNUFzUlVxNVhjdVdMUnR1WS9odjJXSmFiN0prMkxGamh6YkZOa3ljT0RFd3RMYnIxaGUrVng3cmZpNHMreW5SSzBEYURKbmtOaTFZc0NBZVAzNnNiVzB5S2daV05SaFlGV0pnRFYvaXJNWEFnUU1ERC9qNUNoV0Q2QWFKd2RYK2F2VnVIOVNzYis1alYxU0ZDaFhDTGF6T25UdFg5ckhxNit1clRiRXQxcUhWSlZkZXVNMWV4bmF0ZGxnYmYvUERqODNieVA1V3hiWXNYTGd3SGoxNnBHMWxNaklHVmpVWVdCVmlZSTBZWW1RaWNhblhjdEFYbDVPcjFxd3JiOW9aTUhvS0JvK2J6ckt4R2pSMkdub05HWWU2VFZvaWU4NDhnZHN1ZXZUb0dEMTZkTGpjRENWKzBJZ2I5TEpseTRZclY2NW9VMjNUZ1FNSGtDbVQrYXljcUNUSmt1T2I3MzZRWFNKeEg3Yk5FdnR3NzJGdWFOQ2lMWExsS3hpNDdVUmdGVmQvUkk4bTVCZ1lXTlZnWUZXSWdUWGlpREc2eFptcXpKa3pCeDQ0V1BaVDhlTEZRN2R1M2ZEWFgzOXBXelJzUkIrcllnaFUwY09BdUVuUEhvZ3p5ak5uemtUT25EbDFQeU9XYlplenM3TnNjMzN1M0RsdGk1S2pZR0JWZzRGVklRYldpUGZ1M1R1Y09YTUdDeGN1Ukk4ZVBlUUJSSFJmeExLOTZ0eTVNeVpQbmd4dmIyKzhmUGxTMjRKaDkrelpNM3o3N2Jlb1diT204ajVXdzRNNE0zeisvSGtzWGJvVXYvNzZLOXEzYjYvNytkbGppYUdWUlJkUGNlTEVrYzArMnJScG8vczRleW14RDd1NXVja2I2TVIrUjQ2SmdWVU5CbGFGR0ZpSkl0YTllL2RrMjBIeFE0WGp0dHV1dzRjUG8yalJvaWhWcXBUTnRpMG1DaTBHVmpVWVdCVmlZQ1dLT0gvKythZHNFakppeEFoMkkyUUhSRWY2aXhjdmxqZkVpZVliZCsvZTFlWVEyUmNHVmpVWVdCVmlZQ1dLR0Q0K1BraVpNcVZzQ2tMMjVlblRwK2pidDY4Y0RHVGN1SEc4V1luc0RnT3JHZ3lzQ2pHd0VvVy96WnMzeXo1V09WYTdmYnQ4K1RKcTE2NHQyN2lLYmNxejVHUXZHRmpWWUdCVmlJR1ZLSHpObmoxYlhsSStmdnk0Tm9YczNkNjllNUU3ZDI1VXJWcFYzbnhHWk9zWVdOVmdZRldJZ1pVb2ZJaXpid01HREVEMjdObHR2bzlWK25LaVc3THAwNmNqZWZMazZOcTFLMGVMSXB2R3dLb0dBNnRDREt4RVlTZkNqS3VySzBxVUtHRTNmYXpTMS9ubm4zL1FzV05IcEVpUlFwNU5aODhQWklzWVdOVmdZRldJZ1pVb2JFUmZsOVdxVlVPdFdyWEN0ZTlXc20yaWIrVktsU29oWDc1ODhQVDAxS1lTMlFZR1ZqVVlXQlZpWUNYNmVxS1BWZkgzSXpyUzU1azJ4eU9hZ1d6WXNFRU9ZVnV2WGoxY3UzWk5tME1VdVJoWTFXQmdWWWlCbGVqcldQcFlIVGx5Sk84ZWQzQ3ZYcjNDNk5HalpUZFlvaDJ6R05LV0tESXhzS3JCd0tvUUF5dlJseE9qSW9rK1ZoY3RXcVJOSVFKdTM3Nk41czJiSTIzYXRQRHc4SkFERVJCRkJnWldOUmhZRldKZ0pmb3ltelp0a25lSzc5cTFTNXRDRkp3WU5LSllzV0lvV2JJa2poMDdwazBsVW9lQlZRMEdWb1VZV0lsQ2I5YXNXYktQVlQ4L1AyMEtrVDV4ZG5YSmtpVnlmL25wcDU4NHpDc3B4Y0NxQmdPclFneXNSSjhuMnFqMjc5OWY5ckY2OWVwVmJTclI1NGxlSkRqTUs2bkd3S29HQTZ0Q0RLeEVuL2Jtelp2QVBsWkZINXhFWDRQRHZKSktES3hxTUxBcXhNQks5SEZQbno2VnczSCs4TU1QN0dPVndvVmxtTmNxVmFwd21GZUtNQXlzYWpDd0tzVEFTcVJQdERrc1dMQWdPblRvd0Q1V0tWeUovY2t5ekd1WExsMDR6Q3VGT3daV05SaFlGV0pnSmZyUXhZc1haV2Z3b205TlhycWxpQ0thbUhUcTFFa084eXB1Nk9NUEl3b3ZES3hxTUxBcXhNQktGTnloUTRka0g2dUxGeS9XcGhCRnJMTm56OHBoWHZQbXpjdGhYaWxjTUxDcXdjQ3FFQU1yVVpDTkd6Zkt5N1M3ZCsvV3BoQ3BJYzdraS8xUGpKNVd0MjVkOWtaQlljTEFxZ1lEcTBJTXJFUm1NMmZPUkpvMGFkakhLa1VxRHZOSzRZR0JWUTBHVm9VWVdNblJpUTdlUlQrWkxpNHV1SGJ0bWphVktIS0pZVjVidEdnaGgzbGR0bXdaaDNtbEw4TEFxZ1lEcTBJTXJPVElSQityWXV6M1VxVktzWTlWc2tsSGpoeEI4ZUxGWlQvQVI0OGUxYVlTZlJvRHF4b01yQW94c0pLakVuMnNpcjR3UldmdTdHT1ZiSmxsbUZmUlpJWER2RkpvTUxDcXdjQ3FFQU1yT2FJN2QrNmdRSUVDNk5peEk5NjllNmROSmJKdFlwalhmdjM2eWZhdFk4ZU9sZTFkaWZRd3NLckJ3S29RQXlzNW1nc1hMaUJqeG96c1k1WHMxcFVyVitTVmdTeFpzbURUcGszY2ora0RES3hxTUxBcXhNQktqdVQzMzMrWGZhd3VYYnBVbTBKa3Z5ekR2RmF1WEJubnpwM1RwaEl4c0tyQ3dLb1FBeXM1aWcwYk5zZytWdmZzMmFOTkliSi9ZblNzR1RObWNKaFhDb2FCVlEwR1ZvVVlXTWtSaUFPNnVHSGw1TW1UMmhRaVkzbjA2QkU2ZCs0c2c2dm9VNWpEdkRvMkJsWTFHRmdWWW1BbEl4TjNWL2ZwMHdjNWN1VEE5ZXZYdGFsRXhtVVo1alZQbmp6WXYzKy9OcFVjRFFPckdneXNDakd3a2xHSlBsYWJOV3NtKzFnVlo1K0lIQVdIZVNVR1ZqVVlXQlZpWUNVakNnZ0lrRGVpMUtsVEIvLysrNjgybGNpeGlHNnZ4b3daSTd2QjZ0Ky92K3dXaXh3REE2c2FES3dLTWJDUzBZZytWdlBuejQ5T25UcXhqMVVpRThzd3I2SWR0K2doZzhPOEdoOERxeG9NckFveHNKS1JpQzlwMGNlcTZGU2RmVk1TQmNkaFhoMEhBNnNhREt3S01iQ1NVWGg3ZXlORmloUll0bXlaTm9XSVFoSm5WOFZaVm5HMjFkWFZWVjZSSU9OaFlGV0RnVlVoQmxZeWd2WHIxOHZ1ZkVSSDZrVDBlZGJEdklwMnJoem0xVmdZV05WZ1lGV0lnWlhzM2ZUcDA5bkhLdEZYRXNPOGlwc1RSWThDb21jQk5xVXhCZ1pXTlJoWUZXSmdKWHNsTG0zMjd0MGJPWFBtWkIrclJHRzBiOTgrMlhjcmgzazFCZ1pXTlJoWUZXSmdKWHYwK3ZWck5HblNCR1hLbE9GUWxFVGhSSXlPSlViSkVzMXJ4S2haN0wvWWZqR3dxc0hBcWhBREs5a2IwY2ZxTjk5OEl6dEVaeCtyUk9IUGVwaFhNYXd4aDNtMVB3eXNhakN3S3NUQVN2WkU5Q2NwK2xnVkIxUDJzVW9Vc2NRd3IrTEhJWWQ1dFQ4TXJHb3dzQ3JFd0VyMlFud0JaOGlRQWVQR2plT05JVVNLaUwrMVRaczJJVXVXTFBMbUxIR1RGdGsrQmxZMUdGZ1ZZbUFsZTNEdzRFSFp4NnFIaDRjMmhZaFVzaDdtVlhTSHhXRmViUnNEcXhvTXJBb3hzSkt0Vzd0MnJXeExKKzVpSnFMSUpRWWFFQU1PY0poWDI4YkFxZ1lEcTBJTXJHVExwazZkaXJScDArTFVxVlBhRkNLeUJXSm9WekhNcXlneDVDdlpGZ1pXTlJoWUZXSmdKVnNrenRyMDZ0Vkw5ckY2NDhZTmJTb1IyUkx4ZHlxR1FoWm5XMXUwYU1GaFhtMElBNnNhREt3S01iQ1NyUkY5ckRadTNKaDlyQkxaQ2RHZXRYLy8va2lTSkFsR2p4N05ZVjV0QUFPckdneXNDakd3a2kzeDkvZEhwVXFWVUs5ZVBmYXhTbVJucmw2OXltRmViUVFEcXhvTXJBb3hzSkt0K1B2dnY1RTNiMTUwN2RxVmZhd1MyVEhMTUsraUQxZlJseXVweDhDcUJnT3JRZ3lzWkF2T256OHYrMWgxYzNQaldSa2lBN0FlNXJWVHAwNGM1bFV4QmxZMUdGZ1ZZbUNseUhiZ3dBSFp4K3FLRlN1MEtVUmtGQ0tvZHVuU2hjTzhLc2JBcWdZRHEwSU1yQlNaMXF4Wkl3OWtIUGFSeU5qT25Uc1hPTXdyKzFTT2VBeXNhakN3S3NUQVNwRmx5cFFwU0pjdUhVNmZQcTFOSVNJanN4N210WGJ0Mmh6bU5RSXhzS3JCd0tvUUF5dXBKdnB1N05tenAvd3l2WG56cGphVmlCeUY2UFpxN05peGNwalh2bjM3Y3BqWENNREFxZ1lEcTBJTXJLU1M2R08xVWFOR0tGZXVIUHRZSlhKdzFzTzhMbG15aE1POGhpTUdWalVZV0JWaVlDVlZSQityRlN0V3hJOC8vc2lPeFlrb2tHV1kxMkxGaW5HWTEzREN3S29HQTZ0Q0RLeWtncVdQMVc3ZHVyR1BWU0w2Z1BVd3I4MmJOOGZ0MjdlMU9mUTFHRmpWWUdCVmlJR1ZJcHE0T3poOSt2U1lNR0VDKzFnbG9rOTYvdnc1Qmd3WUlOdTNjcGpYcjhmQXFnWURxMElNckJTUnZMeTgyTWNxRVgweE1jeHIzYnAxNVRDdkd6WnM0SS9kTDhUQXFnWURxMElNckJSUlZxOWVMZnRZOWZUMDFLWVFFWDBaMFVlemFFNVVxVklsbkRselJwdEtuOFBBcWdZRHEwSU1yQlFSSmsyYUpQdFk1UUdHaU1KS2pJNDFhOVlzRHZQNkJSaFkxV0JnVllpQmxjS1R1SEdpUjQ4ZXlKMDdOL3RZSmFKd0pickNzd3p6T24zNmRQejMzMy9hSEFxSmdWVU5CbGFGR0ZncHZJZytWaHMyYkNqN1dIM3k1SWsybFlnb2ZJa2JPU3RYcml4L0dPL2R1MWViU3RZWVdOVmdZRldJZ1pYQ2d3aW9GU3BVUUlNR0RYaFhMeEZGT0hFVDF1Yk5tK1V3cnovODhBTXVYNzZzelNHQmdWVU5CbGFGR0ZncHJHN2R1b1U4ZWZLZ2UvZnVIS21HaUpRU1YzWTR6T3VIR0ZqVllHQlZpSUdWd3VMczJiUHk1aXB4a3hVUlVXUVJ3N3orOU5OUFNKMDZOUll2WHV6d1A1NFpXTlZnWUZXSWdaVysxbSsvL1NadmZsaTFhcFUyaFlnb2NoMDdkZ3dsU3BSQTBhSkY0ZVBqbzAxMVBBeXNhakN3S3NUQVNsOURoRlFSVmtWb0pTS3lKUnptbFlGVkZRWldoUmhZNlV0WitsZ1Z6UUdJaUd5VlpaalhKRW1TWU5Tb1VmajMzMysxT2NiSHdLb0dBNnRDREt3VVd1S3NoYml4U3R4Z0pXNjBJaUt5QjJLWTEzcjE2aUZUcGt4WXYzNjlRd3p6eXNDcUJnT3JRZ3lzRkJxaXF5clJaWlhvdXNyZjMxK2JTa1JrUHh4cG1GY0dWalVZV0JWaVlLWFBFWDJzbGk5ZlhnNEtJTHFRSVNLeVY5YkR2SGJzMkJILy9QT1BOc2RZR0ZqVllHQlZpSUdWUGtWYytoZWp5WWpoVnRuSEtoRVpoUmptdFd2WHJqSzRUcHMyelhERHZES3dxc0hBcWhBREszMk11R1RHUGxhSnlNak9ueitQS2xXcXlIQzNaODhlYmFyOVkyQlZnNEZWSVFaVzB1UHA2U25QUEt4ZXZWcWJRa1JrVEVZYzVwV0JWUTBHVm9VWVdDbWtsU3RYSWtXS0ZQRHk4dEttRUJFWm4yaWpQMjdjT0RuTWE1OCtmZkQwNlZOdGp2MWhZRldEZ1ZVaEJsYXlFR2NaSmt5WWdQVHAwK1BjdVhQYVZDSWl4M0wzN2wyMGJObFNEdk82YU5FaXUyeS96OENxQmdPclFneXNKTHg3OXc3ZHVuV1RYYjc4L2ZmZjJsUWlJc2RsejhPOE1yQ3F3Y0NxRUFNcmlUNVdmL3p4Ui9heFNrUVVnamk3NnVIaGdiUnAwNkpaczJaMjg0T2VnVlVOQmxhRkdGZ2RtK2phcFZ5NWNtalVxQkg3V0NVaStnZ3h6T3ZBZ1FQbE1LOGpSNDYwK1dGZUdWalZZR0JWaUlIVmNkMjhlVk4rb2YzNjY2L3NZNVdJS0JUc1paaFhCbFkxR0ZnVlltQjFUS2RQbjVaOXJFNlpNa1diUWtSRW9TVzYvaE50L2l0V3JHaVR3N3d5c0tyQndLb1FBNnZqRWVOcGl6NVcxNnhabzAwaElxSXZKWVo1blQxN3R1d0dzRU9IRGpZMXpDc0RxeG9NckFveHNEcVdGU3RXeUMvWEF3Y09hRk9JaUNnc0xNTzhKa3VXREZPblRyV0pZVjRaV05WZ1lGV0lnZFV4aUhaV2JtNXU3R09WaUNpQzJOSXdyd3lzYWpDd0tzVEFhbnlpajFYeDZ6OWZ2bnpzWTVXSUtBS0prd05idG14QjFxeFpVYXRXTGZ6MTExL2FITFVZV05WZ1lGV0lnZFhZUk5jcjRvN1dTcFVxSVNBZ1FKdEtSRVFSeVhxWTE5NjlleXNmNXBXQlZRMEdWb1VZV0kxTHRLc3FXN1lzR2pkdXpENVdpWWdpUVdRTjg4ckFxZ1lEcTBJTXJNWjA0OFlOK1dYVnExY3Y5ckZLUkJUSmZIMTlVYkprU1JRcFVnU0hEeC9XcGtZY0JsWTFHRmdWWW1BMUh0SEhxaGhHVU55dFNrUkV0a0djUEZpK2ZMbjhmbTdhdEdtRTNsUEF3S29HQTZ0Q0RLekdzbS9mUHRuSDZ0cTFhN1VwUkVSa1M2eUhlUjB4WWtTRURQUEt3S29HQTZ0Q0RLekc0ZUhoSWZ0WVBYandvRGFGaUloczFiVnIxMUMvZm4xa3pKZ1I2OWF0QzlkaFhobFkxV0JnVllpQjFmNkpMemx4TjJxR0RCbGtQNEJFUkdRL3hEQ3ZvdHZCQ2hVcXlDWmQ0WUdCVlEwR1ZvVVlXTzJiNkdPMVM1Y3U4c3Z1OXUzYjJsUWlJckluMXNPOC92enp6M2o0OEtFMjUrc3dzS3JCd0tvUUE2djlFdTJlNnRhdHl6NVdpWWdNUW5SSDJLMWJ0ekFQODhyQXFnWURxMElNclBicDBhTkhLRk9tREpvMGFjSStWb21JREVZRXpxcFZxeUpuenB6WXZYdTNOalgwR0ZqVllHQlZpSUhWL2x5L2ZoMDVjdVNRbzZld2oxVWlJbU95SHVhMVpzMmFYelRNS3dPckdneXNDakd3MnBkVHAwN0pQdnltVFp1bVRTRWlJaU1UVjlIR2p4Ly9SY084TXJDcXdjQ3FFQU9yL2RpN2Q2L3NZM1g5K3ZYYUZDSWljaFQzN3QxRHExYXRrQ3BWS2l4Y3VQQ1RWOWdZV05WZ1lGV0lnZFUrTEZ1MlRONDk2dTN0clUwaElpSkhaRDNNNjZGRGg3U3B3VEd3cXNIQXFoQURxMjBUYlpqR2poMHJPNVlXWDBCRVJFVGkyR0FaNWxYY2ZCdHltRmNHVmpVWVdCVmlZTFZkb28vVlRwMDZJWC8rL0xoejU0NDJsWWlJeUV3TTh6cG8wS0FQaG5sbFlGV0RnVlVoQmxiYkpMNTA2dFNwZzhxVks3T1BWU0lpK2lUcllWN1hybDByUnoxa1lJMTROaGxZeGVuMmxTdFhva2VQSHJLejlobzFhaGlpeXBZdGl3UUpFdWpPczhlcVZhc1dtalp0aWpGanhzaWJsT3l4ajFMUngycnAwcVhSckZrenZIbnpScHRLUkVUaFRZd1F1R3JWS3Z6NjY2K0dPTGFYS0ZFQzhlUEhSOEtFQ1JFN2RtemR4OWhqaVc2OUdqZHVqRkdqUnNsK2FWKzllcVZ0d2NobFU0SDF3SUVEK09HSEgrRGs1TVN5d3hMZGdQVHIxdy8zNzkvWHRxaHRzL1N4MnFkUEgvYXhTa1FVUVg3Ly9YY1pVS05FaWFKNzdHRFpkb2ttRUwxNjlZcjA1bkkyRVZqRlpWalJmWVRsdzRrUlBRcStMWlVBQTFxbnhwTGhtYkY2YkJhc0daZVZaV08xY25RV3pPcVhBVC9YUzQ1Y21aMER0MS9peElubEdYTFJVTjFXblR4NUVtblNwTUgwNmRPMUtVUkVGSjZlUFh1Rzl1M2JCeDRib2tXTGhqSVZxK0xuSHYweGZ0WlNURjI0QnRNV3JXWFpXRTEyWDRYaEUrZWdhZXVPY01tVk4zRDdpU3ZFUzVZc2liUmplNlFIVm5HSklGdTJiUExEaUJrakN2cTFUSVVyVy9MaHFYZGhsaDFWd01GQzJEZmJCZDhVaXgrNGMzZnUzTmttejF6dTJiT0hmYXdTRVVVZzBZK3BHT3BVSEF1aXg0aUJObDE3WSsveHl6aDE2em5ManVya3pXZncyT3FGc3BXcUJSN2IyN1JwSTI5VVZpMVNBK3ZkdTNmbE1HamlBOGlkeFJtK3kzTHBoaUdXL1pRSXJ0TjdaNUEvUGl5aDFaWXNYYnBVOXJFcUxsRVJFVkg0ZS9EZ2dXeHVKWTRCV2JMbnhMcDl4M1RERU10K1NnVFhFWlBuSVpheitXcHEyN1p0bFo5cGpiVEFLdDVvdFdybXhKNC9lMnhjMzU1Zk53Q3g3TE0yVDg0V0dGckZYWlNSVGV4dm8wZVBsbmQxWHJod1FadEtSRVRoU1h6WGlodHl4WGQvVnBkYzhEeDFUVGNBc2V5ekZxemJGUmhheFNBN0trVmFZSFYzZDVkdk9ISDhhTGkwa1UwQWpGaVRlcWFYMjFqY2pQWHc0VU50eTZzbkxsMTA3TmdSQlFvVVlCK3JSRVFSU0lRWThiMGZMMzRDN0Q3MnAyN29ZZGwzRFpzNFcyNWowVHVDdUZLdVNxUUVWaEVnTW1USUlOL3cvRUdaZE1NT3kvN0wvMEFobENzVVQyN25ZY09HYVZ0ZkxlcytWcDgrZmFwTkpTS2k4Q2J1V2NpZVBidjh6aDg2WVpadTJHSFpmNG5tQWFVclZKSGJ1WC8vL3RyV2ozaVJFbGczYjk0czMyam1OREZscU5FTE95eGoxTGFwNWkrdjFLbFQ0Ny8vL3RQMkFEWCsrZWNmbENwVmluMnNFaEVwSVByc0ZOLzNxZEtrdy9Gci9ycGhoMldNV3J4eG45eld5WklsVTlZSGU2UUVWa3NYVnNOK1RxTWJjbGpHS1hFVFZwWjBzZVQyUG5Ub2tMWUhSRHd4RW9tTGk0dnNGNVo5ckJJUlJUelI5RXA4MTNmb09VQTM1TENNVStJc2F4WVhjeThRbnA2ZTJoNFFzU0lsc09iTGwwKytTZEVOa2w3SVlSbXJtbitmVkc3dmFkT21hWHRBeEJKRDRJbytWbWZPbktsTklTS2lpRmEwYUZINVhlKytacWR1eUdFWnF4cTBhQ3UzdDV1Ym03WUhSQ3psZ1ZXYzdiS01kbkYvWDBIZGdNTXlWbzMvSlozYzN1M2F0ZFAyZ29nakxrbUpQbFkzYnR5b1RTRWlJaFdjdGJ2SHZjL2YxZzA0TEdQVjRISFQ1ZloyZFhYVjlvQ0lwVHl3aXB0Z3hCc1VYUjdwaFJ1VzhXcitvSXh5bXpkcDBrVGJDeUtHR0lFalpjcVVTcHNlRUJHUitXU1UrSjRYSlM0WDZ3VWNsckhLYlk2NVI0aDY5ZXBwZTBIRVVoNVlYNzU4S2QrZ2Mwd0dWa2VwQlVNeXlXM2V1SEZqYlM4SVg1WStWak5seXNRK1ZvbUlJb0hvL1VkOHo0c3JxSHJoaG1XOG1qUi9oZHptb2ljZUZSaFlXUkZlRVJsWTM3NTlpdzRkT3FCZ3dZSksrNE1qSXFJZ0RLeU9Wd3lzTE1OVlJBVldzUy85OE1NUHFGcTFLdnRZSlNLS1JBeXNqbGNNckN6RFZVUUVWdEhIYXNtU0pkR2lSUXYyc1VwRUZNa1lXQjJ2R0ZoWmhxdndEcXhYcjE2VmZheUtFVFpFKzFVaUlvcGNES3lPVnd5c0xNTlZlQVpXUHo4L09XcldyRm16dENsRVJCVFpHRmdkcnhoWVdZYXI4QXFzdTNidGtuMnNidHEwU1p0Q1JFUzJnSUhWOFlxQmxXVzRDby9BdW5qeFl0bkg2dUhEaDdVcFJFUmtLeGhZSGE4WVdGbUdxN0FFVnRGR2RlVElrYktQMVQvLy9GT2JTa1JFdG9TQjFmR0tnWlZsdVByYXdDcjZXRzNmdmowS0ZTcUVlL2Z1YVZPSmlNaldNTEE2WGpHd3NneFhYeE5ZeFg1U3ExWXRWS3RXRGMrZVBkT21FaEdSTFdKZ2RieGlZR1VacnI0MHNENTgrQkFsU3BTQXE2c3IrMWdsSXJJRERLeU9Wd3lzTE1QVmx3VFdLMWV1SUh2MjdCZ3dZQUQ3V0NVaXNoTU1ySTVYREt3c3cxVm9BK3Z4NDhkbEg2dHo1c3pScGhBUmtUMWdZSFc4WW1CbEdhNUNFMWgzN3R5SlpNbVNZZlBtemRvVUlpS3lGd3lzamxjTXJCRllEMWRud2ZoMmFUQmxhajQ4MXBtdnJncmhyMm5wTWJSZE9xeGFYVkJudnJIcWM0RjEwYUpGc285Vkh4OGZiUW9SRWRtVGNBK3NOMjdCWStJSWRPNDErTFAxeThTRE9IamxDdHpIREVQbllhdXgvYkxPK2lLMS9MRnZ6VlIwN2UyR0tZY2U2Y3hYVVUvaGMrSXZITHF1TisvcmlvRTFBdXZtaEVSSVlIcnV0QTF5NEs3T2ZIVlZFSjROWTVnK2g2ajR3UzIvem54ajFjY0NxMmlqT21MRUNHVE9uSmw5ckJJUjJiRndENnhYVHVBWEZ5ZTV6czlXampIWThvY1htcWN4L1grODJwaHhUbWQ5a1ZvUDRORXVuZW0xeGtmbHBYL3J6SS9ndW5ZUms5dVZRckwwTGJIZ29zNzhyeXdHMWdnczJ3bXNoWERkUFRQbTlNdUVuUnNkOHd5cjZHTzFYYnQyS0Z5NE1QdFlKU0t5YytIZkpPQXBqbDM4Rzk3bkxIVVQ2NGZrazgrUmMvaHhIQWljYnFxTGozSGkrZzJzbURjWHcyYnV3cDRyZXV1THpJcmt3SHBoSjM1SVlncnp5WDVpWVAwU05oMVl2UXJnM0pJYzhGeWNCemQvMDVuL0JlVy9MeC84M00zcnV1V2wveGo5S29TSFcvUGc4TndjOEZsYjRLTk5GNTdzem91ajgzUEFhMWxlM0QyZy94aHhKdmZLOHB6WVB6Y25UbStQdkdBY01yQytlUEVDTld2V3hMZmZmc3MrVm9tSURDRGkyN0FHWU9mb2d2STVjbysvaEJPNmovbEVYYjZHTFR0L3d3cXZhemhtTmQzMzdGbXMzbm9BNjQ4LytPZzYvUzVjeFBwdHYySDUva3Z3dWFIL21GTzNIc0hUeXh0THR4N0J0ck9QUTh3TEdWaE5qejF3Q0I3YmZMSHJRa0NJeHdaVjZKNVhWQUFPSGZYRjhpMEhzZDczL29mdmc0SDE2OWhVWU4yYkU3MnpSRVhNRkVrd2YzQUtsRXlvWFY0UUZUY09XZzdPZzRlbXg5MlptUnhaVGE4M2RhVXN1Qm9zSEJiQ3BhRUprU3hhVk9ScWxnUDN4RFRQdkZqVkxENVNXOVlqS2s1c05PMlZFN2NEbHkySUE2NnhFU2RHRERTZFVpQndmUTlYWjBhM29qRVIzV3JaaERtVFljR3FvTERwdnpNbkpuOFhHd210SHVNVTMvUmErK1hDSGUweDRuWGRuSnNXTlZKYlBjWXBDcktVVFlNOTJ3c0Zya3RWV1FkVzBjZHE4ZUxGOGROUFArRy8vLzdUOWdvaUlySm5rUjVZTDNtamJjNDRpSkdtR2VhZXQvNTNRd3gzYTR0YzhZS09oL0dLOUliNzhiTncrNmtJNG1uVG5KeWlJVU85ZWRocTFmNzF4UGxER1BCamZxdkhtQ3BoRWRTYjZJdkRnYy85Rk41YlI2TmkrbWhCajNHS2lmVFZobVB4MmFmYVl5eUJOUjVLRHhpS2I3UEdzbnBzVWhSb3N4SzdybjNwODRveVBmZk9LYWlWSjZIVitweVFvRUFyRE45M3o3d3UzL2tvbHNCcVBkRVNvZlNjRzFicitQcGlZSTNBK2pDdzVrRG5GT2FONkJ3ckppbzNTSXZaUXpOaVhMMTRTQ1EyYk16NG1MZkJGUEIyWmtOakVXYWRFMkRwRnF2QWR5QXY1aGFLWWxvK0J0ck9NZ1hQQS9teHZWNU04L3Bja21Kb3Y4eHc3NTRDbFpPSzU0aUtiL3ZsMGM2WWZ0aUcxWDlIZHJSTlpYNWNzUi9TWW83cGRReXZIaHN4eE90SWx4S2VlMHpMN2M4TnQ4SlJUWStKZ3J4VlUyUHEwTXhZMERNVjZtUVF5MFhEOXdPMDllL0pnWTRweGJSWWFQaHpSaXdkbGdFOWlwci9tRkxYZHJFS3RtcktFbGhyMUtpQmJObXlZZENnUWV4amxZaklRQ0kvc0lab3cycjV0K254MGVQa3hMYzlabURjekVsb1dpU09uQlluUXpJNHA2cUduMFl0d2ppM3ZxZ2dqNWx4VUhiV1ZmTzZMNTlBMzlMaXNjNXdxZE1mZzJZdXc1aFJmVkExYTNUVHRJU29PUGs4am92SC9lbUpwbW5Gc3RsUXZkODh1TTJhamxibGtzam5TTjVpdHhZd0xZSFYvSHBTVnVpTVhsT1dZZlNJemlncVQ1VEZScGtabCtIM0pjOXJxbU5lRTFFc3RtbjVXSGxSdmNjMGpKMnpDUDI3MWtXbTZLWnBDV3BneEdGL25EcTNEOTJiZm90MFVVelRvbVpGdVIvYm9lYzJjNWdOYXpHd1JtQjlQTEJHUWVYK2VmSEU4dGdEK2VCUlZnVERxS2cxWGdUS0F0ajZuZGhab3FES3NIencxeDczWkdOR2xJdG1XajVaTXV3eEJjckhxOU9qU0ZUVHY1TW53OVlkUWNIMjRmSjBLQ2wyb0tUSnNHdTNtQll5c0JiQzJaNXhFZFgwMmpJMWRzRnRiYm1uWG5reHE3QUl4TkZRZjBJK1hCMXRmdjA1WEhNRUM1MysyN1BoSnhHS3RmWC9zeXdOY3BnZUZ5Vi9KbHkyUEdaakpsUk9GQTJaeTJUQVNjK2daVldVSmJBNk96dGo3dHk1MnA1QVJFUkdZYnVCTlE1S1Q3MWtEb09tT3JxN0x6S1kxdUhrbEFkZDlnWGRzZTg1cnhxY1RkT1ROUlVoOHlrODNYK1Faeml6ZFBVS2RsYnp4Tmt0cUN2Q2JZcldXSGp4T1h3OWh5R0xlTi9GRjJDLzVUSEhGNkJVMG9SSVYzVWF0c2oydEVHQjFibjhIT3dJUEp0cWVwNzVOUkhITkQxZXJVM3cvb0xuUFhYakdpWi9sOEMwenB4b3U5VTZnRDdGZ2VVdGtkeTBqbVROdE1ETUpnRmZ4eVlEYTVTNG1MdlIrbEo1UVJ4cGJUNWxYM2FZK1F6bzdTbEprZFQwNzFqRk0rRXZlV20vRUM3Mml5Y3YzNmV1NHlMWGQyV28rZDlaV3VURWc4QjFpY3FIcGNWRjhJeUpYK2FMeS9zaEE2dHBmbEV4UHhiNkxiWnVhMW9JZDFlN1lQZWlQTGpwV1FBYnZoRm5TV1BoMThtNTRMdk11bkxDdlpLWUZ4UGRUT3YzMzVRSmxXS0lQOGlZcU5NdU03d2krY1l1UzJBdFY2NmN0aGNRRVpHUjJHNWdMWVpodnBaTDg2WTZ0UkFGVE90d3l2QXJWdjJsVFRPVno4WjJNdVNaZytOdHpLb2xMck5uUTVzVng3REI4N2hWSGNMb211SU1hZ2E0Ym51QUUzNkxVREttZUo1TXFOcDdHWllmMSt1MnloSllvNkRBNU12QlhydnYvaUhJYkhyZXFDV1d3dXNMbnZmVStVMm9KaTcxWis2Rk9mdXNIMmVxblF0Uk5aRnBYcnBmc1B5UzZYa1lXTCtPVFFiVzJBbXhkb2YxWXd2Q3I0T3pmSjJsaHBvRDY5UGQyZEZjN0FBeDRtTytDTGRlZVRHN2dPbmZsdVlBcG1XT3RUTXZZd201MXV2emFpS2FDa1JGelhGaVhvakE2cGtMUXpLYTFoVTFIaFp2czE3T3FrelBOL216WFh4WTFsOEFoN3Nra0FIYlBEMEswdVZOakI2OXN1UHNYdXRncnFaQzNuUkZSRVRHWXJPQk5mYjNtSHJXNm5GbkZwc0RxOHNvYkxicVRjQm5jd2VrTUUyWGdmWDZCUXpJWnpsK2ZxemlvZEppY1FQVmZhd1pYQVdKQTZmSFFLcWk5ZEZxN0E3c3VCU3lEV3RjYlptZzUvWDFHaUhQMERvVlh3S3ZMM2hldnlOVGtFdDN2bFhGcllYcDRyTmdZUDA2TmhsWTR5VEMrczhGVmxNSTNGN0QzQ3lnL01DOCtHZGRCcFMyYWc0Z2x2SFZBbXU1NFI4RzF0KzB3RnJqVTRFMVdqd3MvV2hnellQeDJVeVBjWXFKRmwweVlHWmZuZXFYQ2R2V1djNm1Gc0xkVmRrd3VXbGlsRXd0enQ2S1pVMlZJVGsyYkZVYldobFlpWWlNeldZRHErWGZsc2VGS3JDZVE1L2M0cGlaSG5XR3pNVFFDYk0rckltTE1QK29wVGVBcC9EeDNvSUJIZXVqWVByWTVtT3RxS3p0TWV1VUNLMld3UHBodDFiQkEydm9uOWZ2MEFTNGlPWFN1cUtYbTg3alREVnN4ZzdzRXUrUmdmWHIyRzlnTFl6YjA1UEtTd1l4Q21lRTU2OXhFYzMwLzZucm1wc0RpUG1YaDVpYkJHUnRtVXYyTGhDMHZ2endLR20rT2F2alhKMG1BUWZ5d2IyZzJFbWRNV1JaOE12M2p6ZG14eFJUUVBXWW13dkxTcG5YWVQ2amE3MytrRlVJOXpibHdhbkFIZ0VLNHVyQ1RPaWEyeHhjaS9TeWFxK3JvQmhZaVlpTXpWQ0I5ZFpOVFA1R1pJRFVhTGpoZnRDeXVoVUFINzh6MkhyV1gvdjNZM2p1V2d6WFF1WU1rWGZzQmZpRk5yQit5Zk9lWFlteXNVekxwV3lIeFgvcXpMY3VCdGF2WTgrQlZUUUxjQlViUFZwc2ZKdmU5RjlUZUd4bkZSNGZyMHlIZ21MSFM1TUNudkxtS20zNjJnejRSdXhZOFJKaG5YeWVrRzFZQytKRUYvT2RpN2xhNTdKcS8xb0lwM3VZZzNHbXBqbHdvbTg4Mld0QW9ncVo4YWQxMzY2ZXVUR3hlQ3hrenBrRTdtc0w0ZXFJQkxMeHVHaGJhOTNWMWFWK2NlVno1T21TVytuUXRBeXNSRVRHWnF6QWFucXVDV1hsQ2FqNDFaZGlqL1Z3cGxkT29sK0ZMRWlYdnhsRysvakRjMjVWeERJOUxubUxQVlkzU1QzRjNvbkY1V3ZOUHZnMGpvYzZzSWIrZVU5ZHY0Q2hKVVdPU0lUS3MvNEt2S2xNcnZQQUpKVE9tQmw1R2l3MDMrQmxDcXgxNUkzWnJuQm5ZQTA5dXc2czNnV3dzNlpvRm1CYVJsU3laTmdybXdOb2RTQWYxdGNRTzVBVEVoZE9nWm5qczJQcmlMUm9LTU90RXdxM3M0VFJrSUcxTVB5M1pFVlQyZjFWREh6M1UwWnNtSjROaXpva1FRN1I3Q0JtUEV4Y1dkQVVtRjN3aSt6Q3lnbFpLcWJHL0FuWnNYMWNCdlF1Ylg3T21BWFN3YzlUckNzTDZzZys1MktnWnV0TTJEVFRCWnVIcE1aM0ltdzd4Y2FRcFdwdndtSmdKU0l5Tm1NRlZ0TzBDL3Z3VTFaeHpJeUNERFVHWXBUSExyZ3ZtbzIyVmRMSTF4Q2p1QnMybVpZL2NYSWxxc3ArVHRPaVVzK0ZtTDErRCtiTUdJRHl5Y1cwL0ZwUEJLRU5yS0YvWHJIc29ZM2RrVWtzR3lVcnF2N3FqbG5yZG1MYXhENG9MN3ZJakluQ3cwN0FWNnp6MGdHNHBoT1B5NGMyODNkaHVhL2VqV0ZmWGd5c0VWaGhENnlGY1dkR01xUVVPNGlwckpzREJOYmVYSmhWM1ZtZTRSU1BrUlV0SnFxMHpJYS9BcytLZmhoWVJkMWRtZ0ZOTWx1MU54V1ZPQjc2VE00WGVBbi9udzFaMGIyUVZXaldLbDNKMU5nVzJFZHNJVnlaa2dwbHJRZENFQlU3Tmx3SDVRN1JnMEhFRndNckVaR3hHUzZ3bXNyWGR5MWFsa29SZEF5VkZRV3BLZzNFL0pPV0Vhb0M0TG15RDRva3RuNk1xZUxrUTkycHAzRlVQdVlMQXF1WUZxcm5GZlVZZXhiMVFGRVpqcTBxU2pxVS9YVUhQQVBQME43RjR2WTVBdWVuYnVkbHRZNnZMd1pXUTFRaFBOaVlFMXZIWk1HcUtUbHdadmNYM09SMG9DRCtYSmdkcTBka3h1cnB1WEJkdDgvVVFyaTlPZ2MyamM2TXBhT3o0Y0RhQW9GOXd3WXJ6L3p3bTVVVnkwM3JXbXRhMXhYRi9hOWFpb0dWaU1qWUlqNndSbFlGNE5EdnYyRzIreks0dVcvRENwOTdINFpsVVZkdVl0UEdqWmcwWnptbXIvT0ZwMVVZL3JvSzVmT0t1bjRYMjdac3dlUTV5ekI1cFRkMlhMVHF4c3RTTis1ang2WjFjSnU5Q3U3N2c0Zm1yeTBHVnBiaGlvR1ZpTWpZakJ0WVdSOHJCbGFXNFlxQmxZakkyQmhZSGE4WVdGbUdLd1pXSWlKalkyQjF2R0pnWlJtdUdGaUppSXlOZ2RYeGlvR1ZaYmhpWUNVaU1qWUdWc2NyQmxhVzRZcUJsWWpJMkJoWUhhOFlXRm1HS3daV0lpSmpZMkIxdkdKZ1pSbXVHRmlKaUl5TmdkWHhpb0dWWmJoaVlDVWlNallHVnNjckJsYVc0WXFCbFlqSTJCaFlIYThZV0ZtR0t3WldJaUpqWTJCMXZHSmdaUm11R0ZpSmlJeU5nZFh4aW9HVlpiaGlZQ1VpTWpZR1ZzY3JCbGFXNFlxQmxZakkyQmhZSGE4WVdGbUdLd1pXSWlKalkyQjF2REo4WUgzOStyVjhnOUdqT2VtR0c1YnhhdDdBakhLYk4ydldUTnNMaUlqSVNQNzN2Ly9KNzNsUkoyNDgxUTA0TEdQVitGbEw1ZmIrOGNjZnRiMGdZaWtQckdLbmRuWjJsbS95K3JiOHVnR0haYXdhM2lHTjNONWR1blRSOWdJaUlqS2FSSWtTeWUvNnZjY3Y2d1ljbHJHcTE5RHhjbnUzYTlkTzJ3TWlsdkxBS3BRdVhWcSt5WTBUcytrR0hKYXhxazVGODVmWW9rV0x0RDJBaUlpTXBsS2xTdks3ZnVyQ05ib0JoMldzK3I1dUk3bTk1OHlabyswQkVTdFNBdXN2di93aTMyU25CaWwwQXc3TE9QVndmMEVrVFJoZGJ1L3o1ODlyZXdBUkVSbE4zNzU5NVhkOXd4YnRkQU1PeXpqbGUvVUprcVZJS2JlM241K2Z0Z2RFckVnSnJNZVBINWR2TW1HOGFMaTN0NkJ1MEdFWm8rWVBNcmRmTFZpd29Hd09Ra1JFeG5UMjdGbjVmUjg3VGx6OC9zY2QzYURETWthNXpWNG10M1hPbkRtVkhkc2pKYkFLSlVxVWtHKzJ0MnNxM2FERHN2KzZ1NmNBTXFlSktiZXp1N3U3dHVXSmlNaW9LbFNvSUwvelhYLytSVGZvc095L2p2ejFFSm15dXNqdFBIUG1URzNMUjd4SUM2emUzdDd5elVhTjZvUjlzMTEwQXcvTGZpdmdZQ0cwK2lHWjNNYjU4dVdUdlVNUUVaR3hIVDE2VkhadEpiNzdGNnpicFJ0NFdQWmRUVnAxa05zM1Y2NWNlUFhxbGJibEkxNmtCVmFoZS9mdThrMG5paGNOQjkxejZnWWZsdjJWQ0t2aXpMbll0dEdpUmNQSmt5ZTFMVTVFUkViWHIxOC8rZjBmTjE1OExOdnltMjdvWWRsbmRmeDFvTnkyVWFOR2hhK3ZyN2JGMVlqVXdQcm16UnZVcmwxYnZ2bDRzYU5pVnI4TU11em9oU0NXZmRUMTdmblJzR3Jpd0IxNnpabzEydFltSWlKSDhQYnRXelJvMEVBZUI1eGp4OEdnc2ROdzh1WXozUURFc28veVB2YzNhalZvSnJlcE9JUHU0ZUdoYlcxMUlqV3dDaUswTm1wazdocEJWSmtDOGJCaWRCWTg4V0p3dGFlNnVqVWZCcmRMZytTSnpUMEN4STRkRzJ2WHJ0VzJNaEVST1JJUldsdTBhQkY0YkM5UXRDUW16UFhBOFd2K3VvR0laWnZsZGVZR3V2VWJqdVFwelZkTlk4V0toUlVyVm1oYldhMUlENnlDdU1OTXBQV0VDUk1HN3R6eDQwUkZ1VUx4MExaT01uUnVtQUpkR3JGc3JUbzJTSTdHM3laQjdpek9wbDljNXUwbXFreVpNcmg4K2JLMmRZbUl5QkdKWS91cVZhdVFPTEg1cXB1b09ISGpvVWlKc21qUW9pMmF0K3VDRnUyNnNteXNtcmJwaEZvL05rWDJuSG5rbFZMTHRpdGV2RGd1WHJ5b2JWMzFiQ0t3V3ZqNysyUEtsQ2x3Y1RIZmZjYXlueEk3ZGMyYU5iRm56eDY4Zi85ZTI2SkVST1RvQWdJQ01IMzZkSG1UanQ3eGcyVzdKWTd0MWF0WHg4NmRPeVA5Mkc1VGdkWGFuVHQzc0hYclZybVRUNWd3Z1dXRE5XblNKTXliTnc5SGpoekJ2Ly8rcTIwNUlpSWlmZmZ2MzhmMjdkdDViTGZobWpoeEl1Yk9uWXZEaHcvajVjdVgycGFMZkRZYldJbUlpSWlJQkFaV0lpSWlJckpwREt4RVJFUkVaTk1ZV0ltSWlJaklwakd3RWhFUkVaRk5ZMkFsSWlJaUlwdkd3RXBFUkVSRU5vMkJsWWlJaUloc0dnTXJFUkVSRWRrMEJsWWlJaUlpc21rTXJFUkVSRVJrMHhoWWlZaUlpTWltTWJBU0VSRVJrVTFqWUNVaUlpSWltOGJBU2tSRVJFUTJqWUdWaUlpSWlHd2FBeXNSRVJFUjJUUUdWaUlpSWlLeWFReXNSRVJFUkdUVEdGaUppSWlJeUtZeHNCSVJFUkdSVFdOZ0pTSWlJaUtieHNCS1JFUkVSRGFOZ1pXSWlJaUliQm9ES3hFUkVSSFpOQVpXSWlJaUlySnBES3hFUkVSRVpOTVlXSW1JaUlqSXBqR3dFaEVSRVpGTlkyQWxJaUlpSXB2R3dFcEVSRVJFTm8yQmxZaUlpSWhzR2dNckVSRVJFZGswQmxZaUlpSWlzbWtNckVSRVJFUmsweGhZaVlpSWlNaW1NYkFTRVJFUmtVMWpZQ1VpSWlJaW04YkFTa1JFUkVRMmpZR1ZpSWlJaUd3YUF5dlJSMXk0Y0FFN2R1d0ljeDArZkJqLys5Ly90TFVTRVJIUmwySmdKZElSRUJDQWVQSGl3Y25KS1Z4cXpwdzUycHFKaUlqb1N6R3dFdW00Y3VWS1lOaXNVaUxCVjVkbEhjT0dEZFBXVEVSRVJGK0tnWlZJaHlXd1prb2RFMCs5QzM5MTlmMHBGUU1yRVJGUkdER3dFdWxRSGxqZlBzU3BmZHV3ZGV2V0w2aHQySGZxSWQ1cXEvaFM3L3d2d0d1N2FUMDdmc2UxRisrMXFaL3h6aDhYdkxhYm5uc0hmci8yUXBzWTN0N0IvNElYdHB2ZTQ0N2ZyeUcwTDgwWTN1TmRoTC9mdDdoL2ZEZTJtZmFmM2NmdmY5SCs4K3JtYjVnM3VDTmFOS3lQQmsxYm8vc1Vieng4cDgyME4rK2U0Tnh2WWwvZWhwMkhiK0NsTmxuWHUwYzRzMTg4MXJSUEhyaUlBSWZhSjRsc0F3TXJrUTdsZ2RWL0Z4b2tETjd1TlRTVnNNRXUrR3VyK0ZJdmpuWkhlcm1ldkpodzZZMDI5VE5lSEVYMzlPYm56anZoa2pZeHZMM0EwZTdwemU4eDd3U0U5cVhadHplNDV6MGRyY3RWd3VpenI3UnBFZVV4Tm4wWFMzNitzYjdiWlBwWDZMdzRPUXFsWXdmdGU2SmlmTE1hRDdUNTl1Y0YvSVlXUkZUNVhyS2kyd0YvMDg4RlBXOXdkWDQxeEpPUGk0RVM0ODhob3JjUUVYMklnWlZJaC9MQSt2STBwcmF1aTlxMWF3ZXI3NHNubHNzN09TVkc4ZStEejZ0ZHV5NWFUejM5NlRORG44REFhanRlbngrTlBISmJaTWVRTTdZWVdQMnhvNzdXSmp0V0VYU1lzZ0xyMTY3Q2VwOHZPME5yYzE2ZHhkaGlNY3p2SzMxNzdINzBZV1I5YzJrbUttbEJQVmJaeWJqd1dwdEJSRW94c0JMcHNKVTJySTgzZllkWU1pUjhoMDJoUFJVV1NyWWJXQjNQcXpORGtGMXVDeHNOck8rdVkyWWg4M1pQMG53L0FyVEpSdkQ2d2hTVWpXVitiNmwrMm9MNzFrMGNYditCU1dWaXlubE9zU3RocG1PYzdpZXlTUXlzUkRyc1BiQytmL1VZdDY5ZHhwWHJkK0gvV3Y5Q3AxNWdmZi82Q2U3Y3VJTW5IMWttdElIMTNTdlRlcTdmd0QzLzF4KzV6QnBlM3NEL3puWGNmUGhTOTNuZStOL0Y5WnNQOER5MDdTemZQc2Y5RzZiWC9TejA1dzNmQk56RGpldTM4ZmhsNkJ0eml0ZDE1L0dyd05jYytzRDZEcStlM01IMUcvYyt1bDAvOUI2dkh0L0c3VWVXeitnckF1dWJTNWlRMTd6ZDAzYy9pbyszWGpadGo3dDM4UGpWeDEvYjEzeGUwaHQvMHo1MUV3OWY2bTVwMC9PYTlvTUh6MDJmMEpkNmc4dXp2MEVjK2ZrblE4TzFkN1Ixdk1MWnNjVVFRMDZQaTZyenJwb2UrVGxmczMzRVd3dStQM3pnVFFEdTNiaU8yNDlmZnNYN0l6SUdCbFlpSFhZWldOODloTS9jTHZndVQxSkVrUWRaUzhWQTJwS3VtSGpnZnJDRG5YVmdIZTk3Q0ROYUZFYml3R1hpSUh1VnJsaDRLa1M3dms4RzFsZTR2bjBVR2hkTG94M2t6ZVdjc1N4YVR6bUFlNkhPZ0s5d2ZtcGRGQzFRQUNXYXI4Qk5iYmxYNTZlaWJ0RUNLRkNpT1ZaY3ZZWnRRK29nVjd5ZzU0bWJxd0VtK1R3MnZkNDN1TE5yR09ya2poODR6eWxHZW56VGF3T3VXMTNPRGJZKzAvWmUzN01pMGtheHJDOGEwcFJwaDdsK0gyblgrUDRaemk3cmllbzVncm91azU5emlSWncyMzhuUkxDeHZKOVNhTDN1R0phM3lRdG5iWms0ZVpwaVlKdnlLT0NTTkhBOVNWM3lvMERwbjdIUHVuSHlxK3ZZUHFveGlxWFJMbC9MY2tiR3NxMHg1Y0E5L2N2eWIyNWg5N2ptS0pyTThuZ254SGI1QWNOMi80RjFvUTZzejNEUTlMa1V5cDhUS1MzUG15Zzc4bG0yemZQem1GcTNLQXFVYW8xMXg1YWpUVjVuN2JuaUlNOVBIcmhtK1NDKzZ2TXlQOGZWYTlzd3BFNHVyUTJwcUxqSTFXQVNmQjZidHN5Yk85ZzFyQTV5eDdmTWMwS005TitnMTRicitLSXI5Mit2WTlIMzJ2NlNxRFk4VER2ZHk1UERVU2lxZVowSmFpekdqVS90djErMGZUNjFQL3dFajZBUERjL09Ma1BQNmptUUlIQ2RwdmVYdGdSYXVPM0huYytuWnlKRFlXQWwwbUYzZ2ZYZEEreG9ueVh3b09ZVUx5MWM4dVJHdHRTV0FHR3E2TVV3L28rZ3czaFFZSTJQbkptMEEyMGMwM0xaMHdZZVFKMWlGTUdRbzgrMEpVdytGbGpmQitEb3FBcUliMWt1Vmtwa3plbUNqRW1pbXY5dHFsUjE1K0ZpcUs1MjY3ZGhEWHE5YVZDdGt2bHpqWkU4TTNKa1RZNW8ybk00SmFxTFdYT2FJSTM0L3lpSmtTbEhkcVNLcWMwelZaNUJmb0Z0Zm9QV2x4NC9mSmZXL0Jqbk5NaWVQVTNRKzQ5ZUNBTVBod2l0Nys1alo3YzhRYzhaMjdSTWpreFdZVDhsNnN5OWFJb2xGa0h2SjFFdTdYa1NaMENHUk9LL2RUQ29zams4QnE4eVdQWEl2UFQ3Z0tNWVZTRW9mTWRLbVJVNVhUSWlpUmFtbkp4U29lNDg2K2N6ZVhNVkMrc2tDMXdtUm9xc2NNbGthUStkR3ZsU2FldjZiR0FOT2h2N1FZbHQ4OFN5UHlSQ3JyVG02WWt6WkVBaThkOUdPL0JFckNJTW41ZFRtbXFvSkY5ckRDVFBuQU5aazBmVGxqRjlsblZuWVU2VE5QTC9veVRPaEJ6WlV5R21Ocy9KS1E4RytYMVo2KzYzdDFhaWJtTHo4Z20vRzRpZmMwY3hyOHUwVDYyNDlmRzArdVhiNTFQN1F5UHNNSDlvdUwrekcvSkVzNndqTnRKa3o0Rk0ydXNUbGJMTzNGRCtQUkVaQXdNcmtRNTdDNnl2L1Bvam0zWWd5OUYxcDlYWnpOZTR1YVVyY21qenN2VHpDenh3QmdVMlVWR1JxK042WE5ObXZyeTBISzJ5YVBQeURzWHBvSVYwQXV0N1BON2JCbW5sZXBMaHV6R2V1R1BKeGU5ZjRQS0duaWpxTE9aRlFZRVJaNElISzEyZkM2eW1pdUtDOXFzdTRybE1rdTl3YjZ2bCtjMlZ2UFowSEg5aWpwbnZBL3pnVmo2MmVWN0t0amo0WEU0TzhmNmRrTEg1RWx6VXJuVy8vSE1aWEROcDgxejY0M2hnOWpFOTEvb2Z0YkFWQTRWNmJzRU43YjIrZTNJTVUzOUlZVjRtU2tHTURMemIzK3I5bUNwRm8rVzRKcFo1ZlFOZU8vN0EvZHVYY0dacloyU1E4ek9nODlZenVQRG5UVHdUcDhQZlA4YmVObHFvU2ZZZHhuamVDVHh6K1A3RlpXem9XZFFjcnFNVXdJakFwZ1J2Y1hOeFZjU1c2MHVPT3JOT2FkMHd2Y09qdytOUXhhbzNpczhIMXZkNGJucDlGOC90UmQvczVtVlN0VnlIVXhjdTRNL3JUL0RHYW45d2NrcUJSc3V2eWRmMytvWVhkc2dQTSt5ZlZ4U1g5bGgxOGJuNVI4TzdlOWhxK1R4a0pVZnQ2Y2RoM3RUdkVlRG5odkxhRFZJcDJ4NkV0cWxENlIzdXJtK0M1SUhyRnBYVXFvbUFqcS9hUHAvYUh5NmE1b3EzdVI0L2F1RTBScUdlMkJMMG9lSFkxQitRUWk0YkJRVkhuZzNGM3hPUk1UQ3dFdW13cjhENkRuYzJ0RVdwN0NrUlAwMURiTkhPekFWNmZ4dnV4YzBIdjNoMXR3ZDJnMlVkMktJV2Nmdmc3dWNYeC9vZ3E1eWZFbTI4dExPc2VvSDE3VlhNTEdFKzg1VzFsNDlPU0hpSDJ4N2ZJYTVZVjVKbTJQM1pmcmcrSDFqVGQvZVJCL1pBcjg5Z2lJdDVubFBDdXRqNHdCeFdMWjVzcVdWK2ZxZWltSC9MUEM5WVlNMDVDQ0ZQeUwwNDJodFo1UHlrYUxGUHU4M283V1ZNS1dKZUpsYUZPYmdhOHNTYnZ4YzZhR2Nha3piZnEzM1cxZ0VsTDl6Ky9QQmE3c2Zhc0w2OU9oTWw1Rm0yck9qbG94Ty8zdDJHeDNkeDVicVROTnR0ZnI0M0Z6QldhMithdE5rMkJML3hYUVRJK3ZJTXFId1BZVzNEYWgxWTg3cmhnN2NXNXM4clBicjdCTnZTcGswOUJDNXluaE1TMXQySTRKdjZDYmJVTW44ZVRrWG5ROXZVb2ZmdVBqWTFUcUk5dHhPU05kbUllNTlvTlBwVjIrZXorOE5iWEo1U3hEdy9WZ1hNK2ZCRGcxY0hMU1FuYlk2OW4vMTdJaklHQmxZaUhmWiswNVcxOXk4dllMb1dLSjJyYnpKZnBqVUpDbXpSVVg3Sm5lQ1h2WVhYNXpCTUM0SHBmemxpRGlrNmdmWDluU1VvSncvYU9URGlmSWpVYS9GZ05TckxTL05wMGZsdzhBRHlvYzhGMXNSb2FnbVFnUjdBbzVUNWRVVXI1NEY3SWQ3TWkwT2R0RE93NGdZemN3QUlXbDhVRkp0OS9jT3phS2IzUDF4Ny94bDZISlZOQ2Q3Zlc0Ynk4cjNHUnZWMWVqMlF2c0twZ2Rua01rNXBPOFA4VnEzZVQ0bzJPS0NUYS9RRDYzdmNXVkxPZkNrOXh3aDgvS090Ykw0VXJqM2Z1MXZ1S0NuYjRwcUM5bjZkKy9rRDlxTkZVakUvZkFOcmlqWUhQdml4RXViUEszRlRmTGlwUFZCS3pIT0tobkllOTBMc3R5OXdxSk1XNXNTK0V6THJmY2I3eC92Uk1hTll0N21pRlJtSjB4OXRXZkIxMitleis4UDdlMWhXM3Z6M0dydjZPdDErYmwrZEdxaGRVUW5OM3hPUk1UQ3dFdW13MThENi9zVjFITjYwQUpPRzlrUzdKalZRTm05YTdlNW5jMWtIbEtEQWxnbTlmZldPeWsrd3RWWWN1VnkwaXF2eFVFelNDYXd2ZkxvRVhvNlBsVEFSRWlYU3FZVG05WWlRVVdHVlhOTW5mQzZ3WnNmZ3dEWUtGbyt3cW96NU5TU290ME03a3hVa2FObWdIaEdDcHFWRHR5TjZCLzJnOXgrajBsclRNd0F2ai9kR0pybU1DNGFkMDA4bzRteXUvTXlqVllENXJWcTlINWRoT0t1em1INWdmUUdmTHBiTDM3R1FVTzl6TlZYQ09HSiswUE85T054WjJ4NEZNZTJEczNNbTcyNWlydVdzWnpnR1ZwZGhaeis0MFNuTW4xZjJ3VUhOVVN3ZXJVSVp1YzRFcUxmamd5MnR1KytFeXZ1SDJOWFd1cm1CcUNqSU45ajNJMDBMdm03N0JIdU5ldnZEeStQb3JUVkhjUmwyN29QUFZIcXlCYlhrZWtQejkwUmtEQXlzUkRyc0w3QSt4OWw1TFpCYnRoVU5VYkZTSTcybDQzUGR3Sm9iWXkvcUhkbWZ3ZE5WdTNHbjJBTGNGcWV5ZEFKcndON0dnWmVZUTFQRjNHOS9lRFkzbU04RlZyM0xxRUdCVlcvMHIwOEgxbHdZYytGejczOGg3cGhlOVBPRDdaQktMbE1ZTTYvclh5dCs1dW1LWlBJeHhiQkFMQlNLRUtVZldBT3d0M0VpODNLaHFtSndOMjJrZ0wxTnRPMVJDaDczdFZVRjh4anJ2akhmWkJlZWdWWHNEeUhmV3RnL0w1MW1Cb0dCTlNFYTdBcXZ3UG9PRDdiK2hOUnl2VTdJMG5VN2R2ZkphVjZQVXc3MFBxelg4K3pYYlovUHZzYm5COUZPdXltdThFeWRNLy9DTTArNGFyMC9GRnVnYzNXRXlJQVlXSWwwMkZkZ2ZZOEhXMW9FZGpzVUxWMHAxRzNiRzZObWVtRDcwYXNJZVBzSWF5dEZsL1AwQTZ1TEtTVHBuY2Z4eDQ1NjVydWZvMVg0K0JuV1o3KzExRzVVS2ZUUlVQSmxQaDlZUHh6b0lDeUI5ZlB2UDNxbE5mSU02NHNqM1pCT0xwTUg0M1ZEdm1tcDdYWE52U1ZFTGZmaEdiVXZDcXpQOEZ2TDVPYmxDczFFYUQvYTV3ZmFhUHRDRWN5NXFiZlFRNndxYis2OUlhSURhNFI4WGhFUVdOL2QyNENteWNVNlRlWHlLMzRYK2ZTNUx3Ym4wM29LeU5vTkIveER4c0t2Mno2ZmZZMHZqcUJiT3ZOcnlUUCs0Z2VmcWVTL0hYVmxWMTVSVVk1bldNbEJNTEFTNmJDcndQcnVPbVlYTng5WVk1U2VoUE1oTDZHK3U0WVoyaWhGTWF0dDFBbXNpZEJvdDg0WnBMZVhNU21mZWJrMEhRK1pMNHZxQk5ZM0Y4WWl0MlU5SHdTSXI2RTZzT29GSDVPM1Z6QWx2M21kNmJxYWIvSjZkMzBtQ3N0bEVxUEpYcjJ6Ym05eGFVSmV1WXhUOGxiNFRkNnI5cldCOVEwdWpNMXRYaTVSSTRUMm8zMTdaUW9LeUhXbHhzL2VPaGV6clc1UWkrakFHaUdmVjNnSDFuZTNzZnBIeTQxV3VkSC9hTkJuOXZMMFNCU0pMcWFiM25mN3ZTRnVZUHU2N2ZQWjF5aEdGU3RzZnM3RVRmYnFqaXIyOXRJRTVKV3ZOemxhbVQ4MElzTmpZQ1hTWVZlQjlmbnY2SkRHZklBck1QVktpRTdLVGNlL1cwdFFXUnQ2TWxwRmMxdE1JU2l3bVFKcGg0TUllZGg3YzNFQ0NzbjVDVkIzaS9ia09vRVZMM3pRVmJ2VE8zNnRWYmlyYzZicHpkV2xhRk9qRGx5N2pjWG02NTlMRWFvRHF4TlN0Tjcvd1RKdkwwOUZNZG1YcGlsc1dkTElTei8weld4ZUpybnJMb2krNjRONWN4RnVsaDhIM3l6WGJ2NzZmSWdLdXZNOWVQdmNGejVkdGZhbzhWRnIxVjJkeThOdmNIVnBHOVNvNDRwdVl6ZERmclN2L05CUDY1SXNiZWZmUDl5dWY0eEZQcm5PaUErc0VmSjVoV3RnZll1YkhyVzFKaFJSVVdDSVg5QjdrMTdoL0lSUzJrQVlxZEZ5MjROZzIrQ3J0czluWCtOTCtQWE5iSjZmM0JXN1B2elFjTkd0a0hsK3pHK3dQT1FkaGtRR3hjQktwTU91QXV1YlB6QXFwemhvT2lGTzFRVzRicFZZM3o4NUNyZktDY3dITjFIRkYrR3Vkbnl6RG15aW5WNzN2VUVINC9mUC9EQytnbmFqVkxwT09HaEpQWHFCRmE5eGZrd2hiWFN0aEtnMjJVL3I5OVBzZmNBeGpLMmdkVFdVb0M3VzNmL2NBVlo5WUJYTkFycnR0Z29qejg5Z2FwVjQ1bm1aZXlEb25xelgrR05jWWUyOVprU2JEYmVDUXRyN0FCd2ZWMTdyL3pReEdtNTVxTFV0L0h5SWVuTmhqSGFXT2oxK3NiNEI3UFY1akNta1haWk9XQTJUL1FLczJpdStSOEN4c2FnUVZ5em5oQVIxMThIODBiN0JuNU9MbWU5ZWo1SUwzYTNlMS92bnB6Q3hvdVVHT0FXQk5TSStyM0FNckcrdkw4TDMyaWhaMFl1TTF1OFI0UFdmbUY1Ukc0QWplUk9zdC81RjlsWGI1L092OGZVZjQxQllHM1V0WTVzTnVCWDBvU0hnK0xqQXZtWVROOXlDaDRGUCtCNHZydjJPSFZ1M1lydlhCZmgvbUo2SjdCb0RLNUVPKzJyREtrSkJFVVFWanpOVm9nSTEwYkpEQjdTcVh4SFo1SUV0RHRKWjJ1ZGw2ZzFMaHdCQmdTMG1Vc3ZPNUJPajBBOHQ4WE9iSDFGYU8yTXJnbHluM1ErRGdweHVZRFY1Y1JwdUZiV0FaNnJFK2F1amVmdE82T0JhQTRXMExwU2NuSktnenFKck9xRW1wTWdJcktJU29XQXQ4ZjRib0d3NkxZU1lndnd2bm1LNFZ5dlAvVEN5cEdYMEoyZTRWR21LOWgxYW8yNHhyUk44VTZWdHRnYTNBMzg0aENKRTNWK0JpdHFsNXppRkc2QnRoeUhZZGQvOHFiODQ3WWFLZ1VQUUprYis2czNSdmxNSHVOWW9oS1RhOHprbHFZTkZnVU42bXJ3NGhWSEZMY09FSmtJQjdYMlZrV2ZDblpFbWdYbTVpQStzSnVIOWVZVlhZSDF6QlhPcmFEK2tZcFNFMndkdGFZSzh1VG9mMWJSdGtLanVDbGdQZlBYbDJ5YzByL0U1L0VhV05QL3RtOHJacFFxYXR1K0ExbldMYVlNR21DcHRNNndKK3RCTTNnUTFyMGpmSFVlRG55b21zbnNNckVRNjdDdXdtcnkrakNVLzVRZzJocitzNUdYUmJkV2Z1TE9ydFhZSGRCYjAxWVp0c2c1eG8zYk9SL1BzUWNOZXlrcjVEUWJ1dkJ1OGljSEhBcXZ3NGdJOHVwUUxPcUJhVjVwSzZMbjJTaWhINVZFZFdITmowSklocUpMQ3ZMeWxuRjNxWXRSKy9YSDZ4ZWhaczF6emE0TVJXSlZ6ZHRRY3RCVTNnNzI4VUFRVU1iVHV6MXAvcExLQzl6WDc0b0lIdXBRTENualdsYVpTVDZ5OTh1RW4rKzdSSVV6NE1XZlFNTE95a3VLYmtkdXhwSm81UUNvSnJDYmgrbm1GUzJBMWhic1pGYlhQSmhiS1Q3dW8zMzFVb0xlNHNiUVdFc3JISjhEM2k2NXIwODIrYlB1RThqVytENERmTEZmazE4N1FCcFV6c3RjY2hLM0JQelFUQmxZeU5nWldJaDIyRWxpL3pEdjQvM2tRNnhmUHhlejVTN0hod0VVODBVdGJIL1AyTWM3dFhva0Y4eFppOWU2emVQalJnLzJudlh0MkRUN2JWbUh4M05tWXUzQWxkaHk5cmcyaGFscytDTEd2NytEWWxtVndONzNtN1Q1WFEvV2FYOTg3aGQxckZtUGV2Q1ZZdDlzWE4xK0U0WTIrZjRrYmg5WmowZXhabUx0NEF3N2ZEYmtCM3VIWk5SOXNXN1VZYzJmUHhjS1ZPM0QwdWpaazZVZTlROERsdzlpMllnSGNsMjNHa1Z1aCs4a1FVY0wxODdJNVg3TjlRdUgxUFp6YXZRYUw1ODNEa25XNzRYdnpSZGpYU1dTSEdGaUpkTmhuWUtVdjhla3p0a1JFWkVzWVdJbDBXQUtycUlwRjRuOTFXZGJCd0dwN0dGaUppT3dIQXl1UmppZFBuaUJXTE11TkltRXZEdzhQYmMxa0t4aFlpWWpzQndNcjBVZjgvZmZmMkx0M2I1anIwS0ZEZVBlT2ZjelltcGNuaDZKNGlrUklsS1l5NXVxTnVVOUVSRGFEZ1pXSWlJaUliQm9ES3hFUkVSSFpOQVpXSWlJaUlySnBES3hFUkVSRVpOTVlXSW1JaUlqSXBqR3dFaEVSRVpGTlkyQWxJaUlpSXB2R3dFcEVSRVJFTm8yQmxZaUlpSWhzR2dNckVSRVJFZGswQmxZaUlpSWlzbWtNckVSRVJFUmsweGhZaVlpSWlNaW1NYkFTRVJFUmtVMWpZQ1VpSWlJaW04YkFTa1JFUkVRMmpZR1ZpSWlJaUd3YUF5c1JFUkVSMlRRR1ZpSWlJaUt5YVF5c1JFUkVSR1RUR0ZpSmlJaUl5SVlCL3djVHdTeVRlOW4rVHdBQUFBQkpSVTVFcmtKZ2dnPT0=\",\"name\":\"wireframeFlowChart.PNG\",\"size\":33760,\"type\":\"image/png\"}');
INSERT INTO `zzzzsys_file` (`zzzzsys_file_id`, `sfi_code`, `sfi_description`, `sfi_group`, `sfi_json`) VALUES
('s14987709797667', 'SS', 'Sp', 't', '{\"file\":\"ZGF0YTppbWFnZS9wbmc7YmFzZTY0LGlWQk9SdzBLR2dvQUFBQU5TVWhFVWdBQUFnQUFBQUlBQ0FZQUFBRDBlTlQ2QUFCUUEwbEVRVlI0MnUzZGVaZ2NWM252OFpLblI5MVQ5WjVUZGM2cFhrWXpraXhMbGlWYmxyd0p5OFlDQWJwbWRTQkF3cjZ2Z1FBQnM4U0EyWGZDRXJiQURVc2dRSUFrbHoyWUdJSUpEb1F0aHJDWVBTd0dzM3JGdG13dGMvOXdsVkxJVW5kTmQwL1BxZTV2UDA4Ly9FSHJNKzQ2YjlYdnJhNnFjNEtBRnk5ZXZIang0c1Zyc2EvZHUzZXQyTDE3MTFHRjl3bzhQRHc4UER5OGFubUwvZU5UaDc3eDhQRHc4UER3cXVVdHR1dW83ZDY5YTdyd3J2WGJmZURoNGVIaDRlR04zdXZuajAvdjNyMXJaZUU5UGVDWHdjUER3OFBEd3h1aDE4OGZyKy9ldmF0UmVOY0gvREo0ZUhoNGVIaDRJL1Q2K2VPTjNidDN6UlRlalFHL0RCNGVIaDRlSHQ0SXZkd3MrOEdqZHUvZUZlN2V2U3Nxdk1QZHUzY2QxZWNmeHNQRHc4UER3eHU5dHlLN2FmQ29zbjg4MnIxN2x4VGUwWUJmQmc4UER3OFBEMiswWG40RFllOEdvUERIZGVFdEEzNFp3Y1BEdzhQRHd4dXB0Nkx3MUVEM0JpRDdjRmo0RDRpei94M2t5K1JPakllSGg0ZUhoemNTTDcrQmNHV2hBVmpSN2NPTndrOFBtbzJOaDRlSGg0ZFhTUzkvYXVCZ0E5Q3JVNWc1NU5vREd4c1BEdzhQRDY5YVhsaDRhbURsN3QyN2FyMnVFVFFLRFVERXhzYkR3OFBEdzZ1Y2wyZDQzZ0JNZC92cHY1WjFDSGtERUxLeDhmRHc4UER3S3VjVm54cVk2VHBwVUhaVHdIU2hBV2l3c2ZIdzhQRHc4Q3JwNlVJRDBPaDEwMSt4QVJoa3VrSUdEdzhQRHc4UGIzbTl2QUVJdStaNTlvK21DczhJRXY1NGVIaDRlSGpWOVhTcGUvZ0tEVUNOOE1mRHc4UER3NnU4Vis3cHZVSURRUGpqNGVIaDRlRk5pamZnaWtKc2JEdzhQRHc4dklwN2JCdzhQRHh2dlpOT090RzF0WnBQb3VoRUY4VzNzeExmMjRsK2pCWDlMQ2Y2MVM3U2YrdEV2OU9LK2djWDZmOW5JLzB4SitwQ0crclBwaEovSVUzaXJ6V1Q1R3Z0Mkg2eEZkdUwyMG55YjA3aWo3bFEvYk1WZWE4VC9YYzJVbSt4b2wvcFJQK2xFWG1rRmZualZHU25GVG0rSFVXdElBaHFqQWNlNGMvR3hzUERHNkxYRVdtNkdiM2RTbnlmanJYbnQ0MTlXOXNrRnphMS9WNnE0bXVkNklWKzM2M1kzT0xkcDNYQVJYSkZLekhmYkNiMlh6cld2YmxqM1htcm11bjkyc3FlYkszVmpDOGU0WStIaDRkM21GZlNTTmFtU3QzTmluNm1FL1UrSi9xL1RTalhMa0ZZTDQ4WHloVkc1TXN1MHUrd2tYcXlqZUxkSFpFbTlZSkgrT1BoNFUyS1YzTXplcnNUL1ZnYnFqZTZVSC9PaFhLVlYyRTlRcytJL3FVVGRhRVQvU29icW9la2NieGwxNjZ6WXVvRmovREh3OE9ydExkcDA4YlZUZEYzYzVGNnNRMzFSVWJrdXFxRzljZzhIVi9aU3V3RkhaYytmM1c3ZGFjTlNpTHFENC93eDhQRDg5cmJ2SDdkc2F2UzVxUGJpWDFIS3pIZmRxSVBqSFZZajhhN3lVWDZQNTNvVnptUmV6am5GUFdITit6d0wvMzBIeHNiRHc4di8wbS9wZlZ0TzhiK1ZTc3hYMi9GNXNDRWgvVW92SnRzcUM5eW9wL1JESk50MURQZWdGNCs5WC9wU1lLRWpZMkhONW1lblptWnN5S1BjS0g2SnhmSlZZVDE4bnBHOU05ZHBOOW1KZjZUWnJOcHFXZThSWVovclZRRFVGaFBXTE94OGZBbXh6TU5zOXBGNmx3WHlSY0phNis5dlcyVGZHcTJtVDUrOCtiajFsTFBlRDNDUDEvdnAzc0RrSDA0ek03K05Sc2JEMis4UFRjenM4cEc2a2t1MHA4LzNMVjh3dHA3N3lZbjhjZHRxQjY4MkxrSTJEOG1JdnpyMldxLzAxMm4vczgrM01qTy9xV3d0akFiR3c5dmpEd1JTVjJrSDI5RC9lL2RidUFqWEt2bFdkRjdUS1EvN0NKOS8va2dtR0gvbUhpdmtiMFBOZ0M5T29XWlFnTWdiR3c4dkxIeFZyZ292a00yQWMrTmhPdVllNkZjYVVTOWdSc0lKOVlMc3p6UEc0QmFyMnNFalVJREVMR3g4ZkNxN3pYRHNHTkZuMmNqK1NIaE9xazNFTXFYVW9rZjFXdzJoZjFqSXJ3OHcvTUdZTHJiVC8rMXJFUElHNENRalkySFYxMXYvZnAxdFRSVWR6R1IvcUFUdlpjd3hIT2lGMHdrMTdZVCszZHIyNnR1eC80MnRsNys2MzNlQU5TN2hmOVUxaDJzTEZ3dllHUGo0VlhRMjM3OGNhMVV4WTh6b2Y0ZVlZalh6V3RyKzUremFlc0I2OWV2cTdHL2paV25DdzFBbzlkTmY4VUdvRjU2bGlBMk5oNmVOOTd4NjQvWjBESDI1UzdTdnlFTThSYmptVkMrN3lMOStObGdObVIvR3dzdmJ3RENybm1lL2FPcHdqT0NoRDhlWG9XOG8rZm5idFZKM0R2VDJOeEFHT0lONUlYNnR5NVNMMnBGVVp2OXJkS2VMblVQWDZFQnFCSCtlSGpWOFk3dXpOMjJsZGhQNUZQeUVvWjR3L0tzNkQwMlVtOHhEYk9HL2EyU1hybW45d29OQU9HUGgxY0JiMzUyN294bVlqOU9lT0dOd0x2Umh1cU5ibVptRmZ2dkdIcjlCajhiR3c5dnRGNHpqazlvSithRHhVVjRDQys4VVhoRzlBMnBpbCt6K1ppamoySC9aWWxnTmpZZTNvaThWS2xqblZMdmFjVm1QK0dGdDV4ZUdzZlh0WTE5emNhTng2NWoveVg4MmRoNGVFdmtpVWhxSS9VM1R2UmV3Z3ZQSnk5VjhiVk94Yy9jRUFSMTlsL0NuNDJOaHpjOGI5cEc2c2t1bENzSkd6eWZQUnZKRDYzRTkyVC9KZnp4OFBBRzlGS2w3bXBDL1IzQ0JxOUtuaEgxYjBtVWJPVjRRUGpqNGVFdDByTWltNTNJSndnYnZBcDcrMnlrM3R3UmFYSThJUHp4OFBCNnZOcnRkdVJFdi9yUXVmb0pHN3pLZXFGY1pTUDk1MEVRSE1YeHdNL3dMLzMwSHhzYkQyOXBQQlBxT3pxUkh4TTJlR1BwUmZyemFSeHY0WGpnbFpkUC9WOTZraUJoWStQaERjOVRTamtyK3U4Skc3d0o4RzZjTmU1bHA1eXlyY254d0l2d3I1VnFBQXJyQ1dzMk5oN2VjRHdYNlFmWVVQK2FjTUNiS0UvYjc4eDEycnM1SGl4citPZnIvWFJ2QUxJUGg5blp2MlpqNCtFTjVwbUdXV05GZjV4d3dKdGdiNzhSOVlabXN5a2NYMFllL3ZWc3RkL3BybFAvWng5dVpHZi9VbGhibUkyTmg5ZUg1eUwxUUJmSzFZUURIbDQyZDRCU096aStqTXhyWk8rRERVQ3ZUbUdtMEFBSUd4c1BiL0dlTVNhMkl1OGhIUER3YnZIZWEwVS9Od2lDS1k0dlMrcUZXWjduRFVDdDF6V0NScUVCaU5qWWVIaUw5MUtSblllN3c1OXd3TU1yUGpLby95T080M1VjWDViRXl6TThid0NtdS8zMFg4czZoTHdCQ05uWWVIaUw5bW91VWk5Mm92Y1REbmg0cGVZTnVOcUc2c0VjWDRicTViL2U1dzFBdlZ2NFQyWGR3Y3JDOVFJMk5oN2VJcnltMXV0ZEpGOGtIUER3RnU5WVVmOHdPOXRKT0w0TXhkT0ZCcURSNjZhL1lnTlFMejFMRUJzYkQrL21HLzJVT3NlRmNoVUhjenk4L3IxVW14K3NuVnUxZytQTHdGN2VBSVJkOHp6N1IxT0Zad1FKZnp5ODh0NVJMbEl2Y0tJUGNERDN3dHR2SXZtOUMrVUtJL3B5Si9JVEUrcnZPZEhmdEtMK3k0cTZ4SVg2MnpaU1AyakZ5V1ZwWW43ZDB2RlZhUnhmMzRyTkFiYmY4bnRwSEY4M203WWV4dkZsSUUrWHVvZXYwQURVQ0g4OHZQSmVITWZtMEFWOE9KZ3ZrYWZNNzVwSmNrazdOaDlxVy9lNmpuSFBjbG8vTEZYcWJrYXBNMUtsanRWYTJ5QUlWdlE3dnAxT2UyVTdpbHBXNVBoVVpLY1YrV01qOGtnbitpK2R5T3R0cEQvcVJIL0RSUEo3eG5mcHZWVEZyd21Db01ieHFpK3YzTk43aFFhQThNZkRLK2sxdy9na0Y4bVBPSmdQejdPaTkxaFJseGpSNzNLaGVxcFQ2aHlyMWJZVFR6eGhsVy8xSWlLcG05SGJuVXIrdEczZFM5cXgrVWhUbXgrMFlyT2Y4UjJlWjBOOVVTdUsyaHl2bHNqck4valoySGlUNnRsUVBkaUl2cDZEK1FEcngwZnlleVBxMHpaU0wwMGpmVDhUUlNjY2VyWlh4WG81WmROSjdUUkpkdHo4eTRHOHpvaDgrZENWSHFtWFJYdVhHYVhPNEhpMXRCNGJCdyt2dTdmQ1J1cGxITXo3OGk1em90NXZJL1hFTkl4UDdmWFQ3ampWWDd2ZGpsd1UzODZLZnJZVCtZUUw1VXJxWlhHZUZiMG5qZlQ5T0Y0Ui9uaDRJL2ZXQmtIRGlYby80Vi9PUzFYOGV5dnhSNXpveHg1dW9wY0pyNytqMGpBKzJZbyt6NGI2czA3MFhzSy9sSGZBaW40V3h5dkNIdzl2Wko1U3lybFFYMHo0ZC9mYWlmMTIyN3JYelRjN2Q3UFdOS2kvY3Q3eHgyK2FYOVZzUDZpVHVIZTJFdk1Md3IvSE85SnZ6WDlCNG5oRitPUGhMWm1YS25Xc0NlWDdISHdQLzI0bXlUYzZMbjNCaHJWclRxWmVodU9sY1h5R0UvMHFKK3BuaFArUjN2S3ZUQnBFK09QaExabG5SRzd0UXYxYkRyNjNlSC9UcWZnNVI4L1BuVXE5TE8wOUowYXBNNTNvdnphaWYwSDlIZUlsNWx2clZ4K3poWG9oL1BId2h1cFppZTlwUmU4aC9BL08xMzZGRTNsZEVpVmJxWmRsOFk1eVVYd0hKK3A5VHZTTlhIYks3alZKek9WclZzMmVTYjBzMmx6QnhzSERPNHpuUXZVZ0ozb2Y0YThYYktnLzZ5TDF3TFZCMEtCZS9QQkVKRFdSZW9vSjlhWGNjR29XV2lxK29oa2xwMU12NVlJL20vZW45Q1JCd3M2Sk56SGhML294WmFiMUhlOGxXdVVxSi9wVlRxbmpxQmUvdmJsMjYreTJNZTl2eGVhbWlYNTZJSlNyVTVHZDFFdlA4SytWYWdBSzZ3bHJkazY4aWJqbUg2bW5UUFlOVi9Kakc2a25PK2NVOVZJdDc5aTFhemEzRS9kYUYvVmVrR3BjNjltSVhHZERmVGIxY3NUd3o5Zjc2ZDRBWkI4T3M3Ti96YzZKTi83WC9QVnpKalg4amNoWDBramZOempDNUR6VVMzVTg1NXk2dVpHVm4weGlQZDk4MzQ3Y25YcTVSWjdYczlWK3A3dE8vWjk5dUpHZC9VdGhiV0YyVHJ6eERQOUl2M3dpcCtNVjlSa1h4YnVvbDdIMGFpN1NEekNoL3U0RVhzYmFlNlJaQXllMFhoclorMkFEMEt0VG1DazBBTUxPaERmRzEveGZQWEhoSCtyL2NGRjhlK3BsSXJ3cEc2cUgyRWgrT0dFM3NPNTNrWG9nOWJJcnpQSThid0JxdmE0Uk5Bb05RTVRPaERlMjRSK3BGMDdZTmRJdm0xRGZpWHFaU0srV1N2eW80cVdCQ1hoNllKK1YrSjRUWEM5NWh1Y053SFMzbi81cldZZVFOd0FoT3hQZUdKLzVQMk5Td3QrRStudE81QjdVQzE0UUJDdWR4RTlzcWZpS0NYbDA4RVlyOFYwbXNGN3lYKy96QnFEZUxmeW5zdTVnWmVGNkFUc1QzcmhlOC8vekNYazA2aW9YcVhPRElKaW1YdkNLM3FaTkc0L3VXUE9XVm16Mmp2dWpnMmxzcmwvVGJ0OTF3dXBGRnhxQVJxK2Ivb29OUUwzMExFSHNUSGhWQzMrbEhqWUJ6L252dDVGNlMwZWtTYjNnZGZQV3JwcmRuaXIxeWJHZk1WREh2MSs5YXZZT0V6UytlUU1RZHMzejdCOU5GWjRSSlB6eHh0SXprYjZQRTcxL3JNTS9pdis5R1NiYnFCZTh4WGlwVW5kZHpLSlhGWjB4OE1xMnNpZFB5UGpxVXZmd0ZScUFHdUdQTjdabi9xRSsyNG5lTzhZSHQ2dWJLbmwwRUFRcnFCZThmcno1SUpqSkhvbmRPNjZYeFl6b1g4Vnh2RzRDeHJmYzAzdUZCb0R3eHh0TEw0bVNyU2FVYThZMS9KdXgvV2hicTNucUJXOFlYaHJHSnh1UnI0N3QwekNodmpTT1kwTzlCSXRZRllpZENhK0tkL3ZQekt4YXpMcnFWVHE0cFltNWZEWnRQWkI2d1ZzQ2I4b3A5VFFqK3ZxeG5ERXcxQmNGUWJDU2VpSDg4Y2JVYXphYllrVmRNcFpuL3NaOFlOT21qYXVwRjd5bDlKcGFiM0NSL3NJNHpodGdSZDVOdlZEOGVPUHBUVG5SL3pKMjRhL2pxMWVsclVjeHZuaWo4anFkOXNxT3NTOXJ4V2JmMk0wYkVLa1hFdjRVUDk2WWVUWlNieDYzOEc5cis0VmpWcS9id3ZqaUxZYzNQOXM1dXhVblB4NjNlUU9zVWc4ai9DbCt2REh4WEtUT0hiUHczOXV4Nll2T09PTldsdkhGVzA3dmhCTTJ6emtWdjN2TTVnMjR5VVh4N1FoL2loK3Y4dUVmMzhHSjNqY3U0WjhtNXZMNVR2dU9qQytlVDU1VjZxRkc5QTNqTW0rQWpmU3ZqNWxmdDVud3AvanhLdXFaaGxualF2MmJzVG56MS9iem05WWR2Wkh4eGZQUlM4UDRGQmZKLzR6TC90Wk1rcStlZWRLSnJVa0kvOUpQLzFIOGVGWHdOZ1JCM1loOGVWd09SaDNyL3ViMDAwOTFqQytlejU3VzJqcVJUNDdMMHpXZHhMMXp6TWMzbi9xLzlDUkJRdkhqK2U2NVNMOTFQQll1aWErZlMxdVBaSHp4S3VRZDVTTDFvc090c1ZIRlJ3ZXRVbzhhNC9DdmxXb0FDdXNKYTRvZnoyZnY1blhPeCtMTS8rZnJadWZPWW56eHF1aFppZTlWbkRpb3F2TUdXTkY3M0l6ZVBvYmhuNi8zMDcwQnlENGNabWYvbXVMSDg5V3pXdC9LaXQ1VDlmQnZKc2szamwyN1pqUGppMWRsenlxMXcwYjYxOVdmTkVqOXRPeHFtaFVKLzNxMjJ1OTAxNm4vc3c4M3NyTi9LYXd0VFBIamVlVVpZMkluOHVPcWgzODdTUzdjdW5YTFBPT0xOdzdlaHJWcnRqYTEvVjcxSncyU0M0SWVpMnRWWkh3YjJmdGdBOUNyVTVncE5BQkM4ZVA1NkZsUi8xRDVuLzBUOC9iQ3pYNk1MOTVZZUpzM0g3ZTJGZHYvcVB4MHdaRjZVc1hISTh6eVBHOEFhcjJ1RVRRS0RVQkU4ZVA1NkxsUVBhanlaLzdXUFkveHhSdFg3NlNUVG5STzZmZFZlZElnSzNwUEVrVW5WblE4OGd6UEc0RHBiai85MTdJT0lXOEFRb29mejBjdmp1TjFMcFNyS3h6K0IyWnRlaTdqaXpjQjNsRmxuOUR4ZVAvOXh0b2dhRlJzUFBKZjcvTUdvTjR0L0tleTdtQmw0WG9CeFkvbm96ZmxRdjBmRlE3Ly9aMDAvVFBHRjIrQ3ZCVk85R3NyUG1QZ1gxZHNQSFNoQVdqMHV1bXYyQURVUzg4U1JQSGpqZGl6b3A5YjRmRGYyM0hOaHpLK2VCTjUyUzVTTDY3d1pic0RWdUs3VkdnODhnWWc3SnJuMlQrYUtqd2pTUGpqK1JuK1N1M29OcysvMTNPTmk5NHoxMnJlaC9IRm0yVFBpajZ2dXBOMG1WK2VzR0g5K29xTWh5NTFEMStoQWFnUi9uaStlaHVDb0c1Qy9kMktIanh1bW04MS80VHh4Y01MQWlmNkdaVmRrdHVZLzFlUjhTajM5RjZoQVNEODhiejF1djE4NlBuQlk5OXMybm9RNDR1SDl3Zjc4d3VyT21OZzlrdmVlSXhIdjhGUDhlT055a3VpWktzVHZiZWlkL3MvaHZIRnc3dmxLMVh4YXlvNVk2QlNQM1BPcVhFYkQ0b1Z6MGR2Nmtpci9QbCs4SmgxNlY4d3ZuaDRSL2JhaWYyN0tzNFlhRVAxUnNLZjRzZGJZczlGNnR3cWhuL0h1R2N4dm5oNDNiMmRPODh3YldQZVg4RVpBdzhZa1ZzVC9oUS8zaEo1clRnK3hvaGNWOEh3ZndQamk0ZFh6anYxMUpPc1ZmclRsWnN4TU5UZjNoQUVkY0tmNHNkYkFzK0p1ckJ5MC90cTgrR2RPODh3akM4ZVhubnY1b1c5OURjck4yTmdwRjVBK09QaERka3prYjVQOVI0VmlyOXlxeTJiTzR3dkh0N2lQZE13YTR6b1gxUnN4c0FibTFwdklQeng4SWJrelFmQmpCUDVTYVhDWDhjL1BuNzlNUnNZWHp5OC9yMDBqRTgxa2Z5K1NqTUdta2gvcUdyaFgvcnBQNG9WYjlTZUZYMStwY0pmeFZldG01L2J6dmppNFEzdU9hWE9jYUwzVjJuZUR4dkZ1eXN5SHZuVS82VW5DUktLRlc5azRUOHpNMWM4QTZqQWM4SUhWcWV0UDJGODhmQ0c1MW5SejZyWTB6L2ZXTDE2YnJvQzRWOHIxUUFVMWhQV0ZDdmVxRHdyK3Urck5FTll4Nll2Wlh6eDhJYnVyVENSL25ERjV2MTRpdWZobjYvMzA3MEJ5RDRjWm1mL21tTEZHMG40Mzd6WXo0SEtUQSthMkF0MjdUb3JZWHp4OElidkdXTmlFK3J2VmVaNG9NM3ZObTgrYnEybjRWL1BWdnVkN2pyMWYvYmhSbmIyTDRXMWhTbFd2S1gwVnJoSXZsaVZuYjJwa3g4ZGYveW1OWXd2SHQ3U2VVN3JFMU1kWDFlVjZZSTcxcjNady9Gb1pPK0REVUN2VG1HbTBBQUl4WXEzMUY0YTZmdFdKZnpUT0w1K3phclpNeGxmUEx5bDkyYlQxa01yTkYzdzNvNHhHejNhZm1HVzUza0RVT3QxamFCUmFBQWlpaFZ2Qk42VWpmUjNxN0l3U0NkMVQyQjg4ZkJHNTdXTmZYdFZwZ3UySXUvMlpQdmxHWjQzQU5QZGZ2cXZaUjFDM2dDRUZDdmVpSDdtZTFobDFnT1B6VWNZWHp5ODBYcW5iRHFwYmFQNDBvcE1GN3pmaWh5L3pOc3YvL1UrYndEcTNjSi9LdXNPVmhhdUYxQ3NlRXZ1Tlp1dTN0THhqeXR4alM4eHY5aTBhZVBSakM4ZTN1aTlOSXhQZHFKdnJNWjB3ZW9EeTd6OWRLRUJhUFM2NmEvWUFOUkx6eEpFc2VJTjZLMXl6U2RXNUFhZkE2dGJzMy9FK09MaExaL25SSjVla2JVQ0RqVERaTnN5YnIrOEFRaTc1bm4yajZZS3p3Z1MvbmdqOGM3Y2VrTGFTcExMcW5DRFQ5dTYxek8rZUhqTDdxMHdvajVkaGJVQ0RwMGllTVRiVDVlNmg2L1FBTlFJZjd4UmVyTzIrYlJLaEg5aXYzM1NTU2M2eGhjUGIvazlPMlBuWFNoWFZXS3RnQmw5MmpKdHYzSlA3eFVhQU1JZmIyVGVqcTBudE5QRVhGNkJSM3YyejNjNnQyZDg4ZkQ4OFp6b3gxWmtyWUIvOFhvOCtnMStpaFZ2RUc5VjJueHlGWjdyYlJ2M0pzWVhEODg3YjRVTjliOVhZYTJBL0Y0QWxnakd3OXU5Szk2MTY2eWtxYzMzL1grdU4vN3BtalZyRk9PTGgrZWY1NVE2em9yZTQvdGFBVmIwM3hQK2VIaVpOZGRxM3I4YWszckVkMlo4OGZEODlhem9aMWRnQnRHYjFxOCtaaFBoajRlM2UxZmMwdWJ6M29lL2l0L04rT0xoVldBZWtjUjgwL2RIaWR2V3ZZN3d4NXQ0Yi9YczdPMjhELzlJcm01SFVZdnh4Y1B6MzF2VGFkL1orNmVKZEh6MTFxMWI1Z2wvdkluMlVxWC8wZnZwUEpWNkd1T0xoMWVsdFFMTUJ5dHdRL0V6Q1grOGlmV3N0Y2M0MGZ0OERuOFR5dmVESUZqSitPTGhWY2RiTjdmMkJDUDZCcjh2SzhwUGdpQ28rUkQrcFovK283andodVU1MGEveGZ5RVB1VHZqaTRkWHdlTkxwRjdvKy9FbGpmUjlsM243NVZQL2w1NGtTQ2d1dkVHOXRVSFFjS0ZjNGZQT2FVUjlpdkhGdzZ1bTEyNjNJeVA2NXo2dkZXQkVmV2Fadzc5V3FnRW9yQ2VzS1M2OFFUMFg2UWY0dm9TbmlhSXRqQzhlWG5VOUY2b0grYjVRVUtyVXNjc1Uvdmw2UDkwYmdPekRZWGIycnlrdXZFRTlHK3FML083TTlic1lYenk4eW50SE9kSGY5SG1oSUJ2cGx5OUQrTmV6MVg2bnUwNzluMzI0a1ozOVMyRnRZWW9Mcnk4dlZXcWo1MHQ0N20xcXZaN3h4Y09ydm1jbHZwZlhxd1NLL2xVUUJOTWozSDZON0gyd0FlalZLY3dVR2dDaHVQQUc4V3lrWCtIMXozS1JmaXZqaTRjM050NEtLK29TbnhjS3NoTGZhMFRiTDh6eVBHOEFhcjJ1RVRRS0RVQkVjZUVONkUwYjBiL3krSnJjalVraldjdjQ0dUdOaitlVU9zZnZoWUxrZ2hGc3Z6ekQ4d1pndXR0UC83V3NROGdiZ0pEaXdodlVzeExmMitjYmNteW8zc1Q0NHVHTm4rY2krYUxIQ3dYdHowODhsbWo3NWIvZTV3MUF2VnY0VDJYZHdjckM5UUtLQzI5Z3o0bDh3dU1iY202ME16TnpqQzhlM3ZoNUp0UjM5SHlWd09jdTRmYlRoUWFnMGV1bXYySURVQzg5U3hERml0ZkZFNUhVaWQ3cjdRMDVrWDQ3NDR1SE43NWVNMG0rNGV0Q1FUYUtMMTNDN1pjM0FHSFhQTS8rMFZUaEdVSENIMjhvWGlyeG83MitHemVLVG1CODhmREcxMXZsbW8veGVhR2dOYXRXMzNxSnRwOHVkUTlmb1FHb0VmNTR3L1NNcUUvNUd2NU81Qk9NTHg3ZWVIdW5uWFp5MmtyTUwzeGRLS2hqM0N1WGFQdVZlM3F2MEFBUS9uaEQ4OXBSMURyU3dqOWVYSk9MNGpzd3ZuaDQ0KzkxckQzZjExVUNtenI1NGJKdXYzNkRuK0xDNi9aeW9oL25hL2hiVVpjd3ZuaDRrK0cxMjIxalFybkcxNFdDV21KTzgySDdVVng0US9NT04vV3ZOM2ZqUnVxQmpDOGUzdVI0VHZTcmZWMkx4RWJxWllRLzN0aDRhUmpPT3RIN3ZRei9VUDkyUXhEVUdWODh2TW54bkZMSGVUc2RlU1EvSXZ6eHhzWnprWDY4dnpOdzZWY3p2bmg0aytmWlVIL1cyMG5KWnZScHk3SDlLQzY4b1h0TzlMLzRPZ09YRmRuTStPTGhUWjduSXZWQWIyY2tGZjBjd2grdjh0N2FJR2dZMGRkN09RTlhxQzltZlBId0p0TmJHd1FORjhvVm5rNUs5Z1hDSDYveW5nbjFuWHlkZnRPRzZpR01MeDdlNUhwTzVIV2VQcDIwWDJ0dFJ4WCtwWi8rbzdqd0Z2TktWZnpYWHM2OUhjcFZzOEZzeVBqaTRVMnVsMFRSaWI0K25aUkcrcjRqMkg3NTFQK2xKd2tTaWd1dnJKZHE4MzB2NTk2TzlGc1pYenc4UEN2cWE1N2VvL1RPRVlSL3JWUURVRmhQV0ZOY2VHVzhEV3ZYYlBWMTRZMVVranN4dm5oNGVGYjBNMzI4VEdsRS96SUlnaFZMR1A3NWVqL2RHNERzdzJGMjlxOHBMcnd5M3F4clB0WExoVGNpL1p2dDIwOHhqQzhlSGw3SG1HTjlYU0k0RGVOVGxpajg2OWxxdjlOZHAvN1BQdHpJenY2bHNMWXd4WVhYMVdzbDloTmVycnFWbUxjenZuaDRlTG5YVEpLdmVYbXlvdUpuTGNIM2JXVHZndzFBcjA1aHB0QUFDTVdGMTh2YnVmTU0wOUx4MVQ2dXVyVzZOWHNPNDR1SGg1ZDdzODQreDhlVGxYYVNmSHJJM3pmTThqeHZBR3E5cmhFMENnMUFSSEhobGZIV3JKbzkwOGZ3VHhQenF6UE91SlZsZlBIdzhISnIzYnFqVC9SeWlXQWRYN056NXhsbVNOODN6L0M4QVpqdTl0Ti9MZXNROGdZZ3BMand5bnF6THYwTEg1ZmNiQnY3ZHNZWER3L3ZVTThxOVdVZmx3aGVOenQvNnlGODMvelgrN3dCcUhjTC82bXNPMWhadUY1QWNlR1Y5cHlLMyszanpqVFhhdDJQOGNYRHd6dlVjNUY2Z1k5TEJNL2E5TndoZkY5ZGFBQWF2Vzc2S3pZQTlkS3pCRkZjZUFkM0p2bVJoenZUamR1MmJabGxmUEh3OEE3MWpGSm5lTGxFc0ZML01JVHZtemNBWWRjOHovN1JWT0VaUWNJZmIxRmV0dnl2ZDUxME16R2ZaWHp4OFBDTzRFMjVVSDduM3hMQjhwTWhmRjlkNmg2K1FnTlFJL3p4K3ZHc3hQZjJzWk5PdFg0NjQ0dUhoM2NrejRsNm40OUxCTnNaT3ovZzl5MzM5RjZoQVNEODhmcnluT2hYZS9jem11Z0ZFMFZiR0Y4OFBMd2plVFpVRC9GeGlXQVQ2ZnVNWlB2MUcvd1VGOTdCQmlEVS8rSGZ6MmpxWjR3dkhoNWVONjhWUlcwbitvQ0hTd1MvZXRUYmorTEM2OGRiWVVLNXhyZWYwYXpJdXhsZlBEeThYdi9XaGZyYnZpMFJiRVI5aXZESDg5Nkw0M2lkajlmUW5PZy9ZM3p4OFBCNk5nQ1IvbHZmbGdpMm9mNDE0WS9udmVkRTd1N2pOYlFrU3JZeXZuaDRlTDFlVnFtSCtoVCsrYnNaaGgzQ0g4OXJ6NG8rMzdmd2Q2RmNGUVRCVVl3dkhoNWVyMWVxMUxHK2hYLzJLOERaaEQrZTE1NEwxVC82ZHdPTlhNRDQ0dUhobFgwWnBYL2wzUkxCa1RxWDhNZnoyak9oL3E1dk45QlkwZWN6dm5oNGVHVzlabXcvNmxYNDMveCs1MUtGZittbi95Z3V2Q085NW9OZ3hvbmU3OTBOTkZHOG0vSEZ3OE1yNjgybTduelB3bi9CaXJwa0NiNXZQdlYvNlVtQ2hPTENPK3pQL3pQNk5OL0MzNGxlRUpHVThjWER3eXZyelRYYmYreFQrR2UvWk83WnNXTzdHWEw0MTBvMUFJWDFoRFhGaFhlNFZ4cnArL29XL2tiMEx4aGZQRHk4eFhqSHJWdDduRS9objN2cjFoMTk0aEREUDEvdnAzc0RrSDA0ek03K05jV0ZkN2lYRlgyZWYzZlB5aWNaWHp3OHZNVjZOdEsvOW0xSjg5V3QyYnNOS2Z6cjJXcS8wMTJuL3M4KzNNak8vcVd3dGpERmhmZUhEVUNrM3VMZG96T2lYOG40NHVIaExkWXpvajd0MjZxbXM4MzBjVVA0dm8zc2ZiQUI2TlVwekJRYUFLRzQ4QTU3Q1VDcEM3MTdkQ1pVRDJKODhmRHdGdXM1MGEvMWJWWFRqckV2SC9EN2hsbWU1dzFBcmRjMWdrYWhBWWdvTHJ3amVhazJQL0R0MFpsbW1HeGpmUEh3OEJicldhVWU3dDJxcGlwKzl3RGZOOC93dkFHWTd2YlRmeTNyRVBJR0lLUzQ4STdrN2RwMVZ0eUt6WTJlUFRxemYwTVExQmxmUER5OHhYcFdxZE85VzlVMDFKL3I4L3Ztdjk3bkRVQzlXL2hQWmQzQnlzTDFBb29MNzRqZXNXdlhiUGJ0dVZrbitqTEdGdzhQcng4dld4cll0NFhOTHV2eisrcENBOURvZGROZnNRR29sNTRsaU9LYVdHKyswNzZqYjgvTnBsRjhNZU9MaDRmWHIyZEVydk5zYlpQOVFSQ3M3T1A3NWcxQTJEWFBzMzgwVlhoR2tQREg2K25OcGExSGV2ZmNyTEh2WTN6eDhQRDZYOXRFZjh1M3RVMmFXcS92NC92cVV2ZndGUnFBR3VHUFY5YnJXUGNNM3liTjZCajNDc1lYRHcrdlg4K0svcmgzYTVzb3RhT1A3MXZ1NmIxQ0EwRDQ0NVgyVXRFdjlHM1NqTmxtK25qR0Z3OFByMS9QaUhxRGI5T2JwMHJkZGNtMlg3L0JUM0ZOdG1kRDlTYmZKczFZM1pvOWgvSEZ3OFByMTNPaGVxcHYwNXZiVUQxa0ZOdVBZc0FyN1RsUjcvZHQwb3gxODNPbk1MNTRlSGo5ZWliUzkvRnRlbk1UcWFjUS9uaGVlWXVkTm5NVU8xT2F1cFR4eGNQRDYzOTY4M2kzYjlPYnUwaTloUERIODhxem9yN20yYVFaKzRJZ09Jcnh4Y1BENjlkcmlUblZ0K25OYmFUZVF2amplZVU1MFpkNU5tUFdieGhmUER5OFFieGo1dGR0OW0xNmN4ZXFmeWI4OGJ6eWpPZ2JmSm94eTRUNk80d3ZIaDdlSU41cHg1ODg2OXNNcHpiVUZ4SCtlTjU0RzRLZzd0bDBtUXN1MUJjenZuaDRlSU42YVd4dThHcUdVNlcvUHV6d0wvMzBIOFdGZDR1emYyTml6NmJMWERDUi9qRGppNGVITjZqWGlwT2YrelRKV2FyTjk0YjRmZk9wLzB0UEVpUVVGMTd4MVJGcCtqWmRwaEg5THNZWER3OXZVTStwK0p0K1RYS1cvSGlJNFY4cjFRQVUxaFBXRkJkZThXVm5adVo4bXk3VFJmcXRqQzhlSHQ2Z25oSDVxaytUbktXSnVYeEk0Wit2OTlPOUFjZytIR1puLzVyaXdpdStXbkY4akcvVFpkcFF2Wkh4eGNQREc5UnprZjZDVjVPY2FmTzdJWVIvUFZ2dGQ3cnIxUC9aaHh2WjJiOFUxaGFtdVBDQ0lBZ0NKN0xKdCtreW5lalhNTDU0ZUhpRGVqYlVGL2sweVZtcTRtc0gvTDZON0gyd0FlalZLY3dVR2dDaHVQQ0tyMmFZYlBOdHVrd2I2WmN6dm5oNGVJTjZUdVJmUFp2azdNWUJ2bStZNVhuZUFOUjZYU05vRkJxQWlPTEN1OFV2QURONnU0ZlRaYjZBOGNYRHd4dlVzNUgrcUZlVG5JayswT2YzelRNOGJ3Q211LzMwWDhzNmhMd0JDQ2tHdk1NMkFGcnY5RzY2VE5IUFpueng4UEFHOVZ5by90bTNlVTZDSUZpNXlPK2IvM3FmTndEMWJ1RS9sWFVIS3d2WEN5Z0d2TU42cTl1dE8vazJYYVlWZlI3amk0ZUhONmpuUkgzQXQzbE81b05nWnBIZlZ4Y2FnRWF2bS82S0RVQzk5Q3hCRk5kRWV2T2Q5aDI5bXk1VDlQbU1MeDRlM3FDZWlmU0hmWnZuSkFpQ3FVViszN3dCQ0x2bWVmYVBwZ3JQQ0JMK2VGMjlOWE9yYnU5VCtEdlJDNm5vRnpLK2VIaDRnM3BPNUJPZXpYT3l2NC92cTB2ZHcxZG9BR3FFUDE0Wjcrak8zRzE4Q244bmVxRnQ3S3NZWHp3OHZFRTlJK3JmZkpybnhJaSt2by92Vys3cHZVSURRUGpqbGZMbVorZk84Q244VzdGWmFGdjNlc1lYRHc5djRIbE9RbjJ4Vi9PY2hITFZrbjNmZm9PZjRwcGNyeG5ISi9nMVY3Wlo2RmozWnNZWER3OXZVTStJZk5tbmVVNk02RitOWXZ0UkRIaWx2S2JXNjMwSy8xWnNGanFKZXpmamk0ZUhOL0E4SjZLKzd0YzhKK3FuaEQrZU4xNHpERHRlelpVZG00VzJOaDltZlBIdzhBYjFiS1MvNTlNOEp6YVVIeEQrZU41NHM4RnM2RlA0dDJLellKWCtOT09MaDRjM3FOZFM4WlZlelhNUzZtOFIvbmhlZVU3MFBwK215elFpWDJaODhmRHdCdkYyN05odVdyRTU0Tk04Si9teGpmREg4OFp6b1Z6cDAzU1pKdFRmWTN6eDhQQUc4VTdZc0g2OWI1T2NPWkVMQ0g4OHJ6d242cWRlVFpjWnloV01MeDRlM2lEZXV2bTU3YjVOY3VhVWV1K3d3Ny8wMDM4VUY5N2hHd0Q5RGQrbXk5d1FCSFhHRnc4UHIxOXZ2dE8razMrVG5MbS9HZUwzemFmK0x6MUprRkJjZUllK2JLZ3Y4bXk2eklXa2theGxmUEh3OFByMTVwcnBmWDJiNUt4ajA1Y01NZnhycFJxQXduckNtdUxDTzh3bGdQZjdGUDVPOUlKVmFnZmppNGVIMTYvWFZNbWpmWnZrYkpWcm5qdWs4TS9YKytuZUFHUWZEck96ZjAxeDRkMnlBWkRYZXpWZHB1Z0ZLL0xIakM4ZUhsNi9ub3ZVUzN5YjVHdzJiVDFzQ09GZnoxYjduZTQ2OVgvMjRVWjI5aStGdFlVcExyei92UVFnK3RrK2hiOFR2V0FqL1FUR0Z3OFByMS9QaXZvSDN5WTVtMjkyemhudyt6YXk5OEVHb0Zlbk1GTm9BSVRpd2p2MGxVcjhLTCtteTlRTFR2UnJHRjg4UEx4K1BSZnBML2cyeVZsYm1WTUcrTDVobHVkNUExRHJkWTJnVVdnQUlvb0w3N0FOZ05aMzl5ejhGMnlrUDhMNDR1SGg5ZXNaMGIvMEtmeWQ2SVZXRkxYNy9MNTVodWNOd0hTM24vNXJXWWVRTndBaHhZVjNKRzl0ZTlWdHZKb3VzekJsSnVPTGg0ZTNXRzgrQ0daOEMzOGpjbDJmM3pmLzlUNXZBT3Jkd244cTZ3NVdGcTRYVUZ4NFIvUTJiangyblc4elpoblIxMi9idG1XSzhjWER3MXVzWjBVMit4VCsyVW5OdC92OHZyclFBRFI2M2ZSWGJBRHFwV2NKb3JnbTJrdDFmSzF2azJhc1gzM01Kc1lYRHc5djBkT2JLM1dPVitFdmVzR0svbmlmM3pkdkFNS3VlWjc5bzZuQ000S0VQMTRwcjVXWWIvazJhY1pjczMxUHhoY1BEMit4bmhYOUxLK21OeGU5WUVQMXhqNi9yeTUxRDEraEFhZ1IvbmlMOFp6RUgvTnQwb3haNDU3TitPTGg0UzErZXZOYlRtNjI3STg2aCtxcGZYN2Zjay92RlJvQXdoOXZVZDZoa3dINWNBTk54N2ozTXI1NGVIaUw5VXlvTC9WdGVuTXI4YjJXZFB2MUcvd1VGNTZOMUpOOG16UWpUZUt2TWI1NGVIaUw4ZFlHUWNPSjN1ZmI5T1pwR0o4NnF1MUhNZUF0eXJPaFB0dTNTVE9NNkJ1Q0lKaGlmUEh3OE1wNmFSaWY0bHY0TzlFTFdtdEwrT041NlptR1dlM2JjN05POUVJelRMWXh2bmg0ZUdVTkc2cUgrQmIrUnZTdkNIODhyejBUeWpXK1BUcVRTdndveGhjUEQ2L3N5NGg2ZzI5cm16aFJGeEwrZUY1N1J1Ukx2ajA2NHlMOVZzWVhEdyt2OUM4QW9yN200ZG9tcnlMODhiejJuT2gzZXZmb2pPaHZNTDU0ZUhpbHd0OWE3VVR2OTI1dGsxQTloUERIODlwelNqM050MGRubk9qOXpqbkYrT0xoNGZWNnBaTGN5YmZ3ejU0QU9HV3B3ci8wMDM4VUYxN1hCaUNLNytEajNiTW0xSGRpZlBIdzhIcDVIV05mNXQzQ1pxTDNiUWlDK2hKODMzenEvOUtUQkFuRmhYZWtWeHpIeHJmd3o1WUdmam5qaTRlSDE4dHJKdVlpM3hZMmM2SCs5aEtGZjYxVUExQllUMWhUWEhqZGZ3V1FIL2wyQTQwUitSTGppNGVIMTgwNy9mUlRYYXJqMzNzVi9xSVhVcVUvc0FUaG42LzMwNzBCeUQ0Y1ptZi9tdUxDNjNvTkxkTC81T0UxdEgzV1dzMzQ0dUhoSGNsYjAyN2YxYmZ3ZDZJWE90WTlkOGpoWDg5Vys1M3VPdlYvOXVGR2R2WXZoYldGS1M2OHcxOURzKzY1SGw1RFczQktuY1A0NHVIaEhjbHJHL3RxMzhLL0ZadUZOWjMyWFliNGZSdlorMkFEMEt0VG1DazBBRUp4NFhYelZyZG16L0V1L0crZUQrQk5qQzhlSHQ2UnZHYVNmTU8zOEcvRjVzWWRXMDlvRCtuN2hsbWU1dzFBcmRjMWdrYWhBWWdvTHJ4ZTNpbW5iRnZWaXMxZS96cnArS2VNTHg0ZTN1RzhqV3ZYSE90aCtDKzBZL3VsSVgzZlBNUHpCbUM2MjAvL3RheER5QnVBa09MQ0srdWxTZnhmUHU1TWExYk5uc240NHVIaEhlbzVyUi91Mi9HcUZadUZ0bld2SDhMM3pYKzl6eHVBZXJmd244cTZnNVdGNndVVUYxNXBMMVh4YTMzY21Ub3VmVDdqaTRlSGQ2am5SSDNBdCtOVkt6WUxxOUwwL2tQNHZyclFBRFI2M2ZSWGJBRHFwV2NKb3Jqd01zOUtmQzhmZDZhV052L0orT0xoNFJXOURVRlFkNkZjN2QzeEtqWUxjMG5TR2NMM3pSdUFzR3VlWi85b3F2Q01JT0dQdDJpdkZVVnRIM2NtSjNxL201bFp4ZmppNGVIbG5oTzV1NC9IS3h2cDd3M3ArK3BTOS9BVkdvQWE0WTgzaUdkQ2ZhbG40Wi9OQ3FpZXlQamk0ZUhsbjdFaTcvSHdaR1hCUmZvZFEvcSs1WjdlS3pRQWhEL2VRSjRUZVoxdjRaOU5xM2t4NDR1SGh4Y0VRYkEyQ0JvbWxHdDlQRmx4a2I3L1NMZGZ2OEZQY2VFZCtrcVZ1cHQzNFgveis0Q2RzZk9NTHg0ZW5wWDRubDZHditqOUlwSXUxL2FqdVBBRzhwck5wampSTjNrVy92bGxnQ2N6dm5oNGVFN1UrNzM4cFRLU0x4TCtlSlgyYktnLzYxdjRPOUVMVnRRbGpDOGUzbVI3eldaVFRDUy85L0tYeWtnOWovREhxN1JuUlQvVHQvRFAzODB3UG9ueHhjT2JYTStJUE5MVHk1UUxWcWtkaEQ5ZXBiMW1HSi9rWS9objc3OW1mUEh3SnRkemtYelJ4L0Izb2Y1dEVBUkhFZjU0bGZlY3lJODlEUDk4SjF2SitPTGhUWjZYUk5HSlhvYS82QVVyOGw3Q0gyOHN2RlNwMTNzWC9nZDN0UGhQR0Y4OHZNbnp1ajJtdk96M0tJWHF3YU1NLzlKUC8xRmNlSXYxNXB1ZGMzd00vNXR2dElrL3kvamk0VTJXdHpZSUdpNlVLM3dNZnlkNnIxTEtqV2o3NVZQL2w1NGtTQ2d1dk1WNHA1OStxbXZwK0NydndqL3pDaXNFTXI1NGVCUGd1VWcvd05Qd1gzQWlGNHd3L0d1bEdvRENlc0thNHNKYnJOYzI3djAraG44ck5ndnR4TDZEOGNYRG14elBpSHpGMTZlVHJGSVBIMUg0NSt2OWRHOEFzZytIMmRtL3ByandGdXZOdFpyMzhUSDhXN0ZaU09QNHVrMmJOcTVtZlBId3h0OUxSVzdyYS9nNzBUZkZjV3hHRVA3MWJMWGY2YTVULzJjZmJtUm4vMUpZVzVqaXdpdnRXV3VPZU0zTmgrZHdVNjJmenZqaTRZMi9aeVA5VVY4ZlRiYVIvdGdJdGw4amV4OXNBSHAxQ2pPRkJrQW9McngrUEJmcHYvVjBpZUFGSS9yblFmWklJT09MaHplZW5oUFo1RVFmOEhSZWtqKzQrMytKdGwrWTVYbmVBTlI2WFNOb0ZCcUFpT0xDNjlkelVYdzdMNWZjek41RzVKR01MeDdlK0hyRmt4RHZ3bC8wSG11dFhzTHRsMmQ0M2dCTWQvdnB2NVoxQ0hrREVGSmNlQU42UnhuUlAvZHk0UTNSQ3liVTN3MTZ6TDdGK09MaFZkTnJSMUhMaXQ3ajVhUmtvaGRNcEQrMGhOc3YvL1UrYndEcTNjSi9LdXNPVmhhdUYxQmNlQU43VnZSZitUcjNkall4MEwwWlh6eTg4ZlB5WTgrRVRrcW1DdzFBbzlkTmY4VUdvRjU2bGlDS0ZhK0haMFdPOXpYOGIzNnJyd2RCc0lMeHhjTWJIeThOdzFraitucHZ3ei9VdjdiV05KWncrK1VOUU5nMXo3Ti9ORlY0UnBEd3h4dXE1eUw5Qlg4bjRkQUxKdEoveXZqaTRZMlA1L04wNUU3MGdsUHhYeTN4OXRPbDd1RXJOQUExd2g5dktiekRMY0hwMDg1cFFuMXBFQVJUakM4ZVh2VzlwcVJybTdIWjQyMzRpMTQ0ZW43dTFDWGVmdVdlM2lzMEFJUS8zcEo0eldaVFRDalgrbm8zN3MwckJhb0hNYjU0ZU5YM1dvbDV1OC9oMzlUbVltKzJYNy9CVDdIaUxlYmxJdjAycjIvSWllU0hTM3hORGc4UGI0bTl0V3ZYbk5pS3pVMitobjhyTmd1cjB1YWpmZHgrRkJmZTB2MHNGeVczOHZxYW5PaUZ0bkhQWkh6eDhLcnJ0V1B6SVovRHY2WGpLM2RzUGFGTitPTk40TTVwditUN3pybHAwOGFqR1Y4OHZPcDVhenJ0dTNoOWZJbk5Rc2VhdHhEK2VCUHB6YVd0Ui9pOGM5NjhnN28zTTc1NGVOWHlkdTQ4dzdRUzg5K2VIMThPckp1ZjIwNzQ0MDJrZDlwcEo2ZHBiSDdoYS9objc1dmFTYktKOGNYRHE5VEp4Uk45UDdsb0pmWUN3aDl2b2oybjR1ZDRIUDdaL3ljWE1MNTRlTlh3VGp6eGhQazBNYi8yT3Z4anN6RGY2dHlGOE1lYmFLOGRSUzBqK2daL3cvOS9wK2xrZlBIdy9QYzYxcjNCOS9CUGsvaS9mQXIvMGsvL1VheDR3L1pzcU43a2Mvam55d1U3NXhUamk0Zm5yM2QwWis0MnJkanM4L3l5NGtKVDR2dDVzdjN5cWY5TFR4SWtGQ3ZlTUwwNGp0YzUwZnQ4RGYvQyt6V01MeDZlbjk3cHA1L3Fta255ZGQvRDN5bjE0NkF3MCtneWgzK3RWQU5RV0U5WVU2eDR3L2FzeUhzOUQvOEZKM3FmbTlHbk1iNTRlUDU1SFd2UDl6NzhSUy9ZU1AyRkorR2ZyL2ZUdlFISVBoeG1aLythWXNVYnRwZEV5VmJQd3o5L2Z5TUlncFdNTHg2ZVA5NzZOYXUzR2RIWGUzOURjU2hYTnB0TjhTRDg2OWxxdjlOZHAvN1BQdHpJenY2bHNMWXd4WW8zVk05RyttT2VoLy9ONzBpOWlQSEZ3L1BIczByL20vOVBFK2tGSy9wOEQ3WmZJM3NmYkFCNmRRb3poUVpBS0ZhOHBmRGNqTjd1ZmZqZi9ONmJodkVwakM4ZTN2SjdxWXIvckFyaDcwTDkyekkzRWkveDlndXpQTThiZ0ZxdmF3U05RZ01RVWF4NFMrbVpTSC9ZOC9CZmNLSVhVaFgvOTVsYlQwZ1pYenk4NWZOYWNYeDh2ei85ai83NElrOWY1dTJYWjNqZUFFeDMrK20vbG5VSWVRTVFVcXg0UyswMXcyU2JFMzNBOTRXQ1dyRlphRnYzT3NZWEQyK1pmdmEzcG1GRi9WY1Z3dCtJL3VWc01Cc3U0L2JMZjczUEc0QjZ0L0NmeXJxRGxZWHJCUlFyM2tpOFExZnc4bmt1Ny9sVzV4Nk1MeDdlNkQwcitwWFZPUE12ZitmL0VtNC9YV2dBR3IxdStpczJBUFhTc3dSUnJIaEQ4STZlbnp1OUZadjkzcy9sSFp1Rk5EYS9uRXVTRHVPTGh6YzZ6MFh4SFp6b0ExVUlmeWY2c3JWQjBGam03WmMzQUdIWFBNLyswVlRoR1VIQ0gyL2tYaWR4Ny9FOS9BdHJCWHd5Q0lJVmpDOGUzdEo3SFpHbUUzMVpSY0ovd1lsK25BZmJUNWU2aDYvUUFOUUlmN3psOHRhdm1UL09pRnhYaWJ0N2IzNjg1OW1NTHg3ZWtudFRSdFNucXhMK05wUWZCSWZNRzdKTTI2L2MwM3VGQm9Ed3gxdm1uL25VQzZweWpjK0ozbStqZURmamk0ZTNkSjZOOU1zcmRPYS80RVR1WHFueDZEZjRLVmE4WVh2TlpsT002TXNyczdPSCtyZEpJMW5MK09MaExVSDRTM3l2S29XL0VmV3BLbzhIeFlxMzdGNHE4YU9xMGVubmx3TFVKWWQ3M0lmeHhjTWJKUHhsc3dubG11cWMrZXQ5Sm9xMkVQNTRlSU41VTFiVUpWVUkvLzk5cS9jeHZuaDRRd3AvYTdVSjlhVVZDdjhGRzZvM0V2NTRlRVB3akZKbmRudmt4OGRKZy9JNXZ4bGZQTHlCdkpvVCtkY3FoYjhMNVFxbGxDUDg4ZkNHNUxsSXY2TXE0Wis5RHpRbHZoL2ppNGZYditjaS9iZVZDditiSi8xNUV1R1BoemRFcnlQU2RLRmNVWkh3WDNDaUY1cXgyVFBmYWQrSjhjWERXN3huUlQremF1SHZRdjJ0SUFocWhEOGUzcEE5Si9weFZRbi9nNDZPcjFnM1A3ZWQ4Y1hESysrbGtiN2ZZbWI2OCtSNGNNQW9kV1lWdzcvMDAzOFVLOTV5ZWFuSWJhcXlVTkFmdnVPZnRaUmF6ZmppNFpVSWY1R2RWdlNlaW9YL1lXLzhxOEI0NUZQL2w1NGtTQ2hXdkZGN1RxbHpyT2c5MVF2L2c5NDN0ZGFXOGNYRDZ4TCtZWHlxQytYcXFvVy9FL1V6NTV5cVlQalhTalVBaGZXRU5jV0tOK0x3L3lNbitzWUtoLy9ONzBpKzJHdzJoZkhGdzd1bFo2Sm9pd3YxYjZzWC9uckJLWFZPQmNNL1grK25ld09RZlRqTXp2NDF4WXBIK1BjN043aSthRDRJWmhoZlBMekNtYjlTeHk1bTFrL1A1djE0ZndYRHY1NnQ5anZkZGVyLzdNT043T3hmQ21zTFUveDRoSDlmbnJyd1NNdURVaTk0RTNmbTN6QnJuTWhQS2huK29meXVIVVd0aW8xSEkzc2ZiQUI2ZFFvemhRWkFLSDQ4d245UVR5NDR0QW1nWHZBbXpiTXpkdDZFOHYxcW52bnJCUnVxaDFSc1BNSXN6L01Hb05ickdrR2owQUJFRkQvZUNNTC9uUEVPLzROTndDZnp5d0hVQzk2a2VhMDRQc1pGOGorVjNYOUQ5VThWRzQ4OHcvTUdZTHJiVC8rMXJFUElHNENRNHNjai9JZnJHVkdmbVorZjE5UUwza1NkK1l0c05xSi9YdUg5OTdMOHFaNktqRWYrNjMzZUFOUzdoZjlVMWgyc0xGd3ZvUGp4Q1A4bDhlS3ZiTnEwOFdqcUJXOFN2RFNNVDdhaC9uV0Y5OS85TG9wdlg3SHgwSVVHb05IcnByOWlBMUF2UFVzUXhZOUgrUGZuSmZiU1k5ZXUyVXk5NEkzMW1iOVNPMXdvVjFaNS83V1Jma1VGeHlOdkFNS3VlWjc5bzZuQ000S0VQeDdoUDZJWkE1dHhmQUwxZ2plT25sUHFIQlBKNzZ1OC94cVJyd1pCc0xLQzQ2RkwzY05YYUFCcWhEL2VVbnVwVW5jai9BdGVLRmVrSXJlaFh2REc2c3cvMGs5d292ZFhQUHl2Y3lLYktqb2U1WjdlS3pRQWhEOGU0YjhNbmhXOXgwWDYvdFFMM2hoNFJ6blJyeDJIL1RlVitGRmpQNzc5QmovRmowZjREOW1MMVBPQ0lGaEJ2ZUJWMFpzTlprTVQ2UStPeGY0YjZiZE4ydmhTL0hpRS83Sjc2Z096d1d4SS9lRlZ5Yk16ZHQ2SWZHazhIdFdWcnh3WDY1RHdwL2p4Q1ArUmUxYlUxK0k0WGtmOTRWWEJjMUY4dThVODV1ZjEvaHZxM3pweDZ3aC9paCtQOEY4K0w1VGZtVkRma2ZyRDh6cjhsWHFhRTcxdlRQYmZmYWt5WnhQK0ZEL2U0T0YvVjhKL1lHOS94OWlYN3R4NWhxSCs4SHp5bkhQS2hlcWZ4bWwvUzFWOEh1RlA4ZU1SL2w1NXpjUmN0R25kMFJ1cFB6d2Z2Q1JLdHJwUWYzdXN3bC9pRHhMK0ZEOGU0ZStsbDhibVYxYml1MUIvZU12bGJkdTJaY3BHNnNsVzlKNngydCtVdm1UYnRpMnpreFQrcFovK28vanhDSDl2dkFOTzlHc1BYVmFZK3NOYmFxOFQ2emtuOHNteDI5K1UrdG42TmZQSFRkRDQ1bFAvbDU0a1NOaVo4QWgvcjd4dnBtRjhDdldITndvdjFlb2VMdFMvR2JmOXpVUnl6ZnpzM0JrVEZ2NjFVZzFBWVQxaHpjNkUxeXY4cmVnOWhQVkl2WnVzNk9jRVFUQk5QZU10aGJkcDA4YlZxY1J2SDlQOWJlK3F0UFhIRXhiKytYby8zUnVBN01OaGR2YXYyWm53Q0g4L1BTdnFrbVlZbjBROTR3M1RtMDFiRHpaS1h6NnUrOXNxMTN6Q2hJVi9QVnZ0ZDdycjFQL1poeHZaMmI4VTFoWm1aOElqL1AzMDl0cEl2M3crQ0dhb1o3eEJ2R1BYcnRuY2pPM0h4bmwvYXlmMjFSTTJ2bzNzZmJBQjZOVXB6QlFhQUdGbndpUDgvZmVzcUIvT3BzMTdVYzk0aS9WMjdqekRyRXFiVDJtcCtKcXgzdDlNOHY1ZHU4NUtKbWg4d3l6UDh3YWcxdXNhUWFQUUFFVHNUSGkzQ1A5UTNZWHc5OWRyeCtZang2eGV0NFY2eGl2anJlbTA3OXhLek5mSGZmOW94dmFqcDU5K3FwdWc4YzB6UEc4QXBydjk5Ri9MT29TOEFRalptZkFJLzhyT0czQjlLdnI1ODBFd1F6M2pIYzQ3WnZXNkxXMWpQamdKKzBjN1NUNTF5aW5ibWhNMHZ2bXY5M2tEVU84Vy9sTlpkN0N5Y0wyQW5RbVA4SysrZDVrTjFVT0NMc3NNczM5TWxuZnl5VnM3SGVOZWtjYm1oa25ZUDVyYVhIeXJMWnM3RTFZdnV0QUFOSHJkOUZkc0FPcWxad2xpWnlMOENldEtlRmJVMTlKUTNZVjZubHpQV3RPWXRlbTVhV0l1bjVUOUkwM2lyMjdkdW1WK0F1c2xid0RDcm5tZS9hT3B3ak9DaEQ4ZTRUK21uZzMxWjFPUjI3Qi9USlJYYTZyazBhMDQvdGxFN1IrSitlYW1UUnVQbnRCNjBhWHU0U3MwQURYQ0grL1Fsd25WblFuL2NmVFVoYW5JVHZhUHNmYW1iS2dlWWtYOWNPTDJqOFI4ZS9QNmRjZE9jTDJVZTNxdjBBQVEvbmlFLzZSNVVmeTVDWnNSYmV5OStTQ1ljYUlmYTBMOXZVbmNQOUlrL3RyR2pjZXVvMTdLQVgwRlB6c240VSs0anBHWG1HK3NTbHVQT3ZYVWt5ejdSelc5amtqVFJlcDVOdFMvbnRoNjF1WUxXN1pzWGsyOUxQR0xuWlB3SjF6SDBGUDZNaXY2UEJGSjJUK3E0YVZLYmJTUmVvc1JmY01rMTNNek1SZWRjc3EyVmRRTDRZOUgrT01ONEZuUmU0em9kMW1sZHJCLytPZHRDSUs2aS9UOWphaC95NWFKbnZCNnR2OXk1a2tudHFnWHdoK1A4TWNicnZmZk5sSlBWRW81OXJmbDlVd1VuZUJFdjlhRjhqdnFPWi9reC96emhNM3dSL2pqRFR2ODlaMElmN3dlN3h0ZHFQN1ppZHhqUXhEVTJkOUc0elhEc0dNai9lY3UwbCtnbmcrZDI5LyszNTA3enpEVUMrR1BSL2pqamV6cEFibXluZGgzelRYYjl5eWNmYkcvRGNucmlEU2Q2TWNhVVo5eG92ZFRmN2Q0NzI4YjkwenFoZkRISS96eGx0UFQ4UlZ0WTkvamxMcG51OTJPMk4vNjg1eTRkVTcwWTUyb0M1M29mZFRmNGQ5RzlQV3phZXNCSE8vN0QvL1NULyt4Y3hMK2hDRmVXYytLM3VORVBta2o5U1Fuc29uOTdjamVtU2VkMkpwdmRlN1JNZTROTm9vdnBmNUtoTC9TdjVydmRHN1A4YjV2TDUvNnYvUWtRY0xHSnZ3NUdPSDE1Nm1mT2RGL1o1VjZhQnpINnlaNS85MlN4RE56bmZiL21VM2QrYTNFWHBERzhmWFVTL20zamVKTDE2NWRjeUxIKzRIQ3YxYXFBU2lzSjZ6WjJJUS9CeU84NFhqcVowN1VCNXpvSjgrMVcyZVA4eXB0SFpHbVUrcVBiS1JmbmtieHhjM1k3S0ZlK2d4L3BUOXozSEViMTNDOEh5ajg4L1YrdWpjQTJZZkQ3T3hmczdFSmZ3NUdlRXZrN1dzbjlsc3RZOStYaW42cUNmVWQ3WXlkcjlMK3RpRUk2czB3UHNtRzZzRlc5Q3VkeUNlTjZNc1ozeUY1S243VmpoM2JEY2Y3Z2NLL25xMzJPOTExNnYvc3c0M3M3RjhLYXd1enNRbC9Ea1o0SS9GTUtOY1lrYTg2VWU5emtYcHhLdkdqYkJUdmRpS2JtczJtakhwL20wdVNqdFg2VmliUzkzR2luMkVqOVdZbmNvRUo5WGVkNkwyTTcvQTlFOHExVnVMN2NMd2YyR3RrNzRNTlFLOU9ZYWJRQUFnYm0vRG40SWJuV1RoY1l5UDEvWlkyWDJnbTl1T2R4TDJuWTkwYk84YStOSTMwMDV6b3gxcWxIcHBHK241VzRuczVrWHM0cGM1eEl2Y3drYjZQRGRXRGpjZ2pYYVFmYnlMMUZDZjZMMVBSTDIwbDV1M3QySHlrRmR1TFc0bTlOSTNOTDUzb214aVBVWSt2L200YXgxczQzZy9zaFZtZTV3MUFyZGMxZ2thaEFZalkyR01SL25jay9QSHc4Q29SL3BIKzRPeHNKK0Y0UDdDWFozamVBRXgzKyttL2xuVUllUU1Rc3JISEkveU42QnM0R09IaDRYbnU3Yk9pejl1MmJjc1V4L3VCdmZ6WCs3d0JxSGNMLzZtc08xaFp1RjdBeGliOE9iamg0ZUV0dlJmSmo0eFNaM0s4SDVxbkN3MUFvOWROZjhVR29GNTZsaUEyTnVHUGg0ZUhONEJuUmYrOXRWWnp2QitxbHpjQVlkYzh6LzdSVk9FWlFjS2Y4T2ZnaG9lSHQ3UmVLRmU1U04rZjQvMlNlTHJVUFh5RkJxQkcrRmZmczZFK20vREh3OFB6Ty96MTU1SkdzcGJqL1pKNXNwanBmcWNJZjhLZmd4c2VIdDVTTHlsdFJUOHJDSUlwanZjZWVQMEdQeHViOE1mRHc4TXJmNk9mL3J5Sm9oTTQzck5FTUI3aGo0ZUhOd0dlQ2VWYUcray9ENExnS0k3M2hEOGU0WThuZXA4VCtUSGJEMitjUFJ2cGo1bUdXYzN4bnZESEkvenhibjd2dDZGNjhOb2dhTGhJdmRDSnZwSHRoemRPbmhIOXF6VFM5K1Y0VC9qakxVWDRSL3IvRVA2VjlBNVlwUjVlSEVzbnNzbUp1cER0aHpjRzNqNGJxamRxclMzSGU4SWZqL0RINnhMK2Z6Q3VFdC9iaWZ5RTdZZFhUVTlkYUtKb0M4ZDd3aCtQOE1kYlJQam5yL2tnbUhFcWZrNnE0K3ZZZm5oVjhHd29QM0FpZCtmNFhKM3dMLzMwSHh1YjhNY2JUZmdYNitYWXRXczJkeEwzN2xaczlyUDk4SHowVENqWE9KR25CMEd3a3VOelpieDg2di9Ta3dRSkc1dnd4eHRkK0JmclpYNTI3b3hVcVFzWUR6eVB2QnR0cU43VWlxSTJ4K2ZLaFgrdFZBTlFXRTlZczdHOUNQL3JPUmhOVnZnWDZ5VVZ1YTJMOU9jWkQ3eGw5UGE2U0w4MW44S1g0M1Bsd2o5Zjc2ZDdBNUI5T016Ty9qVWJtL0RIVzc3d0w3NVNwZTVxUkw3Q2VPQ04wTnR2UkwrcnFmVUdqcytWRGY5NnR0cnZkTmVwLzdNUE43S3pmeW1zTGN6R0p2enh5b2EveUNPV3NsNmNVbjlrUkw3TWVPQXRvWGZBaVhxL0Zkbk04Ym5TWGlON0gyd0FlblVLTTRVR1FOalloRCtlUCtGZmZKbFEzOUdHK3Q4WkQ3d2hlamNaMGU5S291aEVqcytWOThJc3ovTUdvTmJyR2tHajBBQkViT3psQ1A5NE4rRlArQy9tNWVMNHJHWnNQOTZLelFIR0E2OHZUOFZYTzRsZllXZG01amcrajRXWFozamVBRXgzKyttL2xuVUllUU1Rc3JFSmY3enk0VzlFSHJuYzliZHU5ZnhwYldQZmxzYng5WXd2WGlrdlNYN2FNZTY4VmF0bVk0N1BZK1Bsdjk3bkRVQzlXL2hQWmQzQnlzTDFBalkyNFk5WG9mQXZlbW5xVWlmeWRCZkovekMrZUlmejJuSHlsYm0wOVlqdDIwOHhISi9IenRPRkJxRFI2NmEvWWdOUUx6MUxFQnViOE1mekx2d1A4WTV5U3AxalJYL2NpZDdQK0U2NHArS3JPdGE4WmMycTFiZm0rRHpXWHQ0QWhGM3pQUHRIVTRWbkJBbC93aCt2WlBpbkVqK3FLdlZuR21hTmk5VHpuYWlmTXI0VDVrWHg1MWJaOU5HMzJySzV3L0Y1SWp4ZDZoNitRZ05RSS94SDc3a292Z1BoVC9pUHVQNk9zcUUrMjRxODE0aStudkVkVDgrSS9wVVYvVmV0T0Q2ZTQvUEVlYktZNlg2bkNIL0NIMjhpd3Y4UFhxdFd6Y2F6Tm4xczJ5U2Zic1ZtTCtOYmNTL1V2N1dSK3I4dWl1OFFCTUVVeDJlOFhrQmZ3Yy9HSnZ3bk9Qd2ZQWTcxZk1LRzlldG5YZnBrcS9Sbm5PaDkxRXRGdkZDdWRKRit1d24xSFlNZ3FIRjh4Z3VXK3NYR0p2d0ovL0d0WnhGSnJWSVB0NUgrU0g2WmdIcnh4ek9pTDNlUmZrZXExRjJEdzZ6R3gvRVpqL0FuL1BFSS80RzkrU0NZY1VxZFl5UDFOMGQ2ckpCNldmcUZlR3lvLzkyS1BpOE40NU9ESUZqQjhSU1A4Q2Y4T1ZpT0lQeWQ2TWRRejFrZGkyeXlrWDZDaWZTSFhDUlhVUzlMNWFtZnVVaS8xVXA4TDJOTVRQM2hFZjdWRGYvYkUvNkUvN2p0SHp0MmJEZEhkK1p1MjdidW1jM0VmcnlsekcrcHY3NjgvZTNFZnF1Vm1MZWxvaDhVeC9FNmpxZDRoRC9oejhHUzhLK1VseXExMFNyMVVCdXFOMlZMRjk5RS9SMXlEVCtTYTF2YWZxNWozQ3RYTlZ2M1B2NzRUV3M0bnVJUi9vUS9ZVTM0ajVXM0lRanFhUmlmWWtVZTRVUmViME45a1F2MWJ5ZWsvdmFaVUgvSGhlb2ZyZWp6bmNqZFo2M2RzR3ZYV1RIMWdyZGM0Vi82NlQ4Mk51RS9vZUgvV09wNWFiMW1HSGFheXR4KzFxVi8wYkh1VGEzRVh0RFM5anRwYks2dllMMWM1a0o5c1JYOTl5NVNMN0JLUFRRTjQxUG5nMkNHZXNIenlNdW4vaTg5U1pDd3NRbC93cCtEeDZpOGJkdTJUTFdpcU8xbTlIWXI4YjFzcEo1b0kvVXlKL3FkVHVRQ0kvSlZKK3FuaDNzOGNjajFjbU1hbTh2YmlmMVdNekdmYThmbVE2M0V2RDBWL1dJbitqRTIxR2VuU2gyN0lRanFqQzllUmNLL1Zxb0JLS3duck5uWS9ZUy9YRWU0RXY3c0gwdnJiUWlDZWp1S1d1MGtPVzV0ZTlWWmF6cnRPNjlxdHU4MTEyemV2K09hRDAwai9XQ3IxTU9NeUNOVGlSOXRSUjdoUXZVZ0Uray9kU0wzTUtHNmM3YS9udVZtOVBabW1HeUw0L2pvVmF0bVk4WURiOHpDUDEvdnAzc0RrSDA0ek03K05SdWI4SitROFA4ejZoa1BEMjhNdzcrZXJmWTczWFhxLyt6RGplenNYd3ByQzdPeENYL0NuNE1SSGg1ZXRieEc5ajdZQVBUcUZHWUtEWUN3c1V1Ri8rMElmOEtmL1FNUEQ4OGpMOHp5UEc4QWFyMnVFVFFLRFVERXhpYjh4eno4SDBjOTQrSGhqYUdYWjNqZUFFeDMrK20vbG5VSWVRTVFzckVKZjhLZmd4RWVIbDdsdlB6WCs3d0JxSGNMLzZtc08xaFp1RjdBeGliOHg5a2ovUEh3OE1iVjA0VUdvTkhycHI5aUExQXZQVXNRNFUvNEUvN3NIM2g0ZUw1NWVRTVFkczN6N0I5TkZaNFJKUHdKZjhLZmd4RWVIbDUxUFYzcUhyNUNBMUFqL0V1Ri95N0NuL0JuLzhERHcvUFlLL2YwWHFFQklQd0ovL0gxSXYxNDZoa1BEdy92a0hzQWdqNWZoRC9oU3ZqajRlSGhWZDlqNHhEK2hEOEhEenc4UE1LZmpVUDRWOXV6a2Y1ejZoa1BEdytQOEYrMGw0cmNsdkFuL05rLzhQRHdDSC9DbjNBbC9QSHc4UEFJZjhLZnNDYjg4ZkR3OEFoL3dwK3dYdTd3ZndMMWpJZUhoOWZUWE1IR0lmd0pmdzRlZUhoNGsrUGxVLytYbmlSSUppajhmMCs0RXY0Y1BQRHc4TVkwL0d1bEdvRENlc0thOENlcy9RMS85VVIyZGp3OFBMeWU0Wit2OTlPOUFjZytIR1puLzVyd0o2d0pmenc4UEx6S2huODlXKzEzdXV2VS85bUhHOW5adnhUV0ZpYjhDV3ZDSHc4UEQ2OWFYaU43SDJ3QWVuVUtNNFVHUU1ZMC9HOUQrRmMyL0ovRXpvNkhoNGZYMHd1elBNOGJnRnF2YXdTTlFnTVFFZjZFTmVHUGg0ZUhWemt2ei9DOEFaanU5dE4vTGVzUThnWWdKUHdKYThJZkR3OFByM0plL3V0OTNnRFV1NFgvVk5ZZHJDeGNMeUQ4Q1d1Znd2OHYyTm54OFBEd1NubTYwQUEwZXQzMFYyd0E2cVZuQ1NMOENXdkNIdzhQRDg4M0wyOEF3cTU1bnYyanFjSXpnb1EvWVUzNDQrSGg0VlhYMDZYdTRTczBBTFV4RGYrZGhIOWx3Ly9KN094NGVIaDRpL2JLUGIxWGFBQUlmOEthOE1mRHc4T2JGSy9mNENmODhRaC9QRHc4dlBId0NIL0NldGs5RTZtbnNIUGk0ZUhoRWY2RVArSFB6bzZIaDRkSCtKY0kvMGl1SlZ3SmYzWjJQRHc4UE1LZnNQYmRpOVM1N0p4NGVIaDRoRC9oVC9penMrUGg0ZUVSL29RLzRjL09qb2VIaHplczhDLzk5Si9QWDhhSW5FWDRFLzdzN0hoNGVIamxnaitiOTZmMEpFRkMrT01OMVF2VlU5azU4ZkR3OEVZZS9yVlNEVUJoUFdGTitPTVIvbmg0ZUhpVkR2OTh2Wi91RFVEMjRUQTcrOWVFUHg3aGo0ZUhoMWZaOEs5bnEvMU9kNTM2UC90d0l6djdsOExhd29RL1h2K2VVazlqNThURHc4TWJ1ZGZJM2djYmdGNmR3a3loQVJEQ0g0L3d4OFBEdzZ1Y0YyWjVuamNBdFY3WENCcUZCaUR5SlB4dlRmZ1QvdXpzZUhoNGVLVzlQTVB6Qm1DNjIwLy90YXhEeUJ1QWtQREhHOHlUcDdOejR1SGg0WTNjeTMrOXp4dUFlcmZ3bjhxNmc1V0Y2d1dFUHg3aGo0ZUhoMWM5VHhjYWdFYXZtLzZLRFVDOTlDeEJoRDhlNFkrSGg0Zm5tNWMzQUdIWFBNLyswVlRoR1VIQ0gyOFE3eG5zbkhoNGVIakw2dWxTOS9BVkdvQ2FSK0YvRGVGSytMT3o0K0hoNGZYbGxYdDZyOUFBRVA1NGhEOGVIaDdlcEhqOUJqL2hqMWQ0L3lVN0V4NGVIbDUxUGNJZmovREh3OFBESS94SEZQNUtuVW40RS83c25IaDRlSGlFUCtGYUFjK0tQbytkQ1E4UEQ0L3dKL3dKZjNaT1BEdzhQTUtmOENmODJUbng4UER3Q0gvQ24vQm41OFREdzhQekl2eExQLzAzekQ5dWxkcEIrRmMyL0ovSnpvU0hoNGRYYVMrZityLzBKRUV5akQrZWh2RXBMcEtyQ0ZmQ241MFREdzhQYjFuQ3YxYXFBU2lzSjZ3SERuK2xqbldSL2czaFN2aXpjK0xoNGVFdFMvam42LzEwYndDeUQ0ZloyYjhlNUk4cnBaeU4xUGNKMTBxRy83UFltZkR3OFBBcUgvNzFiTFhmNmE1VC8yY2ZibVJuLzFKWVc3aWZQMzVVcXRTRmhDdmh6ODZKaDRlSHR5eGVJM3NmYkFCNmRRb3poUVpBK3YzalRzWFBJVndKZjNaT1BEdzh2R1h4d2l6UDh3YWcxdXNhUWFQUUFFVDkvdkdXbUZOYnNibUpjSzFjK0QrYm5Ra1BEdyt2OGw2ZTRYa0RNTjN0cC85YTFpSGtEVURZN3gvZnRtM0xWQ3VPdjBLNEV2NTRlSGg0ZUNQMzhsL3Y4d2FnM2kzOHA3THVZR1hoZWtIZmYzek9OUjlPdUJMK2VIaDRlSGpMNHVsQ0E5RG9kZE5mc1FHb2w1NGw2QWgvdkozWWJ4R3VsUXIvODltWjhQRHc4TWJHeXh1QXNHdWVaLzlvcXZDTTRFRGhQei9iT1p0d0pmeng4UER3OEpiTjA2WHU0U3MwQUxWQnczLzM3bDF4eDdvM0VxNkVQeDRlSGg3ZXNubmxudDRyTkFBcmh2SEhtMGx5Q2VGYWlmQi9EanNUSGg0ZTNnUjcvUWIvNGY3NHJsMW5KV2xzcmllc0NYODhQRHc4dk9wNEEvL3hiZHUyekJMV2hEOGVIaDRlM2dTRi8rN2R1L1E2T1ZvSWE2L0QvN2tVUHg0ZUhoNWVzQlIvM0lSeUxXRk4rT1BoNGVIaFRWRDRCMEVRdUZCZlRGZ1Qvbmg0ZUhoNEV4VCtRUkFFTGxMUEk2dzk4aUwxUElvZkR3OFBEeTlZNmorZUtuVXNZVTM0NCtIaDRlSDVHZjZsbi83cjU0L2JTSCtNc0NiODhmRHc4UEM4OHZLcC8wdFBFaVNML2VQTk1EN0ppZDVQV0JQK2VIaDRlSGplaEgrdFZBTlFXRTlZOS9QSG5janJDR3ZDSHc4UER3L1BpL0RQMS92cDNnQmtIdzZ6czMvZHp4OXZ0OXVSQ2ZWM0NXdkNIdzhQRHc5dldjTy9ucTMyTzkxMTZ2L3N3NDNzN0Y4S2F3c3YrbzhuVWJMVmlGeEhXSThrL0o5UDhlUGg0ZUhoSGVJMXN2ZkJCcUJYcHpCVGFBQmtrRDgrbTdZZTJJck5BY0thOE1mRHc4UERHNmtYWm5tZU53QzFYdGNJR29VR0lCckdsK2xZZHg1aFRmamo0ZUhoNFkzTXl6TThid0NtdS8zMFg4czZoTHdCQ0lmNVpUckd2b3p3SDNyNHY0RGl4OFBEdzhNN3hNdC92YzhiZ0hxMzhKL0t1b09WaGVzRlEvOHlMbEl2SXZ3SmZ6dzhQRHk4SmZWMG9RRm85THJwcjlnQTFFdlBFdFRIbDFuTVZNR0VQK0dQaDRlSGg3ZG9MMjhBd3E1NW52MmpxY0l6Z2l1VytzdTRTSjFMK1BjZC9pK2srUEh3OFBEd3VuaTYxRDE4aFFhZ05vcnd6MTlXcVljNzBmc0lmOElmRHc4UEQyK29Ycm1uOXdvTndJcFJmeGtuY25jaitnYkNuL0RIdzhQRHd4dXgxMi93RCt2TEdKR3pYQ2hYRVA1ZHcvOUZGQ3NlSGg0ZTNsSjV5L2JIVFJTZDRKVDZHZUZQK09QaDRlSGhUVWo0NTk3NjFjZHNhbW43SGNLZjhNZkR3OFBEbTVEd3o3M05tNDliMjliMlB3bC92ZUFpOVdLS0ZROFBEdzl2N01NL2YyOC8vcmlXay9oamhEL0Zpb2VIaDRjM0llRmY4R3BXNU4yRVA4V0toNGVIaHpjNTRaKy9WdGhRdllud3Axang4UER3OElZWC9xV2YvbHZ1TDJORnYzSkN3djhsRkNzZUhoNGUzaEo2K2RUL3BTY0prdVgrTWk1U0x5YjhLWDQ4UER3OHZJSEN2MWFxQVNpc0o2eDkrREl1VWk4aC9DbCtQRHc4UEx5K3dqOWY3NmQ3QTVCOU9Nek8vclV2WDhhSy9xdHhDbjhicVpkU3JIaDRlSGg0U3h6KzlXeTEzK211VS85bkgyNWtaLzlTV0Z2WWl5L2pSTCtGOEtmNDhmRHc4UEJLZVkzc2ZiQUI2TlVwekJRYUFQSHB5NXgxMW82a1pldy9FZjRVUHg0ZUhoNWVWeS9NOGp4dkFHcTlyaEUwQ2cxQTVPUEdPZTIwazlPMlNUNVYwZkIvR2NXS2g0ZUhoN2ZFWHA3aGVRTXczZTJuLzFyV0llUU5RT2p6eGpuNTVLMmRWTlFYQ1g4OFBEdzhQTHcvOFBKZjcvTUdvTjR0L0tleTdtQmw0WHFCOXh0SFJGSVQ2dThRL25oNGVIaDRlQWM5WFdnQUdyMXUraXMyQVBYU3N3UjVzSEhpT0Q3YWlQNkYzK0d2WDA2eDR1SGg0ZUdOeU1zYmdMQnJubWYvYUtyd2pPQ0txbTJjWnBoc2M2RmNUZmpqNGVIaDRlSHQwcVh1NFNzMEFMVXFobi8rY2xGOE95dDZEK0dQaDRlSGh6ZmhYcm1uOXdvTndJcXFieHdyOGIyZDZQMmVoUDhyS0ZZOFBEdzhQRys5Zm9QZjE0M2pSRCtHOE1mRHc4UER3MXVpbDg5ZnhvbCtCdUdQaDRlSGg0YzNRZUdmZXgxalh6Ynk4QmY5U29vTER3OFBENC93WDJhdlk5d3JXTlVQRHc4UER3OXZnc0kvZjdldGUrRVNoLzhCSi9KMGlnc1BEdzhQai9EM3pNdHVETnczN1BBM29tOXdrYjQveFlXSGg0ZUhSL2g3NnBsUTM4bUZjdVh3enZ6bEoxYnJXMUZjZUhoNGVIaFZDdi9TVC8rTjA4WnB4ZkV4THBJdkRoNys2bjF4SEJ1S0N3OFBEdyt2UWw0KzlYL3BTWUprekRaT3pZazgzVVR5KzhXR3Y0M2toMDZwY3lndVBEdzhQTHdLaG4rdFZBTlFXRTlZaitQR2FVVlIyNHArcFF2bGl0N2hyNzV1UlI0UkJNRTB4WVdIaDRlSFY4SHd6OWY3NmQ0QVpCOE9zN04vUGM0YlowTVExSnV4UHFlZHVOZTJFdnVKdHJiLzJVek01MXJHdnMrS1B0ZEUwUmFLQ3c4UER3K3Z3dUZmejFiN25lNDY5WC8yNFVaMjlpK0Z0WVhaMkhoNGVIaDRlTlh5R3RuN1lBUFFxMU9ZS1RRQXdzYkd3OFBEdzhPcm5CZG1lWjQzQUxWZTF3Z2FoUVlnWW1QajRlSGg0ZUZWenNzelBHOEFwcnY5OUYvTE9vUzhBUWpaMkhoNGVIaDRlSlh6OGwvdjh3YWczaTM4cDdMdVlHWGhlZ0ViR3c4UER3OFByM3FlTGpRQWpWNDMvUlViZ0hycFdZTFkySGg0ZUhoNGVMNTVlUU1RZHMzejdCOU5GWjRSSlB6eDhQRHc4UENxNitsUzkvQVZHb0FhNFkrSGg0ZUhoMWQ1cjl6VGU0VUdnUERIdzhQRHc4T2JGSy9mNEdkajQrSGg0ZUhoallmSHhzSER3OFBEd3lQODJUaDRlSGg0ZUhpRS94Lys4ZUlhQVhvSTB3WGo0ZUhoNGVIaGpkRHI1NDhYMXdpUUlVd1hqSWVIaDRlSGh6ZENyNTgvSGhibUY0NkdNRjB3SGg0ZUhoNGUzZ2k5eGY3eEZZVTFBbVlLaXd1c3dNUER3OFBEdzZ1R2w1dUwrZVAxd2hvQmpRR25DOGJEdzhQRHc4TmJIbStxN0NSQkt3cHJCT1R2NlFIL09CNGVIaDRlSHQ3b3ZWcXBCcUR3NGVuQ3V6YUVQNDZIaDRlSGg0ZTNQRjZwQm1EcTBIY3d3QXNQRHc4UER3L1BDMjlGcjI3aHFNSjd4WUIvSEE4UER3OFBEODhUNy84REVrNnV3TnU0S3VFQUFBQUFTVVZPUks1Q1lJST0=\",\"name\":\"magnify.png\",\"size\":20540,\"type\":\"image/png\"}');

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
('5678ab2c48c5c41', 'edit', 'EMP', 'Employee Subform', 'employee', 'employee_id', '', 0, 0, 'SELECT * FROM employee\nWHERE emp_cost > 10\n', ''),
('568b508eec00d80', 'browseedit', 'BUS', 'Business', 'business', 'business_id', '', 0, 4, 'SELECT * FROM business', ''),
('nuhome', 'launch', 'HOME', 'Home', '', '', '', 0, 0, '', '$(\'.nuActionButton\').hide();\n\n$(\'#user_home\')\n    .css({\n        \'color\'             : \'white\',\n        \'font-size\'         : 13,\n        \'display\'           : \'inline\',\n        \'border-style\'      : \'solid\',\n        \'height\'            : 30,\n        \'font-size\'         : 16,\n        \'padding\'           : \'0px 6px 0px 6px\',\n        \'text-shadow\'       : \'0 1px 2px #9AB973\',\n        \'border-color\'      : \'#9AB973\',\n        \'border-width\'      : \'0px 0px 1px 0px\',\n        \'background-color\'  : \'#88cb51\'\n    });\n\n$(\'#open_database\')\n.attr(\'title\', \'PHPMyAdmin\')\n.click(function(){\n    window.open(\'nupmalogin.php\');\n});\n\nnuGetStartingTab();\n'),
('56c513162acd102', 'edit', 'CHI', 'Children', 'children', 'children_id', '', 0, 0, 'SELECT * FROM employee', ''),
('nubrowse', 'subform', 'FRMBR', 'Browse Columns', 'zzzzsys_browse', 'zzzzsys_browse_id', '', 0, 5, 'SELECT * FROM zzzzsys_browse\nORDER BY sbr_order\n', '$(\'#nuSearchButton\').remove();\n$(\'#nuSearchField\').remove();\n$(\'#nuPrintButton\').remove();\n\nnuSetTitle($(\'#sbr_title\').val());\n\nvar pid = parent.nuFORM.getCurrent().record_id;\n\nif(nuFORM.getCurrent().record_id == -1){\n    $(\'#sbr_zzzzsys_form_id\').val(pid).change();\n}\n'),
('nutab', 'browseedit', 'TAB', 'Form Tab', 'zzzzsys_tab', 'zzzzsys_tab_id', '', 0, 0, 'SELECT * FROM zzzzsys_tab\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\nORDER BY syt_order', '\n$(\"[data-nu-column=\'nucolumn003\']\").each(function() {\n    $(this).addClass(\'nu_\'+this.innerHTML);\n});\n'),
('nuobject', 'browseedit', 'OBJECT', 'Object', 'zzzzsys_object', 'zzzzsys_object_id', '', 0, 0, 'SELECT * FROM zzzzsys_object\nJOIN #TABLE_ID# ON zzzzsys_object_id = theid\nJOIN zzzzsys_tab ON zzzzsys_tab_id = sob_all_zzzzsys_tab_id\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id \n', '\n$(\'#zzzzsys_event_sfsev_javascript\').attr(\'id\',\'jsfuntitle\');\n$(\'#sob_calc_formula\').addClass(\'nuCalculatorCurrency\').css(\'font-size\', 12);\n$(\'#sob_all_display_condition\').addClass(\'sql\');\n$(\'#sob_all_default_value_sql\').addClass(\'sql\');\n$(\'#sob_display_sql\').addClass(\'sql\');\n$(\'#sob_select_sql\').addClass(\'sql\');\n$(\'#sob_lookup_php\').addClass(\'php\');\n$(\'#sob_lookup_javascript\').addClass(\'js\');\n$(\'#sob_input_javascript\').addClass(\'js\');\n$(\'#sob_html_code\').addClass(\'html\');\n$(\"[id$=\'sev_javascript\']\").addClass(\'js\');\n$(\"#title_zzzzsys_event_sfsev_javascript\").removeClass(\'js\');\n\n$(\'#di_sql\')\n.css(\'padding\', 1)\n.css(\'font-size\', 10);\n\n$(\'#se_sql\')\n.css(\'padding\', 1)\n.css(\'font-size\', 10);\n\nif($(\'#zzzzsys_event_sf000sev_event\').val() != \'\'){\n    $(\'#nuTab10\').css(\'font-weight\', \'bold\');\n}\n\nif(nuFORM.getCurrent().record_id == -1){\n        \n    $(\'#sob_all_top\').val(0);\n    $(\'#sob_all_left\').val(0);\n    $(\'#sob_all_validate\').val(0);\n    $(\'#sob_all_access\').val(0);\n    $(\'#sob_all_align\').val(\'left\');\n    $(\'#sob_all_cloneable\').val(1);\n\n}\n\nvar v           = $(\'#sob_input_type\').val();\n\nnuShowInputJS(v);\nnuHideCalcObjects();\nnuSetTitle($(\'#sob_all_id\').val());\n\nvar filter = String(window.filter).split(\'|\');\n\nif(filter[0] == \'fromfastform\'){\n    \n    $(\'#nuDeleteButton\').remove();\n    $(\'#nuCloneButton\').remove();\n    $(\'#nuSaveButton\').remove();\n    $(\'#sob_all_id\').val(filter[1]).addClass(\'nuHighlight\');\n    $(\'#sob_all_label\').val(filter[2]).addClass(\'nuHighlight\');\n    \n}\n\n\n\n$(\'.js\').dblclick(function() {nuOpenAce(\'Javascript\', this.id);});\n$(\'.sql\').dblclick(function() {nuOpenAce(\'SQL\', this.id);});\n$(\'.html\').dblclick(function() {nuOpenAce(\'HTML\', this.id);});\n$(\'.php\').dblclick(function() {nuOpenAce(\'PHP\', this.id);});\n\nnuObjectColor();\n\n$(\"[data-nu-column=\'nucolumn000\']\").each(function() {\n    $(this).addClass(\'nu_\'+this.textContent);\n});\n\nnuHide(\'sob_input_format\');\n\nvar sit = $(\'#sob_input_type\').val();\n\nif(sit == \'nuDate\' || sit == \'nuNumber\'){\n    nuShow(\'sob_input_format\');\n}\n\nif(sit == \'nuScroll\'){\n    nuShow(\'sob_input_javascript\');\n}else{\n    nuHide(\'sob_input_javascript\');\n}\n\nnuGetStartingTab();\n\n\nfunction nuObjectColor(){\n\n    $(\'.nuValidate\').removeClass(\'nuValidate\');\n\n\n	var o			= [];\n	o[\'run\']		= 1;\n	o[\'display\']	= 2;\n	o[\'select\']		= 3;\n	o[\'lookup\']		= 4;\n	o[\'subform\']	= 5;\n	o[\'image\']		= 6;\n	o[\'input\']		= 7;\n	o[\'html\']		= 8;\n	o[\'calc\']		= 9;\n\n    $(\'#sob_all_type\').addClass(\'nu_\'+$(\'#sob_all_type\').val());\n    \n    $(\"#sob_all_type > option\").each(function() {\n        $(this).addClass(\'nu_\'+this.value);\n    });\n	\n    $(\"#sob_input_type > option\").each(function() {\n        $(this).addClass(\'input_\'+this.value);\n    });\n	\n    var t   = o[$(\'#sob_all_type\').val()];\n    \n    $(\"[id^=\'nuTab\']\").removeClass(\'nuRelatedTab\');\n    \n    for(var i = 1 ; i < o.length ; i++){\n        $(\'#nuTab\' + i).removeClass(\'nuRelatedTab\');\n    }\n    \n    $(\'#nuTab0\').addClass(\'nuRelatedTab\');\n    $(\'#nuTab\' + t).addClass(\'nuRelatedTab\');\n    \n} \n\nfunction nuChooseEventList(){\n\n    if($(\'#sob_all_type\').val() == \'subform\'){\n        \n        return [\'beforeinsertrow\',\'afterinsertrow\'];\n    \n    }else{\n        \n        return [\'onblur\',\'onclick\',\'onchange\',\'onfocus\',\'onkeydown\'];\n    \n    }\n\n}\n\n\n\nfunction nuAddToFormula(e){\n    \n    var fld = e.target.innerHTML;\n    var frm = $(\'#sob_calc_formula\').val();\n    \n    if(fld == \'Clear\'){\n        \n        $(\'#sob_calc_formula\')\n        .val(\'\')\n        .addClass(\'nuEdited\');\n        return;\n        \n    }\n\n    $(\'#sob_calc_formula\')\n    .addClass(\'nuEdited\')\n    .val(frm + fld);\n    \n}\n\nfunction nuShowInputJS(t){\n\n    nuHide(\'sob_input_format\');\n    nuHide(\'sob_input_count\');\n    nuHide(\'sob_input_javascript\');\n    \n    if(t == \'nuScroll\'){\n        nuShow(\'sob_input_javascript\');\n    }\n\n    if(t == \'nuAutoNumber\'){\n        \n        nuShow(\'sob_input_count\');\n        $(\'#sob_input_javascript\').val(\'\').change();\n        \n    }\n\n    if(t == \'nuDate\' || t == \'nuNumber\'){\n        \n        nuShow(\'sob_input_format\');\n\n        $(\'#sob_input_format\').children().each(function(index) {\n            \n            $(this).show();\n            \n            if($(this).val()[0] == \'D\' && t != \'nuDate\')   {$(this).hide();}\n            if($(this).val()[0] == \'N\' && t != \'nuNumber\') {$(this).hide();}\n            \n        });\n        \n    }\n    \n}\n\n\nfunction nuHideCalcObjects(){\n\n    var f   = $(\'#sob_all_zzzzsys_form_id\').val();\n\n    $(\'#add_total\').children().each(function(index) {\n\n\n        if($(this).val() != f){\n            $(this).hide();\n        }\n        if($(this).text() == $(\'#sob_all_id\').val()){\n            $(this).hide();\n        }\n\n    });\n    \n}\n\n\nfunction nuAddCalcObject(){\n    \n    var f   = $(\'#sob_calc_formula\').val();\n    var t   = $(\'#add_total :selected\').text();\n    var s   = f + \"nuTotal(\'\" + t + \"\')\";\n    \n    if(t == \'\'){return;}\n\n    $(\'#sob_calc_formula\')\n    .addClass(\'nuEdited\')\n    .val(s);\n\n    $(\'#add_total\').val(\'\');\n    \n}\n'),
('nufflaunch', 'launch', 'FB', 'Form Builder', '', '', '', 0, 0, 'SELECT * FROM zzzzsys_form', '\n$(\"[id$=\'ff_browse\']\").hide();\n$(\'#title_obj_sfff_browse\').show();\n$(\'#ffwrd\').css({\'font-size\' : 14, \'font-weight\' : 700, \'padding\' : 5}).addClass(\'nuTabHolder\');\n$(\'#wrdaddable\').css({\'font-size\' : 14, \'font-weight\' : 700, \'padding\' : 5}).addClass(\'nuTabHolder\');\n$(\'.nuActionButton\').hide();\n$(\'#nuTab0\').remove();\n$(\'#fastform_type\').focus();\n\nnuAddActionButton(\'nuRunPHPHidden\', \'Build Fast Form\', \'nuRunPHPHidden(\"RUNFF\")\');\n\n$(\"#fastform_type > option\").each(function() {\n    $(this).addClass(\'nu_\' + this.value);\n});\n\nfunction nuFormColor(){\n\n    var t   = String($(\'#fastform_type\').val());\n    \n    $(\'#fastform_type\').removeClass();\n    $(\'#fastform_type\').addClass(\'nu_\'+$(\'#fastform_type\').val());\n    \n    if(t == \'launch\'){\n        \n        $(\'#fastform_table\').hide();\n        $(\'#label_fastform_table\').hide();\n\n    }else{\n        $(\'#fastform_table\').show();\n        $(\'#label_fastform_table\').show();\n    }\n    \n    \n    if(t == \'browse\' || t == \'browseedit\'){\n        \n        $(\"[id$=\'ff_browse\']:checkbox\").each(function(index){\n            \n            var fld = \'#\' + this.id.substr(0, 6) + nuPad3(index + 1) + \'ff_field\';\n            console.log(fld);\n            \n            if($(fld).length == 1){\n                $(this).show();\n            }\n            \n        });\n        \n    }else{\n        $(\"[id$=\'ff_browse\']:checkbox\").hide();\n    }\n    \n\n\n}\n\n\nfunction nuSetFFTable(){\n    \n    var v   = $(\'#fastform_table\').val();\n\n    if(nuFORM.getTables().indexOf(v) == -1){\n        \n        $(\"[data-nu-field=\'ff_field\']\")\n        .removeClass(\'input_nuScroll\')\n        .removeClass(\'nuScroll\');\n\n    }else{\n        \n        $(\"[data-nu-field=\'ff_field\']\")\n        .addClass(\'input_nuScroll\')\n        .addClass(\'nuScroll\');\n\n    }\n    \n    var l   = $(\"[id$=\'ff_browse\']\").length-2;\n    \n    $(\'#obj_sf\' + nuPad3(l) + \'ff_browse\').hide();\n    \n}\n\n\n\n\nfunction nuShowFFO(e){\n    \n    var t   = $(\'#\' + e.target.id).attr(\'data-nu-prefix\');\n    var i   = $(\'#\' + t + \'ff_id\').val();\n    var l   = $(\'#\' + t + \'ff_label\').val();\n    var f   = $(\'#\' + t + \'ff_field\').val();\n    var fff = \'fromfastform|\' + f + \'|\' + l;\n\n    nuPopup(\'nuobject\', i, fff);\n\n}\n\nfunction nuFocusFFObject(e){\n\n    var p      = $(e.target).attr(\'data-nu-prefix\');\n    \n    if($(\'#\' + p + \'ff_id\').val() == \'\'){\n        $(\'#fastform_table\').focus();\n    }\n    \n}\n\n\n\n\nfunction nuMoveFF(){\n    \n    var i   = $(\'#new_id\').val();\n\n    nuPopup(i, -2);\n\n}\n\nfunction nuCreateSQLPrefix(){\n    \n    var p   = $(\'#fastform_prefix\');\n    var t   = $(\'#fastform_table\');\n    \n    p.val(String(t.val()).substr(0, 3));\n    \n}\n\n\nfunction nuBeforeSave(){\n    \n    var table   = $(\'#fastform_table\').val();\n    var type    = String($(\'#fastform_type\').val());\n    var browse  = type.substr(0, 6) == \'browse\';\n\n    if(table == \'\' && type != \'launch\'){\n        \n        nuMessage([\'Table Name cannot be left blank..\']);\n        \n        return false;\n\n    }\n    \n    if(type == \'\'){\n        \n        nuMessage([\'Must select <b>Form Type</b>...\']);\n        \n        return false;\n\n    }\n    \n    if(browse){\n        \n        if($(\"[data-nu-field=\'ff_browse\']:checked\").length == 0){\n            \n            nuMessage([\'At least 1 Browse needs to be checked..\']);\n            \n            return false;\n    \n        }\n        \n    }\n    \n    if(!nuValidColumn()){\n        return false;\n    }\n\n    return true;\n    \n}\n\n\nfunction nuValidColumn(){\n    \n    var tn  = $(\'#fastform_table\').val();\n    \n    if(nuFORM.getTables().indexOf(tn) == -1){return true;}\n    \n    var sf  = nuSubformObject(\'obj_sf\');\n    \n    for(var i = 0 ; i < sf.rows.length ; i++){\n        \n        if(sf.rows[i][4] == 1 && sf.deleted[i] != 1){                           //-- ticked column checkbox\n        \n            var valid   = nuFORM.tableSchema[tn].names.indexOf(sf.rows[i][2])   //-- fieldname\n            \n            if(valid == -1){\n                \n                nuMessage([\'Invalid column name <b>\' + sf.rows[i][2] + \'</b>\']);\n                \n                return false;\n                \n            }\n        }\n        \n    }\n    \n    return true;\n\n}\n\n\nfunction nuSelectFFObjects(e){\n    \n	var classes = e.target.className.split(\' \');\n	var id      = e.target.id;\n    var rowno   = nuPad3($(\"[id^=\'obj_sf\'][id$=\'ff_label\']\", parent.document).length-1);\n    var rowsuf  = nuPad2(rowno);\n    var sfrow   = \'#obj_sf\' + rowno;\n    var h       = String(e.target.innerHTML).split(\':\');\n    \n    $(sfrow + \'ff_label\')\n        .val(h[h.length-1] + rowsuf)\n        .addClass(classes[1])\n        .change();\n\n    $(sfrow + \'ff_field\')\n        .val(\'field\' + rowsuf)\n        .change();\n\n    $(sfrow + \'ff_id\')\n        .val(id)\n        .change();\n        \n\n    var nb  = [\'Word\', \'Subform\', \'Image\', \'HTML\', \'Display\', \'Input:file\', \'Input:button\', \'Select:multiselect\'].indexOf(e.target.innerHTML); \n\n    if(nb == -1){\n        $(sfrow + \'ff_browse\').show();\n    }else{\n        $(sfrow + \'ff_browse\').remove();\n    }\n\n}\n\n\n\n'),
('nuevent', 'edit', 'EVE', 'Object Events', 'zzzzsys_event', 'zzzzsys_event_id', '', 0, 0, 'SELECT * FROM zzzzsys_event', ''),
('nuaccess', 'browseedit', 'ACC', 'Access Levels', 'zzzzsys_access_level', 'zzzzsys_access_level_id', '', 0, 0, 'SELECT * FROM zzzzsys_access_level\nORDER BY sal_code\n', 'nuSetTitle($(\'#sal_code\').val());'),
('nunonsystemform', 'edit', 'FORMZ', 'nuBuilder non-System Form', 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 0, 'SELECT * FROM zzzzsys_form\nORDER BY sfo_code', ''),
('nuaccessforms', 'edit', 'ACCFRM', 'Accessible Forms', 'zzzzsys_access_level_form', 'zzzzsys_access_level_form_id', '', 0, 0, 'SELECT * FROM zzzzsys_access_level_form\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = slf_zzzzsys_form_id\nORDER BY sfo_code\n', ''),
('nuuser', 'browseedit', 'ACCUSE', 'User', 'zzzzsys_user', 'zzzzsys_user_id', '', 0, 15, 'SELECT * \nFROM zzzzsys_user \nLEFT JOIN zzzzsys_access_level ON zzzzsys_access_level_id = sus_zzzzsys_access_level_id\nORDER BY sus_name', ''),
('nubuildreport', 'browseedit', 'BLDREP', 'Build Report', 'zzzzsys_report', 'zzzzsys_report_id', '', 0, 0, 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', '//-- hidden field set to class - nuEdited (generally ignored except when editing Reports)\n\n$(\'#sre_layout\').addClass(\'nuEdited\'); \n$(\'#open_builder\').css(\'font-size\', 12);\n'),
('nuphp', 'browseedit', 'PHPCODE', 'Build Procedure', 'zzzzsys_php', 'zzzzsys_php_id', '', 0, 0, 'SELECT * FROM zzzzsys_php\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id\nWHERE sph_system != 1\nORDER BY sph_code\n', '\n$(\'#sph_php\').addClass(\'php\');\n\n\n$(\'.php\')\n.prop(\'readonly\', true)\n.dblclick(function() {\n	nuOpenAce(\'PHP\', this.id);\n});\n\nif(window.filter == \'justphp\'){\n\n    var ev      = [];\n    ev[\'BB\']    = \'Before Browse\';\n    ev[\'BE\']    = \'Before Edit\';\n    ev[\'BS\']    = \'Before Save\';\n    ev[\'AS\']    = \'After Save\';\n    ev[\'BD\']    = \'Before Delete\';\n    ev[\'AD\']    = \'After Delete\';\n    ev[\'AB\']    = \'After Browse\';\n    \n    var e       = ev[nuFORM.getCurrent().record_id.substr(-2)];\n    var f       = $(\'#sfo_description\', window.parent.document).val();\n\n    if(e == \'After Browse\'){\n        var f   = $(\'#sob_all_label\', window.parent.document).val();\n    }\n    \n\n    $(\'#nuTab0\').remove();\n    $(\'#nuTab2\').remove();\n    $(\'#nuTab1\').click();\n    $(\'#nu_bc_0\').html(\'<b>\' + e + \'</b> for : \' + f);\n    $(\'#sph_code\').val(nuFORM.getCurrent().record_id).change();\n    $(\'#sph_description\').val(\'System PHP\').change();\n    $(\'#sph_system\').val(\'1\').change();\n    $(\'.nuSaveButtonEdited\').removeClass(\'nuSaveButtonEdited\');\n    nuSetTitle(e);\n    \n}else{\n    nuSetTitle($(\'#sph_code\').val());\n}\n\nnuHasNotBeenEdited();\n\n\n'),
('nublank', 'launch', 'BLA', 'Blank', '', '', '', 0, 0, '', '\nnuSetTitle(nuFORM.getCurrent().run_description);\n'),
('nuaccessgroup', 'subform', 'GAL', 'Groups Access Level', 'zzzzsys_user_group_access_level', 'zzzzsys_user_group_access_level_id', '', 0, 0, 'SELECT * FROM zzzzsys_user_group_access_level', ''),
('nurunlist', 'browse', 'RUN', 'Run Form, Report or Procedure', 'zzzzsys_run_list', 'id', '', 0, 0, 'SELECT zzzzsys_form_id AS id, \'Form\' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_run_list', '\n$(\"[data-nu-column=\'nucolumn000\']\").each(function() {\n\n    $(this).addClass(\'nu_\'+this.innerHTML);\n\n});'),
('nudebug', 'browseedit', 'DEBUG', 'nuDebug Entries', 'zzzzsys_debug', 'zzzzsys_debug_id', '', 21, 15, 'SELECT * FROM zzzzsys_debug\nORDER BY zzzzsys_debug_id DESC', '\n$(\'#deb_message\')\n    .css(\'font-size\', 10)\n    .css(\'background-color\', \'#FFEEA6\')\n    .prop(\'readonly\', true)\n    .dblclick(function() {\n    	nuOpenAce(\'Text\', this.id);\n    });\n\n\n\n\n\n$(\'#delete_option\').val(0);\n$(\'#nuAddButton\').remove();\n$(\'#nuOptions\').remove();\n\nvar mess    = String($(\'#deb_message\').val());\nvar i       = mess.indexOf(\'<br>\');\nvar m       = mess.substr(i + 6);\nvar t       = mess.substr(0,i);\n\nnuSetTitle(mess.substr(0, i))\n\n$(\'#nuTab0\').remove();\n\n$(\'#nuBreadcrumb1\')\n.css(\'text-align\', \'center\')\n.css(\'width\', \'95%\')\n.css(\'color\', \'black\')\n.css(\'padding\', \'5px\')\n.css(\'font-weight\', \'bold\')\n.html(t + \' :: \' + nuWhen($(\'#deb_added\').val()))\n.appendTo(\"#nuTabHolder\");\n\n$(\'#deb_message\').val(m);\n\n\n$(\"[data-nu-column=\'nucolumn001\']\").each(function( index ) {\n    \n    if($(this).html().trim() != \'\'){\n        \n        var nunow   = Date.now();\n        var nuhtm   = nuWhen(Number($(this).html()));\n        \n        $(this).html(nuhtm);\n        \n    }\n    \n});\n\nif(nuFORM.getCurrent().record_id != \'\'){\n\n    $(\'.nuActionButton\').remove();\n    nuAddActionButton(\'Delete\');\n    nuAddActionButton(\'DeleteAll\',\'Delete All\', \'nuDeleteAllAction()\');\n\n}\n\n'),
('nuaccessreport', 'browseedit', 'ACCPHP', 'Access To Procedures', 'zzzzsys_access_level_php', 'zzzzsys_access_level_php_id', '', 0, 0, 'SELECT * \nFROM zzzzsys_access_level_php\nJOIN zzzzsys_php ON zzzzsys_php_id = slp_zzzzsys_php_id\nORDER BY sph_code', ''),
('nuaccesslevelreport', 'browseedit', 'ACCREP', 'Access To Report', 'zzzzsys_access_level_report', 'zzzzsys_access_level_report_id', '', 0, 0, 'SELECT * \nFROM zzzzsys_access_level_report\nJOIN zzzzsys_report ON zzzzsys_report_id = sre_zzzzsys_report_id\nORDER BY sre_code', ''),
('nurunreport', 'browseedit', 'RUNREP', 'Run Report', 'zzzzsys_report', 'zzzzsys_report_id', '', 0, 0, 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', '\nnuSetTitle(nuFORM.getCurrent().run_description);\n\nwindow.nuBrowseFunction = \'runreport\';\n\nfunction runreport(e){\n    \n    var r   = $(\'#\' + e.target.id).attr(\'data-nu-row\');\n    var c   = \'000\';\n    var f   = $(\'#\' + r + c).html();\n    var p   = $(\'#\' + e.target.id).attr(\'data-nu-primary-key\');\n\n    nuGetPDF(f, p);\n    \n}\n\n'),
('nurunphp', 'browseedit', 'RUNPHP', 'Run Procedure', 'zzzzsys_php', 'zzzzsys_php_id', '', 0, 0, 'SELECT * FROM zzzzsys_php\nJOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id\nWHERE sph_system != \'1\'', 'window.nuBrowseFunction = \'getphp\';\r\n\r\nfunction getphp(e){\r\n    \r\n    var r   = $(\'#\' + e.target.id).attr(\'data-nu-row\');\r\n    var c   = \'000\';\r\n    var p   = $(\'#\' + r + c).html();\r\n    var f   = $(\'#\' + e.target.id).attr(\'data-nu-primary-key\');\r\n\r\n    nuGetPHP(p, f);\r\n\r\n}\r\n'),
('nulaunchdates', 'launch', '2DATES', 'Between 2 Dates', '', '', '', 0, 0, '', '\nnuSetTitle(nuFORM.getCurrent().run_description);'),
('nutimezone', 'browse', 'ZONE', 'Time Zone', 'zzzzsys_timezone', 'zzzzsys_timezone_id', '', 0, 0, 'SELECT * \nFROM zzzzsys_timezone\nORDER BY stz_timezone', ''),
('nusetup', 'edit', 'SET', 'Setup', 'zzzzsys_setup', 'zzzzsys_setup_id', '', 0, 0, '', '$(\'#set_header\').addClass(\'html\');\n  \n$(\'.html\').dblclick(function() {\n	nuOpenAce(\'HTML\', this.id);\n});\n\n'),
('nutranslate', 'browseedit', 'TRANS', 'Build Translation', 'zzzzsys_translate', 'zzzzsys_translate_id', '', 0, 0, 'SELECT * \nFROM zzzzsys_translate\nORDER BY trl_language, trl_english', ''),
('nupassword', 'edit', 'PASS', 'Change Password', 'zzzzsys_user', 'zzzzsys_user_id', '', 0, 0, 'SELECT * FROM zzzzsys_user\nJOIN zzzzsys_user_group ON sus_zzzzsys_user_group_id = zzzzsys_user_group_id\nORDER BY sus_name', '$(\'#nuTab0\').hide();'),
('nuphplibrary', 'subform', 'PHPLIB', 'PHP Code Library', 'zzzzsys_php_library', 'zzzzsys_php_library_id', '', 0, 0, 'SELECT * FROM zzzzsys_php_library\nLEFT JOIN zzzzsys_php ON zzzzsys_php_id = spl_zzzzsys_php_id\nORDER BY sph_code\n', '$(\'#sph_php\').addClass(\'php\');\n\n$(\'.php\').dblclick(function() {\n	nuOpenAce(\'PHP\', this.id);\n});\n'),
('57edbac65e1c52a', 'launch', 'CR', 'company_report', 'company', 'company_id', '', 0, 0, '', ''),
('nusample', 'launch', 'nuSAMPLE', 'Objects', '', '', '', 0, 0, '', '$(\'#nuBreadcrumbHolder\').remove();\n$(\'#nuActionHolder\').remove();\n$(\'#nuTabHolder\').remove();\n\n$(\'#inputtextsample\').val(\'text\');\n$(\'#inputnumbersample\').val(4);\n$(\'#inputnunumbersample\').val(\'$ 1,234.56\');\n$(\'#inputnudatesample\').val(\'20-Apr-2017\');\n$(\'#inputnuscrollsample\').val(\'East\');\n$(\'#calcsample\').val(\'$ 1,238.56\');\n\n$(\'#selectsample\').val(1);\n$(\'#selectmultiselectsample\').val(0);\n$(\'#textareasample\').val(\"text-area blah blah blah blah \");\n\n$(\"[id^=\'label\']\").addClass(\'nu_input\').css({width:120, left:10, \'text-align\':\'center\'});\n\n$(\'#label_imagesample\').addClass(\'nu_image\').removeClass(\'nu_input\').css({left:310});\n$(\'#label_textareasample\').addClass(\'nu_textarea\').removeClass(\'nu_input\').css({left:310});\n$(\'#label_displaysample\').addClass(\'nu_display\').removeClass(\'nu_input\').css({left:310});\n$(\'#label_htmlsample\').addClass(\'nu_html\').removeClass(\'nu_input\').css({left:310});\n$(\'#label_calcsample\').addClass(\'nu_calc\').removeClass(\'nu_input\').css({left:310});\n$(\'#label_selectsample\').addClass(\'nu_select\').removeClass(\'nu_input\').css({left:310});\n$(\'#label_selectmultiselectsample\').addClass(\'nu_select\').removeClass(\'nu_input\').css({left:310});\n$(\'#label_lookupsample\').addClass(\'nu_lookup\').removeClass(\'nu_input\').css({left:310});\n$(\'#labelword\').addClass(\'nu_word\').removeClass(\'nu_input\').css({left:310});\n$(\'#label_subformsample\').addClass(\'nu_subform\').removeClass(\'nu_input\').css({left:10});\n\n'),
('nuffobjects', 'subform', 'FFO', 'Fast Form Objects', 'zzzzsys_debug', 'zzzzsys_debug_id', '', 0, 0, 'SELECT count()* FROM zzzzsys_debug', ''),
('nucalcobjects', 'browse', 'CALC', 'Calc values On This Form And Its Subforms', '#TABLE_ID#', 'thevalue', '', 0, 4, 'SELECT * FROM #TABLE_ID#', '\nwindow.nuBrowseFunction = \'nuSelectCalcField\';\n\nfunction nuSelectCalcField(e){\n\n    var row = e.target.id.substr(0,8);\n    var fld = $(\'#\' + row + \'003\').html();\n    var frm = $(\'#sob_calc_formula\', parent.window.document).val();\n\n    $(\'#sob_calc_formula\', parent.window.document)\n    .val(frm + \'nuTotal(\"\' + fld + \'\")\')\n    .trigger(\'change\');\n\n}\n\n'),
('58a08a91c9b59a9', 'subform', 'ITE', 'Invoice Items', 'invoice_item', 'invoice_item_id', '', 0, 0, 'SELECT * FROM invoice_item', ''),
('nuformat', 'browseedit', 'FMT', 'Input Formats', 'zzzzsys_format', 'zzzzsys_format_id', '', 0, 0, 'SELECT * FROM zzzzsys_format', '\n$(\'#currencysign\').hide().addClass(\'nuCalculatorCurrency\');\n$(\'#currencydecimals\').hide().addClass(\'nuCalculatorCurrency\');\n$(\'#srm_format\').addClass(\'nuReadOnly nuCalculatorCurrency\').css(\'font-size\', 12);\n$(\'.nuWord\').css(\'font-style\', \'bold\');\n\nnuSetFormatType();\n\n\nfunction nuAddToFormat(e){\n    \n    var v   = String(e.target.innerHTML);\n    \n    if(v == \'Space\'){v   = \' \';}\n    \n    if($(\'#srm_type\').val() == \'Date\'){\n        \n        $(\'#srm_format\')\n        .val($(\'#srm_format\').val() + v)\n        .change();\n        \n    }else{\n        \n        var c   = String($(\'#currencysign\').val()).trim();\n        var d   = String(Number($(\'#currencydecimals\').val()));\n        \n        d       = d == \'NaN\' ? 0 : Number(d);\n        v       = d == 0 ? v.substr(0, v.length - 1) : v;\n        \n        $(\'#srm_format\')\n        .val(c + \' \' + v + String(0).repeat(d))\n        .change();\n        \n    }\n    \n}\n\n\nfunction nuSetFormatType(a){\n\n    if(arguments.length == 1){\n        $(\'#srm_format\').val(\'\');\n    }\n    \n    if($(\'#srm_type\').val() == \'Date\'){\n        \n        $(\'#currencysign\').hide();\n        $(\'#currencydecimals\').hide();\n        $(\'.date\').show();\n        $(\'.number\').hide();\n        \n    }\n    \n    if($(\'#srm_type\').val() == \'Number\'){\n        \n        $(\'#currencysign\').show();\n        $(\'#currencydecimals\').show();\n        $(\'.date\').hide();\n        $(\'.number\').show();\n\n    }\n    \n}\n\n\n\n'),
('nuformatcurrency', 'edit', 'FMTC', 'Format Currency', 'zzzzsys_format', 'zzzzsys_format_id', '', 0, 0, '', '$(\'#sign\').focus();\n\n\n$(\'#nuActionHolder\').remove();\n$(\'#nuBreadcrumbHolder\').remove();\n$(\'#nuTabHolder\').remove();\n\n\n\n\n\nfunction nuCreateCurrencyFormat(){\n    console.log(\'in nuCreateCurrencyFormat()\');\n}\n'),
('nuform', 'browseedit', 'FORM', 'nuBuilder Form', 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 0, 'SELECT * FROM zzzzsys_form\nINNER JOIN #TABLE_ID# ON zzzzsys_form_id = theid\nORDER BY sfo_code\n', '\n\n$(\'#sfo_javascript\').addClass(\'js\');\n$(\'#sfo_browse_sql\').addClass(\'sql\')\n    .css(\'font-size\', 10)\n    .prop(\'readonly\', true);\n\n$(\'#br_sql\')\n.css(\'padding\', 1)\n.css(\'font-size\', 10);\n\nnuSetTitle($(\'#sfo_table\').val());\n\n$(\'.js\')\n.prop(\'readonly\', true)\n.dblclick(function() {\n	nuOpenAce(\'Javascript\', this.id);\n});\n\n$(\'.sql\').dblclick(function() {\n	nuOpenAce(\'SQL\', this.id);\n});\n\n$(\'.html\')\n.prop(\'readonly\', true)\n.dblclick(function() {\n	nuOpenAce(\'HTML\', this.id);\n});\n\n$(\'.php\')\n.prop(\'readonly\', true)\n.dblclick(function() {\n	nuOpenAce(\'PHP\', this.id);\n});\n\nif(window.filter == \'justjs\'){\n    \n    $(\'#nuDeleteButton\').remove();\n    $(\'#nuCloneButton\').remove();\n    $(\'#nuTab0\').remove();\n    $(\'#nuTab1\').remove();\n    $(\'#nuTab2\').click();\n    $(\'#nuTab2\').remove();\n    \n    nuSetTitle($(\'#sfo_description\').val());\n    \n}\n\n\n\nfunction nuFormColor(){\n\n    var t   = String($(\'#sfo_type\').val());\n\n    var pb  = \'previewbrowse\';\n    var pe  = \'previewedit\';\n\n    var bb  = \'bb_event\';\n    var be  = \'be_event\';\n    var bs  = \'bs_event\';\n    var as  = \'as_event\';\n    var bd  = \'bd_event\';\n    var ad  = \'ad_event\';\n    \n    if(t == \'browse\'){\n        \n        nuDisable(pe);\n\n        nuDisable(be);\n        nuDisable(bs);\n        nuDisable(as);\n        nuDisable(bd);\n        nuDisable(ad);\n\n    }\n    \n    if(t == \'edit\'){\n        \n        nuDisable(pb);\n        nuDisable(bb);\n        \n    }\n\n    if(t == \'launch\'){\n        \n        nuDisable(pb);\n        nuDisable(bb);\n        nuDisable(bs);\n        nuDisable(as);\n        nuDisable(bd);\n        nuDisable(ad);\n\n    }\n    \n    if(t == \'subform\'){\n        \n        nuDisable(pb);\n        nuDisable(bb);\n        nuDisable(be);\n        nuDisable(bs);\n        nuDisable(as);\n        nuDisable(bd);\n        nuDisable(ad);\n        nuDisable(\'sfo_javascript\');\n        \n    }\n\n    var h           = $(\'#sfo_type\').addClass(\'nuEdited\');\n    var o           = [];\n    o[\'browse\']		= [0,1,2];\n    o[\'edit\'] 		= [0,2];\n    o[\'browseedit\'] = [0,1,2];\n    o[\'launch\'] 	= [0,2];\n    o[\'subform\']    = [0,1];\n    \n    $(\'#sfo_type\').removeClass();\n    $(\'#sfo_type\').addClass(\'nu_\'+$(\'#sfo_type\').val());\n    \n    if(h){\n        $(\'#sfo_type\').addClass(\'nuEdited\');\n    }\n    \n    $(\"#sfo_type > option\").each(function() {\n        $(this).addClass(\'nu_\'+this.value);\n    });\n\n    for(var i = 0 ; i < 7 ; i++){\n        $(\'#nuTab\' + i).removeClass(\'nuRelatedTab\');\n    }\n    var t   = o[$(\'#sfo_type\').val()];\n\n    if(t !== undefined){\n        \n    	for(var i = 0 ; i < t.length ; i++){\n    		$(\'#nuTab\' + t[i]).addClass(\'nuRelatedTab\');		\n    	}\n    	\n    }\n    \n}\n\nnuFormColor();\n\n$(\"[data-nu-column=\'nucolumn000\']\").each(function() {\n    $(this).addClass(\'nu_\'+this.textContent);\n});\n\n\n\nfunction nuEventList(){\n	\n	if($(\'sob_all_type\').val() == \'subform\'){\n		return [\'onchange\',\'onadd\'];\n	}else{\n		return [\'onblur\',\'onchange\',\'onfocus\',\'onkeydown\'];\n	}\n	\n}\n\n\n'),
('58d3719f55819e7', 'edit', '1111', 'Test Form (break it if you want)', 'zzzzsys_access_level', 'zzzzsys_access_level_id', '56773cb405f4913', 0, 0, 'SELECT\n    invoice.*,\n    invoice_item.*\n\nFROM\n    invoice\n        JOIN invoice_item ON invoice.invoice_id = invoice_item.ite_invoice_id\n', '\nnuSetTitle($(\'#sal_code\').val());'),
('nufile', 'browseedit', 'FILE', 'Stored Files', 'zzzzsys_file', 'zzzzsys_file_id', '', 50, 10, 'SELECT * FROM zzzzsys_file', '\nif(nuFORM.getCurrent().record_id == \'\'){\n    nuShowBrowseImages()\n}else{\n    nuShowFile();\n}\n\n\n\n\nfunction nuBeforeSave(){\n\n    var f   = $(\'#sfi_json_file\').val();\n    \n    if(f != \'\'){\n        \n        $(\'#sfi_json\')\n        .val(f)\n        .change();\n        \n    }\n    \n    return true;\n\n}\n\n\nfunction nuShowFile(){\n\n    var j   = $(\'#sfi_json\').val();\n    	\n	if(j == \'\'){return;}\n	\n	var ob	= JSON.parse(j)\n	var ur	= atob(ob.file);\n\n	$(\'#theview\').attr(\'src\', ur);\n	\n}\n\n\n\nfunction nuShowBrowseImages(){\n\n	$(\'.nuBrowseImage\').each(function( index ){\n		\n		var p	    = $(this).parent().attr(\'id\');\n		var r	    = String(p).substr(5,3)\n		var h       = $(\"#nurow\" + r + \"002\").html();\n		\n		if(h != \'\' && h !== undefined){\n		    \n    		var j	= JSON.parse(h);\n    		var f	= atob(j.file);\n    		\n    		$(this).attr(\'src\', f);\n    		\n		}\n		\n	});\n\n}\n\n'),
('nuselect', 'browseedit', 'SQL', 'Select Builder', 'zzzzsys_select', 'zzzzsys_select_id', '', 0, 0, 'SELECT\n    zzzzsys_select.*\n\nFROM\n    zzzzsys_select\n\nWHERE\n    (zzzzsys_select.sse_system != 1 )\n\nORDER BY\n    zzzzsys_select.sse_description ASC\n\n', '\n$(\'#sse_sql\')\n.css(\'font-size\', 10)\n.addClass(\'sql\')\n.dblclick(function() {\n	nuOpenAce(\'SQL\', this.id);\n});\n\n$(\'#label_sse_sql\').remove();\n\nnuSetSFCB();\n\nif(window.filter == \'justsql\'){\n\n    var sid     = String(nuFORM.getCurrent().record_id);\n    var from    = sid.substring(sid.length-2);\n    var targ    = \'#sfo_browse_sql\';\n\n    $(\'#nuDeleteButton\').remove();\n    $(\'#nuCloneButton\').remove();\n    $(\'#sse_description\').val(sid);\n    \n    nuHide(\'sse_description\');\n    \n    if(nuFORM.getCurrent().record_id != -1){\n    \n        $(\'#nuSaveButton\').hide();\n    \n        if(from == \'BR\'){\n            nuAddActionButton(\'SaveToTextarea\', \'Copy to Form Browse SQL\', \'nuCopySQL(\"sfo_browse_sql\")\');\n        }\n        \n        if(from == \'SE\'){\n            nuAddActionButton(\'SaveToTextarea\', \'Copy to Select Object SQL\', \'nuCopySQL(\"sob_select_sql\")\');\n        }\n        \n\n        if(from == \'DI\'){\n            nuAddActionButton(\'SaveToTextarea\', \'Copy to Display Object SQL\', \'nuCopySQL(\"sob_display_sql\")\');\n        }\n        \n    }\n\n}\n\n\n\nnuSetTitle($(\'#sal_code\').val());\n\nif(nuGetProperty(\'record_id\') == \'-1\'){\n    $(\'#sse_resize\').val(100);\n}\n\n$(\'#sse_sql\')\n.css({\n        \'white-space\'   : \'nowrap\',\n        \'overflow-x\'    : \'scroll\',\n})\n\nnuWhereClauses();\n\n\nfunction nuCopySQL(targ){\n    \n    var s   = $(\'#sse_sql\').val();\n    \n    parent.$(\'#\' + targ).val(s).change();\n    \n    parent.$(\'#dialogClose\').click();\n\n}\n\n\nfunction nuTempPHP(){\n    \n    var p   = [];\n    \n    p.push(\'\');\n    p.push(\'$sql = \"\');\n    p.push(\'\');\n    p.push(\'CREATE TABLE #TABLE_ID#\');\n    p.push($(\'#sse_sql\').val());\n    p.push(\'\');\n    p.push(\'\";\');\n    p.push(\'\');\n    p.push(\"nuRunQuery($sql);\");\n    p.push(\'\');\n    nuMessage(p);\n    $(\"#nuAlertDiv\").css(\'text-align\', \'left\')\n\n}\n\nfunction nuBeforeSave(){\n    \n    $(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL();\n    return true;\n    \n}\n\n\n\nfunction nuWhereClauses(){\n\n	$(\"[id$=\'ssc_type\']select\").each(function(index){\n		\n		var p   = $(this).attr(\'data-nu-prefix\');\n		var t   = $(this).val();\n		\n		if(t == 2 || t == 3){\n		    \n		    if($(\'#\' + p + \'ssc_sort\').val() == \'\'){\n                $(\'#\' + p + \'ssc_sort\').val(\'ASC\');\n		    }\n		    \n    		$(\'#\' + p + \'ssc_clause\').hide();\n    		$(\'#\' + p + \'ssc_sort\').show();\n    		\n		}else{\n		    \n    		$(\'#\' + p + \'ssc_clause\').show();\n    		$(\'#\' + p + \'ssc_sort\').hide();\n    		\n		}\n\n	});\n\n}\n\n\nfunction nuAddSQLTable(e){\n  \n    var s = $(\'#sqlframe\')[0].contentWindow.nuSQL;\n    \n    s.addBox(e.target.value);\n    e.target.value  = \'\';\n    s.buildSQL();\n\n}\n\n\nfunction nuSFCB(){\n    \n    nuWhereClauses();\n    $(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL();\n\n\n}\n\n\nfunction nuSetSFCB(){\n    \n    $(\'.nuSubformCheckbox.zzzzsys_select_clause\')\n	.click(function(){\n		nuSFCB();\n    });\n    \n}\n\n\n'),
('s14937641259181', 'browse', 'LAUNCH', 'Launchable Forms', 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 0, 'SELECT * FROM zzzzsys_form\nWHERE sfo_type IN (\'edit\', \'browseedit\', \'launch\')\nORDER BY sfo_code\n\n\n\n', '$(\'#sfo_breadcrumb_title\').addClass(\'sql\');\n$(\'#sfo_browse_sql\').addClass(\'sql\');\n$(\'#sfo_javascript\').addClass(\'js\');\n\nnuSetTitle($(\'#sfo_table\').val());\n\n$(\'.js\').dblclick(function() {\n	nuOpenAce(\'Javascript\', this.id);\n});\n\n$(\'.sql\').dblclick(function() {\n	nuOpenAce(\'SQL\', this.id);\n});\n\n$(\'.html\').dblclick(function() {\n	nuOpenAce(\'HTML\', this.id);\n});\n\n$(\'.php\').dblclick(function() {\n	nuOpenAce(\'PHP\', this.id);\n});\n\nif(window.filter == \'justjs\'){\n    \n    $(\'#nuDeleteButton\').remove();\n    $(\'#nuCloneButton\').remove();\n    $(\'#nuTab0\').remove();\n    $(\'#nuTab1\').remove();\n    $(\'#nuTab2\').click();\n    $(\'#nuTab2\').remove();\n    \n    nuSetTitle($(\'#sfo_description\').val());\n    \n}\n\n\n\nfunction nuFormColor(){\n\n    var t   = String($(\'#sfo_type\').val());\n\n    var pb  = \'previewbrowse\';\n    var pe  = \'previewedit\';\n\n    var bb  = \'bb_event\';\n    var be  = \'be_event\';\n    var bs  = \'bs_event\';\n    var as  = \'as_event\';\n    var bd  = \'bd_event\';\n    var ad  = \'ad_event\';\n    \n    if(t == \'browse\'){\n        \n        nuDisable(pe);\n\n        nuDisable(be);\n        nuDisable(bs);\n        nuDisable(as);\n        nuDisable(bd);\n        nuDisable(ad);\n\n    }\n    \n    if(t == \'edit\'){\n        \n        nuDisable(pb);\n        nuDisable(bb);\n        \n    }\n\n    if(t == \'launch\'){\n        \n        nuDisable(pb);\n        nuDisable(bb);\n        nuDisable(as);\n        nuDisable(bd);\n        nuDisable(ad);\n\n    }\n    \n    if(t == \'subform\'){\n        \n        nuDisable(pb);\n        nuDisable(bb);\n        nuDisable(be);\n        nuDisable(bs);\n        nuDisable(as);\n        nuDisable(bd);\n        nuDisable(ad);\n        nuDisable(\'sfo_javascript\');\n        \n    }\n\n    var h           = $(\'#sfo_type\').addClass(\'nuEdited\');\n    var o           = [];\n    o[\'browse\']		= [0,1,2];\n    o[\'edit\'] 		= [0,2];\n    o[\'browseedit\'] = [0,1,2];\n    o[\'launch\'] 	= [0,2];\n    o[\'subform\']    = [0,1];\n    \n    $(\'#sfo_type\').removeClass();\n    $(\'#sfo_type\').addClass(\'nu_\'+$(\'#sfo_type\').val());\n    \n    if(h){\n        $(\'#sfo_type\').addClass(\'nuEdited\');\n    }\n    \n    $(\"#sfo_type > option\").each(function() {\n        $(this).addClass(\'nu_\'+this.value);\n    });\n\n    for(var i = 0 ; i < 7 ; i++){\n        $(\'#nuTab\' + i).removeClass(\'nuRelatedTab\');\n    }\n    var t   = o[$(\'#sfo_type\').val()];\n\n    if(t !== undefined){\n        \n    	for(var i = 0 ; i < t.length ; i++){\n    		$(\'#nuTab\' + t[i]).addClass(\'nuRelatedTab\');		\n    	}\n    	\n    }\n    \n}\n\nnuFormColor();\n\n//nuBuildSubformArray(\'zzzzsys_tab_sf\');\n//nuBuildSubformArray(\'zzzzsys_browse_sf\');\n\n$(\"[data-nu-column=\'nucolumn000\']\").each(function() {\n    $(this).addClass(\'nu_\'+this.textContent);\n});\n\n\n\nfunction nuEventList(){\n	\n	if($(\'sob_all_type\').val() == \'subform\'){\n		return [\'onchange\',\'onadd\'];\n	}else{\n		return [\'onblur\',\'onchange\',\'onfocus\',\'onkeydown\'];\n	}\n	\n}\n\n\n'),
('nuclause', 'subform', 'SELSUB', 'Select Clauses', 'zzzzsys_select_clause', 'zzzzsys_select_clause_id', '', 0, 0, 'SELECT * FROM zzzzsys_select_clause\nORDER BY ssc_type, ssc_order', ''),
('s14967315763149', 'browseedit', 'INVCOM', 'Company', 'company', 'company_id', '56773cb405f4913', 0, 0, 'SELECT\n    company.*\n\nFROM\n    company\n\nWHERE\n    ((company.com_name != \'0\'))\n\n', ''),
('s14968332683656', 'browse', '1123', 'Test Form (break it if you want)', 'zzzzsys_access_level', 'zzzzsys_access_level_id', '', 0, 0, 'SELECT\n    color.color_id,\n    color.col_code,\n    color.col_description\n\nFROM\n    color', 'nuSetTitle($(\'#sal_code\').val());'),
('s14993014809858', 'browse', 'PANDS', 'PHP and SELECT ', 'zzzzsys_report_data', 'id', 'nuselect', 0, 0, 'SELECT * FROM zzzzsys_report_data', ''),
('nuuserhome', 'launch', 'USERH', 'Home', '', '', '', 0, 0, '', ''),
('s15014147222001', 'browse', 'EMPLU', 'Employee', 'employee', 'employee_id', '', 0, 0, 'SELECT * FROM employee', ''),
('s15017688442340', 'subform', 'PAY', 'Payments', 'payment', 'payment_id', '', 0, 0, 'SELECT * FROM payment', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_format`
--

CREATE TABLE `zzzzsys_format` (
  `zzzzsys_format_id` varchar(25) NOT NULL,
  `srm_type` varchar(10) NOT NULL,
  `srm_format` varchar(300) NOT NULL
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
('58c039f8792cbf3', 'Date', 'dd, dddd mmmm yyyy'),
('s14974607083347', 'Number', '$ 1000'),
('s14974614374310', 'Number', '€ 1000'),
('s14993864768814', 'Date', 'yy'),
('s14995113814003', 'Date', 'yy-yyyy-pp-dd-ddd-dd'),
('s14995115585517', 'Date', 'dddd-mm-mmm-mmmm'),
('s14995115835792', 'Date', 'hh-nn-ss'),
('s14995406788666', 'Date', 'yy-yyyy-pp-dd-ddd-dddd-mm-mmm-mmmm-hh-nn-ss');

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
('58c8e65c7ed6824', 'js', 'nuEnable', 'nuEnable(string field)', 'Enable an Object on a nuBuilder Form.', 'if(phones == 2){\n    nuEnable(\'com_phone2\');\n}\n', 'nuDisable'),
('58c8e6acb396753', 'js', 'nuDisable', 'nuDisable(string field)', 'Disable an Object on a nuBuilder Form.', 'if(phones == 2){\n    nuDisable(\'com_phone2\');\n}\n', 'nuEnable'),
('58c915497d0ab1b', 'js', 'nuSetTitle', 'nuSetTitle(string title)', 'Changes the Title of the last breadcrumb.', 'nuSetTitle($(\'#cus_name\').val());', ''),
('58c99a3bcf96e31', 'js', 'nuTotal', 'number nuTotal(string field)', 'field, represents a specific (number or nuNumber) Object or whole column of a Subform Object on an Edit Form, ', '\n//-- ite_total column from invoice subform\nvar sale_total = nuTotal(\'invoice.ite_total\');\n\n//-- inv_total column\nvar grand_total = nuTotal(\'inv_total\');\n', ''),
('58d87b4a1eafe61', 'php', 'nuID', 'string = nuID()', 'Creates a new unique ID', '$id = nuID();', '[nuTT](nuTT)'),
('58d87beb5b68ce8', 'php', 'nuTT', 'string nuTT()', 'Creates a new unique ID used for creating a temp table name. \n\nPrefixed with __nu.', '$tt = nuTT();\n\n$sql = \"CREATE TABLE $tt SELECT * FROM customer\";\n', 'nuID'),
('58dc29359d5c185', 'js', 'nuMessage', 'nuMessage(array of strings)', 'nuBuilder Popup message.', 'if(cus_name){\n   nuMessage(\'No Customer!\');\n}', 'nuDisplayMessage()'),
('58dc2a78c53adfd', 'js', 'nuBeforeSave', '', 'The name of a custom javascript function, that will run before saving an Edit Form', 'function nuBeforeSave(){\n\nif(cus_name){\n\n   nuMessage(\'No Customer!\');\n   return false;\n\n}else{\n   return true;\n}\n\n}', ''),
('58dcb8edeebbe38', 'php', 'nuSubformObject', 'object = nuSubformObject(string)', 'An object defining a Subform.', '\n$SF             = nuSubformObject(\'obj_sf\');\n\nfor($i = 0 ; $i < count($SF->rows) ; $i++){\n    \n    $label      = $SF->rows[$i][1];\n    $field      = $SF->rows[$i][2];\n    $oldid      = $SF->rows[$i][3];\n\n    nuDebug(\"$label, $field, $oldid\");\n\n}\n\n\n', ''),
('s14919452896598', 'js', 'nuGetBreadcrumb', '', 'Open a specific Form and/or Tab.', '//-- open the first breadcrumb and the 2nd tab.\n\nnuGetBreadcrumb(0,1)  ', 'nuSelectTab'),
('s14919465746468', 'js', 'nuSelectTab', '', 'Open a specific Tab.', 'nuSelectTab(document.getElementById(\'nuTab2\'));\n', 'nuGetBreadcrumb'),
('s14919525135898', 'php', 'nuHasNewRecordID', '', 'Returns true if New or Cloned record.', 'if(nuHasNewRecordID()){\n   do something ..\n}', ''),
('s14930120175840', 'js', 'nuShow', '', 'Show all bits of an Object.', 'nuShow(\'cus_address\')', 'nuHide'),
('s14930120596415', 'js', 'nuHide', '', 'Hide all bits of an Object.', 'nuHide(\'cus_address\')', 'nuShow'),
('s14930122576988', 'js', 'nuID', 'string = nuID()', 'Creates a unique and incrementing string.', 'customer_id = nuID()', ''),
('s14932446969358', 'php', 'nuDisplayError', '', 'Any messages created by using nuDisplayError() will be displayed in the browser and halt any update to the web page.', 'nuDisplayError(\"Cannot be left blank\");', 'nuDisplayMessage'),
('s14932447920170', 'php', 'nuDisplayMessage', '', 'Any messages created by using nuDisplayMessage() will be displayed in the browser and BUT will not halt any update to the web page.', 'nuDisplayMessage(\"All tables have been updated\");', 'nuDisplayError'),
('s14932454128614', 'php', 'nuDebug', '', 'Creates a record in zzzzsys_debug.deb_message.\nParamrters can be number, string, object or array.\nObjects and arrays will be displayed as if print_r() was used.\n', 'nuDebug(\'hello\', $_POST);', ''),
('s14932467957769', 'php', 'nuGetSubformObject', '', 'returns an Object containing information about a subform.\n\neg.\n\nstdClass Object\n(\n    [id] => zzzzsys_tab_sf\n    [foreign_key] => syt_zzzzsys_form_id\n    [primary_key] => zzzzsys_tab_id\n    [object_id] => 570b3915874d635\n    [table] => zzzzsys_tab\n    [action] => save\n    [rows] => Array\n        (\n            [0] => Array\n                (\n                    [0] => 58d3719f5582316\n                    [1] => User\n                    [2] => 10\n                    [3] => 0\n                )\n\n            [1] => Array\n                (\n                    [0] => 58d3719f5582b0a\n                    [1] => Procedures\n                    [2] => 20\n                    [3] => 0\n                )\n\n            [2] => Array\n                (\n                    [0] => 58d3719f5582f10\n                    [1] => Reports\n                    [2] => 30\n                    [3] => 0\n                )\n\n            [3] => Array\n                (\n                    [0] => -1\n                    [1] => \n                    [2] => \n                    [3] => 1\n                )\n\n        )\n\n    [edited] => Array\n        (\n            [0] => Array\n                (\n                    [0] => 0\n                    [1] => 0\n                    [2] => 0\n                    [3] => 0\n                )\n\n            [1] => Array\n                (\n                    [0] => 0\n                    [1] => 0\n                    [2] => 0\n                    [3] => 0\n                )\n\n            [2] => Array\n                (\n                    [0] => 0\n                    [1] => 0\n                    [2] => 0\n                    [3] => 0\n                )\n\n            [3] => Array\n                (\n                    [0] => 0\n                    [1] => 0\n                    [2] => 0\n                    [3] => 0\n                )\n\n        )\n\n    [deleted] => Array\n        (\n            [0] => 0\n            [1] => 0\n            [2] => 0\n            [3] => 1\n        )\n\n    [fields] => Array\n        (\n            [0] => ID\n            [1] => syt_title\n            [2] => syt_order\n            [3] => nuDelete\n        )\n\n)\n\n\n', '$object = nuGetSubformObject(\'client_sf\');', ''),
('s14932481809933', 'php', 'db_fetch_object', '', 'Returns sql row result as an object.', '	$t	= nuRunQuery(\"SELECT * FROM $TT LIMIT 1, 1\");\n	\n	$r 	= db_fetch_object($t);\n\n	$a	= $r->sob_all_type;\n	$b	= $r->sob_input_type;\n		\n', ''),
('s14932498348604', 'php', 'nuCSSInclude', '', '', '', ''),
('s14932498590353', 'php', 'db_columns', '', '', '', ''),
('s14932498792006', 'php', 'db_fetch_array', '', '', '', ''),
('s14932499162897', 'php', 'db_field_array', '', '', '', ''),
('s14932499828835', 'php', 'db_num_rows', '', '', '', ''),
('s14932500041119', 'php', 'nuJSInclude', '', '', '', ''),
('s14932500221019', 'php', 'nuAddJavascript', '', '', '', ''),
('s14932501649485', 'php', 'nuRunQuery', '', '', '', ''),
('s14932504017157', 'js', 'nuAddActionButton', '', '', '', ''),
('s14932511793309', 'php', 'nuSetFormValue', '', 'This function can be used in the After Browse of a Lookup.', 'nuSetFormValue(\'com_phone\', 1234);', ''),
('s14932518549479', 'js', 'nuPad4', '', 'Adds 0s to the left of a number to make it 4 characters wide.', 'print nuPad4(78);\n\n0078', 'nuPad3 nuPad2'),
('s14932518912522', 'js', 'nuPad3', '', 'Adds 0s to the left of a number to make it 3 characters wide.', 'print nuPad3(78);\n\n078', 'nuPad4 nuPad2'),
('s14932519693379', 'js', 'nuPad2', '', 'Adds 0s to the left of a number to make it 2 characters wide.', 'print nuPad2(7);\n\n07', 'nuPad4 nuPad3'),
('s14932528023884', 'js', 'nuPopup', '', '', '', ''),
('s14932533877122', 'js', 'nuGetSubformObject', '', 'Get a nuBuilder Subform as an Object', 'var o = object = nuGetSubformObject(\'customer_sf\');', ''),
('s14932539093066', 'php', 'nuIsGlobeadmin', '', 'Returns true if user is logged in as Globeadmin', '', ''),
('s14933331793232', 'js', 'nuGetWordWidth', 'number = nuGetWordWidth(string phrase)', 'Calculates the width of a string on a HTML page.', 'var l = nuGetWordWidth(\'hello world\');\n\n$(\'#thediv\').css(\'width\', l);\n', ''),
('s14933331793233', 'js', 'nuAddAction', '', '', '', ''),
('s14933331793234', 'js', 'nuDeleteAction', '', '', '', ''),
('s14933331793235', 'js', 'nuCloneAction', '', '', '', ''),
('s14933331793236', 'js', 'nuSaveAction', '', '', '', ''),
('s14933331793237', 'js', 'nuPrintAction', '', '', '', ''),
('s14933331793238', 'js', 'nuEmailReportAction', '', '', '', ''),
('s14933331793240', 'js', 'nuTranslate', '', '', '', ''),
('s14933331793241', 'js', 'nuIsOpener', '', '', '', ''),
('s14933331793242', 'js', 'nuPopup', '', '', '', ''),
('s14933331793243', 'js', 'nuRunReport', '', '', '', ''),
('s14933331793244', 'js', 'nuRunPHP', '', '', '', ''),
('s14933331793245', 'js', 'nuRunPHPHidden', '', '', '', ''),
('s14933331793246', 'js', 'nuIsWindow', '', '', '', ''),
('s14933331793247', 'php', 'nuClientTimeZone', '', '', '', ''),
('s14933331793248', 'php', 'nuDebug', '', '', '', ''),
('s14933331793250', 'php', 'nuID', '', '', '', ''),
('s14933331793251', 'php', 'nuGetUserAccess', '', '', '', ''),
('s14933331793252', 'php', 'nuHasNewRecordID', '', '', '', ''),
('s14933331793253', 'php', 'nuDisplayError', '', '', '', ''),
('s14933331793254', 'php', 'nuDisplayMessage', '', '', '', ''),
('s14933331793255', 'php', 'nuCheckAccess', '', '', '', ''),
('s14933331793256', 'php', 'nuDeleteForm', '', '', '', ''),
('s14933331793257', 'php', 'nuRunQuery', '', '', '', ''),
('s14933331793258', 'php', 'nuGetSubformObject', '', '', '', ''),
('s14933331793259', 'php', 'nuRemoveNonCharacters', '', '', '', ''),
('s14933331793260', 'php', 'nuButtons', '', '', '', ''),
('s14933331793261', 'php', 'nuAddJavascript', '', '', '', ''),
('s14933331793262', 'php', 'nuIsField', '', '', '', ''),
('s14933331793263', 'php', 'nuIsRecord', '', '', '', ''),
('s14933331793264', 'php', 'nuIsFile', '', '', '', ''),
('s14933331793265', 'php', 'nuRemoveFiles', '', '', '', '');

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
  `sob_input_count` bigint(20) NOT NULL,
  `sob_input_format` varchar(300) NOT NULL,
  `sob_input_type` varchar(300) NOT NULL,
  `sob_input_javascript` text NOT NULL,
  `sob_html_code` text NOT NULL,
  `sob_image_zzzzsys_file_id` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_object`
--

INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_table`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_access`, `sob_all_default_value_sql`, `sob_calc_formula`, `sob_calc_format`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_lookup_table`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_subform_table`, `sob_input_count`, `sob_input_format`, `sob_input_type`, `sob_input_javascript`, `sob_html_code`, `sob_image_zzzzsys_file_id`) VALUES
('567742c772b9642', '56773cb405f4913', 'company', 'input', 'com_name', 'Company Name', '56777715b87666e', 30, 98, 172, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('5678992c5432850', '56773cb405f4913', 'company', 'input', 'com_suburb', 'Suburb', '56777715b87666e', 40, 143, 172, 90, 18, '1', 'left', '0', '0', '', 'nuTotal(\'com_phone\') + nuTotal(\'employee_sf.thecalc\')', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'D|mmmm', 'nuDate', '', '', ''),
('5678ac0f8f3d3b8', '5678ab2c48c5c41', 'employee', 'input', 'emp_name', 'Name', '5678ab2c49bd810', 10, 15, 110, 100, 18, '1', 'left', '1', '0', '', '', '', 'nuuser', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', 'nuaccessforms'),
('5679d499ad76e9f', '5678ab2c48c5c41', 'employee', 'input', 'emp_mobile', 'Mobile', '5678ab2c49bd810', 40, 15, 584, 136, 17, '1', 'left', '0', '0', '', '', 'N:$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('5689fdaf9babfb9', '56773cb405f4913', 'company', 'select', 'com_color_id', 'Color', '56777715b87666e', 10, 188, 172, 150, 97, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '1', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s15017688442347', 's15017688442340', 'payment', 'input', 'pay_amount', 'Amount', 's15017688442341', 140, 140, 240, 100, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuNumber', '', '', ''),
('s15017689974836', '58a08a1abc4782c', 'invoice', 'subform', 'invoice_payment', 'Payments', '58a08a1abc48c9a', 10, 145, 609, 280, 219, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 's15017688442340', 'pay_invoice_id', '1', '1', 'g', 'payment', 0, '', '', '', '', ''),
('56b2b18903c9991', '568b508eec00d80', 'business', 'input', 'bus_code', 'Code', '568b508eecf5dee', 0, 10, 50, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('56b2b1afab7397e', '568b508eec00d80', 'business', 'input', 'bus_description', 'Description', '568b508eecf5dee', 0, 40, 100, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('56b2b1c7939942e', '568b508eec00d80', 'business', 'input', 'bus_check', 'Check', '568b508eecf5dee', 0, 100, 50, 30, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('5716e2428f5e8fb', 'nuobject', 'zzzzsys_object', 'subform', 'zzzzsys_event_sf', 'Javascript', '58c63d38b88dbab', 500, 47, 78, 505, 100, '1', 'left', '0', '0', '', '', '', '', '', 'b', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', 'nuevent', 'sev_zzzzsys_object_id', '1', '1', 'g', 'zzzzsys_event', 0, '', 'text', '', '', ''),
('56c0fd692478b9e', '5678ab2c48c5c41', 'employee', 'lookup', 'emp_business_id', 'Business Type', '5678ab2c49bd810', 50, 15, 418, 60, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '90', '0', '568b508eec00d80', '', '', 'business', '', '', '', '', '', '', 0, '', '', '', '', ''),
('nuaccess', 'nuhome', '', 'run', 'run_access', 'Access Levels', '569dc4ed270f08a', 50, 90, 276, 150, 30, '1', 'left', '1', '0', '', '', '', 'nuaccess', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('57e851fa96edc98', 'nupassword', 'zzzzsys_user', 'display', 'the_user', ' ', '57abe72610d666d', 10, 46, 181, 200, 18, '1', 'center', '0', '0', '', '', '', '', '', '', '', 'SELECT sus_login_name\nFROM zzzzsys_user\nWHERE zzzzsys_user_id = \'#RECORD_ID#\'', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('57073c3a0b4ea44', 'nuform', 'zzzzsys_form', 'select', 'sfo_type', 'Form Type', '570730313dd25c5', 10, 21, 116, 140, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'browse|Browse|\nedit|Edit|browseedit|\nBrowse and Edit|\nlaunch|Launch|\nsubform|Subform Only', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('57074535d3d3ec8', 'nuform', 'zzzzsys_form', 'input', 'sfo_code', 'Code', '570730313dd25c5', 20, 52, 116, 140, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('5707456baf5bf41', 'nuform', 'zzzzsys_form', 'input', 'sfo_description', 'Description', '570730313dd25c5', 30, 82, 116, 252, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570746cc078074e', 'nuform', 'zzzzsys_form', 'input', 'sfo_table', 'Table Name', '570730313dd25c5', 40, 112, 116, 252, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.getTables()', '', ''),
('570b00aa9ff6b8d', 'nuform', 'zzzzsys_form', 'input', 'sfo_primary_key', 'Primary Key', '570730313dd25c5', 50, 141, 116, 252, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.tableSchema[$(\"#sfo_table\").val()]?nuFORM.tableSchema[$(\"#sfo_table\").val()].names:[]', '', ''),
('570b026adaa8641', 'nuform', 'zzzzsys_form', 'input', 'sfo_browse_row_height', 'Row Height', '5707303141ab448', 90, 287, 102, 50, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('570b02f9b8e2424', 'nuform', 'zzzzsys_form', 'input', 'sfo_browse_rows_per_page', 'Rows Per Page', '5707303141ab448', 100, 287, 257, 50, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('570b067c2f7cdf5', 'nuform', 'zzzzsys_form', 'lookup', 'sfo_browse_redirect_form_id', 'Redirect To', '5707303141ab448', 110, 287, 392, 100, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '230', '', 'nuform', '', '', 'zzzzsys_form', '', '', '', '', '', '', 0, '', '', '', '', ''),
('570b1883bbeec99', 'nuform', 'zzzzsys_form', 'textarea', 'sfo_browse_sql', 'SQL', '5707303141ab448', 70, 19, 102, 639, 90, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('570b192e68d97ac', 'nuform', 'zzzzsys_form', 'subform', 'zzzzsys_browse_sf', 'Columns', '5707303141ab448', 80, 124, 102, 639, 150, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', 'nubrowse', 'sbr_zzzzsys_form_id', '1', '1', 'g', 'zzzzsys_browse', 0, '', '', '', '', ''),
('570b1a86d41a62c', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_title', 'Title', '570b19bf5981983', 10, 8, 69, 150, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570b1abae987b02', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_display', 'Display', '570b19bf5981983', 20, 34, 69, 150, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.SQLFields($(\'#sfo_browse_sql\').val())', '', ''),
('58c465508d4fc64', 'nuform', 'zzzzsys_form', 'word', 'phpwrd', 'PHP Code', '58c19d9bc559aca', 190, 48, 36, 79, 17, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('570b2330ea5f52a', 'nubrowse', 'zzzzsys_browse', 'select', 'sbr_align', 'Align', '570b19bf5981983', 30, 60, 69, 70, 18, '1', 'left', '1', '0', 'SELECT \'l\';', '', '', '', '', '', '', '', '0', 'l|Left|r|Right|c|Center', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570b23a2439a04c', 'nubrowse', 'zzzzsys_browse', 'select', 'sbr_format', 'Format', '570b19bf5981983', 40, 86, 69, 115, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), \'|\', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570b242a368005e', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_width', 'Width', '570b19bf5981983', 50, 112, 69, 50, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('570b24bfbf54a99', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_order', 'Order', '570b19bf5981983', 60, 138, 69, 50, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('570b3915874d635', 'nuform', 'zzzzsys_form', 'subform', 'zzzzsys_tab_sf', 'Tabs', '570730313dd25c5', 60, 21, 433, 231, 250, '0', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nutab', 'syt_zzzzsys_form_id', '1', '1', 'g', 'zzzzsys_tab', 0, '', '', '', '', ''),
('570b39cc123601d', 'nutab', 'zzzzsys_tab', 'input', 'syt_title', 'Title', '576372e045a2f81', 0, 10, 100, 130, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570b39f046ded37', 'nutab', 'zzzzsys_tab', 'input', 'syt_order', 'Order', '576372e045a2f81', 0, 40, 100, 46, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('58117aed5513a01', 'nuform', 'zzzzsys_form', 'input', 'bb_event', 'Before Browse', '58c19d9bc559aca', 130, 24, 121, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('573d15d41e279ba', 'nubuildreport', 'zzzzsys_report', 'input', 'open_builder', 'Report Designer', '574b964941d3d1a', 60, 181, 236, 100, 18, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('570c3b5d641d514', 'nubuildreport', 'zzzzsys_report', 'textarea', 'sre_layout', 'Layout', '574b964941d3d1a', 70, 226, 236, 300, 100, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('570c3e6e67c39cb', 'nuform', 'zzzzsys_form', 'textarea', 'sfo_javascript', 'Javascript Code', '58c19d9bc559aca', 200, 113, 121, 556, 87, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('570c3fce5be3355', 'nuphp', 'zzzzsys_php', 'subform', 'zzzzsys_php_library_sf', 'PHP Library', '57eb1bd4cb7e1f4', 80, 120, 191, 415, 200, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '220', '', 'nunonsystemform', '', '', 'zzzzsys_form', 'nuphplibrary', 'spl_zzzzsys_php_id', '1', '1', 'g', 'zzzzsys_php_library', 0, '', '', '', '', ''),
('57578afc803136a', 'nuphp', 'zzzzsys_php', 'lookup', 'sph_zzzzsys_form_id', 'Launch from', '574b8ee0b2a4cdf', 50, 112, 141, 136, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '230', '', 's14937641259181', '', '', 'zzzzsys_form', '', '', '', '', '', '', 0, '', '', '', '', ''),
('570c8e4ef085ed5', 'nuhome', '', 'run', 'object_button', 'Objects', '569dc4ed270f08a', 80, 90, 468, 150, 30, '1', 'right', '1', '0', '', '', '', 'nuobject', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('570d9046964038e', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_all_zzzzsys_tab_id', 'Form Tab', '570d90df5ce8e1a', 30, 31, 83, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', '', ''),
('570d98b34bf37c9', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_type', 'Type', '570d90df5ce8e1a', 40, 59, 83, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'calc|Calc|\ndisplay|Display|\nhtml|HTML|\nimage|Image|\ninput|Input|\nlookup|Lookup|\nrun|Run|\nselect|Select|\nsubform|Subform|\ntextarea|Textarea|\nword|Word', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', '', ''),
('570d9938ebe4428', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_id', 'ID', '570d90df5ce8e1a', 60, 113, 83, 250, 20, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.tableSchema[$(\"#sob_all_table\").val()]?nuFORM.tableSchema[$(\"#sob_all_table\").val()].names:[]', '', ''),
('570d998aea50861', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_label', 'Label', '570d90df5ce8e1a', 50, 86, 83, 250, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570d9a2e76e6a8c', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_order', 'Tabbing Order', '570d90df5ce8e1a', 20, 42, 0, 72, 18, '1', 'right', '0', '2', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570d9a5d4c69587', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_top', 'Top', '570d90df5ce8e1a', 110, 142, 83, 50, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('570d9a7237fd2fc', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_left', 'Left', '570d90df5ce8e1a', 120, 169, 83, 50, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('570d9a8847feae7', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_width', 'Width', '570d90df5ce8e1a', 130, 142, 189, 50, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('570d9a9a6b24446', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_height', 'Height', '570d90df5ce8e1a', 140, 169, 189, 50, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('570d9cb9d004579', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_cloneable', 'Cloneable', '570d90df5ce8e1a', 70, 142, 324, 66, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570d9d0a39b227c', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_align', 'Align', '570d90df5ce8e1a', 80, 169, 324, 66, 18, '1', 'left', '1', '0', 'SELECT \'left\';', '', '', '', '', '', '', '', '0', 'left|Left|right|Right|center|Center', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570d9dd38561e81', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_validate', 'Validation', '570d90df5ce8e1a', 90, 142, 474, 110, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', '0|None|1|No Blanks|2|No Duplicates', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570d9e1c5a6bcfd', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_access', 'Access', '570d90df5ce8e1a', 100, 169, 474, 110, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '0', '0|Editable|1|Readonly|2|Hidden', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('58d082a44cc79a5', 'nuobject', 'zzzzsys_object', 'word', 'calctotwrd', 'Objects', '5851cf915a1c653', 480, 110, 80, 212, 17, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('58d08322022ad15', 'nuobject', 'zzzzsys_object', 'word', 'calcfldwrd', 'Operators', '5851cf915a1c653', 490, 110, 306, 275, 17, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('570d9f7b580e04a', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_html_code', 'HTML', '570d90df73d3a2a', 430, 17, 58, 566, 200, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570d9fa3e7160c2', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_display_sql', 'SQL', '570d90df63e6972', 200, 50, 60, 500, 150, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570d9ffcd716321', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_select_sql', 'SQL<br>or<br>List', '570d90df670db61', 230, 50, 60, 500, 150, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570da046d5f9f4c', 'nuobject', 'zzzzsys_object', 'select', 'sob_select_multiple', 'Multiple', '570d90df670db61', 240, 20, 60, 50, 18, '1', 'left', '0', '0', 'SELECT 0', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570da149b76e0e6', 'nuobject', 'zzzzsys_object', 'select', 'sob_input_type', 'Input Type (and class)', '570d90df707867b', 410, 35, 175, 161, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'nuDate|nuDate|\nnuNumber|nuNumber|\nnuScroll|nuScroll|\nnuAutoNumber|nuAutoNumber|\n\nbutton|Button|\ncheckbox|Checkbox|\ncolor|Color|\ndatetime-local|Datetime-Local|\nemail|Email|\nfile|File|\nhidden|Hidden|\nimage|Image|\nmonth|Month|\nnumber|Number|\npassword|Password|\nradio|Radio|\nrange|Range|\nreset|Reset|\nsearch|Search|\ntel|Telephone|\ntext|Text|\ntime|Time|\nurl|URL|\nweek|Week\n\n\n', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570da31addae07f', 'nuobject', 'zzzzsys_object', 'select', 'sob_input_format', 'Format', '570d90df707867b', 390, 66, 175, 161, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), \'|\', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type\n', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570da52f2828508', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_subform_zzzzsys_form_id', 'Form', '570d90df6d35fde', 330, 20, 200, 100, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', '', '', '', ''),
('570da72cb4282e3', 'nuobject', 'zzzzsys_object', 'input', 'sob_subform_foreign_key', 'Foreign Key', '570d90df6d35fde', 340, 50, 200, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.tableSchema[$(\"#sob_subform_table\").val()]?nuFORM.tableSchema[$(\"#sob_subform_table\").val()].names:[]', '', ''),
('570da7b07ce4d7a', 'nuobject', 'zzzzsys_object', 'select', 'sob_subform_add', 'Addable', '570d90df6d35fde', 350, 80, 200, 60, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570da7d7d12aea2', 'nuobject', 'zzzzsys_object', 'select', 'sob_subform_delete', 'Deleteable', '570d90df6d35fde', 360, 110, 200, 60, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570da861e15f8f6', 'nuobject', 'zzzzsys_object', 'select', 'sob_subform_type', 'Type', '570d90df6d35fde', 370, 140, 200, 60, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'g|Grid|f|Form', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570da8ac71acec7', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_run_zzzzsys_form_id', 'Run', '570d90df60880c2', 160, 36, 141, 100, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'code', 'CONCAT(run, \' - \', description)', '200', '', 'nurunlist', '', '', 'zzzzsys_run_list', '', '', '', '', '', '', 0, '', '', '', '', ''),
('570da93be3f323f', 'nuobject', 'zzzzsys_object', 'input', 'sob_run_filter', 'Filter', '570d90df60880c2', 170, 66, 141, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570da986cb6807a', 'nuobject', 'zzzzsys_object', 'input', 'sob_run_id', 'Record ID', '570d90df60880c2', 180, 96, 141, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570daa6277a97e1', 'nuobject', 'zzzzsys_object', 'select', 'sob_run_method', 'Method', '570d90df60880c2', 190, 126, 141, 80, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'b|Button|i|iFrame', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570dab25164b394', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_lookup_zzzzsys_form_id', 'Form', '570d90df6a2c12a', 250, 29, 165, 100, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', '', '', '', ''),
('570dabca9be44fd', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_code', 'Code', '570d90df6a2c12a', 260, 57, 165, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.tableSchema[$(\"#sob_lookup_table\").val()]?nuFORM.tableSchema[$(\"#sob_lookup_table\").val()].names:[]', '', ''),
('570dabf5a2e2b8f', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_description', 'Description', '570d90df6a2c12a', 280, 85, 165, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.tableSchema[$(\"#sob_lookup_table\").val()]?nuFORM.tableSchema[$(\"#sob_lookup_table\").val()].names:[]', '', ''),
('570dac54b62da77', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_description_width', 'Width', '570d90df6a2c12a', 290, 85, 434, 50, 18, '1', 'right', '0', '0', 'SELECT 0;', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('570dadc061c6ef5', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_lookup_javascript', 'Javascript', '570d90df6a2c12a', 310, 148, 165, 320, 32, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570db01f6dd4d3d', 'nulookup', 'company', 'input', 'zzzzsys_slo_object_name', 'Form Object Name', '570dafc86862c1b', 0, 20, 200, 274, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570db0522404442', 'nulookup', 'company', 'input', 'zzzzsys_slo_field_function_name', 'Field / Function Name', '570dafc86862c1b', 0, 40, 200, 270, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('570db786c678c27', 'nuhome', '', 'run', 'form_button', 'Forms', '569dc4ed270f08a', 70, 35, 468, 150, 30, '1', 'right', '1', '0', '', '', '', 'nuform', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('5726daf4237eb57', 'nuevent', 'zzzzsys_event', 'input', 'sev_javascript', 'Javascript', '5726b139a7e27c2', 20, 1, 255, 300, 20, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', 0, '', 'text', '', '', ''),
('5726cca96d51595', 'nuevent', 'zzzzsys_event', 'input', 'sev_event', 'Event', '5726b139a7e27c2', 10, 1, 55, 150, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'drag|drag|dragend|dragend|dragenter|dragenter|dragexit|dragexit|dragleave|dragleave|dragover|dragover|dragstart|dragstart|drop|drop|onclick|onclick|onblur|onblur|onchange|onchange|onfocus|onfocus|onkeydown|onkeydown', '', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', 0, '', 'nuScroll', 'nuChooseEventList()', '', ''),
('5743da507326181', 'nuaccess', 'zzzzsys_access_level', 'input', 'sal_description', 'Description', '5743d509312c4bc', 30, 80, 100, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('5743d964cbef2e1', 'nuaccess', 'zzzzsys_access_level', 'lookup', 'sal_zzzzsys_form_id', 'Home', '5743d509312c4bc', 10, 20, 100, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nunonsystemform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', '', '', '', ''),
('5742b06d956c254', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_zzzzsys_form_id', 'Form ID', '570d90df5ce8e1a', 150, 0, 0, 72, 18, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '0', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('5743da6ab90d89b', 'nuaccess', 'zzzzsys_access_level', 'input', 'sal_code', 'Code', '5743d509312c4bc', 20, 50, 100, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('57452c417370475', 'nuaccessforms', 'employee ', 'lookup', 'slf_zzzzsys_form_id', 'Form', '5746616ea8ead0c', 10, 20, 100, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nunonsystemform', '', '', 'zzzzsys_form', '', '', '1', '', '', '', 0, '', '', '', '', ''),
('57452d00100e37b', 'nuaccess', 'zzzzsys_access_level', 'subform', 'accform', ' ', '5743d509312ce9c', 40, 20, 50, 660, 300, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessforms', 'slf_zzzzsys_access_level_id', '1', '1', 'g', '', 0, '', '', '', '', ''),
('57464b254128724', 'nuaccessforms', 'employee ', 'input', 'slf_add_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<span class=\'nuActionButton\'>Add</span>', '5746616ea8ead0c', 20, 90, 104, 53, 15, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', '', ''),
('57464b8ac424381', 'nuaccessforms', 'employee ', 'input', 'slf_save_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\'nuActionButton\'>Save</span>', '5746616ea8ead0c', 40, 18, 252, 53, 15, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', '', ''),
('57464b99c32e7a9', 'nuaccessforms', 'employee ', 'input', 'slf_delete_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=\'nuActionButton\'>Delete</span>', '5746616ea8ead0c', 60, 74, 214, 53, 15, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', '', ''),
('57464ba7ab4fc9f', 'nuaccessforms', 'employee ', 'input', 'slf_clone_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=\'nuActionButton\'>Clone</span>', '5746616ea8ead0c', 50, 47, 192, 53, 15, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', '', ''),
('58c2d56407479b3', 'nuaccess', 'zzzzsys_access_level', 'word', 'button_title', 'Enable Buttons...', '5743d509312ce9c', 50, 37, 348, 200, 18, '1', 'center', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('57464bc6d665be3', 'nuaccessforms', 'employee ', 'input', 'slf_print_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=\'nuActionButton\'>Print</span>', '5746616ea8ead0c', 30, 42, 100, 53, 15, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', '', ''),
('574665c53498a27', 'nuusergroup', 'zzzzsys_user_group', 'input', 'sug_code', 'Code', '574665a15bc3218', 10, 51, 107, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('574665db58bbad6', 'nuusergroup', 'zzzzsys_user_group', 'input', 'sug_description', 'Description', '574665a15bc3218', 20, 82, 107, 300, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('574667a92f0374f', 'nuusergroup', 'zzzzsys_user_group', 'lookup', 'sug_zzzzsys_form_id', 'Home', '574665a15bc3218', 30, 112, 107, 70, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', 'sfo_code', 'sfo_description', '300', '', 'nunonsystemform', '', '', 'zzzzsys_form', '', '', '', '', '', '', 0, '', '', '', '', ''),
('57466fa32c18b02', 'nuhome', '', 'run', 'run_user', 'Users', '569dc4ed270f08a', 60, 146, 276, 150, 30, '1', 'left', '1', '0', '', '', '', 'nuuser', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('5746703645523e8', 'nuuser', 'zzzzsys_user', 'input', 'sus_name', 'Name', '57466ebd5c0fff2', 10, 11, 150, 300, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('57467053c6159d8', 'nuuser', 'zzzzsys_user', 'input', 'sus_email', 'Email', '57466ebd5c0fff2', 20, 42, 150, 300, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('57467094ba580d8', 'nuuser', 'zzzzsys_user', 'input', 'sus_login_name', 'Login Name', '57466ebd5c0fff2', 50, 124, 150, 200, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('574670b1f0ebdd9', 'nuuser', 'zzzzsys_user', 'input', 'new_password', 'Enter New Password', '57466ebd5c0fff2', 60, 154, 150, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'password', '', '', ''),
('574670f777ae0d6', 'nuuser', 'zzzzsys_user', 'input', 'check_password', 'Reenter New Password', '57466ebd5c0fff2', 70, 184, 150, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'password', '', '', ''),
('574671cdcc77367', 'nuuser', 'zzzzsys_user', 'lookup', 'sus_zzzzsys_access_level_id', 'Access Level', '57466ebd5c0fff2', 40, 94, 150, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'sal_code', 'sal_description', '200', '', 'nuaccess', '', '', 'zzzzsys_access_level', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('574b8f87a400809', 'nuphp', 'zzzzsys_php', 'input', 'sph_code', 'Code', '574b8ee0b2a4cdf', 10, 19, 141, 136, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14993893264795', 'nusetup', 'zzzzsys_setup', 'word', 'wrdauth', 'Auth SMTP Information', '57a29441f16eb9f', 50, 42, 172, 200, 18, '1', 'center', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('574b9008ac10e16', 'nuphp', 'zzzzsys_php', 'textarea', 'sph_php', 'PHP', '5811788510768ef', 70, 25, 66, 684, 353, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('574b91aec1e5c94', 'nuhome', '', 'run', 'edit_php', 'Procedure', '581288bcd699493', 130, 92, 84, 150, 30, '1', 'left', '1', '0', '', '', '', 'nuphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('574b97322568df5', 'nuhome', '', 'run', 'edit_report', 'Report', '581288bcd699493', 150, 148, 84, 150, 30, '1', 'left', '1', '0', '', '', '', 'nubuildreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14990177245130', 'nuphp', 'zzzzsys_php', 'input', 'sph_description', 'Description', '574b8ee0b2a4cdf', 20, 50, 141, 318, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('5754c06bd926f66', 'nubuildreport', 'zzzzsys_report', 'lookup', 'sre_zzzzsys_form_id', 'Launch From', '574b964941d3d1a', 50, 148, 236, 100, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 's14937641259181', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', '', '', '', ''),
('57579cb29a87ac1', 'nubuildreport', 'zzzzsys_report', 'input', 'sre_code', 'Code', '574b964941d3d1a', 10, 16, 236, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('57579cd24784461', 'nubuildreport', 'zzzzsys_report', 'input', 'sre_description', 'Description', '574b964941d3d1a', 20, 49, 236, 300, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('575a2bb92683acf', 'nuusergroup', 'zzzzsys_user_group', 'subform', 'levels', 'Access Levels', '574665a15bc3218', 40, 174, 107, 465, 200, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessgroup', 'gal_zzzzsys_user_group_id', '1', '1', 'g', '', 0, '', '', '', '', ''),
('575a2cf681d6427', 'nuaccessgroup', 'zzzzsys_user_group_access_level', 'lookup', 'gal_zzzzsys_access_level_id', 'Access To..', '575a273aadf6c37', 40, 40, 107, 70, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', 'sal_code', 'sal_description', '300', '', 'nuaccess', '', '', 'zzzzsys_access_level', '', '', '', '', '', '', 0, '', '', '', '', ''),
('575a3c0497ca756', 'nudebug', 'zzzzsys_debug', 'textarea', 'deb_message', ' ', '575a31edccc2012', 10, 16, 30, 786, 432, '0', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14942614392459', 'nuphp', 'zzzzsys_php', 'select', 'sph_run', 'Run', '574b8ee0b2a4cdf', 60, 143, 141, 136, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'hide|Hidden|\nwindow|In a new window', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('575f5fe89bf014b', 'nuaccessreport', 'zzzzsys_access_level_php', 'lookup', 'slp_zzzzsys_php_id', 'Procedure', '575f55e6e740d5a', 0, 20, 100, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', '', 'sph_code', 'sph_description', '200', '', 'nuphp', '', '', 'zzzzsys_php', '', '', '1', '', '', '', 0, '', '', '', '', ''),
('575f592d57ff088', 'nuaccess', 'zzzzsys_access_level', 'subform', 'accphp', ' ', '575f5474793747e', 60, 20, 50, 395, 290, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccessreport', 'slp_zzzzsys_access_level_id', '1', '1', 'g', '', 0, '', '', '', '', ''),
('57624c4714b0ce2', 'nuaccess', 'zzzzsys_access_level', 'subform', 'accreport', ' ', '575f54747937ff5', 70, 20, 50, 395, 282, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuaccesslevelreport', 'sre_zzzzsys_access_level_id', '1', '1', 'g', '', 0, '', '', '', '', ''),
('57637d4688096ef', 'nuaccesslevelreport', 'zzzzsys_access_level_report', 'lookup', 'sre_zzzzsys_report_id', 'Report', '57637ad7b563282', 30, 47, 163, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'sre_code', 'sre_description', '200', '0', 'nubuildreport', '', '', 'zzzzsys_report', '', '', '', '', '', '', 0, '', '', '', '', ''),
('577b254578f0498', 'nubuildreport', 'zzzzsys_report', 'input', 'sre_group', 'Group', '574b964941d3d1a', 30, 82, 236, 150, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('577b4314f347f60', 'nuhome', '', 'run', 'run_report', 'Run Report', '569dc4ed270f08a', 20, 90, 84, 150, 30, '1', 'left', '1', '0', '', '', '', 'nurunreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', 'nurunreport', '', '0', '0', '', '', 0, '', '', '', '', ''),
('577b49b3eb0c80f', 'nuhome', '', 'run', 'run_php', 'Run Procedure', '569dc4ed270f08a', 10, 35, 84, 150, 30, '1', 'left', '1', '0', '', '', '', 'nurunphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('577b4dd43e0a9eb', '577b4d78ef9a2a0', '', 'input', 'steven', 'test', '577b4d78ef9c1d6', 1, 100, 100, 100, 20, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('577b4eb7ad0f7f5', '577b4d78ef9a2a0', '', 'input', 'com_address', 'Address', '577b4d78ef9c1d6', 110, 12, 74, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('577c7a54b78326c', 'nulaunchdates', '', 'input', 'from_date', 'Between', '577c5efa0d6275e', 10, 72, 115, 90, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'D|mmmm', 'nuDate', '', '', ''),
('577c7a71c405f7c', 'nulaunchdates', '', 'input', 'to_date', 'And', '577c5efa0d6275e', 20, 72, 243, 90, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuNumber', '', '', ''),
('578341d99ca3725', 'nubuildreport', 'zzzzsys_report', 'lookup', 'sre_zzzzsys_php_id', 'Table', '574b964941d3d1a', 40, 115, 236, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'code', 'description', '200', '', 's14993014809858', '', '', 'zzzzsys_report_data', 'nuform', '', '1', '', '', '', 0, '', '', '', '', ''),
('579039aaf34f7c5', 'nuphp', 'zzzzsys_php', 'input', 'sph_group', 'Group', '574b8ee0b2a4cdf', 30, 81, 141, 318, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('57a29781085834c', 'nuhome', '', 'run', 'run_setup', 'Setup', '569dc4ed270f08a', 40, 35, 276, 150, 30, '1', 'left', '1', '0', '', '', '', 'nusetup', '', 'b', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('57a298576dc5d7f', 'nusetup', 'zzzzsys_setup', 'input', 'set_time_out_minutes', 'Timeout (minutes)', '57a29441f16e2e2', 10, 58, 163, 50, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('57a29bffb8a5938', 'nusetup', 'zzzzsys_setup', 'lookup', 'set_zzzzsys_timezone_id', 'Time Zone', '57a29441f16e2e2', 20, 91, 163, 300, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', 0, '', '', '', '', ''),
('57a29f631fdd125', 'nuuser', 'zzzzsys_user', 'select', 'sus_language', 'Language', '57466ebd5c0fff2', 30, 68, 151, 150, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', 0, '', '', '', '', ''),
('57a2ade3a4625e3', 'nusetup', 'zzzzsys_setup', 'textarea', 'set_fonts', 'Report Fonts', '57a29441f16e2e2', 40, 157, 163, 300, 100, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', 0, '', '', '', '', ''),
('57a2af5b466f884', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_username', 'User Name', '57a29441f16eb9f', 60, 64, 172, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('57a2afbe5b8d810', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_password', 'Password', '57a29441f16eb9f', 70, 94, 172, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('57a2affc246c61e', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_host', 'Host', '57a29441f16eb9f', 80, 124, 172, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('57a2b0490518152', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_from_address', 'Address', '57a29441f16eb9f', 90, 154, 172, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('57a2b092a3fb465', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_from_name', 'From Name', '57a29441f16eb9f', 100, 184, 172, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('57a2b0d9e0c353d', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_port', 'Port', '57a29441f16eb9f', 110, 214, 172, 70, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('57a2b1b4bb27602', 'nusetup', 'zzzzsys_setup', 'select', 'set_smtp_use_ssl', 'Use SSL', '57a29441f16eb9f', 120, 244, 172, 70, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('57a2da33d52fac6', 'nusetup', 'zzzzsys_setup', 'textarea', 'set_header', 'Header', '57a29441f16f59d', 130, 29, 75, 496, 172, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', 0, '', '', '', '', ''),
('57a7c213dc62789', 'nuhome', '', 'run', 'run_lang', 'Translation', '581288bcd699493', 140, 148, 277, 150, 30, '1', 'left', '1', '0', '', '', '', 'nutranslate', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('57a7d639f21d3a8', 'nutranslate', 'zzzzsys_translate', 'input', 'trl_language', 'Language', '57a7c1cb78c31d5', 10, 39, 92, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('57a7d77ccd5d248', 'nutranslate', 'zzzzsys_translate', 'input', 'trl_english', 'English', '57a7c1cb78c31d5', 20, 70, 92, 400, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('57a7d7a35f01f40', 'nutranslate', 'zzzzsys_translate', 'input', 'trl_translation', 'Translation', '57a7c1cb78c31d5', 30, 101, 92, 400, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', '');
INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_table`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_access`, `sob_all_default_value_sql`, `sob_calc_formula`, `sob_calc_format`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_lookup_table`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_subform_table`, `sob_input_count`, `sob_input_format`, `sob_input_type`, `sob_input_javascript`, `sob_html_code`, `sob_image_zzzzsys_file_id`) VALUES
('57a93d17300512b', 'nupassword', 'zzzzsys_user', 'input', 'new_password_check', 'Re-Enter New Password', '57abe72610d666d', 40, 133, 181, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'password', '', '', ''),
('57abea0d8fc5446', 'nupassword', 'zzzzsys_user', 'input', 'new_password', 'Enter New Password', '57abe72610d666d', 30, 104, 181, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'password', '', '', ''),
('57e8595cdef6edc', 'nupassword', 'zzzzsys_user', 'input', 'old_password', 'Enter Current Password', '57abe72610d666d', 20, 75, 181, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', 'SELECT CONCAT(\'( \', sus_login_name, \' )\')\nFROM zzzzsys_user\nWHERE zzzzsys_user_id = \'#RECORD_ID#\'', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'password', '', '', ''),
('57eb03abed05e20', 'nuphplibrary', 'zzzzsys_php_library', 'lookup', 'spl_library_zzzzsys_php_id', 'Include', '57eaf962bd0a957', 60, 556, 152, 100, 18, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sph_code', 'sph_description', '220', '', 'nuphp', '', '', 'zzzzsys_php', '', '', '', '', '', '', 0, '', '', '', '', ''),
('5811808723db54b', 'nuobject', 'zzzzsys_object', 'input', 'ab_event', 'After Browse', '570d90df6a2c12a', 300, 113, 165, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('57edbb1638832c4', '57edbac65e1c52a', 'company', 'textarea', 'com_name', 'Name', '57edbac65e1d42e', 10, 31, 34, 100, 20, '1', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('57fadb3206fceda', 'nuerror', 'zzzzsys_form', 'input', 'error', '', '57fad2784b27d77', 10, 10, 10, 800, 200, '0', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('5811633909eeadd', 'nuform', 'zzzzsys_form', 'input', 'be_event', 'Before Edit', '58c19d9bc559aca', 140, 68, 121, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('58116941a1a1f06', 'nuform', 'zzzzsys_form', 'input', 'bs_event', 'Before Save', '58c19d9bc559aca', 150, 24, 324, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('58116968afd5b6a', 'nuform', 'zzzzsys_form', 'input', 'as_event', 'After Save', '58c19d9bc559aca', 160, 68, 324, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('581169ba2112f38', 'nuform', 'zzzzsys_form', 'input', 'bd_event', 'Before Delete', '58c19d9bc559aca', 170, 24, 527, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('581169d91b9d203', 'nuform', 'zzzzsys_form', 'input', 'ad_event', 'After Delete', '58c19d9bc559aca', 180, 68, 527, 150, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('581a4d665798263', 'nuform', 'zzzzsys_form', 'input', 'previewedit', 'Preview Edit Form', '58c19d9bc559aca', 220, 217, 503, 174, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('5833648c6db79f7', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_table', 'Code', '570d90df6a2c12a', 270, 3, 3, 50, 18, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('583387f044052c5', 'nuhome', '', 'input', 'fb_button', 'Fast Form', '581288bcd699493', 100, 35, 84, 150, 30, '1', 'center', '0', '0', '', '', '', 'nufflaunch', '', 'b', '-1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('583f37bc5bba917', 'nuffobjects', 'zzzzsys_object', 'input', 'ff_field', 'Field Name', '5840d1f62187912', 20, 20, 30, 192, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.tableSchema[$(\"#fastform_table\").val()]?nuFORM.tableSchema[$(\"#fastform_table\").val()].names:[]', '', ''),
('583f37d3224bcc8', 'nuffobjects', 'zzzzsys_object', 'input', 'ff_label', ' Label', '5840d1f62187912', 10, 49, 24, 190, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('583f4ed643fcc3b', 'nufflaunch', 'zzzzsys_form', 'subform', 'obj_sf', ' ', '583361606251aef', 80, 105, 447, 500, 322, '1', 'right', '0', '0', '', '', '', 'nuffcustomobjects', '', 'i', '', '', '', '', '', '', '', '', '', '', '', 'zzzzsys_object', 'nuffobjects', 'zzzzsys_debug_id', '1', '1', 'g', '', 0, '', '', '', '', ''),
('s14987422212200', '58bf0b972c2a447', 'test_table', 'image', 'ww', 'Text 2', '58bf0b972c2c7a3', 60, 114, 255, 200, 200, '1', 'left', '0', '0', '', 's14924792013621', '', '5678ab2c48c5c41', '', 'i', '', '', '', '', 'sal_code', 'sal_description', '222', '', 'nuaccess', '', '', 'zzzzsys_access_level', '', '', '', '', '', '', 0, '', 'color', '', '', ''),
('585e5705f3e9867', 'nuobject', 'zzzzsys_object', 'html', 'nucalculator', ' ', '5851cf915a1c653', 450, 130, 306, 275, 99, '1', 'right', '0', '1', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '<table>\n  <tr>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>1</td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>2</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>3</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\' title=\'Add a Space\'> </td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> + </td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> - </td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> * </td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> / </td>\n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>4</td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>5</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>6</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>.</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> ? </td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> : </td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> = </td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> ! </td> \n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>7</td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>8</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>9</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>0</td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> ( </td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> ) </td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\' colspan=2>Clear</td>\n  </tr>\n</table>\n', ''),
('5851cfeb30f9047', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_calc_formula', 'Formula', '5851cf915a1c653', 470, 43, 80, 500, 52, '1', 'left', '0', '1', '', ' +', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('58a0940e9dc6916', '58a08a91c9b59a9', 'invoice_item', 'input', 'ite_description', 'Item', '58a08a91c9b6df4', 20, 20, 54, 170, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('589f7673993720e', '5678ab2c48c5c41', 'employee', 'calc', 'thecalc', 'calc', '5678ab2c49bd810', 20, 15, 810, 100, 18, '1', 'right', '2', '0', '', 'nuTotal(\'emp_cost\') + .6', '', 'nuuser', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('589f9c7972d1c5e', '5678ab2c48c5c41', 'employee', 'input', 'emp_cost', 'Wage', '5678ab2c49bd810', 30, 15, 257, 70, 17, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('58a09180222faae', '58a08a1abc4782c', 'invoice', 'subform', 'invoice_item', 'Items', '58a08a1abc48c9a', 20, 141, 93, 440, 219, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '58a08a91c9b59a9', 'ite_invoice_id', '1', '1', 'g', '', 0, '', '', '', '', ''),
('58a09448e54ff6f', '58a08a91c9b59a9', 'invoice_item', 'input', 'ite_units', 'Units', '58a08a91c9b6df4', 10, 21, 177, 70, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|€ 1,000.00', 'nuNumber', '', '', ''),
('58a0949b9e9922a', '58a08a91c9b59a9', 'invoice_item', 'input', 'ite_unit_price', 'Unit Cost', '58a08a91c9b6df4', 30, 21, 290, 70, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuNumber', '', '', ''),
('58a094d695573f2', '58a08a91c9b59a9', 'invoice_item', 'calc', 'ite_total', 'Total', '58a08a91c9b6df4', 40, 22, 390, 76, 18, '1', 'right', '0', '0', '', 'nuTotal(\'ite_units\') * nuTotal(\'ite_unit_price\')', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('58a0c22bc011b1c', '58a08a1abc4782c', 'invoice', 'calc', 'inv_total', 'Grand Total', '58a08a1abc48c9a', 30, 377, 455, 76, 25, '1', 'right', '0', '0', '', 'nuTotal(\'invoice_item.ite_total\')', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('58a0c3d66b2daa7', '58a08a1abc4782c', 'invoice', 'input', 'inv_number', 'Invoice Number', '58a08a1abc48c9a', 60, 102, 93, 50, 25, '0', 'right', '0', '0', '', 'nuTotal(\'invoice_item.ite_total\')', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 125, '', 'nuAutoNumber', '', '', ''),
('58a680c21664405', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_table', 'Table', '570d90df5ce8e1a', 10, 20, 0, 72, 18, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('58afef1eacbcf15', 'nuhome', '', 'run', 'run_format', 'Format', '581288bcd699493', 160, 35, 277, 150, 30, '1', 'left', '1', '0', '', '', '', 'nuformat', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('58aff2b35cd9963', 'nuformat', 'zzzzsys_format', 'select', 'srm_type', 'Input Type', '58af6b019f658f4', 10, 18, 86, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'Number|nuNumber|\nDate|nuDate', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('58b051c8e440efe', 'nuformat', 'zzzzsys_form', 'input', 'srm_format', 'Format', '58af6b019f658f4', 40, 55, 86, 498, 35, '0', 'left', '1', '1', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('58b20351d1543ef', 'nuobject', 'zzzzsys_object', 'input', 'sob_input_javascript', 'Javascript Array', '570d90df707867b', 420, 96, 175, 347, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('58b34691918e917', 'nuformat', 'zzzzsys_form', 'word', 'format_title', 'Formats', '58af6b019f658f4', 50, 99, 86, 347, 18, '0', 'left', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', '[\'$\', \'£\', \'€\']', '', ''),
('58b4125a0428dcc', '58a08a1abc4782c', 'invoice', 'input', 'inv_date', 'Date', '58a08a1abc48c9a', 70, 102, 436, 100, 25, '1', 'right', '0', '0', '', 'nuTotal(\'invoice_item.ite_total\')', 'N|€ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'D|dd-mmm-yyyy', 'nuDate', '', '', ''),
('58b418c77ac1ea8', 'nuobject', 'zzzzsys_object', 'select', 'sob_calc_format', 'Format', '5851cf915a1c653', 440, 11, 80, 143, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), \'|\', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = \'Number\'', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('58b5314594a350e', 'nuformat', 'zzzzsys_format', 'html', 'nucalculator', ' ', '58af6b019f658f4', 60, 118, 86, 499, 196, '1', 'left', '0', '1', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '\n<table id=\'tof\' class=\'nuEditBody\' style=\'width:500px\'>\n  <tr>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton number\' style=\'font-size:18px\' width=\'100%\'>1000.</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton number\' style=\'font-size:18px\' width=\'100%\'>1000,</td> \n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton number\' style=\'font-size:18px\' width=\'100%\'>1,000.</td> \n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton number\' style=\'font-size:18px\' width=\'100%\'>1.000,</td> \n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>yy</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>yyyy</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>pp</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>dd</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>ddd</td> \n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>dddd</td> \n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>mm</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>mmm</td> \n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>mmmm</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>hh</td> \n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>nn</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>ss</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>-</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>:</td> \n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>/</td> \n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>.</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>Space</td> \n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>,</td> \n  </tr>\n</table>\n', ''),
('58b74e4cc4e2647', 'nuformat', 'zzzzsys_format', 'input', 'currencysign', ' ', '58af6b019f658f4', 20, 120, 63, 20, 30, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', '[\'$\', \'£\', \'€\', \'¢\']', '', ''),
('58b94e64eb76057', 'nuformat', 'zzzzsys_format', 'input', 'currencydecimals', ' ', '58af6b019f658f4', 30, 120, 590, 20, 30, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', '[0,1,2,3,4]', '', ''),
('58b7528ca48f0ad', 'nuform', 'zzzzsys_form', 'input', 'previewbrowse', 'Preview Browse Form', '58c19d9bc559aca', 210, 217, 121, 174, 25, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('58bf0cab3baa7f2', '58bf0b972c2a447', 'test_table', 'input', 'number1', 'Number 1', '58bf0b972c2c7a3', 10, 26, 119, 90, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuNumber', '', '', ''),
('58bf0ccc8df2fbb', '58bf0b972c2a447', 'test_table', 'input', 'number2', 'Number 2', '58bf0b972c2c7a3', 20, 61, 116, 90, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|£ 1000.0', 'nuNumber', '', '', ''),
('58bf0cfea445803', '58bf0b972c2a447', 'test_table', 'input', 'date1', 'Date 1', '58bf0b972c2c7a3', 30, 100, 116, 90, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'D|mmmm', 'nuDate', '', '', ''),
('58bf0d1a7b6e7f6', '58bf0b972c2a447', 'test_table', 'input', 'date2', 'Date 2', '58bf0b972c2c7a3', 40, 150, 116, 90, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'D|yy', 'nuDate', '', '', ''),
('58c8dcc973b90f2', 'nufunction', 'zzzzsys_function', 'select', 'sfu_language', 'Language', '58c86689b9b0291', 10, 30, 95, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('58c8dfd2afa2e8e', 'nufunction', 'zzzzsys_function', 'input', 'sfu_name', 'Name', '58c86689b9b0291', 20, 59, 95, 250, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15007698416197', 's15007698416193', 'children', 'input', 'chi_name', 'text00', 's15007698416194', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('58c8e3ca4aca5e9', 'nufunction', 'zzzzsys_function', 'input', 'sfu_syntax', 'Syntax', '58c86689b9b0291', 30, 89, 95, 250, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('58c8e41f4e14bda', 'nufunction', 'zzzzsys_function', 'textarea', 'sfu_description', 'Description', '58c86689b9b0291', 40, 119, 95, 353, 125, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('58c8e4462798dbf', 'nufunction', 'zzzzsys_function', 'textarea', 'sfu_sample', 'Sample', '58c86689b9b0291', 50, 30, 546, 452, 275, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('58c8e4861081b1d', 'nufunction', 'zzzzsys_function', 'textarea', 'sfu_see', 'See', '58c86689b9b0291', 60, 260, 95, 353, 46, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'php|PHP|js|Javascript\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('58c9038dd96de4d', '58bf0b972c2a447', 'test_table', 'lookup', 'text2', 'Text 2', '58bf0b972c2c7a3', 60, 76, 255, 99, 20, '1', 'left', '0', '0', '', '', '', '5678ab2c48c5c41', '', 'i', '', '', '', '', 'sal_code', 'sal_description', '222', '', 'nuaccess', '', '', 'zzzzsys_access_level', '', '', '', '', '', '', 0, 'D|dd-mmm-yyyy', 'color', '', '', ''),
('58c903f75898ae1', '58bf0b972c2a447', 'test_table', 'input', 'text1', 'Text 1', '58bf0b972c2c7a3', 50, 33, 257, 142, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'D|dd-mmm-yyyy', 'range', '', '', ''),
('58c9c520001fff6', 'nuobject', 'zzzzsys_object', 'select', 'add_total', ' ', '5851cf915a1c653', 460, 130, 80, 212, 95, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '1', 'SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = \'nuNumber\'\nOR sob_input_type = \'number\'\nOR sob_all_type = \'calc\'\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, \'.\', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = \'subform\'\nAND (\n        inp.sob_input_type = \'nuNumber\' OR \n        inp.sob_input_type = \'number\' OR \n        inp.sob_all_type = \'calc\'\n    )', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('58d48507231397f', 'nuobject', 'zzzzsys_object', 'input', 'sob_subform_table', 'Code', '570d90df6d35fde', 320, 3, 3, 50, 18, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('58d6f5a644bae0c', 'nufflaunch', 'zzzzsys_form', 'word', 'ffwrd', 'New Fast Form', '583361606251aef', 70, 10, 447, 490, 20, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('58d6fbc151d152f', 'nufflaunch', 'zzzzsys_form', 'input', 'fastform_table', 'Table Name', '583361606251aef', 20, 83, 767, 180, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.getTables()', '', ''),
('s14984718898304', 's14984718898299', 'children', 'input', 'field00', 'text00', 's14984718898301', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('58d76b89aeafcea', 'nuffobjects', 'zzzzsys_object', 'input', 'ff_id', ' ', '5840d1f62187912', 20, 20, 30, 5, 18, '1', 'left', '1', '2', '', '', '', '', '', '', '', '', '', '', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('58dfe52a97e456546', '58dfe3f2977a13739', '', 'run', 'runfastforms', ' ', '58dfe3f2977a13740', 10, 18, 22, 1058, 414, '1', 'left', '1', '0', '', '', '', 'nufflaunch', '', 'i', '-1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14913715626400', 'c14913710309970799', 'aaa', 'input', 'com_name', 'Company Name', 's14913715626399', 10, 24, 134, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('p14911014204989', 'nufflaunch', 'zzzzsys_form', 'input', 'new_id', 'New ID', '583361606251aef', 40, 12, 1, 10, 18, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14916381945217', 'nusample', '', 'html', 'htmlsample', 'HTML', 's14914269237459', 40, 173, 439, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', '', '', '<div id=\'adiv\' style=\'text-align:center;width:117px;border:1px solid red;\' class=\'nuBreadcrumb\'>\n    Hello World\n</div>', ''),
('s14913715626401', 'c14913710309970799', 'aaa', 'input', 'com_suburb', 'Suburb', 's14913715626399', 20, 65, 134, 90, 18, '1', 'left', '0', '0', '', 'nuTotal(\'com_phone\') + nuTotal(\'employee_sf.thecalc\')', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'D|mmmm', 'nuDate', '', '', ''),
('s14913715626402', 'c14913710309970799', 'aaa', 'calc', 'com_phone', 'Calc this', 's14913715626399', 30, 106, 134, 111, 18, '1', 'right', '0', '0', '', 'nuTotal(\'employee_sf.emp_name\') + nuTotal(\'employee_sf.emp_cost\')', '$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('s14913715626403', 'c14913710309970799', 'aaa', 'select', 'com_color_id', 'Color', 's14913715626399', 40, 188, 134, 100, 159, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '1', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14913715626404', 'c14913710309970799', 'aaa', 'lookup', 'com_business_id', 'Business Type', 's14913715626399', 50, 147, 134, 60, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '200', '0', '568b508eec00d80', '', '57f6e1f954955c1', 'business', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14914303620619', 'nusample', '', 'input', 'inputtextsample', 'Input:text', 's14914269237459', 10, 164, 143, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14914526491252', 'nusample', '', 'display', 'displaysample', 'Display', 's14914269237459', 50, 123, 439, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', '', '', '', ''),
('s14914327972347', 'nusample', '', 'select', 'selectsample', 'Select', 's14914269237459', 190, 198, 439, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14914335851075', 'nusample', '', 'word', 'bottomcorner', ' ', 's14914269237459', 210, 427, 592, 20, 18, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14914336875490', 'nusample', '', 'select', 'selectmultiselectsample', 'Select:multiselect', 's14914269237459', 200, 223, 439, 117, 35, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '1', 'SELECT zzzzsys_format_id, srm_format FROM zzzzsys_format ORDER BY srm_type', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14914578274232', 'nusample', '', 'lookup', 'lookupsample', 'Lookup', 's14914269237459', 120, 148, 439, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', 'trl_english', 'trl_translation', '50', '', 'nutranslate', '', '', 'zzzzsys_translate', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuScroll', '[\'North\',\'South\',\'East\',\'West\']', '', ''),
('s14914340020683', 'nusample', '', 'word', 'wordsample', 'Word', 's14914269237459', 170, 73, 439, 117, 18, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14914341685330', 'nusample', '', 'input', 'inputbuttonsample', 'Input:Button', 's14914269237459', 160, 75, 143, 117, 23, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'button', '', '', ''),
('s14914528824915', 'nusample', '', 'input', 'inputnumbersample', 'Input:number', 's14914269237459', 60, 276, 143, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'number', '', '', ''),
('s14914352852924', 'nusample', '', 'input', 'inputnudatesample', 'Input:nuDate', 's14914269237459', 20, 220, 143, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'D|dd-mmm-yyyy', 'nuDate', '', '', ''),
('s14914354036202', 'nusample', '', 'input', 'inputnunumbersample', 'Input:nuNumber', 's14914269237459', 30, 248, 143, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuNumber', '', '', ''),
('s14914355306499', 'nusample', '', 'calc', 'calcsample', 'Calc', 's14914269237459', 150, 98, 439, 117, 18, '1', 'right', '0', '0', '', 'nuTotal(\'inputnunumbersample\') + nuTotal(\'inputnumbersample\')', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuNumber', '', '', ''),
('s14914523628525', 'nusample', '', 'input', 'inputcheckboxsample', 'Input:checkbox', 's14914269237459', 100, 108, 143, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'checkbox', '', '', ''),
('s14914530378982', 'nusample', '', 'input', 'inputnuscrollsample', 'Input:nuScroll', 's14914269237459', 110, 192, 143, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuScroll', '[\'North\',\'South\',\'East\',\'West\']', '', ''),
('s14914551689268', 'nusample', '', 'textarea', 'textareasample', 'Textarea', 's14914269237459', 130, 267, 439, 117, 42, '1', 'left', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuScroll', '[\'North\',\'South\',\'East\',\'West\']', '', ''),
('s14914567428836', 'nusample', '', 'word', 'labelword', 'Word', 's14914269237459', 180, 73, 392, 40, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14914623658994', 'nufflaunch', '', 'html', 'nucalculator', ' ', '583361606251aef', 50, 105, 22, 388, 322, '1', 'left', '0', '1', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '\n<table id=\'tof\' style=\'width:390px\'>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914303620619\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>Input:text</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914340020683\' class=\'nuCalculatorButton nu_word\' style=\'font-size:18px\' width=\'100%\'>Word</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914341685330\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>Input:button</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914355306499\' class=\'nuCalculatorButton nu_calc\' style=\'font-size:18px\' width=\'100%\'>Calc</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914523628525\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>Input:checkbox</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914526491252\' class=\'nuCalculatorButton nu_display\' style=\'font-size:18px\' width=\'100%\'>Display</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14916371086982\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>Input:nuAutoNumber</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914578274232\' class=\'nuCalculatorButton nu_lookup\' style=\'font-size:18px\' width=\'100%\'>Lookup</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914530378982\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>Input:nuScroll</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14916381945217\' class=\'nuCalculatorButton nu_html\' style=\'font-size:18px\' width=\'100%\'>HTML</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914352852924\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>Input:nuDate</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914327972347\' class=\'nuCalculatorButton nu_select\' style=\'font-size:18px\' width=\'100%\'>Select</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914354036202\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>Input:nuNumber</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914336875490\' class=\'nuCalculatorButton nu_select\' style=\'font-size:18px\' width=\'100%\'>Select:multiselect</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914528824915\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>Input:number</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14914551689268\' class=\'nuCalculatorButton nu_textarea\' style=\'font-size:18px\' width=\'100%\'>Textarea</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14922081127789\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>Input:file</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s14922081777924\' class=\'nuCalculatorButton nu_image\' style=\'font-size:18px\' width=\'100%\'>Image</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'s15022048685163\' class=\'nuCalculatorButton nu_subform\' style=\'font-size:18px\' width=\'100%\' colspan=\"2\">Subform</td>\n  </tr>\n</table>\n', ''),
('s14914638502434', 'nufflaunch', '', 'input', 'run_sam', '?', '583361606251aef', 60, 81, 211, 21, 21, '1', 'center', '1', '0', '', '', '', '', '', 'b', '-1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('s14916371086982', 'nusample', '', 'input', 'inputnuautonumbersample', 'Input:nuAutoNumber', 's14914269237459', 70, 136, 143, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 89, 'N|$ 1,000.00', 'nuAutoNumber', '', '', ''),
('s14916064971283', 'nuobject', 'zzzzsys_object', 'input', 'sob_input_count', 'Next Number', '570d90df707867b', 400, 96, 175, 50, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), \'|\', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type\n', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('s14923060516427', 'c14923059349869588', 'aacontact', 'input', 'con_name', 'Name', 's14923060516423', 10, 66, 174, 199, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14923060516428', 'c14923059349869588', 'aacontact', 'input', 'con_photo', 'Photo', 's14923060516423', 20, 115, 174, 199, 42, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 89, 'N|$ 1,000.00', 'file', '', '', ''),
('s14921215769337', 'c14921215399675048', 'zzzzsys_files', 'input', 'field00', 'text00', 's14921215769331', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14921215769338', 'c14921215399675048', 'zzzzsys_files', 'input', 'field01', 'text01', 's14921215769331', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14921215769339', 'c14921215399675048', 'zzzzsys_files', 'input', 'field02', 'text02', 's14921215769331', 210, 210, 210, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14921215769340', 'c14921215399675048', 'zzzzsys_files', 'textarea', 'field03', 'Textarea03', 's14921215769331', 240, 240, 240, 117, 42, '1', 'left', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuScroll', '[\'North\',\'South\',\'East\',\'West\']', '', ''),
('s14921256656734', 'nuhome', '', 'run', 'run_file', 'Files', '569dc4ed270f08a', 90, 146, 468, 150, 30, '1', 'left', '1', '0', '', '', '', 'nufile', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14921258228889', 'nufile', 'zzzzsys_file', 'input', 'sfi_code', 'Code', 's14921253336084', 10, 78, 153, 100, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14921258732569', 'nufile', 'zzzzsys_file', 'input', 'sfi_description', 'Description', 's14921253336084', 40, 110, 153, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14921259487622', 'nufile', 'zzzzsys_file', 'input', 'sfi_json_file', 'Upload File ', 's14921253336084', 60, 14, 153, 322, 50, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'file', '', '', ''),
('s14921286992164', 'nufile', 'zzzzsys_file', 'html', 'view_image', 'View', 's14921253336084', 30, 174, 153, 321, 267, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '<img \nid=\"theview\" \nwidth=\"300\" \nheight=\"300\" \nstyle=\"border:grey 1px solid;\"\n>', ''),
('s14921357968651', 'nufile', 'zzzzsys_file', 'input', 'sfi_group', 'Group', 's14921253336084', 50, 142, 153, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14921424461996', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_image_zzzzsys_file_id', 'Image', 's14921413660226', 380, 20, 200, 100, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfi_code', 'sfi_description', '200', '', 'nufile', '', '', 'zzzzsys_file', 'nuform', '', '1', '', '', '', 0, '', '', '', '', ''),
('s14922081127789', 'nusample', '', 'input', 'inputfilesample', 'Input:file', 's14914269237459', 80, 304, 143, 117, 50, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 89, 'N|$ 1,000.00', 'file', '', '', ''),
('s14922081777924', 'nusample', '', 'image', 'imagesample', 'Image', 's14914269237459', 140, 321, 439, 117, 42, '1', 'left', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuScroll', '[\'North\',\'South\',\'East\',\'West\']', '', 's14924792013621'),
('s14923103035329', 'c14923102442293588', 'aaacontact', 'input', 'field00', 'text00', 's14923103035324', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14923103035330', 'c14923102442293588', 'aaacontact', 'input', 'field01', 'file01', 's14923103035324', 180, 180, 180, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 89, 'N|$ 1,000.00', 'file', '', '', ''),
('s14923103035331', 'c14923102442293588', 'aaacontact', 'image', 'field02', 'Image02', 's14923103035324', 210, 210, 210, 117, 42, '1', 'left', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuScroll', '[\'North\',\'South\',\'East\',\'West\']', '', 's14921322478039'),
('s14925569901990', 'c14925569391692890', 'aaabbb', 'input', 'field00', 'text00', 's14925569901983', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14925569901991', 'c14925569391692890', 'aaabbb', 'input', 'field01', 'button01', 's14925569901983', 180, 180, 180, 117, 23, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'button', '', '', ''),
('s14925569901992', 'c14925569391692890', 'aaabbb', 'input', 'field02', 'checkbox02', 's14925569901983', 210, 210, 210, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'checkbox', '', '', ''),
('s14925569901993', 'c14925569391692890', 'aaabbb', 'input', 'field03', 'file03', 's14925569901983', 240, 240, 240, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 89, 'N|$ 1,000.00', 'file', '', '', ''),
('s14925569901994', 'c14925569391692890', 'aaabbb', 'input', 'field04', 'number04', 's14925569901983', 270, 270, 270, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'number', '', '', ''),
('s14933340318601', 'nuphp', 'zzzzsys_php', 'input', 'sph_system', 'Group', '574b8ee0b2a4cdf', 40, 1, 1, 100, 18, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14944263918457', 'nudebug', 'zzzzsys_debug', 'input', 'deb_added', ' ', '575a31edccc2012', 10, 1, 1, 100, 20, '0', 'left', '0', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14951257374402', 'nuselect', 'zzzzsys_select', 'input', 'sse_description', 'Description', 's14930617882374', 10, 14, 88, 200, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14951259521112', 'nuhome', '', 'run', 'run_sb', 'SQL', '581288bcd699493', 120, 92, 277, 150, 30, '1', 'right', '1', '0', '', '', '', 'nuselect', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14951260604813', 'nuselect', 'zzzzsys_select', 'html', 'nusvg', 'Fields<br>and<br>Relationships', 's14930617882374', 40, 48, 89, 700, 200, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '<iframe id=\'sqlframe\' src=\'nuselect.php\' style=\'height:200px;width:700px\'>\n</iframe>', ''),
('s14952406757366', 'nuselect', 'zzzzsys_select', 'input', 'sse_resize', 'Resize', 's14930617882374', 30, 16, 689, 100, 16, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'range', '', '', ''),
('s14953594921438', 'nuselect', 'zzzzsys_select', 'select', 'addtable', 'Add Table', 's14930617882374', 20, 16, 405, 200, 16, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT table_name as a, table_name as b FROM INFORMATION_SCHEMA.TABLES WHERE table_schema = DATABASE()', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'range', '', '', ''),
('s14960743863373', 'nuclause', 'zzzzsys_select_clause', 'input', 'ssc_order', 'Order', 's14960741898410', 50, 154, 122, 45, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('s14960749531713', 'nuclause', 'zzzzsys_select_clause', 'select', 'ssc_type', 'Type', 's14960741898410', 10, 58, 122, 100, 16, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '0', '1|WHERE|\n2|GROUP BY|\n3|ORDER BY|\n4|HAVING\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('s14960751497257', 'nuclause', 'zzzzsys_select_clause', 'input', 'ssc_clause', 'Clause', 's14960741898410', 30, 122, 122, 200, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '10|WHERE|\n20|ORDER BY|\n30|GROUP BY|\n40|HAVING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14960753634405', 'nuclause', 'zzzzsys_select_clause', 'input', 'ssc_field', 'Field', 's14960741898410', 20, 90, 122, 230, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', '10|WHERE|\n20|ORDER BY|\n30|GROUP BY|\n40|HAVING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.selectFields()', '', ''),
('s14960757864250', 'nuselect', 'zzzzsys_select', 'subform', 'zzzzsys_select_clause_sf', 'Clauses', 's14930617882374', 80, 272, 89, 700, 119, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nuclause', 'ssc_zzzzsys_select_id', '1', '1', 'g', 'zzzzsys_select_clause', 0, '', 'range', '', '', ''),
('s14960767003439', 'nuselect', 'zzzzsys_select', 'textarea', 'sse_sql', 'SQL', 's14930617882374', 50, 45, 810, 229, 344, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14962240323543', '58a08a1abc4782c', 'invoice', 'calc', 'inv_gst', 'GST', '58a08a1abc48c9a', 40, 375, 274, 76, 25, '1', 'right', '0', '0', '', 'nuTotal(\'invoice_item.ite_total\') + 56', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14962242517825', '58a08a1abc4782c', 'invoice', 'calc', 'inv_gst2', 'GST', '58a08a1abc48c9a', 50, 376, 94, 76, 25, '1', 'right', '0', '0', '', 'nuTotal(\'invoice_item.ite_total\') + 2', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14963697603115', 'nuclause', 'zzzzsys_select_clause', 'select', 'ssc_sort', 'Sort', 's14960741898410', 40, 154, 122, 70, 16, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '0', 'ASC|ASC|DESC|DESC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', '', ''),
('s14964416938678', 'nuselect', 'zzzzsys_select', 'textarea', 'sse_json', 'JSON', 's14930617882374', 70, 74, 10, 73, 23, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', '');
INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_table`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_access`, `sob_all_default_value_sql`, `sob_calc_formula`, `sob_calc_format`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_lookup_table`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_subform_table`, `sob_input_count`, `sob_input_format`, `sob_input_type`, `sob_input_javascript`, `sob_html_code`, `sob_image_zzzzsys_file_id`) VALUES
('s14967319482165', '58a08a1abc4782c', 'invoice', 'lookup', 'inv_company_id', 'Customer', '58a08a1abc48c9a', 80, 18, 93, 100, 20, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', '', 'com_code', 'com_name', '200', '', 's14967315763149', '$(\'#populate\').val(\'abc\'+nuID());\n\n', '', 'company', '', '', '', '', '', '', 0, '', 'nuDate', '', '', ''),
('s14977248323736', '56773cb405f4913', 'company', 'input', 'com_code', 'Code', '56777715b87666e', 20, 53, 172, 90, 18, '1', 'left', '0', '0', '', '', 'N|$ 1,000.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14980423027074', 'nuselect', 'zzzzsys_select', 'word', 'wrdsql', 'SQL', 's14930617882374', 60, 16, 810, 229, 16, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981082526071', 'nuhome', '', 'input', 'open_database', 'Database', '581288bcd699493', 110, 35, 469, 150, 30, '1', 'center', '0', '0', '', '', '', 'nusetup', '', 'b', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('s14981175127024', 'c14981165386072706', '', 'input', 'field00', 'text00', 's14981175127022', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981183838230', 'c14981183619791086', 'aa', 'input', 'field00', 'text00', 's14981183838228', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981556542228', 's14981556542223', 'children', 'input', 'chi_name', 'text00', 's14981556542224', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981539119815', 'c14981538088649715', 'invoice', 'input', 'inv_company_id', 'text00', 's14981539119810', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981539119816', 'c14981538088649715', 'invoice', 'input', 'inv_number', 'text01', 's14981539119810', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981539119817', 'c14981538088649715', 'invoice', 'input', 'inv_total', 'text02', 's14981539119810', 210, 210, 210, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981556542229', 's14981556542223', 'children', 'input', 'chi_dob', 'text01', 's14981556542224', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981689112597', 's14981689112592', 'zzzzsys_user', 'input', 'sus_language', 'text00', 's14981689112593', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981564175459', 's14981564175453', 'color', 'input', 'col_code', 'text00', 's14981564175454', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981564175460', 's14981564175453', 'color', 'input', 'col_description', 'button01', 's14981564175454', 180, 180, 180, 117, 23, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'button', '', '', ''),
('s14981689112598', 's14981689112592', 'zzzzsys_user', 'input', 'sus_zzzzsys_access_level_id', 'text01', 's14981689112593', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981568046402', 's14981568046395', 'business', 'input', 'bus_code', 'text00', 's14981568046397', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981568046403', 's14981568046395', 'business', 'input', 'bus_description', 'text01', 's14981568046397', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981693735951', 's14981693735943', 'color', 'input', 'col_description', 'text01', 's14981693735946', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981569151563', 's14981569151558', 'color', 'input', 'col_description', 'text00', 's14981569151559', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981569151564', 's14981569151558', 'color', 'input', 'col_code', 'text01', 's14981569151559', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981693735950', 's14981693735943', 'color', 'input', 'col_code', 'text00', 's14981693735946', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981694602854', 's14981694602847', 'color', 'input', 'col_code', 'text00', 's14981694602850', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981694602855', 's14981694602847', 'color', 'input', 'col_description', 'text01', 's14981694602850', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14981718746294', 'nuform', 'zzzzsys_form', 'input', 'br_sql', 'SQL', '5707303141ab448', 120, 0, 365, 24, 15, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('s14981984429567', 'nuobject', 'zzzzsys_object', 'input', 'di_sql', 'SQL', '570d90df63e6972', 210, 28, 276, 24, 15, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('s14981987022728', 'nuobject', 'zzzzsys_object', 'input', 'se_sql', 'SQL', '570d90df670db61', 220, 28, 275, 24, 15, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('s14984705068995', 'nuffobjects', 'zzzzsys_object', 'input', 'ff_browse', 'Browse<br>Column', '5840d1f62187912', 30, 20, 10, 58, 15, '1', 'left', '0', '0', '', '', '', 'nuobject', '', 'b', '#ff_id#', '', '0', '1|Yes', 'syt_title', 'sfo_description', '200', '', 'nutab', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'checkbox', '', '', ''),
('s14984734046469', 's14984734046457', 'aa', 'input', 'field00', 'text00', 's14984734046458', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984734046470', 's14984734046457', 'aa', 'input', 'field01', 'text01', 's14984734046458', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984734046471', 's14984734046457', 'aa', 'input', 'field02', 'text02', 's14984734046458', 210, 210, 210, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984734046472', 's14984734046457', 'aa', 'input', 'field03', 'text03', 's14984734046458', 240, 240, 240, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984734046473', 's14984734046457', 'aa', 'input', 'field06', 'text06', 's14984734046458', 330, 330, 330, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984734046474', 's14984734046457', 'aa', 'input', 'field07', 'text07', 's14984734046458', 360, 360, 360, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984734046475', 's14984734046457', 'aa', 'input', 'field08', 'text08', 's14984734046458', 390, 390, 390, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984734046476', 's14984734046457', 'aa', 'input', 'field09', 'text09', 's14984734046458', 420, 420, 420, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984736150783', 's14984736150772', 'aaa', 'input', 'field00', 'text00', 's14984736150773', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984736150784', 's14984736150772', 'aaa', 'input', 'field01', 'text01', 's14984736150773', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984736150785', 's14984736150772', 'aaa', 'input', 'field02', 'text02', 's14984736150773', 210, 210, 210, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984736150786', 's14984736150772', 'aaa', 'input', 'field03', 'text03', 's14984736150773', 240, 240, 240, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984736150787', 's14984736150772', 'aaa', 'input', 'field07', 'text07', 's14984736150773', 360, 360, 360, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984736150788', 's14984736150772', 'aaa', 'input', 'field08', 'text08', 's14984736150773', 390, 390, 390, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984737421986', 's14984737421974', 'aaa', 'input', 'field00', 'text00', 's14984737421975', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984737421987', 's14984737421974', 'aaa', 'input', 'field01', 'text01', 's14984737421975', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984737421988', 's14984737421974', 'aaa', 'input', 'field02', 'text02', 's14984737421975', 210, 210, 210, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984737421989', 's14984737421974', 'aaa', 'input', 'field03', 'text03', 's14984737421975', 240, 240, 240, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984737421990', 's14984737421974', 'aaa', 'input', 'field04', 'text04', 's14984737421975', 270, 270, 270, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984737421991', 's14984737421974', 'aaa', 'input', 'field05', 'text05', 's14984737421975', 300, 300, 300, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984737421992', 's14984737421974', 'aaa', 'input', 'field06', 'text06', 's14984737421975', 330, 330, 330, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984737421993', 's14984737421974', 'aaa', 'input', 'field07', 'text07', 's14984737421975', 360, 360, 360, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984737421994', 's14984737421974', 'aaa', 'input', 'field08', 'text08', 's14984737421975', 390, 390, 390, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14984737421995', 's14984737421974', 'aaa', 'input', 'field09', 'text09', 's14984737421975', 420, 420, 420, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14985859173437', 's14985859173426', 'children', 'input', 'field00', 'text00', 's14985859173427', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14985859173438', 's14985859173426', 'children', 'input', 'field01', 'button01', 's14985859173427', 180, 180, 180, 117, 23, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'button', '', '', ''),
('s14985859173439', 's14985859173426', 'children', 'input', 'field02', 'nuAutoNumber02', 's14985859173427', 210, 210, 210, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 89, 'N|$ 1,000.00', 'nuAutoNumber', '', '', ''),
('s14985859173440', 's14985859173426', 'children', 'display', 'field03', 'Display03', 's14985859173427', 240, 240, 240, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', '', '', '', ''),
('s14985859173441', 's14985859173426', 'children', 'lookup', 'field04', 'Lookup04', 's14985859173427', 270, 270, 270, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', 'deb_order', 'deb_message', '50', '', 'nudebug', '', '', 'zzzzsys_debug', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuScroll', '[\'North\',\'South\',\'East\',\'West\']', '', ''),
('s14985859173442', 's14985859173426', 'children', 'html', 'field05', 'HTML05', 's14985859173427', 300, 300, 300, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', '', '', '<div id=\'adiv\' style=\'text-align:center;width:117px;border:1px solid red;\' class=\'nuBreadcrumb\'>\n    Hello World\n</div>', ''),
('s14985859173443', 's14985859173426', 'children', 'select', 'field06', 'multiselect06', 's14985859173427', 330, 330, 330, 117, 35, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '1', 'SELECT zzzzsys_format_id, srm_format FROM zzzzsys_format ORDER BY srm_type', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14985859173444', 's14985859173426', 'children', 'image', 'field07', 'Image07', 's14985859173427', 360, 360, 360, 117, 42, '1', 'left', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuScroll', '[\'North\',\'South\',\'East\',\'West\']', '', 's14921322478039'),
('s14985859173445', 's14985859173426', 'children', 'word', 'field08', 'Word08', 's14985859173427', 390, 390, 390, 117, 18, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14986468857628', 'nufile', 'zzzzsys_file', 'textarea', 'sfi_json', 'Upload File ', 's14921253336084', 70, 14, 10, 121, 50, '1', 'left', '0', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'file', '', '', ''),
('s15017688442346', 's15017688442340', 'payment', 'input', 'pay_date', 'Date', 's15017688442341', 110, 110, 210, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'D|dd-mmm-yyyy', 'nuDate', '', '', ''),
('s14993929767299', 's14993929767294', 'aaa', 'input', 'field00', 'text00', 's14993929767295', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14993929767300', 's14993929767294', 'aaa', 'input', 'field01', 'text01', 's14993929767295', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14993929767301', 's14993929767294', 'aaa', 'input', 'field02', 'text02', 's14993929767295', 210, 210, 210, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14999026836295', 's14999026836290', 'aa', 'input', 'field00', 'text00', 's14999026836291', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14999026836296', 's14999026836290', 'aa', 'textarea', 'field01', 'Textarea01', 's14999026836291', 180, 180, 180, 117, 42, '1', 'left', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuScroll', '[\'North\',\'South\',\'East\',\'West\']', '', ''),
('s14999026836297', 's14999026836290', 'aa', 'input', 'field02', 'text02', 's14999026836291', 210, 210, 210, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14999468312058', 's14999468312054', 'children', 'input', 'chi_name', 'text00', 's14999468312055', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14999468312059', 's14999468312054', 'children', 'input', 'field01', 'text01', 's14999468312055', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14999843308352', 'nufflaunch', '', 'select', 'fastform_type', 'Form Type', '583361606251aef', 10, 83, 516, 120, 16, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '0', 'browse|Browse|\nedit|Edit|browseedit|\nBrowse and Edit|\nlaunch|Launch|\nsubform|Subform Only', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s14999887827562', 's14999887827558', 'color', 'input', 'col_code', 'text00', 's14999887827559', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14999887827563', 's14999887827558', 'color', 'input', 'col_description', 'text01', 's14999887827559', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14999888496753', 's14999888496748', 'color', 'input', 'col_code', 'text00', 's14999888496749', 150, 150, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14999888496754', 's14999888496748', 'color', 'input', 'col_description', 'text01', 's14999888496749', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s14999888496755', 's14999888496748', 'color', 'input', 'field02', 'text02', 's14999888496749', 210, 210, 210, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15000508641735', '58a08a1abc4782c', 'invoice', 'input', 'filter', 'Filter', '58a08a1abc48c9a', 90, 69, 93, 100, 20, '1', 'right', '0', '0', '', '', '', '', '', '', '', '', '', '', 'com_code', 'com_name', '200', '', 's14967315763149', '', '', 'company', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15000520525446', '58d3719f55819e7', 'zzzzsys_access_level', 'input', 'com_name', 'Company Name', '58d3719f5582316', 70, 33, 171, 100, 18, '1', 'left', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15000603208258', 'nufflaunch', 'zzzzsys_form', 'word', 'wrdaddable', 'Addable Objects', '583361606251aef', 30, 10, 23, 383, 20, '1', 'center', '0', '0', '', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('s15003410579891', 'nuhome', '', 'run', 'user_home', 'User Home', '569dc4ed270f08a', 30, 146, 84, 150, 30, '1', 'center', '1', '0', '', '', '', 'nuuserhome', '', 'b', '-1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', '', ''),
('s15005887447343', 'nusetup', 'zzzzsys_setup', 'select', 'set_language', 'Language', '57a29441f16e2e2', 30, 124, 163, 150, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', 0, '', '', '', '', ''),
('s15007698416198', 's15007698416193', 'children', 'input', 'field01', 'text01', 's15007698416194', 180, 180, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15014135885933', 's15014135885928', 'children', 'lookup', 'chi_employee_id', 'Parent', 's15014135885929', 30, 93, 98, 186, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', 'emp_name', 'emp_name', '0', '', 's15014147222001', '', '', 'employee', '', '', '', '', '', '', 0, 'N|$ 1,000.00', '', '[\'North\',\'South\',\'East\',\'West\']', '', ''),
('s15014135885934', 's15014135885928', 'children', 'input', 'chi_name', 'Name', 's15014135885929', 20, 58, 98, 186, 18, '1', 'left', '2', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15014135885935', 's15014135885928', 'children', 'input', 'chi_number', 'AAAA', 's15014135885929', 10, 23, 98, 87, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 18, 'D|dd-mmm-yyyy', 'nuAutoNumber', '', '', ''),
('s15014142986487', 's15014142986483', 'aaa', 'input', 'field00', 'text00', 's15014142986484', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15014142986488', 's15014142986483', 'aaa', 'input', 'field01', 'text01', 's15014142986484', 80, 80, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15014147222004', 's15014147222001', 'employee', 'input', 'emp_name', 'Name', 's15014147222002', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15014190455339', 's15014135885928', 'children', 'input', 'chi_sex', 'Sex', 's15014135885929', 40, 128, 98, 186, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', '[\'Male\',\'Female\',\'?\']', '', ''),
('s15014368294673', '58a08a1abc4782c', 'invoice', 'input', 'populate', 'Populate', '58a08a1abc48c9a', 100, 70, 436, 154, 20, '1', 'right', '1', '0', '', '', '', '', '', '', '', '', '', '', 'com_code', 'com_name', '200', '', 's14967315763149', '', '', 'company', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15014842421420', 's15014842421416', 'aaa', 'input', 'field00', 'text00', 's15014842421417', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15014842421421', 's15014842421416', 'aaa', 'input', 'field01', 'text01', 's15014842421417', 80, 80, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15014845463680', 's15014845463676', 'aa', 'input', 'field00', 'text00', 's15014845463677', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15014845463681', 's15014845463676', 'aa', 'input', 'field01', 'text01', 's15014845463677', 80, 80, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15019632336395', 's15014135885928', 'children', 'input', 'chi_number1', 'AAAAA', 's15014135885929', 50, 163, 98, 87, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 37, 'D|dd-mmm-yyyy', 'nuAutoNumber', '', '', ''),
('s15019710702809', 's15019710702806', 'aaaa', 'input', 'sdgbfd', 'text00', 's15019710702807', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15021344292052', 's15021344292047', 'aaaaaaa', 'input', 'field00', 'nuAutoNumber00', 's15021344292048', 10, 50, 150, 117, 18, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 91, 'N|$ 1,000.00', 'nuAutoNumber', '', '', ''),
('s15021344292053', 's15021344292047', 'aaaaaaa', 'input', 'field01', 'nuScroll01', 's15021344292048', 20, 80, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuScroll', '[\'North\',\'South\',\'East\',\'West\']', '', ''),
('s15021344292054', 's15021344292047', 'aaaaaaa', 'input', 'field02', 'text02', 's15021344292048', 30, 110, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022048685163', 'nusample', '', 'subform', 'subformsample', 'Subform', 's14914269237459', 90, 375, 143, 414, 100, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', 'nutranslate', 'trl_language', '1', '1', 'g', 'zzzzsys_translate', 89, 'N|$ 1,000.00', 'file', '', '', ''),
('s15022070434932', 's15022070434928', 'zzzzsys_debug', 'input', 'deb_message', 'text00', 's15022070434929', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022070434933', 's15022070434928', 'zzzzsys_debug', 'subform', 'field01', 'Subform01', 's15022070434929', 80, 80, 180, 414, 100, '1', 'right', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', '', '', '', '', '', '', '', '', 'nutranslate', 'trl_language', '1', '1', 'g', 'zzzzsys_translate', 89, 'N|$ 1,000.00', 'file', '', '', ''),
('s15022073843377', 's15022073843373', 'zzzzsys_debug', 'input', 'deb_message', 'text00', 's15022073843374', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022073843378', 's15022073843373', 'zzzzsys_debug', 'lookup', 'field01', 'Lookup01', 's15022073843374', 80, 80, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '', 'trl_english', 'trl_translation', '50', '', 'nutranslate', '', '', 'zzzzsys_translate', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuScroll', '[\'North\',\'South\',\'East\',\'West\']', '', ''),
('s15022089693626', 's15022089693622', 'zzzzsys_browse', 'input', 'sbr_title', 'text00', 's15022089693623', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022089693627', 's15022089693622', 'zzzzsys_browse', 'input', 'field01', 'text01', 's15022089693623', 80, 80, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022094201891', 's15022094201887', 'Launch Form', 'input', 'field00', 'text00', 's15022094201888', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022094201892', 's15022094201887', 'Launch Form', 'input', 'field01', 'text01', 's15022094201888', 80, 80, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022094761602', 's15022094761597', 'Launch Form', 'input', 'field00', 'text00', 's15022094761598', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022094761603', 's15022094761597', 'Launch Form', 'input', 'field01', 'text01', 's15022094761598', 80, 80, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022094761604', 's15022094761597', 'Launch Form', 'input', 'field02', 'text02', 's15022094761598', 110, 110, 210, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022099748809', 's15022099748804', 'Launch Form', 'input', 'field01', 'text01', 's15022099748805', 80, 80, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022094912529', 's15022094912525', 'Launch Form', 'input', 'field00', 'text00', 's15022094912526', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022094912530', 's15022094912525', 'Launch Form', 'input', 'field01', 'text01', 's15022094912526', 80, 80, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022099748808', 's15022099748804', 'Launch Form', 'input', 'field00', 'text00', 's15022099748805', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022096809652', 's15022096809648', 'Launch Form', 'input', 'field00', 'text00', 's15022096809649', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022096809653', 's15022096809648', 'Launch Form', 'input', 'field01', 'text01', 's15022096809649', 80, 80, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022097156521', 's15022097156517', 'zzzzsys_access_level_report', 'input', 'field00', 'text00', 's15022097156518', 50, 50, 150, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', ''),
('s15022097156522', 's15022097156517', 'zzzzsys_access_level_report', 'input', 'field01', 'text01', 's15022097156518', 80, 80, 180, 117, 18, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', '');

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
  `sph_run` varchar(20) NOT NULL,
  `sph_zzzzsys_form_id` varchar(25) NOT NULL,
  `sph_system` varchar(1) NOT NULL,
  `sph_hide` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_php`
--

INSERT INTO `zzzzsys_php` (`zzzzsys_php_id`, `sph_code`, `sph_description`, `sph_group`, `sph_php`, `sph_run`, `sph_zzzzsys_form_id`, `sph_system`, `sph_hide`) VALUES
('57578be0057a49f', 'invoicetable', 'invoicetable', 'test', '\n$s = \"CREATE TABLE #TABLE_ID# SELECT * FROM invoice\";\n\nnuRunQuery($s, \'#RECORD_ID#\');\n\n', '', 'nulaunchdates', '', ''),
('57db70b7aa22cda', 'tables', 'update sob_all_table', 'aaa', '$S  = \"\r\n\r\n        SELECT * FROM zzzzsys_tab \r\n        JOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\r\n        JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = syt_zzzzsys_form_id\r\n\r\n\";\r\n\r\n$T  = nuRunQuery(\"SELECT * FROM zzzzsys_object\");\r\n\r\nwhile($R = db_fetch_object($T)){\r\n        \r\n    $s  = \"\r\n        SELECT * FROM zzzzsys_form\r\n        WHERE zzzzsys_form_id = \'$R->zzzzsys_form_id\'\r\n    \";\r\n    \r\n    $t  = nuRunQuery($s);\r\n    $r  = db_fetch_object($t);\r\n    $s  = \"UPDATE zzzzsys_object WHERE sob_all_zzzzsys_form_id =  \'$R->zzzzsys_form_id\'\";\r\n    \r\n}\r\n', '', '57edbac65e1c52a', '1', ''),
('581135daea4f878', 'test', 'copy events to form', 'nu', 'nuDisplayMessage(\'Hello\');\nnuDisplayMessage(\'World!\');\nnuDisplayMessage(456);\nnuDisplayMessage(888);\n', 'hide', 'nublank', '', ''),
('nuform_BS', 'nuform_BS', 'System PHP', 'nubuilder', '\n    $o = \'#sfo_type#\';\n\n    if(\'#sfo_type#\'             == \'\'){nuDisplayError(\'<b>Type</b> Cannot Be Blank..\', \'sfo_type\');}\n    if(\'#sfo_code#\'             == \'\'){nuDisplayError(\'<b>Code</b> Cannot Be Blank..\', \'sfo_code\');}\n    if(\'#sfo_description#\'      == \'\'){nuDisplayError(\'<b>Description</b> Cannot Be Blank..\', \'sfo_description\');}\n\n\n    \n    \n    if($o == \'browseedit\' || $o == \'subform\' || $o == \'browse\'){\n        \n        if($o != \'browse\'){\n            nuCheckTabs();\n        }\n        \n        if($o != \'subform\'){\n            nuCheckBrowse();\n        }\n        \n        if(\'#sfo_browse_sql#\'   == \'\'){nuDisplayError(\'<b>Browse SQL</b> Cannot Be Blank..\', \'sfo_browse_sql\');}\n    }\n\n    if($o == \'edit\' or $o == \'launch\'){\n        nuCheckTabs();\n    }\n\n    if($o != \'launch\'){\n        if(\'#sfo_table#\'            == \'\'){nuDisplayError(\'<b>Table Name</b> Cannot Be Blank..\', \'sfo_table\');}\n        if(\'#sfo_primary_key#\'      == \'\'){nuDisplayError(\'<b>Primary Key</b> Cannot Be Blank..\', \'sfo_primary_key\');}\n    }\n\nfunction nuCheckBrowse(){\n\n    $r  = 0;\n    $sf = nuSubformObject(\'zzzzsys_browse_sf\');\n    \n    for($i = 0 ; $i < count($sf->rows) ; $i++){\n       if($sf->deleted[$i] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(\'<b>Must have at least 1</b> Browse Column Defined..\');\n    }\n    \n}\n\nfunction nuCheckTabs(){\n\n    $r  = 0;\n    $sf = nuSubformObject(\'zzzzsys_tab_sf\');\n    \n    for($i = 0 ; $i < count($sf->rows) ; $i++){\n       if($sf->deleted[$i] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(\'<b>Must have at least 1</b> Tab Column Defined..\');\n    }\n    \n}\n\n\n\n\n', '', '', '1', ''),
('nuphp_BS', 'nuphp_BS', 'System PHP', 'nubuilder', '', '', '', '1', ''),
('58a08a1abc4782c_AS', '58a08a1abc4782c_AS', 'System PHP', 'nubuilder', 'nudebug(\'as\');', '', '', '1', ''),
('58a08a1abc4782c_BD', '58a08a1abc4782c_BD', 'System PHP', 'nubuilder', '', '', '', '1', ''),
('58a08a1abc4782c_AD', '58a08a1abc4782c_AD', 'System PHP', 'nubuilder', '', '', '', '1', ''),
('568b50020fc7a62_AB', '568b50020fc7a62_AB', 'After Browse (com_business_id)', 'nubuilder', '\nnuSetFormValue(\'com_phone\', 1234);\nnuSetFormValue(\'com_name\', 777);\nnuSetFormValue(\'com_age\', 1966);\n\n\n', '', '', '1', ''),
('nupassword_BS', 'nupassword_BS', 'BS (PASS)', 'nubuilder', '\r\n$is		= md5(\'#old_password#\');\r\n$was	= md5(\'#new_password_check#\');\r\n$will	= md5(\'#new_password#\');\r\n$ses	= \'#SESSION_ID#\';\r\n\r\n$s      = \"\r\n\r\n    SELECT * \r\n    FROM zzzzsys_session\r\n    WHERE zzzzsys_session_id = \'$ses\'\r\n\r\n\";\r\n\r\n$t  = nuRunQuery($s);\r\n$r  = db_fetch_object($t);\r\n$j  = json_decode($r->sss_access);\r\n\r\n$s      = \"\r\n\r\n    SELECT * \r\n    FROM zzzzsys_user\r\n    WHERE zzzzsys_user_id = \'#USER_ID#\'\r\n    AND sus_login_password = \'$is\'\r\n\r\n\";\r\n\r\n$t  = nuRunQuery($s);\r\nnudebug(\'31 \' . $s);\r\n\r\nif(db_num_rows($t) == 0){\r\n\r\n    nuDisplayError(\'Incorrect Password\');\r\n    return;\r\n    \r\n}\r\n\r\nif($will == $was){\r\n\r\n    $s  = \"\r\n\r\n    UPDATE zzzzsys_user \r\n    SET sus_login_password = \'$will\'\r\n    WHERE zzzzsys_user_id = \'#RECORD_ID#\'\r\n    AND sus_login_password = \'$is\'\r\n    \r\n    \";\r\n\r\nnudebug(\'qqqq \'.$s);\r\n    nuRunQuery($s);\r\n\r\n}else{\r\n    \r\n    nuDisplayError(\'\"Enter New Password\" Must be the same as \"Re-Enter New Password\"\');\r\n\r\n}\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', '', '1', ''),
('nuuser_AS', 'nuuser_AS', 'AS (ACCUSE)', 'nubuilder', 'if(\'#new_password#\' == \'#check_password#\' && \'#check_password#\' != \'#check_p\'.\'assword#\' && \'#check_password#\' != \'\'){\n\n	$pw	= md5(\'#check_password#\');\n	nuRunQuery(\"UPDATE zzzzsys_user SET sus_login_password = \'$pw\' WHERE zzzzsys_user_id = \'#RECORD_ID#\'\");\n\n}\n\n', '', '', '1', ''),
('nurunlist_BB', 'nurunlist_BB', 'BB (RUN)', 'nubuilder', '$s = \"\n\nDROP VIEW IF EXISTS zzzzsys_run_list;\nCREATE VIEW zzzzsys_run_list AS\nSELECT zzzzsys_form_id AS id, \'Form\' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_form\nUNION\nSELECT zzzzsys_report_id AS id, \'Report\' AS run, sre_code AS code, sre_description AS description FROM zzzzsys_report\nUNION\nSELECT zzzzsys_php_id AS id, \'Procedure\' AS run, sph_code AS code, sph_description AS description FROM zzzzsys_php\nORDER BY code;\n\n\";\n\nnuRunQuery($s);', '', '', '1', ''),
('nudebug_BD', 'nudebug_BD', 'System PHP', 'nubuilder', '\n$i  = \'#instruction#\';\n\nif($i == \'all\'){\n    nuRunQuery(\"DELETE FROM zzzzsys_debug\");\n    \n}\n\n', '', '', '1', ''),
('nuobject_BS', 'nuobject_BS', 'BS (OBJECT)', 'nubuilder', '\n    $r  = \'#RECORD_ID#\';\n    $f  = \'#sob_all_zzzzsys_form_id#\';\n    $o  = \'#sob_all_id#\';\n\n    $s  = \"\n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = \'$f\'\n        AND sob_all_id = \'$o\'\n        AND zzzzsys_object_id != \'$r\'\n\n        \";\n\n    $t  = nuRunQuery($s);\n    $r  = db_fetch_row($t);\n    \n    if($r[0] > 0){\n        nuDisplayError(\'This <b>ID</b> is already used on this Form..\');\n    }\n\n    $o = \'#sob_all_type#\';\n\n    if(\'#sob_all_zzzzsys_tab_id#\'             == \'\'){nuDisplayError(\'Type Cannot Be Blank..\', \'sob_all_zzzzsys_tab_idcode\');}\n    if(\'#sob_all_type#\'             == \'\'){nuDisplayError(\'Type Cannot Be Blank..\', \'sob_all_type\');}\n    if(\'#sob_all_zzzzsys_form_id#\'  == \'\'){nuDisplayError(\'Tab - Form Cannot Be Blank..\', \'sob_all_zzzzsys_form_idcode\');}\n    if(\'#sob_all_id#\'               == \'\'){nuDisplayError(\'ID Cannot Be Blank..\', \'sob_all_id\');}\n    if(\'#sob_all_label#\'   == \'\'){nuDisplayError(\'Label Cannot Be Blank..\', \'sob_all_label\');}\n    if(\'#sob_all_top#\'   == \'\'){nuDisplayError(\'Top Cannot Be Blank..\', \'sob_all_top\');}\n    if(\'#sob_all_left#\'   == \'\'){nuDisplayError(\'Left Cannot Be Blank..\', \'sob_all_left\');}\n    if(\'#sob_all_width#\'   == \'\'){nuDisplayError(\'Width Cannot Be Blank..\', \'sob_all_width\');}\n    if(\'#sob_all_height#\'   == \'\'){nuDisplayError(\'Height Cannot Be Blank..\', \'sob_all_height\');}\n    if(\'#sob_all_cloneable#\'   == \'\'){nuDisplayError(\'Cloneable Cannot Be Blank..\', \'sob_all_cloneable\');}\n    if(\'#sob_all_align#\'   == \'\'){nuDisplayError(\'Align Cannot Be Blank..\', \'sob_all_align\');}\n    if(\'#sob_all_validate#\'   == \'\'){nuDisplayError(\'Validation Cannot Be Blank..\', \'sob_all_validate\');}\n    if(\'#sob_all_access#\'   == \'\'){nuDisplayError(\'Read Only Cannot Be Blank..\', \'sob_all_access\');}\n\n\n    if($o == \'display\'){\n        if(\'#sob_display_sql#\'   == \'\'){nuDisplayError(\'Display Cannot Be Blank..\',\'sob_display_sql\');}\n    }\n\n    if($o == \'html\'){\n        if(\'#sob_html_code#\'   == \'\'){nuDisplayError(\'HTML Cannot Be Blank..\',\'sob_html_code\');}\n    }\n\n    if($o == \'lookup\'){\n        if(\'#sob_lookup_zzzzsys_form_id#\'   == \'\'){nuDisplayError(\'Form Cannot Be Blank..\', \'sob_lookup_zzzzsys_form_idcode\');}\n        if(\'#sob_lookup_code#\'   == \'\'){nuDisplayError(\'Code Cannot Be Blank..\', \'sob_lookup_code\');}\n        if(\'#sob_lookup_description#\'   == \'\'){nuDisplayError(\'Descrition Cannot Be Blank..\', \'sob_lookup_description\');}\n        if(\'#sob_lookup_description_width#\'   == \'\'){nuDisplayError(\'Width Cdddannot Be Blank..\', \'sob_lookup_description_width\');}\n    }\n\n    if($o == \'run\'){\n        if(\'#sob_run_zzzzsys_form_id#\'   == \'\'){nuDisplayError(\'Run Cannot Be Blank..\', \'sob_run_zzzzsys_form_idcode\');}\n        if(\'#sob_run_method#\'   == \'\'){nuDisplayError(\'Method Cannot Be Blank..\', \'sob_run_method\');}\n    }\n\n\n    if($o == \'input\'){\n        \n        if(\'#sob_input_type#\'   == \'\'){nuDisplayError(\"Input\'s Input Type Cannot Be Blank..\", \'sob_input_type\');}\n        \n        if(\'#sob_input_type#\' == \'nuNumber\' || \'#sob_input_type#\' == \'nuDate\'){\n            if(\'#sob_input_format#\' == \'\'){nuDisplayError(\"Input Format Cannot Be Blank..\", \'sob_input_format\');}\n        }\n        \n        if(\'#sob_input_type#\' == \'nuAutoNumber\'){\n            if(\'#sob_input_count#\' == \'\'){nuDisplayError(\"Next Number Cannot Be Blank..\", \'sob_input_format\');}\n        }\n        \n    }\n\n\n    if($o == \'select\'){\n        if(\'#sob_select_multiple#\'   == \'\'){nuDisplayError(\'Multiple Cannot Be Blank..\', \'sob_select_multiple\');}\n        if(\'#sob_select_sql#\'   == \'\'){nuDisplayError(\'SQL/List Cannot Be Blank..\', \'sob_select_sql\');}\n    }\n    \n\n    if($o == \'subform\'){\n        if(\'#sob_subform_zzzzsys_form_id#\'   == \'\'){nuDisplayError(\'Form Cannot Be Blank..\', \'sob_subform_zzzzsys_form_idcode\');}\n        if(\'#sob_subform_foreign_key#\'   == \'\'){nuDisplayError(\'Foreign Key Cannot Be Blank..\', \'sob_subform_foreign_key\');}\n        if(\'#sob_subform_add#\'   == \'\'){nuDisplayError(\'Addable Cannot Be Blank..\', \'sob_subform_add\');}\n        if(\'#sob_subform_delete#\'   == \'\'){nuDisplayError(\'Deletable Cannot Be Blank..\', \'sob_subform_delete\');}\n        if(\'#sob_subform_type#\'   == \'\'){nuDisplayError(\'Type Cannot Be Blank..\', \'sob_subform_type\');}\n    }\n\n    if($o == \'\'){\n        if(\'#sfo_browse_sql#\'   == \'\'){nuDisplayError(\'Browse SQL Cannot Be Blank..\', \'sfo_browse_sql\');}\n    }\n', '', '', '1', ''),
('nuform_AS', 'nuform_AS', 'AS (FORM)', 'nubuilder', '$s  = \"\r\n    SELECT * \r\n    FROM zzzzsys_browse \r\n    WHERE sbr_zzzzsys_form_id = \'#RECORD_ID#\'\r\n    ORDER BY sbr_order;\r\n\";\r\n\r\n\r\n$t = nuRunQuery($s);\r\n$o = 10;\r\n\r\nwhile($r = db_fetch_object($t)){\r\n        \r\n    $s  = \"\r\n        UPDATE zzzzsys_browse \r\n        SET sbr_order = \'$o\'\r\n        WHERE zzzzsys_browse_id = \'$r->zzzzsys_browse_id\'\r\n        ORDER BY sbr_order;\r\n    \";\r\n    \r\n    nuRunQuery($s);\r\n    \r\n    $o = $o + 10;    \r\n    \r\n}\r\n\r\n$s  = \"\r\n    SELECT * \r\n    FROM zzzzsys_tab \r\n    WHERE syt_zzzzsys_form_id = \'#RECORD_ID#\'\r\n    ORDER BY syt_order;\r\n\";\r\n\r\n$t = nuRunQuery($s);\r\n$o = 10;\r\n\r\nwhile($r = db_fetch_object($t)){\r\n        \r\n    $s  = \"\r\n        UPDATE zzzzsys_tab \r\n        SET syt_order = \'$o\'\r\n        WHERE zzzzsys_tab_id = \'$r->zzzzsys_tab_id\'\r\n        ORDER BY syt_order;\r\n    \";\r\n    \r\n    nuRunQuery($s);\r\n    \r\n    $o = $o + 10;    \r\n    \r\n}\r\n\r\n', '', '', '1', ''),
('nucalcobjects_BB', 'nucalcobjects_BB', 'System PHP', '', '\n$s = \"\n\nCREATE TABLE #TABLE_ID#\n\nSELECT \n   sob_all_zzzzsys_form_id AS theform,\n   \'\' AS theparent,\n   sob_all_id AS thechild,\n   CONCAT(sob_all_id) as thevalue\nFROM zzzzsys_object \nWHERE sob_input_type = \'number\'\nOR sob_all_type = \'calc\'\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   su.sob_all_id AS theparent,\n   inp.sob_all_id AS thechild,\n   CONCAT(su.sob_all_id, \'.\', inp.sob_all_id) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = \'subform\'\nAND (\n        inp.sob_input_type = \'nuNumber\' OR \n        inp.sob_input_type = \'number\' OR \n        inp.sob_all_type = \'calc\'\n    )\n\n\";\n    \nnuRunQuery($s);\n\n', '', '', '1', ''),
('570d9046964038e_AB', '570d9046964038e_AB', 'System PHP', '', '\n$s  = \"\n        SELECT * \n        FROM zzzzsys_tab \n        JOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\n        WHERE zzzzsys_tab_id = \'#LOOKUP_RECORD_ID#\'\n        \n        \";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n\nnuSetFormValue(\'sob_all_zzzzsys_form_id\', $r->syt_zzzzsys_form_id);\nnuSetFormValue(\'sob_all_table\', $r->sfo_table);\n', '', '', '1', ''),
('c14925427482771712_AD', 'c14925427482771712_AD', '', '', 'nuDeleteForm(\'#RECORD_ID#\');', '', '', '1', ''),
('nuform_AD', 'nuform_AD', 'System PHP', '', 'nuDeleteForm(\'#RECORD_ID#\');', '', '', '1', ''),
('570da52f2828508_AB', '570da52f2828508_AB', '', '', '\n$s  = \"\n        SELECT * \n        FROM zzzzsys_form\n        WHERE zzzzsys_form_id = \'#LOOKUP_RECORD_ID#\'\n        \n        \";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n\nnuSetFormValue(\'sob_subform_table\', $r->sfo_table);\n', '', '', '1', ''),
('57452c417370475_AB', '57452c417370475_AB', '', '', 'nuSetFormValue(\'slf_add_button\', \'1\');\nnuSetFormValue(\'slf_print_button\', \'1\');\nnuSetFormValue(\'slf_save_button\', \'1\');\nnuSetFormValue(\'slf_clone_button\', \'1\');\nnuSetFormValue(\'slf_delete_button\', \'1\');\n', '', '', '1', ''),
('574671cdcc77367_AB', '574671cdcc77367_AB', '', '', '\n$s  = \"\n        SELECT * \n        FROM zzzzsys_tab \n        JOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\n        WHERE zzzzsys_tab_id = \'#LOOKUP_RECORD_ID#\'\n        \n        \";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n\nnuSetFormValue(\'sob_lookup_table\', $r->sfo_table);\n', '', '', '1', ''),
('570dab25164b394_AB', '570dab25164b394_AB', '', '', '\n$s  = \"\n        SELECT * \n        FROM zzzzsys_form\n        WHERE zzzzsys_form_id = \'#LOOKUP_RECORD_ID#\'\n        \n        \";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n\nnuSetFormValue(\'sob_lookup_table\', $r->sfo_table);\n', '', '', '1', ''),
('nufastform', 'RUNFF', 'Run FastForm', 'nubuilder', 'nuBuildFastForm(\'#fastform_table#\', \'#fastform_type#\');\r\n', '', 'nufflaunch', '1', ''),
('s14919851858544', 'HW', 'Hello World', 'test', 'print \'hw<br>\';\n\n$SQL = new nuSqlString(\'select * from bob order by 1\');\n\nprint $SQL->where . \'<br>\';\n\nnudebug($SQL);\n\n$array = array(0 => \'blue\', 1 => \'red\', 2 => \'green\', 3 => \'red\');\n\nprint (array_search(\'green\', $array)) . \' - \' .  (array_search(\'reddd\', $array) == \'\'?\'1\':\'2\');\n', 'window', 'nublank', '', ''),
('s14967319482165_AB', 's14967319482165_AB', 'System PHP', '', 'nuSetFormValue(\'populate\', nuLookupRecord()->com_name);\nnuSetFormValue(\'inv_gst2\', 11);\n\n\n', '', '', '1', ''),
('s14988837505592', 'image', 'zzzzsys_file', 'test', '\r\n$s = \"CREATE TABLE #TABLE_ID# SELECT * FROM zzzzsys_file\";\r\n\r\nnuRunQuery($s);\r\n\r\n', '', 'nulaunchdates', '', ''),
('c14925390850522729_BB', 'c14925390850522729_BB', '', '', '\n\nnuDisplayMessage(\'This message comes from...\');\nnuDisplayMessage(\'before browse;\');\n\n\n', '', '', '1', ''),
('nuobject_BB', 'nuobject_BB', 'System PHP', '', '\n$s  = \"CREATE TABLE #TABLE_ID# SELECT zzzzsys_object_id AS theid FROM zzzzsys_object WHERE \";\n$w  = \"1\";\n\nif($GLOBALS[\'nuSetup\']->set_denied == 1){\n    $w  = \"sob_all_zzzzsys_form_id LIKE \'nu%\'\";\n}\n\nnudebug($GLOBALS[\'nuSetup\']->set_denied, \"$s$w\");\nnuRunQuery(\"$s$w\");\n\n', '', '', '1', ''),
('nuform_BB', 'nuform_BB', 'System PHP', '', '\n$s  = \"CREATE TABLE #TABLE_ID# SELECT zzzzsys_form_id AS theid FROM zzzzsys_form WHERE \";\n$w  = \"1\";\n\nif($GLOBALS[\'nuSetup\']->set_denied == 1){\n    $w  = \"zzzzsys_form_id LIKE \'nu%\'\";\n}\n\nnuRunQuery(\"$s$w\");\n', '', '', '1', ''),
('nuphp_BB', 'nuphp_BB', 'System PHP', '', '\n$s  = \"CREATE TABLE #TABLE_ID# SELECT zzzzsys_php_id AS theid FROM zzzzsys_php WHERE \";\n$w  = \"sph_system != 1\";\n\nnuRunQuery(\"$s$w\");\n\n', '', '', '1', ''),
('nuselect_BS', 'nuselect_BS', 'System PHP', '', '$rid    = \'#RECORD_ID#\';\n\nif($rid != \'-1\' and $rid != \'-2\'){ \n    \n    $s      = \"SELECT * FROM zzzzsys_select WHERE zzzzsys_select_id = \'$rid\'\";\n    $t      = nuRunQuery($s);\n    $r      = db_fetch_object($t);\n    \n    if(db_num_rows($t) == 0){\n        \n        $s              = \"\n        INSERT INTO zzzzsys_select\n        (zzzzsys_select_id, sse_system)\n        VALUES\n        (\'$rid\', \'1\')\n        \";\n        \n        nuRunQuery($s);\n        \n    }\n    \n}\n\n', '', '', '1', ''),
('s14990147062807', 'INV', 'Invoice', 'test', 'nudebug(\'RECORD_ID #RECORD_ID#\', nuHash());\n\n\n$sql = \"\n\nCREATE TABLE #TABLE_ID#\nSELECT * \nFROM invoice \nJOIN invoice_item ON invoice.invoice_id = invoice_item.ite_invoice_id \n\n\";\n\nnuRunQuery($sql);\n', 'hide', 'nublank', '', ''),
('nusystemrecords', 'SYSTAB', 'Create System Tables', 'test', '\n$t[] = \'zzzzsys_access_level\';\n$t[] = \'zzzzsys_access_level_form\';\n$t[] = \'zzzzsys_access_level_php\';\n$t[] = \'zzzzsys_access_level_report\';\n$t[] = \'zzzzsys_browse\';\n$t[] = \'zzzzsys_debug\';\n$t[] = \'zzzzsys_event\';\n$t[] = \'zzzzsys_file\';\n$t[] = \'zzzzsys_form\';\n$t[] = \'zzzzsys_format\';\n$t[] = \'zzzzsys_function\';\n$t[] = \'zzzzsys_object\';\n$t[] = \'zzzzsys_php\';\n$t[] = \'zzzzsys_php_library\';\n$t[] = \'zzzzsys_report\';\n$t[] = \'zzzzsys_report_data\';\n$t[] = \'zzzzsys_run_list\';\n$t[] = \'zzzzsys_select\';\n$t[] = \'zzzzsys_select_clause\';\n$t[] = \'zzzzsys_session\';\n$t[] = \'zzzzsys_setup\';\n$t[] = \'zzzzsys_tab\';\n$t[] = \'zzzzsys_timezone\';\n$t[] = \'zzzzsys_translate\';\n$t[] = \'zzzzsys_user\';\n\n\n\nfor($i = 0 ; $i < count($t) ; $i++){\n    \n    $table  = $t[$i];\n    \n    nuRunQuery(\"DROP TABLE IF EXISTS sys_$table\");\n    nuRunQuery(\"CREATE TABLE sys_$table SELECT * FROM $table\");\n    \n}\n\n//-- KEEP FORM with ids that start with \'nu\'\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_form \nWHERE zzzzsys_form_id NOT LIKE \'nu%\' \n\";\n\nnuRunQuery($s);\n\n//-- KEEP TABs from FORMs with ids that start with \'nu\'\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_tab \nWHERE syt_zzzzsys_form_id NOT IN (SELECT zzzzsys_form_id FROM sys_zzzzsys_form)\n\";\n\nnuRunQuery($s);\n\n//-- KEEP OBJECTs from TABs where FORMs with ids that start with \'nu\'\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_object \nWHERE sob_all_zzzzsys_tab_id NOT IN (SELECT zzzzsys_tab_id FROM sys_zzzzsys_tab)\n\";\n\nnuRunQuery($s);\n\n//-- KEEP PHP with ids that start with \'nu\' or match the above OBJECT list.\n\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_php \nWHERE sph_zzzzsys_form_id NOT LIKE \'nu%\'\nAND sph_zzzzsys_form_id NOT IN (SELECT zzzzsys_object_id FROM sys_zzzzsys_object)\n\";\n\nnuRunQuery($s);\n\n//-- ADD PHP_LIBRARY records to PHP that links to ids that start with \'nu\'.\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_php \nWHERE sph_zzzzsys_form_id NOT LIKE \'nu%\'\nAND sph_zzzzsys_form_id NOT IN (SELECT zzzzsys_object_id FROM sys_zzzzsys_object)\n\";\n\nnuRunQuery($s);\n\n\n//-- PHP LIBRARY\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_php_library \nWHERE spl_zzzzsys_php_id NOT IN (SELECT zzzzsys_php_id FROM sys_zzzzsys_php)\n\";\n\nnuRunQuery($s);\n\n//-- KEEP BROWSEs from FORMs with ids that start with \'nu\'\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_browse \nWHERE sbr_zzzzsys_form_id NOT IN (SELECT zzzzsys_form_id FROM sys_zzzzsys_form)\n\";\n\nnuRunQuery($s);\n\n\n//-- KEEP EVENTs, from OBJECTs, from FORMs with ids that start with \'nu\'\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_event \nWHERE sev_zzzzsys_object_id NOT IN (SELECT zzzzsys_object_id FROM sys_zzzzsys_object)\n\";\n\nnuRunQuery($s);\n\n\n\n//-- empty all other sys tables\n\n$d[] = \'zzzzsys_access_level\';\n$d[] = \'zzzzsys_access_level_form\';\n$d[] = \'zzzzsys_access_level_php\';\n$d[] = \'zzzzsys_access_level_report\';\n$d[] = \'zzzzsys_debug\';\n$d[] = \'zzzzsys_file\';\n$d[] = \'zzzzsys_format\';\n$d[] = \'zzzzsys_function\';\n$d[] = \'zzzzsys_select\';\n$d[] = \'zzzzsys_select_clause\';\n$d[] = \'zzzzsys_session\';\n$d[] = \'zzzzsys_setup\';\n$d[] = \'zzzzsys_timezone\';\n$d[] = \'zzzzsys_translate\';\n$d[] = \'zzzzsys_user\';\n\nfor($i = 0 ; $i < count($d) ; $i++){\n    \n    $table  = $d[$i];\n    \n    nuRunQuery(\"TRUNCATE sys_$table\");\n    \n}\n\n\n\n\nprint \'Done!\';\n\n\n\n\n\n', 'window', 'nublank', '', ''),
('s15000619240272', 'a', 'a', 'a', ' ', 'window', 'nublank', '', ''),
('58a08a1abc4782c_BS', '58a08a1abc4782c_BS', 'System PHP', 'nubuilder', '', '', '', '1', ''),
('nuphp_BE', 'nuphp_BE', 'System PHP', 'nubuilder', '$rid    = \'#RECORD_ID#\';\n\nif($rid != \'-1\' and $rid != \'-2\'){ \n    \n    $s      = \"SELECT * FROM zzzzsys_php WHERE zzzzsys_php_id = \'$rid\'\";\n    $t      = nuRunQuery($s);\n    $r      = db_fetch_object($t);\n    \n    if(db_num_rows($t) == 0){\n    \n        $s              = \"\n        INSERT INTO zzzzsys_php\n        (\n            zzzzsys_php_id,\n            sph_code,\n            sph_description,\n            sph_group,\n            sph_system\n        )\n        VALUES\n        (\n            \'$rid\', \n            \'$rid\', \n            \'System PHP\', \n            \'nubuilder\', \n            \'1\'\n        )\n        \";\n        \n        nuRunQuery($s);\n        \n    }\n    \n}\n\n', '', '', '1', ''),
('s15002748645445', 'UPGTAB', 'Update from System Tables', 'test', '\n$t[] = \'zzzzsys_access_level\';\n$t[] = \'zzzzsys_access_level_form\';\n$t[] = \'zzzzsys_access_level_php\';\n$t[] = \'zzzzsys_access_level_report\';\n$t[] = \'zzzzsys_browse\';\n$t[] = \'zzzzsys_debug\';\n$t[] = \'zzzzsys_event\';\n$t[] = \'zzzzsys_file\';\n$t[] = \'zzzzsys_form\';\n$t[] = \'zzzzsys_format\';\n$t[] = \'zzzzsys_function\';\n$t[] = \'zzzzsys_object\';\n$t[] = \'zzzzsys_php\';\n$t[] = \'zzzzsys_php_library\';\n$t[] = \'zzzzsys_report\';\n$t[] = \'zzzzsys_report_data\';\n$t[] = \'zzzzsys_run_list\';\n$t[] = \'zzzzsys_select\';\n$t[] = \'zzzzsys_select_clause\';\n$t[] = \'zzzzsys_session\';\n$t[] = \'zzzzsys_setup\';\n$t[] = \'zzzzsys_tab\';\n$t[] = \'zzzzsys_timezone\';\n$t[] = \'zzzzsys_translate\';\n$t[] = \'zzzzsys_user\';\n\n\n\nfor($i = 0 ; $i < count($t) ; $i++){\n    \n    $table  = $t[$i];\n    \n    nuRunQuery(\"DROP TABLE IF EXISTS sys_$table\");\n    nuRunQuery(\"CREATE TABLE sys_$table SELECT * FROM $table\");\n    \n}\n\n//-- KEEP FORM with ids that start with \'nu\'\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_form \nWHERE zzzzsys_form_id NOT LIKE \'nu%\' \n\";\n\nnuRunQuery($s);\n\n//-- KEEP TABs from FORMs with ids that start with \'nu\'\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_tab \nWHERE syt_zzzzsys_form_id NOT IN (SELECT zzzzsys_form_id FROM sys_zzzzsys_form)\n\";\n\nnuRunQuery($s);\n\n//-- KEEP OBJECTs from TABs where FORMs with ids that start with \'nu\'\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_object \nWHERE sob_all_zzzzsys_tab_id NOT IN (SELECT zzzzsys_tab_id FROM sys_zzzzsys_tab)\n\";\n\nnuRunQuery($s);\n\n//-- KEEP PHP with ids that start with \'nu\' or match the above OBJECT list.\n\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_php \nWHERE sph_zzzzsys_form_id NOT LIKE \'nu%\'\nAND sph_zzzzsys_form_id NOT IN (SELECT zzzzsys_object_id FROM sys_zzzzsys_object)\n\";\n\nnuRunQuery($s);\n\n//-- ADD PHP_LIBRARY records to PHP that links to ids that start with \'nu\'.\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_php \nWHERE sph_zzzzsys_form_id NOT LIKE \'nu%\'\nAND sph_zzzzsys_form_id NOT IN (SELECT zzzzsys_object_id FROM sys_zzzzsys_object)\n\";\n\nnuRunQuery($s);\n\n\n//-- PHP LIBRARY\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_php_library \nWHERE spl_zzzzsys_php_id NOT IN (SELECT zzzzsys_php_id FROM sys_zzzzsys_php)\n\";\n\nnuRunQuery($s);\n\n//-- KEEP BROWSEs from FORMs with ids that start with \'nu\'\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_browse \nWHERE sbr_zzzzsys_form_id NOT IN (SELECT zzzzsys_form_id FROM sys_zzzzsys_form)\n\";\n\nnuRunQuery($s);\n\n\n//-- KEEP EVENTs, from OBJECTs, from FORMs with ids that start with \'nu\'\n\n$s  =  \"\nDELETE FROM sys_zzzzsys_event \nWHERE sev_zzzzsys_object_id NOT IN (SELECT zzzzsys_object_id FROM sys_zzzzsys_object)\n\";\n\nnuRunQuery($s);\n\n\n\n//-- empty all other sys tables\n\n$d[] = \'zzzzsys_access_level\';\n$d[] = \'zzzzsys_access_level_form\';\n$d[] = \'zzzzsys_access_level_php\';\n$d[] = \'zzzzsys_access_level_report\';\n$d[] = \'zzzzsys_debug\';\n$d[] = \'zzzzsys_file\';\n$d[] = \'zzzzsys_format\';\n$d[] = \'zzzzsys_function\';\n$d[] = \'zzzzsys_select\';\n$d[] = \'zzzzsys_select_clause\';\n$d[] = \'zzzzsys_session\';\n$d[] = \'zzzzsys_setup\';\n$d[] = \'zzzzsys_timezone\';\n$d[] = \'zzzzsys_translate\';\n$d[] = \'zzzzsys_user\';\n\nfor($i = 0 ; $i < count($d) ; $i++){\n    \n    $table  = $d[$i];\n    \n    nuRunQuery(\"TRUNCATE sys_$table\");\n    \n}\n\n\n\n\nprint \'Done!\';\n\n\n\n\n\n', 'window', 'nublank', '', ''),
('58d3719f55819e7_BS', '58d3719f55819e7_BS', 'System PHP', '', '//', '', '', '1', ''),
('56773cb405f4913_BS', '56773cb405f4913_BS', 'System PHP', '', 'nudebug(nusubformobject(\'\'));', '', '', '1', '');

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
('574b9845a681d27', '1', 'r', 'aaa', 's14988837505592', 'nublank', '{\"top\":30,\"left\":30,\"bottom\":260,\"right\":30,\"width\":210,\"height\":297,\"paper\":\"A4\",\"orientation\":\"P\",\"groups\":[{\"sortField\":\"Detail\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":151,\"label\":\"Detail Header\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[{\"id\":\"obj1001\",\"objectType\":\"image\",\"backgroundColor\":\"white\",\"borderColor\":\"black\",\"borderWidth\":\"0\",\"fieldName\":\"sfi_json\",\"fontColor\":\"black\",\"fontFamily\":\"Arial\",\"fontSize\":\"10\",\"fontWeight\":\"\",\"format\":\"N|$ 1,000.00\",\"textAlign\":\"right\",\"image\":\"\",\"group\":0,\"section\":0,\"left\":465,\"top\":24,\"height\":105,\"width\":200,\"zIndex\":124,\"minRows\":0,\"maxRows\":0,\"selected\":0,\"name\":\"obj1001\"},{\"id\":\"obj1002\",\"objectType\":\"image\",\"backgroundColor\":\"white\",\"borderColor\":\"black\",\"borderWidth\":\"0\",\"fieldName\":\"Image:Logo\",\"fontColor\":\"black\",\"fontFamily\":\"Arial\",\"fontSize\":\"10\",\"fontWeight\":\"\",\"format\":\"N|$ 1,000.00\",\"textAlign\":\"right\",\"image\":\"\",\"group\":0,\"section\":0,\"left\":169,\"top\":25,\"height\":105,\"width\":200,\"zIndex\":124,\"minRows\":0,\"maxRows\":0,\"selected\":0,\"name\":\"obj1002\"}]}]},{\"sortField\":\"Report\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":30,\"height\":1,\"label\":\"Report Header\",\"page_break\":0,\"margins\":2,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":190,\"height\":1,\"label\":\"Report Footer\",\"page_break\":0,\"margins\":10,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"Page\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":70,\"height\":201,\"label\":\"Page Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[{\"id\":\"obj1004\",\"objectType\":\"image\",\"backgroundColor\":\"white\",\"borderColor\":\"black\",\"borderWidth\":\"0\",\"fieldName\":\"sfi_json\",\"fontColor\":\"black\",\"fontFamily\":\"Arial\",\"fontSize\":\"10\",\"fontWeight\":\"\",\"format\":\"N|$ 1,000.00\",\"textAlign\":\"right\",\"image\":\"\",\"group\":0,\"section\":0,\"left\":480,\"top\":40,\"height\":105,\"width\":200,\"zIndex\":124,\"minRows\":0,\"maxRows\":0,\"selected\":0,\"name\":\"obj1004\"},{\"id\":\"obj1003\",\"objectType\":\"image\",\"backgroundColor\":\"white\",\"borderColor\":\"black\",\"borderWidth\":\"0\",\"fieldName\":\"Image:Logo\",\"fontColor\":\"black\",\"fontFamily\":\"Arial\",\"fontSize\":\"10\",\"fontWeight\":\"\",\"format\":\"N|$ 1,000.00\",\"textAlign\":\"right\",\"image\":\"\",\"group\":0,\"section\":0,\"left\":183,\"top\":42,\"height\":105,\"width\":200,\"zIndex\":124,\"minRows\":0,\"maxRows\":0,\"selected\":0,\"name\":\"obj1003\"}]},{\"id\":\"\",\"top\":150,\"height\":40,\"label\":\"Page Footer\",\"page_break\":0,\"margins\":8,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"sfi_code\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\"sfi_code Header\",\"page_break\":\"1\",\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\"sfi_code Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}],\"groupBy\":\"a\"},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}],\"groupBy\":\"a\"},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]}],\"currentGroup\":0,\"selected\":[\"obj1003\"],\"setFocus\":\"fieldName\"}'),
('s14990193555021', 'INV', 'Invoice', 'test', 's15011771625105', 'nublank', '{\"top\":30,\"left\":30,\"bottom\":260,\"right\":30,\"width\":210,\"height\":297,\"paper\":\"A4\",\"orientation\":\"P\",\"groups\":[{\"sortField\":\"Detail\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":35,\"label\":\"Detail Header\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[{\"id\":\"obj1001\",\"objectType\":\"field\",\"backgroundColor\":\"white\",\"borderColor\":\"black\",\"borderWidth\":\"0\",\"fieldName\":\"inv_number\",\"fontColor\":\"black\",\"fontFamily\":\"Arial\",\"fontSize\":\"10\",\"fontWeight\":\"\",\"format\":\"\",\"textAlign\":\"left\",\"image\":\"\",\"group\":0,\"section\":0,\"left\":250,\"top\":9,\"height\":22,\"width\":174,\"zIndex\":124,\"minRows\":0,\"maxRows\":0,\"selected\":0,\"name\":\"obj1001\"},{\"id\":\"obj1002\",\"objectType\":\"field\",\"backgroundColor\":\"white\",\"borderColor\":\"black\",\"borderWidth\":\"0\",\"fieldName\":\"inv_date\",\"fontColor\":\"black\",\"fontFamily\":\"Arial\",\"fontSize\":\"10\",\"fontWeight\":\"\",\"format\":\"\",\"textAlign\":\"left\",\"image\":\"\",\"group\":0,\"section\":0,\"left\":24,\"top\":5,\"height\":22,\"width\":174,\"zIndex\":124,\"minRows\":0,\"maxRows\":0,\"selected\":0,\"name\":\"obj1002\"}]}]},{\"sortField\":\"Report\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":30,\"height\":40,\"label\":\"Report Header\",\"page_break\":0,\"margins\":2,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":190,\"height\":40,\"label\":\"Report Footer\",\"page_break\":0,\"margins\":10,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"Page\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":70,\"height\":40,\"label\":\"Page Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":40,\"label\":\"Page Footer\",\"page_break\":0,\"margins\":8,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]}],\"currentGroup\":0,\"selected\":[\"obj1001\",\"obj1002\"],\"setFocus\":\"fieldName\"}'),
('s14988649278865', '2', '2', 'aaa', '57578be0057a49f', 'nublank', '{\"top\":30,\"left\":30,\"bottom\":260,\"right\":30,\"width\":210,\"height\":297,\"paper\":\"A4\",\"orientation\":\"P\",\"groups\":[{\"sortField\":\"Detail\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":54,\"label\":\"Detail Header\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"Report\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":30,\"height\":1,\"label\":\"Report Header\",\"page_break\":0,\"margins\":2,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":190,\"height\":1,\"label\":\"Report Footer\",\"page_break\":0,\"margins\":10,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"Page\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":70,\"height\":159,\"label\":\"Page Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[{\"id\":\"obj1001\",\"objectType\":\"image\",\"backgroundColor\":\"white\",\"borderColor\":\"black\",\"borderWidth\":\"0\",\"fieldName\":\"Image:FLOW\",\"fontColor\":\"black\",\"fontFamily\":\"Arial\",\"fontSize\":\"10\",\"fontWeight\":\"\",\"format\":\"N|$ 1,000.00\",\"textAlign\":\"right\",\"image\":\"\",\"group\":0,\"section\":0,\"left\":492,\"top\":15,\"height\":105,\"width\":200,\"zIndex\":124,\"minRows\":0,\"maxRows\":0,\"selected\":0,\"name\":\"obj1001\"}]},{\"id\":\"\",\"top\":150,\"height\":40,\"label\":\"Page Footer\",\"page_break\":0,\"margins\":8,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"inv_number\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\"inv_number Header\",\"page_break\":\"1\",\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\"inv_number Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}],\"groupBy\":\"a\"},{\"sortField\":\"inv_number\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\"inv_number Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\"inv_number Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}],\"groupBy\":\"a\"},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]},{\"sortField\":\"\",\"sortBy\":\"a\",\"sections\":[{\"id\":\"\",\"top\":110,\"height\":0,\"label\":\" Header\",\"page_break\":0,\"margins\":4,\"color\":\"#FFFFFF\",\"objects\":[]},{\"id\":\"\",\"top\":150,\"height\":0,\"label\":\" Footer\",\"page_break\":0,\"margins\":6,\"color\":\"#FFFFFF\",\"objects\":[]}]}],\"currentGroup\":0,\"selected\":[\"obj1001\"],\"setFocus\":\"fieldName\"}');

-- --------------------------------------------------------

--
-- Stand-in structure for view `zzzzsys_report_data`
-- (See below for the actual view)
--
CREATE TABLE `zzzzsys_report_data` (
`id` varchar(25)
,`code` varchar(300)
,`description` varchar(300)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `zzzzsys_run_list`
-- (See below for the actual view)
--
CREATE TABLE `zzzzsys_run_list` (
`id` varchar(25)
,`run` varchar(9)
,`code` varchar(300)
,`description` varchar(300)
);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_select`
--

CREATE TABLE `zzzzsys_select` (
  `zzzzsys_select_id` varchar(25) NOT NULL,
  `sse_description` varchar(300) NOT NULL,
  `sse_json` mediumtext NOT NULL,
  `sse_sql` mediumtext NOT NULL,
  `sse_resize` int(11) NOT NULL,
  `sse_system` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zzzzsys_select`
--

INSERT INTO `zzzzsys_select` (`zzzzsys_select_id`, `sse_description`, `sse_json`, `sse_sql`, `sse_resize`, `sse_system`) VALUES
('s14967315763149_BR', '', '{\"tables\":[{\"id\":\"boxc15000515402241272\",\"position\":{\"top\":16,\"left\":142},\"tablename\":\"company\",\"alias\":\"\",\"checkall\":true,\"checkboxes\":[false,false,false,false,false,false,false,false,false,false,false,false,false,false]}],\"joins\":{}}', 'SELECT\n    company.*\n\nFROM\n    company\n\nWHERE\n    ((company.com_name != \'0\'))\n\n', 0, '1'),
('s15005032004934', 'invoice and items', '{\"tables\":[{\"id\":\"boxc15005029022534058\",\"position\":{\"top\":17.98958396911621,\"left\":105.98958587646484},\"tablename\":\"invoice\",\"alias\":\"\",\"checkall\":true,\"checkboxes\":[false,false,false,false,false]},{\"id\":\"boxc15005029060744059\",\"position\":{\"top\":33.989585876464844,\"left\":361.9895935058594},\"tablename\":\"invoice_item\",\"alias\":\"\",\"checkall\":true,\"checkboxes\":[false,false,false,false,false,false]}],\"joins\":{\"field_0_boxc15005029022534058--field_1_boxc15005029060744059\":\"\"}}', 'SELECT\n    invoice.*,\n    invoice_item.*\n\nFROM\n    invoice\n        JOIN invoice ON invoice.invoice_id = invoice_item.ite_invoice_id\n\nWHERE\n    (invoice.invoice_id = \\\'#RECORD_ID#\\\')\n\n', 100, ''),
('58d3719f55819e7_BR', '', '{\"tables\":[{\"id\":\"boxc15007494122195907\",\"position\":{\"top\":30,\"left\":108},\"tablename\":\"invoice\",\"alias\":\"\",\"checkall\":true,\"checkboxes\":[false,false,false,false,false]},{\"id\":\"boxc15007494144745908\",\"position\":{\"top\":40,\"left\":400},\"tablename\":\"invoice_item\",\"alias\":\"\",\"checkall\":true,\"checkboxes\":[false,false,false,false,false,false]}],\"joins\":{\"field_0_boxc15007494122195907--field_1_boxc15007494144745908\":\"\"}}', 'SELECT\n    invoice.*,\n    invoice_item.*\n\nFROM\n    invoice\n        JOIN invoice_item ON invoice.invoice_id = invoice_item.ite_invoice_id\n', 0, '1'),
('s15011771625105', 'invoice', '{\"tables\":[{\"id\":\"boxc15011770998787406\",\"position\":{\"top\":25,\"left\":22},\"tablename\":\"invoice\",\"alias\":\"\",\"checkall\":true,\"checkboxes\":[false,false,false,false,false]},{\"id\":\"boxc15011774172652840\",\"position\":{\"top\":78,\"left\":274},\"tablename\":\"invoice_item\",\"alias\":\"\",\"checkall\":true,\"checkboxes\":[false,false,false,false,false,false]}],\"joins\":{\"field_1_boxc15011774172652840--field_0_boxc15011770998787406\":\"\"}}', 'SELECT\n    invoice.*,\n    invoice_item.*\n\nFROM\n    invoice\n        JOIN invoice_item ON invoice_item.ite_invoice_id = invoice.invoice_id\n\nWHERE\n    (invoice.invoice_id = \'#RECORD_ID#\')\n\n', 50, '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_select_clause`
--

CREATE TABLE `zzzzsys_select_clause` (
  `zzzzsys_select_clause_id` varchar(25) NOT NULL,
  `ssc_zzzzsys_select_id` varchar(25) NOT NULL,
  `ssc_type` varchar(300) NOT NULL,
  `ssc_field` varchar(500) NOT NULL,
  `ssc_clause` varchar(500) NOT NULL,
  `ssc_sort` varchar(10) NOT NULL,
  `ssc_order` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zzzzsys_select_clause`
--

INSERT INTO `zzzzsys_select_clause` (`zzzzsys_select_clause_id`, `ssc_zzzzsys_select_id`, `ssc_type`, `ssc_field`, `ssc_clause`, `ssc_sort`, `ssc_order`) VALUES
('s14967003501133', 's14965615765327', '3', 'invoice.inv_number', '', 'ASC', ''),
('s14967003501131', 's14965615765327', '4', 'invoice.inv_number', '<999999', '', ''),
('s14967003501132', 's14965615765327', '2', 'invoice.inv_date', '', 'ASC', ''),
('s14967003501130', 's14965615765327', '1', 'company.com_business_id', '>1', '', '1'),
('s14977103339508', 's14965615765327', '1', 'test_table.text2', '= \'hello\'', '', '2'),
('s14977130885112', 's14966166430334', '1', 'invoice.inv_number', '>55', '', ''),
('s14984166437799', 's14968332683656_BR', '2', 'color.col_code', '', 'ASC', ''),
('s14984166437800', 's14968332683656_BR', '3', 'color.col_description', '', 'ASC', ''),
('s14984166437801', 's14968332683656_BR', '1', ' ', '1 ', '', ''),
('s14984187132461', 'nuselect_BR', '3', 'zzzzsys_select.sse_description', '', 'ASC', ''),
('s14984187132462', 'nuselect_BR', '1', 'zzzzsys_select.sse_system', ' != 1 ', '', ''),
('s15011766911729', 's15005032004934', '1', 'invoice.invoice_id', ' = \'#RECORD_ID#\'', '', ''),
('s15011771625106', 's15011771625105', '1', 'invoice.invoice_id', ' = \'#RECORD_ID#\'', '', ''),
('s15016663535013', 's14967315763149_BR', '1', 'company.com_name', ' != \'0\'', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_session`
--

CREATE TABLE `zzzzsys_session` (
  `zzzzsys_session_id` varchar(25) NOT NULL DEFAULT '',
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
  `set_language` varchar(20) NOT NULL,
  `set_smtp_username` varchar(255) DEFAULT NULL,
  `set_smtp_password` varchar(255) DEFAULT NULL,
  `set_smtp_host` varchar(255) DEFAULT NULL,
  `set_smtp_from_address` varchar(255) DEFAULT NULL,
  `set_smtp_from_name` varchar(255) DEFAULT NULL,
  `set_smtp_port` int(4) DEFAULT NULL,
  `set_smtp_use_ssl` char(1) DEFAULT '1',
  `set_fonts` text NOT NULL,
  `set_header` longtext NOT NULL,
  `set_denied` varchar(1) NOT NULL,
  `set_splash` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_setup`
--

INSERT INTO `zzzzsys_setup` (`zzzzsys_setup_id`, `set_title`, `set_time_out_minutes`, `set_zzzzsys_timezone_id`, `set_language`, `set_smtp_username`, `set_smtp_password`, `set_smtp_host`, `set_smtp_from_address`, `set_smtp_from_name`, `set_smtp_port`, `set_smtp_use_ssl`, `set_fonts`, `set_header`, `set_denied`, `set_splash`) VALUES
('1', 'NOT USED DELETED THIS FIELD', 120, '52819fa94bc9a93', '', '', '', '', '', '', 0, '', '', '\nfunction nuHeaderTest(){\n\n    console.log(\'Functions placed here before a closing script tag are available anywhere in nuBuilder Forte\');\n\n}\n\n\n\n</script>\n<script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>\n<script>\n', '0', '1');

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
('569dc4ed270f08a', 'nuhome', 'Setup', 10),
('568b508eecf5dee', '568b508eec00d80', 'Business', 7),
('5678ab2c49bd810', '5678ab2c48c5c41', 'Employee', 10),
('574b964941d3d1a', 'nubuildreport', 'Report', 10),
('570b19bf5981983', 'nubrowse', 'Browse', 10),
('570d90df5ce8e1a', 'nuobject', 'All', 10),
('570d90df60880c2', 'nuobject', 'Run', 20),
('570d90df63e6972', 'nuobject', 'Display', 30),
('570d90df670db61', 'nuobject', 'Select', 40),
('570d90df6a2c12a', 'nuobject', 'Lookup', 50),
('570d90df6d35fde', 'nuobject', 'Subform', 60),
('570d90df707867b', 'nuobject', 'Input', 80),
('570d90df73d3a2a', 'nuobject', 'HTML', 90),
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
('5851cf915a1c653', 'nuobject', 'Calc', 100),
('58a08a91c9b6df4', '58a08a91c9b59a9', 'Rows', 10),
('58af6b019f658f4', 'nuformat', 'Format', 10),
('58b74d9dbd80af7', 'nuformatcurrency', 'Currency', 10),
('nutesttab', 'nuhome', 'Testing', 30),
('58c19d9bc559aca', 'nuform', 'Custom Code', 30),
('58c63d38b88dbab', 'nuobject', 'Custom Code', 110),
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
('s14914269237459', 'nusample', 'Sample Objects', 10),
('s14920304604158', '#new_id#', 'Main', 10),
('s14981556542224', 's14981556542223', 'Main', 10),
('s14921253336084', 'nufile', 'Main', 10),
('s14921413660226', 'nuobject', 'Image', 70),
('s14930617882374', 'nuselect', 'SQL', 10),
('s14942650435662', '', 'Main', 10),
('s14941738229683', '', 'Main', 10),
('s14937641259182', 's14937641259181', 'Main', 10),
('s14937641259183', 's14937641259181', 'Browse', 20),
('s14937641259184', 's14937641259181', 'Custom Code', 30),
('s14960741898410', 'nuclause', 'Clause', 10),
('s14967315763150', 's14967315763149', 'Address', 10),
('s14967315763151', 's14967315763149', 'Test', 20),
('s14967315763152', 's14967315763149', 'Main', 30),
('s14968332683657', 's14968332683656', 'User', 10),
('s14968332683658', 's14968332683656', 'Procedures', 20),
('s14968332683659', 's14968332683656', 'Reports', 30),
('s14981564175454', 's14981564175453', 'Main', 10),
('s14981568046397', 's14981568046395', 'Main', 10),
('s15003463994286', 'nuuserhome', 'Main', 10),
('s15014147222002', 's15014147222001', 'Main', 10),
('s15017688442341', 's15017688442340', 'Main', 10);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_timezone`
--

CREATE TABLE `zzzzsys_timezone` (
  `zzzzsys_timezone_id` varchar(25) NOT NULL,
  `stz_timezone` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_timezone`
--

INSERT INTO `zzzzsys_timezone` (`zzzzsys_timezone_id`, `stz_timezone`) VALUES
('5281a1e6d64f54c', 'WET'),
('5281a1e5d5896c1', 'W-SU'),
('5281a1c4af3715e', 'Pacific/Saipan'),
('5281a1d1c5090a1', 'ROC'),
('5281a1c1ac7d9a4', 'Pacific/Ponape'),
('5281a1e7d719d77', 'Zulu'),
('5281a18f7335833', 'Indian/Mahe'),
('5281a1c3ae74c55', 'Pacific/Rarotonga'),
('5281a1c2adaeefc', 'Pacific/Port_Moresby'),
('5281a1978349c3b', 'Japan'),
('5281a19480b8eb3', 'Iran'),
('5281a1c0abb94a6', 'Pacific/Pohnpei'),
('5281a1958174e03', 'Israel'),
('5281a1968236672', 'Jamaica'),
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
('5281a18167364aa', 'GMT'),
('5281a1896d7af41', 'Indian/Antananarivo'),
('5281a18a6e38d94', 'Indian/Chagos'),
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
('5281a16b55183d6', 'Europe/San_Marino'),
('5281a17059b7e00', 'Europe/Stockholm'),
('5281a16c55c3e49', 'Europe/Sarajevo'),
('5281a16d567a909', 'Europe/Simferopol'),
('5281a16e578c5ca', 'Europe/Skopje'),
('5281a16f58a0561', 'Europe/Sofia'),
('5281a1e4d4c2232', 'UTC'),
('5281a16953c1632', 'Europe/Rome'),
('5281a16a546eb1c', 'Europe/Samara'),
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
('5281a11b005e55d', 'EET'),
('5281a1dbccf3617', 'US/East-Indiana'),
('5281a1d7c9af2ed', 'US/Alaska'),
('5281a1d3c69078e', 'Singapore'),
('5281a1d6c8ec435', 'Universal'),
('5281a119f3e04e9', 'Cuba'),
('5281a121045accb', 'Etc/GMT+0'),
('5281a11f031f564', 'EST5EDT'),
('5281a11d01970ad', 'Eire'),
('5281a115f1557e0', 'CET'),
('5281a11c00fa005', 'Egypt'),
('5281a11e027c729', 'EST'),
('5281a112e94ed84', 'Canada/Pacific'),
('5281a113e9f0daa', 'Canada/Saskatchewan'),
('5281a116f1f4f2e', 'Chile/Continental'),
('5281a118f33df3d', 'CST6CDT'),
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
('5281a0eacf865b6', 'Atlantic/Faroe'),
('5281a0e4cb41fb8', 'Asia/Yerevan'),
('5281a0e7cd08d1f', 'Atlantic/Canary'),
('5281a0e8cdf71cd', 'Atlantic/Cape_Verde'),
('5281a0e6cc39d74', 'Atlantic/Bermuda'),
('5281a0eed19481b', 'Atlantic/South_Georgia'),
('5281a0e0c8a8864', 'Asia/Vientiane'),
('5281a0e2c9f8bff', 'Asia/Yakutsk'),
('5281a0dec72d2c8', 'Asia/Urumqi'),
('5281a0dbc498d19', 'Asia/Ujung_Pandang'),
('5281a0dfc802643', 'Asia/Ust-Nera'),
('5281a0e5cbd2ab3', 'Atlantic/Azores'),
('5281a0e3ca96355', 'Asia/Yekaterinburg'),
('5281a0e1c97ee98', 'Asia/Vladivostok'),
('5281a0dac410be3', 'Asia/Tokyo'),
('5281a0d8b7ca13e', 'Asia/Thimbu'),
('5281a0ddc5cffcb', 'Asia/Ulan_Bator'),
('5281a0dcc5452d8', 'Asia/Ulaanbaatar'),
('5281a0d7b738dfa', 'Asia/Tel_Aviv'),
('5281a0d4b5675f0', 'Asia/Tashkent'),
('5281a1d0c44a02a', 'PST8PDT'),
('5281a1c5aff8b7a', 'Pacific/Samoa'),
('5281a1cdc1ce40f', 'Poland'),
('5281a1d4c757c4b', 'Turkey'),
('5281a1b9a65d08d', 'Pacific/Nauru'),
('5281a1caba3a73f', 'Pacific/Wake'),
('5281a1cfc380ffd', 'PRC'),
('5281a1ccc0a2ed7', 'Pacific/Yap'),
('5281a1bba7e9f84', 'Pacific/Norfolk'),
('5281a1cec2b8c7b', 'Portugal'),
('5281a1cbbb03788', 'Pacific/Wallis'),
('5281a1baa7229e2', 'Pacific/Niue'),
('5281a1c9b9b4eb9', 'Pacific/Truk'),
('5281a1bca8aff1f', 'Pacific/Noumea'),
('5281a1b8a543c50', 'Pacific/Midway'),
('5281a1b5a2a9fe4', 'Pacific/Kwajalein'),
('5281a1b6a366199', 'Pacific/Majuro'),
('5281a1b7a41e352', 'Pacific/Marquesas'),
('5281a1b3a0d3019', 'Pacific/Kiritimati'),
('5281a1b4a18cdc0', 'Pacific/Kosrae'),
('5281a1b19b0cfd2', 'Pacific/Honolulu'),
('5281a1ae98d3fae', 'Pacific/Gambier'),
('5281a1b29faa3dd', 'Pacific/Johnston'),
('5281a1b09a4fddd', 'Pacific/Guam'),
('5281a1a7914900c', 'Pacific/Easter'),
('5281a1ad9816446', 'Pacific/Galapagos'),
('5281a1af9991f3e', 'Pacific/Guadalcanal'),
('5281a1ac9755655', 'Pacific/Funafuti'),
('5281a1a18c10637', 'NZ'),
('5281a1ab969470b', 'Pacific/Fiji'),
('5281a1a89202f8f', 'Pacific/Efate'),
('5281a1aa9376832', 'Pacific/Fakaofo'),
('5281a1a690adea0', 'Pacific/Chuuk'),
('5281a1a992be08a', 'Pacific/Enderbury'),
('5281a1a58f97f6b', 'Pacific/Chatham'),
('5281a19f8a9df7c', 'MST7MDT'),
('5281a1a38db68d2', 'Pacific/Apia'),
('5281a1a28cc076a', 'NZ-CHAT'),
('5281a19e88c6791', 'MST'),
('5281a1a48edbfe0', 'Pacific/Auckland'),
('5281a1a08b568c9', 'Navajo'),
('5281a19d8805651', 'Mexico/General'),
('5281a19c8755b50', 'Mexico/BajaSur'),
('5281a19a85d936f', 'MET'),
('5281a141276c8dd', 'Etc/UTC'),
('5281a19985161dc', 'Libya'),
('5281a19b869ac55', 'Mexico/BajaNorte'),
('5281a19884666fe', 'Kwajalein'),
('5281a13f20ea1f3', 'Etc/UCT'),
('5281a1422870f52', 'Etc/Zulu'),
('5281a13a1cdc706', 'Etc/GMT-7'),
('5281a14021ecc1a', 'Etc/Universal'),
('5281a1371a7a768', 'Etc/GMT-4'),
('5281a13c1e901f3', 'Etc/GMT-9'),
('5281a13e1fecf31', 'Etc/Greenwich'),
('5281a13d1f4118d', 'Etc/GMT0'),
('5281a1381b291ad', 'Etc/GMT-5'),
('5281a1351915ab2', 'Etc/GMT-2'),
('5281a13b1dde432', 'Etc/GMT-8'),
('5281a13619c9d77', 'Etc/GMT-3'),
('5281a13317ba384', 'Etc/GMT-13'),
('5281a132170a862', 'Etc/GMT-12'),
('5281a1391bd512c', 'Etc/GMT-6'),
('5281a1341865467', 'Etc/GMT-14'),
('5281a13015ad04a', 'Etc/GMT-10'),
('5281a12d0d21e28', 'Etc/GMT+9'),
('5281a12f14f8806', 'Etc/GMT-1'),
('5281a131165c9a8', 'Etc/GMT-11'),
('5281a128097255f', 'Etc/GMT+4'),
('5281a12b0bcc422', 'Etc/GMT+7'),
('5281a12708c2a64', 'Etc/GMT+3'),
('5281a12c0c747f2', 'Etc/GMT+8'),
('5281a126080e0f2', 'Etc/GMT+2'),
('5281a12e0dd3691', 'Etc/GMT-0'),
('5281a12a0b21a7c', 'Etc/GMT+6'),
('5281a1290a6ffbc', 'Etc/GMT+5'),
('5281a12305b7170', 'Etc/GMT+10'),
('5281a12406b3d0a', 'Etc/GMT+11'),
('5281a125075e837', 'Etc/GMT+12'),
('5281a1220508372', 'Etc/GMT+1'),
('5281a12003bd2d8', 'Etc/GMT'),
('5281a1644ab2537', 'Europe/Oslo'),
('5281a168534cbef', 'Europe/Riga'),
('5281a1664c0a464', 'Europe/Podgorica'),
('5281a1654b607a0', 'Europe/Paris'),
('5281a16048033d3', 'Europe/Minsk'),
('5281a1634a06938', 'Europe/Nicosia'),
('5281a162495ae00', 'Europe/Moscow'),
('5281a15e46aa01e', 'Europe/Malta'),
('5281a15f4756ead', 'Europe/Mariehamn'),
('5281a15d459a699', 'Europe/Madrid'),
('5281a15c44ee825', 'Europe/Luxembourg'),
('5281a16148b02d8', 'Europe/Monaco'),
('5281a15942d2df1', 'Europe/Lisbon'),
('5281a15640623f7', 'Europe/Jersey'),
('5281a1574109a27', 'Europe/Kaliningrad'),
('5281a15a4387b4d', 'Europe/Ljubljana'),
('5281a15b443824d', 'Europe/London'),
('5281a1523d9455c', 'Europe/Guernsey'),
('5281a158421be40', 'Europe/Kiev'),
('5281a1533e3ecc9', 'Europe/Helsinki'),
('5281a1553fb3f61', 'Europe/Istanbul'),
('5281a1543ee5f5a', 'Europe/Isle_of_Man'),
('5281a14f3048453', 'Europe/Copenhagen'),
('5281a14e2f9d4cf', 'Europe/Chisinau'),
('5281a1492c3f8d0', 'Europe/Bratislava'),
('5281a15030f2b55', 'Europe/Dublin'),
('5281a1513ce8a90', 'Europe/Gibraltar'),
('5281a14a2d40451', 'Europe/Brussels'),
('5281a14c2e8003e', 'Europe/Budapest'),
('5281a14b2de356d', 'Europe/Bucharest'),
('5281a1482b95f9d', 'Europe/Berlin'),
('5281a14d2ef47a3', 'Europe/Busingen'),
('5281a1472b27ab5', 'Europe/Belgrade'),
('5281a14529a6597', 'Europe/Athens'),
('5281a1462a2183d', 'Europe/Belfast'),
('5281a144293e781', 'Europe/Andorra'),
('52819fa3409d46f', 'Africa/Abidjan'),
('52819fa64a81c45', 'Africa/Algiers'),
('52819fa74aef179', 'Africa/Asmara'),
('5281a14328d7e27', 'Europe/Amsterdam'),
('52819fa44106fdd', 'Africa/Accra'),
('52819fa54a1c5c4', 'Africa/Addis_Ababa'),
('52819faa4c334ed', 'Africa/Bangui'),
('52819fa84b5bed6', 'Africa/Asmera'),
('52819fac4d0b2f3', 'Africa/Bissau'),
('52819fa94bc9a93', 'Africa/Bamako'),
('52819fab4c9ff3f', 'Africa/Banjul'),
('52819faf4e3ea69', 'Africa/Bujumbura'),
('52819fae4dd596d', 'Africa/Brazzaville'),
('52819fb24f7a1a9', 'Africa/Ceuta'),
('52819fad4d6d2ab', 'Africa/Blantyre'),
('52819fb14f0c347', 'Africa/Casablanca'),
('52819fb8520ef05', 'Africa/El_Aaiun'),
('52819fb04ea2165', 'Africa/Cairo'),
('52819fb34feb2b9', 'Africa/Conakry'),
('52819fbb535a8db', 'Africa/Harare'),
('52819fb6512b354', 'Africa/Djibouti'),
('52819fb550bf3bd', 'Africa/Dar_es_Salaam'),
('52819fb4505727a', 'Africa/Dakar'),
('52819fb7519de97', 'Africa/Douala'),
('52819fbc53cc7cb', 'Africa/Johannesburg'),
('52819fbd543bb3d', 'Africa/Juba'),
('52819fba52e8bfe', 'Africa/Gaborone'),
('52819fb9527a466', 'Africa/Freetown'),
('52819fbe54a483a', 'Africa/Kampala'),
('52819fc45965c0d', 'Africa/Lome'),
('52819fc055a94f7', 'Africa/Kigali'),
('52819fc65a72a20', 'Africa/Lubumbashi'),
('52819fc358f7f66', 'Africa/Libreville'),
('52819fc156a0bb9', 'Africa/Kinshasa'),
('52819fbf550c406', 'Africa/Khartoum'),
('52819fc559d1824', 'Africa/Luanda'),
('52819fc75ae5c44', 'Africa/Lusaka'),
('52819fc2584bf74', 'Africa/Lagos     '),
('52819fc85b5ca8c', 'Africa/Malabo'),
('52819fc95bd505d', 'Africa/Maputo'),
('52819fcd5f56d2d', 'Africa/Monrovia'),
('52819fca5e1862c', 'Africa/Maseru'),
('52819fd0608eabc', 'Africa/Niamey'),
('52819fd26198388', 'Africa/Ouagadougou'),
('52819fcc5eebbe0', 'Africa/Mogadishu'),
('52819fcb5e82cb2', 'Africa/Mbabane'),
('52819fd36cef7d3', 'Africa/Porto-Novo'),
('52819fd160f38e7', 'Africa/Nouakchott'),
('52819fce5fbef7c', 'Africa/Nairobi'),
('52819fd56e465c5', 'Africa/Timbuktu'),
('52819fcf6025798', 'Africa/Ndjamena'),
('52819fd76f1d1cf', 'Africa/Tunis'),
('52819fd66eb1b1d', 'Africa/Tripoli'),
('52819fd86f894da', 'Africa/Windhoek'),
('52819fd46d5db96', 'Africa/Sao_Tome'),
('52819fda705d5db', 'America/Anchorage'),
('52819fdf727d3b7', 'America/Argentina/Catamarca'),
('52819fdc713665a', 'America/Antigua'),
('52819fd96ff36de', 'America/Adak'),
('52819fdb70ca47b', 'America/Anguilla'),
('52819fe072e958b', 'America/Argentina/ComodRivadavia'),
('52819fdd71a44c6', 'America/Araguaina'),
('52819fde7211b94', 'America/Argentina/Buenos_Aires'),
('52819fe274021b6', 'America/Argentina/Jujuy'),
('52819fe474f1b3c', 'America/Argentina/Mendoza'),
('52819fe17352bc1', 'America/Argentina/Cordoba'),
('52819fe37477a3e', 'America/Argentina/La_Rioja'),
('52819fe97747d84', 'America/Argentina/Tucuman'),
('52819fe675e3a45', 'America/Argentina/Salta'),
('52819fe5756aca9', 'America/Argentina/Rio_Gallegos'),
('52819fe7765b813', 'America/Argentina/San_Juan'),
('52819fe876d4888', 'America/Argentina/San_Luis'),
('52819fea77c0dbe', 'America/Argentina/Ushuaia'),
('52819fed7926984', 'America/Atikokan'),
('52819fec78b6d98', 'America/Asuncion'),
('52819feb783abf9', 'America/Aruba'),
('52819fee799c9bd', 'America/Atka'),
('52819ff2890b040', 'America/Belem'),
('52819ff087e6620', 'America/Bahia_Banderas'),
('52819fef7a0e5c7', 'America/Bahia'),
('52819ff18856b00', 'America/Barbados'),
('52819ff58a5b604', 'America/Boa_Vista'),
('52819ff68acf15d', 'America/Bogota'),
('52819ff3897c302', 'America/Belize'),
('52819ff489eb768', 'America/Blanc-Sablon'),
('52819ff98c31a7c', 'America/Cambridge_Bay'),
('52819ff88bbf287', 'America/Buenos_Aires'),
('52819ffe8ebf7a8', 'America/Cayenne'),
('52819ff78b49038', 'America/Boise'),
('52819ffd8e40c54', 'America/Catamarca'),
('52819ffc8d8294c', 'America/Caracas'),
('52819ffb8d0e9f3', 'America/Cancun'),
('52819ffa8c9fd3d', 'America/Campo_Grande'),
('52819fff8f3deef', 'America/Cayman'),
('5281a001902eacc', 'America/Chihuahua'),
('5281a0008fb91da', 'America/Chicago'),
('5281a0039121eb5', 'America/Cordoba'),
('5281a007935bea0', 'America/Curacao'),
('5281a00491d04fe', 'America/Costa_Rica'),
('5281a00592545ff', 'America/Creston'),
('5281a00994592a4', 'America/Dawson'),
('5281a00290a5cdf', 'America/Coral_Harbour'),
('5281a00692d3646', 'America/Cuiaba'),
('5281a00893dac77', 'America/Danmarkshavn'),
('5281a00a94e4d56', 'America/Dawson_Creek'),
('5281a00d9672fc4', 'America/Dominica'),
('5281a00b956da59', 'America/Denver'),
('5281a00f976ef28', 'America/Eirunepe'),
('5281a00e96f1a71', 'America/Edmonton'),
('5281a01298eb04c', 'America/Fort_Wayne'),
('5281a00c95f4f78', 'America/Detroit'),
('5281a011986a4c9', 'America/Ensenada'),
('5281a01097ec36c', 'America/El_Salvador'),
('5281a013996e3cc', 'America/Fortaleza'),
('5281a01499ee0d7', 'America/Glace_Bay'),
('5281a0169ae60fb', 'America/Goose_Bay'),
('5281a0159a6738f', 'America/Godthab'),
('5281a01b9d64472', 'America/Guayaquil'),
('5281a021a68ad1b', 'America/Indiana/Knox'),
('5281a01c9de431f', 'America/Guyana'),
('5281a0189be3e29', 'America/Grenada'),
('5281a0199c6344a', 'America/Guadeloupe'),
('5281a0179b64421', 'America/Grand_Turk'),
('5281a01a9ce3844', 'America/Guatemala'),
('5281a01e9ee5729', 'America/Havana'),
('5281a01fa582b0b', 'America/Hermosillo'),
('5281a020a60c1cb', 'America/Indiana/Indianapolis'),
('5281a01d9e64a89', 'America/Halifax'),
('5281a022a70ab7e', 'America/Indiana/Marengo'),
('5281a026b7bd32b', 'America/Indiana/Vincennes'),
('5281a024b6c65d2', 'America/Indiana/Tell_City'),
('5281a02ab9a5642', 'America/Iqaluit'),
('5281a025b743617', 'America/Indiana/Vevay'),
('5281a029b92b8a4', 'America/Inuvik'),
('5281a023a78a9f8', 'America/Indiana/Petersburg'),
('5281a02bba2319a', 'America/Jamaica'),
('5281a02dc3d9b4a', 'America/Juneau'),
('5281a027b83c7b7', 'America/Indiana/Winamac'),
('5281a02ec4b4b08', 'America/Kentucky/Louisville'),
('5281a030c5f7f87', 'America/Knox_IN'),
('5281a028b8b5382', 'America/Indianapolis'),
('5281a02cc3580ca', 'America/Jujuy'),
('5281a037c95acd2', 'America/Maceio'),
('5281a035c860612', 'America/Louisville'),
('5281a033c7667a3', 'America/Lima'),
('5281a02fc57ddcd', 'America/Kentucky/Monticello'),
('5281a034c7e4ccf', 'America/Los_Angeles'),
('5281a031c67163d', 'America/Kralendijk'),
('5281a038c9dae4d', 'America/Managua'),
('5281a032c6ecabc', 'America/La_Paz'),
('5281a039ca5fd3d', 'America/Manaus'),
('5281a036c8dfceb', 'America/Lower_Princes'),
('5281a03ad4029d7', 'America/Marigot'),
('5281a03bd4800a8', 'America/Martinique'),
('5281a03dd56f298', 'America/Mazatlan'),
('5281a03cd4f8d9d', 'America/Matamoros'),
('5281a03ed5eb8a2', 'America/Mendoza'),
('5281a03fd6686ad', 'America/Menominee'),
('5281a043d874e50', 'America/Miquelon'),
('5281a040d6e2a6f', 'America/Merida'),
('5281a044d8f40df', 'America/Moncton'),
('5281a041d776ec4', 'America/Metlakatla'),
('5281a046d9eebc9', 'America/Montevideo'),
('5281a04adbebf83', 'America/New_York'),
('5281a047da6f51b', 'America/Montreal'),
('5281a048daec32f', 'America/Montserrat'),
('5281a045d96f56b', 'America/Monterrey'),
('5281a042d7f6261', 'America/Mexico_City'),
('5281a049db6c822', 'America/Nassau'),
('5281a050e5ec3bf', 'America/North_Dakota/New_Salem'),
('5281a04ce3791ab', 'America/Nome'),
('5281a04fe56a837', 'America/North_Dakota/Center'),
('5281a04ee4e9d8a', 'America/North_Dakota/Beulah'),
('5281a04be29de22', 'America/Nipigon'),
('5281a051e66c226', 'America/Ojinaga'),
('5281a04de4621e6', 'America/Noronha'),
('5281a059011444a', 'America/Porto_Acre'),
('5281a058008a8ad', 'America/Port_of_Spain'),
('5281a052e6eb6b1', 'America/Panama'),
('5281a055e87432b', 'America/Phoenix'),
('5281a056f3e39a9', 'America/Port-au-Prince'),
('5281a05a019da2e', 'America/Porto_Velho'),
('5281a053e771ebf', 'America/Pangnirtung'),
('5281a054e7f5d06', 'America/Paramaribo'),
('5281a05b02270ec', 'America/Puerto_Rico'),
('5281a05d0abd421', 'America/Rankin_Inlet'),
('5281a05c02b2d2e', 'America/Rainy_River'),
('5281a05f0ba9fac', 'America/Regina'),
('5281a05e0b23bbb', 'America/Recife'),
('5281a0610cf1e16', 'America/Rio_Branco'),
('5281a0600c2a582', 'America/Resolute'),
('5281a06c18cefca', 'America/St_Johns'),
('5281a0630df269f', 'America/Santa_Isabel'),
('5281a0660f81e90', 'America/Santo_Domingo'),
('5281a0640e7c243', 'America/Santarem'),
('5281a0650f00b2b', 'America/Santiago'),
('5281a0620d6e73e', 'America/Rosario'),
('5281a0671001fe9', 'America/Sao_Paulo'),
('5281a06a17c07af', 'America/Sitka'),
('5281a06b184793e', 'America/St_Barthelemy'),
('5281a0711bdc9cb', 'America/Swift_Current'),
('5281a0691738a17', 'America/Shiprock'),
('5281a06816b015a', 'America/Scoresbysund'),
('5281a0731cfe848', 'America/Thule'),
('5281a06e19dcad8', 'America/St_Lucia'),
('5281a06d195ad37', 'America/St_Kitts'),
('5281a06f1ab84cc', 'America/St_Thomas'),
('5281a0761efa34f', 'America/Toronto'),
('5281a0721c6d284', 'America/Tegucigalpa'),
('5281a0751e22f0d', 'America/Tijuana'),
('5281a0771f90738', 'America/Tortola'),
('5281a0701b4895b', 'America/St_Vincent'),
('5281a07f253cc33', 'Antarctica/Davis'),
('5281a0782119266', 'America/Vancouver'),
('5281a07921a60bc', 'America/Virgin'),
('5281a0741d90667', 'America/Thunder_Bay'),
('5281a07c2387969', 'America/Yakutat'),
('5281a07b22f5dc0', 'America/Winnipeg'),
('5281a07a2262248', 'America/Whitehorse'),
('5281a07d24138e6', 'America/Yellowknife'),
('5281a08126af775', 'Antarctica/Macquarie'),
('5281a07e24a3926', 'Antarctica/Casey'),
('5281a082274083d', 'Antarctica/Mawson'),
('5281a0832b865db', 'Antarctica/McMurdo'),
('5281a080261a293', 'Antarctica/DumontDUrville'),
('5281a0892ef8f3e', 'Arctic/Longyearbyen'),
('5281a08b392c116', 'Asia/Almaty'),
('5281a0862d3c98a', 'Antarctica/South_Pole'),
('5281a0842c1a6a4', 'Antarctica/Palmer'),
('5281a0852cac95d', 'Antarctica/Rothera'),
('5281a08a2f8c58e', 'Asia/Aden'),
('5281a08e3afe663', 'Asia/Aqtau'),
('5281a0882e5a3db', 'Antarctica/Vostok'),
('5281a0903c1eb18', 'Asia/Ashgabat'),
('5281a0872dca2fd', 'Antarctica/Syowa'),
('5281a0923d493e0', 'Asia/Baghdad'),
('5281a08f3b8ffbf', 'Asia/Aqtobe'),
('5281a09a421c122', 'Asia/Choibalsan'),
('5281a0913cad956', 'Asia/Ashkhabad'),
('5281a0933db361c', 'Asia/Bahrain'),
('5281a08d3a9af97', 'Asia/Anadyr'),
('5281a08c39bfc99', 'Asia/Amman'),
('5281a09840eba22', 'Asia/Brunei'),
('5281a0953ee5155', 'Asia/Bangkok'),
('5281a0943e4d693', 'Asia/Baku'),
('5281a09740551ac', 'Asia/Bishkek'),
('5281a0994183708', 'Asia/Calcutta'),
('5281a09b42b4a59', 'Asia/Chongqing'),
('5281a09f5139227', 'Asia/Damascus'),
('5281a09d5004cfc', 'Asia/Colombo'),
('5281a09c434d7a2', 'Asia/Chungking'),
('5281a0a051ccb15', 'Asia/Dhaka'),
('5281a0a15264929', 'Asia/Dili'),
('5281a0a25931d48', 'Asia/Dubai'),
('5281a0963f77c2f', 'Asia/Beirut'),
('5281a09e50a0bc7', 'Asia/Dacca'),
('5281a0a359c69e6', 'Asia/Dushanbe'),
('5281a0a45a5d9dd', 'Asia/Gaza'),
('5281a0a768ccd66', 'Asia/Ho_Chi_Minh'),
('5281a0a6683a809', 'Asia/Hebron'),
('5281a0a55af5fb5', 'Asia/Harbin'),
('5281a0ab763ee82', 'Asia/Istanbul'),
('5281a0a87491a25', 'Asia/Hong_Kong'),
('5281a0ac76d0bba', 'Asia/Jakarta'),
('5281a0aa75b1122', 'Asia/Irkutsk'),
('5281a0af7888b2a', 'Asia/Kabul'),
('5281a0a975249f9', 'Asia/Hovd'),
('5281a0ad7762040', 'Asia/Jayapura'),
('5281a0ae77f9979', 'Asia/Jerusalem'),
('5281a0b38121eec', 'Asia/Kathmandu'),
('5281a0b17ff7b93', 'Asia/Karachi'),
('5281a0b07f60fbd', 'Asia/Kamchatka'),
('5281a0b2808875b', 'Asia/Kashgar'),
('5281a0ba9625309', 'Asia/Kuwait'),
('5281a0b582467de', 'Asia/Khandyga'),
('5281a0bfa3e3403', 'Asia/Manila'),
('5281a0b7836a737', 'Asia/Krasnoyarsk'),
('5281a0b481b3f82', 'Asia/Katmandu'),
('5281a0b682d7c6b', 'Asia/Kolkata'),
('5281a0bda2c3f39', 'Asia/Magadan'),
('5281a0b883fc097', 'Asia/Kuala_Lumpur'),
('5281a0c0a47b670', 'Asia/Muscat'),
('5281a0bea353642', 'Asia/Makassar'),
('5281a0b984900e1', 'Asia/Kuching'),
('5281a0bc9b6658f', 'Asia/Macau'),
('5281a0c9af084a7', 'Asia/Qatar'),
('5281a0c3a63e893', 'Asia/Novosibirsk'),
('5281a0c5ac5370d', 'Asia/Oral'),
('5281a0c2a5a914a', 'Asia/Novokuznetsk'),
('5281a0bb9995a61', 'Asia/Macao'),
('5281a0c4a6cfff2', 'Asia/Omsk'),
('5281a0c1a513266', 'Asia/Nicosia'),
('5281a0c6ad3a016', 'Asia/Phnom_Penh'),
('5281a0c8ae6fc1d', 'Asia/Pyongyang'),
('5281a0caaf9a3f7', 'Asia/Qyzylorda'),
('5281a0ceb1e6900', 'Asia/Sakhalin'),
('5281a0c7add4a83', 'Asia/Pontianak'),
('5281a0cbb029a0f', 'Asia/Rangoon'),
('5281a0ccb0b8ed7', 'Asia/Riyadh'),
('5281a0cdb14f26f', 'Asia/Saigon'),
('5281a0cfb27e770', 'Asia/Samarkand'),
('5281a0d1b3a71fe', 'Asia/Shanghai'),
('5281a0d5b6195f2', 'Asia/Tbilisi'),
('5281a0d9c3af580', 'Asia/Thimphu'),
('5281a0d6b6a9048', 'Asia/Tehran'),
('5281a0d3b4ce508', 'Asia/Taipei'),
('5281a0d0b310ab9', 'Asia/Seoul'),
('5281a0d2b43caed', 'Asia/Singapore');

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
('s15005854825599', 'paranoid', 'Clone', 'Is Cloning Safe?'),
('s15007544213193', 'paranoid', 'Delete This Row When Saved', 'Destroy This Row When Saved');

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
('5747ce1dd50cdc5', '57678e7dc00c099', '57466de0851d354', 'paradoid', 'steven', 'steven@nubuilder.com', 'nu', '0288bde0c2d593f2b5766f61b826a650');

-- --------------------------------------------------------

--
-- Structure for view `zzzzsys_report_data`
--
DROP TABLE IF EXISTS `zzzzsys_report_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zzzzsys_report_data`  AS  select `zzzzsys_php`.`zzzzsys_php_id` AS `id`,`zzzzsys_php`.`sph_code` AS `code`,`zzzzsys_php`.`sph_description` AS `description` from `zzzzsys_php` where (`zzzzsys_php`.`sph_system` <> '1') union select `zzzzsys_select`.`zzzzsys_select_id` AS `id`,'SQL' AS `code`,`zzzzsys_select`.`sse_description` AS `description` from `zzzzsys_select` where (`zzzzsys_select`.`sse_system` <> '1') ;

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
  ADD PRIMARY KEY (`zzzzsys_file_id`);

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
  ADD KEY `sob_all_zzzzsys_form_id` (`sob_all_zzzzsys_form_id`),
  ADD KEY `sob_all_zzzzsys_tab_id` (`sob_all_zzzzsys_tab_id`);

--
-- Indexes for table `zzzzsys_php`
--
ALTER TABLE `zzzzsys_php`
  ADD PRIMARY KEY (`zzzzsys_php_id`),
  ADD KEY `sph_code` (`sph_code`),
  ADD KEY `sph_zzzzsys_form_id` (`sph_zzzzsys_form_id`);

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
-- Indexes for table `zzzzsys_select`
--
ALTER TABLE `zzzzsys_select`
  ADD PRIMARY KEY (`zzzzsys_select_id`);

--
-- Indexes for table `zzzzsys_select_clause`
--
ALTER TABLE `zzzzsys_select_clause`
  ADD PRIMARY KEY (`zzzzsys_select_clause_id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
