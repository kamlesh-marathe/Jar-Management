-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2017 at 08:42 AM
-- Server version: 5.5.54-38.6-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vijaynee_jardemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `Acess_Control`
--

CREATE TABLE IF NOT EXISTS `Acess_Control` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Emp_Id` int(11) NOT NULL,
  `Sub_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2782 ;

--
-- Dumping data for table `Acess_Control`
--

INSERT INTO `Acess_Control` (`Id`, `Emp_Id`, `Sub_Id`) VALUES
(2727, 12, 7),
(2726, 12, 6),
(2725, 12, 5),
(2724, 12, 4),
(2723, 12, 3),
(2722, 12, 2),
(2721, 12, 1),
(2720, 1, 54),
(2719, 1, 52),
(2718, 1, 50),
(2717, 1, 49),
(2716, 1, 48),
(2715, 1, 47),
(2714, 1, 59),
(2713, 1, 46),
(2712, 1, 45),
(2711, 1, 44),
(2710, 1, 43),
(2709, 1, 42),
(2708, 1, 41),
(2707, 1, 40),
(2706, 1, 53),
(2705, 1, 51),
(2704, 1, 39),
(2703, 1, 38),
(2702, 1, 37),
(2701, 1, 36),
(2700, 1, 35),
(2699, 1, 34),
(2698, 1, 33),
(2697, 1, 32),
(2696, 1, 27),
(2695, 1, 61),
(2694, 1, 60),
(2693, 1, 57),
(2692, 1, 56),
(2691, 1, 55),
(2690, 1, 31),
(39, 25, 1),
(40, 25, 2),
(41, 25, 3),
(42, 25, 4),
(43, 25, 5),
(44, 25, 6),
(45, 25, 7),
(46, 25, 8),
(47, 25, 9),
(48, 25, 10),
(49, 25, 11),
(50, 25, 12),
(51, 25, 13),
(52, 25, 14),
(53, 25, 15),
(54, 25, 16),
(55, 25, 17),
(56, 25, 18),
(57, 25, 19),
(58, 25, 20),
(59, 25, 22),
(60, 25, 23),
(61, 25, 24),
(62, 25, 25),
(63, 25, 26),
(64, 25, 27),
(65, 25, 28),
(66, 25, 29),
(67, 25, 30),
(68, 25, 31),
(2689, 1, 30),
(2688, 1, 58),
(2687, 1, 29),
(2686, 1, 28),
(2685, 1, 26),
(2684, 1, 25),
(2683, 1, 24),
(2682, 1, 62),
(2681, 1, 23),
(2680, 1, 22),
(2679, 1, 20),
(2666, 1, 7),
(2665, 1, 6),
(2664, 1, 5),
(2663, 1, 4),
(2662, 1, 3),
(2661, 1, 2),
(2660, 1, 1),
(319, 23, 7),
(320, 23, 8),
(321, 23, 9),
(322, 23, 10),
(323, 23, 11),
(324, 23, 12),
(325, 23, 13),
(326, 23, 14),
(327, 23, 15),
(328, 23, 16),
(329, 23, 17),
(330, 23, 18),
(331, 23, 19),
(332, 23, 20),
(333, 23, 22),
(334, 23, 23),
(335, 23, 24),
(336, 23, 25),
(337, 23, 26),
(338, 23, 27),
(339, 23, 28),
(340, 23, 29),
(341, 23, 30),
(342, 23, 31),
(343, 23, 32),
(344, 23, 33),
(345, 23, 34),
(346, 23, 35),
(347, 23, 36),
(348, 23, 37),
(349, 23, 38),
(350, 23, 39),
(351, 23, 44),
(352, 23, 45),
(353, 23, 46),
(354, 23, 47),
(355, 23, 48),
(356, 23, 49),
(357, 23, 50),
(2678, 1, 19),
(2677, 1, 18),
(2676, 1, 17),
(2675, 1, 16),
(2674, 1, 15),
(2673, 1, 14),
(2672, 1, 13),
(2671, 1, 12),
(2670, 1, 11),
(2669, 1, 10),
(850, 39, 15),
(851, 39, 16),
(852, 39, 17),
(853, 39, 18),
(854, 39, 19),
(855, 39, 20),
(856, 39, 22),
(857, 39, 23),
(858, 39, 24),
(859, 39, 25),
(860, 39, 26),
(861, 39, 28),
(862, 39, 29),
(863, 39, 58),
(864, 39, 30),
(865, 39, 31),
(866, 39, 55),
(867, 39, 56),
(868, 39, 57),
(869, 39, 27),
(870, 39, 32),
(871, 39, 33),
(872, 39, 34),
(873, 39, 35),
(874, 39, 36),
(875, 39, 37),
(876, 39, 38),
(877, 39, 39),
(878, 39, 51),
(879, 39, 53),
(2668, 1, 9),
(2530, 40, 52),
(2529, 40, 50),
(2528, 40, 49),
(2527, 40, 48),
(2526, 40, 47),
(2525, 40, 59),
(2524, 40, 46),
(2523, 40, 45),
(2522, 40, 44),
(2521, 40, 43),
(2520, 40, 42),
(2519, 40, 41),
(2518, 40, 40),
(2517, 40, 53),
(2516, 40, 51),
(2515, 40, 39),
(2514, 40, 38),
(2513, 40, 37),
(2512, 40, 36),
(2511, 40, 35),
(2510, 40, 34),
(2509, 40, 33),
(2508, 40, 32),
(2507, 40, 27),
(2506, 40, 61),
(2505, 40, 60),
(2504, 40, 57),
(2503, 40, 56),
(2502, 40, 55),
(2501, 40, 31),
(2500, 40, 30),
(2499, 40, 58),
(2498, 40, 29),
(2497, 40, 28),
(2496, 40, 26),
(2495, 40, 25),
(2494, 40, 24),
(2493, 40, 62),
(2492, 40, 23),
(2491, 40, 22),
(2490, 40, 20),
(2489, 40, 19),
(2488, 40, 18),
(2487, 40, 17),
(2486, 40, 16),
(2485, 40, 15),
(2484, 40, 14),
(2483, 40, 13),
(2482, 40, 12),
(2481, 40, 11),
(2480, 40, 10),
(2479, 40, 9),
(2478, 40, 8),
(2477, 40, 7),
(2476, 40, 6),
(2475, 40, 5),
(2474, 40, 4),
(2473, 40, 3),
(2472, 40, 2),
(2471, 40, 1),
(2537, 27, 43),
(2536, 27, 42),
(2535, 27, 41),
(2534, 27, 40),
(2533, 27, 2),
(2532, 27, 1),
(2531, 40, 54),
(2667, 1, 8),
(2538, 42, 1),
(2539, 42, 2),
(2540, 42, 3),
(2541, 42, 4),
(2542, 42, 5),
(2543, 42, 6),
(2544, 42, 7),
(2545, 42, 8),
(2546, 42, 9),
(2547, 42, 10),
(2548, 42, 11),
(2549, 42, 12),
(2550, 42, 13),
(2551, 42, 14),
(2552, 42, 15),
(2553, 42, 16),
(2554, 42, 17),
(2555, 42, 18),
(2556, 42, 19),
(2557, 42, 20),
(2558, 42, 22),
(2559, 42, 23),
(2560, 42, 62),
(2561, 42, 24),
(2562, 42, 25),
(2563, 42, 26),
(2564, 42, 28),
(2565, 42, 29),
(2566, 42, 58),
(2567, 42, 30),
(2568, 42, 31),
(2569, 42, 55),
(2570, 42, 56),
(2571, 42, 57),
(2572, 42, 60),
(2573, 42, 61),
(2574, 42, 27),
(2575, 42, 32),
(2576, 42, 33),
(2577, 42, 34),
(2578, 42, 35),
(2579, 42, 36),
(2580, 42, 37),
(2581, 42, 38),
(2582, 42, 39),
(2583, 42, 51),
(2584, 42, 53),
(2585, 42, 40),
(2586, 42, 41),
(2587, 42, 42),
(2588, 42, 43),
(2589, 42, 44),
(2590, 42, 45),
(2591, 42, 46),
(2592, 42, 59),
(2593, 42, 47),
(2594, 42, 48),
(2595, 42, 49),
(2596, 42, 50),
(2597, 42, 52),
(2598, 42, 54),
(2599, 29, 1),
(2600, 29, 2),
(2601, 29, 3),
(2602, 29, 4),
(2603, 29, 5),
(2604, 29, 6),
(2605, 29, 7),
(2606, 29, 8),
(2607, 29, 9),
(2608, 29, 10),
(2609, 29, 11),
(2610, 29, 12),
(2611, 29, 13),
(2612, 29, 14),
(2613, 29, 15),
(2614, 29, 16),
(2615, 29, 17),
(2616, 29, 18),
(2617, 29, 19),
(2618, 29, 20),
(2619, 29, 22),
(2620, 29, 23),
(2621, 29, 62),
(2622, 29, 24),
(2623, 29, 25),
(2624, 29, 26),
(2625, 29, 28),
(2626, 29, 29),
(2627, 29, 58),
(2628, 29, 30),
(2629, 29, 31),
(2630, 29, 55),
(2631, 29, 56),
(2632, 29, 57),
(2633, 29, 60),
(2634, 29, 61),
(2635, 29, 27),
(2636, 29, 32),
(2637, 29, 33),
(2638, 29, 34),
(2639, 29, 35),
(2640, 29, 36),
(2641, 29, 37),
(2642, 29, 38),
(2643, 29, 39),
(2644, 29, 51),
(2645, 29, 53),
(2646, 29, 40),
(2647, 29, 41),
(2648, 29, 42),
(2649, 29, 43),
(2650, 29, 44),
(2651, 29, 45),
(2652, 29, 46),
(2653, 29, 59),
(2654, 29, 47),
(2655, 29, 48),
(2656, 29, 49),
(2657, 29, 50),
(2658, 29, 52),
(2659, 29, 54),
(2728, 12, 8),
(2729, 12, 9),
(2730, 12, 10),
(2731, 12, 11),
(2732, 12, 12),
(2733, 12, 13),
(2734, 12, 14),
(2735, 12, 15),
(2736, 12, 16),
(2737, 12, 17),
(2738, 12, 18),
(2739, 12, 19),
(2740, 12, 20),
(2741, 12, 22),
(2742, 12, 23),
(2743, 12, 62),
(2744, 12, 24),
(2745, 12, 25),
(2746, 12, 26),
(2747, 12, 28),
(2748, 12, 29),
(2749, 12, 58),
(2750, 12, 30),
(2751, 12, 31),
(2752, 12, 55),
(2753, 12, 56),
(2754, 12, 57),
(2755, 12, 60),
(2756, 12, 61),
(2757, 12, 27),
(2758, 12, 32),
(2759, 12, 33),
(2760, 12, 34),
(2761, 12, 35),
(2762, 12, 36),
(2763, 12, 37),
(2764, 12, 38),
(2765, 12, 39),
(2766, 12, 51),
(2767, 12, 53),
(2768, 12, 40),
(2769, 12, 41),
(2770, 12, 42),
(2771, 12, 43),
(2772, 12, 44),
(2773, 12, 45),
(2774, 12, 46),
(2775, 12, 59),
(2776, 12, 47),
(2777, 12, 48),
(2778, 12, 49),
(2779, 12, 50),
(2780, 12, 52),
(2781, 12, 54);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `custId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `chequeentry`
--

CREATE TABLE IF NOT EXISTS `chequeentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chequefor` text NOT NULL,
  `custid` text NOT NULL,
  `distid` text NOT NULL,
  `vendorid` text NOT NULL,
  `bankname` text NOT NULL,
  `chequeno` text NOT NULL,
  `amount` text NOT NULL,
  `depositeddate` date NOT NULL,
  `depositedstatus` text NOT NULL,
  `clearence` text NOT NULL,
  `bcharge` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CustDet`
--

CREATE TABLE IF NOT EXISTS `CustDet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cutname` text NOT NULL,
  `mobNo` text NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CustOrder`
--

CREATE TABLE IF NOT EXISTS `CustOrder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CustId` int(11) NOT NULL,
  `NoOfJarQuntity` int(11) NOT NULL,
  `CDate` datetime NOT NULL,
  `Days` text NOT NULL,
  `RatePerJar` int(11) NOT NULL,
  `Dispensor` text NOT NULL,
  `DispensorRate` double NOT NULL,
  `DispensorStDate` datetime NOT NULL,
  `DispensorEndDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CustPayForInd`
--

CREATE TABLE IF NOT EXISTS `CustPayForInd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CustId` int(11) NOT NULL,
  `date11` date NOT NULL,
  `TotAmt` int(11) NOT NULL,
  `PaidAmt` int(11) NOT NULL,
  `Bal` int(11) NOT NULL,
  `BankName` text NOT NULL,
  `CheqNo` text NOT NULL,
  `checkdate` date NOT NULL,
  `remark` text NOT NULL,
  `challanno` int(11) NOT NULL,
  `paymentmode` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CustPayment`
--

CREATE TABLE IF NOT EXISTS `CustPayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CustId` int(11) NOT NULL,
  `Pdate` date NOT NULL,
  `EndDate` date NOT NULL,
  `PBLtr1Q` int(11) NOT NULL,
  `PBLtr1R` int(11) NOT NULL,
  `PBLtr1A` int(11) NOT NULL,
  `PBLtr2Q` int(11) NOT NULL,
  `PBLtr2R` int(11) NOT NULL,
  `PBLtr2A` int(11) NOT NULL,
  `Jar20Q` int(11) NOT NULL,
  `Jar20R` int(11) NOT NULL,
  `Jar20A` int(11) NOT NULL,
  `DispRate` int(11) NOT NULL,
  `DispAmt` int(11) NOT NULL,
  `tot` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

-- --------------------------------------------------------

--
-- Table structure for table `CustPaymentManual`
--

CREATE TABLE IF NOT EXISTS `CustPaymentManual` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `Cust_Name` text NOT NULL,
  `Invoice_No` text NOT NULL,
  `St_date` date NOT NULL,
  `end_date` date NOT NULL,
  `5ltr_qty` int(11) NOT NULL,
  `5ltr_rate` int(11) NOT NULL,
  `5ltr_amt` int(11) NOT NULL,
  `20ltr_qty` int(11) NOT NULL,
  `20ltr_rate` int(11) NOT NULL,
  `20ltr_amt` int(11) NOT NULL,
  `vatper` int(11) NOT NULL,
  `vatamt` int(11) NOT NULL,
  `paid_amt` int(11) NOT NULL,
  `bal_amt` int(11) NOT NULL,
  `total_amt` int(11) NOT NULL,
  `paydate` date NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CustReg`
--

CREATE TABLE IF NOT EXISTS `CustReg` (
  `CustID` int(11) NOT NULL,
  `ComName` text NOT NULL,
  `CustName` text NOT NULL,
  `Address` text NOT NULL,
  `email` text,
  `phone` text,
  `mobile` text,
  `date` datetime NOT NULL,
  `RouteId` int(11) DEFAULT NULL,
  `CustTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CustReg`
--

INSERT INTO `CustReg` (`CustID`, `ComName`, `CustName`, `Address`, `email`, `phone`, `mobile`, `date`, `RouteId`, `CustTypeId`) VALUES
(1, 'Corporation Bank', 'Security', 'Chakan \r\n\r\nShikrapur Road', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(2, 'V.P.INDUSTRIES', 'Security', 'Mahalunge', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(3, 'TCI XPS Pvt Ltd', 'Security', 'Mahalunge', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(4, 'Central Bank', 'Security', 'Kohinoor Centar Chakan', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(5, 'Axxaya Alloys Pvt Ltd', 'Security', 'Kharabwadi', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(6, 'Motion \r\n\r\nChips', 'Motion Chips', 'Chakan', '', '', '0000000000', '2016-04-01 00:00:00', 4, 2),
(7, 'Sanika engg. pvt. ltd.', 'Security', 'Kharabwadi', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(8, 'FIbox  India Pvt. Ltd.', 'Security', 'Mahalunge', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(9, 'Suhas Kedari', 'Suhas', 'Chakan', '', '', '0000000000', '2016-04-01 00:00:00', 4, 2),
(10, 'Shree Maruti Bildcon', 'Kalp Recidency', 'Chakan Shikrapur Road', '', '', '0000000000', '2016-04-01 00:00:00', 4, 2),
(11, 'Emalubes Pvt. Ltd.', 'A-kendra', 'Aalandi fata', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(12, 'A-kendra', 'Security', 'Aalandi fata', '', '', '0000000000', '2016-04-01 00:00:00', 3, 2),
(13, 'Suresh', 'Security', 'Aalandi fata', '', '', '0000000000', '2016-04-01 00:00:00', 3, 2),
(14, 'GSD Lab', 'MAYUR', 'Mahalunge', '', '', '8600006507', '2016-04-01 00:00:00', 4, 1),
(15, 'S P packeging', 'Shinde', 'Kharabwadi', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(16, 'Aarya Placement Office', 'Security', 'Chakan', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(17, 'Code Engg. Pvt. Ltd.', 'Security', 'Aalandi fata', '', '', '0000000000', '2016-04-01 00:00:00', 2, 1),
(18, 'Om Art Engg.', 'Security', 'Mahalunge', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(19, 'Istorned \r\n\r\nCorporation', 'Security', 'Mahalunge', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(20, 'Quadratech Autocomp Pvt. Ltd.', 'Security', 'Wagjainagar', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(21, 'Quadratech Autocomp Pvt. Ltd. 20', 'Security', 'Wagjainagar', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(22, 'Impression Automotive Pvt. Ltd.', 'Security', 'Wagjainagar', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(23, 'FS Compressor Pvt.Ltd.', 'Security', 'Wagjainagar', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(24, 'Rahul Pawar', 'Rahul', 'Wagjainagar (Birdavadi)', '', '', '0000000000', '2016-04-01 00:00:00', 4, 2),
(25, 'TN Packing Pvt. Ltd.', 'Security', 'Mahalunge', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(26, 'Pramila Auto', 'Security', 'Shikrapur road', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(27, 'MJ Enterprises', 'Security', 'Mahalunge', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(28, 'Dewas', 'Security', 'Mahalunge', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(29, 'Dhoot Builders', 'Security', 'Aaladi fata', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(30, 'Bhagini Nivedita Bank', 'Security', 'Chakan', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(31, 'JSR Auto. Pvt. Ltd.', 'Security', 'Mahalunge', '', '', '0000000000', '2016-04-01 00:00:00', 4, 1),
(32, 'Royal Electronics', 'Royal', 'Pimpri-CHinchwad', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(33, 'Kohinoor Industries', 'Security', 'Chinchwad', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(34, 'Versatile Option & Solution Pvt. Ltd.', 'Security', 'Chinchwad', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(35, 'Olive Industries', 'Security', 'Chinchwad', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(36, 'Prerna Engg. Pvt. Ltd.', 'Security', 'Chinchwad', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(37, 'Quality Heat Treaters & Technologics Pvt. Ltd.', 'Security', 'Chinchwad', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(38, 'Shivaji Tecnology', 'Security', 'Chinchwad', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(39, 'Group Jyotirling', 'Security', 'Nigoje', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(40, 'Yogesh Wakchoure', 'Security', 'Chinchwad', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(41, 'Axis Bank', 'Security', 'Tharmax Chowk', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(42, 'M-tech', 'Security', 'Aalandi fata', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(44, 'B (20)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 3, 2),
(45, 'C (22)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 2, 2),
(46, 'D (25)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 2, 2),
(47, 'E (27)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 2, 2),
(48, 'F (30)', 'Company', 'All', '', '', '0000000000', '2016-06-24 00:00:00', 2, 2),
(49, 'G (35)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 2, 2),
(50, 'H (38)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 2, 2),
(51, 'I (40)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 2, 2),
(52, 'J (45)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 2, 2),
(53, 'K (100)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 2, 2),
(54, 'A(15)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 1, 2),
(55, 'B(20)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 1, 2),
(56, 'C(22)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 1, 2),
(57, 'D(25)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 1, 2),
(58, 'E(27)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 1, 2),
(59, 'F(30)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 1, 2),
(60, 'G(35)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 1, 2),
(61, 'I(40)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 1, 2),
(62, '(15)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 4, 2),
(63, '(20)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 5, 2),
(64, '(25)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 5, 2),
(65, '(30)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 5, 2),
(66, '(35)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 5, 2),
(67, '(38)', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 4, 2),
(68, '25', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 3, 2),
(69, '30', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 3, 2),
(70, '35', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 3, 2),
(71, '40', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 3, 2),
(72, '45', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 3, 2),
(73, '20', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 4, 2),
(74, '.25', 'Company', 'All', '', '', '0000000000', '2016-06-25 00:00:00', 4, 2),
(75, '.30', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 4, 2),
(76, '.35', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 4, 2),
(77, '.15', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 4, 2),
(78, 'K100', 'Company', 'All', '', '', '0000000000', '2016-04-01 00:00:00', 5, 2),
(79, 'OSL \r\n\r\nLogistics Pvt. Ltd.', 'Security', 'Chinchwad', '', '', '0000000000', '2016-04-01 00:00:00', 3, 1),
(80, 'SR Engg. Pvt. Ltd.', 'Security', 'Mahalunge', '', '', '0000000000', '2016-06-01 00:00:00', 4, 1),
(81, 'Jadhav Transport', 'Security', 'Chinchwad', '', '', '0000000000', '2016-04-01 00:00:00', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `CustRegForAqua`
--

CREATE TABLE IF NOT EXISTS `CustRegForAqua` (
  `CustID` int(11) NOT NULL AUTO_INCREMENT,
  `ComName` text NOT NULL,
  `CustName` text NOT NULL,
  `Address` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `mobile` text NOT NULL,
  `date` date NOT NULL,
  `CustTypeId` int(11) NOT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CustRegForJarFilling`
--

CREATE TABLE IF NOT EXISTS `CustRegForJarFilling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CustName` text NOT NULL,
  `ConPer` text NOT NULL,
  `MobNo` text NOT NULL,
  `PhNo` text NOT NULL,
  `Email` text NOT NULL,
  `Address` text NOT NULL,
  `date` date NOT NULL,
  `rate` float NOT NULL,
  `area` text NOT NULL,
  `RateOfBottle` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `CustRegForJarFilling`
--

INSERT INTO `CustRegForJarFilling` (`id`, `CustName`, `ConPer`, `MobNo`, `PhNo`, `Email`, `Address`, `date`, `rate`, `area`, `RateOfBottle`) VALUES
(1, 'Morya Enterprises', 'Vishal Ghodke', '9665189395', '', '', 'Rase, Chakan', '2016-04-01', 15, 'Chakan', 0),
(2, 'Aaradhya Enterprises', 'Bhausaheb Kutwal', '9689499947', '', '', 'Chakan', '2016-04-01', 15, 'Chakan', 0),
(3, 'Shivtej Group', 'Ganesh Dhanwate', '9527411717', '', '', 'Kadachiwadi', '2016-04-01', 15, 'Kadachiwadi', 0),
(4, 'O.K Distributors', 'Omkar Khandebharad', '9139430453', '', '', 'Kadachiwadi', '2016-04-01', 15, 'Kadachiwadi', 0),
(5, 'Sandeep Agencies', 'Sandeep', '7507291598', '', '', 'Hadapsar, Pune', '2016-04-01', 0, 'Pune', 100),
(6, 'Shyam Daundkar', 'owner', '0000000000', '', '', 'Kadachiwadi', '2016-04-01', 15, 'Kadachiwadi', 0),
(7, 'Vikrant Chaudhari', 'Vicky', '9730487777', '', '', 'KADACHIWADI', '2016-04-01', 15, 'Kadachiwadi', 0),
(8, 'Dinesh Yadav', 'DINESH', '9552812347', '', '', 'CHAKAN BALAJINAGAR', '2016-04-01', 15, 'Chakan', 0),
(9, 'Nitin Munde', 'NITIN', '0000000000', '', '', 'CHAKAN', '2016-04-01', 15, '', 0),
(10, 'Refilling', 'None', '0000000000', '', '', 'All', '2016-04-01', 15, 'All', 100);

-- --------------------------------------------------------

--
-- Table structure for table `CustType`
--

CREATE TABLE IF NOT EXISTS `CustType` (
  `custId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` text NOT NULL,
  PRIMARY KEY (`custId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `CustType`
--

INSERT INTO `CustType` (`custId`, `typeName`) VALUES
(1, 'Corporate'),
(2, 'Local');

-- --------------------------------------------------------

--
-- Table structure for table `DefJar`
--

CREATE TABLE IF NOT EXISTS `DefJar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date1` text NOT NULL,
  `NoDefJar` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `DespRate`
--

CREATE TABLE IF NOT EXISTS `DespRate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Rdate` datetime NOT NULL,
  `Drate` int(11) NOT NULL,
  `cmpid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `DialyExp`
--

CREATE TABLE IF NOT EXISTS `DialyExp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `VehNo` text NOT NULL,
  `MeterReadExp` text NOT NULL,
  `FuelExp` int(11) NOT NULL,
  `OthExp` int(11) NOT NULL,
  `Disc` text NOT NULL,
  `DEDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dieselrate`
--

CREATE TABLE IF NOT EXISTS `dieselrate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` text NOT NULL,
  `startdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dieselrate`
--

INSERT INTO `dieselrate` (`id`, `rate`, `startdate`) VALUES
(1, '65', '2016-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `Dispensor`
--

CREATE TABLE IF NOT EXISTS `Dispensor` (
  `DId` int(11) NOT NULL AUTO_INCREMENT,
  `CompId` int(11) NOT NULL,
  `Dispid` int(11) NOT NULL,
  `AllocationType` text NOT NULL,
  `DepositAmt` int(11) NOT NULL,
  `RentAmt` int(11) NOT NULL,
  `SellAmt` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `TxDate` date NOT NULL,
  `EDate` datetime NOT NULL,
  `Dealocate` date NOT NULL,
  `DAStatus` text NOT NULL,
  PRIMARY KEY (`DId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Dispensor`
--

INSERT INTO `Dispensor` (`DId`, `CompId`, `Dispid`, `AllocationType`, `DepositAmt`, `RentAmt`, `SellAmt`, `Quantity`, `Total`, `TxDate`, `EDate`, `Dealocate`, `DAStatus`) VALUES
(1, 1, 1, 'Sell', 0, 0, 140, 1, 140, '2016-06-16', '2016-06-16 08:44:38', '0000-00-00', 'No'),
(2, 1, 1, 'Sell', 0, 0, 140, 1, 140, '2016-08-16', '2016-08-16 08:44:38', '0000-00-00', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `DispensorReg`
--

CREATE TABLE IF NOT EXISTS `DispensorReg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DispName` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `DispensorReg`
--

INSERT INTO `DispensorReg` (`id`, `DispName`) VALUES
(1, 'Manual Dispenser'),
(2, 'Electronic Hot/Cold Dispenser');

-- --------------------------------------------------------

--
-- Table structure for table `DispPaymentDetail`
--

CREATE TABLE IF NOT EXISTS `DispPaymentDetail` (
  `DispId` int(11) NOT NULL,
  `DispQty` int(11) NOT NULL,
  `DispRate` int(11) NOT NULL,
  `DispAmt` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `DispPaymentManual`
--

CREATE TABLE IF NOT EXISTS `DispPaymentManual` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `disp_id` text NOT NULL,
  `disp_qty` int(11) NOT NULL,
  `disp_rate` int(11) NOT NULL,
  `disp_amt` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `DispPaymentManual`
--

INSERT INTO `DispPaymentManual` (`Id`, `payment_id`, `disp_id`, `disp_qty`, `disp_rate`, `disp_amt`) VALUES
(1, 1, 'Matka', 10, 2, 20),
(2, 4, 'Hot', 10, 10, 100),
(3, 4, 'Matka', 5, 5, 25),
(4, 4, 'ththj', 5, 5, 25),
(5, 4, 'mineral', 3, 10, 30),
(6, 4, 'vsp', 3, 5, 15),
(7, 4, 'test1', 2, 10, 20),
(8, 6, 'Hot', 1, 10, 10),
(9, 7, 'Hot', 10, 10, 100),
(10, 8, 'Hot', 10, 10, 100),
(11, 13, 'Hot', 150, 32, 4800),
(12, 13, 'Matka', 852, 54, 46008),
(13, 13, 'ththj', 54, 56, 3024),
(14, 13, 'mineral', 120, 32, 3840),
(15, 13, 'vsp', 152, 233, 35416),
(16, 13, 'test1', 123, 12, 1476),
(17, 13, 'ABC', 145, 20, 2900);

-- --------------------------------------------------------

--
-- Table structure for table `distributorinvoice`
--

CREATE TABLE IF NOT EXISTS `distributorinvoice` (
  `invoiceid` int(11) NOT NULL AUTO_INCREMENT,
  `distributorid` int(11) NOT NULL,
  `stdate` date NOT NULL,
  `enddate` date NOT NULL,
  `labelcharges` float NOT NULL,
  `total` float NOT NULL,
  `vatpercent` float NOT NULL,
  `vatamt` float NOT NULL,
  `total_amt_inc_vat` float NOT NULL,
  `type` text NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `gendate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`invoiceid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `distributorinvoice_detail`
--

CREATE TABLE IF NOT EXISTS `distributorinvoice_detail` (
  `idd` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `fill_item` text NOT NULL,
  `quantity` float NOT NULL,
  `rate` float NOT NULL,
  `amt` float NOT NULL,
  PRIMARY KEY (`idd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `DriverReg`
--

CREATE TABLE IF NOT EXISTS `DriverReg` (
  `Name` text NOT NULL,
  `Addr` text NOT NULL,
  `MobNo` text NOT NULL,
  `mb2` text NOT NULL,
  `LicenceNo` text NOT NULL,
  `rnumber` text NOT NULL,
  `Salary` int(11) NOT NULL,
  `RegDate` date NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Emp` int(11) NOT NULL,
  `BasSal` int(11) NOT NULL,
  `HRA` int(11) NOT NULL,
  `DA` int(11) NOT NULL,
  `TA` int(11) NOT NULL,
  `MA` int(11) NOT NULL,
  `loginid` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `DriverReg`
--

INSERT INTO `DriverReg` (`Name`, `Addr`, `MobNo`, `mb2`, `LicenceNo`, `rnumber`, `Salary`, `RegDate`, `id`, `Emp`, `BasSal`, `HRA`, `DA`, `TA`, `MA`, `loginid`) VALUES
('Mayur Padwal', 'Chakan', '8600006507', '8605431103', '', '', 9000, '2016-04-01', 1, 1, 9000, 0, 0, 0, 0, '13'),
('Ketki Kulkarni', 'Gandharva Nagari Pune', '8149227579', '', '', '', 8000, '2016-04-01', 2, 2, 8000, 0, 0, 0, 0, ''),
('Ashok Umrani', 'Kadachiwadi', '0000000000', '', '', '', 8000, '2016-04-01', 3, 3, 8000, 0, 0, 0, 0, ''),
('Vinodkumar Yadav', 'Kadachiwadi', '7722049973', '', '', '', 8000, '2016-04-01', 4, 3, 8000, 0, 0, 0, 0, ''),
('Pramila Devi', 'Kadachiwadi', '0000000000', '', '', '', 7000, '2016-04-01', 5, 3, 7000, 0, 0, 0, 0, ''),
('Machindra Thite', 'Bahul', '7350030451', '', '', '', 7000, '2016-06-16', 6, 3, 7000, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeAdvance`
--

CREATE TABLE IF NOT EXISTS `EmployeeAdvance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeId` int(11) NOT NULL,
  `AdvAmt` int(11) NOT NULL,
  `Deduction` int(11) NOT NULL,
  `date` date NOT NULL,
  `remarkpay` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeSalary`
--

CREATE TABLE IF NOT EXISTS `EmployeeSalary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Empid` int(11) NOT NULL,
  `Salary` int(11) NOT NULL,
  `date` date NOT NULL,
  `BasSal` int(11) NOT NULL,
  `HRA` int(11) NOT NULL,
  `DA` int(11) NOT NULL,
  `TA` int(11) NOT NULL,
  `MA` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `EmployeeSalary`
--

INSERT INTO `EmployeeSalary` (`id`, `Empid`, `Salary`, `date`, `BasSal`, `HRA`, `DA`, `TA`, `MA`) VALUES
(1, 1, 9000, '2016-04-01', 9000, 0, 0, 0, 0),
(2, 2, 8000, '2016-04-01', 8000, 0, 0, 0, 0),
(3, 3, 8000, '2016-04-01', 8000, 0, 0, 0, 0),
(4, 4, 8000, '2016-04-01', 8000, 0, 0, 0, 0),
(5, 5, 7000, '2016-04-01', 7000, 0, 0, 0, 0),
(6, 6, 7000, '2016-06-16', 7000, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeSalaryPayments`
--

CREATE TABLE IF NOT EXISTS `EmployeeSalaryPayments` (
  `Tid` int(11) NOT NULL AUTO_INCREMENT,
  `Empid` int(11) NOT NULL,
  `salary` float NOT NULL,
  `deduction` float NOT NULL,
  `OtherDeductn` int(11) NOT NULL,
  `PayableSalary` int(11) NOT NULL,
  `AccNo` text NOT NULL,
  `Paymenttype` text NOT NULL,
  `payment_date` date NOT NULL,
  `payment_amount` int(11) NOT NULL,
  `cheque_id` int(11) NOT NULL,
  `narration` text NOT NULL,
  `BalAmt` int(11) NOT NULL,
  PRIMARY KEY (`Tid`),
  KEY `Tid` (`Tid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeSalPayment`
--

CREATE TABLE IF NOT EXISTS `EmployeeSalPayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PrevBalAmt` int(11) NOT NULL,
  `SalAssign` int(11) NOT NULL,
  `TotPaybleAmt` int(11) NOT NULL,
  `Paid` int(11) NOT NULL,
  `Balance` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Remark` text NOT NULL,
  `Employee` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeType`
--

CREATE TABLE IF NOT EXISTS `EmployeeType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `EmployeeType`
--

INSERT INTO `EmployeeType` (`id`, `Name`) VALUES
(1, 'Administration'),
(2, 'Quality Control'),
(3, 'Worker');

-- --------------------------------------------------------

--
-- Table structure for table `EstimateDet`
--

CREATE TABLE IF NOT EXISTS `EstimateDet` (
  ` EstId` int(11) NOT NULL AUTO_INCREMENT,
  `CustPayId` int(11) NOT NULL,
  `StDate` date NOT NULL,
  `EnDate` date NOT NULL,
  `RouteId` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `totbottleQ` int(11) NOT NULL,
  `EstbottleQ` int(11) NOT NULL,
  `InvbottleQ` int(11) NOT NULL,
  `totjarQ` int(11) NOT NULL,
  `EstjarQ` int(11) NOT NULL,
  `InvJarQ` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (` EstId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ExpenseDetails`
--

CREATE TABLE IF NOT EXISTS `ExpenseDetails` (
  `parent_id` int(11) DEFAULT NULL,
  `ExpenseName` tinytext,
  `Date` date DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `Disc` text NOT NULL,
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ExpenseDetails`
--

INSERT INTO `ExpenseDetails` (`parent_id`, `ExpenseName`, `Date`, `Amount`, `Disc`) VALUES
(1, 'Generator Diesel', '2016-06-16', 600, '5 ltr can x 2');

-- --------------------------------------------------------

--
-- Table structure for table `ExpenseType`
--

CREATE TABLE IF NOT EXISTS `ExpenseType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ExpenseName` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ExpenseName` (`ExpenseName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ExpenseType`
--

INSERT INTO `ExpenseType` (`id`, `ExpenseName`) VALUES
(1, 'Generator Diesel'),
(2, 'Daily Wages(Naka)');

-- --------------------------------------------------------

--
-- Table structure for table `FillJar`
--

CREATE TABLE IF NOT EXISTS `FillJar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date1` date DEFAULT NULL,
  `TotEmpJar` int(11) DEFAULT NULL,
  `SentJarForFill` int(11) DEFAULT NULL,
  `RecFromFill` int(11) DEFAULT NULL,
  `sentcompid` int(11) NOT NULL,
  `reccompid` int(11) NOT NULL,
  `RejectedJars` int(11) NOT NULL,
  `BalanceJars` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `Fuel_Refill`
--

CREATE TABLE IF NOT EXISTS `Fuel_Refill` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VEHICLE_NAME` text NOT NULL,
  `FUEL_TYPE` text NOT NULL,
  `REFILL_DATE` date NOT NULL,
  `FUEL_QUANTITY` float NOT NULL,
  `FUEL_CHARGES` float NOT NULL,
  `VEHICLE_KMS` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idd` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `GodownDet`
--

CREATE TABLE IF NOT EXISTS `GodownDet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GDate` datetime NOT NULL,
  `PurchJar` int(11) NOT NULL,
  `EmptyJar` int(11) NOT NULL,
  `FillJar` int(11) NOT NULL,
  `DistJar` int(11) NOT NULL,
  `DefJar` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `id`
--

CREATE TABLE IF NOT EXISTS `id` (
  `id` int(11) NOT NULL,
  `RawMaterialUsed` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IncomeDetails`
--

CREATE TABLE IF NOT EXISTS `IncomeDetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Remarks` text NOT NULL,
  `Date` date NOT NULL,
  `Amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `IndustryCustInvoiceDet`
--

CREATE TABLE IF NOT EXISTS `IndustryCustInvoiceDet` (
  `InvDetId` int(11) NOT NULL AUTO_INCREMENT,
  `InvId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Qty` double NOT NULL,
  `IFCQ` int(11) NOT NULL,
  `IFCR` int(11) NOT NULL,
  `EFCQ` int(11) NOT NULL,
  `EFCR` int(11) NOT NULL,
  `ISCQ` int(11) NOT NULL,
  `ISCR` int(11) NOT NULL,
  `ESCQ` int(11) NOT NULL,
  `ESCR` int(11) NOT NULL,
  `ITCQ` int(11) NOT NULL,
  `ITCR` int(11) NOT NULL,
  `ETCQ` int(11) NOT NULL,
  `ETCR` int(11) NOT NULL,
  `type` text NOT NULL,
  `InvoiceId` int(11) NOT NULL,
  PRIMARY KEY (`InvDetId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `IndustryCustomerInvoice`
--

CREATE TABLE IF NOT EXISTS `IndustryCustomerInvoice` (
  `InvId` int(11) NOT NULL AUTO_INCREMENT,
  `CustId` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Date` date NOT NULL,
  `type` text NOT NULL,
  `InvoiceId` int(11) NOT NULL,
  PRIMARY KEY (`InvId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `InvoiceDet`
--

CREATE TABLE IF NOT EXISTS `InvoiceDet` (
  `InvId` int(11) NOT NULL AUTO_INCREMENT,
  `CustPayId` int(11) NOT NULL,
  `StDate` date NOT NULL,
  `EnDate` date NOT NULL,
  `RouteId` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `totbottleQ` int(11) NOT NULL,
  `EstbottleQ` int(11) NOT NULL,
  `InvbottleQ` int(11) NOT NULL,
  `totjarQ` int(11) NOT NULL,
  `EstjarQ` int(11) NOT NULL,
  `InvJarQ` int(11) NOT NULL,
  `VatPer` float NOT NULL,
  `VatAmt` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `VatTotal` int(11) NOT NULL,
  `Type` text NOT NULL,
  `InvoiceId` int(11) NOT NULL,
  `InvoiceNo` int(11) NOT NULL,
  PRIMARY KEY (`InvId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Item_Master`
--

CREATE TABLE IF NOT EXISTS `Item_Master` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `item_name` text NOT NULL,
  `pur_price` int(11) NOT NULL,
  `mrp` int(11) NOT NULL,
  `detail` text NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Item_Master_Stock`
--

CREATE TABLE IF NOT EXISTS `Item_Master_Stock` (
  `item_id` int(20) NOT NULL,
  `stock_id` int(20) NOT NULL,
  `stock` text NOT NULL,
  `id` int(15) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jardeposit`
--

CREATE TABLE IF NOT EXISTS `jardeposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CustId` int(11) NOT NULL,
  `jdate` datetime NOT NULL,
  `njars` int(11) NOT NULL,
  `Amt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `JarDistDe`
--

CREATE TABLE IF NOT EXISTS `JarDistDe` (
  `DistId` int(11) NOT NULL AUTO_INCREMENT,
  `DistDate` datetime NOT NULL,
  `CmpId` int(11) NOT NULL,
  `BalanceJar` int(11) NOT NULL,
  `DeliveredJar` int(11) NOT NULL,
  `ReturnJar` int(11) NOT NULL,
  `NewBalJar` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  PRIMARY KEY (`DistId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `JarDistribution`
--

CREATE TABLE IF NOT EXISTS `JarDistribution` (
  `DistId` int(11) NOT NULL AUTO_INCREMENT,
  `DistDate` date NOT NULL,
  `CmpId` int(11) NOT NULL,
  `BalanceJar` int(11) NOT NULL,
  `DeliveredJar` int(11) NOT NULL,
  `ReturnJar` int(11) NOT NULL,
  `NewBalJar` int(11) NOT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`DistId`),
  KEY `DistId` (`DistId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `JarDistribution`
--

INSERT INTO `JarDistribution` (`DistId`, `DistDate`, `CmpId`, `BalanceJar`, `DeliveredJar`, `ReturnJar`, `NewBalJar`, `rate`) VALUES
(1, '2016-04-01', 12, 0, 2, 2, 0, 30),
(11, '2016-06-18', 6, 0, 1, 1, 0, 30),
(12, '2016-06-18', 5, 0, 6, 6, 0, 30),
(13, '2016-06-18', 19, 0, 0, 0, 0, 25),
(14, '2016-06-18', 19, 0, 25, 25, 0, 25),
(15, '2016-06-18', 4, 0, 3, 3, 0, 35),
(16, '2016-04-01', 21, 0, 2, 2, 0, 25),
(17, '2016-04-01', 11, 0, 3, 3, 0, 35);

-- --------------------------------------------------------

--
-- Table structure for table `JarDistribution1`
--

CREATE TABLE IF NOT EXISTS `JarDistribution1` (
  `DistId` int(11) NOT NULL AUTO_INCREMENT,
  `DistDate` datetime NOT NULL,
  `CmpId` int(11) NOT NULL,
  `BalanceJar` int(11) NOT NULL,
  `DeliveredJar` int(11) NOT NULL,
  `ReturnJar` int(11) NOT NULL,
  `NewBalJar` int(11) NOT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`DistId`),
  KEY `DistId` (`DistId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `JarDistributionnew`
--

CREATE TABLE IF NOT EXISTS `JarDistributionnew` (
  `DistId` int(11) NOT NULL AUTO_INCREMENT,
  `DistDate` datetime NOT NULL,
  `CmpId` int(11) NOT NULL,
  `BalanceJar` int(11) NOT NULL,
  `DeliveredJar` int(11) NOT NULL,
  `ReturnJar` int(11) NOT NULL,
  `NewBalJar` int(11) NOT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`DistId`),
  KEY `DistId` (`DistId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jarDistUpadate`
--

CREATE TABLE IF NOT EXISTS `jarDistUpadate` (
  `CmpId` int(11) NOT NULL,
  `DistDate` datetime NOT NULL,
  `BalanceJar` int(11) NOT NULL,
  `DeliveredJar` int(11) NOT NULL,
  `ReturnJar` int(11) NOT NULL,
  `NewBalJar` int(11) NOT NULL,
  PRIMARY KEY (`CmpId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `JarFillingDetail`
--

CREATE TABLE IF NOT EXISTS `JarFillingDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CustName` int(11) NOT NULL,
  `fitem` text NOT NULL,
  `NoOfJarsFill` int(11) NOT NULL,
  `Rate` float NOT NULL,
  `lebelcharge` text NOT NULL,
  `TotalAmt` float NOT NULL,
  `prev_Balance` float NOT NULL,
  `Balance` float NOT NULL,
  `Date` date NOT NULL,
  `TotRecvJars` int(11) NOT NULL,
  `RejectedJars` int(11) NOT NULL,
  `BalanceJars` int(11) NOT NULL,
  `paymentid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `jarfillpaymentnew`
--

CREATE TABLE IF NOT EXISTS `jarfillpaymentnew` (
  `jpid` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `custid` int(11) NOT NULL,
  `fitem` text NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `mode` text NOT NULL,
  `checknumber` text NOT NULL,
  `checkbank` text NOT NULL,
  `challannumber` text NOT NULL,
  `challandate` date NOT NULL,
  `checkdate` date NOT NULL,
  `chequeid` int(11) NOT NULL,
  `chequestatus` text NOT NULL,
  PRIMARY KEY (`jpid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `JarPurchase`
--

CREATE TABLE IF NOT EXISTS `JarPurchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SellerName` text NOT NULL,
  `RecName` text NOT NULL,
  `PDate` datetime NOT NULL,
  `NoOfJars` int(11) NOT NULL,
  `TotAmt` int(11) NOT NULL,
  `PaidAmt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `JarRate`
--

CREATE TABLE IF NOT EXISTS `JarRate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmpid` int(11) NOT NULL,
  `Rdate` date NOT NULL,
  `rate` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `JarRate`
--

INSERT INTO `JarRate` (`id`, `cmpid`, `Rdate`, `rate`) VALUES
(1, 1, '2016-04-01', 15),
(2, 2, '2016-04-01', 30),
(3, 3, '2016-04-01', 25),
(4, 4, '2016-04-01', 35),
(5, 5, '2016-04-01', 30),
(6, 6, '2016-04-01', 30),
(7, 7, '2016-04-01', 40),
(8, 8, '2016-04-01', 35),
(9, 9, '2016-04-01', 30),
(10, 10, '2016-04-01', 30),
(11, 11, '2016-04-01', 35),
(12, 12, '2016-04-01', 30),
(13, 13, '2016-04-01', 30),
(14, 14, '2016-04-01', 30),
(15, 15, '2016-04-01', 30),
(16, 16, '2016-04-01', 35),
(17, 17, '2016-04-01', 30),
(18, 18, '2016-04-01', 30),
(19, 19, '2016-04-01', 25),
(20, 20, '2016-04-01', 20),
(21, 21, '2016-04-01', 25),
(22, 22, '2016-04-01', 25),
(23, 23, '2016-04-01', 25),
(24, 24, '2016-04-01', 30),
(25, 25, '2016-04-01', 27),
(26, 26, '2016-04-01', 25),
(27, 27, '2016-04-01', 40),
(28, 28, '2016-04-01', 40),
(29, 29, '2016-04-01', 45),
(30, 30, '2016-04-01', 35),
(31, 31, '2016-04-01', 40),
(32, 32, '2016-04-01', 30),
(33, 33, '2016-04-01', 15),
(34, 34, '2016-04-01', 20),
(35, 35, '2016-04-01', 25),
(36, 36, '2016-04-01', 27),
(37, 37, '2016-04-01', 30),
(38, 38, '2016-04-01', 35);

-- --------------------------------------------------------

--
-- Table structure for table `jar_payment`
--

CREATE TABLE IF NOT EXISTS `jar_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compid` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `no_of_jar` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cheqno` int(11) NOT NULL,
  `cheqbank` text NOT NULL,
  `cheqdate` datetime NOT NULL,
  `challanno` int(11) NOT NULL,
  `challanbank` text NOT NULL,
  `challandate` datetime NOT NULL,
  `remark` text NOT NULL,
  `mode` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Login`
--

CREATE TABLE IF NOT EXISTS `Login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empid` int(11) NOT NULL,
  `username` text NOT NULL,
  `pass` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `Login`
--

INSERT INTO `Login` (`id`, `empid`, `username`, `pass`) VALUES
(1, 1, 'accounts', 'kunal1234'),
(2, 25, 'newadded', 'newadded'),
(3, 26, 'newadded2', 'newadded2'),
(4, 27, 'newadded3', 'newadded3'),
(7, 29, 'admin1', 'sssss'),
(8, 23, 'smita', 'smita'),
(10, 39, 'emp1@suyogaqua.in', '12345'),
(11, 40, 'smitavsp', 'smita'),
(12, 42, 'ganesh', 'test'),
(13, 1, 'accounts', 'kunal1234');

-- --------------------------------------------------------

--
-- Table structure for table `ltr`
--

CREATE TABLE IF NOT EXISTS `ltr` (
  `ltrId` int(11) NOT NULL AUTO_INCREMENT,
  `CmpId` int(11) NOT NULL,
  `ltrDate` date NOT NULL,
  `qty` int(11) NOT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`ltrId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `ltr`
--

INSERT INTO `ltr` (`ltrId`, `CmpId`, `ltrDate`, `qty`, `rate`) VALUES
(1, 12, '2016-04-01', 0, 0),
(2, 13, '2016-04-01', 0, 0),
(3, 35, '2016-04-01', 0, 0),
(4, 37, '2016-06-18', 0, 0),
(5, 34, '2016-04-01', 0, 0),
(6, 35, '2016-04-01', 0, 0),
(7, 37, '2016-04-01', 0, 0),
(8, 35, '2016-04-01', 0, 0),
(9, 37, '2016-04-01', 0, 0),
(10, 35, '2016-06-18', 0, 0),
(11, 6, '2016-06-18', 0, 0),
(12, 5, '2016-06-18', 0, 0),
(13, 19, '2016-06-18', 0, 0),
(14, 19, '2016-06-18', 0, 0),
(15, 4, '2016-06-18', 0, 0),
(16, 21, '2016-04-01', 0, 0),
(17, 11, '2016-04-01', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ltrRate`
--

CREATE TABLE IF NOT EXISTS `ltrRate` (
  `Lid` int(11) NOT NULL AUTO_INCREMENT,
  `Lcmpid` int(11) NOT NULL,
  `LRdate` date NOT NULL,
  `Lrate` float NOT NULL,
  PRIMARY KEY (`Lid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `ltrRate`
--

INSERT INTO `ltrRate` (`Lid`, `Lcmpid`, `LRdate`, `Lrate`) VALUES
(1, 1, '2016-04-01', 100),
(2, 2, '2016-04-01', 0),
(3, 3, '2016-04-01', 0),
(4, 4, '2016-04-01', 0),
(5, 5, '2016-04-01', 0),
(6, 6, '2016-04-01', 0),
(7, 7, '2016-04-01', 0),
(8, 8, '2016-04-01', 0),
(9, 9, '2016-04-01', 0),
(10, 10, '2016-04-01', 0),
(11, 11, '2016-04-01', 0),
(12, 12, '2016-04-01', 0),
(13, 13, '2016-04-01', 0),
(14, 14, '2016-04-01', 0),
(15, 15, '2016-04-01', 0),
(16, 16, '2016-04-01', 0),
(17, 17, '2016-04-01', 0),
(18, 18, '2016-04-01', 0),
(19, 19, '2016-04-01', 0),
(20, 20, '2016-04-01', 0),
(21, 21, '2016-04-01', 0),
(22, 22, '2016-04-01', 0),
(23, 23, '2016-04-01', 0),
(24, 24, '2016-04-01', 0),
(25, 25, '2016-04-01', 0),
(26, 26, '2016-04-01', 0),
(27, 27, '2016-04-01', 0),
(28, 28, '2016-04-01', 0),
(29, 29, '2016-04-01', 0),
(30, 30, '2016-04-01', 0),
(31, 31, '2016-04-01', 0),
(32, 32, '2016-04-01', 0),
(33, 33, '2016-04-01', 0),
(34, 34, '2016-04-01', 0),
(35, 35, '2016-04-01', 0),
(36, 36, '2016-04-01', 0),
(37, 37, '2016-04-01', 0),
(38, 38, '2016-04-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Menu`
--

CREATE TABLE IF NOT EXISTS `Menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MenuName` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `Menu`
--

INSERT INTO `Menu` (`Id`, `MenuName`) VALUES
(1, 'Registration'),
(2, 'Vendor'),
(3, 'Filling'),
(4, 'Distribution'),
(5, 'Invoice'),
(6, 'Receipt'),
(7, 'Expense'),
(8, 'Report'),
(9, 'Registration'),
(10, 'Manufacturing'),
(11, 'Sell'),
(12, 'Reports');

-- --------------------------------------------------------

--
-- Table structure for table `Merchant`
--

CREATE TABLE IF NOT EXISTS `Merchant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Merchant_Name` text NOT NULL,
  `Address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MerchantCharges`
--

CREATE TABLE IF NOT EXISTS `MerchantCharges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `Merchant_Name` tinytext,
  `Date` date DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MerchantPayment`
--

CREATE TABLE IF NOT EXISTS `MerchantPayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `Merchant_Name` tinytext,
  `Date` date DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `PreJarDistDet`
--

CREATE TABLE IF NOT EXISTS `PreJarDistDet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driverId` int(11) NOT NULL,
  `helperIds` text NOT NULL,
  `adv` double NOT NULL,
  `vehicleId` int(11) NOT NULL,
  `routeids` text NOT NULL,
  `rdate` datetime NOT NULL,
  `avg` double NOT NULL,
  `dieselrate` double NOT NULL,
  `sreading` double NOT NULL,
  `ereading` double NOT NULL,
  `totalkm` double NOT NULL,
  `totalAmt` int(11) NOT NULL,
  `filljar` double NOT NULL,
  `returnjar` double NOT NULL,
  `tempofilledreturnjars` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

CREATE TABLE IF NOT EXISTS `purchaseitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `Unit` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `purchaseitem`
--

INSERT INTO `purchaseitem` (`id`, `name`, `Unit`) VALUES
(1, '20 Ltr Jar', 'pcs'),
(2, 'Bubble Top Caps', 'per Piece'),
(3, 'Water Testing', 'Per Test'),
(4, 'Laboratory Chemicals', 'per item'),
(5, 'Stickers', 'per nos'),
(6, 'Pouch Film', 'per kg');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitemdet`
--

CREATE TABLE IF NOT EXISTS `purchaseitemdet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vname` text NOT NULL,
  `RecName` text NOT NULL,
  `Invoice_No` int(11) NOT NULL,
  `date1` date NOT NULL,
  `taxtype` text NOT NULL,
  `PO_path` text NOT NULL,
  `VatPerc` int(11) NOT NULL,
  `paymentid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `purchaseitemdet`
--

INSERT INTO `purchaseitemdet` (`id`, `vname`, `RecName`, `Invoice_No`, `date1`, `taxtype`, `PO_path`, `VatPerc`, `paymentid`) VALUES
(2, '3', 'Vinod Yadav', 17, '2016-06-17', 'vat', '', 0, 2),
(3, '8', 'ABC', 0, '2016-04-01', '', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_item_details`
--

CREATE TABLE IF NOT EXISTS `purchase_item_details` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `rate` float NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `purchase_item_details`
--

INSERT INTO `purchase_item_details` (`PID`, `purchase_id`, `item_id`, `rate`, `quantity`) VALUES
(2, 2, 1, 118, 32),
(3, 3, 1, 110, 20127);

-- --------------------------------------------------------

--
-- Table structure for table `RawMatUsedForProd`
--

CREATE TABLE IF NOT EXISTS `RawMatUsedForProd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RawMaterialUsed` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `hiddenId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE IF NOT EXISTS `receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `returndeposit`
--

CREATE TABLE IF NOT EXISTS `returndeposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CustId` int(11) NOT NULL,
  `jdate` datetime NOT NULL,
  `njars` int(11) NOT NULL,
  `Amt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Route`
--

CREATE TABLE IF NOT EXISTS `Route` (
  `RouteId` int(11) NOT NULL AUTO_INCREMENT,
  `RouteName` text NOT NULL,
  `RouteDescription` text,
  PRIMARY KEY (`RouteId`),
  KEY `RouteId` (`RouteId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Route`
--

INSERT INTO `Route` (`RouteId`, `RouteName`, `RouteDescription`) VALUES
(1, 'Alandi Phata', 'Balajinagar-Gawate Wasti- Alandi Phata-Nanekarwadi'),
(2, 'Chakan Gaothan', 'Chakan - S.T Stand - H.P Pump- Ambethan Chowk-Talegaon Chowk'),
(3, 'Mahalunge', 'Mahalunge- MIDC'),
(4, 'Chinchwad', 'Talawade- Chinchwad- Ravet- Sant Tukaram Nagar-Ajmera'),
(5, 'Chakan-Shikrapur Road', 'Rase--Bhose-Pimpalgaon- Manik Chowk'),
(6, 'Distributors', 'Distributor');

-- --------------------------------------------------------

--
-- Table structure for table `rowmaterial`
--

CREATE TABLE IF NOT EXISTS `rowmaterial` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` text NOT NULL,
  `runit` text NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Sub_Menu`
--

CREATE TABLE IF NOT EXISTS `Sub_Menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Menu_Id` int(11) NOT NULL,
  `Sub_Menu_Name` text NOT NULL,
  `link` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `Sub_Menu`
--

INSERT INTO `Sub_Menu` (`Id`, `Menu_Id`, `Sub_Menu_Name`, `link`) VALUES
(1, 1, 'Customer Registration', 'CustReg.php'),
(2, 1, 'Distributor Registration', 'CustRegForJarFilling.php'),
(3, 1, 'Route Registration', 'Route.php'),
(4, 1, 'Vehicle Registration', 'vehiclereg.php'),
(5, 1, 'Employee Registration', 'DriverReg.php'),
(6, 1, 'Diesel Rate Registration', 'vehicleratereg.php'),
(7, 1, 'Add Dispenser Type', 'DispensorReg.php'),
(8, 1, 'Add Jar Rate', 'JarRate.php'),
(9, 1, 'Add 5 Ltr Bottle Rate', 'ltrRate.php'),
(10, 2, 'Vendor Registration', 'jar_fill_company_reg.php'),
(11, 2, 'Vendor Purchase Detail', 'JarPurchaseDesign.php'),
(12, 2, 'Vendor Payment', 'jarpayment.php'),
(13, 2, 'Vendor Payment Report', 'comppaymentreport.php'),
(14, 2, 'Vendor Purchase Report', 'comppurchasereportnew.php'),
(15, 3, 'Internal Jar Filling', 'FillJarDesign.php'),
(16, 3, 'Distributor Jar Filling', 'JarFillingDetail.php'),
(17, 4, 'Jar Distribution Customer Wise', 'jarDistribution1.php'),
(18, 4, 'Daily Jar Distribution Record Route Wise ', 'PostjarDistribution.php'),
(19, 4, 'Jar Distribution Record Edit', 'jarDistributionUpdate.php'),
(20, 4, 'Dispenser Distribution', 'Dispensor.php'),
(22, 5, 'Generate Invoice', 'CustPaymentDesign.php'),
(23, 5, 'Edit Invoice', 'EditInvoice.php'),
(24, 6, 'Customer Payment', 'Payment1.php'),
(25, 6, 'Customer Payment Manual', 'CustPaymentDesignMaualy.php'),
(26, 6, 'Distributor Payment', 'distributorpayment.php'),
(27, 8, 'Distributor Payment Report', 'distributorpaymentreport.php'),
(28, 6, 'Cheque Deposit Reminder', 'check_deposite_reminder.php'),
(29, 6, 'Cheque Status Update', 'check_status_update.php'),
(30, 7, 'Daily Expenses', 'DialyExpDesign.php'),
(31, 7, 'Daily Expense Report ', 'DailyExpReport.php'),
(32, 8, 'Jar Status', 'GodownDetail.php'),
(33, 8, 'Cash Report', 'cashreport.php'),
(34, 8, 'Balance Jar', 'jardistcompall.php'),
(35, 8, 'Daily Jar Distribution Report', 'jardailyreport.php'),
(36, 8, 'Customer Payment Balance', 'allcustpaymentbalance.php'),
(37, 8, 'Customer Payment Report', 'CustpaymentReport1.php'),
(38, 8, 'Outstanding Report', 'totaloutstanding2.php'),
(39, 8, 'Contact', 'contactlist.php'),
(40, 9, 'Customer Registration', 'CustRegForAqua.php'),
(41, 9, 'Vendor Registration', 'suyogindvendorreg.php'),
(42, 9, 'Raw Material Registration', 'suyogindrowmatreg.php'),
(43, 9, 'Product Registration', 'suyogindproductmaster.php'),
(44, 10, 'Vendor Purchase ', 'suyogindrawmatpurchase.php'),
(45, 10, 'Vendor Payment Detail', 'suyogindvendorpayment.php'),
(46, 10, 'Daily Production Record', 'suyogindProductManufac.php'),
(47, 11, 'Product Sell', 'suyogindProductSell.php'),
(48, 11, 'Customer Payment', 'CustPayForAqua.php'),
(49, 12, 'Raw Material Purchase Report', 'rawmaterialpurchasereport.php'),
(50, 12, 'Product Sell Report', 'productsellreport.php'),
(51, 8, 'Vehicle Wise Report', 'report_tempowise.php'),
(52, 12, 'Daily Production Report', 'report_stock.php'),
(53, 8, 'Distributor Filling Report', 'report_distributorfilling.php'),
(54, 12, 'Raw Material Stock Report', 'report_rawmaterialstock.php'),
(55, 7, 'Add Petty Expense Type', 'ExpenseType.php'),
(56, 7, 'Add Petty Expense Details', 'ExpenseDetails.php'),
(57, 7, 'Monthly Expense Report', 'ExpenseMonthly.php'),
(58, 6, 'Customer Payment Manual Report', 'report_manualpayment.php'),
(59, 10, 'Vendor Purchase Record Edit', 'productionrecordedit.php'),
(60, 7, 'Employee Salary Payment', 'Employee_Salary_Payments.php'),
(61, 7, 'Employee Salary Advance', 'EmployeeAdvance.php'),
(62, 5, 'Generate Distributor Invoice', 'distributorinvoice.php'),
(21, 4, 'Jar Deposit', 'jardeposit.php'),
(63, 4, 'Return Deposit', 'returndeposit.php');

-- --------------------------------------------------------

--
-- Table structure for table `suyogindManfProdStock`
--

CREATE TABLE IF NOT EXISTS `suyogindManfProdStock` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProdId` int(11) NOT NULL,
  `StockIn` int(11) NOT NULL,
  `StockOut` int(11) NOT NULL,
  `EDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  `NoOfHrs` float NOT NULL,
  `reject` float NOT NULL,
  `fisrtClass` float NOT NULL,
  `SecClass` float NOT NULL,
  `ThirdClass` float NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `suyogindproductmaster`
--

CREATE TABLE IF NOT EXISTS `suyogindproductmaster` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `productname` text NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `suyogindrawpurchase`
--

CREATE TABLE IF NOT EXISTS `suyogindrawpurchase` (
  `purchaseid` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `vname` text NOT NULL,
  `paymentid` int(11) NOT NULL,
  PRIMARY KEY (`purchaseid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `suyogindrawpurchasedet`
--

CREATE TABLE IF NOT EXISTS `suyogindrawpurchasedet` (
  `rpid` int(11) NOT NULL AUTO_INCREMENT,
  `purchseid` int(11) NOT NULL,
  `vendorid` int(11) NOT NULL,
  `materialid` text NOT NULL,
  `purchasedate` date NOT NULL,
  `quanity` int(11) NOT NULL,
  `outQnty` double NOT NULL,
  `wquanity` int(11) NOT NULL,
  `bquanity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `taxtype` text NOT NULL,
  `vat` float NOT NULL,
  `cst` float NOT NULL,
  `total` float NOT NULL,
  PRIMARY KEY (`rpid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `suyogindrawpurchasedet`
--

INSERT INTO `suyogindrawpurchasedet` (`rpid`, `purchseid`, `vendorid`, `materialid`, `purchasedate`, `quanity`, `outQnty`, `wquanity`, `bquanity`, `rate`, `taxtype`, `vat`, `cst`, `total`) VALUES
(2, 2, 1, '1', '2015-01-02', 5, 0, 0, 0, 10, 'CST', 0, 10, 55),
(3, 3, 1, '1', '2015-01-02', 10, 0, 0, 0, 10, 'VAT', 10, 0, 110),
(4, 3, 1, '3', '2015-01-02', 10, 0, 0, 0, 2, 'CST', 0, 5, 21),
(5, 4, 10, '1', '2015-01-03', 20, 0, 0, 0, 100, 'VAT', 2, 0, 2040),
(6, 4, 10, '8', '2015-01-03', 10, 0, 0, 0, 100, 'CST', 0, 2, 1020),
(7, 4, 10, '3', '2015-01-03', 5, 0, 0, 0, 100, 'VAT', 2, 0, 510),
(8, 5, 10, '5', '2015-01-03', 20, 0, 0, 0, 100, 'VAT', 10, 0, 2200),
(9, 6, 10, '1', '2015-01-03', 100, 0, 0, 0, 10, 'CST', 0, 10, 1100),
(10, 7, 10, '8', '2015-01-03', 100, 0, 0, 0, 2, 'CST', 0, 2.5, 205),
(11, 8, 10, '3', '2015-01-03', 50, 0, 0, 0, 5, 'VAT', 10, 0, 275),
(12, 0, 0, '1', '2015-01-03', 0, 20, 0, 0, 0, '', 0, 0, 0),
(13, 0, 0, '8', '2015-01-03', 0, 40, 0, 0, 0, '', 0, 0, 0),
(14, 0, 0, '3', '2015-01-03', 0, 10, 0, 0, 0, '', 0, 0, 0),
(15, 9, 12, '6', '2015-01-03', 80, 0, 0, 0, 50, 'VAT', 5, 0, 4200),
(16, 9, 12, '9', '2015-01-03', 50, 0, 0, 0, 20, 'VAT', 5, 0, 1050),
(17, 10, 12, '6', '2015-01-03', 10, 0, 0, 0, 20, 'CST', 0, 1, 202),
(18, 10, 12, '9', '2015-01-03', 5, 0, 0, 0, 10, 'CST', 0, 1, 50.5),
(19, 0, 0, '6', '2015-01-03', 0, 1000, 0, 0, 0, '', 0, 0, 0),
(20, 0, 0, '9', '2015-01-03', 0, 800, 0, 0, 0, '', 0, 0, 0),
(21, 11, 11, '1', '2015-01-03', 20, 0, 0, 0, 20, 'VAT', 2, 0, 408),
(22, 12, 11, '11', '2015-01-03', 10, 0, 0, 0, 10, 'VAT', 2, 0, 102),
(23, 0, 0, '1', '2015-01-03', 0, 500, 0, 0, 0, '', 0, 0, 0),
(24, 13, 13, '12', '2015-01-05', 10, 0, 0, 0, 10, 'CST', 0, 0, 100),
(25, 0, 0, '12', '2015-01-05', 0, 1500, 0, 0, 0, '', 0, 0, 0),
(26, 14, 13, '13', '2015-01-05', 2, 0, 0, 0, 10, 'CST', 0, 1, 20.2),
(27, 14, 13, '14', '2015-01-05', 2, 0, 0, 0, 20, 'VAT', 1, 0, 40.4),
(28, 14, 13, '15', '2015-01-05', 2, 0, 0, 0, 30, 'CST', 0, 1, 60.6),
(29, 0, 0, '13', '2015-01-05', 0, 150, 0, 0, 0, '', 0, 0, 0),
(30, 0, 0, '14', '2015-01-05', 0, 150, 0, 0, 0, '', 0, 0, 0),
(31, 0, 0, '15', '2015-01-05', 0, 150, 0, 0, 0, '', 0, 0, 0),
(32, 15, 13, '13', '2015-01-05', 148, 0, 0, 0, 10, 'CST', 0, 1, 1494.8),
(33, 15, 13, '14', '2015-01-05', 148, 0, 0, 0, 10, 'CST', 0, 1, 1494.8),
(34, 15, 13, '15', '2015-01-05', 148, 0, 0, 0, 10, 'CST', 0, 2, 1509.6),
(35, 0, 1, '', '2015-01-02', 0, 0, 0, 0, 0, 'CST', 0, 0, 0),
(37, 2, 1, '4', '2015-01-02', 5, 0, 0, 0, 10, 'CST', 0, 10, 55),
(39, 16, 10, '17', '2015-01-14', 20, 0, 0, 0, 10, 'VAT', 2, 0, 204),
(40, 16, 10, '1', '2015-01-14', 30, 0, 0, 0, 5, 'CST', 0, 2, 153),
(41, 16, 10, '16', '2015-01-14', 15, 0, 0, 0, 15, 'VAT', 2, 0, 229.5),
(42, 17, 14, '17', '2015-01-14', 10, 0, 0, 0, 5, 'CST', 0, 2, 51),
(43, 17, 14, '1', '2015-01-14', 10, 0, 0, 0, 5, 'CST', 0, 3, 51.5),
(44, 17, 14, '16', '2015-01-14', 10, 0, 0, 0, 5, 'CST', 0, 4, 52),
(45, 0, 0, '17', '2015-01-14', 0, 2000, 0, 0, 0, '', 0, 0, 0),
(46, 0, 0, '1', '2015-01-14', 0, 2000, 0, 0, 0, '', 0, 0, 0),
(47, 0, 0, '16', '2015-01-14', 0, 2000, 0, 0, 0, '', 0, 0, 0),
(48, 18, 15, '12', '2015-01-20', 10, 0, 0, 0, 10, 'VAT', 2, 0, 102),
(49, 18, 15, '5', '2015-01-20', 10, 0, 0, 0, 20, 'CST', 0, 1, 202),
(50, 0, 0, '1', '2015-01-20', 0, 2000, 0, 0, 0, '', 0, 0, 0),
(51, 0, 0, '8', '2015-01-20', 0, 4000, 0, 0, 0, '', 0, 0, 0),
(52, 19, 15, '12', '2015-01-20', 5, 0, 0, 0, 10, 'CST', 0, 0, 50),
(53, 19, 15, '5', '2015-01-20', 5, 0, 0, 0, 10, 'CST', 0, 0, 50),
(54, 0, 0, '1', '2015-01-20', 0, 0, 0, 0, 0, '', 0, 0, 0),
(55, 0, 0, '8', '2015-01-20', 0, 0, 0, 0, 0, '', 0, 0, 0),
(56, 20, 16, '5', '2015-10-06', 12, 0, 0, 0, 15, 'VAT', 2, 0, 183.6),
(57, 0, 0, '12', '2015-10-06', 0, 240000, 0, 0, 0, '', 0, 0, 0),
(58, 0, 0, '5', '2015-10-06', 0, 20000, 0, 0, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `suyogindvendorpayment`
--

CREATE TABLE IF NOT EXISTS `suyogindvendorpayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `vendorid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `mode` text NOT NULL,
  `check_challan_no` text NOT NULL,
  `check_challan_bank` text NOT NULL,
  `check_challan_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `suyogindvendorreg`
--

CREATE TABLE IF NOT EXISTS `suyogindvendorreg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CustName` text NOT NULL,
  `ConPer` text NOT NULL,
  `MobNo` text NOT NULL,
  `PhNo` text NOT NULL,
  `Email` text NOT NULL,
  `Address` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `suyogmaster`
--

CREATE TABLE IF NOT EXISTS `suyogmaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `suyogmaster`
--

INSERT INTO `suyogmaster` (`id`, `name`) VALUES
(1, 'Jar'),
(2, '5 liter bottle'),
(12, '1 liter bottle'),
(13, '20 Liter Bottle'),
(14, 'Pouch Bag');

-- --------------------------------------------------------

--
-- Table structure for table `Transaction`
--

CREATE TABLE IF NOT EXISTS `Transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CustId` text NOT NULL,
  `date11` date NOT NULL,
  `TotAmt` int(11) NOT NULL,
  `PaidAmt` int(11) NOT NULL,
  `Bal` int(11) NOT NULL,
  `BankName` text,
  `CheqNo` text,
  `checkdate` date DEFAULT NULL,
  `remark` text NOT NULL,
  `challanno` text NOT NULL,
  `paymentmode` text NOT NULL,
  `chequestatus` text NOT NULL,
  `chequeid` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Type_Master`
--

CREATE TABLE IF NOT EXISTS `Type_Master` (
  `type_name` text NOT NULL,
  `type_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_detailss` text NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Unit`
--

CREATE TABLE IF NOT EXISTS `Unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `Unit`
--

INSERT INTO `Unit` (`id`, `unit`) VALUES
(1, 'Liter'),
(2, 'Mililiter'),
(3, 'test'),
(4, ''),
(5, 'gm'),
(6, 'ml'),
(7, 'mg'),
(8, 'mg'),
(9, ''),
(10, ''),
(11, ''),
(12, ''),
(13, ''),
(14, ''),
(15, ''),
(16, 'test1'),
(17, 'test2'),
(18, 'test3'),
(19, 'test4'),
(20, 'nos');

-- --------------------------------------------------------

--
-- Table structure for table `Vehicle`
--

CREATE TABLE IF NOT EXISTS `Vehicle` (
  `V_Id` int(30) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Type` text NOT NULL,
  PRIMARY KEY (`V_Id`),
  KEY `V_Id` (`V_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehiclereg`
--

CREATE TABLE IF NOT EXISTS `vehiclereg` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `vehiclename` text NOT NULL,
  `vehiclenumber` text NOT NULL,
  `vehicleregnumber` int(11) NOT NULL,
  `ownername` text NOT NULL,
  `average` int(11) NOT NULL,
  `regdate` date NOT NULL,
  `adress` text NOT NULL,
  `mobnumber` int(11) NOT NULL,
  `pancardnumber` int(11) NOT NULL,
  `mob2` text NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `vehiclereg`
--

INSERT INTO `vehiclereg` (`vid`, `vehiclename`, `vehiclenumber`, `vehicleregnumber`, `ownername`, `average`, `regdate`, `adress`, `mobnumber`, `pancardnumber`, `mob2`) VALUES
(3, 'APPE ', 'MH 14 P 1235', 12344, 'Andrew Simond', 12, '2014-10-17', 'Austrelia', 2147483647, 1234, ''),
(2, 'PIK UP 407', 'MH 14 P 1234', 1234, 'Andy Flower and great  flower', 50, '2014-10-17', 'pune', 2147483647, 1234, '4444444444'),
(7, 'test', '1221', 1, 'sh', 500, '2014-07-01', '  hfhgf', 12231223, 325541233, ''),
(5, 'apache', 'mh 12 kw 7894', 1223, 'smita test', 50, '2014-10-20', 'pune', 2147483647, 2147483647, '111111111111111111'),
(6, 'passion', 'MH 12 HK 7455', 123, 'sonali test', 100, '2014-10-20', 'pune', 2147483647, 123456, ''),
(8, 'n', 'MH 14 8558', 0, 'gftgf', 500, '2014-09-01', 'm m', 1234567891, 1234, ''),
(9, 'dfg', 'dfg', 0, 'fdg', 0, '2014-10-29', 'fdg', 0, 0, ''),
(10, 'tempo', 'mh-20 14 1723', 0, 'sddsf', 20, '2014-10-29', 'sdf', 13245, 0, ''),
(11, 'Tempo 407', 'MH 09 7799', 1223, 'Test Owner From Arun', 30, '2014-10-30', 'Pune', 2147483647, 0, ''),
(12, 'bmw', 'MH 12 HK 4444', 111111, 'Andy Flower', 22, '2014-10-28', 'qqqqqqq', 2147483647, 1234, '2222222222'),
(13, 'Piaggo', 'MH 12 hk 1234', 100, 'sharayu', 200, '2014-11-04', 'vadagav', 2147483647, 123456788, '9652364178'),
(14, 'hrishitesting', 'MH 12 HK 4444', 1234, 'sonali test', 22, '2014-11-15', 'ssssssss', 2147483647, 0, ''),
(15, 'ape', 'mh 12 hk 3012', 1234, 'smita new', 70, '2014-11-17', 'pune', 2147483647, 123456, ''),
(16, 'piageo', 'mh 14 1233', 999, 'prajakta', 100, '2014-11-15', 'pune', 1234567890, 123456, ''),
(17, 'pick up', 'mh 12 kw 5000', 909, 'smita1', 65, '2014-11-17', 'pune', 2147483647, 1234, ''),
(18, 'Tempo', 'MH 14 P 2029', 999, 'Rishi', 500, '2014-12-09', 'pune', 1234567890, 111, ''),
(19, 'Appe', 'mh 14 6754', 111, 'andy', 50, '2015-01-01', 'pune', 1425367485, 568945, ''),
(20, 'star city', 'MH 12 HV 9999', 111, 'aaa', 110, '2015-01-05', 'pune', 2147483647, 12, ''),
(21, 'Ape', '02', 0, 'Sunita Kad', 25, '2015-03-01', 'Chakan', 2147483647, 0, ''),
(22, 'Maximo', '01', 0, 'Rajendra Kad', 15, '2015-03-01', 'Chakan', 2147483647, 0, '8149515616'),
(23, 'TestBike', 'AG12S1234', 0, 'Test Ganesh ', 60, '2015-10-06', 'Jaga', 1234567899, 213, ''),
(24, 'Maximo', '1739', 0, 'Ramdas Vairal', 14, '2016-04-01', 'Kadachiwadi, Chakan', 2147483647, 0, ''),
(25, 'Tata Ace', '9069', 0, 'Siddheshwar Misal', 15, '2016-04-01', 'Kadachiwadi, Chakan', 2147483647, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `vendorJarFillingDetail`
--

CREATE TABLE IF NOT EXISTS `vendorJarFillingDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vName` text NOT NULL,
  `NoOfJarsFill` int(11) NOT NULL,
  `Rate` int(11) NOT NULL,
  `TotalAmt` int(11) NOT NULL,
  `Date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vendorpayment`
--

CREATE TABLE IF NOT EXISTS `vendorpayment` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL,
  `pdate` date NOT NULL,
  `paidamt` text NOT NULL,
  `mode` text NOT NULL,
  `checknumber` int(11) NOT NULL,
  `checkbank` text NOT NULL,
  `checkdate` date NOT NULL,
  `challannumber` int(11) NOT NULL,
  `challandate` date NOT NULL,
  `remark` text NOT NULL,
  `chequestatus` text NOT NULL,
  `chequeid` text NOT NULL,
  `AttachBill` text NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vendorpayment`
--

INSERT INTO `vendorpayment` (`pid`, `vid`, `pdate`, `paidamt`, `mode`, `checknumber`, `checkbank`, `checkdate`, `challannumber`, `challandate`, `remark`, `chequestatus`, `chequeid`, `AttachBill`) VALUES
(2, 3, '2016-06-17', '3770', 'HardCash', 0, '', '1970-01-01', 0, '1970-01-01', '', '', '', ''),
(3, 8, '2016-04-01', '2213970', 'HardCash', 0, '', '1970-01-01', 0, '1970-01-01', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vendorreg`
--

CREATE TABLE IF NOT EXISTS `vendorreg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `mobno` text NOT NULL,
  `type` text NOT NULL,
  `datecompreg` date NOT NULL,
  `regid` int(11) NOT NULL,
  `ContactNo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `vendorreg`
--

INSERT INTO `vendorreg` (`id`, `name`, `address`, `email`, `mobno`, `type`, `datecompreg`, `regid`, `ContactNo`) VALUES
(1, 'Prachi Enterprises', 'Yamunanagar, Chinchwad', 'prachient21@yahoo.com', '9890047625', '', '2016-04-01', 0, ''),
(2, 'Coolcare Agro Products', 'Vadgaon Patole\r\nKhed', '', '9657723040', '', '2016-04-01', 0, ''),
(3, 'Balaji Polymers', 'Talawade', '', '9822783179', '', '2016-04-01', 0, ''),
(4, 'Food Hygeine & Health Laboratory', 'Hadapsar, Pune', 'foodwatertestlab1@yahoo.com', '8380074696', '', '2016-04-01', 0, ''),
(5, 'Hira Industries', 'Bhosari Pune', '', '8482940414', '', '2016-04-01', 0, ''),
(6, 'Milan Plastics', 'Pune', '', '9552885252', '', '2016-05-01', 0, ''),
(7, 'Morya Enterprises', 'Thane', '', '9594904964', '', '2016-04-01', 0, ''),
(8, 'Cash', 'All', '', '0000000000', '', '2016-04-01', 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
