-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 12, 2023 at 08:01 PM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u857788680_amazonia`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `username` varchar(20) NOT NULL,
  `userpass` char(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`username`, `userpass`) VALUES
('chicken', '$2y$10$4gNx5bMdkrWzKEn.Mr2GHeWX7IeLfLVuznemVeiH2i3SI8bEd1/U6'),
('guest', '$2y$10$9SdN6fl5.1cNjPemgFpbT.e.ReKvihWVmIyJHHYz8kuR5RRe3vvmi');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_first` varchar(30) NOT NULL,
  `author_last` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES
(2, 'Chris', 'Date'),
(3, 'Mercer', 'Mayer'),
(4, 'Don', 'Perrin'),
(5, 'Gina', 'Mayer'),
(6, 'Isaac', 'Asimov'),
(7, 'Paul', 'Jennings'),
(8, 'Margaret', 'Weis'),
(9, 'Marion Zimmer', 'Bradley'),
(10, 'Ramesh', 'Elmasri'),
(11, 'Shamkant', 'Navathe'),
(12, 'Stephen', 'King'),
(13, 'Tracy', 'Hickman'),
(14, 'David', 'Drake'),
(15, 'Bill', 'Fawcett'),
(16, 'Larry', 'Niven'),
(17, 'Stephen', 'Dubner'),
(18, 'Steven', 'Levitt'),
(19, 'Nicholas', 'Blake'),
(20, 'Nicholas', 'Blake');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `isbn` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `listprice` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `category_code` char(3) NOT NULL,
  `publisher` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`isbn`, `title`, `listprice`, `discount`, `category_code`, `publisher`) VALUES
(1, 'Fundamentals of Database Systems', '39.99', '0.00', 'CMP', 1),
(2, 'An Introduction to Database Systems', '59.99', '0.05', 'CMP', 2),
(3, 'Isaac Asimov\'s Greatest Hits', '5.99', '0.10', 'SFF', 1),
(4, 'The Best of Marion Zimmer Bradley', '13.45', '0.05', 'SFF', 2),
(5, 'Rascal the Dragon', '5.99', '0.10', 'FIC', 3),
(6, 'Just a School Project', '5.99', '0.10', 'FIC', 4),
(7, 'The Plant', '2.99', '0.00', 'HOR', 3),
(8, 'The Gunslinger', '5.99', '0.10', 'SFF', 3),
(9, 'Dragons of Autumn Twilight', '4.99', '0.05', 'SFF', 2),
(10, 'Mag Force 7', '4.99', '0.50', 'SFF', 3),
(11, 'The Year\'s Best Science Fiction 2004', '12.00', '0.00', 'SFF', 2),
(12, 'Freakonomics', '10.00', '0.00', 'NFC', 1),
(13, 'The Beast Must Die', '10.00', '0.00', 'FIC', 1),
(14, 'Steering to Glory', '10.00', '0.00', 'NFC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookcat`
--

CREATE TABLE `bookcat` (
  `category_code` char(3) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookcat`
--

INSERT INTO `bookcat` (`category_code`, `category_name`) VALUES
('CMP', 'Computer'),
('FIC', 'General Fiction'),
('HOR', 'Horror'),
('NFC', 'Non Fiction'),
('SFF', 'Science Fiction/Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `bookpublisher`
--

CREATE TABLE `bookpublisher` (
  `pubname` varchar(50) NOT NULL,
  `pubaddress` varchar(1000) NOT NULL,
  `pubno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookpublisher`
--

INSERT INTO `bookpublisher` (`pubname`, `pubaddress`, `pubno`) VALUES
('Benjamin Cummins', '39 Dixie Highway FL 11111', 1),
('Addison-Wesley', '22 Peachtree Road', 2),
('Bantam', '13 Avondale Avenue', 3),
('ROC', '24 South Beach Road', 4),
('Bluebooks', 'The Sleazy Part of Town', 5);

-- --------------------------------------------------------

--
-- Table structure for table `computergame`
--

CREATE TABLE `computergame` (
  `publisherno` int(5) NOT NULL,
  `gamecode` int(5) NOT NULL,
  `gamename` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `computergame`
--

INSERT INTO `computergame` (`publisherno`, `gamecode`, `gamename`) VALUES
(1, 1, 'Battletech'),
(1, 2, 'Crusader Kings'),
(1, 3, 'Hearts of Iron'),
(2, 1, 'XCOM: Enemy Unknown'),
(2, 2, 'Civilization V'),
(2, 3, 'XCOM 2'),
(3, 1, 'Pathfinder: Kingmaker'),
(3, 2, 'Pathfinder: Wrath of the Right'),
(4, 1, 'EA Sports UFC 4'),
(4, 2, 'Star Wars: Squadrons');

-- --------------------------------------------------------

--
-- Table structure for table `continents`
--

CREATE TABLE `continents` (
  `continentcode` int(1) NOT NULL,
  `continentname` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `continents`
--

INSERT INTO `continents` (`continentcode`, `continentname`) VALUES
(1, 'Africa'),
(2, 'Asia'),
(3, 'Europe'),
(4, 'Latin America and the Caribbean'),
(6, 'North America'),
(5, 'Oceania');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countryname` varchar(30) NOT NULL,
  `population` int(11) NOT NULL,
  `landarea` int(11) NOT NULL,
  `continentcode` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countryname`, `population`, `landarea`, `continentcode`) VALUES
('Afghanistan', 38928346, 652860, 2),
('Albania', 2877797, 27400, 3),
('Algeria', 43851044, 2381740, 1),
('Andorra', 77265, 470, 3),
('Angola', 32866272, 1246700, 1),
('Antigua and Barbuda', 97929, 440, 4),
('Argentina', 45195774, 2736690, 4),
('Armenia', 2963243, 28470, 2),
('Australia', 25499884, 7682300, 5),
('Austria', 9006398, 82409, 3),
('Azerbaijan', 10139177, 82658, 2),
('Bahamas', 393244, 10010, 4),
('Bahrain', 1701575, 760, 2),
('Bangladesh', 164689383, 130170, 2),
('Barbados', 287375, 430, 4),
('Belarus', 9449323, 202910, 3),
('Belgium', 11589623, 30280, 3),
('Belize', 397628, 22810, 4),
('Benin', 12123200, 112760, 1),
('Bhutan', 771608, 38117, 2),
('Bolivia', 11673021, 1083300, 4),
('Bosnia and Herzegovina', 3280819, 51000, 3),
('Botswana', 2351627, 566730, 1),
('Brazil', 212559417, 8358140, 4),
('Brunei', 437479, 5270, 2),
('Bulgaria', 6948445, 108560, 3),
('Burkina Faso', 20903273, 273600, 1),
('Burundi', 11890784, 25680, 1),
('Cabo Verde', 555987, 4030, 1),
('Cambodia', 16718965, 176520, 2),
('Cameroon', 26545863, 472710, 1),
('Canada', 37742154, 9093510, 6),
('Central African Republic', 4829767, 622980, 1),
('Chad', 16425864, 1259200, 1),
('Chile', 19116201, 743532, 4),
('China', 1439323776, 9388211, 2),
('Colombia', 50882891, 1109500, 4),
('Comoros', 869601, 1861, 1),
('Congo', 5518087, 341500, 1),
('Costa Rica', 5094118, 51060, 4),
('Côte d\'Ivoire', 26378274, 318000, 1),
('Croatia', 4105267, 55960, 3),
('Cuba', 11326616, 106440, 4),
('Cyprus', 1207359, 9240, 2),
('Czech Republic', 10708981, 77240, 3),
('Denmark', 5792202, 42430, 3),
('Djibouti', 988000, 23180, 1),
('Dominica', 71986, 750, 4),
('Dominican Republic', 10847910, 48320, 4),
('DR Congo', 89561403, 2267050, 1),
('Ecuador', 17643054, 248360, 4),
('Egypt', 102334404, 995450, 1),
('El Salvador', 6486205, 20720, 4),
('Equatorial Guinea', 1402985, 28050, 1),
('Eritrea', 3546421, 101000, 1),
('Estonia', 1326535, 42390, 3),
('Eswatini', 1160164, 17200, 1),
('Ethiopia', 114963588, 1000000, 1),
('Fiji', 896445, 18270, 5),
('Finland', 5540720, 303890, 3),
('France', 65273511, 547557, 3),
('Gabon', 2225734, 257670, 1),
('Gambia', 2416668, 10120, 1),
('Georgia', 3989167, 69490, 2),
('Germany', 83783942, 348560, 3),
('Ghana', 31072940, 227540, 1),
('Greece', 10423054, 128900, 3),
('Grenada', 112523, 340, 4),
('Guatemala', 17915568, 107160, 4),
('Guinea', 13132795, 245720, 1),
('Guinea-Bissau', 1968001, 28120, 1),
('Guyana', 786552, 196850, 4),
('Haiti', 11402528, 27560, 1),
('Holy See', 801, 0, 3),
('Honduras', 9904607, 111890, 4),
('Hungary', 9660351, 90530, 3),
('Iceland', 341243, 100250, 3),
('India', 1380004385, 2973190, 2),
('Indonesia', 273523615, 1811570, 2),
('Iran', 83992949, 1628550, 2),
('Iraq', 40222493, 434320, 2),
('Ireland', 4937786, 68890, 3),
('Israel', 8655535, 21640, 2),
('Italy', 60461826, 294140, 3),
('Jamaica', 2961167, 10830, 4),
('Japan', 126476461, 364555, 2),
('Jordan', 10203134, 88780, 2),
('Kazakhstan', 18776707, 2699700, 2),
('Kenya', 53771296, 569140, 1),
('Kiribati', 119449, 810, 5),
('Kuwait', 4270571, 17820, 2),
('Kyrgyzstan', 6524195, 191800, 2),
('Laos', 7275560, 230800, 2),
('Latvia', 1886198, 62200, 3),
('Lebanon', 6825445, 10230, 2),
('Lesotho', 2142249, 30360, 1),
('Liberia', 5057681, 96320, 1),
('Libya', 6871292, 1759540, 1),
('Liechtenstein', 38128, 160, 3),
('Lithuania', 2722289, 62674, 3),
('Luxembourg', 625978, 2590, 3),
('Madagascar', 27691018, 581795, 1),
('Malawi', 19129952, 94280, 1),
('Malaysia', 32365999, 328550, 2),
('Maldives', 540544, 300, 2),
('Mali', 20250833, 1220190, 1),
('Malta', 441543, 320, 3),
('Marshall Islands', 59190, 180, 5),
('Mauritania', 4649658, 1030700, 1),
('Mauritius', 1271768, 2030, 1),
('Mexico', 128932753, 1943950, 4),
('Micronesia', 548914, 700, 5),
('Moldova', 4033963, 32850, 3),
('Monaco', 39242, 1, 3),
('Mongolia', 3278290, 1553560, 2),
('Montenegro', 628066, 13450, 3),
('Morocco', 36910560, 446300, 1),
('Mozambique', 31255435, 786380, 1),
('Myanmar', 54409800, 653290, 2),
('Namibia', 2540905, 823290, 1),
('Nauru', 10824, 20, 5),
('Nepal', 29136808, 143350, 2),
('Netherlands', 17134872, 33720, 3),
('New Zealand', 4822233, 263310, 5),
('Nicaragua', 6624554, 120340, 4),
('Niger', 24206644, 1266700, 1),
('Nigeria', 206139589, 910770, 1),
('North Korea', 25778816, 120410, 2),
('North Macedonia', 2083374, 25220, 3),
('Norway', 5421241, 365268, 3),
('Oman', 5106626, 309500, 2),
('Pakistan', 220892340, 770880, 2),
('Palau', 18094, 460, 5),
('Panama', 4314767, 74340, 4),
('Papua New Guinea', 8947024, 452860, 2),
('Paraguay', 7132538, 397300, 4),
('Peru', 32971854, 1280000, 4),
('Philippines', 109581078, 298170, 2),
('Poland', 37846611, 306230, 3),
('Portugal', 10196709, 91590, 3),
('Qatar', 2881053, 11610, 2),
('Romania', 19237691, 230170, 3),
('Russia', 145934462, 16376870, 3),
('Rwanda', 12952218, 24670, 1),
('Saint Kitts & Nevis', 53199, 260, 4),
('Saint Lucia', 183627, 610, 4),
('Samoa', 198414, 2830, 5),
('San Marino', 33931, 60, 3),
('Sao Tome & Principe', 219159, 960, 1),
('Saudi Arabia', 34813871, 2149690, 2),
('Senegal', 16743927, 192530, 1),
('Serbia', 8737371, 87460, 3),
('Seychelles', 98347, 460, 1),
('Sierra Leone', 7976983, 72180, 1),
('Singapore', 5850342, 700, 2),
('Slovakia', 5459642, 48088, 3),
('Slovenia', 2078938, 20140, 3),
('Solomon Islands', 686884, 27990, 5),
('Somalia', 15893222, 627340, 1),
('South Africa', 59308690, 1213090, 1),
('South Korea', 51269185, 97230, 2),
('South Sudan', 11193725, 610952, 1),
('Spain', 46754778, 498800, 3),
('Sri Lanka', 21413249, 62710, 2),
('St. Vincent & Grenadines', 110940, 390, 4),
('State of Palestine', 5101414, 6020, 2),
('Sudan', 43849260, 1765048, 1),
('Suriname', 586632, 156000, 4),
('Sweden', 10099265, 410340, 3),
('Switzerland', 8654622, 39516, 3),
('Syria', 17500658, 183630, 2),
('Tajikistan', 9537645, 139960, 2),
('Tanzania', 59734218, 885800, 1),
('Thailand', 69799978, 510890, 2),
('Timor-Leste', 1318445, 14870, 2),
('Togo', 8278724, 54390, 1),
('Tonga', 105695, 720, 5),
('Trinidad and Tobago', 1399488, 5130, 4),
('Tunisia', 11818619, 155360, 1),
('Turkey', 84339067, 769630, 2),
('Turkmenistan', 6031200, 469930, 2),
('Tuvalu', 11792, 30, 5),
('Uganda', 45741007, 199810, 1),
('Ukraine', 43733762, 579320, 3),
('United Arab Emirates', 9890402, 83600, 2),
('United Kingdom', 67886011, 241930, 3),
('United States', 331002651, 9147420, 6),
('Uruguay', 3473730, 175020, 4),
('Uzbekistan', 33469203, 425400, 2),
('Vanuatu', 307145, 12190, 5),
('Venezuela', 28435940, 882050, 4),
('Vietnam', 97338579, 310070, 2),
('Yemen', 29825964, 527970, 2),
('Zambia', 18383955, 743390, 1),
('Zimbabwe', 14862924, 386850, 1);

-- --------------------------------------------------------

--
-- Table structure for table `countryagreement`
--

CREATE TABLE `countryagreement` (
  `countryname` varchar(30) NOT NULL,
  `agreecode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countryagreement`
--

INSERT INTO `countryagreement` (`countryname`, `agreecode`) VALUES
('Algeria', 'AfCFTA'),
('Angola', 'AfCFTA'),
('Argentina', 'Mercosur'),
('Australia', 'CPTPP'),
('Australia', 'RCEP'),
('Austria', 'EU'),
('Belgium', 'EU'),
('Benin', 'AfCFTA'),
('Botswana', 'AfCFTA'),
('Brazil', 'Mercosur'),
('Brunei', 'CPTPP'),
('Brunei', 'RCEP'),
('Bulgaria', 'EU'),
('Burkina Faso', 'AfCFTA'),
('Burundi', 'AfCFTA'),
('Cabo Verde', 'AfCFTA'),
('Cambodia', 'RCEP'),
('Cameroon', 'AfCFTA'),
('Canada', 'CPTPP'),
('Canada', 'USMCA'),
('Central African Republic', 'AfCFTA'),
('Chad', 'AfCFTA'),
('Chile', 'CPTPP'),
('China', 'RCEP'),
('Congo', 'AfCFTA'),
('Côte d\'Ivoire', 'AfCFTA'),
('Croatia', 'EU'),
('Cyprus', 'EU'),
('Czech Republic', 'EU'),
('Denmark', 'EU'),
('Djibouti', 'AfCFTA'),
('DR Congo', 'AfCFTA'),
('Egypt', 'AfCFTA'),
('Equatorial Guinea', 'AfCFTA'),
('Eritrea', 'AfCFTA'),
('Estonia', 'EU'),
('Eswatini', 'AfCFTA'),
('Ethiopia', 'AfCFTA'),
('Finland', 'EU'),
('France', 'EU'),
('Gabon', 'AfCFTA'),
('Gambia', 'AfCFTA'),
('Germany', 'EU'),
('Ghana', 'AfCFTA'),
('Greece', 'EU'),
('Guinea', 'AfCFTA'),
('Guinea-Bissau', 'AfCFTA'),
('Hungary', 'EU'),
('Indonesia', 'RCEP'),
('Ireland', 'EU'),
('Italy', 'EU'),
('Japan', 'CPTPP'),
('Japan', 'RCEP'),
('Kenya', 'AfCFTA'),
('Laos', 'RCEP'),
('Latvia', 'EU'),
('Lesotho', 'AfCFTA'),
('Liberia', 'AfCFTA'),
('Libya', 'AfCFTA'),
('Lithuania', 'EU'),
('Luxembourg', 'EU'),
('Madagascar', 'AfCFTA'),
('Malawi', 'AfCFTA'),
('Malaysia', 'CPTPP'),
('Malaysia', 'RCEP'),
('Mali', 'AfCFTA'),
('Malta', 'EU'),
('Mauritania', 'AfCFTA'),
('Mauritius', 'AfCFTA'),
('Mexico', 'CPTPP'),
('Mexico', 'USMCA'),
('Morocco', 'AfCFTA'),
('Mozambique', 'AfCFTA'),
('Namibia', 'AfCFTA'),
('Netherlands', 'EU'),
('New Zealand', 'CPTPP'),
('New Zealand', 'RCEP'),
('Niger', 'AfCFTA'),
('Nigeria', 'AfCFTA'),
('Paraguay', 'Mercosur'),
('Peru', 'CPTPP'),
('Philippines', 'RCEP'),
('Poland', 'EU'),
('Portugal', 'EU'),
('Romania', 'EU'),
('Rwanda', 'AfCFTA'),
('Sao Tome & Principe', 'AfCFTA'),
('Senegal', 'AfCFTA'),
('Seychelles', 'AfCFTA'),
('Sierra Leone', 'AfCFTA'),
('Singapore', 'CPTPP'),
('Singapore', 'RCEP'),
('Slovakia', 'EU'),
('Slovenia', 'EU'),
('Somalia', 'AfCFTA'),
('South Africa', 'AfCFTA'),
('South Korea', 'RCEP'),
('South Sudan', 'AfCFTA'),
('Spain', 'EU'),
('Sudan', 'AfCFTA'),
('Sweden', 'EU'),
('Tanzania', 'AfCFTA'),
('Thailand', 'RCEP'),
('Togo', 'AfCFTA'),
('Tunisia', 'AfCFTA'),
('Uganda', 'AfCFTA'),
('United States', 'USMCA'),
('Uruguay', 'Mercosur'),
('Vietnam', 'CPTPP'),
('Vietnam', 'RCEP'),
('Zambia', 'AfCFTA'),
('Zimbabwe', 'AfCFTA');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custno` int(11) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `custpassword` varchar(60) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custno`, `cust_name`, `custpassword`, `address`, `email`) VALUES
(1, 'Chicken Little', '$2y$10$CuwkXYJldhrwJlbAehX0SeS0bZCA2K2nFEL7YH6tRGUrcIv0rYDJm', '123 Norfolk Avenue VA 30146', 'clittle@fantasylane.com'),
(2, 'Donald the Duck', 'You need to create and encrypt this yourself', '3 Disney the Avenue FL 12945', 'dduck@disneyx.com'),
(3, 'Prince Charming', 'You need to create and encrypt this yourself', '1 Castle Road CA 21004', 'prince@fairyland.org'),
(4, 'Teddy Bear', 'You need to create and encrypt this yourself', '21 Bringhamton Park WA 30185', 'tbear@cuteguy.com'),
(5, 'Tanya Degurechaff', 'You need to create and encrypt this yourself', 'On the front line', 'curseyoubeingx@empiremages.com'),
(6, 'Teddy Bear', 'You need to create and encrypt this yourself', '1 Care Bear Park AL 30185', 'carebear@evilinc.com'),
(7, 'Teddy Ruxpin', 'You need to create and encrypt this yourself', '1 Care Bear Park AL 30185', 'truxpin@evilinc.com'),
(8, 'Teddy Ruxpin', 'You need to create and encrypt this yourself', '21 Bringhamton Park WA 30185', 'truxpin@cuteguy.com'),
(9, 'Tanya Adams', 'You need to create and encrypt this yourself', 'Allied Command Center', 'tadams@redalert.com');

-- --------------------------------------------------------

--
-- Table structure for table `custphone`
--

CREATE TABLE `custphone` (
  `custno` int(11) NOT NULL,
  `pnumber` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `custphone`
--

INSERT INTO `custphone` (`custno`, `pnumber`) VALUES
(1, '5768374627'),
(1, '5795743623'),
(2, '5763638263'),
(2, '5768364517'),
(3, '5765827361'),
(3, '5796251732'),
(4, '5769374627'),
(4, '5794758263'),
(5, '5794775347'),
(6, '5792868245');

-- --------------------------------------------------------

--
-- Table structure for table `dlc`
--

CREATE TABLE `dlc` (
  `publisherno` int(5) NOT NULL,
  `gamecode` int(5) NOT NULL,
  `dlcno` int(2) NOT NULL,
  `dlcname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dlc`
--

INSERT INTO `dlc` (`publisherno`, `gamecode`, `dlcno`, `dlcname`) VALUES
(1, 1, 1, 'Flashpoint'),
(1, 1, 2, 'Urban Warfare'),
(1, 1, 3, 'Heavy Metal'),
(2, 1, 1, 'Enemy Within'),
(2, 2, 1, 'Cradle of Civilization'),
(2, 2, 2, 'Denmark and Explorers'),
(2, 2, 3, 'Korea and Wonders of the World'),
(2, 3, 1, 'Reinforcement Pack'),
(2, 3, 2, 'War of the Chosen'),
(3, 1, 1, 'Varnhold\'s Lot'),
(3, 1, 2, 'Beneath the Stolen Lands'),
(3, 2, 1, 'Season 1 Pass'),
(3, 2, 2, 'Season 2 Pass');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empid` int(10) NOT NULL,
  `empname` varchar(40) NOT NULL,
  `emppassword` varchar(60) NOT NULL,
  `emptypecode` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `empname`, `emppassword`, `emptypecode`) VALUES
(1, 'Shalltear Bloodfallen', '$2y$10$Vg1RFFxEZtWtF8ccVrARGuWq1GoloYT46YoQ9vUGWpRJ0uIJtDWnK', 'W'),
(2, 'Demiurge', 'X', 'W'),
(3, 'Momonga', 'X', 'A'),
(4, 'Teddy Bohr', 'X', 'A'),
(5, 'Teddy Bohr', 'X', 'W');

-- --------------------------------------------------------

--
-- Table structure for table `emptype`
--

CREATE TABLE `emptype` (
  `emptypecode` char(1) NOT NULL,
  `emptypedesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emptype`
--

INSERT INTO `emptype` (`emptypecode`, `emptypedesc`) VALUES
('A', 'Administrator'),
('W', 'Worker');

-- --------------------------------------------------------

--
-- Table structure for table `exchrate`
--

CREATE TABLE `exchrate` (
  `currencyname` varchar(60) NOT NULL,
  `currencycode` char(3) NOT NULL,
  `againstusd` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exchrate`
--

INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES
('Emirati dirham', 'AED', 3.673),
('Afghan afghani', 'AFN', 50.42),
('Albanian lek', 'ALL', 79.546),
('Armenian dram', 'AMD', 303.93),
('Netherlands Antillean guilder', 'ANG', 1.79),
('Angolan kwanza', 'AOA', 75.023),
('Argentine peso', 'ARS', 8),
('Australian dollar', 'AUD', 1.2059),
('Azerbaijani manat', 'AZN', 0.8219),
('Bosnia and Herzegovina convertible mark', 'BAM', 1.3083),
('Barbadian dollar', 'BBD', 2.02),
('Bangladeshi taka', 'BDT', 68.554),
('Bulgarian lev', 'BGN', 1.3171),
('Bahraini dinar', 'BHD', 0.376),
('Burundi franc', 'BIF', 1198),
('Bermudian dollar', 'BMD', 1),
('Bruneian dollar', 'BND', 1.4322),
('Bolivian boliviano', 'BOB', 7.253),
('Brazilian real', 'BRL', 1.8644),
('Bahamian dollar', 'BSD', 1),
('Botswana pula', 'BWP', 6.7907),
('Belarusian ruble', 'BYR', 2130),
('Belizean dollar', 'BZD', 2),
('Canadian dollar', 'CAD', 1.0364),
('Congolese franc', 'CDF', 459.175),
('Swiss franc', 'CHF', 1.0774),
('Chilean peso', 'CLP', 509.02),
('Renminbi', 'CNY', 6.9385),
('Colombian peso', 'COP', 2302.9),
('Costa Rican colon', 'CRC', 529.62),
('Cuban peso', 'CUP', 0.9259),
('Cape Verdean escudo', 'CVE', 73.84),
('Czech koruna', 'CZK', 17.037),
('Djiboutian franc', 'DJF', 179.14),
('Danish krone', 'DKK', 5.0236),
('Dominican peso', 'DOP', 34.775),
('Algerian dinar', 'DZD', 63.25),
('Estonian kroon', 'EEK', 10.537),
('Egyptian pound', 'EGP', 5.4),
('Eritrean nakfa', 'ERN', 15.38),
('Ethiopian birr', 'ETB', 9.57),
('Euro', 'EUR', 0.6734),
('Fijian dollar', 'FJD', 1.5986),
('Falkland Islands pound', 'FKP', 0.5302),
('Pound sterling', 'GBP', 0.5302),
('Georgian lari', 'GEL', 1.47),
('Guernsey Pound', 'GGP', 0.5302),
('Ghanaian cedi', 'GHS', 1.1),
('Gibraltar pound', 'GIP', 0.5302),
('Gambian dalasi', 'GMD', 22.75),
('Guinean franc', 'GNF', 5500),
('Guatemalan quetzal', 'GTQ', 7.5895),
('Guyanese dollar', 'GYD', 203.86),
('Hong Kong dollar', 'HKD', 7.8),
('Honduran lempira', 'HNL', 18.983),
('Croatian kuna', 'HRK', 4.877),
('Haitian gourde', 'HTG', 39.216),
('Hungarian forint', 'HUF', 165.89),
('Indonesian rupiah', 'IDR', 9558.1),
('new Israeli shekel', 'ILS', 3.56),
('Indian rupee', 'INR', 43.814),
('Iraqi dinar', 'IQD', 1),
('Iranian rial', 'IRR', 9),
('Icelandic króna', 'ISK', 85.619),
('Jersey pound', 'JEP', 0.5302),
('Jamaican dollar', 'JMD', 72.236),
('Jordanian dinar', 'JOD', 0.709),
('Japanese yen', 'JPY', 103.58),
('Kenyan shilling', 'KES', 68.358),
('Kyrgyzstani som', 'KGS', 36.108),
('Cambodian riel', 'KHR', 4070.94),
('Comorian franc', 'KOF', 337.26),
('North Korean won', 'KPW', 3400),
('South Korean won', 'KRW', 1101.7),
('Kuwaiti dinar', 'KWD', 0.2679),
('Caymanian dollar', 'KYD', 0.8333),
('Kazakh tenge', 'KZT', 120.25),
('Lao kip', 'LAK', 8760.69),
('Lebanese pound', 'LBP', 1507.5),
('Sri Lankan rupee', 'LKR', 108.14),
('Liberian dollar', 'LRD', 63.31),
('Lithuanian litas', 'LTL', 2.3251),
('Libyan dinar', 'LYD', 1.2112),
('Moroccan dirham', 'MAD', 7.526),
('Moldovan leu', 'MDL', 10.326),
('Malagasy ariary', 'MGA', 1654.78),
('Macedonian denar', 'MKD', 41.414),
('Myanma kyat', 'MMF', 1),
('Mongolian tugrug', 'MNT', 1165.92),
('Macau pataca', 'MOP', 8.16567),
('Maldivian rufiyaa', 'MVR', 12.954),
('Malawian kwacha', 'MWK', 142.41),
('Mexican peso', 'MXN', 11.016),
('Malaysian ringgit', 'MYR', 3.33),
('Mozambique metical', 'MZN', 24.125),
('Namibian dollar', 'NAD', 7.75),
('Nigerian naira', 'NGN', 117.8),
('Nicaraguan córdoba', 'NIO', 19.374),
('Norwegian krone', 'NOK', 5.2338),
('New Zealand dollar', 'NZD', 1.4151),
('Omani rial', 'OMR', 0.3845),
('Peruvian nuevo sol', 'PEN', 2.9322),
('Papua New Guinean kina', 'PGK', 2.6956),
('Philippine peso', 'PHP', 44.439),
('Pakistani rupee', 'PKR', 70.64),
('Polish zloty', 'PLN', 2.3),
('Paraguayan guarani', 'PYG', 4337.7),
('Qatari rial', 'QAR', 3.64),
('Romanian leu', 'RON', 2.5),
('Serbian dinar', 'RSD', 56.14),
('Russian ruble', 'RUB', 24.3),
('Rwandan franc', 'RWF', 550),
('Saudi riyal', 'SAR', 3.75),
('Solomon Islands dollar', 'SBD', 7.6336),
('Seychellois rupee', 'SCR', 8),
('Sudanese pound', 'SDG', 2.1),
('Swedish krona', 'SEK', 6.4074),
('Singapore dollar', 'SGD', 1.415),
('Saint Helena pound', 'SHP', 0.5302),
('Slovak koruna', 'SKK', 21.05),
('Sierra Leonean leone', 'SLL', 3007.9),
('Somali shilling', 'SOS', 1436),
('Surinamese dollar', 'SRD', 2.78),
('São Tomé and Príncipe dobra', 'STD', 14900),
('Syrian pound', 'SYP', 46.5281),
('Thai baht', 'THB', 33.37),
('Tajik somoni', 'TJS', 3.4563),
('Turkmen manat', 'TMM', 14250),
('Tunisian dinar', 'TND', 1.211),
('Tongan pa\'anga', 'TOP', 2.0747),
('Turkish lira', 'TRY', 1.3179),
('Trinidad and Tobago dollar', 'TTD', 6.3228),
('New Taiwan dollar', 'TWD', 31.47),
('Tanzanian shilling', 'TZS', 1178.1),
('Ukrainian hryvnia', 'UAH', 4.9523),
('Ugandan shilling', 'UGX', 1658.1),
('U.S. dollar', 'USD', 1),
('Uruguayan peso', 'UYU', 20.438),
('Uzbek som', 'UZS', 1),
('Venezuelan bolívar fuerte', 'VEF', 2.147),
('Vietnamese đồng', 'VND', 21189),
('Vanuatuan vatu', 'VUV', 100.87),
('CFA franc', 'XAF', 438.77),
('Change Franc Pacifique', 'XPF', 83.12),
('Yemeni rial', 'YER', 199.76),
('South African rand', 'ZAR', 7.75),
('Zambian kwacha', 'ZMK', 3512.9),
('Zimbabwean dollar', 'ZWN', 361.9);

-- --------------------------------------------------------

--
-- Table structure for table `gamecat`
--

CREATE TABLE `gamecat` (
  `catcode` varchar(2) NOT NULL,
  `catname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gamecat`
--

INSERT INTO `gamecat` (`catcode`, `catname`) VALUES
('E', 'Educational'),
('F', 'Fantasy'),
('H', 'Historical'),
('RP', 'Role-Playing'),
('RT', 'Real Time'),
('S', 'Sport'),
('SF', 'Science-Fiction'),
('ST', 'Strategy'),
('T', 'Turn-based'),
('TC', 'Tactical');

-- --------------------------------------------------------

--
-- Table structure for table `gamehascat`
--

CREATE TABLE `gamehascat` (
  `publisherno` int(5) NOT NULL,
  `gamecode` int(5) NOT NULL,
  `catcode` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gamehascat`
--

INSERT INTO `gamehascat` (`publisherno`, `gamecode`, `catcode`) VALUES
(1, 1, 'RP'),
(1, 1, 'SF'),
(1, 1, 'T'),
(1, 1, 'TC'),
(1, 2, 'H'),
(1, 2, 'ST'),
(1, 3, 'H'),
(1, 3, 'ST'),
(2, 1, 'SF'),
(2, 1, 'T'),
(2, 2, 'ST'),
(2, 2, 'T'),
(2, 3, 'SF'),
(2, 3, 'T'),
(3, 1, 'F'),
(3, 1, 'RP'),
(3, 1, 'RT'),
(3, 1, 'T'),
(3, 2, 'F'),
(3, 2, 'RP'),
(3, 2, 'RT'),
(3, 2, 'T'),
(4, 1, 'RT'),
(4, 1, 'S'),
(4, 2, 'RT'),
(4, 2, 'SF');

-- --------------------------------------------------------

--
-- Table structure for table `gamepublisher`
--

CREATE TABLE `gamepublisher` (
  `publisherno` int(5) NOT NULL,
  `publishername` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gamepublisher`
--

INSERT INTO `gamepublisher` (`publisherno`, `publishername`) VALUES
(1, 'Paradox Interactive'),
(2, 'Firaxis Games'),
(3, 'Owlcat Games'),
(4, 'Electronic Arts');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_no` int(11) NOT NULL,
  `invoice_date` date NOT NULL,
  `custno` int(11) NOT NULL,
  `shippingaddress` varchar(1000) NOT NULL,
  `billingaddress` varchar(1000) NOT NULL,
  `finaldiscount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_no`, `invoice_date`, `custno`, `shippingaddress`, `billingaddress`, `finaldiscount`) VALUES
(1, '2018-01-03', 1, '123 Norfolk Avenue VA 30146', '123 Norfolk Avenue VA 30146', '0.00'),
(2, '2018-02-03', 2, '3 Disney Avenue FL 12945', '3 Disney Avenue FL 12945', '0.00'),
(3, '2018-03-03', 3, '1 Castle Road CA 21004', '1 Castle Road CA 21004', '0.10'),
(4, '2018-04-03', 4, '21 Bringhamton Park WA 30185', '21 Bringhamton Park WA 30185', '0.00'),
(5, '2018-05-03', 5, 'On the front line', 'On the front line', '0.00'),
(6, '2018-05-03', 9, 'Somewhere in Europe', 'Somewhere in Europe', '0.00'),
(7, '2018-05-03', 8, 'Cartoonland', 'Cartoonland', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item`
--

CREATE TABLE `invoice_item` (
  `invoice_no` int(11) NOT NULL,
  `isbn` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `saleprice` decimal(10,2) NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_item`
--

INSERT INTO `invoice_item` (`invoice_no`, `isbn`, `qty`, `saleprice`, `sortorder`) VALUES
(1, 1, 1, '39.99', 1),
(1, 2, 1, '59.99', 2),
(2, 2, 1, '59.99', 1),
(2, 4, 1, '13.45', 2),
(3, 3, 1, '5.99', 1),
(3, 5, 1, '5.99', 2),
(4, 4, 1, '13.45', 1),
(4, 8, 1, '5.99', 2),
(5, 5, 1, '5.99', 1),
(5, 14, 1, '5.99', 2),
(6, 10, 1, '4.99', 1),
(6, 11, 1, '4.99', 2),
(7, 10, 1, '4.99', 2),
(7, 12, 1, '4.99', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manifest`
--

CREATE TABLE `manifest` (
  `manifestno` int(11) NOT NULL,
  `empid` int(10) NOT NULL,
  `custno` int(11) NOT NULL,
  `shipaddress` varchar(1000) NOT NULL,
  `shipdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manifest`
--

INSERT INTO `manifest` (`manifestno`, `empid`, `custno`, `shipaddress`, `shipdate`) VALUES
(1, 1, 1, '123 Norfolk Avenue VA 30146', '2018-04-04'),
(2, 1, 2, '3 Disney Avenue FL 12945', '2018-04-04'),
(3, 2, 5, 'On the front line', '1998-05-05'),
(4, 2, 5, '123 Norfolk Avenue VA 30146', '1998-05-05'),
(5, 2, 9, 'Somewhere in Europe', '1998-05-05'),
(6, 2, 8, 'Cartoonland', '1998-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `manifestdetail`
--

CREATE TABLE `manifestdetail` (
  `manifestno` int(11) NOT NULL,
  `invoiceno` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `manifestorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manifestdetail`
--

INSERT INTO `manifestdetail` (`manifestno`, `invoiceno`, `sortorder`, `manifestorder`) VALUES
(1, 1, 1, 1),
(1, 1, 2, 2),
(2, 2, 1, 1),
(2, 2, 2, 2),
(3, 5, 1, 1),
(3, 5, 2, 2),
(5, 6, 1, 1),
(6, 7, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ownsgame`
--

CREATE TABLE `ownsgame` (
  `custno` int(11) NOT NULL,
  `publisherno` int(5) NOT NULL,
  `gamecode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ownsgame`
--

INSERT INTO `ownsgame` (`custno`, `publisherno`, `gamecode`) VALUES
(1, 1, 1),
(1, 3, 1),
(1, 3, 2),
(2, 1, 2),
(2, 2, 2),
(2, 2, 3),
(3, 3, 1),
(3, 3, 2),
(4, 2, 1),
(4, 4, 2),
(6, 1, 2),
(6, 1, 3),
(8, 2, 3),
(8, 3, 2),
(9, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `pnumber` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ptype` char(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`pnumber`, `ptype`) VALUES
('5768374627', 'fax'),
('5768364517', 'hand'),
('5763638263', 'home'),
('5765827361', 'home'),
('5769374627', 'home'),
('5792868245', 'home'),
('5795743623', 'home'),
('5794775347', 'office'),
('5796251732', 'office'),
('5794758263', 'pager');

-- --------------------------------------------------------

--
-- Table structure for table `phone_type`
--

CREATE TABLE `phone_type` (
  `phone_type` char(6) NOT NULL,
  `typedesc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phone_type`
--

INSERT INTO `phone_type` (`phone_type`, `typedesc`) VALUES
('fax', 'Fax number'),
('hand', 'Handphone number'),
('home', 'Home phone number'),
('Office', 'Office phone number'),
('pager', 'Pager number');

-- --------------------------------------------------------

--
-- Table structure for table `storestats`
--

CREATE TABLE `storestats` (
  `storemonth` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `stattype` varchar(20) NOT NULL,
  `stat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `storestats`
--

INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES
(1, 1, 'Complaints', 0),
(1, 1, 'Drink', 86),
(1, 1, 'Food', 163),
(1, 2, 'Complaints', 6),
(1, 2, 'Drink', 131),
(1, 2, 'Food', 178),
(2, 1, 'Complaints', 0),
(2, 1, 'Drink', 104),
(2, 1, 'Food', 130),
(2, 2, 'Complaints', 5),
(2, 2, 'Drink', 84),
(2, 2, 'Food', 123),
(3, 1, 'Complaints', 1),
(3, 1, 'Drink', 99),
(3, 1, 'Food', 158),
(3, 2, 'Complaints', 2),
(3, 2, 'Drink', 60),
(3, 2, 'Food', 119),
(4, 1, 'Complaints', 2),
(4, 1, 'Drink', 109),
(4, 1, 'Food', 169),
(4, 2, 'Complaints', 2),
(4, 2, 'Drink', 116),
(4, 2, 'Food', 172),
(5, 1, 'Complaints', 4),
(5, 1, 'Drink', 93),
(5, 1, 'Food', 173),
(5, 2, 'Complaints', 5),
(5, 2, 'Drink', 113),
(5, 2, 'Food', 108),
(6, 1, 'Complaints', 2),
(6, 1, 'Drink', 90),
(6, 1, 'Food', 158),
(6, 2, 'Complaints', 3),
(6, 2, 'Drink', 143),
(6, 2, 'Food', 135),
(7, 1, 'Complaints', 4),
(7, 1, 'Drink', 99),
(7, 1, 'Food', 122),
(7, 2, 'Complaints', 8),
(7, 2, 'Drink', 73),
(7, 2, 'Food', 111),
(8, 1, 'Complaints', 1),
(8, 1, 'Drink', 80),
(8, 1, 'Food', 148),
(8, 2, 'Complaints', 2),
(8, 2, 'Drink', 145),
(8, 2, 'Food', 151),
(9, 1, 'Complaints', 4),
(9, 1, 'Drink', 95),
(9, 1, 'Food', 116),
(9, 2, 'Complaints', 5),
(9, 2, 'Drink', 91),
(9, 2, 'Food', 121),
(10, 1, 'Complaints', 2),
(10, 1, 'Drink', 102),
(10, 1, 'Food', 162),
(10, 2, 'Complaints', 3),
(10, 2, 'Drink', 147),
(10, 2, 'Food', 141),
(11, 1, 'Complaints', 3),
(11, 1, 'Drink', 90),
(11, 1, 'Food', 129),
(11, 2, 'Complaints', 5),
(11, 2, 'Drink', 105),
(11, 2, 'Food', 126),
(12, 1, 'Complaints', 3),
(12, 1, 'Drink', 94),
(12, 1, 'Food', 168),
(12, 2, 'Complaints', 2),
(12, 2, 'Drink', 117),
(12, 2, 'Food', 128),
(13, 1, 'Complaints', 1),
(13, 1, 'Drink', 81),
(13, 1, 'Food', 150),
(13, 2, 'Complaints', 5),
(13, 2, 'Drink', 87),
(13, 2, 'Food', 163),
(14, 1, 'Complaints', 2),
(14, 1, 'Drink', 84),
(14, 1, 'Food', 142),
(14, 2, 'Complaints', 3),
(14, 2, 'Drink', 89),
(14, 2, 'Food', 148),
(15, 1, 'Complaints', 1),
(15, 1, 'Drink', 105),
(15, 1, 'Food', 191),
(15, 2, 'Complaints', 10),
(15, 2, 'Drink', 76),
(15, 2, 'Food', 121),
(16, 1, 'Complaints', 0),
(16, 1, 'Drink', 106),
(16, 1, 'Food', 155),
(16, 2, 'Complaints', 1),
(16, 2, 'Drink', 182),
(16, 2, 'Food', 138),
(17, 1, 'Complaints', 1),
(17, 1, 'Drink', 118),
(17, 1, 'Food', 144),
(17, 2, 'Complaints', 2),
(17, 2, 'Drink', 96),
(17, 2, 'Food', 92),
(18, 1, 'Complaints', 4),
(18, 1, 'Drink', 96),
(18, 1, 'Food', 160),
(18, 2, 'Complaints', 2),
(18, 2, 'Drink', 117),
(18, 2, 'Food', 129),
(19, 1, 'Complaints', 4),
(19, 1, 'Drink', 93),
(19, 1, 'Food', 156),
(19, 2, 'Complaints', 0),
(19, 2, 'Drink', 109),
(19, 2, 'Food', 154),
(20, 1, 'Complaints', 3),
(20, 1, 'Drink', 99),
(20, 1, 'Food', 147),
(20, 2, 'Complaints', 3),
(20, 2, 'Drink', 124),
(20, 2, 'Food', 153),
(21, 1, 'Complaints', 1),
(21, 1, 'Drink', 92),
(21, 1, 'Food', 130),
(21, 2, 'Complaints', 3),
(21, 2, 'Drink', 151),
(21, 2, 'Food', 120),
(22, 1, 'Complaints', 2),
(22, 1, 'Drink', 79),
(22, 1, 'Food', 111),
(22, 2, 'Complaints', 3),
(22, 2, 'Drink', 151),
(22, 2, 'Food', 183),
(23, 1, 'Complaints', 4),
(23, 1, 'Drink', 94),
(23, 1, 'Food', 83),
(23, 2, 'Complaints', 8),
(23, 2, 'Drink', 163),
(23, 2, 'Food', 163),
(24, 1, 'Complaints', 1),
(24, 1, 'Drink', 101),
(24, 1, 'Food', 191),
(24, 2, 'Complaints', 6),
(24, 2, 'Drink', 128),
(24, 2, 'Food', 136),
(25, 1, 'Complaints', 0),
(25, 1, 'Drink', 87),
(25, 1, 'Food', 167),
(25, 2, 'Complaints', 2),
(25, 2, 'Drink', 48),
(25, 2, 'Food', 139),
(26, 1, 'Complaints', 3),
(26, 1, 'Drink', 106),
(26, 1, 'Food', 126),
(26, 2, 'Complaints', 3),
(26, 2, 'Drink', 180),
(26, 2, 'Food', 151),
(27, 1, 'Complaints', 2),
(27, 1, 'Drink', 94),
(27, 1, 'Food', 128),
(27, 2, 'Complaints', 6),
(27, 2, 'Drink', 85),
(27, 2, 'Food', 118),
(28, 1, 'Complaints', 2),
(28, 1, 'Drink', 93),
(28, 1, 'Food', 160),
(28, 2, 'Complaints', 4),
(28, 2, 'Drink', 124),
(28, 2, 'Food', 144),
(29, 1, 'Complaints', 2),
(29, 1, 'Drink', 105),
(29, 1, 'Food', 123),
(29, 2, 'Complaints', 7),
(29, 2, 'Drink', 147),
(29, 2, 'Food', 135),
(30, 1, 'Complaints', 2),
(30, 1, 'Drink', 98),
(30, 1, 'Food', 155),
(30, 2, 'Complaints', 4),
(30, 2, 'Drink', 138),
(30, 2, 'Food', 159),
(31, 1, 'Complaints', 2),
(31, 1, 'Drink', 105),
(31, 1, 'Food', 168),
(31, 2, 'Complaints', 2),
(31, 2, 'Drink', 105),
(31, 2, 'Food', 141),
(32, 1, 'Complaints', 2),
(32, 1, 'Drink', 113),
(32, 1, 'Food', 160),
(32, 2, 'Complaints', 5),
(32, 2, 'Drink', 122),
(32, 2, 'Food', 139),
(33, 1, 'Complaints', 1),
(33, 1, 'Drink', 94),
(33, 1, 'Food', 161),
(33, 2, 'Complaints', 3),
(33, 2, 'Drink', 107),
(33, 2, 'Food', 144),
(34, 1, 'Complaints', 1),
(34, 1, 'Drink', 95),
(34, 1, 'Food', 160),
(34, 2, 'Complaints', 5),
(34, 2, 'Drink', 101),
(34, 2, 'Food', 126),
(35, 1, 'Complaints', 4),
(35, 1, 'Drink', 114),
(35, 1, 'Food', 116),
(35, 2, 'Complaints', 4),
(35, 2, 'Drink', 148),
(35, 2, 'Food', 143),
(36, 1, 'Complaints', 1),
(36, 1, 'Drink', 78),
(36, 1, 'Food', 153),
(36, 2, 'Complaints', 0),
(36, 2, 'Drink', 35),
(36, 2, 'Food', 109),
(37, 1, 'Complaints', 0),
(37, 1, 'Drink', 101),
(37, 1, 'Food', 154),
(37, 2, 'Complaints', 3),
(37, 2, 'Drink', 133),
(37, 2, 'Food', 122),
(38, 1, 'Complaints', 1),
(38, 1, 'Drink', 92),
(38, 1, 'Food', 147),
(38, 2, 'Complaints', 3),
(38, 2, 'Drink', 110),
(38, 2, 'Food', 114),
(39, 1, 'Complaints', 2),
(39, 1, 'Drink', 98),
(39, 1, 'Food', 164),
(39, 2, 'Complaints', 2),
(39, 2, 'Drink', 125),
(39, 2, 'Food', 126),
(40, 1, 'Complaints', 1),
(40, 1, 'Drink', 106),
(40, 1, 'Food', 146),
(40, 2, 'Complaints', 5),
(40, 2, 'Drink', 36),
(40, 2, 'Food', 122),
(41, 1, 'Complaints', 3),
(41, 1, 'Drink', 100),
(41, 1, 'Food', 181),
(41, 2, 'Complaints', 2),
(41, 2, 'Drink', 138),
(41, 2, 'Food', 134),
(42, 1, 'Complaints', 4),
(42, 1, 'Drink', 98),
(42, 1, 'Food', 146),
(42, 2, 'Complaints', 3),
(42, 2, 'Drink', 107),
(42, 2, 'Food', 126),
(43, 1, 'Complaints', 1),
(43, 1, 'Drink', 96),
(43, 1, 'Food', 161),
(43, 2, 'Complaints', 2),
(43, 2, 'Drink', 138),
(43, 2, 'Food', 179),
(44, 1, 'Complaints', 0),
(44, 1, 'Drink', 88),
(44, 1, 'Food', 146),
(44, 2, 'Complaints', 3),
(44, 2, 'Drink', 143),
(44, 2, 'Food', 128),
(45, 1, 'Complaints', 0),
(45, 1, 'Drink', 104),
(45, 1, 'Food', 171),
(45, 2, 'Complaints', 4),
(45, 2, 'Drink', 151),
(45, 2, 'Food', 135),
(46, 1, 'Complaints', 2),
(46, 1, 'Drink', 91),
(46, 1, 'Food', 157),
(46, 2, 'Complaints', 4),
(46, 2, 'Drink', 166),
(46, 2, 'Food', 160),
(47, 1, 'Complaints', 6),
(47, 1, 'Drink', 117),
(47, 1, 'Food', 122),
(47, 2, 'Complaints', 8),
(47, 2, 'Drink', 119),
(47, 2, 'Food', 112),
(48, 1, 'Complaints', 4),
(48, 1, 'Drink', 101),
(48, 1, 'Food', 168),
(48, 2, 'Complaints', 9),
(48, 2, 'Drink', 110),
(48, 2, 'Food', 129),
(49, 1, 'Complaints', 5),
(49, 1, 'Drink', 95),
(49, 1, 'Food', 148),
(49, 2, 'Complaints', 8),
(49, 2, 'Drink', 60),
(49, 2, 'Food', 119),
(50, 1, 'Complaints', 1),
(50, 1, 'Drink', 104),
(50, 1, 'Food', 153),
(50, 2, 'Complaints', 8),
(50, 2, 'Drink', 87),
(50, 2, 'Food', 142),
(51, 1, 'Complaints', 3),
(51, 1, 'Drink', 96),
(51, 1, 'Food', 123),
(51, 2, 'Complaints', 3),
(51, 2, 'Drink', 104),
(51, 2, 'Food', 132),
(52, 1, 'Complaints', 3),
(52, 1, 'Drink', 115),
(52, 1, 'Food', 153),
(52, 2, 'Complaints', 0),
(52, 2, 'Drink', 118),
(52, 2, 'Food', 155),
(53, 1, 'Complaints', 6),
(53, 1, 'Drink', 97),
(53, 1, 'Food', 157),
(53, 2, 'Complaints', 3),
(53, 2, 'Drink', 100),
(53, 2, 'Food', 132),
(54, 1, 'Complaints', 0),
(54, 1, 'Drink', 109),
(54, 1, 'Food', 147),
(54, 2, 'Complaints', 3),
(54, 2, 'Drink', 124),
(54, 2, 'Food', 149),
(55, 1, 'Complaints', 2),
(55, 1, 'Drink', 99),
(55, 1, 'Food', 160),
(55, 2, 'Complaints', 4),
(55, 2, 'Drink', 138),
(55, 2, 'Food', 139),
(56, 1, 'Complaints', 2),
(56, 1, 'Drink', 98),
(56, 1, 'Food', 122),
(56, 2, 'Complaints', 4),
(56, 2, 'Drink', 83),
(56, 2, 'Food', 125),
(57, 1, 'Complaints', 4),
(57, 1, 'Drink', 93),
(57, 1, 'Food', 161),
(57, 2, 'Complaints', 8),
(57, 2, 'Drink', 82),
(57, 2, 'Food', 88),
(58, 1, 'Complaints', 1),
(58, 1, 'Drink', 92),
(58, 1, 'Food', 147),
(58, 2, 'Complaints', 2),
(58, 2, 'Drink', 65),
(58, 2, 'Food', 125),
(59, 1, 'Complaints', 2),
(59, 1, 'Drink', 110),
(59, 1, 'Food', 173),
(59, 2, 'Complaints', 6),
(59, 2, 'Drink', 75),
(59, 2, 'Food', 160),
(60, 1, 'Complaints', 0),
(60, 1, 'Drink', 103),
(60, 1, 'Food', 162),
(60, 2, 'Complaints', 2),
(60, 2, 'Drink', 82),
(60, 2, 'Food', 136);

-- --------------------------------------------------------

--
-- Table structure for table `tradeagreement`
--

CREATE TABLE `tradeagreement` (
  `agreecode` varchar(10) NOT NULL,
  `agreename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tradeagreement`
--

INSERT INTO `tradeagreement` (`agreecode`, `agreename`) VALUES
('AfCFTA', 'African Continental Free Trade Area'),
('CPTPP', 'Comprehensive and Progressive Agreement for Trans-Pacific Partnership'),
('RCEP', 'Regional Comprehensive Economic Partnership'),
('Mercosur', 'Southern Common Market'),
('EU', 'The European Union'),
('USMCA', 'United States-Mexico-Canada Agreement');

-- --------------------------------------------------------

--
-- Table structure for table `writes`
--

CREATE TABLE `writes` (
  `isbn` int(11) NOT NULL,
  `authororder` int(11) NOT NULL,
  `authorid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `writes`
--

INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES
(2, 1, 2),
(6, 2, 3),
(10, 2, 4),
(6, 1, 5),
(3, 1, 6),
(5, 1, 7),
(6, 3, 8),
(9, 1, 8),
(10, 1, 8),
(4, 1, 9),
(1, 1, 10),
(1, 2, 11),
(7, 1, 12),
(8, 1, 12),
(9, 2, 13),
(11, 3, 14),
(11, 1, 15),
(11, 2, 16),
(12, 1, 17),
(12, 2, 18),
(13, 1, 19),
(14, 1, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `FK_bookcat` (`category_code`),
  ADD KEY `FK_pub` (`publisher`);

--
-- Indexes for table `bookcat`
--
ALTER TABLE `bookcat`
  ADD PRIMARY KEY (`category_code`);

--
-- Indexes for table `bookpublisher`
--
ALTER TABLE `bookpublisher`
  ADD PRIMARY KEY (`pubno`);

--
-- Indexes for table `computergame`
--
ALTER TABLE `computergame`
  ADD PRIMARY KEY (`publisherno`,`gamecode`);

--
-- Indexes for table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`continentcode`),
  ADD UNIQUE KEY `contname` (`continentname`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countryname`),
  ADD KEY `country_on_continent` (`continentcode`);

--
-- Indexes for table `countryagreement`
--
ALTER TABLE `countryagreement`
  ADD PRIMARY KEY (`countryname`,`agreecode`),
  ADD KEY `wagreement` (`agreecode`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custno`);

--
-- Indexes for table `custphone`
--
ALTER TABLE `custphone`
  ADD PRIMARY KEY (`custno`,`pnumber`),
  ADD KEY `fk_phone` (`pnumber`);

--
-- Indexes for table `dlc`
--
ALTER TABLE `dlc`
  ADD PRIMARY KEY (`publisherno`,`gamecode`,`dlcno`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empid`),
  ADD KEY `FK_EMPTYPE` (`emptypecode`);

--
-- Indexes for table `emptype`
--
ALTER TABLE `emptype`
  ADD PRIMARY KEY (`emptypecode`);

--
-- Indexes for table `exchrate`
--
ALTER TABLE `exchrate`
  ADD PRIMARY KEY (`currencycode`);

--
-- Indexes for table `gamecat`
--
ALTER TABLE `gamecat`
  ADD PRIMARY KEY (`catcode`);

--
-- Indexes for table `gamehascat`
--
ALTER TABLE `gamehascat`
  ADD PRIMARY KEY (`publisherno`,`gamecode`,`catcode`),
  ADD KEY `gamehascat_cat` (`catcode`);

--
-- Indexes for table `gamepublisher`
--
ALTER TABLE `gamepublisher`
  ADD PRIMARY KEY (`publisherno`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_no`),
  ADD KEY `FK_custinvoice` (`custno`),
  ADD KEY `custaddress` (`custno`,`shippingaddress`);

--
-- Indexes for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD PRIMARY KEY (`invoice_no`,`isbn`),
  ADD UNIQUE KEY `invoice_no` (`invoice_no`,`sortorder`),
  ADD KEY `FK_book` (`isbn`);

--
-- Indexes for table `manifest`
--
ALTER TABLE `manifest`
  ADD PRIMARY KEY (`manifestno`),
  ADD KEY `FK_employee` (`empid`),
  ADD KEY `mancustaddress` (`custno`,`shipaddress`);

--
-- Indexes for table `manifestdetail`
--
ALTER TABLE `manifestdetail`
  ADD PRIMARY KEY (`manifestno`,`manifestorder`),
  ADD UNIQUE KEY `manifestinvoice` (`manifestno`,`invoiceno`,`sortorder`),
  ADD KEY `FKmaniinvoice` (`invoiceno`,`sortorder`);

--
-- Indexes for table `ownsgame`
--
ALTER TABLE `ownsgame`
  ADD PRIMARY KEY (`custno`,`publisherno`,`gamecode`),
  ADD KEY `ownsgame_game` (`publisherno`,`gamecode`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`pnumber`),
  ADD KEY `fk_ptype` (`ptype`);

--
-- Indexes for table `phone_type`
--
ALTER TABLE `phone_type`
  ADD PRIMARY KEY (`phone_type`);

--
-- Indexes for table `storestats`
--
ALTER TABLE `storestats`
  ADD PRIMARY KEY (`storemonth`,`store`,`stattype`);

--
-- Indexes for table `tradeagreement`
--
ALTER TABLE `tradeagreement`
  ADD PRIMARY KEY (`agreecode`),
  ADD UNIQUE KEY `agreenam` (`agreename`);

--
-- Indexes for table `writes`
--
ALTER TABLE `writes`
  ADD PRIMARY KEY (`isbn`,`authororder`),
  ADD UNIQUE KEY `isbn` (`isbn`,`authorid`),
  ADD KEY `FK_author` (`authorid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FK_bookcat` FOREIGN KEY (`category_code`) REFERENCES `bookcat` (`category_code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_pub` FOREIGN KEY (`publisher`) REFERENCES `bookpublisher` (`pubno`) ON UPDATE CASCADE;

--
-- Constraints for table `computergame`
--
ALTER TABLE `computergame`
  ADD CONSTRAINT `gamewpub` FOREIGN KEY (`publisherno`) REFERENCES `gamepublisher` (`publisherno`);

--
-- Constraints for table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `country_on_continent` FOREIGN KEY (`continentcode`) REFERENCES `continents` (`continentcode`);

--
-- Constraints for table `countryagreement`
--
ALTER TABLE `countryagreement`
  ADD CONSTRAINT `wagreement` FOREIGN KEY (`agreecode`) REFERENCES `tradeagreement` (`agreecode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wcountry` FOREIGN KEY (`countryname`) REFERENCES `countries` (`countryname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `custphone`
--
ALTER TABLE `custphone`
  ADD CONSTRAINT `FK_custphone` FOREIGN KEY (`custno`) REFERENCES `customer` (`custno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_phone` FOREIGN KEY (`pnumber`) REFERENCES `phone` (`pnumber`);

--
-- Constraints for table `dlc`
--
ALTER TABLE `dlc`
  ADD CONSTRAINT `dlctogame` FOREIGN KEY (`publisherno`,`gamecode`) REFERENCES `computergame` (`publisherno`, `gamecode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_EMPTYPE` FOREIGN KEY (`emptypecode`) REFERENCES `emptype` (`emptypecode`) ON UPDATE CASCADE;

--
-- Constraints for table `gamehascat`
--
ALTER TABLE `gamehascat`
  ADD CONSTRAINT `gamehascat_cat` FOREIGN KEY (`catcode`) REFERENCES `gamecat` (`catcode`),
  ADD CONSTRAINT `gamehascat_game` FOREIGN KEY (`publisherno`,`gamecode`) REFERENCES `computergame` (`publisherno`, `gamecode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `FK_custinvoice` FOREIGN KEY (`custno`) REFERENCES `customer` (`custno`) ON UPDATE CASCADE;

--
-- Constraints for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD CONSTRAINT `FK_book` FOREIGN KEY (`isbn`) REFERENCES `book` (`isbn`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_invoice` FOREIGN KEY (`invoice_no`) REFERENCES `invoice` (`invoice_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `manifest`
--
ALTER TABLE `manifest`
  ADD CONSTRAINT `FK_cust` FOREIGN KEY (`custno`) REFERENCES `customer` (`custno`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_employee` FOREIGN KEY (`empid`) REFERENCES `employee` (`empid`) ON UPDATE CASCADE;

--
-- Constraints for table `manifestdetail`
--
ALTER TABLE `manifestdetail`
  ADD CONSTRAINT `FK_manifest` FOREIGN KEY (`manifestno`) REFERENCES `manifest` (`manifestno`),
  ADD CONSTRAINT `FKmaniinvoice` FOREIGN KEY (`invoiceno`,`sortorder`) REFERENCES `invoice_item` (`invoice_no`, `sortorder`) ON UPDATE CASCADE;

--
-- Constraints for table `ownsgame`
--
ALTER TABLE `ownsgame`
  ADD CONSTRAINT `ownsgame_cust` FOREIGN KEY (`custno`) REFERENCES `customer` (`custno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ownsgame_game` FOREIGN KEY (`publisherno`,`gamecode`) REFERENCES `computergame` (`publisherno`, `gamecode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `fk_ptype` FOREIGN KEY (`ptype`) REFERENCES `phone_type` (`phone_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
