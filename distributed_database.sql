-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2025 at 11:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `distributed_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `Id` int(11) NOT NULL,
  `AccountNumber` varchar(255) NOT NULL,
  `AccountType` varchar(50) DEFAULT NULL CHECK (`AccountType` in ('Savings','Checking','Fixed Deposit','Loan')),
  `Balance` decimal(15,2) NOT NULL,
  `MinimumBalance` decimal(15,2) DEFAULT NULL,
  `OpenedDate` date NOT NULL,
  `Status` varchar(50) DEFAULT NULL CHECK (`Status` in ('Active','Dormant','Closed','Frozen')),
  `CustomerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`Id`, `AccountNumber`, `AccountType`, `Balance`, `MinimumBalance`, `OpenedDate`, `Status`, `CustomerID`) VALUES
(1, 'ACCT276465', 'Fixed Deposit', 3019.00, 470.00, '2024-04-03', 'Active', 83),
(2, 'ACCT241255', 'Savings', 500.00, 420.00, '2025-06-27', 'Closed', 32),
(3, 'ACCT040523', 'Savings', 4049.00, 382.00, '2024-08-17', 'Closed', 17),
(4, 'ACCT966954', 'Fixed Deposit', 7809.00, 450.00, '2024-12-06', 'Active', 69),
(5, 'ACCT450536', 'Savings', 2174.00, 356.00, '2025-02-28', 'Dormant', 71),
(6, 'ACCT492111', 'Fixed Deposit', 4051.00, 232.00, '2024-10-17', 'Closed', 15),
(7, 'ACCT142598', 'Checking', 3347.00, 254.00, '2024-04-22', 'Active', 38),
(8, 'ACCT566549', 'Loan', 7829.00, 440.00, '2025-05-10', 'Active', 24),
(9, 'ACCT427305', 'Checking', 5611.00, 205.00, '2025-04-05', 'Active', 106),
(10, 'ACCT938672', 'Loan', 4060.00, 365.00, '2025-07-19', 'Closed', 91),
(11, 'ACCT579430', 'Loan', 5954.00, 379.00, '2025-07-23', 'Closed', 105),
(12, 'ACCT282461', 'Savings', 9951.00, 263.00, '2024-10-30', 'Closed', 6),
(13, 'ACCT729368', 'Loan', 8956.00, 356.00, '2024-03-03', 'Active', 67),
(14, 'ACCT498615', 'Savings', 2623.00, 456.00, '2024-04-29', 'Active', 96),
(15, 'ACCT929613', 'Savings', 4868.00, 322.00, '2024-08-01', 'Active', 31),
(16, 'ACCT231764', 'Loan', 6566.00, 390.00, '2024-05-07', 'Active', 18),
(17, 'ACCT277134', 'Loan', 148.00, 84.00, '2024-07-23', 'Active', 26),
(18, 'ACCT224038', 'Loan', 2623.00, 282.00, '2025-05-09', 'Active', 16),
(19, 'ACCT170067', 'Fixed Deposit', 9245.00, 219.00, '2025-07-07', 'Closed', 37),
(20, 'ACCT614358', 'Checking', 7869.00, 443.00, '2025-10-27', 'Closed', 19),
(21, 'ACCT825032', 'Fixed Deposit', 8848.00, 455.00, '2024-10-22', 'Closed', 23),
(22, 'ACCT836970', 'Loan', 5379.00, 313.00, '2024-09-09', 'Closed', 80),
(23, 'ACCT400016', 'Loan', 6065.00, 258.00, '2024-04-21', 'Active', 117),
(24, 'ACCT782615', 'Checking', 8543.00, 97.00, '2025-04-15', 'Active', 104),
(25, 'ACCT572864', 'Fixed Deposit', 4775.00, 133.00, '2024-10-12', 'Dormant', 86),
(26, 'ACCT630830', 'Loan', 2629.00, 199.00, '2024-10-19', 'Closed', 95),
(27, 'ACCT849149', 'Checking', 5363.00, 165.00, '2024-10-03', 'Active', 114),
(28, 'ACCT417521', 'Loan', 4662.00, 491.00, '2024-07-22', 'Dormant', 118),
(29, 'ACCT757641', 'Savings', 4371.00, 407.00, '2024-09-10', 'Active', 27),
(30, 'ACCT942383', 'Savings', 2161.00, 55.00, '2024-10-07', 'Active', 101),
(31, 'ACCT372902', 'Savings', 5133.00, 121.00, '2024-02-19', 'Closed', 100),
(32, 'ACCT056864', 'Checking', 1836.00, 480.00, '2024-06-08', 'Active', 68),
(33, 'ACCT364901', 'Savings', 9627.00, 417.00, '2025-02-09', 'Closed', 112),
(34, 'ACCT602786', 'Savings', 8591.00, 475.00, '2025-12-04', 'Closed', 94),
(35, 'ACCT830695', 'Loan', 2045.00, 383.00, '2024-12-29', 'Active', 90),
(36, 'ACCT032907', 'Savings', 1201.00, 462.00, '2025-01-20', 'Active', 115),
(37, 'ACCT762996', 'Loan', 3378.00, 162.00, '2024-01-11', 'Active', 81),
(38, 'ACCT307199', 'Loan', 1600.00, 278.00, '2025-08-12', 'Closed', 98),
(39, 'ACCT996037', 'Fixed Deposit', 9786.00, 179.00, '2024-02-22', 'Active', 34),
(40, 'ACCT604877', 'Loan', 8235.00, 480.00, '2025-05-30', 'Active', 13),
(41, 'ACCT553082', 'Checking', 5365.00, 142.00, '2024-05-21', 'Active', 4),
(42, 'ACCT449094', 'Savings', 421.00, 516.00, '2024-09-08', 'Dormant', 120),
(43, 'ACCT315630', 'Fixed Deposit', 8977.00, 463.00, '2024-03-25', 'Dormant', 70),
(44, 'ACCT425618', 'Checking', 5557.00, 535.00, '2024-12-27', 'Active', 116),
(45, 'ACCT768569', 'Loan', 4759.00, 183.00, '2025-04-20', 'Closed', 12),
(46, 'ACCT709302', 'Loan', 4148.00, 108.00, '2024-06-04', 'Closed', 102),
(47, 'ACCT828575', 'Loan', 8498.00, 320.00, '2024-11-20', 'Active', 29),
(48, 'ACCT889369', 'Savings', 9784.00, 280.00, '2024-08-07', 'Dormant', 85),
(49, 'ACCT856990', 'Fixed Deposit', 8003.00, 117.00, '2024-04-11', 'Active', 59),
(50, 'ACCT500548', 'Savings', 2428.00, 411.00, '2024-12-20', 'Active', 21),
(51, 'ACCT970120', 'Checking', 3707.00, 438.00, '2024-11-04', 'Dormant', 109),
(52, 'ACCT191025', 'Fixed Deposit', 5217.00, 217.00, '2024-10-30', 'Closed', 103),
(53, 'ACCT450399', 'Checking', 6560.00, 100.00, '2024-08-10', 'Dormant', 22),
(54, 'ACCT172885', 'Loan', 6196.00, 341.00, '2024-07-24', 'Closed', 74),
(55, 'ACCT162636', 'Savings', 7591.00, 51.00, '2025-09-27', 'Dormant', 111),
(56, 'ACCT146045', 'Savings', 748.00, 61.00, '2024-10-16', 'Dormant', 92),
(57, 'ACCT453229', 'Loan', 6460.00, 152.00, '2024-07-22', 'Closed', 97),
(58, 'ACCT373462', 'Savings', 9592.00, 102.00, '2024-05-13', 'Active', 99),
(59, 'ACCT433558', 'Loan', 5145.00, 546.00, '2024-06-04', 'Active', 64),
(60, 'ACCT481132', 'Loan', 1954.00, 86.00, '2024-11-16', 'Dormant', 75),
(61, 'ACCT440808', 'Loan', 9624.00, 354.00, '2024-11-22', 'Active', 10),
(62, 'ACCT846039', 'Loan', 2200.00, 420.00, '2024-02-01', 'Active', 110),
(63, 'ACCT898874', 'Loan', 1605.00, 475.00, '2025-01-17', 'Dormant', 108),
(64, 'ACCT466669', 'Loan', 1754.00, 522.00, '2024-06-13', 'Active', 35),
(65, 'ACCT714922', 'Loan', 9929.00, 440.00, '2024-12-23', 'Active', 78),
(66, 'ACCT804875', 'Savings', 6687.00, 374.00, '2024-06-21', 'Active', 61),
(67, 'ACCT921033', 'Loan', 1828.00, 208.00, '2024-12-15', 'Active', 7),
(68, 'ACCT544795', 'Loan', 499.00, 424.00, '2025-05-13', 'Closed', 63),
(69, 'ACCT231402', 'Savings', 2888.00, 455.00, '2024-01-25', 'Dormant', 82),
(70, 'ACCT972555', 'Checking', 6057.00, 375.00, '2024-06-17', 'Active', 60),
(71, 'ACCT279901', 'Fixed Deposit', 3615.00, 476.00, '2024-10-27', 'Dormant', 11),
(72, 'ACCT950234', 'Checking', 1290.00, 224.00, '2024-11-29', 'Closed', 73),
(73, 'ACCT464359', 'Savings', 3745.00, 234.00, '2024-09-20', 'Dormant', 33),
(74, 'ACCT582970', 'Loan', 6080.00, 320.00, '2025-10-17', 'Dormant', 119),
(75, 'ACCT600371', 'Loan', 2471.00, 272.00, '2024-05-11', 'Dormant', 77),
(76, 'ACCT603545', 'Loan', 3439.00, 480.00, '2024-12-11', 'Dormant', 107),
(77, 'ACCT620276', 'Loan', 3553.00, 192.00, '2024-06-15', 'Active', 113),
(78, 'ACCT723154', 'Savings', 8137.00, 267.00, '2024-09-07', 'Active', 88),
(79, 'ACCT339907', 'Checking', 7985.00, 543.00, '2025-07-27', 'Closed', 72),
(80, 'ACCT057706', 'Fixed Deposit', 8143.00, 204.00, '2024-10-17', 'Closed', 28),
(81, 'ACCT077552', 'Checking', 3716.00, 306.00, '2024-07-21', 'Dormant', 93),
(82, 'ACCT625101', 'Checking', 3580.00, 213.00, '2025-07-05', 'Active', 9),
(83, 'ACCT331734', 'Savings', 8479.00, 394.00, '2025-02-27', 'Active', 89),
(84, 'ACCT298357', 'Loan', 10086.00, 214.00, '2024-07-17', 'Active', 2),
(85, 'ACCT935475', 'Savings', 433.00, 381.00, '2024-08-30', 'Active', 76),
(86, 'ACCT024485', 'Fixed Deposit', 8033.00, 226.00, '2024-05-13', 'Closed', 25),
(87, 'ACCT562990', 'Savings', 2790.00, 435.00, '2024-01-27', 'Closed', 84),
(88, 'ACCT925809', 'Fixed Deposit', 5138.00, 360.00, '2024-05-28', 'Dormant', 8),
(89, 'ACCT896911', 'Loan', 1944.00, 548.00, '2024-12-23', 'Active', 62),
(90, 'ACCT852360', 'Loan', 2975.00, 389.00, '2025-02-09', 'Dormant', 79),
(91, 'ACCT716447', 'Fixed Deposit', 8494.00, 172.00, '2024-11-27', 'Closed', 87),
(92, 'ACCT942606', 'Loan', 9699.00, 419.00, '2025-07-30', 'Dormant', 65),
(93, 'ACCT737273', 'Fixed Deposit', 2742.00, 188.00, '2024-12-17', 'Closed', 36),
(94, 'ACCT207730', 'Savings', 3920.00, 203.00, '2024-03-09', 'Active', 1),
(95, 'ACCT707811', 'Loan', 9171.00, 143.00, '2024-05-25', 'Active', 5),
(96, 'ACCT927319', 'Loan', 2540.00, 401.00, '2024-10-30', 'Dormant', 30),
(97, 'ACCT905690', 'Loan', 3976.00, 387.00, '2024-11-05', 'Active', 3),
(98, 'ACCT650496', 'Loan', 6671.00, 397.00, '2024-09-14', 'Closed', 66),
(99, 'ACCT641571', 'Savings', 1942.00, 177.00, '2025-01-04', 'Active', 14),
(100, 'ACCT076372', 'Loan', 8023.00, 454.00, '2025-02-21', 'Closed', 20),
(128, 'ACCT073520', 'Checking', 3394.00, 170.00, '2024-04-07', 'Active', 30),
(129, 'ACCT418699', 'Savings', 8733.00, 172.00, '2025-01-21', 'Active', 64),
(130, 'ACCT863129', 'Savings', 6442.00, 268.00, '2025-02-09', 'Active', 103),
(131, 'ACCT102164', 'Loan', 9518.00, 460.00, '2024-08-30', 'Dormant', 4),
(132, 'ACCT239665', 'Savings', 5235.00, 264.00, '2025-05-24', 'Dormant', 98),
(133, 'ACCT594542', 'Loan', 2730.00, 510.00, '2025-04-13', 'Active', 63),
(134, 'ACCT388785', 'Loan', 8300.00, 323.00, '2024-07-02', 'Dormant', 70),
(135, 'ACCT864241', 'Savings', 1272.00, 130.00, '2024-10-03', 'Closed', 38),
(136, 'ACCT829921', 'Loan', 8417.00, 176.00, '2025-07-23', 'Active', 28),
(137, 'ACCT168674', 'Loan', 4217.00, 385.00, '2025-02-04', 'Dormant', 62),
(138, 'ACCT126644', 'Fixed Deposit', 5129.00, 478.00, '2025-08-21', 'Active', 119),
(139, 'ACCT453749', 'Fixed Deposit', 7036.00, 439.00, '2025-10-19', 'Closed', 116),
(140, 'ACCT245387', 'Checking', 9147.00, 420.00, '2025-04-09', 'Dormant', 59),
(141, 'ACCT384637', 'Checking', 8684.00, 303.00, '2025-03-30', 'Active', 8),
(142, 'ACCT769909', 'Loan', 2200.00, 537.00, '2025-03-05', 'Active', 94),
(143, 'ACCT507915', 'Savings', 6878.00, 184.00, '2025-01-05', 'Dormant', 106),
(144, 'ACCT493620', 'Loan', 1974.00, 179.00, '2025-05-04', 'Closed', 108),
(145, 'ACCT467079', 'Checking', 1276.00, 449.00, '2025-01-23', 'Closed', 102),
(146, 'ACCT374408', 'Loan', 7245.00, 428.00, '2025-04-25', 'Dormant', 15),
(147, 'ACCT905308', 'Loan', 9630.00, 184.00, '2025-01-23', 'Dormant', 31),
(148, 'ACCT871163', 'Loan', 5523.00, 177.00, '2024-12-03', 'Active', 92),
(149, 'ACCT048982', 'Loan', 7662.00, 246.00, '2025-06-18', 'Active', 32),
(150, 'ACCT707415', 'Checking', 9773.00, 477.00, '2025-01-21', 'Active', 13),
(151, 'ACCT822105', 'Loan', 3448.00, 436.00, '2025-03-21', 'Closed', 25),
(152, 'ACCT837561', 'Loan', 4590.00, 175.00, '2025-02-28', 'Closed', 83),
(153, 'ACCT282362', 'Fixed Deposit', 410.00, 364.00, '2024-03-15', 'Active', 14),
(154, 'ACCT299928', 'Loan', 5403.00, 347.00, '2025-01-28', 'Active', 80),
(155, 'ACCT314525', 'Loan', 4472.00, 404.00, '2024-11-15', 'Active', 120),
(156, 'ACCT062518', 'Checking', 8475.00, 410.00, '2024-12-28', 'Active', 111),
(157, 'ACCT770812', 'Savings', 8580.00, 122.00, '2024-06-06', 'Active', 90),
(158, 'ACCT442936', 'Loan', 4882.00, 459.00, '2024-11-19', 'Closed', 112),
(159, 'ACCT268401', 'Loan', 5980.00, 127.00, '2024-06-25', 'Dormant', 61),
(160, 'ACCT144785', 'Loan', 8289.00, 435.00, '2025-02-06', 'Closed', 65),
(161, 'ACCT781272', 'Savings', 7385.00, 349.00, '2024-12-13', 'Active', 34),
(162, 'ACCT700317', 'Fixed Deposit', 10011.00, 258.00, '2025-01-02', 'Active', 10),
(163, 'ACCT060186', 'Fixed Deposit', 5349.00, 538.00, '2024-10-06', 'Closed', 113),
(164, 'ACCT777081', 'Loan', 3382.00, 114.00, '2025-04-15', 'Dormant', 17),
(165, 'ACCT400757', 'Checking', 6170.00, 341.00, '2024-08-29', 'Closed', 78),
(166, 'ACCT816226', 'Checking', 5308.00, 105.00, '2025-07-21', 'Closed', 74),
(167, 'ACCT155090', 'Loan', 7031.00, 412.00, '2025-04-25', 'Closed', 101),
(168, 'ACCT561587', 'Loan', 2668.00, 484.00, '2025-05-09', 'Active', 86),
(169, 'ACCT116329', 'Loan', 6190.00, 390.00, '2024-11-08', 'Closed', 2),
(170, 'ACCT087602', 'Savings', 9663.00, 75.00, '2025-04-08', 'Dormant', 29),
(171, 'ACCT105402', 'Checking', 6005.00, 55.00, '2025-03-13', 'Active', 73),
(172, 'ACCT077864', 'Savings', 5881.00, 251.00, '2025-02-07', 'Active', 11),
(173, 'ACCT309100', 'Checking', 6323.00, 363.00, '2024-10-27', 'Active', 26),
(174, 'ACCT230326', 'Fixed Deposit', 1739.00, 530.00, '2024-05-28', 'Dormant', 33),
(175, 'ACCT810890', 'Checking', 7327.00, 249.00, '2025-07-08', 'Closed', 27),
(176, 'ACCT138667', 'Fixed Deposit', 1148.00, 490.00, '2024-08-20', 'Dormant', 115),
(177, 'ACCT535496', 'Loan', 8076.00, 165.00, '2025-09-08', 'Active', 16),
(178, 'ACCT929764', 'Savings', 3036.00, 459.00, '2024-10-06', 'Closed', 93),
(179, 'ACCT233460', 'Loan', 2027.00, 149.00, '2025-05-12', 'Active', 107),
(180, 'ACCT363110', 'Loan', 1287.00, 219.00, '2024-07-10', 'Closed', 1),
(181, 'ACCT995836', 'Checking', 5934.00, 403.00, '2025-05-01', 'Dormant', 21),
(182, 'ACCT897674', 'Loan', 3685.00, 128.00, '2024-10-17', 'Active', 110),
(183, 'ACCT342577', 'Savings', 4986.00, 116.00, '2024-10-19', 'Closed', 85),
(184, 'ACCT947703', 'Savings', 4035.00, 462.00, '2025-05-17', 'Active', 12),
(185, 'ACCT204921', 'Savings', 5814.00, 122.00, '2024-02-07', 'Closed', 22),
(186, 'ACCT671825', 'Loan', 8196.00, 380.00, '2025-05-01', 'Active', 60),
(187, 'ACCT556382', 'Loan', 5865.00, 448.00, '2024-04-13', 'Dormant', 81),
(188, 'ACCT878311', 'Checking', 5531.00, 524.00, '2025-01-26', 'Closed', 7),
(189, 'ACCT242852', 'Loan', 9149.00, 447.00, '2024-05-10', 'Dormant', 87),
(190, 'ACCT327131', 'Loan', 5164.00, 437.00, '2024-11-26', 'Active', 9),
(191, 'ACCT522070', 'Fixed Deposit', 6013.00, 95.00, '2024-09-30', 'Active', 84),
(192, 'ACCT938286', 'Loan', 7708.00, 356.00, '2025-08-02', 'Active', 23),
(193, 'ACCT967605', 'Checking', 7993.00, 296.00, '2024-12-20', 'Active', 104),
(194, 'ACCT307704', 'Fixed Deposit', 2563.00, 333.00, '2024-06-28', 'Dormant', 5),
(195, 'ACCT246002', 'Savings', 4903.00, 385.00, '2025-10-21', 'Closed', 69),
(196, 'ACCT059725', 'Checking', 5819.00, 543.00, '2024-12-22', 'Active', 37),
(197, 'ACCT572577', 'Checking', 3168.00, 293.00, '2024-07-15', 'Active', 95),
(198, 'ACCT378060', 'Fixed Deposit', 6192.00, 179.00, '2025-01-07', 'Closed', 97),
(199, 'ACCT909457', 'Checking', 8831.00, 81.00, '2024-11-12', 'Active', 67),
(200, 'ACCT869581', 'Savings', 4491.00, 333.00, '2024-10-09', 'Dormant', 66),
(201, 'ACCT156777', 'Loan', 5887.00, 360.00, '2024-12-03', 'Dormant', 118),
(202, 'ACCT242482', 'Savings', 5720.00, 368.00, '2025-02-07', 'Closed', 91),
(255, 'ACCT402302', 'Savings', 8207.00, 71.00, '2025-09-19', 'Dormant', 94),
(256, 'ACCT454559', 'Loan', 939.00, 121.00, '2025-03-01', 'Dormant', 65),
(257, 'ACCT436089', 'Savings', 3248.00, 150.00, '2024-03-30', 'Closed', 1),
(258, 'ACCT284161', 'Loan', 7961.00, 105.00, '2024-10-03', 'Dormant', 78),
(259, 'ACCT583410', 'Loan', 3185.00, 112.00, '2024-12-24', 'Active', 2),
(260, 'ACCT762934', 'Loan', 6479.00, 387.00, '2024-07-27', 'Active', 77),
(261, 'ACCT298144', 'Loan', 7054.00, 251.00, '2025-11-19', 'Active', 7),
(262, 'ACCT510954', 'Checking', 8082.00, 459.00, '2025-04-21', 'Active', 85),
(263, 'ACCT822962', 'Loan', 2052.00, 308.00, '2024-11-24', 'Active', 69),
(264, 'ACCT878389', 'Savings', 4168.00, 254.00, '2025-09-25', 'Dormant', 73),
(265, 'ACCT851294', 'Savings', 7598.00, 333.00, '2025-05-08', 'Active', 101),
(266, 'ACCT782636', 'Fixed Deposit', 1116.00, 461.00, '2024-11-15', 'Closed', 82),
(267, 'ACCT744850', 'Checking', 1676.00, 296.00, '2025-11-06', 'Active', 19),
(268, 'ACCT824598', 'Fixed Deposit', 4901.00, 258.00, '2025-02-10', 'Dormant', 63),
(269, 'ACCT593814', 'Loan', 2418.00, 59.00, '2025-03-10', 'Closed', 28),
(270, 'ACCT017658', 'Loan', 9319.00, 116.00, '2024-12-27', 'Active', 22),
(271, 'ACCT850866', 'Loan', 6116.00, 161.00, '2025-02-06', 'Closed', 98),
(272, 'ACCT819789', 'Fixed Deposit', 7902.00, 158.00, '2025-07-12', 'Active', 86),
(273, 'ACCT758707', 'Savings', 5912.00, 245.00, '2024-07-16', 'Dormant', 96),
(274, 'ACCT536481', 'Savings', 6323.00, 536.00, '2025-01-29', 'Active', 110),
(275, 'ACCT127962', 'Loan', 3713.00, 399.00, '2024-06-25', 'Dormant', 84),
(276, 'ACCT797070', 'Checking', 5440.00, 418.00, '2024-03-08', 'Active', 87),
(277, 'ACCT284792', 'Fixed Deposit', 1269.00, 422.00, '2024-07-09', 'Closed', 14),
(278, 'ACCT246996', 'Loan', 7086.00, 485.00, '2024-12-06', 'Dormant', 15),
(279, 'ACCT423971', 'Loan', 7689.00, 376.00, '2025-05-21', 'Dormant', 5),
(280, 'ACCT127239', 'Fixed Deposit', 7003.00, 429.00, '2025-04-19', 'Active', 114),
(281, 'ACCT222325', 'Fixed Deposit', 5482.00, 513.00, '2024-09-16', 'Active', 13),
(282, 'ACCT703673', 'Loan', 2338.00, 547.00, '2024-05-23', 'Dormant', 33),
(283, 'ACCT226242', 'Loan', 1814.00, 69.00, '2024-12-27', 'Active', 117),
(284, 'ACCT404321', 'Savings', 7781.00, 176.00, '2025-12-11', 'Active', 116),
(285, 'ACCT067849', 'Checking', 8878.00, 335.00, '2024-06-23', 'Active', 66),
(286, 'ACCT504065', 'Loan', 397.00, 325.00, '2025-02-19', 'Closed', 79),
(287, 'ACCT513951', 'Loan', 7122.00, 74.00, '2024-07-24', 'Closed', 12),
(288, 'ACCT345059', 'Loan', 6927.00, 420.00, '2025-02-08', 'Active', 113),
(289, 'ACCT391801', 'Savings', 895.00, 172.00, '2025-05-29', 'Active', 64),
(290, 'ACCT341741', 'Loan', 9800.00, 429.00, '2025-01-19', 'Active', 67),
(291, 'ACCT989786', 'Savings', 2162.00, 512.00, '2024-10-31', 'Active', 36),
(292, 'ACCT803421', 'Savings', 599.00, 536.00, '2025-03-10', 'Closed', 71),
(293, 'ACCT599004', 'Savings', 5142.00, 220.00, '2024-11-08', 'Closed', 72),
(294, 'ACCT452172', 'Loan', 6570.00, 97.00, '2024-10-05', 'Active', 112),
(295, 'ACCT194965', 'Savings', 5190.00, 294.00, '2025-06-24', 'Active', 74),
(296, 'ACCT439506', 'Savings', 7954.00, 182.00, '2025-11-12', 'Active', 111),
(297, 'ACCT968744', 'Checking', 4231.00, 483.00, '2024-11-12', 'Closed', 32),
(298, 'ACCT578024', 'Loan', 9945.00, 333.00, '2025-03-24', 'Dormant', 18),
(299, 'ACCT375741', 'Fixed Deposit', 9252.00, 449.00, '2025-03-12', 'Dormant', 107),
(300, 'ACCT939712', 'Checking', 8872.00, 208.00, '2025-09-15', 'Closed', 37),
(301, 'ACCT212214', 'Loan', 8688.00, 450.00, '2024-11-07', 'Closed', 102),
(302, 'ACCT361069', 'Loan', 8450.00, 340.00, '2024-12-14', 'Active', 21),
(303, 'ACCT643597', 'Savings', 3204.00, 253.00, '2024-12-05', 'Active', 11),
(304, 'ACCT439099', 'Loan', 1909.00, 173.00, '2025-07-21', 'Dormant', 119),
(305, 'ACCT887383', 'Savings', 4784.00, 382.00, '2024-12-28', 'Closed', 68),
(306, 'ACCT750448', 'Checking', 670.00, 212.00, '2025-06-07', 'Active', 62),
(307, 'ACCT543487', 'Loan', 3949.00, 368.00, '2024-08-31', 'Active', 120),
(308, 'ACCT007631', 'Loan', 5090.00, 263.00, '2024-08-29', 'Dormant', 81),
(309, 'ACCT920926', 'Loan', 284.00, 423.00, '2024-10-27', 'Active', 34),
(310, 'ACCT699311', 'Savings', 8101.00, 280.00, '2025-01-15', 'Active', 100),
(311, 'ACCT898014', 'Savings', 8725.00, 539.00, '2024-10-06', 'Closed', 60),
(312, 'ACCT464162', 'Fixed Deposit', 9850.00, 540.00, '2025-07-14', 'Dormant', 118),
(313, 'ACCT401253', 'Fixed Deposit', 2174.00, 99.00, '2025-06-01', 'Active', 115),
(314, 'ACCT005416', 'Fixed Deposit', 8782.00, 395.00, '2025-01-27', 'Active', 20),
(315, 'ACCT397793', 'Loan', 1227.00, 65.00, '2025-07-09', 'Closed', 106),
(316, 'ACCT260769', 'Fixed Deposit', 6792.00, 468.00, '2024-12-09', 'Active', 24),
(317, 'ACCT486864', 'Loan', 1553.00, 176.00, '2025-04-18', 'Active', 61),
(318, 'ACCT999973', 'Loan', 2218.00, 500.00, '2025-02-25', 'Dormant', 8),
(319, 'ACCT139194', 'Savings', 8980.00, 178.00, '2024-12-04', 'Active', 38),
(320, 'ACCT207331', 'Checking', 3301.00, 409.00, '2025-03-10', 'Active', 97),
(321, 'ACCT122092', 'Checking', 5748.00, 58.00, '2025-04-26', 'Closed', 16),
(322, 'ACCT417372', 'Loan', 10002.00, 377.00, '2025-02-18', 'Dormant', 6),
(323, 'ACCT113720', 'Loan', 5622.00, 179.00, '2024-08-31', 'Active', 95),
(324, 'ACCT269093', 'Loan', 2173.00, 376.00, '2024-11-13', 'Active', 70),
(325, 'ACCT595084', 'Savings', 1096.00, 533.00, '2024-10-16', 'Closed', 83),
(326, 'ACCT672874', 'Loan', 8261.00, 241.00, '2024-10-06', 'Active', 99),
(327, 'ACCT018305', 'Checking', 8366.00, 119.00, '2024-11-02', 'Dormant', 17),
(328, 'ACCT424751', 'Loan', 3888.00, 184.00, '2024-08-04', 'Active', 4),
(329, 'ACCT813397', 'Savings', 5804.00, 172.00, '2025-02-14', 'Dormant', 91);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Id` int(11) NOT NULL,
  `Branch_name` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Contact_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`Id`, `Branch_name`, `Location`, `Contact_number`) VALUES
(1, 'Nairobi', 'Nairobi City', '0701000001'),
(2, 'Mombasa', 'Mombasa County', '0701000002'),
(3, 'Nanyuki', 'Laikipia County', '0701000003'),
(4, 'Kisumu', 'Kisumu County', '0701000004');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Id` int(11) NOT NULL,
  `Full_name` varchar(255) NOT NULL,
  `Email_address` varchar(255) NOT NULL,
  `Phone_number` varchar(50) NOT NULL,
  `City_of_residence` varchar(255) NOT NULL,
  `Registration_date` date NOT NULL,
  `Branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Id`, `Full_name`, `Email_address`, `Phone_number`, `City_of_residence`, `Registration_date`, `Branch_id`) VALUES
(1, 'James Otieno', 'james.otieno@example.com', '0756120003', 'Kisumu', '2024-03-09', 4),
(2, 'Alice Njeri', 'alice.njeri@example.com', '0712000894', 'Nanyuki', '2024-04-12', 3),
(3, 'Peter Mwangi', 'peter.mwangi@example.com', '0778962005', 'Nairobi', '2024-11-05', 1),
(4, 'Mary Wambui', 'mary.wambui@example.com', '0716960006', 'Mombasa', '2024-05-21', 2),
(5, 'Kevin Omondi', 'kevin.omondi@example.com', '0745120087', 'Kisumu', '2024-05-25', 4),
(6, 'Lucy Njoki', 'lucy.njoki@example.com', '0722786508', 'Nanyuki', '2024-10-30', 3),
(7, 'Brian Ochieng', 'brian.ochieng@example.com', '0778563298', 'Nairobi', '2024-12-15', 1),
(8, 'Susan Kamau', 'susan.kamau@example.com', '0767585410', 'Mombasa', '2024-04-13', 2),
(9, 'Paul Kiptoo', 'paul.kiptoo@example.com', '0711896509', 'Kisumu', '2024-07-19', 4),
(10, 'Diana Cheruiyot', 'diana.cheruiyot@example.com', '0742000012', 'Nanyuki', '2024-11-22', 3),
(11, 'Mark Kariuki', 'mark.kariuki@example.com', '0776870013', 'Nairobi', '2024-10-27', 1),
(12, 'Faith Nyambura', 'faith.nyambura@example.com', '0729008714', 'Mombasa', '2024-06-06', 2),
(13, 'Eric Mutua', 'eric.mutua@example.com', '0715906754', 'Kisumu', '2024-09-08', 4),
(14, 'Grace Waithera', 'grace.waithera@example.com', '0716389765', 'Nanyuki', '2024-02-24', 3),
(15, 'Anthony Ndungu', 'anthony.ndungu@example.com', '0718906543', 'Nairobi', '2024-09-03', 1),
(16, 'Esther Wairimu', 'esther.wairimu@example.com', '0767896543', 'Mombasa', '2024-12-06', 2),
(17, 'Daniel Oloo', 'daniel.oloo@example.com', '0797854428', 'Kisumu', '2024-08-17', 4),
(18, 'Lilian Achieng', 'lilian.achieng@example.com', '07208943678', 'Nanyuki', '2024-05-07', 3),
(19, 'Michael Kariuki', 'michael.kariuki@example.com', '0721908764', 'Nairobi', '2024-11-08', 1),
(20, 'Nancy Mwende', 'nancy.mwende@example.com', '0722789065', 'Nairobi', '2024-03-22', 1),
(21, 'Stephen Mutua', 'stephen.mutua@example.com', '0702386532', 'Nairobi', '2024-07-20', 1),
(22, 'Emily Njeri', 'emily.njeri@example.com', '0724896590', 'Nairobi', '2024-02-03', 1),
(23, 'Victor Karanja', 'victor.karanja@example.com', '0725123987', 'Nairobi', '2024-10-22', 1),
(24, 'Sophia Wanjiku', 'sophia.wanjiku@example.com', '0712268906', 'Nairobi', '2024-10-04', 1),
(25, 'Samuel Otieno', 'samuel.otieno@example.com', '0727980674', 'Mombasa', '2024-05-13', 2),
(26, 'Patricia Achieng', 'patricia.achieng@example.com', '0712889564', 'Mombasa', '2024-07-23', 2),
(27, 'Robert Ouma', 'robert.ouma@example.com', '0702967543', 'Mombasa', '2024-09-10', 2),
(28, 'Cynthia Wambui', 'cynthia.wambui@example.com', '0730984087', 'Mombasa', '2024-10-17', 2),
(29, 'Martin Oduor', 'martin.oduor@example.com', '0712317865', 'Kisumu', '2024-11-20', 4),
(30, 'Caroline Chebet', 'caroline.chebet@example.com', '0732946045', 'Kisumu', '2024-01-18', 4),
(31, 'Alex Okello', 'alex.okello@example.com', '0733870457', 'Kisumu', '2024-08-01', 4),
(32, 'Hannah Cherono', 'hannah.cherono@example.com', '0712345690', 'Nanyuki', '2024-10-07', 3),
(33, 'Dennis Kiptoo', 'dennis.kiptoo@example.com', '0713589567', 'Nanyuki', '2024-02-02', 3),
(34, 'Grace Wanjiru', 'grace.wanjiru@example.com', '0703697654', 'Nairobi', '2024-02-22', 1),
(35, 'Jacob Mwangi', 'jacob.mwangi@example.com', '0717951236', 'Nairobi', '2024-06-13', 1),
(36, 'Lucy Atieno', 'lucy.atieno@example.com', '0789067865', 'Nairobi', '2024-10-27', 1),
(37, 'Chris Kimani', 'chris.kimani@example.com', '0712000039', 'Nairobi', '2024-10-03', 1),
(38, 'Stella Nduta', 'stella.nduta@example.com', '0740985357', 'Nairobi', '2024-04-22', 1),
(59, 'Brenda Atieno', 'brenda.atieno@example.com', '0713495600', 'Nairobi', '2024-04-11', 1),
(60, 'Felix Kinyanjui', 'felix.kinyanjui@example.com', '0713895601', 'Nairobi', '2024-06-17', 1),
(61, 'Christine Nyawira', 'christine.nyawira@example.com', '0713895602', 'Nairobi', '2024-06-21', 1),
(62, 'Martin Githinji', 'martin.githinji@example.com', '0713895603', 'Mombasa', '2024-12-23', 2),
(63, 'Dorothy Chepkemoi', 'dorothy.chepkemoi@example.com', '0713895604', 'Mombasa', '2024-06-21', 2),
(64, 'Allan Ouma', 'allan.ouma@example.com', '0713895605', 'Kisumu', '2024-06-04', 4),
(65, 'Caroline Obare', 'caroline.obare@example.com', '0713895606', 'Kisumu', '2024-09-15', 4),
(66, 'Sharon Kibet', 'sharon.kibet@example.com', '0713895607', 'Nanyuki', '2024-04-04', 3),
(67, 'George Muthoni', 'george.muthoni@example.com', '0713895608', 'Nanyuki', '2024-03-03', 3),
(68, 'Edith Wairimu', 'edith.wairimu@example.com', '0713895609', 'Nairobi', '2024-01-30', 1),
(69, 'Clifford Mwenda', 'clifford.mwenda@example.com', '0713895610', 'Nairobi', '2024-11-23', 1),
(70, 'Phoebe Ngina', 'phoebe.ngina@example.com', '0713895611', 'Mombasa', '2024-03-25', 2),
(71, 'Harrison Kimutai', 'harrison.kimutai@example.com', '0713895612', 'Mombasa', '2024-06-21', 2),
(72, 'Tabitha Nyongesa', 'tabitha.nyongesa@example.com', '0713895613', 'Kisumu', '2024-08-31', 4),
(73, 'Simon Kipkirui', 'simon.kipkirui@example.com', '0713895614', 'Nanyuki', '2024-11-29', 3),
(74, 'Ann Wanjiru', 'ann.wanjiru@example.com', '0710011221', 'Nairobi', '2024-07-24', 1),
(75, 'Victor Njuguna', 'victor.njuguna@example.com', '0723344556', 'Nairobi', '2024-01-26', 1),
(76, 'Susan Wairimu', 'susan.wairimu@example.com', '0714455667', 'Nairobi', '2024-08-30', 1),
(77, 'Joseph Kamau', 'joseph.kamau@example.com', '0715566778', 'Nairobi', '2024-02-10', 1),
(78, 'Ruth Nyambura', 'ruth.nyambura@example.com', '0726677889', 'Nairobi', '2024-07-24', 1),
(79, 'Elijah Maina', 'elijah.maina@example.com', '0717788990', 'Nairobi', '2024-06-22', 1),
(80, 'Beatrice Muthoni', 'beatrice.muthoni@example.com', '0728899001', 'Nairobi', '2024-09-09', 1),
(81, 'Isaac Mwangi', 'isaac.mwangi@example.com', '0739900112', 'Nairobi', '2024-01-11', 1),
(82, 'Stella Atieno', 'stella.atieno@example.com', '0711122334', 'Nairobi', '2024-01-25', 1),
(83, 'John Njoroge', 'john.njoroge@example.com', '0722233445', 'Nairobi', '2024-04-03', 1),
(84, 'Catherine Otieno', 'catherine.otieno@example.com', '0713344556', 'Nairobi', '2024-01-27', 1),
(85, 'Paul Mwangi', 'paul.mwangi@example.com', '0714455667', 'Nairobi', '2024-08-07', 1),
(86, 'Lucy Wanjiku', 'lucy.wanjiku@example.com', '0725566778', 'Nairobi', '2024-10-12', 1),
(87, 'Brian Kiplagat', 'brian.kiplagat@example.com', '0736677889', 'Nairobi', '2024-02-07', 1),
(88, 'Faith Mureithi', 'faith.mureithi@example.com', '0717788990', 'Nairobi', '2024-03-04', 1),
(89, 'James Ngugi', 'james.ngugi@example.com', '0718899001', 'Nairobi', '2024-07-21', 1),
(90, 'Sarah Wambui', 'sarah.wambui@example.com', '0729900112', 'Nairobi', '2024-04-03', 1),
(91, 'Kelvin Otieno', 'kelvin.otieno@example.com', '0731122334', 'Nairobi', '2024-08-10', 1),
(92, 'Alice Karanja', 'alice.karanja@example.com', '0712233445', 'Nairobi', '2024-04-10', 1),
(93, 'Victor Gikonyo', 'victor.gikonyo@example.com', '0723344556', 'Nairobi', '2024-07-21', 1),
(94, 'Dennis Obiero', 'dennis.obiero@example.com', '0714455667', 'Mombasa', '2024-12-08', 2),
(95, 'Caroline Nyaga', 'caroline.nyaga@example.com', '0725566778', 'Mombasa', '2024-01-11', 2),
(96, 'Samuel Kiptoo', 'samuel.kiptoo@example.com', '0736677889', 'Mombasa', '2024-04-29', 2),
(97, 'Linda Njeri', 'linda.njeri@example.com', '0717788990', 'Mombasa', '2024-07-22', 2),
(98, 'Kennedy Mutua', 'kennedy.mutua@example.com', '0718899001', 'Mombasa', '2024-10-17', 2),
(99, 'Grace Ndegwa', 'grace.ndegwa@example.com', '0729900112', 'Mombasa', '2024-04-21', 2),
(100, 'Peter Omondi', 'peter.omondi@example.com', '0731122334', 'Mombasa', '2024-02-19', 2),
(101, 'Sylvia Wambua', 'sylvia.wambua@example.com', '0712233445', 'Mombasa', '2024-10-07', 2),
(102, 'Josephine Achieng', 'josephine.achieng@example.com', '0723344556', 'Mombasa', '2024-06-04', 2),
(103, 'Elias Kiplangat', 'elias.kiplangat@example.com', '0714455667', 'Mombasa', '2024-10-30', 2),
(104, 'Lucy Anyango', 'lucy.anyango@example.com', '0725566778', 'Mombasa', '2024-11-14', 2),
(105, 'Patrick Kamau', 'patrick.kamau@example.com', '0736677889', 'Mombasa', '2024-11-12', 2),
(106, 'Fiona Nyongesa', 'fiona.nyongesa@example.com', '0717788990', 'Kisumu', '2024-09-15', 4),
(107, 'Collins Odhiambo', 'collins.odhiambo@example.com', '0718899001', 'Kisumu', '2024-12-11', 4),
(108, 'Sharon Achieng', 'sharon.achieng@example.com', '0729900112', 'Kisumu', '2024-08-08', 4),
(109, 'Lawrence Oloo', 'lawrence.oloo@example.com', '0731122334', 'Kisumu', '2024-03-06', 4),
(110, 'Elizabeth Atieno', 'elizabeth.atieno@example.com', '0712233445', 'Kisumu', '2024-02-01', 4),
(111, 'Victor Otieno', 'victor.otieno@example.com', '0723344556', 'Kisumu', '2024-11-24', 4),
(112, 'Joyce Owino', 'joyce.owino@example.com', '0714455667', 'Kisumu', '2024-03-25', 4),
(113, 'Tom Were', 'tom.were@example.com', '0725566778', 'Kisumu', '2024-06-15', 4),
(114, 'Cynthia Owino', 'cynthia.owino@example.com', '0736677889', 'Kisumu', '2024-07-31', 4),
(115, 'Henry Otieno', 'henry.otieno@example.com', '0717788990', 'Kisumu', '2024-07-19', 4),
(116, 'Nancy Wairimu', 'nancy.wairimu@example.com', '0718899001', 'Nanyuki', '2024-12-27', 3),
(117, 'Charles Kiplagat', 'charles.kiplagat@example.com', '0729900112', 'Nanyuki', '2024-04-21', 3),
(118, 'Monica Chebet', 'monica.chebet@example.com', '0731122334', 'Nanyuki', '2024-07-22', 3),
(119, 'Hannah Kiptoo', 'hannah.kiptoo@example.com', '0712233445', 'Nanyuki', '2024-11-11', 3),
(120, 'Daniel Kibet', 'daniel.kibet@example.com', '0723344556', 'Nanyuki', '2024-08-22', 3);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Id` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Amount` decimal(15,2) NOT NULL,
  `ReferenceNumber` varchar(255) NOT NULL,
  `Date` datetime NOT NULL,
  `Status` varchar(50) NOT NULL,
  `AccountID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Id`, `Type`, `Amount`, `ReferenceNumber`, `Date`, `Status`, `AccountID`) VALUES
(2, 'Transfer', 558.00, 'REF780092', '2025-01-09 13:13:46', 'Completed', 1),
(3, 'Deposit', 200.00, 'REF479162', '2025-01-09 13:21:58', 'Completed', 5),
(5, 'Deposit', 100.00, 'REF194015', '2025-01-09 13:30:37', 'Pending', 10),
(6, 'Deposit', 100.00, 'REF565928', '2025-01-09 13:31:28', 'Completed', 10),
(7, 'Deposit', 200.00, 'REF400514', '2025-01-09 13:36:01', 'Completed', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Email_address` (`Email_address`),
  ADD KEY `Branch_id` (`Branch_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `AccountID` (`AccountID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`Id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Branch_id`) REFERENCES `branch` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`AccountID`) REFERENCES `accounts` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
