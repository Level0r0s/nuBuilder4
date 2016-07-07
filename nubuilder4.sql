-- phpMyAdmin SQL Dump
-- version 3.3.9.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2016 at 04:19 AM
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
('57295aa5660f48b', '', 'Mrs Comuh', '568a00e25b8d271', '', '43 Allen Stkh', '2016-07-03', '16-Jun-2016', '', '', '568ef5a6968322b#nuSep#568ef58fe48207a', 35, '13132'),
('57295c4c33cddd6', '', 'PCP200011', '568a00e25b8d271', '', '108 KWStftgh', '2016-07-04', '18-May-2016', '', '', '568ef931d196b3e#nuSep#568ef5a6968322b', 0, 'blah'),
('57295ed9e996db0', '', 'OPSM111', '568a00c77f8f709', '', 'y', '2016-07-06', '20-May-2016', '', '', '568ef920846a089#nuSep#568ef59c1bd769c', 12, 'oooo12'),
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
('57295aa566110ad', '57295aa5660f48b', '1234', '', '568a00f3e57f096'),
('57294736bc86cd8', '572946e33e1b3ae', 'ssss', '', ''),
('57294736bc87e6f', '572946e33e1b3ae', '', 'fdsds', ''),
('57295c4c33d0ac0', '57295c4c33cddd6', '1111j', 'Jun-15-2016', ''),
('57295c4c33d2ed9', '57295c4c33cddd6', '2222hj', 'Jun-08-2016', ''),
('57296ad34207b75', '57295c4c33cddd6', '3', '', '568a00e25b8d271'),
('572aa8389424d9a', '57295ed9e996db0', 'bobby', 'May-26-2016', '568a00e25b8d271'),
('5770710113d40c6', '5770710113d261e', 'Rob', 'Jun-22-2016', '568a00f3e57f096'),
('573a80f0e0db425', '5678d262e048faa', 'test', '', ''),
('573d099435f6b7c', '5729572e6331281', 'aaah1gh', '', '568a00e25b8d271'),
('573d099435f7a3e', '5729572e6331281', '222ghu', '', '56aeff6f63b370b'),
('5754e57406b71ea', '5716c7137efb0c5', '', 'Jul-20-2016', ''),
('5754e57406b7ec7', '5716c7137efb0c5', 'ffhh', '', ''),
('5754e950b92bab5', '5729572e6331281', 'test13kgughj', '', ''),
('576ccdda0ccd2fc', '576ccdda0ccb042', 'fghdc', 'Jun-14-2016', '568a00e25b8d271'),
('577b0a4f5521871', '5770710113d261e', 'steve0', 'Jul-28-2016', '568a00d504d264c');

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
-- Table structure for table `standup`
--

CREATE TABLE IF NOT EXISTS `standup` (
  `rou_title` varchar(20) DEFAULT NULL,
  `rou_joke` mediumtext,
  `routine_id` varchar(255) DEFAULT NULL,
  `rou_order` int(11) NOT NULL,
  `rou_memory_description` varchar(100) NOT NULL,
  `rou_group` varchar(111) NOT NULL,
  `rou_group_id` varchar(111) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `standup`
--

INSERT INTO `standup` (`rou_title`, `rou_joke`, `routine_id`, `rou_order`, `rou_memory_description`, `rou_group`, `rou_group_id`) VALUES
('CASINO', 'The other day I went to the casino and I was playing roulette \r\nand I put 5 dollars on black and the ball landed on red, \r\nso I put 5 dollars on red and the ball landed on black, \r\nso I put 5 dollars on black and I put 5 dollars on red and the ball landed on green, \r\nso I put 5 dollars on red and I put 5 dollars on black and I put 5 dollars on green..\r\nand the ball flicked up and hit me in the eye.\r\nSo I''m walking around the casino and my head is spinning and my eye is hurting and I hear a guy say "Come in spinner" so I walked over to him and some coins fell on my head.', '14d0589a9cca77', 0, '', '', ''),
('BAD DAY', 'Yesterday I had an arguement with the cat.\r\nThen my girlfriend got run over.', '14d0589a9cda17', 0, '', '', ''),
('THINKING', 'When I''m home by myself this is some of the stuff I think about.\r\n\r\nWhy isn''t cow manure classed as a dairy product?\r\n\r\nIf a dog had 6 legs would it be an insect.\r\ncourse the answer to that is no cause an ant with 4 legs isn''t a dog.\r\n\r\nAnd if the little things in life are the most important why aren''t flys,  mozzies and anchovie bones at the top of the list.\r\n\r\n', '14d0589a9ce9ba', 0, '', '', ''),
('GIRLS', 'I was out crusing for chicks the other day..on the Internet.\r\n\r\n', '14d0589a9cf95f', 0, '', '', ''),
('CORNFLAKES', 'I love cornflakes but one cereal company has just started putting disney characters in their cereal which is a stupid idea cause they taste awful and they are very hard to chew.\r\n\r\nOn the side of a cornflake''s packet it says stuff like..contains 1/2 your daily requirement of riboflayvin and niacin.\r\n\r\nHow much riboflavin does a person really need and what is niacin?\r\n\r\nDoes it make you better looking.\r\n\r\nCause if it does then there are a lot of people walking the streets of this city that don''t eat breakfast.', '14d0589a9d08f3', 0, '', '', ''),
('HANDBAGS', 'To tell you the truth I wouldn''t mind being a woman.\r\n\r\nJust cause women can carry around handbags without being laughed at.\r\n\r\nNow its not that I feel I need and accessory to match my shoes or belt..\r\n\r\nIts just that I can only fit so much in my pockets.\r\n\r\nIf I could and some guy asked me for a pen I''d say get a handbag mate, \r\n\r\nand I''d only help him if he said he had one at home but it would have clashed with his outfit.', '14d0589a9d1895', 0, '', '', ''),
('NERD', 'I had a friend at school who was a nerd.\r\nBut he had multiple personalities too and sometimes he was a tough guy.\r\nHe used to walk around the school yard giving himself wedgies.\r\n\r\nWhen I first moved to the City I thought I would save on rent by sleeping in my car.That wasn''t such a good idea. It ended up costing me $60 a day cause I was parked in a clearway zone.', '14d0589a9d2835', 0, '', '', ''),
('DRUGS', 'I knew a guy who died by injecting peanut paste, not that it had somanila, the mistake had made was by using the crunchy stuff.\r\n\r\nDrug abuse is terrible my garden gnome is a midget that got stoned once too often.\r\n\r\nSmoking alcohol and drugs is a major killer in Australia.But if people try smoking alcohol what can they expect.\r\n\r\n', '14d0589a9d37d5', 0, '', '', ''),
('FLIES', 'I wanted to get rid of the flies in my house and I didn''t have any fly spray.So I used fabulon.\r\nIt didn''t kill them, but it was fun watching them slide of the walls.\r\n\r\nBeing sprayed with starch meant their wings were stuck open and they couldn''t fly, they could only glide.\r\n\r\nI came home and found all these flies jumping off the tv tring to catch a breeze.\r\n\r\nAnd they hung around the stove when it was being used, looking for a thermal updraft.\r\n\r\nSo I ended up killing them all by turning on the ceiling fan.\r\n', '14d0589a9d4776', 0, '', '', ''),
('SCARED OF DYING', 'The reason I''m not very brave is because I''m scared of dying.\r\n\r\nYou see when you are dead you can''t move your arms and you can''t talk.\r\n\r\nI know those guys that put you in the coffin try to make you as comfortable as they can....\r\n\r\nbut I dont want to go through the rest of eternity wishing the pillow under my head was a little to the left.', '14d0589a9d5714', 0, '', '', ''),
('REMEMBERING NAMES', 'Most people are good at recognising faces but the can''t remember names....Has that ever happened to you? \r\n\r\nSomeone walks up to you and you know their face but you just can''t remember their name.\r\n\r\nWell for me I recognise their name but I can''t remember their face.\r\n\r\nI know their name but I just can''t remember what they look like.\r\n\r\nI look through telephone books the same way most people look through photo albums.\r\n\r\nMy brother saw me the other day and he said, ''How are you Steve?'' \r\n\r\nAnd I said ''Do I know you...I dont recognise you?'' \r\n\r\nHe said ''I''m your brother.\r\n\r\nAnd I said don''t tell me....your name''s Mark Copley right?\r\n\r\nYeah I''m good like that.\r\n\r\n', '14d0589a9d66b7', 0, '', '', ''),
('HOT FOODS', 'I like Indian restaraunts.\r\n\r\nThey have such a good range of food.\r\n\r\nMild, medium, and I''ll be too scared to go to the toilet in the morning.\r\n\r\nI went to a indian restaurant the other day and I didn''t know the names of the dishes so I said the the waiter.\r\n\r\n"I''m not sure if I''m saying this right but can I please have.. number 8."', '14d0589a9d7658', 0, '', '', ''),
('CINEMA USHER', 'There are some pretty dumb jobs in the world but the dumbest would have to be that of the cinema usher.\r\nThey have to stand in one place looking like a bouncer with a torch.\r\nTheir job is to take a piece of paper from you tear it in half and give it back.\r\nNow if you go in a group of 5 or 6 they will take the pieces of paper tear them all at once and then give them back with a smile on there face as if you are supposed to be impressed that they can tear more than one piece of paper at a time.\r\nThats why I think that when you pay for your movie instead of getting a ticket they should give you a telephone book.\r\nThen we would see how good they really are.', '14d0589a9d85fb', 0, '', '', ''),
('ASTHMA', 'I get asthma, and on my birthday, when they bring out the birthday cake I don''t have enough strength to blow out the candles.\r\n\r\nSo I have to use my puffer.\r\n\r\nIt makes it taste funny.\r\n\r\nBut I find if I eat the cake with the candles I can breathe easier.\r\n\r\nThe good thing about having a puffer is when I park in the handicapped zones at the supermarket, if someone tells me I can''t park there I''ll say,\r\n\r\n''Back off pal I''m an asthmatic.''\r\n\r\nAnd if that doesn''t work I''ll say \r\n\r\n''And I''m dislexic so get lots''', '14d0589a9d9596', 0, '', '', ''),
('TUPPERWARE', 'I have had asthma bad enough on a few occassions  that I have had to spend a few nights in hospital.\r\nIt''s amazing how your attitude changes to little things when you are lying in a hospital bed.\r\n\r\nA girl I know had to spend a few weeks in hospital because she was in an accident.\r\nCause the stupid woman was riding a bike without a helmet.\r\nNow everyone knows you ride a bike without a helmet, your''e just asking for trouble.\r\nShe broke her leg\r\n\r\nThat''s why I wear a helmet all the time and I don''t even have a bike.\r\n\r\nanyway she had to pay thousands of dollars to have a stainless steel rod inserted in her hip.\r\n\r\nIt would have been much cheaper if she had a tupperware hip replacement \r\nbecause we sell everything.\r\nI was looking through a catalouge the other day at one of my parties\r\nAnd I saw a shoulder blade and elbow that matched a set of salt and pepper shakers I had.\r\nThey come in all shapes and sizes.\r\nColors to match any decor\r\nAnd they are all completely microwave safe.\r\nAnd in this month''s bonus pack a complete set of .....\r\n\r\nIt''s amazing how your attitude changes to little things when you are lying in a hospital bed.\r\nSuddenly the highlight of the day is apple crumble at dinner time.\r\nAnd the worst part of the day is when your friends come to visit you when you are trying to enjoy a pethadine injection.', '14d0589a9da533', 0, '', '', ''),
('WASHING DISHES', 'I never wanted to be a comedian anyway\r\nAll I have ever wanted to do be a dish washer.\r\nOh yeh.\r\nEven when I was at school all I ever wanted to do was get home and help mum.\r\nAll I thought about was washing and drying and stacking.\r\n\r\nI didn''t like stacking so much, but I figured "you''ve got to take the bad with the good."\r\n\r\nBut I became obssessed.\r\n\r\nWhen there was nothing to be done at home.I would break into other  peoples houses, and do their washing up,I''d wash and I''d dry ..and perhaps thats why I hated stacking so much because when I break into other people''s houses... I never know wherer anything goes.', '14d0589a9db4d7', 0, '', '', ''),
('AVACADOS', 'My favorite food would have to be avacados.If I go out to dinner and there is something on the menu with avacados, that''s what I''ll order.\r\n\r\nLike a chicken and avacado salad.\r\n\r\nI even have them for breakfast.\r\nI don''t have coco pops.\r\nI cut Avadados up and pour milk on them.\r\nThey''re not like a chocolate milk shake cause they''re green.\r\n\r\nThe only thing I don''t like is when you get them home and find they are brown in the middle.\r\n\r\nBut I have found a reliable way to tell how ripe they are before they leave the super market.\r\nI cut them in half!\r\nYeah you see if you cut one in half and you don''t like the look of it, its really easy to put back together because \r\none half has a round hole in it ..\r\nand the other half has a round bit sticking out of it.\r\n\r\nAnd the 2 pieces fit back into each other perfectly.\r\nA bit like fruit lego.', '14d0589a9dc478', 0, '', '', ''),
('ROUTINE', NULL, '14d0589a9dd417', 0, '', '', ''),
('SPEEDING', 'I got caught speeding the other day, don''t you hate that, I was doing 80 ....in a handicapped zone.\r\n\r\nIts hard now not to get caught because the police have those new radar guns.\r\n\r\nhave you seen them they  look like bar code readers that are used at supermarkets in fact I think they are.\r\n\r\nHe said Sir were you aware that you were travelling at 80 km/h?\r\n\r\nI said no.\r\n\r\nAnd then he said.\r\n\r\nWere you also aware that in the back seat of your car there is sandwich toaster that cost $ 29.95', '14d0589a9de3b7', 0, '', '', ''),
('TWO PERSONS', 'I am made up of 2 people.\r\nI''m not talking about new age thing where I think I used to Duke of goodness knows what in 1 life and a bit moss on a rock in another life.\r\nI''m just talking about me.\r\nSteven Copley, Sensible Guy\r\nand Steven Copley Crazy man.\r\nSteven Copley Crazy man constantly stands with his fingers in his ears, listening to no one and doing what he likes and never says anything.\r\nSteven Copley, Sensible guy talks and talks and is often heard saying ''Why did I do that''.\r\nLet me give you an example..I''ve knocked off for the day at 2 o''clock to go home and watch the Aussies take on the Windies in a day nighter at the MCG.\r\nSo far not a problem because both Sensible guy and Crazy man like the cricket.\r\nBut on the way home Steven Copley, Sensible guy starts saying I''m on a diet tonight I''m not going to eat anything, no if I can get through tonight tomorrow I''ll treat myself to something at MacDonalds for breakfast.\r\nCome 8 O''clock after having Sensible guy reminding me that I''m on a diet over and over for the last 6 hours...Crazy man picks up the phone and orders a famliy pizza with the lot.\r\nThen about 10.30  when all that is left is some crusts in a box and some pepsi I split on the floor.\r\nAll I can here is a voice from Sensible guy saying ''Why did I do that'' ''Why did I do that''.', '14d0589a9df354', 0, '', '', ''),
('ANSWER', 'Steven Copley is Adelaide''s answer \r\n\r\nto a question that has not been asked yet.', '14d0589a9e02f9', 0, '', '', ''),
('FRIENDS', 'I needed a friend the other day so I went around to this guy''s place I know because he didn''t have a car and I knew he couldn''t go any where.', '14d0589a9e1298', 0, '', '', ''),
('DIAL A PRAYER', 'When I get depressed  I ring up dial a prayer and argue.\r\n\r\nIts OK because there is no commandment that says\r\n\r\n"Thou Shalt not abuse recorded messages"', '14d0589a9e2239', 0, '', '', ''),
('PHONE', 'I was on the phone the other day\r\n\r\nand I was listening to a guy talk backwards for a couple of minutes \r\n\r\nbefore I realised I just had the hand set upside down.\r\n', '14d0589a9e31d9', 0, '', '', ''),
('GIRL FRIEND', 'I had a girl friend once\r\n\r\nbut we didn''t go out much\r\n\r\nbecause she didn''t like me.\r\n\r\n', '14d0589a9e4177', 0, '', '', ''),
('NAMES', 'The Company Company (Introduction agency)\r\nJim''s Growing (For the lawn that wants to be left alone)\r\n', '14d0589a9e511b', 0, '', '', ''),
('NEW START', 'Its a 486Dx66 with 8 megabytes of RAM,a 540 Meg Hard drive,its got a 1.2 and a 1.44 floppy disk drive it comes with DOS, Windows, Word and Excel it has a Microsoft mouse and for an extra 100 buck I got a driverside air bag.', '14d0589a9e60ba', 0, '', '', ''),
('HARD KNOCKS', 'I have met alot of people who have said they went to the school of hard knocks but for me I never had any tertiary education.\r\nI barely finished high school.\r\nBecause at school they never teach you what you really need to know.\r\n\r\nStuff like never eat laxettes if you have the hickups.\r\n\r\n', '14d0589a9e7059', 0, '', '', ''),
('FISHING', 'When a fisherman has a fish get away from him does his friend say .\r\n\r\n"Don''t worry mate there are plenty more girls in the world"\r\n\r\n', '14d0589a9e7ffd', 0, '', '', ''),
('VEGETARIAN', 'What you''re a vegetarian..?\r\nYou eat vegetables..?\r\nWhat have they done to you.?', '14d0589a9e8f97', 0, '', '', ''),
('SCRABBLE', 'I went around to a friend''s place the other day and I ate some alphabet soup that was off.\r\nAnd I said..\r\nI feel crook.\r\nDo you have some where I can be sick.\r\nSo he bought me out a scrabble board.\r\nI threw up and got and got a triple word score.\r\nAnd it spelt out carrots', '14d0589a9e9f39', 0, '', '', ''),
('FAT', 'There is this new fat free fat that has just been introduced in America.\r\nIts called Olestrol and we are supposed to be able to eat this stuff without gaining any weight.The only problem is that it has side effects like it causes diarea and stuff like that.\r\n\r\nNow I figure we eat alot of gear at barbecues like chops and sausages and they all have a lot of fat in them.But if we fed sheep cattle and pigs Olestrol we could then have barbecues with none of the fat and none of the side effects.\r\n\r\nThe reason we get fat isn''t because we don''t exercise enough its because the animals we eat don''t exercise enough.\r\nWe put on weight because of lazy farm animals.\r\n\r\nAnd I think its the farmers fault .Its up to him to supply some sort of recreational activities\r\nEven if it means putting a ball in the paddock and a set of goals at each end.\r\nLet them pick their own teams.\r\n\r\nIts not a silly idea, I believe god gave sheep wool so they could run into other sheep and not get hurt\r\nI don''t think knitting cardigans ever crossed his mind.\r\nAll I''m saying is that if there was a football in every paddock we would be a thiner nation.\r\n \n', '14d0589a9eaed9', 0, '', '', ''),
('SRI LANKA', 'Usually cricketers just wearing padding when they are batting but this year the Sri Lanka had to wear shoulder pads even they are fielding just so they could fit their names on their back.\r\n', '14d0589a9ebe7a', 0, '', '', ''),
('VALENTINE', 'Since you left \r\nI don''t know what to do\r\nthe toilet is blocked\r\nso I can''t use the loo\r\n\r\nYou took all the tools\r\nand the big wrench\r\nso I keep the door closed \r\nbecause of the stench\r\n\r\nI don''t think I know \r\nof anyone dummer\r\nthat would fight with a girl\r\nwhen she is a plummer\r\n\r\nOh won''t you be\r\nmy Vallentine  Please\r\nif you don''t come soon\r\nI could catch disease.\r\n\r\nYou''re the best kisser I know\r\nwith out fail\r\nsince the boy friend I had\r\nwhen they locked me in jail\r\n\r\nI''ll do anything dear\r\nto get rid of these blues\r\nI''d walk over fire \r\nif I had some good shoes.\r\n\r\nPlease come back\r\nyou know I love you\r\nthen we can clean out the drains\r\nand get rid of the poo.\r\n\r\n', '14d0589a9ece1a', 0, '', '', ''),
('SINGING KOALA', 'I went into a record store and saw this very successful album by a singing Koala.\r\nApparently in the first month of its release it went platypus.', '14d0589a9eddb7', 0, '', '', ''),
('INSTRUCTIONS', 'I don''t eat fruit or vegetables because when I go into a supermarket.. I like buy food with instructions on it.\r\nLike add 2 cups of water and simmer for 15 minutes\r\nI''m obviously not the only one because some companies have started naming products after their instructions..\r\nlike 2 minute noodles if you read their instructions all it says is magi pasta.\r\nI understand GOD not putting instructions on fruit back then like we can do to food today , because the technology just wasn''t available.\r\nBut the whole garden of Eden Fiasco could have been avoided if all the fruit had been propery labelled\r\nI''ll eat a Hungry Jacks Whoppers even though they don''t have any instructions because they show you how to eat them on the tv.\r\nI wont eat any thing from MacDonalds because when I was a child I got beaten up by Ronald MacDonald for playing in their playground without buying any food.\r\nHe said only my dad was allowed to use the slippery dip\r\nMost people dont know this but Ronald MacDonald isn''t a clown he''s fastfood ''s self appointed watchdog..\r\nand Derryn Hinch isn''t Media''s self appointed watchdog he''s just a clown.', '14d0589a9eed5c', 0, '', '', ''),
('GARDEN OF EDEN', 'I don''t eat fruit or vegetables because when I go to the supermarket I only buy food with instructions on it.\r\n\r\nCause you can get in a lot of trouble eating food that doesn''t have instructions on it.\r\n\r\nTake Adam and Eve for example,\r\n\r\nNow I''m not saying its God''s fault but..\r\n\r\nI think you''d find the whole Garden of Eden Fiasco could have been avoided if all the fruit had been properly labelled.', '14d0589a9efcff', 0, '', '', ''),
('RWANDA', 'I support a child in Rwanda.\r\nI don''t send him money .\r\nJust letters saying stuff like "You''ll be right mate,Just keep hanging in there"\r\n', '14d0589a9f0c9e', 0, '', '', ''),
('BATHROOM', 'My place is a mess.\r\n\r\nIts a disaster area.\r\n\r\nMy bathroom has got mold, fungus and different strains of penicillin growing in it.\r\n\r\nIn fact I know its been doing its own scientific experiments.\r\n\r\nAnd so now I''m too scared to clean it in case I destroy a cure for cancer.\r\n\r\nBut girls you really should see it, its beautiful this time of year because all the fungus is flowering.\r\n\r\n', '14d0589a9f1c3d', 0, '', '', ''),
('SPAGHETTI BOLOGNESE', 'I believe Italians introduced Spaghetti into Australia to make the rest of Australia look stupid.\r\nI just can''t eat it, but then again I eat everything with a soup spoon.\r\nYou know that guy on TV with the Dolmio grin?\r\nLast time I ate spaghetti I got a Dolmio Shirt, Dolmio pants and Dolmio shoes.\r\nI don''t know how they do it.\r\nOne time I had spent hours catching worms for fishing when this Italian guy walked up, stuck a fork in the ground turned it a few of times and pulled out all the bait he needed.', '14d0589a9f2bd8', 0, '', '', ''),
('VEGEMITE', 'People will do anything to get high.\r\nI heard of a guy that injected vegemite.\r\nAnd another guy that died from injecting peanut paste.\r\nGenerally peanut paste isn''t fatal but he used crunchy.\r\nWhat is next drug pushers selling jam.\r\nBefore you know it people will be sniffing the stuff \r\nand even perhaps eating it.\r\n...Which would stand to reason.', '14d0589a9f3b7c', 0, '', '', ''),
('GARDEN', 'I was outside in the garden the other day, vacuuming the lawn.\r\nI have to..\r\nIts amazing how much deep done dirt there is in my lawn..\r\nthat mowing just won''t get rid of..\r\n\r\nI do a lot of thinking when I''m in the garden...\r\nThis is some of the stuff I think about..\r\nWhy..\r\nWhy isn''t cow manure classed as as dairy product\r\nCould it be my garden gnome is just a midget that got stoned once too often.', '14d0589aa008dd', 0, '', '', ''),
('PHOTOCOPIER', 'I have discovered a great way to recycle used A4 paper ..\r\n\r\nWhat I do is I put all the used paper into the cassette under a photocopier..\r\n\r\nand I photocopy a blank piece of paper on to them.\r\n\r\nSo that they are all blank again.', '14d0589aa0187d', 0, '', '', ''),
('PHILOSOPHY', 'I''d just like to get philisophical for a moment.\r\nWho are we\r\nWho am I\r\nWho are you\r\nAm I really here\r\nAre you really here\r\n..and If you are not really here..how come you had to pay to get in\r\n..and if you didn''t pay to get in how come you are really here.', '14d0589aa0281b', 0, '', '', ''),
('COUNCIL WORKERS', 'Have you ever wondered why there seem to be more council workers at a site than are needed.\r\nI saw ten guys jump out of a truck once just to move a bin.\r\nSo I asked one of them why, and he said we need to put a space here and so we are going to move this bin over there to where that space is.\r\nAnd I said "Will that take ten men" ..\r\nand he said no but then we have to take the space that is over there and bring it back here and then properly fasten it so it doesn''t blow away.', '14d0589aa037b9', 0, '', '', ''),
('ORAGAMI', 'I have a black belt in oragami.\r\nWhich is the ancient Japanese art of paper folding.\r\nWhich means..\r\nIf I get attacked on a bus by a guy going to work..\r\nI might not be able to stop getting hurt ....\r\nbut I can make it pretty hard for him to read his newspaper.\r\n\r\nThere''s this other Japanese thing I do called Fenshui that says your life is influenced by the position of the furniture in your house,\r\nthey reckon it can effect your health, your working life, your financial situation and even influence the people you meet\r\nAnd its true cause I''ve experienced it in my own life.\r\nCause my wardrobe fell on me.', '14d0589aa0475e', 0, '', '', ''),
('RUBBISH', 'I am very concerned about litter.\r\nThat is why when I have finished with a piece of paper I throw it on the ground.\r\nBecause if you really care about litter you will help it escape, so that it doesn''t end up on some rubbish dump.\r\nCause I understand that Chip packets and milk cartons that you find pressed up against a fence, are just frightened bits of rubbish trying hide.\r\nEveryone has seen a scared chip packet running across the road, trying to escape from a council worker with a pointy stick .\r\nAnd when I have finished chewing gum I don''t throw that in the bin either, I sell it back to hubba bubba.\r\nSo please I urge you, next time you finish a packet of twisties throw it in the air and set it free.\r\nBecause if there was no rubbish in the world ', '14d0589aa056fd', 0, '', '', ''),
('NEGATIVE PEOPLE', 'There are 2 types of people in this world that I really hate.\r\nReally positive people and really negative people.\r\nIn fact I''d like to grab both of them by the neck and use them a jumper leads.\r\n', '14d0589aa0669e', 0, '', '', ''),
('GUNS', 'There are a lot of people at the moment arguing about gun control.\r\nThe government says guns hurt people...\r\nand the gun owners say people hurt people..\r\nwell they are both wrong..\r\nI think you will find..bullets hurt people..\r\nso they should swap all the bullets in Australia for those chocolate bullets with liquice in them.\r\nThen the only people scared to walk the streets at night will be diabetices.\r\n\r\n', '14d0589aa0763f', 0, '', '', ''),
('INSECTS', 'If a dog had 6 legs would it be an insect.\r\nThe answer in no cause an ant with four legs isn''t a dog.', '14d0589aa085da', 0, '', '', ''),
('HAIRDRESSER', 'I went to the hair dresser the other day.\r\nHe sat me down and I said "I''ll have a number 1".\r\nSo he weed on me.\r\nAnd I''m too scared to go back this time cause I want my hair a bit longer.', '14d0589aa0957e', 0, '', '', ''),
('MEDICARE SHOPPING', 'I went to the supermarket the other day and when I got to the checkout I accidently gave the girl my Medicare Card instead of my Visa.\r\nAnd she said "Sorry sir you we don''t take Medi care here but you can buy vegimite cheaper here with a prescription.', '14d0589aa0a51d', 0, '', '', ''),
('BYO RESTAURANT', 'I got kicked out of a BYO restaurant the other day for bringing a cut lunch and a thermos.', '14d0589aa0b4bd', 0, '', '', ''),
('RELAXING', 'A lot of people like to have a cup of coffe when they wake up in the morning but I find if I drink coffee in the morning I just cant get to sleep at work.\r\nAfter a hard day at work sometime I like to just sit home and unwind by listening to blank tapes.', '14d0589aa0c460', 0, '', '', ''),
('GOOD HOTELS', 'I slept in a good Hotel once and there was a lump in my pilllow and in the morning I had all this chocolate in my hair.\r\n', '14d0589aa0d3fd', 0, '', '', ''),
('MARS', 'Scientists reckon they have found a rock from Mars that suggests there is life on Mars cause it has some sort of bacteria on it.\r\n\r\nFor years we have been scared aliens would invade our planet but by looking in my bathroom it seems clear they already have.\r\n\r\nAnd all this time we thought that if martians invaded we had to protect ourselves with nuclear weapons, but it turns out all we needed was a can on Glen 20.\r\n', '14d0589aa0e39e', 0, '', '', ''),
('SCIENTISTS', 'Scientists say there must be life on mars cause they found a rock from mars with something growing on it.\r\nYeh right!!\r\nAnd I''ve got an aerial from the ship Endevour that proves captain cook had color TV.\r\nHow could a rock from mars get here. I have trouble getting from the North Adelaide to Glenelg and we have public transport.\r\n', '14d0589aa0f33e', 0, '', '', ''),
('CHICKENS', 'I went into a chicken shop and I suddenly realised..\r\nI''d hate to be a chicken it would be terrible cause like when a person dies people buy flowers but when a chicken dies people buy coleslaw.\r\n', '14d0589aa102df', 0, '', '', ''),
('CHEESY CHEESE', 'I went in to Macdonald''s the other day and the girl behind the counter said..\r\n"Sir, did you know if you can say choose the cheesy cheese that the triple cheese lovers choose when they choose the cheese cheese cheese on the triple cheese at MacDonalds you can get a free coke?\r\nAnd I said I dont want to say choose the cheesy cheese that the triple cheese lovers choose when they choose the cheese cheese cheese on the triple cheese at MacDonalds ..cause I want a fanta.\r\nand thats all I want.', '14d0589aa11286', 0, '', '', ''),
('CHILDREN', 'Life''s no fun when you are a kid.\r\nThere are so many rules.\r\nYou can''t play with your food and you arent allowed to eat your toys.\r\nAlthough I dont think that last rule isn''t such a bad one cause when I was a kid I once swallowed a ..and had to have it surgically removed with a scalpal\r\n\r\nlego\r\nchess\r\nmonopoly pieces\r\nmatchbox car\r\nhand full of marbles\r\nplastic soldiers\r\ndolls\r\nplasticine', '14d0589aa1221e', 0, '', '', ''),
('STAR TREK', 'Although I know Star Trek isn''t real.\r\nBecause everytime some enemy shoots at the Enterprise, a control panel shorts out and nearly kills someone.\r\n\r\nAnd if it was real any space ship advanced enough it can travel faster than the speed of light would have come standard with a clipsal safety switch.', '14d0589aa131c0', 0, '', '', ''),
('CENTREFOLD', 'A girl I know told her boyfriend she wanted to look like a centrefold from one of those girlie magazines.\r\nSo he shot her in the stomach with a staple gun.', '14d0589aa14160', 0, '', '', ''),
('VOLLENTEER WORK', 'I am very community minded, I do volunteer work for the over privileged.\r\nI find it very fulfilling helping those people more fortunate than myself.\r\n\r\nIf an over privileged person has a cold breeze coming in under their front door I organise homeless people to sleep in their doorways.\r\n\r\nIf they have a critically sick pet.\r\nI will organise an organ transplant to be donated by a homeless person.\r\n\r\nI spend time counselling those people who have earn too much money and now risk moving into a higher tax bracket.\r\n\r\nI work long hours for them and then allow them to pay me by giving me a cold drink. \r\nJust so they can claim cordial as a tax deduction.\r\n\r\nand I spend time with lonely people who own expensive guns but have none else to shoot at.', '14d0589aa163f8', 0, '', '', ''),
('DOG', 'I went to the Vet the other day and I asked him to put my dog down so he said ''You stupid flea bitten ugly mongrel'' \r\nAnd I said stop thats enough, how much do I owe you.', '14d0589aa17045', 0, '', '', ''),
('BATTERIES', 'I bought some brand new batteries the other day and I got them home and I was really excited... and then I realised... I didn''t have any toys.\r\n\r\nSome batteries have a thing that tells you how full they are.\r\nWhy don''t they just make them clear so you can see for yourself. Der.\r\n\r\nIf you touch each end of the battery and it comes up with a message. \r\n\r\nSo I tried this with a car battery and nothing happened but now whenever I open a kitchen draw, cutlery jumps out and sticks to me.', '14d0589aa17fe4', 0, '', '', ''),
('ANT FARM', 'I have an ant farm although I''m not sure insects make the best pets cause I have found that you cant discipline an ant if it disobeys you you just have to step on it.', '14d0589aa18f81', 0, '', '', ''),
('ANIMALS', 'Some people say that it would be great if animals could talk..\r\nI disagree.I think that if animals could talk they would always be asking for food.\r\nEither that or they would be wingeing about having worms or something\r\nTo me a pet is an animal that cant make it in the real world.', '14d0589aa19f26', 0, '', '', ''),
('DR WHO', 'One of my favorite programs on tv is Dr Who and he has this called a sonic screw driver which to me looks like the thing a doctor uses to look in your ear with a little light on it and I was thinking about it and I thought what a perfect name for an ear specialist.', '14d0589aa1aec2', 0, '', '', ''),
('ANSWERING PAD', 'I have a pad and pencil sticking on the outside of my front door that works the same as an answering machine on the top of the pad it says..\r\n\r\n"You have just knocked on Steven Copleys door he''s not home right now but please leave a message after the fullstop and I''ll be sure to come around and knock on your door as soon as I get back."', '14d0589aa1be62', 0, '', '', ''),
('BIROS', 'When I buy a pen I always lose it before it runs out?\r\nAnd I always lose more pens than I find.\r\nBut I found out why.\r\nWhen you lose a pen it finds its way into a drain and is washed into the sea.\r\nAnd from there the ocean currents take it all the way up to China where it washes up on a beach.\r\nThen some guy walks along this beach, picks them all up, and puts them in a box and sells them back to us.\r\nI have had one pen I had to buy 4 times.\r\nHas anyone ever had a pen that leaves blotches of ink.\r\nYeh well I used to own that one too.\r\nBIC stands for Beach In China', '14d0589aa1ce02', 0, '', '', ''),
('FATHER', 'I had a pretty hard childhood, my father was different to most fathers he wanted me to grow up as a tough guy,\r\nhe used to force me to make up names for the other kids at school,\r\nI remember getting a hiding because he caught me down the street not smoking.\r\nOnce I tried to sneak inside at 11 o''clock one Saturday night and he came down the stairs in his pyjamas and said what are you doing home so early get back out there.\r\nI got suspended from school cause they didn''t believe it when I said that my father ate my homework.\r\nSo when I finished school I got a flat by myself and rebelled, I wasn''t going to do listen to my dad any longer.\r\nI remember ringing him up and saying I''m not listening to you any more\r\n......and tomorrow I''m going to become a blood donor.', '14d0589aa1dda1', 0, '', '', ''),
('VACUUM CLEANER', 'I just bought a new vacuum cleaner . Because I accidently left my old one switched on outside and I found it the next day halfway up a tree attatched to a possum..\r\n\r\nI use a vacuum cleaner in summer to keep cool by sucking up all the hot air inside the house. The only bad thing is that  I''m always having to go outside, to empty the bag.\r\n', '14d0589aa1ed45', 0, '', '', ''),
('OIL SLICK', 'I think the reason that fish die when there is an oil slick is because\r\nthey end up having very dangerous collestrol levels.', '14d0589aa1fce4', 0, '', '', ''),
('BOILING WATER', 'When you are boiling water on the stove and there are some small children around be very careful not to leave the handle sticking out from the stove because a small child could walk along and poke their eyes out on it.', '14d0589aa20c82', 0, '', '', ''),
('Death Pokies', 'The youthinasia debate annoys me cause to me the issue isn''t wether people are allowed to take their lives or not.\r\nIt is that they are asked to do it in such a boring way... \r\nby making them select yes or no on a computer screen.\r\nYou see to me life is to be enjoyed.. \r\neven when you are trying to kill yourself.\r\nInstead of using a computer I believe they should use a specially designed poker machine.\r\nThat way a person could die and at the same time have an oppotunity to win fabulous prizes.', '14d0589aa21c21', 0, '', '', ''),
('ONLY PERSON', 'I made up a joke the other day and then I thought to myself..\r\nI wonder if I am the only person that had ever made up this joke.\r\nThen I thought perhaps I am the only person to wonder if I am the only person in the world to wonder to make up that joke\r\nThen I realised that I probably wasn''t  but that I could have been the only person in the world to wonder if I was the only person in the world that made up that joke\r\nAnd then I forgot the joke.', '14d0589aa22bc2', 0, '', '', ''),
('PLAY DOUGH', 'The other day I bought some play dough and went into the kitchen and when I came out the dog had eaten it all.\r\nSo I remoulded it into a coffee table.\r\nTommorrow I''m going down the pet store to buy some coasters.', '14d0589aa23b65', 0, '', '', ''),
('PIZZA', 'I ordered a pizza the other day and about half an hour later the door bell rang and when I opened the door there was a cat, a dog and 4 kids  standing there and one of the kids was holding a goldfish bowl with a goldfish in it. \r\nAnd I said what do you want ?\r\nAnd they said "Did you order a family with the lot" \r\nAnd I said yeh but I said no anchovies.', '14d0589aa24b06', 0, '', '', ''),
('BACK IN TIME', 'I was reading the paper the other day and I saw an article  about some one who had done a surveyed these people and asked them if they could jump in a time machine and go back in time where would they go?\r\n33% said they would go and see the first performance of Romeo and Juliet,\r\n30% said they would go back to WoodStock\r\n20% said they would go and see the birth of Jesus.\r\nAnd I thought if I could go back in time I would go back to 1985..\r\nto Granite Island..\r\ncause I left my wallet there.', '14d0589aa25aa2', 0, '', '', ''),
('AFTER SHAVE', 'I bought some aftershave the other day.\r\nBut when I decided on a fragrence the woman said to me "Now sir,you can buy this 2 different ways..\r\nThe aftershave..\r\nAnd I said what do you do with that?\r\nYou put it on your face.\r\nAnd you can get the OD toilet.\r\nAnd I said what do you do with that?\r\nCause that would sting!', '14d0589aa26a42', 0, '', '', ''),
('UNAWARENESS WEEK', 'I am pleased to tell you that in a few weeks time there is to be a national week of celabration, it will be a celebration of Australian ignorance in unawareness awareness week.\r\n\r\nThere are a number of events planned all culminating in a march down King William Street which will take us to the steps of parliament where we will be as quite as we can so that the politicians can remain unaware that we are there.\r\n\r\nOnce on the steps of parliment I will be giving a speech encouraging people to walk past and not listen.\r\n\r\nAs a part of unawareness week there will be many celebraties that will not be turning up, many of which are from channel 10''s Home and Away.\r\n\r\nSo if you are doing nothing that week we suggest you all stay home so that you can remain in the dark about all the things that have been planned.\r\n\r\nIt will be a fantastic week even though it clashes with some other awareness weeks that we were not aware of.\r\n\r\nNow that you know I would like to ask you that you don''t tell any one, because we would like to have as many people involved as possible.', '14d0589aa279e2', 0, '', '', ''),
('No Food', 'I met a really fat guy in hindley street the other day and he asked me if I had any loose change and so said "I''ll give you some money on one condition, you don''t use it to buy food.\r\nThe reason he was living on the street in the first place is cause he couldn''t fit through the door of his house.', '14d0589aa28982', 0, '', '', ''),
('Night Club', 'The other day I went to a night club .. And it was closed so I went back later that night and I was at the bar having a beer and I was scratching the label off the beer and a girl came up to me and said."Did you know that scratching the label off your beer is a sign of sexual frustration" and I said "No I didn''t know that" and she said "But I can help you with your problem".....She said "Give it here, I''ve got longer finger nails"\r\n\r\nThen a band started playing that was so bad everyone got up to leave at the same time and we all created a huge lineup at the door but the bouncer came up to me while I was standing in the line and said he wouldn''t let me go because I had inappropriate footwear.', '14d0589aa29923', 0, '', '', ''),
('Riding a bike', 'A girl I know had to spend a few weeks in hospital because she was in an accident.\r\nCause the stupid woman was riding a bike without a helmet.\r\nNow everyone knows you ride a bike without a helmet, your''e just asking for trouble.\r\nShe broke her leg\r\n\r\nThat''s why I wear a helmet all the time and I don''t even have a bike.\r\n\r\nI was the first to find her. She was lying on the ground and she said to me."Ive just fallen off my bike and broken my leg and I don’t know what to do!"\r\nI said you know what to do you’ve got to get straight back on that bike.', '14d0589aa2a8c3', 0, '', '', ''),
('Environment', 'I think recycling is a bad idea. Because to recycle you need a bin for every kind of rubbish.\r\n\r\nAnd you end up with all these bins that you can never throw out.\r\n\r\nCause if you try to throw out a bin by leaving it outside for the garbo\r\nwhen he sees the empty bin he thinks he''s already emptied it, and so he just leaves it there.\r\n\r\nAnd if you put the bin in another bin he thinks he''s emptied it, and stacked it.\r\n\r\nNow because of what I have just said, some people think that I''m not environmently friendly and I resent that.\r\n\r\nCause I reckon if I died in a forest I''d create compost as good as the next guy.', '14d0589aa2b864', 0, '', '', ''),
('Security Guard', 'I once went out with a girl who was a security guard but we broke up cause she would never accept me for who I was.\r\n\r\nShe kept asking for identification.\r\n\r\nNo matter what I did I could not find the key to her heart..\r\n\r\nLater I found out that was because there was no key to her heart, only a pin number.\r\n\r\nAnd I lost the piece of paper she wrote it down on.', '14d0589aa2c808', 0, '', '', ''),
('Burglary', 'Some homes have a sticker in the window telling burglars they have security alarm.\r\n\r\nI have a sticker in my window that tells them I take visa and mastercard.\r\n\r\nThat way a burglar has a choice, 6 months in jail or 6 months interest free.\r\n\r\nMy house is the only house I know of where you can break in and win flybys.\r\n\r\nBut I tell ya, the police will be busy next week... cause I''m having a sale.', '14d0589aa2d7a3', 0, '', '', ''),
('Horse Racing', 'My parents have always loved racing horses.\r\n\r\nSo they got me involved when I was very young.\r\n\r\nI can''t say I ever beat one though,they were just too fast\r\n\r\nBut in the late sixties I was the fastest 3 year old over 1000 metres.\r\n\r\nSome people thought that making me run that far was cruel.\r\n\r\nBut it was OK.\r\n\r\nThe hardest part was carrying a jockey.', '14d0589aa2e744', 0, '', '', ''),
('Finding Love', 'For years I had been looking for love in all the wrong places.\r\nAnd then I realised to find someone that really loves you need to look towards the back of the newspaper.\r\nI saw one ad in the paper that said woman seeks man with outdoor barbeque.\r\nSo I rang her up and she asked if I had a barbeque and I said no but I have a really nice personality.\r\nSome people say that if you want a girl to tell you how much they love you you read out poetry, but I found a more reliable way is to ring this certain place and read out your credit card number.', '14d0589aa2f6e4', 0, '', '', ''),
('Helping', 'I like helping people.\r\nI''ve just started doing a self improvement course for someone else.\r\n\r\nI believe that nothing good will ever happen in your life unless you are willing to get off your backside and organise someone else to do it.\r\n\r\nI do a lot of volunteer work for the over privledged.\r\nThere is nothing more fulfilling than helping out someone more fortunate than yourself.', '14d0589aa31740', 0, '', '', ''),
('Cones', 'It amazes me at what goes on at some parties.\r\nI went to a party the other day and I looked around and it seemed like everyone was having a cone and I felt so awkward because they were all really young kids and I don''t like vanilla.', '14d0589aa325cb', 0, '', '', ''),
('retail sales', 'I went in to a shop the other day to buy some pants and the shop assistant said to me "Is there anything in particular you are looking for sir" and then I said something really funny.', '14d0589aa3356a', 0, '', '', ''),
('After Dinner Mints', 'I''ve just started a business from home.\r\nWhat I do is I spread out all this tooth paste into baking trays,\r\ncut it up into squares,\r\ncover it with chocolate\r\nand sell it as after dinner mints\r\nThey taste ok..\r\nbut its better for you if you just chew them up then spit them out.', '14d0589aa34509', 0, '', '', ''),
('Bread', 'A lot of people are now buying bread makers.\r\nEvery second family in Australia seems to have one.\r\nWhich makes me think that most people seem to think the best thing since sliced bread is unsliced bread.', '14d0589aa354ac', 0, '', '', ''),
('GreenPeace', 'What can you say to a fish that John West rejects.\r\nHow can you comfort it.\r\nI mean you can''t say "Don''t worry mate there are plenty of fish in the sea."', '14d0589aa3644c', 0, '', '', ''),
('Big Bang', 'I heard about this guy who reckons he figured out that the universe was was created by a big bang and that he had calculated that this big bang came from a thing that was about the size of a pea.\r\nIf that''s true it would be the only expolosion that never destroyed any thing.\r\nExcept of course that pea.\r\nWouldn''t it be cool if when something blew up it created other stuff.\r\nIt''d be great if you could go into Lecornus and buy a bomb.\r\nYou take it home throw it into the lounge and it makes a chair.\r\n\r\nWhich would mean that the universe came from some sort of cosmic popcorn.Frankly I think that somewhere in his mathematical calculation he forgot to carry a 2.', '14d0589aa373ea', 0, '', '', ''),
('Ice on the moon.', 'If there is ice on the moon it will mean 3 things\r\nFirstly that it can be converted into oxygen so Astronauts can survive on the moon.\r\nSecondly it means hydrogen can be produced for rocket fuel.\r\nAnd thirdly it will means its another place they can hold the Winter Olympics.', '14d0589aa3838b', 0, '', '', ''),
('Adelaide Show', 'I went to a sideshow shooting gallery where there were 2 guys.\r\nOne of the guys said I had to get a 50 points to win a prize.\r\nI kept missing everything but on the last shot I got a bulls eye by bouncing the bullet off his assistant.\r\nThe poor bloke had to be taken to hospital.\r\nBut I did win a teddy.', '14d0589aa3932c', 0, '', '', ''),
('Cheap as Chips', 'I got pretty annoyed today cause I went to cheap as chips and I bought some chips and they were normal price\r\nAnd then I realised that everything they sold was the same price as chips.\r\nSo I ordered minimum pencils and some butterfish.', '14d0589aa3a2c9', 0, '', '', ''),
('FenShui', 'There''s this other Japanese thing called Fenshui that says your life is influenced by the position of the furniture in your house,\r\nthey reckon it can effect your health, your working life, your financial situation and even influence the people you meet\r\nAnd its true cause I''ve experienced it in my own life.\r\nMy wardrobe fell on me.', '14d0589aa3b5fd', 0, '', '', ''),
('Appendix', 'I''m an organ donor.\r\nWhen I die I''m donating my appendix\r\nIn fact they don''t have to wait cause I''ve got it at home in a jar with some sundried tomatoes.', '14d0589aa3c20a', 0, '', '', ''),
('Nancy Boy', 'I think its very important to be politically correct.\r\nBut still there are some people out there that don’t want to toe the line.\r\nSome people if they see some guy acting effeminate they will say Hey look at that Nancy Boy and I think that’s terrible.\r\nIt should be Nancy Person.', '14d0589aa3d1b3', 0, '', '', ''),
('Dole', 'A lot of people complain about work for the dole and I reckon its cause of its name.\r\nThey should just call it work, work for money that way it sounds like it’s a real job expect you don’t get as much money, in fact you get hardly any, in fact with the effort you put in and the hours you work you''d be better off on the dole.', '14d0589aa3e149', 0, '', '', ''),
('Arch Villian', 'I', '14d0589aa3f0e9', 0, '', '', ''),
('EATING VEGATABLES', 'When I was little my mum used to tell me a story to make me eat me vegetables.\r\nShe used to say\r\n"Steven, one day there was a village that had a man that sold vegetables  to all the people that lived in that village. \r\nBut one day all the children that lived in that village decided that they didn''t like eating vegetables any more and the man could no longer sell his vegetables and he couldn''t make any money to buy food and so he died.And all the children in that village lived happily ever after.\r\nBut Steven you don’t live in that village so, if you don''t eat what is on your plate you wont get any dessert."', '14d0589aa41fd0', 0, '', '', ''),
('CARS', 'A lot of people worry because they think that soon the world''s population will be so large that some people will be left without food.\r\nBut I worry that there will be so many cars that there wont be room on the roads.\r\nSo they will have to make roads that don’t go any where just so they can fit all the cars.\r\nAnd this means more people may get lost and perhaps be left without food.', '14d0589aa42f6e', 0, '', '', ''),
('GAY', 'I know this gay chef that only recently came out of the pantry.', '14d0589aa43f0c', 0, '', '', ''),
('Cat Whiskers', 'I read somewhere that if you cut a cats whiskers off, it loses its bearings and loses its balance.\r\nIts true cause the same thing happens to me when I shave.\r\nOnce I shaved one side of my face and I couldn''t stop walking around in circles.\r\n\r\nI was wondering what would happen if instead of making a cats whiskers shorter you made them curlier so I tried a few ways of doing this \r\nbut all I found out was that cats can see in the dark\r\nbut with the right amount of electricity they can also glow in the dark.', '14d0589aa44eaa', 0, '', '', ''),
('Mouse', 'The other day a mouse run in front of me \r\nand when it saw me it froze.\r\nAnd it made me think.\r\n\r\nA mouse lives its whole life hiding,\r\nscared of everything\r\nit can''t relax,\r\nit can''t enjoy anything\r\nbecause it is always looking for danger\r\nand constantly living in fear.\r\n\r\nThis really upset me.\r\nSo I went over to it.\r\nAnd I stepped on it.', '14d0589aa45e49', 0, '', '', ''),
('Blue Tablet', 'I was in a night club the other day \r\nand a guy came up and gave me a blue tablet \r\nand said here try this so I swallowed it and man it was incredible.\r\nAll I took was one tablet\r\nand it gave me a full 12 hour relief from all cold and flu symptoms.', '14d0589aa46de8', 0, '', '', ''),
('MILLIONS OF PLANETS', 'Man, millions of planets in the universe and thousands of them supporting life and we have to get you!', '14d0589aa47d88', 0, '', '', ''),
('TIME TRAVEL', 'I''ve invented a time machine that can take you 10 minutes into the future, the only thing is that it takes 15 minutes to get there.\r\nSo in most cases you are better off walking.\r\n\r\nIts all based on my theory that light travels at 300,000 ks per second,\r\nbut faster if its frightened.\r\n\r\nAll I do is show it a picture of a fat guy wearing tight pants.', '14d0589aa48d2a', 0, '', '', ''),
(NULL, NULL, '14d0589aa49cc8', 0, '', '', ''),
('SCHOOL', 'When I went to school we were taught about evolution but now I believe thats wrong. \r\nSo its made me believe a lot of what I was taught was wrong not just history. \r\nNow you''ll hear me say stuff like... "Yeh you might think I''ve spelt that wrong, but who really knows ? "', '14d0589aa4ac69', 0, '', '', ''),
('CAPITAL', 'The capital of Victoria is V.', '14d0589aa4bc09', 0, '', '', ''),
('I SHOULD KNOW', 'I should know because I am that woman.', '14d0589aa4cbae', 0, '', '', '');
INSERT INTO `standup` (`rou_title`, `rou_joke`, `routine_id`, `rou_order`, `rou_memory_description`, `rou_group`, `rou_group_id`) VALUES
('CIGARS', 'The other day I went to buy a cigar and there was a little girl and a little boy watching me and I thought,What if these children see me buying a cigar they might think that smoking is cool and when they grow up they may both start smoking, but by both smoking they may become very close friends and ended up getting married and having children of their own and in some small way I would feel partly responsible, so I bought 3 cigars and gave them one each.', '14d0589aa4db51', 0, '', '', ''),
('LOVE', 'Love songs on the radio today often say stuff like, I cant live with out you and I cant stop thinking about you and I want you back. Well that’s all well and good if the person you are talking about likes you too, but if they don’t and they don''t want anything to do with you then this so called love can turn into something quite nasty.\r\nThat’s why I have written a poem for all those people.\r\nIts called...\r\nThe love I have for you is illegal in most states.\r\n\r\nThere is a girl I love \r\nand I want to court her \r\nBut alas she has a restraining order.\r\n\r\nI go and ask her out to tea\r\nAnd then she sets the dog on me.', '14d0589aa4eaea', 0, '', '', ''),
('ANIMALS VS US', 'A lot of people wonder what makes us different than the animals ?\r\nWell I''ll tell you, we are the only ones that use recipes.\r\nIn fact we quite often use animals in these recipies.\r\nAnd we sometime use animals in recipes to feed other animals who inturn will become  a part of other recipes.\r\nThis proves that its not the strongest animals that survive but those with the least flavour.\r\nThe reason animals lick themselves is to see if they are going to be next.', '14d0589aa4fa8a', 0, '', '', ''),
('UNIVERSE', 'Scientists study space to see if they can find life on other planets.\r\nThe government study space to see if they can find strife on other planets.\r\nAnd nerds study space to see if they can find a wife on other planets.', '14d0589aa50a2a', 0, '', '', ''),
('BODY BUILDING', 'I was going to get into body building, but I could never find enough parts.', '14d0589aa519ca', 0, '', '', ''),
('EXTINCT', 'I know its true there are more and more animal spieces are becoming extinct every year but that’s just natures way of slowly making room for more cars.\r\nAnd when you see a possum that''s been run over you realise that some cars are starting to get impatient.\r\nThat’s why small children have to be careful crossing the road because from a distance  they just look like animals just taking up space.', '14d0589aa5296d', 0, '', '', ''),
('DOG LICENCE', 'I had a dog once and it got thrown in the pound cause it didn''t have a licence,\r\nand it had been driving my car, \r\nwithout a seatbelt.\r\nIt wouldn''t have got caught but it was chasing other cars.', '14d0589aa5390b', 0, '', '', ''),
('DYING', 'I just have one wish when I die and that is, at that moment just before I die, when my whole life flashes before my eyes, I want to be eating popcorn.', '14d0589aa548aa', 0, '', '', ''),
('BREATH', 'In the morning you get up and brush your teeth cause you don’t want bad breath.\r\nThen you go out and as youre coming home the police want to check it and if you don’t meet their requirements you get arrested.', '14d0589aa55850', 0, '', '', ''),
('WEDDING', 'I went to a wedding the other day and as the Married couple came out of the church everyone threw rice on them and as I emptied my container on their heads I realized that I hadn''t bought rice, I''d brought oatmeal and then it started to rain and they ended up having to walk around for the rest day covered in porridge.', '14d0589aa567ec', 0, '', '', ''),
('FISHING', 'I love fishing, I love sitting on a jetty doing next to nothing.\r\nWhat amazes me is the way fish stink if you leave them out of the water.\r\nI reckon that’s why God created salt water, to keep them from going off.\r\nI went fishing the other day and I caught this huge snapper, with a cold sore on its mouth,I tell ya, that Rex Hunt has a lot to answer for.\r\nThe thing is that the deeper you go in the sea the uglier the fish get and I wonder if they realise that, I wonder if they dream of going out with fish that are a bit above them.\r\nIt’s a bit like humans.\r\nSometimes you meet people that if they were fish they would swim around the surface but others you meet you know they would sink straight to the bottom.', '14d0589aa57790', 0, '', '', ''),
('DREAMS', 'I had a dream Bill Gates had a child and called him Victor Richardson.\r\n\r\nI had a dream that I threw up on the carpet at home and then Pro Hart knocked on the door.', '14d0589aa5872b', 0, '', '', ''),
('I KNOW THEM', 'We haven''t actually met..but there was a girl who used to cut his hair who \r\nhad a shop right next door to a guy who,\r\nwhen he was on holidays \r\nstayed with a friend of a person that\r\nknows someone who bumped into a family\r\nthat once was in Australia for a short time \r\nuntil they had some trouble with a ladies 2 nieces \r\nwho were selling some stuff they bought from a company  \r\nwhos general manager married a young girl \r\nwho was brought up just outside a place \r\nthat sometimes has cattle sales \r\nrun by a farmer \r\nwho once lived around the corner \r\nfrom the parents of a guy I know.., well.. \r\nI don''t actually know him I know his bosses second cousin.', '14d0589aa596cb', 0, '', '', ''),
('COMEBACKS', 'Were your parents disappointed they never had any children?', '14d0589aa5a66b', 0, '', '', ''),
('GOODLOOKING', 'I met a girl the other day that was so good looking \r\nthat if I was going out with a girl better looking than her \r\nI would drop her to go out with this one.', '14d0589aa5b60c', 0, '', '', ''),
('COMMANDMENTS', 'The Bible says Thou shall not kill,\r\nBut it doen''t discourage teasing.', '14d0589aa5c5ad', 0, '', '', ''),
('SECURITY GUARD', 'The other day I watched 2 security guards come out of a building with some money.\r\nThey looked nervous and really edgy.\r\nAnd I suddenly thought \r\nwhat if they saw me \r\nand I started to run towards them\r\nwould they get scared ?\r\nAnd if I was wearing a mask\r\nAnd I had a gun\r\nand I was shooting at them.\r\nI wonder if they would go like Oh!!', '14d0589aa5d551', 0, '', '', ''),
('GYM', 'I have just joined a Gym', '14d0589aa5e4ef', 0, '', '', ''),
('SUPER HEROS', 'We all have favorite super heros,\r\nIt seems that to be a super hero you either have to be really rich or be involved to some sort of terrible accident. \r\nLike spider man who got bitten by a radioactive spider.But instead of taking some antihystamine and having a lie down he decided to go out and fight crime.\r\nIts obviously not a true story cause If he could catch bad guys just cause he had radioactive blood.Everyone on kemotherepy should be in the police force.', '14d0589aa5f48e', 0, '', '', ''),
('TOMATO', 'I learnt the other day that a tomato is in fact a fruit, I always thought it was an animal.\r\nNo wonder I couldn''t teach it tricks.\r\nI new it wasn''t an insect cause it didn''t have enough legs.', '14d0589aa6042d', 0, '', '', ''),
('CRICKET', 'I love watching the cricket.\r\nBut what I would like to see is all the cricketers playing nude.\r\nAnd then have people run onto the ground fully clothed.\r\nAnd have the police catch them, pull their pants down and then drag them off the oval.', '14d0589aa613d2', 0, '', '', ''),
('FARM', 'I grew up on a farm.\r\nAnd we had some cows and most farmers with cattle would brand them with a hot iron so they knew they were theirs.\r\n\r\nBut my dad thought this was too cruel so he made all of our cows wear hats.\r\nOne day they all got mixed up with the neighbours cattle just before they had to go to the market.\r\n\r\nSo we hearded everything with a hat into the truck and nearly ended up selling grandma. \r\n\r\nThe guy from the abbotoirs was the one that found her and he rang us and said he could either send her back on the next bus or let her stay and he would give us 4.50 a kilo.\r\n\r\nSo I don''t want to hear anyone say that old people aren''t valuable cause they are!\r\n\r\nEspecially the bigger ones.', '14d0589aa6236e', 0, '', '', ''),
('QUEEN', 'Never address the Queen as Punk.', '14d0589aa6330e', 0, '', '', ''),
('ALZHIMERS', 'It’s a terrible thing that alzhimers disease when people keep forgetting stuff they have done.\r\nWhat would be great is if there was a disease where you could remember all this stuff you never did.\r\n\r\nThat way you could save a lot of money on holidays.\r\n\r\nAnd your friends would like it too cause you could tell them all about your trip but you couldn''t show them any photos.\r\n\r\nThat’s what we need in this world is diseases that are fun, you know, sicknesses that you could get exited about.\r\n\r\nThen people would stop taking drugs and countries with no medicine would start sending us money.', '14d0589aa650b8', 0, '', '', ''),
('INSULTS', 'He is depriving a village somewhere of an idiot.\r\n\r\nHe''s just visiting this planet. \r\n\r\nHe''s not stupid; he''s possessed by a retarded ghost.\r\n\r\nIf anyone wants to buy a brain thats never been used, this guys selling.\r\n\r\nI know you''re not as stupid as you look. Nobody could be!\r\n\r\nIf idiots could fly, this would be an airport.\r\n\r\nI''m going to memorize your name and throw my head away.\r\n\r\nNever enter a battle of wits unarmed.\r\n\r\nHave you ever thought that perhaps your whole purpose in life, is simply to serve as a warning to others.', '14d0589aa65251', 0, '', '', ''),
('CLONING', 'I cant wait until we start cloning pets then', '14d0589aa661ef', 0, '', '', ''),
('ADVERTISING', 'Advertising is a funny thing.\r\nEveryone says that it doesn''t effect them, but it does.\r\nAnd really good advertising can get you to go out of your way to pay for their advertising.\r\nLike I can go and buy a plain tee shirt for 10 bucks. But then some guy will go and buy the same tee shirt with Nike written on it that costs 30 bucks. \r\nHe just went and spent 20 bucks of his own money to advertise something that isn''t even his.\r\n\r\nBut I must admit I do stuff too ,I have a can on diet Coke in the morning, one around 10, two cans in the afternoon and one before I go to bed ….and I don''t even like it.\r\n\r\nWatching too much TV has made me think that if I drink Diet Coke', '14d0589aa67196', 0, '', '', ''),
('FRIENDS', 'Money can buy friends, but they are so expensive.', '14d0589aa68133', 0, '', '', ''),
('SALE', 'Everywhere you look someone it having a sale, on tv or every 2nd shop is having a sale.\r\nThey use any excuse to have a sale, like Beau''s Big birthday sale or The Beau caught his employee Dave picking his nose sale or we''re moving,stock taking, our warehouse got flooded,we are opening up,we''re closing down,someone else is closing down. But regardless of the reasons people come up with there are only 2 types of sale.\r\nThe Its not really a sale we just want you to think it is so that we can sell it for more, sale.\r\nOr\r\nIt really is a sale because we finally found out we can''t sell it for any more, sale.', '14d0589aa690cf', 0, '', '', ''),
('NAMES', 'Years ago people had interesting names. Names that told you what they did like John Smith was a black smith and Henry Butcher was a butcher but now a days there are too many different jobs and sometimes people keep changing their jobs.\r\nSome people think if their name is hyphinated then they sound upper class.I reckon it makes them sound like they work two jobs.', '14d0589aa6a06f', 0, '', '', ''),
('MY MOTTO', 'To be the best I can be.\r\nWithout trying too hard.', '14d0589aa6b00f', 0, '', '', ''),
('DOLPHINS', 'One thing I really hate is dolphins, they are always like, look at me, look at me, I''m a dolphin. \r\nThey''re always swimming around humans or boats trying to get our attention.\r\n\r\nAnd it all started when flipper got his own tv show.\r\nNow they all want to be famous.\r\n\r\nAnd now they are under the impression that everytime a fish gets taken out of the water by a fisherman its for a movie part.\r\n\r\nAnd to get into a movie you have to sleep with Rex Hunt.', '14d0589aa6bfaf', 0, '', '', ''),
('MATCH FIXING', 'I don’t understand the big drama about cricket match fixing.\r\nSo what if a player gets paid to lose, they get paid to win.\r\nIts not easy to lose convincingly.\r\nI think losers should get paid more.\r\nWhy not reward people for stuffing up.\r\nJust like funniest home videos.\r\nIf you are the biggest loser you win a stereo.', '14d0589aa6cf4f', 0, '', '', ''),
('GAMBLING', 'Some people say gambling is wrong. The fact is that we gamble everyday like this morning I bet that I could make a coffee', '14d0589aa6def4', 0, '', '', ''),
('NOISE', 'Noise distributors P/L', '14d0589aa6ee8f', 0, '', '', ''),
('EVOLUTION', 'People that believe in evolution say that things evolve by adapting to their surroundings. Fish grew legs so they could walk on land, then they grew wings so they could fly. And a lot of people believe this and that’s why they encourage their kids to follow in their footsteps.\r\n\r\nSo that if a family are hair dressers for long enough their hands will become scissors.\r\n\r\nIf this was the case can you imagine the tragedy of a fish with legs that wanted to fly having his son come up and say dad, I want to be a dancer.', '14d0589aa6fe33', 0, '', '', ''),
('TOURCH RELAY', 'Wasn''t that tourch relay great.\r\nBut what was the significance of andy thomas carrying the tourch down rundle mall, when was the last time he shopped there?\r\nThat should have been me, in fact given the choice I would have run my leg of the tourch relay on the escalators in the Myer center.\r\nSome people might say that man''s greatest achivement has been sending people into space, but I reckon there is nothing cooler than electric stairs.\r\nWhy would anyone want to be sent to a place that has no shops and the only way you can have a cappaciono is by sucking it out of a tube?\r\nI should have been in the tourch relay not him, who needs space exploration anyway.\r\nBut where would we be without comedians.\r\nWithout comedians in this world everyone would have to …..look at other forms of entertainment.\r\nGary can I go now, I don''t feel so good.', '14d0589aa70dd0', 0, '', '', ''),
('THAI', 'I went to a Asian retauraunt the other day that was so bad on the outside it had a sign that said "Sorry We''re Open".\r\nThen they wouldn''t let me in without a thai until I explained I didn''t know any.\r\nAll the things on the menu had really hard names, so \r\nI said to the waiter I don''t know if I''m saying this right but can I have number 8.\r\nHe explained that it was from the brain of a sheep that could do complex arithmatic and up until yesterday knew the current standings on the AFL ladder.\r\n\r\nAnd I ordered cold rolls, and they came out burnt.', '14d0589aa72d12', 0, '', '', ''),
('CHICKEN CROSS THE RD', NULL, '14d0589aa73cb4', 0, '', '', ''),
('OTHER COUNTRIES', 'I was shocked the other day to discover that even now with the technology on this planet there are still millions of people in other countries that cannot even afford to have a mobile phone, let alone call waiting.\r\n\r\nAnd even less have an email address.\r\n\r\nSome people in Africa, for example have to walk for 3 or 4 days to a village miles away just to make a payment on the car they own.', '14d0589aa74c52', 0, '', '', ''),
('OPENING', 'Hi there,\r\nMy name is Steven Copley.\r\nIts nice to be here tonight in fact its nice to have any excuse to be out of the house, not that I don''t like the people I live with its just I''m too young to live in a old folks home.\r\nThey just sit around all day playing cards. \r\nI work all week to earn a wage then I go home and they win it all off me.\r\n\r\nI''ve got to learn to say no but its hard to standup to an old guy waving a stick and has just had too much heart medicine.', '14d0589aa75bf2', 0, '', '', ''),
('MILK', 'The price of petrol is going up and the price of milk is going down, you know what that means.. soon I''ll have to start riding a cat to work.', '14d0589aa76b93', 0, '', '', ''),
('BEING CALLED NAMES', 'Its not politically correct to call someone a wanker they should be called a donor.', '14d0589aa77b33', 0, '', '', ''),
('FATHERS DAY', 'On Sunday its Fathers Day and my dad is a very caring guy, he lives on a farm he has some cattle and what farmers would do with their cows is they would brand them with hot irons so that they can tell them from the neighbours cattle, some would brand them on the rump and some farmers would brand them in less conspicous places so they could still get into night clubs, any way my dad thought that was too cruel, so he made all of our cows where hats.', '14d0589aa78ad3', 0, '', '', ''),
('DREAM', 'Ive had a recurring dream lately.\r\nSome people dream of falling in love or going on holidays or winning a million dollars.\r\nBut in the recurring dream I''ve had , I''ve been going for job interviews.\r\nBut thankfully that’s all come to a stop cause last night in my dream I finally got employed.\r\nAnd I start as soon as I get to sleep tonight.\r\nI''m know I''m going to feel awquard being at work in pyjamas but I''m exited knowing the longer I sleep in, the more overtime I get paid.', '14d0589aa79a71', 0, '', '', ''),
('OLYMPICS', 'One thing I''ve learnt from the olympics is that you must always remain positive except when you are being tested for a banned substance.', '14d0589aa7aa11', 0, '', '', ''),
('INSULT', 'They broke the mold when they made you, and for good reason.', '14d0589aa7b9b1', 0, '', '', ''),
('TAI-BAO', 'I have been thinking about joining a ti-boa class.\r\nThats a thing that mixes self defence with aerobic style fitness.\r\nIt’s a great form of defense as long as you get attacked while there is music going.', '14d0589aa7c952', 0, '', '', ''),
('PRETENDING', 'When I''ve got a headache I don’t take anything.\r\nWhen I get a headache I just make out I''m on really heavy pain killers and the pain goes away.\r\nIts great as long as I remember not to operate heavy machinery.\r\n\r\nCause one time I got arrested by the cops when I was pretending to drive under the influence of these pain killers and to make things worse I also made out I had been drinking.\r\n\r\nThey ended up having to drop all the charges though because, the car I was driving at the time, wasn’t real.', '14d0589aa7d8f2', 0, '', '', ''),
('IDIOT', 'Hey Don''t hassle me,\r\nI never wanted to be a comedian anyway\r\nI wanted to be an idiot\r\nbut thanks to people like you,\r\nI found out \r\nall those jobs were taken.', '14d0589aa7e892', 0, '', '', ''),
('CROSSWORDS', 'I don''t understand people who do crosswords, you spend all this time writing words and at the end of it all you haven''t even got a sentence.\r\nI think if you are going to aquire a skill it should be one that you can use if by some freak accident you are taken back in time to when cowboys were roaming the earth. A skill like cooking, it could save your life', '14d0589aa7f832', 0, '', '', ''),
('EVOLUTION', 'If evolution is true then why', '14d0589aa807d2', 0, '', '', ''),
('MR ANTENNA', 'Is there really a person called Mr Antenna.\r\nAnd if so how did he get his name.\r\nIf you ring Mr Antenna and you complain about the reception on your TV does he come out or does he send the receptionist.', '14d0589aa81772', 0, '', '', ''),
('LIFELINE', 'I do volunteer work at life line.\r\nWe sit there waiting for depressed unhappy people to ring us.\r\nBut when its slow and noone is calling, I usually decide to pickup the phone book and start drumming up new business.\r\nI''ll say something like \r\nHi how are you going.\r\nAnd you have to be able to take rejection cause they often say.\r\nI''m, good thanks.\r\nI just keep reminding myself it’s a number''s games.', '14d0589aa82714', 0, '', '', ''),
('APPENDIX', NULL, '14d0589aa836b3', 0, '', '', ''),
('LANES', 'I think its very interesting that in a swimming pool the pool is divided into lanes.\r\nMuch the same as a highway, but unlike a highway you never have traffic jams, and that is because noone ever swim''s to work. I''m not saying that that is a good thing or a bad thing just that it’s a thing.', '14d0589aa84653', 0, '', '', ''),
('GREED', 'We don’t know how lucky we are.\r\n\r\nI write to a 9 year old boy in a poor part of Africa that works 12 hours a day 7 days a week just so he can afford to pay for internet access so he can get the emails I send him.\r\n\r\nI used to be so poor that I could never afford to come to a place like this and hear a comedian, I had to stay at home and write my own jokes. You probably think that being a comedian is pretty glamourous…and it is. After we have all finished here we''ll all be going down to have a Subway.', '14d0589aa855f3', 0, '', '', ''),
('BEING A KID', 'Its hard being a kid\r\npeople tell you you have to watch what you eat but you''re not allowed to chew with your mouth open', '14d0589aa86598', 0, '', '', ''),
('POLITICS', 'People ask me.\r\nSteven why don''t you do any political humour.\r\nAll right then what does GST stand for?\r\nOK I''ll tell you what it stands for.\r\nGoods and Services Tax.\r\nThat''s why I don''t do political humour.\r\nBecause noone would understand it.', '14d0589aa87534', 0, '', '', ''),
('PET PLANT', 'I have a pet plant.\r\nIt doesn''t have a name.\r\nBecause there is no point.\r\nIts too hard to get its attention. \r\nIt lives in a pot, sometimes when I''m watching TV I''ll sit it on my lap and pat it, its hard to know if it likes it but its good for me cause its like watching TV from the jungle.\r\nI heard that left over coffee from a plunger is good for pot plants, so I put some in its soil the other day and put it out side.\r\nThe next morning I came out and theres all these snails sliding around the lawn bumping in to each other.\r\nEver since then heaps of snails have been hanging around my garden its like some snail told them it was a great place for a holiday. At one stage I saw a snail actually camping on my lawn. I know it was camping because it had setup a little annex next to its shell.', '14d0589aa884d4', 0, '', '', ''),
('SNAILS IN NIGHT CLUB', 'Have you ever wondered why you don''t see snails in night clubs?\r\nIts because the reason people go to night clubs is so that they can ''pick up''"\r\nbut snails don’t have to, because snails are asexual which means….well you''d know what it means"', '14d0589aa89474', 0, '', '', ''),
('BORN', 'When I was born the doctor told my parents I was born nearly perfect.\r\nHe said the medical term for my condition was that I had a disorder disorder.', '14d0589aa8a414', 0, '', '', ''),
('SMART DRINKS', 'I went into a deli the other day to buy one of those smart drink..those ones that come in a thin can.\r\n\r\nAnyway I wasn’t watching when I reached in the fridge and I made the mistake of buying a dumb drink instead.\r\n\r\nBut I must admit they taste pretty good and its not just me.\r\n\r\nI meet a lot of people that must love the taste.', '14d0589aa8b3b4', 0, '', '', ''),
('THE INTERNET', 'You know the internet is amazing.\r\n\r\nSoon we will be using the internet to run the stuff in our houses like the fridge and the washing machine I don''t know how .. Or why... but its amazing.\r\n\r\nYou can even get the internet on your phone now... I don’t know why you''d want to... but its amazing. Maybe its so you can talk to your washing machine.', '14d0589aa8c353', 0, '', '', ''),
('ZOO', 'You know, Zoo animals are basiclly animals that played hide and seek and lost …..forever.\r\nThat’s why they don''t look ferocius, cause they know they lost and there is nothing they can do, they have given up on life.\r\n\r\nIf they were human they would be wearing tracksuit pants and ugg boots.\r\n\r\nIf you were in the jungle and threw a peanut at a gorilla it would rip you to shreds.\r\nBut in a zoo its like hey thanks man, got another one?', '14d0589aa8d2f6', 0, '', '', ''),
('SALAD', 'I love plants, and that’s why I can''t eat salad because a salad looks like a heap of plants that have been in a car accident.\r\n\r\nImagine if plants could drive and you heard stuff like this on the radio.', '14d0589aa8e296', 0, '', '', ''),
('MINORITY GROUPS', 'I was walking down a backstreet the other day and a coloured man came up to me, well you know what I mean, a person with tatoos and he was about 8 feet tall and he asked if I had a cigarette and I didn''t know what to say because I don''t smoke and cause I didn''t want him to think that I disapproved of smoking so I said.\r\nYeh but you can''t have one.\r\nAnd then I woke up…in hospital.', '14d0589aa8f235', 0, '', '', ''),
('NO VEGETABLES', 'Vegetarians are so proud that they only eat vegetables.\r\nThey think they have high principles because they don’t eat meat, well I have too.\r\nAnd I don’t eat vegetables. \r\nBecause I won''t eat anything, that hasn''t had a chance, to run away.\r\nBecause they don''t have legs. They can''t run away the best a melon could do is roll away.\r\nIts too easy to get vegetables, you don’t have to go spot lighting to catch celery or set a trap for parsley. They just sit there hoping you don’t think they will be filling.', '14d0589aa901d5', 0, '', '', ''),
('CREATION', 'On the sixth day God played sport.', '14d0589aa91175', 0, '', '', ''),
('SPORT', 'I am great at sport, until I get with other people.\r\nI''m great at tennis, until I have to play someone else.\r\nThen there''s the net, and the tram lines.\r\nAnd quite often, they don''t even hit it to you.\r\nI like non competetive sports like…\r\nLike when I was 2 and my mum threw me a ball and it didn''t matter if I caught it.\r\nBecause she loved me.\r\nNoone could beat me at that, until my brother came along, and then my sister.\r\nAnd then family life was no longer about love, it was about ball skills.', '14d0589aa92115', 0, '', '', ''),
('DNA', 'I watched Jarrasic Park the otherday and I reckon.\r\nIf we could reproduce stuff from DNA, I don’t think the first thing we would do is create dinosaurs.\r\n\r\nI think we would make blood so people wouldn''t have to donate.\r\nAnd then we would recreate lung tissue to save people dying from lung cancer.\r\n\r\nAnd THEN! we would make dinosaurs.', '14d0589aa930b6', 0, '', '', ''),
('DIFFERENT JOBS', 'You go to school when you''re young and learn stuff that you never think you''ll use.\r\nAnd then you go to career councilling to see if anything you leant was helpful.\r\n\r\nThey say that children being born today will end up having jobs that are not invented yet.\r\nThey also say that these kids will be unemployed for the next 15 years.\r\n\r\nSo how do the teachers know what they have to teach the kids.', '14d0589aa94057', 0, '', '', ''),
(NULL, 'Living on a farm, my parents would sometimes make stuff instead of buying it.\r\nThe first car I drove was made by my mum with a sowing machine. \r\n\r\nI took it out one day for a drive when it was raining and it shrank.\r\n\r\nAnd I was trapped inside for an hour before the police rescued me with the jaws of life and a knitting needle.\r\n\r\nI was OK but the car was a write off and I had to have it towed to St Vincent DePaul, where they let me trade it in on a scivvy and some slacks.\r\n\r\nBut the other day I found someone driving it around and I said, mate I used to own that car it’s a dump and he said yeh I got ripped off by some used clothes salesman.', '14d0589aa94ff8', 0, '', '', ''),
('Ryhming Truths', 'Before a sermon the preacher should be praying,\r\nunless of course the Crows are playing.\r\n\r\nIt''s wrong to drink too much milo.\r\nBut its not sin to eat from the tin.\r\n\r\nYou can live free, if you watch TV.', '14d0589aa95f96', 0, '', '', ''),
('Calenders', 'The other day I went done to the dump and someone \r\nhad thrown out all these calenders, I mean what a waste. especially when \r\nyou think that there are people in Ethiopia that don’t even know what year it is.\r\nIf I didn''t eat what was on my plate when I was a kid my mother used to say to me "You don’t know how lucky you are, there are people in other countries that don''t have any food" and if I still didn''t eat it she''d say "If you don''t eat what''s on your plate you won''t get any dessert" and I thought that was because if I didn''t eat it, she was going to send it overseas". And so I was hoping that there mothers overseas that were saying, to their kids, if you don’t eat your dessert I''m going to send it back". And I know I''m not the only one that thinks this way that’s why all kids in Australia like checking the mail.', '14d0589aa96f37', 0, '', '', ''),
('Brown Shoes', 'I hate shopping because there are too many choices. Like the other day I was looking at 2 pairs of brown shoes and I couldn''t decide.\r\n\r\nThey were both the same type of brown, they both had laces, the stitching was nearly the same and one had a rubber sole the other one had a leather sole.\r\n\r\nIn the end I didn''t buy either, because I don''t like brown.', '14d0589aa97ed7', 0, '', '', ''),
('Tattoo', 'I have a friend that has a tattoo on his bum that says "No junk mail"', '14d0589aa98e76', 0, '', '', ''),
('A Great Day', 'I''ve had a great day today.\r\n\r\nIt started this morning when I dropped a piece of toast on the floor and it landed buttered side up.\r\n\r\nI ran over a cat, but it was dead already.\r\n\r\nThen later on in the day I picked my teeth with a business card without bending it so I was still able to give it to a customer a bit later.\r\n\r\nThen on the way here I got pulled over by the breathe alyser and after I blew into the bag the officer had a funny look on his face and he went over to the sergent and I''m thinking well there goes my great day. Well his sergent came over and said "There''s nothing wrong sir but could I suggest that at the first opportunity you get you should stop off and buy some peppermints."', '14d0589aa9adb7', 0, '', '', ''),
('Statue', 'I like to think of myself as a monument to a very important statue.\r\nOne day at the end of my life I would like to think that they would make a statue of me, recognizing the job I did recognising the other statue.', '14d0589aa9bd57', 0, '', '', ''),
('Movies', 'I have a dream. Not to be in movies but to watch them.the problem is that there are so many others wanting to do the same thing.\r\n\r\nMy mum used to say,what makes you think you''ll be good enough to get there before all the movies have been lent out.', '14d0589aa9ccf7', 0, '', '', ''),
('SubWay Hecle line', 'Mate, If evertime you said something stupid you, you got a subway stamp I bet you''d have enough for a franchise.', '14d0589aa9dc98', 0, '', '', ''),
('Pumpkin soup', 'I think the reason I dont like pumpkin soup is because I believe it is made out of people that didnt get home by midnight.', '14d0589aa9ec3b', 0, '', '', ''),
('Super Hero', 'There is an advert that uses the MAN OF ATLANTIS as a super hero to sell its brand of water.\r\nNow if this guy is a superhero just for promoting a drink, the only thing he''ll be able to do when good battles evil, is serve refreshments once its finished.', '14d0589aa9fbd8', 0, '', '', ''),
('Heaven', 'I believe heaven is a wonderful place. A place where if you play cricket you can bat for ever and you never have to field.\r\nA place where', '14d0589aaa0b78', 0, '', '', ''),
('Nudist', 'You''re the sort of person that would buy a Nudist Magazine and expect us to believe you do it for the volleyball scores.', '14d0589aaa2ab8', 0, '', '', ''),
('INTERNET GIRL', 'I met a girl on the internet the other day and she wanted me to send her a picture of myself. I didn''t want her to think I was ugly so I drew her a picture. \r\nBut because I''m not a very good drawer she now thinks I''m made out of sticks. \r\nBut she said that after seeing my picture she thinks I''d the perfect person to keep her warm on those long cold winter nights because when it really gets cold she''ll be able to use me as firewood.', '14d0589aaa3a59', 0, '', '', ''),
('Pets', 'I hate pets, because to me a pet''s just an animal that can''t make it in the real world. \r\n\r\nI used to have a cat, but I came home one day and saw it catch a mouse, but instead of killing it and eating it , it went into the kitchen, threw it in the microwave, closed the door and hit casserole.', '14d0589aaa49fa', 0, '', '', ''),
('Chicken tonight', 'I bought a bottle of chicken tonight once, got it home and realised that I also had to buy chicken which made the whole thing turn into chicken tomorrow night.', '14d0589aaa599a', 0, '', '', ''),
('Farm', 'People that know me are surprised when they find out that I was actually raised on a farm by 2 humans.', '14d0589aaa78d9', 0, '', '', ''),
('Magic Mountain', 'Man they are making a lot of fuss about magic mountain and wanting to tear it down, I remember when it was magic molehill.', '14d0589aaa887b', 0, '', '', ''),
('Titanic', 'Like rearranging deck chairs on the Titanic.\r\nWhen all else fails try feng shui.', '14d0589aaa9819', 0, '', '', ''),
('Tyre', 'The tyres were bald on my car so I took it into a bridgestone outlet and the guy there gave them a comb over.\r\nSo remember Bridgestone with a capital C for Combover.', '14d0589aaaa7ba', 0, '', '', ''),
('Coat hangers', 'Some people are lazy, like a saw a guy try to put a coat hanger in his car, without having to open the door.', '14d0589aaab75a', 0, '', '', ''),
('New Things', 'I have been trying new things recently.\r\nJust to put more spice in my life.\r\nLike this morning instead of getting up having a shower and putting my clothes on I got up put my clothes on and had a shower, Its an interesting feeling, its like being caught in the rain.\r\n\r\nSo I thought I''d make the most of the opportunity and I made out I was waiting for a bus.\r\n\r\nThe problem I had was that when you get caught in the rain you just cant wait to get home and have a shower\r\n\r\nSo you can see how I felt… I had nowhere to go. Although I was also in the unusual position of being able to change the temperature of the rain.\r\n\r\nWith the added advantage of being able to change the temperature of the rain or in fact make it stop', '14d0589aaac6fa', 0, '', '', ''),
('Descisions', 'Im at that time in my life again when I have to make a big descision…either I cut my toe nails or.. I buy bigger shoes.', '14d0589aaad69a', 0, '', '', ''),
('Fashion police', 'I got pulled over by the fashion police the other day for not wearing a belt.', '14d0589aaae63b', 0, '', '', ''),
('The show', 'I went to the show last year and I got a free game for getting a hole in one at the put put. And then I got in trouble getting a hole in one … of the dodgem cars.\r\n\r\nTo get anything at the show you cant just pay for it you had to win it.\r\n\r\nThe worst thing was that I wasn’t allowed to pay for the repair they made me win it on their dance machine. \r\n\r\nIt also gave them the opportunity to sell tickets to a show they called The world''s most uncoordinated man.\r\n\r\nThe only difference between me dancing and a person on hot bitumen with no shoes ..is it didn''t cost him 2 tokens.', '14d0589aaaf5dc', 0, '', '', ''),
('Short term mem. Gain', 'Some people suffer from short term memory loss.\r\nI get the opposite, I get short term memory Gain, that’s when I remember stuff I really didn''t do five minutes ago.', '14d0589aab057b', 0, '', '', ''),
('Viruses', 'I have a lot of viruses on my computer but I wont download a virus checker because I don’t want to make them angry.', '14d0589aab151b', 0, '', '', ''),
('Song', 'I''ve written a love song similar to "You say it best when you say nothing at all".\r\n\r\nIts called "I like it when you shut up."', '14d0589aab24bc', 0, '', '', ''),
('promo', 'Need a comedian for your Christmas Show that''s a little bit different.\r\nOne that will be loved by any crowd \r\nwith years of experience behind him and \r\nquite a few years still in front of him.\r\nBookings for Christmas 2003 still available.\r\nFor Adelaide''s answer to a question that hasn''t been asked yet, \r\nPhone 0411246454.', '14d0589aab345d', 0, '', '', ''),
('Radio', 'I was knocked out of the first round for wearing something too revealing…\r\n\r\nI had a t-shirt on that said "I''m an Idiot"\r\n\r\nBut at least it gave my t-shirt business a kick start and hopefully it will go a bit better than the last thing I tried…\r\nWhen I bought that Jim''s "Bum wiping Franchise"…\r\n\r\nBut what could I say? They rang up and said they had a few openings.\r\n\r\nOn the Backs of buses they have been advertising to save the Murray\r\nwith the saying "Slow the flow" \r\nCause they are a lot of farms struggling that use the Murray\r\nNow I reckon if you want to slow the river Murray \r\nyou need to put something really big in it.\r\nAnd there is nothing bigger in Australia at the moment than \r\nAustralian Idol Guy Sebastian.\r\nSo they should change the motto to \r\nGo The Fro to Slow the Flow for farmer Joe.\r\n\r\n\r\n\r\n\r\n665 the neighbour of the beast\r\nIf I throw a stick will you leave?', '14d0589aab43fd', 0, '', '', ''),
('Mobile Phones', 'I wanted a mobile phone so I got a whole heap of brouchures and looked though them and I''ve now realised I wont be able to get one... cause I''m not good looking enough.', '14d0589aab539c', 0, '', '', ''),
('Racism', 'I found out how bad the Klu Klux Klan really are, Not only do they hate races like the American Indians and the chinese they are also against hurdles and the 4 by 100 meters relay.', '14d0589aab633c', 0, '', '', ''),
('Im from Australia', 'I''m on hold\r\n\r\nI''m being recorded for coaching purposes\r\nbut what could I do\r\nI need help but Ive been placed in a queue\r\nso here I am tapping my pen\r\nit was either that or hit # \r\nto hear the options again\r\n\r\nbeing soothed by easy listening music', '14d0589aab72e0', 0, '', '', ''),
('Crocodille', 'Did I tell you the time I came face to face with a crocodille? Its not as bad as it sounds, it was lying on a plate surrounded by vegetables, but there was no denying it was a crocodille, although it tasted a bit like chicken….well it could have been a chicken but I didn''t want to tell you about the time I was in the Northern Terriotry and I came face to face with a chicken.\r\n\r\nI was once attacked by 2 lions, well they could have been rotarians, all cause I had something bad to say about their sausage sizzle.', '14d0589aab827c', 0, '', '', ''),
('Gaza Stip', 'There is fighting all over the world whether it be Israelis and Palastinenians arguing over the Gaza strip, or two kids at KFC fighting over a crispy strip.', '14d0589aab921e', 0, '', '', ''),
('John West', 'I believe John West needs to learn to accept each fish for who they really are.', '14d0589aaba1c0', 0, '', '', ''),
('golf', 'People who love trees havn''t played enough golf.', '14d0589aabb162', 0, '', '', ''),
('dead cat', 'I know this guy who really really really loved his cat and he spent heaps of money buying it food and then it died and although he is saving money on feeding it now he says that he is having to spend more and more on air freshner.', '14d0589aabc101', 0, '', '', ''),
('Drugs', 'I have decided that I''m going to start taking drugs.\r\nIts not because I want to be a rebel or because I don’t enjoy life enough, although they are all very good reasons, Its because I want the respect of my peers.', '14d0589aabd0a0', 0, '', '', ''),
('Universe', 'I''m tied of hearing people''s theories of where the universe ends and where it starts, I have enough trouble finding where the sticky tape starts.', '14d0589aabe041', 0, '', '', ''),
('Achilles heel', 'Many do gooders down through the ages\r\nhave had an Achilles heel, for instance\r\nAchilles had his heel, \r\nSuperman had kryptonite \r\nand flipper had plastic bags.', '14d0589aabefe0', 0, '', '', ''),
('Walking', 'When I first heard about the 10000 steps a day I thought, man this is no walk in the park.\r\n\r\nBut as I thought about it a bit more I started to break it down, I realised that I take a thousand steps to the deli and back each day to buy a pie so if I could eat just ten pies a day I''d be fine.', '14d0589aabff7f', 0, '', '', ''),
('Dolphin', 'People love dolphins.\r\nI think dolphins are dumb cause they get killed by plastic bags, but this is how they get killed by plastic bags..\r\n\r\nThey''re swimming past a plastic bag when they realise that inside the plastic bag is a supermarket reciept and then they notice on the back of the receipt, hey.. This has a 2 for 1 offer of fiji film.\r\nSo they put their head in the bags and realise firstly that they are trapped and can''t get out and secondly, they don''t own a camera.', '14d0589aac0f1e', 0, '', '', ''),
(NULL, 'I bet 1000 bucks that if you went to google and looked up "People in the world that are dumber than.." And your name I bet there would be no matches.', '14d0589aac1ebe', 0, '', '', ''),
('Im no different', 'Has anyone ever been looking for your sunglasses and then realised they were on your head?\r\nThe same happens to me like this morning when I was getting dressed I counldn''t find my underpants.', '14d0589aac2e5e', 0, '', '', ''),
('The Environment', 'People say we should look after the environment.\r\nI say why should we, it doesn''t look after us.\r\nYou don’t hear the environment saying I''m not going to rain today because the crickets on.\r\nI''m not saying I''m right or wrong I''m just saying it should be a two way street.', '14d0589aac3dfb', 0, '', '', ''),
('We are the world', 'Remember that line in ''We are the world''\r\nDo they know its christmas time at all.\r\nIt moved me so much I sent of a whole heap of calanders.', '14d0589aac4da0', 0, '', '', ''),
('Stealing Ideas', 'Do you remember the song ''who let the dogs out''?\r\nThat was based on a song I wrote called ''who left the milk out''', '14d0589aac5d42', 0, '', '', ''),
('Sex Change', 'I don’t understand people who say they''re a woman trapped in a man''s body and they want to get a sex change because they think it will fix the problem.\r\n\r\nIf it did then it would mean prisoners could escape from jail just by changing the taps.', '14d0589aac6cdf', 0, '', '', ''),
('skit', 'other things that were a conspiracy, like landing on the moon.', '14d0589aac7c7f', 0, '', '', ''),
('skit', 'other times you need a runner', '14d0589aac8c20', 0, '', '', ''),
('skit', 'ski diving in tandem leads to learning other things in tandem', '14d0589aac9bc1', 0, '', '', ''),
('skit', 'cooking show - cooking with no hands', '14d0589aacab60', 0, '', '', ''),
('late night shows', 'Sometimes when I cant sleep I sit up and watch infomercials on TV.\r\nBut its always late and I''m usually in half a daze, like last night they said that if you use this certain product you can trim 3 inches off your waist.\r\nI cant remember the product I think it was a set of knives.', '14d0589aacbb00', 0, '', '', ''),
('skit', 'Advert Bloopers - The things we didn''t see.', '14d0589aaccaa0', 0, '', '', ''),
('Bible', 'I have written a handbook for the Bible that helps you understand it and use it and I''ve called it the Bible Bible.', '14d0589aacda40', 0, '', '', ''),
('Stopping War', 'There would be no more wars if we were only nicer to our prisoners, I mean if you want someone to like you, you don’t invite them over to your place and tourcure them.\r\nYou invite them over for a barbeque, the worst you do is ask them to bring a salad.\r\nImaging how easy it would have been in ww2 to get the enemy to surrender if they knew they would get a sausage sizzle?', '14d0589aace9e5', 0, '', '', ''),
('Previous Job', 'Did you know that I used to work at a garden center shovelling manure during the day and at night I did line dancing.\r\nYep thats right I was a Boot Scooting Poop Scooper.', '14d0589aacf987', 0, '', '', ''),
('Grampians', 'Some comedians talk about things they hate the only problem with that is you sometimes offend people in the audience.\r\nI hate the Grampians, they think they are so good but they make you drive around them, sometimes people climb up them and fall off them and hurt themselves.\r\nThey have ants.\r\nI can see no ones laughing, I''ve obviously hit a nerve.', '14d0589aad0922', 0, '', '', ''),
('Job Interviews', 'I work for myself because I am really bad in interviews.\r\nLike I remember one time I went for a job interview Internationl Computer Firm and after they told me all about themselves they asked if I had any questions and I said what time is lunch and they said 12 pm and they said do you have any more questions and I said how long does lunch go for.\r\nWhat are you allowed to eat? Anything.\r\nDoes that mean I wont get in trouble for eating someone elses lunch?', '14d0589aad18c1', 0, '', '', ''),
('opposites', 'Zanadon''t\r\nNobody loves Raymond\r\nSmall W\r\nPepsi Min', '14d0589aad2866', 0, '', '', ''),
('1', 'When I was younger I was in a gang, but unlike other gangs that roamed around on motor bikes or hotted up cars, we used to take taxis.\r\n\r\nThere were only two of us in the gang me and my brother, he was the muscle and I was the up front man because I was the best taker out of the thice of us.\r\n\r\nPeope used to wonder why we started a gang but theirs not much else to do when you''re young, angry at the world and only allowed to watch an hour of tv a day.\r\n\r\nOur thing was grafitti. We didn''t draw grafitti on houses or sheds because we knew we would get in trouble. We drew grafitti on farm animals. We did it on animals because we knew, regardless of that happened they had to  keep their mouth shut.\r\n\r\nIf we wanted to grafitti a sheep, we used to take a taxi out into the paddock then jump out and slowly creep up on it.\r\nAs some of you know when you are trying to catch a sheep it is very important that you wear the right clothes, because the natural enemy of the sheep is velcro.\r\nBut even with the right clothes you have to work fast.\r\nBecause the taxi is still there and the meter is running.\r\n\r\nHas anyone every heard of striped bacon?\r\nNo?\r\nThat’s mainly my fault because even though I invented the term, I forgot to tell anyone.\r\nAnyway what it is is you catch a pig and spray paint vertical lines on it so that it looks like its in jail, then you throw it in with all these free range pigs and they think that its cooped up and in a pen, they start to feel sorry for it and then they all sign a petition to have it released.\r\n\r\nI tell you, people think pigs are clever but we had about a hundred of them and only one knew his times tables, and we lost him when he was 2 years old.\r\nHe didn’t die, he won a scholarship.\r\nActually he nearly didn''t get the scholarship but there was a big signed petition.', '14d0589aad3802', 0, '', '', ''),
('Pets', 'I do have some pets myself, pet fish in fact I keep them in an aquarium, they are not so much fresh water fish as tomato sauce fish and their aquarium is fully encolsed and made out of tin and I haven''t actually seen them but they are in there if I''m to believe John West.\r\nThe problem with having food as pets is they never return the love they are given and your feelings can change for them if there is nothing left in the fridge.', '14d0589aad47a1', 0, '', '', ''),
('Fat', 'I went to the doctor the other day and asked him if I was fat… and he said that I''m not fat its just that my body is in disproportion to the planet I''m living on.\r\n\r\n\r\nAnd that’s why when a woman asks if her bum looks big the correct answer is that she is more than likely from Venus.', '14d0589aad5742', 0, '', '', ''),
('peanets', 'I''ve come up with a better name for peanuts, its I can believe its not almonds.', '14d0589aad66e3', 0, '', '', ''),
('LSD', 'If LSD was made out of glass I think people would think twice before dropping it.', '14d0589aad7684', 0, '', '', ''),
('Flies are dumb', 'Flies are stupid and its because they all seem to spend most of their time at the beach you rarely find any in a classroom. \r\nNow the people from areogard realised this, and so the reason areogard works so well is that the clever people that developed it made it smell like homework.', '14d0589aad8622', 0, '', '', ''),
(NULL, 'Have you ever seen old people who have a hand that keeps shaking even when the are not shaking hands?\r\nIts like they are continually meeting invisible people.\r\nSometime I just want to yell out leave him alone hes eating.', '14d0589aad95c2', 0, '', '', ''),
('Tennis', 'raquet sponser', '14d0589aada563', 0, '', '', ''),
('Sad News from home', 'I heard some bad news from home the other day. \r\nBack on my parents farm our favorite chicken had died. \r\nOne morning my parents were woken up by \r\na scream coming from the chicken shed. \r\n\r\nThere was nothing unusual about that, \r\nit happens every morning \r\nbecause our rooster is gay. \r\n\r\nBut this time our favorite chicken was found dead, \r\neven though that it sad \r\nit got worse \r\nthere was a suicide note. \r\n\r\nApparently she felt that although she had enjoyed a good life \r\nand had made a lot of friends \r\nit was time for some younger chicken to take over as the main egg provider \r\nand secretary of the golf club. \r\n\r\nShe also left strict instruction of what to do with her body. \r\nShe wanted to be deep fried. \r\nCut into Quarters \r\nand covered with apricots. \r\n\r\nIt is so sad, we loved her and she loved us. \r\n\r\nFrankly I dont believe the reason she gave for her suicide. \r\nWe knew each other too well. \r\nI believe its beause she knew that I had a birthday coming up soon \r\nand that I was going to be a party.', '14d0589aadb50a', 0, '', '', ''),
('Homeless People', 'The correct term for Homeless People is Free range people.', '14d0589aadc4a4', 0, '', '', '');

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
('570c8e1ae1b33cb', 'nuobject', 'Object', 'sob_all_id', 'l', NULL, 'sob_all_id', 50, 250),
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
('574d07c7a3f0882', 'nuobject', 'id', 'zzzzsys_form_id', 'l', NULL, 'zzzzsys_form_id', 60, 0),
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
('577b4228b34a55d', 'nurunreport', 'Code', 'sre_code', 'l', '', 'sre_code', 10, 150),
('577b4228b34af41', 'nurunreport', 'Description', 'sre_description', 'l', '', 'sre_description', 20, 250),
('577b4228b34b950', 'nurunreport', 'Group', 'sre_group', 'l', '', 'sre_group', 30, 150),
('577c47fa66beb63', 'nurunreport', 'Form', 'sre_zzzzsys_form_id', NULL, NULL, 'sre_zzzzsys_form_id', 40, 0),
('577b48b3f35232a', '577b48b3f351026', 'Code', 'sph_code', 'l', '', 'sph_code', 10, 150),
('577b48b3f352d94', '577b48b3f351026', 'Description', 'sph_description', 'l', '', 'sph_description', 20, 250),
('577b48b3f353765', '577b48b3f351026', 'Group', 'sph_group', 'l', '', 'sph_group', 30, 150),
('577b48b3f354185', '577b48b3f351026', 'Launch From', 'CONCAT(sfo_code, '' - '', sfo_description)', 'l', '', 'sfo_code', 40, 300),
('577b4b6ca3ea898', 'nurunphp', 'Code', 'sph_code', 'l', NULL, 'sph_code', 10, 150),
('577b4c18a8bf431', 'nurunphp', 'Description', 'sph_description', NULL, NULL, 'sph_description', 20, 300),
('577b4c18a8c02ee', 'nurunphp', 'Group', 'sph_group', NULL, NULL, 'sph_group', 30, 150);

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
('573d15d41e2aa8c', '573d15d41e279ba', 'onclick', 'window.open(''nureportbuilder.php'');'),
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
('nuphp', 'browseedit', 'PHPCODE', 'PHP Code', 'zzzzsys_php', 'zzzzsys_php_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_php\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', ''),
('nublank', 'launch', 'BLA1', 'Blank', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\nvar reportID    = nuBC[nuBC.length-1].record_id;\n\n$(''#nuTab0'').hide();\n\n$(''.nuActionHolder'').css(''text-align'',''center'');\n\nnuAppendActionButton(''Print'',"nuRunReport(''" + reportID + "'');");\nnuAppendActionButton(''Email'',"nuEmailReport(''" + reportID + "'');");\n\n\n\n'),
('nuaccessgroup', 'subform', 'GAL', 'Groups Access Level', 'zzzzsys_user_group_access_level', 'zzzzsys_user_group_access_level_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * FROM zzzzsys_user_group_access_level', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5757a4b7181e365', 'browse', 'RUN', 'Run Form, Report or Procedure', 'zzzzsys_run_list', 'id', '', '', '', '', '$s = "\n\nDROP VIEW IF EXISTS zzzzsys_run_list;\nCREATE VIEW zzzzsys_run_list AS\nSELECT zzzzsys_form_id AS id, ''Form'' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_form\nUNION\nSELECT zzzzsys_report_id AS id, ''Report'' AS run, sre_code AS code, sre_description AS description FROM zzzzsys_report\nUNION\nSELECT zzzzsys_php_id AS id, ''Procedure'' AS run, sph_code AS code, sph_description AS description FROM zzzzsys_php\nORDER BY code;\n\n";\n\nnuRunQuery($s);', '', '', '', '', '', 'SELECT zzzzsys_form_id AS id, ''Form'' AS run, sfo_code AS code, sfo_description AS description FROM zzzzsys_run_list', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\n$("[data-nu-column=''nucolumn000'']").each(function() {\n\n    $(this).addClass(''nu_''+this.innerHTML);\n\n});'),
('nudebug', 'browseedit', 'DEBUG', 'Debug', 'zzzzsys_debug', 'zzzzsys_debug_id', '', '', '50', '13', '', '', '', '', '\n$a  = ''#delete_option#'';\n$r  = ''#RECORD_ID#'';\n$d  = "DELETE FROM zzzzsys_debug ";\n\nif($a == 1){$d  = $d . "WHERE zzzzsys_debug_id = ''$r''";}\nif($a == 2){$d  = $d . "WHERE zzzzsys_debug_id != ''$r''";}\nif($a == 3){$d  = $d . "WHERE zzzzsys_debug_id < ''$r''";}\n\nnuRunQuery($d);\n', '', 'SELECT * FROM zzzzsys_debug\nORDER BY zzzzsys_debug_id DESC', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '$(''#delete_option'').val(0);'),
('nuaccessreport', 'browseedit', 'ACCPHP', 'Access To Procedures', 'zzzzsys_access_level_php', 'zzzzsys_access_level_php_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * \nFROM zzzzsys_access_level_php\nJOIN zzzzsys_php ON zzzzsys_php_id = slp_zzzzsys_php_id\nORDER BY sph_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57637ad7b560755', 'browseedit', 'ACCREP', 'Access To Report', 'zzzzsys_access_level_report', 'zzzzsys_access_level_report_id', '', '', '', '', '', '', '', '', '', '', 'SELECT * \nFROM zzzzsys_access_level_report\nJOIN zzzzsys_report ON zzzzsys_report_id = sre_zzzzsys_report_id\nORDER BY sre_code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('nurunreport', 'browseedit', 'RUNREP', 'Run Report', 'zzzzsys_report', 'zzzzsys_report_id', '', '', '', '', 'window.nuTYPE== ''runreport'';', '', '', '', '', '', 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', '1', '', '', '', '', '', '1', '', '', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', 'window.nuTYPE = ''runreport'';\n\nfunction runreport(t){\n    \n    var r   = $(''#'' + t.id).attr(''data-nu-row'');\n    var c   = ''003'';\n	var f	= $(''#'' + r + c).html();\n	var p	= $(''#'' + t.id).attr(''data-nu-primary-key'');\n\n	nuGetReport(p, f);\n\n}\n\n'),
('nurunphp', 'browseedit', 'RUNPHP', 'Run PHP Code', 'zzzzsys_php', 'zzzzsys_php_id', '', '', '', '', 'nudebug(4444);', '', '', '', '', '', 'SELECT * FROM zzzzsys_php\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id', '1', '', '', '0', '', '', '1', '', '', '1', '', '', '1', '', '', '0', '', '', '', '', '', '', '', ''),
('577b4d78ef9a2a0', 'launch', 'test', 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577c5efa0d5e6dc', 'launch', '2DATES', 'Between 2 Dates', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '\nvar reportID    = nuBC[nuBC.length-1].record_id;\n\n$(''#nuTab0'').hide();\n\n$(''.nuActionHolder'').css(''text-align'',''center'');\n\nnuAppendActionButton(''Print'',"nuRunReport(''" + reportID + "'');");\nnuAppendActionButton(''Email'',"nuEmailReport(''" + reportID + "'');");\n\n\n\n');

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
('56c0fd692478b9e', '5678ab2c48c5c41', 'lookup', 'emp_business_id', 'Business Type', '5678ab2c49bd810', 20, 40, 104, 60, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', '', 'bus_code', 'bus_description', '150', '0', '568b508eec00d80', '', '', '', '', '', '', '', '', '', ''),
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
('573d15d41e279ba', 'nubuildreport', 'input', 'open_builder', 'Report Layout', '574b964941d3d1a', 50, 137, 152, 150, 30, '1', 'l', 'none', '1', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', 'button', ''),
('570c3b5d641d514', 'nubuildreport', 'textarea', 'sre_report_layout', 'Layout', '574b964941d3d1a', 60, 181, 152, 300, 100, '1', 'l', 'none', '1', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570c3e6e67c39cb', 'nuform', 'textarea', 'sfo_javascript', 'Javascript', '570730315113e7e', 370, 54, 70, 600, 400, '1', 'right', '', '1', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('570c3fce5be3355', 'nuphp', 'lookup', 'sph_zzzzsys_php_id', 'Include', '574b8ee0b2a4cdf', 50, 517, 152, 100, 18, '1', 'right', '', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '220', '', 'nunonsystemform', '', '', '', '', '', '', '', '', '', ''),
('57578afc803136a', 'nuphp', 'lookup', 'sph_zzzzsys_form_id', 'Launch from', '574b8ee0b2a4cdf', 30, 75, 152, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '230', '', 'nuform', '', '', '', '', '', '', '', '', '', ''),
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
('574b8fa359b39fc', 'nuphp', 'input', 'sph_description', 'Description', '574b8ee0b2a4cdf', 20, 46, 152, 300, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b9008ac10e16', 'nuphp', 'textarea', 'sph_php', 'PHP', '574b8ee0b2a4cdf', 40, 104, 152, 600, 400, '1', 'l', '', '1', '', '', '', '', '', '', '', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b91aec1e5c94', 'nuhome', 'run', 'edit_php', 'Build Procedures', '569dc4ed270f08a', 90, 339, 434, 150, 30, '1', 'l', 'noblanks', '0', '', '', 'nuphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('574b97322568df5', 'nuhome', 'run', 'edit_report', 'Build Reports', '569dc4ed270f08a', 110, 339, 263, 150, 30, '1', 'l', 'noblanks', '0', '', '', 'nubuildreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57561237059313b', 'nublank', 'html', 'bla_html', '', '575611cca558059', 11, 400, 400, 1, 1, '', 'l', '', '', 'SELECT ''0''', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '.'),
('5754c06bd926f66', 'nubuildreport', 'lookup', 'sre_zzzzsys_form_id', 'Launch From', '574b964941d3d1a', 40, 107, 152, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, '' - '', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'nuform', '', '1', '', '', '', '', ''),
('57579cb29a87ac1', 'nubuildreport', 'input', 'sre_code', 'Code', '574b964941d3d1a', 10, 17, 152, 100, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57579cd24784461', 'nubuildreport', 'input', 'sre_description', 'Description', '574b964941d3d1a', 20, 47, 152, 300, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
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
('577b254578f0498', 'nubuildreport', 'input', 'sre_group', 'Group', '574b964941d3d1a', 30, 77, 152, 300, 16, '1', 'l', 'noblanks', '0', '', '', '', '', '', '', '', '', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4314f347f60', 'nuhome', 'run', 'run_report', 'Run Report', '569dc4ed270f08a', 120, 394, 263, 150, 30, '1', 'l', 'noblanks', '0', '', '', 'nurunreport', '', 'b', '', '', '', '', '', '', '', '', '', '', '', 'nurunreport', '', '0', '0', '', '', '', ''),
('577b49b3eb0c80f', 'nuhome', 'run', 'run_php', 'Run Procedure', '569dc4ed270f08a', 100, 394, 434, 150, 30, '1', 'l', 'noblanks', '0', '', '', 'nurunphp', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4dd43e0a9eb', '577b4d78ef9a2a0', 'input', 'steven', 'test', '577b4d78ef9c1d6', 1, 100, 100, 100, 20, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('577b4eb7ad0f7f5', '577b4d78ef9a2a0', 'input', 'com_address', 'Address', '577b4d78ef9c1d6', 110, 12, 74, 200, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'text', ''),
('577c7a54b78326c', '577c5efa0d5e6dc', 'input', 'from_date', 'Between', '577c5efa0d6275e', 10, 146, 168, 90, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '', ''),
('577c7a71c405f7c', '577c5efa0d5e6dc', 'input', 'to_date', 'And', '577c5efa0d6275e', 20, 146, 296, 90, 16, '1', 'l', 'none', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '', '');

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
('57578be0057a49f', 'AA', 'AAA', '', ';', '5678ab2c48c5c41', 'nuevent'),
('575797e0a59813b', '3', '3', '', '3', '56773cb405f4913', 'nuaccessgroup');

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
  `sre_report_layout` longtext NOT NULL,
  PRIMARY KEY (`zzzzsys_report_id`),
  KEY `sre_code` (`sre_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_report`
--

INSERT INTO `zzzzsys_report` (`zzzzsys_report_id`, `sre_code`, `sre_description`, `sre_group`, `sre_zzzzsys_php_id`, `sre_zzzzsys_form_id`, `sre_report_layout`) VALUES
('574b98244516a9b', '1', 'sgadsraegtd raear qg', '0', '', 'nublank', ''),
('574b9845a681d27', '111', '2222', 'aaa', 'nuaccess', '577c5efa0d5e6dc', '1'),
('57579a14e1981b0', ' ', '', '0', '', '', '');

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
('577c5efa0d6275e', '577c5efa0d5e6dc', 'Launch', 10),
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
